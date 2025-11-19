@interface SCKPMessageCardSectionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SCKPMessageCardSectionView)initWithMessageCardSection:(id)a3 delegate:(id)a4;
- (void)_sendButtonPressed:(id)a3;
- (void)audioMessagePlayButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)setMessageContents:(id)a3;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)userDidTapAttachmentView:(id)a3;
@end

@implementation SCKPMessageCardSectionView

- (SCKPMessageCardSectionView)initWithMessageCardSection:(id)a3 delegate:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v6 = a3;
  obj = a4;
  v72.receiver = self;
  v72.super_class = SCKPMessageCardSectionView;
  v7 = [(SCKPMessageCardSectionView *)&v72 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, obj);
    v9 = [v6 messageStatus];
    v8->_messageStatus = v9;
    if (v9 == 2 && ([v6 audioMessageURL], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
    {
      v73 = 0;
      v74 = &v73;
      v75 = 0x2050000000;
      v56 = getCKTextBalloonViewClass_softClass;
      v76 = getCKTextBalloonViewClass_softClass;
      if (!getCKTextBalloonViewClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCKTextBalloonViewClass_block_invoke;
        v82 = &unk_279C60140;
        v83 = &v73;
        __getCKTextBalloonViewClass_block_invoke(buf);
        v56 = v74[3];
      }

      v57 = v56;
      _Block_object_dispose(&v73, 8);
      v58 = [v56 alloc];
      v59 = [v58 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      sentBalloonView = v8->_sentBalloonView;
      v8->_sentBalloonView = v59;

      [(CKTextBalloonView *)v8->_sentBalloonView setCanUseOpaqueMask:0];
      [(CKTextBalloonView *)v8->_sentBalloonView setOrientation:1];
      v61 = v8->_sentBalloonView;
      v62 = objc_alloc(MEMORY[0x277CCA898]);
      v63 = [v6 messageText];
      v64 = v63;
      if (v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = &stru_287A0DB58;
      }

      v79[0] = *MEMORY[0x277D740A8];
      v66 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
      v80[0] = v66;
      v79[1] = *MEMORY[0x277D740C0];
      v67 = [MEMORY[0x277D75348] whiteColor];
      v80[1] = v67;
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
      v69 = [v62 initWithString:v65 attributes:v68];
      [(CKTextBalloonView *)v61 setAttributedText:v69];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277D75C40]);
      textView = v8->_textView;
      v8->_textView = v12;

      v14 = [(UITextView *)v8->_textView layer];
      [v14 setCornerRadius:8.0];

      v15 = v8->_textView;
      v70 = *MEMORY[0x277D76918];
      v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:?];
      [(UITextView *)v15 setFont:v16];

      v17 = v8->_textView;
      v18 = [v6 messageText];
      [(UITextView *)v17 setText:v18];

      v19 = v8->_textView;
      v20 = [MEMORY[0x277D75348] clearColor];
      [(UITextView *)v19 setBackgroundColor:v20];

      [(UITextView *)v8->_textView setTextContainerInset:8.0, 4.0, 8.0, 4.0];
      [(UITextView *)v8->_textView setDelegate:v8];
    }

    v21 = [v6 audioMessageURL];

    if (v21)
    {
      v22 = [SCKPAudioMessageView alloc];
      v23 = [v6 audioMessageURL];
      v24 = [(SCKPAudioMessageView *)v22 initWithAudioMessageURL:v23 delegate:v8];
      audioMessageView = v8->_audioMessageView;
      v8->_audioMessageView = v24;

      [(SCKPMessageCardSectionView *)v8 addSubview:v8->_audioMessageView];
      [(UITextView *)v8->_textView setHidden:1];
    }

    else if (v8->_messageStatus != 2)
    {
      v26 = MEMORY[0x277D75D00];
      v27 = [MEMORY[0x277D75210] effectWithStyle:18];
      v28 = [v26 effectForBlurEffect:v27 style:6];

      v29 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v28];
      messageBackgroundView = v8->_messageBackgroundView;
      v8->_messageBackgroundView = v29;

      v31 = [(UIVisualEffectView *)v8->_messageBackgroundView contentView];
      v32 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.8];
      [v31 setBackgroundColor:v32];

      v33 = [(UIVisualEffectView *)v8->_messageBackgroundView contentView];
      v34 = [v33 layer];
      [v34 setCornerRadius:8.0];

      [(SCKPMessageCardSectionView *)v8 addSubview:v8->_messageBackgroundView];
    }

    if (!((v8->_messageStatus == 2) | _os_feature_enabled_impl() & 1))
    {
      v35 = objc_alloc_init(MEMORY[0x277D75220]);
      sendButton = v8->_sendButton;
      v8->_sendButton = v35;

      v37 = v8->_sendButton;
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 assistantUILocalizedStringForKey:@"SCKP_MESSAGE_SEND" table:0];
      [(UIButton *)v37 setTitle:v39 forState:0];

      v40 = v8->_sendButton;
      v41 = [MEMORY[0x277D75348] colorWithRed:0.176470588 green:0.490196078 blue:0.964705882 alpha:1.0];
      [(UIButton *)v40 setTitleColor:v41 forState:0];

      v42 = [(UIButton *)v8->_sendButton titleLabel];
      v43 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
      [v42 setFont:v43];

      v44 = [(UIButton *)v8->_sendButton titleLabel];
      [v44 setAdjustsFontSizeToFitWidth:1];

      [(UIButton *)v8->_sendButton addTarget:v8 action:sel__sendButtonPressed_ forControlEvents:64];
      [(SCKPMessageCardSectionView *)v8 addSubview:v8->_sendButton];
    }

    [(SCKPMessageCardSectionView *)v8 addSubview:v8->_sentBalloonView];
    [(SCKPMessageCardSectionView *)v8 addSubview:v8->_textView];
    -[CKTextBalloonView setColor:](v8->_sentBalloonView, "setColor:", [v6 messageServiceType] == 1);
    [(CKTextBalloonView *)v8->_sentBalloonView prepareForDisplayIfNeeded];
    v45 = [v6 messageAttachment];
    if (v45)
    {
      v46 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[SCKPMessageCardSectionView initWithMessageCardSection:delegate:]";
        *&buf[12] = 2112;
        *&buf[14] = v45;
        _os_log_impl(&dword_26950D000, v46, OS_LOG_TYPE_DEFAULT, "%s #messages: Attempting to build attachment view with attachment:%@", buf, 0x16u);
      }

      v47 = [[SCKPMessageCardSectionAttachmentView alloc] initWithAttachment:v45];
      attachmentView = v8->_attachmentView;
      v8->_attachmentView = v47;

      [(SCKPMessageCardSectionAttachmentView *)v8->_attachmentView setDelegate:v8];
      if (v8->_messageStatus == 2)
      {
        [(SCKPMessageCardSectionAttachmentView *)v8->_attachmentView setAlignmentStyle:1];
      }

      [(SCKPMessageCardSectionView *)v8 addSubview:v8->_attachmentView];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v50 = [v49 assistantUILocalizedStringForKey:@"SCKP_ATTACHMENT_PLACEHOLDER_TEXT" table:0];

      v77 = *MEMORY[0x277D740A8];
      v51 = [MEMORY[0x277D74300] preferredFontForTextStyle:v70];
      v78 = v51;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];

      v53 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v50 attributes:v52];
      [(UITextView *)v8->_textView setAttributedPlaceholder:v53];
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = SCKPMessageCardSectionView;
  [(SCKPMessageCardSectionView *)&v33 layoutSubviews];
  [(SCKPMessageCardSectionView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v4;
  attachmentView = self->_attachmentView;
  if (attachmentView)
  {
    [(SCKPMessageCardSectionAttachmentView *)attachmentView sizeThatFits:v3 + -24.0, v4];
    v13 = v12;
    v14 = 12.0;
    v16 = v15 + 12.0;
    if (self->_messageStatus == 2)
    {
      v14 = v9 + -12.0 - v13;
    }

    [(SCKPMessageCardSectionAttachmentView *)self->_attachmentView setFrame:v14, 12.0];
  }

  else
  {
    v16 = 0.0;
  }

  if (self->_messageStatus == 2)
  {
    v17 = v6 + 12.0;
    v18 = v9 + -24.0;
    v19 = v10 - (v16 + 12.0 + 12.0);
    v32 = v8 + v16 + 12.0;
    [(SCKPAudioMessageView *)self->_audioMessageView setFrame:v6 + 12.0];
    v20 = *MEMORY[0x277CBF3A0];
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v22 = *(MEMORY[0x277CBF3A0] + 24);
    [(UIVisualEffectView *)self->_messageBackgroundView setFrame:*MEMORY[0x277CBF3A0], v21, v23, v22];
    p_sentBalloonView = &self->_sentBalloonView;
    [(CKTextBalloonView *)self->_sentBalloonView sizeThatFits:0 textAlignmentInsets:v18, v19];
    v26 = v25;
    v27 = [(CKTextBalloonView *)self->_sentBalloonView attributedText];
    v28 = [v27 length];

    if (v28)
    {
      v23 = v26 + 4.0;
      v20 = v17 + v18 - (v26 + 4.0);
      v21 = v32;
      v22 = v19;
    }
  }

  else
  {
    v22 = v10 - v16 + -24.0;
    sendButton = self->_sendButton;
    if (sendButton)
    {
      [(UIButton *)sendButton sizeThatFits:v9, v10];
      sendButton = self->_sendButton;
    }

    else
    {
      v30 = *MEMORY[0x277CBF3A8];
    }

    if (v30 >= v9 * 0.5)
    {
      v31 = v9 * 0.5;
    }

    else
    {
      v31 = v30;
    }

    v21 = v8 + 12.0 + v16;
    [(UIButton *)sendButton setFrame:v6 + v9 - (v31 + 12.0), v21, v31, v22];
    v23 = v9 - (v31 + 36.0);
    v20 = v6 + 12.0;
    [(UITextView *)self->_textView setFrame:v20, v21, v23, v22];
    [(SCKPAudioMessageView *)self->_audioMessageView setFrame:v20, v21, v23, v22];
    p_sentBalloonView = &self->_messageBackgroundView;
  }

  [*p_sentBalloonView setFrame:{v20, v21, v23, v22}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIButton *)self->_sendButton sizeThatFits:?];
  if (v6 >= width * 0.5)
  {
    v6 = width * 0.5;
  }

  v7 = v6 + 36.0;
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  audioMessageView = self->_audioMessageView;
  if (audioMessageView || (audioMessageView = self->_textView) != 0 || (audioMessageView = self->_sentBalloonView, v11 = *(MEMORY[0x277CBF3A8] + 8), v12 = *MEMORY[0x277CBF3A8], audioMessageView))
  {
    [audioMessageView sizeThatFits:{width - v7, height + -24.0}];
    v12 = v13;
    v11 = v14;
  }

  sentBalloonView = self->_sentBalloonView;
  v16 = 24.0;
  if (sentBalloonView)
  {
    if (!self->_sendButton)
    {
      v17 = [(CKTextBalloonView *)sentBalloonView attributedText];
      v18 = [v17 length];

      v16 = 24.0;
      if (!v18)
      {
        v11 = v9;
        v16 = 12.0;
        v12 = v8;
      }
    }
  }

  v19 = v11 + v16;
  attachmentView = self->_attachmentView;
  if (attachmentView)
  {
    [(SCKPMessageCardSectionAttachmentView *)attachmentView sizeThatFits:width, height];
    v19 = v19 + v21 + 12.0;
  }

  v22 = v7 + v12;
  v23 = v19;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)textViewDidBeginEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCardSectionViewBeganEditing:self];
}

- (void)textViewDidEndEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCardSectionViewFinishedEditing:self];
}

- (void)_sendButtonPressed:(id)a3
{
  [(UIButton *)self->_sendButton setEnabled:0];
  [(UITextView *)self->_textView resignFirstResponder];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCardSectionSendButtonTapped:self];
}

- (void)audioMessagePlayButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCardSectionPlayButtonTapped:self];
}

- (void)setMessageContents:(id)a3
{
  [(UITextView *)self->_textView setText:a3];
  v4 = [(UITextView *)self->_textView text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(UITextView *)self->_textView text];
    v7 = [v6 length] - 1;

    textView = self->_textView;

    [(UITextView *)textView scrollRangeToVisible:v7, 1];
  }
}

- (void)userDidTapAttachmentView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageCardSectionAttachmentTapped:self];
}

@end