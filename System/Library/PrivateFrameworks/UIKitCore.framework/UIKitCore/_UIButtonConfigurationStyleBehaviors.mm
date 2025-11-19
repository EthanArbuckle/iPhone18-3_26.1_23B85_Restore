@interface _UIButtonConfigurationStyleBehaviors
+ (id)behaviorForStyle:(int64_t)a3;
+ (id)emptyBehaviors;
+ (id)fillBehaviors;
+ (id)grayBehaviors;
+ (id)plainBehaviors:(int64_t)a3;
+ (id)tintBehaviors;
+ (int64_t)glassMonochromaticTreatmentFromBaseColor:(id)a3 traitCollection:(id)a4;
- (_UIButtonConfigurationStyleBehaviors)initWithStyle:(int64_t)a3;
- (id)behaviorForState:(unint64_t)a3;
- (id)effectiveActivityIndicatorColorFromEffectiveColor:(id)a3 state:(unint64_t)a4;
- (id)effectiveBackgroundColorFromBaseColor:(id)a3 state:(unint64_t)a4 traitCollection:(id)a5;
- (id)effectiveBackgroundVisualEffectFromBaseColor:(id)a3 state:(unint64_t)a4 traitCollection:(id)a5;
- (id)effectiveBehaviorWithoutButtonShapes;
- (id)effectiveForegroundColorFromBaseColor:(id)a3 baseBackgroundColor:(id)a4 state:(unint64_t)a5 traitCollection:(id)a6;
- (id)effectiveMaterialFromBaseColor:(id)a3 state:(unint64_t)a4 adaptive:(BOOL)a5 traitCollection:(id)a6;
- (int64_t)effectiveMonochromaticTreatmentFromBaseColor:(id)a3 traitCollection:(id)a4;
@end

@implementation _UIButtonConfigurationStyleBehaviors

+ (id)tintBehaviors
{
  v2 = tintBehaviors_tint;
  if (!tintBehaviors_tint)
  {
    v3 = [[_UIButtonConfigurationStyleBehaviors alloc] initWithStyle:2];
    v4 = tintBehaviors_tint;
    tintBehaviors_tint = v3;

    [tintBehaviors_tint setStyleDescription:@"tinted"];
    [tintBehaviors_tint setCalculateForegroundColor:&__block_literal_global_54_0];
    [tintBehaviors_tint setCalculateBackgroundColor:&__block_literal_global_60_0];
    [tintBehaviors_tint setCalculateBackgroundVisualEffect:&__block_literal_global_64_0];
    [tintBehaviors_tint setSelectionStyle:3];
    [tintBehaviors_tint setAutomaticMacIdiomStyle:3];
    [tintBehaviors_tint setCornerStyle:cornerStyleForDeviceIdiomAndConfigurationKind(1)];
    v2 = tintBehaviors_tint;
  }

  return v2;
}

+ (id)fillBehaviors
{
  v2 = fillBehaviors_fill;
  if (!fillBehaviors_fill)
  {
    v3 = [[_UIButtonConfigurationStyleBehaviors alloc] initWithStyle:3];
    v4 = fillBehaviors_fill;
    fillBehaviors_fill = v3;

    [fillBehaviors_fill setStyleDescription:@"filled"];
    [fillBehaviors_fill setCalculateForegroundColor:&__block_literal_global_69_1];
    [fillBehaviors_fill setCalculateBackgroundColor:&__block_literal_global_73_0];
    [fillBehaviors_fill setCalculateBackgroundVisualEffect:&__block_literal_global_77_1];
    [fillBehaviors_fill setAutomaticMacIdiomStyle:100];
    [fillBehaviors_fill setCornerStyle:cornerStyleForDeviceIdiomAndConfigurationKind(1)];
    v2 = fillBehaviors_fill;
  }

  return v2;
}

+ (int64_t)glassMonochromaticTreatmentFromBaseColor:(id)a3 traitCollection:(id)a4
{
  v6 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4;
  if (!a3)
  {
    sub_188E1B6FC(v8);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
    if (!(*(*(v10 - 8) + 48))(v8, 2, v10))
    {

      sub_188AD77B4(v8);
      return 2;
    }

    sub_188AD77B4(v8);
  }

  v11 = a3;
  v12 = [v9 _monochromaticTreatment];

  return v12;
}

+ (id)grayBehaviors
{
  v2 = grayBehaviors_gray;
  if (!grayBehaviors_gray)
  {
    v3 = [[_UIButtonConfigurationStyleBehaviors alloc] initWithStyle:1];
    v4 = grayBehaviors_gray;
    grayBehaviors_gray = v3;

    [grayBehaviors_gray setStyleDescription:@"gray"];
    [grayBehaviors_gray setCalculateForegroundColor:&__block_literal_global_41_0];
    [grayBehaviors_gray setCalculateBackgroundColor:&__block_literal_global_47_1];
    [grayBehaviors_gray setCalculateBackgroundVisualEffect:&__block_literal_global_49_2];
    [grayBehaviors_gray setSelectionStyle:2];
    [grayBehaviors_gray setAutomaticMacIdiomStyle:1];
    [grayBehaviors_gray setCornerStyle:cornerStyleForDeviceIdiomAndConfigurationKind(1)];
    v2 = grayBehaviors_gray;
  }

  return v2;
}

- (_UIButtonConfigurationStyleBehaviors)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIButtonConfigurationStyleBehaviors;
  result = [(_UIButtonConfigurationStyleBehaviors *)&v5 init];
  if (result)
  {
    result->_style = a3;
    *&result->_selectionStyle = xmmword_18A67BBC0;
  }

  return result;
}

- (id)effectiveForegroundColorFromBaseColor:(id)a3 baseBackgroundColor:(id)a4 state:(unint64_t)a5 traitCollection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  calculateForegroundColor = self->_calculateForegroundColor;
  if (calculateForegroundColor)
  {
    v14 = calculateForegroundColor[2](calculateForegroundColor, v10, v11, a5, v12);
  }

  else if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = +[UIColor tintColor];
  }

  v15 = v14;

  return v15;
}

- (id)effectiveBackgroundColorFromBaseColor:(id)a3 state:(unint64_t)a4 traitCollection:(id)a5
{
  v8 = a3;
  v9 = a5;
  calculateBackgroundColor = self->_calculateBackgroundColor;
  if (calculateBackgroundColor)
  {
    v11 = calculateBackgroundColor[2](calculateBackgroundColor, v8, a4, v9);
  }

  else if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = +[UIColor tintColor];
  }

  v12 = v11;

  return v12;
}

- (id)effectiveBackgroundVisualEffectFromBaseColor:(id)a3 state:(unint64_t)a4 traitCollection:(id)a5
{
  calculateBackgroundVisualEffect = self->_calculateBackgroundVisualEffect;
  if (calculateBackgroundVisualEffect)
  {
    calculateBackgroundVisualEffect = (calculateBackgroundVisualEffect)[2](calculateBackgroundVisualEffect, a3, a4, a5);
    v5 = vars8;
  }

  return calculateBackgroundVisualEffect;
}

- (id)effectiveActivityIndicatorColorFromEffectiveColor:(id)a3 state:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if ((v4 & 2) != 0)
  {
    v7 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (id)effectiveMaterialFromBaseColor:(id)a3 state:(unint64_t)a4 adaptive:(BOOL)a5 traitCollection:(id)a6
{
  calculateMaterial = self->_calculateMaterial;
  if (calculateMaterial)
  {
    calculateMaterial = (calculateMaterial)[2](calculateMaterial, a3, a4, a5, a6);
    v6 = vars8;
  }

  return calculateMaterial;
}

- (int64_t)effectiveMonochromaticTreatmentFromBaseColor:(id)a3 traitCollection:(id)a4
{
  calculateMonochromaticTreatment = self->_calculateMonochromaticTreatment;
  if (calculateMonochromaticTreatment)
  {
    return calculateMonochromaticTreatment[2](calculateMonochromaticTreatment, a3, a4);
  }

  else
  {
    return [a4 _monochromaticTreatment];
  }
}

- (id)behaviorForState:(unint64_t)a3
{
  v3 = a3;
  v4 = self;
  v5 = v4;
  if ((v3 & 4) != 0 && v4->_selectionStyle != -1)
  {
    v6 = [_UIButtonConfigurationStyleBehaviors behaviorForStyle:?];

    v5 = v6;
  }

  return v5;
}

- (id)effectiveBehaviorWithoutButtonShapes
{
  v3 = [_UIButtonConfigurationStyleBehaviors plainBehaviors:0];

  if (v3 == self)
  {
    v4 = effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape;
    if (!effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape)
    {
      v5 = [[_UIButtonConfigurationStyleBehaviors alloc] initWithStyle:self->_style];
      v6 = effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape;
      effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape = v5;

      [effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape setCalculateForegroundColor:self->_calculateForegroundColor];
      [effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape setSelectionStyle:self->_selectionStyle];
      [effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape setAutomaticMacIdiomStyle:self->_automaticMacIdiomStyle];
      [effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape setCornerStyle:self->_cornerStyle];
      [effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape setStyleDescription:@"plain.noShape"];
      [effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape setCalculateBackgroundColor:&__block_literal_global_9_2];
      v4 = effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape;
    }
  }

  else
  {
    v4 = self;
  }

  return v4;
}

+ (id)behaviorForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [a1 grayBehaviors];
  }

  else if (a3 == 2)
  {
    v3 = [a1 tintBehaviors];
  }

  else
  {
    if (a3 == 3)
    {
      [a1 fillBehaviors];
    }

    else
    {
      [a1 plainBehaviors:0];
    }
    v3 = ;
  }

  return v3;
}

+ (id)emptyBehaviors
{
  v2 = emptyBehaviors_empty;
  if (!emptyBehaviors_empty)
  {
    v3 = [[_UIButtonConfigurationStyleBehaviors alloc] initWithStyle:0];
    v4 = emptyBehaviors_empty;
    emptyBehaviors_empty = v3;

    [emptyBehaviors_empty setStyleDescription:@"empty"];
    [emptyBehaviors_empty setCalculateForegroundColor:&__block_literal_global_15_6];
    [emptyBehaviors_empty setCalculateBackgroundColor:&__block_literal_global_17_4];
    [emptyBehaviors_empty setCalculateBackgroundVisualEffect:&__block_literal_global_20_4];
    [emptyBehaviors_empty setSelectionStyle:0];
    [emptyBehaviors_empty setCornerStyle:-1];
    v2 = emptyBehaviors_empty;
  }

  return v2;
}

+ (id)plainBehaviors:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v4 = &qword_1ED49E5A0;
  }

  else
  {
    v4 = &qword_1ED49E598;
  }

  v5 = *v4;
  if (!*v4)
  {
    v6 = [[_UIButtonConfigurationStyleBehaviors alloc] initWithStyle:0];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setStyleDescription:@"plain"];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setCalculateForegroundColor:&__block_literal_global_25_5];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setCalculateBackgroundColor:&__block_literal_global_30_2];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setCalculateBackgroundVisualEffect:&__block_literal_global_33_5];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setCalculateMonochromaticTreatment:&__block_literal_global_36_1];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setSelectionStyle:2];
    [(_UIButtonConfigurationStyleBehaviors *)v6 setCornerStyle:cornerStyleForDeviceIdiomAndConfigurationKind(a3)];
    v7 = *v4;
    *v4 = v6;

    v5 = *v4;
  }

  v8 = v5;
LABEL_9:

  return v8;
}

@end