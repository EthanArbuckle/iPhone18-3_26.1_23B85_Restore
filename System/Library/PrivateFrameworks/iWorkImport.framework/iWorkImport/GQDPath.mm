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
    v3 = [(GQDPath *)self createBezierPath];
    if (v3)
    {
      v4 = v3;
      self->mPathString = sub_42CE8(v3);
      CFRelease(v4);
    }
  }

  return self->mPathString;
}

@end