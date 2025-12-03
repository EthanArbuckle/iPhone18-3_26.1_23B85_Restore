@interface RadioArtwork
- (BOOL)isEqual:(id)equal;
- (CGSize)pixelSize;
- (CGSize)pointSize;
- (RadioArtwork)initWithArtworkDictionary:(id)dictionary;
- (RadioArtwork)initWithArtworkURL:(id)l pixelSize:(CGSize)size;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RadioArtwork *)equalCopy URL];
      [(RadioArtwork *)equalCopy pixelSize];
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

- (RadioArtwork)initWithArtworkURL:(id)l pixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  if (lCopy)
  {
    v13.receiver = self;
    v13.super_class = RadioArtwork;
    v9 = [(RadioArtwork *)&v13 init];
    v10 = v9;
    if (v9)
    {
      v9->_pixelSize.width = width;
      v9->_pixelSize.height = height;
      objc_storeStrong(&v9->_URL, l);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RadioArtwork)initWithArtworkDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"height"];
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    v6 = v7;
  }

  v8 = [dictionaryCopy objectForKey:@"width"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (([v8 doubleValue], v10 = v9, v9 >= 0.00000011920929) ? (v11 = v6 < 0.00000011920929) : (v11 = 1), v11))
  {
    selfCopy = 0;
  }

  else
  {
    v13 = [dictionaryCopy objectForKey:@"url"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      selfCopy = [MEMORY[0x277CBEBC0] URLWithString:v13];
      if (selfCopy)
      {
        v18.receiver = self;
        v18.super_class = RadioArtwork;
        v15 = [(RadioArtwork *)&v18 init];
        v16 = v15;
        if (v15)
        {
          v15->_pixelSize.width = v6;
          v15->_pixelSize.height = v10;
          objc_storeStrong(&v15->_URL, selfCopy);
        }

        self = v16;

        selfCopy = self;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end