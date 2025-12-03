@interface TPSNotification
- (BOOL)isEqual:(id)equal;
- (TPSNotification)initWithCoder:(id)coder;
- (TPSNotification)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSNotification

- (TPSNotification)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TPSNotification;
  v5 = [(TPSSerializableObject *)&v12 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [dictionaryCopy TPSSafeStringForKey:@"title"];
  title = v5->_title;
  v5->_title = v6;

  v8 = [dictionaryCopy TPSSafeStringForKey:@"text"];
  text = v5->_text;
  v5->_text = v8;

  if ([(NSString *)v5->_title length]|| [(NSString *)v5->_text length])
  {
LABEL_4:
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = TPSNotification;
  v4 = [(TPSSerializableObject *)&v9 copyWithZone:zone];
  title = [(TPSNotification *)self title];
  [v4 setTitle:title];

  text = [(TPSNotification *)self text];
  [v4 setText:text];

  assets = [(TPSNotification *)self assets];
  [v4 setAssets:assets];

  return v4;
}

- (TPSNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSNotification;
  v5 = [(TPSSerializableObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = TPSNotification;
  coderCopy = coder;
  [(TPSSerializableObject *)&v8 encodeWithCoder:coderCopy];
  v5 = [(TPSNotification *)self title:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"title"];

  text = [(TPSNotification *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  assets = [(TPSNotification *)self assets];
  [coderCopy encodeObject:assets forKey:@"assets"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v14.receiver = self;
  v14.super_class = TPSNotification;
  v4 = [(TPSSerializableObject *)&v14 debugDescription];
  v5 = [v3 initWithString:v4];

  title = [(TPSNotification *)self title];

  if (title)
  {
    title2 = [(TPSNotification *)self title];
    [v5 appendFormat:@"\n  %@ = %@", @"title", title2];
  }

  text = [(TPSNotification *)self text];

  if (text)
  {
    text2 = [(TPSNotification *)self text];
    [v5 appendFormat:@"\n  %@ = %@", @"text", text2];
  }

  assets = [(TPSNotification *)self assets];

  if (assets)
  {
    assets2 = [(TPSNotification *)self assets];
    v12 = [assets2 debugDescription];
    [v5 appendFormat:@"\n  %@ = %@", @"assets", v12];
  }

  return v5;
}

id __30__TPSNotification_na_identity__block_invoke()
{
  if (TPSNotificationAssetsKey_block_invoke_na_once_token_0 != -1)
  {
    __30__TPSNotification_na_identity__block_invoke_cold_1();
  }

  v1 = TPSNotificationAssetsKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __30__TPSNotification_na_identity__block_invoke_2()
{
  v0 = __30__TPSNotification_na_identity__block_invoke_3();
  v1 = TPSNotificationAssetsKey_block_invoke_na_once_object_0;
  TPSNotificationAssetsKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __30__TPSNotification_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_33];
  v2 = [v0 appendCharacteristic:&__block_literal_global_35];
  v3 = [v0 appendCharacteristic:&__block_literal_global_38];
  v4 = [v0 build];

  return v4;
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