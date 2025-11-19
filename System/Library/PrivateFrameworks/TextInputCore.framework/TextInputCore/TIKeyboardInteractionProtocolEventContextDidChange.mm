@interface TIKeyboardInteractionProtocolEventContextDidChange
- (NSString)description;
- (TIKeyboardInteractionProtocolEventContextDidChange)initWithCoder:(id)a3;
- (TIKeyboardInteractionProtocolEventContextDidChange)initWithContext:(id)a3 wordDelete:(BOOL)a4 cursorMoved:(BOOL)a5 extendsPriorWord:(BOOL)a6 inWord:(id)a7 range:(_NSRange)a8 selectionLocation:(unint64_t)a9 keyboardState:(id)a10;
- (_NSRange)inWordRange;
- (void)encodeWithCoder:(id)a3;
- (void)sendTo:(id)a3;
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
  v3 = [(TIDocumentState *)self->_documentState contextAfterInput];
  v4 = [v2 stringWithFormat:@"<ContextDidChange: before=[%@], todo...>", v3];

  return v4;
}

- (void)sendTo:(id)a3
{
  documentState = self->_documentState;
  wordDelete = self->_wordDelete;
  cursorMoved = self->_cursorMoved;
  extendsPriorWord = self->_extendsPriorWord;
  word = self->_word;
  p_inWordRange = &self->_inWordRange;
  selectionLocation = self->_selectionLocation;
  v11 = a3;
  v12 = [(TIKeyboardInteractionProtocolBase *)self keyboardState];
  [v11 contextDidChange:documentState wordDelete:wordDelete cursorMoved:cursorMoved extendsPriorWord:extendsPriorWord inWord:word range:p_inWordRange->location selectionLocation:p_inWordRange->length keyboardState:{selectionLocation, v12}];
}

- (TIKeyboardInteractionProtocolEventContextDidChange)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TIKeyboardInteractionProtocolEventContextDidChange;
  v5 = [(TIKeyboardInteractionProtocolBase *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = v5->_documentState;
    v5->_documentState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wordDelete"];
    v5->_wordDelete = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cursorMoved"];
    v5->_cursorMoved = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extendsPriorWord"];
    v5->_extendsPriorWord = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"word"];
    word = v5->_word;
    v5->_word = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inWordRange"];
    v5->_inWordRange.location = [v13 rangeValue];
    v5->_inWordRange.length = v14;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectionLocation"];
    v5->_selectionLocation = [v15 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInteractionProtocolEventContextDidChange;
  v4 = a3;
  [(TIKeyboardInteractionProtocolBase *)&v10 encodeWithCoder:v4];
  [v4 encodeObject:self->_documentState forKey:{@"documentState", v10.receiver, v10.super_class}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_wordDelete];
  [v4 encodeObject:v5 forKey:@"wordDelete"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_cursorMoved];
  [v4 encodeObject:v6 forKey:@"cursorMoved"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_extendsPriorWord];
  [v4 encodeObject:v7 forKey:@"extendsPriorWord"];

  [v4 encodeObject:self->_word forKey:@"word"];
  v8 = [MEMORY[0x277CCAE60] valueWithRange:{self->_inWordRange.location, self->_inWordRange.length}];
  [v4 encodeObject:v8 forKey:@"inWordRange"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selectionLocation];
  [v4 encodeObject:v9 forKey:@"selectionLocation"];
}

- (TIKeyboardInteractionProtocolEventContextDidChange)initWithContext:(id)a3 wordDelete:(BOOL)a4 cursorMoved:(BOOL)a5 extendsPriorWord:(BOOL)a6 inWord:(id)a7 range:(_NSRange)a8 selectionLocation:(unint64_t)a9 keyboardState:(id)a10
{
  v16 = a3;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = TIKeyboardInteractionProtocolEventContextDidChange;
  v18 = [(TIKeyboardInteractionProtocolBase *)&v21 initWithKeyboardState:a10];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_documentState, a3);
    v19->_wordDelete = a4;
    v19->_cursorMoved = a5;
    v19->_extendsPriorWord = a6;
    objc_storeStrong(&v19->_word, a7);
    v19->_inWordRange = a8;
    v19->_selectionLocation = a9;
  }

  return v19;
}

@end