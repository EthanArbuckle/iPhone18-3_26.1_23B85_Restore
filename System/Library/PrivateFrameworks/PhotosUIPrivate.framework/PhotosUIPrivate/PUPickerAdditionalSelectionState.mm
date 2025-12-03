@interface PUPickerAdditionalSelectionState
- (BOOL)shouldIncludeCaption;
- (BOOL)shouldIncludeLocation;
- (NSNumber)downscalingTargetDimension;
- (PXObservable)observable;
- (PXPhotosFileProviderRegisterConfiguration)registerConfiguration;
- (int64_t)userEncodingPolicy;
- (void)setDownscalingTargetDimension:(id)dimension;
- (void)setShouldIncludeCaption:(BOOL)caption;
- (void)setShouldIncludeLocation:(BOOL)location;
- (void)setUserEncodingPolicy:(int64_t)policy;
@end

@implementation PUPickerAdditionalSelectionState

- (PXObservable)observable
{
  v2 = sub_1B3821A38();

  return v2;
}

- (PXPhotosFileProviderRegisterConfiguration)registerConfiguration
{
  v2 = sub_1B3821A78();

  return v2;
}

- (int64_t)userEncodingPolicy
{
  selfCopy = self;
  v3 = sub_1B3821FFC();

  return v3;
}

- (void)setUserEncodingPolicy:(int64_t)policy
{
  selfCopy = self;
  sub_1B382207C(policy);
}

- (BOOL)shouldIncludeLocation
{
  selfCopy = self;
  v3 = sub_1B3822448();

  return v3 & 1;
}

- (void)setShouldIncludeLocation:(BOOL)location
{
  selfCopy = self;
  sub_1B38224CC();
}

- (BOOL)shouldIncludeCaption
{
  selfCopy = self;
  v3 = sub_1B3822A18();

  return v3 & 1;
}

- (void)setShouldIncludeCaption:(BOOL)caption
{
  selfCopy = self;
  sub_1B3822A9C();
}

- (NSNumber)downscalingTargetDimension
{
  selfCopy = self;
  v3 = sub_1B3822BC0();

  return v3;
}

- (void)setDownscalingTargetDimension:(id)dimension
{
  dimensionCopy = dimension;
  selfCopy = self;
  sub_1B3822C48(dimension);
}

@end