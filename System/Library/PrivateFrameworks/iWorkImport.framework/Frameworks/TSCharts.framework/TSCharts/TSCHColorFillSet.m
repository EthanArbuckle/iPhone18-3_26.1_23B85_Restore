@interface TSCHColorFillSet
- (id)fillFromSageProperties:(id)a3 context:(id)a4;
@end

@implementation TSCHColorFillSet

- (id)fillFromSageProperties:(id)a3 context:(id)a4
{
  v7 = objc_msgSend_colorFromProperties_(self, a2, v4, v5, v6, a3, a4);
  v12 = objc_msgSend_colorWithColor_(MEMORY[0x277D801F8], v8, v9, v10, v11, v7);

  return v12;
}

@end