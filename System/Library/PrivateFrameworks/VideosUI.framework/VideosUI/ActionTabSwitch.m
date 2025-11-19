@interface ActionTabSwitch
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation ActionTabSwitch

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1E3835F0C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_1E3FC7580(v9, v6, v7);
  sub_1E34AF594(v6);
}

@end