@interface WBSBrowsingDataExportController
+ (NSString)defaultExportFolderName;
+ (id)fileURLFromExportFolderURL:(id)a3 profileTitle:(id)a4 forBrowsingDataExportType:(unint64_t)a5;
+ (id)iconForBrowsingDataExportType:(unint64_t)a3;
+ (id)labelForBrowsingDataExportType:(unint64_t)a3 withCount:(unint64_t)a4;
+ (id)titleForBrowsingDataExportType:(unint64_t)a3;
- (void)_exportToTemporaryFolderWithURL:(id)a3 completionHandler:(id)a4;
- (void)computeNumberOfItemsToBeExportedForBrowsingDataExportType:(unint64_t)a3 usingBlock:(id)a4;
- (void)exportToZipArchiveAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSBrowsingDataExportController

+ (NSString)defaultExportFolderName
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 stringFromDate:v3];

  v5 = MEMORY[0x1E696AEC0];
  v6 = _WBSLocalizedString();
  v7 = [v5 localizedStringWithFormat:v6, v4];

  return v7;
}

+ (id)iconForBrowsingDataExportType:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      return @"book";
    }

    if (a3 == 2)
    {
      return @"clock";
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        return @"puzzlepiece.extension";
      case 8uLL:
        return @"creditcard";
      case 0x10uLL:
        return @"key";
    }
  }

  return &stru_1F3A5E418;
}

+ (id)titleForBrowsingDataExportType:(unint64_t)a3
{
  v4 = &stru_1F3A5E418;
  if (a3 <= 3)
  {
    if (a3 == 1 || a3 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (a3 == 4 || a3 == 8 || a3 == 16)
  {
LABEL_8:
    v4 = _WBSLocalizedString();
  }

  return v4;
}

+ (id)labelForBrowsingDataExportType:(unint64_t)a3 withCount:(unint64_t)a4
{
  v5 = &stru_1F3A5E418;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v6 = MEMORY[0x1E696AEC0];
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v6 = MEMORY[0x1E696AEC0];
        break;
      case 8uLL:
        v6 = MEMORY[0x1E696AEC0];
        break;
      case 0x10uLL:
        v6 = MEMORY[0x1E696AEC0];
        break;
      default:
        goto LABEL_13;
    }
  }

  v7 = _WBSLocalizedString();
  v5 = [v6 localizedStringWithFormat:v7, a4];

LABEL_13:

  return v5;
}

+ (id)fileURLFromExportFolderURL:(id)a3 profileTitle:(id)a4 forBrowsingDataExportType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (a5 > 3)
  {
    if (a5 != 4)
    {
      if (a5 != 8)
      {
        if (a5 != 16)
        {
          goto LABEL_18;
        }

        v11 = _WBSLocalizedString();
        v12 = [v7 URLByAppendingPathComponent:v11];
        v13 = v12;
        v14 = @"csv";
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v8)
    {
      v15 = MEMORY[0x1E696AEC0];
      goto LABEL_12;
    }

LABEL_15:
    v11 = _WBSLocalizedString();
    v12 = [v7 URLByAppendingPathComponent:v11];
    v13 = v12;
    v14 = @"json";
    goto LABEL_16;
  }

  if (a5 == 1)
  {
    v11 = _WBSLocalizedString();
    v12 = [v7 URLByAppendingPathComponent:v11];
    v13 = v12;
    v14 = @"html";
LABEL_16:
    v10 = [v12 URLByAppendingPathExtension:v14];
    goto LABEL_17;
  }

  if (a5 != 2)
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v15 = MEMORY[0x1E696AEC0];
LABEL_12:
  v11 = _WBSLocalizedString();
  v13 = [v15 localizedStringWithFormat:v11, v9];
  v16 = [v7 URLByAppendingPathComponent:v13];
  v10 = [v16 URLByAppendingPathExtension:@"json"];

LABEL_17:
LABEL_18:

  return v10;
}

- (void)_exportToTemporaryFolderWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  selectedBrowsingDataExportTypes = self->_selectedBrowsingDataExportTypes;
  if ((selectedBrowsingDataExportTypes & 2) != 0)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WBSBrowsingDataExportController _exportToTemporaryFolderWithURL:completionHandler:];
    }

    dispatch_group_enter(v8);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke;
    v31[3] = &unk_1E7FB6D90;
    v32 = v8;
    [(WBSBrowsingDataExportController *)self _exportHistoryToDirectoryWithURL:v6 completionHandler:v31];

    selectedBrowsingDataExportTypes = self->_selectedBrowsingDataExportTypes;
    if ((selectedBrowsingDataExportTypes & 1) == 0)
    {
LABEL_3:
      if ((selectedBrowsingDataExportTypes & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((selectedBrowsingDataExportTypes & 1) == 0)
  {
    goto LABEL_3;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [WBSBrowsingDataExportController _exportToTemporaryFolderWithURL:completionHandler:];
  }

  v12 = [objc_opt_class() fileURLFromExportFolderURL:v6 profileTitle:0 forBrowsingDataExportType:1];
  dispatch_group_enter(v8);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_124;
  v29[3] = &unk_1E7FB6D90;
  v30 = v8;
  [(WBSBrowsingDataExportController *)self _exportBookmarksToFileWithURL:v12 completionHandler:v29];

  selectedBrowsingDataExportTypes = self->_selectedBrowsingDataExportTypes;
  if ((selectedBrowsingDataExportTypes & 0x10) == 0)
  {
LABEL_4:
    if ((selectedBrowsingDataExportTypes & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v13 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [WBSBrowsingDataExportController _exportToTemporaryFolderWithURL:completionHandler:];
  }

  v14 = [objc_opt_class() fileURLFromExportFolderURL:v6 profileTitle:0 forBrowsingDataExportType:16];
  v15 = [MEMORY[0x1E69C8A38] sharedStore];
  v16 = [v14 path];
  [v15 exportContentsOfAccountStoreToCSVFileWithPath:v16];

  selectedBrowsingDataExportTypes = self->_selectedBrowsingDataExportTypes;
  if ((selectedBrowsingDataExportTypes & 4) == 0)
  {
LABEL_5:
    if ((selectedBrowsingDataExportTypes & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v17 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [WBSBrowsingDataExportController _exportToTemporaryFolderWithURL:completionHandler:];
  }

  dispatch_group_enter(v8);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_126;
  v27[3] = &unk_1E7FB6D90;
  v28 = v8;
  [(WBSBrowsingDataExportController *)self _exportExtensionsToDirectoryWithURL:v6 completionHandler:v27];

  if ((self->_selectedBrowsingDataExportTypes & 8) != 0)
  {
LABEL_19:
    v18 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [WBSBrowsingDataExportController _exportToTemporaryFolderWithURL:completionHandler:];
    }

    v19 = [objc_opt_class() fileURLFromExportFolderURL:v6 profileTitle:0 forBrowsingDataExportType:8];
    dispatch_group_enter(v8);
    v20 = +[WBSCreditCardDataController creditCardDataController];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_128;
    v25[3] = &unk_1E7FB8278;
    v26 = v8;
    [v20 exportCreditCardDataToFileWithURL:v19 completionHandler:v25];
  }

LABEL_22:
  v21 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_130;
  block[3] = &unk_1E7FB7350;
  v24 = v7;
  v22 = v7;
  dispatch_group_notify(v8, v21, block);
}

void __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_124(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_124_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_126(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_126_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_128(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_128_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_130(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXExport();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__WBSBrowsingDataExportController__exportToTemporaryFolderWithURL_completionHandler___block_invoke_130_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)exportToZipArchiveAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7378;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v33[0] = 0;
  v4 = [v2 safari_createTemporaryDirectoryAppropriateForURL:v3 error:v33];
  v5 = v33[0];
  if (v4)
  {
    v29 = v5;
    v6 = [MEMORY[0x1E696AC00] safari_fileHandleWithURL:v4 options:0x100000 createMode:0 error:&v29];
    v7 = v29;

    if (v6)
    {
      v8 = [*(a1 + 32) URLByDeletingPathExtension];
      v9 = [v8 lastPathComponent];
      v25 = v7;
      v10 = [v2 safari_createDirectoryWithUniqueName:v9 relativeToDirectoryFileHandle:v6 error:&v25];
      v11 = v25;

      if (v10)
      {
        v12 = *(a1 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke_5;
        v16[3] = &unk_1E7FB71A8;
        v13 = &v17;
        v17 = v2;
        v14 = &v18;
        v15 = v10;
        v18 = v15;
        v19 = *(a1 + 32);
        v20 = v4;
        v21 = *(a1 + 48);
        [v12 _exportToTemporaryFolderWithURL:v15 completionHandler:v16];
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke_4;
        v22[3] = &unk_1E7FB83F8;
        v13 = &v24;
        v24 = *(a1 + 48);
        v14 = &v23;
        v23 = v11;
        dispatch_async(MEMORY[0x1E69E96A0], v22);
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke_3;
      v26[3] = &unk_1E7FB83F8;
      v28 = *(a1 + 48);
      v11 = v7;
      v27 = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v26);

      v10 = v28;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke_2;
    block[3] = &unk_1E7FB83F8;
    v32 = *(a1 + 48);
    v11 = v5;
    v31 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v6 = v32;
  }
}

void __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11 = 0;
  [v2 safari_zipContentsFromDirectory:v3 toZipFileURL:v4 shouldKeepParent:1 error:&v11];
  v5 = v11;
  [*(a1 + 32) removeItemAtURL:*(a1 + 56) error:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSBrowsingDataExportController_exportToZipArchiveAtURL_completionHandler___block_invoke_6;
  block[3] = &unk_1E7FB83F8;
  v6 = *(a1 + 64);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)computeNumberOfItemsToBeExportedForBrowsingDataExportType:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke;
  block[3] = &unk_1E7FC6B68;
  v16 = a3;
  block[4] = self;
  v8 = v6;
  v15 = v8;
  dispatch_async(v7, block);

  if ((a3 & 8) != 0)
  {
    v9 = +[WBSCreditCardDataController creditCardDataController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_3;
    v12[3] = &unk_1E7FC6BB8;
    v13 = v8;
    [v9 numberOfCreditCardsToBeExportedWithCompletionHandler:v12];
  }

  if ((a3 & 2) != 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_5;
    v10[3] = &unk_1E7FC6BB8;
    v11 = v8;
    [(WBSBrowsingDataExportController *)self _numberOfHistorySitesToBeExportedWithCompletionHandler:v10];
  }
}

void __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) _numberOfBookmarksToBeExported];
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [MEMORY[0x1E69C8A38] sharedStore];
  v5 = [v4 numberOfSavedAccountsToBeExported];

LABEL_6:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_2;
  block[3] = &unk_1E7FC6B40;
  v11 = (v2 & 4) != 0;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v6;
  v12 = v2 & 1;
  v13 = (v2 & 0x10) >> 4;
  v9 = v3;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 64) == 1)
  {
    result = (*(*(result + 40) + 16))(*(result + 40), 4, [*(result + 32) _numberOfExtensionsToBeExported]);
  }

  if (*(v1 + 65) == 1)
  {
    result = (*(*(v1 + 40) + 16))();
  }

  if (*(v1 + 66) == 1)
  {
    v2 = *(*(v1 + 40) + 16);

    return v2();
  }

  return result;
}

void __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_4;
  v3[3] = &unk_1E7FC6B90;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __104__WBSBrowsingDataExportController_computeNumberOfItemsToBeExportedForBrowsingDataExportType_usingBlock___block_invoke_6;
  v3[3] = &unk_1E7FC6B90;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

@end