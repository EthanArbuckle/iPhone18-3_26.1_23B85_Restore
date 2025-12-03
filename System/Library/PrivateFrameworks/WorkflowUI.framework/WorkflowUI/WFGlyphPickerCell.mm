@interface WFGlyphPickerCell
- (BOOL)outline;
- (WFGlyphPickerCell)initWithFrame:(CGRect)frame;
- (WFGlyphView)glyphView;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)glyphCharacter;
- (void)setGlyphCharacter:(unsigned __int16)character;
- (void)setOutline:(BOOL)outline;
- (void)setSelected:(BOOL)selected;
@end

@implementation WFGlyphPickerCell

- (WFGlyphView)glyphView
{
  WeakRetained = objc_loadWeakRetained(&self->_glyphView);

  return WeakRetained;
}

- (id)accessibilityLabel
{
  [(WFGlyphPickerCell *)self glyphCharacter];

  return WFNameForGlyphCharacter();
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x277D76548];
  isSelected = [(WFGlyphPickerCell *)self isSelected];
  v4 = *MEMORY[0x277D76598];
  if (!isSelected)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = WFGlyphPickerCell;
  [(WFGlyphPickerCell *)&v7 setSelected:?];
  if (selectedCopy)
  {
    [MEMORY[0x277D75348] systemGray5Color];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v5 = ;
  contentView = [(WFGlyphPickerCell *)self contentView];
  [contentView setBackgroundColor:v5];
}

- (void)setGlyphCharacter:(unsigned __int16)character
{
  characterCopy = character;
  glyphView = [(WFGlyphPickerCell *)self glyphView];
  [glyphView setGlyphCharacter:characterCopy];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  glyphView2 = [(WFGlyphPickerCell *)self glyphView];
  [glyphView2 setGlyphColor:secondaryLabelColor];
}

- (unsigned)glyphCharacter
{
  glyphView = [(WFGlyphPickerCell *)self glyphView];
  glyphCharacter = [glyphView glyphCharacter];

  return glyphCharacter;
}

- (void)setOutline:(BOOL)outline
{
  outlineCopy = outline;
  glyphView = [(WFGlyphPickerCell *)self glyphView];
  [glyphView setOutline:outlineCopy];
}

- (BOOL)outline
{
  glyphView = [(WFGlyphPickerCell *)self glyphView];
  outline = [glyphView outline];

  return outline;
}

- (WFGlyphPickerCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = WFGlyphPickerCell;
  v3 = [(WFGlyphPickerCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(WFGlyphView);
    [(WFGlyphView *)v4 setGlyphInsets:8.0, 8.0, 8.0, 8.0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFGlyphView *)v4 setBackgroundColor:clearColor];

    [(WFGlyphView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WFGlyphPickerCell *)v3 contentView];
    [contentView addSubview:v4];

    objc_storeWeak(&v3->_glyphView, v4);
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView2 = [(WFGlyphPickerCell *)v3 contentView];
    [contentView2 setBackgroundColor:clearColor2];

    contentView3 = [(WFGlyphPickerCell *)v3 contentView];
    layer = [contentView3 layer];
    [layer setCornerRadius:10.0];

    v11 = *MEMORY[0x277CDA138];
    contentView4 = [(WFGlyphPickerCell *)v3 contentView];
    layer2 = [contentView4 layer];
    [layer2 setCornerCurve:v11];

    v14 = _NSDictionaryOfVariableBindings(&cfstr_Glyphview.isa, v4, 0);
    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[glyphView]|" options:0 metrics:0 views:v14];
    [(WFGlyphPickerCell *)v3 addConstraints:v15];

    v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[glyphView]|" options:0 metrics:0 views:v14];
    [(WFGlyphPickerCell *)v3 addConstraints:v16];

    v17 = v3;
  }

  return v3;
}

@end