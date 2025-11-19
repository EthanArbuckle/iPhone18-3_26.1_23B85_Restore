@interface _UIImageContentRendition
+ (id)renditionWithContentProvider:(uint64_t)a1;
+ (id)renditionWithContentProvider:(void *)a3 color:;
+ (id)renditionWithContentProvider:(void *)a3 color:(void *)a4 effects:;
+ (id)renditionWithContentProvider:(void *)a3 color:(void *)a4 effects:(int)a5 drawMode:;
- (uint64_t)CGImage;
- (uint64_t)drawInContext:(uint64_t)result;
- (void)dealloc;
- (void)rbSymbolConfiguration;
@end

@implementation _UIImageContentRendition

- (uint64_t)CGImage
{
  if (result)
  {
    v1 = result;
    result = *(result + 8);
    if (!result)
    {
      v2 = [(_UIImageContentProvider *)*(v1 + 32) CGImageProvider];
      v3 = v2[2]();
      *(v1 + 8) = CGImageRetain(v3);

      return *(v1 + 8);
    }
  }

  return result;
}

- (void)dealloc
{
  CGImage = self->_CGImage;
  if (CGImage)
  {
    CGImageRelease(CGImage);
  }

  v4.receiver = self;
  v4.super_class = _UIImageContentRendition;
  [(_UIImageContentRendition *)&v4 dealloc];
}

+ (id)renditionWithContentProvider:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [(_UIImageContentRendition *)v3 renditionWithContentProvider:v2 color:0];

  return v4;
}

+ (id)renditionWithContentProvider:(void *)a3 color:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = [(_UIImageContentRendition *)v6 renditionWithContentProvider:v5 color:v4 effects:0];

  return v7;
}

+ (id)renditionWithContentProvider:(void *)a3 color:(void *)a4 effects:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [(_UIImageContentRendition *)v9 renditionWithContentProvider:v8 color:v7 effects:v6 drawMode:0];

  return v10;
}

+ (id)renditionWithContentProvider:(void *)a3 color:(void *)a4 effects:(int)a5 drawMode:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  v11 = objc_opt_new();
  v12 = *(v11 + 32);
  *(v11 + 32) = v8;
  v13 = v8;

  v14 = *(v11 + 40);
  *(v11 + 40) = v9;
  v15 = v9;

  v16 = *(v11 + 48);
  *(v11 + 48) = v10;

  *(v11 + 24) = a5;

  return v11;
}

- (uint64_t)drawInContext:(uint64_t)result
{
  if (result)
  {
    v1 = *(result + 32);
    if (v1)
    {
      result = *(v1 + 24);
      if (result)
      {
        return (*(result + 16))();
      }
    }
  }

  return result;
}

- (void)rbSymbolConfiguration
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [(_UIImageContentProvider *)a1[4] rbSymbolConfigurationProvider];
      v5 = v4[2]();
      v6 = v2[2];
      v2[2] = v5;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

@end