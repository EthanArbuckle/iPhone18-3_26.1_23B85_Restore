@interface SVXDeviceSetupOptions
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeviceSetupOptions)initWithCoder:(id)a3;
- (SVXDeviceSetupOptions)initWithLanguageCode:(id)a3 gender:(int64_t)a4 hasActiveAccount:(int64_t)a5 isNewsRestricted:(int64_t)a6;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeviceSetupOptions

- (void)encodeWithCoder:(id)a3
{
  languageCode = self->_languageCode;
  v5 = a3;
  [v5 encodeObject:languageCode forKey:@"SVXDeviceSetupOptions::languageCode"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_gender];
  [v5 encodeObject:v6 forKey:@"SVXDeviceSetupOptions::gender"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hasActiveAccount];
  [v5 encodeObject:v7 forKey:@"SVXDeviceSetupOptions::hasActiveAccount"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_isNewsRestricted];
  [v5 encodeObject:v8 forKey:@"SVXDeviceSetupOptions::isNewsRestricted"];
}

- (SVXDeviceSetupOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::languageCode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::gender"];
  v7 = [v6 integerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::hasActiveAccount"];
  v9 = [v8 integerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::isNewsRestricted"];

  v11 = [v10 integerValue];
  v12 = [(SVXDeviceSetupOptions *)self initWithLanguageCode:v5 gender:v7 hasActiveAccount:v9 isNewsRestricted:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      gender = self->_gender;
      if (gender == [(SVXDeviceSetupOptions *)v5 gender]&& (hasActiveAccount = self->_hasActiveAccount, hasActiveAccount == [(SVXDeviceSetupOptions *)v5 hasActiveAccount]) && (isNewsRestricted = self->_isNewsRestricted, isNewsRestricted == [(SVXDeviceSetupOptions *)v5 isNewsRestricted]))
      {
        v9 = [(SVXDeviceSetupOptions *)v5 languageCode];
        languageCode = self->_languageCode;
        v11 = languageCode == v9 || [(NSString *)languageCode isEqual:v9];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_languageCode hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_gender];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hasActiveAccount];
  v7 = [v6 hash];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_isNewsRestricted];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v18.receiver = self;
  v18.super_class = SVXDeviceSetupOptions;
  v5 = [(SVXDeviceSetupOptions *)&v18 description];
  gender = self->_gender;
  if (gender > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C66CC8[gender];
  }

  languageCode = self->_languageCode;
  v9 = v7;
  hasActiveAccount = self->_hasActiveAccount;
  if (hasActiveAccount > 2)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_279C66788[hasActiveAccount];
  }

  v12 = v11;
  isNewsRestricted = self->_isNewsRestricted;
  if (isNewsRestricted > 2)
  {
    v14 = @"(unknown)";
  }

  else
  {
    v14 = off_279C66788[isNewsRestricted];
  }

  v15 = v14;
  v16 = [v4 initWithFormat:@"%@ {languageCode = %@, gender = %@, hasActiveAccount = %@, isNewsRestricted = %@}", v5, languageCode, v9, v12, v15];

  return v16;
}

- (SVXDeviceSetupOptions)initWithLanguageCode:(id)a3 gender:(int64_t)a4 hasActiveAccount:(int64_t)a5 isNewsRestricted:(int64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SVXDeviceSetupOptions;
  v11 = [(SVXDeviceSetupOptions *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v12;

    v11->_gender = a4;
    v11->_hasActiveAccount = a5;
    v11->_isNewsRestricted = a6;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeviceSetupOptionsMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeviceSetupOptionsMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeviceSetupOptions *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeviceSetupOptionsMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeviceSetupOptionsMutation *)v4 generate];

  return v5;
}

@end