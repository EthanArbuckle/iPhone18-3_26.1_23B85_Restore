@interface VUITraitBaseClass
+ (Class)uiTraitFrom:(Class)from;
+ (id)uiTraitsFrom:(id)from;
@end

@implementation VUITraitBaseClass

+ (Class)uiTraitFrom:(Class)from
{
  if (objc_opt_class() != from && objc_opt_class() != from)
  {
    objc_opt_class();
  }

  v4 = objc_opt_class();

  return v4;
}

+ (id)uiTraitsFrom:(id)from
{
  fromCopy = from;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(fromCopy, "count")}];
  if ([fromCopy count])
  {
    v5 = 0;
    do
    {
      [v4 setObject:+[VUITraitBaseClass uiTraitFrom:](VUITraitBaseClass atIndexedSubscript:{"uiTraitFrom:", objc_msgSend(fromCopy, "objectAtIndexedSubscript:", v5)), v5}];
      ++v5;
    }

    while (v5 < [fromCopy count]);
  }

  return v4;
}

@end