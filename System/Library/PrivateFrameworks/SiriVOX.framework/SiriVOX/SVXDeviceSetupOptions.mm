@interface SVXDeviceSetupOptions
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeviceSetupOptions)initWithCoder:(id)coder;
- (SVXDeviceSetupOptions)initWithLanguageCode:(id)code gender:(int64_t)gender hasActiveAccount:(int64_t)account isNewsRestricted:(int64_t)restricted;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeviceSetupOptions

- (void)encodeWithCoder:(id)coder
{
  languageCode = self->_languageCode;
  coderCopy = coder;
  [coderCopy encodeObject:languageCode forKey:@"SVXDeviceSetupOptions::languageCode"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_gender];
  [coderCopy encodeObject:v6 forKey:@"SVXDeviceSetupOptions::gender"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hasActiveAccount];
  [coderCopy encodeObject:v7 forKey:@"SVXDeviceSetupOptions::hasActiveAccount"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_isNewsRestricted];
  [coderCopy encodeObject:v8 forKey:@"SVXDeviceSetupOptions::isNewsRestricted"];
}

- (SVXDeviceSetupOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::languageCode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::gender"];
  integerValue = [v6 integerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::hasActiveAccount"];
  integerValue2 = [v8 integerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupOptions::isNewsRestricted"];

  integerValue3 = [v10 integerValue];
  v12 = [(SVXDeviceSetupOptions *)self initWithLanguageCode:v5 gender:integerValue hasActiveAccount:integerValue2 isNewsRestricted:integerValue3];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      gender = self->_gender;
      if (gender == [(SVXDeviceSetupOptions *)v5 gender]&& (hasActiveAccount = self->_hasActiveAccount, hasActiveAccount == [(SVXDeviceSetupOptions *)v5 hasActiveAccount]) && (isNewsRestricted = self->_isNewsRestricted, isNewsRestricted == [(SVXDeviceSetupOptions *)v5 isNewsRestricted]))
      {
        languageCode = [(SVXDeviceSetupOptions *)v5 languageCode];
        languageCode = self->_languageCode;
        v11 = languageCode == languageCode || [(NSString *)languageCode isEqual:languageCode];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SVXDeviceSetupOptions)initWithLanguageCode:(id)code gender:(int64_t)gender hasActiveAccount:(int64_t)account isNewsRestricted:(int64_t)restricted
{
  codeCopy = code;
  v15.receiver = self;
  v15.super_class = SVXDeviceSetupOptions;
  v11 = [(SVXDeviceSetupOptions *)&v15 init];
  if (v11)
  {
    v12 = [codeCopy copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v12;

    v11->_gender = gender;
    v11->_hasActiveAccount = account;
    v11->_isNewsRestricted = restricted;
  }

  return v11;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeviceSetupOptionsMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeviceSetupOptionsMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeviceSetupOptions *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeviceSetupOptionsMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeviceSetupOptionsMutation *)v4 generate];

  return generate;
}

@end