@interface TUIProactiveCandidateCell
- (TUIProactiveCandidateCell)initWithCoder:(id)coder;
- (TUIProactiveCandidateCell)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setCandidate:(id)candidate;
- (void)updateSlotContentView;
@end

@implementation TUIProactiveCandidateCell

- (void)updateSlotContentView
{
  candidate = [(TUIProactiveCandidateCell *)self candidate];
  if (![candidate slotID])
  {
    slotContentView = [(TUIProactiveCandidateCell *)self slotContentView];
    layer = [slotContentView layer];
    [layer setContents:0];
    goto LABEL_14;
  }

  slotContentView = [MEMORY[0x1E6979320] objectForSlot:{objc_msgSend(candidate, "slotID")}];
  [(TUIProactiveCandidateCell *)self bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if ([candidate isStickerCandidate])
  {
    style = [(TUICandidateBaseCell *)self style];
    [style minimumCellPadding];
    v14 = v13 * 0.5;
    style2 = [(TUICandidateBaseCell *)self style];
    [style2 minimumCellPadding];
    v17 = v16 * 0.5;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v43 = CGRectInset(v42, v14, v17);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
  }

  style3 = [(TUICandidateBaseCell *)self style];
  [style3 extraCellPadding];
  v20 = y + v19 * 0.5;

  slotContentView2 = [(TUIProactiveCandidateCell *)self slotContentView];
  [slotContentView2 setFrame:{x, v20, width, height}];

  slotContentView3 = [(TUIProactiveCandidateCell *)self slotContentView];
  layer2 = [slotContentView3 layer];
  [layer2 setContents:slotContentView];

  v24 = TUIScreenScaleForView(self);
  slotContentView4 = [(TUIProactiveCandidateCell *)self slotContentView];
  layer3 = [slotContentView4 layer];
  [layer3 setContentsScale:v24];

  v27 = TUIScreenScaleForView(self);
  slotContentView5 = [(TUIProactiveCandidateCell *)self slotContentView];
  layer4 = [slotContentView5 layer];
  [layer4 setRasterizationScale:v27];

  style4 = [(TUICandidateBaseCell *)self style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_9;
  }

  style5 = [(TUICandidateBaseCell *)self style];
  proactiveCandidateContentsGravity = [style5 proactiveCandidateContentsGravity];

  if (!proactiveCandidateContentsGravity)
  {
LABEL_9:
    if ([candidate isStickerCandidate])
    {
      v38 = MEMORY[0x1E6979DE8];
    }

    else
    {
      v38 = MEMORY[0x1E6979DE0];
    }

    v39 = *v38;
    slotContentView6 = [(TUIProactiveCandidateCell *)self slotContentView];
    layer5 = [slotContentView6 layer];
    [layer5 setContentsGravity:v39];
    goto LABEL_13;
  }

  slotContentView6 = [(TUICandidateBaseCell *)self style];
  layer5 = [slotContentView6 proactiveCandidateContentsGravity];
  slotContentView7 = [(TUIProactiveCandidateCell *)self slotContentView];
  layer6 = [slotContentView7 layer];
  [layer6 setContentsGravity:layer5];

LABEL_13:
  layer = [(TUIProactiveCandidateCell *)self slotContentView];
  [layer setAutoresizingMask:18];
LABEL_14:
}

- (void)setCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidate = self->_candidate;
  if (candidate != candidateCopy)
  {
    v7 = candidateCopy;
    candidate = [candidate isEqual:candidateCopy];
    candidateCopy = v7;
    if ((candidate & 1) == 0)
    {
      objc_storeStrong(&self->_candidate, candidate);
      candidate = [(TUIProactiveCandidateCell *)self updateSlotContentView];
      candidateCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](candidate, candidateCopy);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIProactiveCandidateCell;
  [(TUICandidateBaseCell *)&v3 layoutSubviews];
  [(TUIProactiveCandidateCell *)self updateSlotContentView];
}

- (TUIProactiveCandidateCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUIProactiveCandidateCell;
  v3 = [(TUIProactiveCandidateCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUIProactiveCandidateCell *)v3 commonInit];
  }

  return v4;
}

- (TUIProactiveCandidateCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUIProactiveCandidateCell;
  v3 = [(TUICandidateBaseCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUIProactiveCandidateCell *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(TUIProactiveCandidateCell *)self setSlotContentView:v3];

  contentView = [(TUIProactiveCandidateCell *)self contentView];
  slotContentView = [(TUIProactiveCandidateCell *)self slotContentView];
  [contentView addSubview:slotContentView];
}

@end