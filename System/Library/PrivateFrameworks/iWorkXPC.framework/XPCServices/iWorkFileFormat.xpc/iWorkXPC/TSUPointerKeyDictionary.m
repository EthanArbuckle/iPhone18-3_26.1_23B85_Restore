@interface TSUPointerKeyDictionary
- (TSUPointerKeyDictionary)initWithCapacity:(unint64_t)a3;
@end

@implementation TSUPointerKeyDictionary

- (TSUPointerKeyDictionary)initWithCapacity:(unint64_t)a3
{
  keyCallBacks.version = kCFTypeDictionaryKeyCallBacks.version;
  keyCallBacks.retain = 0;
  copyDescription = kCFTypeDictionaryKeyCallBacks.copyDescription;
  keyCallBacks.release = 0;
  keyCallBacks.copyDescription = copyDescription;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  v9.receiver = self;
  v9.super_class = TSUPointerKeyDictionary;
  v5 = [(TSUNoCopyDictionary *)&v9 initWithCapacity:?];
  v6 = v5;
  if (v5)
  {
    mDictionary = v5->super.mDictionary;
    if (mDictionary)
    {
      CFRelease(mDictionary);
    }

    v6->super.mDictionary = CFDictionaryCreateMutable(0, a3, &keyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v6;
}

@end