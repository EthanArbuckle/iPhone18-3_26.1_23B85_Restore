@interface QLPreviewItemEditedCopy
- (BOOL)containerStillExists;
- (BOOL)isEqual:(id)equal;
- (NSString)outputURLContentType;
- (NSURL)containerURL;
- (NSURL)url;
- (QLPreviewItemEditedCopy)initWithCoder:(id)coder;
- (QLPreviewItemEditedCopy)initWithEditedCopyURL:(id)l temporaryDirectoryCreatedInHost:(BOOL)host;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)markAsPurgeable;
- (void)removeFromDisk:(BOOL)disk;
@end

@implementation QLPreviewItemEditedCopy

- (QLPreviewItemEditedCopy)initWithEditedCopyURL:(id)l temporaryDirectoryCreatedInHost:(BOOL)host
{
  hostCopy = host;
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v22.receiver = self;
  v22.super_class = QLPreviewItemEditedCopy;
  v8 = [(QLPreviewItemEditedCopy *)&v22 init];
  v9 = v8;
  if (v8)
  {
    if (hostCopy)
    {
      objc_storeStrong(&v8->_editedCopyURL, l);
      editedCopyURLWrapper = v9->_editedCopyURLWrapper;
      v9->_editedCopyURLWrapper = 0;
    }

    else
    {
      v21 = 0;
      v12 = [MEMORY[0x277CC6438] wrapperWithURL:lCopy readonly:0 error:&v21];
      v11 = v21;
      v13 = v9->_editedCopyURLWrapper;
      v9->_editedCopyURLWrapper = v12;

      editedCopyURL = v9->_editedCopyURL;
      v9->_editedCopyURL = 0;

      if (v11 || !v9->_editedCopyURLWrapper)
      {
        v15 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          v20 = MEMORY[0x277D43EF8];
          QLSInitLogging();
          v15 = *v20;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v11;
          _os_log_impl(&dword_261653000, v15, OS_LOG_TYPE_ERROR, "Could not create sandbox wrapper. Error: %@ #Generic", buf, 0xCu);
        }

        goto LABEL_10;
      }
    }

    v11 = 0;
LABEL_10:
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v9->_uuid;
    v9->_uuid = uUID;

    v9->_version = 1;
    v9->_temporaryDirectoryWasCreatedInHost = hostCopy;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)containerStillExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  containerURL = [(QLPreviewItemEditedCopy *)self containerURL];
  path = [containerURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  return v6;
}

- (void)markAsPurgeable
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(QLPreviewItemEditedCopy *)self url];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  v31 = xmmword_261679A70;
  v32 = 0x40000;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v5 = fsctl(fileSystemRepresentation, 0xC0304A6FuLL, &v31, 1u);
  v6 = MEMORY[0x277D43EF8];
  v7 = *MEMORY[0x277D43EF8];
  if (v5)
  {
    if (!v7)
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [(QLPreviewItemEditedCopy *)self url];
      v10 = *__error();
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 138413314;
      v37 = v9;
      v38 = 1024;
      *v39 = v10;
      *&v39[4] = 2080;
      *&v39[6] = v12;
      *&v39[14] = 2048;
      *&v39[16] = 66565;
      v40 = 2112;
      selfCopy2 = self;
      v13 = "Failed to mark edited file %@ as purgeable: %d (%s) (flags 0x%llx) . %@ #PreviewItem";
      v14 = v8;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 48;
LABEL_10:
      _os_log_impl(&dword_261653000, v14, v15, v13, buf, v16);
    }
  }

  else
  {
    if (!v7)
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(QLPreviewItemEditedCopy *)self url];
      *buf = 138412802;
      v37 = v9;
      v38 = 2048;
      *v39 = 66565;
      *&v39[8] = 2112;
      *&v39[10] = self;
      v13 = "Marked edited file %@ as purgeable (flags 0x%llx) . %@ #PreviewItem";
      v14 = v8;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 32;
      goto LABEL_10;
    }
  }

  containerURL = [(QLPreviewItemEditedCopy *)self containerURL];
  fileSystemRepresentation2 = [containerURL fileSystemRepresentation];

  v19 = fsctl(fileSystemRepresentation2, 0xC0304A6FuLL, &v31, 1u);
  v20 = *v6;
  if (v19)
  {
    if (!v20)
    {
      QLSInitLogging();
      v20 = *v6;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      containerURL2 = [(QLPreviewItemEditedCopy *)self containerURL];
      v23 = *__error();
      v24 = __error();
      v25 = strerror(*v24);
      *buf = 138413314;
      v37 = containerURL2;
      v38 = 1024;
      *v39 = v23;
      *&v39[4] = 2080;
      *&v39[6] = v25;
      *&v39[14] = 2048;
      *&v39[16] = 66565;
      v40 = 2112;
      selfCopy2 = self;
      v26 = "Failed to mark container %@ as purgeable: %d (%s) (flags 0x%llx) . %@ #PreviewItem";
      v27 = v21;
      v28 = OS_LOG_TYPE_ERROR;
      v29 = 48;
LABEL_20:
      _os_log_impl(&dword_261653000, v27, v28, v26, buf, v29);
    }
  }

  else
  {
    if (!v20)
    {
      QLSInitLogging();
      v20 = *v6;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      containerURL2 = [(QLPreviewItemEditedCopy *)self containerURL];
      *buf = 138412802;
      v37 = containerURL2;
      v38 = 2048;
      *v39 = 66565;
      *&v39[8] = 2112;
      *&v39[10] = self;
      v26 = "Marked container %@ as purgeable (flags 0x%llx) . %@ #PreviewItem";
      v27 = v21;
      v28 = OS_LOG_TYPE_INFO;
      v29 = 32;
      goto LABEL_20;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)removeFromDisk:(BOOL)disk
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = objc_opt_new();
  v6 = [(QLPreviewItemEditedCopy *)self url];
  containerURL = [(QLPreviewItemEditedCopy *)self containerURL];
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__QLPreviewItemEditedCopy_removeFromDisk___block_invoke;
  v12[3] = &unk_279AE1220;
  v12[4] = self;
  v12[5] = &v15;
  diskCopy = disk;
  [v5 coordinateWritingItemAtURL:v6 options:1 writingItemAtURL:containerURL options:1 error:&v14 byAccessor:v12];
  v8 = v14;

  if ((v16[3] & 1) == 0)
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_261653000, v10, OS_LOG_TYPE_ERROR, "Cannot remove edited file because coordination failed with error: %@. %@ #PreviewItem", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __42__QLPreviewItemEditedCopy_removeFromDisk___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v7 = [v5 path];
  v8 = [v6 path];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = v9;
  if (v7 && [v9 fileExistsAtPath:v7])
  {
    v33 = 0;
    v11 = [v10 removeItemAtURL:v5 error:&v33];
    v12 = v33;
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (v11)
    {
      if (!v14)
      {
        QLSInitLogging();
        v14 = *v13;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v15 = *(a1 + 32);
      *buf = 138412290;
      v35 = v15;
      v16 = "Removed edited file. %@ #PreviewItem";
      v17 = v14;
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 12;
    }

    else
    {
      if (!v14)
      {
        QLSInitLogging();
        v14 = *v13;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v20 = *(a1 + 32);
      *buf = 138412546;
      v35 = v12;
      v36 = 2112;
      v37 = v20;
      v16 = "Cannot remove edited file with error: %@. %@ #PreviewItem";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 22;
    }

    _os_log_impl(&dword_261653000, v17, v18, v16, buf, v19);
LABEL_13:
  }

  if (*(a1 + 48) == 1 && v8 && [v10 fileExistsAtPath:v8])
  {
    v32 = 0;
    v21 = [v10 removeItemAtURL:v6 error:&v32];
    v22 = v32;
    v23 = MEMORY[0x277D43EF8];
    v24 = *MEMORY[0x277D43EF8];
    if (v21)
    {
      if (!v24)
      {
        QLSInitLogging();
        v24 = *v23;
      }

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v25 = *(a1 + 32);
      *buf = 138412290;
      v35 = v25;
      v26 = "Removed edited file directory. %@ #PreviewItem";
      v27 = v24;
      v28 = OS_LOG_TYPE_DEBUG;
      v29 = 12;
    }

    else
    {
      if (!v24)
      {
        QLSInitLogging();
        v24 = *v23;
      }

      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v30 = *(a1 + 32);
      *buf = 138412546;
      v35 = v22;
      v36 = 2112;
      v37 = v30;
      v26 = "Cannot remove edited file directory with error: %@. %@ #PreviewItem";
      v27 = v24;
      v28 = OS_LOG_TYPE_ERROR;
      v29 = 22;
    }

    _os_log_impl(&dword_261653000, v27, v28, v26, buf, v29);
LABEL_27:
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      uuid = [(QLPreviewItemEditedCopy *)self uuid];
      uuid2 = [(QLPreviewItemEditedCopy *)v7 uuid];
      if (uuid != uuid2)
      {
        uuid3 = [(QLPreviewItemEditedCopy *)self uuid];
        uuid4 = [(QLPreviewItemEditedCopy *)v7 uuid];
        if (![uuid3 isEqual:uuid4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      version = [(QLPreviewItemEditedCopy *)self version];
      if (version != [(QLPreviewItemEditedCopy *)v7 version])
      {
        v10 = 0;
        goto LABEL_20;
      }

      v12 = [(QLPreviewItemEditedCopy *)self url];
      v13 = [(QLPreviewItemEditedCopy *)v7 url];
      if (v12 == v13 && ([(QLPreviewItemEditedCopy *)self containerURL], v14 = objc_claimAutoreleasedReturnValue(), [(QLPreviewItemEditedCopy *)v7 containerURL], v20 = objc_claimAutoreleasedReturnValue(), v21 = v14, v14 == v20))
      {
        v10 = 1;
      }

      else
      {
        v24 = v12;
        v15 = [(QLPreviewItemEditedCopy *)self url];
        v16 = [(QLPreviewItemEditedCopy *)v7 url];
        if ([v15 isEqual:v16])
        {
          [(QLPreviewItemEditedCopy *)self containerURL];
          v17 = v22 = uuid4;
          [(QLPreviewItemEditedCopy *)v7 containerURL];
          v18 = v23 = uuid3;
          v10 = [v17 isEqual:v18];

          uuid3 = v23;
          uuid4 = v22;
        }

        else
        {

          v10 = 0;
        }

        v12 = v24;
        if (v24 != v13)
        {
          goto LABEL_19;
        }
      }

LABEL_19:
LABEL_20:
      if (uuid == uuid2)
      {
LABEL_22:

        goto LABEL_23;
      }

LABEL_21:

      goto LABEL_22;
    }

    v10 = 0;
  }

LABEL_23:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(QLPreviewItemEditedCopy *)self url];
  containerURL = [(QLPreviewItemEditedCopy *)self containerURL];
  v7 = [v3 stringWithFormat:@"<%@ %@ %@>", v4, v5, containerURL];

  return v7;
}

- (NSURL)url
{
  if ([(QLPreviewItemEditedCopy *)self temporaryDirectoryWasCreatedInHost])
  {
    v3 = self->_editedCopyURL;
  }

  else
  {
    v3 = [(FPSandboxingURLWrapper *)self->_editedCopyURLWrapper url];
  }

  return v3;
}

- (NSURL)containerURL
{
  if ([(QLPreviewItemEditedCopy *)self temporaryDirectoryWasCreatedInHost])
  {
    v3 = self->_hostTemporaryContainerURL;
  }

  else
  {
    v3 = [(FPSandboxingURLWrapper *)self->_directoryURLWrapper url];
  }

  return v3;
}

- (NSString)outputURLContentType
{
  v2 = MEMORY[0x277CDAB20];
  v3 = [(QLPreviewItemEditedCopy *)self url];
  v4 = [v2 UTIForURL:v3];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = self->_uuid;
  v11 = coderCopy;
  if (uuid)
  {
    [coderCopy encodeObject:uuid forKey:@"uuid"];
    coderCopy = v11;
  }

  editedCopyURL = self->_editedCopyURL;
  if (editedCopyURL)
  {
    [v11 encodeObject:editedCopyURL forKey:@"editedCopyURL"];
    coderCopy = v11;
  }

  editedCopyURLWrapper = self->_editedCopyURLWrapper;
  if (editedCopyURLWrapper)
  {
    [v11 encodeObject:editedCopyURLWrapper forKey:@"editedCopyURLWrapper"];
    coderCopy = v11;
  }

  hostTemporaryContainerURL = self->_hostTemporaryContainerURL;
  if (hostTemporaryContainerURL)
  {
    [v11 encodeObject:hostTemporaryContainerURL forKey:@"hostTemporaryContainerURL"];
    coderCopy = v11;
  }

  directoryURLWrapper = self->_directoryURLWrapper;
  if (directoryURLWrapper)
  {
    [v11 encodeObject:directoryURLWrapper forKey:@"directoryURLWrapper"];
    coderCopy = v11;
  }

  version = self->_version;
  if (version)
  {
    [v11 encodeInteger:version forKey:@"version"];
    coderCopy = v11;
  }

  [coderCopy encodeBool:self->_temporaryDirectoryWasCreatedInHost forKey:@"temporaryDirectoryWasCreatedInHost"];
}

- (QLPreviewItemEditedCopy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = QLPreviewItemEditedCopy;
  v5 = [(QLPreviewItemEditedCopy *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editedCopyURL"];
    editedCopyURL = v5->_editedCopyURL;
    v5->_editedCopyURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editedCopyURLWrapper"];
    editedCopyURLWrapper = v5->_editedCopyURLWrapper;
    v5->_editedCopyURLWrapper = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostTemporaryContainerURL"];
    hostTemporaryContainerURL = v5->_hostTemporaryContainerURL;
    v5->_hostTemporaryContainerURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"directoryURLWrapper"];
    directoryURLWrapper = v5->_directoryURLWrapper;
    v5->_directoryURLWrapper = v14;

    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v5->_temporaryDirectoryWasCreatedInHost = [coderCopy decodeBoolForKey:@"temporaryDirectoryWasCreatedInHost"];
    v16 = v5;
  }

  return v5;
}

@end