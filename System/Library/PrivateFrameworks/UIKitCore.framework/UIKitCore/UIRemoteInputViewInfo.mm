@interface UIRemoteInputViewInfo
- (CGSize)size;
- (NSEdgeInsets)insets;
- (RTIInputViewInfo)rtiInputViewInfo;
- (id)description;
@end

@implementation UIRemoteInputViewInfo

- (RTIInputViewInfo)rtiInputViewInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getRTIInputViewInfoClass_softClass;
  v11 = getRTIInputViewInfoClass_softClass;
  if (!getRTIInputViewInfoClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getRTIInputViewInfoClass_block_invoke;
    v7[3] = &unk_1E70F2F20;
    v7[4] = &v8;
    __getRTIInputViewInfoClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  [v5 setContextId:{-[UIRemoteInputViewInfo contextId](self, "contextId")}];
  [(UIRemoteInputViewInfo *)self size];
  [v5 setSize:?];
  [(UIRemoteInputViewInfo *)self insets];
  [v5 setInsets:?];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UIRemoteInputViewInfo *)self processId];
  v6 = [(UIRemoteInputViewInfo *)self rtiInputViewInfo];
  v7 = [v3 stringWithFormat:@"<%@: %p processId = %d; info = %@>", v4, self, v5, v6];;

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end