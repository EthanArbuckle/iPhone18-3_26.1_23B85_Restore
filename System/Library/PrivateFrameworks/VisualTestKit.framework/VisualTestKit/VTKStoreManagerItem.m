@interface VTKStoreManagerItem
+ (id)itemWithView:(id)a3;
- (VTKStoreManagerItem)initWithData:(id)a3 itemType:(unint64_t)a4;
- (id)attachWithThestID:(id)a3;
- (id)fileNameWithTestID:(id)a3;
@end

@implementation VTKStoreManagerItem

+ (id)itemWithView:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 _recursivelyNameLayerTree];
  }

  v4 = [v3 layer];
  v5 = CAEncodeLayerTree();

  v6 = [[VTKStoreManagerItem alloc] initWithData:v5 itemType:0];

  return v6;
}

- (VTKStoreManagerItem)initWithData:(id)a3 itemType:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = VTKStoreManagerItem;
  v8 = [(VTKStoreManagerItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemData, a3);
    v9->_itemType = a4;
    if (!a4)
    {
      fileExtension = v9->_fileExtension;
      v9->_fileExtension = @"caar";
    }
  }

  return v9;
}

- (id)fileNameWithTestID:(id)a3
{
  v4 = NSStringFromVTKAssertID(a3);
  v5 = [(VTKStoreManagerItem *)self fileExtension];
  v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (id)attachWithThestID:(id)a3
{
  v4 = a3;
  v5 = [(VTKStoreManagerItem *)self itemData];
  v6 = [XCTAttachment attachmentWithData:v5];

  v7 = NSStringFromVTKAssertID(v4);

  v8 = [(VTKStoreManagerItem *)self fileNameWithTestID:v7];
  [v6 setName:v8];

  return v6;
}

@end