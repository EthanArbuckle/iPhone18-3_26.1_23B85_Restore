@interface TLVibrationPattern
+ (BOOL)isValidVibrationPatternPropertyListRepresentation:(id)representation;
+ (id)complexVibrationPatternWithDurationsForVibrationsAndPauses:(double)pauses;
+ (id)noneVibrationPattern;
+ (id)simpleVibrationPatternWithVibrationDuration:(double)duration pauseDuration:(double)pauseDuration;
- (TLVibrationPattern)init;
- (double)_computedDuration;
- (id)_artificiallyRepeatingPropertyListRepresentation;
- (id)_initWithPropertyListRepresentation:(id)representation skipValidation:(BOOL)validation;
- (id)propertyListRepresentation;
- (void)appendVibrationComponentWithDuration:(double)duration isPause:(BOOL)pause;
@end

@implementation TLVibrationPattern

+ (BOOL)isValidVibrationPatternPropertyListRepresentation:(id)representation
{
  v52 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [representationCopy objectForKey:@"Atoms"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
    {
      v5 = 1;
    }

    else
    {
      v6 = [representationCopy objectForKey:@"Intensity"];
      if (_TLVibrationPatternIsValidNumberWithPossibleExpectedTypeEncodings(v6, "f", v7, v8, v9, v10, v11, v12, "d"))
      {
        [v6 floatValue];
        v5 = 0;
        if (v13 > 0.00000011921 && v13 < 1.0)
        {
          v14 = [representationCopy objectForKey:@"VibePattern"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (v16)
            {
              v23 = v16;
              v45 = v14;
              v24 = 0;
              v25 = *v48;
              while (2)
              {
                v26 = 0;
                v46 = v24 ^ v23;
                do
                {
                  if (*v48 != v25)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v27 = *(*(&v47 + 1) + 8 * v26);
                  if (v24)
                  {
                    if (!_TLVibrationPatternIsValidNumberWithPossibleExpectedTypeEncodings(v27, "i", v17, v18, v19, v20, v21, v22, "I"))
                    {
                      goto LABEL_25;
                    }
                  }

                  else if (!_TLVibrationPatternIsValidNumberWithPossibleExpectedTypeEncodings(v27, "B", v17, v18, v19, v20, v21, v22, "c"))
                  {
LABEL_25:
                    v28 = 0;
                    goto LABEL_26;
                  }

                  LOBYTE(v24) = v24 ^ 1;
                  ++v26;
                }

                while (v23 != v26);
                v23 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
                v24 = v46;
                if (v23)
                {
                  continue;
                }

                break;
              }

              v28 = 1;
LABEL_26:
              v14 = v45;
            }

            else
            {
              LOBYTE(v24) = 0;
              v28 = 1;
            }

            v5 = v28 & (v24 ^ 1);
          }

          else
          {
            v29 = [representationCopy objectForKey:@"OnDuration"];
            v30 = [representationCopy objectForKey:@"OffDuration"];
            v5 = _TLVibrationPatternIsValidNumberWithPossibleExpectedTypeEncodings(v29, "f", v31, v32, v33, v34, v35, v36, "d") && _TLVibrationPatternIsValidNumberWithPossibleExpectedTypeEncodings(v30, "f", v37, v38, v39, v40, v41, v42, "d");
          }
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)simpleVibrationPatternWithVibrationDuration:(double)duration pauseDuration:(double)pauseDuration
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (duration <= 2.22044605e-16 || pauseDuration <= 2.22044605e-16)
  {
    v13 = 0;
  }

  else
  {
    v7 = [self alloc];
    v17[0] = &unk_1F54D8740;
    v16[0] = @"Intensity";
    v16[1] = @"OnDuration";
    *&v8 = duration;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v17[1] = v9;
    v16[2] = @"OffDuration";
    *&v10 = pauseDuration;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v17[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v13 = [v7 initWithPropertyListRepresentation:v12];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)complexVibrationPatternWithDurationsForVibrationsAndPauses:(double)pauses
{
  pausesCopy = pauses;
  v19[2] = *MEMORY[0x1E69E9840];
  if (pauses <= 2.22044605e-16)
  {
    v13 = 0;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v5)
    {
      v6 = 0;
      v16 = &v21;
      do
      {
        v6 ^= 1u;
        v7 = [MEMORY[0x1E696AD98] numberWithBool:{v6 & 1, v16}];
        [v5 addObject:v7];

        v8 = [MEMORY[0x1E696AD98] numberWithInt:(pausesCopy * 1000.0)];
        [v5 addObject:v8];

        v9 = v17;
        v16 = (v17 + 8);
        pausesCopy = *v9;
      }

      while (*v9 > 2.22044605e-16);
      v10 = [v5 copy];
      if (v10)
      {
        v11 = [self alloc];
        v18[0] = @"Intensity";
        v18[1] = @"VibePattern";
        v19[0] = &unk_1F54D8740;
        v19[1] = v10;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
        v13 = [v11 initWithPropertyListRepresentation:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)noneVibrationPattern
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [self alloc];
  v7[0] = @"Intensity";
  v7[1] = @"VibePattern";
  v8[0] = &unk_1F54D8740;
  v8[1] = &unk_1F54D86E0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = [v2 _initWithPropertyListRepresentation:v3 skipValidation:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (TLVibrationPattern)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"Intensity";
  v8[0] = &unk_1F54D8740;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [(TLVibrationPattern *)self _initWithPropertyListRepresentation:v3 skipValidation:1];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_initWithPropertyListRepresentation:(id)representation skipValidation:(BOOL)validation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = TLVibrationPattern;
  v7 = [(TLVibrationPattern *)&v11 init];
  if (v7)
  {
    if (validation || [objc_opt_class() isValidVibrationPatternPropertyListRepresentation:representationCopy])
    {
      v8 = [representationCopy copy];
      propertyListRepresentation = v7->_propertyListRepresentation;
      v7->_propertyListRepresentation = v8;
    }

    else
    {
      propertyListRepresentation = v7;
      v7 = 0;
    }
  }

  return v7;
}

- (id)propertyListRepresentation
{
  v3 = self->_propertyListRepresentation;
  v4 = self->_complexPatternDescription;
  if (v4)
  {
    v5 = [(NSDictionary *)v3 mutableCopy];
    v6 = [(NSMutableArray *)v4 copy];
    [v5 setObject:v6 forKey:@"VibePattern"];

    v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

    v3 = v7;
  }

  return v3;
}

- (id)_artificiallyRepeatingPropertyListRepresentation
{
  propertyListRepresentation = [(TLVibrationPattern *)self propertyListRepresentation];
  v4 = [propertyListRepresentation objectForKey:@"Atoms"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v5 = [propertyListRepresentation mutableCopy];
    [v5 setObject:MEMORY[0x1E695E118] forKey:@"Looped"];
    v6 = [v5 copy];
  }

  else
  {
    v5 = [propertyListRepresentation objectForKey:@"VibePattern"];
    if (!v5)
    {
      goto LABEL_12;
    }

    [(TLVibrationPattern *)self _computedDuration];
    v8 = 180.0 / v7;
    v9 = v7 > 0.0;
    v10 = 18.0;
    if (v9)
    {
      v10 = v8;
    }

    v11 = llround(floor(v10));
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      [v12 addObjectsFromArray:v5];
      --v11;
    }

    while (v11);
    v13 = [propertyListRepresentation mutableCopy];
    [v13 setObject:v12 forKey:@"VibePattern"];
    v6 = [v13 copy];

    propertyListRepresentation = v12;
  }

  propertyListRepresentation = v6;
LABEL_12:

  return propertyListRepresentation;
}

- (double)_computedDuration
{
  v25 = *MEMORY[0x1E69E9840];
  propertyListRepresentation = [(TLVibrationPattern *)self propertyListRepresentation];
  v3 = [propertyListRepresentation objectForKey:@"Atoms"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"It is pretty much impossible to compute the duration of a modern vibration pattern that uses atoms. This is invalid."];
    v4 = 0.0;
  }

  else
  {
    v5 = [propertyListRepresentation objectForKey:@"VibePattern"];
    v6 = v5;
    if (v5)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v21;
        v4 = 0.0;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v6);
            }

            if (v12)
            {
              v4 = v4 + [*(*(&v20 + 1) + 8 * v11) intValue] / 1000.0;
            }

            v12 ^= 1u;
            ++v11;
          }

          while (v8 != v11);
          v9 ^= v8;
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v8);
      }

      else
      {
        v4 = 0.0;
      }
    }

    else
    {
      v13 = [propertyListRepresentation objectForKey:@"OnDuration"];
      [v13 floatValue];
      v15 = v14 + 0.0;

      v16 = [propertyListRepresentation objectForKey:@"OffDuration"];
      [v16 floatValue];
      v4 = v15 + v17;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)appendVibrationComponentWithDuration:(double)duration isPause:(BOOL)pause
{
  pauseCopy = pause;
  p_complexPatternDescription = &self->_complexPatternDescription;
  v8 = self->_complexPatternDescription;
  if (!v8)
  {
    v9 = [(NSDictionary *)self->_propertyListRepresentation mutableCopy];
    v10 = [v9 objectForKey:@"VibePattern"];
    obj = [v10 mutableCopy];

    v11 = obj;
    if (!obj)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    obja = v11;
    objc_storeStrong(p_complexPatternDescription, v11);
    [v9 removeObjectForKey:@"VibePattern"];
    [v9 removeObjectForKey:@"OnDuration"];
    [v9 removeObjectForKey:@"OffDuration"];
    v12 = [v9 copy];
    propertyListRepresentation = self->_propertyListRepresentation;
    self->_propertyListRepresentation = v12;

    v8 = obja;
  }

  if (duration > 2.22044605e-16)
  {
    objb = v8;
    v14 = [MEMORY[0x1E696AD98] numberWithBool:!pauseCopy];
    [(NSMutableArray *)objb addObject:v14];

    v15 = [MEMORY[0x1E696AD98] numberWithInt:(duration * 1000.0)];
    [(NSMutableArray *)objb addObject:v15];
  }

  MEMORY[0x1EEE66BB8]();
}

@end