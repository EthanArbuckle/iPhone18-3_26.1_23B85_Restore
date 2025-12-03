@interface SXTransitionDataSourceNode
- (BOOL)isTransitionable;
- (BOOL)transitionViewIsVisible;
- (BOOL)transitionViewShouldFadeInContent;
- (CGRect)transitionContainerFrame;
- (CGRect)transitionContentFrame;
- (CGRect)transitionVisibleFrame;
- (SXTransitionDataSourceNode)initWithComponentView:(id)view transitionType:(unint64_t)type usesThumbnail:(BOOL)thumbnail;
- (UIView)transitionContainerView;
- (UIView)transitionContentView;
@end

@implementation SXTransitionDataSourceNode

- (SXTransitionDataSourceNode)initWithComponentView:(id)view transitionType:(unint64_t)type usesThumbnail:(BOOL)thumbnail
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = SXTransitionDataSourceNode;
  v10 = [(SXTransitionDataSourceNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_componentView, view);
    v11->_transitionType = type;
    v11->_usesThumbnail = thumbnail;
  }

  return v11;
}

- (UIView)transitionContainerView
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  transitionContainerView = [componentView transitionContainerView];

  return transitionContainerView;
}

- (UIView)transitionContentView
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  transitionContentView = [componentView transitionContentView];

  return transitionContentView;
}

- (BOOL)transitionViewIsVisible
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  transitionViewIsVisible = [componentView transitionViewIsVisible];

  return transitionViewIsVisible;
}

- (BOOL)transitionViewShouldFadeInContent
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  transitionViewShouldFadeInContent = [componentView transitionViewShouldFadeInContent];

  return transitionViewShouldFadeInContent;
}

- (CGRect)transitionVisibleFrame
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  [componentView transitionVisibleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)transitionContainerFrame
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  [componentView transitionContainerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)transitionContentFrame
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  [componentView transitionContentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)isTransitionable
{
  componentView = [(SXTransitionDataSourceNode *)self componentView];
  isTransitionable = [componentView isTransitionable];

  return isTransitionable;
}

@end