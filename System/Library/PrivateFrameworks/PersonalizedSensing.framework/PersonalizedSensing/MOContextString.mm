@interface MOContextString
+ (id)describeSource:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (MOContextString)initWithCoder:(id)a3;
- (MOContextString)initWithIdentifier:(id)a3 string:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)describeSource;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextString

- (MOContextString)initWithIdentifier:(id)a3 string:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MOContextString;
  v9 = [(MOContextString *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stringIdentifier, a3);
    objc_storeStrong(&v10->_textString, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  stringIdentifier = self->_stringIdentifier;
  v5 = a3;
  [v5 encodeObject:stringIdentifier forKey:@"stringIdentifier"];
  [v5 encodeObject:self->_textString forKey:@"textString"];
  [v5 encodeInteger:self->_source forKey:@"source"];
  [v5 encodeObject:self->_contextDimensions forKey:@"contextDimensions"];
  [v5 encodeDouble:@"accuracy" forKey:self->_accuracy];
  [v5 encodeDouble:@"satisfaction" forKey:self->_satisfaction];
  [v5 encodeInteger:self->_contentType forKey:@"contentType"];
  [v5 encodeInteger:self->_promptIndex forKey:@"promptIndex"];
  [v5 encodeDouble:@"totalScore" forKey:self->_totalScore];
}

- (MOContextString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textString"];
  v7 = [(MOContextString *)self initWithIdentifier:v5 string:v6];
  if (v7)
  {
    v7->_source = [v4 decodeIntegerForKey:@"source"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"contextDimensions"];
    contextDimensions = v7->_contextDimensions;
    v7->_contextDimensions = v11;

    [v4 decodeDoubleForKey:@"accuracy"];
    v7->_accuracy = v13;
    [v4 decodeDoubleForKey:@"satisfaction"];
    v7->_satisfaction = v14;
    v7->_contentType = [v4 decodeIntegerForKey:@"contentType"];
    v7->_promptIndex = [v4 decodeIntegerForKey:@"promptIndex"];
    [v4 decodeDoubleForKey:@"totalScore"];
    v7->_totalScore = v15;
  }

  return v7;
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

+ (id)describeSource:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A1EEA0[a3 - 1];
  }
}

- (id)describeSource
{
  v2 = [(MOContextString *)self source];

  return [MOContextString describeSource:v2];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOContextString *)self stringIdentifier];
  v5 = [(MOContextString *)self textString];
  v6 = [(MOContextString *)self describeSource];
  v7 = [(MOContextString *)self contextDimensions];
  v8 = [(MOContextString *)self contentType];
  v9 = [(MOContextString *)self promptIndex];
  [(MOContextString *)self totalScore];
  v11 = [v3 stringWithFormat:@"stringIdentifier, %@, string, %@, source, %@, contextDimensions, %@, contentType, %lu, promptIndex, %lu, totalScore, %f", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextString alloc];
  v5 = [(MOContextString *)self stringIdentifier];
  v6 = [(MOContextString *)self textString];
  v7 = [(MOContextString *)v4 initWithIdentifier:v5 string:v6];

  v8 = [(MOContextString *)self contextDimensions];
  [(MOContextString *)v7 setContextDimensions:v8];

  [(MOContextString *)v7 setSource:[(MOContextString *)self source]];
  [(MOContextString *)self accuracy];
  [(MOContextString *)v7 setAccuracy:?];
  [(MOContextString *)self satisfaction];
  [(MOContextString *)v7 setSatisfaction:?];
  [(MOContextString *)v7 setContentType:[(MOContextString *)self contentType]];
  [(MOContextString *)v7 setPromptIndex:[(MOContextString *)self promptIndex]];
  [(MOContextString *)self totalScore];
  [(MOContextString *)v7 setTotalScore:?];
  return v7;
}

@end