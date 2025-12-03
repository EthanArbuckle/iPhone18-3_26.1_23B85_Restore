@interface MFAttachment
- (BOOL)conformsToType:(id)type;
- (BOOL)contentTypeConformsToEvent;
- (BOOL)contentTypeConformsToIWork;
- (BOOL)contentTypeConformsToMarkup;
- (BOOL)contentTypeConformsToPassbook;
- (BOOL)contentTypeConformsToProvisionment;
- (BOOL)contentTypeConformsToVCard;
- (BOOL)isCached;
- (BOOL)isContainedInCompose;
- (BOOL)isContainedInRFC822;
- (BOOL)isDataAvailableLocally;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImageFile;
- (BOOL)isPlaceholder;
- (MFAttachment)initWithURL:(id)l attachmentManager:(id)manager;
- (MFAttachmentPlaceholder)placeholder;
- (NSProgress)downloadProgress;
- (NSString)description;
- (NSString)fileUTType;
- (NSString)inferredMimeType;
- (NSString)mimeType;
- (id)_dataProvider;
- (id)_fileUTTypeForFileName:(id)name;
- (id)attachmentContentTypeForFileName:(id)name;
- (id)decodeFilterWithDataConsumer:(id)consumer;
- (id)fetchDataSynchronously:(id *)synchronously stripPrivateMetadata:(BOOL)metadata;
- (id)fetchDataToURL:(id *)l;
- (id)fetchLocalData:(id *)data stripPrivateMetadata:(BOOL)metadata;
- (id)fetchPlaceholderData;
- (id)fileAttributes;
- (id)fileNameByStrippingZipIfNeeded:(BOOL)needed;
- (id)fileURL;
- (id)filterData:(id)data;
- (id)filterVCSData:(id)data;
- (id)readFromDisk;
- (id)textEncodingGuessWithData:(id)data;
- (id)textEncodingNameForData:(id)data mimeType:(id)type;
- (unint64_t)decodedFileSize;
- (unint64_t)encodedFileSize;
- (unint64_t)hash;
- (unint64_t)sizeOnDisk;
- (void)_dataProvider;
- (void)dealloc;
- (void)fetchData;
- (void)fetchPlaceholderData;
- (void)readFromDisk;
- (void)setDecodedFileSize:(unint64_t)size;
- (void)setEncodedFileSize:(unint64_t)size;
- (void)setFileName:(id)name;
- (void)setRemoteImageFileName:(id)name;
- (void)writeToDiskWithData:(id)data;
@end

@implementation MFAttachment

- (MFAttachment)initWithURL:(id)l attachmentManager:(id)manager
{
  lCopy = l;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = MFAttachment;
  v9 = [(MFAttachment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    v10->_attachmentManager = managerCopy;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachment;
  [(MFAttachment *)&v2 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MFAttachment *)self url];
  path = [(MFAttachment *)self path];
  contentID = [(MFAttachment *)self contentID];
  mimeType = [(MFAttachment *)self mimeType];
  part = [(MFAttachment *)self part];
  v10 = [v3 stringWithFormat:@"<%@: %p> url=%@, path=%@, contentID=%@, mimeType=%@, mimePart=%@, isMailDrop=%d", v4, self, v5, path, contentID, mimeType, part, -[MFAttachment isMailDrop](self, "isMailDrop")];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      contentID = [(MFAttachment *)self contentID];
      contentID2 = [(MFAttachment *)v5 contentID];

      v8 = [contentID isEqualToString:contentID2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  contentID = [(MFAttachment *)self contentID];
  v3 = [contentID hash];

  return v3;
}

- (id)decodeFilterWithDataConsumer:(id)consumer
{
  v32 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  part = [(MFAttachment *)self part];
  contentTransferEncoding = [part contentTransferEncoding];

  if ([(MFAttachment *)self isMailDrop]&& ([(MFAttachment *)self part], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [MEMORY[0x277D24EE0] filterWithConsumer:consumerCopy];
    v9 = vm_imap_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      isDataAvailableLocally = [(MFAttachment *)self isDataAvailableLocally];
      isContainedInRFC822 = [(MFAttachment *)self isContainedInRFC822];
      isMailDrop = [(MFAttachment *)self isMailDrop];
      part2 = [(MFAttachment *)self part];
      v22 = 138413570;
      selfCopy6 = self;
      v24 = 1024;
      *v25 = isDataAvailableLocally;
      *&v25[4] = 1024;
      *&v25[6] = isContainedInRFC822;
      v26 = 1024;
      v27 = isMailDrop;
      v28 = 2048;
      v29 = part2;
      v30 = 2114;
      v31 = contentTransferEncoding;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#Attachments %@ performing no conversion (isDataAvailableLocally=%d, isContainedInRFC822=%d, isMailDrop=%d, part=%p, contentTransferEncoding=%{public}@)", &v22, 0x32u);
    }
  }

  else
  {
    if (!contentTransferEncoding || ([contentTransferEncoding isEqualToString:@"7bit"] & 1) != 0 || (objc_msgSend(contentTransferEncoding, "isEqualToString:", @"8bit") & 1) != 0 || objc_msgSend(contentTransferEncoding, "isEqualToString:", @"binary"))
    {
      v8 = [MEMORY[0x277D24F20] filterWithConsumer:consumerCopy];
      v9 = vm_imap_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v22 = 138412546;
      selfCopy6 = self;
      v24 = 2114;
      *v25 = contentTransferEncoding;
      v10 = "#Attachments %@ stripping line endings (contentTransferEncoding=%{public}@)";
      goto LABEL_9;
    }

    if ([contentTransferEncoding isEqualToString:@"quoted-printable"])
    {
      v9 = [MEMORY[0x277D24F90] filterWithConsumer:consumerCopy];
      v8 = [MEMORY[0x277D24F20] filterWithConsumer:v9];
      part3 = [(MFAttachment *)self part];
      type = [part3 type];
      -[NSObject setForTextPart:](v9, "setForTextPart:", [type isEqualToString:@"text"]);

      v21 = vm_imap_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        selfCopy6 = self;
        _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#Attachments %@ quoted-printable", &v22, 0xCu);
      }

      goto LABEL_11;
    }

    if ([contentTransferEncoding isEqualToString:@"base64"])
    {
      v8 = [MEMORY[0x277D24ED0] filterWithConsumer:consumerCopy];
      v9 = vm_imap_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v22 = 138412290;
      selfCopy6 = self;
      v10 = "#Attachments %@ base64";
      goto LABEL_26;
    }

    if ([contentTransferEncoding isEqualToString:@"x-uuencode"])
    {
      v8 = [MEMORY[0x277D24FB8] filterWithConsumer:consumerCopy];
      v9 = vm_imap_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v22 = 138412290;
      selfCopy6 = self;
      v10 = "#Attachments %@ uuencode";
LABEL_26:
      v11 = v9;
      v12 = 12;
      goto LABEL_10;
    }

    v8 = [MEMORY[0x277D24EE0] filterWithConsumer:consumerCopy];
    v9 = vm_imap_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      selfCopy6 = self;
      v24 = 2114;
      *v25 = contentTransferEncoding;
      v10 = "#Attachments %@ unknown encoding (contentTransferEncoding=%{public}@)";
LABEL_9:
      v11 = v9;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_2720B1000, v11, OS_LOG_TYPE_DEFAULT, v10, &v22, v12);
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)fetchData
{
  [(MFAttachmentManager *)self->_attachmentManager fetchDataForAttachment:self];
  downloadProgress = [(MFAttachment *)self downloadProgress];
  [downloadProgress resume];
}

- (id)fetchLocalData:(id *)data stripPrivateMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    if (!self->_attachmentManager)
    {
      self->_attachmentManager = +[MFAttachmentManager defaultManager];
    }

    v6 = +[VFPromise promise];
    v7 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
    _dataProvider = [(MFAttachment *)self _dataProvider];
    v10 = VFPromiseAttachmentDataHandler(v6, v7);
    [_dataProvider fetchDataForAttachment:self consumer:v7 progress:v8 completion:v10];

    future = [v6 future];
    readFromDisk = [future result:0];
  }

  else
  {
    readFromDisk = [(MFAttachment *)self readFromDisk];
  }

  if ([readFromDisk length])
  {
    if (metadataCopy && [(MFAttachment *)self isImageFile])
    {
      v13 = _stripPrivateFileMetadata(readFromDisk);

      readFromDisk = v13;
    }

    v14 = [(MFAttachment *)self filterData:readFromDisk];

    readFromDisk = v14;
  }

  else
  {
    v15 = vm_imap_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MFAttachment fetchLocalData:? stripPrivateMetadata:?];
    }
  }

  return readFromDisk;
}

- (id)fetchDataSynchronously:(id *)synchronously stripPrivateMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7 = vm_imap_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MFAttachment fetchDataSynchronously:v7 stripPrivateMetadata:?];
    }

    v24 = 0;
    v8 = [(MFAttachment *)self fetchLocalData:&v24 stripPrivateMetadata:0];
    v9 = v24;
  }

  else
  {
    v10 = +[VFPromise promise];
    fetchCompletionBlock = [(MFAttachment *)self fetchCompletionBlock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke;
    v21[3] = &unk_279E342F8;
    v22 = v10;
    v23 = fetchCompletionBlock;
    v21[4] = self;
    v12 = v10;
    v13 = fetchCompletionBlock;
    [(MFAttachment *)self setFetchCompletionBlock:v21];
    [(MFAttachmentManager *)self->_attachmentManager fetchDataSynchronouslyForAttachment:self];
    future = [v12 future];
    v20 = 0;
    v8 = [future result:&v20];
    v9 = v20;
  }

  if (![v8 length])
  {
    v17 = vm_imap_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MFAttachment fetchDataSynchronously:v9 stripPrivateMetadata:?];
    }

    goto LABEL_16;
  }

  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v8])
  {
    v15 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v8];
    if (v15)
    {
      v16 = [MFAttachmentPlaceholder dataForPlaceholder:v15];

      [(MFAttachment *)self setPlaceholder:v15];
      v8 = v16;
    }
  }

  v17 = v8;
  if (metadataCopy && [(MFAttachment *)self isImageFile])
  {
    v8 = _stripPrivateFileMetadata(v8);
LABEL_16:

    v17 = v8;
  }

  if (synchronously)
  {
    v18 = v9;
    *synchronously = v9;
  }

  return v17;
}

void __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  if (v5)
  {
    v8 = [*(a1 + 32) filterData:v5];
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 40) finishWithResult:v8 error:v6];
}

- (id)fetchDataToURL:(id *)l
{
  if ([(MFAttachment *)self isPlaceholder])
  {
    placeholder = [(MFAttachment *)self placeholder];
    fileURL = [placeholder fileURL];
  }

  else
  {
    v14 = 0;
    v6 = [(MFAttachment *)self fetchDataSynchronously:&v14];
    v7 = v14;
    fileName = [(MFAttachment *)self fileName];
    v9 = [MFAttachmentUtilities temporaryFileURLWithFileName:fileName];

    if (v9)
    {
      v13 = v7;
      v10 = [v6 writeToURL:v9 options:0 error:&v13];
      v11 = v13;

      if (v10)
      {
        fileURL = v9;
      }

      else
      {
        fileURL = 0;
      }

      v7 = v11;
    }

    else
    {
      fileURL = 0;
    }
  }

  return fileURL;
}

- (id)fetchPlaceholderData
{
  p_placeholder = &self->_placeholder;
  placeholder = self->_placeholder;
  if (placeholder)
  {
    serializedRepresentation = [(MFAttachmentPlaceholder *)placeholder serializedRepresentation];
  }

  else
  {
    _dataProvider = [(MFAttachment *)self _dataProvider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _dataProvider2 = [(MFAttachment *)self _dataProvider];
      contentID = [(MFAttachment *)self contentID];
      serializedRepresentation = [_dataProvider2 rawDataForContentID:contentID];
    }

    else
    {
      _dataProvider2 = objc_alloc_init(MEMORY[0x277D24EE8]);
      contentID = [MEMORY[0x277D24FA0] rangedFilterWithConsumer:_dataProvider2 range:{0, 2100}];
      v9 = +[VFPromise promise];
      v10 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
      v11 = VFPromiseAttachmentDataHandler(v9, _dataProvider2);
      [_dataProvider fetchDataForAttachment:self consumer:contentID progress:v10 completion:v11];

      future = [v9 future];
      serializedRepresentation = [future result:0];
    }

    if (serializedRepresentation)
    {
      v13 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:serializedRepresentation];
      if (v13)
      {
        objc_storeStrong(p_placeholder, v13);
      }
    }

    else
    {
      v14 = vm_imap_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachment *)self fetchPlaceholderData];
      }
    }
  }

  return serializedRepresentation;
}

- (MFAttachmentPlaceholder)placeholder
{
  placeholder = self->_placeholder;
  if (!placeholder)
  {
    fetchPlaceholderData = [(MFAttachment *)self fetchPlaceholderData];
    placeholder = self->_placeholder;
  }

  return placeholder;
}

- (BOOL)isPlaceholder
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    placeholder = [(MFAttachment *)self placeholder];
    bOOLValue = placeholder != 0;
  }

  return bOOLValue;
}

- (NSProgress)downloadProgress
{
  downloadProgress = self->_downloadProgress;
  if (!downloadProgress)
  {
    encodedFileSize = [(MFAttachment *)self encodedFileSize];
    if (encodedFileSize)
    {
      v5 = encodedFileSize;
    }

    else
    {
      v5 = -1;
    }

    v6 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v5];
    if ([(MFAttachment *)self isDataAvailableLocally])
    {
      [v6 setCompletedUnitCount:v5];
    }

    else
    {
      [v6 pause];
    }

    [(MFAttachment *)self setDownloadProgress:v6];

    downloadProgress = self->_downloadProgress;
  }

  return downloadProgress;
}

- (id)fileURL
{
  path = [(MFAttachment *)self path];

  if (path)
  {
    v4 = MEMORY[0x277CBEBC0];
    path2 = [(MFAttachment *)self path];
    v6 = [v4 fileURLWithPath:path2 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)filterData:(id)data
{
  dataCopy = data;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"DisableAttachmentFilters"];

  v7 = dataCopy;
  if ((v6 & 1) == 0)
  {
    v7 = dataCopy;
    if ([dataCopy length])
    {
      v7 = dataCopy;
      if ([(MFAttachment *)self contentTypeConformsToEventVCS])
      {
        v7 = [(MFAttachment *)self filterVCSData:dataCopy];
      }
    }
  }

  return v7;
}

- (id)filterVCSData:(id)data
{
  dataCopy = data;
  v4 = [@"\nVERSION:1.0" dataUsingEncoding:4];
  v5 = [dataCopy rangeOfData:v4 options:0 range:{0, objc_msgSend(dataCopy, "length")}];
  v7 = v6;

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v8 = [dataCopy mutableCopy], objc_msgSend(v8, "replaceBytesInRange:withBytes:length:", v5 + 1, v7 - 1, objc_msgSend(@"VERSION:2.0", "UTF8String"), objc_msgSend(@"VERSION:2.0", "length")), !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;

    dataCopy = v9;
  }

  return dataCopy;
}

- (id)_dataProvider
{
  v3 = [(MFAttachment *)self url];

  if (v3)
  {
    attachmentManager = self->_attachmentManager;
    v5 = [(MFAttachment *)self url];
    v9 = 0;
    v3 = [(MFAttachmentManager *)attachmentManager _dataProviderForAttachmentURL:v5 error:&v9];
    v6 = v9;

    if (v6)
    {
      v7 = vm_imap_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MFAttachment *)self _dataProvider];
      }
    }
  }

  return v3;
}

- (BOOL)isDataAvailableLocally
{
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    return 1;
  }

  fileURL = [(MFAttachment *)self fileURL];
  if (fileURL)
  {
    v5 = [MFAttachmentDataProvider dataProviderWithURL:fileURL];
    exists = [v5 exists];
  }

  else
  {
    exists = 0;
  }

  return exists;
}

- (NSString)inferredMimeType
{
  v2 = MEMORY[0x277CCACA8];
  fileName = [(MFAttachment *)self fileName];
  v4 = [v2 mf_stringForMimeTypeFromFileName:fileName];

  return v4;
}

- (BOOL)isContainedInRFC822
{
  _dataProvider = [(MFAttachment *)self _dataProvider];
  v4 = [_dataProvider messageForAttachment:self];

  messageURL = [v4 messageURL];
  scheme = [messageURL scheme];
  v7 = [scheme isEqualToString:@"x-attach-RFC822"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    part = [(MFAttachment *)self part];
    parentPart = [part parentPart];

    v8 = parentPart != 0;
    if (parentPart)
    {
      while (1)
      {
        type = [parentPart type];
        subtype = [parentPart subtype];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", type, subtype];
        v14 = v13;
        if (type)
        {
          if (![v13 caseInsensitiveCompare:@"message/rfc822"] || !objc_msgSend(v14, "caseInsensitiveCompare:", @"message/delivery-status"))
          {
            break;
          }
        }

        v10ParentPart = [parentPart parentPart];

        v8 = v10ParentPart != 0;
        parentPart = v10ParentPart;
        if (!v10ParentPart)
        {
          goto LABEL_11;
        }
      }
    }

    v10ParentPart = parentPart;
LABEL_11:
  }

  return v8;
}

- (BOOL)isContainedInCompose
{
  scheme = [(NSURL *)self->_url scheme];
  v3 = [scheme isEqualToString:@"x-attach-compose"];

  return v3;
}

- (BOOL)isImageFile
{
  v3 = objc_alloc_init(MEMORY[0x277D24FB0]);
  fileName = [(MFAttachment *)self fileName];
  pathExtension = [fileName pathExtension];
  [(MFAttachment *)v3 setPathExtension:pathExtension];

  fileName2 = [(MFAttachment *)self fileName];
  [(MFAttachment *)v3 setFilename:fileName2];

  if (!MFGetTypeInfo())
  {
    mimeType = [(MFAttachment *)self mimeType];
    if (mimeType)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  mimeType = [(MFAttachment *)v3 mimeType];
  if (!mimeType)
  {
    goto LABEL_6;
  }

  self = v3;
LABEL_5:
  mimeType2 = [(MFAttachment *)self mimeType];
  v9 = [mimeType2 rangeOfString:@"image/" options:9] != 0x7FFFFFFFFFFFFFFFLL;

LABEL_7:
  return v9;
}

- (id)fileNameByStrippingZipIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v4 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentFileNameKey"];
  v5 = v4;
  if (neededCopy)
  {
    pathExtension = [v4 pathExtension];
    v7 = [pathExtension caseInsensitiveCompare:@"zip"];

    if (!v7)
    {
      stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];

      v5 = stringByDeletingPathExtension;
    }
  }

  return v5;
}

- (void)setFileName:(id)name
{
  [(MFAttachment *)self setMetadataValue:name forKey:@"MFAttachmentFileNameKey"];
  if (name)
  {
    v5 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];
    [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentPathKey"];
  }
}

- (void)setRemoteImageFileName:(id)name
{
  [(MFAttachment *)self setMetadataValue:name forKey:@"MFAttachmentRemoteImageFileNameKey"];
  if (name)
  {
    v5 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];
    [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentPathKey"];
  }
}

- (id)_fileUTTypeForFileName:(id)name
{
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentUTTypeKey"];
  if (!v5)
  {
    mimeType = [(MFAttachment *)self mimeType];
    pathExtension = [(__CFString *)nameCopy pathExtension];
    lowercaseString = [pathExtension lowercaseString];

    if ([(__CFString *)mimeType isEqualToString:@"application/zip"]&& (!lowercaseString || [(__CFString *)lowercaseString isEqualToString:@"zip"]))
    {
      stringByDeletingPathExtension = [(__CFString *)nameCopy stringByDeletingPathExtension];
      pathExtension2 = [stringByDeletingPathExtension pathExtension];
      lowercaseString2 = [pathExtension2 lowercaseString];

      if (![(__CFString *)lowercaseString2 length])
      {

        lowercaseString2 = @"zip";
      }

      lowercaseString = lowercaseString2;
    }

    if ([(__CFString *)lowercaseString length])
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], lowercaseString, 0);
      if (PreferredIdentifierForTag)
      {
        v14 = PreferredIdentifierForTag;
        if (!UTTypeIsDynamic(PreferredIdentifierForTag))
        {
          [(MFAttachment *)self setMetadataValue:v14 forKey:@"MFAttachmentUTTypeKey"];
          v6 = v14;
          v20 = vm_imap_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            fileName = [(MFAttachment *)self fileName];
            v26 = 138413058;
            v27 = v6;
            v28 = 2112;
            v29 = fileName;
            v30 = 2112;
            v31 = lowercaseString;
            v32 = 2112;
            v33 = mimeType;
            v22 = "UTType [%@] for filename:[%@] via extension:[%@] mimeType:[%@]";
            goto LABEL_34;
          }

LABEL_26:

          CFRelease(v6);
LABEL_27:

          goto LABEL_28;
        }

        CFRelease(v14);
      }
    }

    else
    {
      v15 = vm_imap_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [MFAttachment _fileUTTypeForFileName:?];
      }
    }

    v16 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], mimeType, 0);
    if (!v16)
    {
LABEL_20:
      v18 = vm_imap_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412802;
        v27 = nameCopy;
        v28 = 2112;
        v29 = lowercaseString;
        v30 = 2112;
        v31 = mimeType;
        _os_log_error_impl(&dword_2720B1000, v18, OS_LOG_TYPE_ERROR, "#Attachments UTType for filename:[%@] extension:[%@] mimeType:[%@] indeterminate", &v26, 0x20u);
      }

      null = [MEMORY[0x277CBEB68] null];
      [(MFAttachment *)self setMetadataValue:null forKey:@"MFAttachmentUTTypeKey"];

      v6 = 0;
      goto LABEL_27;
    }

    v17 = v16;
    if (UTTypeIsDynamic(v16))
    {
      CFRelease(v17);
      goto LABEL_20;
    }

    [(MFAttachment *)self setMetadataValue:v17 forKey:@"MFAttachmentUTTypeKey"];
    v6 = v17;
    v20 = vm_imap_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      fileName = [(MFAttachment *)self fileName];
      v26 = 138413058;
      v27 = v6;
      v28 = 2112;
      v29 = fileName;
      v30 = 2112;
      v31 = lowercaseString;
      v32 = 2112;
      v33 = mimeType;
      v22 = "UTType [%@] for filename:[%@] extension:[%@] via mimeType:[%@]";
LABEL_34:
      _os_log_debug_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEBUG, v22, &v26, 0x2Au);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v6 = v5;
  mimeType = vm_imap_log();
  if (os_log_type_enabled(mimeType, OS_LOG_TYPE_DEBUG))
  {
    [(MFAttachment *)v6 _fileUTTypeForFileName:?];
  }

LABEL_28:

  null2 = [MEMORY[0x277CBEB68] null];

  if (v6 == null2)
  {

    v6 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)fileUTType
{
  fileName = [(MFAttachment *)self fileName];
  v4 = [(MFAttachment *)self _fileUTTypeForFileName:fileName];

  return v4;
}

- (id)attachmentContentTypeForFileName:(id)name
{
  v3 = [(MFAttachment *)self _fileUTTypeForFileName:name];
  if (!v3)
  {
    v3 = *MEMORY[0x277CC20C0];
  }

  return v3;
}

- (NSString)mimeType
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentMimetypeKey"];
  v4 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    placeholder = [(MFAttachment *)self placeholder];
    mimeType = [placeholder mimeType];
    v8 = mimeType;
    if (mimeType)
    {
      v9 = mimeType;
    }

    else
    {
      v9 = v3;
    }

    v10 = v9;

    v3 = v10;
  }

  return v3;
}

- (unint64_t)decodedFileSize
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentDecodedFileSizeKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    placeholder = [(MFAttachment *)self placeholder];
    fileSize = [placeholder fileSize];
    if (fileSize)
    {
      unsignedIntegerValue = fileSize;
    }
  }

  return unsignedIntegerValue;
}

- (void)setDecodedFileSize:(unint64_t)size
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  [(MFAttachment *)self setMetadataValue:v4 forKey:@"MFAttachmentDecodedFileSizeKey"];
}

- (unint64_t)encodedFileSize
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentEncodedFileSizeKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    placeholder = [(MFAttachment *)self placeholder];
    fileSize = [placeholder fileSize];
    if (fileSize)
    {
      unsignedIntegerValue = fileSize;
    }
  }

  return unsignedIntegerValue;
}

- (void)setEncodedFileSize:(unint64_t)size
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentEncodedFileSizeKey"];

  downloadProgress = [(MFAttachment *)self downloadProgress];
  [downloadProgress setTotalUnitCount:size];
}

- (BOOL)isCached
{
  sizeOnDisk = [(MFAttachment *)self sizeOnDisk];
  decodedFileSize = [(MFAttachment *)self decodedFileSize];
  encodedFileSize = [(MFAttachment *)self encodedFileSize];
  if (sizeOnDisk)
  {
    v6 = sizeOnDisk >= decodedFileSize;
  }

  else
  {
    v6 = 0;
  }

  return v6 && sizeOnDisk <= encodedFileSize;
}

- (id)fileAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  part = [(MFAttachment *)self part];
  v5 = [part bodyParameterForKey:@"x-unix-mode"];

  if (v5)
  {
    v6 = strtoul([v5 vf_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v6];
      [v3 setObject:v7 forKey:*MEMORY[0x277CCA180]];
    }
  }

  return v3;
}

- (unint64_t)sizeOnDisk
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(MFAttachment *)self path];
  v10 = 0;
  v5 = [defaultManager attributesOfItemAtPath:path error:&v10];
  v6 = v10;

  unsignedIntegerValue = 0;
  if (!v6)
  {
    v8 = [v5 valueForKey:*MEMORY[0x277CCA1C0]];
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (void)writeToDiskWithData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  path = [(MFAttachment *)self path];

  if (dataCopy && path)
  {
    path2 = [(MFAttachment *)self path];
    v7 = [path2 copy];

    stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
    if (stringByDeletingLastPathComponent)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = 0;
      v10 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v21];
      v11 = v21;
      if (v10)
      {
        v12 = MEMORY[0x277CBEB38];
        fileAttributes = [(MFAttachment *)self fileAttributes];
        v14 = [v12 dictionaryWithDictionary:fileAttributes];

        [v14 setObject:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CCA1B0]];
        if (([defaultManager createFileAtPath:v7 contents:dataCopy attributes:v14] & 1) == 0)
        {
          v15 = vm_imap_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            fileURL = [(MFAttachment *)self fileURL];
            vf_publicDescription = [v11 vf_publicDescription];
            *buf = 138413058;
            v23 = v7;
            v24 = 2048;
            selfCopy = self;
            v26 = 2112;
            v27 = fileURL;
            v28 = 2114;
            v29 = vf_publicDescription;
            _os_log_error_impl(&dword_2720B1000, v15, OS_LOG_TYPE_ERROR, "#Attachments Failed to create path %@ for attachment [%p, %@]: %{public}@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v14 = vm_imap_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          fileURL2 = [(MFAttachment *)self fileURL];
          vf_publicDescription2 = [v11 vf_publicDescription];
          *buf = 138412802;
          v23 = stringByDeletingLastPathComponent;
          v24 = 2112;
          selfCopy = fileURL2;
          v26 = 2114;
          v27 = vf_publicDescription2;
          _os_log_error_impl(&dword_2720B1000, v14, OS_LOG_TYPE_ERROR, "#Attachments Failed to create directory %@ for attachment [%@]: %{public}@", buf, 0x20u);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)readFromDisk
{
  v21 = *MEMORY[0x277D85DE8];
  path = [(MFAttachment *)self path];
  if (path && (v4 = path, v5 = [(MFAttachment *)self isContainedInRFC822], v4, !v5))
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileURL = [(MFAttachment *)self fileURL];
    path2 = [fileURL path];
    v10 = [defaultManager isReadableFileAtPath:path2];

    if (v10)
    {
      v11 = MEMORY[0x277CBEA90];
      fileURL2 = [(MFAttachment *)self fileURL];
      v18 = 0;
      v6 = [v11 dataWithContentsOfURL:fileURL2 options:3 error:&v18];
      v13 = v18;

      if (v13)
      {
        v14 = vm_imap_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(MFAttachment *)self readFromDisk];
        }
      }
    }

    else
    {
      v13 = vm_imap_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        fileURL3 = [(MFAttachment *)self fileURL];
        *buf = 138412290;
        v20 = fileURL3;
        _os_log_impl(&dword_2720B1000, v13, OS_LOG_TYPE_DEFAULT, "#Attachments Unable to read file URL [%@]", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)textEncodingNameForData:(id)data mimeType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v8 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_7;
  }

  if (strcmp("text/html", [typeCopy UTF8String]))
  {
    if ([v8 hasPrefix:@"text/"])
    {
      v9 = [(MFAttachment *)self textEncodingGuessWithData:dataCopy];
      v10 = v9;
      v11 = @"UTF-8";
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      goto LABEL_10;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

  Default = CFAllocatorGetDefault();
  v14 = MFGetMappedAllocator();
  CFAllocatorSetDefault(v14);
  v12 = CFStringCreateWithBytes(v14, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0x8000100u, 0);
  CFAllocatorSetDefault(Default);
  if (v12)
  {
    CFRelease(v12);
    v12 = @"UTF-8";
  }

LABEL_10:

  return v12;
}

- (id)textEncodingGuessWithData:(id)data
{
  dataCopy = data;
  v5 = [(MFAttachment *)self metadataValueForKey:@"_MFAttachmentEncodingKey"];
  v6 = v5;
  if (dataCopy && !v5)
  {
    [dataCopy bytes];
    [dataCopy length];
    v7 = MFGuessEncodingForBytes();
    if (v7 == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = CFStringConvertEncodingToIANACharSetName(v7);
      [(MFAttachment *)self setMetadataValue:v6 forKey:@"_MFAttachmentEncodingKey"];
    }
  }

  return v6;
}

- (BOOL)conformsToType:(id)type
{
  typeCopy = type;
  fileUTType = [(MFAttachment *)self fileUTType];

  if (fileUTType)
  {
    LOBYTE(fileUTType) = UTTypeConformsTo(fileUTType, typeCopy) != 0;
  }

  return fileUTType;
}

- (BOOL)contentTypeConformsToVCard
{
  fileUTType = [(MFAttachment *)self fileUTType];

  return fileUTType && UTTypeConformsTo(fileUTType, *MEMORY[0x277CC21A0]) != 0;
}

- (BOOL)contentTypeConformsToEvent
{
  if ([(MFAttachment *)self contentTypeConformsToEventICS]|| (v3 = [(MFAttachment *)self contentTypeConformsToEventVCS]))
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToProvisionment
{
  fileUTType = [(MFAttachment *)self fileUTType];

  if (UTTypeConformsTo(fileUTType, @"com.apple.mobileconfig") || UTTypeConformsTo(fileUTType, *MEMORY[0x277CC2118]) || UTTypeConformsTo(fileUTType, *MEMORY[0x277CC21A8]) || (v3 = UTTypeConformsTo(fileUTType, @"com.apple.mobileprovision")) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToMarkup
{
  fileUTType = [(MFAttachment *)self fileUTType];

  if (UTTypeConformsTo(fileUTType, *MEMORY[0x277CC20B0]) || (v3 = UTTypeConformsTo(fileUTType, *MEMORY[0x277CC2108])) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToPassbook
{
  fileUTType = [(MFAttachment *)self fileUTType];

  if (UTTypeConformsTo(fileUTType, *MEMORY[0x277CC1F48]) || (v3 = UTTypeConformsTo(fileUTType, *MEMORY[0x277CC1F40])) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToIWork
{
  fileUTType = [(MFAttachment *)self fileUTType];
  v3 = [fileUTType hasPrefix:@"com.apple.iwork"];

  return v3;
}

- (void)fetchLocalData:(void *)a1 stripPrivateMetadata:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 fileURL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchDataSynchronously:(void *)a1 stripPrivateMetadata:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 fileURL];
  v4 = [a2 vf_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)fetchPlaceholderData
{
  v8 = *MEMORY[0x277D85DE8];
  fileURL = [self fileURL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dataProvider
{
  v11 = *MEMORY[0x277D85DE8];
  fileURL = [self fileURL];
  vf_publicDescription = [a2 vf_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_fileUTTypeForFileName:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = [a2 fileName];
  OUTLINED_FUNCTION_2(&dword_2720B1000, v2, v3, "UTType [%@] for filename:[%@] via cache", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_fileUTTypeForFileName:(void *)a1 .cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 fileName];
  OUTLINED_FUNCTION_2(&dword_2720B1000, v1, v2, "UTType [%@] for filename:[%@] could not derive extension", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)readFromDisk
{
  v11 = *MEMORY[0x277D85DE8];
  fileURL = [self fileURL];
  vf_publicDescription = [a2 vf_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end