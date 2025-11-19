@interface PhotosDynamicHeaderContentView.Proxy
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtCC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView5Proxy)init;
- (id)makeInternalMenuWithPresentationEnvironment:(id)a3;
@end

@implementation PhotosDynamicHeaderContentView.Proxy

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = a3;
    v10 = a4;
    v11 = self;
    v12 = sub_1A41AAB20(v9);
  }

  else
  {
    return 0;
  }

  return v12;
}

- (id)makeInternalMenuWithPresentationEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1A41A4D40(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (_TtCC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView5Proxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end