@interface NSString(CRDT_REMAdditions_Subset)
+ (void)rem_registerClassAtCRCoderIfNeeded;
@end

@implementation NSString(CRDT_REMAdditions_Subset)

+ (void)rem_registerClassAtCRCoderIfNeeded
{
  if (CR_NSString_registerClass_onceToken != -1)
  {
    +[NSString(CRDT_REMAdditions_Subset) rem_registerClassAtCRCoderIfNeeded];
  }
}

@end