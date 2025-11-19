@interface MappedPropertyList
+ (id)readKeyPath:(id)a3 fromURL:(id)a4 error:(id *)a5;
+ (id)readKeyPaths:(id)a3 fromURL:(id)a4 error:(id *)a5;
- (MappedPropertyList)initWithURL:(id)a3;
- (id)readKeyPath:(id)a3 error:(id *)a4;
- (id)readKeyPaths:(id)a3 error:(id *)a4;
@end

@implementation MappedPropertyList

- (MappedPropertyList)initWithURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"[MappedPropertyList initWithURL:]: nil URL argument" userInfo:0];
    objc_exception_throw(v10);
  }

  v5 = v4;
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

+ (id)readKeyPath:(id)a3 fromURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MappedPropertyList alloc] initWithURL:v7];

  v10 = [(MappedPropertyList *)v9 readKeyPath:v8 error:a5];

  return v10;
}

+ (id)readKeyPaths:(id)a3 fromURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MappedPropertyList alloc] initWithURL:v7];

  v10 = [(MappedPropertyList *)v9 readKeyPaths:v8 error:a5];

  return v10;
}

- (id)readKeyPath:(id)a3 error:(id *)a4
{
  v6 = [NSSet setWithObject:a3];
  v7 = [(MappedPropertyList *)self readKeyPaths:v6 error:a4];

  return v7;
}

- (id)readKeyPaths:(id)a3 error:(id *)a4
{
  v6 = a3;
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
      if (!a4)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  if (_CFPropertyListCreateFiltered())
  {
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v7 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

LABEL_10:
  if (v7)
  {
    v11 = v7;
    *a4 = v7;
  }

LABEL_12:

  return 0;
}

@end