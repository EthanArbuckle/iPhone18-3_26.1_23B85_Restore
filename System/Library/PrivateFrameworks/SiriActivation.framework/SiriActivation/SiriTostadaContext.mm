@interface SiriTostadaContext
- (SiriTostadaContext)initWithCoder:(id)a3;
- (SiriTostadaContext)initWithLaunchActions:(id)a3 identifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTostadaContext

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NSSet *)self->_launchActions description];
  v4 = [v2 stringWithFormat:@"<SiriTostadaContext launchActions:%@", v3];

  return v4;
}

- (SiriTostadaContext)initWithLaunchActions:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SiriTostadaContext;
  v9 = [(SiriTostadaContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_launchActions, a3);
    objc_storeStrong(&v10->_activationIdentifier, a4);
  }

  return v10;
}

- (SiriTostadaContext)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriTostadaContext;
  v5 = [(SiriContext *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"launchActions"];
    launchActions = v5->_launchActions;
    v5->_launchActions = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationIdentifier"];
    activationIdentifier = v5->_activationIdentifier;
    v5->_activationIdentifier = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SiriTostadaContext;
  v4 = a3;
  [(SiriContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_launchActions forKey:{@"launchActions", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_activationIdentifier forKey:@"activationIdentifier"];
}

@end