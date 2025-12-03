@interface PSGSWCopyLabel
- (PSGSWCopyLabel)initWithCoder:(id)coder;
- (PSGSWCopyLabel)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)copy:(id)copy;
- (void)didLongPress:(id)press;
@end

@implementation PSGSWCopyLabel

- (PSGSWCopyLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PSGSWCopyLabel;
  v3 = [(PSGSWCopyLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PSGSWCopyLabel *)v3 _commonInit];
  }

  return v4;
}

- (PSGSWCopyLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PSGSWCopyLabel;
  v3 = [(PSGSWCopyLabel *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PSGSWCopyLabel *)v3 _commonInit];
  }

  return v4;
}

- (void)didLongPress:(id)press
{
  [press locationInView:self];
  v4 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:?];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v4];
}

- (void)copy:(id)copy
{
  text = [(PSGSWCopyLabel *)self text];
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  [generalPasteboard setString:text];
}

- (void)_commonInit
{
  if (self)
  {
    [self setUserInteractionEnabled:1];
    v2 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:0];
    v3 = self[101];
    self[101] = v2;
    v4 = v2;

    [self addInteraction:v4];
    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_didLongPress_];

    [v5 setAllowedTouchTypes:&unk_282E8FD88];
    [self addGestureRecognizer:v5];
  }
}

@end