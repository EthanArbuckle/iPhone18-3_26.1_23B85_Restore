@interface VUITraitBaseClass
+ (Class)uiTraitFrom:(Class)a3;
+ (id)uiTraitsFrom:(id)a3;
@end

@implementation VUITraitBaseClass

+ (Class)uiTraitFrom:(Class)a3
{
  if (objc_opt_class() != a3 && objc_opt_class() != a3)
  {
    objc_opt_class();
  }

  v4 = objc_opt_class();

  return v4;
}

+ (id)uiTraitsFrom:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      [v4 setObject:+[VUITraitBaseClass uiTraitFrom:](VUITraitBaseClass atIndexedSubscript:{"uiTraitFrom:", objc_msgSend(v3, "objectAtIndexedSubscript:", v5)), v5}];
      ++v5;
    }

    while (v5 < [v3 count]);
  }

  return v4;
}

@end