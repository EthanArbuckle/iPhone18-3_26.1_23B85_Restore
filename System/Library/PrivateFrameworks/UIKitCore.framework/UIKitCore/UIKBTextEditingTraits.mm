@interface UIKBTextEditingTraits
+ (UIKBTextEditingTraits)traitsWithResponder:(id)responder keyMaskFlags:(unint64_t)flags;
+ (id)traitsForEditingInteractionWithFirstResponder:(id)responder canRespondBlock:(id)block keyMaskFlags:(unint64_t)flags;
- (UIKBTextEditingTraits)initWithResponder:(id)responder canRespondBlock:(id)block keyMaskFlags:(unint64_t)flags sender:(id)sender;
- (UIResponder)firstResponder;
@end

@implementation UIKBTextEditingTraits

- (UIKBTextEditingTraits)initWithResponder:(id)responder canRespondBlock:(id)block keyMaskFlags:(unint64_t)flags sender:(id)sender
{
  flagsCopy = flags;
  responderCopy = responder;
  blockCopy = block;
  senderCopy = sender;
  v27.receiver = self;
  v27.super_class = UIKBTextEditingTraits;
  v13 = [(UIKBTextEditingTraits *)&v27 init];
  v14 = v13;
  v15 = 0;
  if (responderCopy && v13)
  {
    objc_storeWeak(&v13->_firstResponder, responderCopy);
    if ((flagsCopy & 4) != 0 && [UIResponder conformsToProtocol:&unk_1EFE8B2D0])
    {
      v16 = responderCopy;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v16 selectedTextRange], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "start"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18) && (objc_msgSend(v16, "selectedTextRange"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "start"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "textStylingAtPosition:inDirection:", v20, objc_msgSend(v16, "selectionAffinity")), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v21))
      {
        v14->_supportStyling = 1;
        v22 = [v21 objectForKey:*off_1E70EC918];
        fontDescriptor = [v22 fontDescriptor];
        v14->_isBold = ([fontDescriptor symbolicTraits] & 2) != 0;

        fontDescriptor2 = [v22 fontDescriptor];
        v14->_isItalicized = [fontDescriptor2 symbolicTraits] & 1;

        v25 = [v21 objectForKey:*off_1E70ECAD8];
        v14->_isUnderlined = [v25 BOOLValue];

        v14->_canToggleBoldface = blockCopy[2](blockCopy, sel_toggleBoldface_, 0);
        v14->_canToggleItalics = blockCopy[2](blockCopy, sel_toggleItalics_, 0);
        v14->_canToggleUnderline = blockCopy[2](blockCopy, sel_toggleUnderline_, 0);
      }

      else
      {
        *&v14->_isBold = 0;
        v14->_isUnderlined = 0;
        *&v14->_canToggleBoldface = 0;
      }
    }

    if ((flagsCopy & 2) != 0)
    {
      v14->_canCut = (blockCopy)[2](blockCopy, sel_cut_, senderCopy);
      v14->_canCopy = (blockCopy)[2](blockCopy, sel_copy_, senderCopy);
      v14->_canPaste = (blockCopy)[2](blockCopy, sel_paste_, senderCopy);
    }

    v14->_canMoveCursorLeft = flagsCopy & 1;
    v14->_canMoveCursorRight = flagsCopy & 1;
    v15 = v14;
  }

  return v15;
}

+ (UIKBTextEditingTraits)traitsWithResponder:(id)responder keyMaskFlags:(unint64_t)flags
{
  responderCopy = responder;
  v6 = [UIKBTextEditingTraits alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__UIKBTextEditingTraits_traitsWithResponder_keyMaskFlags___block_invoke;
  v10[3] = &unk_1E7117648;
  v11 = responderCopy;
  v7 = responderCopy;
  v8 = [(UIKBTextEditingTraits *)v6 initWithResponder:v7 canRespondBlock:v10 keyMaskFlags:flags sender:0];

  return v8;
}

+ (id)traitsForEditingInteractionWithFirstResponder:(id)responder canRespondBlock:(id)block keyMaskFlags:(unint64_t)flags
{
  blockCopy = block;
  responderCopy = responder;
  v9 = [[UIKBTextEditingTraits alloc] initWithResponder:responderCopy canRespondBlock:blockCopy keyMaskFlags:flags sender:@"UIEditingInteraction"];

  return v9;
}

- (UIResponder)firstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponder);

  return WeakRetained;
}

@end