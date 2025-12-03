@interface _UITextAttachmentInteractionHandler
- (_UITextAttachmentInteractionHandler)initWithAttachmentItem:(id)item textContentView:(id)view;
- (id)_defaultMenuForInteractableItem;
@end

@implementation _UITextAttachmentInteractionHandler

- (_UITextAttachmentInteractionHandler)initWithAttachmentItem:(id)item textContentView:(id)view
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = _UITextAttachmentInteractionHandler;
  v7 = [(_UITextItemInteractionHandler *)&v11 initWithItem:itemCopy textContentView:view];
  if (v7)
  {
    attachment = [itemCopy attachment];
    textAttachment = v7->_textAttachment;
    v7->_textAttachment = attachment;
  }

  return v7;
}

- (id)_defaultMenuForInteractableItem
{
  v19[2] = *MEMORY[0x1E69E9840];
  image = [(NSTextAttachment *)self->_textAttachment image];
  if (image)
  {
    v14 = _UIKitBundle();
    v13 = [v14 localizedStringForKey:@"Copy Image" value:@"Copy Image" table:@"Localizable"];
    v3 = [UIImage systemImageNamed:@"doc.on.doc"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70___UITextAttachmentInteractionHandler__defaultMenuForInteractableItem__block_invoke;
    v17[3] = &unk_1E70F4708;
    v4 = image;
    v18 = v4;
    v5 = [UIAction actionWithTitle:v13 image:v3 identifier:0 handler:v17];
    v19[0] = v5;
    v6 = _UIKitBundle();
    v7 = [v6 localizedStringForKey:@"Save to Camera Roll" value:@"Save to Camera Roll" table:@"Localizable"];
    v8 = [UIImage systemImageNamed:@"square.and.arrow.down"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70___UITextAttachmentInteractionHandler__defaultMenuForInteractableItem__block_invoke_2;
    v15[3] = &unk_1E70F4708;
    v16 = v4;
    v9 = [UIAction actionWithTitle:v7 image:v8 identifier:0 handler:v15];
    v19[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v11 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:@"UITextItemDefaultMenuIdentifier" options:0 children:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end