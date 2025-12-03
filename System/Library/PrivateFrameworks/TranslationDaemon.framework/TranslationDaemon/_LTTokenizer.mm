@interface _LTTokenizer
+ (unint64_t)_wordCount:(id)count inLocale:(id)locale;
- (id)_tokenizeString:(id)string inLocale:(id)locale;
- (id)tokenize:(id)tokenize forLocale:(id)locale;
@end

@implementation _LTTokenizer

- (id)tokenize:(id)tokenize forLocale:(id)locale
{
  tokenizeCopy = tokenize;
  localeCopy = locale;
  localeIdentifier = [localeCopy localeIdentifier];
  uTF8String = [localeIdentifier UTF8String];
  v9 = strlen(uTF8String);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v41 = v9;
  if (v9)
  {
    memmove(&__dst, uTF8String, v9);
  }

  *(&__dst + v10) = 0;

  std::vector<unsigned short>::vector[abi:ne200100](&v38, [tokenizeCopy length]);
  [tokenizeCopy getCharacters:? range:?];
  v11 = v39 - v38;
  v12 = (v39 - v38) >> 1;
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0xB)
  {
    if ((v12 | 3) == 0xB)
    {
      v13 = 13;
    }

    else
    {
      v13 = (v12 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(&v36, v13);
  }

  v37 = v11 >> 1;
  if (v39 != v38)
  {
    memmove(&v36, v38, v11);
  }

  *(&v36 + v12) = 0;
  languageCode = [localeCopy languageCode];
  v15 = [languageCode isEqualToString:@"de"];

  if (v15)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v17 = [tokenizeCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF != ''"];
    array = [v17 filteredArrayUsingPredicate:v18];
  }

  else
  {
    __p = 0;
    v33 = 0;
    v34 = 0;
    morphun::util::ULocale::ULocale();
    Tokenizer = morphun::TokenizerFactory::createTokenizer();
    morphun::util::ULocale::~ULocale(v35);
    v21 = (*(*Tokenizer + 24))(Tokenizer, &v36);
    array = [MEMORY[0x277CBEB18] array];
    v22 = *(v21 + 1);
    v23 = *(v21 + 2);
    morphun::TokenIterator::TokenIterator();
    v35[0] = morphun::Chunk::end(v21);
    v35[1] = v24;
    while ((morphun::TokenIterator::operator!=() & 1) != 0)
    {
      v25 = morphun::TokenIterator::operator*();
      if ((morphun::Token::isHead(v25) & 1) == 0 && (morphun::Token::isTail(v25) & 1) == 0 && (morphun::Token::isWhitespace(v25) & 1) == 0)
      {
        Value = morphun::Token::getValue(v25);
        v27 = *(Value + 23);
        if (v27 >= 0)
        {
          v28 = Value;
        }

        else
        {
          v28 = *Value;
        }

        if (v27 >= 0)
        {
          v29 = *(Value + 23);
        }

        else
        {
          v29 = *(Value + 8);
        }

        v30 = [MEMORY[0x277CCACA8] stringWithCharacters:v28 length:{v29, __p, v33, v34}];
        [array addObject:v30];
      }

      morphun::TokenIterator::operator++();
    }

    if (v21)
    {
      (*(*v21 + 16))(v21);
    }

    (*(*Tokenizer + 16))(Tokenizer);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(__dst);
  }

  return array;
}

- (id)_tokenizeString:(id)string inLocale:(id)locale
{
  stringCopy = string;
  localeCopy = locale;
  v7 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  languageCode = [localeCopy languageCode];
  [v7 setLanguage:languageCode];

  [v7 setString:stringCopy];
  array = [MEMORY[0x277CBEB18] array];
  v10 = [stringCopy length];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41___LTTokenizer__tokenizeString_inLocale___block_invoke;
  v16[3] = &unk_2789B7D50;
  v11 = stringCopy;
  v17 = v11;
  v12 = array;
  v18 = v12;
  [v7 enumerateTokensInRange:0 usingBlock:{v10, v16}];
  v13 = v18;
  v14 = v12;

  return v12;
}

+ (unint64_t)_wordCount:(id)count inLocale:(id)locale
{
  countCopy = count;
  localeCopy = locale;
  v7 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  languageCode = [localeCopy languageCode];
  [v7 setLanguage:languageCode];

  [v7 setString:countCopy];
  v9 = [v7 tokensForRange:{0, objc_msgSend(countCopy, "length")}];
  v10 = [v9 count];

  return v10;
}

@end