@interface POXSRFC3339DateDefinition
- (id)stringFromValue:(id)value;
- (id)valueFromString:(id)string;
@end

@implementation POXSRFC3339DateDefinition

- (id)valueFromString:(id)string
{
  v3 = valueFromString__onceToken_2;
  stringCopy = string;
  if (v3 != -1)
  {
    [POXSRFC3339DateDefinition valueFromString:];
  }

  v5 = [valueFromString__dateTimeFormatter dateFromString:stringCopy];

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

- (id)stringFromValue:(id)value
{
  v3 = stringFromValue__onceToken_0;
  valueCopy = value;
  if (v3 != -1)
  {
    [POXSRFC3339DateDefinition stringFromValue:];
  }

  v5 = [stringFromValue__dateTimeFormatter stringFromDate:valueCopy];

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