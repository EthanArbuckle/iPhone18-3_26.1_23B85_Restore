@interface PLFilePathDescription
+ (id)descriptionWithFileURL:(id)l;
+ (id)descriptionWithPath:(id)path;
- (PLFilePathDescription)initWithPath:(id)path;
- (id)description;
@end

@implementation PLFilePathDescription

- (id)description
{
  if (self->_path)
  {
    return self->_path;
  }

  else
  {
    return *MEMORY[0x1E69BDD90];
  }
}

- (PLFilePathDescription)initWithPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = PLFilePathDescription;
  v5 = [(PLFilePathDescription *)&v10 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)descriptionWithFileURL:(id)l
{
  lCopy = l;
  v5 = [self alloc];
  path = [lCopy path];

  v7 = [v5 initWithPath:path];

  return v7;
}

+ (id)descriptionWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithPath:pathCopy];

  return v5;
}

@end