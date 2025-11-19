@interface TSUCFSetEnumerator
- (TSUCFSetEnumerator)initWithCFSet:(__CFSet *)a3;
- (id)allObjects;
- (id)nextObject;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
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

- (TSUCFSetEnumerator)initWithCFSet:(__CFSet *)a3
{
  v4 = [(TSUCFSetEnumerator *)self init];
  if (v4)
  {
    Count = CFSetGetCount(a3);
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
    CFSetGetValues(a3, mInlineObjects);
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  a3->var0 = 1;
  mObjects = self->mObjects;
  result = self->mCount;
  a3->var1 = mObjects;
  a3->var2 = a3->var3;
  return result;
}

@end