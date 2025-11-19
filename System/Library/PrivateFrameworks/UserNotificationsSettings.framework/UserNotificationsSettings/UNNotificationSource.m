@interface UNNotificationSource
- (UNNotificationSource)initWithCoder:(id)a3;
- (UNNotificationSource)initWithIdentifier:(id)a3 isHidden:(BOOL)a4 displayName:(id)a5 icon:(id)a6 settings:(id)a7 bundlePath:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationSource

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(UNNotificationSource *)self sourceIdentifier];
  if ([(UNNotificationSource *)self isHiddenFromSettings])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(UNNotificationSource *)self displayName];
  v8 = [(UNNotificationSource *)self icon];
  v9 = [(UNNotificationSource *)self sourceSettings];
  v10 = [(UNNotificationSource *)self bundlePath];
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: %@ isHidden: %@, displayName: %@, icon: %@, source settings: %@, bundlePath: %@>", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (UNNotificationSource)initWithIdentifier:(id)a3 isHidden:(BOOL)a4 displayName:(id)a5 icon:(id)a6 settings:(id)a7 bundlePath:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v31.receiver = self;
  v31.super_class = UNNotificationSource;
  v19 = [(UNNotificationSource *)&v31 init];
  if (v19)
  {
    v20 = [v14 copy];
    sourceIdentifier = v19->_sourceIdentifier;
    v19->_sourceIdentifier = v20;

    v19->_isHiddenFromSettings = a4;
    v22 = [v15 copy];
    displayName = v19->_displayName;
    v19->_displayName = v22;

    v24 = [v16 copy];
    icon = v19->_icon;
    v19->_icon = v24;

    v26 = [v17 copy];
    sourceSettings = v19->_sourceSettings;
    v19->_sourceSettings = v26;

    v28 = [v18 copy];
    bundlePath = v19->_bundlePath;
    v19->_bundlePath = v28;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationSource *)self sourceIdentifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeBool:-[UNNotificationSource isHiddenFromSettings](self forKey:{"isHiddenFromSettings"), @"isHidden"}];
  v6 = [(UNNotificationSource *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(UNNotificationSource *)self icon];
  [v4 encodeObject:v7 forKey:@"icon"];

  v8 = [(UNNotificationSource *)self sourceSettings];
  [v4 encodeObject:v8 forKey:@"sourceSettings"];

  v9 = [(UNNotificationSource *)self bundlePath];
  [v4 encodeObject:v9 forKey:@"bundlePath"];
}

- (UNNotificationSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeBoolForKey:@"isHidden"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceSettings"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  v11 = [(UNNotificationSource *)self initWithIdentifier:v5 isHidden:v6 displayName:v7 icon:v8 settings:v9 bundlePath:v10];
  return v11;
}

@end