@interface _UIWindowSceneActivationPrewarmAction
+ (id)actionWithMorphContainer:(id)container alphaSource:(id)source sourceIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier requestCenterSlot:(BOOL)slot requestFullscreen:(BOOL)fullscreen responseHandler:(id)handler;
- (BOOL)requestCenterSlot;
- (BOOL)requestFullscreen;
- (NSString)interactionIdentifier;
- (NSString)sourceAppBundleIdentifier;
- (NSString)sourceSceneIdentifier;
- (unint64_t)deparentingPortalAlphaSourceLayerRenderId;
- (unint64_t)morphContainerRenderId;
- (unsigned)sourceLayerContextId;
@end

@implementation _UIWindowSceneActivationPrewarmAction

+ (id)actionWithMorphContainer:(id)container alphaSource:(id)source sourceIdentifier:(id)identifier interactionIdentifier:(id)interactionIdentifier requestCenterSlot:(BOOL)slot requestFullscreen:(BOOL)fullscreen responseHandler:(id)handler
{
  fullscreenCopy = fullscreen;
  slotCopy = slot;
  handlerCopy = handler;
  interactionIdentifierCopy = interactionIdentifier;
  identifierCopy = identifier;
  sourceCopy = source;
  containerCopy = container;
  v19 = objc_opt_new();
  layer = [containerCopy layer];
  context = [layer context];
  contextId = [context contextId];

  layer2 = [containerCopy layer];

  RenderId = CALayerGetRenderId();
  layer3 = [sourceCopy layer];

  v26 = CALayerGetRenderId();
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:contextId];
  [v19 setObject:v27 forSetting:1];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:RenderId];
  [v19 setObject:v28 forSetting:2];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v26];
  [v19 setObject:v29 forSetting:3];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [v19 setObject:bundleIdentifier forSetting:4];

  [v19 setObject:identifierCopy forSetting:5];
  [v19 setObject:interactionIdentifierCopy forSetting:6];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:slotCopy];
  [v19 setObject:v32 forSetting:7];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:fullscreenCopy];
  [v19 setObject:v33 forSetting:8];

  v34 = [self alloc];
  v35 = [MEMORY[0x1E698E5F8] responderWithHandler:handlerCopy];

  v36 = [v34 initWithInfo:v19 responder:v35];

  return v36;
}

- (unsigned)sourceLayerContextId
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:1];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (unint64_t)morphContainerRenderId
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:2];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)deparentingPortalAlphaSourceLayerRenderId
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:3];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (NSString)sourceAppBundleIdentifier
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:4];

  return v3;
}

- (NSString)sourceSceneIdentifier
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:5];

  return v3;
}

- (NSString)interactionIdentifier
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:6];

  return v3;
}

- (BOOL)requestCenterSlot
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:7];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)requestFullscreen
{
  info = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [info objectForSetting:8];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end