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

- (TSUCFSetEnumerator)initWithCFSet:(__CFSet *)a3
{
  v4 = [(TSUCFSetEnumerator *)self init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      Count = CFSetGetCount(a3);
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
      CFSetGetValues(a3, mInlineObjects);
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  mObjects = self->mObjects;
  a3->var0 = 1;
  a3->var1 = mObjects;
  a3->var2 = a3->var3;
  return self->mCount;
}

@end