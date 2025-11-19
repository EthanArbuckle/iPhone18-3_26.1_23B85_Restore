@interface TIWordSearchCandidateResultSet
+ (id)emptySet;
- (BOOL)isEmpty;
- (TIWordSearchCandidateResultSet)initWithCandidates:(id)a3 candidateRefsDictionary:(id)a4 disambiguationCandidates:(id)a5 selectedDisambiguationCandidateIndex:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addCandidates:(id)a3 candidateRefsDictionary:(id)a4;
- (void)addMecabraCandidate:(id)a3 mecabraCandidateRef:(void *)a4;
- (void)addMecabraFacemarkCandidate:(void *)a3 forInput:(id)a4;
- (void)addProactiveTrigger:(id)a3;
- (void)clearProactiveTriggers;
- (void)insertMecabraCandidate:(id)a3 mecabraCandidateRef:(void *)a4 atIndex:(unint64_t)a5;
- (void)insertStickers:(id)a3;
- (void)insertSyntheticMecabraCandidateWithSurface:(id)a3 input:(id)a4 atIndex:(unint64_t)a5;
- (void)moveCandidate:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)setAutoconvertedMecabraCandidates:(id)a3 candidateRefsDictionary:(id)a4;
- (void)updateSupplementalMecabraCandidate:(id)a3 withMecabraCandidateRef:(void *)a4;
@end

@implementation TIWordSearchCandidateResultSet

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TIWordSearchCandidateResultSet allocWithZone:a3];
  v5 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  v6 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
  v7 = [(TIWordSearchCandidateResultSet *)self disambiguationCandidates];
  v8 = [(TIWordSearchCandidateResultSet *)v4 initWithCandidates:v5 candidateRefsDictionary:v6 disambiguationCandidates:v7 selectedDisambiguationCandidateIndex:[(TIWordSearchCandidateResultSet *)self selectedDisambiguationCandidateIndex]];

  return v8;
}

- (void)updateSupplementalMecabraCandidate:(id)a3 withMecabraCandidateRef:(void *)a4
{
  v8 = a3;
  if (MecabraCandidateIsSupplementalLexiconCandidate())
  {
    [v8 setSupplementalItemIdentifiers:MecabraCandidateGetSupplementalLexiconIdentifiers()];
    [v8 setSupplementalItemPrefix:0];
    v4 = [MecabraCandidateGetSupplementalLexiconItemPrefix() shortValue];
    v5 = [v8 input];
    if ([v5 length])
    {
      v6 = [v8 input];
      v7 = [v6 characterAtIndex:0];

      if (v7 == v4)
      {
        [v8 setSupplementalItemPrefix:v4];
      }
    }

    else
    {
    }
  }
}

- (void)clearProactiveTriggers
{
  if ([(NSMutableArray *)self->_mutableProactiveTriggers count])
  {
    mutableProactiveTriggers = self->_mutableProactiveTriggers;

    [(NSMutableArray *)mutableProactiveTriggers removeAllObjects];
  }
}

- (void)insertStickers:(id)a3
{
  v8 = a3;
  if ([v8 count])
  {
    v4 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    v5 = MEMORY[0x277CCAA78];
    v6 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    v7 = [v5 indexSetWithIndexesInRange:{objc_msgSend(v6, "count") != 0, objc_msgSend(v8, "count")}];
    [v4 insertObjects:v8 atIndexes:v7];
  }
}

- (void)moveCandidate:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v14 = a3;
  v8 = [(TIWordSearchCandidateResultSet *)self candidates];
  v9 = [v8 count];

  if (v9 > a4)
  {
    v10 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    [v10 removeObjectAtIndex:a4];

    v11 = [(TIWordSearchCandidateResultSet *)self candidates];
    v12 = [v11 count];

    if (v12 < a5)
    {
      a5 = v12;
    }

    v13 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    [v13 insertObject:v14 atIndex:a5];
  }
}

- (void)setAutoconvertedMecabraCandidates:(id)a3 candidateRefsDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TIWordSearchCandidateResultSet *)self setAutoconvertedCandidates:v7];
  v8 = [v7 valueForKey:@"candidate"];
  v9 = [v8 componentsJoinedByString:&stru_283FDFAF8];
  [(TIWordSearchCandidateResultSet *)self setAutoconvertedCandidateString:v9];

  v10 = [v7 valueForKey:@"input"];

  v11 = [v10 componentsJoinedByString:&stru_283FDFAF8];
  [(TIWordSearchCandidateResultSet *)self setAutoconvertedInputString:v11];

  v12 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
  [v12 addEntriesFromDictionary:v6];
}

- (void)insertMecabraCandidate:(id)a3 mecabraCandidateRef:(void *)a4 atIndex:(unint64_t)a5
{
  v11 = a3;
  [(TIWordSearchCandidateResultSet *)self updateSupplementalMecabraCandidate:v11 withMecabraCandidateRef:a4];
  v8 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  [v8 insertObject:v11 atIndex:a5];

  if (a4)
  {
    v9 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
    v10 = [v11 mecabraCandidatePointerValue];
    [v9 setObject:a4 forKey:v10];
  }
}

- (void)addProactiveTrigger:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(TIWordSearchCandidateResultSet *)self mutableProactiveTriggers];
    [v5 addObject:v4];
  }
}

- (void)addMecabraFacemarkCandidate:(void *)a3 forInput:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v17 = v6;
    v7 = MecabraCandidateGetType() == 7;
    v6 = v17;
    if (v7)
    {
      v8 = MecabraCandidateGetSurface();
      v9 = MecabraCandidateGetAttributes();
      v10 = MEMORY[0x277D6F450];
      v11 = [v9 objectForKeyedSubscript:@"category"];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      v13 = [v10 candidateWithCandidate:v8 category:v11 input:v17 mecabraCandidatePointerValue:v12];

      v14 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
      [v14 addObject:v13];

      v15 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
      v16 = [v13 mecabraCandidatePointerValue];
      [v15 setObject:a3 forKey:v16];

      v6 = v17;
    }
  }
}

- (void)addMecabraCandidate:(id)a3 mecabraCandidateRef:(void *)a4
{
  v9 = a3;
  [(TIWordSearchCandidateResultSet *)self updateSupplementalMecabraCandidate:v9 withMecabraCandidateRef:a4];
  v6 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  [v6 addObject:v9];

  if (a4)
  {
    v7 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
    v8 = [v9 mecabraCandidatePointerValue];
    [v7 setObject:a4 forKey:v8];
  }
}

- (void)insertSyntheticMecabraCandidateWithSurface:(id)a3 input:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = MecabraConversionCandidateCreate();
  v11 = objc_alloc(MEMORY[0x277D6F448]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  v18 = [v11 initWithSurface:v9 input:v8 mecabraCandidatePointerValue:v12];

  v13 = [(TIWordSearchCandidateResultSet *)self candidates];
  v14 = [v13 count];

  if (v10)
  {
    if (v14 < a5)
    {
      a5 = v14;
    }

    v15 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    [v15 insertObject:v18 atIndex:a5];

    v16 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
    v17 = [v18 mecabraCandidatePointerValue];
    [v16 setObject:v10 forKey:v17];
  }
}

- (void)addCandidates:(id)a3 candidateRefsDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  [v8 addObjectsFromArray:v7];

  v9 = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
  [v9 addEntriesFromDictionary:v6];
}

- (BOOL)isEmpty
{
  v3 = [(TIWordSearchCandidateResultSet *)self candidates];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TIWordSearchCandidateResultSet *)self disambiguationCandidates];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(TIWordSearchCandidateResultSet *)self proactiveTriggers];
      if ([v6 count])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(TIWordSearchCandidateResultSet *)self proactiveCandidates];
        v4 = [v7 count] == 0;
      }
    }
  }

  return v4;
}

- (TIWordSearchCandidateResultSet)initWithCandidates:(id)a3 candidateRefsDictionary:(id)a4 disambiguationCandidates:(id)a5 selectedDisambiguationCandidateIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23.receiver = self;
  v23.super_class = TIWordSearchCandidateResultSet;
  v13 = [(TIWordSearchCandidateResultSet *)&v23 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableCandidates = v13->_mutableCandidates;
    v13->_mutableCandidates = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableCandidateRefsDictionary = v13->_mutableCandidateRefsDictionary;
    v13->_mutableCandidateRefsDictionary = v16;

    if (v10 && v11)
    {
      [(TIWordSearchCandidateResultSet *)v13 addCandidates:v10 candidateRefsDictionary:v11];
    }

    v18 = [v12 copy];
    disambiguationCandidates = v13->_disambiguationCandidates;
    v13->_disambiguationCandidates = v18;

    v13->_selectedDisambiguationCandidateIndex = a6;
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableProactiveTriggers = v13->_mutableProactiveTriggers;
    v13->_mutableProactiveTriggers = v20;
  }

  return v13;
}

+ (id)emptySet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TIWordSearchCandidateResultSet_emptySet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (emptySet___onceToken != -1)
  {
    dispatch_once(&emptySet___onceToken, block);
  }

  v2 = emptySet___emptySet;

  return v2;
}

uint64_t __42__TIWordSearchCandidateResultSet_emptySet__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithCandidates:0 candidateRefsDictionary:0];
  v2 = emptySet___emptySet;
  emptySet___emptySet = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end