@interface AutocorrectionTest
+ (id)testWithInput:(id)input;
+ (id)testWithInput:(id)input expectedOutput:(id)output sourceMetadata:(id)metadata withTouches:(id)touches andCorpusId:(id)id;
+ (id)testWithTouches:(id)touches expectedOutput:(id)output;
- (AutocorrectionTest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AutocorrectionTest

- (void)encodeWithCoder:(id)coder
{
  input = self->_input;
  coderCopy = coder;
  [coderCopy encodeObject:input forKey:@"ATInput"];
  [coderCopy encodeObject:self->_expectedOutput forKey:@"ATExpectedOutput"];
}

- (AutocorrectionTest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AutocorrectionTest;
  v5 = [(AutocorrectionTest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ATInput"];
    input = v5->_input;
    v5->_input = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ATExpectedOutput"];
    expectedOutput = v5->_expectedOutput;
    v5->_expectedOutput = v8;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"input: %@\n", self->_input];
  if (self->_touches)
  {
    [string appendFormat:@"touch: %@", self->_touches];
  }

  v4 = [(NSArray *)self->_expectedOutput componentsJoinedByString:@" "];
  v5 = [v4 isEqualToString:self->_input];

  if ((v5 & 1) == 0)
  {
    [string appendFormat:@"; expected: %@", self->_expectedOutput];
  }

  return string;
}

+ (id)testWithInput:(id)input
{
  inputCopy = input;
  v5 = TITestTyperTokensForString(inputCopy, 0);
  v6 = [self testWithInput:inputCopy expectedOutput:v5];

  return v6;
}

+ (id)testWithTouches:(id)touches expectedOutput:(id)output
{
  outputCopy = output;
  touchesCopy = touches;
  v8 = [outputCopy componentsJoinedByString:@" "];
  v9 = [self testWithInput:v8 expectedOutput:outputCopy sourceMetadata:0 withTouches:touchesCopy andCorpusId:0];

  return v9;
}

+ (id)testWithInput:(id)input expectedOutput:(id)output sourceMetadata:(id)metadata withTouches:(id)touches andCorpusId:(id)id
{
  inputCopy = input;
  outputCopy = output;
  metadataCopy = metadata;
  touchesCopy = touches;
  idCopy = id;
  v17 = objc_alloc_init(AutocorrectionTest);
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_input, input);
    v19 = [outputCopy copy];
    expectedOutput = v18->_expectedOutput;
    v18->_expectedOutput = v19;

    objc_storeStrong(&v18->_sourceMetadata, metadata);
    objc_storeStrong(&v18->_touches, touches);
    objc_storeStrong(&v18->_corpusId, id);
  }

  return v18;
}

@end