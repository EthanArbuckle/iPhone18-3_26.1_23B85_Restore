@interface RecordableResult
- (_TtC16SiriAudioSupport16RecordableResult)init;
- (_TtC16SiriAudioSupport16RecordableResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RecordableResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2663EC104(coderCopy);
}

- (_TtC16SiriAudioSupport16RecordableResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2663EC638(coderCopy);

  return v4;
}

- (_TtC16SiriAudioSupport16RecordableResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end