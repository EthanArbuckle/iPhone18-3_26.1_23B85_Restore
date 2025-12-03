@interface _UIViewAnimationDelegate
- (_UIViewAnimationDelegate)initWithCompletionBlock:(id)block;
@end

@implementation _UIViewAnimationDelegate

- (_UIViewAnimationDelegate)initWithCompletionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = _UIViewAnimationDelegate;
  v5 = [(_UIViewAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    completionBlock = v5->_completionBlock;
    v5->_completionBlock = v6;
  }

  return v5;
}

@end