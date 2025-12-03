@interface SXJSONObjectComponentSupport
+ (id)shared;
- (SXJSONObjectComponentSupport)initWithSpecVersion:(id)version;
- (id)purgeClassBlock;
@end

@implementation SXJSONObjectComponentSupport

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[SXJSONObjectComponentSupport shared];
  }

  v3 = shared_shared;

  return v3;
}

uint64_t __38__SXJSONObjectComponentSupport_shared__block_invoke()
{
  v0 = [[SXJSONObjectComponentSupport alloc] initWithSpecVersion:@"1.30"];
  v1 = shared_shared;
  shared_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SXJSONObjectComponentSupport)initWithSpecVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = SXJSONObjectComponentSupport;
  v6 = [(SXJSONObjectComponentSupport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specVersion, version);
  }

  return v7;
}

void *__53__SXJSONObjectComponentSupport_objectValueClassBlock__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKey:@"role"];
  v8 = [v6 objectForKey:@"type"];

  v9 = [SXComponentClassification classificationForComponentWithType:v8 role:v7];
  v10 = [v9 componentModelClass];
  if (!v10 || (v11 = objc_opt_class(), v11 == objc_opt_class()))
  {
    v12 = [SXLegacySupport deprecatedComponentForType:v8 andVersion:v5];
    v13 = [(SXFullscreenCaption *)v12 caption];

    if (v13)
    {
      v14 = [(SXFullscreenCaption *)v12 caption];
      v10 = [v14 componentModelClass];
    }
  }

  v15 = v10;

  return v10;
}

- (id)purgeClassBlock
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SXJSONObjectComponentSupport_purgeClassBlock__block_invoke;
  v4[3] = &unk_1E8500D30;
  v4[4] = self;
  v2 = MEMORY[0x1DA716BE0](v4, a2);

  return v2;
}

BOOL __47__SXJSONObjectComponentSupport_purgeClassBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKey:@"type"];
    v8 = [v5 objectForKey:@"role"];
    if (v7)
    {
      v9 = [SXLegacySupport deprecatedComponentForType:v7 andVersion:v6];
      v10 = v9;
      if (v9)
      {
        v11 = [(SXFullscreenCaption *)v9 caption];
        v12 = v11 == 0;
      }

      else
      {
        v11 = [SXComponentClassification classificationForComponentWithType:v7];
        v14 = objc_opt_class();
        v12 = v14 == objc_opt_class();
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v15 = [v5 valueForKey:@"conditions"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [(SXJSONObject *)[SXComponentConditions alloc] initWithJSONObject:v15 andVersion:v6];
        v17 = [(SXComponentConditions *)v16 greaterThanSpecVersion];
        v18 = v17 == 0 || v13;

        if (!v18)
        {
          v19 = [(SXComponentConditions *)v16 greaterThanSpecVersion];
          v20 = [*(a1 + 32) specVersion];
          v13 = SXSpecVersionCompare(v19, v20) != -1;
        }

        v21 = [(SXComponentConditions *)v16 lessThanSpecVersion];

        if (v21 && !v13)
        {
          v22 = [(SXComponentConditions *)v16 lessThanSpecVersion];
          v23 = [*(a1 + 32) specVersion];
          v13 = SXSpecVersionCompare(v22, v23) != 1;
        }
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end