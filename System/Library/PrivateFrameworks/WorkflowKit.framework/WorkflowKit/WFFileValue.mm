@interface WFFileValue
+ (id)createBookmarkWithFileURL:(id)l workflowID:(id)d;
+ (id)defaultValueWithWorkflowID:(id)d;
- (NSString)displayName;
- (NSString)filename;
- (WFFileValue)initWithBookmarkData:(id)data filename:(id)filename displayName:(id)name;
- (WFFileValue)initWithFileLocation:(id)location filename:(id)filename displayName:(id)name;
- (WFFileValue)initWithFileLocation:(id)location filename:(id)filename displayName:(id)name reloadDisplayName:(BOOL)displayName;
- (WFFileValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFFileValue)initWithURL:(id)l;
- (WFFileValue)initWithURL:(id)l workflowID:(id)d;
- (WFPropertyListObject)serializedRepresentation;
- (id)resolveURLWithWorkflowID:(id)d error:(id *)error;
@end

@implementation WFFileValue

- (id)resolveURLWithWorkflowID:(id)d error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = getWFFilesLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Resolving URL", buf, 0xCu);
  }

  v8 = [(WFFileValue *)self URL];

  if (v8)
  {
    v9 = [(WFFileValue *)self URL];
    goto LABEL_43;
  }

  fileLocation = [(WFFileValue *)self fileLocation];

  if (dCopy && fileLocation)
  {
    fileLocation2 = [(WFFileValue *)self fileLocation];
    v49 = 0;
    v12 = [fileLocation2 resolveLocationWithError:&v49];
    v13 = v49;

    v14 = getWFFilesLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      fileLocation3 = [(WFFileValue *)self fileLocation];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 136315650;
      v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
      v52 = 2112;
      v53 = v12;
      v54 = 2112;
      v55 = v17;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s Attemping to create wrapper from url: %@ file location type: %@", buf, 0x20u);
    }

    if (!v12)
    {
      v36 = getWFFilesLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
        v52 = 2112;
        v53 = v13;
        _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_ERROR, "%s Could not resolve file location with error: %@", buf, 0x16u);
      }

      if (v13)
      {
        v37 = v13;
        v9 = 0;
        *error = v13;
        v21 = v13;
        goto LABEL_42;
      }

      v42 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
      *error = v42;

      v21 = 0;
LABEL_41:
      v9 = 0;
      goto LABEL_42;
    }

    standardClient = [MEMORY[0x1E69E0938] standardClient];
    path = [v12 path];
    v48 = v13;
    v20 = [standardClient resolveFilePath:path workflowID:dCopy error:&v48];
    v21 = v48;

    if (v20)
    {
      v22 = [v20 url];
      URL = self->_URL;
      self->_URL = v22;

      goto LABEL_24;
    }

    v39 = getWFFilesLogObject();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      path2 = [v12 path];
      *buf = 136315650;
      v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
      v52 = 2112;
      v53 = path2;
      v54 = 2114;
      v55 = v21;
      _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_ERROR, "%s Failed to look up file path: %@: %{public}@", buf, 0x20u);
    }

LABEL_37:
    v41 = v21;
    *error = v21;
LABEL_38:

    goto LABEL_41;
  }

  bookmarkData = [(WFFileValue *)self bookmarkData];

  if (bookmarkData)
  {
    standardClient2 = [MEMORY[0x1E69E0938] standardClient];
    bookmarkData2 = [(WFFileValue *)self bookmarkData];
    v46 = 0;
    v47 = 0;
    v27 = [standardClient2 resolveBookmarkData:bookmarkData2 updatedData:&v47 error:&v46];
    v12 = v47;
    v21 = v46;

    if (v27)
    {
      v28 = [v27 url];
      v29 = self->_URL;
      self->_URL = v28;

      goto LABEL_24;
    }

    v38 = getWFFilesLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
      v52 = 2112;
      v53 = v21;
      _os_log_impl(&dword_1CA256000, v38, OS_LOG_TYPE_ERROR, "%s Failed to resolve bookmark data error: %@", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  fileLocation4 = [(WFFileValue *)self fileLocation];

  if (!fileLocation4)
  {
    v21 = 0;
    goto LABEL_25;
  }

  v31 = getWFFilesLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
    _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_DEFAULT, "%s No workflowID given but a file location found. Falling back to non security scoped URL.", buf, 0xCu);
  }

  fileLocation5 = [(WFFileValue *)self fileLocation];
  v45 = 0;
  v33 = [fileLocation5 resolveLocationWithError:&v45];
  v21 = v45;

  if (!v33)
  {
    v34 = getWFFilesLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "[WFFileValue resolveURLWithWorkflowID:error:]";
      v52 = 2114;
      v53 = v21;
      _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Could not create file from file location %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v35 = v21;
      *error = v21;
    }
  }

  v12 = self->_URL;
  self->_URL = v33;
LABEL_24:

LABEL_25:
  v9 = [(WFFileValue *)self URL];
LABEL_42:

LABEL_43:
  v43 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)displayName
{
  v21 = *MEMORY[0x1E69E9840];
  displayName = self->_displayName;
  if (displayName)
  {
    goto LABEL_9;
  }

  v4 = [(WFFileValue *)self URL];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    goto LABEL_6;
  }

  fileLocation = [(WFFileValue *)self fileLocation];

  if (fileLocation)
  {
    fileLocation2 = [(WFFileValue *)self fileLocation];
    v16 = 0;
    v5 = [fileLocation2 resolveLocationWithError:&v16];
    v6 = v16;

    if (v5)
    {
      goto LABEL_6;
    }

LABEL_14:
    lastPathComponent = self->_cachedDisplayName;

    goto LABEL_10;
  }

  v15 = 0;
  v5 = [(WFFileValue *)self resolveURLWithWorkflowID:0 error:&v15];
  v6 = v15;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_6:
  wf_localizedDisplayName = [v5 wf_localizedDisplayName];
  if (wf_localizedDisplayName || (wf_localizedDisplayName = self->_cachedDisplayName) != 0)
  {
    v10 = self->_displayName;
    self->_displayName = wf_localizedDisplayName;

    displayName = self->_displayName;
LABEL_9:
    lastPathComponent = displayName;
    goto LABEL_10;
  }

  v14 = getWFFilesLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[WFFileValue displayName]";
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Could not get displayName for URL: %@ falling back to last path component", buf, 0x16u);
  }

  lastPathComponent = [v5 lastPathComponent];

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return lastPathComponent;
}

- (NSString)filename
{
  v19 = *MEMORY[0x1E69E9840];
  filename = self->_filename;
  if (filename)
  {
    v3 = filename;
    goto LABEL_10;
  }

  fileLocation = [(WFFileValue *)self fileLocation];

  if (!fileLocation)
  {
    v13 = 0;
    v7 = [(WFFileValue *)self resolveURLWithWorkflowID:0 error:&v13];
    v8 = v13;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = getWFFilesLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFFileValue filename]";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Could not resolve url with error: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  fileLocation2 = [(WFFileValue *)self fileLocation];
  v14 = 0;
  v7 = [fileLocation2 resolveLocationWithError:&v14];
  v8 = v14;

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_5:
  lastPathComponent = [v7 lastPathComponent];
  v10 = self->_filename;
  self->_filename = lastPathComponent;
LABEL_9:

  v3 = self->_filename;
LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  fileLocation = [(WFFileValue *)self fileLocation];
  serializedRepresentation = [fileLocation serializedRepresentation];

  [v3 setValue:serializedRepresentation forKey:@"fileLocation"];
  bookmarkData = [(WFFileValue *)self bookmarkData];
  [v3 setValue:bookmarkData forKey:@"bookmarkData"];

  filename = [(WFFileValue *)self filename];
  [v3 setValue:filename forKey:@"filename"];

  displayName = [(WFFileValue *)self displayName];
  [v3 setValue:displayName forKey:@"displayName"];

  return v3;
}

- (WFFileValue)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v49 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  representationCopy = representation;
  v9 = objc_opt_class();
  v10 = WFEnforceClass_17313(representationCopy, v9);

  if (v10)
  {
    v11 = [v10 objectForKey:@"fileLocation"];
    v12 = [v10 objectForKey:@"bookmarkData"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_17313(v12, v13);

    v15 = [v10 objectForKey:@"filename"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;

    v19 = [v10 objectForKey:@"displayName"];
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [WFFileLocation locationWithSerializedRepresentation:v11];
    if (v22)
    {
      self = [(WFFileValue *)self initWithFileLocation:v22 filename:v18 displayName:v21];
      selfCopy3 = self;
LABEL_33:

      goto LABEL_34;
    }

    if (!v14)
    {
      selfCopy3 = 0;
      goto LABEL_33;
    }

    v23 = providerCopy;
    v42 = v14;
    if (v23)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v41 = v25;
    workflow = [v25 workflow];
    workflowID = [workflow workflowID];

    if (!workflowID)
    {
      goto LABEL_28;
    }

    v28 = getWFFilesLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v46 = "[WFFileValue initWithSerializedRepresentation:variableProvider:parameter:]";
      _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_DEFAULT, "%s Attempting to convert bookmark based file value into file location based value", buf, 0xCu);
    }

    standardClient = [MEMORY[0x1E69E0938] standardClient];
    v43 = 0;
    v44 = 0;
    v14 = v42;
    v30 = [standardClient resolveBookmarkData:v42 updatedData:&v44 error:&v43];
    v39 = v44;
    v40 = v43;

    if (!v30)
    {
      v33 = getWFFilesLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "[WFFileValue initWithSerializedRepresentation:variableProvider:parameter:]";
        v47 = 2112;
        v48 = v40;
        _os_log_impl(&dword_1CA256000, v33, OS_LOG_TYPE_ERROR, "%s Failed to resolve bookmark data error: %@", buf, 0x16u);
      }

      self = [(WFFileValue *)self initWithBookmarkData:v42 filename:v18 displayName:v21];
      selfCopy3 = self;
      goto LABEL_32;
    }

    v37 = [WFFileValue alloc];
    v38 = v30;
    v36 = [v30 url];
    workflow2 = [v41 workflow];
    workflowID2 = [workflow2 workflowID];
    selfCopy3 = [(WFFileValue *)v37 initWithURL:v36 workflowID:workflowID2];

    if (selfCopy3)
    {
      v14 = v42;
    }

    else
    {
LABEL_28:
      v14 = v42;
      self = [(WFFileValue *)self initWithBookmarkData:v42 filename:v18 displayName:v21];
      selfCopy3 = self;
    }

LABEL_32:

    goto LABEL_33;
  }

  selfCopy3 = 0;
LABEL_34:

  v34 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (WFFileValue)initWithFileLocation:(id)location filename:(id)filename displayName:(id)name reloadDisplayName:(BOOL)displayName
{
  locationCopy = location;
  filenameCopy = filename;
  nameCopy = name;
  if (!locationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileValue.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"fileLocation"}];
  }

  v24.receiver = self;
  v24.super_class = WFFileValue;
  v15 = [(WFFileValue *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fileLocation, location);
    objc_storeStrong(&v16->_filename, filename);
    v17 = [nameCopy copy];
    cachedDisplayName = v16->_cachedDisplayName;
    v16->_cachedDisplayName = v17;

    if (!displayName)
    {
      v19 = [nameCopy copy];
      displayName = v16->_displayName;
      v16->_displayName = v19;
    }

    v21 = v16;
  }

  return v16;
}

- (WFFileValue)initWithFileLocation:(id)location filename:(id)filename displayName:(id)name
{
  locationCopy = location;
  filenameCopy = filename;
  nameCopy = name;
  if (!locationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileValue.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"fileLocation"}];
  }

  v20.receiver = self;
  v20.super_class = WFFileValue;
  v13 = [(WFFileValue *)&v20 init];
  if (v13)
  {
    v14 = v13;
    objc_storeStrong(&v13->_fileLocation, location);
    objc_storeStrong(&v14->_filename, filename);
    v15 = [nameCopy copy];
    cachedDisplayName = v14->_cachedDisplayName;
    v14->_cachedDisplayName = v15;

    v17 = [(WFFileValue *)v14 initWithFileLocation:locationCopy filename:filenameCopy displayName:nameCopy reloadDisplayName:1];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (WFFileValue)initWithURL:(id)l workflowID:(id)d
{
  lCopy = l;
  dCopy = d;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileValue.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v20.receiver = self;
  v20.super_class = WFFileValue;
  v10 = [(WFFileValue *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_URL, l);
    v12 = [WFFileLocation locationWithURL:lCopy];
    fileLocation = v11->_fileLocation;
    v11->_fileLocation = v12;

    lastPathComponent = [lCopy lastPathComponent];
    filename = v11->_filename;
    v11->_filename = lastPathComponent;

    if (dCopy)
    {
      v16 = [objc_opt_class() createBookmarkWithFileURL:lCopy workflowID:dCopy];
    }

    v17 = v11;
  }

  return v11;
}

- (WFFileValue)initWithBookmarkData:(id)data filename:(id)filename displayName:(id)name
{
  dataCopy = data;
  filenameCopy = filename;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = WFFileValue;
  v12 = [(WFFileValue *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkData, data);
    objc_storeStrong(&v13->_filename, filename);
    objc_storeStrong(&v13->_cachedDisplayName, name);
    v14 = v13;
  }

  return v13;
}

- (WFFileValue)initWithURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileValue.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v20.receiver = self;
  v20.super_class = WFFileValue;
  v7 = [(WFFileValue *)&v20 init];
  if (v7)
  {
    v8 = [objc_opt_class() createBookmarkWithFileURL:lCopy workflowID:0];
    if (!v8)
    {
      v9 = getWFFilesLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[WFFileValue initWithURL:]";
        v23 = 2112;
        v24 = lCopy;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Could not create bookmark (%@) for data backed file value falling back to URL backing", buf, 0x16u);
      }

      objc_storeStrong(&v7->_URL, l);
      v10 = [WFFileLocation locationWithURL:lCopy];
      fileLocation = v7->_fileLocation;
      v7->_fileLocation = v10;
    }

    wf_localizedDisplayName = [lCopy wf_localizedDisplayName];
    v13 = wf_localizedDisplayName;
    if (wf_localizedDisplayName)
    {
      lastPathComponent = wf_localizedDisplayName;
    }

    else
    {
      lastPathComponent = [lCopy lastPathComponent];
    }

    v15 = lastPathComponent;

    lastPathComponent2 = [lCopy lastPathComponent];
    v7 = [(WFFileValue *)v7 initWithBookmarkData:v8 filename:lastPathComponent2 displayName:v15];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)defaultValueWithWorkflowID:(id)d
{
  v4 = +[WFShortcutsFileLocation locationAtRootDirectory];
  v5 = [self alloc];
  v6 = WFLocalizedStringWithKey(@"Shortcuts iCloud Folder", @"Shortcuts");
  v7 = [v5 initWithFileLocation:v4 filename:@"Documents" displayName:v6 reloadDisplayName:0];

  return v7;
}

+ (id)createBookmarkWithFileURL:(id)l workflowID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  wf_fileIsWritable = [lCopy wf_fileIsWritable];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v8 = getFPSandboxingURLWrapperClass_softClass;
  v26 = getFPSandboxingURLWrapperClass_softClass;
  if (!getFPSandboxingURLWrapperClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFPSandboxingURLWrapperClass_block_invoke;
    v28 = &unk_1E837FAC0;
    v29 = &v23;
    __getFPSandboxingURLWrapperClass_block_invoke(buf);
    v8 = v24[3];
  }

  v9 = v8;
  _Block_object_dispose(&v23, 8);
  v22 = 0;
  v10 = [v8 wrapperWithURL:lCopy readonly:wf_fileIsWritable ^ 1u error:&v22];
  v11 = v22;
  accessSpecifierForCurrentProcess = [MEMORY[0x1E69E0910] accessSpecifierForCurrentProcess];
  bundleIdentifier = [accessSpecifierForCurrentProcess bundleIdentifier];
  v14 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69E0E60]];

  if (v14)
  {
    v15 = v11;
LABEL_8:
    v18 = getWFFilesLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "+[WFFileValue createBookmarkWithFileURL:workflowID:]";
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      *&buf[22] = 2112;
      v28 = v15;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Could not create bookmark at URL: %@ with error: %@", buf, 0x20u);
    }

    v17 = 0;
    goto LABEL_11;
  }

  standardClient = [MEMORY[0x1E69E0938] standardClient];
  v21 = v11;
  v17 = [standardClient createBookmarkWithURL:v10 workflowID:dCopy error:&v21];
  v15 = v21;

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = getWFFilesLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "+[WFFileValue createBookmarkWithFileURL:workflowID:]";
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    *&buf[22] = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEBUG, "%s Created bookmark at URL: %@ for workflowID: %@", buf, 0x20u);
  }

LABEL_11:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

@end