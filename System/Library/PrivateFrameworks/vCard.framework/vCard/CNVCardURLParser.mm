@interface CNVCardURLParser
+ (id)valueWithParser:(id)a3;
@end

@implementation CNVCardURLParser

+ (id)valueWithParser:(id)a3
{
  v3 = [a3 parseStringValue];
  v4 = [v3 _cn_stringByAddingPercentEscapesIfNecessary];

  return v4;
}

@end