@interface SPRServiceXPC
+ (NSXPCInterface)interface;
@end

@implementation SPRServiceXPC

+ (NSXPCInterface)interface
{
  if (qword_2803D4038 != -1)
  {
    sub_26AA7E530();
  }

  v3 = qword_2803D4040;

  return v3;
}

@end