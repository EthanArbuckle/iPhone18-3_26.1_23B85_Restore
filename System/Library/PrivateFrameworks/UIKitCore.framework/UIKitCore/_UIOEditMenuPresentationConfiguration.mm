@interface _UIOEditMenuPresentationConfiguration
+ (_UIOEditMenuPresentationConfiguration)configurationWithMenu:(id)a3 preferredArrowDirection:(int64_t)a4 sourceRect:(CGRect)a5 enforcesMenuControllerLifecycle:(BOOL)a6 initialUserInterfaceStyle:(int64_t)a7;
- (CGRect)sourceRect;
- (CGRect)targetRect;
- (_UIOEditMenuPresentationConfiguration)configurationWithTargetOrigin:(CGPoint)a3;
- (_UIOEditMenuPresentationConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIOEditMenuPresentationConfiguration

+ (_UIOEditMenuPresentationConfiguration)configurationWithMenu:(id)a3 preferredArrowDirection:(int64_t)a4 sourceRect:(CGRect)a5 enforcesMenuControllerLifecycle:(BOOL)a6 initialUserInterfaceStyle:(int64_t)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3;
  v15 = objc_opt_new();
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];
  v18 = *(v15 + 16);
  *(v15 + 16) = v17;

  v19 = *(v15 + 24);
  *(v15 + 24) = v14;

  *(v15 + 48) = x;
  *(v15 + 56) = y;
  *(v15 + 64) = width;
  *(v15 + 72) = height;
  *(v15 + 8) = a6;
  *(v15 + 32) = a4;
  *(v15 + 40) = a7;
  *(v15 + 80) = x;
  *(v15 + 88) = y;
  *(v15 + 96) = width;
  *(v15 + 104) = height;

  return v15;
}

- (_UIOEditMenuPresentationConfiguration)configurationWithTargetOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_new();
  objc_storeStrong((v6 + 16), self->_identifier);
  objc_storeStrong((v6 + 24), self->_menu);
  *(v6 + 32) = self->_preferredArrowDirection;
  size = self->_sourceRect.size;
  *(v6 + 48) = self->_sourceRect.origin;
  *(v6 + 64) = size;
  *(v6 + 8) = self->_enforcesMenuControllerLifecycle;
  *(v6 + 40) = self->_initialUserInterfaceStyle;
  v8 = self->_targetRect.size;
  *(v6 + 80) = x;
  *(v6 + 88) = y;
  *(v6 + 96) = v8;

  return v6;
}

- (_UIOEditMenuPresentationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _UIOEditMenuPresentationConfiguration;
  v5 = [(_UIOEditMenuPresentationConfiguration *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
    menu = v5->_menu;
    v5->_menu = v9;

    v11 = objc_opt_self();
    v12 = [v4 decodeObjectOfClass:v11 forKey:@"menuIdentifier"];
    [(UIMenuElement *)v5->_menu set_internalIdentifier:v12];

    v5->_preferredArrowDirection = [v4 decodeIntegerForKey:@"preferredArrowDirection"];
    [v4 decodeCGRectForKey:@"sourceRect"];
    v5->_sourceRect.origin.x = v13;
    v5->_sourceRect.origin.y = v14;
    v5->_sourceRect.size.width = v15;
    v5->_sourceRect.size.height = v16;
    v5->_enforcesMenuControllerLifecycle = [v4 decodeBoolForKey:@"enforcesMenuControllerLifecycle"];
    v5->_initialUserInterfaceStyle = [v4 decodeIntegerForKey:@"initialUserInterfaceStyle"];
    size = v5->_sourceRect.size;
    v5->_targetRect.origin = v5->_sourceRect.origin;
    v5->_targetRect.size = size;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  v5 = [(UIMenuElement *)self->_menu _internalIdentifier];
  [v6 encodeObject:v5 forKey:@"menuIdentifier"];

  [v6 encodeInteger:self->_preferredArrowDirection forKey:@"preferredArrowDirection"];
  [v6 encodeCGRect:@"sourceRect" forKey:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
  [v6 encodeBool:self->_enforcesMenuControllerLifecycle forKey:@"enforcesMenuControllerLifecycle"];
  [v6 encodeInteger:self->_initialUserInterfaceStyle forKey:@"initialUserInterfaceStyle"];
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end