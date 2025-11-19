@interface NSConcreteTextStorage
+ (unint64_t)_writerCountTSDKey;
- (BOOL)_lockForReading;
- (BOOL)_lockForWritingWithExceptionHandler:(BOOL)a3;
- (BOOL)fixesAttributesLazily;
- (NSConcreteTextStorage)init;
- (NSConcreteTextStorage)initWithAttributedString:(id)a3;
- (NSConcreteTextStorage)initWithString:(id)a3;
- (NSConcreteTextStorage)initWithString:(id)a3 attributes:(id)a4;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5;
- (uint64_t)_initLocks;
- (void)_initLocks;
- (void)_setAttributeFixingInProgress:(BOOL)a3;
- (void)_unlock;
- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5;
- (void)addAttributes:(id)a3 range:(_NSRange)a4;
- (void)dealloc;
- (void)removeAttribute:(id)a3 range:(_NSRange)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
@end

@implementation NSConcreteTextStorage

- (void)_initLocks
{
  if (![(NSAttributedString *)self _isStringDrawingTextStorage])
  {
    if ((*&self->_pFlags & 4) != 0)
    {
      [(NSConcreteTextStorage *)a2 _initLocks];
    }

    pthread_rwlock_init(&self->_lock, 0);
    pthread_setspecific(+[NSConcreteTextStorage _writerCountTSDKey], 0);
    *&self->_pFlags |= 4u;
  }
}

uint64_t __43__NSConcreteTextStorage__writerCountTSDKey__block_invoke(uint64_t a1)
{
  result = pthread_key_create(&_writerCountTSDKey_key, 0);
  if (result)
  {
    return __43__NSConcreteTextStorage__writerCountTSDKey__block_invoke_cold_1(a1);
  }

  return result;
}

- (NSConcreteTextStorage)init
{
  v7.receiver = self;
  v7.super_class = NSConcreteTextStorage;
  v2 = [(NSTextStorage *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?], "initWithString:", &stru_1F01AD578];
    v3->_contents = v4;
    [(NSConcreteNotifyingMutableAttributedString *)v4 setDelegate:v3];
    [(NSConcreteTextStorage *)v3 _initLocks];
    v5 = [(NSConcreteTextStorage *)v3 length];
    if (v5)
    {
      [(NSTextStorage *)v3 edited:3 range:0 changeInLength:0, v5];
    }
  }

  return v3;
}

+ (unint64_t)_writerCountTSDKey
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NSConcreteTextStorage__writerCountTSDKey__block_invoke;
  v3[3] = &unk_1E7267F40;
  v3[4] = a1;
  v3[5] = a2;
  if (_writerCountTSDKey_onceToken != -1)
  {
    dispatch_once(&_writerCountTSDKey_onceToken, v3);
  }

  return _writerCountTSDKey_key;
}

- (void)dealloc
{
  contents = self->_contents;
  if ((*&self->_pFlags & 4) != 0)
  {
    pthread_rwlock_destroy(&self->_lock);
    *&self->_pFlags &= ~4u;
  }

  v4.receiver = self;
  v4.super_class = NSConcreteTextStorage;
  [(NSTextStorage *)&v4 dealloc];
}

- (BOOL)_lockForReading
{
  if ((*&self->_pFlags & 4) == 0)
  {
    return 0;
  }

  if ([(NSAttributedString *)self _isStringDrawingTextStorage])
  {
    return 0;
  }

  pthread_rwlock_rdlock(&self->_lock);
  return 1;
}

- (void)_unlock
{
  if ((*&self->_pFlags & 4) != 0 && ![(NSAttributedString *)self _isStringDrawingTextStorage])
  {
    v3 = pthread_getspecific(+[NSConcreteTextStorage _writerCountTSDKey]);
    if (!v3 || (v4 = v3 - 1, pthread_setspecific(+[NSConcreteTextStorage _writerCountTSDKey], v3 - 1), !v4))
    {

      pthread_rwlock_unlock(&self->_lock);
    }
  }
}

- (BOOL)fixesAttributesLazily
{
  if ((fixesAttributesLazily_readDefault & 1) == 0)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v3 objectForKey:@"NSAlwaysFixAttributesLazily"])
    {
      fixesAttributesLazily_alwaysFixAttributesLazily = [v3 BOOLForKey:@"NSAlwaysFixAttributesLazily"];
    }

    fixesAttributesLazily_readDefault = 1;
  }

  return (fixesAttributesLazily_alwaysFixAttributesLazily & 1) != 0 || *(self->super._sideData + 2) != 0x7FFFFFFFFFFFFFFFLL || self->super._editedRange.location == 0x7FFFFFFFFFFFFFFFLL || (self->super._editedRange.length & 0xFFFFFFFFFFFF0000) != 0;
}

- (BOOL)_lockForWritingWithExceptionHandler:(BOOL)a3
{
  if ((*&self->_pFlags & 4) == 0)
  {
    return 0;
  }

  if ([(NSAttributedString *)self _isStringDrawingTextStorage])
  {
    return 0;
  }

  v5 = pthread_rwlock_trywrlock(&self->_lock);
  if (v5 != 11 && v5 != 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = pthread_getspecific(+[NSConcreteTextStorage _writerCountTSDKey]);
  pthread_setspecific(+[NSConcreteTextStorage _writerCountTSDKey], v8 + 1);
  return v7 == 11 || v7 == 0;
}

- (NSConcreteTextStorage)initWithAttributedString:(id)a3
{
  v9.receiver = self;
  v9.super_class = NSConcreteTextStorage;
  v4 = [(NSTextStorage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?], "initWithAttributedString:", a3];
    v5->_contents = v6;
    [(NSConcreteNotifyingMutableAttributedString *)v6 setDelegate:v5];
    [(NSConcreteTextStorage *)v5 _initLocks];
    v7 = [(NSConcreteTextStorage *)v5 length];
    if (v7)
    {
      [(NSTextStorage *)v5 edited:3 range:0 changeInLength:0, v7];
    }
  }

  return v5;
}

- (NSConcreteTextStorage)initWithString:(id)a3
{
  v9.receiver = self;
  v9.super_class = NSConcreteTextStorage;
  v4 = [(NSTextStorage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?], "initWithString:", a3];
    v5->_contents = v6;
    [(NSConcreteNotifyingMutableAttributedString *)v6 setDelegate:v5];
    [(NSConcreteTextStorage *)v5 _initLocks];
    v7 = [(NSConcreteTextStorage *)v5 length];
    if (v7)
    {
      [(NSTextStorage *)v5 edited:3 range:0 changeInLength:0, v7];
    }
  }

  return v5;
}

- (NSConcreteTextStorage)initWithString:(id)a3 attributes:(id)a4
{
  v11.receiver = self;
  v11.super_class = NSConcreteTextStorage;
  v6 = [(NSTextStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?]attributes:"initWithString:attributes:", a3, a4];
    v7->_contents = v8;
    [(NSConcreteNotifyingMutableAttributedString *)v8 setDelegate:v7];
    [(NSConcreteTextStorage *)v7 _initLocks];
    v9 = [(NSConcreteTextStorage *)v7 length];
    if (v9)
    {
      [(NSTextStorage *)v7 edited:3 range:0 changeInLength:0, v9];
    }
  }

  return v7;
}

- (void)_setAttributeFixingInProgress:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_pFlags = (*&self->_pFlags & 0xFFFFFFF7 | v3);
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= a3)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v12);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:a3, 1];
  }

  v7 = [(NSConcreteMutableAttributedString *)self->_contents attributesAtIndex:a3 effectiveRange:a4];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!a4 || (*&self->_pFlags & 1) == 0)
    {
      return v7;
    }
  }

  else if (!a4)
  {
    return v7;
  }

  if (*(self->super._sideData + 2) != 0x7FFFFFFFFFFFFFFFLL && NSIntersectsRange())
  {
    sideData = self->super._sideData;
    v9 = sideData[2];
    if (v9 <= a3)
    {
      v10 = sideData[3] + v9;
      if (v10 <= a3)
      {
        a4->length += a4->location - v10;
        a4->location = *(self->super._sideData + 3) + *(self->super._sideData + 2);
      }
    }

    else
    {
      a4->length = v9 - a4->location;
    }
  }

  return v7;
}

- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= a3)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v13);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:a3, 1];
  }

  v10 = [(NSConcreteNotifyingMutableAttributedString *)self->_contents attributesAtIndex:a3 longestEffectiveRange:a4 inRange:location, length];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!a4 || (*&self->_pFlags & 1) == 0)
    {
      return v10;
    }
  }

  else if (!a4)
  {
    return v10;
  }

  if (*(self->super._sideData + 2) == 0x7FFFFFFFFFFFFFFFLL || !NSIntersectsRange())
  {
    return v10;
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:a4->location, a4->length];
  }

  contents = self->_contents;

  return [(NSConcreteNotifyingMutableAttributedString *)contents attributesAtIndex:a3 longestEffectiveRange:a4 inRange:location, length];
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= a4)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v14);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:a4, 1];
  }

  v9 = [(NSConcreteMutableAttributedString *)self->_contents attribute:a3 atIndex:a4 effectiveRange:a5];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!a5 || (*&self->_pFlags & 1) == 0)
    {
      return v9;
    }
  }

  else if (!a5)
  {
    return v9;
  }

  if (*(self->super._sideData + 2) != 0x7FFFFFFFFFFFFFFFLL && NSIntersectsRange())
  {
    sideData = self->super._sideData;
    v11 = sideData[2];
    if (v11 <= a4)
    {
      v12 = sideData[3] + v11;
      if (v12 <= a4)
      {
        a5->length += a5->location - v12;
        a5->location = *(self->super._sideData + 3) + *(self->super._sideData + 2);
      }
    }

    else
    {
      a5->length = v11 - a5->location;
    }
  }

  return v9;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= a4)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v15);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:a4, 1];
  }

  v12 = [(NSConcreteMutableAttributedString *)self->_contents attribute:a3 atIndex:a4 longestEffectiveRange:a5 inRange:location, length];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!a5 || (*&self->_pFlags & 1) == 0)
    {
      return v12;
    }
  }

  else if (!a5)
  {
    return v12;
  }

  if (*(self->super._sideData + 2) == 0x7FFFFFFFFFFFFFFFLL || !NSIntersectsRange())
  {
    return v12;
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:a5->location, a5->length];
  }

  contents = self->_contents;

  return [(NSConcreteMutableAttributedString *)contents attribute:a3 atIndex:a4 longestEffectiveRange:a5 inRange:location, length];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__NSConcreteTextStorage_replaceCharactersInRange_withString___block_invoke;
  v4[3] = &unk_1E7267F68;
  v5 = a3;
  v4[4] = self;
  v4[5] = a4;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__NSConcreteTextStorage_setAttributes_range___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

uint64_t __45__NSConcreteTextStorage_setAttributes_range___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _attributeFixingInProgress] & 1) != 0 || (v2 = objc_msgSend(*(a1 + 40), "objectForKey:", @"NSOriginalFont")) == 0)
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 104);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);

    return [v10 setAttributes:v9 range:{v11, v12}];
  }

  else
  {
    v3 = v2;
    v4 = [*(a1 + 40) objectForKey:@"NSFont"];
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__NSConcreteTextStorage_setAttributes_range___block_invoke_2;
    v13[3] = &unk_1E7267F90;
    v7 = *(a1 + 48);
    v13[4] = *(a1 + 40);
    v13[5] = v3;
    v13[6] = v4;
    v13[7] = v5;
    return [v6 enumerateAttributesInRange:v7 options:*(a1 + 56) usingBlock:{0x100000, v13}];
  }
}

void __45__NSConcreteTextStorage_setAttributes_range___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v9 = [a2 objectForKey:@"NSFont"];
  if ([*(a1 + 40) isEqual:{objc_msgSend(a2, "objectForKey:", @"NSOriginalFont"}] && ((v10 = *(a1 + 48), v10 == v9) || (objc_msgSend(v10, "isEqual:", v9) & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) mutableCopy];
    [v11 removeObjectForKey:@"NSOriginalFont"];
    v8 = v11;
  }

  [*(*(a1 + 56) + 104) setAttributes:v8 range:{a3, a4}];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__NSConcreteTextStorage_replaceCharactersInRange_withAttributedString___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = a4;
  v4[5] = self;
  v5 = a3;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

void __71__NSConcreteTextStorage_replaceCharactersInRange_withAttributedString___block_invoke(void *a1)
{
  [*(a1[5] + 104) replaceCharactersInRange:a1[6] withAttributedString:{a1[7], a1[4]}];
}

- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NSConcreteTextStorage_addAttribute_value_range___block_invoke;
  v5[3] = &unk_1E7267FB8;
  v5[4] = a3;
  v5[5] = self;
  v5[6] = a4;
  v6 = a5;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v5);
}

uint64_t __50__NSConcreteTextStorage_addAttribute_value_range___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _attributeFixingInProgress];
  if ((v3 & 1) == 0 && [(__CFString *)v2 isEqualToString:@"NSOriginalFont"])
  {
    v2 = @"NSFont";
  }

  result = [*(*(a1 + 40) + 104) addAttribute:v2 value:*(a1 + 48) range:{*(a1 + 56), *(a1 + 64)}];
  if ((v3 & 1) == 0)
  {
    result = [(__CFString *)v2 isEqualToString:@"NSFont"];
    if (result)
    {
      v5 = *(*(a1 + 40) + 104);
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);

      return [v5 removeAttribute:@"NSOriginalFont" range:{v6, v7}];
    }
  }

  return result;
}

- (void)removeAttribute:(id)a3 range:(_NSRange)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__NSConcreteTextStorage_removeAttribute_range___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

uint64_t __47__NSConcreteTextStorage_removeAttribute_range___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) _attributeFixingInProgress] && objc_msgSend(*(a1 + 40), "isEqualToString:", @"NSFont"))
  {
    [*(*(a1 + 32) + 104) removeAttribute:@"NSOriginalFont" range:{*(a1 + 48), *(a1 + 56)}];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 104);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v3 removeAttribute:v2 range:{v4, v5}];
}

- (void)addAttributes:(id)a3 range:(_NSRange)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__NSConcreteTextStorage_addAttributes_range___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

uint64_t __45__NSConcreteTextStorage_addAttributes_range___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _attributeFixingInProgress] & 1) != 0 || (v2 = objc_msgSend(*(a1 + 40), "objectForKey:", @"NSOriginalFont")) == 0)
  {
    [*(*(a1 + 32) + 104) addAttributes:*(a1 + 40) range:{*(a1 + 48), *(a1 + 56)}];
  }

  else
  {
    v3 = v2;
    v4 = [*(a1 + 40) objectForKey:@"NSFont"];
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 104);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__NSConcreteTextStorage_addAttributes_range___block_invoke_2;
    v11[3] = &unk_1E7267F90;
    v11[4] = v3;
    v11[5] = v4;
    v12 = v5;
    [v6 enumerateAttributesInRange:*(a1 + 48) options:*(a1 + 56) usingBlock:{0x100000, v11}];
  }

  v7 = *(a1 + 40);
  if (([*(a1 + 32) _attributeFixingInProgress] & 1) == 0)
  {
    v8 = [v7 objectForKey:@"NSOriginalFont"];
    if (v8)
    {
      v9 = v8;
      v7 = [v7 mutableCopy];
      [v7 setObject:v9 forKey:@"NSFont"];
      [v7 removeObjectForKey:@"NSOriginalFont"];
LABEL_9:
      [*(*(a1 + 32) + 104) removeAttribute:@"NSOriginalFont" range:{*(a1 + 48), *(a1 + 56)}];
      return [*(*(a1 + 32) + 104) addAttributes:v7 range:{*(a1 + 48), *(a1 + 56)}];
    }

    if ([v7 objectForKey:@"NSFont"])
    {
      goto LABEL_9;
    }
  }

  return [*(*(a1 + 32) + 104) addAttributes:v7 range:{*(a1 + 48), *(a1 + 56)}];
}

uint64_t __45__NSConcreteTextStorage_addAttributes_range___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 objectForKey:@"NSFont"];
  v10 = 1;
  if ([*(a1 + 32) isEqual:{objc_msgSend(a2, "objectForKey:", @"NSOriginalFont"}])
  {
    v9 = *(a1 + 40);
    if (v9 == v8 || ([v9 isEqual:v8] & 1) != 0)
    {
      v10 = 0;
    }
  }

  result = [*(*(a1 + 48) + 104) addAttributes:*(a1 + 56) range:{a3, a4}];
  if (v10)
  {
    v12 = *(*(a1 + 48) + 104);

    return [v12 removeAttribute:@"NSOriginalFont" range:{a3, a4}];
  }

  return result;
}

uint64_t __43__NSConcreteTextStorage__writerCountTSDKey__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 handleFailureInMethod:v3 object:v4 file:@"NSTextStorage.m" lineNumber:883 description:@"Unable to create TL key for r/w lock!"];
}

- (uint64_t)_initLocks
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"NSTextStorage.m" lineNumber:939 description:@"Lock is initialized!"];
}

@end