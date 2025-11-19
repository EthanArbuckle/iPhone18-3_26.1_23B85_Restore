@interface DocumentXPCEnvelope
- (NSFileHandle)_fileHandle;
- (NSURL)_url;
- (_TtC4Sage19DocumentXPCEnvelope)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)set_fileHandle:(id)a3;
- (void)set_url:(id)a3;
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

- (void)set_url:(id)a3
{
  v4 = sub_1B5EA42B0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4290();
  v8 = self;
  sub_1B5E3A774(v7);
}

- (NSFileHandle)_fileHandle
{
  v2 = sub_1B5E3A838();

  return v2;
}

- (void)set_fileHandle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B5E3A8A4(v4);
}

- (_TtC4Sage19DocumentXPCEnvelope)initWithCoder:(id)a3
{
  v3 = a3;
  DocumentXPCEnvelope.init(coder:)();
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DocumentXPCEnvelope.encode(with:)(v4);
}

@end