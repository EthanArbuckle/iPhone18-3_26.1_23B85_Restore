@interface SCRCUserDefaultsBase
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)BOOLForKeyPath:(id)a3;
- (float)floatForKey:(id)a3;
- (float)floatForKeyPath:(id)a3;
- (id)dictForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (id)stringForKeyPath:(id)a3;
- (int)intForKey:(id)a3;
- (int)intForKeyPath:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setBool:(BOOL)a3 forKeyPath:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKeyPath:(id)a4;
- (void)setInt:(int)a3 forKey:(id)a4;
- (void)setInt:(int)a3 forKeyPath:(id)a4;
@end

@implementation SCRCUserDefaultsBase

- (id)stringForKey:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:a3];
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()))
  {
    v6 = v4;
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if (v5 == CFNumberGetTypeID())
  {
    v6 = [v4 stringValue];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)stringForKeyPath:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:a3];
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()))
  {
    v6 = v4;
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if (v5 == CFNumberGetTypeID())
  {
    v6 = [v4 stringValue];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (void)setInt:(int)a3 forKey:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:v4];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKey:v7];
}

- (int)intForKey:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:a3];
  v4 = v3;
  if (v3 && ((v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()) || v5 == CFNumberGetTypeID()))
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setInt:(int)a3 forKeyPath:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:v4];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKeyPath:v7];
}

- (int)intForKeyPath:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:a3];
  v4 = v3;
  if (v3 && ((v5 = CFGetTypeID(v3), v5 == CFStringGetTypeID()) || v5 == CFNumberGetTypeID()))
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(SCRCUserDefaultsBase *)self setValue:v9 forKey:v7];
}

- (float)floatForKey:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:a3];
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

- (void)setFloat:(float)a3 forKeyPath:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  *&v8 = a3;
  v9 = [v6 numberWithFloat:v8];
  [(SCRCUserDefaultsBase *)self setValue:v9 forKeyPath:v7];
}

- (float)floatForKeyPath:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:a3];
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

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKey:v7];
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:a3];
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
      v6 = CFBooleanGetValue(v4) != 0;
      goto LABEL_8;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [(__CFBoolean *)v4 BOOLValue];
LABEL_8:

  return v6;
}

- (id)dictForKey:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKey:a3];
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

- (void)setBool:(BOOL)a3 forKeyPath:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(SCRCUserDefaultsBase *)self setValue:v8 forKeyPath:v7];
}

- (BOOL)BOOLForKeyPath:(id)a3
{
  v3 = [(SCRCUserDefaultsBase *)self valueForKeyPath:a3];
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
      v6 = CFBooleanGetValue(v4) != 0;
      goto LABEL_8;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = [(__CFBoolean *)v4 BOOLValue];
LABEL_8:

  return v6;
}

@end