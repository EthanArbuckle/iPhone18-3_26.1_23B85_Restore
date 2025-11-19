@interface WBSAction
+ (id)actionWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 handler:(id)a6;
- (BOOL)isEqual:(id)a3;
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

+ (id)actionWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 handler:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(a1);
  v16 = [v14 copy];

  v17 = *(v15 + 2);
  *(v15 + 2) = v16;

  objc_storeStrong(v15 + 3, a4);
  v18 = [v13 copy];

  if (v18)
  {
    v19 = v18;
    v20 = *(v15 + 4);
    *(v15 + 4) = v19;
  }

  else
  {
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v20 UUIDString];
    v22 = *(v15 + 4);
    *(v15 + 4) = v21;
  }

  v23 = _Block_copy(v12);
  v24 = *(v15 + 1);
  *(v15 + 1) = v23;

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_identifier isEqualToString:v4->_identifier];
  }

  return v5;
}

@end