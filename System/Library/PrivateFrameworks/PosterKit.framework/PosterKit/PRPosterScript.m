@interface PRPosterScript
+ (id)gyroDemoScript;
+ (id)timeDemoScript;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterScript)init;
- (PRPosterScript)initWithBSXPCCoder:(id)a3;
- (PRPosterScript)initWithCoder:(id)a3;
- (PRPosterScript)initWithPosterScriptStatements:(id)a3;
- (id)scriptByAddingPosterScriptStatement:(id)a3;
- (id)scriptByAddingPosterScriptStatements:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation PRPosterScript

+ (id)gyroDemoScript
{
  if (gyroDemoScript_onceToken != -1)
  {
    +[PRPosterScript gyroDemoScript];
  }

  v3 = gyroDemoScript_gyroScript;

  return v3;
}

void __32__PRPosterScript_gyroDemoScript__block_invoke()
{
  v0 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  memset(&v24, 0, 24);
  v24.vector.f64[3] = 1.0;
  *&v23.x = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v20 = _Q0;
  *&v23.vector.f64[2] = _Q0;
  *&v22.x = xmmword_1A8BF7FD0;
  *&v22.vector.f64[2] = 0uLL;
  SPRotation3DMakeLookAt(&v24, &v23, &v22, &v25);
  *&v24.x = v25;
  *&v24.vector.f64[2] = v26;
  v6 = [PRPosterScriptStatement statementWithDeviceMotion:&v24 duration:0.0333333333];
  [v0 addObject:v6];

  for (i = 0; i != 270; ++i)
  {
    v8 = i * 0.0333333333;
    v9 = fmin(v8 / 1.5, 1.0);
    v10 = fmin((9.0 - v8) / 1.5, 1.0);
    if (v9 >= v10)
    {
      v9 = v10;
    }

    if (v9 >= 0.5)
    {
      v11 = pow(v9 * -2.0 + 2.0, 3.0) * -0.5 + 1.0;
    }

    else
    {
      v11 = v9 * (v9 * (v9 * 4.0));
    }

    v12 = floor(v8 / 3.0);
    v13 = (v8 / 3.0 - v12) * 3.14159265 + (v8 / 3.0 - v12) * 3.14159265;
    v14 = v11 * 0.75;
    v15 = __sincos_stret(v13);
    memset(&v24, 0, sizeof(v24));
    v23.x = v15.__cosval * v14;
    v23.y = v15.__sinval * v14;
    *&v23.vector.f64[2] = xmmword_1A8BF7FD0;
    *&v22.x = 0uLL;
    *&v22.vector.f64[2] = v20;
    *&v21.x = xmmword_1A8BF7FD0;
    *&v21.vector.f64[2] = 0uLL;
    SPRotation3DMakeLookAt(&v23, &v22, &v21, &v24);
    *&v23.x = *&v24.x;
    v16 = [PRPosterScriptStatement statementWithDeviceMotion:&v23 duration:0.0333333333];
    [v0 addObject:v16];
  }

  *&v24.x = v25;
  *&v24.vector.f64[2] = v26;
  v17 = [PRPosterScriptStatement statementWithDeviceMotion:&v24 duration:0.0333333333];
  [v0 addObject:v17];

  v18 = [[PRPosterScript alloc] initWithPosterScriptStatements:v0];
  v19 = gyroDemoScript_gyroScript;
  gyroDemoScript_gyroScript = v18;
}

+ (id)timeDemoScript
{
  if (timeDemoScript_onceToken != -1)
  {
    +[PRPosterScript timeDemoScript];
  }

  v3 = timeDemoScript_significantEventsScript;

  return v3;
}

void __32__PRPosterScript_timeDemoScript__block_invoke()
{
  v0 = objc_opt_new();
  v1 = [PRPosterScriptStatement statementWithSignificantEvent:2 significantEventsCounter:0 duration:3.0];
  v2 = [PRPosterScriptStatement statementWithDuration:3.0];

  [v0 addObject:v2];
  v3 = [PRPosterScriptStatement statementWithSignificantEvent:2 significantEventsCounter:1 duration:3.0];

  [v0 addObject:v3];
  v4 = [PRPosterScriptStatement statementWithSignificantEvent:2 significantEventsCounter:2 duration:3.0];

  [v0 addObject:v4];
  v5 = [PRPosterScriptStatement statementWithSignificantEvent:2 significantEventsCounter:3 duration:3.0];

  [v0 addObject:v5];
  v8 = [PRPosterScriptStatement statementWithSignificantEvent:2 significantEventsCounter:4 duration:3.0];

  [v0 addObject:v8];
  v6 = [[PRPosterScript alloc] initWithPosterScriptStatements:v0];
  v7 = timeDemoScript_significantEventsScript;
  timeDemoScript_significantEventsScript = v6;
}

- (PRPosterScript)initWithPosterScriptStatements:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PRPosterScript;
  v5 = [(PRPosterScript *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    posterScriptStatements = v5->_posterScriptStatements;
    v5->_posterScriptStatements = v6;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5->_posterScriptStatements;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12) duration];
          v5->_runningTime = v13 + v5->_runningTime;
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (PRPosterScript)init
{
  [(PRPosterScript *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSArray *)v4->_posterScriptStatements isEqualToArray:self->_posterScriptStatements];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __29__PRPosterScript_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v6 = a3;
  v4 = [v6 appendDouble:@"runningTime" withName:2 decimalPrecision:self->_runningTime];
  v5 = [v6 appendObject:self->_posterScriptStatements withName:@"posterScriptStatements" skipIfNil:0];
}

- (id)scriptByAddingPosterScriptStatement:(id)a3
{
  if (a3)
  {
    v3 = [(NSArray *)self->_posterScriptStatements arrayByAddingObject:?];
    v4 = [objc_alloc(objc_opt_class()) initWithPosterScriptStatements:v3];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (id)scriptByAddingPosterScriptStatements:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_posterScriptStatements];
    [v5 addObjectsFromArray:v4];
    v6 = [objc_alloc(objc_opt_class()) initWithPosterScriptStatements:v5];
  }

  else
  {
    v6 = self;
  }

  return v6;
}

- (PRPosterScript)initWithCoder:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"_posterScriptStatements"];

  v9 = [(PRPosterScript *)self initWithPosterScriptStatements:v8];
  return v9;
}

- (PRPosterScript)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"_posterScriptStatements"];

  v7 = [(PRPosterScript *)self initWithPosterScriptStatements:v6];
  return v7;
}

@end