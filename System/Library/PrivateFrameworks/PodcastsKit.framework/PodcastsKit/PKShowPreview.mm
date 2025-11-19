@interface PKShowPreview
- (PKShowPreview)initWithTitle:(id)a3 storeId:(id)a4 feedUrl:(id)a5 uuid:(id)a6;
@end

@implementation PKShowPreview

- (PKShowPreview)initWithTitle:(id)a3 storeId:(id)a4 feedUrl:(id)a5 uuid:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PKShowPreview;
  v14 = [(PKShowPreview *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(PKShowPreview *)v14 setTitle:v10];
    [(PKShowPreview *)v15 setStoreId:v11];
    [(PKShowPreview *)v15 setFeedUrl:v12];
    [(PKShowPreview *)v15 setUuid:v13];
  }

  return v15;
}

@end