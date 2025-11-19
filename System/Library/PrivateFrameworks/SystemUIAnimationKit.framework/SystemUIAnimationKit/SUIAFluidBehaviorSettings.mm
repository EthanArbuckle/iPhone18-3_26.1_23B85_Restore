@interface SUIAFluidBehaviorSettings
+ (id)_moduleWithSectionTitle:(id)a3;
+ (id)settingsControllerModule;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4;
- (BOOL)isEqual:(id)a3;
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
- (void)setBehaviorType:(int64_t)a3;
- (void)setDampingRatio:(double)a3;
- (void)setDampingRatioSmoothing:(double)a3;
- (void)setDefaultCriticallyDampedValues;
- (void)setDefaultValues;
- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4;
- (void)setInertialProjectionDeceleration:(double)a3;
- (void)setInertialTargetSmoothingRatio:(double)a3;
- (void)setName:(id)a3;
- (void)setPreferredFrameRateRange:(id)a3;
- (void)setResponse:(double)a3;
- (void)setResponseSmoothing:(double)a3;
- (void)setRetargetImpulse:(double)a3;
- (void)setSmoothingAndProjectionEnabled:(BOOL)a3;
- (void)setTrackingDampingRatio:(double)a3;
- (void)setTrackingDampingRatioSmoothing:(double)a3;
- (void)setTrackingResponse:(double)a3;
- (void)setTrackingResponseSmoothing:(double)a3;
- (void)setTrackingRetargetImpulse:(double)a3;
@end

@implementation SUIAFluidBehaviorSettings

- (int64_t)behaviorType
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_behaviorType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBehaviorType:(int64_t)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_behaviorType;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setName:(id)a3
{
  if (a3)
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

- (void)setDampingRatio:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)response
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResponse:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)retargetImpulse
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRetargetImpulse:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)trackingDampingRatio
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingDampingRatio:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)trackingResponse
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingResponse:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)trackingRetargetImpulse
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingRetargetImpulse:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)smoothingAndProjectionEnabled
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_smoothingAndProjectionEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSmoothingAndProjectionEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_smoothingAndProjectionEnabled;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)dampingRatioSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatioSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDampingRatioSmoothing:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatioSmoothing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)responseSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_responseSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setResponseSmoothing:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_responseSmoothing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)trackingDampingRatioSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatioSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingDampingRatioSmoothing:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatioSmoothing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)trackingResponseSmoothing
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponseSmoothing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTrackingResponseSmoothing:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponseSmoothing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)inertialTargetSmoothingRatio
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialTargetSmoothingRatio;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInertialTargetSmoothingRatio:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialTargetSmoothingRatio;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)inertialProjectionDeceleration
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialProjectionDeceleration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInertialProjectionDeceleration:(double)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_inertialProjectionDeceleration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (PTFrameRateRangeSettings)preferredFrameRateRange
{
  v3 = OBJC_IVAR___SUIAFluidBehaviorSettings_preferredFrameRateRange;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredFrameRateRange:(id)a3
{
  v5 = OBJC_IVAR___SUIAFluidBehaviorSettings_preferredFrameRateRange;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  SUIAFluidBehaviorSettings.setDefaultValues()();
}

- (void)setDefaultCriticallyDampedValues
{
  v2 = self;
  [(SUIAFluidBehaviorSettings *)v2 setDefaultValues];
  [(SUIAFluidBehaviorSettings *)v2 setDampingRatio:1.0];
  [(SUIAFluidBehaviorSettings *)v2 setResponse:0.336];
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4
{
  v8 = self;
  SUIAFluidBehaviorSettings.parametersForTransition(from:to:)(a4, a5, &v14);
  LOBYTE(a5) = v15;
  LOBYTE(a4) = v16;
  v9 = v20;

  v11 = v17;
  v12 = v18;
  v13 = v19;
  *&retstr->var0 = v14;
  retstr->var2 = a5 & 1;
  retstr->var3 = a4 & 1;
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
  v2 = self;
  [(SUIAFluidBehaviorSettings *)v2 dampingRatio];
  v4 = v3;
  [(SUIAFluidBehaviorSettings *)v2 response];
  SUIAConvertDampingRatioAndResponseToTensionAndFriction(v9, &v8, v4, v5);
  v6 = [objc_opt_self() settingsWithMass:1.0 stiffness:v9[0] damping:v8];

  return v6;
}

- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4
{
  v4 = *&a4;
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  v13 = self;
  v8 = [(SUIAFluidBehaviorSettings *)v13 preferredFrameRateRange];
  if (v8)
  {
    v12 = v8;
    *&v9 = minimum;
    *&v10 = maximum;
    *&v11 = preferred;
    [(PTFrameRateRangeSettings *)v8 setFrameRateRange:v4 highFrameRateReason:v9, v10, v11];
  }

  else
  {
    __break(1u);
  }
}

- (CAFrameRateRange)frameRateRange
{
  v2 = self;
  v3 = [(SUIAFluidBehaviorSettings *)v2 preferredFrameRateRange];
  if (v3)
  {
    v7 = v3;
    [(PTFrameRateRangeSettings *)v3 frameRateRange];
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
  v2 = self;
  v3 = [(SUIAFluidBehaviorSettings *)v2 preferredFrameRateRange];
  if (v3)
  {
    v4 = v3;
    v5 = [(PTFrameRateRangeSettings *)v3 highFrameRateReason];

    LODWORD(v3) = v5;
  }

  else
  {
    __break(1u);
  }

  return v3;
}

+ (id)settingsControllerModule
{
  v3 = sub_26C614E38();
  v4 = [a1 _moduleWithSectionTitle_];

  return v4;
}

+ (id)_moduleWithSectionTitle:(id)a3
{
  if (a3)
  {
    sub_26C614E48();
  }

  _sSo25SUIAFluidBehaviorSettingsC20SystemUIAnimationKitE7_module16withSectionTitleSo8PTModuleCSgSSSg_tFZ_0();
  v4 = v3;

  return v4;
}

- (NSString)description
{
  v2 = self;
  SUIAFluidBehaviorSettings.description.getter();

  v3 = sub_26C614E38();

  return v3;
}

- (id)copy
{
  v2 = self;
  SUIAFluidBehaviorSettings.copy()(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_26C615118();
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_26C614FE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SUIAFluidBehaviorSettings.isEqual(_:)(v8);

  sub_26C5D31B4(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  SUIAFluidBehaviorSettings.hash.getter();
  v4 = v3;

  return v4;
}

@end