@interface SBSQuickActionConfigurationRequest
- (SBSQuickActionConfigurationRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_requestQuickActionControlWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind quickActionCategory:(unint64_t)category type:(unint64_t)type location:(int64_t)location;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSQuickActionConfigurationRequest

- (void)_requestQuickActionControlWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind quickActionCategory:(unint64_t)category type:(unint64_t)type location:(int64_t)location
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  if (location)
  {
    if (location != 1)
    {
      goto LABEL_6;
    }

    v16 = 16;
  }

  else
  {
    v16 = 8;
  }

  v17 = [[SBSQuickActionControlRequest alloc] initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy kind:kindCopy quickActionCategory:category type:type location:location];
  v18 = *(&self->super.isa + v16);
  *(&self->super.isa + v16) = v17;

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_leadingQuickActionControlRequest);
  objc_storeStrong(v4 + 2, self->_trailingQuickActionControlRequest);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  leadingQuickActionControlRequest = self->_leadingQuickActionControlRequest;
  coderCopy = coder;
  [coderCopy encodeObject:leadingQuickActionControlRequest forKey:@"kSBSQuickActionConfigurationLeadingControlRequest"];
  [coderCopy encodeObject:self->_trailingQuickActionControlRequest forKey:@"kSBSQuickActionConfigurationTrailingControlRequest"];
}

- (SBSQuickActionConfigurationRequest)initWithCoder:(id)coder
{
  v15[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SBSQuickActionConfigurationRequest;
  v5 = [(SBSQuickActionConfigurationRequest *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSBSQuickActionConfigurationLeadingControlRequest"];
    leadingQuickActionControlRequest = v5->_leadingQuickActionControlRequest;
    v5->_leadingQuickActionControlRequest = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSBSQuickActionConfigurationTrailingControlRequest"];
    trailingQuickActionControlRequest = v5->_trailingQuickActionControlRequest;
    v5->_trailingQuickActionControlRequest = v11;
  }

  return v5;
}

@end