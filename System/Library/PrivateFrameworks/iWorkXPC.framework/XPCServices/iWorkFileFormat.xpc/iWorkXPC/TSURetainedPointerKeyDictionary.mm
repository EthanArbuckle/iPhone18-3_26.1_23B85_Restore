@interface TSURetainedPointerKeyDictionary
- (TSURetainedPointerKeyDictionary)initWithCapacity:(unint64_t)capacity;
@end

@implementation TSURetainedPointerKeyDictionary

- (TSURetainedPointerKeyDictionary)initWithCapacity:(unint64_t)capacity
{
  *&keyCallBacks.retain = *&kCFTypeDictionaryKeyCallBacks.retain;
  copyDescription = kCFTypeDictionaryKeyCallBacks.copyDescription;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = copyDescription;
  v9.receiver = self;
  v9.super_class = TSURetainedPointerKeyDictionary;
  keyCallBacks.version = kCFTypeDictionaryKeyCallBacks.version;
  v5 = [(TSUNoCopyDictionary *)&v9 initWithCapacity:?];
  v6 = v5;
  if (v5)
  {
    mDictionary = v5->super.mDictionary;
    if (mDictionary)
    {
      CFRelease(mDictionary);
    }

    v6->super.mDictionary = CFDictionaryCreateMutable(0, capacity, &keyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v6;
}

@end