@interface GQDPath
- (char)pathStr;
- (void)dealloc;
@end

@implementation GQDPath

- (void)dealloc
{
  mPathString = self->mPathString;
  if (mPathString)
  {
    free(mPathString);
  }

  v4.receiver = self;
  v4.super_class = GQDPath;
  [(GQDPath *)&v4 dealloc];
}

- (char)pathStr
{
  if (!self->mPathString)
  {
    createBezierPath = [(GQDPath *)self createBezierPath];
    if (createBezierPath)
    {
      v4 = createBezierPath;
      self->mPathString = sub_42CE8(createBezierPath);
      CFRelease(v4);
    }
  }

  return self->mPathString;
}

@end