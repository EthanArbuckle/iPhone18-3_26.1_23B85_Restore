@interface MOContextStringFeedback
+ (id)describeFeedbackMode:(unint64_t)a3;
+ (id)describeUsageFeedback:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (MOContextStringFeedback)initWithCoder:(id)a3;
- (MOContextStringFeedback)initWithContextStringIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)describeFeedbackMode;
- (id)describeUsageFeedback;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextStringFeedback

- (MOContextStringFeedback)initWithContextStringIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOContextStringFeedback;
  v6 = [(MOContextStringFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stringIdentifier, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  stringIdentifier = self->_stringIdentifier;
  v5 = a3;
  [v5 encodeObject:stringIdentifier forKey:@"stringIdentifier"];
  [v5 encodeObject:self->_textString forKey:@"textString"];
  [v5 encodeInteger:self->_score forKey:@"score"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeInteger:self->_usage forKey:@"usage"];
}

- (MOContextStringFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringIdentifier"];
  v6 = [(MOContextStringFeedback *)self initWithContextStringIdentifier:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textString"];
    textString = v6->_textString;
    v6->_textString = v7;

    v6->_score = [v4 decodeIntegerForKey:@"score"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v6->_timestamp;
    v6->_timestamp = v9;

    v6->_mode = [v4 decodeIntegerForKey:@"mode"];
    v6->_usage = [v4 decodeIntegerForKey:@"usage"];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()];
  stringIdentifier = self->_stringIdentifier;
  v7 = [v4 stringIdentifier];
  LOBYTE(stringIdentifier) = [(NSUUID *)stringIdentifier isEqual:v7];

  textString = self->_textString;
  v9 = [v4 textString];

  LOBYTE(textString) = [(NSString *)textString isEqual:v9];
  return v5 & stringIdentifier & textString;
}

- (id)describeFeedbackMode
{
  v2 = [(MOContextStringFeedback *)self mode];

  return [MOContextStringFeedback describeFeedbackMode:v2];
}

+ (id)describeFeedbackMode:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"System";
  }

  if (a3 == 2)
  {
    return @"User";
  }

  else
  {
    return v3;
  }
}

- (id)describeUsageFeedback
{
  v2 = [(MOContextStringFeedback *)self usage];

  return [MOContextStringFeedback describeUsageFeedback:v2];
}

+ (id)describeUsageFeedback:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1000B61D8[a3 - 1];
  }
}

- (id)description
{
  v3 = [(MOContextStringFeedback *)self stringIdentifier];
  v4 = [(MOContextStringFeedback *)self textString];
  v5 = [(MOContextStringFeedback *)self timestamp];
  v6 = [(MOContextStringFeedback *)self score];
  v7 = [(MOContextStringFeedback *)self describeFeedbackMode];
  v8 = [(MOContextStringFeedback *)self describeUsageFeedback];
  v9 = [NSString stringWithFormat:@"stringIdentifier, %@, string, %@, timestamp, %@, score, %lu, mode, %@, usage, %@", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextStringFeedback alloc];
  v5 = [(MOContextStringFeedback *)self stringIdentifier];
  v6 = [(MOContextStringFeedback *)v4 initWithContextStringIdentifier:v5];

  v7 = [(MOContextStringFeedback *)self textString];
  [(MOContextStringFeedback *)v6 setTextString:v7];

  v8 = [(MOContextStringFeedback *)self timestamp];
  [(MOContextStringFeedback *)v6 setTimestamp:v8];

  [(MOContextStringFeedback *)v6 setScore:[(MOContextStringFeedback *)self score]];
  [(MOContextStringFeedback *)v6 setMode:[(MOContextStringFeedback *)self mode]];
  [(MOContextStringFeedback *)v6 setUsage:[(MOContextStringFeedback *)self usage]];
  return v6;
}

@end