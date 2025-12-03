@interface SBFluidSwitcherModifierTimelineEntryView
- (SBFluidSwitcherModifierTimelineEntryView)initWithFrame:(CGRect)frame entry:(id)entry;
- (SBFluidSwitcherModifierTimelineEntryViewDelegate)delegate;
- (id)_appendRecursiveDescriptionToString:(id)string level:(unint64_t)level snapshot:(id)snapshot;
- (id)_attributedStringsForStack:(id)stack;
- (id)_randomColorWithSeed:(unint64_t)seed;
- (void)_tap:(id)_tap;
- (void)layoutSubviews;
@end

@implementation SBFluidSwitcherModifierTimelineEntryView

- (SBFluidSwitcherModifierTimelineEntryView)initWithFrame:(CGRect)frame entry:(id)entry
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  entryCopy = entry;
  v61.receiver = self;
  v61.super_class = SBFluidSwitcherModifierTimelineEntryView;
  height = [(SBFluidSwitcherModifierTimelineEntryView *)&v61 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_entry, entry);
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
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    [(UILabel *)v22 setTextColor:darkGrayColor];

    [(UILabel *)v12->_nameLabel setTextAlignment:1];
    v24 = v12->_nameLabel;
    eventSnapshot = [entryCopy eventSnapshot];
    eventName = [eventSnapshot eventName];
    [(UILabel *)v24 setText:eventName];

    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addSubview:v12->_nameLabel];
    v27 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v14, v15, v16, v17}];
    actionsLabel = v12->_actionsLabel;
    v12->_actionsLabel = v27;

    [(UILabel *)v12->_actionsLabel setNumberOfLines:0];
    v29 = v12->_actionsLabel;
    v30 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v29 setFont:v30];

    v60 = v12->_actionsLabel;
    v31 = entryCopy;
    v32 = MEMORY[0x277CCACA8];
    responseSnapshot = [v31 responseSnapshot];
    responseNames = [responseSnapshot responseNames];
    v35 = [responseNames count];
    responseSnapshot2 = [v31 responseSnapshot];
    responseNames2 = [responseSnapshot2 responseNames];
    v38 = [responseNames2 componentsJoinedByString:@"\n• "];
    v39 = [v32 stringWithFormat:@"Responses: (%lu)\n• %@", v35, v38];
    [(UILabel *)v60 setText:v39];

    entryCopy = v31;
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
    stackSnapshotAfterEvent = [v31 stackSnapshotAfterEvent];
    v47 = [v45 stringWithFormat:@"Resulting Modifier Stack: (%lu)\n", objc_msgSend(stackSnapshotAfterEvent, "countOfAllChildSnapshots")];
    v48 = [v44 initWithString:v47];

    stackSnapshotAfterEvent2 = [entryCopy stackSnapshotAfterEvent];
    v50 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 _attributedStringsForStack:stackSnapshotAfterEvent2];
    [v48 appendAttributedString:v50];

    [(UILabel *)v12->_postStackLabel setAttributedText:v48];
    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addSubview:v12->_postStackLabel];
    v51 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel__tap_];
    tapRecognizer = v12->_tapRecognizer;
    v12->_tapRecognizer = v51;

    [(SBFluidSwitcherModifierTimelineEntryView *)v12 addGestureRecognizer:v12->_tapRecognizer];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SBFluidSwitcherModifierTimelineEntryView *)v12 setBackgroundColor:systemBackgroundColor];

    layer = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    [layer setCornerRadius:20.0];

    layer2 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    layer3 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    [layer3 setShadowRadius:10.0];

    layer4 = [(SBFluidSwitcherModifierTimelineEntryView *)v12 layer];
    LODWORD(v58) = 1045220557;
    [layer4 setShadowOpacity:v58];

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

- (void)_tap:(id)_tap
{
  delegate = [(SBFluidSwitcherModifierTimelineEntryView *)self delegate];
  [delegate didSelectEntryView:self];
}

- (id)_attributedStringsForStack:(id)stack
{
  stackCopy = stack;
  v5 = objc_opt_new();
  v6 = [(SBFluidSwitcherModifierTimelineEntryView *)self _appendRecursiveDescriptionToString:v5 level:0 snapshot:stackCopy];

  return v6;
}

- (id)_appendRecursiveDescriptionToString:(id)string level:(unint64_t)level snapshot:(id)snapshot
{
  v34[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  snapshotCopy = snapshot;
  v10 = objc_opt_new();
  if (level)
  {
    levelCopy = level;
    do
    {
      [v10 appendString:@"   "];
      --levelCopy;
    }

    while (levelCopy);
  }

  [v10 appendString:@"• "];
  modifierName = [snapshotCopy modifierName];
  v13 = -[SBFluidSwitcherModifierTimelineEntryView _randomColorWithSeed:](self, "_randomColorWithSeed:", [modifierName hash]);
  v14 = objc_alloc(MEMORY[0x277CCA898]);
  v33 = *MEMORY[0x277D740C0];
  v34[0] = v13;
  v26 = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v16 = [v14 initWithString:modifierName attributes:v15];

  v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v10];
  [stringCopy appendAttributedString:v17];

  [stringCopy appendAttributedString:v16];
  v18 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
  [stringCopy appendAttributedString:v18];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = snapshotCopy;
  childSnapshots = [snapshotCopy childSnapshots];
  v20 = [childSnapshots countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(childSnapshots);
        }

        v24 = [(SBFluidSwitcherModifierTimelineEntryView *)self _appendRecursiveDescriptionToString:stringCopy level:level + 1 snapshot:*(*(&v28 + 1) + 8 * i)];
      }

      v21 = [childSnapshots countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }

  return stringCopy;
}

- (id)_randomColorWithSeed:(unint64_t)seed
{
  v5 = MEMORY[0x277D75348];
  [(SBFluidSwitcherModifierTimelineEntryView *)self _randomFloatFromSeed:0.0 min:1.0 max:?];
  v7 = v6;
  [(SBFluidSwitcherModifierTimelineEntryView *)self _randomFloatFromSeed:seed min:0.4 max:0.9];
  v9 = v8;
  [(SBFluidSwitcherModifierTimelineEntryView *)self _randomFloatFromSeed:seed min:0.6 max:1.0];

  return [v5 colorWithHue:v7 saturation:v9 brightness:v10 alpha:1.0];
}

- (SBFluidSwitcherModifierTimelineEntryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end