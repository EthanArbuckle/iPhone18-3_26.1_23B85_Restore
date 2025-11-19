@interface PRPinyinString
+ (id)alternativesForInputString:(id)a3;
+ (id)correctionsForInputString:(id)a3;
+ (id)prefixesForInputString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 modificationType:(unint64_t)a8 originalModificationRange:(_NSRange)a9 finalModificationRange:(_NSRange)a10;
- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 modificationType:(unint64_t)a8 originalModificationRange:(_NSRange)a9 finalModificationRange:(_NSRange)a10 originalSyllableRange:(_NSRange)a11;
- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 modificationType:(unint64_t)a8 originalModificationRange:(_NSRange)a9 finalModificationRange:(_NSRange)a10 originalSyllableRange:(_NSRange)a11 originalAdditionalSyllableRange:(_NSRange)a12;
- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 originalCheckedLength:(unint64_t)a8 numberOfModifications:(unint64_t)a9 modificationTypes:(unint64_t *)a10 originalModificationRanges:(_NSRange *)a11 finalModificationRanges:(_NSRange *)a12 originalSyllableRanges:(_NSRange *)a13 originalAdditionalSyllableRanges:(_NSRange *)a14;
- (PRPinyinString)initWithUncheckedString:(id)a3 score:(unint64_t)a4 originalLength:(unint64_t)a5;
- (_NSRange)finalRangeForModificationAtIndex:(unint64_t)a3;
- (_NSRange)nonPinyinRangeAtIndex:(unint64_t)a3;
- (_NSRange)originalAdditionalSyllableRangeForModificationAtIndex:(unint64_t)a3;
- (_NSRange)originalRangeForModificationAtIndex:(unint64_t)a3;
- (_NSRange)originalSyllableRangeForModificationAtIndex:(unint64_t)a3;
- (id)annotatedString;
- (id)nonPinyinIndexSet;
- (unint64_t)indexOfFirstModification;
- (unint64_t)numberOfDeletions;
- (unint64_t)numberOfInsertions;
- (unint64_t)numberOfNonPinyinRanges;
- (unint64_t)numberOfReplacements;
- (unint64_t)numberOfTranspositions;
- (unint64_t)typeOfModificationAtIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation PRPinyinString

- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 modificationType:(unint64_t)a8 originalModificationRange:(_NSRange)a9 finalModificationRange:(_NSRange)a10
{
  v21.receiver = self;
  v21.super_class = PRPinyinString;
  v16 = [(PRPinyinString *)&v21 init];
  v17 = [a3 copy];
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B128]) = v17;
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B130]) = a4;
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B110]) = a5;
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B120]) = a6;
  v16->_originalCheckedLength = a7;
  v16->_originalLength = a7;
  v16->_modificationCount = 1;
  v16->_modificationTypes = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v16->_originalRanges = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v16->_finalRanges = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v16->_originalSyllableRanges = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v18 = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v16->_originalAdditionalSyllableRanges = v18;
  *v16->_modificationTypes = a8;
  *v16->_originalRanges = a9;
  originalSyllableRanges = v16->_originalSyllableRanges;
  *v16->_finalRanges = a10;
  *originalSyllableRanges = xmmword_1D2BF76A0;
  *v18 = xmmword_1D2BF76A0;
  return v16;
}

- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 modificationType:(unint64_t)a8 originalModificationRange:(_NSRange)a9 finalModificationRange:(_NSRange)a10 originalSyllableRange:(_NSRange)a11
{
  v21.receiver = self;
  v21.super_class = PRPinyinString;
  v16 = [(PRPinyinString *)&v21 init];
  v17 = [a3 copy];
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B128]) = v17;
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B130]) = a4;
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B110]) = a5;
  *(&v16->super.super.super.isa + *MEMORY[0x1E696B120]) = a6;
  v16->_originalCheckedLength = a7;
  v16->_originalLength = a7;
  v16->_modificationCount = 1;
  v16->_modificationTypes = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v16->_originalRanges = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v16->_finalRanges = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v16->_originalSyllableRanges = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v18 = malloc_type_malloc(16 * v16->_modificationCount, 0x1000040451B5BE8uLL);
  v16->_originalAdditionalSyllableRanges = v18;
  *v16->_modificationTypes = a8;
  *v16->_originalRanges = a9;
  *v16->_finalRanges = a10;
  *v16->_originalSyllableRanges = a11;
  *v18 = xmmword_1D2BF76A0;
  return v16;
}

- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 modificationType:(unint64_t)a8 originalModificationRange:(_NSRange)a9 finalModificationRange:(_NSRange)a10 originalSyllableRange:(_NSRange)a11 originalAdditionalSyllableRange:(_NSRange)a12
{
  v23.receiver = self;
  v23.super_class = PRPinyinString;
  v17 = [(PRPinyinString *)&v23 init];
  v18 = [a3 copy];
  *(&v17->super.super.super.isa + *MEMORY[0x1E696B128]) = v18;
  *(&v17->super.super.super.isa + *MEMORY[0x1E696B130]) = a4;
  *(&v17->super.super.super.isa + *MEMORY[0x1E696B110]) = a5;
  *(&v17->super.super.super.isa + *MEMORY[0x1E696B120]) = a6;
  v17->_originalCheckedLength = a7;
  v17->_originalLength = a7;
  v17->_modificationCount = 1;
  v17->_modificationTypes = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v17->_originalRanges = malloc_type_malloc(16 * v17->_modificationCount, 0x1000040451B5BE8uLL);
  v17->_finalRanges = malloc_type_malloc(16 * v17->_modificationCount, 0x1000040451B5BE8uLL);
  v17->_originalSyllableRanges = malloc_type_malloc(16 * v17->_modificationCount, 0x1000040451B5BE8uLL);
  v19 = malloc_type_malloc(16 * v17->_modificationCount, 0x1000040451B5BE8uLL);
  v17->_originalAdditionalSyllableRanges = v19;
  *v17->_modificationTypes = a8;
  *v17->_originalRanges = a9;
  originalSyllableRanges = v17->_originalSyllableRanges;
  *v17->_finalRanges = a10;
  *originalSyllableRanges = a11;
  *v19 = a12;
  return v17;
}

- (PRPinyinString)initWithUncheckedString:(id)a3 score:(unint64_t)a4 originalLength:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = PRPinyinString;
  v8 = [(PRPinyinString *)&v11 init];
  v9 = [a3 copy];
  *(&v8->super.super.super.isa + *MEMORY[0x1E696B128]) = v9;
  *(&v8->super.super.super.isa + *MEMORY[0x1E696B130]) = 0;
  *(&v8->super.super.super.isa + *MEMORY[0x1E696B110]) = 0;
  *(&v8->super.super.super.isa + *MEMORY[0x1E696B120]) = a4;
  v8->_originalLength = a5;
  v8->_originalCheckedLength = 0;
  v8->_modificationCount = 0;
  v8->_modificationTypes = 0;
  v8->_originalRanges = 0;
  v8->_finalRanges = 0;
  v8->_originalSyllableRanges = 0;
  v8->_originalAdditionalSyllableRanges = 0;
  return v8;
}

- (PRPinyinString)initWithString:(id)a3 syllableCount:(unint64_t)a4 lastSyllableIsPartial:(BOOL)a5 score:(unint64_t)a6 originalLength:(unint64_t)a7 originalCheckedLength:(unint64_t)a8 numberOfModifications:(unint64_t)a9 modificationTypes:(unint64_t *)a10 originalModificationRanges:(_NSRange *)a11 finalModificationRanges:(_NSRange *)a12 originalSyllableRanges:(_NSRange *)a13 originalAdditionalSyllableRanges:(_NSRange *)a14
{
  v25.receiver = self;
  v25.super_class = PRPinyinString;
  v20 = [(PRPinyinString *)&v25 init];
  v21 = [a3 copy];
  *(&v20->super.super.super.isa + *MEMORY[0x1E696B128]) = v21;
  *(&v20->super.super.super.isa + *MEMORY[0x1E696B130]) = a4;
  *(&v20->super.super.super.isa + *MEMORY[0x1E696B110]) = a5;
  *(&v20->super.super.super.isa + *MEMORY[0x1E696B120]) = a6;
  v20->_originalLength = a7;
  v20->_originalCheckedLength = a8;
  v20->_modificationCount = a9;
  v20->_modificationTypes = malloc_type_malloc(8 * a9, 0x100004000313F17uLL);
  v20->_originalRanges = malloc_type_malloc(16 * v20->_modificationCount, 0x1000040451B5BE8uLL);
  v20->_finalRanges = malloc_type_malloc(16 * v20->_modificationCount, 0x1000040451B5BE8uLL);
  v20->_originalSyllableRanges = malloc_type_malloc(16 * v20->_modificationCount, 0x1000040451B5BE8uLL);
  v20->_originalAdditionalSyllableRanges = malloc_type_malloc(16 * v20->_modificationCount, 0x1000040451B5BE8uLL);
  if (v20->_modificationCount)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v20->_modificationTypes[v23] = a10[v23];
      v20->_originalRanges[v22] = a11[v22];
      v20->_finalRanges[v22] = a12[v22];
      v20->_originalSyllableRanges[v22] = a13[v22];
      v20->_originalAdditionalSyllableRanges[v22] = a14[v22];
      ++v23;
      ++v22;
    }

    while (v23 < v20->_modificationCount);
  }

  return v20;
}

- (void)dealloc
{
  modificationTypes = self->_modificationTypes;
  if (modificationTypes)
  {
    free(modificationTypes);
  }

  originalRanges = self->_originalRanges;
  if (originalRanges)
  {
    free(originalRanges);
  }

  finalRanges = self->_finalRanges;
  if (finalRanges)
  {
    free(finalRanges);
  }

  originalSyllableRanges = self->_originalSyllableRanges;
  if (originalSyllableRanges)
  {
    free(originalSyllableRanges);
  }

  originalAdditionalSyllableRanges = self->_originalAdditionalSyllableRanges;
  if (originalAdditionalSyllableRanges)
  {
    free(originalAdditionalSyllableRanges);
  }

  v8.receiver = self;
  v8.super_class = PRPinyinString;
  [(NSPinyinString *)&v8 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v41 = v8;
    v42 = v7;
    v43 = v6;
    v44 = v5;
    v45 = v4;
    v46 = v3;
    v47 = v9;
    v48 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v13 = [*(&self->super.super.super.isa + *MEMORY[0x1E696B128]) isEqualToString:{objc_msgSend(a3, "string")}];
    if (!v13)
    {
      return v13;
    }

    v14 = *(&self->super.super.super.isa + *MEMORY[0x1E696B130]);
    if (v14 != [a3 syllableCount] || (v15 = *(&self->super.super.super.isa + *MEMORY[0x1E696B110]), v15 != objc_msgSend(a3, "lastSyllableIsPartial")) || (v16 = *(&self->super.super.super.isa + *MEMORY[0x1E696B120]), v16 != objc_msgSend(a3, "score")) || (modificationCount = self->_modificationCount, modificationCount != objc_msgSend(a3, "numberOfModifications")))
    {
LABEL_21:
      LOBYTE(v13) = 0;
      return v13;
    }

    if (self->_modificationCount)
    {
      v18 = 0;
      while (1)
      {
        v19 = [(PRPinyinString *)self typeOfModificationAtIndex:v18, v41, v42, v43, v44, v45, v46, v47, v48];
        if (v19 != [a3 typeOfModificationAtIndex:v18])
        {
          break;
        }

        v20 = [(PRPinyinString *)self originalRangeForModificationAtIndex:v18];
        v22 = v21;
        v24 = [a3 originalRangeForModificationAtIndex:v18];
        LOBYTE(v13) = 0;
        if (v20 == v24 && v22 == v23)
        {
          v25 = [(PRPinyinString *)self finalRangeForModificationAtIndex:v18];
          v27 = v26;
          v29 = [a3 finalRangeForModificationAtIndex:v18];
          LOBYTE(v13) = 0;
          if (v25 == v29 && v27 == v28)
          {
            v30 = [(PRPinyinString *)self originalSyllableRangeForModificationAtIndex:v18];
            v32 = v31;
            v34 = [a3 originalSyllableRangeForModificationAtIndex:v18];
            LOBYTE(v13) = 0;
            if (v30 == v34 && v32 == v33)
            {
              v35 = [(PRPinyinString *)self originalAdditionalSyllableRangeForModificationAtIndex:v18];
              v37 = v36;
              v39 = [a3 originalAdditionalSyllableRangeForModificationAtIndex:v18];
              LOBYTE(v13) = 0;
              if (v35 == v39 && v37 == v38)
              {
                ++v18;
                LOBYTE(v13) = 1;
                if (v18 < self->_modificationCount)
                {
                  continue;
                }
              }
            }
          }
        }

        return v13;
      }

      goto LABEL_21;
    }

    LOBYTE(v13) = 1;
  }

  return v13;
}

- (id)annotatedString
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PRPinyinString *)self nonPinyinIndexSet];
  v5 = [(PRPinyinString *)self length];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PRPinyinString_annotatedString__block_invoke;
  v7[3] = &unk_1E840F2B8;
  v7[5] = self;
  v7[6] = &v8;
  v7[4] = v3;
  [v4 enumerateRangesUsingBlock:v7];
  if (v5 > v9[3])
  {
    [v3 appendString:{-[PRPinyinString substringWithRange:](self, "substringWithRange:")}];
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t __33__PRPinyinString_annotatedString__block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a2 > *(*(*(result + 48) + 8) + 24))
  {
    result = [*(result + 32) appendString:{objc_msgSend(*(result + 40), "substringWithRange:")}];
  }

  if (a3)
  {
    result = [*(v5 + 32) appendFormat:@"[%@]", objc_msgSend(*(v5 + 40), "substringWithRange:", a2, a3)];
  }

  *(*(*(v5 + 48) + 8) + 24) = a2 + a3;
  return result;
}

- (unint64_t)typeOfModificationAtIndex:(unint64_t)a3
{
  if (self->_modificationCount <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index %lu count %lu", a3, *(&self->super.super.super.isa + *MEMORY[0x1E696B118])}];
  }

  return self->_modificationTypes[a3];
}

- (_NSRange)originalRangeForModificationAtIndex:(unint64_t)a3
{
  if (self->_modificationCount <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index %lu count %lu", a3, *(&self->super.super.super.isa + *MEMORY[0x1E696B118])}];
  }

  v5 = &self->_originalRanges[a3];
  location = v5->location;
  length = v5->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)finalRangeForModificationAtIndex:(unint64_t)a3
{
  if (self->_modificationCount <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index %lu count %lu", a3, *(&self->super.super.super.isa + *MEMORY[0x1E696B118])}];
  }

  v5 = &self->_finalRanges[a3];
  location = v5->location;
  length = v5->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)originalSyllableRangeForModificationAtIndex:(unint64_t)a3
{
  if (self->_modificationCount <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index %lu count %lu", a3, *(&self->super.super.super.isa + *MEMORY[0x1E696B118])}];
  }

  v5 = &self->_originalSyllableRanges[a3];
  location = v5->location;
  length = v5->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)originalAdditionalSyllableRangeForModificationAtIndex:(unint64_t)a3
{
  if (self->_modificationCount <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index %lu count %lu", a3, *(&self->super.super.super.isa + *MEMORY[0x1E696B118])}];
  }

  v5 = &self->_originalAdditionalSyllableRanges[a3];
  location = v5->location;
  length = v5->length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)indexOfFirstModification
{
  if (self->_modificationCount)
  {
    return [(PRPinyinString *)self finalRangeForModificationAtIndex:0];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)numberOfNonPinyinRanges
{
  if (!self->_modificationCount)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ([(PRPinyinString *)self typeOfModificationAtIndex:v4]== 5)
    {
      ++v3;
    }

    ++v4;
  }

  while (v4 < self->_modificationCount);
  return v3;
}

- (unint64_t)numberOfReplacements
{
  if (!self->_modificationCount)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ([(PRPinyinString *)self typeOfModificationAtIndex:v4]== 1)
    {
      ++v3;
    }

    ++v4;
  }

  while (v4 < self->_modificationCount);
  return v3;
}

- (unint64_t)numberOfTranspositions
{
  if (!self->_modificationCount)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ([(PRPinyinString *)self typeOfModificationAtIndex:v4]== 2)
    {
      ++v3;
    }

    ++v4;
  }

  while (v4 < self->_modificationCount);
  return v3;
}

- (unint64_t)numberOfInsertions
{
  if (!self->_modificationCount)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    [(PRPinyinString *)self originalRangeForModificationAtIndex:v4];
    v6 = v5;
    [(PRPinyinString *)self finalRangeForModificationAtIndex:v4];
    v8 = v7 - v6;
    if (v7 < v6)
    {
      v8 = 0;
    }

    v3 += v8;
    ++v4;
  }

  while (v4 < self->_modificationCount);
  return v3;
}

- (unint64_t)numberOfDeletions
{
  if (!self->_modificationCount)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    [(PRPinyinString *)self originalRangeForModificationAtIndex:v4];
    v6 = v5;
    [(PRPinyinString *)self finalRangeForModificationAtIndex:v4];
    v8 = v6 - v7;
    if (v6 < v7)
    {
      v8 = 0;
    }

    v3 += v8;
    ++v4;
  }

  while (v4 < self->_modificationCount);
  return v3;
}

- (_NSRange)nonPinyinRangeAtIndex:(unint64_t)a3
{
  if (!self->_modificationCount)
  {
    v5 = 0;
    v6 = 0;
LABEL_11:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"index %lu count %lu", a3, v6}];
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if ([(PRPinyinString *)self typeOfModificationAtIndex:v7]== 5)
    {
      if (v6 == a3)
      {
        v8 = [(PRPinyinString *)self finalRangeForModificationAtIndex:v7];
        v5 = v9;
      }

      ++v6;
    }

    ++v7;
  }

  while (v7 < self->_modificationCount);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

LABEL_12:
  v10 = v8;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)nonPinyinIndexSet
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v4 = [(PRPinyinString *)self numberOfNonPinyinRanges];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(PRPinyinString *)self nonPinyinRangeAtIndex:i];
      [v3 addIndexesInRange:{v7, v8}];
    }
  }

  return v3;
}

+ (id)alternativesForInputString:(id)a3
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 alternativesForPinyinInputString:a3];
}

+ (id)prefixesForInputString:(id)a3
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 prefixesForPinyinInputString:a3];
}

+ (id)correctionsForInputString:(id)a3
{
  v4 = _sharedChecker;
  if (!_sharedChecker)
  {
    v4 = objc_alloc_init(AppleSpell);
    _sharedChecker = v4;
  }

  return [(AppleSpell *)v4 spellServer:0 prefixesForPinyinInputString:a3];
}

@end