@interface UIBarItem
+ (id)appearanceWhenContainedIn:(Class)in;
+ (id)appearanceWhenContainedInInstancesOfClasses:(id)classes;
- (UIBarItem)init;
- (UIBarItem)initWithCoder:(NSCoder *)coder;
- (UIEdgeInsets)largeContentSizeImageInsets;
- (id)_attributedTitleForState:(unint64_t)state withDefaultAttributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIBarItem

- (UIBarItem)init
{
  v3.receiver = self;
  v3.super_class = UIBarItem;
  return [(UIBarItem *)&v3 init];
}

+ (id)appearanceWhenContainedInInstancesOfClasses:(id)classes
{
  v4 = _UIInternalContainerClassArrayForContainerClassArray(classes);
  v5 = [self _appearanceWhenContainedIn:v4];

  return v5;
}

+ (id)appearanceWhenContainedIn:(Class)in
{
  if (!in || (_UIInternalContainerClassesForContainerClasses(in, &v9, 0), (array = objc_claimAutoreleasedReturnValue()) == 0))
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v5 = array;
  v6 = [self _appearanceWhenContainedIn:array];

  return v6;
}

- (UIBarItem)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v13.receiver = self;
  v13.super_class = UIBarItem;
  v5 = [(UIBarItem *)&v13 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:0x1EFB59970];
    if (v6)
    {
      objc_setAssociatedObject(v5, &_UIAppearanceCustomizedSelectorsAssociationKey, v6, 1);
    }

    v7 = [(NSCoder *)v4 decodeObjectForKey:@"_UIBarItemLargeContentSizeImageCodingKey"];
    if (v7)
    {
      objc_storeStrong(&v5->_largeContentSizeImage, v7);
    }

    [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"_UIBarItemLargeContentSizeImageInsetsCodingKey"];
    v5->_largeContentSizeImageInsets.top = v8;
    v5->_largeContentSizeImageInsets.left = v9;
    v5->_largeContentSizeImageInsets.bottom = v10;
    v5->_largeContentSizeImageInsets.right = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = coderCopy;
  if (self->_shouldArchiveUIAppearanceTags)
  {
    v5 = objc_getAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey);
    if (v5)
    {
      [v9 encodeObject:v5 forKey:0x1EFB59970];
    }

    coderCopy = v9;
  }

  largeContentSizeImage = self->_largeContentSizeImage;
  if (largeContentSizeImage)
  {
    [v9 encodeObject:largeContentSizeImage forKey:@"_UIBarItemLargeContentSizeImageCodingKey"];
    coderCopy = v9;
  }

  v7 = *&self->_largeContentSizeImageInsets.top;
  v8 = *&self->_largeContentSizeImageInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v7), vceqzq_f64(v8))))))
  {
    [v9 encodeUIEdgeInsets:@"_UIBarItemLargeContentSizeImageInsetsCodingKey" forKey:{*&v7, *&v8}];
    coderCopy = v9;
  }
}

- (id)_attributedTitleForState:(unint64_t)state withDefaultAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(UIBarItem *)self hasTitle])
  {
    v7 = attributesCopy;
    v8 = [(UIBarItem *)self titleTextAttributesForState:state];
    if ([v8 count])
    {
      v9 = [v7 mutableCopy];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__UIBarItem__attributedTitleForState_withDefaultAttributes___block_invoke;
      v16[3] = &unk_1E70F7970;
      v10 = v9;
      v17 = v10;
      [v8 enumerateKeysAndObjectsUsingBlock:v16];
      v11 = v10;

      v7 = v11;
    }

    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    resolvedTitle = [(UIBarItem *)self resolvedTitle];
    v14 = [v12 initWithString:resolvedTitle attributes:v7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (UIEdgeInsets)largeContentSizeImageInsets
{
  top = self->_largeContentSizeImageInsets.top;
  left = self->_largeContentSizeImageInsets.left;
  bottom = self->_largeContentSizeImageInsets.bottom;
  right = self->_largeContentSizeImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end