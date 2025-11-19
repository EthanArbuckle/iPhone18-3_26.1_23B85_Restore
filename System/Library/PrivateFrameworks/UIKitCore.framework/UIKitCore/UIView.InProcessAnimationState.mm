@interface UIView.InProcessAnimationState
- (BOOL)shouldAnimatePropertyWithKey:(id)a3;
- (id)actionForLayer:(id)a3 forKey:(id)a4 forView:(id)a5;
@end

@implementation UIView.InProcessAnimationState

- (BOOL)shouldAnimatePropertyWithKey:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = sub_18A4A7288();
  v6 = v5;
  v7 = qword_1ED48EE58;
  v8 = self;
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
    v12.receiver = v8;
    v12.super_class = _s23InProcessAnimationStateCMa();
    v11 = [(UIViewAnimationState *)&v12 shouldAnimatePropertyWithKey:v10];

    return v11;
  }
}

- (id)actionForLayer:(id)a3 forKey:(id)a4 forView:(id)a5
{
  if (a4)
  {
    v8 = sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = sub_188A53044(a3, v8, v10, a5);

  return v14;
}

@end