@interface WBSAction
+ (id)actionWithTitle:(id)title image:(id)image identifier:(id)identifier handler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (id)makeUIAction;
@end

@implementation WBSAction

- (id)makeUIAction
{
  v3 = _Block_copy(self->_handler);
  v4 = MEMORY[0x1E69DC628];
  title = self->_title;
  image = self->_image;
  identifier = self->_identifier;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __25__WBSAction_makeUIAction__block_invoke;
  v11[3] = &unk_1E8283150;
  v12 = v3;
  v8 = v3;
  v9 = [v4 actionWithTitle:title image:image identifier:identifier handler:v11];
  [v9 setAccessibilityIdentifier:self->_accessibilityIdentifier];

  return v9;
}

+ (id)actionWithTitle:(id)title image:(id)image identifier:(id)identifier handler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  identifierCopy = identifier;
  titleCopy = title;
  v15 = objc_alloc_init(self);
  v16 = [titleCopy copy];

  v17 = *(v15 + 2);
  *(v15 + 2) = v16;

  objc_storeStrong(v15 + 3, image);
  v18 = [identifierCopy copy];

  if (v18)
  {
    v19 = v18;
    uUID = *(v15 + 4);
    *(v15 + 4) = v19;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v22 = *(v15 + 4);
    *(v15 + 4) = uUIDString;
  }

  v23 = _Block_copy(handlerCopy);
  v24 = *(v15 + 1);
  *(v15 + 1) = v23;

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:equalCopy->_identifier];
  }

  return v5;
}

@end