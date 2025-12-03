@interface ClientAudioResult
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ClientAudioResult

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21SiriInformationSearch17ClientAudioResult_vocabularyResult);
  coderCopy = coder;
  selfCopy = self;
  v6 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651840);
  [coderCopy encodeObject:v4 forKey:v6];

  PommesResult.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  v3 = ClientAudioResult.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E1299430](v3, v5);

  return v6;
}

@end