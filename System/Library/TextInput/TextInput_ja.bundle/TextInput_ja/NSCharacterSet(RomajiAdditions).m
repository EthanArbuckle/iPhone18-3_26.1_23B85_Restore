@interface NSCharacterSet(RomajiAdditions)
+ (id)alphabetCharacterSet;
@end

@implementation NSCharacterSet(RomajiAdditions)

+ (id)alphabetCharacterSet
{
  if (alphabetCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(RomajiAdditions) alphabetCharacterSet];
  }

  v1 = alphabetCharacterSet___alphabetCharacterSet;

  return v1;
}

@end