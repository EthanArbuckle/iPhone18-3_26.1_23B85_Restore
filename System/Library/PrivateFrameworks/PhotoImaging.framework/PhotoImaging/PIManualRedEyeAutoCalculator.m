@interface PIManualRedEyeAutoCalculator
- (PIManualRedEyeAutoCalculator)initWithComposition:(id)a3 location:(CGPoint)a4 touchDiameter:(double)a5;
- (id)_options;
- (void)_configureRequest:(id)a3;
@end

@implementation PIManualRedEyeAutoCalculator

- (void)_configureRequest:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PIManualRedEyeAutoCalculator;
  [(PIRedEyeAutoCalculator *)&v6 _configureRequest:v4];
  v5 = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
  [v4 setScalePolicy:v5];
}

- (id)_options
{
  v12[3] = *MEMORY[0x1E69E9840];
  p_location = &self->_location;
  if (*MEMORY[0x1E695EFF8] == self->_location.x && *(MEMORY[0x1E695EFF8] + 8) == self->_location.y)
  {
    v10.receiver = self;
    v10.super_class = PIManualRedEyeAutoCalculator;
    v8 = [(PIRedEyeAutoCalculator *)&v10 _options];
  }

  else
  {
    v11[0] = @"locationX";
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v12[0] = v5;
    v11[1] = @"locationY";
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:p_location->y];
    v12[1] = v6;
    v11[2] = @"touchDiameter";
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_touchDiameter];
    v12[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  return v8;
}

- (PIManualRedEyeAutoCalculator)initWithComposition:(id)a3 location:(CGPoint)a4 touchDiameter:(double)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v12.receiver = self;
  v12.super_class = PIManualRedEyeAutoCalculator;
  v10 = [(NURenderRequest *)&v12 initWithComposition:v9];
  v10->_location.x = x;
  v10->_location.y = y;
  v10->_touchDiameter = a5;
  [(PIRedEyeAutoCalculator *)v10 setForce:1];

  return v10;
}

@end