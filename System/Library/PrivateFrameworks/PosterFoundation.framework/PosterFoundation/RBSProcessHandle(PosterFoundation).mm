@interface RBSProcessHandle(PosterFoundation)
- (id)pf_shortDesc;
@end

@implementation RBSProcessHandle(PosterFoundation)

- (id)pf_shortDesc
{
  v2 = [a1 description];
  v3 = objc_msgSend(v2, "rangeOfString:", @"(");
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 substringToIndex:v3];

    v5 = [v4 componentsSeparatedByString:@"."];
    v6 = [v5 lastObject];

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%d", v6, objc_msgSend(a1, "pid")];
  }

  return v2;
}

@end