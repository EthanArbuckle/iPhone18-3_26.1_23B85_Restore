@interface UIDictationPhrase
+ (UIDictationPhrase)phraseWithText:(id)text alternativeInterpretations:(id)interpretations;
+ (UIDictationPhrase)phraseWithText:(id)text alternativeInterpretations:(id)interpretations style:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (UIDictationPhrase)initWithCoder:(id)coder;
- (UIDictationPhrase)initWithText:(id)text alternativeInterpretations:(id)interpretations style:(int64_t)style;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationPhrase

- (UIDictationPhrase)initWithText:(id)text alternativeInterpretations:(id)interpretations style:(int64_t)style
{
  textCopy = text;
  interpretationsCopy = interpretations;
  v15.receiver = self;
  v15.super_class = UIDictationPhrase;
  v11 = [(UIDictationPhrase *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, text);
    objc_storeStrong(&v12->_alternativeInterpretations, interpretations);
    v12->_style = style;
    v13 = v12;
  }

  return v12;
}

- (UIDictationPhrase)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v14.receiver = self;
  v14.super_class = UIDictationPhrase;
  v5 = [(UIDictationPhrase *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"AlternativeInterpretations"];
    alternativeInterpretations = v5->_alternativeInterpretations;
    v5->_alternativeInterpretations = v11;

    v5->_style = [coderCopy decodeInt32ForKey:@"AlternativeStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  text = self->_text;
  if (text)
  {
    [coderCopy encodeObject:text forKey:@"Text"];
  }

  alternativeInterpretations = self->_alternativeInterpretations;
  v6 = coderCopy;
  if (alternativeInterpretations)
  {
    [coderCopy encodeObject:alternativeInterpretations forKey:@"AlternativeInterpretations"];
    v6 = coderCopy;
  }

  style = self->_style;
  if (style)
  {
    [coderCopy encodeInt32:style forKey:@"AlternativeStyle"];
    v6 = coderCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      text = [(UIDictationPhrase *)self text];
      text2 = [(UIDictationPhrase *)v5 text];
      v8 = text2;
      if (text == text2)
      {
      }

      else
      {
        text3 = [(UIDictationPhrase *)self text];
        text4 = [(UIDictationPhrase *)v5 text];
        v11 = [text3 isEqual:text4];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      alternativeInterpretations = [(UIDictationPhrase *)self alternativeInterpretations];
      alternativeInterpretations2 = [(UIDictationPhrase *)v5 alternativeInterpretations];
      v15 = alternativeInterpretations2;
      if (alternativeInterpretations == alternativeInterpretations2)
      {
      }

      else
      {
        alternativeInterpretations3 = [(UIDictationPhrase *)self alternativeInterpretations];
        alternativeInterpretations4 = [(UIDictationPhrase *)v5 alternativeInterpretations];
        v18 = [alternativeInterpretations3 isEqual:alternativeInterpretations4];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_14:

          goto LABEL_15;
        }
      }

      style = [(UIDictationPhrase *)self style];
      v12 = style == [(UIDictationPhrase *)v5 style];
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_15:

  return v12;
}

+ (UIDictationPhrase)phraseWithText:(id)text alternativeInterpretations:(id)interpretations
{
  interpretationsCopy = interpretations;
  textCopy = text;
  v7 = [[UIDictationPhrase alloc] initWithText:textCopy alternativeInterpretations:interpretationsCopy style:1];

  return v7;
}

+ (UIDictationPhrase)phraseWithText:(id)text alternativeInterpretations:(id)interpretations style:(int64_t)style
{
  interpretationsCopy = interpretations;
  textCopy = text;
  v9 = [[UIDictationPhrase alloc] initWithText:textCopy alternativeInterpretations:interpretationsCopy style:style];

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