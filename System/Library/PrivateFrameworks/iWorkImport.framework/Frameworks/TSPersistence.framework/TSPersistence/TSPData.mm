@interface TSPData
+ (BOOL)p_writeStorage:(id)storage toURL:(id)l withRange:(_NSRange)range error:(id *)error;
+ (id)dataFromDataRep:(id)rep filename:(id)filename context:(id)context;
+ (id)dataFromNSData:(id)data filename:(id)filename context:(id)context;
+ (id)dataFromReadChannel:(id)channel filename:(id)filename context:(id)context;
+ (id)dataFromURL:(id)l context:(id)context;
+ (id)normalizedExtensionForFilename:(id)filename;
+ (id)null;
+ (id)readOnlyDataFromNSData:(id)data filename:(id)filename;
+ (id)readOnlyDataFromURL:(id)l;
+ (id)requiredAVAssetOptions;
+ (id)resourceNameForFilename:(id)filename identifier:(int64_t)identifier;
+ (id)typeForFilename:(id)filename;
+ (void)addCullingListener:(id)listener;
+ (void)performDataCullingOperationSynchronously:(BOOL)synchronously usingBlock:(id)block;
+ (void)removeCullingListener:(id)listener;
- (BOOL)archiveInfoMessage:(void *)message archiver:(id)archiver packageWriter:(id)writer;
- (BOOL)canDownload;
- (BOOL)isApplicationData;
- (BOOL)isEncrypted;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExternalData;
- (BOOL)isInDocument;
- (BOOL)isMaterialized;
- (BOOL)isReadable;
- (BOOL)isRemoteDataEver;
- (BOOL)isUnmaterializedDueToPartiallyDownloadedDocument;
- (BOOL)isUnmaterializedRemoteData;
- (BOOL)needsDownload;
- (BOOL)replaceContentsWithDataFrom:(id)from error:(id *)error;
- (BOOL)reservedInServer;
- (BOOL)validateDataDigestWithReason:(id)reason options:(unint64_t)options documentMetadata:(id)metadata error:(id *)error;
- (BOOL)validateDataDigestWithReason:(id)reason options:(unint64_t)options error:(id *)error;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (BOOL)writeToURL:(id)l withRange:(_NSRange)range error:(id *)error;
- (CGDataProvider)newCGDataProvider;
- (CGImage)newCGImage;
- (CGImageSource)newCGImageSource;
- (CGSize)pixelSize;
- (NSArray)referencingObjects;
- (NSDate)modificationDate;
- (NSString)description;
- (NSString)documentResourceLocator;
- (NSString)filename;
- (NSString)lastMismatchedDigestString;
- (NSString)normalizedExtension;
- (NSString)packageLocator;
- (NSString)type;
- (NSUUID)anonymousUniqueIdentifier;
- (TSPData)init;
- (TSPData)initWithIdentifier:(int64_t)identifier digest:(id)digest hasValidatedDigestMatch:(BOOL)match filename:(id)filename lastModificationDate:(id)date storage:(id)storage manager:(id)manager;
- (TSPDataAttributes)attributes;
- (TSPDataManager)manager;
- (TSPDataMetadata)metadata;
- (TSPDataStorage)storage;
- (TSPDigest)lastMismatchedDigest;
- (TSPObjectContext)context;
- (id)AVAssetWithOptions:(id)options;
- (id)NSData;
- (id)UIImage;
- (id)copyWithContext:(id)context;
- (id)createMetadataIfNeeded;
- (id)fallbackColor;
- (id)lastValidationError;
- (id)makeBookmarkDataWithContext:(id)context filename:(id)filename error:(id *)error;
- (id)newDataCopyInputStreamProviderWithEncryptionInfo:(id)info error:(id *)error;
- (id)newDataCopyReadChannelProviderWithEncryptionInfo:(id)info error:(id *)error;
- (id)newDataCopyURLProviderWithEncryptionInfo:(id)info error:(id *)error;
- (id)p_type;
- (id)preferredFilename;
- (id)temporaryDataStorageForReplacingDataContentsWithDecryptionInfo:(id)info writer:(id)writer error:(id *)error;
- (id)temporaryDataStorageURLForRemoteDataStorage:(id)storage;
- (int64_t)typeClass;
- (int64_t)uploadStatus;
- (unint64_t)creationVersion;
- (unint64_t)creationVersionWithDocumentMetadata:(id)metadata;
- (unint64_t)encodedLength;
- (unint64_t)encodedLengthIfLocal;
- (unint64_t)firstUnmaterializedIndex;
- (unint64_t)hash;
- (unint64_t)length;
- (unint64_t)lengthIfLocal;
- (unint64_t)materializedLength;
- (unint64_t)reservedLengthIfLocal;
- (unsigned)packageIdentifier;
- (void)addDownloadObserver:(id)observer options:(unint64_t)options completionHandler:(id)handler;
- (void)dealloc;
- (void)didAddDownloadObserver;
- (void)didReceivePartialRemoteData:(id)data decryptionKey:(id)key range:(_NSRange)range completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteData:(id)data decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteDataAtURL:(id)l canMove:(BOOL)move decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteDataWithHandler:(id)handler completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteDataWithReadChannel:(id)channel completionQueue:(id)queue completion:(id)completion;
- (void)didReplaceDataContents;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)performInputStreamReadWithAccessor:(id)accessor;
- (void)replaceContentsWithMissingData;
- (void)replaceStorageWithEmptyRemoteDataStorage;
- (void)replaceStorageWithRemoteDataStorageWithLength:(unint64_t)length;
- (void)resetLastValidationResult;
- (void)setAttributes:(id)attributes;
- (void)setFallbackColor:(id)color;
- (void)setFilename:(id)filename storage:(id)storage ifStorageIs:(id)is;
- (void)setLastMismatchedDigest:(id)digest;
- (void)setLastValidationError:(id)error;
- (void)setStorage:(id)storage;
- (void)setToCopyOfMetadataIfNil:(id)nil;
- (void)setUploadStatus:(int64_t)status;
- (void)updateAnonymousUniqueIdentifierWithDocumentProperties:(id)properties passphrase:(id)passphrase;
- (void)upgradeFallbackColorIfNeeded;
- (void)willCull;
- (void)willCullWithFlags:(unint64_t)flags;
@end

@implementation TSPData

+ (id)dataFromURL:(id)l context:(id)context
{
  v4 = objc_msgSend_dataFromURL_useExternalReferenceIfAllowed_context_(self, a2, l, 0, context);

  return v4;
}

+ (id)dataFromNSData:(id)data filename:(id)filename context:(id)context
{
  dataCopy = data;
  filenameCopy = filename;
  v11 = objc_msgSend_dataManager(context, v9, v10);
  v13 = objc_msgSend_dataFromNSData_filename_(v11, v12, dataCopy, filenameCopy);

  return v13;
}

+ (id)dataFromDataRep:(id)rep filename:(id)filename context:(id)context
{
  repCopy = rep;
  filenameCopy = filename;
  contextCopy = context;
  v10 = [TSPDataRepReadChannel alloc];
  v12 = objc_msgSend_initWithRepresentation_(v10, v11, repCopy);
  v15 = objc_msgSend_dataManager(contextCopy, v13, v14);
  v17 = objc_msgSend_dataFromReadChannel_filename_(v15, v16, v12, filenameCopy);

  return v17;
}

+ (id)dataFromReadChannel:(id)channel filename:(id)filename context:(id)context
{
  channelCopy = channel;
  filenameCopy = filename;
  v11 = objc_msgSend_dataManager(context, v9, v10);
  v13 = objc_msgSend_dataFromReadChannel_filename_(v11, v12, channelCopy, filenameCopy);

  return v13;
}

+ (id)readOnlyDataFromURL:(id)l
{
  lCopy = l;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_276A0C2EC;
  v43 = sub_276A0C2FC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_276A0C2EC;
  v37 = sub_276A0C2FC;
  v38 = 0;
  v4 = dispatch_semaphore_create(0);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_276A0C304;
  v29[3] = &unk_27A6E43A8;
  v31 = &v39;
  v32 = &v33;
  v5 = v4;
  v30 = v5;
  objc_msgSend_readWithURL_handler_(TSPDataManager, v6, lCopy, v29);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v40[5])
  {
    v7 = v34[5];
    v34[5] = 0;

    v28 = 0;
    v8 = *MEMORY[0x277CBE7B0];
    v9 = v34;
    obj = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(lCopy, v10, &v28, v8, &obj);
    v12 = v28;
    objc_storeStrong(v9 + 5, obj);
    if (ResourceValue_forKey_error)
    {
      goto LABEL_9;
    }

    if (UnsafePointer != -1)
    {
      sub_276BD3558();
    }

    goto LABEL_6;
  }

  if (UnsafePointer != -1)
  {
    sub_276BD3580();
LABEL_6:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v13 = [TSPReadOnlyFileDataStorage alloc];
  v15 = objc_msgSend_initWithURL_(v13, v14, lCopy);
  v18 = [TSPData alloc];
  v19 = v40[5];
  v20 = v19;
  if (!v19)
  {
    v20 = objc_msgSend_emptyDataDigest(TSPDigest, v16, v17);
  }

  v23 = objc_msgSend_lastPathComponent(lCopy, v16, v17);
  v24 = v12;
  if (!v12)
  {
    v24 = objc_msgSend_date(MEMORY[0x277CBEAA8], v21, v22);
  }

  hasValidatedDigestMatch_filename_lastModificationDate_storage_manager = objc_msgSend_initWithIdentifier_digest_hasValidatedDigestMatch_filename_lastModificationDate_storage_manager_(v18, v21, 0, v20, 1, v23, v24, v15, 0);
  if (!v12)
  {
  }

  if (!v19)
  {
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return hasValidatedDigestMatch_filename_lastModificationDate_storage_manager;
}

+ (id)readOnlyDataFromNSData:(id)data filename:(id)filename
{
  dataCopy = data;
  filenameCopy = filename;
  v7 = [TSPReadOnlyMemoryDataStorage alloc];
  v9 = objc_msgSend_initWithNSData_(v7, v8, dataCopy);
  v10 = [TSPDigest alloc];
  v12 = objc_msgSend_initFromNSData_(v10, v11, dataCopy);
  v13 = [TSPData alloc];
  v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15);
  hasValidatedDigestMatch_filename_lastModificationDate_storage_manager = objc_msgSend_initWithIdentifier_digest_hasValidatedDigestMatch_filename_lastModificationDate_storage_manager_(v13, v17, 0, v12, 1, filenameCopy, v16, v9, 0);

  return hasValidatedDigestMatch_filename_lastModificationDate_storage_manager;
}

+ (id)null
{
  if (qword_280A52688 != -1)
  {
    sub_276BD35A8();
  }

  v3 = qword_280A52680;

  return v3;
}

+ (void)performDataCullingOperationSynchronously:(BOOL)synchronously usingBlock:(id)block
{
  synchronouslyCopy = synchronously;
  blockCopy = block;
  if (qword_280A52690 != -1)
  {
    sub_276BD35BC();
  }

  v6 = qword_280A52698;
  if (synchronouslyCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A0C7E0;
    block[3] = &unk_27A6E3480;
    v7 = &v13;
    v13 = blockCopy;
    v8 = blockCopy;
    dispatch_sync(v6, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_276A0C7F8;
    v10[3] = &unk_27A6E3480;
    v7 = &v11;
    v11 = blockCopy;
    v9 = blockCopy;
    dispatch_async(v6, v10);
  }
}

+ (void)addCullingListener:(id)listener
{
  listenerCopy = listener;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A0C8C0;
  v7[3] = &unk_27A6E43D0;
  v8 = listenerCopy;
  v5 = listenerCopy;
  objc_msgSend_performDataCullingOperationSynchronously_usingBlock_(self, v6, 0, v7);
}

+ (void)removeCullingListener:(id)listener
{
  listenerCopy = listener;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A0C97C;
  v7[3] = &unk_27A6E43D0;
  v8 = listenerCopy;
  v5 = listenerCopy;
  objc_msgSend_performDataCullingOperationSynchronously_usingBlock_(self, v6, 0, v7);
}

- (void)dealloc
{
  v4 = atomic_load(&self->_didCull);
  if ((v4 & 1) == 0)
  {
    v5 = objc_msgSend_documentResourceLocator(self->_storage, a2, v2);
    v6 = v5 != 0;

    objc_msgSend_willCullWithFlags_(self, v7, v6);
  }

  v8.receiver = self;
  v8.super_class = TSPData;
  [(TSPData *)&v8 dealloc];
}

- (void)willCull
{
  v4 = atomic_load(&self->_didCull);
  if ((v4 & 1) == 0)
  {
    isApplicationData = objc_msgSend_isApplicationData(self, a2, v2);

    objc_msgSend_willCullWithFlags_(self, v6, isApplicationData);
  }
}

- (void)willCullWithFlags:(unint64_t)flags
{
  if ((atomic_exchange(&self->_didCull, 1u) & 1) == 0)
  {
    v4 = self->_uniqueIdentifier;
    v5 = objc_opt_class();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276A0CB38;
    v7[3] = &unk_27A6E43F8;
    v7[4] = v4;
    v7[5] = flags;
    objc_msgSend_performDataCullingOperationSynchronously_usingBlock_(v5, v6, 0, v7);
  }
}

- (void)didReplaceDataContents
{
  v3 = self->_uniqueIdentifier;
  isApplicationData = objc_msgSend_isApplicationData(self, v4, v5);
  v7 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A0CD14;
  v9[3] = &unk_27A6E43F8;
  v9[4] = v3;
  v9[5] = isApplicationData;
  objc_msgSend_performDataCullingOperationSynchronously_usingBlock_(v7, v8, 0, v9);
}

- (TSPDataAttributes)attributes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_276A0C2EC;
  v13 = sub_276A0C2FC;
  v14 = 0;
  v4 = objc_msgSend_context(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A0CF60;
  v8[3] = &unk_27A6E28C0;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_performReadOperationOnDataAttributes_(v4, v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = objc_msgSend_copy(attributesCopy, v5, v6);

  v10 = objc_msgSend_context(self, v8, v9);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276A0D060;
  v13[3] = &unk_27A6E2898;
  v13[4] = self;
  v11 = v7;
  v14 = v11;
  objc_msgSend_performAsynchronousWriteOperationOnDataAttributes_(v10, v12, v13);
}

- (id)makeBookmarkDataWithContext:(id)context filename:(id)filename error:(id *)error
{
  v5 = objc_msgSend_makeBookmarkDataForData_filename_options_error_(context, a2, self, filename, 0, error);

  return v5;
}

- (id)NSData
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v5 = objc_msgSend_NSDataWithOptions_(v3, v4, 0);

  return v5;
}

- (CGDataProvider)newCGDataProvider
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_newCGDataProvider(v3, v4, v5);

  return v6;
}

- (CGImageSource)newCGImageSource
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_newCGImageSource(v3, v4, v5);

  return v6;
}

- (CGImage)newCGImage
{
  result = objc_msgSend_newCGImageSource(self, a2, v2);
  if (result)
  {
    v4 = result;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(result, 0, 0);
    CFRelease(v4);
    return ImageAtIndex;
  }

  return result;
}

- (id)AVAssetWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_opt_class();
  v8 = objc_msgSend_requiredAVAssetOptions(v5, v6, v7);
  v11 = objc_msgSend_mutableCopy(v8, v9, v10);

  if (optionsCopy)
  {
    objc_msgSend_addEntriesFromDictionary_(v11, v12, optionsCopy);
  }

  v14 = objc_msgSend_storage(self, v12, v13);
  v16 = objc_msgSend_AVAssetWithOptions_forData_(v14, v15, v11, self);

  v17 = *MEMORY[0x277CE6240];
  v19 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v18, *MEMORY[0x277CE6240]);
  if (objc_msgSend_BOOLValue(v19, v20, v21))
  {
    v24 = objc_msgSend_providesPreciseDurationAndTiming(v16, v22, v23);

    if (v24)
    {
      goto LABEL_9;
    }

    if (UnsafePointer != -1)
    {
      sub_276BD35D0();
    }

    objc_msgSend_removeObjectForKey_(v11, v25, v17);
    v19 = objc_msgSend_storage(self, v26, v27);
    v29 = objc_msgSend_AVAssetWithOptions_forData_(v19, v28, v11, self);

    v16 = v29;
  }

LABEL_9:

  return v16;
}

+ (id)requiredAVAssetOptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CE6260];
  v6[0] = &unk_2885E5C38;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSString)filename
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A0D554;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)typeForFilename:(id)filename
{
  v3 = objc_msgSend_pathExtension(filename, a2, filename);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_tsu_preferredIdentifierForTagClass_conformingToUTI_(v3, v4, *MEMORY[0x277CE1CC0], 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)type
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_276A0C2EC;
  v14 = sub_276A0C2FC;
  v15 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A0D770;
  block[3] = &unk_27A6E28C0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(accessQueue, block);
  v4 = v11[5];
  if (!v4)
  {
    v5 = self->_accessQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276A0D784;
    v8[3] = &unk_27A6E28C0;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_barrier_sync(v5, v8);
    v4 = v11[5];
  }

  v6 = v4;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)p_type
{
  dispatch_assert_queue_barrier(self->_accessQueue);
  type = self->_type;
  if (!type)
  {
    v6 = objc_msgSend_preferredFilename(self, v3, v4);
    v7 = objc_opt_class();
    v9 = objc_msgSend_typeForFilename_(v7, v8, v6);
    v12 = objc_msgSend_copy(v9, v10, v11);
    v13 = self->_type;
    self->_type = v12;

    type = self->_type;
  }

  return type;
}

- (int64_t)typeClass
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A0D9A4;
  block[3] = &unk_27A6E2EA8;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(accessQueue, block);
  if ((v10[3] & 1) == 0)
  {
    v4 = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276A0D9CC;
    v7[3] = &unk_27A6E2E30;
    v7[4] = self;
    v7[5] = &v13;
    dispatch_barrier_sync(v4, v7);
  }

  v5 = v14[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5;
}

+ (id)normalizedExtensionForFilename:(id)filename
{
  v3 = objc_msgSend_typeForFilename_(self, a2, filename);
  v6 = objc_msgSend_tsu_UTIFilenameExtension(v3, v4, v5);

  return v6;
}

- (NSString)normalizedExtension
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A0DC9C;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSUUID)anonymousUniqueIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A0DE40;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isReadable
{
  v3 = objc_msgSend_storage(self, a2, v2);
  isReadable = objc_msgSend_isReadable(v3, v4, v5);

  return isReadable;
}

- (BOOL)isApplicationData
{
  v3 = objc_msgSend_documentResourceLocator(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isExternalData
{
  v3 = objc_msgSend_storage(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isEncrypted
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_decryptionInfo(v3, v4, v5);
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)documentResourceLocator
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_documentResourceLocator(v3, v4, v5);

  return v6;
}

- (NSString)packageLocator
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_packageLocator(v3, v4, v5);

  return v6;
}

- (unsigned)packageIdentifier
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_packageIdentifier(v3, v4, v5);

  return v6;
}

- (TSPObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v5 = objc_msgSend_context(WeakRetained, v3, v4);

  return v5;
}

- (TSPDigest)lastMismatchedDigest
{
  os_unfair_lock_lock(&self->_lastMismatchedDigestLock);
  v3 = self->_lastMismatchedDigest;
  os_unfair_lock_unlock(&self->_lastMismatchedDigestLock);
  if (!v3)
  {
    v6 = objc_msgSend_context(self, v4, v5);
    v9 = objc_msgSend_documentMetadata(v6, v7, v8);
    v11 = v9;
    if (v9)
    {
      objc_msgSend_propertiesForData_(v9, v10, self);
      v12 = *(&v15 + 1);
    }

    else
    {
      v12 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    v3 = v12;
  }

  return v3;
}

- (void)setLastMismatchedDigest:(id)digest
{
  digestCopy = digest;
  if (digestCopy)
  {
    v7 = digestCopy;
    v8 = objc_msgSend_copy(digestCopy, v5, v6);

    os_unfair_lock_lock(&self->_lastMismatchedDigestLock);
    objc_storeStrong(&self->_lastMismatchedDigest, v8);
    os_unfair_lock_unlock(&self->_lastMismatchedDigestLock);
    v11 = objc_msgSend_context(self, v9, v10);
    sub_276A19D24(v13, 0, 0, 0, v8, 0);
    if (v11)
    {
      objc_msgSend_setProperties_forData_(v11, v12, v13, self);
    }

    else
    {
    }
  }
}

- (NSString)lastMismatchedDigestString
{
  v3 = objc_msgSend_lastMismatchedDigest(self, a2, v2);
  v6 = objc_msgSend_digestString(v3, v4, v5);

  return v6;
}

- (id)lastValidationError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A0E544;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLastValidationError:(id)error
{
  errorCopy = error;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A0E5F0;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)resetLastValidationResult
{
  objc_msgSend_setLastValidationResult_(self, a2, 0);

  objc_msgSend_setLastValidationError_(self, v3, 0);
}

- (BOOL)validateDataDigestWithReason:(id)reason options:(unint64_t)options error:(id *)error
{
  reasonCopy = reason;
  v11 = objc_msgSend_context(self, v9, v10);
  v14 = objc_msgSend_documentMetadata(v11, v12, v13);
  LOBYTE(error) = objc_msgSend_validateDataDigestWithReason_options_documentMetadata_error_(self, v15, reasonCopy, options, v14, error);

  return error;
}

- (BOOL)validateDataDigestWithReason:(id)reason options:(unint64_t)options documentMetadata:(id)metadata error:(id *)error
{
  reasonCopy = reason;
  metadataCopy = metadata;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = sub_276A0C2EC;
  v125 = sub_276A0C2FC;
  v126 = 0;
  if ((options & 1) == 0)
  {
    goto LABEL_5;
  }

  ValidationResult = objc_msgSend_lastValidationResult(self, v11, v12);
  if (ValidationResult == 1)
  {
    goto LABEL_23;
  }

  if (ValidationResult != 2)
  {
LABEL_5:
    v115 = 0;
    v116 = &v115;
    v117 = 0x3032000000;
    v118 = sub_276A0C2EC;
    v119 = sub_276A0C2FC;
    v120 = 0;
    v111 = 0;
    v112 = &v111;
    v113 = 0x2020000000;
    v114 = 0;
    v107 = 0;
    v108 = &v107;
    v109 = 0x2020000000;
    v110 = 0;
    if (metadataCopy)
    {
      objc_msgSend_propertiesForData_(metadataCopy, v11, self);
    }

    else
    {
      sub_276A19D84(&v102);
    }

    v21 = objc_msgSend_storage(self, v19, v20);
    v24 = v21;
    if (!v21)
    {
      errorCopy = error;
      v77 = metadataCopy;
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPData validateDataDigestWithReason:options:documentMetadata:error:]");
      v79 = reasonCopy;
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
      identifier = self->_identifier;
      v37 = sub_276A19D98(v102);
      v40 = objc_msgSend_length(self, v38, v39);
      v43 = objc_msgSend_type(self, v41, v42);
      v45 = NSStringFromTSPVersion(v104, v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v46, v33, v35, 754, 0, "Cannot calculate digest without a data storage for data %@, assuming it's the same. identifier=%lld, reason='%{public}@', digestStatus=%{public}@, dataLength=%llu, dataType=%{public}@, creationVersion=%{public}@, creationTime=%{public}@", self, identifier, v79, v37, v40, v43, v45, v103);

      reasonCopy = v79;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
      v51 = objc_msgSend_digest(self, v49, v50);
      v52 = v116[5];
      v116[5] = v51;

      v31 = 1;
      error = errorCopy;
      metadataCopy = v77;
      goto LABEL_22;
    }

    v98 = 0;
    v99 = &v98;
    v100 = 0x2020000000;
    isReadable = objc_msgSend_isReadable(v21, v22, v23);
    if (*(v99 + 24) != 1)
    {
      goto LABEL_17;
    }

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3321888768;
    v85[2] = sub_276A0EF38;
    v85[3] = &unk_2885C17E0;
    v88 = &v115;
    v89 = &v111;
    v90 = &v107;
    v91 = &v121;
    optionsCopy = options;
    v87 = &v98;
    v85[4] = self;
    v27 = reasonCopy;
    v86 = v27;
    v93 = v102;
    v94 = v103;
    v95 = v104;
    v96 = v105;
    v97 = v106;
    objc_msgSend_performIOChannelReadWithAccessor_(v24, v28, v85);

    if ((v99[3] & 1) == 0)
    {
LABEL_17:
      if (UnsafePointer != -1)
      {
        sub_276BD35E4();
      }

      v29 = objc_msgSend_digest(self, v25, v26);
      v30 = v116[5];
      v116[5] = v29;

      _Block_object_dispose(&v98, 8);
      goto LABEL_20;
    }

    if (v122[5])
    {
      if (UnsafePointer != -1)
      {
        sub_276BD360C();
      }

      if (!v102 && objc_msgSend_tsp_isCorruptedError(v122[5], v25, v26))
      {
        objc_msgSend_setPropertiesForData_usingBlock_(metadataCopy, v25, self, &unk_2885C1890);
      }
    }

    else
    {
      v62 = v116[5];
      v63 = objc_msgSend_digest(self, v25, v26);
      LODWORD(v62) = objc_msgSend_isEqual_(v62, v64, v63);

      if (v62)
      {
        if (v102 != 1)
        {
          objc_msgSend_setPropertiesForData_usingBlock_(metadataCopy, v25, self, &unk_2885C1810);
        }

        v65 = 1;
        objc_msgSend_setLastValidationResult_(self, v25, 1);
        goto LABEL_40;
      }

      if (UnsafePointer != -1)
      {
        sub_276BD3634();
      }

      if (!v102)
      {
        objc_msgSend_setPropertiesForData_usingBlock_(metadataCopy, v25, self, &unk_2885C1850);
      }
    }

    v66 = v116[5];
    if (v66)
    {
      objc_msgSend_setLastMismatchedDigest_(self, v25, v66);
    }

    v65 = 0;
    objc_msgSend_setLastValidationResult_(self, v25, 2);
LABEL_40:
    v67 = v65 ^ 1;
    if (!metadataCopy)
    {
      v67 = 1;
    }

    if ((v67 & 1) == 0)
    {
      v31 = 1;
      atomic_store(1u, &self->_hasValidatedDigestMatch);
      _Block_object_dispose(&v98, 8);
      goto LABEL_22;
    }

    _Block_object_dispose(&v98, 8);
    if ((v65 & 1) == 0)
    {
      v78 = metadataCopy;
      v68 = MEMORY[0x277CCA9B8];
      v69 = v122[5];
      v80 = v102;
      v70 = v103;
      v81 = v70;
      v82 = v104;
      v71 = v105;
      v83 = v71;
      v84 = v106;
      if (v68)
      {
        v73 = objc_msgSend_tsp_dataCorruptionErrorWithError_reason_data_dataProperties_actualDataDigest_isLikelyOSCorruption_isLikelyZeroBytesCorruption_(v68, v72, v69, v27, self, &v80, v116[5], *(v112 + 24), *(v108 + 24));
      }

      else
      {

        v73 = 0;
      }

      v74 = v122[5];
      v122[5] = v73;

      objc_msgSend_setLastValidationError_(self, v75, v122[5]);
      v31 = 0;
      metadataCopy = v78;
LABEL_22:

      _Block_object_dispose(&v107, 8);
      _Block_object_dispose(&v111, 8);
      _Block_object_dispose(&v115, 8);

      if ((v31 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      v53 = 1;
      goto LABEL_28;
    }

LABEL_20:
    v31 = 1;
    goto LABEL_22;
  }

  v16 = objc_msgSend_lastValidationError(self, v11, v15);
  v17 = v122[5];
  v122[5] = v16;

LABEL_24:
  if (!v122[5])
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPData validateDataDigestWithReason:options:documentMetadata:error:]");
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 766, 0, "invalid nil value for '%{public}s'", "error");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
  }

  v53 = 0;
  if (error)
  {
    *error = v122[5];
  }

LABEL_28:
  _Block_object_dispose(&v121, 8);

  return v53;
}

- (unint64_t)creationVersionWithDocumentMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = metadataCopy;
  if (metadataCopy)
  {
    objc_msgSend_propertiesForData_(metadataCopy, v5, self);
  }

  else
  {
    sub_276A19D84(v9);
  }

  v7 = v11;

  return v7;
}

- (unint64_t)creationVersion
{
  v6 = objc_msgSend_context(self, a2, v2);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPData creationVersion]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 782, 0, "invalid nil value for '%{public}s'", "context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v15 = objc_msgSend_documentMetadata(v6, v4, v5);
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPData creationVersion]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 785, 0, "invalid nil value for '%{public}s'", "documentMetadata");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = objc_msgSend_creationVersionWithDocumentMetadata_(self, v14, v15);

  return v23;
}

- (id)copyWithContext:(id)context
{
  v4 = objc_msgSend_dataManager(context, a2, context);
  v6 = objc_msgSend_copyData_(v4, v5, self);

  return v6;
}

- (void)setToCopyOfMetadataIfNil:(id)nil
{
  nilCopy = nil;
  v5 = nilCopy;
  if (nilCopy)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276A0F51C;
    v7[3] = &unk_27A6E2898;
    v7[4] = self;
    v8 = nilCopy;
    dispatch_barrier_sync(accessQueue, v7);
  }
}

- (void)updateAnonymousUniqueIdentifierWithDocumentProperties:(id)properties passphrase:(id)passphrase
{
  propertiesCopy = properties;
  passphraseCopy = passphrase;
  v10 = objc_msgSend_digest(self, v8, v9);
  v12 = objc_msgSend_anonymousIdentifierWithDocumentProperties_passphrase_(v10, v11, propertiesCopy, passphraseCopy);

  accessQueue = self->_accessQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276A0F6A8;
  v14[3] = &unk_27A6E2898;
  v14[4] = self;
  v14[5] = v12;
  dispatch_barrier_sync(accessQueue, v14);
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v6 = objc_msgSend_storage(self, v4, v5);
  objc_msgSend_performIOChannelReadWithAccessor_(v6, v7, accessorCopy);
}

- (void)performInputStreamReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  if (accessorCopy)
  {
    v7 = objc_msgSend_length(self, v4, v5);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_276A0F7FC;
    v9[3] = &unk_27A6E4440;
    v11 = v7;
    v9[4] = self;
    v10 = accessorCopy;
    objc_msgSend_performIOChannelReadWithAccessor_(self, v8, v9);
  }
}

- (BOOL)needsDownload
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_needsDownload(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canDownload
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    canDownload = objc_msgSend_canDownload(v3, v4, v5);
  }

  else
  {
    canDownload = 0;
  }

  return canDownload;
}

- (void)addDownloadObserver:(id)observer options:(unint64_t)options completionHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  v11 = objc_msgSend_storage(self, v9, v10);
  v12 = TSUProtocolCast();

  if (v12)
  {
    v15 = objc_msgSend_context(self, v13, v14, &unk_2885F0210);
    v18 = objc_msgSend_downloadObserverManager(v15, v16, v17);
    objc_msgSend_addDownloadObserver_forData_options_completionHandler_(v18, v19, observerCopy, self, options, handlerCopy);
  }

  else if (handlerCopy)
  {
    if (objc_msgSend_needsDownload(self, v13, v14, &unk_2885F0210))
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPData addDownloadObserver:options:completionHandler:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 873, 0, "Data should not need download here.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    if ((options & 2) != 0)
    {
      handlerCopy[2](handlerCopy, observerCopy, self, 1, 0);
    }
  }
}

- (void)didAddDownloadObserver
{
  v6 = objc_msgSend_storage(self, a2, v2);
  v4 = TSUProtocolCast();
  objc_msgSend_didAddDownloadObserverWithData_(v4, v5, self, &unk_2885F0210);
}

- (unint64_t)hash
{
  v3 = objc_msgSend_digest(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_context(self, v6, v7);
      v11 = objc_msgSend_context(v5, v9, v10);

      if (v8 == v11)
      {
        v15 = objc_msgSend_digest(self, v12, v13);
        v18 = objc_msgSend_digest(v5, v16, v17);
        isEqual = objc_msgSend_isEqual_(v15, v19, v18);
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (NSString)description
{
  v31.receiver = self;
  v31.super_class = TSPData;
  v3 = [(TSPData *)&v31 description];
  v5 = objc_msgSend_stringByAppendingFormat_(v3, v4, @" %llu", self->_identifier);

  v8 = objc_msgSend_preferredFilename(self, v6, v7);
  if (objc_msgSend_length(v8, v9, v10))
  {
    v13 = objc_msgSend_stringByAppendingFormat_(v5, v11, @" %@", v8);

    v16 = objc_msgSend_length(self, v14, v15);
    v18 = objc_msgSend_stringByAppendingFormat_(v13, v17, @" length %lu", v16);

    v5 = v18;
  }

  v19 = objc_msgSend_documentResourceLocator(self->_storage, v11, v12);

  Only = objc_msgSend_readOnly(self->_storage, v20, v21);
  if ((v19 != 0) | Only & 1)
  {
    v23 = objc_alloc(MEMORY[0x277CCAB68]);
    v25 = objc_msgSend_initWithCapacity_(v23, v24, 32);
    objc_msgSend_appendString_(v25, v26, @"(");
    if (v19)
    {
      objc_msgSend_appendString_(v25, v27, @"application data");
      if (Only)
      {
        objc_msgSend_appendString_(v25, v27, @", ");
LABEL_8:
        objc_msgSend_appendString_(v25, v27, @"read only");
      }
    }

    else if (Only)
    {
      goto LABEL_8;
    }

    objc_msgSend_appendString_(v25, v27, @""));
    v29 = objc_msgSend_stringByAppendingString_(v5, v28, v25);

    v5 = v29;
  }

  return v5;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_opt_class();
  v10 = objc_msgSend_storage(self, v8, v9);
  LOBYTE(error) = objc_msgSend_writeStorage_toURL_error_(v7, v11, v10, lCopy, error);

  return error;
}

- (BOOL)writeToURL:(id)l withRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  lCopy = l;
  v10 = objc_opt_class();
  v13 = objc_msgSend_storage(self, v11, v12);
  LOBYTE(error) = objc_msgSend_p_writeStorage_toURL_withRange_error_(v10, v14, v13, lCopy, location, length, error);

  return error;
}

+ (BOOL)p_writeStorage:(id)storage toURL:(id)l withRange:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  lCopy = l;
  isFileURL = objc_msgSend_isFileURL(lCopy, v12, v13);
  if (storageCopy)
  {
    v17 = isFileURL;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v40 = 0;
    goto LABEL_17;
  }

  v18 = objc_msgSend_path(lCopy, v15, v16);
  v19 = v18;
  v22 = objc_msgSend_fileSystemRepresentation(v19, v20, v21);
  unlink(v22);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_276A0C2EC;
  v64 = sub_276A0C2FC;
  v65 = 0;
  if (location || length != -1 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(storageCopy, v23, lCopy, 0, 0) & 1) == 0)
  {
    v24 = v18;
    v27 = objc_msgSend_fileSystemRepresentation(v24, v25, v26);
    v30 = open(v27, 1537, 420);
    if (v30 < 0)
    {
      *(v67 + 24) = 0;
      v42 = MEMORY[0x277CCA9B8];
      v43 = __error();
      v45 = objc_msgSend_tsu_fileReadPOSIXErrorWithNumber_userInfo_(v42, v44, *v43, 0);
      v46 = v61[5];
      v61[5] = v45;

      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v59 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v31 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v28, v29);

    if (v31)
    {
      v34 = MEMORY[0x277CCAC48];
      v35 = objc_msgSend_length(storageCopy, v32, v33);
      v31 = objc_msgSend_progressWithTotalUnitCount_(v34, v36, v35);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = sub_276A104F0;
      v56[3] = &unk_27A6E4468;
      v56[4] = v58;
      objc_msgSend_setCancellationHandler_(v31, v37, v56);
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_276A10504;
    v47[3] = &unk_27A6E44E0;
    v53 = location;
    v54 = length;
    v49 = v58;
    v50 = &v60;
    v51 = &v66;
    v55 = v30;
    v38 = v31;
    v48 = v38;
    v52 = v57;
    objc_msgSend_performIOChannelReadWithAccessor_(storageCopy, v39, v47);

    close(v30);
    _Block_object_dispose(v57, 8);
    _Block_object_dispose(v58, 8);
  }

  if (error)
  {
LABEL_14:
    *error = v61[5];
  }

LABEL_15:
  v40 = *(v67 + 24);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
LABEL_17:

  return v40 & 1;
}

- (unint64_t)length
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_length(v3, v4, v5);

  return v6;
}

- (unint64_t)lengthIfLocal
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v3, v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_length(v3, v4, v5);
  }

  return v6;
}

- (unint64_t)encodedLength
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_encodedLength(v3, v4, v5);

  return v6;
}

- (unint64_t)encodedLengthIfLocal
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v3, v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_encodedLength(v3, v4, v5);
  }

  return v6;
}

- (unint64_t)reservedLengthIfLocal
{
  v4 = objc_msgSend_storage(self, a2, v2);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v4, v5, v6) & 1) != 0 || !objc_msgSend_reservedInServer(self, v5, v6))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_msgSend_reservedLength(v4, v7, v8);
  }

  return v9;
}

- (id)newDataCopyURLProviderWithEncryptionInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_276A0C2EC;
  v35 = sub_276A0C2FC;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_276A0C2EC;
  v29 = sub_276A0C2FC;
  v30 = 0;
  v9 = objc_msgSend_context(self, v7, v8);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_276A10EB4;
  v20 = &unk_27A6E4508;
  selfCopy = self;
  v23 = &v25;
  v10 = infoCopy;
  v22 = v10;
  v24 = &v31;
  objc_msgSend_performReadUsingAccessorImpl_(v9, v11, &v17);

  if (!v26[5] && !v32[5])
  {
    v13 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0, v17, v18, v19, v20, selfCopy);
    v14 = v32[5];
    v32[5] = v13;
  }

  if (error)
  {
    *error = v32[5];
  }

  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

- (id)newDataCopyReadChannelProviderWithEncryptionInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_276A0C2EC;
  v35 = sub_276A0C2FC;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_276A0C2EC;
  v29 = sub_276A0C2FC;
  v30 = 0;
  v9 = objc_msgSend_context(self, v7, v8);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_276A11198;
  v20 = &unk_27A6E4508;
  selfCopy = self;
  v23 = &v25;
  v10 = infoCopy;
  v22 = v10;
  v24 = &v31;
  objc_msgSend_performReadUsingAccessorImpl_(v9, v11, &v17);

  if (!v26[5] && !v32[5])
  {
    v13 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0, v17, v18, v19, v20, selfCopy);
    v14 = v32[5];
    v32[5] = v13;
  }

  if (error)
  {
    *error = v32[5];
  }

  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

- (id)newDataCopyInputStreamProviderWithEncryptionInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_276A0C2EC;
  v35 = sub_276A0C2FC;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_276A0C2EC;
  v29 = sub_276A0C2FC;
  v30 = 0;
  v9 = objc_msgSend_context(self, v7, v8);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_276A1147C;
  v20 = &unk_27A6E4508;
  selfCopy = self;
  v23 = &v25;
  v10 = infoCopy;
  v22 = v10;
  v24 = &v31;
  objc_msgSend_performReadUsingAccessorImpl_(v9, v11, &v17);

  if (!v26[5] && !v32[5])
  {
    v13 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0, v17, v18, v19, v20, selfCopy);
    v14 = v32[5];
    v32[5] = v13;
  }

  if (error)
  {
    *error = v32[5];
  }

  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

- (TSPData)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPData init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 1224, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPData init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPData)initWithIdentifier:(int64_t)identifier digest:(id)digest hasValidatedDigestMatch:(BOOL)match filename:(id)filename lastModificationDate:(id)date storage:(id)storage manager:(id)manager
{
  digestCopy = digest;
  filenameCopy = filename;
  dateCopy = date;
  storageCopy = storage;
  managerCopy = manager;
  v42.receiver = self;
  v42.super_class = TSPData;
  v19 = [(TSPData *)&v42 init];
  v20 = v19;
  if (v19)
  {
    v19->_identifier = identifier;
    v21 = [TSPDataUniqueIdentifier alloc];
    v23 = objc_msgSend_initWithDigest_(v21, v22, digestCopy);
    uniqueIdentifier = v20->_uniqueIdentifier;
    v20->_uniqueIdentifier = v23;

    atomic_store(match, &v20->_hasValidatedDigestMatch);
    objc_storeStrong(&v20->_filename, filename);
    v27 = objc_msgSend_copy(dateCopy, v25, v26);
    lastModificationDate = v20->_lastModificationDate;
    v20->_lastModificationDate = v27;

    objc_storeStrong(&v20->_storage, storage);
    objc_storeWeak(&v20->_manager, managerCopy);
    v31 = objc_msgSend_context(managerCopy, v29, v30);
    v34 = v31;
    if (v31)
    {
      objc_msgSend_anonymousIdentifierForDigest_(v31, v32, digestCopy);
    }

    else
    {
      objc_msgSend_UUID(MEMORY[0x277CCAD78], v32, v33);
    }
    v35 = ;
    anonymousUniqueIdentifier = v20->_anonymousUniqueIdentifier;
    v20->_anonymousUniqueIdentifier = v35;

    v37 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v38 = dispatch_queue_create("TSPData.Access", v37);
    accessQueue = v20->_accessQueue;
    v20->_accessQueue = v38;

    v20->_lastMismatchedDigestLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v20;
}

- (TSPDataStorage)storage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A11954;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A11A00;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = storageCopy;
  v6 = storageCopy;
  dispatch_barrier_async(accessQueue, v7);
}

- (void)setFilename:(id)filename storage:(id)storage ifStorageIs:(id)is
{
  filenameCopy = filename;
  storageCopy = storage;
  isCopy = is;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A11B04;
  v15[3] = &unk_27A6E2870;
  v16 = isCopy;
  selfCopy = self;
  v18 = filenameCopy;
  v19 = storageCopy;
  v12 = storageCopy;
  v13 = filenameCopy;
  v14 = isCopy;
  dispatch_barrier_async(accessQueue, v15);
}

- (id)preferredFilename
{
  storage = self->_storage;
  filename = self->_filename;
  if (storage)
  {
    v5 = objc_msgSend_filenameForPreferredFilename_(storage, a2, filename);
  }

  else
  {
    v5 = filename;
  }

  return v5;
}

- (void)replaceContentsWithMissingData
{
  v13 = objc_msgSend_filename(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v6 = objc_msgSend_temporaryDataStorageURLForFilename_(WeakRetained, v5, v13);

  if (v6)
  {
    v7 = [TSPTemporaryDataStorage alloc];
    isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_isMissingOriginalData_isMissingData_isUnmaterializedDueToPartiallyDownloadedDocument_(v7, v8, v6, 0, 1, 1, 0);
    objc_msgSend_setStorage_(self, v10, isUnmaterializedDueToPartiallyDownloadedDocument);
    objc_msgSend_didReplaceDataContents(self, v11, v12);
  }

  else if (UnsafePointer != -1)
  {
    sub_276BD3670();
  }
}

- (BOOL)replaceContentsWithDataFrom:(id)from error:(id *)error
{
  fromCopy = from;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276A11DF8;
  v14[3] = &unk_27A6E4530;
  v7 = fromCopy;
  v15 = v7;
  v10 = objc_msgSend_temporaryDataStorageForReplacingDataContentsWithDecryptionInfo_writer_error_(self, v8, 0, v14, error);
  if (v10)
  {
    objc_msgSend_setStorage_(self, v9, v10);
    objc_msgSend_didReplaceDataContents(self, v11, v12);
  }

  return v10 != 0;
}

- (id)temporaryDataStorageForReplacingDataContentsWithDecryptionInfo:(id)info writer:(id)writer error:(id *)error
{
  infoCopy = info;
  writerCopy = writer;
  v12 = objc_msgSend_filename(self, v10, v11);
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v15 = objc_msgSend_temporaryDataStorageURLForFilename_(WeakRetained, v14, v12);

  if (v15)
  {
    v25 = 0;
    v17 = writerCopy[2](writerCopy, v15, &v25);
    v18 = v25;
    if (v17)
    {
      v19 = [TSPTemporaryDataStorage alloc];
      isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_isMissingOriginalData_isMissingData_isUnmaterializedDueToPartiallyDownloadedDocument_(v19, v20, v15, infoCopy, 0, 0, 0);
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else
    {
      isUnmaterializedDueToPartiallyDownloadedDocument = 0;
      if (!error)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  v22 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v16, 0);
  if (UnsafePointer != -1)
  {
    sub_276BD3684();
  }

  isUnmaterializedDueToPartiallyDownloadedDocument = 0;
  v18 = v22;
  if (error)
  {
LABEL_10:
    if (!isUnmaterializedDueToPartiallyDownloadedDocument)
    {
      v23 = v18;
      *error = v18;
    }
  }

LABEL_12:

  return isUnmaterializedDueToPartiallyDownloadedDocument;
}

- (BOOL)archiveInfoMessage:(void *)message archiver:(id)archiver packageWriter:(id)writer
{
  archiverCopy = archiver;
  writerCopy = writer;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A121AC;
  block[3] = &unk_27A6E4558;
  v24 = &v26;
  messageCopy = message;
  block[4] = self;
  v11 = archiverCopy;
  v22 = v11;
  v12 = writerCopy;
  v23 = v12;
  dispatch_sync(accessQueue, block);
  v15 = 0;
  if (*(v27 + 24) == 1)
  {
    v16 = objc_msgSend_lastMismatchedDigest(self, v13, v14);
    if (v16)
    {
      *(message + 4) |= 0x40u;
      v17 = *(message + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::internal::ArenaStringPtr::Mutable(message + 9, v17);
      objc_msgSend_saveToProtobufString_(v16, v19, v18);
    }

    v15 = *(v27 + 24);
  }

  _Block_object_dispose(&v26, 8);
  return v15 & 1;
}

- (BOOL)isUnmaterializedDueToPartiallyDownloadedDocument
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v3, v4, v5);
  }

  else
  {
    isUnmaterializedDueToPartiallyDownloadedDocument = 0;
  }

  return isUnmaterializedDueToPartiallyDownloadedDocument;
}

- (int64_t)uploadStatus
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_uploadStatus(v3, v4, v5);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setUploadStatus:(int64_t)status
{
  sub_276A7BCDC(status, a2);
  v7 = objc_msgSend_storage(self, v5, v6);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setUploadStatus_(v7, v8, status);
  }

  v10 = objc_msgSend_context(self, v8, v9);
  v13 = v10;
  if (v10)
  {
    v15 = objc_msgSend_supportMetadata(v10, v11, v12);
    if (!v15)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPData setUploadStatus:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 1490, 0, "invalid nil value for '%{public}s'", "supportMetadata");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276A12AC0;
    v23[3] = &unk_27A6E4578;
    v23[4] = status;
    objc_msgSend_setCollaborationPropertiesForData_usingBlock_(v15, v14, self, v23);
  }
}

- (BOOL)reservedInServer
{
  v3 = objc_msgSend_uploadStatus(self, a2, v2);

  return sub_276A7BCD0(v3);
}

- (id)fallbackColor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A12BE4;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setFallbackColor:(id)color
{
  colorCopy = color;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A12D4C;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = colorCopy;
  v6 = colorCopy;
  dispatch_barrier_sync(accessQueue, v7);
}

- (CGSize)pixelSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x4012000000;
  v11 = sub_276A12EA0;
  v12 = nullsub_5;
  v13 = &unk_276C58F2F;
  v14 = *MEMORY[0x277CBF3A8];
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A12EB0;
  v7[3] = &unk_27A6E2E30;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue, v7);
  v3 = v9[6];
  v4 = v9[7];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)createMetadataIfNeeded
{
  metadata = self->_metadata;
  if (!metadata)
  {
    v4 = [TSPDataMetadata alloc];
    v7 = objc_msgSend_context(self, v5, v6);
    v9 = objc_msgSend_initWithContext_(v4, v8, v7);
    v10 = self->_metadata;
    self->_metadata = v9;

    metadata = self->_metadata;
  }

  return metadata;
}

- (TSPDataMetadata)metadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A0C2EC;
  v10 = sub_276A0C2FC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A13080;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)upgradeFallbackColorIfNeeded
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A13108;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (TSPDataManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (BOOL)isInDocument
{
  v4 = objc_msgSend_context(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_dataReferenceMap(v4, v5, v6);
    v10 = v8;
    if (!v8)
    {
      TSUSetCrashReporterInfo();
      v13 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPData(Collaboration) isInDocument]", "[TSPData(Collaboration) isInDocument]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm", 30, "dataReferenceMap");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 30, 1, "invalid nil value for '%{public}s'", "dataReferenceMap");

      TSUCrashBreakpoint();
      abort();
    }

    isDataInDocument = objc_msgSend_isDataInDocument_(v8, v9, self);
  }

  else
  {
    isDataInDocument = 0;
  }

  return isDataInDocument;
}

- (NSArray)referencingObjects
{
  v4 = objc_msgSend_context(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_dataReferenceMap(v4, v5, v6);
    v10 = v8;
    if (!v8)
    {
      TSUSetCrashReporterInfo();
      v13 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPData(Collaboration) referencingObjects]", "[TSPData(Collaboration) referencingObjects]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm", 41, "dataReferenceMap");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 41, 1, "invalid nil value for '%{public}s'", "dataReferenceMap");

      TSUCrashBreakpoint();
      abort();
    }

    v11 = objc_msgSend_allObjectsReferencingData_(v8, v9, self);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (BOOL)isRemoteDataEver
{
  v4 = objc_msgSend_context(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_supportMetadata(v4, v5, v6);
    v10 = v8;
    if (v8)
    {
      objc_msgSend_collaborationPropertiesForData_(v8, v9, self);
      v11 = v20;
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPData(Collaboration) isRemoteDataEver]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 153, 0, "invalid nil value for '%{public}s'", "supportMetadata");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)replaceStorageWithEmptyRemoteDataStorage
{
  if ((objc_msgSend_isRemoteDataEver(self, a2, v2) & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPData(Collaboration) replaceStorageWithEmptyRemoteDataStorage]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v9, v36, v8, 172, 0, "We should only call this method when isRemoteDataEver");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  if (objc_msgSend_firstUnmaterializedIndex(self, v4, v5))
  {
    v14 = objc_msgSend_digest(self, v12, v13);
    v37 = objc_msgSend_downloadURLForDataWithDigest_(TSPObjectContext, v15, v14);

    v18 = objc_msgSend_context(self, v16, v17);
    v21 = objc_msgSend_documentPackage(v18, v19, v20);
    v24 = objc_msgSend_decryptionKey(v21, v22, v23);

    v27 = objc_msgSend_materializedLength(self, v25, v26);
    v28 = [TSPRemoteDataStorage alloc];
    v31 = objc_msgSend_date(MEMORY[0x277CBEAA8], v29, v30);
    canDownload_downloadPriority_uploadStatus_modificationDate = objc_msgSend_initWithRemoteURL_length_encryptionKey_canDownload_downloadPriority_uploadStatus_modificationDate_(v28, v32, v37, v27, v24, 0, 1, 2, v31);

    objc_msgSend_setStorage_(self, v34, canDownload_downloadPriority_uploadStatus_modificationDate);
    objc_msgSend_setDelegate_(canDownload_downloadPriority_uploadStatus_modificationDate, v35, self);
  }
}

- (void)replaceStorageWithRemoteDataStorageWithLength:(unint64_t)length
{
  lengthCopy = length;
  if (objc_msgSend_isReadable(self, a2, length))
  {
    v7 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPData(Collaboration) replaceStorageWithRemoteDataStorageWithLength:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v10, v40, v9, 186, 0, "We shouldn't replace a readable data in replaceStorageWithRemoteDataStorageWithLength.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (!lengthCopy)
  {
    v13 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPData(Collaboration) replaceStorageWithRemoteDataStorageWithLength:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData_Collaboration.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v16, v41, v15, 187, 0, "Zero length passed to replaceStorageWithRemoteDataStorageWithLength");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_digest(self, v5, v6);
  v42 = objc_msgSend_downloadURLForDataWithDigest_(TSPObjectContext, v20, v19);

  v23 = objc_msgSend_context(self, v21, v22);
  v26 = objc_msgSend_documentPackage(v23, v24, v25);
  v29 = objc_msgSend_decryptionKey(v26, v27, v28);

  if (!lengthCopy || lengthCopy == -1)
  {
    lengthCopy = objc_msgSend_materializedLength(self, v30, v31);
  }

  v32 = [TSPRemoteDataStorage alloc];
  v35 = objc_msgSend_date(MEMORY[0x277CBEAA8], v33, v34);
  canDownload_downloadPriority_uploadStatus_modificationDate = objc_msgSend_initWithRemoteURL_length_encryptionKey_canDownload_downloadPriority_uploadStatus_modificationDate_(v32, v36, v42, lengthCopy, v29, 0, 1, 2, v35);

  objc_msgSend_setStorage_(self, v38, canDownload_downloadPriority_uploadStatus_modificationDate);
  objc_msgSend_setDelegate_(canDownload_downloadPriority_uploadStatus_modificationDate, v39, self);
}

- (id)UIImage
{
  v3 = objc_msgSend_newCGImage(self, a2, v2);
  v5 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D755B8], v4, v3);
  CGImageRelease(v3);

  return v5;
}

- (id)temporaryDataStorageURLForRemoteDataStorage:(id)storage
{
  v4 = objc_msgSend_manager(self, a2, storage);
  v7 = objc_msgSend_filename(self, v5, v6);
  v9 = objc_msgSend_temporaryDataStorageURLForFilename_(v4, v8, v7);

  return v9;
}

- (BOOL)isMaterialized
{
  v4 = objc_msgSend_storage(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  v8 = objc_msgSend_storage(self, v6, v7);
  isMaterialized = objc_msgSend_isMaterialized(v8, v9, v10);

  return isMaterialized;
}

- (unint64_t)firstUnmaterializedIndex
{
  v3 = objc_msgSend_storage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    UnmaterializedIndex = objc_msgSend_firstUnmaterializedIndex(v3, v4, v5);
  }

  else
  {
    UnmaterializedIndex = -1;
  }

  return UnmaterializedIndex;
}

- (unint64_t)materializedLength
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_materializedLength(v3, v4, v5);

  return v6;
}

- (NSDate)modificationDate
{
  objc_opt_class();
  v5 = objc_msgSend_storage(self, v3, v4);
  v6 = TSUDynamicCast();
  v9 = objc_msgSend_modificationDate(v6, v7, v8);

  return v9;
}

- (BOOL)isUnmaterializedRemoteData
{
  objc_opt_class();
  v5 = objc_msgSend_storage(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_isMaterialized(v6, v7, v8) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)didReceiveRemoteDataWithHandler:(id)handler completionQueue:(id)queue completion:(id)completion
{
  handlerCopy = handler;
  queueCopy = queue;
  completionCopy = completion;
  objc_opt_class();
  v13 = objc_msgSend_storage(self, v11, v12);
  v14 = TSUDynamicCast();

  if (v14)
  {
    v17 = objc_msgSend_context(self, v15, v16);
    v20 = objc_msgSend_delegate(v17, v18, v19);
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, v17);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_276AC7844;
      aBlock[3] = &unk_27A6E6BD0;
      objc_copyWeak(&v30, &location);
      aBlock[4] = self;
      v21 = _Block_copy(aBlock);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_276AC78F8;
      v26[3] = &unk_27A6E6BF8;
      v27 = v21;
      v28 = completionCopy;
      v22 = v21;
      v23 = _Block_copy(v26);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = _Block_copy(completionCopy);
    }

    handlerCopy[2](handlerCopy, v14, queueCopy, v23);

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_276AC79E0;
    v24[3] = &unk_27A6E3480;
    v25 = completionCopy;
    dispatch_async(queueCopy, v24);
    v23 = v25;
LABEL_8:
  }
}

- (void)didReceivePartialRemoteData:(id)data decryptionKey:(id)key range:(_NSRange)range completionQueue:(id)queue completion:(id)completion
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  objc_opt_class();
  v19 = objc_msgSend_storage(self, v17, v18);
  v20 = TSUDynamicCast();

  if (v20)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_276AC7BFC;
    v25[3] = &unk_27A6E6C48;
    v25[4] = self;
    v26 = completionCopy;
    objc_msgSend_didReceivePartialRemoteData_decryptionKey_range_completionQueue_completion_(v20, v21, dataCopy, keyCopy, location, length, queueCopy, v25);
    v22 = &v26;
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    if (!queueCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
      goto LABEL_4;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AC7E08;
    block[3] = &unk_27A6E3480;
    v22 = &v24;
    v24 = completionCopy;
    dispatch_async(queueCopy, block);
  }

LABEL_4:
}

- (void)didReceiveRemoteData:(id)data decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion
{
  dataCopy = data;
  infoCopy = info;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276AC7F14;
  v15[3] = &unk_27A6E6C70;
  v16 = dataCopy;
  v17 = infoCopy;
  v12 = infoCopy;
  v13 = dataCopy;
  objc_msgSend_didReceiveRemoteDataWithHandler_completionQueue_completion_(self, v14, v15, queue, completion);
}

- (void)didReceiveRemoteDataAtURL:(id)l canMove:(BOOL)move decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  infoCopy = info;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276AC8028;
  v17[3] = &unk_27A6E6C98;
  moveCopy = move;
  v18 = lCopy;
  v19 = infoCopy;
  v14 = infoCopy;
  v15 = lCopy;
  objc_msgSend_didReceiveRemoteDataWithHandler_completionQueue_completion_(self, v16, v17, queue, completion);
}

- (void)didReceiveRemoteDataWithReadChannel:(id)channel completionQueue:(id)queue completion:(id)completion
{
  channelCopy = channel;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276AC8104;
  v11[3] = &unk_27A6E6CC0;
  v12 = channelCopy;
  v9 = channelCopy;
  objc_msgSend_didReceiveRemoteDataWithHandler_completionQueue_completion_(self, v10, v11, queue, completion);
}

+ (id)resourceNameForFilename:(id)filename identifier:(int64_t)identifier
{
  filenameCopy = filename;
  v6 = MEMORY[0x277CCACA8];
  v9 = objc_msgSend_stringByDeletingPathExtension(filenameCopy, v7, v8);
  v11 = objc_msgSend_stringWithFormat_(v6, v10, @"%@-%lld", v9, identifier);

  v14 = objc_msgSend_normalizedExtensionForFilename_(TSPData, v12, filenameCopy);
  if (v14)
  {
    v15 = objc_msgSend_stringByAppendingPathExtension_(v11, v13, v14);

    v11 = v15;
  }

  return v11;
}

@end