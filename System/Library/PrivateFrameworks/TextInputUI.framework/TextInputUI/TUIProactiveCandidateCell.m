@interface TUIProactiveCandidateCell
- (TUIProactiveCandidateCell)initWithCoder:(id)a3;
- (TUIProactiveCandidateCell)initWithFrame:(CGRect)a3;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setCandidate:(id)a3;
- (void)updateSlotContentView;
@end

@implementation TUIProactiveCandidateCell

- (void)updateSlotContentView
{
  v40 = [(TUIProactiveCandidateCell *)self candidate];
  if (![v40 slotID])
  {
    v3 = [(TUIProactiveCandidateCell *)self slotContentView];
    v37 = [v3 layer];
    [v37 setContents:0];
    goto LABEL_14;
  }

  v3 = [MEMORY[0x1E6979320] objectForSlot:{objc_msgSend(v40, "slotID")}];
  [(TUIProactiveCandidateCell *)self bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if ([v40 isStickerCandidate])
  {
    v12 = [(TUICandidateBaseCell *)self style];
    [v12 minimumCellPadding];
    v14 = v13 * 0.5;
    v15 = [(TUICandidateBaseCell *)self style];
    [v15 minimumCellPadding];
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

  v18 = [(TUICandidateBaseCell *)self style];
  [v18 extraCellPadding];
  v20 = y + v19 * 0.5;

  v21 = [(TUIProactiveCandidateCell *)self slotContentView];
  [v21 setFrame:{x, v20, width, height}];

  v22 = [(TUIProactiveCandidateCell *)self slotContentView];
  v23 = [v22 layer];
  [v23 setContents:v3];

  v24 = TUIScreenScaleForView(self);
  v25 = [(TUIProactiveCandidateCell *)self slotContentView];
  v26 = [v25 layer];
  [v26 setContentsScale:v24];

  v27 = TUIScreenScaleForView(self);
  v28 = [(TUIProactiveCandidateCell *)self slotContentView];
  v29 = [v28 layer];
  [v29 setRasterizationScale:v27];

  v30 = [(TUICandidateBaseCell *)self style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_9;
  }

  v31 = [(TUICandidateBaseCell *)self style];
  v32 = [v31 proactiveCandidateContentsGravity];

  if (!v32)
  {
LABEL_9:
    if ([v40 isStickerCandidate])
    {
      v38 = MEMORY[0x1E6979DE8];
    }

    else
    {
      v38 = MEMORY[0x1E6979DE0];
    }

    v39 = *v38;
    v33 = [(TUIProactiveCandidateCell *)self slotContentView];
    v34 = [v33 layer];
    [v34 setContentsGravity:v39];
    goto LABEL_13;
  }

  v33 = [(TUICandidateBaseCell *)self style];
  v34 = [v33 proactiveCandidateContentsGravity];
  v35 = [(TUIProactiveCandidateCell *)self slotContentView];
  v36 = [v35 layer];
  [v36 setContentsGravity:v34];

LABEL_13:
  v37 = [(TUIProactiveCandidateCell *)self slotContentView];
  [v37 setAutoresizingMask:18];
LABEL_14:
}

- (void)setCandidate:(id)a3
{
  v5 = a3;
  candidate = self->_candidate;
  if (candidate != v5)
  {
    v7 = v5;
    candidate = [candidate isEqual:v5];
    v5 = v7;
    if ((candidate & 1) == 0)
    {
      objc_storeStrong(&self->_candidate, a3);
      candidate = [(TUIProactiveCandidateCell *)self updateSlotContentView];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](candidate, v5);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIProactiveCandidateCell;
  [(TUICandidateBaseCell *)&v3 layoutSubviews];
  [(TUIProactiveCandidateCell *)self updateSlotContentView];
}

- (TUIProactiveCandidateCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUIProactiveCandidateCell;
  v3 = [(TUIProactiveCandidateCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUIProactiveCandidateCell *)v3 commonInit];
  }

  return v4;
}

- (TUIProactiveCandidateCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUIProactiveCandidateCell;
  v3 = [(TUICandidateBaseCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v5 = [(TUIProactiveCandidateCell *)self contentView];
  v4 = [(TUIProactiveCandidateCell *)self slotContentView];
  [v5 addSubview:v4];
}

@end