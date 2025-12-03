@interface NSData(ICADIUtilityAdditions)
+ (id)ic_dataWithADIBytes:()ICADIUtilityAdditions length:;
@end

@implementation NSData(ICADIUtilityAdditions)

+ (id)ic_dataWithADIBytes:()ICADIUtilityAdditions length:
{
  v4 = [[self alloc] initWithBytesNoCopy:a3 length:a4 deallocator:&__block_literal_global_40302];

  return v4;
}

@end