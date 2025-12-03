@interface TSUMutableLinkedPointerSet
- (BOOL)isEqual:(id)equal;
- (TSUMutableLinkedPointerSet)init;
- (id)array;
- (id)firstObject;
- (id)objectEnumerator;
- (id)objectEnumeratorAfterObject:(id)object;
- (id)reverseObjectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)insertFirstObject:(id)object;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
@end

@implementation TSUMutableLinkedPointerSet

- (TSUMutableLinkedPointerSet)init
{
  v5.receiver = self;
  v5.super_class = TSUMutableLinkedPointerSet;
  v2 = [(TSUMutableLinkedPointerSet *)&v5 init];
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v2->mHead = 0;
    v2->mTail = 0;
    v2->mDictionary = Mutable;
  }

  return v2;
}

- (void)dealloc
{
  mDictionary = self->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
  }

  v4.receiver = self;
  v4.super_class = TSUMutableLinkedPointerSet;
  [(TSUMutableLinkedPointerSet *)&v4 dealloc];
}

- (id)objectEnumerator
{
  v2 = [[TSULinkedPointerSetEnumerator alloc] initWithFirstEntry:self->mHead];

  return v2;
}

- (id)reverseObjectEnumerator
{
  v2 = [[TSULinkedPointerSetReverseEnumerator alloc] initWithLastEntry:self->mTail];

  return v2;
}

- (id)objectEnumeratorAfterObject:(id)object
{
  result = CFDictionaryGetValue(self->mDictionary, object);
  if (result)
  {
    v4 = [[TSULinkedPointerSetEnumerator alloc] initWithFirstEntry:*(result + 3)];

    return v4;
  }

  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  p_mHead = &self->mHead;
  if (state->var0)
  {
    p_mHead = (state->var0 + 24);
  }

  v7 = *p_mHead;
  result = 0;
  if (v7)
  {
    v9 = count == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      var0 = v7;
      objects[result++] = v7->mObject;
      v7 = v7->mNext;
      if (v7)
      {
        v10 = result >= count;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
  }

  state->var0 = var0;
  state->var1 = objects;
  state->var2 = &state->var2;
  return result;
}

- (id)firstObject
{
  mHead = self->mHead;
  if (mHead)
  {
    return mHead->mObject;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = *(equal + 2);
      mHead = self->mHead;
      if (!mHead)
      {
LABEL_10:
        LOBYTE(v6) = v7 == 0;
        return v6;
      }

      while (v7)
      {
        mObject = mHead->mObject;
        if (mObject != *(v7 + 8))
        {
          v6 = [mObject isEqual:?];
          if (!v6)
          {
            return v6;
          }
        }

        v7 = *(v7 + 24);
        mHead = mHead->mNext;
        if (!mHead)
        {
          goto LABEL_10;
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)addObject:(id)object
{
  if (!CFDictionaryContainsKey(self->mDictionary, object))
  {
    v5 = [[TSULinkedPointerSetEntry alloc] initWithObject:object previousEntry:self->mTail];
    v8 = v5;
    mTail = self->mTail;
    if (mTail)
    {
      p_mNext = &mTail->mNext;
    }

    else
    {
      p_mNext = &self->mHead;
    }

    *p_mNext = v5;
    self->mTail = v5;
    CFDictionarySetValue(self->mDictionary, object, v5);
  }
}

- (void)insertFirstObject:(id)object
{
  [(TSUMutableLinkedPointerSet *)self removeObject:?];
  v5 = [[TSULinkedPointerSetEntry alloc] initWithObject:object previousEntry:0];
  mHead = self->mHead;
  selfCopy = self;
  v8 = v5;
  if (mHead)
  {
    mHead->mPrevious = v5;
    v8 = self->mHead;
    selfCopy = v5;
  }

  selfCopy->mTail = v8;
  self->mHead = v5;
  v9 = v5;
  CFDictionarySetValue(self->mDictionary, object, v5);
}

- (void)removeObject:(id)object
{
  Value = CFDictionaryGetValue(self->mDictionary, object);
  if (Value)
  {
    if (Value == self->mHead)
    {
      self->mHead = Value->mNext;
    }

    mPrevious = Value->mPrevious;
    if (Value == self->mTail)
    {
      self->mTail = mPrevious;
    }

    mNext = Value->mNext;
    if (mPrevious)
    {
      mPrevious->mNext = mNext;
    }

    if (mNext)
    {
      mNext->mPrevious = Value->mPrevious;
    }

    mDictionary = self->mDictionary;

    CFDictionaryRemoveValue(mDictionary, object);
  }
}

- (void)removeAllObjects
{
  self->mHead = 0;
  self->mTail = 0;
  CFDictionaryRemoveAllValues(self->mDictionary);
}

- (id)array
{
  Count = CFDictionaryGetCount(self->mDictionary);
  result = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (result)
  {
    v5 = result;
    CFDictionaryGetKeysAndValues(self->mDictionary, result, 0);
    v6 = [NSArray arrayWithObjects:v5 count:Count];
    free(v5);
    return v6;
  }

  return result;
}

@end