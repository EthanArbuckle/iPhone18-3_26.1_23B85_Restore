@interface RTTUIUtteranceCell
+ (double)heightForUtterance:(id)a3 andWidth:(double)a4;
- (BOOL)_accessibilityRealtimeCompleted;
- (RTTUIUtteranceCellDelegate)delegate;
- (_NSRange)selectedTextRange;
- (double)preferredHeightForWidth:(double)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)utteranceTextColor;
- (void)_accessibilityHandleATFocused:(BOOL)a3 assistiveTech:(id)a4;
- (void)adjustTextViewSize;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSendProgressIndex:(unint64_t)a3;
- (void)textViewDidChange:(id)a3;
- (void)updateUtterance:(id)a3 postNotifications:(BOOL)a4;
@end

@implementation RTTUIUtteranceCell

+ (double)heightForUtterance:(id)a3 andWidth:(double)a4
{
  v5 = a3;
  if (heightForUtterance_andWidth__onceToken != -1)
  {
    +[RTTUIUtteranceCell heightForUtterance:andWidth:];
  }

  v6 = v5;
  v7 = [v6 text];
  v8 = [v7 length];

  v9 = v6;
  if (!v8)
  {
    v10 = MEMORY[0x277D440E8];
    v11 = [v6 contactPath];
    v12 = ttyLocString();
    v9 = [v10 utteranceWithContactPath:v11 andText:v12];
  }

  [heightForUtterance_andWidth__SizeCell updateUtterance:v9 postNotifications:0];
  [heightForUtterance_andWidth__SizeCell preferredHeightForWidth:a4];
  v14 = v13;

  return v14;
}

uint64_t __50__RTTUIUtteranceCell_heightForUtterance_andWidth___block_invoke()
{
  heightForUtterance_andWidth__SizeCell = objc_alloc_init(RTTUIUtteranceCell);

  return MEMORY[0x2821F96F8]();
}

- (void)updateUtterance:(id)a3 postNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(RTTUIUtteranceCell *)self setUtterance:v6];
  [(RTTUIUtteranceCell *)self updateLayout];
  if (v4)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(RTTUIUtteranceCell *)self _accessibilityIsRealtimeElement])
    {
      [(RTTUIUtteranceCell *)self _accessibilitySetIsUnread:1];
      UIAccessibilityPostNotification(0x421u, 0);
    }

    v7 = self;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v8 = get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_ptr;
    v14 = get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_ptr;
    if (!get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_ptr)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_block_invoke;
      v10[3] = &unk_279AE4F10;
      v10[4] = &v11;
      __get_UIAccessibilitySetAssociatedElementContextForNextNotificationSymbolLoc_block_invoke(v10);
      v8 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v8)
    {
      v9 = [RTTUIConversationControllerCoordinator registerForCallUpdates:];
      _Block_object_dispose(&v11, 8);
      _Unwind_Resume(v9);
    }

    v8(v7);

    UIAccessibilityPostNotification(0x3EDu, 0);
  }
}

- (void)setSendProgressIndex:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v18[0] = 67109120;
    v18[1] = a3;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "Set progress index: %d", v18, 8u);
  }

  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  v7 = [(UITextView *)self->_textView attributedText];
  v8 = [v6 initWithAttributedString:v7];

  [v8 beginEditing];
  v9 = [(RTTUIUtteranceCell *)self delegate];
  v10 = [v9 currentCall];
  LODWORD(v7) = [RTTUIUtilities ttyShouldBeRealtimeForCall:v10];

  if (v7)
  {
    v11 = [v8 length];
  }

  else
  {
    v11 = a3 + 1;
  }

  v12 = [v8 length];
  v13 = *MEMORY[0x277D740C0];
  v14 = [(RTTUIUtteranceCell *)self utteranceTextColor];
  v15 = v14;
  if (v11 >= v12)
  {
    [v8 addAttribute:v13 value:v14 range:{0, objc_msgSend(v8, "length")}];
  }

  else
  {
    v16 = [v14 colorWithAlphaComponent:0.5];
    [v8 addAttribute:v13 value:v16 range:{v11, objc_msgSend(v8, "length") - v11}];

    v15 = [(RTTUIUtteranceCell *)self utteranceTextColor];
    v17 = [v15 colorWithAlphaComponent:1.0];
    [v8 addAttribute:v13 value:v17 range:{0, v11}];
  }

  [v8 endEditing];
  [(UITextView *)self->_textView setAttributedText:v8];
  [(RTTUIUtteranceCell *)self adjustTextViewSize];
}

- (void)dealloc
{
  [(RTTUIUtteranceCell *)self setUtterance:0];
  v3.receiver = self;
  v3.super_class = RTTUIUtteranceCell;
  [(RTTUIUtteranceCell *)&v3 dealloc];
}

- (id)utteranceTextColor
{
  IsRTTNotificationContentExtension = Soft_AXProcessIsRTTNotificationContentExtension();
  v4 = [(RTTUIUtteranceCell *)self delegate];
  v5 = [v4 isCurrentCallConnected];

  if (!v5 || IsRTTNotificationContentExtension)
  {
    v6 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
  }

  return v6;
}

- (_NSRange)selectedTextRange
{
  v2 = [(UITextView *)self->_textView selectedRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (double)preferredHeightForWidth:(double)a3
{
  v5 = +[RTTUIUtilities sharedUtilityProvider];
  [v5 bubbleInsetForMe:1];
  v7 = v6;
  v9 = v8;

  [(UITextView *)self->_textView sizeThatFits:a3, 1.79769313e308];
  return v10 - v7 - v9;
}

- (void)adjustTextViewSize
{
  v3 = [(RTTUIUtteranceCell *)self utterance];
  v4 = [v3 isMe];

  [(RTTUIUtteranceCell *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x277CBF348];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v15 = [(RTTUIUtteranceCell *)self utterance];
  v16 = [v15 isTranscription];

  if (v16)
  {
    v17 = [v14 fontDescriptor];
    v18 = [v17 fontDescriptorWithSymbolicTraits:1];

    v19 = MEMORY[0x277D74300];
    [v14 pointSize];
    v20 = [v19 fontWithDescriptor:v18 size:?];

    v14 = v20;
  }

  v22 = *v13;
  v21 = v13[1];
  [(UITextView *)self->_textView setFont:v14];
  v51.origin.x = v6;
  v51.origin.y = v8;
  v51.size.width = v10;
  v51.size.height = v12;
  [(UITextView *)self->_textView sizeThatFits:CGRectGetWidth(v51), 1.79769313e308];
  v24 = fmax(v23, 20.0);
  v52.origin.x = v6;
  v52.origin.y = v8;
  v52.size.width = v10;
  v52.size.height = v12;
  Width = CGRectGetWidth(v52);
  v53.origin.x = v6;
  v53.origin.y = v8;
  v53.size.width = v10;
  v53.size.height = v12;
  [(UITextView *)self->_textView sizeThatFits:CGRectGetWidth(v53), v24];
  v27 = fmax(v26 + 10.0, 130.0);
  if (Width >= v27)
  {
    Width = v27;
  }

  v28 = +[RTTUIUtilities sharedUtilityProvider];
  v29 = [v28 textAlignmentForMe:v4];

  if (v29 == 2)
  {
    v54.origin.x = v6;
    v54.origin.y = v8;
    v54.size.width = v10;
    v54.size.height = v12;
    v30 = CGRectGetWidth(v54);
    v55.origin.x = v22;
    v55.origin.y = v21;
    v55.size.width = Width;
    v55.size.height = v24;
    v22 = v30 - CGRectGetWidth(v55);
  }

  [(UITextView *)self->_textView setFrame:v22, v21, Width, v24];
  v31 = +[RTTUIUtilities sharedUtilityProvider];
  [v31 textInsetForMe:v4];
  v33 = v22 + v32;
  v35 = v21 + v34;
  v37 = Width - (v32 + v36);
  v39 = v24 - (v34 + v38);

  v40 = +[RTTUIUtilities sharedUtilityProvider];
  [v40 bubbleInsetForMe:v4];
  v42 = v33 + v41;
  v44 = v35 + v43;
  v46 = v37 - (v41 + v45);
  v48 = v39 - (v43 + v47);

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __40__RTTUIUtteranceCell_adjustTextViewSize__block_invoke;
  v50[3] = &unk_279AE5150;
  v50[4] = self;
  *&v50[5] = v42;
  *&v50[6] = v44;
  *&v50[7] = v46;
  *&v50[8] = v48;
  v49 = MEMORY[0x26670A470](v50);
  v49[2]();
}

void __40__RTTUIUtteranceCell_adjustTextViewSize__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = RTTUIUtteranceCell;
  [(RTTUIUtteranceCell *)&v50 layoutSubviews];
  v3 = [(RTTUIUtteranceCell *)self utterance];
  v4 = [v3 isMe];

  v5 = [(RTTUIUtteranceCell *)self delegate];
  v6 = [v5 isCurrentCallConnected];

  if (!self->_textView)
  {
    v7 = [RTTUIStaticTextView alloc];
    v8 = [(RTTUIUtteranceCell *)self textLabel];
    [v8 frame];
    v9 = [(RTTUIStaticTextView *)v7 initWithFrame:0 textContainer:?];
    textView = self->_textView;
    self->_textView = v9;

    v11 = self->_textView;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v11 setBackgroundColor:v12];

    v13 = self->_textView;
    v14 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    [(UITextView *)v13 setFont:v14];

    [(UITextView *)self->_textView setDelegate:self];
    v15 = [(UITextView *)self->_textView textContainer];
    [v15 setLineBreakMode:0];

    v16 = [(UITextView *)self->_textView textContainer];
    [v16 setMaximumNumberOfLines:0];

    [(UITextView *)self->_textView setDataDetectorTypes:-1];
    [(UITextView *)self->_textView setEditable:0];
    [(UITextView *)self->_textView setSelectable:1];
    [(UITextView *)self->_textView setScrollEnabled:0];
    v17 = self->_textView;
    v18 = [(RTTUIUtteranceCell *)self utteranceTextColor];
    [(UITextView *)v17 setTextColor:v18];

    v19 = [(RTTUIUtteranceCell *)self contentView];
    [v19 addSubview:self->_textView];
  }

  v20 = [(RTTUIUtteranceCell *)self backgroundView];
  if (!v20 || (v21 = v20, -[RTTUIUtteranceCell backgroundView](self, "backgroundView"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 tag] == 1, v22, v21, v4 != v23))
  {
    v24 = +[RTTUIUtilities sharedUtilityProvider];
    v25 = [v24 bubbleFillForMe:v4];

    v26 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v25];
    [v26 setTag:v4];
    [(RTTUIUtteranceCell *)self setBackgroundView:v26];
    v27 = [MEMORY[0x277D75348] clearColor];
    [(RTTUIUtteranceCell *)self setBackgroundColor:v27];
  }

  IsRTTNotificationContentExtension = Soft_AXProcessIsRTTNotificationContentExtension();
  if (v6 && (IsRTTNotificationContentExtension & 1) == 0)
  {
    v29 = MEMORY[0x277CBEB38];
    v30 = [(UITextView *)self->_textView linkTextAttributes];
    v31 = [v29 dictionaryWithDictionary:v30];

    v32 = [MEMORY[0x277D75348] whiteColor];
    [v31 setValue:v32 forKey:*MEMORY[0x277D740C0]];

    [v31 setValue:&unk_2873FB8D8 forKey:*MEMORY[0x277D741F0]];
    [(UITextView *)self->_textView setLinkTextAttributes:v31];
  }

  v33 = self->_textView;
  v34 = +[RTTUIUtilities sharedUtilityProvider];
  [v34 textInsetForMe:v4];
  [(UITextView *)v33 setTextContainerInset:?];

  v35 = [(RTTUIUtteranceCell *)self utterance];
  v36 = [v35 text];

  v37 = [(RTTUIUtteranceCell *)self utterance];
  v38 = [v37 text];
  v39 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v40 = [v38 stringByTrimmingCharactersInSet:v39];
  v41 = [v40 length];

  if (!v41)
  {
    v49 = &stru_2873F89E0;
    goto LABEL_13;
  }

  v42 = [(RTTUIUtteranceCell *)self utterance];
  v43 = [v42 hasTranslation];

  if (v43)
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = ttyLocString();
    v46 = [(RTTUIUtteranceCell *)self utterance];
    v47 = [v46 translatedText];
    v48 = [v44 stringWithFormat:v45, v47];

    v49 = [v36 stringByAppendingFormat:@"\n%@", v48];

    v36 = v48;
LABEL_13:

    v36 = v49;
  }

  [(UITextView *)self->_textView setText:v36];
  [(RTTUIUtteranceCell *)self adjustTextViewSize];
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  [(RTTUIUtteranceCell *)self adjustTextViewSize];
  v5 = [(RTTUIUtteranceCell *)self utterance];
  v6 = [v4 text];

  [v5 updateText:v6];
  v7 = [(RTTUIUtteranceCell *)self delegate];

  if (v7)
  {
    v8 = [(RTTUIUtteranceCell *)self delegate];
    [v8 utteranceCellDidUpdateContent:self];
  }
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x277CBDA58];
  v4 = [(RTTUIUtteranceCell *)self utterance];
  v5 = [v4 contactPath];
  v6 = [v3 contactForPhoneNumber:v5];

  if ([v6 isKeyAvailable:@"givenName"])
  {
    v7 = [v6 givenName];
  }

  else
  {
    v7 = &stru_2873F89E0;
  }

  if (!-[__CFString length](v7, "length") && [v6 isKeyAvailable:@"emailAddresses"])
  {
    v8 = [v6 emailAddresses];
    v9 = [v8 firstObject];
    v10 = [v9 label];

    v7 = v10;
  }

  if (![(__CFString *)v7 length])
  {
    if ([v6 ttyIsMe])
    {
      v11 = ttyLocString();
    }

    else
    {
      v12 = [(RTTUIUtteranceCell *)self utterance];
      v11 = [(__CFString *)v12 contactPath];

      v7 = v12;
    }

    v7 = v11;
  }

  if (![(__CFString *)v7 length])
  {
    v13 = ttyLocString();

    v7 = v13;
  }

  return v7;
}

- (id)accessibilityValue
{
  v2 = [(RTTUIUtteranceCell *)self utterance];
  v3 = [v2 text];

  return v3;
}

- (void)_accessibilityHandleATFocused:(BOOL)a3 assistiveTech:(id)a4
{
  v5.receiver = self;
  v5.super_class = RTTUIUtteranceCell;
  [(RTTUIUtteranceCell *)&v5 _accessibilityHandleATFocused:a3 assistiveTech:a4];
  [(RTTUIUtteranceCell *)self _accessibilitySetIsUnread:0];
}

- (BOOL)_accessibilityRealtimeCompleted
{
  v2 = [(RTTUIUtteranceCell *)self utterance];
  v3 = [v2 isComplete];

  return v3;
}

- (RTTUIUtteranceCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end