@interface VideosExtrasDetailTextCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (VideosExtrasDetailTextCell)initWithFrame:(CGRect)a3;
- (void)configureForTextElement:(id)a3 style:(id)a4;
- (void)dealloc;
@end

@implementation VideosExtrasDetailTextCell

- (VideosExtrasDetailTextCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = VideosExtrasDetailTextCell;
  v3 = [(VideosExtrasDetailTextCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCC10]) initForAutolayout];
    label = v3->_label;
    v3->_label = v4;

    [(UILabel *)v3->_label MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    [(UILabel *)v3->_label setNumberOfLines:0];
    [(VideosExtrasDetailTextCell *)v3 addSubview:v3->_label];
    v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v3->_label toView:v3 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [(VideosExtrasDetailTextCell *)v3 addConstraints:v6];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v3 selector:sel__dynamicTypeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VideosExtrasDetailTextCell;
  [(VideosExtrasDetailTextCell *)&v4 dealloc];
}

- (void)configureForTextElement:(id)a3 style:(id)a4
{
  v6 = MEMORY[0x1E69DC888];
  v7 = a4;
  v8 = a3;
  v9 = [v6 clearColor];
  [(VideosExtrasDetailTextCell *)self setBackgroundColor:v9];

  v10 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_label setBackgroundColor:v10];

  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.7];
  [(UILabel *)self->_label setTextColor:v11];

  v12 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
  [(UILabel *)self->_label configureForIKTextElement:v8 fontDescriptor:v12 textStyle:v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end