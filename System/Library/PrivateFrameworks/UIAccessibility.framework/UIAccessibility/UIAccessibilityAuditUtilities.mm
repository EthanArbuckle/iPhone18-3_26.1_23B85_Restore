@interface UIAccessibilityAuditUtilities
+ (BOOL)checkBoolValueForOptionsKey:(id)key inDictionary:(id)dictionary;
+ (id)dictionaryWithAXAuditIssue:(int64_t)issue element:(id)element additionalInfo:(id)info identifier:(id)identifier foregroundColor:(id)color backgroundColor:(id)backgroundColor fontSize:(id)size elementRect:(id)self0 text:(id)self1;
+ (id)optionsDictionaryForAuditTest:(id)test inDictionary:(id)dictionary;
@end

@implementation UIAccessibilityAuditUtilities

+ (id)dictionaryWithAXAuditIssue:(int64_t)issue element:(id)element additionalInfo:(id)info identifier:(id)identifier foregroundColor:(id)color backgroundColor:(id)backgroundColor fontSize:(id)size elementRect:(id)self0 text:(id)self1
{
  elementCopy = element;
  infoCopy = info;
  identifierCopy = identifier;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  sizeCopy = size;
  rectCopy = rect;
  textCopy = text;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = dictionary;
  if (elementCopy)
  {
    issue = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", issue];
    [v25 setObject:issue forKey:*MEMORY[0x1E6988CB0]];

    [v25 setObject:elementCopy forKey:*MEMORY[0x1E6988C80]];
    if (infoCopy)
    {
      [v25 setObject:infoCopy forKey:*MEMORY[0x1E6988C70]];
    }

    if (identifierCopy)
    {
      [v25 setObject:identifierCopy forKey:*MEMORY[0x1E6988CA0]];
    }

    if (colorCopy)
    {
      [v25 setObject:colorCopy forKey:*MEMORY[0x1E6988C98]];
    }

    if (backgroundColorCopy)
    {
      [v25 setObject:backgroundColorCopy forKey:*MEMORY[0x1E6988C78]];
    }

    if (sizeCopy)
    {
      [v25 setObject:sizeCopy forKey:*MEMORY[0x1E6988C90]];
    }

    if (rectCopy)
    {
      [v25 setObject:rectCopy forKey:*MEMORY[0x1E6988C88]];
    }

    if (textCopy)
    {
      [v25 setObject:textCopy forKey:*MEMORY[0x1E6988CA8]];
    }

    v27 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v25];
  }

  else
  {
    v27 = dictionary;
  }

  v28 = v27;

  return v28;
}

+ (BOOL)checkBoolValueForOptionsKey:(id)key inDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  dictionaryCopy = dictionary;
  keyCopy = key;
  objc_opt_class();
  v7 = [dictionaryCopy objectForKey:keyCopy];

  v8 = __UIAccessibilityCastAsClass();

  if (v8)
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)optionsDictionaryForAuditTest:(id)test inDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    testCopy = test;
    objc_opt_class();
    v7 = [dictionaryCopy objectForKey:testCopy];

    v8 = __UIAccessibilityCastAsClass();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end