@interface SiriContext
- (SiriContext)initWithCoder:(id)a3;
- (SiriContext)initWithContextOverride:(id)a3;
- (SiriContext)initWithSpeechRequestOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriContext

- (SiriContext)initWithSpeechRequestOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriContext;
  v6 = [(SiriContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_speechRequestOptions, a3);
  }

  return v7;
}

- (SiriContext)initWithContextOverride:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriContext;
  v5 = [(SiriContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SiriContext *)v5 setContextOverride:v4];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = [(SiriContext *)self speechRequestOptions];
  v6 = [v3 stringWithFormat:@"<SiriContext contextOverride:%@ speechRequestOptions:%@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SiriContext alloc];
  v5 = [(SiriContext *)self speechRequestOptions];
  v6 = [(SiriContext *)v4 initWithSpeechRequestOptions:v5];

  v7 = [(SiriContext *)self contextOverride];
  [(SiriContext *)v6 setContextOverride:v7];

  return v6;
}

- (SiriContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SiriContext;
  v5 = [(SiriContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechRequestOptions"];
    speechRequestOptions = v5->_speechRequestOptions;
    v5->_speechRequestOptions = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextOverride"];
    contextOverride = v5->_contextOverride;
    v5->_contextOverride = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SiriContext *)self speechRequestOptions];
  [v4 encodeObject:v5 forKey:@"speechRequestOptions"];

  v6 = [(SiriContext *)self contextOverride];
  [v4 encodeObject:v6 forKey:@"contextOverride"];
}

@end