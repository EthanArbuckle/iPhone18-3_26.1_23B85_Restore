@interface _UIFocusDebugModuleContainer
- (_UIFocusDebugModuleContainer)initWithModule:(id)module;
@end

@implementation _UIFocusDebugModuleContainer

- (_UIFocusDebugModuleContainer)initWithModule:(id)module
{
  v24[4] = *MEMORY[0x1E69E9840];
  moduleCopy = module;
  v23.receiver = self;
  v23.super_class = _UIFocusDebugModuleContainer;
  v5 = [(UIView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    [moduleCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 addSubview:moduleCopy];
    v17 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UIView *)v5 leadingAnchor];
    leadingAnchor2 = [moduleCopy leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v20;
    bottomAnchor = [(UIView *)v5 bottomAnchor];
    bottomAnchor2 = [moduleCopy bottomAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[1] = v6;
    trailingAnchor = [(UIView *)v5 trailingAnchor];
    trailingAnchor2 = [moduleCopy trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[2] = v9;
    topAnchor = [(UIView *)v5 topAnchor];
    topAnchor2 = [moduleCopy topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v17 activateConstraints:v13];

    v14 = +[UIColor blackColor];
    v15 = [v14 colorWithAlphaComponent:0.6];
    [(UIView *)v5 setBackgroundColor:v15];
  }

  return v5;
}

@end