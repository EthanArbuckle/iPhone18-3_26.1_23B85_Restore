@interface __NSImmutableTextStorage
+ (__NSImmutableTextStorage)allocWithZone:(_NSZone *)a3;
- (__NSImmutableTextStorage)initWithAttributedString:(id)a3;
- (void)dealloc;
- (void)release;
@end

@implementation __NSImmutableTextStorage

+ (__NSImmutableTextStorage)allocWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock_with_options();
  v5 = __NSImmutableTextStorageCacheNextIndex;
  if (!__NSImmutableTextStorageCacheNextIndex)
  {
    os_unfair_lock_unlock(&__NSImmutableTextStorageLock);
LABEL_5:
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS_____NSImmutableTextStorage;
    return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
  }

  --__NSImmutableTextStorageCacheNextIndex;
  v6 = __NSImmutableTextStorageCache[v5 - 1];
  os_unfair_lock_unlock(&__NSImmutableTextStorageLock);
  if (!v6)
  {
    goto LABEL_5;
  }

  return v6;
}

- (void)release
{
  os_unfair_lock_lock_with_options();
  if ([(__NSImmutableTextStorage *)self retainCount]== 1 && (v3 = __NSImmutableTextStorageCacheNextIndex, __NSImmutableTextStorageCacheNextIndex <= 4))
  {
    ++__NSImmutableTextStorageCacheNextIndex;
    __NSImmutableTextStorageCache[v3] = self;

    self->_contents = 0;

    os_unfair_lock_unlock(&__NSImmutableTextStorageLock);
  }

  else
  {
    os_unfair_lock_unlock(&__NSImmutableTextStorageLock);
    v4.receiver = self;
    v4.super_class = __NSImmutableTextStorage;
    [(__NSImmutableTextStorage *)&v4 release];
  }
}

- (__NSImmutableTextStorage)initWithAttributedString:(id)a3
{
  v4 = self;
  if (!self->_layoutManager)
  {
    v10.receiver = self;
    v10.super_class = __NSImmutableTextStorage;
    v6 = [(NSTextStorage *)&v10 init];
    v4 = v6;
    if (!v6)
    {
      return v4;
    }

    if (!v6->_layoutManager)
    {
      v7 = objc_alloc_init(NSLayoutManager);
      v4->_layoutManager = v7;
      [(NSLayoutManager *)v7 setAllowsNonContiguousLayout:0];
      [(NSLayoutManager *)v4->_layoutManager setBackgroundLayoutEnabled:0];
      [(NSLayoutManager *)v4->_layoutManager setLimitsLayoutForSuspiciousContents:1];
      [(NSTextStorage *)v4 addLayoutManager:v4->_layoutManager];
      v8 = [NSTextContainer alloc];
      v9 = [(NSTextContainer *)v8 initWithSize:*MEMORY[0x1E696AA88], *(MEMORY[0x1E696AA88] + 8)];
      v4->_textContainer = v9;
      [(NSTextContainer *)v9 setLineFragmentPadding:0.0];
      [(NSLayoutManager *)v4->_layoutManager addTextContainer:v4->_textContainer];
    }
  }

  v4->_contents = a3;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSImmutableTextStorage;
  [(NSTextStorage *)&v3 dealloc];
}

@end