@interface UIInputViewAnimationControllerSlide
- (UIInputViewAnimationControllerSlide)initWithSlide:(int)slide;
- (id)placementForSlideStart:(BOOL)start;
- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement;
- (void)completeAnimationWithHost:(id)host context:(id)context;
- (void)performAnimationWithHost:(id)host context:(id)context;
@end

@implementation UIInputViewAnimationControllerSlide

- (UIInputViewAnimationControllerSlide)initWithSlide:(int)slide
{
  v5.receiver = self;
  v5.super_class = UIInputViewAnimationControllerSlide;
  result = [(UIInputViewAnimationControllerSlide *)&v5 init];
  if (result)
  {
    result->_slide = slide;
  }

  return result;
}

- (id)placementForSlideStart:(BOOL)start
{
  slide = self->_slide;
  if (slide == 5 || slide == 4)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  return [v5 placement];
}

- (id)prepareAnimationWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement
{
  endPlacementCopy = endPlacement;
  placementCopy = placement;
  hostCopy = host;
  v11 = objc_alloc_init(UIInputViewAnimationControllerSlideContext);
  [hostCopy updateToPlacement:placementCopy withNormalAnimationsAndNotifications:0];

  transitioningView = [hostCopy transitioningView];
  v13 = [transitioningView snapshotViewAfterScreenUpdates:0];
  [(UIInputViewAnimationControllerSlideContext *)v11 setSnapshot:v13];

  [hostCopy transitioningFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(UIInputViewAnimationControllerSlide *)self placementForSlideStart:0];
  [hostCopy updateToPlacement:v22 withNormalAnimationsAndNotifications:0];

  [hostCopy transitioningFrame];
  [(UIInputViewAnimationControllerSlideContext *)v11 setSnapshotEndFrame:?];
  v23 = [(UIInputViewAnimationControllerSlide *)self placementForSlideStart:1];
  [hostCopy updateToPlacement:v23 withNormalAnimationsAndNotifications:0];

  snapshot = [(UIInputViewAnimationControllerSlideContext *)v11 snapshot];
  [snapshot setFrame:{v15, v17, v19, v21}];

  [(UIInputViewAnimationControllerSlideContext *)v11 setEndPlacement:endPlacementCopy];

  return v11;
}

- (void)performAnimationWithHost:(id)host context:(id)context
{
  contextCopy = context;
  hostCopy = host;
  [contextCopy snapshotEndFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  snapshot = [contextCopy snapshot];
  [snapshot setFrame:{v7, v9, v11, v13}];

  endPlacement = [contextCopy endPlacement];
  [hostCopy updateToPlacement:endPlacement withNormalAnimationsAndNotifications:1];
}

- (void)completeAnimationWithHost:(id)host context:(id)context
{
  snapshot = [context snapshot];
  [snapshot removeFromSuperview];
}

@end