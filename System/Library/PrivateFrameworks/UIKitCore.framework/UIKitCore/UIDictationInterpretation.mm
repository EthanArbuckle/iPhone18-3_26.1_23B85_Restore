@interface UIDictationInterpretation
+ (id)serializedInterpretationFromTokens:(id)tokens transform:(__CFString *)transform;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeSpaceAfter;
- (BOOL)removeSpaceBefore;
- (UIDictationInterpretation)initWithCoder:(id)coder;
- (UIDictationInterpretation)initWithTokens:(id)tokens;
- (UIDictationInterpretation)initWithTokens:(id)tokens score:(double)score;
- (id)description;
- (id)serializedInterpretationWithTransform:(__CFString *)transform;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationInterpretation

- (UIDictationInterpretation)initWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v17.receiver = self;
  v17.super_class = UIDictationInterpretation;
  v5 = [(UIDictationInterpretation *)&v17 init];
  if (v5)
  {
    v6 = [tokensCopy copy];
    tokens = v5->_tokens;
    v5->_tokens = v6;

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v8 = v5->_tokens;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__UIDictationInterpretation_initWithTokens___block_invoke;
    v12[3] = &unk_1E7115800;
    v12[4] = &v13;
    [(NSArray *)v8 enumerateObjectsUsingBlock:v12];
    if ([tokensCopy count])
    {
      v9 = v14[3];
      v5->_averageConfidenceScore = v9 / [tokensCopy count];
    }

    v10 = v5;
    _Block_object_dispose(&v13, 8);
  }

  return v5;
}

double __44__UIDictationInterpretation_initWithTokens___block_invoke(uint64_t a1, void *a2)
{
  [a2 confidenceScore];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

- (UIDictationInterpretation)initWithTokens:(id)tokens score:(double)score
{
  tokensCopy = tokens;
  v12.receiver = self;
  v12.super_class = UIDictationInterpretation;
  v7 = [(UIDictationInterpretation *)&v12 init];
  if (v7)
  {
    v8 = [tokensCopy copy];
    tokens = v7->_tokens;
    v7->_tokens = v8;

    v7->_averageConfidenceScore = score;
    v10 = v7;
  }

  return v7;
}

- (UIDictationInterpretation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UIDictationInterpretation;
  v5 = [(UIDictationInterpretation *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v9;

    [coderCopy decodeDoubleForKey:@"averageConfidenceScore"];
    v5->_averageConfidenceScore = v11;
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tokens = self->_tokens;
  coderCopy = coder;
  [coderCopy encodeObject:tokens forKey:@"tokens"];
  [coderCopy encodeDouble:@"averageConfidenceScore" forKey:self->_averageConfidenceScore];
}

- (BOOL)removeSpaceBefore
{
  firstObject = [(NSArray *)self->_tokens firstObject];
  removeSpaceBefore = [firstObject removeSpaceBefore];

  return removeSpaceBefore;
}

- (BOOL)removeSpaceAfter
{
  lastObject = [(NSArray *)self->_tokens lastObject];
  removeSpaceAfter = [lastObject removeSpaceAfter];

  return removeSpaceAfter;
}

- (id)serializedInterpretationWithTransform:(__CFString *)transform
{
  v5 = objc_opt_class();
  tokens = [(UIDictationInterpretation *)self tokens];
  v7 = [v5 serializedInterpretationFromTokens:tokens transform:transform];

  return v7;
}

+ (id)serializedInterpretationFromTokens:(id)tokens transform:(__CFString *)transform
{
  v26 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  string = [MEMORY[0x1E696AD60] string];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = tokensCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ((v9 & 1) != 0 && ([*(*(&v21 + 1) + 8 * i) removeSpaceBefore] & 1) == 0)
        {
          [string appendString:@" "];
        }

        text = [v12 text];
        v14 = [UIDictationUtilities _properNameForString:text];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = text;
        }

        v17 = v16;

        [v17 length];
        [string appendString:v17];

        v9 = [v12 removeSpaceAfter] ^ 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = [string _stringByApplyingTransform:transform];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tokens = self->_tokens;
    tokens = [equalCopy tokens];
    if ([(NSArray *)tokens isEqualToArray:tokens])
    {
      averageConfidenceScore = self->_averageConfidenceScore;
      [equalCopy averageConfidenceScore];
      v9 = vabdd_f64(averageConfidenceScore, v8) < 0.000000001;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIDictationInterpretation *)self serializedInterpretationWithTransform:0];
  firstObject = [(NSArray *)self->_tokens firstObject];
  if ([firstObject removeSpaceBefore])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  lastObject = [(NSArray *)self->_tokens lastObject];
  if ([lastObject removeSpaceAfter])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v11 = [v3 stringWithFormat:@"<%@ %@, removeSpaceBefore/After=%s/%s", v5, v6, v8, v10];

  return v11;
}

@end