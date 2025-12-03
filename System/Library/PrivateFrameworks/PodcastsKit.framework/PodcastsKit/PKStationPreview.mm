@interface PKStationPreview
- (PKStationPreview)initWithTitle:(id)title uuid:(id)uuid;
@end

@implementation PKStationPreview

- (PKStationPreview)initWithTitle:(id)title uuid:(id)uuid
{
  titleCopy = title;
  uuidCopy = uuid;
  v11.receiver = self;
  v11.super_class = PKStationPreview;
  v8 = [(PKStationPreview *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKStationPreview *)v8 setTitle:titleCopy];
    [(PKStationPreview *)v9 setUuid:uuidCopy];
  }

  return v9;
}

@end