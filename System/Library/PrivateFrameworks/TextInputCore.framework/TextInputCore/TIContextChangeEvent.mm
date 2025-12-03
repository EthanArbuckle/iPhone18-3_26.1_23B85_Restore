@interface TIContextChangeEvent
- (TIContextChangeEvent)initWithCoder:(id)coder;
- (_NSRange)inWordRange;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIContextChangeEvent

- (_NSRange)inWordRange
{
  p_inWordRange = &self->_inWordRange;
  location = self->_inWordRange.location;
  length = p_inWordRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  isSelection = [(TIContextChangeEvent *)self isSelection];
  v4 = MEMORY[0x277CCACA8];
  documentState = [(TIUserAction *)self documentState];
  v6 = documentState;
  if (isSelection)
  {
    selectedText = [documentState selectedText];
    v8 = [v4 stringWithFormat:@"[%@]", selectedText];
  }

  else
  {
    selectedText = [documentState contextBeforeInput];
    inWord = [(TIContextChangeEvent *)self inWord];
    documentState2 = [(TIUserAction *)self documentState];
    contextAfterInput = [documentState2 contextAfterInput];
    v8 = [v4 stringWithFormat:@"%@| <%@> %@", selectedText, inWord, contextAfterInput];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIContextChangeEvent;
  coderCopy = coder;
  [(TIUserAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_isSelection forKey:{@"isSelection", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_extendsPriorWord forKey:@"extendsPriorWord"];
  [coderCopy encodeObject:self->_inWord forKey:@"inWord"];
  [coderCopy encodeInteger:self->_inWordRange.location forKey:@"cursorLocation"];
  [coderCopy encodeInteger:self->_inWordRange.length forKey:@"cursorLength"];
  [coderCopy encodeInteger:self->_selectionLocation forKey:@"selectionLocation"];
}

- (TIContextChangeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIContextChangeEvent;
  v5 = [(TIUserAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_isSelection = [coderCopy decodeBoolForKey:@"isSelection"];
    v5->_extendsPriorWord = [coderCopy decodeBoolForKey:@"extendsPriorWord"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inWord"];
    inWord = v5->_inWord;
    v5->_inWord = v6;

    v5->_inWordRange.location = [coderCopy decodeIntegerForKey:@"cursorLocation"];
    v5->_inWordRange.length = [coderCopy decodeIntegerForKey:@"cursorLength"];
    v5->_selectionLocation = [coderCopy decodeIntegerForKey:@"selectionLocation"];
    [(TIUserAction *)v5 setActionType:2];
  }

  return v5;
}

@end