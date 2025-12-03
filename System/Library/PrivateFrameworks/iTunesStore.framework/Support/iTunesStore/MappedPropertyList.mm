@interface MappedPropertyList
+ (id)readKeyPath:(id)path fromURL:(id)l error:(id *)error;
+ (id)readKeyPaths:(id)paths fromURL:(id)l error:(id *)error;
- (MappedPropertyList)initWithURL:(id)l;
- (id)readKeyPath:(id)path error:(id *)error;
- (id)readKeyPaths:(id)paths error:(id *)error;
@end

@implementation MappedPropertyList

- (MappedPropertyList)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    v10 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"[MappedPropertyList initWithURL:]: nil URL argument" userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = lCopy;
  v11.receiver = self;
  v11.super_class = MappedPropertyList;
  v6 = [(MappedPropertyList *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    URL = v6->_URL;
    v6->_URL = v7;
  }

  return v6;
}

+ (id)readKeyPath:(id)path fromURL:(id)l error:(id *)error
{
  lCopy = l;
  pathCopy = path;
  v9 = [[MappedPropertyList alloc] initWithURL:lCopy];

  v10 = [(MappedPropertyList *)v9 readKeyPath:pathCopy error:error];

  return v10;
}

+ (id)readKeyPaths:(id)paths fromURL:(id)l error:(id *)error
{
  lCopy = l;
  pathsCopy = paths;
  v9 = [[MappedPropertyList alloc] initWithURL:lCopy];

  v10 = [(MappedPropertyList *)v9 readKeyPaths:pathsCopy error:error];

  return v10;
}

- (id)readKeyPath:(id)path error:(id *)error
{
  v6 = [NSSet setWithObject:path];
  v7 = [(MappedPropertyList *)self readKeyPaths:v6 error:error];

  return v7;
}

- (id)readKeyPaths:(id)paths error:(id *)error
{
  pathsCopy = paths;
  if (self->_data)
  {
    v7 = 0;
  }

  else
  {
    URL = self->_URL;
    v13 = 0;
    v9 = [NSData dataWithContentsOfURL:URL options:1 error:&v13];
    v7 = v13;
    data = self->_data;
    self->_data = v9;

    if (!self->_data)
    {
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  if (_CFPropertyListCreateFiltered())
  {
    if (!error)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v7 = 0;
    if (!error)
    {
      goto LABEL_12;
    }
  }

LABEL_10:
  if (v7)
  {
    v11 = v7;
    *error = v7;
  }

LABEL_12:

  return 0;
}

@end