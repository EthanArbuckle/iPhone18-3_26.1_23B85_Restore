@interface SASPresentationConfiguration
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASPresentationConfiguration)initWithBuilder:(id)builder;
- (SASPresentationConfiguration)initWithCoder:(id)coder;
- (SASPresentationConfiguration)initWithPresentationIdentifier:(id)identifier sourceActiveOverridePreference:(id)preference desiresDismissalSignalsEvenWhenOff:(BOOL)off;
- (id)description;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SASPresentationConfiguration

- (SASPresentationConfiguration)initWithBuilder:(id)builder
{
  v4 = [SASPresentationConfiguration newWithBuilder:builder];

  return v4;
}

- (SASPresentationConfiguration)initWithPresentationIdentifier:(id)identifier sourceActiveOverridePreference:(id)preference desiresDismissalSignalsEvenWhenOff:(BOOL)off
{
  identifierCopy = identifier;
  preferenceCopy = preference;
  v16.receiver = self;
  v16.super_class = SASPresentationConfiguration;
  v10 = [(SASPresentationConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    presentationIdentifier = v10->_presentationIdentifier;
    v10->_presentationIdentifier = v11;

    v13 = [preferenceCopy copy];
    sourceActiveOverridePreference = v10->_sourceActiveOverridePreference;
    v10->_sourceActiveOverridePreference = v13;

    v10->_desiresDismissalSignalsEvenWhenOff = off;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      desiresDismissalSignalsEvenWhenOff = self->_desiresDismissalSignalsEvenWhenOff;
      if (desiresDismissalSignalsEvenWhenOff == [(SASPresentationConfiguration *)v5 desiresDismissalSignalsEvenWhenOff])
      {
        presentationIdentifier = [(SASPresentationConfiguration *)v5 presentationIdentifier];
        presentationIdentifier = self->_presentationIdentifier;
        if (presentationIdentifier == presentationIdentifier || [(NSString *)presentationIdentifier isEqual:presentationIdentifier])
        {
          sourceActiveOverridePreference = [(SASPresentationConfiguration *)v5 sourceActiveOverridePreference];
          sourceActiveOverridePreference = self->_sourceActiveOverridePreference;
          v11 = sourceActiveOverridePreference == sourceActiveOverridePreference || [(NSArray *)sourceActiveOverridePreference isEqual:sourceActiveOverridePreference];
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

- (SASPresentationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationConfiguration::presentationIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SASPresentationConfiguration::sourceActiveOverridePreference"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASPresentationConfiguration::desiresDismissalSignalsEvenWhenOff"];

  bOOLValue = [v10 BOOLValue];
  v12 = [(SASPresentationConfiguration *)self initWithPresentationIdentifier:v5 sourceActiveOverridePreference:v9 desiresDismissalSignalsEvenWhenOff:bOOLValue];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  presentationIdentifier = self->_presentationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:presentationIdentifier forKey:@"SASPresentationConfiguration::presentationIdentifier"];
  [coderCopy encodeObject:self->_sourceActiveOverridePreference forKey:@"SASPresentationConfiguration::sourceActiveOverridePreference"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_desiresDismissalSignalsEvenWhenOff];
  [coderCopy encodeObject:v6 forKey:@"SASPresentationConfiguration::desiresDismissalSignalsEvenWhenOff"];
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASPresentationConfigurationMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASPresentationConfigurationMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASPresentationConfigurationMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASPresentationConfigurationMutation *)v5 generate];
  }

  else
  {
    generate = [(SASPresentationConfiguration *)self copy];
  }

  return generate;
}

@end