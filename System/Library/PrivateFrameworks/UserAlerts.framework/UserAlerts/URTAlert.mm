@interface URTAlert
+ (id)alertWithTitle:(id)title message:(id)message;
- (BOOL)isEqual:(id)equal;
- (URTAlert)initWithCoder:(id)coder;
- (URTAlert)initWithTitle:(id)title message:(id)message;
- (id)userNotificationRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation URTAlert

+ (id)alertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy message:messageCopy];

  return v8;
}

- (URTAlert)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = URTAlert;
  v9 = [(URTAlert *)&v15 init];
  if (v9)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = uUIDString;

    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v9->_message, message);
    allowedApplicationBundleIDs = v9->_allowedApplicationBundleIDs;
    v9->_allowedApplicationBundleIDs = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (URTAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = URTAlert;
  v5 = [(URTAlert *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertTitleKey"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertMessageKey"];
    message = v5->_message;
    v5->_message = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertDefaultActionKey"];
    defaultAction = v5->_defaultAction;
    v5->_defaultAction = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertOtherActionKey"];
    otherAction = v5->_otherAction;
    v5->_otherAction = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertCancelActionKey"];
    cancelAction = v5->_cancelAction;
    v5->_cancelAction = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"URTAlertAllowedApplicationsKey"];
    allowedApplicationBundleIDs = v5->_allowedApplicationBundleIDs;
    v5->_allowedApplicationBundleIDs = v21;

    if (!v5->_allowedApplicationBundleIDs)
    {
      v5->_allowedApplicationBundleIDs = MEMORY[0x277CBEBF8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(URTAlert *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"URTAlertIdentifierKey"];

  title = [(URTAlert *)self title];

  if (title)
  {
    title2 = [(URTAlert *)self title];
    [coderCopy encodeObject:title2 forKey:@"URTAlertTitleKey"];
  }

  message = [(URTAlert *)self message];

  if (message)
  {
    message2 = [(URTAlert *)self message];
    [coderCopy encodeObject:message2 forKey:@"URTAlertMessageKey"];
  }

  defaultAction = [(URTAlert *)self defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [(URTAlert *)self defaultAction];
    [coderCopy encodeObject:defaultAction2 forKey:@"URTAlertDefaultActionKey"];
  }

  otherAction = [(URTAlert *)self otherAction];

  if (otherAction)
  {
    otherAction2 = [(URTAlert *)self otherAction];
    [coderCopy encodeObject:otherAction2 forKey:@"URTAlertOtherActionKey"];
  }

  cancelAction = [(URTAlert *)self cancelAction];

  if (cancelAction)
  {
    cancelAction2 = [(URTAlert *)self cancelAction];
    [coderCopy encodeObject:cancelAction2 forKey:@"URTAlertCancelActionKey"];
  }

  allowedApplicationBundleIDs = [(URTAlert *)self allowedApplicationBundleIDs];
  [coderCopy encodeObject:allowedApplicationBundleIDs forKey:@"URTAlertAllowedApplicationsKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(URTAlert *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(URTAlert *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)userNotificationRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  title = [(URTAlert *)self title];

  if (title)
  {
    title2 = [(URTAlert *)self title];
    [dictionary setObject:title2 forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  message = [(URTAlert *)self message];

  if (message)
  {
    message2 = [(URTAlert *)self message];
    [dictionary setObject:message2 forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  defaultAction = [(URTAlert *)self defaultAction];

  if (defaultAction)
  {
    defaultAction2 = [(URTAlert *)self defaultAction];
    title3 = [defaultAction2 title];
    [dictionary setObject:title3 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  }

  otherAction = [(URTAlert *)self otherAction];

  if (otherAction)
  {
    otherAction2 = [(URTAlert *)self otherAction];
    title4 = [otherAction2 title];
    [dictionary setObject:title4 forKeyedSubscript:*MEMORY[0x277CBF218]];
  }

  cancelAction = [(URTAlert *)self cancelAction];

  if (cancelAction)
  {
    cancelAction2 = [(URTAlert *)self cancelAction];
    title5 = [cancelAction2 title];
    [dictionary setObject:title5 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  allowedApplicationBundleIDs = [(URTAlert *)self allowedApplicationBundleIDs];
  v18 = [allowedApplicationBundleIDs count];

  if (v18)
  {
    allowedApplicationBundleIDs2 = [(URTAlert *)self allowedApplicationBundleIDs];
    [dictionary setObject:allowedApplicationBundleIDs2 forKeyedSubscript:@"SBUserNotificationAllowedApplications"];
  }

  v20 = [dictionary copy];

  return v20;
}

@end