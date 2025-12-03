@interface SLShareableContentLoadResult
+ (SLShareableContentLoadResult)resultWithError:(id)error;
- (Class)archivedObjectClass;
- (SLShareableContentLoadResult)initWithBSXPCCoder:(id)coder;
- (SLShareableContentLoadResult)initWithCoder:(id)coder;
- (SLShareableContentLoadResult)initWithWithData:(id)data archivedObjectClassName:(id)name urlWrapper:(id)wrapper wasOpenedInPlace:(BOOL)place error:(id)error;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLShareableContentLoadResult

- (SLShareableContentLoadResult)initWithWithData:(id)data archivedObjectClassName:(id)name urlWrapper:(id)wrapper wasOpenedInPlace:(BOOL)place error:(id)error
{
  dataCopy = data;
  nameCopy = name;
  wrapperCopy = wrapper;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = SLShareableContentLoadResult;
  v17 = [(SLShareableContentLoadResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, data);
    objc_storeStrong(&v18->_archivedObjectClassName, name);
    objc_storeStrong(&v18->_urlWrapper, wrapper);
    v18->_wasOpenedInPlace = place;
    objc_storeStrong(&v18->_error, error);
  }

  return v18;
}

+ (SLShareableContentLoadResult)resultWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithWithData:0 archivedObjectClassName:0 urlWrapper:0 wasOpenedInPlace:0 error:errorCopy];

  return v5;
}

- (Class)archivedObjectClass
{
  archivedObjectClassName = [(SLShareableContentLoadResult *)self archivedObjectClassName];
  if (!archivedObjectClassName)
  {
    goto LABEL_6;
  }

  if (SLShareableContentIsArchivedObjectClassNameAllowed_onceToken != -1)
  {
    [SLShareableContentLoadResult archivedObjectClass];
  }

  if ([SLShareableContentIsArchivedObjectClassNameAllowed_allowedArchivedObjectClassNames containsObject:archivedObjectClassName])
  {
    v3 = NSClassFromString(archivedObjectClassName);
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (SLShareableContentLoadResult)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_data);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_archivedObjectClass);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_urlWrapper);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_wasOpenedInPlace);
  v15 = [coderCopy decodeBoolForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_error);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = [(SLShareableContentLoadResult *)self initWithWithData:v7 archivedObjectClassName:v10 urlWrapper:v13 wasOpenedInPlace:v15 error:v18];
  return v19;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  data = [(SLShareableContentLoadResult *)self data];
  v6 = NSStringFromSelector(sel_data);
  [coderCopy encodeObject:data forKey:v6];

  archivedObjectClassName = [(SLShareableContentLoadResult *)self archivedObjectClassName];
  v8 = NSStringFromSelector(sel_archivedObjectClassName);
  [coderCopy encodeObject:archivedObjectClassName forKey:v8];

  urlWrapper = [(SLShareableContentLoadResult *)self urlWrapper];
  v10 = NSStringFromSelector(sel_urlWrapper);
  [coderCopy encodeObject:urlWrapper forKey:v10];

  wasOpenedInPlace = [(SLShareableContentLoadResult *)self wasOpenedInPlace];
  v12 = NSStringFromSelector(sel_wasOpenedInPlace);
  [coderCopy encodeBool:wasOpenedInPlace forKey:v12];

  error = [(SLShareableContentLoadResult *)self error];
  v13 = NSStringFromSelector(sel_error);
  [coderCopy encodeObject:error forKey:v13];
}

- (SLShareableContentLoadResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_data);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_archivedObjectClass);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_urlWrapper);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_wasOpenedInPlace);
  v15 = [coderCopy decodeBoolForKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_error);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = [(SLShareableContentLoadResult *)self initWithWithData:v7 archivedObjectClassName:v10 urlWrapper:v13 wasOpenedInPlace:v15 error:v18];
  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(SLShareableContentLoadResult *)self data];
  v6 = NSStringFromSelector(sel_data);
  [coderCopy encodeObject:data forKey:v6];

  archivedObjectClassName = [(SLShareableContentLoadResult *)self archivedObjectClassName];
  v8 = NSStringFromSelector(sel_archivedObjectClassName);
  [coderCopy encodeObject:archivedObjectClassName forKey:v8];

  urlWrapper = [(SLShareableContentLoadResult *)self urlWrapper];
  v10 = NSStringFromSelector(sel_urlWrapper);
  [coderCopy encodeObject:urlWrapper forKey:v10];

  wasOpenedInPlace = [(SLShareableContentLoadResult *)self wasOpenedInPlace];
  v12 = NSStringFromSelector(sel_wasOpenedInPlace);
  [coderCopy encodeBool:wasOpenedInPlace forKey:v12];

  error = [(SLShareableContentLoadResult *)self error];
  v13 = NSStringFromSelector(sel_error);
  [coderCopy encodeObject:error forKey:v13];
}

@end