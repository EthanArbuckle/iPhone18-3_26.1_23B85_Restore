@interface WFFileType
+ (id)fileTypeCache;
+ (id)typeForTagClass:(id)a3 tag:(id)a4;
+ (id)typeFromFileExtension:(id)a3;
+ (id)typeFromFilename:(id)a3;
+ (id)typeFromPasteboardType:(id)a3;
+ (id)typeWithString:(id)a3;
+ (id)typeWithUTType:(id)a3;
+ (id)typeWithUTType:(id)a3 string:(id)a4;
+ (id)typesForTagClass:(id)a3 tag:(id)a4 conformingToType:(id)a5;
+ (id)typesFromUTTypes:(id)a3 excludingType:(id)a4;
- (BOOL)conformsToString:(id)a3;
- (BOOL)conformsToType:(id)a3;
- (BOOL)conformsToUTType:(id)a3;
- (BOOL)conformsToUTTypes:(id)a3;
- (BOOL)isCoreType;
- (BOOL)isDeclared;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (BOOL)isEqualToType:(id)a3;
- (BOOL)isEqualToUTType:(id)a3;
- (NSArray)typesConformedTo;
- (NSString)MIMEType;
- (NSString)fileExtension;
- (NSString)string;
- (NSString)typeDescription;
- (UTType)utType;
- (WFFileType)initWithCoder:(id)a3;
- (WFFileType)initWithUTType:(id)a3 string:(id)a4;
- (WFImage)documentIcon;
- (id)conformingTypesWithTagClass:(id)a3 tag:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(WFFileType *)self utType];
  v3 = [v2 isDeclared];

  return v3;
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

- (id)conformingTypesWithTagClass:(id)a3 tag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(WFFileType *)self utType];
  v10 = [v8 typesForTagClass:v7 tag:v6 conformingToType:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  string = self->_string;
  if (string)
  {
    v5 = NSStringFromSelector(sel_string);
    [v8 encodeObject:string forKey:v5];
  }

  utType = self->_utType;
  if (utType)
  {
    v7 = NSStringFromSelector(sel_utType);
    [v8 encodeObject:utType forKey:v7];
  }
}

- (WFFileType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_string);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_utType);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(WFFileType *)self initWithUTType:v10 string:v7];
  return v11;
}

- (NSString)MIMEType
{
  v2 = [(WFFileType *)self utType];
  v3 = [v2 preferredMIMEType];

  return v3;
}

- (NSString)fileExtension
{
  if ([(WFFileType *)self isEqualToUTType:*MEMORY[0x1E6983060]])
  {
    v3 = @"txt";
  }

  else
  {
    v4 = [(WFFileType *)self utType];
    v3 = [v4 preferredFilenameExtension];
  }

  return v3;
}

- (NSArray)typesConformedTo
{
  v2 = [(WFFileType *)self utType];
  v3 = [v2 supertypes];
  v4 = [v3 allObjects];

  if ([v4 count])
  {
    v5 = [objc_opt_class() typesFromUTTypes:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSString)typeDescription
{
  v2 = [(WFFileType *)self utType];
  v3 = [v2 localizedDescription];

  return v3;
}

- (BOOL)isCoreType
{
  v2 = [(WFFileType *)self utType];
  v3 = [v2 _isCoreType];

  return v3;
}

- (BOOL)isDynamic
{
  v2 = [(WFFileType *)self utType];
  v3 = [v2 isDynamic];

  return v3;
}

- (BOOL)conformsToUTTypes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([(WFFileType *)self conformsToUTType:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)conformsToUTType:(id)a3
{
  v4 = a3;
  v5 = [(WFFileType *)self utType];
  v6 = [v5 conformsToType:v4];

  return v6;
}

- (BOOL)conformsToString:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() typeWithString:v4];

  v6 = [v5 utType];

  if (v6)
  {
    v7 = [(WFFileType *)self conformsToUTType:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)conformsToType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 utType];
    if (v5)
    {
      v6 = [(WFFileType *)self conformsToUTType:v5];
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

- (BOOL)isEqualToUTType:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(WFFileType *)self utType];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (BOOL)isEqualToString:(id)a3
{
  v4 = a3;
  v5 = [(WFFileType *)self string];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (BOOL)isEqualToType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 utType];
    v6 = [(WFFileType *)self isEqualToUTType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(WFFileType *)self utType];
  v4 = [v3 hash];
  v5 = [(WFFileType *)self string];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFFileType *)v4 utType];
      v6 = [(WFFileType *)self isEqualToUTType:v5];
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
    v3 = string;
  }

  else
  {
    v3 = [(UTType *)self->_utType identifier];
  }

  return v3;
}

- (WFFileType)initWithUTType:(id)a3 string:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8 && (v14.receiver = self, v14.super_class = WFFileType, v9 = [(WFFileType *)&v14 init], (self = v9) != 0))
  {
    objc_storeStrong(&v9->_utType, a3);
    v10 = [v8 copy];
    string = self->_string;
    self->_string = v10;

    self = self;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)typesForTagClass:(id)a3 tag:(id)a4 conformingToType:(id)a5
{
  v8 = MEMORY[0x1E6982C40];
  v9 = a5;
  v10 = [v8 typesWithTag:a4 tagClass:a3 conformingToType:v9];
  v11 = [a1 typesFromUTTypes:v10 excludingType:v9];

  return v11;
}

+ (id)typeForTagClass:(id)a3 tag:(id)a4
{
  if (a4)
  {
    v5 = [MEMORY[0x1E6982C40] typeWithTag:a4 tagClass:a3 conformingToType:0];
    if (v5)
    {
      v6 = [a1 typeWithUTType:v5];
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

+ (id)typesFromUTTypes:(id)a3 excludingType:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__WFFileType_typesFromUTTypes_excludingType___block_invoke;
  v10[3] = &unk_1E7B02238;
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a3 if_compactMap:v10];

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

+ (id)typeFromPasteboardType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Apple Web Archive pasteboard type"])
  {
    v5 = [a1 alloc];
    v6 = [v5 initWithUTType:*MEMORY[0x1E6983098] string:@"Apple Web Archive pasteboard type"];
  }

  else
  {
    v6 = [a1 typeWithString:v4];
  }

  v7 = v6;

  return v7;
}

+ (id)typeFromFileExtension:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 typeForTagClass:*MEMORY[0x1E6982C48] tag:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)typeFromFilename:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
        v10 = [v3 hasSuffix:v9];

        if (v10)
        {
          v12 = [a1 typeFromFileExtension:v8];
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

  v11 = [v3 pathExtension];
  v12 = [a1 typeFromFileExtension:v11];

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)typeWithUTType:(id)a3 string:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!(v7 | v8))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFFileType.m" lineNumber:64 description:@"Either a UTType or a string must be provided"];

    goto LABEL_7;
  }

  if (!v7)
  {
LABEL_7:
    v9 = [a1 typeWithString:v8];
    goto LABEL_8;
  }

  if (v8)
  {
    v9 = [[a1 alloc] initWithUTType:v7 string:v8];
  }

  else
  {
    v9 = [a1 typeWithUTType:v7];
  }

LABEL_8:
  v11 = v9;

  return v11;
}

+ (id)typeWithUTType:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [a1 fileTypeCache];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v7 = [[a1 alloc] initWithUTType:v4];
    if ([v7 isDeclared])
    {
      v8 = [a1 fileTypeCache];
      [v8 setObject:v7 forKey:v5];
    }
  }

  v9 = v7;

  return v9;
}

+ (id)typeWithString:(id)a3
{
  v4 = a3;
  v5 = [a1 fileTypeCache];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [[a1 alloc] initWithString:v4];
    if ([v6 isDeclared])
    {
      v7 = [a1 fileTypeCache];
      [v7 setObject:v6 forKey:v4];
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