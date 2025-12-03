@interface SXAutoPlacement
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
- (NSString)description;
@end

@implementation SXAutoPlacement

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"advertisement"] || objc_msgSend(propertyCopy, "isEqualToString:", @"suggestedArticles"))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXAutoPlacement;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  advertisement = [(SXAutoPlacement *)self advertisement];

  if (advertisement)
  {
    advertisement2 = [(SXAutoPlacement *)self advertisement];
    [v3 appendFormat:@"; advertisement: %@", advertisement2];
  }

  suggestedArticles = [(SXAutoPlacement *)self suggestedArticles];

  if (suggestedArticles)
  {
    suggestedArticles2 = [(SXAutoPlacement *)self suggestedArticles];
    [v3 appendFormat:@"; suggestedArticles: %@", suggestedArticles2];
  }

  [v3 appendString:@">"];

  return v3;
}

@end