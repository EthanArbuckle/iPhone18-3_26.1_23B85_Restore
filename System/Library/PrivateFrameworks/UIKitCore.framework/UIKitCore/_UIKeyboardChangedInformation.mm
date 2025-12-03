@interface _UIKeyboardChangedInformation
+ (id)informationForKeyboardDown;
+ (id)informationForKeyboardPreserve:(id)preserve;
+ (id)informationForKeyboardRestore:(id)restore;
+ (id)informationForKeyboardUp:(CGRect)up withIAV:(CGRect)v;
+ (id)informationForKeyboardUpWithIAVHeight:(double)height;
- (CGPoint)persistentOffset;
- (CGRect)keyboardPositionWithIAV;
- (CGRect)keyboardPositionWithRemoteIAV;
- (_UIKeyboardChangedInformation)initWithCoder:(id)coder;
- (_UIKeyboardChangedInformation)initWithKeyboardRect:(CGRect)rect iavPosition:(CGRect)position onScreen:(BOOL)screen takeSnapshot:(BOOL)snapshot fence:(id)fence;
- (id)copyWithIntersectability:(BOOL)intersectability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutFence;
- (id)copyWithoutIAVKeyboardRect:(CGRect)rect;
- (id)description;
- (id)descriptionForLog;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIKeyboardChangedInformation

- (CGRect)keyboardPositionWithRemoteIAV
{
  objc_copyStruct(v6, &self->_keyboardPositionWithRemoteIAV, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)keyboardPositionWithIAV
{
  objc_copyStruct(v6, &self->_keyboardPositionWithIAV, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

+ (id)informationForKeyboardDown
{
  v3 = [_UIKeyboardChangedInformation alloc];
  animationFence = [self animationFence];
  v5 = [(_UIKeyboardChangedInformation *)v3 initWithKeyboardRect:0 iavPosition:0 onScreen:animationFence takeSnapshot:0.0 fence:0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];

  return v5;
}

- (void)dealloc
{
  [(_UIKeyboardUIInformation *)self resetAnimationFencing];
  v3.receiver = self;
  v3.super_class = _UIKeyboardChangedInformation;
  [(_UIKeyboardChangedInformation *)&v3 dealloc];
}

- (id)descriptionForLog
{
  v36 = MEMORY[0x1E696AEC0];
  v37.receiver = self;
  v37.super_class = _UIKeyboardChangedInformation;
  descriptionForLog = [(_UIKeyboardUIInformation *)&v37 descriptionForLog];
  v4 = _UISceneIdentityToLogString(self->_sourceSceneIdentityString);
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  sourceDisplayIdentifier = self->_sourceDisplayIdentifier;
  hostBundleIdentifier = self->_hostBundleIdentifier;
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
  v40.origin.x = v13;
  v40.origin.y = v14;
  v40.size.width = v15;
  v40.size.height = v16;
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  v17 = CGRectEqualToRect(v39, v40);
  if (v17)
  {
    v18 = @"(same)";
  }

  else
  {
    [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
    v18 = StringFromCGRect(v19, v20, v21, v22);
  }

  if (self->_isFloating)
  {
    v23 = "float:Y ";
  }

  else
  {
    v23 = "";
  }

  if (self->_multipleScenes)
  {
    v24 = "multScenes:Y ";
  }

  else
  {
    v24 = "";
  }

  if (self->_isOneness)
  {
    v25 = "oneness:Y ";
  }

  else
  {
    v25 = "";
  }

  if (self->_avoidIntersectability)
  {
    v26 = "avoidIntersect:Y ";
  }

  else
  {
    v26 = "";
  }

  if (self->_shouldTakeSnapshot)
  {
    v27 = "snapshot:Y ";
  }

  else
  {
    v27 = "";
  }

  keyboardPreserveKey = self->_keyboardPreserveKey;
  if (keyboardPreserveKey)
  {
    if (self->_shouldRestoreKeyboard)
    {
      v29 = "Y";
    }

    else
    {
      v29 = "N";
    }

    keyboardPreserveKey = [MEMORY[0x1E696AEC0] stringWithFormat:@"restore:%s (key:%@)", v29, keyboardPreserveKey];
    v31 = [v36 stringWithFormat:@"<%@ src{scene:%@ display:%@ bundle:%@} hostBundle:%@ posWithIAV:%@ %s%s%s%s%s%@>", descriptionForLog, v4, sourceDisplayIdentifier, sourceBundleIdentifier, hostBundleIdentifier, v18, v23, v24, v25, v26, v27, keyboardPreserveKey];

    if (v17)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v31 = [v36 stringWithFormat:@"<%@ src{scene:%@ display:%@ bundle:%@} hostBundle:%@ posWithIAV:%@ %s%s%s%s%s%@>", descriptionForLog, v4, sourceDisplayIdentifier, sourceBundleIdentifier, hostBundleIdentifier, v18, v23, v24, v25, v26, v27, &stru_1EFB14550];
  if (!v17)
  {
LABEL_24:
  }

LABEL_25:

  return v31;
}

- (id)description
{
  v56 = MEMORY[0x1E696AEC0];
  v60.receiver = self;
  v60.super_class = _UIKeyboardChangedInformation;
  v3 = [(_UIKeyboardUIInformation *)&v60 description];
  sourceDisplayIdentifier = self->_sourceDisplayIdentifier;
  sourceSceneIdentityString = self->_sourceSceneIdentityString;
  hostBundleIdentifier = self->_hostBundleIdentifier;
  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  animationFence = [(_UIKeyboardUIInformation *)self animationFence];
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v9 = StringFromCGRect(v5, v6, v7, v8);
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
  v63.origin.x = v18;
  v63.origin.y = v19;
  v63.size.width = v20;
  v63.size.height = v21;
  v62.origin.x = v11;
  v62.origin.y = v13;
  v62.size.width = v15;
  v62.size.height = v17;
  v53 = CGRectEqualToRect(v62, v63);
  v58 = animationFence;
  v59 = v3;
  v57 = v9;
  if (v53)
  {
    v50 = @"same";
  }

  else
  {
    [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
    v50 = StringFromCGRect(v22, v23, v24, v25);
  }

  isFloating = self->_isFloating;
  if ([(_UIKeyboardUIInformation *)self keyboardOnScreen])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v27 = v26;
  if (self->_multipleScenes)
  {
    v28 = @" multiple scenes YES;";
  }

  else
  {
    v28 = &stru_1EFB14550;
  }

  if (self->_isOneness)
  {
    v29 = @" is in Oneness screen YES;";
  }

  else
  {
    v29 = &stru_1EFB14550;
  }

  if (self->_avoidIntersectability)
  {
    v30 = @"NO";
  }

  else
  {
    v30 = @"YES";
  }

  if (self->_shouldTakeSnapshot)
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  keyboardPreserveKey = self->_keyboardPreserveKey;
  if (keyboardPreserveKey)
  {
    v33 = MEMORY[0x1E696AEC0];
    if (self->_shouldRestoreKeyboard)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v35 = v34;
    v36 = v31;
    v37 = v30;
    keyboardPreserveKey = [v33 stringWithFormat:@" restore %@ (with key %@)", v35, keyboardPreserveKey];;
    v47 = v29;
    v45 = v28;
    v39 = v50;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v43 = [v56 stringWithFormat:@"<%@ source canvas %@; source display %@; source bundle %@; host bundle %@; animation fence %@; position %@ (with IAV %@); floating %d; on screen %@;%@ %@ intersectable %@; snapshot %@%@>", v59, sourceSceneIdentityString, sourceDisplayIdentifier, sourceBundleIdentifier, hostBundleIdentifier, v58, v57, v50, isFloating, v27, v45, v47, v37, v36, keyboardPreserveKey];;
  }

  else
  {
    v36 = v31;
    v48 = v29;
    v46 = v28;
    v39 = v50;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v43 = [v56 stringWithFormat:@"<%@ source canvas %@; source display %@; source bundle %@; host bundle %@; animation fence %@; position %@ (with IAV %@); floating %d; on screen %@;%@ %@ intersectable %@; snapshot %@%@>", v59, sourceSceneIdentityString, sourceDisplayIdentifier, sourceBundleIdentifier, hostBundleIdentifier, v58, v57, v50, isFloating, v27, v46, v48, v30, v36, &stru_1EFB14550];;
  }

  if (!v53)
  {
  }

  return v43;
}

- (id)copyWithoutFence
{
  v3 = objc_alloc(objc_opt_class());
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  keyboardOnScreen = [(_UIKeyboardUIInformation *)self keyboardOnScreen];
  shouldTakeSnapshot = [(_UIKeyboardChangedInformation *)self shouldTakeSnapshot];
  animationFence = [(_UIKeyboardUIInformation *)self animationFence];
  v23 = [v3 initWithKeyboardRect:keyboardOnScreen iavPosition:shouldTakeSnapshot onScreen:animationFence takeSnapshot:v5 fence:{v7, v9, v11, v13, v15, v17, v19}];

  *(v23 + 244) = self->_isFloating;
  *(v23 + 304) = self->_persistentOffset;
  v24 = [(NSString *)self->_sourceSceneIdentityString copy];
  v25 = *(v23 + 256);
  *(v23 + 256) = v24;

  v26 = [(NSString *)self->_sourceDisplayIdentifier copy];
  v27 = *(v23 + 264);
  *(v23 + 264) = v26;

  v28 = [(NSString *)self->_sourceBundleIdentifier copy];
  v29 = *(v23 + 272);
  *(v23 + 272) = v28;

  v30 = [(NSString *)self->_hostBundleIdentifier copy];
  v31 = *(v23 + 280);
  *(v23 + 280) = v30;

  *(v23 + 248) = self->_hostProcessIdentifier;
  *(v23 + 252) = self->_processIdentifier;
  *(v23 + 240) = self->_avoidIntersectability;
  *(v23 + 241) = self->_multipleScenes;
  *(v23 + 242) = self->_isOneness;
  *(v23 + 243) = self->_automaticMinimizationEnabled;
  size = self->_keyboardPositionWithRemoteIAV.size;
  *(v23 + 352) = self->_keyboardPositionWithRemoteIAV.origin;
  *(v23 + 368) = size;
  v33 = [(NSString *)self->_keyboardPreserveKey copy];
  v34 = *(v23 + 296);
  *(v23 + 296) = v33;

  *(v23 + 246) = self->_shouldRestoreKeyboard;
  [v23 setUiPosition:{-[_UIKeyboardUIInformation uiPosition](self, "uiPosition")}];
  [v23 setAssistantBarVisible:{-[_UIKeyboardUIInformation assistantBarVisible](self, "assistantBarVisible")}];
  return v23;
}

- (_UIKeyboardChangedInformation)initWithKeyboardRect:(CGRect)rect iavPosition:(CGRect)position onScreen:(BOOL)screen takeSnapshot:(BOOL)snapshot fence:(id)fence
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v12 = rect.size.height;
  v18.receiver = self;
  v18.super_class = _UIKeyboardChangedInformation;
  v13 = [(_UIKeyboardUIInformation *)&v18 initWithKeyboardFrame:screen onScreen:1 animated:0 tracking:fence fence:rect.origin.x, rect.origin.y, rect.size.width];
  v14 = v13;
  if (v13)
  {
    v13->_keyboardPositionWithIAV.origin.x = x;
    v13->_keyboardPositionWithIAV.origin.y = y;
    v13->_keyboardPositionWithIAV.size.width = width;
    v13->_keyboardPositionWithIAV.size.height = height;
    v13->_keyboardIAVHeight = height - v12;
    v13->_shouldTakeSnapshot = snapshot;
    v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v15 preferencesActions];
    v14->_automaticMinimizationEnabled = [preferencesActions automaticMinimizationEnabled];
  }

  return v14;
}

+ (id)informationForKeyboardUpWithIAVHeight:(double)height
{
  v5 = [_UIKeyboardChangedInformation alloc];
  animationFence = [self animationFence];
  v7 = [(_UIKeyboardChangedInformation *)v5 initWithKeyboardIAVHeight:1 onScreen:1 takeSnapshot:animationFence fence:height];

  return v7;
}

+ (id)informationForKeyboardUp:(CGRect)up withIAV:(CGRect)v
{
  height = v.size.height;
  width = v.size.width;
  y = v.origin.y;
  x = v.origin.x;
  v8 = up.size.height;
  v9 = up.size.width;
  v10 = up.origin.y;
  v11 = up.origin.x;
  v13 = [_UIKeyboardChangedInformation alloc];
  animationFence = [self animationFence];
  height = [(_UIKeyboardChangedInformation *)v13 initWithKeyboardRect:1 iavPosition:1 onScreen:animationFence takeSnapshot:v11 fence:v10, v9, v8, x, y, width, height];

  return height;
}

+ (id)informationForKeyboardPreserve:(id)preserve
{
  preserveCopy = preserve;
  v5 = [_UIKeyboardChangedInformation alloc];
  animationFence = [self animationFence];
  v7 = [(_UIKeyboardChangedInformation *)v5 initWithKeyboardRect:0 iavPosition:0 onScreen:animationFence takeSnapshot:*MEMORY[0x1E695F058] fence:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  *(v7 + 246) = 0;
  v8 = *(v7 + 296);
  *(v7 + 296) = preserveCopy;

  return v7;
}

+ (id)informationForKeyboardRestore:(id)restore
{
  restoreCopy = restore;
  v5 = [_UIKeyboardChangedInformation alloc];
  animationFence = [self animationFence];
  v7 = [(_UIKeyboardChangedInformation *)v5 initWithKeyboardRect:0 iavPosition:0 onScreen:animationFence takeSnapshot:*MEMORY[0x1E695F058] fence:*(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  *(v7 + 246) = 1;
  v8 = *(v7 + 296);
  *(v7 + 296) = restoreCopy;

  return v7;
}

- (id)copyWithoutIAVKeyboardRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc(objc_opt_class());
  keyboardOnScreen = [(_UIKeyboardUIInformation *)self keyboardOnScreen];
  shouldTakeSnapshot = [(_UIKeyboardChangedInformation *)self shouldTakeSnapshot];
  animationFence = [(_UIKeyboardUIInformation *)self animationFence];
  v12 = [v8 initWithKeyboardRect:keyboardOnScreen iavPosition:shouldTakeSnapshot onScreen:animationFence takeSnapshot:x fence:{y, width, height, x, y, width, height}];

  *(v12 + 244) = self->_isFloating;
  *(v12 + 304) = self->_persistentOffset;
  v13 = [(NSString *)self->_sourceSceneIdentityString copy];
  v14 = *(v12 + 256);
  *(v12 + 256) = v13;

  v15 = [(NSString *)self->_sourceDisplayIdentifier copy];
  v16 = *(v12 + 264);
  *(v12 + 264) = v15;

  v17 = [(NSString *)self->_sourceBundleIdentifier copy];
  v18 = *(v12 + 272);
  *(v12 + 272) = v17;

  v19 = [(NSString *)self->_hostBundleIdentifier copy];
  v20 = *(v12 + 280);
  *(v12 + 280) = v19;

  *(v12 + 248) = self->_hostProcessIdentifier;
  *(v12 + 252) = self->_processIdentifier;
  *(v12 + 240) = self->_avoidIntersectability;
  *(v12 + 241) = self->_multipleScenes;
  *(v12 + 242) = self->_isOneness;
  *(v12 + 243) = self->_automaticMinimizationEnabled;
  v21 = [(NSString *)self->_keyboardPreserveKey copy];
  v22 = *(v12 + 296);
  *(v12 + 296) = v21;

  [v12 setUiPosition:{-[_UIKeyboardUIInformation uiPosition](self, "uiPosition")}];
  [v12 setAssistantBarVisible:{-[_UIKeyboardUIInformation assistantBarVisible](self, "assistantBarVisible")}];
  return v12;
}

- (id)copyWithIntersectability:(BOOL)intersectability
{
  v5 = objc_alloc(objc_opt_class());
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  keyboardOnScreen = [(_UIKeyboardUIInformation *)self keyboardOnScreen];
  shouldTakeSnapshot = [(_UIKeyboardChangedInformation *)self shouldTakeSnapshot];
  animationFence = [(_UIKeyboardUIInformation *)self animationFence];
  v25 = [v5 initWithKeyboardRect:keyboardOnScreen iavPosition:shouldTakeSnapshot onScreen:animationFence takeSnapshot:v7 fence:{v9, v11, v13, v15, v17, v19, v21}];

  *(v25 + 244) = self->_isFloating;
  *(v25 + 304) = self->_persistentOffset;
  v26 = [(NSString *)self->_sourceSceneIdentityString copy];
  v27 = *(v25 + 256);
  *(v25 + 256) = v26;

  v28 = [(NSString *)self->_sourceDisplayIdentifier copy];
  v29 = *(v25 + 264);
  *(v25 + 264) = v28;

  v30 = [(NSString *)self->_sourceBundleIdentifier copy];
  v31 = *(v25 + 272);
  *(v25 + 272) = v30;

  v32 = [(NSString *)self->_hostBundleIdentifier copy];
  v33 = *(v25 + 280);
  *(v25 + 280) = v32;

  *(v25 + 248) = self->_hostProcessIdentifier;
  *(v25 + 252) = self->_processIdentifier;
  *(v25 + 240) = !intersectability;
  *(v25 + 241) = self->_multipleScenes;
  *(v25 + 242) = self->_isOneness;
  *(v25 + 243) = self->_automaticMinimizationEnabled;
  size = self->_keyboardPositionWithRemoteIAV.size;
  *(v25 + 352) = self->_keyboardPositionWithRemoteIAV.origin;
  *(v25 + 368) = size;
  v35 = [(NSString *)self->_keyboardPreserveKey copy];
  v36 = *(v25 + 296);
  *(v25 + 296) = v35;

  *(v25 + 246) = self->_shouldRestoreKeyboard;
  [v25 setUiPosition:{-[_UIKeyboardUIInformation uiPosition](self, "uiPosition")}];
  [v25 setAssistantBarVisible:{-[_UIKeyboardUIInformation assistantBarVisible](self, "assistantBarVisible")}];
  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = _UIKeyboardChangedInformation;
  [(_UIKeyboardUIInformation *)&v31 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x1E696B098];
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v6 = [v5 valueWithCGRect:?];
  [coderCopy encodeObject:v6 forKey:@"Position"];

  [coderCopy encodeBool:-[_UIKeyboardUIInformation keyboardOnScreen](self forKey:{"keyboardOnScreen"), @"OnScreen"}];
  [coderCopy encodeBool:-[_UIKeyboardChangedInformation multipleScenes](self forKey:{"multipleScenes"), @"MultipleScenes"}];
  [coderCopy encodeBool:-[_UIKeyboardChangedInformation isOneness](self forKey:{"isOneness"), @"IsOneness"}];
  [coderCopy encodeBool:-[_UIKeyboardChangedInformation automaticMinimizationEnabled](self forKey:{"automaticMinimizationEnabled"), @"AutomaticMinimization"}];
  [coderCopy encodeBool:self->_avoidIntersectability forKey:@"AvoidIntersectability"];
  [coderCopy encodeBool:-[_UIKeyboardChangedInformation shouldTakeSnapshot](self forKey:{"shouldTakeSnapshot"), @"TakeSnapshot"}];
  [coderCopy encodeBool:self->_shouldRestoreKeyboard forKey:@"RestoreKeyboard"];
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
  v34.origin.x = v15;
  v34.origin.y = v16;
  v34.size.width = v17;
  v34.size.height = v18;
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  if (!CGRectEqualToRect(v32, v34))
  {
    v19 = MEMORY[0x1E696B098];
    [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
    v20 = [v19 valueWithCGRect:?];
    [coderCopy encodeObject:v20 forKey:@"PositionIAV"];
  }

  [(_UIKeyboardChangedInformation *)self keyboardPositionWithRemoteIAV];
  if (!CGRectIsEmpty(v33))
  {
    v21 = MEMORY[0x1E696B098];
    [(_UIKeyboardChangedInformation *)self keyboardPositionWithRemoteIAV];
    v22 = [v21 valueWithCGRect:?];
    [coderCopy encodeObject:v22 forKey:@"PositionRemoteIAV"];
  }

  if (self->_isFloating)
  {
    [coderCopy encodeBool:1 forKey:@"IsFloating"];
    v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_persistentOffset.x, self->_persistentOffset.y}];
    [coderCopy encodeObject:v23 forKey:@"PersistentOffset"];
  }

  sourceSceneIdentityString = self->_sourceSceneIdentityString;
  if (sourceSceneIdentityString)
  {
    [coderCopy encodeObject:sourceSceneIdentityString forKey:@"SourceCanvas"];
  }

  sourceDisplayIdentifier = self->_sourceDisplayIdentifier;
  if (sourceDisplayIdentifier)
  {
    [coderCopy encodeObject:sourceDisplayIdentifier forKey:@"SourceDisplay"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [coderCopy encodeObject:sourceBundleIdentifier forKey:@"SourceBundle"];
  }

  hostBundleIdentifier = self->_hostBundleIdentifier;
  if (hostBundleIdentifier)
  {
    [coderCopy encodeObject:hostBundleIdentifier forKey:@"HostBundle"];
  }

  hostProcessIdentifier = self->_hostProcessIdentifier;
  if (hostProcessIdentifier)
  {
    [coderCopy encodeInt:hostProcessIdentifier forKey:@"HostProcessID"];
  }

  processIdentifier = self->_processIdentifier;
  if (processIdentifier)
  {
    [coderCopy encodeInt:processIdentifier forKey:@"ProcessID"];
  }

  keyboardPreserveKey = self->_keyboardPreserveKey;
  if (keyboardPreserveKey)
  {
    [coderCopy encodeObject:keyboardPreserveKey forKey:@"KeyboardPreserveKey"];
  }
}

- (_UIKeyboardChangedInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = _UIKeyboardChangedInformation;
  v5 = [(_UIKeyboardUIInformation *)&v37 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_multipleScenes = [coderCopy decodeBoolForKey:@"MultipleScenes"];
    v5->_isOneness = [coderCopy decodeBoolForKey:@"IsOneness"];
    v5->_automaticMinimizationEnabled = [coderCopy decodeBoolForKey:@"AutomaticMinimization"];
    v5->_avoidIntersectability = [coderCopy decodeBoolForKey:@"AvoidIntersectability"];
    v5->_shouldTakeSnapshot = [coderCopy decodeBoolForKey:@"TakeSnapshot"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceCanvas"];
    sourceSceneIdentityString = v5->_sourceSceneIdentityString;
    v5->_sourceSceneIdentityString = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceDisplay"];
    sourceDisplayIdentifier = v5->_sourceDisplayIdentifier;
    v5->_sourceDisplayIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceBundle"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HostBundle"];
    hostBundleIdentifier = v5->_hostBundleIdentifier;
    v5->_hostBundleIdentifier = v13;

    v5->_hostProcessIdentifier = [coderCopy decodeIntForKey:@"HostProcessID"];
    v5->_processIdentifier = [coderCopy decodeIntForKey:@"ProcessID"];
    v5->_shouldRestoreKeyboard = [coderCopy decodeBoolForKey:@"RestoreKeyboard"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeyboardPreserveKey"];
    keyboardPreserveKey = v5->_keyboardPreserveKey;
    v5->_keyboardPreserveKey = v15;

    [(_UIKeyboardUIInformation *)v5 keyboardPosition];
    v5->_keyboardPositionWithIAV.origin.x = v17;
    v5->_keyboardPositionWithIAV.origin.y = v18;
    v5->_keyboardPositionWithIAV.size.width = v19;
    v5->_keyboardPositionWithIAV.size.height = v20;
    if ([coderCopy containsValueForKey:@"PositionIAV"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PositionIAV"];
      [v21 CGRectValue];
      v5->_keyboardPositionWithIAV.origin.x = v22;
      v5->_keyboardPositionWithIAV.origin.y = v23;
      v5->_keyboardPositionWithIAV.size.width = v24;
      v5->_keyboardPositionWithIAV.size.height = v25;
    }

    v26 = *(MEMORY[0x1E695F058] + 16);
    v5->_keyboardPositionWithRemoteIAV.origin = *MEMORY[0x1E695F058];
    v5->_keyboardPositionWithRemoteIAV.size = v26;
    if ([coderCopy containsValueForKey:@"PositionRemoteIAV"])
    {
      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PositionRemoteIAV"];
      [v27 CGRectValue];
      v5->_keyboardPositionWithRemoteIAV.origin.x = v28;
      v5->_keyboardPositionWithRemoteIAV.origin.y = v29;
      v5->_keyboardPositionWithRemoteIAV.size.width = v30;
      v5->_keyboardPositionWithRemoteIAV.size.height = v31;
    }

    v5->_isFloating = [coderCopy decodeBoolForKey:@"IsFloating"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersistentOffset"];
    [v32 CGPointValue];
    v5->_persistentOffset.x = v33;
    v5->_persistentOffset.y = v34;

    objc_autoreleasePoolPop(v6);
    v35 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(_UIKeyboardUIInformation *)self keyboardPosition];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_UIKeyboardChangedInformation *)self keyboardPositionWithIAV];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  keyboardOnScreen = [(_UIKeyboardUIInformation *)self keyboardOnScreen];
  shouldTakeSnapshot = [(_UIKeyboardChangedInformation *)self shouldTakeSnapshot];
  animationFence = [(_UIKeyboardUIInformation *)self animationFence];
  v24 = [v4 initWithKeyboardRect:keyboardOnScreen iavPosition:shouldTakeSnapshot onScreen:animationFence takeSnapshot:v6 fence:{v8, v10, v12, v14, v16, v18, v20}];

  *(v24 + 244) = self->_isFloating;
  *(v24 + 304) = self->_persistentOffset;
  v25 = [(NSString *)self->_sourceSceneIdentityString copy];
  v26 = *(v24 + 256);
  *(v24 + 256) = v25;

  v27 = [(NSString *)self->_sourceDisplayIdentifier copy];
  v28 = *(v24 + 264);
  *(v24 + 264) = v27;

  v29 = [(NSString *)self->_sourceBundleIdentifier copy];
  v30 = *(v24 + 272);
  *(v24 + 272) = v29;

  v31 = [(NSString *)self->_hostBundleIdentifier copy];
  v32 = *(v24 + 280);
  *(v24 + 280) = v31;

  *(v24 + 248) = self->_hostProcessIdentifier;
  *(v24 + 252) = self->_processIdentifier;
  *(v24 + 240) = self->_avoidIntersectability;
  *(v24 + 241) = self->_multipleScenes;
  *(v24 + 242) = self->_isOneness;
  *(v24 + 243) = self->_automaticMinimizationEnabled;
  size = self->_keyboardPositionWithRemoteIAV.size;
  *(v24 + 352) = self->_keyboardPositionWithRemoteIAV.origin;
  *(v24 + 368) = size;
  v34 = [(NSString *)self->_keyboardPreserveKey copy];
  v35 = *(v24 + 296);
  *(v24 + 296) = v34;

  *(v24 + 246) = self->_shouldRestoreKeyboard;
  [v24 setAssistantBarVisible:{-[_UIKeyboardUIInformation assistantBarVisible](self, "assistantBarVisible")}];
  [v24 setUiPosition:{-[_UIKeyboardUIInformation uiPosition](self, "uiPosition")}];
  [v24 setResizing:{-[_UIKeyboardUIInformation resizing](self, "resizing")}];
  return v24;
}

- (CGPoint)persistentOffset
{
  objc_copyStruct(v4, &self->_persistentOffset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end