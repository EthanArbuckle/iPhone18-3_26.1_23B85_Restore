@interface SXTransitionDataSourceNode
- (BOOL)isTransitionable;
- (BOOL)transitionViewIsVisible;
- (BOOL)transitionViewShouldFadeInContent;
- (CGRect)transitionContainerFrame;
- (CGRect)transitionContentFrame;
- (CGRect)transitionVisibleFrame;
- (SXTransitionDataSourceNode)initWithComponentView:(id)a3 transitionType:(unint64_t)a4 usesThumbnail:(BOOL)a5;
- (UIView)transitionContainerView;
- (UIView)transitionContentView;
@end

@implementation SXTransitionDataSourceNode

- (SXTransitionDataSourceNode)initWithComponentView:(id)a3 transitionType:(unint64_t)a4 usesThumbnail:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SXTransitionDataSourceNode;
  v10 = [(SXTransitionDataSourceNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_componentView, a3);
    v11->_transitionType = a4;
    v11->_usesThumbnail = a5;
  }

  return v11;
}

- (UIView)transitionContainerView
{
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  v3 = [v2 transitionContainerView];

  return v3;
}

- (UIView)transitionContentView
{
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  v3 = [v2 transitionContentView];

  return v3;
}

- (BOOL)transitionViewIsVisible
{
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  v3 = [v2 transitionViewIsVisible];

  return v3;
}

- (BOOL)transitionViewShouldFadeInContent
{
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  v3 = [v2 transitionViewShouldFadeInContent];

  return v3;
}

- (CGRect)transitionVisibleFrame
{
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  [v2 transitionVisibleFrame];
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
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  [v2 transitionContainerFrame];
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
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  [v2 transitionContentFrame];
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
  v2 = [(SXTransitionDataSourceNode *)self componentView];
  v3 = [v2 isTransitionable];

  return v3;
}

@end