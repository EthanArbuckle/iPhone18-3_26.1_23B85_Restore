@interface MOContextStringFeedback
+ (id)describeFeedbackMode:(unint64_t)mode;
+ (id)describeUsageFeedback:(unint64_t)feedback;
- (BOOL)isEqual:(id)equal;
- (MOContextStringFeedback)initWithCoder:(id)coder;
- (MOContextStringFeedback)initWithContextStringIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)describeFeedbackMode;
- (id)describeUsageFeedback;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextStringFeedback

- (MOContextStringFeedback)initWithContextStringIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MOContextStringFeedback;
  v6 = [(MOContextStringFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stringIdentifier, identifier);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  stringIdentifier = self->_stringIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:stringIdentifier forKey:@"stringIdentifier"];
  [coderCopy encodeObject:self->_textString forKey:@"textString"];
  [coderCopy encodeInteger:self->_score forKey:@"score"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeInteger:self->_usage forKey:@"usage"];
}

- (MOContextStringFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringIdentifier"];
  v6 = [(MOContextStringFeedback *)self initWithContextStringIdentifier:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textString"];
    textString = v6->_textString;
    v6->_textString = v7;

    v6->_score = [coderCopy decodeIntegerForKey:@"score"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v6->_timestamp;
    v6->_timestamp = v9;

    v6->_mode = [coderCopy decodeIntegerForKey:@"mode"];
    v6->_usage = [coderCopy decodeIntegerForKey:@"usage"];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  stringIdentifier = self->_stringIdentifier;
  stringIdentifier = [equalCopy stringIdentifier];
  LOBYTE(stringIdentifier) = [(NSUUID *)stringIdentifier isEqual:stringIdentifier];

  textString = self->_textString;
  textString = [equalCopy textString];

  LOBYTE(textString) = [(NSString *)textString isEqual:textString];
  return v5 & stringIdentifier & textString;
}

- (id)describeFeedbackMode
{
  mode = [(MOContextStringFeedback *)self mode];

  return [MOContextStringFeedback describeFeedbackMode:mode];
}

+ (id)describeFeedbackMode:(unint64_t)mode
{
  v3 = @"Unknown";
  if (mode == 1)
  {
    v3 = @"System";
  }

  if (mode == 2)
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
  usage = [(MOContextStringFeedback *)self usage];

  return [MOContextStringFeedback describeUsageFeedback:usage];
}

+ (id)describeUsageFeedback:(unint64_t)feedback
{
  if (feedback - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A1EEB8[feedback - 1];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stringIdentifier = [(MOContextStringFeedback *)self stringIdentifier];
  textString = [(MOContextStringFeedback *)self textString];
  timestamp = [(MOContextStringFeedback *)self timestamp];
  score = [(MOContextStringFeedback *)self score];
  describeFeedbackMode = [(MOContextStringFeedback *)self describeFeedbackMode];
  describeUsageFeedback = [(MOContextStringFeedback *)self describeUsageFeedback];
  v10 = [v3 stringWithFormat:@"stringIdentifier, %@, string, %@, timestamp, %@, score, %lu, mode, %@, usage, %@", stringIdentifier, textString, timestamp, score, describeFeedbackMode, describeUsageFeedback];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextStringFeedback alloc];
  stringIdentifier = [(MOContextStringFeedback *)self stringIdentifier];
  v6 = [(MOContextStringFeedback *)v4 initWithContextStringIdentifier:stringIdentifier];

  textString = [(MOContextStringFeedback *)self textString];
  [(MOContextStringFeedback *)v6 setTextString:textString];

  timestamp = [(MOContextStringFeedback *)self timestamp];
  [(MOContextStringFeedback *)v6 setTimestamp:timestamp];

  [(MOContextStringFeedback *)v6 setScore:[(MOContextStringFeedback *)self score]];
  [(MOContextStringFeedback *)v6 setMode:[(MOContextStringFeedback *)self mode]];
  [(MOContextStringFeedback *)v6 setUsage:[(MOContextStringFeedback *)self usage]];
  return v6;
}

@end