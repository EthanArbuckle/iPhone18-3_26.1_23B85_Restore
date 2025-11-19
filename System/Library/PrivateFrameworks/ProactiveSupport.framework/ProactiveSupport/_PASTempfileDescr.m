@interface _PASTempfileDescr
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTempfileDescr:(id)a3;
- (_PASTempfileDescr)initWithFd:(int)a3 path:(id)a4;
@end

@implementation _PASTempfileDescr

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_PASTempfileDescr *)self isEqualToTempfileDescr:v5];
  }

  return v6;
}

- (BOOL)isEqualToTempfileDescr:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (fd = self->_fd, fd == [v4 fd]) && (v7 = self->_path == 0, objc_msgSend(v5, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 != v9))
  {
    path = self->_path;
    if (path)
    {
      v11 = [v5 path];
      v12 = [(NSString *)path isEqual:v11];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (_PASTempfileDescr)initWithFd:(int)a3 path:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_PASFileUtils.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v13.receiver = self;
  v13.super_class = _PASTempfileDescr;
  v9 = [(_PASTempfileDescr *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_fd = a3;
    objc_storeStrong(&v9->_path, a4);
  }

  return v10;
}

@end