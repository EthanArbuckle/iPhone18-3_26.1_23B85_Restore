@interface TRIAppContainer
+ (TRIAppContainer)containerWithIdentifier:(id)identifier type:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainer:(id)container;
- (TRIAppContainer)initWithCoder:(id)coder;
- (TRIAppContainer)initWithIdentifier:(id)identifier type:(int64_t)type;
- (id)_appBundleContainerDirectoryAsOwner;
- (id)_appContainerDirectoryAsSystemWithContainerClass:(unint64_t)class error:(id *)error;
- (id)_appDataContainerDirectoryAsOwner;
- (id)_containerError:(unint64_t)error withFormat:(id)format;
- (id)_containerURLWithError:(id *)error;
- (id)_groupContainerDirectoryAsOwner;
- (id)_groupContainerDirectoryAsSystemWithError:(id *)error;
- (id)containerURL;
- (id)containerURLAsOwner;
- (id)copyWithReplacementIdentifier:(id)identifier;
- (id)copyWithReplacementType:(int64_t)type;
- (id)description;
- (id)sanitizedIdentifier;
- (int64_t)fetchStatus;
- (void)encodeWithCoder:(id)coder;
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
    userInfo = [v14 userInfo];
    path = [userInfo objectForKeyedSubscript:@"containerError"];

    if (path && [path integerValue] == 21)
    {
      v8 = 2;
      goto LABEL_13;
    }

    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedFailureReason = [v14 localizedFailureReason];
      *buf = 138412290;
      selfCopy = localizedFailureReason;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

LABEL_12:

    v8 = 0;
    goto LABEL_13;
  }

  path = [v3 path];
  if (!path || ([MEMORY[0x277CCAA00] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "fileExistsAtPath:", path), v6, (v7 & 1) == 0))
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
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
      localizedFailureReason = [v7 localizedFailureReason];
      *buf = 138412290;
      v9 = localizedFailureReason;
      _os_log_error_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_containerURLWithError:(id *)error
{
  type = [(TRIAppContainer *)self type];
  switch(type)
  {
    case 3:
      v6 = [(TRIAppContainer *)self _groupContainerDirectoryAsSystemWithError:error];
      break;
    case 2:
      v6 = [(TRIAppContainer *)self _appDataContainerDirectoryAsSystemWithError:error];
      break;
    case 1:
      v6 = [(TRIAppContainer *)self _appBundleContainerDirectoryAsSystemWithError:error];
      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

- (id)containerURLAsOwner
{
  type = [(TRIAppContainer *)self type];
  switch(type)
  {
    case 3:
      _groupContainerDirectoryAsOwner = [(TRIAppContainer *)self _groupContainerDirectoryAsOwner];
      break;
    case 2:
      _groupContainerDirectoryAsOwner = [(TRIAppContainer *)self _appDataContainerDirectoryAsOwner];
      break;
    case 1:
      _groupContainerDirectoryAsOwner = [(TRIAppContainer *)self _appBundleContainerDirectoryAsOwner];
      break;
    default:
      _groupContainerDirectoryAsOwner = 0;
      break;
  }

  return _groupContainerDirectoryAsOwner;
}

- (id)sanitizedIdentifier
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_10);
  }

  identifier = [(TRIAppContainer *)self identifier];
  v4 = [identifier dataUsingEncoding:1 allowLossyConversion:1];

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

- (id)_containerError:(unint64_t)error withFormat:(id)format
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v20];

  v17[0] = @"containerError";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:error];
  v18[0] = v8;
  v17[1] = *MEMORY[0x277CCA450];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [mainBundle localizedStringForKey:@"Container error" value:&stru_28435FC98 table:0];
  v18[1] = v10;
  v17[2] = *MEMORY[0x277CCA470];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle2 localizedStringForKey:v7 value:&stru_28435FC98 table:0];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_appContainerDirectoryAsSystemWithContainerClass:(unint64_t)class error:(id *)error
{
  sanitizedIdentifier = [(TRIAppContainer *)self sanitizedIdentifier];
  v7 = sanitizedIdentifier;
  if (!sanitizedIdentifier || ![sanitizedIdentifier length])
  {
    if (!error)
    {
      goto LABEL_11;
    }

    identifier = [(TRIAppContainer *)self identifier];
    v12 = [(TRIAppContainer *)self _containerError:1 withFormat:@"Failed to look up container with identifier %@ because cannot sanitize identifier", identifier];
    v13 = *error;
    *error = v12;

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
      error = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
      free(v10);
      goto LABEL_11;
    }
  }

  if (error)
  {
    identifier2 = [(TRIAppContainer *)self identifier];
    v15 = [(TRIAppContainer *)self _containerError:0 withFormat:@"Failed to look up container with identifier %@ due to container manager error: %llu", identifier2, 0];
    v16 = *error;
    *error = v15;

LABEL_10:
    error = 0;
  }

LABEL_11:

  return error;
}

- (id)_groupContainerDirectoryAsSystemWithError:(id *)error
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
      identifier = [(TRIAppContainer *)self identifier];
      *buf = 138412546;
      *&buf[4] = identifier;
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleURL = [mainBundle bundleURL];

  return bundleURL;
}

- (id)_appDataContainerDirectoryAsOwner
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLsForDirectory:5 inDomains:1];
  firstObject = [v3 firstObject];

  if (firstObject)
  {
    firstObject2 = [v3 firstObject];
    firstObject = [firstObject2 URLByDeletingLastPathComponent];
  }

  return firstObject;
}

- (id)_groupContainerDirectoryAsOwner
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  sanitizedIdentifier = [(TRIAppContainer *)self sanitizedIdentifier];
  v5 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:sanitizedIdentifier];

  return v5;
}

- (TRIAppContainer)initWithIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIAppContainer;
  v9 = [(TRIAppContainer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v10->_type = type;
  }

  return v10;
}

+ (TRIAppContainer)containerWithIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  v7 = [[self alloc] initWithIdentifier:identifierCopy type:type];

  return v7;
}

- (id)copyWithReplacementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy type:self->_type];

  return v5;
}

- (id)copyWithReplacementType:(int64_t)type
{
  v5 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;

  return [v5 initWithIdentifier:identifier type:type];
}

- (BOOL)isEqualToContainer:(id)container
{
  containerCopy = container;
  v5 = containerCopy;
  if (!containerCopy)
  {
    goto LABEL_6;
  }

  v6 = self->_identifier == 0;
  identifier = [containerCopy identifier];
  v8 = identifier != 0;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAppContainer *)self isEqualToContainer:v5];
  }

  return v6;
}

- (TRIAppContainer)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (!v5)
  {
    error = [coderCopy error];

    if (error)
    {
LABEL_10:
      selfCopy = 0;
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
    [coderCopy failWithError:v17];

    goto LABEL_9;
  }

  v6 = [coderCopy decodeInt64ForKey:@"type"];
  if (!v6)
  {
    error2 = [coderCopy error];

    if (error2)
    {
      goto LABEL_10;
    }

    if ([coderCopy containsValueForKey:@"type"])
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
    [coderCopy failWithError:v12];
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  self = [(TRIAppContainer *)self initWithIdentifier:v5 type:v6];
  selfCopy = self;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = self->_identifier;
  v6 = coderCopy;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"identifier"];
    coderCopy = v6;
  }

  [coderCopy encodeInt64:self->_type forKey:@"type"];
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