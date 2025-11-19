@interface _UIViewAnimationDelegate
- (_UIViewAnimationDelegate)initWithCompletionBlock:(id)a3;
@end

@implementation _UIViewAnimationDelegate

- (_UIViewAnimationDelegate)initWithCompletionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIViewAnimationDelegate;
  v5 = [(_UIViewAnimationDelegate *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    completionBlock = v5->_completionBlock;
    v5->_completionBlock = v6;
  }

  return v5;
}

@end