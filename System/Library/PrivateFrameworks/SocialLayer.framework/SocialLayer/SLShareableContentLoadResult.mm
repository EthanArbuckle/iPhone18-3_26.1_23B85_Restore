@interface SLShareableContentLoadResult
+ (SLShareableContentLoadResult)resultWithError:(id)a3;
- (Class)archivedObjectClass;
- (SLShareableContentLoadResult)initWithBSXPCCoder:(id)a3;
- (SLShareableContentLoadResult)initWithCoder:(id)a3;
- (SLShareableContentLoadResult)initWithWithData:(id)a3 archivedObjectClassName:(id)a4 urlWrapper:(id)a5 wasOpenedInPlace:(BOOL)a6 error:(id)a7;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLShareableContentLoadResult

- (SLShareableContentLoadResult)initWithWithData:(id)a3 archivedObjectClassName:(id)a4 urlWrapper:(id)a5 wasOpenedInPlace:(BOOL)a6 error:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = SLShareableContentLoadResult;
  v17 = [(SLShareableContentLoadResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, a3);
    objc_storeStrong(&v18->_archivedObjectClassName, a4);
    objc_storeStrong(&v18->_urlWrapper, a5);
    v18->_wasOpenedInPlace = a6;
    objc_storeStrong(&v18->_error, a7);
  }

  return v18;
}

+ (SLShareableContentLoadResult)resultWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithWithData:0 archivedObjectClassName:0 urlWrapper:0 wasOpenedInPlace:0 error:v4];

  return v5;
}

- (Class)archivedObjectClass
{
  v2 = [(SLShareableContentLoadResult *)self archivedObjectClassName];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (SLShareableContentIsArchivedObjectClassNameAllowed_onceToken != -1)
  {
    [SLShareableContentLoadResult archivedObjectClass];
  }

  if ([SLShareableContentIsArchivedObjectClassNameAllowed_allowedArchivedObjectClassNames containsObject:v2])
  {
    v3 = NSClassFromString(v2);
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (SLShareableContentLoadResult)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_data);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_archivedObjectClass);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_urlWrapper);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_wasOpenedInPlace);
  v15 = [v4 decodeBoolForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_error);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = [(SLShareableContentLoadResult *)self initWithWithData:v7 archivedObjectClassName:v10 urlWrapper:v13 wasOpenedInPlace:v15 error:v18];
  return v19;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentLoadResult *)self data];
  v6 = NSStringFromSelector(sel_data);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLShareableContentLoadResult *)self archivedObjectClassName];
  v8 = NSStringFromSelector(sel_archivedObjectClassName);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLShareableContentLoadResult *)self urlWrapper];
  v10 = NSStringFromSelector(sel_urlWrapper);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(SLShareableContentLoadResult *)self wasOpenedInPlace];
  v12 = NSStringFromSelector(sel_wasOpenedInPlace);
  [v4 encodeBool:v11 forKey:v12];

  v14 = [(SLShareableContentLoadResult *)self error];
  v13 = NSStringFromSelector(sel_error);
  [v4 encodeObject:v14 forKey:v13];
}

- (SLShareableContentLoadResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_data);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_archivedObjectClass);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_urlWrapper);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_wasOpenedInPlace);
  v15 = [v4 decodeBoolForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_error);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = [(SLShareableContentLoadResult *)self initWithWithData:v7 archivedObjectClassName:v10 urlWrapper:v13 wasOpenedInPlace:v15 error:v18];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLShareableContentLoadResult *)self data];
  v6 = NSStringFromSelector(sel_data);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(SLShareableContentLoadResult *)self archivedObjectClassName];
  v8 = NSStringFromSelector(sel_archivedObjectClassName);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(SLShareableContentLoadResult *)self urlWrapper];
  v10 = NSStringFromSelector(sel_urlWrapper);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(SLShareableContentLoadResult *)self wasOpenedInPlace];
  v12 = NSStringFromSelector(sel_wasOpenedInPlace);
  [v4 encodeBool:v11 forKey:v12];

  v14 = [(SLShareableContentLoadResult *)self error];
  v13 = NSStringFromSelector(sel_error);
  [v4 encodeObject:v14 forKey:v13];
}

@end