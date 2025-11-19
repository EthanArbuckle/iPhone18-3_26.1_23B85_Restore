@interface AutocorrectionTest
+ (id)testWithInput:(id)a3;
+ (id)testWithInput:(id)a3 expectedOutput:(id)a4 sourceMetadata:(id)a5 withTouches:(id)a6 andCorpusId:(id)a7;
+ (id)testWithTouches:(id)a3 expectedOutput:(id)a4;
- (AutocorrectionTest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AutocorrectionTest

- (void)encodeWithCoder:(id)a3
{
  input = self->_input;
  v5 = a3;
  [v5 encodeObject:input forKey:@"ATInput"];
  [v5 encodeObject:self->_expectedOutput forKey:@"ATExpectedOutput"];
}

- (AutocorrectionTest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AutocorrectionTest;
  v5 = [(AutocorrectionTest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ATInput"];
    input = v5->_input;
    v5->_input = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ATExpectedOutput"];
    expectedOutput = v5->_expectedOutput;
    v5->_expectedOutput = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"input: %@\n", self->_input];
  if (self->_touches)
  {
    [v3 appendFormat:@"touch: %@", self->_touches];
  }

  v4 = [(NSArray *)self->_expectedOutput componentsJoinedByString:@" "];
  v5 = [v4 isEqualToString:self->_input];

  if ((v5 & 1) == 0)
  {
    [v3 appendFormat:@"; expected: %@", self->_expectedOutput];
  }

  return v3;
}

+ (id)testWithInput:(id)a3
{
  v4 = a3;
  v5 = TITestTyperTokensForString(v4, 0);
  v6 = [a1 testWithInput:v4 expectedOutput:v5];

  return v6;
}

+ (id)testWithTouches:(id)a3 expectedOutput:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 componentsJoinedByString:@" "];
  v9 = [a1 testWithInput:v8 expectedOutput:v6 sourceMetadata:0 withTouches:v7 andCorpusId:0];

  return v9;
}

+ (id)testWithInput:(id)a3 expectedOutput:(id)a4 sourceMetadata:(id)a5 withTouches:(id)a6 andCorpusId:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(AutocorrectionTest);
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_input, a3);
    v19 = [v13 copy];
    expectedOutput = v18->_expectedOutput;
    v18->_expectedOutput = v19;

    objc_storeStrong(&v18->_sourceMetadata, a5);
    objc_storeStrong(&v18->_touches, a6);
    objc_storeStrong(&v18->_corpusId, a7);
  }

  return v18;
}

@end