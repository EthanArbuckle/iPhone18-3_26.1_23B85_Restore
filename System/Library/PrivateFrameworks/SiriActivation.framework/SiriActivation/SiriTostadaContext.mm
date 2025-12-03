@interface SiriTostadaContext
- (SiriTostadaContext)initWithCoder:(id)coder;
- (SiriTostadaContext)initWithLaunchActions:(id)actions identifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTostadaContext

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NSSet *)self->_launchActions description];
  v4 = [v2 stringWithFormat:@"<SiriTostadaContext launchActions:%@", v3];

  return v4;
}

- (SiriTostadaContext)initWithLaunchActions:(id)actions identifier:(id)identifier
{
  actionsCopy = actions;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SiriTostadaContext;
  v9 = [(SiriTostadaContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_launchActions, actions);
    objc_storeStrong(&v10->_activationIdentifier, identifier);
  }

  return v10;
}

- (SiriTostadaContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SiriTostadaContext;
  v5 = [(SiriContext *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"launchActions"];
    launchActions = v5->_launchActions;
    v5->_launchActions = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activationIdentifier"];
    activationIdentifier = v5->_activationIdentifier;
    v5->_activationIdentifier = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SiriTostadaContext;
  coderCopy = coder;
  [(SiriContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_launchActions forKey:{@"launchActions", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_activationIdentifier forKey:@"activationIdentifier"];
}

@end