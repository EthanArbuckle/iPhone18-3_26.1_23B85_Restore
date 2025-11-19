@interface RadioArtwork
- (BOOL)isEqual:(id)a3;
- (CGSize)pixelSize;
- (CGSize)pointSize;
- (RadioArtwork)initWithArtworkDictionary:(id)a3;
- (RadioArtwork)initWithArtworkURL:(id)a3 pixelSize:(CGSize)a4;
@end

@implementation RadioArtwork

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pointSize
{
  if (pointSize___onceToken != -1)
  {
    dispatch_once(&pointSize___onceToken, &__block_literal_global);
  }

  v3 = self->_pixelSize.width / *&pointSize___screenScale;
  v4 = self->_pixelSize.height / *&pointSize___screenScale;
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t __25__RadioArtwork_pointSize__block_invoke()
{
  result = GSMainScreenScaleFactor();
  pointSize___screenScale = v1;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RadioArtwork *)v4 URL];
      [(RadioArtwork *)v4 pixelSize];
      if (v7 == self->_pixelSize.width && v6 == self->_pixelSize.height)
      {
        if (self->_URL | v5)
        {
          v9 = [v5 isEqual:?];
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (RadioArtwork)initWithArtworkURL:(id)a3 pixelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  if (v8)
  {
    v13.receiver = self;
    v13.super_class = RadioArtwork;
    v9 = [(RadioArtwork *)&v13 init];
    v10 = v9;
    if (v9)
    {
      v9->_pixelSize.width = width;
      v9->_pixelSize.height = height;
      objc_storeStrong(&v9->_URL, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (RadioArtwork)initWithArtworkDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"height"];
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    v6 = v7;
  }

  v8 = [v4 objectForKey:@"width"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (([v8 doubleValue], v10 = v9, v9 >= 0.00000011920929) ? (v11 = v6 < 0.00000011920929) : (v11 = 1), v11))
  {
    v12 = 0;
  }

  else
  {
    v13 = [v4 objectForKey:@"url"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      if (v12)
      {
        v18.receiver = self;
        v18.super_class = RadioArtwork;
        v15 = [(RadioArtwork *)&v18 init];
        v16 = v15;
        if (v15)
        {
          v15->_pixelSize.width = v6;
          v15->_pixelSize.height = v10;
          objc_storeStrong(&v15->_URL, v12);
        }

        self = v16;

        v12 = self;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end