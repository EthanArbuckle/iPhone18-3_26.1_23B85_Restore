@interface _UIImageViewPendingSymbolContentTransition
+ (id)transitionWithTransition:(id)transition sourceSymbolImage:(id)image targetSymbolImage:(id)symbolImage options:(id)options completion:(id)completion;
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

+ (id)transitionWithTransition:(id)transition sourceSymbolImage:(id)image targetSymbolImage:(id)symbolImage options:(id)options completion:(id)completion
{
  transitionCopy = transition;
  imageCopy = image;
  symbolImageCopy = symbolImage;
  optionsCopy = options;
  completionCopy = completion;
  v16 = objc_opt_new();
  v17 = v16[2];
  v16[2] = transitionCopy;
  v18 = transitionCopy;

  v19 = v16[5];
  v16[5] = imageCopy;
  v20 = imageCopy;

  v21 = v16[6];
  v16[6] = symbolImageCopy;
  v22 = symbolImageCopy;

  v23 = v16[3];
  v16[3] = optionsCopy;
  v24 = optionsCopy;

  v25 = _Block_copy(completionCopy);
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