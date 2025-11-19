@interface SiriTestingContext
- (BOOL)containsAudioInput;
- (BOOL)containsRecognitionStrings;
- (SiriTestingContext)initWithAudioInput:(id)a3 siriContextOverride:(id)a4;
- (SiriTestingContext)initWithCoder:(id)a3;
- (SiriTestingContext)initWithPPTContext:(id)a3 siriContextOverride:(id)a4;
- (SiriTestingContext)initWithRecognitionStrings:(id)a3 siriContextOverride:(id)a4;
- (SiriTestingContext)initWithRequestInfo:(id)a3 recognitionStrings:(id)a4 siriContextOverride:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTestingContext

- (SiriTestingContext)initWithPPTContext:(id)a3 siriContextOverride:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SiriTestingContext;
  v8 = [(SiriContext *)&v11 initWithContextOverride:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_testingContext, a3);
  }

  return v9;
}

- (SiriTestingContext)initWithRecognitionStrings:(id)a3 siriContextOverride:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SiriTestingContext;
  v7 = [(SiriContext *)&v12 initWithContextOverride:a4];
  if (v7)
  {
    v13 = @"SiriTestingContextRecognitionStringKey";
    v14[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    testingContext = v7->_testingContext;
    v7->_testingContext = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (SiriTestingContext)initWithAudioInput:(id)a3 siriContextOverride:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SiriTestingContext;
  v7 = [(SiriContext *)&v12 initWithContextOverride:a4];
  if (v7)
  {
    v13 = @"SiriTestingContextAudioInputKey";
    v14[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    testingContext = v7->_testingContext;
    v7->_testingContext = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (SiriTestingContext)initWithRequestInfo:(id)a3 recognitionStrings:(id)a4 siriContextOverride:(id)a5
{
  v8 = a3;
  v9 = [(SiriTestingContext *)self initWithRecognitionStrings:a4 siriContextOverride:a5];
  testingRequestInfo = v9->_testingRequestInfo;
  v9->_testingRequestInfo = v8;

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
  v4 = [(SiriContext *)self contextOverride];
  v5 = [(SiriTestingContext *)self testingContext];
  v6 = [v3 stringWithFormat:@"<SiriTestingContext contextOverride:%@, testingContext:%@>", v4, v5];

  return v6;
}

- (SiriTestingContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriTestingContext;
  v5 = [(SiriContext *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"kTestingContextCodingKey"];
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

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriTestingContext;
  v4 = a3;
  [(SiriContext *)&v6 encodeWithCoder:v4];
  v5 = [(SiriTestingContext *)self testingContext:v6.receiver];
  [v4 encodeObject:v5 forKey:@"kTestingContextCodingKey"];
}

@end