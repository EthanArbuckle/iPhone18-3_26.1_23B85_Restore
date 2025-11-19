@interface PRQuickActionControlView
- (PRQuickActionControlView)initWithControl:(id)a3 type:(unint64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation PRQuickActionControlView

- (PRQuickActionControlView)initWithControl:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PRQuickActionControlView;
  v7 = [(PRQuickActionControlView *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E69944B8] instanceWithControl:v6 type:a4 content:1];
    controlInstance = v7->_controlInstance;
    v7->_controlInstance = v8;

    [(CHUISControlInstance *)v7->_controlInstance activate];
    v10 = [(CHUISControlInstance *)v7->_controlInstance iconView];
    iconView = v7->_iconView;
    v7->_iconView = v10;

    [(CHUISControlIconView *)v7->_iconView setOverrideUserInterfaceStyle:1];
    [(PRQuickActionControlView *)v7 addSubview:v7->_iconView];
    [(CHUISControlInstance *)v7->_controlInstance setVisibility:2];
  }

  return v7;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PRQuickActionControlView;
  [(PRQuickActionControlView *)&v6 layoutSubviews];
  iconView = self->_iconView;
  [(PRQuickActionControlView *)self bounds];
  [(CHUISControlIconView *)iconView setFrame:?];
  [(PRQuickActionControlView *)self bounds];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:v4 * 0.368 weight:*MEMORY[0x1E69DB980]];
  [(CHUISControlIconView *)self->_iconView setFont:v5];
}

- (void)dealloc
{
  [(CHUISControlInstance *)self->_controlInstance setVisibility:0];
  [(CHUISControlInstance *)self->_controlInstance invalidate];
  v3.receiver = self;
  v3.super_class = PRQuickActionControlView;
  [(PRQuickActionControlView *)&v3 dealloc];
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
  }
}

@end