@interface MFAttachment
- (BOOL)conformsToType:(id)a3;
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
- (BOOL)isEqual:(id)a3;
- (BOOL)isImageFile;
- (BOOL)isPlaceholder;
- (MFAttachment)initWithURL:(id)a3 attachmentManager:(id)a4;
- (MFAttachmentPlaceholder)placeholder;
- (NSProgress)downloadProgress;
- (NSString)description;
- (NSString)fileUTType;
- (NSString)inferredMimeType;
- (NSString)mimeType;
- (id)_dataProvider;
- (id)_fileUTTypeForFileName:(id)a3;
- (id)attachmentContentTypeForFileName:(id)a3;
- (id)decodeFilterWithDataConsumer:(id)a3;
- (id)fetchDataSynchronously:(id *)a3 stripPrivateMetadata:(BOOL)a4;
- (id)fetchDataToURL:(id *)a3;
- (id)fetchLocalData:(id *)a3 stripPrivateMetadata:(BOOL)a4;
- (id)fetchPlaceholderData;
- (id)fileAttributes;
- (id)fileNameByStrippingZipIfNeeded:(BOOL)a3;
- (id)fileURL;
- (id)filterData:(id)a3;
- (id)filterVCSData:(id)a3;
- (id)readFromDisk;
- (id)textEncodingGuessWithData:(id)a3;
- (id)textEncodingNameForData:(id)a3 mimeType:(id)a4;
- (unint64_t)decodedFileSize;
- (unint64_t)encodedFileSize;
- (unint64_t)hash;
- (unint64_t)sizeOnDisk;
- (void)_dataProvider;
- (void)dealloc;
- (void)fetchData;
- (void)fetchPlaceholderData;
- (void)readFromDisk;
- (void)setDecodedFileSize:(unint64_t)a3;
- (void)setEncodedFileSize:(unint64_t)a3;
- (void)setFileName:(id)a3;
- (void)setRemoteImageFileName:(id)a3;
- (void)writeToDiskWithData:(id)a3;
@end

@implementation MFAttachment

- (MFAttachment)initWithURL:(id)a3 attachmentManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFAttachment;
  v9 = [(MFAttachment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    v10->_attachmentManager = v8;
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
  v6 = [(MFAttachment *)self path];
  v7 = [(MFAttachment *)self contentID];
  v8 = [(MFAttachment *)self mimeType];
  v9 = [(MFAttachment *)self part];
  v10 = [v3 stringWithFormat:@"<%@: %p> url=%@, path=%@, contentID=%@, mimeType=%@, mimePart=%@, isMailDrop=%d", v4, self, v5, v6, v7, v8, v9, -[MFAttachment isMailDrop](self, "isMailDrop")];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MFAttachment *)self contentID];
      v7 = [(MFAttachment *)v5 contentID];

      v8 = [v6 isEqualToString:v7];
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
  v2 = [(MFAttachment *)self contentID];
  v3 = [v2 hash];

  return v3;
}

- (id)decodeFilterWithDataConsumer:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFAttachment *)self part];
  v6 = [v5 contentTransferEncoding];

  if ([(MFAttachment *)self isMailDrop]&& ([(MFAttachment *)self part], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [MEMORY[0x277D24EE0] filterWithConsumer:v4];
    v9 = vm_imap_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(MFAttachment *)self isDataAvailableLocally];
      v16 = [(MFAttachment *)self isContainedInRFC822];
      v17 = [(MFAttachment *)self isMailDrop];
      v18 = [(MFAttachment *)self part];
      v22 = 138413570;
      v23 = self;
      v24 = 1024;
      *v25 = v15;
      *&v25[4] = 1024;
      *&v25[6] = v16;
      v26 = 1024;
      v27 = v17;
      v28 = 2048;
      v29 = v18;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&dword_2720B1000, v9, OS_LOG_TYPE_DEFAULT, "#Attachments %@ performing no conversion (isDataAvailableLocally=%d, isContainedInRFC822=%d, isMailDrop=%d, part=%p, contentTransferEncoding=%{public}@)", &v22, 0x32u);
    }
  }

  else
  {
    if (!v6 || ([v6 isEqualToString:@"7bit"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"8bit") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"binary"))
    {
      v8 = [MEMORY[0x277D24F20] filterWithConsumer:v4];
      v9 = vm_imap_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v22 = 138412546;
      v23 = self;
      v24 = 2114;
      *v25 = v6;
      v10 = "#Attachments %@ stripping line endings (contentTransferEncoding=%{public}@)";
      goto LABEL_9;
    }

    if ([v6 isEqualToString:@"quoted-printable"])
    {
      v9 = [MEMORY[0x277D24F90] filterWithConsumer:v4];
      v8 = [MEMORY[0x277D24F20] filterWithConsumer:v9];
      v19 = [(MFAttachment *)self part];
      v20 = [v19 type];
      -[NSObject setForTextPart:](v9, "setForTextPart:", [v20 isEqualToString:@"text"]);

      v21 = vm_imap_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = self;
        _os_log_impl(&dword_2720B1000, v21, OS_LOG_TYPE_DEFAULT, "#Attachments %@ quoted-printable", &v22, 0xCu);
      }

      goto LABEL_11;
    }

    if ([v6 isEqualToString:@"base64"])
    {
      v8 = [MEMORY[0x277D24ED0] filterWithConsumer:v4];
      v9 = vm_imap_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v22 = 138412290;
      v23 = self;
      v10 = "#Attachments %@ base64";
      goto LABEL_26;
    }

    if ([v6 isEqualToString:@"x-uuencode"])
    {
      v8 = [MEMORY[0x277D24FB8] filterWithConsumer:v4];
      v9 = vm_imap_log();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v22 = 138412290;
      v23 = self;
      v10 = "#Attachments %@ uuencode";
LABEL_26:
      v11 = v9;
      v12 = 12;
      goto LABEL_10;
    }

    v8 = [MEMORY[0x277D24EE0] filterWithConsumer:v4];
    v9 = vm_imap_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = self;
      v24 = 2114;
      *v25 = v6;
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
  v3 = [(MFAttachment *)self downloadProgress];
  [v3 resume];
}

- (id)fetchLocalData:(id *)a3 stripPrivateMetadata:(BOOL)a4
{
  v4 = a4;
  if ([(MFAttachment *)self isContainedInRFC822]|| [(MFAttachment *)self isContainedInCompose])
  {
    if (!self->_attachmentManager)
    {
      self->_attachmentManager = +[MFAttachmentManager defaultManager];
    }

    v6 = +[VFPromise promise];
    v7 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
    v9 = [(MFAttachment *)self _dataProvider];
    v10 = VFPromiseAttachmentDataHandler(v6, v7);
    [v9 fetchDataForAttachment:self consumer:v7 progress:v8 completion:v10];

    v11 = [v6 future];
    v12 = [v11 result:0];
  }

  else
  {
    v12 = [(MFAttachment *)self readFromDisk];
  }

  if ([v12 length])
  {
    if (v4 && [(MFAttachment *)self isImageFile])
    {
      v13 = _stripPrivateFileMetadata(v12);

      v12 = v13;
    }

    v14 = [(MFAttachment *)self filterData:v12];

    v12 = v14;
  }

  else
  {
    v15 = vm_imap_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MFAttachment fetchLocalData:? stripPrivateMetadata:?];
    }
  }

  return v12;
}

- (id)fetchDataSynchronously:(id *)a3 stripPrivateMetadata:(BOOL)a4
{
  v4 = a4;
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
    v11 = [(MFAttachment *)self fetchCompletionBlock];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__MFAttachment_fetchDataSynchronously_stripPrivateMetadata___block_invoke;
    v21[3] = &unk_279E342F8;
    v22 = v10;
    v23 = v11;
    v21[4] = self;
    v12 = v10;
    v13 = v11;
    [(MFAttachment *)self setFetchCompletionBlock:v21];
    [(MFAttachmentManager *)self->_attachmentManager fetchDataSynchronouslyForAttachment:self];
    v14 = [v12 future];
    v20 = 0;
    v8 = [v14 result:&v20];
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
  if (v4 && [(MFAttachment *)self isImageFile])
  {
    v8 = _stripPrivateFileMetadata(v8);
LABEL_16:

    v17 = v8;
  }

  if (a3)
  {
    v18 = v9;
    *a3 = v9;
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

- (id)fetchDataToURL:(id *)a3
{
  if ([(MFAttachment *)self isPlaceholder])
  {
    v4 = [(MFAttachment *)self placeholder];
    v5 = [v4 fileURL];
  }

  else
  {
    v14 = 0;
    v6 = [(MFAttachment *)self fetchDataSynchronously:&v14];
    v7 = v14;
    v8 = [(MFAttachment *)self fileName];
    v9 = [MFAttachmentUtilities temporaryFileURLWithFileName:v8];

    if (v9)
    {
      v13 = v7;
      v10 = [v6 writeToURL:v9 options:0 error:&v13];
      v11 = v13;

      if (v10)
      {
        v5 = v9;
      }

      else
      {
        v5 = 0;
      }

      v7 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)fetchPlaceholderData
{
  p_placeholder = &self->_placeholder;
  placeholder = self->_placeholder;
  if (placeholder)
  {
    v5 = [(MFAttachmentPlaceholder *)placeholder serializedRepresentation];
  }

  else
  {
    v6 = [(MFAttachment *)self _dataProvider];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(MFAttachment *)self _dataProvider];
      v8 = [(MFAttachment *)self contentID];
      v5 = [v7 rawDataForContentID:v8];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277D24EE8]);
      v8 = [MEMORY[0x277D24FA0] rangedFilterWithConsumer:v7 range:{0, 2100}];
      v9 = +[VFPromise promise];
      v10 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:-1];
      v11 = VFPromiseAttachmentDataHandler(v9, v7);
      [v6 fetchDataForAttachment:self consumer:v8 progress:v10 completion:v11];

      v12 = [v9 future];
      v5 = [v12 result:0];
    }

    if (v5)
    {
      v13 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v5];
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

  return v5;
}

- (MFAttachmentPlaceholder)placeholder
{
  placeholder = self->_placeholder;
  if (!placeholder)
  {
    v4 = [(MFAttachment *)self fetchPlaceholderData];
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
    v5 = [v3 BOOLValue];
  }

  else
  {
    v6 = [(MFAttachment *)self placeholder];
    v5 = v6 != 0;
  }

  return v5;
}

- (NSProgress)downloadProgress
{
  downloadProgress = self->_downloadProgress;
  if (!downloadProgress)
  {
    v4 = [(MFAttachment *)self encodedFileSize];
    if (v4)
    {
      v5 = v4;
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
  v3 = [(MFAttachment *)self path];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(MFAttachment *)self path];
    v6 = [v4 fileURLWithPath:v5 isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)filterData:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"DisableAttachmentFilters"];

  v7 = v4;
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    if ([v4 length])
    {
      v7 = v4;
      if ([(MFAttachment *)self contentTypeConformsToEventVCS])
      {
        v7 = [(MFAttachment *)self filterVCSData:v4];
      }
    }
  }

  return v7;
}

- (id)filterVCSData:(id)a3
{
  v3 = a3;
  v4 = [@"\nVERSION:1.0" dataUsingEncoding:4];
  v5 = [v3 rangeOfData:v4 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;

  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v8 = [v3 mutableCopy], objc_msgSend(v8, "replaceBytesInRange:withBytes:length:", v5 + 1, v7 - 1, objc_msgSend(@"VERSION:2.0", "UTF8String"), objc_msgSend(@"VERSION:2.0", "length")), !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;

    v3 = v9;
  }

  return v3;
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

  v4 = [(MFAttachment *)self fileURL];
  if (v4)
  {
    v5 = [MFAttachmentDataProvider dataProviderWithURL:v4];
    v3 = [v5 exists];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)inferredMimeType
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(MFAttachment *)self fileName];
  v4 = [v2 mf_stringForMimeTypeFromFileName:v3];

  return v4;
}

- (BOOL)isContainedInRFC822
{
  v3 = [(MFAttachment *)self _dataProvider];
  v4 = [v3 messageForAttachment:self];

  v5 = [v4 messageURL];
  v6 = [v5 scheme];
  v7 = [v6 isEqualToString:@"x-attach-RFC822"];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(MFAttachment *)self part];
    v10 = [v9 parentPart];

    v8 = v10 != 0;
    if (v10)
    {
      while (1)
      {
        v11 = [v10 type];
        v12 = [v10 subtype];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v11, v12];
        v14 = v13;
        if (v11)
        {
          if (![v13 caseInsensitiveCompare:@"message/rfc822"] || !objc_msgSend(v14, "caseInsensitiveCompare:", @"message/delivery-status"))
          {
            break;
          }
        }

        v15 = [v10 parentPart];

        v8 = v15 != 0;
        v10 = v15;
        if (!v15)
        {
          goto LABEL_11;
        }
      }
    }

    v15 = v10;
LABEL_11:
  }

  return v8;
}

- (BOOL)isContainedInCompose
{
  v2 = [(NSURL *)self->_url scheme];
  v3 = [v2 isEqualToString:@"x-attach-compose"];

  return v3;
}

- (BOOL)isImageFile
{
  v3 = objc_alloc_init(MEMORY[0x277D24FB0]);
  v4 = [(MFAttachment *)self fileName];
  v5 = [v4 pathExtension];
  [(MFAttachment *)v3 setPathExtension:v5];

  v6 = [(MFAttachment *)self fileName];
  [(MFAttachment *)v3 setFilename:v6];

  if (!MFGetTypeInfo())
  {
    v7 = [(MFAttachment *)self mimeType];
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v7 = [(MFAttachment *)v3 mimeType];
  if (!v7)
  {
    goto LABEL_6;
  }

  self = v3;
LABEL_5:
  v8 = [(MFAttachment *)self mimeType];
  v9 = [v8 rangeOfString:@"image/" options:9] != 0x7FFFFFFFFFFFFFFFLL;

LABEL_7:
  return v9;
}

- (id)fileNameByStrippingZipIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentFileNameKey"];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 pathExtension];
    v7 = [v6 caseInsensitiveCompare:@"zip"];

    if (!v7)
    {
      v8 = [v5 stringByDeletingPathExtension];

      v5 = v8;
    }
  }

  return v5;
}

- (void)setFileName:(id)a3
{
  [(MFAttachment *)self setMetadataValue:a3 forKey:@"MFAttachmentFileNameKey"];
  if (a3)
  {
    v5 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];
    [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentPathKey"];
  }
}

- (void)setRemoteImageFileName:(id)a3
{
  [(MFAttachment *)self setMetadataValue:a3 forKey:@"MFAttachmentRemoteImageFileNameKey"];
  if (a3)
  {
    v5 = [(MFAttachmentManager *)self->_attachmentManager _filePathForAttachment:self];
    [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentPathKey"];
  }
}

- (id)_fileUTTypeForFileName:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentUTTypeKey"];
  if (!v5)
  {
    v7 = [(MFAttachment *)self mimeType];
    v8 = [(__CFString *)v4 pathExtension];
    v9 = [v8 lowercaseString];

    if ([(__CFString *)v7 isEqualToString:@"application/zip"]&& (!v9 || [(__CFString *)v9 isEqualToString:@"zip"]))
    {
      v10 = [(__CFString *)v4 stringByDeletingPathExtension];
      v11 = [v10 pathExtension];
      v12 = [v11 lowercaseString];

      if (![(__CFString *)v12 length])
      {

        v12 = @"zip";
      }

      v9 = v12;
    }

    if ([(__CFString *)v9 length])
    {
      PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v9, 0);
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
            v21 = [(MFAttachment *)self fileName];
            v26 = 138413058;
            v27 = v6;
            v28 = 2112;
            v29 = v21;
            v30 = 2112;
            v31 = v9;
            v32 = 2112;
            v33 = v7;
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

    v16 = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], v7, 0);
    if (!v16)
    {
LABEL_20:
      v18 = vm_imap_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412802;
        v27 = v4;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v7;
        _os_log_error_impl(&dword_2720B1000, v18, OS_LOG_TYPE_ERROR, "#Attachments UTType for filename:[%@] extension:[%@] mimeType:[%@] indeterminate", &v26, 0x20u);
      }

      v19 = [MEMORY[0x277CBEB68] null];
      [(MFAttachment *)self setMetadataValue:v19 forKey:@"MFAttachmentUTTypeKey"];

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
      v21 = [(MFAttachment *)self fileName];
      v26 = 138413058;
      v27 = v6;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v7;
      v22 = "UTType [%@] for filename:[%@] extension:[%@] via mimeType:[%@]";
LABEL_34:
      _os_log_debug_impl(&dword_2720B1000, v20, OS_LOG_TYPE_DEBUG, v22, &v26, 0x2Au);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v6 = v5;
  v7 = vm_imap_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(MFAttachment *)v6 _fileUTTypeForFileName:?];
  }

LABEL_28:

  v23 = [MEMORY[0x277CBEB68] null];

  if (v6 == v23)
  {

    v6 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)fileUTType
{
  v3 = [(MFAttachment *)self fileName];
  v4 = [(MFAttachment *)self _fileUTTypeForFileName:v3];

  return v4;
}

- (id)attachmentContentTypeForFileName:(id)a3
{
  v3 = [(MFAttachment *)self _fileUTTypeForFileName:a3];
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
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [(MFAttachment *)self placeholder];
    v7 = [v6 mimeType];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
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
  v4 = [v3 unsignedIntegerValue];

  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(MFAttachment *)self placeholder];
    v8 = [v7 fileSize];
    if (v8)
    {
      v4 = v8;
    }
  }

  return v4;
}

- (void)setDecodedFileSize:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(MFAttachment *)self setMetadataValue:v4 forKey:@"MFAttachmentDecodedFileSizeKey"];
}

- (unint64_t)encodedFileSize
{
  v3 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentEncodedFileSizeKey"];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(MFAttachment *)self metadataValueForKey:@"MFAttachmentIsPlaceholder"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [(MFAttachment *)self placeholder];
    v8 = [v7 fileSize];
    if (v8)
    {
      v4 = v8;
    }
  }

  return v4;
}

- (void)setEncodedFileSize:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [(MFAttachment *)self setMetadataValue:v5 forKey:@"MFAttachmentEncodedFileSizeKey"];

  v6 = [(MFAttachment *)self downloadProgress];
  [v6 setTotalUnitCount:a3];
}

- (BOOL)isCached
{
  v3 = [(MFAttachment *)self sizeOnDisk];
  v4 = [(MFAttachment *)self decodedFileSize];
  v5 = [(MFAttachment *)self encodedFileSize];
  if (v3)
  {
    v6 = v3 >= v4;
  }

  else
  {
    v6 = 0;
  }

  return v6 && v3 <= v5;
}

- (id)fileAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v4 = [(MFAttachment *)self part];
  v5 = [v4 bodyParameterForKey:@"x-unix-mode"];

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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(MFAttachment *)self path];
  v10 = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:&v10];
  v6 = v10;

  v7 = 0;
  if (!v6)
  {
    v8 = [v5 valueForKey:*MEMORY[0x277CCA1C0]];
    v7 = [v8 unsignedIntegerValue];
  }

  return v7;
}

- (void)writeToDiskWithData:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MFAttachment *)self path];

  if (v4 && v5)
  {
    v6 = [(MFAttachment *)self path];
    v7 = [v6 copy];

    v8 = [v7 stringByDeletingLastPathComponent];
    if (v8)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v21 = 0;
      v10 = [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v21];
      v11 = v21;
      if (v10)
      {
        v12 = MEMORY[0x277CBEB38];
        v13 = [(MFAttachment *)self fileAttributes];
        v14 = [v12 dictionaryWithDictionary:v13];

        [v14 setObject:*MEMORY[0x277CCA198] forKey:*MEMORY[0x277CCA1B0]];
        if (([v9 createFileAtPath:v7 contents:v4 attributes:v14] & 1) == 0)
        {
          v15 = vm_imap_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v19 = [(MFAttachment *)self fileURL];
            v20 = [v11 vf_publicDescription];
            *buf = 138413058;
            v23 = v7;
            v24 = 2048;
            v25 = self;
            v26 = 2112;
            v27 = v19;
            v28 = 2114;
            v29 = v20;
            _os_log_error_impl(&dword_2720B1000, v15, OS_LOG_TYPE_ERROR, "#Attachments Failed to create path %@ for attachment [%p, %@]: %{public}@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v14 = vm_imap_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = [(MFAttachment *)self fileURL];
          v18 = [v11 vf_publicDescription];
          *buf = 138412802;
          v23 = v8;
          v24 = 2112;
          v25 = v17;
          v26 = 2114;
          v27 = v18;
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
  v3 = [(MFAttachment *)self path];
  if (v3 && (v4 = v3, v5 = [(MFAttachment *)self isContainedInRFC822], v4, !v5))
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [(MFAttachment *)self fileURL];
    v9 = [v8 path];
    v10 = [v7 isReadableFileAtPath:v9];

    if (v10)
    {
      v11 = MEMORY[0x277CBEA90];
      v12 = [(MFAttachment *)self fileURL];
      v18 = 0;
      v6 = [v11 dataWithContentsOfURL:v12 options:3 error:&v18];
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
        v15 = [(MFAttachment *)self fileURL];
        *buf = 138412290;
        v20 = v15;
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

- (id)textEncodingNameForData:(id)a3 mimeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (strcmp("text/html", [v7 UTF8String]))
  {
    if ([v8 hasPrefix:@"text/"])
    {
      v9 = [(MFAttachment *)self textEncodingGuessWithData:v6];
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
  v12 = CFStringCreateWithBytes(v14, [v6 bytes], objc_msgSend(v6, "length"), 0x8000100u, 0);
  CFAllocatorSetDefault(Default);
  if (v12)
  {
    CFRelease(v12);
    v12 = @"UTF-8";
  }

LABEL_10:

  return v12;
}

- (id)textEncodingGuessWithData:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachment *)self metadataValueForKey:@"_MFAttachmentEncodingKey"];
  v6 = v5;
  if (v4 && !v5)
  {
    [v4 bytes];
    [v4 length];
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

- (BOOL)conformsToType:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachment *)self fileUTType];

  if (v5)
  {
    LOBYTE(v5) = UTTypeConformsTo(v5, v4) != 0;
  }

  return v5;
}

- (BOOL)contentTypeConformsToVCard
{
  v2 = [(MFAttachment *)self fileUTType];

  return v2 && UTTypeConformsTo(v2, *MEMORY[0x277CC21A0]) != 0;
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
  v2 = [(MFAttachment *)self fileUTType];

  if (UTTypeConformsTo(v2, @"com.apple.mobileconfig") || UTTypeConformsTo(v2, *MEMORY[0x277CC2118]) || UTTypeConformsTo(v2, *MEMORY[0x277CC21A8]) || (v3 = UTTypeConformsTo(v2, @"com.apple.mobileprovision")) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToMarkup
{
  v2 = [(MFAttachment *)self fileUTType];

  if (UTTypeConformsTo(v2, *MEMORY[0x277CC20B0]) || (v3 = UTTypeConformsTo(v2, *MEMORY[0x277CC2108])) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToPassbook
{
  v2 = [(MFAttachment *)self fileUTType];

  if (UTTypeConformsTo(v2, *MEMORY[0x277CC1F48]) || (v3 = UTTypeConformsTo(v2, *MEMORY[0x277CC1F40])) != 0)
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)contentTypeConformsToIWork
{
  v2 = [(MFAttachment *)self fileUTType];
  v3 = [v2 hasPrefix:@"com.apple.iwork"];

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
  v7 = [a1 fileURL];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dataProvider
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 fileURL];
  v4 = [a2 vf_publicDescription];
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
  v3 = [a1 fileURL];
  v4 = [a2 vf_publicDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end