@interface MOContextString
+ (id)describeSource:(unint64_t)source;
- (BOOL)isEqual:(id)equal;
- (MOContextString)initWithCoder:(id)coder;
- (MOContextString)initWithIdentifier:(id)identifier string:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)describeSource;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextString

- (MOContextString)initWithIdentifier:(id)identifier string:(id)string
{
  identifierCopy = identifier;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = MOContextString;
  v9 = [(MOContextString *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stringIdentifier, identifier);
    objc_storeStrong(&v10->_textString, string);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  stringIdentifier = self->_stringIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:stringIdentifier forKey:@"stringIdentifier"];
  [coderCopy encodeObject:self->_textString forKey:@"textString"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_contextDimensions forKey:@"contextDimensions"];
  [coderCopy encodeDouble:@"accuracy" forKey:self->_accuracy];
  [coderCopy encodeDouble:@"satisfaction" forKey:self->_satisfaction];
  [coderCopy encodeInteger:self->_contentType forKey:@"contentType"];
  [coderCopy encodeInteger:self->_promptIndex forKey:@"promptIndex"];
  [coderCopy encodeDouble:@"totalScore" forKey:self->_totalScore];
}

- (MOContextString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textString"];
  v7 = [(MOContextString *)self initWithIdentifier:v5 string:v6];
  if (v7)
  {
    v7->_source = [coderCopy decodeIntegerForKey:@"source"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"contextDimensions"];
    contextDimensions = v7->_contextDimensions;
    v7->_contextDimensions = v11;

    [coderCopy decodeDoubleForKey:@"accuracy"];
    v7->_accuracy = v13;
    [coderCopy decodeDoubleForKey:@"satisfaction"];
    v7->_satisfaction = v14;
    v7->_contentType = [coderCopy decodeIntegerForKey:@"contentType"];
    v7->_promptIndex = [coderCopy decodeIntegerForKey:@"promptIndex"];
    [coderCopy decodeDoubleForKey:@"totalScore"];
    v7->_totalScore = v15;
  }

  return v7;
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

+ (id)describeSource:(unint64_t)source
{
  if (source - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A1EEA0[source - 1];
  }
}

- (id)describeSource
{
  source = [(MOContextString *)self source];

  return [MOContextString describeSource:source];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stringIdentifier = [(MOContextString *)self stringIdentifier];
  textString = [(MOContextString *)self textString];
  describeSource = [(MOContextString *)self describeSource];
  contextDimensions = [(MOContextString *)self contextDimensions];
  contentType = [(MOContextString *)self contentType];
  promptIndex = [(MOContextString *)self promptIndex];
  [(MOContextString *)self totalScore];
  v11 = [v3 stringWithFormat:@"stringIdentifier, %@, string, %@, source, %@, contextDimensions, %@, contentType, %lu, promptIndex, %lu, totalScore, %f", stringIdentifier, textString, describeSource, contextDimensions, contentType, promptIndex, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextString alloc];
  stringIdentifier = [(MOContextString *)self stringIdentifier];
  textString = [(MOContextString *)self textString];
  v7 = [(MOContextString *)v4 initWithIdentifier:stringIdentifier string:textString];

  contextDimensions = [(MOContextString *)self contextDimensions];
  [(MOContextString *)v7 setContextDimensions:contextDimensions];

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