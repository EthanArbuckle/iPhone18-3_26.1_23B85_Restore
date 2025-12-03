@interface TSULinkedPointerSetReverseEnumerator
- (TSULinkedPointerSetReverseEnumerator)initWithLastEntry:(id)entry;
- (id)nextObject;
@end

@implementation TSULinkedPointerSetReverseEnumerator

- (TSULinkedPointerSetReverseEnumerator)initWithLastEntry:(id)entry
{
  v5.receiver = self;
  v5.super_class = TSULinkedPointerSetReverseEnumerator;
  result = [(TSULinkedPointerSetReverseEnumerator *)&v5 init];
  if (result)
  {
    result->mTail = entry;
    result->mLastUsed = 0;
  }

  return result;
}

- (id)nextObject
{
  mLastUsed = self->mLastUsed;
  if (mLastUsed)
  {
    mPrevious = mLastUsed->mPrevious;
    self->mLastUsed = mPrevious;
    if (mPrevious)
    {
      mObject = mPrevious->mObject;
      if (!mObject)
      {
        return mObject;
      }

LABEL_7:
      v6 = mObject;
      return mObject;
    }
  }

  mTail = self->mTail;
  if (!mTail)
  {
    return 0;
  }

  mObject = mTail->mObject;
  self->mLastUsed = mTail;
  self->mTail = 0;
  if (mObject)
  {
    goto LABEL_7;
  }

  return mObject;
}

@end