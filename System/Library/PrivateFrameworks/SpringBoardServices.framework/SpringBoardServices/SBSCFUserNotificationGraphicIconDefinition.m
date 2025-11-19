@interface SBSCFUserNotificationGraphicIconDefinition
- (SBSCFUserNotificationGraphicIconDefinition)initWithIconBundleIdentifier:(id)a3;
- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)a3;
- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)a3 iconBundleIdentifier:(id)a4 iconDecorationType:(id)a5 iconDecorationBundleIdentifier:(id)a6 iconDecorationPosition:(id)a7;
- (id)_initWithDictionary:(id)a3;
- (id)_initWithIconType:(id)a3 iconBundleIdentifier:(id)a4 iconDecorationType:(id)a5 iconDecorationBundleIdentifier:(id)a6 iconDecorationPosition:(id)a7;
- (id)build;
@end

@implementation SBSCFUserNotificationGraphicIconDefinition

- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v6 = [(SBSCFUserNotificationGraphicIconDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconType, a3);
  }

  return v7;
}

- (SBSCFUserNotificationGraphicIconDefinition)initWithIconBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v6 = [(SBSCFUserNotificationGraphicIconDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconBundleIdentifier, a3);
  }

  return v7;
}

- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)a3 iconBundleIdentifier:(id)a4 iconDecorationType:(id)a5 iconDecorationBundleIdentifier:(id)a6 iconDecorationPosition:(id)a7
{
  v19.receiver = self;
  v19.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(SBSCFUserNotificationGraphicIconDefinition *)&v19 init];
  v17 = [(SBSCFUserNotificationGraphicIconDefinition *)v16 _initWithIconType:v15 iconBundleIdentifier:v14 iconDecorationType:v13 iconDecorationBundleIdentifier:v12 iconDecorationPosition:v11, v19.receiver, v19.super_class];

  return v17;
}

- (id)_initWithIconType:(id)a3 iconBundleIdentifier:(id)a4 iconDecorationType:(id)a5 iconDecorationBundleIdentifier:(id)a6 iconDecorationPosition:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  obj = a7;
  v17 = a7;
  if (v13 | v14)
  {
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [SBSCFUserNotificationGraphicIconDefinition _initWithIconType:a2 iconBundleIdentifier:self iconDecorationType:? iconDecorationBundleIdentifier:? iconDecorationPosition:?];
    if (v15)
    {
      goto LABEL_6;
    }
  }

  if (!v16 && v17)
  {
    [SBSCFUserNotificationGraphicIconDefinition _initWithIconType:a2 iconBundleIdentifier:self iconDecorationType:? iconDecorationBundleIdentifier:? iconDecorationPosition:?];
  }

LABEL_6:
  if (self)
  {
    objc_storeStrong(&self->_iconType, a3);
    objc_storeStrong(&self->_iconBundleIdentifier, a4);
    objc_storeStrong(&self->_iconDecorationType, a5);
    objc_storeStrong(&self->_iconDecorationBundleIdentifier, a6);
    objc_storeStrong(&self->_iconDecorationPosition, obj);
  }

  return self;
}

- (id)_initWithDictionary:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v3 = a3;
  v4 = [(SBSUserNotificationAssetDefinition *)&v12 _initWithDictionary:v3];
  v5 = [v3 bs_safeStringForKey:{@"ISIconType", v12.receiver, v12.super_class}];
  v6 = [v3 bs_safeStringForKey:@"ISIconApplicationBundleIdentifier"];
  v7 = [v3 bs_safeStringForKey:@"ISIconDecorationType"];
  v8 = [v3 bs_safeStringForKey:@"ISIconDecorationBundleIdentifier"];
  v9 = [v3 bs_safeNumberForKey:@"ISIconDecorationPosition"];

  v10 = [v4 _initWithIconType:v5 iconBundleIdentifier:v6 iconDecorationType:v7 iconDecorationBundleIdentifier:v8 iconDecorationPosition:v9];
  return v10;
}

- (id)build
{
  v7.receiver = self;
  v7.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v3 = [(SBSUserNotificationAssetDefinition *)&v7 build];
  v4 = [v3 mutableCopy];

  [v4 setObject:self->_iconType forKeyedSubscript:@"ISIconType"];
  [v4 setObject:self->_iconBundleIdentifier forKeyedSubscript:@"ISIconApplicationBundleIdentifier"];
  [v4 setObject:self->_iconDecorationType forKeyedSubscript:@"ISIconDecorationType"];
  [v4 setObject:self->_iconDecorationBundleIdentifier forKeyedSubscript:@"ISIconDecorationBundleIdentifier"];
  [v4 setObject:self->_iconDecorationPosition forKeyedSubscript:@"ISIconDecorationPosition"];
  v5 = [v4 copy];

  return v5;
}

- (void)_initWithIconType:(uint64_t)a1 iconBundleIdentifier:(uint64_t)a2 iconDecorationType:iconDecorationBundleIdentifier:iconDecorationPosition:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationGraphicIconDefinition.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"iconType || iconBundleIdentifier"}];
}

- (void)_initWithIconType:(uint64_t)a1 iconBundleIdentifier:(uint64_t)a2 iconDecorationType:iconDecorationBundleIdentifier:iconDecorationPosition:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationGraphicIconDefinition.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"(iconDecorationType || iconDecorationBundleIdentifier) || !iconDecorationPosition"}];
}

@end