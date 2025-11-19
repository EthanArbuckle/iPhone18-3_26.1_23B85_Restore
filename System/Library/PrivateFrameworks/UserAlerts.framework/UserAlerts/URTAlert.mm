@interface URTAlert
+ (id)alertWithTitle:(id)a3 message:(id)a4;
- (BOOL)isEqual:(id)a3;
- (URTAlert)initWithCoder:(id)a3;
- (URTAlert)initWithTitle:(id)a3 message:(id)a4;
- (id)userNotificationRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation URTAlert

+ (id)alertWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 message:v6];

  return v8;
}

- (URTAlert)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = URTAlert;
  v9 = [(URTAlert *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    identifier = v9->_identifier;
    v9->_identifier = v11;

    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v9->_message, a4);
    allowedApplicationBundleIDs = v9->_allowedApplicationBundleIDs;
    v9->_allowedApplicationBundleIDs = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (URTAlert)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = URTAlert;
  v5 = [(URTAlert *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertTitleKey"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertMessageKey"];
    message = v5->_message;
    v5->_message = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertDefaultActionKey"];
    defaultAction = v5->_defaultAction;
    v5->_defaultAction = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertOtherActionKey"];
    otherAction = v5->_otherAction;
    v5->_otherAction = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URTAlertCancelActionKey"];
    cancelAction = v5->_cancelAction;
    v5->_cancelAction = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"URTAlertAllowedApplicationsKey"];
    allowedApplicationBundleIDs = v5->_allowedApplicationBundleIDs;
    v5->_allowedApplicationBundleIDs = v21;

    if (!v5->_allowedApplicationBundleIDs)
    {
      v5->_allowedApplicationBundleIDs = MEMORY[0x277CBEBF8];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(URTAlert *)self identifier];
  [v16 encodeObject:v4 forKey:@"URTAlertIdentifierKey"];

  v5 = [(URTAlert *)self title];

  if (v5)
  {
    v6 = [(URTAlert *)self title];
    [v16 encodeObject:v6 forKey:@"URTAlertTitleKey"];
  }

  v7 = [(URTAlert *)self message];

  if (v7)
  {
    v8 = [(URTAlert *)self message];
    [v16 encodeObject:v8 forKey:@"URTAlertMessageKey"];
  }

  v9 = [(URTAlert *)self defaultAction];

  if (v9)
  {
    v10 = [(URTAlert *)self defaultAction];
    [v16 encodeObject:v10 forKey:@"URTAlertDefaultActionKey"];
  }

  v11 = [(URTAlert *)self otherAction];

  if (v11)
  {
    v12 = [(URTAlert *)self otherAction];
    [v16 encodeObject:v12 forKey:@"URTAlertOtherActionKey"];
  }

  v13 = [(URTAlert *)self cancelAction];

  if (v13)
  {
    v14 = [(URTAlert *)self cancelAction];
    [v16 encodeObject:v14 forKey:@"URTAlertCancelActionKey"];
  }

  v15 = [(URTAlert *)self allowedApplicationBundleIDs];
  [v16 encodeObject:v15 forKey:@"URTAlertAllowedApplicationsKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(URTAlert *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(URTAlert *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)userNotificationRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(URTAlert *)self title];

  if (v4)
  {
    v5 = [(URTAlert *)self title];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBF188]];
  }

  v6 = [(URTAlert *)self message];

  if (v6)
  {
    v7 = [(URTAlert *)self message];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CBF198]];
  }

  v8 = [(URTAlert *)self defaultAction];

  if (v8)
  {
    v9 = [(URTAlert *)self defaultAction];
    v10 = [v9 title];
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CBF1E8]];
  }

  v11 = [(URTAlert *)self otherAction];

  if (v11)
  {
    v12 = [(URTAlert *)self otherAction];
    v13 = [v12 title];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBF218]];
  }

  v14 = [(URTAlert *)self cancelAction];

  if (v14)
  {
    v15 = [(URTAlert *)self cancelAction];
    v16 = [v15 title];
    [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277CBF1C0]];
  }

  v17 = [(URTAlert *)self allowedApplicationBundleIDs];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(URTAlert *)self allowedApplicationBundleIDs];
    [v3 setObject:v19 forKeyedSubscript:@"SBUserNotificationAllowedApplications"];
  }

  v20 = [v3 copy];

  return v20;
}

@end