@interface VTKStoreManagerImageItem
+ (id)itemWithImage:(id)image itemType:(unint64_t)type;
- (VTKStoreManagerImageItem)initWithData:(id)data itemType:(unint64_t)type;
- (id)attachWithThestID:(id)d;
- (id)fileNameWithTestID:(id)d;
@end

@implementation VTKStoreManagerImageItem

+ (id)itemWithImage:(id)image itemType:(unint64_t)type
{
  imageCopy = image;
  v6 = [VTKStoreManagerImageItem alloc];
  v7 = UIImagePNGRepresentation(imageCopy);

  v8 = [(VTKStoreManagerImageItem *)v6 initWithData:v7 itemType:type];

  return v8;
}

- (VTKStoreManagerImageItem)initWithData:(id)data itemType:(unint64_t)type
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = VTKStoreManagerImageItem;
  v8 = [(VTKStoreManagerImageItem *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemData, data);
    fileExtension = v9->_fileExtension;
    v9->_itemType = type;
    v9->_fileExtension = @"PNG";

    if (type <= 3)
    {
      fileSufix = v9->_fileSufix;
      v9->_fileSufix = &off_C148[type]->isa;
    }
  }

  return v9;
}

- (id)fileNameWithTestID:(id)d
{
  v4 = NSStringFromVTKAssertID(d);
  fileSufix = [(VTKStoreManagerImageItem *)self fileSufix];
  v6 = [fileSufix length];

  if (v6)
  {
    fileSufix2 = [(VTKStoreManagerImageItem *)self fileSufix];
    fileExtension = [(VTKStoreManagerImageItem *)self fileExtension];
    v9 = [NSString stringWithFormat:@"%@_%@.%@", v4, fileSufix2, fileExtension];
  }

  else
  {
    fileSufix2 = [(VTKStoreManagerImageItem *)self fileExtension];
    v9 = [NSString stringWithFormat:@"%@.%@", v4, fileSufix2];
  }

  return v9;
}

- (id)attachWithThestID:(id)d
{
  dCopy = d;
  itemData = [(VTKStoreManagerImageItem *)self itemData];
  v6 = [XCTAttachment attachmentWithData:itemData uniformTypeIdentifier:@"public.png"];

  v7 = NSStringFromVTKAssertID(dCopy);

  v8 = [(VTKStoreManagerImageItem *)self fileNameWithTestID:v7];
  [v6 setName:v8];

  return v6;
}

@end