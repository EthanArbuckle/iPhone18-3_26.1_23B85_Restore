@interface WFEmailTrigger.AddressFetcher
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetchDidFinish:(id)finish;
@end

@implementation WFEmailTrigger.AddressFetcher

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  sub_1CA25B3D0(0, &unk_1EC446880, 0x1E6996360);
  v6 = sub_1CA94C658();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA580854(fetch, v6);
  swift_unknownObjectRelease();
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1CA580C80();
  swift_unknownObjectRelease();
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_1CA580F20(fetch, errorCopy);
  swift_unknownObjectRelease();
}

@end