@interface PLChoosableItem
+ (id)choosableItemsFromCloudResources:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PLChoosableItem)initWithCloudResource:(id)a3;
- (PLChoosableItem)initWithWidth:(int64_t)a3 height:(int64_t)a4 type:(int)a5 uniformTypeIdentifier:(id)a6;
- (id)description;
- (int64_t)compareUsingWidth:(id)a3;
@end

@implementation PLChoosableItem

- (int64_t)compareUsingWidth:(id)a3
{
  v4 = a3;
  width = self->_width;
  if (width > [v4 width])
  {
    goto LABEL_2;
  }

  if ([v4 width] > self->_width)
  {
    v6 = -1;
    goto LABEL_9;
  }

  type = self->_type;
  if (type > [v4 type])
  {
LABEL_2:
    v6 = 1;
  }

  else if ([v4 type] <= self->_type)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLChoosableItem *)self isEqualToChoosableItem:v4];
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

- (PLChoosableItem)initWithCloudResource:(id)a3
{
  v4 = a3;
  v5 = [v4 unorientedWidth];
  v6 = [v4 unorientedHeight];
  v7 = [v4 cplType];
  v8 = [v4 uniformTypeIdentifier];

  v9 = [v8 identifier];
  v10 = [(PLChoosableItem *)self initWithWidth:v5 height:v6 type:v7 uniformTypeIdentifier:v9];

  return v10;
}

- (PLChoosableItem)initWithWidth:(int64_t)a3 height:(int64_t)a4 type:(int)a5 uniformTypeIdentifier:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = PLChoosableItem;
  v11 = [(PLChoosableItem *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    uniformTypeIdentifier = v11->_uniformTypeIdentifier;
    v11->_uniformTypeIdentifier = v12;

    v11->_width = a3;
    v11->_height = a4;
    v11->_type = a5;
  }

  return v11;
}

+ (id)choosableItemsFromCloudResources:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end