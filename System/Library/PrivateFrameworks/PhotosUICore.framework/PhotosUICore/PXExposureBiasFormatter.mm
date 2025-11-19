@interface PXExposureBiasFormatter
- (PXExposureBiasFormatter)init;
@end

@implementation PXExposureBiasFormatter

- (PXExposureBiasFormatter)init
{
  v5.receiver = self;
  v5.super_class = PXExposureBiasFormatter;
  v2 = [(PXExposureBiasFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXExposureBiasFormatter *)v2 setPositiveFormat:@"0.0 ev"];
    [(PXExposureBiasFormatter *)v3 setNegativeFormat:@"-0.0 ev"];
    [(PXExposureBiasFormatter *)v3 setMinimumFractionDigits:0];
    [(PXExposureBiasFormatter *)v3 setMaximumFractionDigits:1];
  }

  return v3;
}

@end