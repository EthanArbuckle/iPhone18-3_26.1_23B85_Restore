@interface WFChooseFromMenuItemSynonym
- (BOOL)isEqual:(id)equal;
- (WFChooseFromMenuItemSynonym)initWithIdentity:(id)identity synonym:(id)synonym;
@end

@implementation WFChooseFromMenuItemSynonym

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  identity = self->_identity;
  identity = [v6 identity];
  v9 = identity;
  v10 = identity;
  v11 = v10;
  if (v9 == v10)
  {

LABEL_12:
    synonym = self->_synonym;
    synonym = [v6 synonym];
    v15 = synonym;
    v16 = synonym;
    v9 = v16;
    if (v15 == v16)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v15 && v16)
      {
        LOBYTE(v12) = [(WFVariableString *)v15 isEqual:v16];
      }
    }

    goto LABEL_19;
  }

  LOBYTE(v12) = 0;
  if (v9 && v10)
  {
    v12 = [(NSUUID *)v9 isEqual:v10];

    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v15 = v10;
LABEL_19:

LABEL_20:
  return v12;
}

- (WFChooseFromMenuItemSynonym)initWithIdentity:(id)identity synonym:(id)synonym
{
  identityCopy = identity;
  synonymCopy = synonym;
  v13.receiver = self;
  v13.super_class = WFChooseFromMenuItemSynonym;
  v9 = [(WFChooseFromMenuItemSynonym *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeStrong(&v10->_synonym, synonym);
    v11 = v10;
  }

  return v10;
}

@end