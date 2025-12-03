@interface UIView.InProcessAnimationState
- (BOOL)shouldAnimatePropertyWithKey:(id)key;
- (id)actionForLayer:(id)layer forKey:(id)key forView:(id)view;
@end

@implementation UIView.InProcessAnimationState

- (BOOL)shouldAnimatePropertyWithKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  v4 = sub_18A4A7288();
  v6 = v5;
  v7 = qword_1ED48EE58;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  if (sub_188A551E4(v4, v6, qword_1ED48EE60))
  {

    return 1;
  }

  else
  {
    v10 = sub_18A4A7258();
    v12.receiver = selfCopy;
    v12.super_class = _s23InProcessAnimationStateCMa();
    v11 = [(UIViewAnimationState *)&v12 shouldAnimatePropertyWithKey:v10];

    return v11;
  }
}

- (id)actionForLayer:(id)layer forKey:(id)key forView:(id)view
{
  if (key)
  {
    v8 = sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  layerCopy = layer;
  viewCopy = view;
  selfCopy = self;
  v14 = sub_188A53044(layer, v8, v10, view);

  return v14;
}

@end