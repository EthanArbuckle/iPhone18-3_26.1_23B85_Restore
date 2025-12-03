@interface _PASTempfileDescr
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTempfileDescr:(id)descr;
- (_PASTempfileDescr)initWithFd:(int)fd path:(id)path;
@end

@implementation _PASTempfileDescr

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_PASTempfileDescr *)self isEqualToTempfileDescr:v5];
  }

  return v6;
}

- (BOOL)isEqualToTempfileDescr:(id)descr
{
  descrCopy = descr;
  v5 = descrCopy;
  if (descrCopy && (fd = self->_fd, fd == [descrCopy fd]) && (v7 = self->_path == 0, objc_msgSend(v5, "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 != v9))
  {
    path = self->_path;
    if (path)
    {
      path = [v5 path];
      v12 = [(NSString *)path isEqual:path];
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

- (_PASTempfileDescr)initWithFd:(int)fd path:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASFileUtils.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v13.receiver = self;
  v13.super_class = _PASTempfileDescr;
  v9 = [(_PASTempfileDescr *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_fd = fd;
    objc_storeStrong(&v9->_path, path);
  }

  return v10;
}

@end