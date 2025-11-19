@interface _SVXDeviceSetupOptionsMutation
- (_SVXDeviceSetupOptionsMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SVXDeviceSetupOptionsMutation

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel)
  {
    v4 = [[SVXDeviceSetupOptions alloc] initWithLanguageCode:self->_languageCode gender:self->_gender hasActiveAccount:self->_hasActiveAccount isNewsRestricted:self->_isNewsRestricted];
    goto LABEL_5;
  }

  if ((*&self->_mutationFlags & 1) == 0)
  {
    v4 = [(SVXDeviceSetupOptions *)baseModel copy];
LABEL_5:
    v5 = v4;
    goto LABEL_17;
  }

  if ((*&self->_mutationFlags & 2) != 0)
  {
    v6 = self->_languageCode;
  }

  else
  {
    v6 = [(SVXDeviceSetupOptions *)baseModel languageCode];
  }

  v7 = v6;
  mutationFlags = self->_mutationFlags;
  if ((mutationFlags & 4) == 0)
  {
    gender = [(SVXDeviceSetupOptions *)self->_baseModel gender];
    mutationFlags = self->_mutationFlags;
    if ((mutationFlags & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    hasActiveAccount = [(SVXDeviceSetupOptions *)self->_baseModel hasActiveAccount];
    if ((*&self->_mutationFlags & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    isNewsRestricted = [(SVXDeviceSetupOptions *)self->_baseModel isNewsRestricted];
    goto LABEL_16;
  }

  gender = self->_gender;
  if ((*&self->_mutationFlags & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  hasActiveAccount = self->_hasActiveAccount;
  if ((mutationFlags & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  isNewsRestricted = self->_isNewsRestricted;
LABEL_16:
  v5 = [[SVXDeviceSetupOptions alloc] initWithLanguageCode:v7 gender:gender hasActiveAccount:hasActiveAccount isNewsRestricted:isNewsRestricted];

LABEL_17:

  return v5;
}

- (_SVXDeviceSetupOptionsMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SVXDeviceSetupOptionsMutation;
  v6 = [(_SVXDeviceSetupOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

@end