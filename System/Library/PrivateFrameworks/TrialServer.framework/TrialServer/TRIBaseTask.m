@interface TRIBaseTask
- (BOOL)isEqual:(id)a3;
- (NSString)taskName;
- (TRITaskQueueStateProviding)stateProvider;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIBaseTask

- (NSString)taskName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = [(TRIBaseTask *)self taskName];
  v3 = [v2 hash];

  return v3 + 629;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@:%p>", objc_opt_class(), self];

  return v2;
}

- (TRITaskQueueStateProviding)stateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);

  return WeakRetained;
}

@end