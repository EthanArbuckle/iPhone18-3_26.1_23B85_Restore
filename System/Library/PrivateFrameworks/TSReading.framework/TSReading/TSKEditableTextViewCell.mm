@interface TSKEditableTextViewCell
- (BOOL)isNegative;
- (TSKEditableTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)beginEditing;
- (void)dealloc;
- (void)deleteBackward;
- (void)endEditing;
- (void)insertDecimalSeparator;
- (void)insertNumber:(int64_t)number;
- (void)layoutSubviews;
- (void)p_insertString:(id)string;
- (void)p_parseText:(id)text;
- (void)parseText;
- (void)setInputView:(id)view;
- (void)setString:(id)string;
- (void)tintColorDidChange;
- (void)toggleNegative;
@end

@implementation TSKEditableTextViewCell

- (TSKEditableTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = TSKEditableTextViewCell;
  v4 = [(TSKEditableTextViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    -[TSKEditableTextViewCell setFont:](v4, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:17.0]);
    v5 = [TSKPlaceholderTextView alloc];
    v6 = [(TSKPlaceholderTextView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v4->mTextView = v6;
    [(TSKPlaceholderTextView *)v6 setTextAlignment:2];
    -[TSKPlaceholderTextView setFont:](v4->mTextView, "setFont:", [MEMORY[0x277D74300] systemFontOfSize:17.0]);
    [(TSKPlaceholderTextView *)v4->mTextView setTextColor:[(TSKEditableTextViewCell *)v4 tintColor]];
    [(TSKPlaceholderTextView *)v4->mTextView setReturnKeyType:9];
    [(TSKPlaceholderTextView *)v4->mTextView setUserInteractionEnabled:0];
    [(TSKPlaceholderTextView *)v4->mTextView setScrollEnabled:0];
    [(TSKPlaceholderTextView *)v4->mTextView setOpaque:0];
    -[TSKPlaceholderTextView setBackgroundColor:](v4->mTextView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_textFieldDidEndEditing_ name:*MEMORY[0x277D770B8] object:v4->mTextView];
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = TSKEditableTextViewCell;
  [(TSKEditableTextViewCell *)&v3 dealloc];
}

- (void)tintColorDidChange
{
  tintColor = [(TSKEditableTextViewCell *)self tintColor];
  mTextView = self->mTextView;

  [(TSKPlaceholderTextView *)mTextView setTextColor:tintColor];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = TSKEditableTextViewCell;
  [(TSKEditableTextViewCell *)&v18 layoutSubviews];
  [-[TSKEditableTextViewCell contentView](self "contentView")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textLabel = [(TSKEditableTextViewCell *)self textLabel];
  [textLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  [textLabel setFrame:{v13, v15, CGRectGetMaxX(v19) + -160.0, v17}];
  [textLabel setAdjustsLetterSpacingToFitWidth:1];
  [textLabel setAdjustsFontSizeToFitWidth:1];
  [textLabel setMinimumFontSize:12.0];
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v21.origin.x = CGRectGetMaxX(v20) + -170.0;
  v21.size.width = 160.0;
  v21.origin.y = 3.0;
  v21.size.height = 29.0;
  v22 = CGRectIntegral(v21);
  [(TSKPlaceholderTextView *)self->mTextView setFrame:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
  if (![(TSKPlaceholderTextView *)self->mTextView superview])
  {
    [-[TSKEditableTextViewCell contentView](self "contentView")];
  }
}

- (void)p_parseText:(id)text
{
  self->mNumberHasDecimal = 0;
  v5 = [text length];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while ([text characterAtIndex:v7] != 46)
    {
      if (v6 == ++v7)
      {
        return;
      }
    }

    self->mNumberHasDecimal = 1;
  }
}

- (void)setString:(id)string
{
  [(TSKEditableTextViewCell *)self p_parseText:?];
  mTextView = self->mTextView;

  [(TSKPlaceholderTextView *)mTextView setText:string];
}

- (void)setInputView:(id)view
{
  mInputView = self->mInputView;
  if (mInputView != view)
  {

    self->mInputView = view;
  }
}

- (void)beginEditing
{
  [(TSKPlaceholderTextView *)self->mTextView setInputView:self->mInputView];
  [(TSKPlaceholderTextView *)self->mTextView setUserInteractionEnabled:1];
  if (self->mSavedDelegate)
  {
    [(TSKPlaceholderTextView *)self->mTextView setDelegate:?];
    self->mSavedDelegate = 0;
  }

  [(TSKPlaceholderTextView *)self->mTextView becomeFirstResponder];
  if (([(TSKPlaceholderTextView *)self->mTextView isFirstResponder]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKEditableTextViewCell beginEditing]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKEditableTextViewCell.m"];

    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:321 description:{@"We just tried to begin text view editing, but did not become a first responder."}];
  }
}

- (void)endEditing
{
  [(TSKPlaceholderTextView *)self->mTextView setInputView:0];
  [(TSKPlaceholderTextView *)self->mTextView setUserInteractionEnabled:0];
  [(TSKPlaceholderTextView *)self->mTextView resignFirstResponder];
  self->mSavedDelegate = [(TSKPlaceholderTextView *)self->mTextView delegate];
  [(TSKPlaceholderTextView *)self->mTextView setDelegate:self];
  if ([(TSKPlaceholderTextView *)self->mTextView isFirstResponder])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKEditableTextViewCell endEditing]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKEditableTextViewCell.m"];

    [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:336 description:{@"We just tried to end text view editing, but did not resign the first responder."}];
  }
}

- (void)p_insertString:(id)string
{
  selectedRange = [(TSKPlaceholderTextView *)self->mTextView selectedRange];
  v7 = v6;
  if (![(TSKEditableTextViewCell *)self isNegative]|| selectedRange)
  {
    v9 = [(NSString *)[(TSKEditableTextViewCell *)self string] mutableCopy];
    [v9 replaceCharactersInRange:selectedRange withString:{v7, string}];
    v8 = [string length];
    [(TSKEditableTextViewCell *)self setString:v9];
    [(TSKPlaceholderTextView *)self->mTextView setSelectedRange:v8 + selectedRange, 0];
  }
}

- (void)parseText
{
  string = [(TSKEditableTextViewCell *)self string];

  [(TSKEditableTextViewCell *)self p_parseText:string];
}

- (BOOL)isNegative
{
  string = [(TSKEditableTextViewCell *)self string];
  v3 = [(NSString *)string length];
  if (v3)
  {
    LOBYTE(v3) = [(NSString *)string characterAtIndex:0]== 45;
  }

  return v3;
}

- (void)insertNumber:(int64_t)number
{
  number = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", number];
  if (([(TSKPlaceholderTextView *)self->mTextView isFirstResponder]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKEditableTextViewCell insertNumber:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKEditableTextViewCell.m"), 392, @"The current cell is not the first responder!"}];
  }

  [(TSKEditableTextViewCell *)self p_insertString:number];
}

- (void)insertDecimalSeparator
{
  if (!self->mNumberHasDecimal)
  {
    if (([(TSKPlaceholderTextView *)self->mTextView isFirstResponder]& 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKEditableTextViewCell insertDecimalSeparator]"];
      [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKEditableTextViewCell.m"), 403, @"The current cell is not the first responder!"}];
    }

    -[TSKEditableTextViewCell p_insertString:](self, "p_insertString:", [MEMORY[0x277D6C330] currentLocaleDecimalSeparator]);
    self->mNumberHasDecimal = 1;
  }
}

- (void)deleteBackward
{
  if (([(TSKPlaceholderTextView *)self->mTextView isFirstResponder]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKEditableTextViewCell deleteBackward]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKEditableTextViewCell.m"), 415, @"The current cell is not the first responder!"}];
  }

  v10 = [(NSString *)[(TSKEditableTextViewCell *)self string] mutableCopy];
  if ([v10 length])
  {
    selectedRange = [(TSKPlaceholderTextView *)self->mTextView selectedRange];
    v7 = (v6 == 0) & (selectedRange != 0);
    if (v6 == 0 && selectedRange != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = selectedRange - v7;
    [v10 deleteCharactersInRange:{selectedRange - v7, v8}];
    [(TSKEditableTextViewCell *)self setString:v10];
    [(TSKPlaceholderTextView *)self->mTextView setSelectedRange:v9, 0];
  }
}

- (void)toggleNegative
{
  if (([(TSKPlaceholderTextView *)self->mTextView isFirstResponder]& 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKEditableTextViewCell toggleNegative]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKEditableTextViewCell.m"), 442, @"The current cell is not the first responder!"}];
  }

  string = [(TSKEditableTextViewCell *)self string];
  selectedRange = [(TSKPlaceholderTextView *)self->mTextView selectedRange];
  v8 = v7;
  if ([(TSKEditableTextViewCell *)self isNegative])
  {
    v9 = [(NSString *)string substringFromIndex:1];
    v10 = -1;
  }

  else
  {
    v9 = [@"-" stringByAppendingString:string];
    v10 = 1;
  }

  [(TSKEditableTextViewCell *)self setString:v9];
  mTextView = self->mTextView;

  [(TSKPlaceholderTextView *)mTextView setSelectedRange:selectedRange + v10, v8];
}

@end