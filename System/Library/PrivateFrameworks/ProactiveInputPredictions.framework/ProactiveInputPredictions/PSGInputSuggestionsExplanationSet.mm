@interface PSGInputSuggestionsExplanationSet
+ (id)_stringFromExplanation:(unsigned __int8)explanation;
+ (id)stringFromExplanationCode:(unsigned int)code;
- (BOOL)hasContactsServingError;
- (BOOL)hasPETLoggingData;
- (BOOL)hasTriggeringXPCTimeout;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExplanationSet:(id)set;
- (PSGInputSuggestionsExplanationSet)init;
- (PSGInputSuggestionsExplanationSet)initWithCoder:(id)coder;
- (PSGInputSuggestionsExplanationSet)initWithSet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)count;
- (unint64_t)hash;
- (void)_pushExplanationCode:(unsigned __int16)code namespaceId:(unsigned __int16)id;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateExplanationCodeWithBlock:(id)block;
@end

@implementation PSGInputSuggestionsExplanationSet

- (id)description
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"<PSGInputSuggestionsExplanationSet: (");
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PSGInputSuggestionsExplanationSet_description__block_invoke;
  v7[3] = &unk_279ABCEB0;
  v5 = v3;
  v8 = v5;
  [(_PASLock *)lock runWithLockAcquired:v7];
  [v5 appendString:@">"]);

  return v5;
}

void __48__PSGInputSuggestionsExplanationSet_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a2 + 8);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = +[PSGInputSuggestionsExplanationSet stringFromExplanationCode:](PSGInputSuggestionsExplanationSet, "stringFromExplanationCode:", [*(*(&v11 + 1) + 8 * v7) unsignedIntegerValue]);
        [v8 appendString:v9];

        [*(a1 + 32) appendString:@"; "];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  unsafeGuardedData = [(_PASLock *)self->_lock unsafeGuardedData];
  v3 = unsafeGuardedData[1];

  if ([v3 count])
  {
    allObjects = [v3 allObjects];
    v5 = [allObjects objectAtIndexedSubscript:0];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGInputSuggestionsExplanationSet *)self isEqualToExplanationSet:v5];
  }

  return v6;
}

- (BOOL)isEqualToExplanationSet:(id)set
{
  if (!set)
  {
    return 0;
  }

  lock = self->_lock;
  setCopy = set;
  unsafeGuardedData = [(_PASLock *)lock unsafeGuardedData];
  v6 = unsafeGuardedData[1];
  v7 = setCopy[1];

  unsafeGuardedData2 = [v7 unsafeGuardedData];
  LOBYTE(v6) = [v6 isEqualToSet:unsafeGuardedData2[1]];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PSGInputSuggestionsExplanationSet alloc];
  unsafeGuardedData = [(_PASLock *)self->_lock unsafeGuardedData];
  v7 = [unsafeGuardedData[1] copyWithZone:zone];
  v8 = [(PSGInputSuggestionsExplanationSet *)v5 initWithSet:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  lock = self->_lock;
  coderCopy = coder;
  unsafeGuardedData = [(_PASLock *)lock unsafeGuardedData];
  [coderCopy encodeObject:unsafeGuardedData[1] forKey:@"set"];
}

- (PSGInputSuggestionsExplanationSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"set"];

  if (v9)
  {
    self = [(PSGInputSuggestionsExplanationSet *)self initWithSet:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)hasTriggeringXPCTimeout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PSGInputSuggestionsExplanationSet_hasTriggeringXPCTimeout__block_invoke;
  v5[3] = &unk_279ABCE60;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__PSGInputSuggestionsExplanationSet_hasTriggeringXPCTimeout__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 8) containsObject:&unk_2873454F0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)hasContactsServingError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PSGInputSuggestionsExplanationSet_hasContactsServingError__block_invoke;
  v5[3] = &unk_279ABCE60;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__PSGInputSuggestionsExplanationSet_hasContactsServingError__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__PSGInputSuggestionsExplanationSet_hasContactsServingError__block_invoke_2;
  v4[3] = &unk_279ABCE88;
  v4[4] = *(a1 + 32);
  return [v2 enumerateObjectsUsingBlock:v4];
}

void __60__PSGInputSuggestionsExplanationSet_hasContactsServingError__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a2 unsignedIntegerValue];
  v6 = v5;
  v7 = HIWORD(v5);
  if (HIWORD(v5) != 1)
  {
    if (HIWORD(v5) || v5 != 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_8;
  }

  if (v5 <= 0x31u && ((1 << v5) & 0x2000000005880) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v8 = psg_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_260D18000, v8, OS_LOG_TYPE_INFO, "hasContactsServingError => YES due to expCode (%d, %d)", v10, 0xEu);
    }

    *a3 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPETLoggingData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__PSGInputSuggestionsExplanationSet_hasPETLoggingData__block_invoke;
  v5[3] = &unk_279ABCE60;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __54__PSGInputSuggestionsExplanationSet_hasPETLoggingData__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__PSGInputSuggestionsExplanationSet_hasPETLoggingData__block_invoke_2;
  v4[3] = &unk_279ABCE88;
  v4[4] = *(a1 + 32);
  return [v2 enumerateObjectsUsingBlock:v4];
}

uint64_t __54__PSGInputSuggestionsExplanationSet_hasPETLoggingData__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 unsignedIntegerValue];
  if ((result - 1) <= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (a3)
    {
      *a3 = 1;
    }
  }

  return result;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PSGInputSuggestionsExplanationSet_count__block_invoke;
  v5[3] = &unk_279ABCE60;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__PSGInputSuggestionsExplanationSet_count__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 8) count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)enumerateExplanationCodeWithBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__PSGInputSuggestionsExplanationSet_enumerateExplanationCodeWithBlock___block_invoke;
  v7[3] = &unk_279ABCE38;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __71__PSGInputSuggestionsExplanationSet_enumerateExplanationCodeWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__PSGInputSuggestionsExplanationSet_enumerateExplanationCodeWithBlock___block_invoke_2;
  v3[3] = &unk_279ABCE10;
  v4 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

uint64_t __71__PSGInputSuggestionsExplanationSet_enumerateExplanationCodeWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntegerValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)_pushExplanationCode:(unsigned __int16)code namespaceId:(unsigned __int16)id
{
  idCopy = id;
  v12 = *MEMORY[0x277D85DE8];
  if (id < 2u)
  {
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__PSGInputSuggestionsExplanationSet__pushExplanationCode_namespaceId___block_invoke;
    v8[3] = &__block_descriptor_36_e54_v16__0__PSGInputSuggestionsExplanationSetGuardedData_8l;
    v9 = code | (id << 16);
    [(_PASLock *)lock runWithLockAcquired:v8];
  }

  else
  {
    v5 = psg_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v11 = idCopy;
      _os_log_fault_impl(&dword_260D18000, v5, OS_LOG_TYPE_FAULT, "Unexpcted namespace id: %d", buf, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __70__PSGInputSuggestionsExplanationSet__pushExplanationCode_namespaceId___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  [v2 addObject:v3];
}

- (PSGInputSuggestionsExplanationSet)initWithSet:(id)set
{
  setCopy = set;
  v11.receiver = self;
  v11.super_class = PSGInputSuggestionsExplanationSet;
  v6 = [(PSGInputSuggestionsExplanationSet *)&v11 init];
  if (v6)
  {
    v7 = objc_opt_new();
    objc_storeStrong(v7 + 1, set);
    v8 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v7];
    lock = v6->_lock;
    v6->_lock = v8;
  }

  return v6;
}

- (PSGInputSuggestionsExplanationSet)init
{
  v3 = objc_opt_new();
  v4 = [(PSGInputSuggestionsExplanationSet *)self initWithSet:v3];

  return v4;
}

+ (id)stringFromExplanationCode:(unsigned int)code
{
  if (HIWORD(code) == 1)
  {
    v3 = [MEMORY[0x277D3A470] stringFromExplanation:code];
  }

  else if (HIWORD(code))
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = [self _stringFromExplanation:code];
  }

  return v3;
}

+ (id)_stringFromExplanation:(unsigned __int8)explanation
{
  if (explanation > 7u)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_279ABCED0 + explanation);
  }
}

@end