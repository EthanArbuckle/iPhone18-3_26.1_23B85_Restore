@interface SASPresentationConfiguration
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASPresentationConfiguration)initWithBuilder:(id)a3;
- (SASPresentationConfiguration)initWithCoder:(id)a3;
- (SASPresentationConfiguration)initWithPresentationIdentifier:(id)a3 sourceActiveOverridePreference:(id)a4 desiresDismissalSignalsEvenWhenOff:(BOOL)a5;
- (id)description;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SASPresentationConfiguration

- (SASPresentationConfiguration)initWithBuilder:(id)a3
{
  v4 = [SASPresentationConfiguration newWithBuilder:a3];

  return v4;
}

- (SASPresentationConfiguration)initWithPresentationIdentifier:(id)a3 sourceActiveOverridePreference:(id)a4 desiresDismissalSignalsEvenWhenOff:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = SASPresentationConfiguration;
  v10 = [(SASPresentationConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    presentationIdentifier = v10->_presentationIdentifier;
    v10->_presentationIdentifier = v11;

    v13 = [v9 copy];
    sourceActiveOverridePreference = v10->_sourceActiveOverridePreference;
    v10->_sourceActiveOverridePreference = v13;

    v10->_desiresDismissalSignalsEvenWhenOff = a5;
  }

  return v10;
}

- (id)description
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19.receiver = self;
  v19.super_class = SASPresentationConfiguration;
  v4 = [(SASPresentationConfiguration *)&v19 description];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(NSString *)self->_presentationIdentifier description];
  v7 = [v5 initWithFormat:@"presentationIdentifier = %@", v6];
  v20[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [(NSArray *)self->_sourceActiveOverridePreference description];
  v10 = [v8 initWithFormat:@"sourceActiveOverridePreference = %@", v9];
  v20[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_desiresDismissalSignalsEvenWhenOff)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v11 initWithFormat:@"desiresDismissalSignalsEvenWhenOff = %@", v12];
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v15 = [v14 componentsJoinedByString:{@", "}];
  v16 = [v3 initWithFormat:@"%@ {%@}", v4, v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_presentationIdentifier hash];
  v4 = [(NSArray *)self->_sourceActiveOverridePreference hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_desiresDismissalSignalsEvenWhenOff];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      desiresDismissalSignalsEvenWhenOff = self->_desiresDismissalSignalsEvenWhenOff;
      if (desiresDismissalSignalsEvenWhenOff == [(SASPresentationConfiguration *)v5 desiresDismissalSignalsEvenWhenOff])
      {
        v7 = [(SASPresentationConfiguration *)v5 presentationIdentifier];
        presentationIdentifier = self->_presentationIdentifier;
        if (presentationIdentifier == v7 || [(NSString *)presentationIdentifier isEqual:v7])
        {
          v9 = [(SASPresentationConfiguration *)v5 sourceActiveOverridePreference];
          sourceActiveOverridePreference = self->_sourceActiveOverridePreference;
          v11 = sourceActiveOverridePreference == v9 || [(NSArray *)sourceActiveOverridePreference isEqual:v9];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (SASPresentationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationConfiguration::presentationIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SASPresentationConfiguration::sourceActiveOverridePreference"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationConfiguration::desiresDismissalSignalsEvenWhenOff"];

  v11 = [v10 BOOLValue];
  v12 = [(SASPresentationConfiguration *)self initWithPresentationIdentifier:v5 sourceActiveOverridePreference:v9 desiresDismissalSignalsEvenWhenOff:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  presentationIdentifier = self->_presentationIdentifier;
  v5 = a3;
  [v5 encodeObject:presentationIdentifier forKey:@"SASPresentationConfiguration::presentationIdentifier"];
  [v5 encodeObject:self->_sourceActiveOverridePreference forKey:@"SASPresentationConfiguration::sourceActiveOverridePreference"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_desiresDismissalSignalsEvenWhenOff];
  [v5 encodeObject:v6 forKey:@"SASPresentationConfiguration::desiresDismissalSignalsEvenWhenOff"];
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASPresentationConfigurationMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASPresentationConfigurationMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASPresentationConfigurationMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASPresentationConfigurationMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASPresentationConfiguration *)self copy];
  }

  return v6;
}

@end