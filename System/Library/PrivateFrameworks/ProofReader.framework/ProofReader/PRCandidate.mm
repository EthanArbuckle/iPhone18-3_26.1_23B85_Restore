@interface PRCandidate
+ (id)candidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range errorScore:(double)score capitalizationDictionaryArray:(id)array;
+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score;
+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model;
+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score;
+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model;
- (NSString)string;
- (PRCandidate)initWithCandidateWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score;
- (PRCandidate)initWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score;
- (_NSRange)replacementRange;
- (id)description;
- (void)dealloc;
@end

@implementation PRCandidate

- (PRCandidate)initWithCandidateWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = PRCandidate;
  v9 = [(PRCandidate *)&v11 init];
  if (v9)
  {
    v9->_candidateWords = [words copy];
    v9->_replacementRange.location = location;
    v9->_replacementRange.length = length;
    v9->_errorScore = score;
    v9->_linguisticScore = 0.0;
    v9->_lexiconScore = 0.0;
    v9->_blocklisted = 0;
  }

  return v9;
}

- (PRCandidate)initWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score
{
  length = range.length;
  location = range.location;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(string, "copy")}];

  return [(PRCandidate *)self initWithCandidateWords:v9 replacementRange:location errorScore:length, score];
}

+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorScore:(double)score
{
  if (!words)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if (![words count])
  {
    return 0;
  }

  v10 = [[self alloc] initWithCandidateWords:words replacementRange:location errorScore:{length, score}];

  return v10;
}

+ (id)candidateWithWords:(id)words replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model
{
  if (!words)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if (![words count])
  {
    return 0;
  }

  v12 = [self alloc];
  [model errorScoreForType:type];
  v13 = [v12 initWithCandidateWords:words replacementRange:location errorScore:length];

  return v13;
}

+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorScore:(double)score
{
  if (!string)
  {
    return 0;
  }

  v5 = [[self alloc] initWithString:string replacementRange:range.location errorScore:{range.length, score}];

  return v5;
}

+ (id)candidateWithString:(id)string replacementRange:(_NSRange)range errorType:(unint64_t)type errorModel:(id)model
{
  if (!string)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  v11 = [self alloc];
  [model errorScoreForType:type];
  v12 = [v11 initWithString:string replacementRange:location errorScore:length];

  return v12;
}

+ (id)candidateWithBuffer:(char *)buffer encoding:(unsigned int)encoding transform:(unint64_t)transform replacementRange:(_NSRange)range errorScore:(double)score capitalizationDictionaryArray:(id)array
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x1E69E9840];
  v15 = CFStringCreateWithCString(0, buffer, encoding);
  lowercaseString = [(__CFString *)v15 lowercaseString];
  v17 = 0;
  selfCopy = self;
  v18 = location;
  v19 = length;
  if (encoding == 1284 && transform >= 2)
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
  v20 = [array countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        objc_enumerationMutation(array);
      }

      v24 = [*(*(&v32 + 1) + 8 * v23) objectForKey:lowercaseString];
      if (v24)
      {
        goto LABEL_20;
      }

      if (v21 == ++v23)
      {
        v21 = [array countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v21)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if (transform == 3)
  {
    v24 = initialCapitalizedString(v15, v17);
LABEL_20:
    v28 = v24;
    v25 = v19;
    v26 = v18;
    v27 = selfCopy;
    goto LABEL_21;
  }

  v25 = v19;
  v26 = v18;
  v27 = selfCopy;
  if (transform == 2)
  {
    v28 = uppercasedString(v15, v17);
  }

  else if (transform == 1)
  {
    v28 = lowercaseString;
  }

  else
  {
    v28 = v15;
  }

LABEL_21:
  result = [v27 candidateWithString:v28 replacementRange:v26 errorScore:{v25, score}];
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  string = [(PRCandidate *)self string];
  [(PRCandidate *)self errorScore];
  v6 = v5;
  [(PRCandidate *)self linguisticScore];
  v8 = v7;
  isBlocklisted = [(PRCandidate *)self isBlocklisted];
  [(PRCandidate *)self score];
  return [v3 stringWithFormat:@"%@(%.2g, %.2g, %d;%.2g)", string, v6, v8, isBlocklisted, v10];
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