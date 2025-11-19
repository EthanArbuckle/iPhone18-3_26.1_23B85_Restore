@interface SBSQuickActionConfigurationRequest
- (SBSQuickActionConfigurationRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_requestQuickActionControlWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 quickActionCategory:(unint64_t)a6 type:(unint64_t)a7 location:(int64_t)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSQuickActionConfigurationRequest

- (void)_requestQuickActionControlWithExtensionBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 kind:(id)a5 quickActionCategory:(unint64_t)a6 type:(unint64_t)a7 location:(int64_t)a8
{
  v19 = a3;
  v14 = a4;
  v15 = a5;
  if (a8)
  {
    if (a8 != 1)
    {
      goto LABEL_6;
    }

    v16 = 16;
  }

  else
  {
    v16 = 8;
  }

  v17 = [[SBSQuickActionControlRequest alloc] initWithExtensionBundleIdentifier:v19 containerBundleIdentifier:v14 kind:v15 quickActionCategory:a6 type:a7 location:a8];
  v18 = *(&self->super.isa + v16);
  *(&self->super.isa + v16) = v17;

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_leadingQuickActionControlRequest);
  objc_storeStrong(v4 + 2, self->_trailingQuickActionControlRequest);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  leadingQuickActionControlRequest = self->_leadingQuickActionControlRequest;
  v5 = a3;
  [v5 encodeObject:leadingQuickActionControlRequest forKey:@"kSBSQuickActionConfigurationLeadingControlRequest"];
  [v5 encodeObject:self->_trailingQuickActionControlRequest forKey:@"kSBSQuickActionConfigurationTrailingControlRequest"];
}

- (SBSQuickActionConfigurationRequest)initWithCoder:(id)a3
{
  v15[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSBSQuickActionConfigurationLeadingControlRequest"];
    leadingQuickActionControlRequest = v5->_leadingQuickActionControlRequest;
    v5->_leadingQuickActionControlRequest = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"kSBSQuickActionConfigurationTrailingControlRequest"];
    trailingQuickActionControlRequest = v5->_trailingQuickActionControlRequest;
    v5->_trailingQuickActionControlRequest = v11;
  }

  return v5;
}

@end