@interface VideosExtrasZoomingImageTransitionContext
- (VideosExtrasZoomingImageTransitionContext)initWithZoomingImageView:(id)a3 itemIndex:(unint64_t)a4 appearState:(unint64_t)a5 isInteractive:(BOOL)a6;
@end

@implementation VideosExtrasZoomingImageTransitionContext

- (VideosExtrasZoomingImageTransitionContext)initWithZoomingImageView:(id)a3 itemIndex:(unint64_t)a4 appearState:(unint64_t)a5 isInteractive:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = VideosExtrasZoomingImageTransitionContext;
  v11 = [(VideosExtrasZoomingImageTransitionContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(VideosExtrasZoomingImageTransitionContext *)v11 setZoomingImageView:v10];
    [(VideosExtrasZoomingImageTransitionContext *)v12 setItemIndex:a4];
    [(VideosExtrasZoomingImageTransitionContext *)v12 setAppearState:a5];
    [(VideosExtrasZoomingImageTransitionContext *)v12 setInteractive:v6];
  }

  return v12;
}

@end