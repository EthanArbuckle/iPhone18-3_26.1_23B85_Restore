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
  if (mObjects != self->mInlineObjects)
  {
    free(mObjects);
  }

  v4.receiver = self;
  v4.super_class = TSUCFSetEnumerator;
  [(TSUCFSetEnumerator *)&v4 dealloc];
}

- (TSUCFSetEnumerator)initWithCFSet:(__CFSet *)set
{
  v4 = [(TSUCFSetEnumerator *)self init];
  if (v4)
  {
    Count = CFSetGetCount(set);
    v4->mCount = Count;
    if (Count > 15)
    {
      mInlineObjects = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    }

    else
    {
      mInlineObjects = v4->mInlineObjects;
    }

    v4->mObjects = mInlineObjects;
    CFSetGetValues(set, mInlineObjects);
  }

  return v4;
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

  state->var0 = 1;
  mObjects = self->mObjects;
  result = self->mCount;
  state->var1 = mObjects;
  state->var2 = state->var3;
  return result;
}

@end