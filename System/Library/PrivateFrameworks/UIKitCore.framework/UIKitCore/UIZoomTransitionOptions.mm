@interface UIZoomTransitionOptions
- (UIZoomTransitionOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIZoomTransitionOptions

- (UIZoomTransitionOptions)init
{
  v5.receiver = self;
  v5.super_class = UIZoomTransitionOptions;
  v2 = [(UIZoomTransitionOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIZoomTransitionOptions *)v2 set_recedesPresentingView:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  interactiveDismissShouldBegin = [(UIZoomTransitionOptions *)self interactiveDismissShouldBegin];
  [v4 setInteractiveDismissShouldBegin:interactiveDismissShouldBegin];

  alignmentRectProvider = [(UIZoomTransitionOptions *)self alignmentRectProvider];
  [v4 setAlignmentRectProvider:alignmentRectProvider];

  dimmingColor = [(UIZoomTransitionOptions *)self dimmingColor];
  [v4 setDimmingColor:dimmingColor];

  dimmingVisualEffect = [(UIZoomTransitionOptions *)self dimmingVisualEffect];
  [v4 setDimmingVisualEffect:dimmingVisualEffect];

  [v4 set_recedesPresentingView:{-[UIZoomTransitionOptions _recedesPresentingView](self, "_recedesPresentingView")}];
  return v4;
}

@end