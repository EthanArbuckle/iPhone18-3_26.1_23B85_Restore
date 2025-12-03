@interface PLChoosableItem
+ (id)choosableItemsFromCloudResources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (PLChoosableItem)initWithCloudResource:(id)resource;
- (PLChoosableItem)initWithWidth:(int64_t)width height:(int64_t)height type:(int)type uniformTypeIdentifier:(id)identifier;
- (id)description;
- (int64_t)compareUsingWidth:(id)width;
@end

@implementation PLChoosableItem

- (int64_t)compareUsingWidth:(id)width
{
  widthCopy = width;
  width = self->_width;
  if (width > [widthCopy width])
  {
    goto LABEL_2;
  }

  if ([widthCopy width] > self->_width)
  {
    v6 = -1;
    goto LABEL_9;
  }

  type = self->_type;
  if (type > [widthCopy type])
  {
LABEL_2:
    v6 = 1;
  }

  else if ([widthCopy type] <= self->_type)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

LABEL_9:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLChoosableItem *)self isEqualToChoosableItem:equalCopy];
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PLChoosableItem;
  v3 = [(PLChoosableItem *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - width: %lld, height: %lld, type: %d, uti: %@", self->_width, self->_height, self->_type, self->_uniformTypeIdentifier];

  return v4;
}

- (PLChoosableItem)initWithCloudResource:(id)resource
{
  resourceCopy = resource;
  unorientedWidth = [resourceCopy unorientedWidth];
  unorientedHeight = [resourceCopy unorientedHeight];
  cplType = [resourceCopy cplType];
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];

  identifier = [uniformTypeIdentifier identifier];
  v10 = [(PLChoosableItem *)self initWithWidth:unorientedWidth height:unorientedHeight type:cplType uniformTypeIdentifier:identifier];

  return v10;
}

- (PLChoosableItem)initWithWidth:(int64_t)width height:(int64_t)height type:(int)type uniformTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PLChoosableItem;
  v11 = [(PLChoosableItem *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    uniformTypeIdentifier = v11->_uniformTypeIdentifier;
    v11->_uniformTypeIdentifier = v12;

    v11->_width = width;
    v11->_height = height;
    v11->_type = type;
  }

  return v11;
}

+ (id)choosableItemsFromCloudResources:(id)resources
{
  v19 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = resourcesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PLChoosableItem alloc];
        v12 = [(PLChoosableItem *)v11 initWithCloudResource:v10, v14];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

@end