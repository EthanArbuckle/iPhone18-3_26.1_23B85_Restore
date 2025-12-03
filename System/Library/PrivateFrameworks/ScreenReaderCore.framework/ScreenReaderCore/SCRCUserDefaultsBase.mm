@interface SCRCUserDefaultsBase
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLForKeyPath:(id)path;
- (float)floatForKey:(id)key;
- (float)floatForKeyPath:(id)path;
- (id)dictForKey:(id)key;
- (id)stringForKey:(id)key;
- (id)stringForKeyPath:(id)path;
- (int)intForKey:(id)key;
- (int)intForKeyPath:(id)path;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setBool:(BOOL)bool forKeyPath:(id)path;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setFloat:(float)float forKeyPath:(id)path;
- (void)setInt:(int)int forKey:(id)key;
- (void)setInt:(int)int forKeyPath:(id)path;
@end

@implementation SCRCUserDefaultsBase

- (id)stringForKey:(id)key
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:key];
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()))
  {
    stringValue = v4;
LABEL_4:
    v7 = stringValue;
    goto LABEL_5;
  }

  if (v5 == CFNumberGetTypeID())
  {
    stringValue = [v4 stringValue];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)stringForKeyPath:(id)path
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:path];
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()))
  {
    stringValue = v4;
LABEL_4:
    v7 = stringValue;
    goto LABEL_5;
  }

  if (v5 == CFNumberGetTypeID())
  {
    stringValue = [v4 stringValue];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (void)setInt:(int)int forKey:(id)key
{
  v4 = *&int;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInt:v4];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKey:keyCopy];
}

- (int)intForKey:(id)key
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:key];
  v4 = v3;
  if (v3 && ((v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()) || v5 == CFNumberGetTypeID()))
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)setInt:(int)int forKeyPath:(id)path
{
  v4 = *&int;
  v6 = MEMORY[0x277CCABB0];
  pathCopy = path;
  v8 = [v6 numberWithInt:v4];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKeyPath:pathCopy];
}

- (int)intForKeyPath:(id)path
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:path];
  v4 = v3;
  if (v3 && ((v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()) || v5 == CFNumberGetTypeID()))
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)setFloat:(float)float forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  [(SCRCUserDefaultsBase *)self setValue:v9 forKey:keyCopy];
}

- (float)floatForKey:(id)key
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:key];
  v4 = v3;
  v5 = 0.0;
  if (v3)
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID() || v6 == CFNumberGetTypeID())
    {
      [v4 floatValue];
      v5 = v7;
    }
  }

  return v5;
}

- (void)setFloat:(float)float forKeyPath:(id)path
{
  v6 = MEMORY[0x277CCABB0];
  pathCopy = path;
  *&v8 = float;
  v9 = [v6 numberWithFloat:v8];
  [(SCRCUserDefaultsBase *)self setValue:v9 forKeyPath:pathCopy];
}

- (float)floatForKeyPath:(id)path
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:path];
  v4 = v3;
  v5 = 0.0;
  if (v3)
  {
    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID() || v6 == CFNumberGetTypeID())
    {
      [v4 floatValue];
      v5 = v7;
    }
  }

  return v5;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:key];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFStringGetTypeID() && v5 != CFNumberGetTypeID())
  {
    if (v5 == CFBooleanGetTypeID())
    {
      bOOLValue = CFBooleanGetValue(v4) != 0;
      goto LABEL_8;
    }

LABEL_7:
    bOOLValue = 0;
    goto LABEL_8;
  }

  bOOLValue = [(__CFBoolean *)v4 BOOLValue];
LABEL_8:

  return bOOLValue;
}

- (id)dictForKey:(id)key
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:key];
  v4 = v3;
  if (v3 && (v5 = CFGetTypeID(v3), v5 == CFDictionaryGetTypeID()))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setBool:(BOOL)bool forKeyPath:(id)path
{
  boolCopy = bool;
  v6 = MEMORY[0x277CCABB0];
  pathCopy = path;
  v8 = [v6 numberWithBool:boolCopy];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKeyPath:pathCopy];
}

- (BOOL)BOOLForKeyPath:(id)path
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:path];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFStringGetTypeID() && v5 != CFNumberGetTypeID())
  {
    if (v5 == CFBooleanGetTypeID())
    {
      bOOLValue = CFBooleanGetValue(v4) != 0;
      goto LABEL_8;
    }

LABEL_7:
    bOOLValue = 0;
    goto LABEL_8;
  }

  bOOLValue = [(__CFBoolean *)v4 BOOLValue];
LABEL_8:

  return bOOLValue;
}

@end