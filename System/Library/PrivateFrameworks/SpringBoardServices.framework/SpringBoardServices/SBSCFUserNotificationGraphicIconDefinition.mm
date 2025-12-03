@interface SBSCFUserNotificationGraphicIconDefinition
- (SBSCFUserNotificationGraphicIconDefinition)initWithIconBundleIdentifier:(id)identifier;
- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)type;
- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)type iconBundleIdentifier:(id)identifier iconDecorationType:(id)decorationType iconDecorationBundleIdentifier:(id)bundleIdentifier iconDecorationPosition:(id)position;
- (id)_initWithDictionary:(id)dictionary;
- (id)_initWithIconType:(id)type iconBundleIdentifier:(id)identifier iconDecorationType:(id)decorationType iconDecorationBundleIdentifier:(id)bundleIdentifier iconDecorationPosition:(id)position;
- (id)build;
@end

@implementation SBSCFUserNotificationGraphicIconDefinition

- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v6 = [(SBSCFUserNotificationGraphicIconDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconType, type);
  }

  return v7;
}

- (SBSCFUserNotificationGraphicIconDefinition)initWithIconBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBSCFUserNotificationGraphicIconDefinition;
  v6 = [(SBSCFUserNotificationGraphicIconDefinition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconBundleIdentifier, identifier);
  }

  return v7;
}

- (SBSCFUserNotificationGraphicIconDefinition)initWithIconType:(id)type iconBundleIdentifier:(id)identifier iconDecorationType:(id)decorationType iconDecorationBundleIdentifier:(id)bundleIdentifier iconDecorationPosition:(id)position
{
  v19.receiver = self;
  v19.super_class = SBSCFUserNotificationGraphicIconDefinition;
  positionCopy = position;
  bundleIdentifierCopy = bundleIdentifier;
  decorationTypeCopy = decorationType;
  identifierCopy = identifier;
  typeCopy = type;
  v16 = [(SBSCFUserNotificationGraphicIconDefinition *)&v19 init];
  v17 = [(SBSCFUserNotificationGraphicIconDefinition *)v16 _initWithIconType:typeCopy iconBundleIdentifier:identifierCopy iconDecorationType:decorationTypeCopy iconDecorationBundleIdentifier:bundleIdentifierCopy iconDecorationPosition:positionCopy, v19.receiver, v19.super_class];

  return v17;
}

- (id)_initWithIconType:(id)type iconBundleIdentifier:(id)identifier iconDecorationType:(id)decorationType iconDecorationBundleIdentifier:(id)bundleIdentifier iconDecorationPosition:(id)position
{
  typeCopy = type;
  identifierCopy = identifier;
  decorationTypeCopy = decorationType;
  bundleIdentifierCopy = bundleIdentifier;
  obj = position;
  positionCopy = position;
  if (typeCopy | identifierCopy)
  {
    if (decorationTypeCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [SBSCFUserNotificationGraphicIconDefinition _initWithIconType:a2 iconBundleIdentifier:self iconDecorationType:? iconDecorationBundleIdentifier:? iconDecorationPosition:?];
    if (decorationTypeCopy)
    {
      goto LABEL_6;
    }
  }

  if (!bundleIdentifierCopy && positionCopy)
  {
    [SBSCFUserNotificationGraphicIconDefinition _initWithIconType:a2 iconBundleIdentifier:self iconDecorationType:? iconDecorationBundleIdentifier:? iconDecorationPosition:?];
  }

LABEL_6:
  if (self)
  {
    objc_storeStrong(&self->_iconType, type);
    objc_storeStrong(&self->_iconBundleIdentifier, identifier);
    objc_storeStrong(&self->_iconDecorationType, decorationType);
    objc_storeStrong(&self->_iconDecorationBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&self->_iconDecorationPosition, obj);
  }

  return self;
}

- (id)_initWithDictionary:(id)dictionary
{
  v12.receiver = self;
  v12.super_class = SBSCFUserNotificationGraphicIconDefinition;
  dictionaryCopy = dictionary;
  v4 = [(SBSUserNotificationAssetDefinition *)&v12 _initWithDictionary:dictionaryCopy];
  v5 = [dictionaryCopy bs_safeStringForKey:{@"ISIconType", v12.receiver, v12.super_class}];
  v6 = [dictionaryCopy bs_safeStringForKey:@"ISIconApplicationBundleIdentifier"];
  v7 = [dictionaryCopy bs_safeStringForKey:@"ISIconDecorationType"];
  v8 = [dictionaryCopy bs_safeStringForKey:@"ISIconDecorationBundleIdentifier"];
  v9 = [dictionaryCopy bs_safeNumberForKey:@"ISIconDecorationPosition"];

  v10 = [v4 _initWithIconType:v5 iconBundleIdentifier:v6 iconDecorationType:v7 iconDecorationBundleIdentifier:v8 iconDecorationPosition:v9];
  return v10;
}

- (id)build
{
  v7.receiver = self;
  v7.super_class = SBSCFUserNotificationGraphicIconDefinition;
  build = [(SBSUserNotificationAssetDefinition *)&v7 build];
  v4 = [build mutableCopy];

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