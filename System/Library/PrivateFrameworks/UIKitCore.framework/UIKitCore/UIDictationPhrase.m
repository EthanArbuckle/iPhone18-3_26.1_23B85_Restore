@interface UIDictationPhrase
+ (UIDictationPhrase)phraseWithText:(id)a3 alternativeInterpretations:(id)a4;
+ (UIDictationPhrase)phraseWithText:(id)a3 alternativeInterpretations:(id)a4 style:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (UIDictationPhrase)initWithCoder:(id)a3;
- (UIDictationPhrase)initWithText:(id)a3 alternativeInterpretations:(id)a4 style:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationPhrase

- (UIDictationPhrase)initWithText:(id)a3 alternativeInterpretations:(id)a4 style:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = UIDictationPhrase;
  v11 = [(UIDictationPhrase *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, a3);
    objc_storeStrong(&v12->_alternativeInterpretations, a4);
    v12->_style = a5;
    v13 = v12;
  }

  return v12;
}

- (UIDictationPhrase)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v14.receiver = self;
  v14.super_class = UIDictationPhrase;
  v5 = [(UIDictationPhrase *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"AlternativeInterpretations"];
    alternativeInterpretations = v5->_alternativeInterpretations;
    v5->_alternativeInterpretations = v11;

    v5->_style = [v4 decodeInt32ForKey:@"AlternativeStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  text = self->_text;
  if (text)
  {
    [v8 encodeObject:text forKey:@"Text"];
  }

  alternativeInterpretations = self->_alternativeInterpretations;
  v6 = v8;
  if (alternativeInterpretations)
  {
    [v8 encodeObject:alternativeInterpretations forKey:@"AlternativeInterpretations"];
    v6 = v8;
  }

  style = self->_style;
  if (style)
  {
    [v8 encodeInt32:style forKey:@"AlternativeStyle"];
    v6 = v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIDictationPhrase *)self text];
      v7 = [(UIDictationPhrase *)v5 text];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(UIDictationPhrase *)self text];
        v10 = [(UIDictationPhrase *)v5 text];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      v13 = [(UIDictationPhrase *)self alternativeInterpretations];
      v14 = [(UIDictationPhrase *)v5 alternativeInterpretations];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(UIDictationPhrase *)self alternativeInterpretations];
        v17 = [(UIDictationPhrase *)v5 alternativeInterpretations];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      v19 = [(UIDictationPhrase *)self style];
      v12 = v19 == [(UIDictationPhrase *)v5 style];
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_15:

  return v12;
}

+ (UIDictationPhrase)phraseWithText:(id)a3 alternativeInterpretations:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[UIDictationPhrase alloc] initWithText:v6 alternativeInterpretations:v5 style:1];

  return v7;
}

+ (UIDictationPhrase)phraseWithText:(id)a3 alternativeInterpretations:(id)a4 style:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[UIDictationPhrase alloc] initWithText:v8 alternativeInterpretations:v7 style:a5];

  return v9;
}

- (id)description
{
  v3 = [(NSArray *)self->_alternativeInterpretations count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = &stru_1EFB14550;
    do
    {
      v7 = [(NSArray *)self->_alternativeInterpretations objectAtIndex:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v5)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v7];
          v9 = [(__CFString *)v6 stringByAppendingString:v8];

          v6 = v8;
        }

        else
        {
          v9 = [(__CFString *)v6 stringByAppendingString:v7];
        }

        v6 = v9;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIDictationPhrase ... text: (%@), alternativeInterpretations: (%@)", self->_text, v6];

  return v10;
}

@end