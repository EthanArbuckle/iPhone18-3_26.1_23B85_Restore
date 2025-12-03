@interface _UIQueuingScrollViewState
- (_UIQueuingScrollViewState)initWithTransitionDirection:(int64_t)direction view:(id)view manual:(BOOL)manual completion:(id)completion;
- (id)description;
@end

@implementation _UIQueuingScrollViewState

- (_UIQueuingScrollViewState)initWithTransitionDirection:(int64_t)direction view:(id)view manual:(BOOL)manual completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if (!viewCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[_UIQueuingScrollViewState initWithTransitionDirection:view:completion:] called without a valid view."];
  }

  v18.receiver = self;
  v18.super_class = _UIQueuingScrollViewState;
  v13 = [(_UITransitionState *)&v18 initWithTransitionDirection:direction completion:completionCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_view, view);
    v15 = [UIViewController viewControllerForView:v14->_view];
    viewController = v14->_viewController;
    v14->_viewController = v15;

    v14->_manual = manual;
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

  view = [(_UIQueuingScrollViewState *)self view];
  [v4 appendFormat:@"; isManual: %@; view: %@>", v5, view];

  return v4;
}

@end