@interface WBSStringQuery
+ (WBSStringQuery)queryThatMatchesEverything;
- (NSString)matchingTypeDescriptionString;
- (WBSStringQuery)initWithString:(id)string matchingType:(int64_t)type;
@end

@implementation WBSStringQuery

+ (WBSStringQuery)queryThatMatchesEverything
{
  v2 = [[self alloc] initWithString:&stru_1F3064D08 matchingType:0];

  return v2;
}

- (WBSStringQuery)initWithString:(id)string matchingType:(int64_t)type
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = WBSStringQuery;
  v7 = [(WBSStringQuery *)&v12 init];
  if (v7)
  {
    v8 = [stringCopy copy];
    string = v7->_string;
    v7->_string = v8;

    v7->_matchingType = type;
    v10 = v7;
  }

  return v7;
}

- (NSString)matchingTypeDescriptionString
{
  if (self->_matchingType)
  {
    return @"exact";
  }

  else
  {
    return @"prefix";
  }
}

@end