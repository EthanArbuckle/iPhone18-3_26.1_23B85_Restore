@interface UIDictationInterpretation
+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeSpaceAfter;
- (BOOL)removeSpaceBefore;
- (UIDictationInterpretation)initWithCoder:(id)a3;
- (UIDictationInterpretation)initWithTokens:(id)a3;
- (UIDictationInterpretation)initWithTokens:(id)a3 score:(double)a4;
- (id)description;
- (id)serializedInterpretationWithTransform:(__CFString *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationInterpretation

- (UIDictationInterpretation)initWithTokens:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UIDictationInterpretation;
  v5 = [(UIDictationInterpretation *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
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
    if ([v4 count])
    {
      v9 = v14[3];
      v5->_averageConfidenceScore = v9 / [v4 count];
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

- (UIDictationInterpretation)initWithTokens:(id)a3 score:(double)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = UIDictationInterpretation;
  v7 = [(UIDictationInterpretation *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    tokens = v7->_tokens;
    v7->_tokens = v8;

    v7->_averageConfidenceScore = a4;
    v10 = v7;
  }

  return v7;
}

- (UIDictationInterpretation)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIDictationInterpretation;
  v5 = [(UIDictationInterpretation *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tokens"];
    tokens = v5->_tokens;
    v5->_tokens = v9;

    [v4 decodeDoubleForKey:@"averageConfidenceScore"];
    v5->_averageConfidenceScore = v11;
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tokens = self->_tokens;
  v5 = a3;
  [v5 encodeObject:tokens forKey:@"tokens"];
  [v5 encodeDouble:@"averageConfidenceScore" forKey:self->_averageConfidenceScore];
}

- (BOOL)removeSpaceBefore
{
  v2 = [(NSArray *)self->_tokens firstObject];
  v3 = [v2 removeSpaceBefore];

  return v3;
}

- (BOOL)removeSpaceAfter
{
  v2 = [(NSArray *)self->_tokens lastObject];
  v3 = [v2 removeSpaceAfter];

  return v3;
}

- (id)serializedInterpretationWithTransform:(__CFString *)a3
{
  v5 = objc_opt_class();
  v6 = [(UIDictationInterpretation *)self tokens];
  v7 = [v5 serializedInterpretationFromTokens:v6 transform:a3];

  return v7;
}

+ (id)serializedInterpretationFromTokens:(id)a3 transform:(__CFString *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
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
          [v5 appendString:@" "];
        }

        v13 = [v12 text];
        v14 = [UIDictationUtilities _properNameForString:v13];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16;

        [v17 length];
        [v5 appendString:v17];

        v9 = [v12 removeSpaceAfter] ^ 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = [v5 _stringByApplyingTransform:a4];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tokens = self->_tokens;
    v6 = [v4 tokens];
    if ([(NSArray *)tokens isEqualToArray:v6])
    {
      averageConfidenceScore = self->_averageConfidenceScore;
      [v4 averageConfidenceScore];
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
  v7 = [(NSArray *)self->_tokens firstObject];
  if ([v7 removeSpaceBefore])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [(NSArray *)self->_tokens lastObject];
  if ([v9 removeSpaceAfter])
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