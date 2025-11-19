@interface WBSTOTPGenerator
+ (BOOL)_urlWithComponentsHasValidOtpauthURLScheme:(id)a3;
+ (id)_base32EncodedStringForKeyData:(id)a3;
+ (id)_keyDataForBase32EncodedString:(id)a3;
+ (id)countdownStringForMultipleCodesWithSecondsRemaining:(int64_t)a3;
+ (id)countdownStringForSecondsRemaining:(int64_t)a3;
+ (id)shortCountdownStringForSecondsRemaining:(int64_t)a3;
- (BOOL)generatesIdenticalCodesToGenerator:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)heuristicallyDeterminedServiceNameHints;
- (NSDictionary)dictionaryRepresentation;
- (NSURL)exportableURL;
- (WBSTOTPGenerator)initWithASCIIEncodedKey:(id)a3 initialDate:(id)a4 codeGenerationPeriod:(unint64_t)a5 numberOfDigits:(unint64_t)a6 algorithm:(unint64_t)a7;
- (WBSTOTPGenerator)initWithBase32EncodedKey:(id)a3;
- (WBSTOTPGenerator)initWithBase32EncodedKey:(id)a3 initialDate:(id)a4 codeGenerationPeriod:(unint64_t)a5 numberOfDigits:(unint64_t)a6 algorithm:(unint64_t)a7;
- (WBSTOTPGenerator)initWithCoder:(id)a3;
- (WBSTOTPGenerator)initWithDictionaryRepresentation:(id)a3;
- (WBSTOTPGenerator)initWithKeyData:(id)a3 initialDate:(id)a4 codeGenerationPeriod:(unint64_t)a5 numberOfDigits:(unint64_t)a6 algorithm:(unint64_t)a7 issuer:(id)a8 accountName:(id)a9 originalURL:(id)a10;
- (WBSTOTPGenerator)initWithOTPAuthURL:(id)a3;
- (WBSTOTPGenerator)initWithUserProvidedString:(id)a3;
- (id)_stringForAlgorithm:(unint64_t)a3;
- (id)codeForDate:(id)a3;
- (id)description;
- (id)startDateOfIntervalContainingDate:(id)a3;
- (unint64_t)_HMACLengthForAlgorithm:(unint64_t)a3;
- (unint64_t)_algorithmForQueryItemValue:(id)a3;
- (unint64_t)hash;
- (unsigned)_commonCryptoAlgorithmForTOTPAlgorithm:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSTOTPGenerator

+ (id)_keyDataForBase32EncodedString:(id)a3
{
  v3 = a3;
  if (_keyDataForBase32EncodedString__onceToken[0] != -1)
  {
    +[WBSTOTPGenerator _keyDataForBase32EncodedString:];
  }

  v4 = [v3 UTF8String];
  v5 = strlen(v4);
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
    v8 = 0;
    v9 = 0;
    do
    {
      v11 = *v4++;
      v10 = v11;
      if (v11 != 61 && memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", v10, 0x21uLL))
      {
        v12 = *(&_keyDataForBase32EncodedString__inverseAlphabet + v10);
        v13 = 5 * v9 + 7;
        if (5 * v9 >= 0)
        {
          v13 = 5 * v9;
        }

        v14 = 5 * v9 - (v13 & 0xFFFFFFF8);
        v15 = &v7[v13 >> 3];
        v16 = *v15;
        if (v14 >= 4)
        {
          *v15 = v16 | (v12 >> (v14 - 3));
          v18 = *++v15;
          v16 = v18;
          v17 = 11;
        }

        else
        {
          v17 = 3;
        }

        v8 = v13 >> 3;
        *v15 = v16 | (v12 << (v17 - v14));
        ++v9;
      }

      --v6;
    }

    while (v6);
    if (v7[v8 + 1])
    {
      v19 = v8 + 2;
    }

    else
    {
      v19 = v8 + 1;
    }

    v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:v19 freeWhenDone:1];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v21 = v20;

  return v21;
}

void __51__WBSTOTPGenerator__keyDataForBase32EncodedString___block_invoke()
{
  v0 = 0;
  xmmword_1EBA8B418 = 0u;
  unk_1EBA8B428 = 0u;
  xmmword_1EBA8B3F8 = 0u;
  unk_1EBA8B408 = 0u;
  xmmword_1EBA8B3D8 = 0u;
  unk_1EBA8B3E8 = 0u;
  xmmword_1EBA8B3B8 = 0u;
  unk_1EBA8B3C8 = 0u;
  xmmword_1EBA8B398 = 0u;
  unk_1EBA8B3A8 = 0u;
  xmmword_1EBA8B378 = 0u;
  unk_1EBA8B388 = 0u;
  xmmword_1EBA8B358 = 0u;
  unk_1EBA8B368 = 0u;
  _keyDataForBase32EncodedString__inverseAlphabet = 0u;
  unk_1EBA8B348 = 0u;
  do
  {
    *(&_keyDataForBase32EncodedString__inverseAlphabet + aAbcdefghijklmn_2[v0]) = v0;
    ++v0;
  }

  while (v0 != 32);
}

+ (id)_base32EncodedStringForKeyData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];
  v6 = (2 * (((v5 + 4) * 0xCCCCCCCCCCCCCCCDLL) >> 64)) & 0xFFFFFFFFFFFFFFF8;
  if (v6)
  {
    v7 = v5;
    v8 = malloc_type_calloc(v6 | 1, 1uLL, 0x100004077774924uLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      do
      {
        v11 = v10 / 5;
        v12 = v10 % 5;
        v13 = v10 % 5 + 3;
        v8[v10 / 5] |= *v4 >> v13;
        if (v10 % 5 >= 3)
        {
          v13 = v12 - 2;
          v8[++v11] |= (*v4 >> (v12 - 2)) & 0x1F;
        }

        v14 = *v4++;
        v8[v11 + 1] |= (v14 << (5 - v13)) & 0x1F;
        v10 += 8;
        --v7;
      }

      while (v7);
    }

    else
    {
      v11 = 0;
    }

    v16 = 0;
    v17 = v11 + 2;
    do
    {
      v8[v16] = aAbcdefghijklmn_2[v8[v16]];
      ++v16;
    }

    while (v17 != v16);
    if (v17 < v6)
    {
      memset(&v8[v17], 61, v6 - v11 - 2);
      v17 = v6;
    }

    v9[v17] = 0;
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v9 length:v17 encoding:1 freeWhenDone:1];
  }

  else
  {
    v15 = &stru_1F3064D08;
  }

  return v15;
}

+ (BOOL)_urlWithComponentsHasValidOtpauthURLScheme:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 caseInsensitiveCompare:@"otpauth"])
  {
    v5 = [v3 scheme];
    v6 = [v5 caseInsensitiveCompare:@"apple-otpauth"] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (WBSTOTPGenerator)initWithOTPAuthURL:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:1];
  v51 = self;
  if (([objc_opt_class() _urlWithComponentsHasValidOtpauthURLScheme:v5] & 1) == 0)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSTOTPGenerator *)v9 initWithOTPAuthURL:v4];
    }

    goto LABEL_7;
  }

  v6 = [v5 host];
  v7 = [v6 caseInsensitiveCompare:@"totp"];

  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSTOTPGenerator *)v8 initWithOTPAuthURL:v4];
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  v14 = [v5 path];
  v44 = v14;
  if (v14)
  {
    v15 = [v14 componentsSeparatedByString:@":"];
    if ([v15 count] == 2)
    {
      v16 = [v15 firstObject];
      v17 = [v15 lastObject];
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v48 = v16;
  }

  else
  {
    v17 = 0;
    v48 = 0;
  }

  v43 = v17;
  v45 = v13;
  v46 = v5;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v18 = [v5 queryItems];
  v19 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (!v19)
  {
    v21 = 0;
    v49 = 6;
    v50 = 0;
    v47 = 30;
    goto LABEL_38;
  }

  v20 = v19;
  v21 = 0;
  v22 = *v53;
  v49 = 6;
  v50 = 0;
  v47 = 30;
  do
  {
    v23 = 0;
    do
    {
      if (*v53 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v52 + 1) + 8 * v23);
      v25 = [v24 name];
      if (![v25 caseInsensitiveCompare:@"secret"])
      {
        v29 = [v24 value];
        v30 = [v29 uppercaseString];

        v21 = v30;
        goto LABEL_32;
      }

      if (![v25 caseInsensitiveCompare:@"algorithm"])
      {
        v31 = [v24 value];
        v50 = [(WBSTOTPGenerator *)v51 _algorithmForQueryItemValue:v31];
LABEL_31:

        goto LABEL_32;
      }

      if (![v25 caseInsensitiveCompare:@"digits"])
      {
        v31 = [v24 value];
        v49 = [v31 integerValue];
        goto LABEL_31;
      }

      if (![v25 caseInsensitiveCompare:@"period"])
      {
        v31 = [v24 value];
        v47 = [v31 integerValue];
        goto LABEL_31;
      }

      if ([v25 caseInsensitiveCompare:@"issuer"])
      {
        v26 = WBS_LOG_CHANNEL_PREFIXPasswords();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = v26;
          v28 = [v4 absoluteString];
          *buf = 138739971;
          v57 = v28;
          _os_log_impl(&dword_1B8447000, v27, OS_LOG_TYPE_INFO, "Found invalid parameter in otpauth URL. url=%{sensitive}@", buf, 0xCu);
        }
      }

      else
      {
        v32 = [v24 value];

        v48 = v32;
      }

LABEL_32:

      ++v23;
    }

    while (v20 != v23);
    v33 = [v18 countByEnumeratingWithState:&v52 objects:v58 count:16];
    v20 = v33;
  }

  while (v33);
LABEL_38:

  if ([v21 length])
  {
    v5 = v46;
    v34 = [v46 scheme];
    v35 = [v34 isEqualToString:@"apple-otpauth"];

    v36 = v45;
    v37 = v48;
    v38 = v43;
    if (v35)
    {
      v39 = WBS_LOG_CHANNEL_PREFIXPasswords();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B8447000, v39, OS_LOG_TYPE_INFO, "Rewriting apple-otpauth:// URL.", buf, 2u);
      }

      [v46 setScheme:@"otpauth"];
      v40 = [v46 URL];

      v4 = v40;
    }

    v41 = [objc_opt_class() _keyDataForBase32EncodedString:v21];
    v10 = [(WBSTOTPGenerator *)v51 initWithKeyData:v41 initialDate:v45 codeGenerationPeriod:v47 numberOfDigits:v49 algorithm:v50 issuer:v48 accountName:v43 originalURL:v4];

    if (v10)
    {
      v10 = v10;
      v51 = v10;
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v42 = WBS_LOG_CHANNEL_PREFIXPasswords();
    v36 = v45;
    v5 = v46;
    v37 = v48;
    v38 = v43;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [(WBSTOTPGenerator *)v42 initWithOTPAuthURL:v4];
    }

    v10 = 0;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WBSTOTPGenerator)initWithASCIIEncodedKey:(id)a3 initialDate:(id)a4 codeGenerationPeriod:(unint64_t)a5 numberOfDigits:(unint64_t)a6 algorithm:(unint64_t)a7
{
  v12 = a4;
  v13 = [a3 dataUsingEncoding:1];
  v14 = [(WBSTOTPGenerator *)self initWithKeyData:v13 initialDate:v12 codeGenerationPeriod:a5 numberOfDigits:a6 algorithm:a7 issuer:0 accountName:0 originalURL:0];

  return v14;
}

- (WBSTOTPGenerator)initWithBase32EncodedKey:(id)a3 initialDate:(id)a4 codeGenerationPeriod:(unint64_t)a5 numberOfDigits:(unint64_t)a6 algorithm:(unint64_t)a7
{
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_class();
  v15 = [v13 uppercaseString];

  v16 = [v14 _keyDataForBase32EncodedString:v15];
  v17 = [(WBSTOTPGenerator *)self initWithKeyData:v16 initialDate:v12 codeGenerationPeriod:a5 numberOfDigits:a6 algorithm:a7 issuer:0 accountName:0 originalURL:0];

  return v17;
}

- (WBSTOTPGenerator)initWithBase32EncodedKey:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 dateWithTimeIntervalSince1970:0.0];
  v7 = [(WBSTOTPGenerator *)self initWithBase32EncodedKey:v5 initialDate:v6 codeGenerationPeriod:30 numberOfDigits:6 algorithm:0];

  return v7;
}

- (WBSTOTPGenerator)initWithUserProvidedString:(id)a3
{
  v4 = [a3 safari_stringByTrimmingWhitespace];
  if ([v4 length])
  {
    if (([v4 safari_hasCaseInsensitivePrefix:@"otpauth:"] & 1) != 0 || objc_msgSend(v4, "safari_hasCaseInsensitivePrefix:", @"apple-otpauth:"))
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
      self = [(WBSTOTPGenerator *)self initWithOTPAuthURL:v5];

      v6 = self;
    }

    else
    {
      self = [(WBSTOTPGenerator *)self initWithBase32EncodedKey:v4];
      v6 = self;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WBSTOTPGenerator)initWithKeyData:(id)a3 initialDate:(id)a4 codeGenerationPeriod:(unint64_t)a5 numberOfDigits:(unint64_t)a6 algorithm:(unint64_t)a7 issuer:(id)a8 accountName:(id)a9 originalURL:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if ([v16 length] && (v35.receiver = self, v35.super_class = WBSTOTPGenerator, (self = -[WBSTOTPGenerator init](&v35, sel_init)) != 0))
  {
    v21 = [v16 copy];
    key = self->_key;
    self->_key = v21;

    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    }

    initialDate = self->_initialDate;
    self->_initialDate = v23;

    v26 = 30;
    if (a5 - 5 < 0x128)
    {
      v26 = a5;
    }

    self->_codeGenerationPeriod = v26;
    self->_algorithm = a7;
    v27 = 6;
    if (a6 - 5 < 0xB)
    {
      v27 = a6;
    }

    self->_numberOfDigitsInCode = v27;
    v28 = [v18 copy];
    issuer = self->_issuer;
    self->_issuer = v28;

    v30 = [v19 copy];
    accountName = self->_accountName;
    self->_accountName = v30;

    v32 = [v20 copy];
    originalURL = self->_originalURL;
    self->_originalURL = v32;

    self = self;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (NSURL)exportableURL
{
  v24[4] = *MEMORY[0x1E69E9840];
  originalURL = self->_originalURL;
  if (originalURL)
  {
    v4 = [(NSURL *)originalURL copy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v5 setScheme:@"otpauth"];
    [v5 setHost:@"totp"];
    v6 = MEMORY[0x1E696AF60];
    v23 = [objc_opt_class() _base32EncodedStringForKeyData:self->_key];
    v22 = [v23 stringByReplacingOccurrencesOfString:@"=" withString:&stru_1F3064D08];
    v21 = [v6 queryItemWithName:@"secret" value:v22];
    v24[0] = v21;
    v7 = MEMORY[0x1E696AF60];
    v8 = [(WBSTOTPGenerator *)self _stringForAlgorithm:self->_algorithm];
    v9 = [v7 queryItemWithName:@"algorithm" value:v8];
    v24[1] = v9;
    v10 = MEMORY[0x1E696AF60];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfDigitsInCode];
    v12 = [v11 stringValue];
    v13 = [v10 queryItemWithName:@"digits" value:v12];
    v24[2] = v13;
    v14 = MEMORY[0x1E696AF60];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_codeGenerationPeriod];
    v16 = [v15 stringValue];
    v17 = [v14 queryItemWithName:@"period" value:v16];
    v24[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v5 setQueryItems:v18];

    v4 = [v5 URL];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSData *)self->_key isEqualToData:v5->_key]&& [(NSDate *)self->_initialDate isEqualToDate:v5->_initialDate]&& self->_codeGenerationPeriod == v5->_codeGenerationPeriod && self->_algorithm == v5->_algorithm && self->_numberOfDigitsInCode == v5->_numberOfDigitsInCode && WBSIsEqual(self->_issuer, v5->_issuer) && WBSIsEqual(self->_accountName, v5->_accountName))
      {
        v6 = WBSIsEqual(self->_originalURL, v5->_originalURL);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_key hash];
  v4 = [(NSDate *)self->_initialDate hash]^ v3 ^ self->_codeGenerationPeriod ^ self->_algorithm ^ self->_numberOfDigitsInCode;
  v5 = [(NSString *)self->_issuer hash];
  v6 = v5 ^ [(NSString *)self->_accountName hash];
  return v4 ^ v6 ^ [(NSURL *)self->_originalURL hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = WBSTOTPGenerator;
  v4 = [(WBSTOTPGenerator *)&v10 description];
  v9 = *&self->_initialDate;
  numberOfDigitsInCode = self->_numberOfDigitsInCode;
  v6 = [(WBSTOTPGenerator *)self _stringForAlgorithm:self->_algorithm];
  v7 = [v3 stringWithFormat:@"<%@ date=%@ period=%i digits=%i alg=%@>", v4, v9, numberOfDigitsInCode, v6];

  return v7;
}

- (NSArray)heuristicallyDeterminedServiceNameHints
{
  cachedHeuristicallyDeterminedServiceNameHints = self->_cachedHeuristicallyDeterminedServiceNameHints;
  if (!cachedHeuristicallyDeterminedServiceNameHints)
  {
    issuer = self->_issuer;
    if (!issuer)
    {
      goto LABEL_5;
    }

    v5 = [(NSString *)issuer componentsSeparatedByString:@":"];
    v6 = self->_cachedHeuristicallyDeterminedServiceNameHints;
    self->_cachedHeuristicallyDeterminedServiceNameHints = v5;

    cachedHeuristicallyDeterminedServiceNameHints = self->_cachedHeuristicallyDeterminedServiceNameHints;
  }

  issuer = cachedHeuristicallyDeterminedServiceNameHints;
LABEL_5:

  return issuer;
}

- (void)encodeWithCoder:(id)a3
{
  issuer = self->_issuer;
  v5 = a3;
  [v5 encodeObject:issuer forKey:@"issuer"];
  [v5 encodeObject:self->_accountName forKey:@"accountName"];
  [v5 encodeObject:self->_initialDate forKey:@"_initialDate"];
  [v5 encodeInteger:self->_codeGenerationPeriod forKey:@"period"];
  [v5 encodeInteger:self->_algorithm forKey:@"algorithm"];
  [v5 encodeInteger:self->_numberOfDigitsInCode forKey:@"digits"];
  [v5 encodeObject:self->_originalURL forKey:@"originalURL"];
  [v5 encodeObject:self->_key forKey:@"secret"];
}

- (WBSTOTPGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuer"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_initialDate"];
  v8 = [v4 decodeIntegerForKey:@"period"];
  v9 = [v4 decodeIntegerForKey:@"algorithm"];
  v10 = [v4 decodeIntegerForKey:@"digits"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalURL"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secret"];

  v13 = [(WBSTOTPGenerator *)self initWithKeyData:v12 initialDate:v7 codeGenerationPeriod:v8 numberOfDigits:v10 algorithm:v9 issuer:v5 accountName:v6 originalURL:v11];
  return v13;
}

+ (id)countdownStringForSecondsRemaining:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  if (a3 == 1)
  {
    v5 = @"This code is valid for the next %zu second.";
  }

  else
  {
    v5 = @"This code is valid for the next %zu seconds.";
  }

  v6 = _WBSLocalizedString(v5, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v7 = [v4 localizedStringWithFormat:v6, a3];

  v8 = _WBSLocalizedString(@"A new code will be generated when it expires.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@\n%@", v7, v8];

  return v9;
}

+ (id)countdownStringForMultipleCodesWithSecondsRemaining:(int64_t)a3
{
  v3 = [a1 shortCountdownStringForSecondsRemaining:a3];
  v4 = _WBSLocalizedString(@"Verification codes are valid for a short window. New codes will be generated when they expire.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v5 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@\n%@", v4, v3];

  return v5;
}

+ (id)shortCountdownStringForSecondsRemaining:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString(@"%zu seconds left.", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  v6 = [v4 localizedStringWithFormat:v5, a3];

  return v6;
}

- (WBSTOTPGenerator)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"originalURL"];
    v20 = v5;
    if (v5)
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:v5 relativeToURL:0];
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKeyedSubscript:@"secret"];
    v18 = [v4 objectForKeyedSubscript:@"_initialDate"];
    v19 = [v4 objectForKeyedSubscript:@"period"];
    v17 = [v19 unsignedIntegerValue];
    v9 = [v4 objectForKeyedSubscript:@"digits"];
    v10 = [v9 unsignedIntegerValue];
    v11 = [v4 objectForKeyedSubscript:@"algorithm"];
    v12 = [v11 unsignedIntegerValue];
    v13 = [v4 objectForKeyedSubscript:@"issuer"];
    v14 = [v4 objectForKeyedSubscript:@"accountName"];
    self = [(WBSTOTPGenerator *)self initWithKeyData:v8 initialDate:v18 codeGenerationPeriod:v17 numberOfDigits:v10 algorithm:v12 issuer:v13 accountName:v14 originalURL:v6];

    if (self)
    {
      v15 = self;
    }

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  key = self->_key;
  v17[0] = @"secret";
  v17[1] = @"_initialDate";
  initialDate = self->_initialDate;
  v18[0] = key;
  v18[1] = initialDate;
  v17[2] = @"digits";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfDigitsInCode];
  v18[2] = v6;
  v17[3] = @"period";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_codeGenerationPeriod];
  v18[3] = v7;
  v17[4] = @"algorithm";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_algorithm];
  v18[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v10 = [v3 dictionaryWithDictionary:v9];

  issuer = self->_issuer;
  if (issuer)
  {
    [v10 setObject:issuer forKeyedSubscript:@"issuer"];
  }

  accountName = self->_accountName;
  if (accountName)
  {
    [v10 setObject:accountName forKeyedSubscript:@"accountName"];
  }

  originalURL = self->_originalURL;
  if (originalURL)
  {
    v14 = [(NSURL *)originalURL absoluteString];
    [v10 setObject:v14 forKeyedSubscript:@"originalURL"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)codeForDate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  algorithm = self->_algorithm;
  v5 = a3;
  v6 = [(WBSTOTPGenerator *)self _HMACLengthForAlgorithm:algorithm];
  v7 = [(WBSTOTPGenerator *)self _commonCryptoAlgorithmForTOTPAlgorithm:self->_algorithm];
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &data - v9;
  v11 = [(WBSTOTPGenerator *)self _numberOfIntervalsSinceInitialDateForDate:v5];

  data = bswap64(v11);
  CCHmac(v8, [(NSData *)self->_key bytes:data], [(NSData *)self->_key length], &data, 8uLL, v10);
  LODWORD(v6) = bswap32(*&v10[v10[v6 - 1] & 0xF] & 0xFFFFFF7F);
  numberOfDigitsInCode = self->_numberOfDigitsInCode;
  v16 = v6 % __exp10(numberOfDigitsInCode);
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0*u", numberOfDigitsInCode, v16];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)startDateOfIntervalContainingDate:(id)a3
{
  v4 = [(WBSTOTPGenerator *)self _numberOfIntervalsSinceInitialDateForDate:a3];
  initialDate = self->_initialDate;
  v6 = (self->_codeGenerationPeriod * v4);
  v7 = MEMORY[0x1E695DF00];

  return [v7 dateWithTimeInterval:initialDate sinceDate:v6];
}

- (BOOL)generatesIdenticalCodesToGenerator:(id)a3
{
  v4 = a3;
  v5 = v4 && [(NSData *)self->_key isEqualToData:v4[1]]&& [(NSDate *)self->_initialDate isEqualToDate:v4[5]]&& self->_codeGenerationPeriod == v4[6] && self->_algorithm == v4[7] && self->_numberOfDigitsInCode == v4[8];

  return v5;
}

- (unint64_t)_algorithmForQueryItemValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (![v3 caseInsensitiveCompare:@"sha256"])
    {
      v5 = 1;
      goto LABEL_7;
    }

    if (![v4 caseInsensitiveCompare:@"sha512"])
    {
      v5 = 2;
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (unsigned)_commonCryptoAlgorithmForTOTPAlgorithm:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 4;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (unint64_t)_HMACLengthForAlgorithm:(unint64_t)a3
{
  v3 = 20;
  if (a3 == 1)
  {
    v3 = 32;
  }

  if (a3 == 2)
  {
    return 64;
  }

  else
  {
    return v3;
  }
}

- (id)_stringForAlgorithm:(unint64_t)a3
{
  v3 = @"SHA1";
  if (a3 == 1)
  {
    v3 = @"SHA256";
  }

  if (a3 == 2)
  {
    return @"SHA512";
  }

  else
  {
    return v3;
  }
}

- (void)initWithOTPAuthURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 absoluteString];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Attempting to create a TOTP generator from a URL with a non-otpauth scheme. url=%{sensitive}@", v7, v8, v9, v10, 3u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initWithOTPAuthURL:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 absoluteString];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Attempting to create a TOTP generator from a URL with a non-TOTP host portion. url=%{sensitive}@", v7, v8, v9, v10, 3u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)initWithOTPAuthURL:(void *)a1 .cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 absoluteString];
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "Otpauth URL is missing a secret. url=%{sensitive}@", v7, v8, v9, v10, 3u);

  v11 = *MEMORY[0x1E69E9840];
}

@end