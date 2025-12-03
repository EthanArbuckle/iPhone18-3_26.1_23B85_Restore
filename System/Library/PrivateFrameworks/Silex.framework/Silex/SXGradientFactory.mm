@interface SXGradientFactory
- (id)colorsFromColorStops:(id)stops;
- (id)gradientForColorStops:(id)stops angle:(double)angle;
- (id)locationsFromColorStops:(id)stops;
@end

@implementation SXGradientFactory

- (id)gradientForColorStops:(id)stops angle:(double)angle
{
  if (stops)
  {
    stopsCopy = stops;
    v7 = [(SXGradientFactory *)self colorsFromColorStops:stopsCopy];
    v8 = [(SXGradientFactory *)self locationsFromColorStops:stopsCopy];

    if (angle == 1.79769313e308)
    {
      v11 = 0.0;
      v12 = 1.0;
      v13 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v9 = angle / 180.0 * 3.14159265 + -1.57079633;
      v10 = __sincosf_stret(v9);
      v11 = ((v10.__cosval + 1.0) * 0.5);
      v12 = ((v10.__sinval + 1.0) * 0.5);
      v13 = 1.0 - v11;
      v14 = 1.0 - v12;
    }

    v15 = [[SXGradient alloc] initWithStartPoint:v7 endPoint:v8 colors:v13 locations:v14, v11, v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)colorsFromColorStops:(id)stops
{
  v17 = *MEMORY[0x1E69E9840];
  stopsCopy = stops;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = stopsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        color = [*(*(&v12 + 1) + 8 * i) color];
        [array addObject:color];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)locationsFromColorStops:(id)stops
{
  stopsCopy = stops;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  array = [MEMORY[0x1E695DF70] array];
  if ([stopsCopy count])
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = [stopsCopy objectAtIndex:v6];
      [v8 location];
      if (v9 == 1.79769313e308)
      {
        if (v6)
        {
          if (v6 == [stopsCopy count] - 1)
          {
            v10 = array;
            v11 = &unk_1F538A3B8;
          }

          else
          {
            [indexSet addIndex:v6];
            v11 = objc_opt_class();
            v10 = array;
          }
        }

        else
        {
          v10 = array;
          v11 = &unk_1F538A3A0;
        }

        [v10 addObject:v11];
      }

      else
      {
        [v8 location];
        v13 = fmin(v12 / 100.0, 1.0);
        if (v13 >= 0.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0.0;
        }

        if (v14 >= v7)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
          [array addObject:v16];

          v7 = v14;
        }

        else
        {
          v15 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
          [array addObject:v15];
        }
      }

      ++v6;
    }

    while (v6 < [stopsCopy count]);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__SXGradientFactory_locationsFromColorStops___block_invoke;
  v19[3] = &unk_1E85012F8;
  v17 = array;
  v20 = v17;
  [indexSet enumerateRangesUsingBlock:v19];

  return v17;
}

void __45__SXGradientFactory_locationsFromColorStops___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a2 - 1];
  [v6 floatValue];
  v8 = v7;

  v9 = [*(a1 + 32) objectAtIndex:v4 + a3];
  [v9 floatValue];
  v11 = v10;

  if (a3)
  {
    v12 = v8;
    v13 = (v11 - v12) / (a3 + 1);
    v14 = 1;
    do
    {
      v15 = *(a1 + 32);
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v13 * v14];
      [v15 replaceObjectAtIndex:v4 withObject:v16];

      ++v4;
      ++v14;
      --a3;
    }

    while (a3);
  }
}

@end