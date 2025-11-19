@interface SVXDeviceSetupContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXDeviceSetupContext)initWithCoder:(id)a3;
- (SVXDeviceSetupContext)initWithTimestamp:(unint64_t)a3 options:(id)a4 flowScene:(id)a5 beginDate:(id)a6 endDate:(id)a7;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXDeviceSetupContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  timestamp = self->_timestamp;
  v7 = a3;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [v7 encodeObject:v6 forKey:@"SVXDeviceSetupContext::timestamp"];

  [v7 encodeObject:self->_options forKey:@"SVXDeviceSetupContext::options"];
  [v7 encodeObject:self->_flowScene forKey:@"SVXDeviceSetupContext::flowScene"];
  [v7 encodeObject:self->_beginDate forKey:@"SVXDeviceSetupContext::beginDate"];
  [v7 encodeObject:self->_endDate forKey:@"SVXDeviceSetupContext::endDate"];
}

- (SVXDeviceSetupContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::timestamp"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::options"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::flowScene"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::beginDate"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::endDate"];

  v11 = [(SVXDeviceSetupContext *)self initWithTimestamp:v6 options:v7 flowScene:v8 beginDate:v9 endDate:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      timestamp = self->_timestamp;
      if (timestamp == [(SVXDeviceSetupContext *)v5 timestamp])
      {
        v7 = [(SVXDeviceSetupContext *)v5 options];
        options = self->_options;
        if (options == v7 || [(SVXDeviceSetupOptions *)options isEqual:v7])
        {
          v9 = [(SVXDeviceSetupContext *)v5 flowScene];
          flowScene = self->_flowScene;
          if (flowScene == v9 || [(SVXDeviceSetupFlowScene *)flowScene isEqual:v9])
          {
            v11 = [(SVXDeviceSetupContext *)v5 beginDate];
            beginDate = self->_beginDate;
            if (beginDate == v11 || [(NSDate *)beginDate isEqual:v11])
            {
              v13 = [(SVXDeviceSetupContext *)v5 endDate];
              endDate = self->_endDate;
              v15 = endDate == v13 || [(NSDate *)endDate isEqual:v13];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
  v4 = [v3 hash];
  v5 = [(SVXDeviceSetupOptions *)self->_options hash];
  v6 = v5 ^ [(SVXDeviceSetupFlowScene *)self->_flowScene hash];
  v7 = v6 ^ [(NSDate *)self->_beginDate hash]^ v4;
  v8 = [(NSDate *)self->_endDate hash];

  return v7 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXDeviceSetupContext;
  v5 = [(SVXDeviceSetupContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {timestamp = %llu, options = %@, flowScene = %@, beginDate = %@, endDate = %@}", v5, self->_timestamp, self->_options, self->_flowScene, self->_beginDate, self->_endDate];

  return v6;
}

- (SVXDeviceSetupContext)initWithTimestamp:(unint64_t)a3 options:(id)a4 flowScene:(id)a5 beginDate:(id)a6 endDate:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = SVXDeviceSetupContext;
  v16 = [(SVXDeviceSetupContext *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_timestamp = a3;
    v18 = [v12 copy];
    options = v17->_options;
    v17->_options = v18;

    v20 = [v13 copy];
    flowScene = v17->_flowScene;
    v17->_flowScene = v20;

    v22 = [v14 copy];
    beginDate = v17->_beginDate;
    v17->_beginDate = v22;

    v24 = [v15 copy];
    endDate = v17->_endDate;
    v17->_endDate = v24;
  }

  return v17;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXDeviceSetupContextMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXDeviceSetupContextMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXDeviceSetupContext *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXDeviceSetupContextMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXDeviceSetupContextMutation *)v4 generate];

  return v5;
}

@end