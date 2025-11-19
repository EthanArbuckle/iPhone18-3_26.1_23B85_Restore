@interface SBLockScreenModalViewFactory
+ (id)newLockScreenModalView;
@end

@implementation SBLockScreenModalViewFactory

+ (id)newLockScreenModalView
{
  v2 = objc_alloc(NSClassFromString(&cfstr_Csmodalview.isa));
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);

  return [v2 initWithFrame:{v3, v4, v5, v6}];
}

@end