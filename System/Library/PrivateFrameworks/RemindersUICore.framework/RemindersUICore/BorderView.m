@interface BorderView
- (_TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF1605510BorderView)init;
- (_TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF1605510BorderView)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF1605510BorderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BorderView

- (_TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF1605510BorderView)init
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = [(BorderView *)&v9 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v8[4] = sub_21D1E1504;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D114B20;
  v8[3] = &block_descriptor_35;
  v4 = _Block_copy(v8);
  v5 = v2;
  v6 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  [(BorderView *)v5 setBackgroundColor:v6];

  return v5;
}

- (_TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF1605510BorderView)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21D1E172C();
}

- (_TtC15RemindersUICoreP33_679F6607466DBBD5F847885A7EF1605510BorderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end