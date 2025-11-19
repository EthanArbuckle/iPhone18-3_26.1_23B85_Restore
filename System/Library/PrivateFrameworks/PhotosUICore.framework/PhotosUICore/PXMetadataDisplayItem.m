@interface PXMetadataDisplayItem
+ (id)emptyItem;
- (BOOL)isEmpty;
- (PXMetadataDisplayItem)init;
- (PXMetadataDisplayItem)initWithContent:(id)a3 accessibilityDescription:(id)a4 accessibilityValue:(id)a5 accessibilityIdentifier:(id)a6 accessoryImageSystemName:(id)a7;
@end

@implementation PXMetadataDisplayItem

- (PXMetadataDisplayItem)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMetadataUtilities.m" lineNumber:1562 description:{@"%s is not available as initializer", "-[PXMetadataDisplayItem init]"}];

  abort();
}

- (PXMetadataDisplayItem)initWithContent:(id)a3 accessibilityDescription:(id)a4 accessibilityValue:(id)a5 accessibilityIdentifier:(id)a6 accessoryImageSystemName:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = PXMetadataDisplayItem;
  v17 = [(PXMetadataDisplayItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_content, a3);
    objc_storeStrong(&v18->_accessibilityDescription, a4);
    objc_storeStrong(&v18->_accessibilityValue, a5);
    objc_storeStrong(&v18->_accessibilityIdentifier, a6);
    objc_storeStrong(&v18->_accessoryImageSystemName, a7);
  }

  return v18;
}

- (BOOL)isEmpty
{
  v3 = [(PXMetadataDisplayItem *)self content];
  if ([v3 isEqual:&stru_1F1741150])
  {
    v4 = [(PXMetadataDisplayItem *)self accessibilityDescription];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = [(PXMetadataDisplayItem *)self accessoryImageSystemName];
      v5 = v6 == 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)emptyItem
{
  v2 = [[PXMetadataDisplayItem alloc] initWithContent:&stru_1F1741150 accessibilityDescription:0 accessibilityValue:0 accessibilityIdentifier:0 accessoryImageSystemName:0];

  return v2;
}

@end