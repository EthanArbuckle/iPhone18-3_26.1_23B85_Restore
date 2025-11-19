@interface AudioItemCandidate.Features
- (_TtCC21SiriInformationSearch18AudioItemCandidate8Features)init;
@end

@implementation AudioItemCandidate.Features

- (_TtCC21SiriInformationSearch18AudioItemCandidate8Features)init
{
  *(&self->super.isa + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioItemCandidate.Features();
  return [(AudioItemCandidate.Features *)&v3 init];
}

@end