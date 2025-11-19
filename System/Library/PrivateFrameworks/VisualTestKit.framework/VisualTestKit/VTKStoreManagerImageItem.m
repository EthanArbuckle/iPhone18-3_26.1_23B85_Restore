@interface VTKStoreManagerImageItem
+ (id)itemWithImage:(id)a3 itemType:(unint64_t)a4;
- (VTKStoreManagerImageItem)initWithData:(id)a3 itemType:(unint64_t)a4;
- (id)attachWithThestID:(id)a3;
- (id)fileNameWithTestID:(id)a3;
@end

@implementation VTKStoreManagerImageItem

+ (id)itemWithImage:(id)a3 itemType:(unint64_t)a4
{
  v5 = a3;
  v6 = [VTKStoreManagerImageItem alloc];
  v7 = UIImagePNGRepresentation(v5);

  v8 = [(VTKStoreManagerImageItem *)v6 initWithData:v7 itemType:a4];

  return v8;
}

- (VTKStoreManagerImageItem)initWithData:(id)a3 itemType:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VTKStoreManagerImageItem;
  v8 = [(VTKStoreManagerImageItem *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemData, a3);
    fileExtension = v9->_fileExtension;
    v9->_itemType = a4;
    v9->_fileExtension = @"PNG";

    if (a4 <= 3)
    {
      fileSufix = v9->_fileSufix;
      v9->_fileSufix = &off_C148[a4]->isa;
    }
  }

  return v9;
}

- (id)fileNameWithTestID:(id)a3
{
  v4 = NSStringFromVTKAssertID(a3);
  v5 = [(VTKStoreManagerImageItem *)self fileSufix];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(VTKStoreManagerImageItem *)self fileSufix];
    v8 = [(VTKStoreManagerImageItem *)self fileExtension];
    v9 = [NSString stringWithFormat:@"%@_%@.%@", v4, v7, v8];
  }

  else
  {
    v7 = [(VTKStoreManagerImageItem *)self fileExtension];
    v9 = [NSString stringWithFormat:@"%@.%@", v4, v7];
  }

  return v9;
}

- (id)attachWithThestID:(id)a3
{
  v4 = a3;
  v5 = [(VTKStoreManagerImageItem *)self itemData];
  v6 = [XCTAttachment attachmentWithData:v5 uniformTypeIdentifier:@"public.png"];

  v7 = NSStringFromVTKAssertID(v4);

  v8 = [(VTKStoreManagerImageItem *)self fileNameWithTestID:v7];
  [v6 setName:v8];

  return v6;
}

@end