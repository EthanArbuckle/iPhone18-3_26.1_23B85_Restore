@interface RecordableResult
- (_TtC16SiriAudioSupport16RecordableResult)init;
- (_TtC16SiriAudioSupport16RecordableResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RecordableResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2663EC104(v4);
}

- (_TtC16SiriAudioSupport16RecordableResult)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2663EC638(v3);

  return v4;
}

- (_TtC16SiriAudioSupport16RecordableResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end