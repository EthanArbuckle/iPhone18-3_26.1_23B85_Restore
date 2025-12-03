@interface CNVCardURLParser
+ (id)valueWithParser:(id)parser;
@end

@implementation CNVCardURLParser

+ (id)valueWithParser:(id)parser
{
  parseStringValue = [parser parseStringValue];
  _cn_stringByAddingPercentEscapesIfNecessary = [parseStringValue _cn_stringByAddingPercentEscapesIfNecessary];

  return _cn_stringByAddingPercentEscapesIfNecessary;
}

@end