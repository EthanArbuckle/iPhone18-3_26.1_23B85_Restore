@interface TLVibrationPattern
+ (BOOL)isValidVibrationPatternPropertyListRepresentation:(id)a3;
+ (id)complexVibrationPatternWithDurationsForVibrationsAndPauses:(double)a3;
+ (id)noneVibrationPattern;
+ (id)simpleVibrationPatternWithVibrationDuration:(double)a3 pauseDuration:(double)a4;
- (TLVibrationPattern)init;
- (double)_computedDuration;
- (id)_artificiallyRepeatingPropertyListRepresentation;
- (id)_initWithPropertyListRepresentation:(id)a3 skipValidation:(BOOL)a4;
- (id)propertyListRepresentation;
- (void)appendVibrationComponentWithDuration:(double)a3 isPause:(BOOL)a4;
@end

@implementation TLVibrationPattern

+ (BOOL)isValidVibrationPatternPropertyListRepresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"Atoms"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v3 objectForKey:@"Intensity"];
      if (sub_10000388C(v6, "f", v7, v8, v9, v10, v11, v12, "d"))
      {
        [v6 floatValue];
        v5 = 0;
        if (v13 > 0.00000011921 && v13 < 1.0)
        {
          v14 = [v3 objectForKey:@"VibePattern"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
            if (v16)
            {
              v23 = v16;
              v44 = v14;
              v24 = 0;
              v25 = *v47;
              while (2)
              {
                v26 = 0;
                v45 = v24 ^ v23;
                do
                {
                  if (*v47 != v25)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v27 = *(*(&v46 + 1) + 8 * v26);
                  if (v24)
                  {
                    if (!sub_10000388C(v27, "i", v17, v18, v19, v20, v21, v22, "I"))
                    {
                      goto LABEL_25;
                    }
                  }

                  else if (!sub_10000388C(v27, "B", v17, v18, v19, v20, v21, v22, "c"))
                  {
LABEL_25:
                    v28 = 0;
                    goto LABEL_26;
                  }

                  LOBYTE(v24) = v24 ^ 1;
                  v26 = v26 + 1;
                }

                while (v23 != v26);
                v23 = [v15 countByEnumeratingWithState:&v46 objects:v50 count:16];
                v24 = v45;
                if (v23)
                {
                  continue;
                }

                break;
              }

              v28 = 1;
LABEL_26:
              v14 = v44;
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
            v29 = [v3 objectForKey:@"OnDuration"];
            v30 = [v3 objectForKey:@"OffDuration"];
            v5 = sub_10000388C(v29, "f", v31, v32, v33, v34, v35, v36, "d") && sub_10000388C(v30, "f", v37, v38, v39, v40, v41, v42, "d");
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

  return v5;
}

+ (id)simpleVibrationPatternWithVibrationDuration:(double)a3 pauseDuration:(double)a4
{
  if (a3 <= 2.22044605e-16 || a4 <= 2.22044605e-16)
  {
    v13 = 0;
  }

  else
  {
    v7 = [a1 alloc];
    v16[0] = &off_100008818;
    v15[0] = @"Intensity";
    v15[1] = @"OnDuration";
    *&v8 = a3;
    v9 = [NSNumber numberWithFloat:v8];
    v16[1] = v9;
    v15[2] = @"OffDuration";
    *&v10 = a4;
    v11 = [NSNumber numberWithFloat:v10];
    v16[2] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    v13 = [v7 initWithPropertyListRepresentation:v12];
  }

  return v13;
}

+ (id)complexVibrationPatternWithDurationsForVibrationsAndPauses:(double)a3
{
  v3 = a3;
  if (a3 <= 2.22044605e-16)
  {
    v13 = 0;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableArray);
    if (v5)
    {
      v6 = 0;
      v15 = &v20;
      do
      {
        v6 ^= 1u;
        v7 = [NSNumber numberWithBool:v6 & 1, v15];
        [v5 addObject:v7];

        v8 = [NSNumber numberWithInt:(v3 * 1000.0)];
        [v5 addObject:v8];

        v9 = v16;
        v15 = (v16 + 8);
        v3 = *v9;
      }

      while (*v9 > 2.22044605e-16);
      v10 = [v5 copy];
      if (v10)
      {
        v11 = [a1 alloc];
        v17[0] = @"Intensity";
        v17[1] = @"VibePattern";
        v18[0] = &off_100008818;
        v18[1] = v10;
        v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
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

  return v13;
}

+ (id)noneVibrationPattern
{
  v2 = [a1 alloc];
  v6[0] = @"Intensity";
  v6[1] = @"VibePattern";
  v7[0] = &off_100008818;
  v7[1] = &off_100008850;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v2 _initWithPropertyListRepresentation:v3 skipValidation:1];

  return v4;
}

- (TLVibrationPattern)init
{
  v6 = @"Intensity";
  v7 = &off_100008818;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [(TLVibrationPattern *)self _initWithPropertyListRepresentation:v3 skipValidation:1];

  return v4;
}

- (id)_initWithPropertyListRepresentation:(id)a3 skipValidation:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TLVibrationPattern;
  v7 = [(TLVibrationPattern *)&v11 init];
  if (v7)
  {
    if (a4 || [objc_opt_class() isValidVibrationPatternPropertyListRepresentation:v6])
    {
      v8 = [v6 copy];
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

    v7 = [NSDictionary dictionaryWithDictionary:v5];

    v3 = v7;
  }

  return v3;
}

- (id)_artificiallyRepeatingPropertyListRepresentation
{
  v3 = [(TLVibrationPattern *)self propertyListRepresentation];
  v4 = [v3 objectForKey:@"Atoms"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v5 = [v3 mutableCopy];
    [v5 setObject:&__kCFBooleanTrue forKey:@"Looped"];
    v6 = [v5 copy];
  }

  else
  {
    v5 = [v3 objectForKey:@"VibePattern"];
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
    v12 = objc_alloc_init(NSMutableArray);
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
    v13 = [v3 mutableCopy];
    [v13 setObject:v12 forKey:@"VibePattern"];
    v6 = [v13 copy];

    v3 = v12;
  }

  v3 = v6;
LABEL_12:

  return v3;
}

- (double)_computedDuration
{
  v2 = [(TLVibrationPattern *)self propertyListRepresentation];
  v3 = [v2 objectForKey:@"Atoms"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    [NSException raise:NSInternalInconsistencyException format:@"It is pretty much impossible to compute the duration of a modern vibration pattern that uses atoms. This is invalid."];
    v4 = 0.0;
  }

  else
  {
    v5 = [v2 objectForKey:@"VibePattern"];
    v6 = v5;
    if (v5)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v20;
        v4 = 0.0;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v6);
            }

            if (v12)
            {
              v4 = v4 + [*(*(&v19 + 1) + 8 * v11) intValue] / 1000.0;
            }

            v12 ^= 1u;
            v11 = v11 + 1;
          }

          while (v8 != v11);
          v9 ^= v8;
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
      v13 = [v2 objectForKey:@"OnDuration"];
      [v13 floatValue];
      v15 = v14 + 0.0;

      v16 = [v2 objectForKey:@"OffDuration"];
      [v16 floatValue];
      v4 = v15 + v17;
    }
  }

  return v4;
}

- (void)appendVibrationComponentWithDuration:(double)a3 isPause:(BOOL)a4
{
  v4 = a4;
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
      v11 = objc_alloc_init(NSMutableArray);
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

  if (a3 > 2.22044605e-16)
  {
    objb = v8;
    v14 = [NSNumber numberWithBool:!v4];
    [(NSMutableArray *)objb addObject:v14];

    v15 = [NSNumber numberWithInt:(a3 * 1000.0)];
    [(NSMutableArray *)objb addObject:v15];
  }

  _objc_release_x1();
}

@end