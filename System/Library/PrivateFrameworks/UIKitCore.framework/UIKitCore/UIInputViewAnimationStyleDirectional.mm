@interface UIInputViewAnimationStyleDirectional
+ (id)animationStyleAnimated:(BOOL)animated duration:(double)duration outDirection:(int)direction;
- (BOOL)isEqual:(id)equal;
- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement;
- (id)copyWithZone:(_NSZone *)zone;
- (id)endPlacementForInputViewSet:(id)set windowScene:(id)scene;
- (id)startPlacementForInputViewSet:(id)set currentPlacement:(id)placement windowScene:(id)scene;
@end

@implementation UIInputViewAnimationStyleDirectional

+ (id)animationStyleAnimated:(BOOL)animated duration:(double)duration outDirection:(int)direction
{
  v5 = *&direction;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___UIInputViewAnimationStyleDirectional;
  v6 = objc_msgSendSuper2(&v8, sel_animationStyleAnimated_duration_, animated, duration);
  [v6 setOutDirection:v5];

  return v6;
}

- (id)startPlacementForInputViewSet:(id)set currentPlacement:(id)placement windowScene:(id)scene
{
  placementCopy = placement;
  v13.receiver = self;
  v13.super_class = UIInputViewAnimationStyleDirectional;
  v9 = [(UIInputViewAnimationStyle *)&v13 startPlacementForInputViewSet:set currentPlacement:placementCopy windowScene:scene];
  if ([v9 isMemberOfClass:objc_opt_class()])
  {
    [(UIInputViewAnimationStyleDirectional *)self outDirection];
    placement = [objc_opt_class() placement];
  }

  else
  {
    placement = v9;
  }

  v11 = placement;

  return v11;
}

- (id)endPlacementForInputViewSet:(id)set windowScene:(id)scene
{
  v9.receiver = self;
  v9.super_class = UIInputViewAnimationStyleDirectional;
  v5 = [(UIInputViewAnimationStyle *)&v9 endPlacementForInputViewSet:set windowScene:scene];
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    [(UIInputViewAnimationStyleDirectional *)self outDirection];
    placement = [objc_opt_class() placement];
  }

  else
  {
    placement = v5;
  }

  v7 = placement;

  return v7;
}

- (id)controllerForStartPlacement:(id)placement endPlacement:(id)endPlacement
{
  placementCopy = placement;
  endPlacementCopy = endPlacement;
  if ([placementCopy showsInputViews] && objc_msgSend(endPlacementCopy, "showsInputViews") && (-[UIInputViewAnimationStyleDirectional outDirection](self, "outDirection") == 4 || -[UIInputViewAnimationStyleDirectional outDirection](self, "outDirection") == 5))
  {
    v8 = [[UIInputViewAnimationControllerSlide alloc] initWithSlide:[(UIInputViewAnimationStyleDirectional *)self outDirection]];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIInputViewAnimationStyleDirectional;
    v8 = [(UIInputViewAnimationStyle *)&v11 controllerForStartPlacement:placementCopy endPlacement:endPlacementCopy];
  }

  v9 = v8;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UIInputViewAnimationStyleDirectional;
  if ([(UIInputViewAnimationStyle *)&v8 isEqual:equalCopy])
  {
    outDirection = [(UIInputViewAnimationStyleDirectional *)self outDirection];
    v6 = outDirection == [equalCopy outDirection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIInputViewAnimationStyleDirectional;
  v4 = [(UIInputViewAnimationStyle *)&v6 copyWithZone:zone];
  [v4 setOutDirection:{-[UIInputViewAnimationStyleDirectional outDirection](self, "outDirection")}];
  return v4;
}

@end