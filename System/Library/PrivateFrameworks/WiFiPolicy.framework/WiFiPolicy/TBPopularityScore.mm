@interface TBPopularityScore
+ (id)popularityScoreWithValue:(unint64_t)a3;
- (TBPopularityScore)initWithCoder:(id)a3;
- (TBPopularityScore)initWithValue:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TBPopularityScore

+ (id)popularityScoreWithValue:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithValue:a3];

  return v3;
}

- (TBPopularityScore)initWithValue:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TBPopularityScore;
  v4 = [(TBPopularityScore *)&v7 init];
  typeDescription = v4->_typeDescription;
  v4->_score = a3;
  v4->_typeDescription = @"popularity";

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  typeDescription = self->_typeDescription;
  v5 = a3;
  [v5 encodeObject:typeDescription forKey:@"_typeDescription"];
  [v5 encodeInteger:self->_score forKey:@"_score"];
}

- (TBPopularityScore)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TBPopularityScore;
  v3 = a3;
  v4 = [(TBPopularityScore *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"_typeDescription", v9.receiver, v9.super_class}];
  typeDescription = v4->_typeDescription;
  v4->_typeDescription = v5;

  v7 = [v3 decodeIntegerForKey:@"_score"];
  v4->_score = v7;
  return v4;
}

@end