@interface SXAutoPlacement
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
- (NSString)description;
@end

@implementation SXAutoPlacement

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"advertisement"] || objc_msgSend(v6, "isEqualToString:", @"suggestedArticles"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXAutoPlacement;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(SXAutoPlacement *)self advertisement];

  if (v4)
  {
    v5 = [(SXAutoPlacement *)self advertisement];
    [v3 appendFormat:@"; advertisement: %@", v5];
  }

  v6 = [(SXAutoPlacement *)self suggestedArticles];

  if (v6)
  {
    v7 = [(SXAutoPlacement *)self suggestedArticles];
    [v3 appendFormat:@"; suggestedArticles: %@", v7];
  }

  [v3 appendString:@">"];

  return v3;
}

@end