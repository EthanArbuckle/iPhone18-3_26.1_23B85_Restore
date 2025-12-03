@interface TPGilliganCompatibilityDelegate
- (Class)exporterClassForType:(id)type options:(id)options;
@end

@implementation TPGilliganCompatibilityDelegate

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && !objc_msgSend_caseInsensitiveCompare_(typeCopy, v6, v8, v9, v10, v11, *MEMORY[0x277D80818]))
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

@end