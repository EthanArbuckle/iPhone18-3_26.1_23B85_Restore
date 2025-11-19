@interface SSDownloadPolicyApplicationState
- (BOOL)isEqual:(id)a3;
- (SSDownloadPolicyApplicationState)initWithApplicationIdentifier:(id)a3;
- (SSDownloadPolicyApplicationState)initWithCoder:(id)a3;
- (SSDownloadPolicyApplicationState)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)addApplicationState:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setNotRunningApplicationStates;
@end

@implementation SSDownloadPolicyApplicationState

- (SSDownloadPolicyApplicationState)initWithApplicationIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = SSDownloadPolicyApplicationState;
  v4 = [(SSDownloadPolicyApplicationState *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(SSDownloadPolicyApplicationState *)v4 setApplicationIdentifier:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadPolicyApplicationState;
  [(SSDownloadPolicyApplicationState *)&v3 dealloc];
}

- (void)addApplicationState:(int64_t)a3
{
  applicationStates = self->_applicationStates;
  if (applicationStates)
  {
    v7 = [(NSSet *)applicationStates mutableCopy];
    [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];

    self->_applicationStates = [v7 copy];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    self->_applicationStates = [v6 initWithObjects:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3), 0}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SSDownloadPolicyApplicationState *)self applicationIdentifier];
    if (v7 == [a3 applicationIdentifier] || (v6 = -[NSString isEqualToString:](-[SSDownloadPolicyApplicationState applicationIdentifier](self, "applicationIdentifier"), "isEqualToString:", objc_msgSend(a3, "applicationIdentifier"))))
    {
      v8 = [(SSDownloadPolicyApplicationState *)self applicationStates];
      if (v8 == [a3 applicationStates])
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        v9 = [(SSDownloadPolicyApplicationState *)self applicationStates];
        v10 = [a3 applicationStates];

        LOBYTE(v6) = [(NSSet *)v9 isEqualToSet:v10];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_applicationIdentifier forKey:@"appid"];
  v5 = [(NSSet *)self->_applicationStates allObjects];

  [a3 encodeObject:v5 forKey:@"appsts"];
}

- (SSDownloadPolicyApplicationState)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = SSDownloadPolicyApplicationState;
  v4 = [(SSDownloadPolicyApplicationState *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"appsts"}];
    v4->_applicationIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"appid"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  v5[2] = [(NSSet *)self->_applicationStates copyWithZone:a3];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_applicationIdentifier);
  SSXPCDictionarySetCFObject(v3, "1", [(NSSet *)self->_applicationStates allObjects]);
  return v3;
}

- (SSDownloadPolicyApplicationState)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v9.receiver = self;
    v9.super_class = SSDownloadPolicyApplicationState;
    v5 = [(SSDownloadPolicyApplicationState *)&v9 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
      objc_opt_class();
      v5->_applicationIdentifier = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
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