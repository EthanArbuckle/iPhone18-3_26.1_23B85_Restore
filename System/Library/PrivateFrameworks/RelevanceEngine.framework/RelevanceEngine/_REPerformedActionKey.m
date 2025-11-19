@interface _REPerformedActionKey
+ (id)keyForBundleIdentifier:(id)a3 identifier:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation _REPerformedActionKey

+ (id)keyForBundleIdentifier:(id)a3 identifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = v7[2];
  v7[2] = v5;
  v9 = v5;

  v10 = v7[1];
  v7[1] = v6;

  return v7;
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
      bundleIdentifier = v5->_bundleIdentifier;
      v7 = self->_bundleIdentifier;
      v8 = v7;
      if (v7 == bundleIdentifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:bundleIdentifier];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      identifier = self->_identifier;
      v12 = v5->_identifier;
      v13 = identifier;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(REDonatedActionIdentifierProviding *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

@end