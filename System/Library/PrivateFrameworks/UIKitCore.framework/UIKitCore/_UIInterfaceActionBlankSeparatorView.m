@interface _UIInterfaceActionBlankSeparatorView
- (_UIInterfaceActionBlankSeparatorView)init;
- (void)updateConstraints;
@end

@implementation _UIInterfaceActionBlankSeparatorView

- (_UIInterfaceActionBlankSeparatorView)init
{
  v6.receiver = self;
  v6.super_class = _UIInterfaceActionBlankSeparatorView;
  v2 = [(UIView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [[_UIInterfaceActionSeparatorConstraintController alloc] initWithSeparatorView:v2];
    separatorViewConstraints = v2->_separatorViewConstraints;
    v2->_separatorViewConstraints = v3;
  }

  return v2;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _UIInterfaceActionBlankSeparatorView;
  [(UIView *)&v3 updateConstraints];
  [(_UIInterfaceActionSeparatorConstraintController *)self->_separatorViewConstraints separatorViewDidUpdateConstraints];
}

@end