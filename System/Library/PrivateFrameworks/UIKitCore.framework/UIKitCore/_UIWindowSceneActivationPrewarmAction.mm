@interface _UIWindowSceneActivationPrewarmAction
+ (id)actionWithMorphContainer:(id)a3 alphaSource:(id)a4 sourceIdentifier:(id)a5 interactionIdentifier:(id)a6 requestCenterSlot:(BOOL)a7 requestFullscreen:(BOOL)a8 responseHandler:(id)a9;
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

+ (id)actionWithMorphContainer:(id)a3 alphaSource:(id)a4 sourceIdentifier:(id)a5 interactionIdentifier:(id)a6 requestCenterSlot:(BOOL)a7 requestFullscreen:(BOOL)a8 responseHandler:(id)a9
{
  v38 = a8;
  v9 = a7;
  v14 = a9;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_new();
  v20 = [v18 layer];
  v21 = [v20 context];
  v22 = [v21 contextId];

  v23 = [v18 layer];

  RenderId = CALayerGetRenderId();
  v25 = [v17 layer];

  v26 = CALayerGetRenderId();
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
  [v19 setObject:v27 forSetting:1];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:RenderId];
  [v19 setObject:v28 forSetting:2];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v26];
  [v19 setObject:v29 forSetting:3];

  v30 = [MEMORY[0x1E696AAE8] mainBundle];
  v31 = [v30 bundleIdentifier];
  [v19 setObject:v31 forSetting:4];

  [v19 setObject:v16 forSetting:5];
  [v19 setObject:v15 forSetting:6];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v19 setObject:v32 forSetting:7];

  v33 = [MEMORY[0x1E696AD98] numberWithBool:v38];
  [v19 setObject:v33 forSetting:8];

  v34 = [a1 alloc];
  v35 = [MEMORY[0x1E698E5F8] responderWithHandler:v14];

  v36 = [v34 initWithInfo:v19 responder:v35];

  return v36;
}

- (unsigned)sourceLayerContextId
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (unint64_t)morphContainerRenderId
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:2];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (unint64_t)deparentingPortalAlphaSourceLayerRenderId
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (NSString)sourceAppBundleIdentifier
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:4];

  return v3;
}

- (NSString)sourceSceneIdentifier
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:5];

  return v3;
}

- (NSString)interactionIdentifier
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:6];

  return v3;
}

- (BOOL)requestCenterSlot
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:7];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)requestFullscreen
{
  v2 = [(_UIWindowSceneActivationPrewarmAction *)self info];
  v3 = [v2 objectForSetting:8];
  v4 = [v3 BOOLValue];

  return v4;
}

@end