@interface SSCapabilityCondition
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation SSCapabilityCondition

- (BOOL)evaluateWithContext:(id)context
{
  operator = self->super._operator;
  if (operator)
  {
    if (operator != 1)
    {
      v6 = 0;
LABEL_12:
      v13 = 0;
      goto LABEL_17;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  if (!v6)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, self->super._value, 0}];
  v8 = SSVMobileInstallationFramework();
  v9 = SSVWeakLinkedSymbolForString("MobileInstallationCheckCapabilitiesMatch", v8);
  if (v9 && (v10 = v9(v7, 0)) != 0)
  {
    v11 = v10;
    Value = CFDictionaryGetValue(v10, @"CapabilitiesMatch");
    if (Value)
    {
      v13 = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    v13 = 0;
  }

LABEL_17:
  return v13;
}

@end