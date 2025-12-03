@interface TransparencyIDSRegistrationRequest
- (TransparencyIDSRegistrationRequest)initWithCoder:(id)coder;
- (TransparencyIDSRegistrationRequest)initWithSignatureRequests:(id)requests;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransparencyIDSRegistrationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(TransparencyIDSRegistrationRequest *)self initialTimeout];
  [coderCopy encodeDouble:@"initialTimeout" forKey:?];
  [coderCopy encodeBool:-[TransparencyIDSRegistrationRequest dontWaitForKeySigning](self forKey:{"dontWaitForKeySigning"), @"dontWaitForKeySigning"}];
  requests = [(TransparencyIDSRegistrationRequest *)self requests];
  [coderCopy encodeObject:requests forKey:@"requests"];

  traceUUID = [(TransparencyIDSRegistrationRequest *)self traceUUID];
  [coderCopy encodeObject:traceUUID forKey:@"traceUUID"];
}

- (TransparencyIDSRegistrationRequest)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"initialTimeout"];
  v6 = v5;
  v7 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:3];
  v9 = [v7 setWithArray:{v8, v16, v17}];

  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"requests"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v11 = [(TransparencyIDSRegistrationRequest *)self initWithSignatureRequests:v10], (self = v11) != 0))
  {
    [(TransparencyIDSRegistrationRequest *)v11 setInitialTimeout:v6];
    -[TransparencyIDSRegistrationRequest setDontWaitForKeySigning:](self, "setDontWaitForKeySigning:", [coderCopy decodeBoolForKey:@"dontWaitForKeySigning"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceUUID"];
    [(TransparencyIDSRegistrationRequest *)self setTraceUUID:v12];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (TransparencyIDSRegistrationRequest)initWithSignatureRequests:(id)requests
{
  requestsCopy = requests;
  v9.receiver = self;
  v9.super_class = TransparencyIDSRegistrationRequest;
  v5 = [(TransparencyIDSRegistrationRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TransparencyIDSRegistrationRequest *)v5 setRequests:requestsCopy];
    [(TransparencyIDSRegistrationRequest *)v6 setInitialTimeout:30.0];
    v7 = v6;
  }

  return v6;
}

@end