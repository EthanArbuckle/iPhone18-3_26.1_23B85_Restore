@interface WFEmailTrigger.AddressFetcher
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetchDidFinish:(id)a3;
@end

@implementation WFEmailTrigger.AddressFetcher

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  sub_1CA25B3D0(0, &unk_1EC446880, 0x1E6996360);
  v6 = sub_1CA94C658();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1CA580854(a3, v6);
  swift_unknownObjectRelease();
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1CA580C80();
  swift_unknownObjectRelease();
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  swift_unknownObjectRetain();
  v8 = a4;
  v7 = self;
  sub_1CA580F20(a3, v8);
  swift_unknownObjectRelease();
}

@end