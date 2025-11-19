@interface UIPlasmaEnabled
@end

@implementation UIPlasmaEnabled

void ___UIPlasmaEnabled_block_invoke()
{
  v0 = +[UIDevice currentDevice];
  byte_1ED49E118 = [v0 userInterfaceIdiom] != 6;
}

@end