@interface ShazamMatcher.ThrottledSubscriber
- (_TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber)init;
- (void)session:(id)session didFindMatch:(id)match;
- (void)session:(id)session didNotFindMatchForSignature:(id)signature error:(id)error;
@end

@implementation ShazamMatcher.ThrottledSubscriber

- (_TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)session didFindMatch:(id)match
{
  sessionCopy = session;
  matchCopy = match;
  selfCopy = self;
  sub_1D914217C(matchCopy);
}

- (void)session:(id)session didNotFindMatchForSignature:(id)signature error:(id)error
{
  sessionCopy = session;
  signatureCopy = signature;
  selfCopy = self;
  errorCopy = error;
  sub_1D9142578(error);
}

@end