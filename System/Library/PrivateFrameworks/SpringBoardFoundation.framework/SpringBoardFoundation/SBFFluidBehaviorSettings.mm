@interface SBFFluidBehaviorSettings
+ (id)_moduleWithSectionTitle:(id)a3;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4;
- (BOOL)isEqual:(id)a3;
- (CAFrameRateRange)frameRateRange;
- (double)_effectiveTrackingDampingRatio;
- (double)_effectiveTrackingResponse;
- (double)_effectiveTrackingRetargetImpulse;
- (double)settlingDuration;
- (id)BSAnimationSettings;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)setDefaultCriticallyDampedValues;
- (void)setDefaultValues;
- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4;
@end

@implementation SBFFluidBehaviorSettings

- (CAFrameRateRange)frameRateRange
{
  v2 = [(SBFFluidBehaviorSettings *)self preferredFrameRateRange];
  [v2 frameRateRange];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.preferred = v11;
  result.maximum = v10;
  result.minimum = v9;
  return result;
}

- (void)setDefaultValues
{
  [(SBFFluidBehaviorSettings *)self setBehaviorType:2];
  [(SBFFluidBehaviorSettings *)self setDeceleration:0.998];
  [(SBFFluidBehaviorSettings *)self setDampingRatio:0.845];
  [(SBFFluidBehaviorSettings *)self setResponse:0.531];
  [(SBFFluidBehaviorSettings *)self setTrackingDampingRatio:0.86];
  [(SBFFluidBehaviorSettings *)self setTrackingResponse:0.15];
  [(SBFFluidBehaviorSettings *)self setRetargetImpulse:0.0];
  [(SBFFluidBehaviorSettings *)self setTrackingRetargetImpulse:0.0];
  [(SBFFluidBehaviorSettings *)self setDampingRatioSmoothing:0.0];
  [(SBFFluidBehaviorSettings *)self setResponseSmoothing:0.0];
  [(SBFFluidBehaviorSettings *)self setTrackingDampingRatioSmoothing:0.0];
  [(SBFFluidBehaviorSettings *)self setTrackingResponseSmoothing:0.0];

  [(SBFFluidBehaviorSettings *)self setSmoothingAndProjectionEnabled:0];
}

- (void)setDefaultCriticallyDampedValues
{
  [(SBFFluidBehaviorSettings *)self setDefaultValues];
  [(SBFFluidBehaviorSettings *)self setDampingRatio:1.0];

  [(SBFFluidBehaviorSettings *)self setResponse:0.336];
}

- (double)settlingDuration
{
  v3 = [MEMORY[0x1E69794A8] animation];
  [v3 setMass:1.0];
  [(SBFFluidBehaviorSettings *)self dampingRatio];
  v5 = v4;
  [(SBFFluidBehaviorSettings *)self response];
  v7 = sqrt(6.28318531 / v6 * (6.28318531 / v6));
  v8 = v5 * (v7 + v7);
  [v3 setStiffness:?];
  [v3 setDamping:v8];
  [v3 settlingDuration];
  v10 = v9;

  return v10;
}

- (double)_effectiveTrackingDampingRatio
{
  if ([(SBFFluidBehaviorSettings *)self behaviorType]== 1)
  {

    [(SBFFluidBehaviorSettings *)self dampingRatio];
  }

  else
  {

    [(SBFFluidBehaviorSettings *)self trackingDampingRatio];
  }

  return result;
}

- (double)_effectiveTrackingResponse
{
  if ([(SBFFluidBehaviorSettings *)self behaviorType]== 1)
  {

    [(SBFFluidBehaviorSettings *)self response];
  }

  else
  {

    [(SBFFluidBehaviorSettings *)self trackingResponse];
  }

  return result;
}

- (double)_effectiveTrackingRetargetImpulse
{
  if ([(SBFFluidBehaviorSettings *)self behaviorType]== 1)
  {

    [(SBFFluidBehaviorSettings *)self retargetImpulse];
  }

  else
  {

    [(SBFFluidBehaviorSettings *)self trackingRetargetImpulse];
  }

  return result;
}

- (id)BSAnimationSettings
{
  [(SBFFluidBehaviorSettings *)self dampingRatio];
  [(SBFFluidBehaviorSettings *)self response];
  v3 = MEMORY[0x1E698E780];

  return [v3 settingsWithMass:1.0 stiffness:? damping:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (![(SBFFluidBehaviorSettings *)self isEqual:v4])
  {
    objc_storeStrong((v4 + 64), self->_name);
    *(v4 + 56) = self->_behaviorType;
    *(v4 + 72) = self->_deceleration;
    *(v4 + 80) = self->_dampingRatio;
    *(v4 + 88) = self->_response;
    *(v4 + 104) = self->_trackingDampingRatio;
    *(v4 + 112) = self->_trackingResponse;
    *(v4 + 96) = self->_retargetImpulse;
    *(v4 + 120) = self->_trackingRetargetImpulse;
    *(v4 + 128) = self->_dampingRatioSmoothing;
    *(v4 + 136) = self->_responseSmoothing;
    *(v4 + 144) = self->_trackingDampingRatioSmoothing;
    *(v4 + 152) = self->_trackingResponseSmoothing;
    *(v4 + 48) = self->_smoothingAndProjectionEnabled;
    *(v4 + 160) = self->_inertialTargetSmoothingRatio;
    *(v4 + 168) = self->_inertialProjectionDeceleration;
    v5 = [(PTFrameRateRangeSettings *)self->_preferredFrameRateRange copy];
    v6 = *(v4 + 176);
    *(v4 + 176) = v5;
  }

  return v4;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4
{
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  if (a5 == 1)
  {
    [(SBFFluidBehaviorSettings *)self _effectiveTrackingDampingRatio];
    retstr->var0 = v8;
    [(SBFFluidBehaviorSettings *)self _effectiveTrackingResponse];
    retstr->var1 = v9;
    [(SBFFluidBehaviorSettings *)self _effectiveTrackingRetargetImpulse];
    retstr->var10 = v10;
    result = [(SBFFluidBehaviorSettings *)self smoothingAndProjectionEnabled];
    if (result)
    {
      trackingResponseSmoothing = self->_trackingResponseSmoothing;
      retstr->var6 = self->_trackingDampingRatioSmoothing;
      retstr->var7 = trackingResponseSmoothing;
      if (!a4)
      {
        *&retstr->var2 = 257;
        retstr->var4 = self->_dampingRatio;
        response = self->_response;
        v14 = 32;
LABEL_8:
        *(&retstr->var0 + v14) = response;
      }
    }
  }

  else
  {
    v15 = self->_response;
    retstr->var0 = self->_dampingRatio;
    retstr->var1 = v15;
    retstr->var10 = self->_retargetImpulse;
    result = [(SBFFluidBehaviorSettings *)self smoothingAndProjectionEnabled];
    if (result)
    {
      responseSmoothing = self->_responseSmoothing;
      retstr->var6 = self->_dampingRatioSmoothing;
      retstr->var7 = responseSmoothing;
      if (a4 == 1)
      {
        retstr->var9 = self->_inertialProjectionDeceleration;
        response = self->_inertialTargetSmoothingRatio * self->_response;
        v14 = 56;
        goto LABEL_8;
      }
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v54 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  behaviorType = self->_behaviorType;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke;
  v85[3] = &unk_1E8080228;
  v6 = v4;
  v86 = v6;
  v53 = [v54 appendInteger:behaviorType counterpart:v85];
  name = self->_name;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_2;
  v83[3] = &unk_1E8080250;
  v8 = v6;
  v84 = v8;
  v52 = [v53 appendString:name counterpart:v83];
  deceleration = self->_deceleration;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_3;
  v81[3] = &unk_1E8080278;
  v10 = v8;
  v82 = v10;
  v51 = [v52 appendDouble:v81 counterpart:deceleration];
  dampingRatio = self->_dampingRatio;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_4;
  v79[3] = &unk_1E8080278;
  v12 = v10;
  v80 = v12;
  v50 = [v51 appendCGFloat:v79 counterpart:dampingRatio];
  response = self->_response;
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_5;
  v77[3] = &unk_1E8080278;
  v14 = v12;
  v78 = v14;
  v49 = [v50 appendCGFloat:v77 counterpart:response];
  retargetImpulse = self->_retargetImpulse;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_6;
  v75[3] = &unk_1E8080278;
  v16 = v14;
  v76 = v16;
  v48 = [v49 appendCGFloat:v75 counterpart:retargetImpulse];
  trackingDampingRatio = self->_trackingDampingRatio;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_7;
  v73[3] = &unk_1E8080278;
  v18 = v16;
  v74 = v18;
  v47 = [v48 appendCGFloat:v73 counterpart:trackingDampingRatio];
  trackingResponse = self->_trackingResponse;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_8;
  v71[3] = &unk_1E8080278;
  v20 = v18;
  v72 = v20;
  v46 = [v47 appendCGFloat:v71 counterpart:trackingResponse];
  trackingRetargetImpulse = self->_trackingRetargetImpulse;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_9;
  v69[3] = &unk_1E8080278;
  v22 = v20;
  v70 = v22;
  v23 = [v46 appendCGFloat:v69 counterpart:trackingRetargetImpulse];
  smoothingAndProjectionEnabled = self->_smoothingAndProjectionEnabled;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_10;
  v67[3] = &unk_1E80802A0;
  v25 = v22;
  v68 = v25;
  v26 = [v23 appendBool:smoothingAndProjectionEnabled counterpart:v67];
  dampingRatioSmoothing = self->_dampingRatioSmoothing;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_11;
  v65[3] = &unk_1E8080278;
  v28 = v25;
  v66 = v28;
  v29 = [v26 appendCGFloat:v65 counterpart:dampingRatioSmoothing];
  responseSmoothing = self->_responseSmoothing;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_12;
  v63[3] = &unk_1E8080278;
  v31 = v28;
  v64 = v31;
  v32 = [v29 appendCGFloat:v63 counterpart:responseSmoothing];
  trackingDampingRatioSmoothing = self->_trackingDampingRatioSmoothing;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_13;
  v61[3] = &unk_1E8080278;
  v34 = v31;
  v62 = v34;
  v35 = [v32 appendCGFloat:v61 counterpart:trackingDampingRatioSmoothing];
  trackingResponseSmoothing = self->_trackingResponseSmoothing;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_14;
  v59[3] = &unk_1E8080278;
  v37 = v34;
  v60 = v37;
  v38 = [v35 appendCGFloat:v59 counterpart:trackingResponseSmoothing];
  inertialTargetSmoothingRatio = self->_inertialTargetSmoothingRatio;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_15;
  v57[3] = &unk_1E8080278;
  v40 = v37;
  v58 = v40;
  v41 = [v38 appendCGFloat:v57 counterpart:inertialTargetSmoothingRatio];
  inertialProjectionDeceleration = self->_inertialProjectionDeceleration;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __36__SBFFluidBehaviorSettings_isEqual___block_invoke_16;
  v55[3] = &unk_1E8080278;
  v56 = v40;
  v43 = v40;
  v44 = [v41 appendCGFloat:v55 counterpart:inertialProjectionDeceleration];
  LOBYTE(v40) = [v44 isEqual];

  return v40;
}

- (unint64_t)hash
{
  v21 = [MEMORY[0x1E698E6B8] builder];
  v20 = [v21 appendInteger:self->_behaviorType];
  v19 = [v20 appendString:self->_name];
  v18 = [v19 appendDouble:self->_deceleration];
  v17 = [v18 appendCGFloat:self->_dampingRatio];
  v16 = [v17 appendCGFloat:self->_response];
  v15 = [v16 appendCGFloat:self->_retargetImpulse];
  v14 = [v15 appendCGFloat:self->_trackingDampingRatio];
  v3 = [v14 appendCGFloat:self->_trackingResponse];
  v4 = [v3 appendCGFloat:self->_trackingRetargetImpulse];
  v5 = [v4 appendBool:self->_smoothingAndProjectionEnabled];
  v6 = [v5 appendCGFloat:self->_dampingRatioSmoothing];
  v7 = [v6 appendCGFloat:self->_responseSmoothing];
  v8 = [v7 appendCGFloat:self->_trackingDampingRatioSmoothing];
  v9 = [v8 appendCGFloat:self->_trackingResponseSmoothing];
  v10 = [v9 appendCGFloat:self->_inertialTargetSmoothingRatio];
  v11 = [v10 appendCGFloat:self->_inertialProjectionDeceleration];
  v12 = [v11 hash];

  return v12;
}

- (id)succinctDescription
{
  v2 = [(SBFFluidBehaviorSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(NSString *)self->_name length])
  {
    [v3 appendString:self->_name withName:@"Name"];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFFluidBehaviorSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFFluidBehaviorSettings *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SBFFluidBehaviorSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E807F290;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

void __66__SBFFluidBehaviorSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) BSAnimationSettings];
  v4 = [v2 appendObject:v3 withName:@"animationSettings"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) preferredFrameRateRange];
  v6 = [v5 appendObject:v7 withName:@"preferredFrameRateRange"];
}

- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4
{
  v4 = *&a4;
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  v11 = [(SBFFluidBehaviorSettings *)self preferredFrameRateRange];
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v11 setFrameRateRange:v4 highFrameRateReason:{v8, v9, v10}];
}

+ (id)_moduleWithSectionTitle:(id)a3
{
  v71[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AE18];
  v70 = a3;
  v69 = [v3 predicateWithFormat:@"behaviorType == %d", 0];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"behaviorType == %d OR behaviorType == %d", 1, 2];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"behaviorType == %d", 2];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"behaviorType == %d AND smoothingAndProjectionEnabled = YES", 2];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"behaviorType == %d AND smoothingAndProjectionEnabled = YES", 2];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Behavior Type" valueKeyPath:@"behaviorType"];
  v10 = [v9 possibleValues:&unk_1F3D3ED60 titles:&unk_1F3D3ED78];
  [v8 addObject:v10];

  v11 = [MEMORY[0x1E69C6620] rowWithTitle:@"Deceleration" valueKeyPath:@"deceleration"];
  v12 = [v11 between:0.0 and:1.0];
  v13 = [v12 condition:v69];
  [v8 addObject:v13];

  v14 = [MEMORY[0x1E69C6620] rowWithTitle:@"Damping Ratio" valueKeyPath:@"dampingRatio"];
  v15 = [v14 between:0.001 and:10.0];
  v16 = [v15 precision:3];
  v17 = [v16 condition:v4];
  [v8 addObject:v17];

  v18 = [MEMORY[0x1E69C6620] rowWithTitle:@"Response" valueKeyPath:@"response"];
  v19 = [v18 between:0.0 and:1000.0];
  v20 = [v19 precision:3];
  v21 = [v20 condition:v4];
  [v8 addObject:v21];

  v22 = [MEMORY[0x1E69C6620] rowWithTitle:@"Retarget Impulse" valueKeyPath:@"retargetImpulse"];
  v23 = [v22 between:0.0 and:1.0];
  v24 = [v23 precision:3];
  v25 = [v24 condition:v4];
  [v8 addObject:v25];

  v26 = [MEMORY[0x1E69C6620] rowWithTitle:@"Tracking Damping Ratio" valueKeyPath:@"trackingDampingRatio"];
  v27 = [v26 between:0.001 and:10.0];
  v28 = [v27 precision:3];
  v29 = [v28 condition:v5];
  [v8 addObject:v29];

  v30 = [MEMORY[0x1E69C6620] rowWithTitle:@"Tracking Response" valueKeyPath:@"trackingResponse"];
  v31 = [v30 between:0.0 and:1000.0];
  v32 = [v31 precision:3];
  v33 = [v32 condition:v5];
  [v8 addObject:v33];

  v34 = [MEMORY[0x1E69C6620] rowWithTitle:@"Tracking Retarget Impulse" valueKeyPath:@"trackingRetargetImpulse"];
  v35 = [v34 between:0.0 and:1.0];
  v36 = [v35 precision:3];
  v37 = [v36 condition:v4];
  [v8 addObject:v37];

  v38 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Use Smoothing and Projection" valueKeyPath:@"smoothingAndProjectionEnabled"];
  [v8 addObject:v38];

  v39 = [MEMORY[0x1E69C6620] rowWithTitle:@"Damping Ratio Smoothing" valueKeyPath:@"dampingRatioSmoothing"];
  v40 = [v39 between:0.0 and:1.0];
  v41 = [v40 precision:3];
  v42 = [v41 condition:v6];
  [v8 addObject:v42];

  v43 = [MEMORY[0x1E69C6620] rowWithTitle:@"Response Smoothing" valueKeyPath:@"responseSmoothing"];
  v44 = [v43 between:0.0 and:1.0];
  v45 = [v44 precision:3];
  v46 = [v45 condition:v6];
  [v8 addObject:v46];

  v47 = [MEMORY[0x1E69C6620] rowWithTitle:@"Tracking Damping Ratio Smoothing" valueKeyPath:@"trackingDampingRatioSmoothing"];
  v48 = [v47 between:0.0 and:1.0];
  v49 = [v48 precision:3];
  v50 = [v49 condition:v7];
  [v8 addObject:v50];

  v51 = [MEMORY[0x1E69C6620] rowWithTitle:@"Tracking Response Smoothing" valueKeyPath:@"trackingResponseSmoothing"];
  v52 = [v51 between:0.0 and:1.0];
  v53 = [v52 precision:3];
  v54 = [v53 condition:v7];
  [v8 addObject:v54];

  v55 = [MEMORY[0x1E69C6620] rowWithTitle:@"Target Smoothing Ratio" valueKeyPath:@"inertialTargetSmoothingRatio"];
  v56 = [v55 between:0.0 and:1.0];
  v57 = [v56 precision:3];
  v58 = [v57 condition:v7];
  [v8 addObject:v58];

  v59 = [MEMORY[0x1E69C6620] rowWithTitle:@"Projection Deceleration" valueKeyPath:@"inertialProjectionDeceleration"];
  v60 = [v59 between:0.0 and:1.0];
  v61 = [v60 precision:7];
  v62 = [v61 condition:v7];
  [v8 addObject:v62];

  v63 = [MEMORY[0x1E69C6608] rowWithTitle:@"Frame Rate Range" childSettingsKeyPath:@"preferredFrameRateRange"];
  [v8 addObject:v63];

  v64 = MEMORY[0x1E69C6630];
  v65 = [MEMORY[0x1E69C6630] sectionWithRows:v8 title:v70];

  v71[0] = v65;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
  v67 = [v64 moduleWithTitle:0 contents:v66];

  return v67;
}

@end