@interface TypistCandidateBar
+ (TypistCandidateBar)initWithTypistKeyboard:(id)keyboard;
+ (id)candidatesAsStringArray:(id)array;
- (BOOL)hasCandidate:(id)candidate inRange:(_NSRange)range;
- (BOOL)hasCandidates;
- (BOOL)hasCandidates:(id)candidates;
- (BOOL)hasCandidates:(id)candidates inRange:(_NSRange)range;
- (BOOL)hasVisibleCandidate:(id)candidate;
- (CGPoint)centerOfCandidate:(id)candidate;
- (TypistCandidateBar)init;
- (id)candidateUIInformation:(id)information;
- (id)getAllCandidates;
- (id)getVisibleCandidates;
- (int64_t)getIndexOfCandidate:(id)candidate;
- (int64_t)selectCandidate:(id)candidate;
- (int64_t)selectCandidateAtIndex:(int64_t)index;
@end

@implementation TypistCandidateBar

- (TypistCandidateBar)init
{
  v3.receiver = self;
  v3.super_class = TypistCandidateBar;
  return [(TypistCandidateBar *)&v3 init];
}

- (id)candidateUIInformation:(id)information
{
  informationCopy = information;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnsupportedMethodInBaseClassException" reason:@"Method should not be called from this class. This should be called from a subclass of this object." userInfo:0];
  objc_exception_throw(v4);
}

+ (TypistCandidateBar)initWithTypistKeyboard:(id)keyboard
{
  usesMecabraCandidateBar = [keyboard usesMecabraCandidateBar];
  v4 = off_279DF4158;
  if (!usesMecabraCandidateBar)
  {
    v4 = off_279DF4150;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (BOOL)hasCandidates
{
  getVisibleCandidates = [(TypistCandidateBar *)self getVisibleCandidates];
  v3 = [getVisibleCandidates count] != 0;

  return v3;
}

- (BOOL)hasCandidate:(id)candidate inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(TypistCandidateBar *)self getIndexOfCandidate:candidate];
  v8 = v6 >= location && v6 - location < length;
  return v6 >= 0 && v8;
}

- (BOOL)hasCandidates:(id)candidates
{
  v19 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [candidatesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        v11 = [(TypistCandidateBar *)self hasCandidate:*(*(&v14 + 1) + 8 * i)];
        if (v9)
        {
          v7 = v11;
        }

        else
        {
          v7 &= v11;
        }

        v9 = 0;
      }

      v6 = [candidatesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      v9 = 0;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)hasCandidates:(id)candidates inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [candidatesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    v12 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        v14 = [(TypistCandidateBar *)self hasCandidate:*(*(&v17 + 1) + 8 * i) inRange:location, length];
        if (v12)
        {
          v10 = v14;
        }

        else
        {
          v10 &= v14;
        }

        v12 = 0;
      }

      v9 = [candidatesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      v12 = 0;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)getIndexOfCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnsupportedMethodInBaseClassException" reason:@"Method should not be called from this class. This should be called from a subclass of this object." userInfo:0];
  objc_exception_throw(v4);
}

+ (id)candidatesAsStringArray:(id)array
{
  arrayCopy = array;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TypistCandidateBar_candidatesAsStringArray___block_invoke;
  v6[3] = &unk_279DF4D88;
  v6[4] = &v7;
  [arrayCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__TypistCandidateBar_candidatesAsStringArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 candidate];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 atIndexedSubscript:a3];
}

- (BOOL)hasVisibleCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnsupportedMethodInBaseClassException" reason:@"Method should not be called from this class. This should be called from a subclass of this object." userInfo:0];
  objc_exception_throw(v4);
}

- (id)getAllCandidates
{
  getAllCandidates = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getAllCandidates];
  v3 = getAllCandidates;
  if (getAllCandidates)
  {
    v4 = getAllCandidates;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)getVisibleCandidates
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnsupportedMethodInBaseClassException" reason:@"Method should not be called from this class. This should be called from a subclass of this object." userInfo:0];
  objc_exception_throw(v2);
}

- (int64_t)selectCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnsupportedMethodInBaseClassException" reason:@"Method should not be called from this class. This should be called from a subclass of this object." userInfo:0];
  objc_exception_throw(v4);
}

- (int64_t)selectCandidateAtIndex:(int64_t)index
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnsupportedMethodInBaseClassException" reason:@"Method should not be called from this class. This should be called from a subclass of this object." userInfo:0];
  objc_exception_throw(v3);
}

- (CGPoint)centerOfCandidate:(id)candidate
{
  candidateCopy = candidate;
  [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getCandidateCenter:"getCandidateCenter:", candidateCopy];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

@end