@interface SVXDeviceSetupFlow
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeviceSetupFlow)initWithCoder:(id)a3;
- (SVXDeviceSetupFlow)initWithIdentifier:(id)a3 scenes:(id)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeviceSetupFlow

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"SVXDeviceSetupFlow::identifier"];
  [v5 encodeObject:self->_scenes forKey:@"SVXDeviceSetupFlow::scenes"];
}

- (SVXDeviceSetupFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupFlow::identifier"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SVXDeviceSetupFlow::scenes"];

  v10 = [(SVXDeviceSetupFlow *)self initWithIdentifier:v5 scenes:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SVXDeviceSetupFlow *)v5 identifier];
      identifier = self->_identifier;
      if (identifier == v6 || [(NSString *)identifier isEqual:v6])
      {
        v8 = [(SVXDeviceSetupFlow *)v5 scenes];
        scenes = self->_scenes;
        v10 = scenes == v8 || [(NSArray *)scenes isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXDeviceSetupFlow;
  v5 = [(SVXDeviceSetupFlow *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, scenes = %@}", v5, self->_identifier, self->_scenes];

  return v6;
}

- (SVXDeviceSetupFlow)initWithIdentifier:(id)a3 scenes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SVXDeviceSetupFlow;
  v8 = [(SVXDeviceSetupFlow *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    scenes = v8->_scenes;
    v8->_scenes = v11;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeviceSetupFlowMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeviceSetupFlowMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeviceSetupFlow *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeviceSetupFlowMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeviceSetupFlowMutation *)v4 generate];

  return v5;
}

@end