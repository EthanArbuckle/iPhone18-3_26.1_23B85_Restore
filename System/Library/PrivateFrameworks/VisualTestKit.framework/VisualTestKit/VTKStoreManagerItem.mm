@interface VTKStoreManagerItem
+ (id)itemWithView:(id)view;
- (VTKStoreManagerItem)initWithData:(id)data itemType:(unint64_t)type;
- (id)attachWithThestID:(id)d;
- (id)fileNameWithTestID:(id)d;
@end

@implementation VTKStoreManagerItem

+ (id)itemWithView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy _recursivelyNameLayerTree];
  }

  layer = [viewCopy layer];
  v5 = CAEncodeLayerTree();

  v6 = [[VTKStoreManagerItem alloc] initWithData:v5 itemType:0];

  return v6;
}

- (VTKStoreManagerItem)initWithData:(id)data itemType:(unint64_t)type
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = VTKStoreManagerItem;
  v8 = [(VTKStoreManagerItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemData, data);
    v9->_itemType = type;
    if (!type)
    {
      fileExtension = v9->_fileExtension;
      v9->_fileExtension = @"caar";
    }
  }

  return v9;
}

- (id)fileNameWithTestID:(id)d
{
  v4 = NSStringFromVTKAssertID(d);
  fileExtension = [(VTKStoreManagerItem *)self fileExtension];
  v6 = [NSString stringWithFormat:@"%@.%@", v4, fileExtension];

  return v6;
}

- (id)attachWithThestID:(id)d
{
  dCopy = d;
  itemData = [(VTKStoreManagerItem *)self itemData];
  v6 = [XCTAttachment attachmentWithData:itemData];

  v7 = NSStringFromVTKAssertID(dCopy);

  v8 = [(VTKStoreManagerItem *)self fileNameWithTestID:v7];
  [v6 setName:v8];

  return v6;
}

@end