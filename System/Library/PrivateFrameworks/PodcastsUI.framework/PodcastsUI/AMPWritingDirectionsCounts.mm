@interface AMPWritingDirectionsCounts
+ (AMPWritingDirectionsCounts)zero;
+ (id)add:(id)a3 to:(id)a4;
- (AMPWritingDirectionsCounts)init;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation AMPWritingDirectionsCounts

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21B4CA278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_21B4A0104(v8);

  sub_21B3F9F3C(v8);
  return v6;
}

+ (id)add:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_21B4A0B7C(v5, v6);

  return v7;
}

+ (AMPWritingDirectionsCounts)zero
{
  if (qword_27CD86538 != -1)
  {
    swift_once();
  }

  v3 = qword_2811FEC40;

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_21B4A04F4();

  v3 = sub_21B4C96C8();

  return v3;
}

- (AMPWritingDirectionsCounts)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end