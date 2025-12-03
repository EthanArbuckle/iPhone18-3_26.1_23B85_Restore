@interface VSCacheUpdateRequest
- (VSCacheUpdateRequest)initWithModelIdentifier:(id)identifier classIdentifier:(id)classIdentifier;
- (id)coalescedRequest:(id)request;
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

- (id)coalescedRequest:(id)request
{
  requestCopy = request;
  modelIdentifier = [request modelIdentifier];
  classIdentifier = [requestCopy classIdentifier];
  if (modelIdentifier)
  {
    if (!self->_modelID)
    {
      return self;
    }

    v7 = classIdentifier;
    if (![modelIdentifier isEqualToString:?])
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

  return requestCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSCacheUpdateRequest;
  [(VSCacheUpdateRequest *)&v3 dealloc];
}

- (VSCacheUpdateRequest)initWithModelIdentifier:(id)identifier classIdentifier:(id)classIdentifier
{
  v6 = [(VSCacheUpdateRequest *)self init];
  if (v6)
  {
    v6->_modelID = identifier;
    v6->_classID = classIdentifier;
  }

  return v6;
}

@end