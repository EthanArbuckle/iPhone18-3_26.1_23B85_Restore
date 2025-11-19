@interface UIActivityCollaborationModeRestriction
- (UIActivityCollaborationModeRestriction)initWithCoder:(id)a3;
- (UIActivityCollaborationModeRestriction)initWithDisabledMode:(int64_t)a3 alertTitle:(id)a4 alertMessage:(id)a5;
- (id)_initWithDisabledMode:(int64_t)a3 alertTitle:(id)a4 alertMessage:(id)a5 alertDismissButtonTitle:(id)a6 alertRecoverySuggestionButtonTitle:(id)a7 alertRecoverySuggestionButtonLaunchURL:(id)a8 allowContinueToMode:(BOOL)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForMode:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIActivityCollaborationModeRestriction

- (UIActivityCollaborationModeRestriction)initWithDisabledMode:(int64_t)a3 alertTitle:(id)a4 alertMessage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _ShareSheetBundle();
  v11 = [v10 localizedStringForKey:@"Move to iCloud OK" value:@"OK" table:@"Localizable"];

  LOBYTE(v14) = 0;
  v12 = [(UIActivityCollaborationModeRestriction *)self _initWithDisabledMode:a3 alertTitle:v9 alertMessage:v8 alertDismissButtonTitle:v11 alertRecoverySuggestionButtonTitle:0 alertRecoverySuggestionButtonLaunchURL:0 allowContinueToMode:v14];

  return v12;
}

- (id)_initWithDisabledMode:(int64_t)a3 alertTitle:(id)a4 alertMessage:(id)a5 alertDismissButtonTitle:(id)a6 alertRecoverySuggestionButtonTitle:(id)a7 alertRecoverySuggestionButtonLaunchURL:(id)a8 allowContinueToMode:(BOOL)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v33.receiver = self;
  v33.super_class = UIActivityCollaborationModeRestriction;
  v20 = [(UIActivityCollaborationModeRestriction *)&v33 init];
  v21 = v20;
  if (v20)
  {
    v20->_disabledMode = a3;
    v22 = [v15 copy];
    alertTitle = v21->_alertTitle;
    v21->_alertTitle = v22;

    v24 = [v16 copy];
    alertMessage = v21->_alertMessage;
    v21->_alertMessage = v24;

    v26 = [v17 copy];
    alertDismissButtonTitle = v21->_alertDismissButtonTitle;
    v21->_alertDismissButtonTitle = v26;

    v28 = [v18 copy];
    alertRecoverySuggestionButtonTitle = v21->_alertRecoverySuggestionButtonTitle;
    v21->_alertRecoverySuggestionButtonTitle = v28;

    v30 = [v19 copy];
    alertRecoverySuggestionButtonLaunchURL = v21->_alertRecoverySuggestionButtonLaunchURL;
    v21->_alertRecoverySuggestionButtonLaunchURL = v30;

    v21->_allowContinueToMode = a9;
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = UIActivityCollaborationModeRestriction;
  v4 = [(UIActivityCollaborationModeRestriction *)&v15 description];
  v5 = [(UIActivityCollaborationModeRestriction *)self descriptionForMode:[(UIActivityCollaborationModeRestriction *)self disabledMode]];
  v6 = [(UIActivityCollaborationModeRestriction *)self alertTitle];
  v7 = [(UIActivityCollaborationModeRestriction *)self alertMessage];
  v8 = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];
  v9 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];
  v10 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];
  v11 = [(UIActivityCollaborationModeRestriction *)self allowContinueToMode];
  v12 = "no";
  if (v11)
  {
    v12 = "yes";
  }

  v13 = [v3 stringWithFormat:@"%@: disabledMode:%@ alertTitle:%@ alertMessage:%@ alertDismissButtonTitle:%@ alertRecoverySuggestionButtonTitle:%@ alertRecoverySuggestionButtonLaunchURL:%@ allowContinueToMode:%s", v4, v5, v6, v7, v8, v9, v10, v12];

  return v13;
}

- (id)descriptionForMode:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"collaborate";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"sendCopy";
  }
}

- (UIActivityCollaborationModeRestriction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"disabledMode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertTitle"];
  v7 = [v6 copy];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
  v9 = [v8 copy];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertDismissButtonTitle"];
  v11 = [v10 copy];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertRecoverySuggestionButtonTitle"];
  v13 = [v12 copy];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alertRecoverySuggestionButtonLaunchURL"];
  v15 = [v14 copy];

  LOBYTE(v14) = [v4 decodeBoolForKey:@"allowContinueToMode"];
  LOBYTE(v18) = v14;
  v16 = [(UIActivityCollaborationModeRestriction *)self _initWithDisabledMode:v5 alertTitle:v7 alertMessage:v9 alertDismissButtonTitle:v11 alertRecoverySuggestionButtonTitle:v13 alertRecoverySuggestionButtonLaunchURL:v15 allowContinueToMode:v18];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  [v14 encodeInteger:-[UIActivityCollaborationModeRestriction disabledMode](self forKey:{"disabledMode"), @"disabledMode"}];
  v4 = [(UIActivityCollaborationModeRestriction *)self alertTitle];

  if (v4)
  {
    v5 = [(UIActivityCollaborationModeRestriction *)self alertTitle];
    [v14 encodeObject:v5 forKey:@"alertTitle"];
  }

  v6 = [(UIActivityCollaborationModeRestriction *)self alertMessage];

  if (v6)
  {
    v7 = [(UIActivityCollaborationModeRestriction *)self alertMessage];
    [v14 encodeObject:v7 forKey:@"alertMessage"];
  }

  v8 = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];

  if (v8)
  {
    v9 = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];
    [v14 encodeObject:v9 forKey:@"alertDismissButtonTitle"];
  }

  v10 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];

  if (v10)
  {
    v11 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];
    [v14 encodeObject:v11 forKey:@"alertRecoverySuggestionButtonTitle"];
  }

  v12 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];

  if (v12)
  {
    v13 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];
    [v14 encodeObject:v13 forKey:@"alertRecoverySuggestionButtonLaunchURL"];
  }

  [v14 encodeBool:-[UIActivityCollaborationModeRestriction allowContinueToMode](self forKey:{"allowContinueToMode"), @"allowContinueToMode"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(UIActivityCollaborationModeRestriction *)self disabledMode];
  v6 = [(UIActivityCollaborationModeRestriction *)self alertTitle];
  v7 = [v6 copyWithZone:a3];

  v8 = [(UIActivityCollaborationModeRestriction *)self alertMessage];
  v9 = [v8 copyWithZone:a3];

  v10 = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];
  v11 = [v10 copyWithZone:a3];

  v12 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];
  v13 = [v12 copyWithZone:a3];

  v14 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];
  v15 = [v14 copyWithZone:a3];

  LOBYTE(v18) = [(UIActivityCollaborationModeRestriction *)self allowContinueToMode];
  v16 = [objc_alloc(objc_opt_class()) _initWithDisabledMode:v5 alertTitle:v7 alertMessage:v9 alertDismissButtonTitle:v11 alertRecoverySuggestionButtonTitle:v13 alertRecoverySuggestionButtonLaunchURL:v15 allowContinueToMode:v18];

  return v16;
}

@end