@interface SiriTestingContext
- (BOOL)containsAudioInput;
- (BOOL)containsRecognitionStrings;
- (SiriTestingContext)initWithAudioInput:(id)input siriContextOverride:(id)override;
- (SiriTestingContext)initWithCoder:(id)coder;
- (SiriTestingContext)initWithPPTContext:(id)context siriContextOverride:(id)override;
- (SiriTestingContext)initWithRecognitionStrings:(id)strings siriContextOverride:(id)override;
- (SiriTestingContext)initWithRequestInfo:(id)info recognitionStrings:(id)strings siriContextOverride:(id)override;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTestingContext

- (SiriTestingContext)initWithPPTContext:(id)context siriContextOverride:(id)override
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SiriTestingContext;
  v8 = [(SiriContext *)&v11 initWithContextOverride:override];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_testingContext, context);
  }

  return v9;
}

- (SiriTestingContext)initWithRecognitionStrings:(id)strings siriContextOverride:(id)override
{
  v14[1] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v12.receiver = self;
  v12.super_class = SiriTestingContext;
  v7 = [(SiriContext *)&v12 initWithContextOverride:override];
  if (v7)
  {
    v13 = @"SiriTestingContextRecognitionStringKey";
    v14[0] = stringsCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    testingContext = v7->_testingContext;
    v7->_testingContext = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (SiriTestingContext)initWithAudioInput:(id)input siriContextOverride:(id)override
{
  v14[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  v12.receiver = self;
  v12.super_class = SiriTestingContext;
  v7 = [(SiriContext *)&v12 initWithContextOverride:override];
  if (v7)
  {
    v13 = @"SiriTestingContextAudioInputKey";
    v14[0] = inputCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    testingContext = v7->_testingContext;
    v7->_testingContext = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (SiriTestingContext)initWithRequestInfo:(id)info recognitionStrings:(id)strings siriContextOverride:(id)override
{
  infoCopy = info;
  v9 = [(SiriTestingContext *)self initWithRecognitionStrings:strings siriContextOverride:override];
  testingRequestInfo = v9->_testingRequestInfo;
  v9->_testingRequestInfo = infoCopy;

  return v9;
}

- (BOOL)containsRecognitionStrings
{
  v2 = [(NSDictionary *)self->_testingContext objectForKeyedSubscript:@"SiriTestingContextRecognitionStringKey"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)containsAudioInput
{
  v2 = [(NSDictionary *)self->_testingContext objectForKeyedSubscript:@"SiriTestingContextAudioInputKey"];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  testingContext = [(SiriTestingContext *)self testingContext];
  v6 = [v3 stringWithFormat:@"<SiriTestingContext contextOverride:%@, testingContext:%@>", contextOverride, testingContext];

  return v6;
}

- (SiriTestingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SiriTestingContext;
  v5 = [(SiriContext *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"kTestingContextCodingKey"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v5->_testingContext, v12);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SiriTestingContext;
  coderCopy = coder;
  [(SiriContext *)&v6 encodeWithCoder:coderCopy];
  v5 = [(SiriTestingContext *)self testingContext:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kTestingContextCodingKey"];
}

@end