@interface MockPresentationEnvironment
- (id)presentAlertWithConfigurationHandler:(id)a3;
- (void)dismissAlertWithToken:(id)a3 completionHandler:(id)a4;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation MockPresentationEnvironment

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1B3F97200;
  }

  v8 = a3;
  v9 = self;
  sub_1B3F96658(v8, 0, v7);
  sub_1B3F7BAA8(v7);
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1B3F97200;
  }

  v8 = a3;
  v9 = self;
  sub_1B3F967C0(v9, 0, v7);
  sub_1B3F7BAA8(v7);
}

- (id)presentAlertWithConfigurationHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  v6 = sub_1B3F968DC(v5, v4);
  _Block_release(v4);

  return v6;
}

- (void)dismissAlertWithToken:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1B3F9718C;
  }

  swift_unknownObjectRetain();
  v6 = self;
  sub_1B3F96BB4(v6, v5);
  sub_1B3F7BAA8(v5);
  swift_unknownObjectRelease();
}

@end