@interface UIActivityCollaborationModeRestriction
- (UIActivityCollaborationModeRestriction)initWithCoder:(id)coder;
- (UIActivityCollaborationModeRestriction)initWithDisabledMode:(int64_t)mode alertTitle:(id)title alertMessage:(id)message;
- (id)_initWithDisabledMode:(int64_t)mode alertTitle:(id)title alertMessage:(id)message alertDismissButtonTitle:(id)buttonTitle alertRecoverySuggestionButtonTitle:(id)suggestionButtonTitle alertRecoverySuggestionButtonLaunchURL:(id)l allowContinueToMode:(BOOL)toMode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForMode:(int64_t)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIActivityCollaborationModeRestriction

- (UIActivityCollaborationModeRestriction)initWithDisabledMode:(int64_t)mode alertTitle:(id)title alertMessage:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v10 = _ShareSheetBundle();
  v11 = [v10 localizedStringForKey:@"Move to iCloud OK" value:@"OK" table:@"Localizable"];

  LOBYTE(v14) = 0;
  v12 = [(UIActivityCollaborationModeRestriction *)self _initWithDisabledMode:mode alertTitle:titleCopy alertMessage:messageCopy alertDismissButtonTitle:v11 alertRecoverySuggestionButtonTitle:0 alertRecoverySuggestionButtonLaunchURL:0 allowContinueToMode:v14];

  return v12;
}

- (id)_initWithDisabledMode:(int64_t)mode alertTitle:(id)title alertMessage:(id)message alertDismissButtonTitle:(id)buttonTitle alertRecoverySuggestionButtonTitle:(id)suggestionButtonTitle alertRecoverySuggestionButtonLaunchURL:(id)l allowContinueToMode:(BOOL)toMode
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  suggestionButtonTitleCopy = suggestionButtonTitle;
  lCopy = l;
  v33.receiver = self;
  v33.super_class = UIActivityCollaborationModeRestriction;
  v20 = [(UIActivityCollaborationModeRestriction *)&v33 init];
  v21 = v20;
  if (v20)
  {
    v20->_disabledMode = mode;
    v22 = [titleCopy copy];
    alertTitle = v21->_alertTitle;
    v21->_alertTitle = v22;

    v24 = [messageCopy copy];
    alertMessage = v21->_alertMessage;
    v21->_alertMessage = v24;

    v26 = [buttonTitleCopy copy];
    alertDismissButtonTitle = v21->_alertDismissButtonTitle;
    v21->_alertDismissButtonTitle = v26;

    v28 = [suggestionButtonTitleCopy copy];
    alertRecoverySuggestionButtonTitle = v21->_alertRecoverySuggestionButtonTitle;
    v21->_alertRecoverySuggestionButtonTitle = v28;

    v30 = [lCopy copy];
    alertRecoverySuggestionButtonLaunchURL = v21->_alertRecoverySuggestionButtonLaunchURL;
    v21->_alertRecoverySuggestionButtonLaunchURL = v30;

    v21->_allowContinueToMode = toMode;
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
  alertTitle = [(UIActivityCollaborationModeRestriction *)self alertTitle];
  alertMessage = [(UIActivityCollaborationModeRestriction *)self alertMessage];
  alertDismissButtonTitle = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];
  alertRecoverySuggestionButtonTitle = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];
  alertRecoverySuggestionButtonLaunchURL = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];
  allowContinueToMode = [(UIActivityCollaborationModeRestriction *)self allowContinueToMode];
  v12 = "no";
  if (allowContinueToMode)
  {
    v12 = "yes";
  }

  v13 = [v3 stringWithFormat:@"%@: disabledMode:%@ alertTitle:%@ alertMessage:%@ alertDismissButtonTitle:%@ alertRecoverySuggestionButtonTitle:%@ alertRecoverySuggestionButtonLaunchURL:%@ allowContinueToMode:%s", v4, v5, alertTitle, alertMessage, alertDismissButtonTitle, alertRecoverySuggestionButtonTitle, alertRecoverySuggestionButtonLaunchURL, v12];

  return v13;
}

- (id)descriptionForMode:(int64_t)mode
{
  v3 = @"unknown";
  if (mode == 1)
  {
    v3 = @"collaborate";
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return @"sendCopy";
  }
}

- (UIActivityCollaborationModeRestriction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"disabledMode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertTitle"];
  v7 = [v6 copy];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
  v9 = [v8 copy];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertDismissButtonTitle"];
  v11 = [v10 copy];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertRecoverySuggestionButtonTitle"];
  v13 = [v12 copy];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertRecoverySuggestionButtonLaunchURL"];
  v15 = [v14 copy];

  LOBYTE(v14) = [coderCopy decodeBoolForKey:@"allowContinueToMode"];
  LOBYTE(v18) = v14;
  v16 = [(UIActivityCollaborationModeRestriction *)self _initWithDisabledMode:v5 alertTitle:v7 alertMessage:v9 alertDismissButtonTitle:v11 alertRecoverySuggestionButtonTitle:v13 alertRecoverySuggestionButtonLaunchURL:v15 allowContinueToMode:v18];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[UIActivityCollaborationModeRestriction disabledMode](self forKey:{"disabledMode"), @"disabledMode"}];
  alertTitle = [(UIActivityCollaborationModeRestriction *)self alertTitle];

  if (alertTitle)
  {
    alertTitle2 = [(UIActivityCollaborationModeRestriction *)self alertTitle];
    [coderCopy encodeObject:alertTitle2 forKey:@"alertTitle"];
  }

  alertMessage = [(UIActivityCollaborationModeRestriction *)self alertMessage];

  if (alertMessage)
  {
    alertMessage2 = [(UIActivityCollaborationModeRestriction *)self alertMessage];
    [coderCopy encodeObject:alertMessage2 forKey:@"alertMessage"];
  }

  alertDismissButtonTitle = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];

  if (alertDismissButtonTitle)
  {
    alertDismissButtonTitle2 = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];
    [coderCopy encodeObject:alertDismissButtonTitle2 forKey:@"alertDismissButtonTitle"];
  }

  alertRecoverySuggestionButtonTitle = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];

  if (alertRecoverySuggestionButtonTitle)
  {
    alertRecoverySuggestionButtonTitle2 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];
    [coderCopy encodeObject:alertRecoverySuggestionButtonTitle2 forKey:@"alertRecoverySuggestionButtonTitle"];
  }

  alertRecoverySuggestionButtonLaunchURL = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];

  if (alertRecoverySuggestionButtonLaunchURL)
  {
    alertRecoverySuggestionButtonLaunchURL2 = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];
    [coderCopy encodeObject:alertRecoverySuggestionButtonLaunchURL2 forKey:@"alertRecoverySuggestionButtonLaunchURL"];
  }

  [coderCopy encodeBool:-[UIActivityCollaborationModeRestriction allowContinueToMode](self forKey:{"allowContinueToMode"), @"allowContinueToMode"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  disabledMode = [(UIActivityCollaborationModeRestriction *)self disabledMode];
  alertTitle = [(UIActivityCollaborationModeRestriction *)self alertTitle];
  v7 = [alertTitle copyWithZone:zone];

  alertMessage = [(UIActivityCollaborationModeRestriction *)self alertMessage];
  v9 = [alertMessage copyWithZone:zone];

  alertDismissButtonTitle = [(UIActivityCollaborationModeRestriction *)self alertDismissButtonTitle];
  v11 = [alertDismissButtonTitle copyWithZone:zone];

  alertRecoverySuggestionButtonTitle = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonTitle];
  v13 = [alertRecoverySuggestionButtonTitle copyWithZone:zone];

  alertRecoverySuggestionButtonLaunchURL = [(UIActivityCollaborationModeRestriction *)self alertRecoverySuggestionButtonLaunchURL];
  v15 = [alertRecoverySuggestionButtonLaunchURL copyWithZone:zone];

  LOBYTE(v18) = [(UIActivityCollaborationModeRestriction *)self allowContinueToMode];
  v16 = [objc_alloc(objc_opt_class()) _initWithDisabledMode:disabledMode alertTitle:v7 alertMessage:v9 alertDismissButtonTitle:v11 alertRecoverySuggestionButtonTitle:v13 alertRecoverySuggestionButtonLaunchURL:v15 allowContinueToMode:v18];

  return v16;
}

@end