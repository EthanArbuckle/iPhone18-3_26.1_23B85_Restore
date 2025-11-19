@interface TransparencyIDSRegistrationRequest
- (TransparencyIDSRegistrationRequest)initWithCoder:(id)a3;
- (TransparencyIDSRegistrationRequest)initWithSignatureRequests:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransparencyIDSRegistrationRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(TransparencyIDSRegistrationRequest *)self initialTimeout];
  [v4 encodeDouble:@"initialTimeout" forKey:?];
  [v4 encodeBool:-[TransparencyIDSRegistrationRequest dontWaitForKeySigning](self forKey:{"dontWaitForKeySigning"), @"dontWaitForKeySigning"}];
  v5 = [(TransparencyIDSRegistrationRequest *)self requests];
  [v4 encodeObject:v5 forKey:@"requests"];

  v6 = [(TransparencyIDSRegistrationRequest *)self traceUUID];
  [v4 encodeObject:v6 forKey:@"traceUUID"];
}

- (TransparencyIDSRegistrationRequest)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 decodeDoubleForKey:@"initialTimeout"];
  v6 = v5;
  v7 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:3];
  v9 = [v7 setWithArray:{v8, v16, v17}];

  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"requests"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11 = [(TransparencyIDSRegistrationRequest *)self initWithSignatureRequests:v10], (self = v11) != 0))
  {
    [(TransparencyIDSRegistrationRequest *)v11 setInitialTimeout:v6];
    -[TransparencyIDSRegistrationRequest setDontWaitForKeySigning:](self, "setDontWaitForKeySigning:", [v4 decodeBoolForKey:@"dontWaitForKeySigning"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
    [(TransparencyIDSRegistrationRequest *)self setTraceUUID:v12];

    self = self;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (TransparencyIDSRegistrationRequest)initWithSignatureRequests:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TransparencyIDSRegistrationRequest;
  v5 = [(TransparencyIDSRegistrationRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TransparencyIDSRegistrationRequest *)v5 setRequests:v4];
    [(TransparencyIDSRegistrationRequest *)v6 setInitialTimeout:30.0];
    v7 = v6;
  }

  return v6;
}

@end