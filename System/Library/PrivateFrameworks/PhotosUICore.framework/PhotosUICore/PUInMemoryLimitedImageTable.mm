@interface PUInMemoryLimitedImageTable
- (id)imageForItemAtIndex:(unint64_t)index;
- (void)removeItemAtIndex:(unint64_t)index;
- (void)setImage:(id)image forItemAtIndex:(unint64_t)index;
@end

@implementation PUInMemoryLimitedImageTable

- (void)removeItemAtIndex:(unint64_t)index
{
  v3 = *&self->super._indexCounter;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [v3 removeObjectForKey:v4];
}

- (id)imageForItemAtIndex:(unint64_t)index
{
  v3 = *&self->super._indexCounter;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setImage:(id)image forItemAtIndex:(unint64_t)index
{
  imageCopy = image;
  v6 = *&self->super._indexCounter;
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v8 = *&self->super._indexCounter;
    *&self->super._indexCounter = v7;

    [*&self->super._indexCounter setCountLimit:20];
    v6 = *&self->super._indexCounter;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [v6 setObject:imageCopy forKey:v9];
}

@end