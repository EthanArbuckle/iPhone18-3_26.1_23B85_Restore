@interface SBPhysicalButtonBehaviorRequest
- (BOOL)isEqual:(id)a3;
- (FBScene)scene;
- (SBPhysicalButtonBehaviorRequest)initWithPhysicalButtonConfiguration:(id)a3 generation:(unint64_t)a4 identifier:(unint64_t)a5 scene:(id)a6;
@end

@implementation SBPhysicalButtonBehaviorRequest

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (SBPhysicalButtonBehaviorRequest)initWithPhysicalButtonConfiguration:(id)a3 generation:(unint64_t)a4 identifier:(unint64_t)a5 scene:(id)a6
{
  v10 = a3;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SBPhysicalButtonBehaviorRequest;
  v12 = [(SBPhysicalButtonBehaviorRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_scene, v11);
    v13->_identifier = a5;
    v13->_generation = a4;
    v13->_physicalButtonBehavior = [v10 _behavior];
    v14 = [v10 _auditToken];
    requestingProcessAuditToken = v13->_requestingProcessAuditToken;
    v13->_requestingProcessAuditToken = v14;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
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