@interface SUIAFluidBehaviorSettings
+ (id)_moduleWithSectionTitle:(id)title;
+ (id)settingsControllerModule;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (BOOL)isEqual:(id)equal;
- (BOOL)smoothingAndProjectionEnabled;
- (CAFrameRateRange)frameRateRange;
- (NSString)description;
- (NSString)name;
- (PTFrameRateRangeSettings)preferredFrameRateRange;
- (double)dampingRatio;
- (double)dampingRatioSmoothing;
- (double)inertialProjectionDeceleration;
- (double)inertialTargetSmoothingRatio;
- (double)response;
- (double)responseSmoothing;
- (double)retargetImpulse;
- (double)trackingDampingRatio;
- (double)trackingDampingRatioSmoothing;
- (double)trackingResponse;
- (double)trackingResponseSmoothing;
- (double)trackingRetargetImpulse;
- (id)BSAnimationSettings;
- (id)copy;
- (int64_t)behaviorType;
- (int64_t)hash;
- (unsigned)highFrameRateReason;
- (void)setBehaviorType:(int64_t)type;
- (void)setDampingRatio:(double)ratio;
- (void)setDampingRatioSmoothing:(double)smoothing;
- (void)setDefaultCriticallyDampedValues;
- (void)setDefaultValues;
- (void)setFrameRateRange:(CAFrameRateRange)range highFrameRateReason:(unsigned int)reason;
- (void)setInertialProjectionDeceleration:(double)deceleration;
- (void)setInertialTargetSmoothingRatio:(double)ratio;
- (void)setName:(id)name;
- (void)setPreferredFrameRateRange:(id)range;
- (void)setResponse:(double)response;
- (void)setResponseSmoothing:(double)smoothing;
- (void)setRetargetImpulse:(double)impulse;
- (void)setSmoothingAndProjectionEnabled:(BOOL)enabled;
- (void)setTrackingDampingRatio:(double)ratio;
- (void)setTrackingDampingRatioSmoothing:(double)smoothing;
- (void)setTrackingResponse:(double)response;
- (void)setTrackingResponseSmoothing:(double)smoothing;
- (void)setTrackingRetargetImpulse:(double)impulse;
@end

@implementation SUIAFluidBehaviorSettings

- (int64_t)behaviorType
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_behaviorType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBehaviorType:(int64_t)type
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_behaviorType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSString)name
{
  v2 = self + OBJC_IVAR___SUIAFluidBehaviorSettings_name;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_26C614E38();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setName:(id)name
{
  if (name)
  {
    v4 = sub_26C614E48();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SUIAFluidBehaviorSettings_name);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (double)dampingRatio
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDampingRatio:(double)ratio
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
  swift_beginAccess();
  *(self + v5) = ratio;
}

- (double)response
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResponse:(double)response
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  swift_beginAccess();
  *(self + v5) = response;
}

- (double)retargetImpulse
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRetargetImpulse:(double)impulse
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  swift_beginAccess();
  *(self + v5) = impulse;
}

- (double)trackingDampingRatio
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingDampingRatio:(double)ratio
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  swift_beginAccess();
  *(self + v5) = ratio;
}

- (double)trackingResponse
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingResponse:(double)response
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  swift_beginAccess();
  *(self + v5) = response;
}

- (double)trackingRetargetImpulse
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingRetargetImpulse:(double)impulse
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  swift_beginAccess();
  *(self + v5) = impulse;
}

- (BOOL)smoothingAndProjectionEnabled
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_smoothingAndProjectionEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSmoothingAndProjectionEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_smoothingAndProjectionEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (double)dampingRatioSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatioSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDampingRatioSmoothing:(double)smoothing
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatioSmoothing;
  swift_beginAccess();
  *(self + v5) = smoothing;
}

- (double)responseSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_responseSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResponseSmoothing:(double)smoothing
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_responseSmoothing;
  swift_beginAccess();
  *(self + v5) = smoothing;
}

- (double)trackingDampingRatioSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatioSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingDampingRatioSmoothing:(double)smoothing
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatioSmoothing;
  swift_beginAccess();
  *(self + v5) = smoothing;
}

- (double)trackingResponseSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponseSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingResponseSmoothing:(double)smoothing
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponseSmoothing;
  swift_beginAccess();
  *(self + v5) = smoothing;
}

- (double)inertialTargetSmoothingRatio
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialTargetSmoothingRatio;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInertialTargetSmoothingRatio:(double)ratio
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialTargetSmoothingRatio;
  swift_beginAccess();
  *(self + v5) = ratio;
}

- (double)inertialProjectionDeceleration
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialProjectionDeceleration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInertialProjectionDeceleration:(double)deceleration
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialProjectionDeceleration;
  swift_beginAccess();
  *(self + v5) = deceleration;
}

- (PTFrameRateRangeSettings)preferredFrameRateRange
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_preferredFrameRateRange;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredFrameRateRange:(id)range
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_preferredFrameRateRange;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = range;
  rangeCopy = range;
}

- (void)setDefaultValues
{
  selfCopy = self;
  SUIAFluidBehaviorSettings.setDefaultValues()();
}

- (void)setDefaultCriticallyDampedValues
{
  selfCopy = self;
  [(SUIAFluidBehaviorSettings *)selfCopy setDefaultValues];
  [(SUIAFluidBehaviorSettings *)selfCopy setDampingRatio:1.0];
  [(SUIAFluidBehaviorSettings *)selfCopy setResponse:0.336];
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  selfCopy = self;
  SUIAFluidBehaviorSettings.parametersForTransition(from:to:)(toState, a5, &v14);
  LOBYTE(a5) = v15;
  LOBYTE(toState) = v16;
  v9 = v20;

  v11 = v17;
  v12 = v18;
  v13 = v19;
  *&retstr->var0 = v14;
  retstr->var2 = a5 & 1;
  retstr->var3 = toState & 1;
  *&retstr->var4 = v11;
  *&retstr->var6 = v12;
  *&retstr->var8 = v13;
  retstr->var10 = v9;
  return result;
}

- (id)BSAnimationSettings
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = 0.0;
  v9[0] = 0.0;
  selfCopy = self;
  [(SUIAFluidBehaviorSettings *)selfCopy dampingRatio];
  v4 = v3;
  [(SUIAFluidBehaviorSettings *)selfCopy response];
  SUIAConvertDampingRatioAndResponseToTensionAndFriction(v9, &v8, v4, v5);
  v6 = [objc_opt_self() settingsWithMass:1.0 stiffness:v9[0] damping:v8];

  return v6;
}

- (void)setFrameRateRange:(CAFrameRateRange)range highFrameRateReason:(unsigned int)reason
{
  v4 = *&reason;
  preferred = range.preferred;
  maximum = range.maximum;
  minimum = range.minimum;
  selfCopy = self;
  preferredFrameRateRange = [(SUIAFluidBehaviorSettings *)selfCopy preferredFrameRateRange];
  if (preferredFrameRateRange)
  {
    v12 = preferredFrameRateRange;
    *&v9 = minimum;
    *&v10 = maximum;
    *&v11 = preferred;
    [(PTFrameRateRangeSettings *)preferredFrameRateRange setFrameRateRange:v4 highFrameRateReason:v9, v10, v11];
  }

  else
  {
    __break(1u);
  }
}

- (CAFrameRateRange)frameRateRange
{
  selfCopy = self;
  preferredFrameRateRange = [(SUIAFluidBehaviorSettings *)selfCopy preferredFrameRateRange];
  if (preferredFrameRateRange)
  {
    v7 = preferredFrameRateRange;
    [(PTFrameRateRangeSettings *)preferredFrameRateRange frameRateRange];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = v9;
    v5 = v11;
    v6 = v13;
  }

  else
  {
    __break(1u);
  }

  result.preferred = v6;
  result.maximum = v5;
  result.minimum = v4;
  return result;
}

- (unsigned)highFrameRateReason
{
  selfCopy = self;
  preferredFrameRateRange = [(SUIAFluidBehaviorSettings *)selfCopy preferredFrameRateRange];
  if (preferredFrameRateRange)
  {
    v4 = preferredFrameRateRange;
    highFrameRateReason = [(PTFrameRateRangeSettings *)preferredFrameRateRange highFrameRateReason];

    LODWORD(preferredFrameRateRange) = highFrameRateReason;
  }

  else
  {
    __break(1u);
  }

  return preferredFrameRateRange;
}

+ (id)settingsControllerModule
{
  v3 = sub_26C614E38();
  _moduleWithSectionTitle_ = [self _moduleWithSectionTitle_];

  return _moduleWithSectionTitle_;
}

+ (id)_moduleWithSectionTitle:(id)title
{
  if (title)
  {
    sub_26C614E48();
  }

  _sSo25SUIAFluidBehaviorSettingsC20SystemUIAnimationKitE7_module16withSectionTitleSo8PTModuleCSgSSSg_tFZ_0();
  v4 = v3;

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  SUIAFluidBehaviorSettings.description.getter();

  v3 = sub_26C614E38();

  return v3;
}

- (id)copy
{
  selfCopy = self;
  SUIAFluidBehaviorSettings.copy()(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_26C615118();
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_26C614FE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SUIAFluidBehaviorSettings.isEqual(_:)(v8);

  sub_26C5D31B4(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  SUIAFluidBehaviorSettings.hash.getter();
  v4 = v3;

  return v4;
}

@end