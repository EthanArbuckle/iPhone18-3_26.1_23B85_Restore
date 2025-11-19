@interface TBQualityScore
+ (id)qualityScoreWithValue:(unint64_t)a3;
- (TBQualityScore)initWithCoder:(id)a3;
- (TBQualityScore)initWithValue:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TBQualityScore

+ (id)qualityScoreWithValue:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithValue:a3];

  return v3;
}

- (TBQualityScore)initWithValue:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TBQualityScore;
  v4 = [(TBQualityScore *)&v7 init];
  typeDescription = v4->_typeDescription;
  v4->_score = a3;
  v4->_typeDescription = @"quality";

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  typeDescription = self->_typeDescription;
  v5 = a3;
  [v5 encodeObject:typeDescription forKey:@"_typeDescription"];
  [v5 encodeInteger:self->_score forKey:@"_score"];
}

- (TBQualityScore)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TBQualityScore;
  v3 = a3;
  v4 = [(TBQualityScore *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"_typeDescription", v9.receiver, v9.super_class}];
  typeDescription = v4->_typeDescription;
  v4->_typeDescription = v5;

  v7 = [v3 decodeIntegerForKey:@"_score"];
  v4->_score = v7;
  return v4;
}

@end