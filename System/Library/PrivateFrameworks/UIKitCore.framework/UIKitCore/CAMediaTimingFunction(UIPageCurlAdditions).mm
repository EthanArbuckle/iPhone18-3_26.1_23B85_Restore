@interface CAMediaTimingFunction(UIPageCurlAdditions)
+ (uint64_t)uiFunctionWithControlPoints:()UIPageCurlAdditions;
@end

@implementation CAMediaTimingFunction(UIPageCurlAdditions)

+ (uint64_t)uiFunctionWithControlPoints:()UIPageCurlAdditions
{
  v3 = *a3;
  v4 = a3[1];
  *&v3 = *a3;
  *&v4 = v4;
  v5 = a3[2];
  v6 = a3[3];
  *&v5 = v5;
  *&v6 = v6;
  return [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :v4 :v5 :v6];
}

@end