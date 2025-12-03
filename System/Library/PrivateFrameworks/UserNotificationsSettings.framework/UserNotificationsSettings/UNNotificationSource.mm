@interface UNNotificationSource
- (UNNotificationSource)initWithCoder:(id)coder;
- (UNNotificationSource)initWithIdentifier:(id)identifier isHidden:(BOOL)hidden displayName:(id)name icon:(id)icon settings:(id)settings bundlePath:(id)path;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationSource

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sourceIdentifier = [(UNNotificationSource *)self sourceIdentifier];
  if ([(UNNotificationSource *)self isHiddenFromSettings])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  displayName = [(UNNotificationSource *)self displayName];
  icon = [(UNNotificationSource *)self icon];
  sourceSettings = [(UNNotificationSource *)self sourceSettings];
  bundlePath = [(UNNotificationSource *)self bundlePath];
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: %@ isHidden: %@, displayName: %@, icon: %@, source settings: %@, bundlePath: %@>", v4, self, sourceIdentifier, v6, displayName, icon, sourceSettings, bundlePath];;

  return v11;
}

- (UNNotificationSource)initWithIdentifier:(id)identifier isHidden:(BOOL)hidden displayName:(id)name icon:(id)icon settings:(id)settings bundlePath:(id)path
{
  identifierCopy = identifier;
  nameCopy = name;
  iconCopy = icon;
  settingsCopy = settings;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = UNNotificationSource;
  v19 = [(UNNotificationSource *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    sourceIdentifier = v19->_sourceIdentifier;
    v19->_sourceIdentifier = v20;

    v19->_isHiddenFromSettings = hidden;
    v22 = [nameCopy copy];
    displayName = v19->_displayName;
    v19->_displayName = v22;

    v24 = [iconCopy copy];
    icon = v19->_icon;
    v19->_icon = v24;

    v26 = [settingsCopy copy];
    sourceSettings = v19->_sourceSettings;
    v19->_sourceSettings = v26;

    v28 = [pathCopy copy];
    bundlePath = v19->_bundlePath;
    v19->_bundlePath = v28;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceIdentifier = [(UNNotificationSource *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"identifier"];

  [coderCopy encodeBool:-[UNNotificationSource isHiddenFromSettings](self forKey:{"isHiddenFromSettings"), @"isHidden"}];
  displayName = [(UNNotificationSource *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  icon = [(UNNotificationSource *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  sourceSettings = [(UNNotificationSource *)self sourceSettings];
  [coderCopy encodeObject:sourceSettings forKey:@"sourceSettings"];

  bundlePath = [(UNNotificationSource *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];
}

- (UNNotificationSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeBoolForKey:@"isHidden"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceSettings"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  v11 = [(UNNotificationSource *)self initWithIdentifier:v5 isHidden:v6 displayName:v7 icon:v8 settings:v9 bundlePath:v10];
  return v11;
}

@end