@interface TIWordSearchCandidateResultSet
+ (id)emptySet;
- (BOOL)isEmpty;
- (TIWordSearchCandidateResultSet)initWithCandidates:(id)candidates candidateRefsDictionary:(id)dictionary disambiguationCandidates:(id)disambiguationCandidates selectedDisambiguationCandidateIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addCandidates:(id)candidates candidateRefsDictionary:(id)dictionary;
- (void)addMecabraCandidate:(id)candidate mecabraCandidateRef:(void *)ref;
- (void)addMecabraFacemarkCandidate:(void *)candidate forInput:(id)input;
- (void)addProactiveTrigger:(id)trigger;
- (void)clearProactiveTriggers;
- (void)insertMecabraCandidate:(id)candidate mecabraCandidateRef:(void *)ref atIndex:(unint64_t)index;
- (void)insertStickers:(id)stickers;
- (void)insertSyntheticMecabraCandidateWithSurface:(id)surface input:(id)input atIndex:(unint64_t)index;
- (void)moveCandidate:(id)candidate fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)setAutoconvertedMecabraCandidates:(id)candidates candidateRefsDictionary:(id)dictionary;
- (void)updateSupplementalMecabraCandidate:(id)candidate withMecabraCandidateRef:(void *)ref;
@end

@implementation TIWordSearchCandidateResultSet

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TIWordSearchCandidateResultSet allocWithZone:zone];
  mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
  disambiguationCandidates = [(TIWordSearchCandidateResultSet *)self disambiguationCandidates];
  v8 = [(TIWordSearchCandidateResultSet *)v4 initWithCandidates:mutableCandidates candidateRefsDictionary:mutableCandidateRefsDictionary disambiguationCandidates:disambiguationCandidates selectedDisambiguationCandidateIndex:[(TIWordSearchCandidateResultSet *)self selectedDisambiguationCandidateIndex]];

  return v8;
}

- (void)updateSupplementalMecabraCandidate:(id)candidate withMecabraCandidateRef:(void *)ref
{
  candidateCopy = candidate;
  if (MecabraCandidateIsSupplementalLexiconCandidate())
  {
    [candidateCopy setSupplementalItemIdentifiers:MecabraCandidateGetSupplementalLexiconIdentifiers()];
    [candidateCopy setSupplementalItemPrefix:0];
    shortValue = [MecabraCandidateGetSupplementalLexiconItemPrefix() shortValue];
    input = [candidateCopy input];
    if ([input length])
    {
      input2 = [candidateCopy input];
      v7 = [input2 characterAtIndex:0];

      if (v7 == shortValue)
      {
        [candidateCopy setSupplementalItemPrefix:shortValue];
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

- (void)insertStickers:(id)stickers
{
  stickersCopy = stickers;
  if ([stickersCopy count])
  {
    mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    v5 = MEMORY[0x277CCAA78];
    mutableCandidates2 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    v7 = [v5 indexSetWithIndexesInRange:{objc_msgSend(mutableCandidates2, "count") != 0, objc_msgSend(stickersCopy, "count")}];
    [mutableCandidates insertObjects:stickersCopy atIndexes:v7];
  }
}

- (void)moveCandidate:(id)candidate fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  candidateCopy = candidate;
  candidates = [(TIWordSearchCandidateResultSet *)self candidates];
  v9 = [candidates count];

  if (v9 > index)
  {
    mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    [mutableCandidates removeObjectAtIndex:index];

    candidates2 = [(TIWordSearchCandidateResultSet *)self candidates];
    v12 = [candidates2 count];

    if (v12 < toIndex)
    {
      toIndex = v12;
    }

    mutableCandidates2 = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    [mutableCandidates2 insertObject:candidateCopy atIndex:toIndex];
  }
}

- (void)setAutoconvertedMecabraCandidates:(id)candidates candidateRefsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  candidatesCopy = candidates;
  [(TIWordSearchCandidateResultSet *)self setAutoconvertedCandidates:candidatesCopy];
  v8 = [candidatesCopy valueForKey:@"candidate"];
  v9 = [v8 componentsJoinedByString:&stru_283FDFAF8];
  [(TIWordSearchCandidateResultSet *)self setAutoconvertedCandidateString:v9];

  v10 = [candidatesCopy valueForKey:@"input"];

  v11 = [v10 componentsJoinedByString:&stru_283FDFAF8];
  [(TIWordSearchCandidateResultSet *)self setAutoconvertedInputString:v11];

  mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
  [mutableCandidateRefsDictionary addEntriesFromDictionary:dictionaryCopy];
}

- (void)insertMecabraCandidate:(id)candidate mecabraCandidateRef:(void *)ref atIndex:(unint64_t)index
{
  candidateCopy = candidate;
  [(TIWordSearchCandidateResultSet *)self updateSupplementalMecabraCandidate:candidateCopy withMecabraCandidateRef:ref];
  mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  [mutableCandidates insertObject:candidateCopy atIndex:index];

  if (ref)
  {
    mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
    [mutableCandidateRefsDictionary setObject:ref forKey:mecabraCandidatePointerValue];
  }
}

- (void)addProactiveTrigger:(id)trigger
{
  if (trigger)
  {
    triggerCopy = trigger;
    mutableProactiveTriggers = [(TIWordSearchCandidateResultSet *)self mutableProactiveTriggers];
    [mutableProactiveTriggers addObject:triggerCopy];
  }
}

- (void)addMecabraFacemarkCandidate:(void *)candidate forInput:(id)input
{
  inputCopy = input;
  if (candidate)
  {
    v17 = inputCopy;
    v7 = MecabraCandidateGetType() == 7;
    inputCopy = v17;
    if (v7)
    {
      v8 = MecabraCandidateGetSurface();
      v9 = MecabraCandidateGetAttributes();
      v10 = MEMORY[0x277D6F450];
      v11 = [v9 objectForKeyedSubscript:@"category"];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:candidate];
      v13 = [v10 candidateWithCandidate:v8 category:v11 input:v17 mecabraCandidatePointerValue:v12];

      mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
      [mutableCandidates addObject:v13];

      mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
      mecabraCandidatePointerValue = [v13 mecabraCandidatePointerValue];
      [mutableCandidateRefsDictionary setObject:candidate forKey:mecabraCandidatePointerValue];

      inputCopy = v17;
    }
  }
}

- (void)addMecabraCandidate:(id)candidate mecabraCandidateRef:(void *)ref
{
  candidateCopy = candidate;
  [(TIWordSearchCandidateResultSet *)self updateSupplementalMecabraCandidate:candidateCopy withMecabraCandidateRef:ref];
  mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  [mutableCandidates addObject:candidateCopy];

  if (ref)
  {
    mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
    [mutableCandidateRefsDictionary setObject:ref forKey:mecabraCandidatePointerValue];
  }
}

- (void)insertSyntheticMecabraCandidateWithSurface:(id)surface input:(id)input atIndex:(unint64_t)index
{
  inputCopy = input;
  surfaceCopy = surface;
  v10 = MecabraConversionCandidateCreate();
  v11 = objc_alloc(MEMORY[0x277D6F448]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  v18 = [v11 initWithSurface:surfaceCopy input:inputCopy mecabraCandidatePointerValue:v12];

  candidates = [(TIWordSearchCandidateResultSet *)self candidates];
  v14 = [candidates count];

  if (v10)
  {
    if (v14 < index)
    {
      index = v14;
    }

    mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
    [mutableCandidates insertObject:v18 atIndex:index];

    mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
    mecabraCandidatePointerValue = [v18 mecabraCandidatePointerValue];
    [mutableCandidateRefsDictionary setObject:v10 forKey:mecabraCandidatePointerValue];
  }
}

- (void)addCandidates:(id)candidates candidateRefsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  candidatesCopy = candidates;
  mutableCandidates = [(TIWordSearchCandidateResultSet *)self mutableCandidates];
  [mutableCandidates addObjectsFromArray:candidatesCopy];

  mutableCandidateRefsDictionary = [(TIWordSearchCandidateResultSet *)self mutableCandidateRefsDictionary];
  [mutableCandidateRefsDictionary addEntriesFromDictionary:dictionaryCopy];
}

- (BOOL)isEmpty
{
  candidates = [(TIWordSearchCandidateResultSet *)self candidates];
  if ([candidates count])
  {
    v4 = 0;
  }

  else
  {
    disambiguationCandidates = [(TIWordSearchCandidateResultSet *)self disambiguationCandidates];
    if ([disambiguationCandidates count])
    {
      v4 = 0;
    }

    else
    {
      proactiveTriggers = [(TIWordSearchCandidateResultSet *)self proactiveTriggers];
      if ([proactiveTriggers count])
      {
        v4 = 0;
      }

      else
      {
        proactiveCandidates = [(TIWordSearchCandidateResultSet *)self proactiveCandidates];
        v4 = [proactiveCandidates count] == 0;
      }
    }
  }

  return v4;
}

- (TIWordSearchCandidateResultSet)initWithCandidates:(id)candidates candidateRefsDictionary:(id)dictionary disambiguationCandidates:(id)disambiguationCandidates selectedDisambiguationCandidateIndex:(unint64_t)index
{
  candidatesCopy = candidates;
  dictionaryCopy = dictionary;
  disambiguationCandidatesCopy = disambiguationCandidates;
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

    if (candidatesCopy && dictionaryCopy)
    {
      [(TIWordSearchCandidateResultSet *)v13 addCandidates:candidatesCopy candidateRefsDictionary:dictionaryCopy];
    }

    v18 = [disambiguationCandidatesCopy copy];
    disambiguationCandidates = v13->_disambiguationCandidates;
    v13->_disambiguationCandidates = v18;

    v13->_selectedDisambiguationCandidateIndex = index;
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
  block[4] = self;
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