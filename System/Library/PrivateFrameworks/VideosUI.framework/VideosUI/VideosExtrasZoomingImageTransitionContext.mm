@interface VideosExtrasZoomingImageTransitionContext
- (VideosExtrasZoomingImageTransitionContext)initWithZoomingImageView:(id)view itemIndex:(unint64_t)index appearState:(unint64_t)state isInteractive:(BOOL)interactive;
@end

@implementation VideosExtrasZoomingImageTransitionContext

- (VideosExtrasZoomingImageTransitionContext)initWithZoomingImageView:(id)view itemIndex:(unint64_t)index appearState:(unint64_t)state isInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = VideosExtrasZoomingImageTransitionContext;
  v11 = [(VideosExtrasZoomingImageTransitionContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(VideosExtrasZoomingImageTransitionContext *)v11 setZoomingImageView:viewCopy];
    [(VideosExtrasZoomingImageTransitionContext *)v12 setItemIndex:index];
    [(VideosExtrasZoomingImageTransitionContext *)v12 setAppearState:state];
    [(VideosExtrasZoomingImageTransitionContext *)v12 setInteractive:interactiveCopy];
  }

  return v12;
}

@end