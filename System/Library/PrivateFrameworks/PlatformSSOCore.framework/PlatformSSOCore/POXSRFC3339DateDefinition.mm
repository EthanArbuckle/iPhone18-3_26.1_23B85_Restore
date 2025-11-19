@interface POXSRFC3339DateDefinition
- (id)stringFromValue:(id)a3;
- (id)valueFromString:(id)a3;
@end

@implementation POXSRFC3339DateDefinition

- (id)valueFromString:(id)a3
{
  v3 = valueFromString__onceToken_2;
  v4 = a3;
  if (v3 != -1)
  {
    [POXSRFC3339DateDefinition valueFromString:];
  }

  v5 = [valueFromString__dateTimeFormatter dateFromString:v4];

  return v5;
}

uint64_t __45__POXSRFC3339DateDefinition_valueFromString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = valueFromString__dateTimeFormatter;
  valueFromString__dateTimeFormatter = v0;

  v2 = valueFromString__dateTimeFormatter;

  return [v2 setFormatOptions:3955];
}

- (id)stringFromValue:(id)a3
{
  v3 = stringFromValue__onceToken_0;
  v4 = a3;
  if (v3 != -1)
  {
    [POXSRFC3339DateDefinition stringFromValue:];
  }

  v5 = [stringFromValue__dateTimeFormatter stringFromDate:v4];

  return v5;
}

uint64_t __45__POXSRFC3339DateDefinition_stringFromValue___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = stringFromValue__dateTimeFormatter;
  stringFromValue__dateTimeFormatter = v0;

  v2 = stringFromValue__dateTimeFormatter;

  return [v2 setFormatOptions:3955];
}

@end