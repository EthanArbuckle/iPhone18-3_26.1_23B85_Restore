@interface VideosExtrasDetailTextCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (VideosExtrasDetailTextCell)initWithFrame:(CGRect)frame;
- (void)configureForTextElement:(id)element style:(id)style;
- (void)dealloc;
@end

@implementation VideosExtrasDetailTextCell

- (VideosExtrasDetailTextCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = VideosExtrasDetailTextCell;
  v3 = [(VideosExtrasDetailTextCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    initForAutolayout = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    label = v3->_label;
    v3->_label = initForAutolayout;

    [(UILabel *)v3->_label MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_label setNumberOfLines:0];
    [(VideosExtrasDetailTextCell *)v3 addSubview:v3->_label];
    v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_label toView:v3 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [(VideosExtrasDetailTextCell *)v3 addConstraints:v6];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasDetailTextCell;
  [(VideosExtrasDetailTextCell *)&v4 dealloc];
}

- (void)configureForTextElement:(id)element style:(id)style
{
  v6 = MEMORY[0x1E69DC888];
  styleCopy = style;
  elementCopy = element;
  clearColor = [v6 clearColor];
  [(VideosExtrasDetailTextCell *)self setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_label setBackgroundColor:clearColor2];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  [(UILabel *)self->_label setTextColor:v11];

  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy];
  [(UILabel *)self->_label configureForIKTextElement:elementCopy fontDescriptor:v12 textStyle:styleCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end