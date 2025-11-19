@interface PLFilePathDescription
+ (id)descriptionWithFileURL:(id)a3;
+ (id)descriptionWithPath:(id)a3;
- (PLFilePathDescription)initWithPath:(id)a3;
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

- (PLFilePathDescription)initWithPath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLFilePathDescription;
  v5 = [(PLFilePathDescription *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)descriptionWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 path];

  v7 = [v5 initWithPath:v6];

  return v7;
}

+ (id)descriptionWithPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPath:v4];

  return v5;
}

@end