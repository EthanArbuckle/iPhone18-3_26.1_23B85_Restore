@interface VSCacheUpdateRequest
- (VSCacheUpdateRequest)initWithModelIdentifier:(id)a3 classIdentifier:(id)a4;
- (id)coalescedRequest:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation VSCacheUpdateRequest

- (id)description
{
  classID = @"all";
  modelID = self->_modelID;
  if (!modelID)
  {
    modelID = @"all";
  }

  if (self->_classID)
  {
    classID = self->_classID;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"model <%@> class <%@>", modelID, classID];
}

- (id)coalescedRequest:(id)a3
{
  v3 = a3;
  v5 = [a3 modelIdentifier];
  v6 = [v3 classIdentifier];
  if (v5)
  {
    if (!self->_modelID)
    {
      return self;
    }

    v7 = v6;
    if (![v5 isEqualToString:?])
    {
      return 0;
    }

    if (v7)
    {
      if (self->_classID)
      {
        if ([v7 isEqualToString:?])
        {
          return self;
        }

        else
        {
          return 0;
        }
      }

      return self;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSCacheUpdateRequest;
  [(VSCacheUpdateRequest *)&v3 dealloc];
}

- (VSCacheUpdateRequest)initWithModelIdentifier:(id)a3 classIdentifier:(id)a4
{
  v6 = [(VSCacheUpdateRequest *)self init];
  if (v6)
  {
    v6->_modelID = a3;
    v6->_classID = a4;
  }

  return v6;
}

@end