@interface TLTransliteratorCandidate
+ (id)createWithCompositeTransliteratorCandidate:(const void *)candidate;
- (BOOL)isEqual:(id)equal;
- (TLTransliteratorCandidate)initWithInputWord:(id)word transliteratedWord:(id)transliteratedWord lmScore:(double)score seq2seqScore:(double)seq2seqScore isExtensionCandidate:(BOOL)candidate type:(int64_t)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation TLTransliteratorCandidate

+ (id)createWithCompositeTransliteratorCandidate:(const void *)candidate
{
  v4 = *(candidate + 23);
  if (v4 >= 0)
  {
    candidateCopy = candidate;
  }

  else
  {
    candidateCopy = *candidate;
  }

  if (candidateCopy)
  {
    if (v4 >= 0)
    {
      v6 = *(candidate + 23);
    }

    else
    {
      v6 = *(candidate + 1);
    }

    v21 = CFStringCreateWithBytes(0, candidateCopy, v6, 0x8000100u, 0);
    if (!v21)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x274392950](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    v21 = 0;
  }

  v8 = *(candidate + 47);
  if (v8 >= 0)
  {
    v9 = candidate + 24;
  }

  else
  {
    v9 = *(candidate + 3);
  }

  if (v9)
  {
    if (v8 >= 0)
    {
      v10 = *(candidate + 47);
    }

    else
    {
      v10 = *(candidate + 4);
    }

    cf = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
    if (!cf)
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x274392950](v11, "Could not construct");
      __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  v12 = [TLTransliteratorCandidate alloc];
  v13 = *(candidate + 6);
  v14 = *(candidate + 7);
  v15 = *(candidate + 72);
  v16 = *(candidate + 8);
  v17 = v21;
  v18 = [(TLTransliteratorCandidate *)v12 initWithInputWord:v17 transliteratedWord:cf lmScore:v15 seq2seqScore:v16 isExtensionCandidate:v13 type:v14];

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v18;
}

- (TLTransliteratorCandidate)initWithInputWord:(id)word transliteratedWord:(id)transliteratedWord lmScore:(double)score seq2seqScore:(double)seq2seqScore isExtensionCandidate:(BOOL)candidate type:(int64_t)type
{
  wordCopy = word;
  transliteratedWordCopy = transliteratedWord;
  v22.receiver = self;
  v22.super_class = TLTransliteratorCandidate;
  v16 = [(TLTransliteratorCandidate *)&v22 init];
  if (v16)
  {
    v17 = [wordCopy copy];
    inputWord = v16->_inputWord;
    v16->_inputWord = v17;

    v19 = [transliteratedWordCopy copy];
    transliteratedWord = v16->_transliteratedWord;
    v16->_transliteratedWord = v19;

    v16->_lmScore = score;
    v16->_seq2seqScore = seq2seqScore;
    v16->_isExtensionCandidate = candidate;
    v16->_type = type;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  [(TLTransliteratorCandidate *)self lmScore];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];

  v6 = MEMORY[0x277CCABB0];
  [(TLTransliteratorCandidate *)self seq2seqScore];
  v7 = [v6 numberWithDouble:?];
  v8 = [v7 hash];

  inputWord = [(TLTransliteratorCandidate *)self inputWord];
  v10 = [inputWord hash];

  transliteratedWord = [(TLTransliteratorCandidate *)self transliteratedWord];
  v12 = v8 ^ v5;
  v13 = v10 ^ [transliteratedWord hash];

  return v12 ^ v13 ^ [(TLTransliteratorCandidate *)self type];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[TLTransliteratorCandidate lmScore](self, "lmScore"), v8 = v7, [v6 lmScore], v8 == v9) && (-[TLTransliteratorCandidate seq2seqScore](self, "seq2seqScore"), v11 = v10, objc_msgSend(v6, "seq2seqScore"), v11 == v12))
  {
    inputWord = [(TLTransliteratorCandidate *)self inputWord];
    inputWord2 = [v6 inputWord];
    if ([inputWord isEqualToString:inputWord2])
    {
      transliteratedWord = [(TLTransliteratorCandidate *)self transliteratedWord];
      transliteratedWord2 = [v6 transliteratedWord];
      if ([transliteratedWord isEqualToString:transliteratedWord2] && (v17 = -[TLTransliteratorCandidate isExtensionCandidate](self, "isExtensionCandidate"), v17 == objc_msgSend(v6, "isExtensionCandidate")))
      {
        type = [(TLTransliteratorCandidate *)self type];
        v18 = type == [v6 type];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v17[6] = *MEMORY[0x277D85DE8];
  v16[0] = @"Input Word";
  inputWord = [(TLTransliteratorCandidate *)self inputWord];
  v17[0] = inputWord;
  v16[1] = @"Transliterated Word";
  transliteratedWord = [(TLTransliteratorCandidate *)self transliteratedWord];
  v17[1] = transliteratedWord;
  v16[2] = @"LM Score";
  v5 = MEMORY[0x277CCABB0];
  [(TLTransliteratorCandidate *)self lmScore];
  v6 = [v5 numberWithDouble:?];
  v17[2] = v6;
  v16[3] = @"Seq2Seq Score";
  v7 = MEMORY[0x277CCABB0];
  [(TLTransliteratorCandidate *)self seq2seqScore];
  v8 = [v7 numberWithDouble:?];
  v17[3] = v8;
  v16[4] = @"Is Extension Candidate";
  isExtensionCandidate = [(TLTransliteratorCandidate *)self isExtensionCandidate];
  v10 = @"NO";
  if (isExtensionCandidate)
  {
    v10 = @"YES";
  }

  v17[4] = v10;
  v16[5] = @"Type";
  v11 = TLTransliterationCandidateTypeAsString([(TLTransliteratorCandidate *)self type]);
  v17[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v13 = [v12 description];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end