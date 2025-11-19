@interface SBHIconAccessoryCountedMapImageTuple
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBHIconAccessoryCountedMapImageTuple)initWithImage:(id)a3 text:(id)a4 imageAppearance:(id)a5 countedMapKey:(id)a6;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBHIconAccessoryCountedMapImageTuple

- (SBHIconAccessoryCountedMapImageTuple)initWithImage:(id)a3 text:(id)a4 imageAppearance:(id)a5 countedMapKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = SBHIconAccessoryCountedMapImageTuple;
  v15 = [(SBHIconAccessoryCountedMapImageTuple *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, a3);
    v17 = [v12 copy];
    text = v16->_text;
    v16->_text = v17;

    v19 = [v13 copy];
    imageAppearance = v16->_imageAppearance;
    v16->_imageAppearance = v19;

    objc_storeStrong(&v16->_countedMapKey, a6);
    v21 = [MEMORY[0x1E698E6B8] builder];
    v22 = [v21 appendObject:v11];
    v23 = [v22 appendObject:v14];
    v24 = [v23 appendObject:v13];
    v25 = [v24 appendString:v12];
    v16->_hash = [v25 hash];
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(SBHIconAccessoryCountedMapImageTuple *)self image], v7 = objc_claimAutoreleasedReturnValue(), [(SBHIconAccessoryCountedMapImageTuple *)v6 image], v8 = objc_claimAutoreleasedReturnValue(), v9 = BSEqualObjects(), v8, v7, v9) && ([(SBHIconAccessoryCountedMapImageTuple *)self text], v10 = objc_claimAutoreleasedReturnValue(), [(SBHIconAccessoryCountedMapImageTuple *)v6 text], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v12) && ([(SBHIconAccessoryCountedMapImageTuple *)self imageAppearance], v13 = objc_claimAutoreleasedReturnValue(), [(SBHIconAccessoryCountedMapImageTuple *)v6 imageAppearance], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15))
    {
      v16 = [(SBHIconAccessoryCountedMapImageTuple *)self sbh_countedMapKey];
      v17 = [(SBHIconAccessoryCountedMapImageTuple *)v6 sbh_countedMapKey];
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

- (void)appendDescriptionToFormatter:(id)a3
{
  v9 = a3;
  v4 = [(SBHIconAccessoryCountedMapImageTuple *)self text];
  [v9 appendString:v4 withName:@"text"];

  v5 = [(SBHIconAccessoryCountedMapImageTuple *)self imageAppearance];
  v6 = [v9 appendObject:v5 withName:@"imageAppearance"];

  v7 = [(SBHIconAccessoryCountedMapImageTuple *)self image];
  v8 = [v9 appendObject:v7 withName:@"image"];
}

@end