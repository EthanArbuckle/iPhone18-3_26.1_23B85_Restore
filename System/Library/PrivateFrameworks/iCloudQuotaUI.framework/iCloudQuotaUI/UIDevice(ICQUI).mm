@interface UIDevice(ICQUI)
+ (BOOL)icqui_isiPad;
@end

@implementation UIDevice(ICQUI)

+ (BOOL)icqui_isiPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v1 = [currentDevice userInterfaceIdiom] == 1;

  return v1;
}

@end