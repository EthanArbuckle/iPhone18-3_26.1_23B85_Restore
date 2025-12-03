@interface WFWorkflowFile
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (BOOL)disabledOnLockScreen;
- (BOOL)hasOutputFallback;
- (BOOL)hasShortcutInputVariables;
- (BOOL)isEqual:(id)equal;
- (BOOL)migrateRootObject;
- (BOOL)writeToFileURL:(id)l format:(unint64_t)format error:(id *)error;
- (BOOL)writeToOutputStream:(id)stream format:(unint64_t)format error:(id *)error;
- (NSArray)actions;
- (NSArray)importQuestions;
- (NSArray)inputClasses;
- (NSArray)outputClasses;
- (NSArray)quickActionSurfacesForSharing;
- (NSArray)workflowTypes;
- (NSDictionary)noInputBehavior;
- (NSString)lastMigratedClientVersion;
- (NSString)minimumClientVersion;
- (WFWorkflowFile)init;
- (WFWorkflowFile)initWithDescriptor:(id)descriptor performMigration:(BOOL)migration error:(id *)error;
- (WFWorkflowFile)initWithDictionary:(id)dictionary name:(id)name performMigration:(BOOL)migration;
- (WFWorkflowFile)initWithFileData:(id)data name:(id)name error:(id *)error;
- (WFWorkflowIcon)icon;
- (id)descriptor;
- (id)fileDataWithFormat:(unint64_t)format error:(id *)error;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)recordRepresentationWithError:(id *)error;
- (id)writeToDiskWithFormat:(unint64_t)format error:(id *)error;
- (unint64_t)estimatedSize;
- (void)setDisabledOnLockScreen:(BOOL)screen;
- (void)setIcon:(id)icon;
- (void)setMinimumClientVersion:(id)version;
@end

@implementation WFWorkflowFile

- (BOOL)migrateRootObject
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  rootObject = self->_rootObject;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__WFWorkflowFile_migrateRootObject__block_invoke;
  v9[3] = &unk_1E8376A50;
  v11 = &v12;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [WFWorkflowMigrator migrateWorkflowIfNeeded:rootObject completion:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  [(WFWorkflowFile *)self setLastMigratedClientVersion:v7];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

intptr_t __35__WFWorkflowFile_migrateRootObject__block_invoke(void *a1, char a2, void *a3)
{
  *(*(a1[6] + 8) + 24) = a2;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v4 = [a3 mutableCopy];
    v5 = a1[4];
    v6 = *(v5 + 8);
    *(v5 + 8) = v4;
  }

  v7 = a1[5];

  return dispatch_semaphore_signal(v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootObject = [equalCopy rootObject];
    rootObject2 = [(WFWorkflowFile *)self rootObject];
    v7 = [rootObject isEqualToDictionary:rootObject2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)writeToOutputStream:(id)stream format:(unint64_t)format error:(id *)error
{
  streamCopy = stream;
  [streamCopy open];
  v9 = MEMORY[0x1E696AE40];
  rootObject = [(WFWorkflowFile *)self rootObject];
  v21 = 0;
  v11 = [v9 writePropertyList:rootObject toStream:streamCopy format:format options:0 error:&v21];
  v12 = v21;
  v13 = v11 > 0;

  if (format == 100 && v11 <= 0)
  {
    v14 = MEMORY[0x1E696AE40];
    rootObject2 = [(WFWorkflowFile *)self rootObject];
    v20 = 0;
    v16 = [v14 writePropertyList:rootObject2 toStream:streamCopy format:200 options:0 error:&v20];
    v17 = v20;

    v13 = v16 != 0;
    v12 = v17;
  }

  [streamCopy close];
  if (error && v12)
  {
    v18 = v12;
    *error = v12;
  }

  return v13;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  outputStreamToMemory = [MEMORY[0x1E695DFC0] outputStreamToMemory];
  v11 = 0;
  v7 = [(WFWorkflowFile *)self writeToOutputStream:outputStreamToMemory format:200 error:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [outputStreamToMemory propertyForKey:*MEMORY[0x1E695DA30]];
    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    (handlerCopy)[2](handlerCopy, 0, v8);
  }

  return 0;
}

- (id)fileDataWithFormat:(unint64_t)format error:(id *)error
{
  file = [(WFWorkflowFile *)self file];

  if (file)
  {
    file2 = [(WFWorkflowFile *)self file];
    mappedData = [file2 mappedData];
LABEL_5:
    v10 = mappedData;
    goto LABEL_6;
  }

  file2 = [MEMORY[0x1E695DFC0] outputStreamToMemory];
  if ([(WFWorkflowFile *)self writeToOutputStream:file2 format:format error:error])
  {
    mappedData = [file2 propertyForKey:*MEMORY[0x1E695DA30]];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (BOOL)writeToFileURL:(id)l format:(unint64_t)format error:(id *)error
{
  v8 = [MEMORY[0x1E695DFC0] outputStreamWithURL:l append:0];
  LOBYTE(error) = [(WFWorkflowFile *)self writeToOutputStream:v8 format:format error:error];

  return error;
}

- (id)writeToDiskWithFormat:(unint64_t)format error:(id *)error
{
  file = [(WFWorkflowFile *)self file];
  if (file)
  {
    v8 = file;
  }

  else
  {
    v9 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
    v10 = MEMORY[0x1E6996E20];
    name = [(WFWorkflowFile *)self name];
    v12 = [v10 proposedFilenameForFile:name ofType:v9];

    v13 = [MEMORY[0x1E6996F68] proposedTemporaryFileURLForFilename:v12];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v13 path];
    [defaultManager createFileAtPath:path contents:0 attributes:0];

    v8 = [MEMORY[0x1E6996E20] fileWithURL:v13 options:1 ofType:v9];

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  fileURL = [v8 fileURL];
  v17 = [(WFWorkflowFile *)self writeToFileURL:fileURL format:format error:error];

  if (v17)
  {
    objc_storeStrong(&self->_file, v8);
    v8 = v8;
    v18 = v8;
    goto LABEL_7;
  }

LABEL_6:
  v18 = 0;
LABEL_7:

  return v18;
}

- (void)setMinimumClientVersion:(id)version
{
  rootObject = self->_rootObject;
  versionCopy = version;
  [(NSMutableDictionary *)rootObject setValue:versionCopy forKey:@"WFWorkflowMinimumClientVersionString"];
  v6 = self->_rootObject;
  v7 = MEMORY[0x1E696AD98];
  integerValue = [versionCopy integerValue];

  v9 = [v7 numberWithInteger:integerValue];
  [(NSMutableDictionary *)v6 setValue:v9 forKey:@"WFWorkflowMinimumClientVersion"];
}

- (NSString)minimumClientVersion
{
  v3 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowMinimumClientVersionString"];
  if (v3)
  {
    v4 = @"WFWorkflowMinimumClientVersionString";
  }

  else
  {
    v4 = @"WFWorkflowMinimumClientVersion";
  }

  v5 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:v4];
  v6 = WFConvertToBundleString(v5);

  return v6;
}

- (NSString)lastMigratedClientVersion
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowClientVersion"];
  v3 = WFConvertToBundleString(v2);

  return v3;
}

- (NSArray)importQuestions
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowImportQuestions"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSArray)actions
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowActions"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)setDisabledOnLockScreen:(BOOL)screen
{
  rootObject = self->_rootObject;
  if (screen)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSMutableDictionary *)rootObject setValue:v5 forKey:@"WFWorkflowIsDisabledOnLockScreen"];
  }

  else
  {
    v4 = self->_rootObject;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"WFWorkflowIsDisabledOnLockScreen"];
  }
}

- (BOOL)disabledOnLockScreen
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowIsDisabledOnLockScreen"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasOutputFallback
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowHasOutputFallback"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasShortcutInputVariables
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowHasShortcutInputVariables"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (NSArray)outputClasses
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowOutputContentItemClasses"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSDictionary)noInputBehavior
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowNoInputBehavior"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);

  return v4;
}

- (NSArray)inputClasses
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowInputContentItemClasses"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSArray)quickActionSurfacesForSharing
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFQuickActionSurfaces"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (NSArray)workflowTypes
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowTypes"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if (iconCopy)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(iconCopy, "backgroundColorValue")}];
    [v4 setObject:v5 forKeyedSubscript:@"WFWorkflowIconStartColor"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(iconCopy, "glyphCharacter")}];
    [v4 setObject:v6 forKeyedSubscript:@"WFWorkflowIconGlyphNumber"];

    customImageData = [iconCopy customImageData];

    if (customImageData)
    {
      customImageData2 = [iconCopy customImageData];
      [v4 setObject:customImageData2 forKeyedSubscript:@"WFWorkflowIconImageData"];
    }

    v9 = [v4 copy];
    [(NSMutableDictionary *)self->_rootObject setObject:v9 forKeyedSubscript:@"WFWorkflowIcon"];
  }

  else
  {
    [(NSMutableDictionary *)self->_rootObject removeObjectForKey:@"WFWorkflowIcon"];
  }
}

- (WFWorkflowIcon)icon
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowIcon"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);

  v5 = [v4 objectForKeyedSubscript:@"WFWorkflowIconStartColor"];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_1501(v5, v6);
  integerValue = [v7 integerValue];

  v9 = [v4 objectForKeyedSubscript:@"WFWorkflowIconGlyphNumber"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v9, v10);
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v13 = [v4 objectForKeyedSubscript:@"WFWorkflowIconImageData"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_1501(v13, v14);

  v16 = [objc_alloc(MEMORY[0x1E69E0E00]) initWithBackgroundColorValue:integerValue glyphCharacter:unsignedIntegerValue customImageData:v15];

  return v16;
}

- (id)recordRepresentationWithError:(id *)error
{
  v3 = [(WFRecord *)[WFWorkflowRecord alloc] initWithStorage:self];

  return v3;
}

- (unint64_t)estimatedSize
{
  file = [(WFWorkflowFile *)self file];
  fileSize = [file fileSize];

  return fileSize;
}

- (id)descriptor
{
  file = [(WFWorkflowFile *)self file];

  if (file)
  {
    v4 = [WFWorkflowFileDescriptor alloc];
    file2 = [(WFWorkflowFile *)self file];
    name = [(WFWorkflowFile *)self name];
    quarantine = [(WFWorkflowFile *)self quarantine];
    sourceAppIdentifier = [quarantine sourceAppIdentifier];
    v9 = [(WFWorkflowFileDescriptor *)v4 initWithFile:file2 name:name sourceAppIdentifier:sourceAppIdentifier];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFWorkflowFile)initWithDescriptor:(id)descriptor performMigration:(BOOL)migration error:(id *)error
{
  migrationCopy = migration;
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowFile.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  file = [descriptorCopy file];
  inputStream = [file inputStream];
  [inputStream open];
  v12 = [MEMORY[0x1E696AE40] propertyListWithStream:inputStream options:0 format:0 error:error];
  [inputStream close];
  if (v12 && (v36.receiver = self, v36.super_class = WFWorkflowFile, (self = [(WFWorkflowFile *)&v36 init]) != 0))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = self->_identifier;
    self->_identifier = uUIDString;

    objc_storeStrong(&self->_file, file);
    v16 = [v12 mutableCopy];
    rootObject = self->_rootObject;
    self->_rootObject = v16;

    name = [descriptorCopy name];
    v19 = [name copy];
    name = self->_name;
    self->_name = v19;

    creationDate = [file creationDate];
    creationDate = self->_creationDate;
    self->_creationDate = creationDate;

    modificationDate = [file modificationDate];
    v24 = modificationDate;
    if (modificationDate)
    {
      date = modificationDate;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    modificationDate = self->_modificationDate;
    self->_modificationDate = date;

    sourceAppIdentifier = [descriptorCopy sourceAppIdentifier];

    if (sourceAppIdentifier)
    {
      v29 = [WFWorkflowQuarantine alloc];
      sourceAppIdentifier2 = [descriptorCopy sourceAppIdentifier];
      date2 = [MEMORY[0x1E695DF00] date];
      v32 = [(WFWorkflowQuarantine *)v29 initWithSourceAppIdentifier:sourceAppIdentifier2 importDate:date2];
      quarantine = self->_quarantine;
      self->_quarantine = v32;
    }

    if (migrationCopy)
    {
      [(WFWorkflowFile *)self migrateRootObject];
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFWorkflowFile)initWithDictionary:(id)dictionary name:(id)name performMigration:(BOOL)migration
{
  migrationCopy = migration;
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  nameCopy = name;
  v10 = getWFGeneralLogObject();
  v11 = os_signpost_id_generate(v10);

  v12 = getWFGeneralLogObject();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v33 = @"dictionary";
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WFWorkflowFileInit", "type=%{signpost.description:attribute}@", buf, 0xCu);
  }

  v31.receiver = self;
  v31.super_class = WFWorkflowFile;
  v14 = [(WFWorkflowFile *)&v31 init];
  if (v14)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v14->_identifier;
    v14->_identifier = uUIDString;

    v18 = [dictionaryCopy mutableCopy];
    rootObject = v14->_rootObject;
    v14->_rootObject = v18;

    v20 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v20;

    date = [MEMORY[0x1E695DF00] date];
    creationDate = v14->_creationDate;
    v14->_creationDate = date;

    date2 = [MEMORY[0x1E695DF00] date];
    modificationDate = v14->_modificationDate;
    v14->_modificationDate = date2;

    if (migrationCopy)
    {
      [(WFWorkflowFile *)v14 migrateRootObject];
    }

    v26 = getWFGeneralLogObject();
    v27 = v26;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v27, OS_SIGNPOST_INTERVAL_END, v11, "WFWorkflowFileInit", "", buf, 2u);
    }

    v28 = v14;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v14;
}

- (WFWorkflowFile)initWithFileData:(id)data name:(id)name error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dataCopy = data;
  v10 = getWFGeneralLogObject();
  v11 = os_signpost_id_generate(v10);

  v12 = getWFGeneralLogObject();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v20 = 138412290;
    v21 = @"data";
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WFWorkflowFileInit", "type=%{signpost.description:attribute}@", &v20, 0xCu);
  }

  v14 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:error];

  if (v14)
  {
    v15 = getWFGeneralLogObject();
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v16, OS_SIGNPOST_INTERVAL_END, v11, "WFWorkflowFileInit", "", &v20, 2u);
    }

    self = [(WFWorkflowFile *)self initWithDictionary:v14 name:nameCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFWorkflowFile)init
{
  v3 = objc_opt_new();
  v4 = [(WFWorkflowFile *)self initWithDictionary:v3 name:0];

  return v4;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.shortcuts.workflow-file";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end