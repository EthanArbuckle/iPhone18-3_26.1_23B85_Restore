@interface SiriContext
- (SiriContext)initWithCoder:(id)coder;
- (SiriContext)initWithContextOverride:(id)override;
- (SiriContext)initWithSpeechRequestOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriContext

- (SiriContext)initWithSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = SiriContext;
  v6 = [(SiriContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechRequestOptions, options);
  }

  return v7;
}

- (SiriContext)initWithContextOverride:(id)override
{
  overrideCopy = override;
  v8.receiver = self;
  v8.super_class = SiriContext;
  v5 = [(SiriContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SiriContext *)v5 setContextOverride:overrideCopy];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  speechRequestOptions = [(SiriContext *)self speechRequestOptions];
  v6 = [v3 stringWithFormat:@"<SiriContext contextOverride:%@ speechRequestOptions:%@>", contextOverride, speechRequestOptions];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SiriContext alloc];
  speechRequestOptions = [(SiriContext *)self speechRequestOptions];
  v6 = [(SiriContext *)v4 initWithSpeechRequestOptions:speechRequestOptions];

  contextOverride = [(SiriContext *)self contextOverride];
  [(SiriContext *)v6 setContextOverride:contextOverride];

  return v6;
}

- (SiriContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SiriContext;
  v5 = [(SiriContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechRequestOptions"];
    speechRequestOptions = v5->_speechRequestOptions;
    v5->_speechRequestOptions = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextOverride"];
    contextOverride = v5->_contextOverride;
    v5->_contextOverride = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  speechRequestOptions = [(SiriContext *)self speechRequestOptions];
  [coderCopy encodeObject:speechRequestOptions forKey:@"speechRequestOptions"];

  contextOverride = [(SiriContext *)self contextOverride];
  [coderCopy encodeObject:contextOverride forKey:@"contextOverride"];
}

@end