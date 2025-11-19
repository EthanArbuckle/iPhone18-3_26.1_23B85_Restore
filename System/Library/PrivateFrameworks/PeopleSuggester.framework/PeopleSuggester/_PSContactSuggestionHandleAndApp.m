@interface _PSContactSuggestionHandleAndApp
- (BOOL)isEqual:(id)a3;
- (_PSContactSuggestionHandleAndApp)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSContactSuggestionHandleAndApp

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handle hash];
  v4 = [(NSString *)self->_appBundleId hash]^ v3;
  return v4 ^ [(NSNumber *)self->_interactionMechanism hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(_PSContactSuggestionHandleAndApp *)self appBundleId];
        if (v7)
        {
          v8 = v7;
          v9 = [(_PSContactSuggestionHandleAndApp *)self handle];
          if (!v9)
          {
            v20 = 0;
LABEL_23:

            goto LABEL_24;
          }

          v10 = v9;
          v11 = [(_PSContactSuggestionHandleAndApp *)self interactionMechanism];
          if (!v11)
          {
            goto LABEL_17;
          }

          v12 = v11;
          v13 = [(_PSContactSuggestionHandleAndApp *)v6 appBundleId];
          if (!v13)
          {
            v20 = 0;
LABEL_21:

            goto LABEL_22;
          }

          v14 = v13;
          v15 = [(_PSContactSuggestionHandleAndApp *)v6 handle];
          if (!v15)
          {
            goto LABEL_19;
          }

          v16 = v15;
          v17 = [(_PSContactSuggestionHandleAndApp *)v6 interactionMechanism];

          if (v17)
          {
            v8 = [(_PSContactSuggestionHandleAndApp *)self appBundleId];
            v10 = [(_PSContactSuggestionHandleAndApp *)v6 appBundleId];
            if ([v8 isEqualToString:v10])
            {
              v12 = [(_PSContactSuggestionHandleAndApp *)self handle];
              v14 = [(_PSContactSuggestionHandleAndApp *)v6 handle];
              if ([v12 isEqualToString:v14])
              {
                v18 = [(_PSContactSuggestionHandleAndApp *)self interactionMechanism];
                v19 = [(_PSContactSuggestionHandleAndApp *)v6 interactionMechanism];
                v20 = [v18 isEqualToNumber:v19];

LABEL_20:
                goto LABEL_21;
              }

LABEL_19:
              v20 = 0;
              goto LABEL_20;
            }

LABEL_17:
            v20 = 0;
LABEL_22:

            goto LABEL_23;
          }
        }

        v20 = 0;
LABEL_24:

        goto LABEL_25;
      }
    }

    v20 = 0;
  }

LABEL_25:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_PSContactSuggestionHandleAndApp allocWithZone:?]];
  v5 = [(_PSContactSuggestionHandleAndApp *)self handle];
  [(_PSContactSuggestionHandleAndApp *)v4 setHandle:v5];

  v6 = [(_PSContactSuggestionHandleAndApp *)self appBundleId];
  [(_PSContactSuggestionHandleAndApp *)v4 setAppBundleId:v6];

  v7 = [(_PSContactSuggestionHandleAndApp *)self interactionMechanism];
  [(_PSContactSuggestionHandleAndApp *)v4 setInteractionMechanism:v7];

  return v4;
}

- (_PSContactSuggestionHandleAndApp)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _PSContactSuggestionHandleAndApp;
  v5 = [(_PSContactSuggestionHandleAndApp *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionMechanism"];
    interactionMechanism = v5->_interactionMechanism;
    v5->_interactionMechanism = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"handle"];
  [v5 encodeObject:self->_appBundleId forKey:@"appBundleId"];
  [v5 encodeObject:self->_interactionMechanism forKey:@"interactionMechanism"];
}

@end