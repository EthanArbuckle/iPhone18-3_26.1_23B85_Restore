@interface _PSContactSuggestionHandleAndApp
- (BOOL)isEqual:(id)equal;
- (_PSContactSuggestionHandleAndApp)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSContactSuggestionHandleAndApp

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handle hash];
  v4 = [(NSString *)self->_appBundleId hash]^ v3;
  return v4 ^ [(NSNumber *)self->_interactionMechanism hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        appBundleId = [(_PSContactSuggestionHandleAndApp *)self appBundleId];
        if (appBundleId)
        {
          appBundleId3 = appBundleId;
          handle = [(_PSContactSuggestionHandleAndApp *)self handle];
          if (!handle)
          {
            v20 = 0;
LABEL_23:

            goto LABEL_24;
          }

          appBundleId4 = handle;
          interactionMechanism = [(_PSContactSuggestionHandleAndApp *)self interactionMechanism];
          if (!interactionMechanism)
          {
            goto LABEL_17;
          }

          handle3 = interactionMechanism;
          appBundleId2 = [(_PSContactSuggestionHandleAndApp *)v6 appBundleId];
          if (!appBundleId2)
          {
            v20 = 0;
LABEL_21:

            goto LABEL_22;
          }

          handle4 = appBundleId2;
          handle2 = [(_PSContactSuggestionHandleAndApp *)v6 handle];
          if (!handle2)
          {
            goto LABEL_19;
          }

          v16 = handle2;
          interactionMechanism2 = [(_PSContactSuggestionHandleAndApp *)v6 interactionMechanism];

          if (interactionMechanism2)
          {
            appBundleId3 = [(_PSContactSuggestionHandleAndApp *)self appBundleId];
            appBundleId4 = [(_PSContactSuggestionHandleAndApp *)v6 appBundleId];
            if ([appBundleId3 isEqualToString:appBundleId4])
            {
              handle3 = [(_PSContactSuggestionHandleAndApp *)self handle];
              handle4 = [(_PSContactSuggestionHandleAndApp *)v6 handle];
              if ([handle3 isEqualToString:handle4])
              {
                interactionMechanism3 = [(_PSContactSuggestionHandleAndApp *)self interactionMechanism];
                interactionMechanism4 = [(_PSContactSuggestionHandleAndApp *)v6 interactionMechanism];
                v20 = [interactionMechanism3 isEqualToNumber:interactionMechanism4];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_PSContactSuggestionHandleAndApp allocWithZone:?]];
  handle = [(_PSContactSuggestionHandleAndApp *)self handle];
  [(_PSContactSuggestionHandleAndApp *)v4 setHandle:handle];

  appBundleId = [(_PSContactSuggestionHandleAndApp *)self appBundleId];
  [(_PSContactSuggestionHandleAndApp *)v4 setAppBundleId:appBundleId];

  interactionMechanism = [(_PSContactSuggestionHandleAndApp *)self interactionMechanism];
  [(_PSContactSuggestionHandleAndApp *)v4 setInteractionMechanism:interactionMechanism];

  return v4;
}

- (_PSContactSuggestionHandleAndApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _PSContactSuggestionHandleAndApp;
  v5 = [(_PSContactSuggestionHandleAndApp *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    appBundleId = v5->_appBundleId;
    v5->_appBundleId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interactionMechanism"];
    interactionMechanism = v5->_interactionMechanism;
    v5->_interactionMechanism = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"handle"];
  [coderCopy encodeObject:self->_appBundleId forKey:@"appBundleId"];
  [coderCopy encodeObject:self->_interactionMechanism forKey:@"interactionMechanism"];
}

@end