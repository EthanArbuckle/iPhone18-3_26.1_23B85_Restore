@interface _UIHostedWindowHostingHandle
+ (_UIHostedWindowHostingHandle)hostedWindowHostingHandleWithContextID:(unsigned int)a3 rootLayerTransform:(CGAffineTransform *)a4 rootLayerFrame:(CGRect)a5;
- (CGAffineTransform)rootLayerTransform;
- (CGRect)rootLayerFrame;
- (_UIHostedWindowHostingHandle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIHostedWindowHostingHandle

- (void)encodeWithCoder:(id)a3
{
  pid = self->_pid;
  v5 = a3;
  [v5 encodeInt32:pid forKey:@"pid"];
  [v5 encodeInt32:self->_contextID forKey:@"contextID"];
  v6 = *&self->_rootLayerTransform.c;
  v7[0] = *&self->_rootLayerTransform.a;
  v7[1] = v6;
  v7[2] = *&self->_rootLayerTransform.tx;
  [v5 encodeCGAffineTransform:v7 forKey:@"rootLayerTransform"];
  [v5 encodeCGRect:@"rootLayerFrame" forKey:{self->_rootLayerFrame.origin.x, self->_rootLayerFrame.origin.y, self->_rootLayerFrame.size.width, self->_rootLayerFrame.size.height}];
}

- (_UIHostedWindowHostingHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UIHostedWindowHostingHandle;
  v5 = [(_UIHostedWindowHostingHandle *)&v15 init];
  if (v5)
  {
    v5->_pid = [v4 decodeInt32ForKey:@"pid"];
    v5->_contextID = [v4 decodeInt32ForKey:@"contextID"];
    if (v4)
    {
      [v4 decodeCGAffineTransformForKey:@"rootLayerTransform"];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
    }

    *&v5->_rootLayerTransform.a = v12;
    *&v5->_rootLayerTransform.c = v13;
    *&v5->_rootLayerTransform.tx = v14;
    [v4 decodeCGRectForKey:{@"rootLayerFrame", v12, v13, v14}];
    v5->_rootLayerFrame.origin.x = v6;
    v5->_rootLayerFrame.origin.y = v7;
    v5->_rootLayerFrame.size.width = v8;
    v5->_rootLayerFrame.size.height = v9;
    v10 = v5;
  }

  return v5;
}

+ (_UIHostedWindowHostingHandle)hostedWindowHostingHandleWithContextID:(unsigned int)a3 rootLayerTransform:(CGAffineTransform *)a4 rootLayerFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = objc_alloc_init(_UIHostedWindowHostingHandle);
  v11->_pid = getpid();
  v11->_contextID = a3;
  v13 = *&a4->c;
  v12 = *&a4->tx;
  *&v11->_rootLayerTransform.a = *&a4->a;
  *&v11->_rootLayerTransform.c = v13;
  *&v11->_rootLayerTransform.tx = v12;
  v11->_rootLayerFrame.origin.x = x;
  v11->_rootLayerFrame.origin.y = y;
  v11->_rootLayerFrame.size.width = width;
  v11->_rootLayerFrame.size.height = height;

  return v11;
}

- (CGAffineTransform)rootLayerTransform
{
  v3 = *&self->tx;
  *&retstr->a = *&self->c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].a;
  return self;
}

- (CGRect)rootLayerFrame
{
  x = self->_rootLayerFrame.origin.x;
  y = self->_rootLayerFrame.origin.y;
  width = self->_rootLayerFrame.size.width;
  height = self->_rootLayerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end