@interface SSDownloadPolicyApplicationState
- (BOOL)isEqual:(id)equal;
- (SSDownloadPolicyApplicationState)initWithApplicationIdentifier:(id)identifier;
- (SSDownloadPolicyApplicationState)initWithCoder:(id)coder;
- (SSDownloadPolicyApplicationState)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)addApplicationState:(int64_t)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setNotRunningApplicationStates;
@end

@implementation SSDownloadPolicyApplicationState

- (SSDownloadPolicyApplicationState)initWithApplicationIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = SSDownloadPolicyApplicationState;
  v4 = [(SSDownloadPolicyApplicationState *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SSDownloadPolicyApplicationState *)v4 setApplicationIdentifier:identifier];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadPolicyApplicationState;
  [(SSDownloadPolicyApplicationState *)&v3 dealloc];
}

- (void)addApplicationState:(int64_t)state
{
  applicationStates = self->_applicationStates;
  if (applicationStates)
  {
    v7 = [(NSSet *)applicationStates mutableCopy];
    [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", state)}];

    self->_applicationStates = [v7 copy];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    self->_applicationStates = [v6 initWithObjects:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", state), 0}];
  }
}

- (void)setNotRunningApplicationStates
{
  v3 = [(NSSet *)self->_applicationStates mutableCopy];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v6 = v3;
  for (i = 0; i != 5; ++i)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:dword_1D4B38FC8[i]];
    [v6 addObject:v5];
  }

  self->_applicationStates = [v6 copy];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    applicationIdentifier = [(SSDownloadPolicyApplicationState *)self applicationIdentifier];
    if (applicationIdentifier == [equal applicationIdentifier] || (v6 = -[NSString isEqualToString:](-[SSDownloadPolicyApplicationState applicationIdentifier](self, "applicationIdentifier"), "isEqualToString:", objc_msgSend(equal, "applicationIdentifier"))))
    {
      applicationStates = [(SSDownloadPolicyApplicationState *)self applicationStates];
      if (applicationStates == [equal applicationStates])
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        applicationStates2 = [(SSDownloadPolicyApplicationState *)self applicationStates];
        applicationStates3 = [equal applicationStates];

        LOBYTE(v6) = [(NSSet *)applicationStates2 isEqualToSet:applicationStates3];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_applicationIdentifier forKey:@"appid"];
  allObjects = [(NSSet *)self->_applicationStates allObjects];

  [coder encodeObject:allObjects forKey:@"appsts"];
}

- (SSDownloadPolicyApplicationState)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SSDownloadPolicyApplicationState;
  v4 = [(SSDownloadPolicyApplicationState *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"appsts"}];
    v4->_applicationIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"appid"];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
    }

    else
    {
      v8 = 0;
    }

    v4->_applicationStates = v8;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  v5[2] = [(NSSet *)self->_applicationStates copyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_applicationIdentifier);
  SSXPCDictionarySetCFObject(v3, "1", [(NSSet *)self->_applicationStates allObjects]);
  return v3;
}

- (SSDownloadPolicyApplicationState)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v9.receiver = self;
    v9.super_class = SSDownloadPolicyApplicationState;
    v5 = [(SSDownloadPolicyApplicationState *)&v9 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
      objc_opt_class();
      v5->_applicationIdentifier = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
      }

      else
      {
        v8 = 0;
      }

      v5->_applicationStates = v8;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end