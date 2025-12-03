@interface DocumentXPCEnvelope
- (NSFileHandle)_fileHandle;
- (NSURL)_url;
- (_TtC4Sage19DocumentXPCEnvelope)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)set_fileHandle:(id)handle;
- (void)set_url:(id)set_url;
@end

@implementation DocumentXPCEnvelope

- (NSURL)_url
{
  v2 = sub_1B5EA42B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5E3A658(v6);
  v7 = sub_1B5EA4260();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (void)set_url:(id)set_url
{
  v4 = sub_1B5EA42B0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4290();
  selfCopy = self;
  sub_1B5E3A774(v7);
}

- (NSFileHandle)_fileHandle
{
  v2 = sub_1B5E3A838();

  return v2;
}

- (void)set_fileHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_1B5E3A8A4(handleCopy);
}

- (_TtC4Sage19DocumentXPCEnvelope)initWithCoder:(id)coder
{
  coderCopy = coder;
  DocumentXPCEnvelope.init(coder:)();
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DocumentXPCEnvelope.encode(with:)(coderCopy);
}

@end