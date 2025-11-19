@interface UIKBTextEditingTraits
+ (UIKBTextEditingTraits)traitsWithResponder:(id)a3 keyMaskFlags:(unint64_t)a4;
+ (id)traitsForEditingInteractionWithFirstResponder:(id)a3 canRespondBlock:(id)a4 keyMaskFlags:(unint64_t)a5;
- (UIKBTextEditingTraits)initWithResponder:(id)a3 canRespondBlock:(id)a4 keyMaskFlags:(unint64_t)a5 sender:(id)a6;
- (UIResponder)firstResponder;
@end

@implementation UIKBTextEditingTraits

- (UIKBTextEditingTraits)initWithResponder:(id)a3 canRespondBlock:(id)a4 keyMaskFlags:(unint64_t)a5 sender:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = UIKBTextEditingTraits;
  v13 = [(UIKBTextEditingTraits *)&v27 init];
  v14 = v13;
  v15 = 0;
  if (v10 && v13)
  {
    objc_storeWeak(&v13->_firstResponder, v10);
    if ((v7 & 4) != 0 && [UIResponder conformsToProtocol:&unk_1EFE8B2D0])
    {
      v16 = v10;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v16 selectedTextRange], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "start"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18) && (objc_msgSend(v16, "selectedTextRange"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "start"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "textStylingAtPosition:inDirection:", v20, objc_msgSend(v16, "selectionAffinity")), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v21))
      {
        v14->_supportStyling = 1;
        v22 = [v21 objectForKey:*off_1E70EC918];
        v23 = [v22 fontDescriptor];
        v14->_isBold = ([v23 symbolicTraits] & 2) != 0;

        v24 = [v22 fontDescriptor];
        v14->_isItalicized = [v24 symbolicTraits] & 1;

        v25 = [v21 objectForKey:*off_1E70ECAD8];
        v14->_isUnderlined = [v25 BOOLValue];

        v14->_canToggleBoldface = v11[2](v11, sel_toggleBoldface_, 0);
        v14->_canToggleItalics = v11[2](v11, sel_toggleItalics_, 0);
        v14->_canToggleUnderline = v11[2](v11, sel_toggleUnderline_, 0);
      }

      else
      {
        *&v14->_isBold = 0;
        v14->_isUnderlined = 0;
        *&v14->_canToggleBoldface = 0;
      }
    }

    if ((v7 & 2) != 0)
    {
      v14->_canCut = (v11)[2](v11, sel_cut_, v12);
      v14->_canCopy = (v11)[2](v11, sel_copy_, v12);
      v14->_canPaste = (v11)[2](v11, sel_paste_, v12);
    }

    v14->_canMoveCursorLeft = v7 & 1;
    v14->_canMoveCursorRight = v7 & 1;
    v15 = v14;
  }

  return v15;
}

+ (UIKBTextEditingTraits)traitsWithResponder:(id)a3 keyMaskFlags:(unint64_t)a4
{
  v5 = a3;
  v6 = [UIKBTextEditingTraits alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__UIKBTextEditingTraits_traitsWithResponder_keyMaskFlags___block_invoke;
  v10[3] = &unk_1E7117648;
  v11 = v5;
  v7 = v5;
  v8 = [(UIKBTextEditingTraits *)v6 initWithResponder:v7 canRespondBlock:v10 keyMaskFlags:a4 sender:0];

  return v8;
}

+ (id)traitsForEditingInteractionWithFirstResponder:(id)a3 canRespondBlock:(id)a4 keyMaskFlags:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[UIKBTextEditingTraits alloc] initWithResponder:v8 canRespondBlock:v7 keyMaskFlags:a5 sender:@"UIEditingInteraction"];

  return v9;
}

- (UIResponder)firstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponder);

  return WeakRetained;
}

@end