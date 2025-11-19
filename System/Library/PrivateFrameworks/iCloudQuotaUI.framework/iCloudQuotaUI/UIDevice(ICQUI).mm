@interface UIDevice(ICQUI)
+ (BOOL)icqui_isiPad;
@end

@implementation UIDevice(ICQUI)

+ (BOOL)icqui_isiPad
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

@end