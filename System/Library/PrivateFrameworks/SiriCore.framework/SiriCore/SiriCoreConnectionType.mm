@interface SiriCoreConnectionType
- (BOOL)isEdge;
- (BOOL)isWWAN;
- (SiriCoreConnectionType)initWithTechnology:(int64_t)technology;
- (id)description;
- (int64_t)diagnosticConnectionType;
- (unint64_t)aggregatorConnectionType;
@end

@implementation SiriCoreConnectionType

- (unint64_t)aggregatorConnectionType
{
  technology = self->_technology;
  if (technology <= 2999)
  {
    v3 = technology - 2000;
    v4 = technology == 1000;
    if (v3 >= 0xF)
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  if (technology <= 3002)
  {
    if (technology != 3000)
    {
      v6 = 4;
      v7 = 5;
      if (technology != 3002)
      {
        v7 = 0;
      }

      v8 = technology == 3001;
      goto LABEL_14;
    }

    return 3;
  }

  if (technology > 3004)
  {
    if (technology == 3005)
    {
      return 8;
    }

    if (technology != 3006)
    {
      return 0;
    }

    return 3;
  }

  v6 = 6;
  v7 = 7;
  if (technology != 3004)
  {
    v7 = 0;
  }

  v8 = technology == 3003;
LABEL_14:
  if (v8)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (int64_t)diagnosticConnectionType
{
  if ([(SiriCoreConnectionType *)self isWWAN])
  {
    return 2;
  }

  else
  {
    return [(SiriCoreConnectionType *)self technology]== 1000;
  }
}

- (BOOL)isEdge
{
  technology = self->_technology;
  result = 0;
  if ((technology - 2000) >= 0xF && ((technology - 3000) > 6 || ((1 << (technology + 72)) & 0x65) == 0) && technology != 1000 && technology != 0)
  {
    return 1;
  }

  return result;
}

- (BOOL)isWWAN
{
  technology = self->_technology;
  result = 0;
  if ((technology - 3000) >= 7 && technology != 1000 && technology != 0)
  {
    return 1;
  }

  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = SiriCoreConnectionTechnologyGetDescription(self->_technology);
  v6 = [v3 initWithFormat:@"<%p %@: technology=%@>", self, v4, v5];

  return v6;
}

- (SiriCoreConnectionType)initWithTechnology:(int64_t)technology
{
  v5.receiver = self;
  v5.super_class = SiriCoreConnectionType;
  result = [(SiriCoreConnectionType *)&v5 init];
  if (result)
  {
    result->_technology = technology;
  }

  return result;
}

@end