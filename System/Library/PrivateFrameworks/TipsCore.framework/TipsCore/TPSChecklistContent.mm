@interface TPSChecklistContent
+ (id)na_identity;
- (TPSChecklistContent)initWithCoder:(id)a3;
- (TPSChecklistContent)initWithDictionary:(id)a3 metadata:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSChecklistContent

- (TPSChecklistContent)initWithDictionary:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 TPSSafeDictionaryForKey:@"tipIcon"];
  if (v8 && (v9 = [v6 mutableCopy], objc_msgSend(v9, "setObject:forKeyedSubscript:", v8, @"assets"), v9))
  {
    v10 = [v9 copy];

    v11 = 0;
  }

  else
  {
    v11 = 1;
    v10 = v6;
  }

  v16.receiver = self;
  v16.super_class = TPSChecklistContent;
  v12 = [(TPSContent *)&v16 initWithDictionary:v10 metadata:v7];
  if ((v11 & 1) == 0)
  {
  }

  if (v12)
  {
    v13 = [v6 TPSSafeStringForKey:@"subtitle"];
    subtitle = v12->_subtitle;
    v12->_subtitle = v13;
  }

  return v12;
}

- (TPSChecklistContent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSChecklistContent;
  v5 = [(TPSContent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSChecklistContent;
  v4 = a3;
  [(TPSContent *)&v6 encodeWithCoder:v4];
  v5 = [(TPSChecklistContent *)self subtitle:v6.receiver];
  [v4 encodeObject:v5 forKey:@"subtitle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TPSChecklistContent;
  v4 = [(TPSContent *)&v7 copyWithZone:a3];
  v5 = [(TPSChecklistContent *)self subtitle];
  [v4 setSubtitle:v5];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSChecklistContent;
  v4 = [(TPSContent *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSChecklistContent *)self subtitle];

  if (v6)
  {
    v7 = [(TPSChecklistContent *)self subtitle];
    [v5 appendFormat:@"  %@ = %@\n", @"subtitle", v7];
  }

  return v5;
}

+ (id)na_identity
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__TPSChecklistContent_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = a1;
  v2 = __34__TPSChecklistContent_na_identity__block_invoke(v4);

  return v2;
}

id __34__TPSChecklistContent_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__TPSChecklistContent_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (TPSChecklistTipIconKey_block_invoke_na_once_token_0 != -1)
  {
    dispatch_once(&TPSChecklistTipIconKey_block_invoke_na_once_token_0, block);
  }

  v1 = TPSChecklistTipIconKey_block_invoke_na_once_object_0;

  return v1;
}

void __34__TPSChecklistContent_na_identity__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__TPSChecklistContent_na_identity__block_invoke_3;
  v3[3] = &__block_descriptor_40_e17___NAIdentity_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __34__TPSChecklistContent_na_identity__block_invoke_3(v3);
  v2 = TPSChecklistTipIconKey_block_invoke_na_once_object_0;
  TPSChecklistTipIconKey_block_invoke_na_once_object_0 = v1;
}

id __34__TPSChecklistContent_na_identity__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69B3788];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___TPSChecklistContent;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];

  v4 = [v3 appendCharacteristic:&__block_literal_global_11];
  v5 = [v3 build];

  return v5;
}

@end