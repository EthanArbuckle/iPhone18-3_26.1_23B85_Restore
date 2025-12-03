@interface _UIHostedWindowHostingHandle
+ (_UIHostedWindowHostingHandle)hostedWindowHostingHandleWithContextID:(unsigned int)d rootLayerTransform:(CGAffineTransform *)transform rootLayerFrame:(CGRect)frame;
- (CGAffineTransform)rootLayerTransform;
- (CGRect)rootLayerFrame;
- (_UIHostedWindowHostingHandle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIHostedWindowHostingHandle

- (void)encodeWithCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt32:pid forKey:@"pid"];
  [coderCopy encodeInt32:self->_contextID forKey:@"contextID"];
  v6 = *&self->_rootLayerTransform.c;
  v7[0] = *&self->_rootLayerTransform.a;
  v7[1] = v6;
  v7[2] = *&self->_rootLayerTransform.tx;
  [coderCopy encodeCGAffineTransform:v7 forKey:@"rootLayerTransform"];
  [coderCopy encodeCGRect:@"rootLayerFrame" forKey:{self->_rootLayerFrame.origin.x, self->_rootLayerFrame.origin.y, self->_rootLayerFrame.size.width, self->_rootLayerFrame.size.height}];
}

- (_UIHostedWindowHostingHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _UIHostedWindowHostingHandle;
  v5 = [(_UIHostedWindowHostingHandle *)&v15 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeInt32ForKey:@"pid"];
    v5->_contextID = [coderCopy decodeInt32ForKey:@"contextID"];
    if (coderCopy)
    {
      [coderCopy decodeCGAffineTransformForKey:@"rootLayerTransform"];
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
    [coderCopy decodeCGRectForKey:{@"rootLayerFrame", v12, v13, v14}];
    v5->_rootLayerFrame.origin.x = v6;
    v5->_rootLayerFrame.origin.y = v7;
    v5->_rootLayerFrame.size.width = v8;
    v5->_rootLayerFrame.size.height = v9;
    v10 = v5;
  }

  return v5;
}

+ (_UIHostedWindowHostingHandle)hostedWindowHostingHandleWithContextID:(unsigned int)d rootLayerTransform:(CGAffineTransform *)transform rootLayerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = objc_alloc_init(_UIHostedWindowHostingHandle);
  v11->_pid = getpid();
  v11->_contextID = d;
  v13 = *&transform->c;
  v12 = *&transform->tx;
  *&v11->_rootLayerTransform.a = *&transform->a;
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