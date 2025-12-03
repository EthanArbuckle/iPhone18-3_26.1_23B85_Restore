@interface SBHIconAccessoryCountedMapImageTuple
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBHIconAccessoryCountedMapImageTuple)initWithImage:(id)image text:(id)text imageAppearance:(id)appearance countedMapKey:(id)key;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBHIconAccessoryCountedMapImageTuple

- (SBHIconAccessoryCountedMapImageTuple)initWithImage:(id)image text:(id)text imageAppearance:(id)appearance countedMapKey:(id)key
{
  imageCopy = image;
  textCopy = text;
  appearanceCopy = appearance;
  keyCopy = key;
  v27.receiver = self;
  v27.super_class = SBHIconAccessoryCountedMapImageTuple;
  v15 = [(SBHIconAccessoryCountedMapImageTuple *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, image);
    v17 = [textCopy copy];
    text = v16->_text;
    v16->_text = v17;

    v19 = [appearanceCopy copy];
    imageAppearance = v16->_imageAppearance;
    v16->_imageAppearance = v19;

    objc_storeStrong(&v16->_countedMapKey, key);
    builder = [MEMORY[0x1E698E6B8] builder];
    v22 = [builder appendObject:imageCopy];
    v23 = [v22 appendObject:keyCopy];
    v24 = [v23 appendObject:appearanceCopy];
    v25 = [v24 appendString:textCopy];
    v16->_hash = [v25 hash];
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(SBHIconAccessoryCountedMapImageTuple *)self image], v7 = objc_claimAutoreleasedReturnValue(), [(SBHIconAccessoryCountedMapImageTuple *)v6 image], v8 = objc_claimAutoreleasedReturnValue(), v9 = BSEqualObjects(), v8, v7, v9) && ([(SBHIconAccessoryCountedMapImageTuple *)self text], v10 = objc_claimAutoreleasedReturnValue(), [(SBHIconAccessoryCountedMapImageTuple *)v6 text], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(SBHIconAccessoryCountedMapImageTuple *)self imageAppearance], v13 = objc_claimAutoreleasedReturnValue(), [(SBHIconAccessoryCountedMapImageTuple *)v6 imageAppearance], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15))
    {
      sbh_countedMapKey = [(SBHIconAccessoryCountedMapImageTuple *)self sbh_countedMapKey];
      sbh_countedMapKey2 = [(SBHIconAccessoryCountedMapImageTuple *)v6 sbh_countedMapKey];
      v18 = BSEqualObjects();
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHIconAccessoryCountedMapImageTuple *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  text = [(SBHIconAccessoryCountedMapImageTuple *)self text];
  [formatterCopy appendString:text withName:@"text"];

  imageAppearance = [(SBHIconAccessoryCountedMapImageTuple *)self imageAppearance];
  v6 = [formatterCopy appendObject:imageAppearance withName:@"imageAppearance"];

  image = [(SBHIconAccessoryCountedMapImageTuple *)self image];
  v8 = [formatterCopy appendObject:image withName:@"image"];
}

@end