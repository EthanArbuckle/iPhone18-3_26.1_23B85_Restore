@interface RTTUIUtteranceCell
+ (double)heightForUtterance:(id)utterance andWidth:(double)width;
- (BOOL)_accessibilityRealtimeCompleted;
- (RTTUIUtteranceCellDelegate)delegate;
- (_NSRange)selectedTextRange;
- (double)preferredHeightForWidth:(double)width;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)utteranceTextColor;
- (void)_accessibilityHandleATFocused:(BOOL)focused assistiveTech:(id)tech;
- (void)adjustTextViewSize;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSendProgressIndex:(unint64_t)index;
- (void)textViewDidChange:(id)change;
- (void)updateUtterance:(id)utterance postNotifications:(BOOL)notifications;
@end

@implementation RTTUIUtteranceCell

+ (double)heightForUtterance:(id)utterance andWidth:(double)width
{
  utteranceCopy = utterance;
  if (heightForUtterance_andWidth__onceToken != -1)
  {
    +[RTTUIUtteranceCell heightForUtterance:andWidth:];
  }

  v6 = utteranceCopy;
  text = [v6 text];
  v8 = [text length];

  v9 = v6;
  if (!v8)
  {
    v10 = MEMORY[0x277D440E8];
    contactPath = [v6 contactPath];
    v12 = ttyLocString();
    v9 = [v10 utteranceWithContactPath:contactPath andText:v12];
  }

  [heightForUtterance_andWidth__SizeCell updateUtterance:v9 postNotifications:0];
  [heightForUtterance_andWidth__SizeCell preferredHeightForWidth:width];
  v14 = v13;

  return v14;
}

uint64_t __50__RTTUIUtteranceCell_heightForUtterance_andWidth___block_invoke()
{
  heightForUtterance_andWidth__SizeCell = objc_alloc_init(RTTUIUtteranceCell);

  return MEMORY[0x2821F96F8]();
}

- (void)updateUtterance:(id)utterance postNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  utteranceCopy = utterance;
  [(RTTUIUtteranceCell *)self setUtterance:utteranceCopy];
  [(RTTUIUtteranceCell *)self updateLayout];
  if (notificationsCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [(RTTUIUtteranceCell *)self _accessibilityIsRealtimeElement])
    {
      [(RTTUIUtteranceCell *)self _accessibilitySetIsUnread:1];
      UIAccessibilityPostNotification(0x421u, 0);
    }

    selfCopy = self;
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

    v8(selfCopy);

    UIAccessibilityPostNotification(0x3EDu, 0);
  }
}

- (void)setSendProgressIndex:(unint64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v18[0] = 67109120;
    v18[1] = index;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "Set progress index: %d", v18, 8u);
  }

  v6 = objc_alloc(MEMORY[0x277CCAB48]);
  attributedText = [(UITextView *)self->_textView attributedText];
  v8 = [v6 initWithAttributedString:attributedText];

  [v8 beginEditing];
  delegate = [(RTTUIUtteranceCell *)self delegate];
  currentCall = [delegate currentCall];
  LODWORD(attributedText) = [RTTUIUtilities ttyShouldBeRealtimeForCall:currentCall];

  if (attributedText)
  {
    v11 = [v8 length];
  }

  else
  {
    v11 = index + 1;
  }

  v12 = [v8 length];
  v13 = *MEMORY[0x277D740C0];
  utteranceTextColor = [(RTTUIUtteranceCell *)self utteranceTextColor];
  utteranceTextColor2 = utteranceTextColor;
  if (v11 >= v12)
  {
    [v8 addAttribute:v13 value:utteranceTextColor range:{0, objc_msgSend(v8, "length")}];
  }

  else
  {
    v16 = [utteranceTextColor colorWithAlphaComponent:0.5];
    [v8 addAttribute:v13 value:v16 range:{v11, objc_msgSend(v8, "length") - v11}];

    utteranceTextColor2 = [(RTTUIUtteranceCell *)self utteranceTextColor];
    v17 = [utteranceTextColor2 colorWithAlphaComponent:1.0];
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
  delegate = [(RTTUIUtteranceCell *)self delegate];
  isCurrentCallConnected = [delegate isCurrentCallConnected];

  if (!isCurrentCallConnected || IsRTTNotificationContentExtension)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] whiteColor];
  }

  return labelColor;
}

- (_NSRange)selectedTextRange
{
  selectedRange = [(UITextView *)self->_textView selectedRange];
  result.length = v3;
  result.location = selectedRange;
  return result;
}

- (double)preferredHeightForWidth:(double)width
{
  v5 = +[RTTUIUtilities sharedUtilityProvider];
  [v5 bubbleInsetForMe:1];
  v7 = v6;
  v9 = v8;

  [(UITextView *)self->_textView sizeThatFits:width, 1.79769313e308];
  return v10 - v7 - v9;
}

- (void)adjustTextViewSize
{
  utterance = [(RTTUIUtteranceCell *)self utterance];
  isMe = [utterance isMe];

  [(RTTUIUtteranceCell *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x277CBF348];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  utterance2 = [(RTTUIUtteranceCell *)self utterance];
  isTranscription = [utterance2 isTranscription];

  if (isTranscription)
  {
    fontDescriptor = [v14 fontDescriptor];
    v18 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

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
  v29 = [v28 textAlignmentForMe:isMe];

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
  [v31 textInsetForMe:isMe];
  v33 = v22 + v32;
  v35 = v21 + v34;
  v37 = Width - (v32 + v36);
  v39 = v24 - (v34 + v38);

  v40 = +[RTTUIUtilities sharedUtilityProvider];
  [v40 bubbleInsetForMe:isMe];
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
  utterance = [(RTTUIUtteranceCell *)self utterance];
  isMe = [utterance isMe];

  delegate = [(RTTUIUtteranceCell *)self delegate];
  isCurrentCallConnected = [delegate isCurrentCallConnected];

  if (!self->_textView)
  {
    v7 = [RTTUIStaticTextView alloc];
    textLabel = [(RTTUIUtteranceCell *)self textLabel];
    [textLabel frame];
    v9 = [(RTTUIStaticTextView *)v7 initWithFrame:0 textContainer:?];
    textView = self->_textView;
    self->_textView = v9;

    v11 = self->_textView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v11 setBackgroundColor:clearColor];

    v13 = self->_textView;
    v14 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    [(UITextView *)v13 setFont:v14];

    [(UITextView *)self->_textView setDelegate:self];
    textContainer = [(UITextView *)self->_textView textContainer];
    [textContainer setLineBreakMode:0];

    textContainer2 = [(UITextView *)self->_textView textContainer];
    [textContainer2 setMaximumNumberOfLines:0];

    [(UITextView *)self->_textView setDataDetectorTypes:-1];
    [(UITextView *)self->_textView setEditable:0];
    [(UITextView *)self->_textView setSelectable:1];
    [(UITextView *)self->_textView setScrollEnabled:0];
    v17 = self->_textView;
    utteranceTextColor = [(RTTUIUtteranceCell *)self utteranceTextColor];
    [(UITextView *)v17 setTextColor:utteranceTextColor];

    contentView = [(RTTUIUtteranceCell *)self contentView];
    [contentView addSubview:self->_textView];
  }

  backgroundView = [(RTTUIUtteranceCell *)self backgroundView];
  if (!backgroundView || (v21 = backgroundView, -[RTTUIUtteranceCell backgroundView](self, "backgroundView"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 tag] == 1, v22, v21, isMe != v23))
  {
    v24 = +[RTTUIUtilities sharedUtilityProvider];
    v25 = [v24 bubbleFillForMe:isMe];

    v26 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v25];
    [v26 setTag:isMe];
    [(RTTUIUtteranceCell *)self setBackgroundView:v26];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(RTTUIUtteranceCell *)self setBackgroundColor:clearColor2];
  }

  IsRTTNotificationContentExtension = Soft_AXProcessIsRTTNotificationContentExtension();
  if (isCurrentCallConnected && (IsRTTNotificationContentExtension & 1) == 0)
  {
    v29 = MEMORY[0x277CBEB38];
    linkTextAttributes = [(UITextView *)self->_textView linkTextAttributes];
    v31 = [v29 dictionaryWithDictionary:linkTextAttributes];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v31 setValue:whiteColor forKey:*MEMORY[0x277D740C0]];

    [v31 setValue:&unk_2873FB8D8 forKey:*MEMORY[0x277D741F0]];
    [(UITextView *)self->_textView setLinkTextAttributes:v31];
  }

  v33 = self->_textView;
  v34 = +[RTTUIUtilities sharedUtilityProvider];
  [v34 textInsetForMe:isMe];
  [(UITextView *)v33 setTextContainerInset:?];

  utterance2 = [(RTTUIUtteranceCell *)self utterance];
  text = [utterance2 text];

  utterance3 = [(RTTUIUtteranceCell *)self utterance];
  text2 = [utterance3 text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v40 = [text2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v41 = [v40 length];

  if (!v41)
  {
    v49 = &stru_2873F89E0;
    goto LABEL_13;
  }

  utterance4 = [(RTTUIUtteranceCell *)self utterance];
  hasTranslation = [utterance4 hasTranslation];

  if (hasTranslation)
  {
    v44 = MEMORY[0x277CCACA8];
    v45 = ttyLocString();
    utterance5 = [(RTTUIUtteranceCell *)self utterance];
    translatedText = [utterance5 translatedText];
    v48 = [v44 stringWithFormat:v45, translatedText];

    v49 = [text stringByAppendingFormat:@"\n%@", v48];

    text = v48;
LABEL_13:

    text = v49;
  }

  [(UITextView *)self->_textView setText:text];
  [(RTTUIUtteranceCell *)self adjustTextViewSize];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  [(RTTUIUtteranceCell *)self adjustTextViewSize];
  utterance = [(RTTUIUtteranceCell *)self utterance];
  text = [changeCopy text];

  [utterance updateText:text];
  delegate = [(RTTUIUtteranceCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(RTTUIUtteranceCell *)self delegate];
    [delegate2 utteranceCellDidUpdateContent:self];
  }
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x277CBDA58];
  utterance = [(RTTUIUtteranceCell *)self utterance];
  contactPath = [utterance contactPath];
  v6 = [v3 contactForPhoneNumber:contactPath];

  if ([v6 isKeyAvailable:@"givenName"])
  {
    givenName = [v6 givenName];
  }

  else
  {
    givenName = &stru_2873F89E0;
  }

  if (!-[__CFString length](givenName, "length") && [v6 isKeyAvailable:@"emailAddresses"])
  {
    emailAddresses = [v6 emailAddresses];
    firstObject = [emailAddresses firstObject];
    label = [firstObject label];

    givenName = label;
  }

  if (![(__CFString *)givenName length])
  {
    if ([v6 ttyIsMe])
    {
      contactPath2 = ttyLocString();
    }

    else
    {
      utterance2 = [(RTTUIUtteranceCell *)self utterance];
      contactPath2 = [(__CFString *)utterance2 contactPath];

      givenName = utterance2;
    }

    givenName = contactPath2;
  }

  if (![(__CFString *)givenName length])
  {
    v13 = ttyLocString();

    givenName = v13;
  }

  return givenName;
}

- (id)accessibilityValue
{
  utterance = [(RTTUIUtteranceCell *)self utterance];
  text = [utterance text];

  return text;
}

- (void)_accessibilityHandleATFocused:(BOOL)focused assistiveTech:(id)tech
{
  v5.receiver = self;
  v5.super_class = RTTUIUtteranceCell;
  [(RTTUIUtteranceCell *)&v5 _accessibilityHandleATFocused:focused assistiveTech:tech];
  [(RTTUIUtteranceCell *)self _accessibilitySetIsUnread:0];
}

- (BOOL)_accessibilityRealtimeCompleted
{
  utterance = [(RTTUIUtteranceCell *)self utterance];
  isComplete = [utterance isComplete];

  return isComplete;
}

- (RTTUIUtteranceCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end