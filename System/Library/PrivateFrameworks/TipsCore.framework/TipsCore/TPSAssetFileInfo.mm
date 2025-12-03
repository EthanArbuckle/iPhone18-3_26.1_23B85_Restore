@interface TPSAssetFileInfo
- (BOOL)isEqual:(id)equal;
- (TPSAssetFileInfo)initWithCoder:(id)coder;
- (TPSAssetFileInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssetFileInfo

- (TPSAssetFileInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = TPSAssetFileInfo;
  v5 = [(TPSSerializableObject *)&v15 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"fileId"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (![(NSString *)v5->_identifier length])
    {
      v13 = 0;
      goto LABEL_8;
    }

    v8 = [dictionaryCopy TPSSafeIntegerForKey:@"scale"];
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8;
    }

    v5->_scale = v9;
    v10 = [dictionaryCopy TPSSafeStringForKey:@"userInterface"];
    v5->_userInterface = [v10 isEqualToString:@"dark"];
    v11 = [[TPSSize alloc] initWithDictionary:dictionaryCopy];
    size = v5->_size;
    v5->_size = v11;
  }

  v13 = v5;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TPSAssetFileInfo;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:zone];
  [v4 setScale:{-[TPSAssetFileInfo scale](self, "scale")}];
  [v4 setUserInterface:{-[TPSAssetFileInfo userInterface](self, "userInterface")}];
  identifier = [(TPSAssetFileInfo *)self identifier];
  [v4 setIdentifier:identifier];

  v6 = [(TPSAssetFileInfo *)self size];
  [v4 setSize:v6];

  return v4;
}

- (TPSAssetFileInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSAssetFileInfo;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_scale = [coderCopy decodeIntegerForKey:@"scale"];
    v5->_userInterface = [coderCopy decodeIntegerForKey:@"userInterface"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileId"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    size = v5->_size;
    v5->_size = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSAssetFileInfo;
  coderCopy = coder;
  [(TPSSerializableObject *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[TPSAssetFileInfo scale](self forKey:{"scale", v7.receiver, v7.super_class), @"scale"}];
  [coderCopy encodeInteger:-[TPSAssetFileInfo userInterface](self forKey:{"userInterface"), @"userInterface"}];
  identifier = [(TPSAssetFileInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"fileId"];

  v6 = [(TPSAssetFileInfo *)self size];
  [coderCopy encodeObject:v6 forKey:@"size"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v11.receiver = self;
  v11.super_class = TPSAssetFileInfo;
  v4 = [(TPSSerializableObject *)&v11 debugDescription];
  v5 = [v3 initWithString:v4];

  identifier = [(TPSAssetFileInfo *)self identifier];
  [v5 appendFormat:@"\n  %@ = %@", @"fileId", identifier];

  [v5 appendFormat:@"\n  %@ = %ld", @"userInterface", -[TPSAssetFileInfo userInterface](self, "userInterface")];
  [v5 appendFormat:@"\n  %@ = %ld", @"scale", -[TPSAssetFileInfo scale](self, "scale")];
  v7 = [(TPSAssetFileInfo *)self size];

  if (v7)
  {
    v8 = [(TPSAssetFileInfo *)self size];
    v9 = [v8 debugDescription];
    [v5 appendFormat:@"\n  %@ = %@", @"size", v9];
  }

  return v5;
}

id __31__TPSAssetFileInfo_na_identity__block_invoke()
{
  if (TPSAssetFileSizeKey_block_invoke_na_once_token_0 != -1)
  {
    __31__TPSAssetFileInfo_na_identity__block_invoke_cold_1();
  }

  v1 = TPSAssetFileSizeKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __31__TPSAssetFileInfo_na_identity__block_invoke_2()
{
  v0 = __31__TPSAssetFileInfo_na_identity__block_invoke_3();
  v1 = TPSAssetFileSizeKey_block_invoke_na_once_object_0;
  TPSAssetFileSizeKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __31__TPSAssetFileInfo_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_36];
  v2 = [v0 appendCharacteristic:&__block_literal_global_39];
  v3 = [v0 appendCharacteristic:&__block_literal_global_42_0];
  v4 = [v0 appendCharacteristic:&__block_literal_global_45];
  v5 = [v0 build];

  return v5;
}

uint64_t __31__TPSAssetFileInfo_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 scale];

  return [v2 numberWithInteger:v3];
}

uint64_t __31__TPSAssetFileInfo_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 userInterface];

  return [v2 numberWithInteger:v3];
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