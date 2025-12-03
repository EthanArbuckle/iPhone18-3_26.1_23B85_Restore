@interface SBSUserNotificationColorDefinition
+ (SBSUserNotificationColorDefinition)definitionWithColor:(id)color;
+ (SBSUserNotificationColorDefinition)definitionWithColorName:(id)name;
- (id)_colorForString:(id)string;
- (id)_initWithColorName:(id)name color:(id)color;
- (id)_initWithDictionary:(id)dictionary;
- (id)_stringForColor:(id)color;
- (id)build;
@end

@implementation SBSUserNotificationColorDefinition

+ (SBSUserNotificationColorDefinition)definitionWithColorName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithColorName:nameCopy color:0];

  return v5;
}

+ (SBSUserNotificationColorDefinition)definitionWithColor:(id)color
{
  colorCopy = color;
  v5 = [[self alloc] _initWithColorName:0 color:colorCopy];

  return v5;
}

- (id)_initWithColorName:(id)name color:(id)color
{
  nameCopy = name;
  colorCopy = color;
  if (!(nameCopy | colorCopy))
  {
    [SBSUserNotificationColorDefinition _initWithColorName:a2 color:self];
  }

  v13.receiver = self;
  v13.super_class = SBSUserNotificationColorDefinition;
  v10 = [(SBSUserNotificationColorDefinition *)&v13 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_colorName, name);
    objc_storeStrong(p_isa + 1, color);
  }

  return p_isa;
}

- (id)_initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SBSUserNotificationColorDefinition;
  v5 = [(SBSUserNotificationColorDefinition *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNColorName"];
    colorName = v5->_colorName;
    v5->_colorName = v6;

    v8 = [dictionaryCopy bs_safeStringForKey:@"SBSCFUNColor"];
    v9 = [(SBSUserNotificationColorDefinition *)v5 _colorForString:v8];
    color = v5->_color;
    v5->_color = v9;
  }

  return v5;
}

- (id)build
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  colorName = self->_colorName;
  if (colorName)
  {
    [dictionary setObject:colorName forKey:@"SBSCFUNColorName"];
  }

  if (self->_color)
  {
    v6 = [(SBSUserNotificationColorDefinition *)self _stringForColor:?];
    [v4 setObject:v6 forKey:@"SBSCFUNColor"];
  }

  v7 = [v4 copy];

  return v7;
}

- (id)_stringForColor:(id)color
{
  v3 = MEMORY[0x1E696AEC0];
  colorCopy = color;
  [colorCopy red];
  v6 = v5;
  [colorCopy green];
  v8 = v7;
  [colorCopy blue];
  v10 = v9;
  [colorCopy alpha];
  v12 = v11;

  return [v3 stringWithFormat:@"%f:%f:%f:%f", v6, v8, v10, v12];
}

- (id)_colorForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    v5 = [stringCopy componentsSeparatedByString:@":"];
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