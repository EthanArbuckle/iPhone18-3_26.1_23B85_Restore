@interface UIFont(LayoutAdditions)
- (double)tf_estimatedFirstBaseline;
- (void)tf_computeFittedLineHeight;
@end

@implementation UIFont(LayoutAdditions)

- (double)tf_estimatedFirstBaseline
{
  [a1 lineHeight];
  v3 = v2;
  [a1 descender];
  return v3 + v4;
}

- (void)tf_computeFittedLineHeight
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277D740A8];
  v11[0] = a1;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [&stru_287EAC508 boundingRectWithSize:3 options:v1 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v12.origin.x = v3;
  v12.origin.y = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  CGRectGetHeight(v12);
}

@end