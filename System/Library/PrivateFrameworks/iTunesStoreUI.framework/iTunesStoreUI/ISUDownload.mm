@interface ISUDownload
+ (void)initialize;
- (BOOL)isContentRestricted;
- (BOOL)isPausable;
- (BOOL)isPurchase;
- (ISUDownload)initWithManagedDownload:(id)download;
- (NSNumber)storeItemIdentifier;
- (NSNumber)storePreorderIdentifier;
- (NSString)artistName;
- (NSString)phaseIdentifier;
- (NSString)statusDescription;
- (NSString)title;
- (NSURL)thumbnailImageURL;
- (SSDownload)managedDownload;
- (double)estimatedSecondsRemaining;
- (double)percentComplete;
- (id)copyLocalizedStatusString;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (void)dealloc;
- (void)resetPreorderState;
- (void)setManagedDownload:(id)download;
@end

@implementation ISUDownload

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = *MEMORY[0x1E69D4B70];
    __Properties = *MEMORY[0x1E69D4B58];
    qword_1EBF3B588 = v2;
    v3 = *MEMORY[0x1E69D4BA8];
    qword_1EBF3B590 = *MEMORY[0x1E69D4B90];
    qword_1EBF3B598 = v3;
    v4 = *MEMORY[0x1E69D4BF0];
    qword_1EBF3B5A0 = *MEMORY[0x1E69D4B88];
    qword_1EBF3B5A8 = v4;
    v5 = *MEMORY[0x1E69D4C10];
    qword_1EBF3B5B0 = *MEMORY[0x1E69D4BF8];
    qword_1EBF3B5B8 = v5;
    qword_1EBF3B5C0 = *MEMORY[0x1E69D4C18];
    v6 = *MEMORY[0x1E69D4AB8];
    __ExternalProperties = *MEMORY[0x1E69D4AB0];
    qword_1EBF3B560 = v6;
    v7 = *MEMORY[0x1E69D4AC8];
    qword_1EBF3B568 = *MEMORY[0x1E69D4AC0];
    qword_1EBF3B570 = v7;
    qword_1EBF3B578 = *MEMORY[0x1E69D4AD0];
  }
}

- (ISUDownload)initWithManagedDownload:(id)download
{
  v7.receiver = self;
  v7.super_class = ISUDownload;
  v4 = [(ISUDownload *)&v7 init];
  if (v4)
  {
    v4->_download = download;
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.ISUDownload.%p", v4];
    v4->_dispatchQueue = dispatch_queue_create([v5 UTF8String], 0);
  }

  return v4;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = ISUDownload;
  [(ISUDownload *)&v4 dealloc];
}

- (NSString)artistName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__ISUDownload_artistName__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __25__ISUDownload_artistName__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForProperty:__Properties];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (int64_t)bytesDownloaded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ISUDownload_bytesDownloaded__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__ISUDownload_bytesDownloaded__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForExternalProperty:{__ExternalProperties), "longLongValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)bytesTotal
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__ISUDownload_bytesTotal__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__ISUDownload_bytesTotal__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForExternalProperty:{qword_1EBF3B560), "longLongValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)copyLocalizedStatusString
{
  phaseIdentifier = [(ISUDownload *)self phaseIdentifier];
  if ([(NSString *)phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B28]])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = @"DOWNLOAD_ERROR";
LABEL_11:
    v7 = [v4 localizedStringForKey:v5 value:&stru_1F41B3660 table:0];
LABEL_12:

    return v7;
  }

  if ([(ISUDownload *)self isContentRestricted])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = @"RESTRICTED";
    goto LABEL_11;
  }

  if ([(NSString *)phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B40]])
  {
    v6 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL;
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v6 == 1)
    {
      v5 = @"DOWNLOAD_PAUSED";
    }

    else
    {
      v5 = @"TAP_TO_RESUME";
    }

    goto LABEL_11;
  }

  if ([(NSString *)phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B50]])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = @"WAITING";
    goto LABEL_11;
  }

  statusDescription = [(ISUDownload *)self statusDescription];
  if ([(NSString *)statusDescription length])
  {
    v7 = statusDescription;
    goto LABEL_12;
  }

  if (![(NSString *)phaseIdentifier isEqualToString:*MEMORY[0x1E69D4B20]])
  {
    goto LABEL_23;
  }

  bytesDownloaded = [(ISUDownload *)self bytesDownloaded];
  bytesTotal = [(ISUDownload *)self bytesTotal];
  if (bytesTotal < 1 || bytesDownloaded <= 0)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = @"UNKNOWN_PROGRESS";
    goto LABEL_11;
  }

  if (bytesDownloaded >= bytesTotal)
  {
LABEL_23:
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = @"PROCESSING_DOWNLOAD";
    goto LABEL_11;
  }

  [(ISUDownload *)self estimatedSecondsRemaining];
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (v12 >= 0.0)
  {
    0x3C = [v13 initWithFormat:objc_msgSend(v14, "localizedStringForKey:value:table:", @"TIME_FORMAT", &stru_1F41B3660, 0), v12 / 0x3CuLL, v12 % 0x3C];
    v18 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v18 == 1)
    {
      v21 = @"TIME_PROGRESS_LONG";
    }

    else
    {
      v21 = @"TIME_PROGRESS";
    }

    v22 = [v20 localizedStringForKey:v21 value:&stru_1F41B3660 table:0];
    v23 = CPFSSizeStrings();
    v24 = [v19 initWithFormat:v22, v23, CPFSSizeStrings(), 0x3C];

    return v24;
  }

  else
  {
    v15 = [v14 localizedStringForKey:@"DATA_PROGRESS" value:&stru_1F41B3660 table:0];
    v16 = CPFSSizeStrings();
    return [v13 initWithFormat:v15, v16, CPFSSizeStrings()];
  }
}

- (double)estimatedSecondsRemaining
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__ISUDownload_estimatedSecondsRemaining__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__ISUDownload_estimatedSecondsRemaining__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForExternalProperty:{qword_1EBF3B568), "doubleValue"}];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)isContentRestricted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__ISUDownload_isContentRestricted__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__ISUDownload_isContentRestricted__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForProperty:{qword_1EBF3B590), "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isPausable
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__ISUDownload_isPausable__block_invoke;
  v7[3] = &unk_1E81650D8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(dispatchQueue, v7);
  v4 = 0;
  if (*(v9 + 24) == 1)
  {
    phaseIdentifier = [(ISUDownload *)self phaseIdentifier];
    v4 = [(NSString *)phaseIdentifier isEqual:*MEMORY[0x1E69D4B20]];
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __25__ISUDownload_isPausable__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForProperty:{qword_1EBF3B588), "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isPurchase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__ISUDownload_isPurchase__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__ISUDownload_isPurchase__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForProperty:{qword_1EBF3B598), "BOOLValue"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SSDownload)managedDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ISUDownload_managedDownload__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__ISUDownload_managedDownload__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (double)percentComplete
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ISUDownload_percentComplete__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__ISUDownload_percentComplete__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) valueForExternalProperty:{qword_1EBF3B570), "doubleValue"}];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (NSString)phaseIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__ISUDownload_phaseIdentifier__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__ISUDownload_phaseIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForProperty:qword_1EBF3B5A0];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)resetPreorderState
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__ISUDownload_resetPreorderState__block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __33__ISUDownload_resetPreorderState__block_invoke(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = qword_1EBF3B5B0;
  return [*(*(a1 + 32) + 8) resetCachedProperties:v2 count:1];
}

- (void)setManagedDownload:(id)download
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__ISUDownload_setManagedDownload___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = download;
  dispatch_sync(dispatchQueue, v4);
}

void *__34__ISUDownload_setManagedDownload___block_invoke(void *result)
{
  v1 = *(result[4] + 8);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 8) = result;
  }

  return result;
}

- (NSString)statusDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__ISUDownload_statusDescription__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __32__ISUDownload_statusDescription__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForExternalProperty:qword_1EBF3B578];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)storeItemIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__ISUDownload_storeItemIdentifier__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __34__ISUDownload_storeItemIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForProperty:qword_1EBF3B5A8];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)storePreorderIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__ISUDownload_storePreorderIdentifier__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __38__ISUDownload_storePreorderIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForProperty:qword_1EBF3B5B0];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSURL)thumbnailImageURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__ISUDownload_thumbnailImageURL__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v7[5]];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

id __32__ISUDownload_thumbnailImageURL__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForProperty:qword_1EBF3B5B8];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)title
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__44;
  v10 = __Block_byref_object_dispose__44;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__ISUDownload_title__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __20__ISUDownload_title__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) valueForProperty:qword_1EBF3B5C0];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end