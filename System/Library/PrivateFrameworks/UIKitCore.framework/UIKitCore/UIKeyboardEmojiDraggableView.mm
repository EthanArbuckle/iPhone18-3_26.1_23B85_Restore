@interface UIKeyboardEmojiDraggableView
- (CGSize)intrinsicContentSize;
- (UIKeyboardEmojiDraggableView)initWithFrame:(CGRect)frame;
- (UIKeyboardEmojiDraggableViewDelegate)delegate;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)createLabel;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)newLiftContainerView;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)addSilhouetteFiltersToView:(id)view;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)generateEmoji:(id)emoji withCompletion:(id)completion;
- (void)layoutSubviews;
- (void)registerPlainText:(id)text toItemProvider:(id)provider;
- (void)reset;
- (void)sendPeelAndStickAnalytics:(id)analytics;
- (void)setAttributedText:(id)text;
- (void)setEmojiPopoverBackgroundHitTestingEnabled:(BOOL)enabled;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)updateDragInteraction;
- (void)willCancelVariantsWithTouch:(id)touch;
@end

@implementation UIKeyboardEmojiDraggableView

- (UIKeyboardEmojiDraggableView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = UIKeyboardEmojiDraggableView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIKeyboardEmojiDraggableView *)v3 updateLiftScale];
    v5 = [off_1E70ECC18 systemFontOfSize:32.0];
    font = v4->_font;
    v4->_font = v5;

    createLabel = [(UIKeyboardEmojiDraggableView *)v4 createLabel];
    fixedLabel = v4->_fixedLabel;
    v4->_fixedLabel = createLabel;

    [(UIView *)v4 addSubview:v4->_fixedLabel];
    [(UIView *)v4 setUserInteractionEnabled:1];
    [(UIKeyboardEmojiDraggableView *)v4 updateDragInteraction];
  }

  return v4;
}

- (id)createLabel
{
  v3 = [UILabel alloc];
  v4 = [(UILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UILabel *)v4 setFont:self->_font];
  [(UIView *)v4 setOpaque:0];
  [(UILabel *)v4 setTextAlignment:1];
  [(UILabel *)v4 setText:self->_text];
  [(UIView *)self bounds];
  [(UILabel *)v4 setFrame:?];

  return v4;
}

- (id)newLiftContainerView
{
  [(UIView *)self bounds];
  liftScale = self->_liftScale;
  v5 = v4 * liftScale;
  v7 = v6 * liftScale;
  v8 = v4 * liftScale * 0.5;
  v9 = v6 * liftScale * 0.5;
  liftScale = [[UIView alloc] initWithFrame:0.0, 0.0, v4 * liftScale, v6 * liftScale];
  v11 = [[UIView alloc] initWithFrame:0.0, 0.0, v5, v7];
  [(UIView *)liftScale addSubview:v11];
  v12 = [[UIImageView alloc] initWithFrame:0.0, 0.0, v5, v7];
  upscaledImageView = self->_upscaledImageView;
  self->_upscaledImageView = v12;

  [(UIImageView *)self->_upscaledImageView setContentMode:1];
  createLabel = [(UIKeyboardEmojiDraggableView *)self createLabel];
  previewLabel = self->_previewLabel;
  self->_previewLabel = createLabel;

  font = self->_font;
  [(UIFont *)font pointSize];
  v18 = [(UIFont *)font fontWithSize:v17 * self->_liftScale];
  [(UILabel *)self->_previewLabel setFont:v18];

  [(UILabel *)self->_previewLabel setBounds:0.0, 0.0, v5, v7];
  [(UIView *)self->_previewLabel setCenter:v8, v9];
  [(UIView *)v11 addSubview:self->_previewLabel];
  text = self->_text;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __52__UIKeyboardEmojiDraggableView_newLiftContainerView__block_invoke;
  v25 = &unk_1E70F98A0;
  selfCopy = self;
  v27 = v11;
  v20 = v11;
  [(UIKeyboardEmojiDraggableView *)self generateEmoji:text withCompletion:&v22];
  [(UIKeyboardEmojiDraggableView *)self addSilhouetteFiltersToView:self->_fixedLabel, v22, v23, v24, v25, selfCopy];
  self->_lifted = 1;

  return liftScale;
}

void __52__UIKeyboardEmojiDraggableView_newLiftContainerView__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 432) setImage:a2];
  [*(a1 + 40) addSubview:*(*(a1 + 32) + 432)];
  [*(*(a1 + 32) + 424) removeFromSuperview];
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  *(v3 + 424) = 0;
}

- (void)reset
{
  layer = [(UIView *)self->_fixedLabel layer];
  [layer setFilters:0];

  [(UIView *)self->_liftContainerView removeFromSuperview];
  liftContainerView = self->_liftContainerView;
  self->_liftContainerView = 0;

  previewLabel = self->_previewLabel;
  self->_previewLabel = 0;

  upscaledImageView = self->_upscaledImageView;
  self->_upscaledImageView = 0;

  container = self->_container;
  self->_container = 0;

  self->_lifted = 0;
  self->_shouldLiftFromLastTouchLocation = 0;
  dragEnabled = self->_dragEnabled;
  dragInteraction = self->_dragInteraction;

  [(UIDragInteraction *)dragInteraction setEnabled:dragEnabled];
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  [(UILabel *)self->_fixedLabel setFont:fontCopy];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (([(NSString *)self->_text isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_text, text);
    if (textCopy)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy];
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&self->_attributedText, v5);
    v6 = textCopy;
    if (textCopy)
    {

      v6 = textCopy;
    }

    [(UILabel *)self->_fixedLabel setText:v6];
    [(UIKeyboardEmojiDraggableView *)self reset];
  }
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  if (([(NSAttributedString *)self->_attributedText isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_attributedText, text);
    string = [textCopy string];
    text = self->_text;
    self->_text = string;

    v7 = [textCopy attributesAtIndex:0 effectiveRange:0];
    v8 = [v7 objectForKeyedSubscript:*off_1E70EC918];
    if (v8)
    {
      objc_storeStrong(&self->_font, v8);
    }

    [(UILabel *)self->_fixedLabel setAttributedText:textCopy];
    [(UIKeyboardEmojiDraggableView *)self reset];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_fixedLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKeyboardEmojiDraggableView;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UILabel *)self->_fixedLabel setFrame:?];
  [(UIKeyboardEmojiDraggableView *)self updateLiftScale];
}

- (void)addSilhouetteFiltersToView:(id)view
{
  v29[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v4 = +[UIColor tertiarySystemFillColor];
  [v4 getRed:&v26 green:&v27 blue:&v28 alpha:v29];

  v5 = v26;
  v6 = v27;
  v7 = v28;
  v8 = v29[0];
  v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
  v13[0] = 0;
  v13[1] = 0;
  v14 = v5;
  v16 = 0;
  v15 = 0;
  v17 = v6;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 0;
  v22 = 0;
  v23 = v8;
  v24 = 0;
  v10 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v13];
  [v9 setValue:v10 forKey:*MEMORY[0x1E6979AC0]];

  v25 = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  layer = [viewCopy layer];

  [layer setFilters:v11];
}

- (void)updateDragInteraction
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  if ([preferencesActions BOOLForPreferenceKey:@"ShowStickers"])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = _UIApplicationIsFirstPartyStickers() ^ 1;
  }

  dragInteraction = self->_dragInteraction;
  if (self->_dragEnabled)
  {
    if (!((dragInteraction != 0) | v5 & 1))
    {
      v7 = [[UIDragInteraction alloc] initWithDelegate:self];
      v8 = self->_dragInteraction;
      self->_dragInteraction = v7;

      v9 = self->_dragInteraction;

      [(UIView *)self addInteraction:v9];
    }
  }

  else if (dragInteraction)
  {
    [(UIView *)self removeInteraction:?];
    v10 = self->_dragInteraction;
    self->_dragInteraction = 0;
  }
}

- (void)setEmojiPopoverBackgroundHitTestingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[UIKeyboardImpl activeInstance];
  emojiPopoverController = [v4 emojiPopoverController];
  popoverPresentationController = [emojiPopoverController popoverPresentationController];

  [popoverPresentationController _setOverrideAllowsHitTestingOnBackgroundViews:enabledCopy];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  sharedInstance = [getTUIEmojiUpscalerClass() sharedInstance];
  [(UIKeyboardEmojiDraggableView *)self setEmojiPopoverBackgroundHitTestingEnabled:0];
  if (_UIApplicationIsFirstPartyStickers())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardWillBeginLiftEmoji" object:self userInfo:0];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  [(UIKeyboardEmojiDraggableView *)self setEmojiPopoverBackgroundHitTestingEnabled:1, session];
  [(UIKeyboardEmojiDraggableView *)self reset];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 dragDidEnd:self withOperation:operation];
  }

  if ((operation & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    initForEmojiKeyboardUsage = [[_UIStickerUsageEvent alloc] initForEmojiKeyboardUsage];
    [initForEmojiKeyboardUsage setUsageType:1];
    [initForEmojiKeyboardUsage send];
  }

  if (_UIApplicationIsFirstPartyStickers())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardWillEndLiftEmoji" object:self userInfo:0];
  }
}

- (void)dragInteraction:(id)interaction sessionDidTransferItems:(id)items
{
  v5 = [_UISignalAnalytics getIAPayloadValueGenmojiUsageTypeStick:interaction];
  [(UIKeyboardEmojiDraggableView *)self sendPeelAndStickAnalytics:v5];
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v6 = [_UISignalAnalytics getIAPayloadValueGenmojiUsageTypePeel:interaction];
  [(UIKeyboardEmojiDraggableView *)self sendPeelAndStickAnalytics:v6];
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageTypePeelCancel];
  [(UIKeyboardEmojiDraggableView *)self sendPeelAndStickAnalytics:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__UIKeyboardEmojiDraggableView_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v9[3] = &unk_1E70F5DB8;
  v9[4] = self;
  [animatorCopy addCompletion:v9];

  if (_UIApplicationIsFirstPartyStickers())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardWillCancelLiftEmoji" object:self userInfo:0];
  }
}

- (void)generateEmoji:(id)emoji withCompletion:(id)completion
{
  completionCopy = completion;
  emojiCopy = emoji;
  sharedInstance = [getTUIEmojiUpscalerClass() sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__UIKeyboardEmojiDraggableView_generateEmoji_withCompletion___block_invoke;
  v9[3] = &unk_1E70F98C8;
  v10 = completionCopy;
  v8 = completionCopy;
  [sharedInstance generateEmoji:emojiCopy completion:v9];
}

void __61__UIKeyboardEmojiDraggableView_generateEmoji_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__UIKeyboardEmojiDraggableView_generateEmoji_withCompletion___block_invoke_2;
  v13[3] = &unk_1E70F5F08;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __61__UIKeyboardEmojiDraggableView_generateEmoji_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = *(a1 + 48);
    }

    v4 = v3;
    (*(*(a1 + 56) + 16))();
  }
}

- (void)registerPlainText:(id)text toItemProvider:(id)provider
{
  textCopy = text;
  v6 = *MEMORY[0x1E6982F40];
  providerCopy = provider;
  identifier = [v6 identifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__UIKeyboardEmojiDraggableView_registerPlainText_toItemProvider___block_invoke;
  v10[3] = &unk_1E70F6AD0;
  v11 = textCopy;
  v9 = textCopy;
  [providerCopy registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v10];
}

uint64_t __65__UIKeyboardEmojiDraggableView_registerPlainText_toItemProvider___block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataUsingEncoding:4];
  (a2)[2](v4, v5, 0);

  return 0;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v6 = self->_text;
  if (dyld_program_sdk_at_least() && (_UIApplicationIsFirstPartyStickers() & 1) == 0)
  {
    [(UIKeyboardEmojiDraggableView *)self registerPlainText:v6 toItemProvider:v5];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = objc_opt_class();
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__UIKeyboardEmojiDraggableView_dragInteraction_itemsForBeginningSession___block_invoke;
  v16 = &unk_1E70F9918;
  selfCopy = self;
  v9 = v6;
  v18 = v9;
  [v5 registerObjectOfClass:v8 visibility:0 loadHandler:&v13];
  if (v7)
  {
    [(UIKeyboardEmojiDraggableView *)self registerPlainText:v9 toItemProvider:v5, v13, v14, v15, v16, selfCopy];
  }

  [v5 registerDataRepresentationForTypeIdentifier:@"com.apple.sticker" visibility:0 loadHandler:{&__block_literal_global_88, v13, v14, v15, v16, selfCopy}];
  v10 = [[UIDragItem alloc] initWithItemProvider:v5];
  v19[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v11;
}

uint64_t __73__UIKeyboardEmojiDraggableView_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__UIKeyboardEmojiDraggableView_dragInteraction_itemsForBeginningSession___block_invoke_2;
  v8[3] = &unk_1E70F98F0;
  v8[4] = v5;
  v9 = v3;
  v6 = v3;
  [v5 generateEmoji:v4 withCompletion:v8];

  return 0;
}

void __73__UIKeyboardEmojiDraggableView_dragInteraction_itemsForBeginningSession___block_invoke_2(uint64_t a1, UIImage *image, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v9 = UIImagePNGRepresentation(image);
    v5 = [UIImage alloc];
    v6 = [*(a1 + 32) window];
    v7 = [v6 screen];
    [v7 scale];
    v8 = [(UIImage *)v5 initWithData:v9 scale:?];

    (*(*(a1 + 40) + 16))();
  }
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  interactionCopy = interaction;
  itemCopy = item;
  sessionCopy = session;
  newLiftContainerView = [(UIKeyboardEmojiDraggableView *)self newLiftContainerView];
  liftContainerView = self->_liftContainerView;
  self->_liftContainerView = newLiftContainerView;

  v13 = objc_alloc_init(UIDragPreviewParameters);
  v14 = objc_alloc_init(UIBezierPath);
  [(UIPreviewParameters *)v13 setShadowPath:v14];

  v15 = +[UIColor clearColor];
  [(UIPreviewParameters *)v13 setBackgroundColor:v15];

  window = [(UIView *)self window];
  [(UIView *)self center];
  v18 = v17;
  v20 = v19;
  superview = [(UIView *)self superview];
  [window convertPoint:superview fromView:{v18, v20}];
  x = v22;
  y = v24;

  if (self->_shouldLiftFromLastTouchLocation)
  {
    x = self->_lastTouchLocation.x;
    y = self->_lastTouchLocation.y;
  }

  [(UIView *)self bounds];
  memset(&v43, 0, sizeof(v43));
  v27 = 60.0 / fmax(v26, 1.0);
  CGAffineTransformMakeScale(&v43, v27, v27);
  [(UIView *)self->_liftContainerView setCenter:x, y];
  v28 = [UIDragPreviewTarget alloc];
  window2 = [(UIView *)self window];
  v42 = v43;
  v30 = [(UIPreviewTarget *)v28 initWithContainer:window2 center:&v42 transform:x, y];

  v31 = [[UITargetedDragPreview alloc] initWithView:self->_liftContainerView parameters:v13 target:v30];
  sharedInstance = [getTUIEmojiUpscalerClass() sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v41 = sessionCopy;
    v33 = itemCopy;
    v34 = interactionCopy;
    v35 = [sharedInstance imageFromEmoji:self->_text];
    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v36 = qword_1ED4991E0;
    v47 = qword_1ED4991E0;
    if (!qword_1ED4991E0)
    {
      *&v42.a = MEMORY[0x1E69E9820];
      *&v42.b = 3221225472;
      *&v42.c = __get_MSStickerDragPreviewContainerViewClass_block_invoke;
      *&v42.d = &unk_1E70F2F20;
      *&v42.tx = &v44;
      __get_MSStickerDragPreviewContainerViewClass_block_invoke(&v42);
      v36 = v45[3];
    }

    v37 = v36;
    _Block_object_dispose(&v44, 8);
    if (v36 && [v36 instancesRespondToSelector:sel_initWithIsDropAnimation_])
    {
      v38 = [[v36 alloc] initWithIsDropAnimation:0];
      if (objc_opt_respondsToSelector())
      {
        [v38 setImage:v35];
        [v38 setUseEmojiKeyboardMeshTransform:1];
        [(UITargetedDragPreview *)v31 _setPreviewContainer:v38];
        objc_storeStrong(&self->_container, v38);
      }

      if (objc_opt_respondsToSelector())
      {
        shadowPropertiesForDrag = [v36 shadowPropertiesForDrag];
        [(UIDragPreviewParameters *)v13 _setShadowProperties:shadowPropertiesForDrag];
      }
    }

    interactionCopy = v34;
    itemCopy = v33;
    sessionCopy = v41;
  }

  return v31;
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  v4 = objc_opt_new();
  [v4 set_rotatable:1];
  [v4 set_resizable:1];
  [v4 set_maximumResizableSize:{300.0, 300.0}];
  [v4 set_wantsElasticEffects:1];
  [v4 set_avoidsKeyboardSuppression:1];

  return v4;
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  v4 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageTypePeelCancelNoDrag];
  [(UIKeyboardEmojiDraggableView *)self sendPeelAndStickAnalytics:v4];

  container = self->_container;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__UIKeyboardEmojiDraggableView__dragInteractionDidCancelLiftWithoutDragging___block_invoke;
  v7[3] = &unk_1E70F3590;
  v7[4] = self;
  [(_MSStickerDragPreviewContainerView *)container _animateLiftCancellationAlongsideAnimator:0 completion:v7];
  if (_UIApplicationIsFirstPartyStickers())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardWillCancelLiftEmoji" object:self userInfo:0];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v23[3] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = UIKeyboardEmojiDraggableView;
  [(UIResponder *)&v21 touchesBegan:began withEvent:event];
  if (_UIApplicationIsFirstPartyStickers())
  {
    superview = [(UIView *)self superview];
    [(UIView *)self frame];
    [superview convertRect:0 toView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    text = [(UIKeyboardEmojiDraggableView *)self text];
    window = [(UIView *)self window];
    if (!window)
    {
      v16 = +[UIKeyboard activeKeyboard];
      window = [v16 window];
    }

    if (text)
    {
      if (window)
      {
        v23[0] = text;
        v22[0] = @"emoji";
        v22[1] = @"frame";
        v20[0] = v7;
        v20[1] = v9;
        v20[2] = v11;
        v20[3] = v13;
        v17 = [MEMORY[0x1E696B098] valueWithBytes:v20 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v22[2] = @"window";
        v23[1] = v17;
        v23[2] = window;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"UIKeyboardBeganTouchEmoji" object:self userInfo:v18];
      }
    }
  }
}

- (void)willCancelVariantsWithTouch:(id)touch
{
  touchCopy = touch;
  if (![(UIKeyboardEmojiDraggableView *)self dragEnabled])
  {
    [(UIKeyboardEmojiDraggableView *)self setDragEnabled:1];
    self->_dragEnabled = 0;
    self->_shouldLiftFromLastTouchLocation = 1;
    window = [(UIView *)self window];
    [touchCopy locationInView:window];
    self->_lastTouchLocation.x = v6;
    self->_lastTouchLocation.y = v7;

    dragInteraction = self->_dragInteraction;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__UIKeyboardEmojiDraggableView_willCancelVariantsWithTouch___block_invoke;
    v9[3] = &unk_1E70F5AC0;
    v9[4] = self;
    [(UIDragInteraction *)dragInteraction _immediatelyBeginDragWithTouch:touchCopy completion:v9];
  }
}

- (void)sendPeelAndStickAnalytics:(id)analytics
{
  v13[2] = *MEMORY[0x1E69E9840];
  analyticsCopy = analytics;
  v5 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
  v12[0] = v5;
  v6 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeEmoji];
  v13[0] = v6;
  v7 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageType];
  v12[1] = v7;
  v13[1] = analyticsCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
    [v10 triggerUsageSignal:self payload:v11];
  }

  else
  {
    v10 = +[_UISignalAnalytics getIASignalGenmojiUsage];
    [_UISignalAnalytics sendGenmojiSignal:v10 payload:v8];
  }
}

- (UIKeyboardEmojiDraggableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end