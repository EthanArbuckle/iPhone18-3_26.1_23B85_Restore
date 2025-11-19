@interface _UIDebugIdentifierWindow
- (_UIDebugIdentifierWindow)initWithWindowScene:(id)a3;
- (void)_updateSceneIdentifierLabel;
@end

@implementation _UIDebugIdentifierWindow

- (_UIDebugIdentifierWindow)initWithWindowScene:(id)a3
{
  v12.receiver = self;
  v12.super_class = _UIDebugIdentifierWindow;
  v3 = [(UIWindow *)&v12 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 setWindowLevel:10000.0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    v5 = [UILabel alloc];
    v6 = [(UILabel *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sceneIdentifierLabel = v4->_sceneIdentifierLabel;
    v4->_sceneIdentifierLabel = v6;

    v8 = [off_1E70ECC18 monospacedSystemFontOfSize:14.0 weight:*off_1E70ECD20];
    [(UILabel *)v4->_sceneIdentifierLabel setFont:v8];

    v9 = +[UIColor blackColor];
    [(UIView *)v4->_sceneIdentifierLabel setBackgroundColor:v9];

    v10 = +[UIColor whiteColor];
    [(UILabel *)v4->_sceneIdentifierLabel setTextColor:v10];

    [(UIView *)v4 addSubview:v4->_sceneIdentifierLabel];
    [(_UIDebugIdentifierWindow *)v4 _updateSceneIdentifierLabel];
  }

  return v4;
}

- (void)_updateSceneIdentifierLabel
{
  v3 = [(UIWindow *)self windowScene];
  v4 = [v3 _FBSScene];
  v11 = [v4 identityToken];

  if (v11)
  {
    v5 = [v11 stringRepresentation];
    v6 = [v5 componentsSeparatedByString:@"-"];
    v7 = [v6 lastObject];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"(nil)";
    }
  }

  else
  {
    v8 = @"(nil)";
  }

  [(UILabel *)self->_sceneIdentifierLabel setText:v8];
  [(UIView *)self->_sceneIdentifierLabel sizeToFit];
  [(UIView *)self->_sceneIdentifierLabel frame];
  v10 = v9;
  [(UIView *)self->_sceneIdentifierLabel frame];
  [(UILabel *)self->_sceneIdentifierLabel setFrame:10.0, 10.0, v10];
}

@end