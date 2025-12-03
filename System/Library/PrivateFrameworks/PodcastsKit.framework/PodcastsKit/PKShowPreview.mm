@interface PKShowPreview
- (PKShowPreview)initWithTitle:(id)title storeId:(id)id feedUrl:(id)url uuid:(id)uuid;
@end

@implementation PKShowPreview

- (PKShowPreview)initWithTitle:(id)title storeId:(id)id feedUrl:(id)url uuid:(id)uuid
{
  titleCopy = title;
  idCopy = id;
  urlCopy = url;
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = PKShowPreview;
  v14 = [(PKShowPreview *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(PKShowPreview *)v14 setTitle:titleCopy];
    [(PKShowPreview *)v15 setStoreId:idCopy];
    [(PKShowPreview *)v15 setFeedUrl:urlCopy];
    [(PKShowPreview *)v15 setUuid:uuidCopy];
  }

  return v15;
}

@end