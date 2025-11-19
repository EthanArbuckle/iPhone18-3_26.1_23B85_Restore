@interface UIZoomTransitionOptions
- (UIZoomTransitionOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIZoomTransitionOptions *)self interactiveDismissShouldBegin];
  [v4 setInteractiveDismissShouldBegin:v5];

  v6 = [(UIZoomTransitionOptions *)self alignmentRectProvider];
  [v4 setAlignmentRectProvider:v6];

  v7 = [(UIZoomTransitionOptions *)self dimmingColor];
  [v4 setDimmingColor:v7];

  v8 = [(UIZoomTransitionOptions *)self dimmingVisualEffect];
  [v4 setDimmingVisualEffect:v8];

  [v4 set_recedesPresentingView:{-[UIZoomTransitionOptions _recedesPresentingView](self, "_recedesPresentingView")}];
  return v4;
}

@end