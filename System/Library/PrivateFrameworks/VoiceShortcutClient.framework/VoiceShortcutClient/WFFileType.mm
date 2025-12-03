@interface WFFileType
+ (id)fileTypeCache;
+ (id)typeForTagClass:(id)class tag:(id)tag;
+ (id)typeFromFileExtension:(id)extension;
+ (id)typeFromFilename:(id)filename;
+ (id)typeFromPasteboardType:(id)type;
+ (id)typeWithString:(id)string;
+ (id)typeWithUTType:(id)type;
+ (id)typeWithUTType:(id)type string:(id)string;
+ (id)typesForTagClass:(id)class tag:(id)tag conformingToType:(id)type;
+ (id)typesFromUTTypes:(id)types excludingType:(id)type;
- (BOOL)conformsToString:(id)string;
- (BOOL)conformsToType:(id)type;
- (BOOL)conformsToUTType:(id)type;
- (BOOL)conformsToUTTypes:(id)types;
- (BOOL)isCoreType;
- (BOOL)isDeclared;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (BOOL)isEqualToType:(id)type;
- (BOOL)isEqualToUTType:(id)type;
- (NSArray)typesConformedTo;
- (NSString)MIMEType;
- (NSString)fileExtension;
- (NSString)string;
- (NSString)typeDescription;
- (UTType)utType;
- (WFFileType)initWithCoder:(id)coder;
- (WFFileType)initWithUTType:(id)type string:(id)string;
- (WFImage)documentIcon;
- (id)conformingTypesWithTagClass:(id)class tag:(id)tag;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileType

uint64_t __27__WFFileType_fileTypeCache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = fileTypeCache_fileTypeCache;
  fileTypeCache_fileTypeCache = v0;

  v2 = fileTypeCache_fileTypeCache;

  return [v2 setName:@"WFFileType Cache"];
}

+ (id)fileTypeCache
{
  if (fileTypeCache_onceToken != -1)
  {
    dispatch_once(&fileTypeCache_onceToken, &__block_literal_global_17540);
  }

  v3 = fileTypeCache_fileTypeCache;

  return v3;
}

- (BOOL)isDeclared
{
  utType = [(WFFileType *)self utType];
  isDeclared = [utType isDeclared];

  return isDeclared;
}

- (UTType)utType
{
  utType = self->_utType;
  if (!utType)
  {
    utType = self->_string;
    if (utType)
    {
      v4 = [utType hasPrefix:@"com.apple"];
      string = self->_string;
      if (v4)
      {
        [MEMORY[0x1E6982C40] _typeWithIdentifier:string allowUndeclared:1];
      }

      else
      {
        [MEMORY[0x1E6982C40] typeWithIdentifier:string];
      }
      v6 = ;
      v7 = self->_utType;
      self->_utType = v6;

      utType = self->_utType;
    }
  }

  return utType;
}

- (id)conformingTypesWithTagClass:(id)class tag:(id)tag
{
  tagCopy = tag;
  classCopy = class;
  v8 = objc_opt_class();
  utType = [(WFFileType *)self utType];
  v10 = [v8 typesForTagClass:classCopy tag:tagCopy conformingToType:utType];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = self->_string;
  if (string)
  {
    v5 = NSStringFromSelector(sel_string);
    [coderCopy encodeObject:string forKey:v5];
  }

  utType = self->_utType;
  if (utType)
  {
    v7 = NSStringFromSelector(sel_utType);
    [coderCopy encodeObject:utType forKey:v7];
  }
}

- (WFFileType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_string);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_utType);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(WFFileType *)self initWithUTType:v10 string:v7];
  return v11;
}

- (NSString)MIMEType
{
  utType = [(WFFileType *)self utType];
  preferredMIMEType = [utType preferredMIMEType];

  return preferredMIMEType;
}

- (NSString)fileExtension
{
  if ([(WFFileType *)self isEqualToUTType:*MEMORY[0x1E6983060]])
  {
    preferredFilenameExtension = @"txt";
  }

  else
  {
    utType = [(WFFileType *)self utType];
    preferredFilenameExtension = [utType preferredFilenameExtension];
  }

  return preferredFilenameExtension;
}

- (NSArray)typesConformedTo
{
  utType = [(WFFileType *)self utType];
  supertypes = [utType supertypes];
  allObjects = [supertypes allObjects];

  if ([allObjects count])
  {
    v5 = [objc_opt_class() typesFromUTTypes:allObjects];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSString)typeDescription
{
  utType = [(WFFileType *)self utType];
  localizedDescription = [utType localizedDescription];

  return localizedDescription;
}

- (BOOL)isCoreType
{
  utType = [(WFFileType *)self utType];
  _isCoreType = [utType _isCoreType];

  return _isCoreType;
}

- (BOOL)isDynamic
{
  utType = [(WFFileType *)self utType];
  isDynamic = [utType isDynamic];

  return isDynamic;
}

- (BOOL)conformsToUTTypes:(id)types
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  typesCopy = types;
  v5 = [typesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(typesCopy);
        }

        if ([(WFFileType *)self conformsToUTType:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [typesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)conformsToUTType:(id)type
{
  typeCopy = type;
  utType = [(WFFileType *)self utType];
  v6 = [utType conformsToType:typeCopy];

  return v6;
}

- (BOOL)conformsToString:(id)string
{
  stringCopy = string;
  v5 = [objc_opt_class() typeWithString:stringCopy];

  utType = [v5 utType];

  if (utType)
  {
    v7 = [(WFFileType *)self conformsToUTType:utType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)conformsToType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    utType = [typeCopy utType];
    if (utType)
    {
      v6 = [(WFFileType *)self conformsToUTType:utType];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToUTType:(id)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  utType = [(WFFileType *)self utType];
  v6 = [utType isEqual:typeCopy];

  return v6;
}

- (BOOL)isEqualToString:(id)string
{
  stringCopy = string;
  string = [(WFFileType *)self string];
  v6 = [string isEqualToString:stringCopy];

  return v6;
}

- (BOOL)isEqualToType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    utType = [typeCopy utType];
    v6 = [(WFFileType *)self isEqualToUTType:utType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  utType = [(WFFileType *)self utType];
  v4 = [utType hash];
  string = [(WFFileType *)self string];
  v6 = [string hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      utType = [(WFFileType *)equalCopy utType];
      v6 = [(WFFileType *)self isEqualToUTType:utType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)string
{
  string = self->_string;
  if (string)
  {
    identifier = string;
  }

  else
  {
    identifier = [(UTType *)self->_utType identifier];
  }

  return identifier;
}

- (WFFileType)initWithUTType:(id)type string:(id)string
{
  typeCopy = type;
  stringCopy = string;
  if (typeCopy | stringCopy && (v14.receiver = self, v14.super_class = WFFileType, v9 = [(WFFileType *)&v14 init], (self = v9) != 0))
  {
    objc_storeStrong(&v9->_utType, type);
    v10 = [stringCopy copy];
    string = self->_string;
    self->_string = v10;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)typesForTagClass:(id)class tag:(id)tag conformingToType:(id)type
{
  v8 = MEMORY[0x1E6982C40];
  typeCopy = type;
  v10 = [v8 typesWithTag:tag tagClass:class conformingToType:typeCopy];
  v11 = [self typesFromUTTypes:v10 excludingType:typeCopy];

  return v11;
}

+ (id)typeForTagClass:(id)class tag:(id)tag
{
  if (tag)
  {
    v5 = [MEMORY[0x1E6982C40] typeWithTag:tag tagClass:class conformingToType:0];
    if (v5)
    {
      v6 = [self typeWithUTType:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)typesFromUTTypes:(id)types excludingType:(id)type
{
  typeCopy = type;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__WFFileType_typesFromUTTypes_excludingType___block_invoke;
  v10[3] = &unk_1E7B02238;
  if (!types)
  {
    types = MEMORY[0x1E695E0F0];
  }

  v11 = typeCopy;
  selfCopy = self;
  v7 = typeCopy;
  v8 = [types if_compactMap:v10];

  return v8;
}

id __45__WFFileType_typesFromUTTypes_excludingType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) typeWithUTType:v3];
  }

  return v4;
}

+ (id)typeFromPasteboardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Apple Web Archive pasteboard type"])
  {
    v5 = [self alloc];
    v6 = [v5 initWithUTType:*MEMORY[0x1E6983098] string:@"Apple Web Archive pasteboard type"];
  }

  else
  {
    v6 = [self typeWithString:typeCopy];
  }

  v7 = v6;

  return v7;
}

+ (id)typeFromFileExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy length])
  {
    v5 = [self typeForTagClass:*MEMORY[0x1E6982C48] tag:extensionCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)typeFromFilename:(id)filename
{
  v21 = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [&unk_1F2931590 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(&unk_1F2931590);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.zip", v8];
        v10 = [filenameCopy hasSuffix:v9];

        if (v10)
        {
          v12 = [self typeFromFileExtension:v8];
          goto LABEL_11;
        }
      }

      v5 = [&unk_1F2931590 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  pathExtension = [filenameCopy pathExtension];
  v12 = [self typeFromFileExtension:pathExtension];

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)typeWithUTType:(id)type string:(id)string
{
  typeCopy = type;
  stringCopy = string;
  if (!(typeCopy | stringCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileType.m" lineNumber:64 description:@"Either a UTType or a string must be provided"];

    goto LABEL_7;
  }

  if (!typeCopy)
  {
LABEL_7:
    v9 = [self typeWithString:stringCopy];
    goto LABEL_8;
  }

  if (stringCopy)
  {
    v9 = [[self alloc] initWithUTType:typeCopy string:stringCopy];
  }

  else
  {
    v9 = [self typeWithUTType:typeCopy];
  }

LABEL_8:
  v11 = v9;

  return v11;
}

+ (id)typeWithUTType:(id)type
{
  typeCopy = type;
  identifier = [typeCopy identifier];
  fileTypeCache = [self fileTypeCache];
  v7 = [fileTypeCache objectForKey:identifier];

  if (!v7)
  {
    v7 = [[self alloc] initWithUTType:typeCopy];
    if ([v7 isDeclared])
    {
      fileTypeCache2 = [self fileTypeCache];
      [fileTypeCache2 setObject:v7 forKey:identifier];
    }
  }

  v9 = v7;

  return v9;
}

+ (id)typeWithString:(id)string
{
  stringCopy = string;
  fileTypeCache = [self fileTypeCache];
  v6 = [fileTypeCache objectForKey:stringCopy];

  if (!v6)
  {
    v6 = [[self alloc] initWithString:stringCopy];
    if ([v6 isDeclared])
    {
      fileTypeCache2 = [self fileTypeCache];
      [fileTypeCache2 setObject:v6 forKey:stringCopy];
    }
  }

  v8 = v6;

  return v8;
}

- (WFImage)documentIcon
{
  v3 = objc_getAssociatedObject(self, sel_documentIcon);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [WFImage documentIconImageForFileType:self];
    objc_setAssociatedObject(self, sel_documentIcon, v5, 1);
  }

  return v5;
}

@end