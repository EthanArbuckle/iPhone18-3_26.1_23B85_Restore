@interface PUPickerAdditionalSelectionState
- (BOOL)shouldIncludeCaption;
- (BOOL)shouldIncludeLocation;
- (NSNumber)downscalingTargetDimension;
- (PXObservable)observable;
- (PXPhotosFileProviderRegisterConfiguration)registerConfiguration;
- (int64_t)userEncodingPolicy;
- (void)setDownscalingTargetDimension:(id)a3;
- (void)setShouldIncludeCaption:(BOOL)a3;
- (void)setShouldIncludeLocation:(BOOL)a3;
- (void)setUserEncodingPolicy:(int64_t)a3;
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
  v2 = self;
  v3 = sub_1B3821FFC();

  return v3;
}

- (void)setUserEncodingPolicy:(int64_t)a3
{
  v4 = self;
  sub_1B382207C(a3);
}

- (BOOL)shouldIncludeLocation
{
  v2 = self;
  v3 = sub_1B3822448();

  return v3 & 1;
}

- (void)setShouldIncludeLocation:(BOOL)a3
{
  v3 = self;
  sub_1B38224CC();
}

- (BOOL)shouldIncludeCaption
{
  v2 = self;
  v3 = sub_1B3822A18();

  return v3 & 1;
}

- (void)setShouldIncludeCaption:(BOOL)a3
{
  v3 = self;
  sub_1B3822A9C();
}

- (NSNumber)downscalingTargetDimension
{
  v2 = self;
  v3 = sub_1B3822BC0();

  return v3;
}

- (void)setDownscalingTargetDimension:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3822C48(a3);
}

@end