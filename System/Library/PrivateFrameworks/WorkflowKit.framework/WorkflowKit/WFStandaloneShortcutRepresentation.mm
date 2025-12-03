@interface WFStandaloneShortcutRepresentation
- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)shortcut;
- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)shortcut title:(id)title;
- (WFStandaloneShortcutRepresentation)initWithTitle:(id)title associatedAppBundleIdentifier:(id)identifier launchIdForCurrentPlatform:(id)platform activityBundleIdentifier:(id)bundleIdentifier;
@end

@implementation WFStandaloneShortcutRepresentation

- (WFStandaloneShortcutRepresentation)initWithTitle:(id)title associatedAppBundleIdentifier:(id)identifier launchIdForCurrentPlatform:(id)platform activityBundleIdentifier:(id)bundleIdentifier
{
  titleCopy = title;
  identifierCopy = identifier;
  platformCopy = platform;
  bundleIdentifierCopy = bundleIdentifier;
  v19.receiver = self;
  v19.super_class = WFStandaloneShortcutRepresentation;
  v15 = [(WFStandaloneShortcutRepresentation *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_associatedAppBundleIdentifier, identifier);
    objc_storeStrong(&v16->_launchIdForCurrentPlatform, platform);
    objc_storeStrong(&v16->_activityBundleIdentifier, bundleIdentifier);
    v17 = v16;
  }

  return v16;
}

- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)shortcut title:(id)title
{
  titleCopy = title;
  shortcutCopy = shortcut;
  _associatedAppBundleIdentifier = [shortcutCopy _associatedAppBundleIdentifier];
  intent = [shortcutCopy intent];
  _intents_launchIdForCurrentPlatform = [intent _intents_launchIdForCurrentPlatform];
  activityBundleIdentifier = [shortcutCopy activityBundleIdentifier];

  v12 = [(WFStandaloneShortcutRepresentation *)self initWithTitle:titleCopy associatedAppBundleIdentifier:_associatedAppBundleIdentifier launchIdForCurrentPlatform:_intents_launchIdForCurrentPlatform activityBundleIdentifier:activityBundleIdentifier];
  return v12;
}

- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _title = [shortcutCopy _title];
  v6 = [(WFStandaloneShortcutRepresentation *)self initWithINShortcut:shortcutCopy title:_title];

  return v6;
}

@end