@interface TSCHColorFillSet
- (id)fillFromSageProperties:(id)properties context:(id)context;
@end

@implementation TSCHColorFillSet

- (id)fillFromSageProperties:(id)properties context:(id)context
{
  v7 = objc_msgSend_colorFromProperties_(self, a2, v4, v5, v6, properties, context);
  v12 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v8, v9, v10, v11, v7);

  return v12;
}

@end