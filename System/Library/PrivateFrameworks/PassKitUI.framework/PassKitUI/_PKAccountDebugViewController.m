@interface _PKAccountDebugViewController
- (_PKAccountDebugViewController)initWithCoder:(id)a3;
- (_PKAccountDebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dictionaryRepresentation;
- (void)loadView;
@end

@implementation _PKAccountDebugViewController

- (_PKAccountDebugViewController)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD1A7D7C(type metadata accessor for AccountDebugViewController, &OBJC_IVAR____PKAccountDebugViewController_hostingVC, MEMORY[0x1E69B96A8]);
}

- (id)dictionaryRepresentation
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____PKAccountDebugViewController_debugModel);
  v3 = self;
  v4 = v2;
  v5 = sub_1BD763778();

  sub_1BD1A8284(v5);

  v6 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v7 = sub_1BE052224();

  v8 = [v6 initWithDictionary:v7 copyItems:0];

  return v8;
}

- (_PKAccountDebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end