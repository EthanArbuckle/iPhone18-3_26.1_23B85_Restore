@interface TBQualityScore
+ (id)qualityScoreWithValue:(unint64_t)value;
- (TBQualityScore)initWithCoder:(id)coder;
- (TBQualityScore)initWithValue:(unint64_t)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TBQualityScore

+ (id)qualityScoreWithValue:(unint64_t)value
{
  v3 = [[self alloc] initWithValue:value];

  return v3;
}

- (TBQualityScore)initWithValue:(unint64_t)value
{
  v7.receiver = self;
  v7.super_class = TBQualityScore;
  v4 = [(TBQualityScore *)&v7 init];
  typeDescription = v4->_typeDescription;
  v4->_score = value;
  v4->_typeDescription = @"quality";

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  typeDescription = self->_typeDescription;
  coderCopy = coder;
  [coderCopy encodeObject:typeDescription forKey:@"_typeDescription"];
  [coderCopy encodeInteger:self->_score forKey:@"_score"];
}

- (TBQualityScore)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TBQualityScore;
  coderCopy = coder;
  v4 = [(TBQualityScore *)&v9 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"_typeDescription", v9.receiver, v9.super_class}];
  typeDescription = v4->_typeDescription;
  v4->_typeDescription = v5;

  v7 = [coderCopy decodeIntegerForKey:@"_score"];
  v4->_score = v7;
  return v4;
}

@end