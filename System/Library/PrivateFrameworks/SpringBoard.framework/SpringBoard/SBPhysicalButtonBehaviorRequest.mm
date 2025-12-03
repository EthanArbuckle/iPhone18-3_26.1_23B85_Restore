@interface SBPhysicalButtonBehaviorRequest
- (BOOL)isEqual:(id)equal;
- (FBScene)scene;
- (SBPhysicalButtonBehaviorRequest)initWithPhysicalButtonConfiguration:(id)configuration generation:(unint64_t)generation identifier:(unint64_t)identifier scene:(id)scene;
@end

@implementation SBPhysicalButtonBehaviorRequest

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (SBPhysicalButtonBehaviorRequest)initWithPhysicalButtonConfiguration:(id)configuration generation:(unint64_t)generation identifier:(unint64_t)identifier scene:(id)scene
{
  configurationCopy = configuration;
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = SBPhysicalButtonBehaviorRequest;
  v12 = [(SBPhysicalButtonBehaviorRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_scene, sceneCopy);
    v13->_identifier = identifier;
    v13->_generation = generation;
    v13->_physicalButtonBehavior = [configurationCopy _behavior];
    _auditToken = [configurationCopy _auditToken];
    requestingProcessAuditToken = v13->_requestingProcessAuditToken;
    v13->_requestingProcessAuditToken = _auditToken;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && self->_physicalButtonBehavior == v9[1] && self->_generation == v9[3])
    {
      WeakRetained = objc_loadWeakRetained(&self->_scene);
      v11 = objc_loadWeakRetained(v9 + 4);
      if (BSEqualObjects())
      {
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end