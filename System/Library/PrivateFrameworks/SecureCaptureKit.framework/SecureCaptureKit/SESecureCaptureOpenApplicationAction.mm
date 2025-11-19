@interface SESecureCaptureOpenApplicationAction
- (NSSet)launchActions;
- (SESecureCaptureOpenApplicationAction)init;
- (SESecureCaptureOpenApplicationAction)initWithCoder:(id)a3;
- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)a3 responder:(id)a4;
- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (SESecureCaptureOpenApplicationAction)initWithURL:(id)a3 responder:(id)a4;
- (SESecureCaptureOpenApplicationAction)initWithUserActivity:(id)a3 responder:(id)a4;
- (SESecureCaptureOpenApplicationAction)initWithXPCDictionary:(id)a3;
@end

@implementation SESecureCaptureOpenApplicationAction

- (SESecureCaptureOpenApplicationAction)init
{
  v3.receiver = self;
  v3.super_class = SESecureCaptureOpenApplicationAction;
  return [(SESecureCaptureOpenApplicationAction *)&v3 initWithInfo:0 responder:0];
}

- (SESecureCaptureOpenApplicationAction)initWithURL:(id)a3 responder:(id)a4
{
  v6 = sub_264F13014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264F13004();
  v11 = objc_allocWithZone(MEMORY[0x277CF0C80]);
  v12 = a4;
  v13 = [v11 init];
  v14 = sub_264F12FD4();
  [v13 setObject:v14 forSetting:0];

  v17.receiver = self;
  v17.super_class = SESecureCaptureOpenApplicationAction;
  v15 = [(SESecureCaptureOpenApplicationAction *)&v17 initWithInfo:v13 responder:v12];

  (*(v7 + 8))(v10, v6);
  return v15;
}

- (SESecureCaptureOpenApplicationAction)initWithUserActivity:(id)a3 responder:(id)a4
{
  v5 = a3;
  v6 = a4;
  return SESecureCaptureOpenApplicationAction.init(userActivity:responder:)(v5, a4);
}

- (SESecureCaptureOpenApplicationAction)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAction;
  v3 = a3;
  v4 = [(SESecureCaptureOpenApplicationAction *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

- (SESecureCaptureOpenApplicationAction)initWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = SESecureCaptureOpenApplicationAction;
  swift_unknownObjectRetain();
  v4 = [(SESecureCaptureOpenApplicationAction *)&v6 initWithXPCDictionary:a3];
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

- (NSSet)launchActions
{
  v2 = self;
  SESecureCaptureOpenApplicationAction.launchActions.getter();

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  return v3;
}

- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)a3 responder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SESecureCaptureOpenApplicationAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end