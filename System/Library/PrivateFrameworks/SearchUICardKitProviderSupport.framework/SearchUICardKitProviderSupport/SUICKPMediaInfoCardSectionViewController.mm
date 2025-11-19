@interface SUICKPMediaInfoCardSectionViewController
+ (id)cardSectionClasses;
@end

@implementation SUICKPMediaInfoCardSectionViewController

+ (id)cardSectionClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end