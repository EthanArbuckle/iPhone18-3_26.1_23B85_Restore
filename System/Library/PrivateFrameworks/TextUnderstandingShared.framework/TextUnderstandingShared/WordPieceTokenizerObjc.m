@interface WordPieceTokenizerObjc
- (WordPieceTokenizerObjc)initWithVocab:(id)a3;
- (float)endId;
- (float)padId;
- (float)startId;
- (float)unkId;
- (id)tokenize:(id)a3 withLength:(unint64_t)a4;
- (int)toWordTokens:(_NSRange *)a3 wordTokensUTF8:(_NSRange *)a4 fromInput:(id)a5 withLength:(unint64_t)a6;
- (int)tokenizeToIds:(float *)a3 ranges:(_NSRange *)a4 wordIndexes:(int64_t *)a5 fromString:(id)a6 wordTokens:(_NSRange *)a7 wordTokensUTF8:(_NSRange *)a8 wordCount:(int)a9 length:(unint64_t)a10;
@end

@implementation WordPieceTokenizerObjc

- (float)unkId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[UNK]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"unkId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (float)padId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[PAD]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"padId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (float)endId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[SEP]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"endId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (float)startId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[CLS]"];
  if (v4 == -1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"startId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (int)tokenizeToIds:(float *)a3 ranges:(_NSRange *)a4 wordIndexes:(int64_t *)a5 fromString:(id)a6 wordTokens:(_NSRange *)a7 wordTokensUTF8:(_NSRange *)a8 wordCount:(int)a9 length:(unint64_t)a10
{
  v12 = a9;
  v64 = a6;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:206];
  [@"##" getCharacters:objc_msgSend(v13 range:{"mutableBytes"), 0, 2}];
  v73 = objc_opt_new();
  v56 = v13;
  v63 = [v13 mutableBytes];
  LODWORD(location) = 1;
  if (a9 >= 1)
  {
    v15 = a10;
    if (a10 != 1)
    {
      v16 = 0;
      v17 = (v63 + 4);
      v18 = *MEMORY[0x277CBED00];
      v19 = 1;
      v20 = 1;
      v58 = a7;
      v59 = a8;
      do
      {
        v21 = &a7[v16];
        length = v21->length;
        if (length < 0x65)
        {
          v24 = v12;
          v25 = a7;
          v26 = a8;
          v69 = a8[v16];
          v68 = v19;
          location = v21->location;
          v27 = length + v21->location;
          [v64 getCharacters:v17 range:v21->location];
          if (location >= v27)
          {
            location = v20;
            a8 = v26;
            a7 = v25;
            v12 = v24;
            v15 = a10;
          }

          else
          {
            v28 = v27;
            v29 = location;
            v30 = v69.i64[0];
            v65 = vaddvq_s64(v69);
            v57 = v20;
            LODWORD(location) = v20;
            v31 = v29;
            v70 = v29;
            v67 = v27;
            while (1)
            {
              v72 = v30;
              v66 = location;
              v32 = v31 == v29;
              v71 = v31;
              v33 = v28 - v31;
              if (v28 == v31)
              {
                break;
              }

              v34 = (v63 + 4 * v32);
              v35 = v65 - v30;
              v36 = 2 * (v31 != v70);
              while (1)
              {
                v37 = v73;
                v38 = CFStringCreateWithCharactersNoCopy(0, v34, v33 + v36, v18);
                CFStringReplaceAll(v37, v38);

                CFRelease(v38);
                v39 = [(BurstTrieDictionary *)self->_vocab payloadForString:v37];
                if (v39 != -1)
                {
                  break;
                }

                if (v33 == 1)
                {
                  v40 = *v17;
                }

                else
                {
                  v41 = &v17[v33];
                  v42 = *(v41 - 2);
                  v40 = *(v41 - 1);
                  v43 = (v42 & 0xFC00) == 0xD800 && (v40 & 0xFC00) == 56320;
                  v44 = v40 + (v42 << 10) - 56613888;
                  if (v43)
                  {
                    v40 = v44;
                  }
                }

                if (HIWORD(v40))
                {
                  v45 = -2;
                }

                else
                {
                  v45 = -1;
                }

                if (v40 - 128 < 0x780)
                {
                  v46 = -2;
                }

                else
                {
                  v46 = -1;
                }

                v47 = (v40 - 2048) >> 11 > 0x1E;
                v48 = v40 - 0x10000;
                v49 = -3;
                if (v47)
                {
                  v49 = v46;
                }

                v50 = v48 >= 0x100000;
                v51 = -4;
                if (v50)
                {
                  v51 = v49;
                }

                v35 += v51;
                v33 += v45;
                if (!v33)
                {
                  goto LABEL_41;
                }
              }

              v15 = a10;
              if (v66 >= a10)
              {
                v53 = 0;
              }

              else
              {
                v52 = &a4[v66];
                v52->location = v72;
                v52->length = v35;
                a5[v66] = v16;
                a3[v66] = v39;
                v53 = 1;
              }

              memmove(v17, &v17[v33], 2 * (v67 - (v33 + v71)));
              v28 = v67;
              location = (v53 + v66);
              v30 = v35 + v72;
              v31 = v33 + v71;
              v47 = v67 > v33 + v71;
              a7 = v58;
              a8 = v59;
              v12 = a9;
              v29 = v70;
              if (!v47)
              {
                goto LABEL_45;
              }
            }

LABEL_41:
            v15 = a10;
            if (v68 >= a10)
            {
              v54 = 0;
            }

            else
            {
              a4[v68] = v69;
              a5[v68] = v16;
              a3[v68] = self->_unkId;
              v54 = 1;
            }

            a7 = v58;
            a8 = v59;
            v12 = a9;
            location = (v54 + v57);
          }
        }

        else
        {
          if (v19 >= v15)
          {
            v23 = 0;
          }

          else
          {
            a4[v19] = a8[v16];
            a5[v19] = v16;
            a3[v19] = self->_unkId;
            v23 = 1;
          }

          location = (v23 + v20);
        }

LABEL_45:
        if (++v16 >= v12)
        {
          break;
        }

        v19 = location;
        v20 = location;
      }

      while (location != v15);
    }
  }

  return location;
}

- (int)toWordTokens:(_NSRange *)a3 wordTokensUTF8:(_NSRange *)a4 fromInput:(id)a5 withLength:(unint64_t)a6
{
  v9 = a5;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3010000000;
  v19[3] = &unk_26EFA5386;
  v19[4] = 0;
  v19[5] = 0;
  _PASIterateLongChars();
  v10 = v29;
  v11 = v37;
  v12 = *(v37 + 6);
  if (v29[3])
  {
    if (v12 >= a6)
    {
      v17 = 0;
    }

    else
    {
      v13 = v21[3];
      v14 = &a4[v12];
      v14->location = v25[3];
      v14->length = v13;
      v15 = v10[3];
      v16 = &a3[v12];
      v16->location = v33[3];
      v16->length = v15;
      v17 = 1;
    }

    v12 += v17;
    *(v11 + 6) = v12;
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v12;
}

- (id)tokenize:(id)a3 withLength:(unint64_t)a4
{
  v6 = a3;
  v36 = 0;
  memptr = 0;
  if (a4 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = a4;
  }

  v34 = 0;
  v35 = 0;
  v33 = 0;
  malloc_type_posix_memalign(&memptr, 8uLL, 4 * v7, 0x6EC6001uLL);
  malloc_type_posix_memalign(&v36, 8uLL, 16 * v7, 0x5C467CE2uLL);
  malloc_type_posix_memalign(&v35, 8uLL, 16 * v7, 0xD565F747uLL);
  malloc_type_posix_memalign(&v34, 8uLL, 16 * v7, 0x91983592uLL);
  malloc_type_posix_memalign(&v33, 8uLL, 8 * v7, 0x345C9D88uLL);
  if (a4)
  {
    v8 = v34;
    *v34 = 0;
    v8[1] = 0;
    *memptr = self->_startId;
    *v33 = -1;
  }

  v9 = objc_autoreleasePoolPush();
  LODWORD(v32) = [(WordPieceTokenizerObjc *)self toWordTokens:v36 wordTokensUTF8:v35 fromInput:v6 withLength:v7];
  v10 = [(WordPieceTokenizerObjc *)self tokenizeToIds:memptr ranges:v34 wordIndexes:v33 fromString:v6 wordTokens:v36 wordTokensUTF8:v35 wordCount:v32 length:v7];
  if (v7 <= v10)
  {
    v11 = v7 - 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v34;
  v13 = v11;
  if (v7 <= v11)
  {
    v15 = memptr;
    v16 = v33;
  }

  else
  {
    v14 = v34 + 16 * v11;
    *v14 = 0;
    v14[1] = 0;
    v15 = memptr;
    *(memptr + v13) = LODWORD(self->_endId);
    v16 = v33;
    *(v33 + v13) = -1;
  }

  v17 = v13 + 1;
  if (v7 > v17)
  {
    v18 = v17;
    padId = self->_padId;
    v20 = v7 - v17;
    v21 = &v16[8 * v18];
    v22 = &v15[4 * v18];
    v23 = &v12[16 * v18];
    do
    {
      *v23 = 0;
      *(v23 + 1) = 0;
      v23 += 16;
      *v22++ = padId;
      *v21 = -1;
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  objc_autoreleasePoolPop(v9);
  free(v36);
  free(v35);
  v24 = objc_alloc(MEMORY[0x277CBEA90]);
  v25 = [v24 initWithBytesNoCopy:memptr length:4 * v7 freeWhenDone:1];
  v26 = objc_alloc(MEMORY[0x277CBEA90]);
  v27 = [v26 initWithBytesNoCopy:v34 length:16 * v7 freeWhenDone:1];
  v28 = objc_alloc(MEMORY[0x277CBEA90]);
  v29 = [v28 initWithBytesNoCopy:v33 length:8 * v7 freeWhenDone:1];
  v30 = [[TokenizerOutputObjc alloc] initWithTokenIds:v25 tokenRanges:v27 wordIndexes:v29];

  return v30;
}

- (WordPieceTokenizerObjc)initWithVocab:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"vocab"}];
  }

  v15.receiver = self;
  v15.super_class = WordPieceTokenizerObjc;
  v7 = [(WordPieceTokenizerObjc *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_vocab, a3);
    [(WordPieceTokenizerObjc *)v8 startId];
    v8->_startId = v9;
    [(WordPieceTokenizerObjc *)v8 endId];
    v8->_endId = v10;
    [(WordPieceTokenizerObjc *)v8 padId];
    v8->_padId = v11;
    [(WordPieceTokenizerObjc *)v8 unkId];
    v8->_unkId = v12;
  }

  return v8;
}

@end