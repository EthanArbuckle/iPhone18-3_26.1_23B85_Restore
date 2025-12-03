@interface PXLemonadeFeatureAvailabilityProcessingViewFactory
+ (id)makeProcessingViewWithFooterViewModel:(id)model;
- (PXLemonadeFeatureAvailabilityProcessingViewFactory)init;
@end

@implementation PXLemonadeFeatureAvailabilityProcessingViewFactory

- (PXLemonadeFeatureAvailabilityProcessingViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LemonadeFeatureAvailabilityProcessingViewFactory();
  return [(PXLemonadeFeatureAvailabilityProcessingViewFactory *)&v3 init];
}

+ (id)makeProcessingViewWithFooterViewModel:(id)model
{
  modelCopy = model;
  v4 = sub_1A45D8968(modelCopy);

  return v4;
}

@end