@interface SBFluidSwitcherModifierTimelineEntryView
- (SBFluidSwitcherModifierTimelineEntryView)initWithFrame:(CGRect)a3 entry:(id)a4;
- (SBFluidSwitcherModifierTimelineEntryViewDelegate)delegate;
- (id)_appendRecursiveDescriptionToString:(id)a3 level:(unint64_t)a4 snapshot:(id)a5;
- (id)_attributedStringsForStack:(id)a3;
- (id)_randomColorWithSeed:(unint64_t)a3;
- (void)_tap:(id)a3;
- (void)layoutSubviews;
@end

@implementation SBFluidSwitcherModifierTimelineEntryView

- (SBFluidSwitcherModifierTimelineEntryView)initWithFrame:(CGRect)a3 entry:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v61.receiver = self;
  v61.super_class = SBFluidSwitcherModifierTimelineEntryView;
  v11 = [(SBFluidSwitcherModifierTimelineEntryView *)&v61 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, a4);
    v13 = objc_alloc(MEMORY[0x277D756B8]);
    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
    v18 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], v15, v16, v17}];
    nameLabel = v12->_nameLabel;
    v12->_nameLabel = v18;

    v20 = v12->_nameLabel;
    v21 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [(UILabel *)v20 setFont:v21];

    v22 = v12->_nameLabel;
    v23 = [MEMORY[0x277D75348] darkGrayColor];
    [(UILabel *)v22 setTextColor:v23];

    [(UILabel *)v12->_nameLabel setTextAlignment:1];
    v24 = v12->_nameLabel;
    v25 = [v10 eventSnapshot];
    v26 = [v25 eventName];
    [(UILabel *)v24 setText:v26];

    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addSubview:v12->_nameLabel];
    v27 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v14, v15, v16, v17}];
    actionsLabel = v12->_actionsLabel;
    v12->_actionsLabel = v27;

    [(UILabel *)v12->_actionsLabel setNumberOfLines:0];
    v29 = v12->_actionsLabel;
    v30 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v29 setFont:v30];

    v60 = v12->_actionsLabel;
    v31 = v10;
    v32 = MEMORY[0x277CCACA8];
    v33 = [v31 responseSnapshot];
    v34 = [v33 responseNames];
    v35 = [v34 count];
    v36 = [v31 responseSnapshot];
    v37 = [v36 responseNames];
    v38 = [v37 componentsJoinedByString:@"\n• "];
    v39 = [v32 stringWithFormat:@"Responses: (%lu)\n• %@", v35, v38];
    [(UILabel *)v60 setText:v39];

    v10 = v31;
    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addSubview:v12->_actionsLabel];
    v40 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v14, v15, v16, v17}];
    postStackLabel = v12->_postStackLabel;
    v12->_postStackLabel = v40;

    [(UILabel *)v12->_postStackLabel setNumberOfLines:0];
    v42 = v12->_postStackLabel;
    v43 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v42 setFont:v43];

    v44 = objc_alloc(MEMORY[0x277CCAB48]);
    v45 = MEMORY[0x277CCACA8];
    v46 = [v31 stackSnapshotAfterEvent];
    v47 = [v45 stringWithFormat:@"Resulting Modifier Stack: (%lu)\n", objc_msgSend(v46, "countOfAllChildSnapshots")];
    v48 = [v44 initWithString:v47];

    v49 = [v10 stackSnapshotAfterEvent];
    v50 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 _attributedStringsForStack:v49];
    [v48 appendAttributedString:v50];

    [(UILabel *)v12->_postStackLabel setAttributedText:v48];
    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addSubview:v12->_postStackLabel];
    v51 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel__tap_];
    tapRecognizer = v12->_tapRecognizer;
    v12->_tapRecognizer = v51;

    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addGestureRecognizer:v12->_tapRecognizer];
    v53 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SBFluidSwitcherModifierTimelineEntryView *)v12 setBackgroundColor:v53];

    v54 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    [v54 setCornerRadius:20.0];

    v55 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    [v55 setCornerCurve:*MEMORY[0x277CDA138]];

    v56 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    [v56 setShadowRadius:10.0];

    v57 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    LODWORD(v58) = 1045220557;
    [v57 setShadowOpacity:v58];

    [(SBFluidSwitcherModifierTimelineEntryView *)v12 setClipsToBounds:0];
  }

  return v12;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SBFluidSwitcherModifierTimelineEntryView;
  [(SBFluidSwitcherModifierTimelineEntryView *)&v12 layoutSubviews];
  [(UILabel *)self->_nameLabel setFrame:0.0, 10.0, 250.0, 25.0];
  [(UILabel *)self->_nameLabel frame];
  v4 = v3 + 10.0 + 10.0;
  [(UILabel *)self->_postStackLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  [(UILabel *)self->_postStackLabel setFrame:5.0, v4, 240.0, v5];
  [(UILabel *)self->_postStackLabel frame];
  v7 = v4 + v6 + 10.0;
  [(UILabel *)self->_actionsLabel sizeThatFits:250.0, 1.79769313e308];
  [(UILabel *)self->_actionsLabel setFrame:5.0, v7, v8, v9];
  [(UILabel *)self->_actionsLabel frame];
  [(SBFluidSwitcherModifierTimelineEntryView *)self frame];
  v11 = v10;
  [(SBFluidSwitcherModifierTimelineEntryView *)self frame];
  [(SBFluidSwitcherModifierTimelineEntryView *)self setFrame:v11];
}

- (void)_tap:(id)a3
{
  v4 = [(SBFluidSwitcherModifierTimelineEntryView *)self delegate];
  [v4 didSelectEntryView:self];
}

- (id)_attributedStringsForStack:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(SBFluidSwitcherModifierTimelineEntryView *)self _appendRecursiveDescriptionToString:v5 level:0 snapshot:v4];

  return v6;
}

- (id)_appendRecursiveDescriptionToString:(id)a3 level:(unint64_t)a4 snapshot:(id)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  if (a4)
  {
    v11 = a4;
    do
    {
      [v10 appendString:@"   "];
      --v11;
    }

    while (v11);
  }

  [v10 appendString:@"• "];
  v12 = [v9 modifierName];
  v13 = -[SBFluidSwitcherModifierTimelineEntryView _randomColorWithSeed:](self, "_randomColorWithSeed:", [v12 hash]);
  v14 = objc_alloc(MEMORY[0x277CCA898]);
  v33 = *MEMORY[0x277D740C0];
  v34[0] = v13;
  v26 = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v16 = [v14 initWithString:v12 attributes:v15];

  v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10];
  [v8 appendAttributedString:v17];

  [v8 appendAttributedString:v16];
  v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
  [v8 appendAttributedString:v18];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v9;
  v19 = [v9 childSnapshots];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [(SBFluidSwitcherModifierTimelineEntryView *)self _appendRecursiveDescriptionToString:v8 level:a4 + 1 snapshot:*(*(&v28 + 1) + 8 * i)];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }

  return v8;
}

- (id)_randomColorWithSeed:(unint64_t)a3
{
  v5 = MEMORY[0x277D75348];
  [(SBFluidSwitcherModifierTimelineEntryView *)self _randomFloatFromSeed:0.0 min:1.0 max:?];
  v7 = v6;
  [(SBFluidSwitcherModifierTimelineEntryView *)self _randomFloatFromSeed:a3 min:0.4 max:0.9];
  v9 = v8;
  [(SBFluidSwitcherModifierTimelineEntryView *)self _randomFloatFromSeed:a3 min:0.6 max:1.0];

  return [v5 colorWithHue:v7 saturation:v9 brightness:v10 alpha:1.0];
}

- (SBFluidSwitcherModifierTimelineEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end