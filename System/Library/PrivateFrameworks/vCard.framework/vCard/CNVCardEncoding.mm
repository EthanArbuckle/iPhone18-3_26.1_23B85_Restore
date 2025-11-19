@interface CNVCardEncoding
+ (id)addPreferredEncoding:(id)a3 toEncodings:(id)a4;
+ (id)asciiEncoding;
+ (id)encodingWithName:(id)a3 stringEncoding:(unint64_t)a4;
+ (id)encodingsFromUserDefaults;
+ (id)isoLatin1Encoding;
+ (id)macRomanEncoding;
+ (id)makeStandardEncodings;
+ (id)preferredEncodingInUserDefaults;
+ (id)standardEncodings;
+ (id)utf8Encoding;
- (CNVCardEncoding)initWithName:(id)a3 stringEncoding:(unint64_t)a4;
@end

@implementation CNVCardEncoding

+ (id)standardEncodings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CNVCardEncoding_standardEncodings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (standardEncodings_cn_once_token_1 != -1)
  {
    dispatch_once(&standardEncodings_cn_once_token_1, block);
  }

  v2 = standardEncodings_cn_once_object_1;

  return v2;
}

void __36__CNVCardEncoding_standardEncodings__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeStandardEncodings];
  v1 = [v3 copy];
  v2 = standardEncodings_cn_once_object_1;
  standardEncodings_cn_once_object_1 = v1;
}

+ (id)makeStandardEncodings
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = +[CNVCardEncoding asciiEncoding];
  [v2 addObject:v3];

  v4 = +[CNVCardEncoding isoLatin1Encoding];
  [v2 addObject:v4];

  v5 = +[CNVCardEncoding macRomanEncoding];
  [v2 addObject:v5];

  v6 = +[CNVCardEncoding utf8Encoding];
  [v2 addObject:v6];

  return v2;
}

+ (id)addPreferredEncoding:(id)a3 toEncodings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__CNVCardEncoding_addPreferredEncoding_toEncodings___block_invoke;
    v11[3] = &unk_27A711198;
    v9 = v5;
    v12 = v9;
    [v8 _cn_removeObjectsPassingTest:v11];
    if ([v8 count] == 1)
    {
      [v8 _cn_addNonNilObject:v9];
    }

    else
    {
      [v8 _cn_insertNonNilObject:v9 atIndex:1];
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

uint64_t __52__CNVCardEncoding_addPreferredEncoding_toEncodings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqual:v4];

  return v5;
}

+ (id)encodingsFromUserDefaults
{
  v3 = [a1 standardEncodings];
  v4 = [a1 preferredEncodingInUserDefaults];
  v5 = [a1 addPreferredEncoding:v4 toEncodings:v3];

  return v5;
}

+ (id)preferredEncodingInUserDefaults
{
  v3 = +[CNVCardUserDefaults vCard21Encoding];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 uppercaseString];

    v6 = CFStringConvertIANACharSetNameToEncoding(v5);
    if (v6 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = [a1 encodingWithName:v5 stringEncoding:CFStringConvertEncodingToNSStringEncoding(v6)];
    }

    v3 = v5;
  }

  return v4;
}

+ (id)encodingWithName:(id)a3 stringEncoding:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithName:v6 stringEncoding:a4];

  return v7;
}

+ (id)asciiEncoding
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CNVCardEncoding_asciiEncoding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (asciiEncoding_cn_once_token_2 != -1)
  {
    dispatch_once(&asciiEncoding_cn_once_token_2, block);
  }

  v2 = asciiEncoding_cn_once_object_2;

  return v2;
}

uint64_t __32__CNVCardEncoding_asciiEncoding__block_invoke(uint64_t a1)
{
  asciiEncoding_cn_once_object_2 = [*(a1 + 32) encodingWithName:@"ASCII" stringEncoding:1];

  return MEMORY[0x2821F96F8]();
}

+ (id)isoLatin1Encoding
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CNVCardEncoding_isoLatin1Encoding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isoLatin1Encoding_cn_once_token_3 != -1)
  {
    dispatch_once(&isoLatin1Encoding_cn_once_token_3, block);
  }

  v2 = isoLatin1Encoding_cn_once_object_3;

  return v2;
}

uint64_t __36__CNVCardEncoding_isoLatin1Encoding__block_invoke(uint64_t a1)
{
  isoLatin1Encoding_cn_once_object_3 = [*(a1 + 32) encodingWithName:@"LATIN1" stringEncoding:5];

  return MEMORY[0x2821F96F8]();
}

+ (id)macRomanEncoding
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CNVCardEncoding_macRomanEncoding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (macRomanEncoding_cn_once_token_4 != -1)
  {
    dispatch_once(&macRomanEncoding_cn_once_token_4, block);
  }

  v2 = macRomanEncoding_cn_once_object_4;

  return v2;
}

uint64_t __35__CNVCardEncoding_macRomanEncoding__block_invoke(uint64_t a1)
{
  macRomanEncoding_cn_once_object_4 = [*(a1 + 32) encodingWithName:@"MACINTOSH" stringEncoding:30];

  return MEMORY[0x2821F96F8]();
}

+ (id)utf8Encoding
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CNVCardEncoding_utf8Encoding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (utf8Encoding_cn_once_token_5 != -1)
  {
    dispatch_once(&utf8Encoding_cn_once_token_5, block);
  }

  v2 = utf8Encoding_cn_once_object_5;

  return v2;
}

uint64_t __31__CNVCardEncoding_utf8Encoding__block_invoke(uint64_t a1)
{
  utf8Encoding_cn_once_object_5 = [*(a1 + 32) encodingWithName:@"UTF-8" stringEncoding:4];

  return MEMORY[0x2821F96F8]();
}

- (CNVCardEncoding)initWithName:(id)a3 stringEncoding:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNVCardEncoding *)self init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_stringEncoding = a4;
    v10 = v7;
  }

  return v7;
}

@end