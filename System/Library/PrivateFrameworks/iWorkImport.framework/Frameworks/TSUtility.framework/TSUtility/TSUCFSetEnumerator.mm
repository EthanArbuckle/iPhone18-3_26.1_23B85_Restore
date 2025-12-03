@interface TSUCFSetEnumerator
- (TSUCFSetEnumerator)initWithCFSet:(__CFSet *)set;
- (id)allObjects;
- (id)nextObject;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
@end

@implementation TSUCFSetEnumerator

- (void)dealloc
{
  mObjects = self->mObjects;
  if (mObjects)
  {
    v4 = mObjects == self->mInlineObjects;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    free(mObjects);
  }

  v5.receiver = self;
  v5.super_class = TSUCFSetEnumerator;
  [(TSUCFSetEnumerator *)&v5 dealloc];
}

- (TSUCFSetEnumerator)initWithCFSet:(__CFSet *)set
{
  v4 = [(TSUCFSetEnumerator *)self init];
  v5 = v4;
  if (v4)
  {
    if (set)
    {
      Count = CFSetGetCount(set);
      v5->mCount = Count;
      if (Count > 15)
      {
        mInlineObjects = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      }

      else
      {
        mInlineObjects = v5->mInlineObjects;
      }

      v5->mObjects = mInlineObjects;
      CFSetGetValues(set, mInlineObjects);
    }

    else
    {
      v4->mCount = 0;
    }
  }

  return v5;
}

- (id)nextObject
{
  mIndex = self->mIndex;
  if (mIndex >= self->mCount)
  {
    return 0;
  }

  v3 = self->mObjects[mIndex];
  self->mIndex = mIndex + 1;
  return v3;
}

- (id)allObjects
{
  v2 = CFArrayCreate(0, &self->mObjects[self->mIndex], self->mCount - self->mIndex, 0);
  v3 = CFMakeCollectable(v2);

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    return 0;
  }

  mObjects = self->mObjects;
  state->var0 = 1;
  state->var1 = mObjects;
  state->var2 = state->var3;
  return self->mCount;
}

@end