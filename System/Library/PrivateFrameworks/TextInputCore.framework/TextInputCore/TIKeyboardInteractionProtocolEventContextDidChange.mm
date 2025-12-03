@interface TIKeyboardInteractionProtocolEventContextDidChange
- (NSString)description;
- (TIKeyboardInteractionProtocolEventContextDidChange)initWithCoder:(id)coder;
- (TIKeyboardInteractionProtocolEventContextDidChange)initWithContext:(id)context wordDelete:(BOOL)delete cursorMoved:(BOOL)moved extendsPriorWord:(BOOL)word inWord:(id)inWord range:(_NSRange)range selectionLocation:(unint64_t)location keyboardState:(id)self0;
- (_NSRange)inWordRange;
- (void)encodeWithCoder:(id)coder;
- (void)sendTo:(id)to;
@end

@implementation TIKeyboardInteractionProtocolEventContextDidChange

- (_NSRange)inWordRange
{
  p_inWordRange = &self->_inWordRange;
  location = self->_inWordRange.location;
  length = p_inWordRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  contextAfterInput = [(TIDocumentState *)self->_documentState contextAfterInput];
  v4 = [v2 stringWithFormat:@"<ContextDidChange: before=[%@], todo...>", contextAfterInput];

  return v4;
}

- (void)sendTo:(id)to
{
  documentState = self->_documentState;
  wordDelete = self->_wordDelete;
  cursorMoved = self->_cursorMoved;
  extendsPriorWord = self->_extendsPriorWord;
  word = self->_word;
  p_inWordRange = &self->_inWordRange;
  selectionLocation = self->_selectionLocation;
  toCopy = to;
  keyboardState = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [toCopy contextDidChange:documentState wordDelete:wordDelete cursorMoved:cursorMoved extendsPriorWord:extendsPriorWord inWord:word range:p_inWordRange->location selectionLocation:p_inWordRange->length keyboardState:{selectionLocation, keyboardState}];
}

- (TIKeyboardInteractionProtocolEventContextDidChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TIKeyboardInteractionProtocolEventContextDidChange;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wordDelete"];
    v5->_wordDelete = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cursorMoved"];
    v5->_cursorMoved = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendsPriorWord"];
    v5->_extendsPriorWord = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"word"];
    word = v5->_word;
    v5->_word = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inWordRange"];
    v5->_inWordRange.location = [v13 rangeValue];
    v5->_inWordRange.length = v14;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectionLocation"];
    v5->_selectionLocation = [v15 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInteractionProtocolEventContextDidChange;
  coderCopy = coder;
  [(TIKeyboardInteractionProtocolBase *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_documentState forKey:{@"documentState", v10.receiver, v10.super_class}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_wordDelete];
  [coderCopy encodeObject:v5 forKey:@"wordDelete"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_cursorMoved];
  [coderCopy encodeObject:v6 forKey:@"cursorMoved"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_extendsPriorWord];
  [coderCopy encodeObject:v7 forKey:@"extendsPriorWord"];

  [coderCopy encodeObject:self->_word forKey:@"word"];
  v8 = [MEMORY[0x277CCAE60] valueWithRange:{self->_inWordRange.location, self->_inWordRange.length}];
  [coderCopy encodeObject:v8 forKey:@"inWordRange"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selectionLocation];
  [coderCopy encodeObject:v9 forKey:@"selectionLocation"];
}

- (TIKeyboardInteractionProtocolEventContextDidChange)initWithContext:(id)context wordDelete:(BOOL)delete cursorMoved:(BOOL)moved extendsPriorWord:(BOOL)word inWord:(id)inWord range:(_NSRange)range selectionLocation:(unint64_t)location keyboardState:(id)self0
{
  contextCopy = context;
  inWordCopy = inWord;
  v21.receiver = self;
  v21.super_class = TIKeyboardInteractionProtocolEventContextDidChange;
  v18 = [(TIKeyboardInteractionProtocolBase *)&v21 initWithKeyboardState:state];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_documentState, context);
    v19->_wordDelete = delete;
    v19->_cursorMoved = moved;
    v19->_extendsPriorWord = word;
    objc_storeStrong(&v19->_word, inWord);
    v19->_inWordRange = range;
    v19->_selectionLocation = location;
  }

  return v19;
}

@end