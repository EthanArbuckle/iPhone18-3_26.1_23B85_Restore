@interface MOContextString
+ (id)describeSource:(unint64_t)source;
- (BOOL)isEqual:(id)equal;
- (MOContextString)initWithCoder:(id)coder;
- (MOContextString)initWithContextStringMO:(id)o;
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
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"contextDimensions"];
    contextDimensions = v7->_contextDimensions;
    v7->_contextDimensions = v10;

    [coderCopy decodeDoubleForKey:@"accuracy"];
    v7->_accuracy = v12;
    [coderCopy decodeDoubleForKey:@"satisfaction"];
    v7->_satisfaction = v13;
    v7->_contentType = [coderCopy decodeIntegerForKey:@"contentType"];
    v7->_promptIndex = [coderCopy decodeIntegerForKey:@"promptIndex"];
    [coderCopy decodeDoubleForKey:@"totalScore"];
    v7->_totalScore = v14;
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
    return *(&off_1000B5028 + source - 1);
  }
}

- (id)describeSource
{
  source = [(MOContextString *)self source];

  return [MOContextString describeSource:source];
}

- (id)description
{
  stringIdentifier = [(MOContextString *)self stringIdentifier];
  textString = [(MOContextString *)self textString];
  describeSource = [(MOContextString *)self describeSource];
  contextDimensions = [(MOContextString *)self contextDimensions];
  contentType = [(MOContextString *)self contentType];
  promptIndex = [(MOContextString *)self promptIndex];
  [(MOContextString *)self totalScore];
  v10 = [NSString stringWithFormat:@"stringIdentifier, %@, string, %@, source, %@, contextDimensions, %@, contentType, %lu, promptIndex, %lu, totalScore, %f", stringIdentifier, textString, describeSource, contextDimensions, contentType, promptIndex, v9];

  return v10;
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

- (MOContextString)initWithContextStringMO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (oCopy)
  {
    stringIdentifier = [oCopy stringIdentifier];
    textString = [v5 textString];
    self = [(MOContextString *)self initWithIdentifier:stringIdentifier string:textString];

    -[MOContextString setSource:](self, "setSource:", [v5 source]);
    -[MOContextString setContentType:](self, "setContentType:", [v5 contentType]);
    -[MOContextString setPromptIndex:](self, "setPromptIndex:", [v5 promptIndex]);
    [v5 totalScore];
    [(MOContextString *)self setTotalScore:?];
    NSSelectorFromString(@"contextDimensions");
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_opt_new();
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      contextDimensions = [v5 contextDimensions];
      v10 = [contextDimensions countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(contextDimensions);
            }

            v14 = [[MOContextDimension alloc] initWithContextDimensionMO:*(*(&v18 + 1) + 8 * i)];
            [v8 addObject:v14];
          }

          v11 = [contextDimensions countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }

      v15 = [v8 copy];
      [(MOContextString *)self setContextDimensions:v15];
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end