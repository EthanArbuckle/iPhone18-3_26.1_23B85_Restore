@interface SBSUserNotificationColorDefinition
+ (SBSUserNotificationColorDefinition)definitionWithColor:(id)a3;
+ (SBSUserNotificationColorDefinition)definitionWithColorName:(id)a3;
- (id)_colorForString:(id)a3;
- (id)_initWithColorName:(id)a3 color:(id)a4;
- (id)_initWithDictionary:(id)a3;
- (id)_stringForColor:(id)a3;
- (id)build;
@end

@implementation SBSUserNotificationColorDefinition

+ (SBSUserNotificationColorDefinition)definitionWithColorName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithColorName:v4 color:0];

  return v5;
}

+ (SBSUserNotificationColorDefinition)definitionWithColor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithColorName:0 color:v4];

  return v5;
}

- (id)_initWithColorName:(id)a3 color:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!(v8 | v9))
  {
    [SBSUserNotificationColorDefinition _initWithColorName:a2 color:self];
  }

  v13.receiver = self;
  v13.super_class = SBSUserNotificationColorDefinition;
  v10 = [(SBSUserNotificationColorDefinition *)&v13 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_colorName, a3);
    objc_storeStrong(p_isa + 1, a4);
  }

  return p_isa;
}

- (id)_initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBSUserNotificationColorDefinition;
  v5 = [(SBSUserNotificationColorDefinition *)&v12 init];
  if (v5)
  {
    v6 = [v4 bs_safeStringForKey:@"SBSCFUNColorName"];
    colorName = v5->_colorName;
    v5->_colorName = v6;

    v8 = [v4 bs_safeStringForKey:@"SBSCFUNColor"];
    v9 = [(SBSUserNotificationColorDefinition *)v5 _colorForString:v8];
    color = v5->_color;
    v5->_color = v9;
  }

  return v5;
}

- (id)build
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  colorName = self->_colorName;
  if (colorName)
  {
    [v3 setObject:colorName forKey:@"SBSCFUNColorName"];
  }

  if (self->_color)
  {
    v6 = [(SBSUserNotificationColorDefinition *)self _stringForColor:?];
    [v4 setObject:v6 forKey:@"SBSCFUNColor"];
  }

  v7 = [v4 copy];

  return v7;
}

- (id)_stringForColor:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  [v4 red];
  v6 = v5;
  [v4 green];
  v8 = v7;
  [v4 blue];
  v10 = v9;
  [v4 alpha];
  v12 = v11;

  return [v3 stringWithFormat:@"%f:%f:%f:%f", v6, v8, v10, v12];
}

- (id)_colorForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 componentsSeparatedByString:@":"];
    if ([v5 count] == 4)
    {
      v6 = MEMORY[0x1E698E650];
      v7 = [v5 objectAtIndexedSubscript:0];
      [v7 floatValue];
      v9 = v8;
      v10 = [v5 objectAtIndexedSubscript:1];
      [v10 floatValue];
      v12 = v11;
      v13 = [v5 objectAtIndexedSubscript:2];
      [v13 floatValue];
      v15 = v14;
      v16 = [v5 objectAtIndexedSubscript:3];
      [v16 floatValue];
      v18 = [v6 colorWithRed:v9 green:v12 blue:v15 alpha:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_initWithColorName:(uint64_t)a1 color:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationColorDefinition.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"colorName || color"}];
}

@end