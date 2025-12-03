@interface TBPopularityScore
+ (id)popularityScoreWithValue:(unint64_t)value;
- (TBPopularityScore)initWithCoder:(id)coder;
- (TBPopularityScore)initWithValue:(unint64_t)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TBPopularityScore

+ (id)popularityScoreWithValue:(unint64_t)value
{
  v3 = [[self alloc] initWithValue:value];

  return v3;
}

- (TBPopularityScore)initWithValue:(unint64_t)value
{
  v7.receiver = self;
  v7.super_class = TBPopularityScore;
  v4 = [(TBPopularityScore *)&v7 init];
  typeDescription = v4->_typeDescription;
  v4->_score = value;
  v4->_typeDescription = @"popularity";

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  typeDescription = self->_typeDescription;
  coderCopy = coder;
  [coderCopy encodeObject:typeDescription forKey:@"_typeDescription"];
  [coderCopy encodeInteger:self->_score forKey:@"_score"];
}

- (TBPopularityScore)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TBPopularityScore;
  coderCopy = coder;
  v4 = [(TBPopularityScore *)&v9 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"_typeDescription", v9.receiver, v9.super_class}];
  typeDescription = v4->_typeDescription;
  v4->_typeDescription = v5;

  v7 = [coderCopy decodeIntegerForKey:@"_score"];
  v4->_score = v7;
  return v4;
}

@end