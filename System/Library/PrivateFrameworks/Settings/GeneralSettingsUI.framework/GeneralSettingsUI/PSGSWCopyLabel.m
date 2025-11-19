@interface PSGSWCopyLabel
- (PSGSWCopyLabel)initWithCoder:(id)a3;
- (PSGSWCopyLabel)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)copy:(id)a3;
- (void)didLongPress:(id)a3;
@end

@implementation PSGSWCopyLabel

- (PSGSWCopyLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PSGSWCopyLabel;
  v3 = [(PSGSWCopyLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PSGSWCopyLabel *)v3 _commonInit];
  }

  return v4;
}

- (PSGSWCopyLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSGSWCopyLabel;
  v3 = [(PSGSWCopyLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PSGSWCopyLabel *)v3 _commonInit];
  }

  return v4;
}

- (void)didLongPress:(id)a3
{
  [a3 locationInView:self];
  v4 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:?];
  [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v4];
}

- (void)copy:(id)a3
{
  v4 = [(PSGSWCopyLabel *)self text];
  v3 = [MEMORY[0x277D75810] generalPasteboard];
  [v3 setString:v4];
}

- (void)_commonInit
{
  if (a1)
  {
    [a1 setUserInteractionEnabled:1];
    v2 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:0];
    v3 = a1[101];
    a1[101] = v2;
    v4 = v2;

    [a1 addInteraction:v4];
    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:a1 action:sel_didLongPress_];

    [v5 setAllowedTouchTypes:&unk_282E8FD88];
    [a1 addGestureRecognizer:v5];
  }
}

@end