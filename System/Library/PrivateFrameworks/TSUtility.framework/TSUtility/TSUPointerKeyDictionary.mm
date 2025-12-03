@interface TSUPointerKeyDictionary
- (TSUPointerKeyDictionary)initWithCapacity:(unint64_t)capacity;
@end

@implementation TSUPointerKeyDictionary

- (TSUPointerKeyDictionary)initWithCapacity:(unint64_t)capacity
{
  keyCallBacks.version = *MEMORY[0x277CBF138];
  keyCallBacks.retain = 0;
  v4 = *(MEMORY[0x277CBF138] + 24);
  keyCallBacks.release = 0;
  keyCallBacks.copyDescription = v4;
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

    v6->super.mDictionary = CFDictionaryCreateMutable(0, capacity, &keyCallBacks, MEMORY[0x277CBF150]);
  }

  return v6;
}

@end