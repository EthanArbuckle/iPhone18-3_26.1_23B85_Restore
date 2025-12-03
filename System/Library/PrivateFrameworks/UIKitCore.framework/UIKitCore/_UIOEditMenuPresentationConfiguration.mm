@interface _UIOEditMenuPresentationConfiguration
+ (_UIOEditMenuPresentationConfiguration)configurationWithMenu:(id)menu preferredArrowDirection:(int64_t)direction sourceRect:(CGRect)rect enforcesMenuControllerLifecycle:(BOOL)lifecycle initialUserInterfaceStyle:(int64_t)style;
- (CGRect)sourceRect;
- (CGRect)targetRect;
- (_UIOEditMenuPresentationConfiguration)configurationWithTargetOrigin:(CGPoint)origin;
- (_UIOEditMenuPresentationConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIOEditMenuPresentationConfiguration

+ (_UIOEditMenuPresentationConfiguration)configurationWithMenu:(id)menu preferredArrowDirection:(int64_t)direction sourceRect:(CGRect)rect enforcesMenuControllerLifecycle:(BOOL)lifecycle initialUserInterfaceStyle:(int64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  menuCopy = menu;
  v15 = objc_opt_new();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v18 = *(v15 + 16);
  *(v15 + 16) = uUIDString;

  v19 = *(v15 + 24);
  *(v15 + 24) = menuCopy;

  *(v15 + 48) = x;
  *(v15 + 56) = y;
  *(v15 + 64) = width;
  *(v15 + 72) = height;
  *(v15 + 8) = lifecycle;
  *(v15 + 32) = direction;
  *(v15 + 40) = style;
  *(v15 + 80) = x;
  *(v15 + 88) = y;
  *(v15 + 96) = width;
  *(v15 + 104) = height;

  return v15;
}

- (_UIOEditMenuPresentationConfiguration)configurationWithTargetOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
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

- (_UIOEditMenuPresentationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = _UIOEditMenuPresentationConfiguration;
  v5 = [(_UIOEditMenuPresentationConfiguration *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
    menu = v5->_menu;
    v5->_menu = v9;

    v11 = objc_opt_self();
    v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"menuIdentifier"];
    [(UIMenuElement *)v5->_menu set_internalIdentifier:v12];

    v5->_preferredArrowDirection = [coderCopy decodeIntegerForKey:@"preferredArrowDirection"];
    [coderCopy decodeCGRectForKey:@"sourceRect"];
    v5->_sourceRect.origin.x = v13;
    v5->_sourceRect.origin.y = v14;
    v5->_sourceRect.size.width = v15;
    v5->_sourceRect.size.height = v16;
    v5->_enforcesMenuControllerLifecycle = [coderCopy decodeBoolForKey:@"enforcesMenuControllerLifecycle"];
    v5->_initialUserInterfaceStyle = [coderCopy decodeIntegerForKey:@"initialUserInterfaceStyle"];
    size = v5->_sourceRect.size;
    v5->_targetRect.origin = v5->_sourceRect.origin;
    v5->_targetRect.size = size;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  _internalIdentifier = [(UIMenuElement *)self->_menu _internalIdentifier];
  [coderCopy encodeObject:_internalIdentifier forKey:@"menuIdentifier"];

  [coderCopy encodeInteger:self->_preferredArrowDirection forKey:@"preferredArrowDirection"];
  [coderCopy encodeCGRect:@"sourceRect" forKey:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
  [coderCopy encodeBool:self->_enforcesMenuControllerLifecycle forKey:@"enforcesMenuControllerLifecycle"];
  [coderCopy encodeInteger:self->_initialUserInterfaceStyle forKey:@"initialUserInterfaceStyle"];
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