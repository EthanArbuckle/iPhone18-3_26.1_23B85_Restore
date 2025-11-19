@interface TRIAppContainer
+ (TRIAppContainer)containerWithIdentifier:(id)a3 type:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainer:(id)a3;
- (TRIAppContainer)initWithCoder:(id)a3;
- (TRIAppContainer)initWithIdentifier:(id)a3 type:(int64_t)a4;
- (id)_appBundleContainerDirectoryAsOwner;
- (id)_appContainerDirectoryAsSystemWithContainerClass:(unint64_t)a3 error:(id *)a4;
- (id)_appDataContainerDirectoryAsOwner;
- (id)_containerError:(unint64_t)a3 withFormat:(id)a4;
- (id)_containerURLWithError:(id *)a3;
- (id)_groupContainerDirectoryAsOwner;
- (id)_groupContainerDirectoryAsSystemWithError:(id *)a3;
- (id)containerURL;
- (id)containerURLAsOwner;
- (id)copyWithReplacementIdentifier:(id)a3;
- (id)copyWithReplacementType:(int64_t)a3;
- (id)description;
- (id)sanitizedIdentifier;
- (int64_t)fetchStatus;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIAppContainer

- (int64_t)fetchStatus
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v3 = [(TRIAppContainer *)self _containerURLWithError:&v14];
  v4 = v3;
  if (!v3)
  {
    v10 = [v14 userInfo];
    v5 = [v10 objectForKeyedSubscript:@"containerError"];

    if (v5 && [v5 integerValue] == 21)
    {
      v8 = 2;
      goto LABEL_13;
    }

    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v14 localizedFailureReason];
      *buf = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

LABEL_12:

    v8 = 0;
    goto LABEL_13;
  }

  v5 = [v3 path];
  if (!v5 || ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "fileExistsAtPath:", v5), v6, (v7 & 1) == 0))
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = self;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "could not determine state of app container %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = 1;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)containerURL
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = [(TRIAppContainer *)self _containerURLWithError:&v7];
  if (!v2)
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = [v7 localizedFailureReason];
      *buf = 138412290;
      v9 = v6;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_containerURLWithError:(id *)a3
{
  v5 = [(TRIAppContainer *)self type];
  switch(v5)
  {
    case 3:
      v6 = [(TRIAppContainer *)self _groupContainerDirectoryAsSystemWithError:a3];
      break;
    case 2:
      v6 = [(TRIAppContainer *)self _appDataContainerDirectoryAsSystemWithError:a3];
      break;
    case 1:
      v6 = [(TRIAppContainer *)self _appBundleContainerDirectoryAsSystemWithError:a3];
      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

- (id)containerURLAsOwner
{
  v3 = [(TRIAppContainer *)self type];
  switch(v3)
  {
    case 3:
      v4 = [(TRIAppContainer *)self _groupContainerDirectoryAsOwner];
      break;
    case 2:
      v4 = [(TRIAppContainer *)self _appDataContainerDirectoryAsOwner];
      break;
    case 1:
      v4 = [(TRIAppContainer *)self _appBundleContainerDirectoryAsOwner];
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

- (id)sanitizedIdentifier
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_10);
  }

  v3 = [(TRIAppContainer *)self identifier];
  v4 = [v3 dataUsingEncoding:1 allowLossyConversion:1];

  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithData:v4 encoding:1];
  v6 = [v5 rangeOfCharacterFromSet:qword_280ACADF8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [v5 rangeOfCharacterFromSet:qword_280ACADF8])
    {
      [v5 replaceCharactersInRange:i withString:{1, @"-"}];
    }
  }

  return v5;
}

void __48__TRIAppContainer_TRIPaths__sanitizedIdentifier__block_invoke()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.-_"];
  v0 = [v2 invertedSet];
  v1 = qword_280ACADF8;
  qword_280ACADF8 = v0;
}

- (id)_containerError:(unint64_t)a3 withFormat:(id)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:&v20];

  v17[0] = @"containerError";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v18[0] = v8;
  v17[1] = *MEMORY[0x277CCA450];
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 localizedStringForKey:@"Container error" value:&stru_28435FC98 table:0];
  v18[1] = v10;
  v17[2] = *MEMORY[0x277CCA470];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:v7 value:&stru_28435FC98 table:0];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_appContainerDirectoryAsSystemWithContainerClass:(unint64_t)a3 error:(id *)a4
{
  v6 = [(TRIAppContainer *)self sanitizedIdentifier];
  v7 = v6;
  if (!v6 || ![v6 length])
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v11 = [(TRIAppContainer *)self identifier];
    v12 = [(TRIAppContainer *)self _containerError:1 withFormat:@"Failed to look up container with identifier %@ because cannot sanitize identifier", v11];
    v13 = *a4;
    *a4 = v12;

    goto LABEL_10;
  }

  [v7 UTF8String];
  v8 = container_create_or_lookup_for_current_user();
  if (v8)
  {
    v9 = v8;
    v10 = container_copy_path();
    MEMORY[0x2318F1FA0](v9);
    if (v10)
    {
      a4 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
      free(v10);
      goto LABEL_11;
    }
  }

  if (a4)
  {
    v14 = [(TRIAppContainer *)self identifier];
    v15 = [(TRIAppContainer *)self _containerError:0 withFormat:@"Failed to look up container with identifier %@ due to container manager error: %llu", v14, 0];
    v16 = *a4;
    *a4 = v15;

LABEL_10:
    a4 = 0;
  }

LABEL_11:

  return a4;
}

- (id)_groupContainerDirectoryAsSystemWithError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v5 = container_create_or_lookup_app_group_paths_for_current_user();
  v6 = v5;
  if (v5)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v15 = __Block_byref_object_copy__6;
    v16 = __Block_byref_object_dispose__6;
    v17 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__TRIAppContainer_TRIPaths___groupContainerDirectoryAsSystemWithError___block_invoke;
    v12[3] = &unk_27885ED40;
    v12[5] = buf;
    v12[6] = a2;
    v12[4] = self;
    xpc_dictionary_apply(v5, v12);
    v7 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [(TRIAppContainer *)self identifier];
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "Failed to look up container with identifier %@ due to container manager error: %llu", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __71__TRIAppContainer_TRIPaths___groupContainerDirectoryAsSystemWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  if (!v6)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAppContainer+TRIPaths.m" lineNumber:200 description:@"groupId is not valid UTF-8"];
  }

  v7 = [*(a1 + 32) identifier];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    string_ptr = xpc_string_get_string_ptr(v5);
    if (string_ptr)
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:string_ptr isDirectory:1 relativeToURL:0];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "groupId path could not be coerced to string", v16, 2u);
      }
    }
  }

  return v8 ^ 1u;
}

- (id)_appBundleContainerDirectoryAsOwner
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleURL];

  return v3;
}

- (id)_appDataContainerDirectoryAsOwner
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 URLsForDirectory:5 inDomains:1];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v3 firstObject];
    v4 = [v5 URLByDeletingLastPathComponent];
  }

  return v4;
}

- (id)_groupContainerDirectoryAsOwner
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(TRIAppContainer *)self sanitizedIdentifier];
  v5 = [v3 containerURLForSecurityApplicationGroupIdentifier:v4];

  return v5;
}

- (TRIAppContainer)initWithIdentifier:(id)a3 type:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIAppContainer;
  v9 = [(TRIAppContainer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->_type = a4;
  }

  return v10;
}

+ (TRIAppContainer)containerWithIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithIdentifier:v6 type:a4];

  return v7;
}

- (id)copyWithReplacementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithIdentifier:v4 type:self->_type];

  return v5;
}

- (id)copyWithReplacementType:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;

  return [v5 initWithIdentifier:identifier type:a3];
}

- (BOOL)isEqualToContainer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_identifier == 0;
  v7 = [v4 identifier];
  v8 = v7 != 0;

  if (v6 == v8 || (identifier = self->_identifier) != 0 && ([v5 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](identifier, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    type = self->_type;
    v13 = type == [v5 type];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAppContainer *)self isEqualToContainer:v5];
  }

  return v6;
}

- (TRIAppContainer)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (!v5)
  {
    v8 = [v4 error];

    if (v8)
    {
LABEL_10:
      v7 = 0;
      goto LABEL_11;
    }

    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"Retrieved nil serialized value for nonnull TRIAppContainer.identifier";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = 2;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = objc_opt_class();
    v9 = NSStringFromClass(v13);
    v14 = objc_opt_class();
    v12 = NSStringFromClass(v14);
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIAppContainer key identifier (expected %@, decoded %@)", v9, v12, 0];
    v23 = *MEMORY[0x277CCA450];
    v24 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIAppContainerOCNTErrorDomain" code:3 userInfo:v16];
    [v4 failWithError:v17];

    goto LABEL_9;
  }

  v6 = [v4 decodeInt64ForKey:@"type"];
  if (!v6)
  {
    v20 = [v4 error];

    if (v20)
    {
      goto LABEL_10;
    }

    if ([v4 containsValueForKey:@"type"])
    {
      goto LABEL_4;
    }

    v21 = *MEMORY[0x277CCA450];
    v22 = @"Missing serialized value for TRIAppContainer.type";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = 1;
LABEL_7:
    v12 = [v10 initWithDomain:@"TRIAppContainerOCNTErrorDomain" code:v11 userInfo:v9];
    [v4 failWithError:v12];
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  self = [(TRIAppContainer *)self initWithIdentifier:v5 type:v6];
  v7 = self;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"identifier"];
    v4 = v6;
  }

  [v4 encodeInt64:self->_type forKey:@"type"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  identifier = self->_identifier;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  v6 = [v3 initWithFormat:@"<TRIAppContainer | identifier:%@ type:%@>", identifier, v5];

  return v6;
}

@end