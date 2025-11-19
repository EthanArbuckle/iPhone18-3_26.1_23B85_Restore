@interface PUInMemoryLimitedImageTable
- (id)imageForItemAtIndex:(unint64_t)a3;
- (void)removeItemAtIndex:(unint64_t)a3;
- (void)setImage:(id)a3 forItemAtIndex:(unint64_t)a4;
@end

@implementation PUInMemoryLimitedImageTable

- (void)removeItemAtIndex:(unint64_t)a3
{
  v3 = *&self->super._indexCounter;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v3 removeObjectForKey:v4];
}

- (id)imageForItemAtIndex:(unint64_t)a3
{
  v3 = *&self->super._indexCounter;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [v3 objectForKey:v4];

  return v5;
}

- (void)setImage:(id)a3 forItemAtIndex:(unint64_t)a4
{
  v10 = a3;
  v6 = *&self->super._indexCounter;
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v8 = *&self->super._indexCounter;
    *&self->super._indexCounter = v7;

    [*&self->super._indexCounter setCountLimit:20];
    v6 = *&self->super._indexCounter;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v6 setObject:v10 forKey:v9];
}

@end