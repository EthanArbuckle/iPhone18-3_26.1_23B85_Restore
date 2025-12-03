@interface PXMetadataDisplayItem
+ (id)emptyItem;
- (BOOL)isEmpty;
- (PXMetadataDisplayItem)init;
- (PXMetadataDisplayItem)initWithContent:(id)content accessibilityDescription:(id)description accessibilityValue:(id)value accessibilityIdentifier:(id)identifier accessoryImageSystemName:(id)name;
@end

@implementation PXMetadataDisplayItem

- (PXMetadataDisplayItem)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMetadataUtilities.m" lineNumber:1562 description:{@"%s is not available as initializer", "-[PXMetadataDisplayItem init]"}];

  abort();
}

- (PXMetadataDisplayItem)initWithContent:(id)content accessibilityDescription:(id)description accessibilityValue:(id)value accessibilityIdentifier:(id)identifier accessoryImageSystemName:(id)name
{
  contentCopy = content;
  descriptionCopy = description;
  valueCopy = value;
  identifierCopy = identifier;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = PXMetadataDisplayItem;
  v17 = [(PXMetadataDisplayItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_content, content);
    objc_storeStrong(&v18->_accessibilityDescription, description);
    objc_storeStrong(&v18->_accessibilityValue, value);
    objc_storeStrong(&v18->_accessibilityIdentifier, identifier);
    objc_storeStrong(&v18->_accessoryImageSystemName, name);
  }

  return v18;
}

- (BOOL)isEmpty
{
  content = [(PXMetadataDisplayItem *)self content];
  if ([content isEqual:&stru_1F1741150])
  {
    accessibilityDescription = [(PXMetadataDisplayItem *)self accessibilityDescription];
    if (accessibilityDescription)
    {
      v5 = 0;
    }

    else
    {
      accessoryImageSystemName = [(PXMetadataDisplayItem *)self accessoryImageSystemName];
      v5 = accessoryImageSystemName == 0;
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