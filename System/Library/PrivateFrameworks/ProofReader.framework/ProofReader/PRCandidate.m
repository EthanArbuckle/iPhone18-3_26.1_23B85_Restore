@interface PRCandidate
+ (id)candidateWithBuffer:(char *)a3 encoding:(unsigned int)a4 transform:(unint64_t)a5 replacementRange:(_NSRange)a6 errorScore:(double)a7 capitalizationDictionaryArray:(id)a8;
+ (id)candidateWithString:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5;
+ (id)candidateWithString:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5 errorModel:(id)a6;
+ (id)candidateWithWords:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5;
+ (id)candidateWithWords:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5 errorModel:(id)a6;
- (NSString)string;
- (PRCandidate)initWithCandidateWords:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5;
- (PRCandidate)initWithString:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5;
- (_NSRange)replacementRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRCandidate

- (PRCandidate)initWithCandidateWords:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5
{
  length = a4.length;
  location = a4.location;
  v11.receiver = self;
  v11.super_class = PRCandidate;
  v9 = [(PRCandidate *)&v11 init];
  if (v9)
  {
    v9->_candidateWords = [a3 copy];
    v9->_replacementRange.location = location;
    v9->_replacementRange.length = length;
    v9->_errorScore = a5;
    v9->_linguisticScore = 0.0;
    v9->_lexiconScore = 0.0;
    v9->_blocklisted = 0;
  }

  return v9;
}

- (PRCandidate)initWithString:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5
{
  length = a4.length;
  location = a4.location;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(a3, "copy")}];

  return [(PRCandidate *)self initWithCandidateWords:v9 replacementRange:location errorScore:length, a5];
}

+ (id)candidateWithWords:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5
{
  if (!a3)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  if (![a3 count])
  {
    return 0;
  }

  v10 = [[a1 alloc] initWithCandidateWords:a3 replacementRange:location errorScore:{length, a5}];

  return v10;
}

+ (id)candidateWithWords:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5 errorModel:(id)a6
{
  if (!a3)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  if (![a3 count])
  {
    return 0;
  }

  v12 = [a1 alloc];
  [a6 errorScoreForType:a5];
  v13 = [v12 initWithCandidateWords:a3 replacementRange:location errorScore:length];

  return v13;
}

+ (id)candidateWithString:(id)a3 replacementRange:(_NSRange)a4 errorScore:(double)a5
{
  if (!a3)
  {
    return 0;
  }

  v5 = [[a1 alloc] initWithString:a3 replacementRange:a4.location errorScore:{a4.length, a5}];

  return v5;
}

+ (id)candidateWithString:(id)a3 replacementRange:(_NSRange)a4 errorType:(unint64_t)a5 errorModel:(id)a6
{
  if (!a3)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  v11 = [a1 alloc];
  [a6 errorScoreForType:a5];
  v12 = [v11 initWithString:a3 replacementRange:location errorScore:length];

  return v12;
}

+ (id)candidateWithBuffer:(char *)a3 encoding:(unsigned int)a4 transform:(unint64_t)a5 replacementRange:(_NSRange)a6 errorScore:(double)a7 capitalizationDictionaryArray:(id)a8
{
  length = a6.length;
  location = a6.location;
  v37 = *MEMORY[0x1E69E9840];
  v15 = CFStringCreateWithCString(0, a3, a4);
  v16 = [(__CFString *)v15 lowercaseString];
  v17 = 0;
  v31 = a1;
  v18 = location;
  v19 = length;
  if (a4 == 1284 && a5 >= 2)
  {
    v17 = candidateWithBuffer_encoding_transform_replacementRange_errorScore_capitalizationDictionaryArray__turkishLocale;
    if (!candidateWithBuffer_encoding_transform_replacementRange_errorScore_capitalizationDictionaryArray__turkishLocale)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"tr"];
      candidateWithBuffer_encoding_transform_replacementRange_errorScore_capitalizationDictionaryArray__turkishLocale = v17;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = [a8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
LABEL_7:
    v23 = 0;
    while (1)
    {
      if (*v33 != v22)
      {
        objc_enumerationMutation(a8);
      }

      v24 = [*(*(&v32 + 1) + 8 * v23) objectForKey:v16];
      if (v24)
      {
        goto LABEL_20;
      }

      if (v21 == ++v23)
      {
        v21 = [a8 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if (a5 == 3)
  {
    v24 = initialCapitalizedString(v15, v17);
LABEL_20:
    v28 = v24;
    v25 = v19;
    v26 = v18;
    v27 = v31;
    goto LABEL_21;
  }

  v25 = v19;
  v26 = v18;
  v27 = v31;
  if (a5 == 2)
  {
    v28 = uppercasedString(v15, v17);
  }

  else if (a5 == 1)
  {
    v28 = v16;
  }

  else
  {
    v28 = v15;
  }

LABEL_21:
  result = [v27 candidateWithString:v28 replacementRange:v26 errorScore:{v25, a7}];
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PRCandidate *)self string];
  [(PRCandidate *)self errorScore];
  v6 = v5;
  [(PRCandidate *)self linguisticScore];
  v8 = v7;
  v9 = [(PRCandidate *)self isBlocklisted];
  [(PRCandidate *)self score];
  return [v3 stringWithFormat:@"%@(%.2g, %.2g, %d;%.2g)", v4, v6, v8, v9, v10];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRCandidate;
  [(PRCandidate *)&v3 dealloc];
}

- (NSString)string
{
  v3 = [(NSArray *)self->_candidateWords count];
  candidateWords = self->_candidateWords;
  if (v3 == 1)
  {

    return [(NSArray *)candidateWords firstObject];
  }

  else
  {

    return [(NSArray *)candidateWords componentsJoinedByString:@" "];
  }
}

- (_NSRange)replacementRange
{
  length = self->_replacementRange.length;
  location = self->_replacementRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end