@interface _UIBarAppearanceStorage
+ (int64_t)typicalBarPosition;
- (id)allBackgroundImages;
- (id)backgroundImageForBarPosition:(int64_t)position barMetrics:(int64_t)metrics;
- (void)setAllBackgroundImages:(id)images;
- (void)setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics;
@end

@implementation _UIBarAppearanceStorage

+ (int64_t)typicalBarPosition
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIBarCommon.m" lineNumber:76 description:@"Abstract method requires overriding in subclasses"];

  return 0;
}

- (void)setBackgroundImage:(id)image forBarPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  imageCopy = image;
  position = [MEMORY[0x1E696AD98] numberWithInteger:metrics + 1000 * position];
  if ([objc_opt_class() typicalBarPosition])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:metrics];
    v10 = v9;
    if (!imageCopy)
    {
      if (v9)
      {
        v11 = [(NSMutableDictionary *)self->_backgroundImages objectForKeyedSubscript:v9];
        v12 = [(NSMutableDictionary *)self->_backgroundImages objectForKeyedSubscript:position];

        if (v11 == v12)
        {
          [(NSMutableDictionary *)self->_backgroundImages removeObjectForKey:v10];
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    if (!imageCopy)
    {
LABEL_12:
      [(NSMutableDictionary *)self->_backgroundImages removeObjectForKey:position];
      goto LABEL_13;
    }
  }

  backgroundImages = self->_backgroundImages;
  if (!backgroundImages)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = self->_backgroundImages;
    self->_backgroundImages = v14;

    backgroundImages = self->_backgroundImages;
  }

  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  if (v10)
  {
    v16 = [(NSMutableDictionary *)self->_backgroundImages objectForKeyedSubscript:v10];

    if (!v16)
    {
      [(NSMutableDictionary *)self->_backgroundImages setObject:imageCopy forKeyedSubscript:v10];
    }
  }

LABEL_13:
}

- (id)backgroundImageForBarPosition:(int64_t)position barMetrics:(int64_t)metrics
{
  backgroundImages = self->_backgroundImages;
  position = [MEMORY[0x1E696AD98] numberWithInteger:metrics + 1000 * position];
  v6 = [(NSMutableDictionary *)backgroundImages objectForKeyedSubscript:position];

  return v6;
}

- (void)setAllBackgroundImages:(id)images
{
  v4 = [images mutableCopy];
  backgroundImages = self->_backgroundImages;
  self->_backgroundImages = v4;
}

- (id)allBackgroundImages
{
  v2 = [(NSMutableDictionary *)self->_backgroundImages copy];

  return v2;
}

@end