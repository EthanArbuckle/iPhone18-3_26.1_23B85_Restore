@interface NSConcreteTextStorage
+ (unint64_t)_writerCountTSDKey;
- (BOOL)_lockForReading;
- (BOOL)_lockForWritingWithExceptionHandler:(BOOL)handler;
- (BOOL)fixesAttributesLazily;
- (NSConcreteTextStorage)init;
- (NSConcreteTextStorage)initWithAttributedString:(id)string;
- (NSConcreteTextStorage)initWithString:(id)string;
- (NSConcreteTextStorage)initWithString:(id)string attributes:(id)attributes;
- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (uint64_t)_initLocks;
- (void)_initLocks;
- (void)_setAttributeFixingInProgress:(BOOL)progress;
- (void)_unlock;
- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range;
- (void)addAttributes:(id)attributes range:(_NSRange)range;
- (void)dealloc;
- (void)removeAttribute:(id)attribute range:(_NSRange)range;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
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
  v3[4] = self;
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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([standardUserDefaults objectForKey:@"NSAlwaysFixAttributesLazily"])
    {
      fixesAttributesLazily_alwaysFixAttributesLazily = [standardUserDefaults BOOLForKey:@"NSAlwaysFixAttributesLazily"];
    }

    fixesAttributesLazily_readDefault = 1;
  }

  return (fixesAttributesLazily_alwaysFixAttributesLazily & 1) != 0 || *(self->super._sideData + 2) != 0x7FFFFFFFFFFFFFFFLL || self->super._editedRange.location == 0x7FFFFFFFFFFFFFFFLL || (self->super._editedRange.length & 0xFFFFFFFFFFFF0000) != 0;
}

- (BOOL)_lockForWritingWithExceptionHandler:(BOOL)handler
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

- (NSConcreteTextStorage)initWithAttributedString:(id)string
{
  v9.receiver = self;
  v9.super_class = NSConcreteTextStorage;
  v4 = [(NSTextStorage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    string = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?], "initWithAttributedString:", string];
    v5->_contents = string;
    [(NSConcreteNotifyingMutableAttributedString *)string setDelegate:v5];
    [(NSConcreteTextStorage *)v5 _initLocks];
    v7 = [(NSConcreteTextStorage *)v5 length];
    if (v7)
    {
      [(NSTextStorage *)v5 edited:3 range:0 changeInLength:0, v7];
    }
  }

  return v5;
}

- (NSConcreteTextStorage)initWithString:(id)string
{
  v9.receiver = self;
  v9.super_class = NSConcreteTextStorage;
  v4 = [(NSTextStorage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    string = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?], "initWithString:", string];
    v5->_contents = string;
    [(NSConcreteNotifyingMutableAttributedString *)string setDelegate:v5];
    [(NSConcreteTextStorage *)v5 _initLocks];
    v7 = [(NSConcreteTextStorage *)v5 length];
    if (v7)
    {
      [(NSTextStorage *)v5 edited:3 range:0 changeInLength:0, v7];
    }
  }

  return v5;
}

- (NSConcreteTextStorage)initWithString:(id)string attributes:(id)attributes
{
  v11.receiver = self;
  v11.super_class = NSConcreteTextStorage;
  v6 = [(NSTextStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    attributes = [(NSConcreteMutableAttributedString *)[NSConcreteNotifyingMutableAttributedString allocWithZone:?]attributes:"initWithString:attributes:", string, attributes];
    v7->_contents = attributes;
    [(NSConcreteNotifyingMutableAttributedString *)attributes setDelegate:v7];
    [(NSConcreteTextStorage *)v7 _initLocks];
    v9 = [(NSConcreteTextStorage *)v7 length];
    if (v9)
    {
      [(NSTextStorage *)v7 edited:3 range:0 changeInLength:0, v9];
    }
  }

  return v7;
}

- (void)_setAttributeFixingInProgress:(BOOL)progress
{
  if (progress)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_pFlags = (*&self->_pFlags & 0xFFFFFFF7 | v3);
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= index)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v12);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:index, 1];
  }

  v7 = [(NSConcreteMutableAttributedString *)self->_contents attributesAtIndex:index effectiveRange:range];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!range || (*&self->_pFlags & 1) == 0)
    {
      return v7;
    }
  }

  else if (!range)
  {
    return v7;
  }

  if (*(self->super._sideData + 2) != 0x7FFFFFFFFFFFFFFFLL && NSIntersectsRange())
  {
    sideData = self->super._sideData;
    v9 = sideData[2];
    if (v9 <= index)
    {
      v10 = sideData[3] + v9;
      if (v10 <= index)
      {
        range->length += range->location - v10;
        range->location = *(self->super._sideData + 3) + *(self->super._sideData + 2);
      }
    }

    else
    {
      range->length = v9 - range->location;
    }
  }

  return v7;
}

- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= index)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v13);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:index, 1];
  }

  v10 = [(NSConcreteNotifyingMutableAttributedString *)self->_contents attributesAtIndex:index longestEffectiveRange:range inRange:location, length];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!range || (*&self->_pFlags & 1) == 0)
    {
      return v10;
    }
  }

  else if (!range)
  {
    return v10;
  }

  if (*(self->super._sideData + 2) == 0x7FFFFFFFFFFFFFFFLL || !NSIntersectsRange())
  {
    return v10;
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:range->location, range->length];
  }

  contents = self->_contents;

  return [(NSConcreteNotifyingMutableAttributedString *)contents attributesAtIndex:index longestEffectiveRange:range inRange:location, length];
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= index)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v14);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:index, 1];
  }

  v9 = [(NSConcreteMutableAttributedString *)self->_contents attribute:attribute atIndex:index effectiveRange:range];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!range || (*&self->_pFlags & 1) == 0)
    {
      return v9;
    }
  }

  else if (!range)
  {
    return v9;
  }

  if (*(self->super._sideData + 2) != 0x7FFFFFFFFFFFFFFFLL && NSIntersectsRange())
  {
    sideData = self->super._sideData;
    v11 = sideData[2];
    if (v11 <= index)
    {
      v12 = sideData[3] + v11;
      if (v12 <= index)
      {
        range->length += range->location - v12;
        range->location = *(self->super._sideData + 3) + *(self->super._sideData + 2);
      }
    }

    else
    {
      range->length = v11 - range->location;
    }
  }

  return v9;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  if ([(NSConcreteMutableAttributedString *)self->_contents length]<= index)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@: Range or index out of bounds", _NSMethodExceptionProem()), 0}];
    objc_exception_throw(v15);
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:index, 1];
  }

  v12 = [(NSConcreteMutableAttributedString *)self->_contents attribute:attribute atIndex:index longestEffectiveRange:range inRange:location, length];
  if (*&self->super._flags >= 0x10000u)
  {
    if (!range || (*&self->_pFlags & 1) == 0)
    {
      return v12;
    }
  }

  else if (!range)
  {
    return v12;
  }

  if (*(self->super._sideData + 2) == 0x7FFFFFFFFFFFFFFFLL || !NSIntersectsRange())
  {
    return v12;
  }

  if ([(NSTextStorage *)self ensuresFixingAttributes])
  {
    [(NSTextStorage *)self ensureAttributesAreFixedInRange:range->location, range->length];
  }

  contents = self->_contents;

  return [(NSConcreteMutableAttributedString *)contents attribute:attribute atIndex:index longestEffectiveRange:range inRange:location, length];
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__NSConcreteTextStorage_replaceCharactersInRange_withString___block_invoke;
  v4[3] = &unk_1E7267F68;
  rangeCopy = range;
  v4[4] = self;
  v4[5] = string;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__NSConcreteTextStorage_setAttributes_range___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = self;
  v4[5] = attributes;
  rangeCopy = range;
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

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__NSConcreteTextStorage_replaceCharactersInRange_withAttributedString___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = string;
  v4[5] = self;
  rangeCopy = range;
  __NSConcreteTextStorageLockedForwarding(&self->super.super.super.super.isa, v4);
}

void __71__NSConcreteTextStorage_replaceCharactersInRange_withAttributedString___block_invoke(void *a1)
{
  [*(a1[5] + 104) replaceCharactersInRange:a1[6] withAttributedString:{a1[7], a1[4]}];
}

- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NSConcreteTextStorage_addAttribute_value_range___block_invoke;
  v5[3] = &unk_1E7267FB8;
  v5[4] = attribute;
  v5[5] = self;
  v5[6] = value;
  rangeCopy = range;
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

- (void)removeAttribute:(id)attribute range:(_NSRange)range
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__NSConcreteTextStorage_removeAttribute_range___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = self;
  v4[5] = attribute;
  rangeCopy = range;
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

- (void)addAttributes:(id)attributes range:(_NSRange)range
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__NSConcreteTextStorage_addAttributes_range___block_invoke;
  v4[3] = &unk_1E7267F68;
  v4[4] = self;
  v4[5] = attributes;
  rangeCopy = range;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];

  return [currentHandler handleFailureInMethod:self object:a2 file:@"NSTextStorage.m" lineNumber:939 description:@"Lock is initialized!"];
}

@end