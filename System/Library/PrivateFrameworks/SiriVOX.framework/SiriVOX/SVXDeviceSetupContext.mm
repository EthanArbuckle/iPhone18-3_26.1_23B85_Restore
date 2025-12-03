@interface SVXDeviceSetupContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXDeviceSetupContext)initWithCoder:(id)coder;
- (SVXDeviceSetupContext)initWithTimestamp:(unint64_t)timestamp options:(id)options flowScene:(id)scene beginDate:(id)date endDate:(id)endDate;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXDeviceSetupContext

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  timestamp = self->_timestamp;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedLongLong:timestamp];
  [coderCopy encodeObject:v6 forKey:@"SVXDeviceSetupContext::timestamp"];

  [coderCopy encodeObject:self->_options forKey:@"SVXDeviceSetupContext::options"];
  [coderCopy encodeObject:self->_flowScene forKey:@"SVXDeviceSetupContext::flowScene"];
  [coderCopy encodeObject:self->_beginDate forKey:@"SVXDeviceSetupContext::beginDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"SVXDeviceSetupContext::endDate"];
}

- (SVXDeviceSetupContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::timestamp"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::options"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::flowScene"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::beginDate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXDeviceSetupContext::endDate"];

  v11 = [(SVXDeviceSetupContext *)self initWithTimestamp:unsignedLongLongValue options:v7 flowScene:v8 beginDate:v9 endDate:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timestamp = self->_timestamp;
      if (timestamp == [(SVXDeviceSetupContext *)v5 timestamp])
      {
        options = [(SVXDeviceSetupContext *)v5 options];
        options = self->_options;
        if (options == options || [(SVXDeviceSetupOptions *)options isEqual:options])
        {
          flowScene = [(SVXDeviceSetupContext *)v5 flowScene];
          flowScene = self->_flowScene;
          if (flowScene == flowScene || [(SVXDeviceSetupFlowScene *)flowScene isEqual:flowScene])
          {
            beginDate = [(SVXDeviceSetupContext *)v5 beginDate];
            beginDate = self->_beginDate;
            if (beginDate == beginDate || [(NSDate *)beginDate isEqual:beginDate])
            {
              endDate = [(SVXDeviceSetupContext *)v5 endDate];
              endDate = self->_endDate;
              v15 = endDate == endDate || [(NSDate *)endDate isEqual:endDate];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXDeviceSetupContext;
  v5 = [(SVXDeviceSetupContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {timestamp = %llu, options = %@, flowScene = %@, beginDate = %@, endDate = %@}", v5, self->_timestamp, self->_options, self->_flowScene, self->_beginDate, self->_endDate];

  return v6;
}

- (SVXDeviceSetupContext)initWithTimestamp:(unint64_t)timestamp options:(id)options flowScene:(id)scene beginDate:(id)date endDate:(id)endDate
{
  optionsCopy = options;
  sceneCopy = scene;
  dateCopy = date;
  endDateCopy = endDate;
  v27.receiver = self;
  v27.super_class = SVXDeviceSetupContext;
  v16 = [(SVXDeviceSetupContext *)&v27 init];
  v17 = v16;
  if (v16)
  {
    v16->_timestamp = timestamp;
    v18 = [optionsCopy copy];
    options = v17->_options;
    v17->_options = v18;

    v20 = [sceneCopy copy];
    flowScene = v17->_flowScene;
    v17->_flowScene = v20;

    v22 = [dateCopy copy];
    beginDate = v17->_beginDate;
    v17->_beginDate = v22;

    v24 = [endDateCopy copy];
    endDate = v17->_endDate;
    v17->_endDate = v24;
  }

  return v17;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXDeviceSetupContextMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXDeviceSetupContextMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXDeviceSetupContext *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXDeviceSetupContextMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXDeviceSetupContextMutation *)v4 generate];

  return generate;
}

@end