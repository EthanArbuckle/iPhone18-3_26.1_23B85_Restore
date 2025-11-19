@interface UIStatusBarBluetoothItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)alphaForConnected:(BOOL)a3;
- (id)accessibilityHUDRepresentation;
- (void)performPendedActions;
- (void)setVisible:(BOOL)a3;
@end

@implementation UIStatusBarBluetoothItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v4 = a4;
  v6 = *([a3 rawData] + 2529) & 1;
  if (v6 != self->_connected)
  {
    self->_connected = v6;
    [(UIStatusBarBluetoothItemView *)self setVisible:[(UIStatusBarItemView *)self isVisible]];
  }

  if ((v4 & 2) != 0)
  {
    self->_shouldAnimateConnection = 1;
  }

  return 0;
}

- (void)performPendedActions
{
  if (self->_shouldAnimateConnection && self->_connected)
  {
    [(UIStatusBarBluetoothItemView *)self alphaForConnected:0];
    [(UIView *)self setAlpha:?];
    [(UIStatusBarItemView *)self beginDisablingRasterization];
    v3[4] = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__UIStatusBarBluetoothItemView_performPendedActions__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __52__UIStatusBarBluetoothItemView_performPendedActions__block_invoke_3;
    v3[3] = &unk_1E70F5AC0;
    [UIView animateWithDuration:16 delay:v4 options:v3 animations:0.15 completion:0.0];
  }

  self->_shouldAnimateConnection = 0;
}

uint64_t __52__UIStatusBarBluetoothItemView_performPendedActions__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__UIStatusBarBluetoothItemView_performPendedActions__block_invoke_2;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView modifyAnimationsWithRepeatCount:0 autoreverses:v2 animations:4.5];
}

uint64_t __52__UIStatusBarBluetoothItemView_performPendedActions__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 alphaForConnected:1];

  return [v1 setAlpha:?];
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UIStatusBarBluetoothItemView;
  [(UIStatusBarItemView *)&v6 setVisible:?];
  v5 = 0.0;
  if (v3)
  {
    [(UIStatusBarBluetoothItemView *)self alphaForConnected:self->_connected, 0.0];
  }

  [(UIView *)self setAlpha:v5];
}

- (double)alphaForConnected:(BOOL)a3
{
  result = 0.4;
  if (a3)
  {
    return 1.0;
  }

  return result;
}

- (id)accessibilityHUDRepresentation
{
  v3 = [UIAccessibilityHUDItem alloc];
  v4 = [(UIStatusBarItemView *)self foregroundStyle];
  v5 = [v4 accessibilityHUDImageNamed:@"Bluetooth"];
  v6 = [(UIAccessibilityHUDItem *)v3 initWithTitle:0 image:v5 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  [(UIAccessibilityHUDItem *)v6 setDisabledAppearance:!self->_connected];

  return v6;
}

@end