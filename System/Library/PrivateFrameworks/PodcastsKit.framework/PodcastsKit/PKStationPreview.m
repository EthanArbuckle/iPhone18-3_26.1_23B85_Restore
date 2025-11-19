@interface PKStationPreview
- (PKStationPreview)initWithTitle:(id)a3 uuid:(id)a4;
@end

@implementation PKStationPreview

- (PKStationPreview)initWithTitle:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKStationPreview;
  v8 = [(PKStationPreview *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKStationPreview *)v8 setTitle:v6];
    [(PKStationPreview *)v9 setUuid:v7];
  }

  return v9;
}

@end