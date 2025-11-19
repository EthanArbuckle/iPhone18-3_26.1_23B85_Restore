@interface PMLWordPieceTokenizer
- (PMLWordPieceTokenizer)initWithVocab:(id)a3;
- (id)tokenize:(id)a3 withLength:(unint64_t)a4;
- (int)toTokens:(_NSRange *)a3 fromInput:(id)a4 withLength:(unint64_t)a5;
- (int)tokenizeToIds:(float *)a3 fromString:(id)a4 tokens:(_NSRange *)a5 tokenCount:(int)a6 length:(unint64_t)a7;
- (unsigned)endId;
- (unsigned)padId;
- (unsigned)startId;
@end

@implementation PMLWordPieceTokenizer

- (unsigned)padId
{
  v4 = [(PMLWordPieceVocabProtocol *)self->_vocab payloadForString:@"[PAD]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PMLWordPieceTokenizer.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"padId != PMLWordPieceVocabNotFound"}];
  }

  return v4;
}

- (unsigned)endId
{
  v4 = [(PMLWordPieceVocabProtocol *)self->_vocab payloadForString:@"[SEP]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PMLWordPieceTokenizer.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"endId != PMLWordPieceVocabNotFound"}];
  }

  return v4;
}

- (unsigned)startId
{
  v4 = [(PMLWordPieceVocabProtocol *)self->_vocab payloadForString:@"[CLS]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PMLWordPieceTokenizer.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"startId != PMLWordPieceVocabNotFound"}];
  }

  return v4;
}

- (int)tokenizeToIds:(float *)a3 fromString:(id)a4 tokens:(_NSRange *)a5 tokenCount:(int)a6 length:(unint64_t)a7
{
  v46 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:206];
  [@"##" getCharacters:objc_msgSend(v10 range:{"mutableBytes"), 0, 2}];
  v11 = objc_opt_new();
  v38 = v10;
  v45 = [v10 mutableBytes];
  LODWORD(v12) = 0;
  if (a6 >= 1)
  {
    v37 = a2;
    if (a7)
    {
      v13 = 0;
      v14 = 0;
      __dst = (v45 + 4);
      v15 = *MEMORY[0x277CBED00];
      v16 = a6;
      v17 = 0;
      v42 = v16;
      v43 = a7;
      do
      {
        v18 = &a5[v13];
        length = v18->length;
        if (length < 0x65)
        {
          location = v18->location;
          v23 = length + v18->location;
          [v46 getCharacters:__dst range:v18->location];
          if (location >= v23)
          {
            v12 = v14;
          }

          else
          {
            v39 = v23;
            v40 = v17;
            v41 = v14;
            LODWORD(v12) = v14;
            v24 = location;
            v48 = location;
            while (1)
            {
              v25 = v23 - v24;
              if (v23 == v24)
              {
                break;
              }

              v26 = (v45 + 4 * (v24 == location));
              while (1)
              {
                v27 = v11;
                v28 = CFStringCreateWithCharactersNoCopy(0, v26, 2 * (v24 != v48) + v25, v15);
                CFStringReplaceAll(v27, v28);

                CFRelease(v28);
                v29 = [(PMLWordPieceVocabProtocol *)self->_vocab payloadForString:v27];
                if (v29 != -1)
                {
                  break;
                }

                if (!--v25)
                {
                  goto LABEL_24;
                }
              }

              a7 = v43;
              if (v12 >= v43)
              {
                v30 = 0;
              }

              else
              {
                a3[v12] = v29;
                v30 = 1;
              }

              v16 = v42;
              v24 += v25;
              v23 = v39;
              memmove(__dst, &__dst[2 * v25], 2 * (v39 - v24));
              v12 = (v30 + v12);
              location = v48;
              if (v39 <= v24)
              {
                goto LABEL_30;
              }
            }

LABEL_24:
            v31 = [(PMLWordPieceVocabProtocol *)self->_vocab payloadForString:@"[UNK]"];
            if (v31 == -1)
            {
              v35 = [MEMORY[0x277CCA890] currentHandler];
              [v35 handleFailureInMethod:v37 object:self file:@"PMLWordPieceTokenizer.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"unkToken != PMLWordPieceVocabNotFound"}];
            }

            a7 = v43;
            if (v40 >= v43)
            {
              v32 = 0;
            }

            else
            {
              a3[v40] = v31;
              v32 = 1;
            }

            v16 = v42;
            v12 = (v32 + v41);
          }
        }

        else
        {
          v20 = [(PMLWordPieceVocabProtocol *)self->_vocab payloadForString:@"[UNK]"];
          if (v20 == -1)
          {
            [MEMORY[0x277CCA890] currentHandler];
            v34 = v33 = v17;
            [v34 handleFailureInMethod:v37 object:self file:@"PMLWordPieceTokenizer.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"unkToken != PMLWordPieceVocabNotFound"}];

            v17 = v33;
          }

          if (v17 >= a7)
          {
            v21 = 0;
          }

          else
          {
            a3[v17] = v20;
            v21 = 1;
          }

          v12 = (v21 + v14);
        }

LABEL_30:
        if (++v13 >= v16)
        {
          break;
        }

        v17 = v12;
        v14 = v12;
      }

      while (v12 != a7);
    }
  }

  return v12;
}

- (int)toTokens:(_NSRange *)a3 fromInput:(id)a4 withLength:(unint64_t)a5
{
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  _PASIterateLongChars();
  v8 = v15[3];
  v9 = v23;
  v10 = *(v23 + 6);
  if (v8)
  {
    if (v10 >= a5)
    {
      v12 = 0;
    }

    else
    {
      v11 = &a3[v10];
      v11->location = v19[3];
      v11->length = v8;
      v12 = 1;
    }

    v10 += v12;
    *(v9 + 6) = v10;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

uint64_t __55__PMLWordPieceTokenizer_toTokens_fromInput_withLength___block_invoke(uint64_t result, UTF32Char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(result + 56) != *(*(*(result + 32) + 8) + 24))
  {
    v8 = result;
    result = CFCharacterSetIsLongCharacterMember(*(result + 64), a2);
    v9 = *(*(v8 + 40) + 8);
    v10 = *(v9 + 24);
    if (a2 == 176 || result)
    {
      *(v9 + 24) = v10 + a5;
    }

    else
    {
      if (v10)
      {
        v11 = *(*(v8 + 32) + 8);
        v12 = *(v11 + 24);
        if (*(v8 + 56) <= v12)
        {
          v14 = 0;
        }

        else
        {
          v13 = (*(v8 + 72) + 16 * v12);
          *v13 = *(*(*(v8 + 48) + 8) + 24);
          v13[1] = v10;
          v11 = *(*(v8 + 32) + 8);
          v12 = *(v11 + 24);
          v14 = 1;
        }

        *(v11 + 24) = v12 + v14;
      }

      result = CFCharacterSetIsLongCharacterMember(*(v8 + 80), a2);
      if (!result)
      {
        v15 = *(*(v8 + 32) + 8);
        v16 = *(v15 + 24);
        if (*(v8 + 56) <= v16)
        {
          v18 = 0;
        }

        else
        {
          v17 = (*(v8 + 72) + 16 * v16);
          *v17 = a4;
          v17[1] = a5;
          v15 = *(*(v8 + 32) + 8);
          v16 = *(v15 + 24);
          v18 = 1;
        }

        *(v15 + 24) = v16 + v18;
      }

      *(*(*(v8 + 48) + 8) + 24) = a4 + a5;
      *(*(*(v8 + 40) + 8) + 24) = 0;
    }
  }

  return result;
}

- (id)tokenize:(id)a3 withLength:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = a4;
  }

  v8 = (4 * (v7 & 0x1FFFFFFFFFFFFFFFLL)) | 3;
  memptr = 0;
  v21 = 0;
  if (v8 > 0x194)
  {
    v16 = malloc_type_posix_memalign(&memptr, 8uLL, 4 * v7, 0x100004052888210uLL);
    LOBYTE(v21) = 0;
    if (v16)
    {
      goto LABEL_19;
    }

    v9 = memptr;
  }

  else
  {
    v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v9, (4 * (v7 & 0x1FFFFFFFFFFFFFFFLL)) | 3);
  }

  v10 = (16 * (v7 & 0x7FFFFFFFFFFFFFFLL)) | 7;
  memptr = 0;
  v21 = 0;
  if (v10 <= 0x328)
  {
    v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, (16 * (v7 & 0x7FFFFFFFFFFFFFFLL)) | 7);
    goto LABEL_8;
  }

  v17 = malloc_type_posix_memalign(&memptr, 8uLL, 16 * v7, 0x1000040451B5BE8uLL);
  LOBYTE(v21) = 0;
  if (v17)
  {
LABEL_19:
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v18);
  }

  v11 = memptr;
LABEL_8:
  v12 = objc_autoreleasePoolPush();
  v13 = [PMLSparseVector sparseVectorFromDense:v9 length:[(PMLWordPieceTokenizer *)self tokenizeToIds:v9 fromString:v6 tokens:v11 tokenCount:[(PMLWordPieceTokenizer *)self toTokens:v11 fromInput:v6 withLength:v7] length:v7]];
  objc_autoreleasePoolPop(v12);
  if (v8 >= 0x195)
  {
    free(v9);
  }

  if (v10 >= 0x329)
  {
    free(v11);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PMLWordPieceTokenizer)initWithVocab:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PMLWordPieceTokenizer.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"vocab"}];
  }

  v11.receiver = self;
  v11.super_class = PMLWordPieceTokenizer;
  v7 = [(PMLWordPieceTokenizer *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_vocab, a3);
  }

  return v8;
}

@end