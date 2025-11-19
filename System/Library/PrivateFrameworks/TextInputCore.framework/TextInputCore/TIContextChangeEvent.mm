@interface TIContextChangeEvent
- (TIContextChangeEvent)initWithCoder:(id)a3;
- (_NSRange)inWordRange;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(TIContextChangeEvent *)self isSelection];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(TIUserAction *)self documentState];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 selectedText];
    v8 = [v4 stringWithFormat:@"[%@]", v7];
  }

  else
  {
    v7 = [v5 contextBeforeInput];
    v9 = [(TIContextChangeEvent *)self inWord];
    v10 = [(TIUserAction *)self documentState];
    v11 = [v10 contextAfterInput];
    v8 = [v4 stringWithFormat:@"%@| <%@> %@", v7, v9, v11];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIContextChangeEvent;
  v4 = a3;
  [(TIUserAction *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isSelection forKey:{@"isSelection", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_extendsPriorWord forKey:@"extendsPriorWord"];
  [v4 encodeObject:self->_inWord forKey:@"inWord"];
  [v4 encodeInteger:self->_inWordRange.location forKey:@"cursorLocation"];
  [v4 encodeInteger:self->_inWordRange.length forKey:@"cursorLength"];
  [v4 encodeInteger:self->_selectionLocation forKey:@"selectionLocation"];
}

- (TIContextChangeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIContextChangeEvent;
  v5 = [(TIUserAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_isSelection = [v4 decodeBoolForKey:@"isSelection"];
    v5->_extendsPriorWord = [v4 decodeBoolForKey:@"extendsPriorWord"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inWord"];
    inWord = v5->_inWord;
    v5->_inWord = v6;

    v5->_inWordRange.location = [v4 decodeIntegerForKey:@"cursorLocation"];
    v5->_inWordRange.length = [v4 decodeIntegerForKey:@"cursorLength"];
    v5->_selectionLocation = [v4 decodeIntegerForKey:@"selectionLocation"];
    [(TIUserAction *)v5 setActionType:2];
  }

  return v5;
}

@end