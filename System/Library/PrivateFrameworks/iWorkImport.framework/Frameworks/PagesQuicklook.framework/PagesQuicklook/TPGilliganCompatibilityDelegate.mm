@interface TPGilliganCompatibilityDelegate
- (Class)exporterClassForType:(id)a3 options:(id)a4;
@end

@implementation TPGilliganCompatibilityDelegate

- (Class)exporterClassForType:(id)a3 options:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v5 && !objc_msgSend_caseInsensitiveCompare_(v5, v6, v8, v9, v10, v11, *MEMORY[0x277D80818]))
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