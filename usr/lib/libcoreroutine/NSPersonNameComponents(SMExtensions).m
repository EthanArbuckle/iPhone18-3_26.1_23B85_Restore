@interface NSPersonNameComponents(SMExtensions)
+ (id)sharedNameComponents;
@end

@implementation NSPersonNameComponents(SMExtensions)

+ (id)sharedNameComponents
{
  if (qword_2814A7CD0 != -1)
  {
    dispatch_once(&qword_2814A7CD0, &__block_literal_global_15);
  }

  v1 = _MergedGlobals_112;

  return v1;
}

@end