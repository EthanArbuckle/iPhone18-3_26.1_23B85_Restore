@interface NSCharacterSet(Latex)
+ (id)charactersRequiringExtentionCharacterSet;
@end

@implementation NSCharacterSet(Latex)

+ (id)charactersRequiringExtentionCharacterSet
{
  if (charactersRequiringExtentionCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(Latex) charactersRequiringExtentionCharacterSet];
  }

  v1 = charactersRequiringExtentionCharacterSet_charSet;

  return v1;
}

@end