@interface ClientAudioResult
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ClientAudioResult

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult);
  v5 = a3;
  v7 = self;
  v6 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651840);
  [v5 encodeObject:v4 forKey:v6];

  PommesResult.encode(with:)(v5);
}

- (NSString)description
{
  v2 = self;
  v3 = ClientAudioResult.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E1299430](v3, v5);

  return v6;
}

@end