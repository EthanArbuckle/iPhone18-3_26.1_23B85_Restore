@interface WFWorkflowFile
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (BOOL)disabledOnLockScreen;
- (BOOL)hasOutputFallback;
- (BOOL)hasShortcutInputVariables;
- (BOOL)isEqual:(id)a3;
- (BOOL)migrateRootObject;
- (BOOL)writeToFileURL:(id)a3 format:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeToOutputStream:(id)a3 format:(unint64_t)a4 error:(id *)a5;
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
- (WFWorkflowFile)initWithDescriptor:(id)a3 performMigration:(BOOL)a4 error:(id *)a5;
- (WFWorkflowFile)initWithDictionary:(id)a3 name:(id)a4 performMigration:(BOOL)a5;
- (WFWorkflowFile)initWithFileData:(id)a3 name:(id)a4 error:(id *)a5;
- (WFWorkflowIcon)icon;
- (id)descriptor;
- (id)fileDataWithFormat:(unint64_t)a3 error:(id *)a4;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)recordRepresentationWithError:(id *)a3;
- (id)writeToDiskWithFormat:(unint64_t)a3 error:(id *)a4;
- (unint64_t)estimatedSize;
- (void)setDisabledOnLockScreen:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setMinimumClientVersion:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 rootObject];
    v6 = [(WFWorkflowFile *)self rootObject];
    v7 = [v5 isEqualToDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)writeToOutputStream:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  [v8 open];
  v9 = MEMORY[0x1E696AE40];
  v10 = [(WFWorkflowFile *)self rootObject];
  v21 = 0;
  v11 = [v9 writePropertyList:v10 toStream:v8 format:a4 options:0 error:&v21];
  v12 = v21;
  v13 = v11 > 0;

  if (a4 == 100 && v11 <= 0)
  {
    v14 = MEMORY[0x1E696AE40];
    v15 = [(WFWorkflowFile *)self rootObject];
    v20 = 0;
    v16 = [v14 writePropertyList:v15 toStream:v8 format:200 options:0 error:&v20];
    v17 = v20;

    v13 = v16 != 0;
    v12 = v17;
  }

  [v8 close];
  if (a5 && v12)
  {
    v18 = v12;
    *a5 = v12;
  }

  return v13;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DFC0] outputStreamToMemory];
  v11 = 0;
  v7 = [(WFWorkflowFile *)self writeToOutputStream:v6 format:200 error:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [v6 propertyForKey:*MEMORY[0x1E695DA30]];
    v5[2](v5, v9, 0);
  }

  else
  {
    (v5)[2](v5, 0, v8);
  }

  return 0;
}

- (id)fileDataWithFormat:(unint64_t)a3 error:(id *)a4
{
  v7 = [(WFWorkflowFile *)self file];

  if (v7)
  {
    v8 = [(WFWorkflowFile *)self file];
    v9 = [v8 mappedData];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E695DFC0] outputStreamToMemory];
  if ([(WFWorkflowFile *)self writeToOutputStream:v8 format:a3 error:a4])
  {
    v9 = [v8 propertyForKey:*MEMORY[0x1E695DA30]];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (BOOL)writeToFileURL:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = [MEMORY[0x1E695DFC0] outputStreamWithURL:a3 append:0];
  LOBYTE(a5) = [(WFWorkflowFile *)self writeToOutputStream:v8 format:a4 error:a5];

  return a5;
}

- (id)writeToDiskWithFormat:(unint64_t)a3 error:(id *)a4
{
  v7 = [(WFWorkflowFile *)self file];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69E0AF8] typeWithString:@"com.apple.shortcuts.workflow-file"];
    v10 = MEMORY[0x1E6996E20];
    v11 = [(WFWorkflowFile *)self name];
    v12 = [v10 proposedFilenameForFile:v11 ofType:v9];

    v13 = [MEMORY[0x1E6996F68] proposedTemporaryFileURLForFilename:v12];
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [v13 path];
    [v14 createFileAtPath:v15 contents:0 attributes:0];

    v8 = [MEMORY[0x1E6996E20] fileWithURL:v13 options:1 ofType:v9];

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v16 = [v8 fileURL];
  v17 = [(WFWorkflowFile *)self writeToFileURL:v16 format:a3 error:a4];

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

- (void)setMinimumClientVersion:(id)a3
{
  rootObject = self->_rootObject;
  v5 = a3;
  [(NSMutableDictionary *)rootObject setValue:v5 forKey:@"WFWorkflowMinimumClientVersionString"];
  v6 = self->_rootObject;
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 integerValue];

  v9 = [v7 numberWithInteger:v8];
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

- (void)setDisabledOnLockScreen:(BOOL)a3
{
  rootObject = self->_rootObject;
  if (a3)
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
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)hasOutputFallback
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowHasOutputFallback"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)hasShortcutInputVariables
{
  v2 = [(NSMutableDictionary *)self->_rootObject objectForKeyedSubscript:@"WFWorkflowHasShortcutInputVariables"];
  v3 = objc_opt_class();
  v4 = WFEnforceClass_1501(v2, v3);
  v5 = [v4 BOOLValue];

  return v5;
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

- (void)setIcon:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "backgroundColorValue")}];
    [v4 setObject:v5 forKeyedSubscript:@"WFWorkflowIconStartColor"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v10, "glyphCharacter")}];
    [v4 setObject:v6 forKeyedSubscript:@"WFWorkflowIconGlyphNumber"];

    v7 = [v10 customImageData];

    if (v7)
    {
      v8 = [v10 customImageData];
      [v4 setObject:v8 forKeyedSubscript:@"WFWorkflowIconImageData"];
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
  v8 = [v7 integerValue];

  v9 = [v4 objectForKeyedSubscript:@"WFWorkflowIconGlyphNumber"];
  v10 = objc_opt_class();
  v11 = WFEnforceClass_1501(v9, v10);
  v12 = [v11 unsignedIntegerValue];

  v13 = [v4 objectForKeyedSubscript:@"WFWorkflowIconImageData"];
  v14 = objc_opt_class();
  v15 = WFEnforceClass_1501(v13, v14);

  v16 = [objc_alloc(MEMORY[0x1E69E0E00]) initWithBackgroundColorValue:v8 glyphCharacter:v12 customImageData:v15];

  return v16;
}

- (id)recordRepresentationWithError:(id *)a3
{
  v3 = [(WFRecord *)[WFWorkflowRecord alloc] initWithStorage:self];

  return v3;
}

- (unint64_t)estimatedSize
{
  v2 = [(WFWorkflowFile *)self file];
  v3 = [v2 fileSize];

  return v3;
}

- (id)descriptor
{
  v3 = [(WFWorkflowFile *)self file];

  if (v3)
  {
    v4 = [WFWorkflowFileDescriptor alloc];
    v5 = [(WFWorkflowFile *)self file];
    v6 = [(WFWorkflowFile *)self name];
    v7 = [(WFWorkflowFile *)self quarantine];
    v8 = [v7 sourceAppIdentifier];
    v9 = [(WFWorkflowFileDescriptor *)v4 initWithFile:v5 name:v6 sourceAppIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFWorkflowFile)initWithDescriptor:(id)a3 performMigration:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = a3;
  if (!v9)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"WFWorkflowFile.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  v10 = [v9 file];
  v11 = [v10 inputStream];
  [v11 open];
  v12 = [MEMORY[0x1E696AE40] propertyListWithStream:v11 options:0 format:0 error:a5];
  [v11 close];
  if (v12 && (v36.receiver = self, v36.super_class = WFWorkflowFile, (self = [(WFWorkflowFile *)&v36 init]) != 0))
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    identifier = self->_identifier;
    self->_identifier = v14;

    objc_storeStrong(&self->_file, v10);
    v16 = [v12 mutableCopy];
    rootObject = self->_rootObject;
    self->_rootObject = v16;

    v18 = [v9 name];
    v19 = [v18 copy];
    name = self->_name;
    self->_name = v19;

    v21 = [v10 creationDate];
    creationDate = self->_creationDate;
    self->_creationDate = v21;

    v23 = [v10 modificationDate];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x1E695DF00] date];
    }

    modificationDate = self->_modificationDate;
    self->_modificationDate = v25;

    v28 = [v9 sourceAppIdentifier];

    if (v28)
    {
      v29 = [WFWorkflowQuarantine alloc];
      v30 = [v9 sourceAppIdentifier];
      v31 = [MEMORY[0x1E695DF00] date];
      v32 = [(WFWorkflowQuarantine *)v29 initWithSourceAppIdentifier:v30 importDate:v31];
      quarantine = self->_quarantine;
      self->_quarantine = v32;
    }

    if (v6)
    {
      [(WFWorkflowFile *)self migrateRootObject];
    }

    self = self;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (WFWorkflowFile)initWithDictionary:(id)a3 name:(id)a4 performMigration:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
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
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    identifier = v14->_identifier;
    v14->_identifier = v16;

    v18 = [v8 mutableCopy];
    rootObject = v14->_rootObject;
    v14->_rootObject = v18;

    v20 = [v9 copy];
    name = v14->_name;
    v14->_name = v20;

    v22 = [MEMORY[0x1E695DF00] date];
    creationDate = v14->_creationDate;
    v14->_creationDate = v22;

    v24 = [MEMORY[0x1E695DF00] date];
    modificationDate = v14->_modificationDate;
    v14->_modificationDate = v24;

    if (v5)
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

- (WFWorkflowFile)initWithFileData:(id)a3 name:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
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

  v14 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:a5];

  if (v14)
  {
    v15 = getWFGeneralLogObject();
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v16, OS_SIGNPOST_INTERVAL_END, v11, "WFWorkflowFileInit", "", &v20, 2u);
    }

    self = [(WFWorkflowFile *)self initWithDictionary:v14 name:v8];
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
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