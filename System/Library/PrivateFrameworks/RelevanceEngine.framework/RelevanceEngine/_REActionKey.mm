@interface _REActionKey
- (BOOL)isEqual:(id)equal;
- (_REActionKey)initWithIdentifier:(id)identifier actionType:(id)type relevanceProvidersHash:(unint64_t)hash;
@end

@implementation _REActionKey

- (_REActionKey)initWithIdentifier:(id)identifier actionType:(id)type relevanceProvidersHash:(unint64_t)hash
{
  identifierCopy = identifier;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = _REActionKey;
  v11 = [(_REActionKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    objc_storeStrong(&v12->_actionType, type);
    v12->_relevanceProvidersHash = hash;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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