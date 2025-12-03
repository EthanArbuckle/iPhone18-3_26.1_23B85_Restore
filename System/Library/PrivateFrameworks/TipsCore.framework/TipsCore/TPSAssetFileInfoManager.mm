@interface TPSAssetFileInfoManager
- (BOOL)isEqual:(id)equal;
- (TPSAssetFileInfoManager)initWithCoder:(id)coder;
- (TPSAssetFileInfoManager)initWithDictionary:(id)dictionary clientConditions:(id)conditions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)fileInfoIdentifierWithMainIdentifier:(id)identifier userInterfaceStyle:(int64_t)style;
- (id)fileInfoWithMainIdentifier:(id)identifier userInterfaceStyle:(int64_t)style scale:(int64_t)scale;
- (id)filesFromDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)addNewAssetInfoFromFileMap:(id)map;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssetFileInfoManager

- (TPSAssetFileInfoManager)initWithDictionary:(id)dictionary clientConditions:(id)conditions
{
  dictionaryCopy = dictionary;
  conditionsCopy = conditions;
  v20.receiver = self;
  v20.super_class = TPSAssetFileInfoManager;
  v8 = [(TPSSerializableObject *)&v20 initWithDictionary:dictionaryCopy];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__TPSAssetFileInfoManager_initWithDictionary_clientConditions___block_invoke;
    v16[3] = &unk_1E8102A78;
    v17 = conditionsCopy;
    v10 = v8;
    v18 = v10;
    v11 = v9;
    v19 = v11;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v16];
    if (![v11 count])
    {

      v14 = 0;
      goto LABEL_6;
    }

    v12 = [v11 copy];
    fileMap = v10->_fileMap;
    v10->_fileMap = v12;
  }

  v14 = v8;
LABEL_6:

  return v14;
}

void __63__TPSAssetFileInfoManager_initWithDictionary_clientConditions___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v7 = a2;
  if (![v6 count])
  {
    goto LABEL_3;
  }

  v8 = [v5 TPSSafeArrayForKey:@"conditions"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TPSAssetFileInfoManager_initWithDictionary_clientConditions___block_invoke_2;
  v11[3] = &unk_1E8101FA0;
  v12 = a1[4];
  v9 = [v8 na_firstObjectPassingTest:v11];

  if (!v9)
  {
LABEL_3:
    v9 = v5;
  }

  v10 = [a1[5] filesFromDictionary:v9];
  [a1[6] setObject:v10 forKeyedSubscript:v7];
}

uint64_t __63__TPSAssetFileInfoManager_initWithDictionary_clientConditions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 TPSSafeStringForKey:@"ruleId"];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

- (id)filesFromDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [dictionary TPSSafeArrayForKey:@"files"];
  v4 = [v3 count];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [TPSAssetFileInfo alloc];
          v13 = [(TPSAssetFileInfo *)v12 initWithDictionary:v11, v17];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  if ([v5 count])
  {
    v14 = [v5 copy];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TPSAssetFileInfoManager;
  v4 = [(TPSSerializableObject *)&v7 copyWithZone:zone];
  fileMap = [(TPSAssetFileInfoManager *)self fileMap];
  [v4 setFileMap:fileMap];

  return v4;
}

- (TPSAssetFileInfoManager)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = TPSAssetFileInfoManager;
  v5 = [(TPSSerializableObject *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"fileMap"];
    fileMap = v5->_fileMap;
    v5->_fileMap = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSAssetFileInfoManager;
  coderCopy = coder;
  [(TPSSerializableObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(TPSAssetFileInfoManager *)self fileMap:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"fileMap"];
}

- (id)fileInfoIdentifierWithMainIdentifier:(id)identifier userInterfaceStyle:(int64_t)style
{
  v4 = [(TPSAssetFileInfoManager *)self fileInfoWithMainIdentifier:identifier userInterfaceStyle:style scale:0x7FFFFFFFFFFFFFFFLL];
  identifier = [v4 identifier];

  return identifier;
}

- (id)fileInfoWithMainIdentifier:(id)identifier userInterfaceStyle:(int64_t)style scale:(int64_t)scale
{
  identifierCopy = identifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  fileMap = [(TPSAssetFileInfoManager *)self fileMap];
  v10 = [fileMap objectForKeyedSubscript:identifierCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__TPSAssetFileInfoManager_fileInfoWithMainIdentifier_userInterfaceStyle_scale___block_invoke;
  v15[3] = &unk_1E8102AA0;
  v15[4] = &v22;
  v15[5] = &v16;
  v15[6] = style;
  v15[7] = scale;
  [v10 enumerateObjectsUsingBlock:v15];
  if (!v23[5])
  {
    objc_storeStrong(v23 + 5, v17[5]);
    if (!v23[5])
    {
      if ([(TPSAssetFileInfoManager *)self allowsFallBack])
      {
        firstObject = [v10 firstObject];
        v12 = v23[5];
        v23[5] = firstObject;
      }
    }
  }

  v13 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v13;
}

void __79__TPSAssetFileInfoManager_fileInfoWithMainIdentifier_userInterfaceStyle_scale___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 userInterface] == a1[6])
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v7 = a1[7];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 != [v10 scale])
    {
      v8 = *(a1[4] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;
    }
  }

  if (*(*(a1[4] + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)addNewAssetInfoFromFileMap:(id)map
{
  mapCopy = map;
  if ([mapCopy count])
  {
    fileMap = [(TPSAssetFileInfoManager *)self fileMap];
    v6 = [fileMap mutableCopy];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__TPSAssetFileInfoManager_addNewAssetInfoFromFileMap___block_invoke;
    v15 = &unk_1E8102AC8;
    selfCopy = self;
    v7 = v6;
    v17 = v7;
    [mapCopy enumerateKeysAndObjectsUsingBlock:&v12];
    v8 = [(TPSAssetFileInfoManager *)self fileMap:v12];
    v9 = [v8 count];
    v10 = [v7 count];

    if (v9 != v10)
    {
      v11 = [v7 copy];
      [(TPSAssetFileInfoManager *)self setFileMap:v11];
    }
  }
}

void __54__TPSAssetFileInfoManager_addNewAssetInfoFromFileMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) fileMap];
  v7 = [v6 objectForKeyedSubscript:v8];

  if (!v7)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v8];
  }
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = TPSAssetFileInfoManager;
  v4 = [(TPSSerializableObject *)&v12 debugDescription];
  v5 = [v3 initWithString:v4];

  fileMap = [(TPSAssetFileInfoManager *)self fileMap];
  v7 = [fileMap debugDescription];
  [v5 appendFormat:@"\n  %@ = %@", @"fileMap", v7];

  fileMap2 = [(TPSAssetFileInfoManager *)self fileMap];
  allValues = [fileMap2 allValues];
  v10 = [allValues debugDescription];
  [v5 appendFormat:@"\n  %@ = %@", @"files", v10];

  [v5 appendFormat:@"\n  %@ = %d", @"allowsFallBack", -[TPSAssetFileInfoManager allowsFallBack](self, "allowsFallBack")];

  return v5;
}

id __38__TPSAssetFileInfoManager_na_identity__block_invoke()
{
  if (TPSAssetFileInfoManagerKey_block_invoke_na_once_token_0 != -1)
  {
    __38__TPSAssetFileInfoManager_na_identity__block_invoke_cold_1();
  }

  v1 = TPSAssetFileInfoManagerKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __38__TPSAssetFileInfoManager_na_identity__block_invoke_2()
{
  v0 = __38__TPSAssetFileInfoManager_na_identity__block_invoke_3();
  v1 = TPSAssetFileInfoManagerKey_block_invoke_na_once_object_0;
  TPSAssetFileInfoManagerKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __38__TPSAssetFileInfoManager_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_42];
  v2 = [v0 build];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end