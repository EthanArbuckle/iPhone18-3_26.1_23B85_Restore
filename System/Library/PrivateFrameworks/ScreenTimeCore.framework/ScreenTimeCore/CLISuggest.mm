@interface CLISuggest
+ (id)correctionForWord:(id)word fromCorpus:(id)corpus;
- (CLISuggest)initWithDistanceFunction:(unint64_t)function;
- (id)correctionForWord:(id)word;
- (void)addCorpusWordsFromArray:(id)array;
@end

@implementation CLISuggest

+ (id)correctionForWord:(id)word fromCorpus:(id)corpus
{
  corpusCopy = corpus;
  wordCopy = word;
  v7 = objc_opt_new();
  [v7 addCorpusWordsFromArray:corpusCopy];

  v8 = [v7 correctionForWord:wordCopy];

  return v8;
}

- (CLISuggest)initWithDistanceFunction:(unint64_t)function
{
  v8.receiver = self;
  v8.super_class = CLISuggest;
  v4 = [(CLISuggest *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_new();
    corpus = v4->_corpus;
    v4->_corpus = v5;

    v4->_distanceFunction = function;
  }

  return v4;
}

- (void)addCorpusWordsFromArray:(id)array
{
  v4 = [(NSSet *)self->_corpus setByAddingObjectsFromArray:array];
  corpus = self->_corpus;
  self->_corpus = v4;

  _objc_release_x1();
}

- (id)correctionForWord:(id)word
{
  wordCopy = word;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  v5 = self->_corpus;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    v10 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = sub_100008464(selfCopy, v12, wordCopy);
        v14 = v13 - [v12 hasPrefix:wordCopy];
        if (v14 >= v10)
        {
          if (v10 != v14)
          {
            continue;
          }

          v16 = [v12 length];
          v14 = v10;
          if (v16 >= [v8 length])
          {
            continue;
          }
        }

        v15 = v12;

        v10 = v14;
        v8 = v15;
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);

    if (v10 <= 2)
    {
      v8 = v8;
      v17 = v8;
      goto LABEL_16;
    }
  }

  else
  {

    v8 = 0;
  }

  v17 = 0;
LABEL_16:

  return v17;
}

@end