@interface SVXClientInfo
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SVXClientInfo)initWithCoder:(id)a3;
- (SVXClientInfo)initWithProcessIdentifier:(int)a3 processName:(id)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVXClientInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  processIdentifier = self->_processIdentifier;
  v7 = a3;
  v6 = [v4 numberWithInt:processIdentifier];
  [v7 encodeObject:v6 forKey:@"SVXClientInfo::processIdentifier"];

  [v7 encodeObject:self->_processName forKey:@"SVXClientInfo::processName"];
}

- (SVXClientInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXClientInfo::processIdentifier"];
  v6 = [v5 intValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SVXClientInfo::processName"];

  v8 = [(SVXClientInfo *)self initWithProcessIdentifier:v6 processName:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      processIdentifier = self->_processIdentifier;
      if (processIdentifier == [(SVXClientInfo *)v5 processIdentifier])
      {
        v7 = [(SVXClientInfo *)v5 processName];
        processName = self->_processName;
        v9 = processName == v7 || [(NSString *)processName isEqual:v7];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SVXClientInfo;
  v5 = [(SVXClientInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {processIdentifier = %d, processName = %@}", v5, self->_processIdentifier, self->_processName];

  return v6;
}

- (SVXClientInfo)initWithProcessIdentifier:(int)a3 processName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SVXClientInfo;
  v7 = [(SVXClientInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_processIdentifier = a3;
    v9 = [v6 copy];
    processName = v8->_processName;
    v8->_processName = v9;
  }

  return v8;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SVXClientInfoMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SVXClientInfoMutation *)v5 generate];
  }

  else
  {
    v6 = [(SVXClientInfo *)self copy];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SVXClientInfoMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SVXClientInfoMutation *)v4 generate];

  return v5;
}

@end