@interface _REActionKey
- (BOOL)isEqual:(id)a3;
- (_REActionKey)initWithIdentifier:(id)a3 actionType:(id)a4 relevanceProvidersHash:(unint64_t)a5;
@end

@implementation _REActionKey

- (_REActionKey)initWithIdentifier:(id)a3 actionType:(id)a4 relevanceProvidersHash:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _REActionKey;
  v11 = [(_REActionKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_actionType, a4);
    v12->_relevanceProvidersHash = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = v7;
      if (v7 == identifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:identifier];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      actionType = v5->_actionType;
      v12 = self->_actionType;
      v13 = v12;
      if (v12 == actionType)
      {
      }

      else
      {
        v14 = [(REDonatedActionIdentifierProviding *)v12 isEqual:actionType];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      v10 = self->_relevanceProvidersHash == v5->_relevanceProvidersHash;
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

@end