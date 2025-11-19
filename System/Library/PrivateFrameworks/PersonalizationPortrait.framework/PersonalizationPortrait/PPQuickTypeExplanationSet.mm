@interface PPQuickTypeExplanationSet
+ (id)stringFromExplanation:(unsigned __int8)a3;
+ (id)uniqueKeycodeFromExplanation:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQuickTypeExplanationSet:(id)a3;
- (PPQuickTypeExplanationSet)init;
- (PPQuickTypeExplanationSet)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateWithBlock:(id)a3;
- (void)push:(unsigned __int8)a3;
@end

@implementation PPQuickTypeExplanationSet

- (PPQuickTypeExplanationSet)init
{
  v8.receiver = self;
  v8.super_class = PPQuickTypeExplanationSet;
  v2 = [(PPQuickTypeExplanationSet *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69C5D60]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    set = v2->_set;
    v2->_set = v5;
  }

  return v2;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  set = self->_set;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PPQuickTypeExplanationSet_count__block_invoke;
  v5[3] = &unk_1E77F71F0;
  v5[4] = &v6;
  [(_PASLock *)set runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__PPQuickTypeExplanationSet_count__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)isEqualToQuickTypeExplanationSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v11 = 1;
    goto LABEL_7;
  }

  v6 = [(PPQuickTypeExplanationSet *)self count];
  if (v6 == [(PPQuickTypeExplanationSet *)v5 count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__5759;
    v21 = __Block_byref_object_dispose__5760;
    v22 = 0;
    set = self->_set;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__PPQuickTypeExplanationSet_isEqualToQuickTypeExplanationSet___block_invoke;
    v16[3] = &unk_1E77F71F0;
    v16[4] = &v17;
    [(_PASLock *)set runWithLockAcquired:v16];
    v8 = v18[5];
    _Block_object_dispose(&v17, 8);

    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    LOBYTE(v20) = 0;
    v9 = v5->_set;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__PPQuickTypeExplanationSet_isEqualToQuickTypeExplanationSet___block_invoke_2;
    v13[3] = &unk_1E77F7268;
    v15 = &v17;
    v10 = v8;
    v14 = v10;
    [(_PASLock *)v9 runWithLockAcquired:v13];
    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

LABEL_7:

  return v11 & 1;
}

uint64_t __62__PPQuickTypeExplanationSet_isEqualToQuickTypeExplanationSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62__PPQuickTypeExplanationSet_isEqualToQuickTypeExplanationSet___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isEqual:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPQuickTypeExplanationSet *)self isEqualToQuickTypeExplanationSet:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"<PPQuickTypeExplanationSet: (");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PPQuickTypeExplanationSet_description__block_invoke;
  v6[3] = &unk_1E77F7240;
  v4 = v3;
  v7 = v4;
  [(PPQuickTypeExplanationSet *)self enumerateWithBlock:v6];
  [v4 appendString:@">"]);

  return v4;
}

uint64_t __40__PPQuickTypeExplanationSet_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [PPQuickTypeExplanationSet stringFromExplanation:a2];
  [v3 appendString:v4];

  v5 = *(a1 + 32);

  return [v5 appendString:@"; "];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C5D60]);
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__5759;
    v16 = __Block_byref_object_dispose__5760;
    v17 = 0;
    set = self->_set;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__PPQuickTypeExplanationSet_copyWithZone___block_invoke;
    v11[3] = &unk_1E77F71F0;
    v11[4] = &v12;
    [(_PASLock *)set runWithLockAcquired:v11];
    v7 = v13[5];
    _Block_object_dispose(&v12, 8);

    v8 = [v5 initWithGuardedData:v7];
    v9 = v4[1];
    v4[1] = v8;
  }

  return v4;
}

uint64_t __42__PPQuickTypeExplanationSet_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  set = self->_set;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PPQuickTypeExplanationSet_hash__block_invoke;
  v5[3] = &unk_1E77F71F0;
  v5[4] = &v6;
  [(_PASLock *)set runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__PPQuickTypeExplanationSet_hash__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  set = self->_set;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PPQuickTypeExplanationSet_encodeWithCoder___block_invoke;
  v7[3] = &unk_1E77F7218;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)set runWithLockAcquired:v7];
}

- (PPQuickTypeExplanationSet)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PPQuickTypeExplanationSet;
  v5 = [(PPQuickTypeExplanationSet *)&v29 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"iset"];
    v9 = [v8 mutableCopy];

    if (!v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = objc_alloc(MEMORY[0x1E695DFD8]);
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v10);
      v15 = [v4 decodeObjectOfClasses:v14 forKey:@"set"];

      v9 = objc_opt_new();
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v26;
        do
        {
          v20 = 0;
          do
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v9 addIndex:{objc_msgSend(*(*(&v25 + 1) + 8 * v20++), "unsignedIntegerValue")}];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v18);
      }
    }

    v21 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v9];
    set = v5->_set;
    v5->_set = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)enumerateWithBlock:(id)a3
{
  v4 = a3;
  set = self->_set;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PPQuickTypeExplanationSet_enumerateWithBlock___block_invoke;
  v7[3] = &unk_1E77F71C8;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)set runWithLockAcquired:v7];
}

void __48__PPQuickTypeExplanationSet_enumerateWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PPQuickTypeExplanationSet_enumerateWithBlock___block_invoke_2;
  v3[3] = &unk_1E77F71A0;
  v4 = *(a1 + 32);
  [a2 enumerateIndexesUsingBlock:v3];
}

- (void)push:(unsigned __int8)a3
{
  set = self->_set;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__PPQuickTypeExplanationSet_push___block_invoke;
  v4[3] = &__block_descriptor_33_e27_v16__0__NSMutableIndexSet_8l;
  v5 = a3;
  [(_PASLock *)set runWithLockAcquired:v4];
}

+ (id)uniqueKeycodeFromExplanation:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x30)
  {
    return @"None";
  }

  else
  {
    return off_1E77F7410[(a3 - 1)];
  }
}

+ (id)stringFromExplanation:(unsigned __int8)a3
{
  if ((a3 - 1) > 0x30)
  {
    return @"None";
  }

  else
  {
    return off_1E77F7288[(a3 - 1)];
  }
}

@end