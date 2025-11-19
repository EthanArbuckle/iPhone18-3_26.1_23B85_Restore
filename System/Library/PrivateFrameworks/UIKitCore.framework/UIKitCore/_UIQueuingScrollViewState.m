@interface _UIQueuingScrollViewState
- (_UIQueuingScrollViewState)initWithTransitionDirection:(int64_t)a3 view:(id)a4 manual:(BOOL)a5 completion:(id)a6;
- (id)description;
@end

@implementation _UIQueuingScrollViewState

- (_UIQueuingScrollViewState)initWithTransitionDirection:(int64_t)a3 view:(id)a4 manual:(BOOL)a5 completion:(id)a6
{
  v11 = a4;
  v12 = a6;
  if (!v11)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[_UIQueuingScrollViewState initWithTransitionDirection:view:completion:] called without a valid view."];
  }

  v18.receiver = self;
  v18.super_class = _UIQueuingScrollViewState;
  v13 = [(_UITransitionState *)&v18 initWithTransitionDirection:a3 completion:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_view, a4);
    v15 = [UIViewController viewControllerForView:v14->_view];
    viewController = v14->_viewController;
    v14->_viewController = v15;

    v14->_manual = a5;
  }

  return v14;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIQueuingScrollViewState;
  v3 = [(_UITransitionState *)&v8 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  if (self->_manual)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(_UIQueuingScrollViewState *)self view];
  [v4 appendFormat:@"; isManual: %@; view: %@>", v5, v6];

  return v4;
}

@end