@interface _UIFluidSliderInteractionConfiguration
+ (id)configurationWithTrackSize:(CGSize)a3;
- (CGSize)trackSize;
- (_UIFluidSliderInteractionConfiguration)init;
- (id)copyWithTrackSize:(CGSize)a3;
- (id)copyWithVelocityMultiplier:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_setCustomDrivers:(id)a3;
@end

@implementation _UIFluidSliderInteractionConfiguration

- (_UIFluidSliderInteractionConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _UIFluidSliderInteractionConfiguration;
  v2 = [(_UIFluidSliderInteractionConfiguration *)&v6 init];
  if (v2)
  {
    v3 = +[_UIFluidSliderSettingsDomain rootSettings];
    [(_UIFluidSliderInteractionConfiguration *)v2 setPreferredInputMethods:3];
    [v3 defaultStretchAmount];
    [(_UIFluidSliderInteractionConfiguration *)v2 setStretchAmount:?];
    [(_UIFluidSliderInteractionConfiguration *)v2 setVelocityMultiplier:1.0];
    [v3 sliderStepCount];
    [(_UIFluidSliderInteractionConfiguration *)v2 setStepCount:v4];
    [(_UIFluidSliderInteractionConfiguration *)v2 setMinValue:0.0];
    [(_UIFluidSliderInteractionConfiguration *)v2 setMaxValue:1.0];
  }

  return v2;
}

- (CGSize)trackSize
{
  width = self->_trackSize.width;
  height = self->_trackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)configurationWithTrackSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_opt_new();
  v5[9] = width;
  v5[10] = height;

  return v5;
}

- (id)copyWithTrackSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  result = [(_UIFluidSliderInteractionConfiguration *)self copy];
  *(result + 9) = width;
  *(result + 10) = height;
  return result;
}

- (id)copyWithVelocityMultiplier:(double)a3
{
  result = [(_UIFluidSliderInteractionConfiguration *)self copy];
  *(result + 3) = a3;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(_UIFluidSliderInteractionConfiguration *)self trackSize];
  v4[9] = v5;
  v4[10] = v6;
  [(_UIFluidSliderInteractionConfiguration *)self stretchAmount];
  [v4 setStretchAmount:?];
  [(_UIFluidSliderInteractionConfiguration *)self velocityMultiplier];
  [v4 setVelocityMultiplier:?];
  [v4 setStepCount:{-[_UIFluidSliderInteractionConfiguration stepCount](self, "stepCount")}];
  [(_UIFluidSliderInteractionConfiguration *)self minValue];
  [v4 setMinValue:?];
  [(_UIFluidSliderInteractionConfiguration *)self maxValue];
  [v4 setMaxValue:?];
  [v4 setPreferredInputMethods:{-[_UIFluidSliderInteractionConfiguration preferredInputMethods](self, "preferredInputMethods")}];
  [(_UIFluidSliderInteractionConfiguration *)self neutralPosition];
  [v4 setNeutralPosition:?];
  v7 = [(_UIFluidSliderInteractionConfiguration *)self _customDrivers];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

- (void)_setCustomDrivers:(id)a3
{
  v5 = a3;
  if ((_UIApplicationProcessIsSpringBoard() & 1) == 0 && (_UIApplicationProcessIsUIKitester() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIFluidSliderInteraction.m" lineNumber:89 description:@"This SPI may only be used by approved clients."];
  }

  customDrivers = self->_customDrivers;
  v13 = v5;
  v7 = customDrivers;
  if (v7 == v13)
  {

    v10 = v13;
LABEL_12:

    v9 = v13;
    goto LABEL_13;
  }

  if (!v13 || !v7)
  {

    v9 = v13;
    goto LABEL_11;
  }

  v8 = [(NSArray *)v13 isEqual:v7];

  v9 = v13;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v11 = v9;
    v10 = self->_customDrivers;
    self->_customDrivers = v11;
    goto LABEL_12;
  }

LABEL_13:
}

- (id)description
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  [(_UIFluidSliderInteractionConfiguration *)self trackSize];
  v5 = v4;
  [(_UIFluidSliderInteractionConfiguration *)self trackSize];
  [v3 appendFormat:@"; trackSize = (%g, %g)", v5, v6];
  [(_UIFluidSliderInteractionConfiguration *)self stretchAmount];
  [v3 appendFormat:@"; stretchAmount = %g", v7];
  [(_UIFluidSliderInteractionConfiguration *)self velocityMultiplier];
  [v3 appendFormat:@"; velocityMultiplier = %g", v8];
  [v3 appendFormat:@"; stepCount = %lu", -[_UIFluidSliderInteractionConfiguration stepCount](self, "stepCount")];
  [(_UIFluidSliderInteractionConfiguration *)self minValue];
  [v3 appendFormat:@"; min = %lu", v9];
  [(_UIFluidSliderInteractionConfiguration *)self maxValue];
  [v3 appendFormat:@"; max = %lu", v10];
  v11 = [(_UIFluidSliderInteractionConfiguration *)self preferredInputMethods];
  v12 = objc_opt_new();
  v13 = v12;
  if (v11)
  {
    [v12 addObject:@"touch"];
  }

  if ((v11 & 2) != 0)
  {
    [v13 addObject:@"volumeButtons"];
  }

  v14 = [v13 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"; inputMethods = (%@)", v14];

  v15 = [(_UIFluidSliderInteractionConfiguration *)self _customDrivers];
  v16 = [v15 count];

  if (v16)
  {
    v17 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [(_UIFluidSliderInteractionConfiguration *)self _customDrivers];
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * i) name];
          [v17 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }

    v24 = [v17 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"; customDrivers = (%@)", v24];
  }

  [v3 appendString:@">"];

  return v3;
}

@end