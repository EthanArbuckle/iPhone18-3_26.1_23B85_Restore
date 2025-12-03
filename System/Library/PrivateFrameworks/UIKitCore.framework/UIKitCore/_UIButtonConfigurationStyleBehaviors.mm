@interface _UIButtonConfigurationStyleBehaviors
+ (id)behaviorForStyle:(int64_t)style;
+ (id)emptyBehaviors;
+ (id)fillBehaviors;
+ (id)grayBehaviors;
+ (id)plainBehaviors:(int64_t)behaviors;
+ (id)tintBehaviors;
+ (int64_t)glassMonochromaticTreatmentFromBaseColor:(id)color traitCollection:(id)collection;
- (_UIButtonConfigurationStyleBehaviors)initWithStyle:(int64_t)style;
- (id)behaviorForState:(unint64_t)state;
- (id)effectiveActivityIndicatorColorFromEffectiveColor:(id)color state:(unint64_t)state;
- (id)effectiveBackgroundColorFromBaseColor:(id)color state:(unint64_t)state traitCollection:(id)collection;
- (id)effectiveBackgroundVisualEffectFromBaseColor:(id)color state:(unint64_t)state traitCollection:(id)collection;
- (id)effectiveBehaviorWithoutButtonShapes;
- (id)effectiveForegroundColorFromBaseColor:(id)color baseBackgroundColor:(id)backgroundColor state:(unint64_t)state traitCollection:(id)collection;
- (id)effectiveMaterialFromBaseColor:(id)color state:(unint64_t)state adaptive:(BOOL)adaptive traitCollection:(id)collection;
- (int64_t)effectiveMonochromaticTreatmentFromBaseColor:(id)color traitCollection:(id)collection;
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

+ (int64_t)glassMonochromaticTreatmentFromBaseColor:(id)color traitCollection:(id)collection
{
  v6 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  collectionCopy = collection;
  if (!color)
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

  colorCopy = color;
  _monochromaticTreatment = [collectionCopy _monochromaticTreatment];

  return _monochromaticTreatment;
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

- (_UIButtonConfigurationStyleBehaviors)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = _UIButtonConfigurationStyleBehaviors;
  result = [(_UIButtonConfigurationStyleBehaviors *)&v5 init];
  if (result)
  {
    result->_style = style;
    *&result->_selectionStyle = xmmword_18A67BBC0;
  }

  return result;
}

- (id)effectiveForegroundColorFromBaseColor:(id)color baseBackgroundColor:(id)backgroundColor state:(unint64_t)state traitCollection:(id)collection
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  collectionCopy = collection;
  calculateForegroundColor = self->_calculateForegroundColor;
  if (calculateForegroundColor)
  {
    v14 = calculateForegroundColor[2](calculateForegroundColor, colorCopy, backgroundColorCopy, state, collectionCopy);
  }

  else if (colorCopy)
  {
    v14 = colorCopy;
  }

  else
  {
    v14 = +[UIColor tintColor];
  }

  v15 = v14;

  return v15;
}

- (id)effectiveBackgroundColorFromBaseColor:(id)color state:(unint64_t)state traitCollection:(id)collection
{
  colorCopy = color;
  collectionCopy = collection;
  calculateBackgroundColor = self->_calculateBackgroundColor;
  if (calculateBackgroundColor)
  {
    v11 = calculateBackgroundColor[2](calculateBackgroundColor, colorCopy, state, collectionCopy);
  }

  else if (colorCopy)
  {
    v11 = colorCopy;
  }

  else
  {
    v11 = +[UIColor tintColor];
  }

  v12 = v11;

  return v12;
}

- (id)effectiveBackgroundVisualEffectFromBaseColor:(id)color state:(unint64_t)state traitCollection:(id)collection
{
  calculateBackgroundVisualEffect = self->_calculateBackgroundVisualEffect;
  if (calculateBackgroundVisualEffect)
  {
    calculateBackgroundVisualEffect = (calculateBackgroundVisualEffect)[2](calculateBackgroundVisualEffect, color, state, collection);
    v5 = vars8;
  }

  return calculateBackgroundVisualEffect;
}

- (id)effectiveActivityIndicatorColorFromEffectiveColor:(id)color state:(unint64_t)state
{
  stateCopy = state;
  colorCopy = color;
  v6 = colorCopy;
  if ((stateCopy & 2) != 0)
  {
    v7 = +[UIColor secondaryLabelColor];
  }

  else
  {
    v7 = colorCopy;
  }

  v8 = v7;

  return v8;
}

- (id)effectiveMaterialFromBaseColor:(id)color state:(unint64_t)state adaptive:(BOOL)adaptive traitCollection:(id)collection
{
  calculateMaterial = self->_calculateMaterial;
  if (calculateMaterial)
  {
    calculateMaterial = (calculateMaterial)[2](calculateMaterial, color, state, adaptive, collection);
    v6 = vars8;
  }

  return calculateMaterial;
}

- (int64_t)effectiveMonochromaticTreatmentFromBaseColor:(id)color traitCollection:(id)collection
{
  calculateMonochromaticTreatment = self->_calculateMonochromaticTreatment;
  if (calculateMonochromaticTreatment)
  {
    return calculateMonochromaticTreatment[2](calculateMonochromaticTreatment, color, collection);
  }

  else
  {
    return [collection _monochromaticTreatment];
  }
}

- (id)behaviorForState:(unint64_t)state
{
  stateCopy = state;
  selfCopy = self;
  v5 = selfCopy;
  if ((stateCopy & 4) != 0 && selfCopy->_selectionStyle != -1)
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
    selfCopy = effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape;
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
      selfCopy = effectiveBehaviorWithoutButtonShapes_plainWithoutButtonShape;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)behaviorForStyle:(int64_t)style
{
  if (style == 1)
  {
    grayBehaviors = [self grayBehaviors];
  }

  else if (style == 2)
  {
    grayBehaviors = [self tintBehaviors];
  }

  else
  {
    if (style == 3)
    {
      [self fillBehaviors];
    }

    else
    {
      [self plainBehaviors:0];
    }
    grayBehaviors = ;
  }

  return grayBehaviors;
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

+ (id)plainBehaviors:(int64_t)behaviors
{
  if (behaviors)
  {
    if (behaviors != 1)
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
    [(_UIButtonConfigurationStyleBehaviors *)v6 setCornerStyle:cornerStyleForDeviceIdiomAndConfigurationKind(behaviors)];
    v7 = *v4;
    *v4 = v6;

    v5 = *v4;
  }

  v8 = v5;
LABEL_9:

  return v8;
}

@end