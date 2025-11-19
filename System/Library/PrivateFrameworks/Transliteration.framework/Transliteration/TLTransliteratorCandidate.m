@interface TLTransliteratorCandidate
+ (id)createWithCompositeTransliteratorCandidate:(const void *)a3;
- (BOOL)isEqual:(id)a3;
- (TLTransliteratorCandidate)initWithInputWord:(id)a3 transliteratedWord:(id)a4 lmScore:(double)a5 seq2seqScore:(double)a6 isExtensionCandidate:(BOOL)a7 type:(int64_t)a8;
- (id)description;
- (unint64_t)hash;
@end

@implementation TLTransliteratorCandidate

+ (id)createWithCompositeTransliteratorCandidate:(const void *)a3
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v5)
  {
    if (v4 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = *(a3 + 1);
    }

    v21 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
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

  v8 = *(a3 + 47);
  if (v8 >= 0)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = *(a3 + 3);
  }

  if (v9)
  {
    if (v8 >= 0)
    {
      v10 = *(a3 + 47);
    }

    else
    {
      v10 = *(a3 + 4);
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
  v13 = *(a3 + 6);
  v14 = *(a3 + 7);
  v15 = *(a3 + 72);
  v16 = *(a3 + 8);
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

- (TLTransliteratorCandidate)initWithInputWord:(id)a3 transliteratedWord:(id)a4 lmScore:(double)a5 seq2seqScore:(double)a6 isExtensionCandidate:(BOOL)a7 type:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v22.receiver = self;
  v22.super_class = TLTransliteratorCandidate;
  v16 = [(TLTransliteratorCandidate *)&v22 init];
  if (v16)
  {
    v17 = [v14 copy];
    inputWord = v16->_inputWord;
    v16->_inputWord = v17;

    v19 = [v15 copy];
    transliteratedWord = v16->_transliteratedWord;
    v16->_transliteratedWord = v19;

    v16->_lmScore = a5;
    v16->_seq2seqScore = a6;
    v16->_isExtensionCandidate = a7;
    v16->_type = a8;
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

  v9 = [(TLTransliteratorCandidate *)self inputWord];
  v10 = [v9 hash];

  v11 = [(TLTransliteratorCandidate *)self transliteratedWord];
  v12 = v8 ^ v5;
  v13 = v10 ^ [v11 hash];

  return v12 ^ v13 ^ [(TLTransliteratorCandidate *)self type];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[TLTransliteratorCandidate lmScore](self, "lmScore"), v8 = v7, [v6 lmScore], v8 == v9) && (-[TLTransliteratorCandidate seq2seqScore](self, "seq2seqScore"), v11 = v10, objc_msgSend(v6, "seq2seqScore"), v11 == v12))
  {
    v13 = [(TLTransliteratorCandidate *)self inputWord];
    v14 = [v6 inputWord];
    if ([v13 isEqualToString:v14])
    {
      v15 = [(TLTransliteratorCandidate *)self transliteratedWord];
      v16 = [v6 transliteratedWord];
      if ([v15 isEqualToString:v16] && (v17 = -[TLTransliteratorCandidate isExtensionCandidate](self, "isExtensionCandidate"), v17 == objc_msgSend(v6, "isExtensionCandidate")))
      {
        v19 = [(TLTransliteratorCandidate *)self type];
        v18 = v19 == [v6 type];
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
  v3 = [(TLTransliteratorCandidate *)self inputWord];
  v17[0] = v3;
  v16[1] = @"Transliterated Word";
  v4 = [(TLTransliteratorCandidate *)self transliteratedWord];
  v17[1] = v4;
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
  v9 = [(TLTransliteratorCandidate *)self isExtensionCandidate];
  v10 = @"NO";
  if (v9)
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