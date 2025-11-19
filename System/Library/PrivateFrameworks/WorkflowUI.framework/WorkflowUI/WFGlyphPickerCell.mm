@interface WFGlyphPickerCell
- (BOOL)outline;
- (WFGlyphPickerCell)initWithFrame:(CGRect)a3;
- (WFGlyphView)glyphView;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)glyphCharacter;
- (void)setGlyphCharacter:(unsigned __int16)a3;
- (void)setOutline:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
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
  v3 = [(WFGlyphPickerCell *)self isSelected];
  v4 = *MEMORY[0x277D76598];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = WFGlyphPickerCell;
  [(WFGlyphPickerCell *)&v7 setSelected:?];
  if (v3)
  {
    [MEMORY[0x277D75348] systemGray5Color];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v5 = ;
  v6 = [(WFGlyphPickerCell *)self contentView];
  [v6 setBackgroundColor:v5];
}

- (void)setGlyphCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(WFGlyphPickerCell *)self glyphView];
  [v5 setGlyphCharacter:v3];

  v7 = [MEMORY[0x277D75348] secondaryLabelColor];
  v6 = [(WFGlyphPickerCell *)self glyphView];
  [v6 setGlyphColor:v7];
}

- (unsigned)glyphCharacter
{
  v2 = [(WFGlyphPickerCell *)self glyphView];
  v3 = [v2 glyphCharacter];

  return v3;
}

- (void)setOutline:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFGlyphPickerCell *)self glyphView];
  [v4 setOutline:v3];
}

- (BOOL)outline
{
  v2 = [(WFGlyphPickerCell *)self glyphView];
  v3 = [v2 outline];

  return v3;
}

- (WFGlyphPickerCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = WFGlyphPickerCell;
  v3 = [(WFGlyphPickerCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(WFGlyphView);
    [(WFGlyphView *)v4 setGlyphInsets:8.0, 8.0, 8.0, 8.0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(WFGlyphView *)v4 setBackgroundColor:v5];

    [(WFGlyphView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(WFGlyphPickerCell *)v3 contentView];
    [v6 addSubview:v4];

    objc_storeWeak(&v3->_glyphView, v4);
    v7 = [MEMORY[0x277D75348] clearColor];
    v8 = [(WFGlyphPickerCell *)v3 contentView];
    [v8 setBackgroundColor:v7];

    v9 = [(WFGlyphPickerCell *)v3 contentView];
    v10 = [v9 layer];
    [v10 setCornerRadius:10.0];

    v11 = *MEMORY[0x277CDA138];
    v12 = [(WFGlyphPickerCell *)v3 contentView];
    v13 = [v12 layer];
    [v13 setCornerCurve:v11];

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