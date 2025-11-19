@interface UMTool
+ (id)subcommands;
@end

@implementation UMTool

+ (id)subcommands
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end