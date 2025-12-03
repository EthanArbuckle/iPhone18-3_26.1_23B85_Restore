@interface PhotosDetailsDateTimeEditViewFactory
+ (id)dateTimeViewControllerWithAssets:(id)assets completion:(id)completion;
- (_TtC12PhotosUICore36PhotosDetailsDateTimeEditViewFactory)init;
@end

@implementation PhotosDetailsDateTimeEditViewFactory

+ (id)dateTimeViewControllerWithAssets:(id)assets completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  _s12PhotosUICore0A30DetailsDateTimeEditViewFactoryC04dateeG10Controller6assets10completionSo06UIViewJ0CSo13PHFetchResultCySo7PHAssetCG_ySbctFZ_0(assets, sub_1A3DB5554, v6);
}

- (_TtC12PhotosUICore36PhotosDetailsDateTimeEditViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosDetailsDateTimeEditViewFactory();
  return [(PhotosDetailsDateTimeEditViewFactory *)&v3 init];
}

@end