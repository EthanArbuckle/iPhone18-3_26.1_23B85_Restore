@interface SBHIconImageAppearanceStoreImageEnumerator
- (SBHIconImageAppearance)imageAppearance;
- (SBHIconImageAppearanceStoreImageEnumerator)initWithImages:(id)images appearances:(id)appearances;
- (id)nextObject;
@end

@implementation SBHIconImageAppearanceStoreImageEnumerator

- (SBHIconImageAppearanceStoreImageEnumerator)initWithImages:(id)images appearances:(id)appearances
{
  imagesCopy = images;
  appearancesCopy = appearances;
  v14.receiver = self;
  v14.super_class = SBHIconImageAppearanceStoreImageEnumerator;
  v8 = [(SBHIconImageAppearanceStoreImageEnumerator *)&v14 init];
  if (v8)
  {
    v9 = [imagesCopy copy];
    images = v8->_images;
    v8->_images = v9;

    v11 = [appearancesCopy copy];
    appearances = v8->_appearances;
    v8->_appearances = v11;
  }

  return v8;
}

- (id)nextObject
{
  if (self)
  {
    images = self->_images;
  }

  else
  {
    images = 0;
  }

  v4 = images;
  nextEnumerationIndex = self->_nextEnumerationIndex;
  if (nextEnumerationIndex >= [(NSArray *)v4 count])
  {
    v6 = 0;
  }

  else
  {
    ++self->_nextEnumerationIndex;
    v6 = [(NSArray *)v4 objectAtIndex:?];
  }

  return v6;
}

- (SBHIconImageAppearance)imageAppearance
{
  if (self)
  {
    appearances = self->_appearances;
  }

  else
  {
    appearances = 0;
  }

  return [(NSArray *)appearances objectAtIndex:self->_nextEnumerationIndex - 1];
}

@end