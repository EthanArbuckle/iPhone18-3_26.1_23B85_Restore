@interface WFStandaloneShortcutRepresentation
- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)a3;
- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)a3 title:(id)a4;
- (WFStandaloneShortcutRepresentation)initWithTitle:(id)a3 associatedAppBundleIdentifier:(id)a4 launchIdForCurrentPlatform:(id)a5 activityBundleIdentifier:(id)a6;
@end

@implementation WFStandaloneShortcutRepresentation

- (WFStandaloneShortcutRepresentation)initWithTitle:(id)a3 associatedAppBundleIdentifier:(id)a4 launchIdForCurrentPlatform:(id)a5 activityBundleIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = WFStandaloneShortcutRepresentation;
  v15 = [(WFStandaloneShortcutRepresentation *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_associatedAppBundleIdentifier, a4);
    objc_storeStrong(&v16->_launchIdForCurrentPlatform, a5);
    objc_storeStrong(&v16->_activityBundleIdentifier, a6);
    v17 = v16;
  }

  return v16;
}

- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _associatedAppBundleIdentifier];
  v9 = [v7 intent];
  v10 = [v9 _intents_launchIdForCurrentPlatform];
  v11 = [v7 activityBundleIdentifier];

  v12 = [(WFStandaloneShortcutRepresentation *)self initWithTitle:v6 associatedAppBundleIdentifier:v8 launchIdForCurrentPlatform:v10 activityBundleIdentifier:v11];
  return v12;
}

- (WFStandaloneShortcutRepresentation)initWithINShortcut:(id)a3
{
  v4 = a3;
  v5 = [v4 _title];
  v6 = [(WFStandaloneShortcutRepresentation *)self initWithINShortcut:v4 title:v5];

  return v6;
}

@end