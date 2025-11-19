@interface _UIImageViewPendingSymbolContentTransition
+ (id)transitionWithTransition:(id)a3 sourceSymbolImage:(id)a4 targetSymbolImage:(id)a5 options:(id)a6 completion:(id)a7;
- (CGRect)initialSymbolAbsoluteRect;
- (_UIImageViewPendingSymbolContentTransition)init;
@end

@implementation _UIImageViewPendingSymbolContentTransition

- (_UIImageViewPendingSymbolContentTransition)init
{
  v4.receiver = self;
  v4.super_class = _UIImageViewPendingSymbolContentTransition;
  result = [(_UIImageViewPendingSymbolContentTransition *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    result->_initialSymbolAbsoluteRect.origin = *MEMORY[0x1E695F050];
    result->_initialSymbolAbsoluteRect.size = v3;
  }

  return result;
}

+ (id)transitionWithTransition:(id)a3 sourceSymbolImage:(id)a4 targetSymbolImage:(id)a5 options:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_new();
  v17 = v16[2];
  v16[2] = v11;
  v18 = v11;

  v19 = v16[5];
  v16[5] = v12;
  v20 = v12;

  v21 = v16[6];
  v16[6] = v13;
  v22 = v13;

  v23 = v16[3];
  v16[3] = v14;
  v24 = v14;

  v25 = _Block_copy(v15);
  v26 = v16[4];
  v16[4] = v25;

  return v16;
}

- (CGRect)initialSymbolAbsoluteRect
{
  x = self->_initialSymbolAbsoluteRect.origin.x;
  y = self->_initialSymbolAbsoluteRect.origin.y;
  width = self->_initialSymbolAbsoluteRect.size.width;
  height = self->_initialSymbolAbsoluteRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end