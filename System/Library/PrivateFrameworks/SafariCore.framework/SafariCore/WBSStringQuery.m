@interface WBSStringQuery
+ (WBSStringQuery)queryThatMatchesEverything;
- (NSString)matchingTypeDescriptionString;
- (WBSStringQuery)initWithString:(id)a3 matchingType:(int64_t)a4;
@end

@implementation WBSStringQuery

+ (WBSStringQuery)queryThatMatchesEverything
{
  v2 = [[a1 alloc] initWithString:&stru_1F3064D08 matchingType:0];

  return v2;
}

- (WBSStringQuery)initWithString:(id)a3 matchingType:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = WBSStringQuery;
  v7 = [(WBSStringQuery *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    string = v7->_string;
    v7->_string = v8;

    v7->_matchingType = a4;
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