@interface WordPieceTokenizerObjc
- (WordPieceTokenizerObjc)initWithVocab:(id)vocab;
- (float)endId;
- (float)padId;
- (float)startId;
- (float)unkId;
- (id)tokenize:(id)tokenize withLength:(unint64_t)length;
- (int)toWordTokens:(_NSRange *)tokens wordTokensUTF8:(_NSRange *)f8 fromInput:(id)input withLength:(unint64_t)length;
- (int)tokenizeToIds:(float *)ids ranges:(_NSRange *)ranges wordIndexes:(int64_t *)indexes fromString:(id)string wordTokens:(_NSRange *)tokens wordTokensUTF8:(_NSRange *)f8 wordCount:(int)count length:(unint64_t)self0;
@end

@implementation WordPieceTokenizerObjc

- (float)unkId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[UNK]"];
  if (v4 == -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"unkId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (float)padId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[PAD]"];
  if (v4 == -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"padId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (float)endId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[SEP]"];
  if (v4 == -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"endId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (float)startId
{
  v4 = [(BurstTrieDictionary *)self->_vocab payloadForString:@"[CLS]"];
  if (v4 == -1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"startId != BurstTrieDictionaryNotFound"}];
  }

  return v4;
}

- (int)tokenizeToIds:(float *)ids ranges:(_NSRange *)ranges wordIndexes:(int64_t *)indexes fromString:(id)string wordTokens:(_NSRange *)tokens wordTokensUTF8:(_NSRange *)f8 wordCount:(int)count length:(unint64_t)self0
{
  countCopy3 = count;
  stringCopy = string;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:206];
  [@"##" getCharacters:objc_msgSend(v13 range:{"mutableBytes"), 0, 2}];
  v73 = objc_opt_new();
  v56 = v13;
  mutableBytes = [v13 mutableBytes];
  LODWORD(location) = 1;
  if (count >= 1)
  {
    lengthCopy4 = length;
    if (length != 1)
    {
      v16 = 0;
      v17 = (mutableBytes + 4);
      v18 = *MEMORY[0x277CBED00];
      v19 = 1;
      v20 = 1;
      tokensCopy = tokens;
      f8Copy = f8;
      do
      {
        v21 = &tokens[v16];
        length = v21->length;
        if (length < 0x65)
        {
          v24 = countCopy3;
          tokensCopy2 = tokens;
          f8Copy2 = f8;
          v69 = f8[v16];
          v68 = v19;
          location = v21->location;
          v27 = length + v21->location;
          [stringCopy getCharacters:v17 range:v21->location];
          if (location >= v27)
          {
            location = v20;
            f8 = f8Copy2;
            tokens = tokensCopy2;
            countCopy3 = v24;
            lengthCopy4 = length;
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

              v34 = (mutableBytes + 4 * v32);
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

              lengthCopy4 = length;
              if (v66 >= length)
              {
                v53 = 0;
              }

              else
              {
                v52 = &ranges[v66];
                v52->location = v72;
                v52->length = v35;
                indexes[v66] = v16;
                ids[v66] = v39;
                v53 = 1;
              }

              memmove(v17, &v17[v33], 2 * (v67 - (v33 + v71)));
              v28 = v67;
              location = (v53 + v66);
              v30 = v35 + v72;
              v31 = v33 + v71;
              v47 = v67 > v33 + v71;
              tokens = tokensCopy;
              f8 = f8Copy;
              countCopy3 = count;
              v29 = v70;
              if (!v47)
              {
                goto LABEL_45;
              }
            }

LABEL_41:
            lengthCopy4 = length;
            if (v68 >= length)
            {
              v54 = 0;
            }

            else
            {
              ranges[v68] = v69;
              indexes[v68] = v16;
              ids[v68] = self->_unkId;
              v54 = 1;
            }

            tokens = tokensCopy;
            f8 = f8Copy;
            countCopy3 = count;
            location = (v54 + v57);
          }
        }

        else
        {
          if (v19 >= lengthCopy4)
          {
            v23 = 0;
          }

          else
          {
            ranges[v19] = f8[v16];
            indexes[v19] = v16;
            ids[v19] = self->_unkId;
            v23 = 1;
          }

          location = (v23 + v20);
        }

LABEL_45:
        if (++v16 >= countCopy3)
        {
          break;
        }

        v19 = location;
        v20 = location;
      }

      while (location != lengthCopy4);
    }
  }

  return location;
}

- (int)toWordTokens:(_NSRange *)tokens wordTokensUTF8:(_NSRange *)f8 fromInput:(id)input withLength:(unint64_t)length
{
  inputCopy = input;
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
    if (v12 >= length)
    {
      v17 = 0;
    }

    else
    {
      v13 = v21[3];
      v14 = &f8[v12];
      v14->location = v25[3];
      v14->length = v13;
      v15 = v10[3];
      v16 = &tokens[v12];
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

- (id)tokenize:(id)tokenize withLength:(unint64_t)length
{
  tokenizeCopy = tokenize;
  v36 = 0;
  memptr = 0;
  if (length >= 0x200)
  {
    lengthCopy = 512;
  }

  else
  {
    lengthCopy = length;
  }

  v34 = 0;
  v35 = 0;
  v33 = 0;
  malloc_type_posix_memalign(&memptr, 8uLL, 4 * lengthCopy, 0x6EC6001uLL);
  malloc_type_posix_memalign(&v36, 8uLL, 16 * lengthCopy, 0x5C467CE2uLL);
  malloc_type_posix_memalign(&v35, 8uLL, 16 * lengthCopy, 0xD565F747uLL);
  malloc_type_posix_memalign(&v34, 8uLL, 16 * lengthCopy, 0x91983592uLL);
  malloc_type_posix_memalign(&v33, 8uLL, 8 * lengthCopy, 0x345C9D88uLL);
  if (length)
  {
    v8 = v34;
    *v34 = 0;
    v8[1] = 0;
    *memptr = self->_startId;
    *v33 = -1;
  }

  v9 = objc_autoreleasePoolPush();
  LODWORD(v32) = [(WordPieceTokenizerObjc *)self toWordTokens:v36 wordTokensUTF8:v35 fromInput:tokenizeCopy withLength:lengthCopy];
  v10 = [(WordPieceTokenizerObjc *)self tokenizeToIds:memptr ranges:v34 wordIndexes:v33 fromString:tokenizeCopy wordTokens:v36 wordTokensUTF8:v35 wordCount:v32 length:lengthCopy];
  if (lengthCopy <= v10)
  {
    v11 = lengthCopy - 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v34;
  v13 = v11;
  if (lengthCopy <= v11)
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
  if (lengthCopy > v17)
  {
    v18 = v17;
    padId = self->_padId;
    v20 = lengthCopy - v17;
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
  v25 = [v24 initWithBytesNoCopy:memptr length:4 * lengthCopy freeWhenDone:1];
  v26 = objc_alloc(MEMORY[0x277CBEA90]);
  v27 = [v26 initWithBytesNoCopy:v34 length:16 * lengthCopy freeWhenDone:1];
  v28 = objc_alloc(MEMORY[0x277CBEA90]);
  v29 = [v28 initWithBytesNoCopy:v33 length:8 * lengthCopy freeWhenDone:1];
  v30 = [[TokenizerOutputObjc alloc] initWithTokenIds:v25 tokenRanges:v27 wordIndexes:v29];

  return v30;
}

- (WordPieceTokenizerObjc)initWithVocab:(id)vocab
{
  vocabCopy = vocab;
  if (!vocabCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WordPieceTokenizerObjc.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"vocab"}];
  }

  v15.receiver = self;
  v15.super_class = WordPieceTokenizerObjc;
  v7 = [(WordPieceTokenizerObjc *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_vocab, vocab);
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