@interface TPSNotification
- (BOOL)isEqual:(id)a3;
- (TPSNotification)initWithCoder:(id)a3;
- (TPSNotification)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSNotification

- (TPSNotification)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TPSNotification;
  v5 = [(TPSSerializableObject *)&v12 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 TPSSafeStringForKey:@"title"];
  title = v5->_title;
  v5->_title = v6;

  v8 = [v4 TPSSafeStringForKey:@"text"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = TPSNotification;
  v4 = [(TPSSerializableObject *)&v9 copyWithZone:a3];
  v5 = [(TPSNotification *)self title];
  [v4 setTitle:v5];

  v6 = [(TPSNotification *)self text];
  [v4 setText:v6];

  v7 = [(TPSNotification *)self assets];
  [v4 setAssets:v7];

  return v4;
}

- (TPSNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSNotification;
  v5 = [(TPSSerializableObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = TPSNotification;
  v4 = a3;
  [(TPSSerializableObject *)&v8 encodeWithCoder:v4];
  v5 = [(TPSNotification *)self title:v8.receiver];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(TPSNotification *)self text];
  [v4 encodeObject:v6 forKey:@"text"];

  v7 = [(TPSNotification *)self assets];
  [v4 encodeObject:v7 forKey:@"assets"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v14.receiver = self;
  v14.super_class = TPSNotification;
  v4 = [(TPSSerializableObject *)&v14 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSNotification *)self title];

  if (v6)
  {
    v7 = [(TPSNotification *)self title];
    [v5 appendFormat:@"\n  %@ = %@", @"title", v7];
  }

  v8 = [(TPSNotification *)self text];

  if (v8)
  {
    v9 = [(TPSNotification *)self text];
    [v5 appendFormat:@"\n  %@ = %@", @"text", v9];
  }

  v10 = [(TPSNotification *)self assets];

  if (v10)
  {
    v11 = [(TPSNotification *)self assets];
    v12 = [v11 debugDescription];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end