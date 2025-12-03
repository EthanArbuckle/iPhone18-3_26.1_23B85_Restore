@interface PathObject
+ (id)pathObjectWithPath:(const char *)path component:(const char *)component;
- (PathObject)initWithPath:(const char *)path component:(const char *)component;
- (id)description;
- (void)dealloc;
@end

@implementation PathObject

- (PathObject)initWithPath:(const char *)path component:(const char *)component
{
  v19.receiver = self;
  v19.super_class = PathObject;
  v6 = [(PathObject *)&v19 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = "/";
  componentCopy = "";
  if (component)
  {
    componentCopy = component;
  }

  else
  {
    v8 = "";
  }

  v10 = asprintf(&v6->_path, "%s%s%s", path, v8, componentCopy);
  v7->_len = v10;
  if (v10 == -1 || !v7->_path)
  {
    goto LABEL_9;
  }

  if (v10 < 1024)
  {
LABEL_10:
    v17 = v7;
    goto LABEL_11;
  }

  STLog(2, @"path too long: %s", v11, v12, v13, v14, v15, v16, v7->_path);
  free(v7->_path);
LABEL_9:
  v17 = 0;
LABEL_11:

  return v17;
}

+ (id)pathObjectWithPath:(const char *)path component:(const char *)component
{
  v4 = [[PathObject alloc] initWithPath:path component:component];

  return v4;
}

- (void)dealloc
{
  path = self->_path;
  if (path)
  {
    free(path);
  }

  v4.receiver = self;
  v4.super_class = PathObject;
  [(PathObject *)&v4 dealloc];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  path = [(PathObject *)self path];

  return [v2 stringWithUTF8String:path];
}

@end