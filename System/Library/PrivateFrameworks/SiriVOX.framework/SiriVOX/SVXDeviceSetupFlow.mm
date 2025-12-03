@interface SVXDeviceSetupFlow
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeviceSetupFlow)initWithCoder:(id)coder;
- (SVXDeviceSetupFlow)initWithIdentifier:(id)identifier scenes:(id)scenes;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeviceSetupFlow

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"SVXDeviceSetupFlow::identifier"];
  [coderCopy encodeObject:self->_scenes forKey:@"SVXDeviceSetupFlow::scenes"];
}

- (SVXDeviceSetupFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlow::identifier"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SVXDeviceSetupFlow::scenes"];

  v10 = [(SVXDeviceSetupFlow *)self initWithIdentifier:v5 scenes:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SVXDeviceSetupFlow *)v5 identifier];
      identifier = self->_identifier;
      if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
      {
        scenes = [(SVXDeviceSetupFlow *)v5 scenes];
        scenes = self->_scenes;
        v10 = scenes == scenes || [(NSArray *)scenes isEqual:scenes];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXDeviceSetupFlow;
  v5 = [(SVXDeviceSetupFlow *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, scenes = %@}", v5, self->_identifier, self->_scenes];

  return v6;
}

- (SVXDeviceSetupFlow)initWithIdentifier:(id)identifier scenes:(id)scenes
{
  identifierCopy = identifier;
  scenesCopy = scenes;
  v14.receiver = self;
  v14.super_class = SVXDeviceSetupFlow;
  v8 = [(SVXDeviceSetupFlow *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [scenesCopy copy];
    scenes = v8->_scenes;
    v8->_scenes = v11;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeviceSetupFlowMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeviceSetupFlowMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeviceSetupFlow *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeviceSetupFlowMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeviceSetupFlowMutation *)v4 generate];

  return generate;
}

@end