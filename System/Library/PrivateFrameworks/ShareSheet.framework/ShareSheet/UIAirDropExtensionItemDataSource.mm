@interface UIAirDropExtensionItemDataSource
+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request;
@end

@implementation UIAirDropExtensionItemDataSource

+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request
{
  valuesCopy = values;
  requestCopy = request;
  v8 = share_sheet_log();
  v9 = share_sheet_log();
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PreparingItemData", &unk_18B437ED2, buf, 2u);
  }

  maxPreviews = [requestCopy maxPreviews];
  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 0;
  v12 = objc_alloc_init(UISUIActivityExtensionItemData);
  activityType = [requestCopy activityType];
  [requestCopy thumbnailSize];
  v15 = v14;
  v17 = v16;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __116__UIAirDropExtensionItemDataSource_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke;
  v27[3] = &unk_1E71FB6F8;
  v18 = activityType;
  v28 = v18;
  v19 = v12;
  v29 = v19;
  v30 = buf;
  v31 = maxPreviews;
  v32 = v15;
  v33 = v17;
  v20 = _NSExtensionItemsFromActivityItemValuesForExtensionItemDataRequestWithProcessingBlock(valuesCopy, requestCopy, v27);
  [(UISUIActivityExtensionItemData *)v19 setExtensionItems:v20];
  v21 = share_sheet_log();
  v22 = share_sheet_log();
  v23 = os_signpost_id_make_with_pointer(v22, self);

  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    v26[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v21, OS_SIGNPOST_INTERVAL_END, v23, "PreparingItemData", &unk_18B437ED2, v26, 2u);
  }

  v24 = v19;
  _Block_object_dispose(buf, 8);

  return v24;
}

void __116__UIAirDropExtensionItemDataSource_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [_UIActivityItemMapping _attachmentNameForActivityItem:v6 activityType:*(a1 + 32)];
  if (v7)
  {
    [*(a1 + 40) addAttachmentName:v7 forItem:v5];
  }

  v8 = [_UIActivityItemMapping _subjectForActivityItem:v6 activityType:*(a1 + 32)];
  if (v8)
  {
    [*(a1 + 40) addSubject:v8 forItem:v5];
  }

  v9 = *(a1 + 56);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 24);
  if (v9 < 1 || v9 > v11)
  {
    *(v10 + 24) = v11 + 1;
    v12 = share_sheet_log();
    v13 = share_sheet_log();
    v14 = os_signpost_id_make_with_pointer(v13, v6);

    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "FetchingPreview", &unk_18B437ED2, buf, 2u);
    }

    v15 = [_UIActivityItemMapping _thumbnailImageDataForActivityItem:v6 thumbnailSize:*(a1 + 32) activityType:*(a1 + 64), *(a1 + 72)];
    if (v15)
    {
      [*(a1 + 40) addPreviewImageData:v15 forItem:v5];
    }

    v16 = [_UIActivityItemMapping _thumbnailImageForActivityItem:v6 thumbnailSize:*(a1 + 32) activityType:*(a1 + 64), *(a1 + 72)];
    if (v16)
    {
      [*(a1 + 40) addPreviewImage:v16 forItem:v5];
    }

    v17 = share_sheet_log();
    v18 = share_sheet_log();
    v19 = os_signpost_id_make_with_pointer(v18, v6);

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v17, OS_SIGNPOST_INTERVAL_END, v19, "FetchingPreview", &unk_18B437ED2, buf, 2u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v6 activityType:*(a1 + 32)];
    if (v20)
    {
      v21 = v20;
LABEL_21:
      [*(a1 + 40) addDataType:v21 forItem:v5];

      goto LABEL_22;
    }

    v22 = CGImageSourceCreateWithData(v6, 0);
    if (v22)
    {
      v23 = v22;
      v21 = CGImageSourceGetType(v22);
      CFRelease(v23);
      if (v21)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isFileURL])
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __116__UIAirDropExtensionItemDataSource_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke_5;
        v24[3] = &unk_1E71FA320;
        v25 = v6;
        [v5 registerItemForTypeIdentifier:@"com.apple.ShareUI.airdrop.supplementalSecurityContext" loadHandler:v24];
      }
    }
  }
}

void __116__UIAirDropExtensionItemDataSource_preparedActivityExtensionItemDataForActivityItemValues_extensionItemDataRequest___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = airdropSupplementalSecurityContextForURL(v2);
  v3[2](v3, v4, 0);
}

@end