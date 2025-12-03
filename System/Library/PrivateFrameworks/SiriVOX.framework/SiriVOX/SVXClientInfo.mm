@interface SVXClientInfo
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SVXClientInfo)initWithCoder:(id)coder;
- (SVXClientInfo)initWithProcessIdentifier:(int)identifier processName:(id)name;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVXClientInfo

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  processIdentifier = self->_processIdentifier;
  coderCopy = coder;
  v6 = [v4 numberWithInt:processIdentifier];
  [coderCopy encodeObject:v6 forKey:@"SVXClientInfo::processIdentifier"];

  [coderCopy encodeObject:self->_processName forKey:@"SVXClientInfo::processName"];
}

- (SVXClientInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXClientInfo::processIdentifier"];
  intValue = [v5 intValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SVXClientInfo::processName"];

  v8 = [(SVXClientInfo *)self initWithProcessIdentifier:intValue processName:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      processIdentifier = self->_processIdentifier;
      if (processIdentifier == [(SVXClientInfo *)v5 processIdentifier])
      {
        processName = [(SVXClientInfo *)v5 processName];
        processName = self->_processName;
        v9 = processName == processName || [(NSString *)processName isEqual:processName];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_processIdentifier];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_processName hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXClientInfo;
  v5 = [(SVXClientInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {processIdentifier = %d, processName = %@}", v5, self->_processIdentifier, self->_processName];

  return v6;
}

- (SVXClientInfo)initWithProcessIdentifier:(int)identifier processName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SVXClientInfo;
  v7 = [(SVXClientInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_processIdentifier = identifier;
    v9 = [nameCopy copy];
    processName = v8->_processName;
    v8->_processName = v9;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SVXClientInfoMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SVXClientInfoMutation *)v5 generate];
  }

  else
  {
    generate = [(SVXClientInfo *)self copy];
  }

  return generate;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SVXClientInfoMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SVXClientInfoMutation *)v4 generate];

  return generate;
}

@end