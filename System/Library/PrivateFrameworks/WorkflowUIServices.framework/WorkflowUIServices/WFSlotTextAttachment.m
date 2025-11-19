@interface WFSlotTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (NSString)description;
- (UIColor)tintColor;
- (UIFont)font;
- (WFSlotTextAttachment)initWithSlotTemplateToken:(id)a3;
- (id)accessibilityLabel;
- (id)adjustedFont;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageForBounds:(CGRect)a3 textContainer:(id)a4 characterIndex:(unint64_t)a5;
- (id)variableName;
- (unint64_t)currentControlState;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)notifyNeedsDisplay;
- (void)removeObserver:(id)a3;
- (void)templateTokenDidChange:(id)a3;
@end

@implementation WFSlotTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  width = a4.size.width;
  v9 = a3;
  v10 = [v9 layoutManager];
  v11 = [(WFSlotTextAttachment *)self surroundingTextFont];
  v12 = v11;
  if (v11)
  {
    [v11 wf_lineHeight];
    v14 = v13 * 0.92;
  }

  else
  {
    v15 = [(WFSlotTextAttachment *)self adjustedFont];
    [v15 wf_lineHeight];
    v14 = v16 * 1.06;
  }

  if ([v10 conformsToProtocol:&unk_1F4853988] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 preferredHeightForDrawingTextAttachment:self atCharacterIndex:a6 withProposedHeight:v14];
    v14 = v17;
  }

  [v9 lineFragmentPadding];
  v19 = v18;
  v20 = [(WFSlotTextAttachment *)self variableName];
  v21 = [(WFSlotTextAttachment *)self token];
  v22 = [v21 icon];
  v23 = [(WFSlotTextAttachment *)self adjustedFont];
  [WFVariablePillView widthForVariableViewWithName:v20 icon:v22 font:v23 height:v14];
  v25 = v24;

  if (v12)
  {
    [v12 capHeight];
    v27 = v26;
  }

  else
  {
    v28 = [(WFSlotTextAttachment *)self font];
    [v28 capHeight];
    v27 = v29;
  }

  v30 = v14 - v27;
  if (v25 >= width + v19 * -2.0)
  {
    v31 = width + v19 * -2.0;
  }

  else
  {
    v31 = v25;
  }

  if (v30 < 0.0)
  {
    v30 = 0.0;
  }

  v32 = v30 * -0.5;

  v33 = 0.0;
  v34 = v32;
  v35 = v31;
  v36 = v14;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)imageForBounds:(CGRect)a3 textContainer:(id)a4 characterIndex:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__WFSlotTextAttachment_imageForBounds_textContainer_characterIndex___block_invoke;
  aBlock[3] = &unk_1E8308258;
  aBlock[4] = self;
  v22 = a3;
  v8 = _Block_copy(aBlock);
  v9 = [(WFSlotTextAttachment *)self token];
  v10 = [v9 icon];

  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [(WFSlotTextAttachment *)self variableName];
    v12 = [(WFSlotTextAttachment *)self adjustedFont];
    v13 = [(WFSlotTextAttachment *)self tintColor];
    v14 = [(WFSlotTextAttachment *)self currentControlState];
    v15 = [(WFSlotTextAttachment *)self token];
    v16 = [v15 isAvailable];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__WFSlotTextAttachment_imageForBounds_textContainer_characterIndex___block_invoke_2;
    v20[3] = &unk_1E8308280;
    v20[4] = self;
    [WFVariablePillDrawer drawVariableForAppIconNamed:v11 icon:v10 font:v12 tint:v13 size:v14 state:v16 isAvailable:width completion:height, v20];

    v17 = [(WFSlotTextAttachment *)self image];

    if (v17)
    {
      [(WFSlotTextAttachment *)self image];
    }

    else
    {
      v8[2](v8);
    }
    v18 = ;
  }

  else
  {

    v18 = v8[2](v8);
  }

  return v18;
}

id __68__WFSlotTextAttachment_imageForBounds_textContainer_characterIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) variableName];
  v3 = [*(a1 + 32) token];
  v4 = [v3 icon];
  v5 = [*(a1 + 32) adjustedFont];
  v6 = [*(a1 + 32) tintColor];
  v7 = [*(a1 + 32) currentControlState];
  v8 = [*(a1 + 32) token];
  v9 = +[WFVariablePillDrawer drawVariableNamed:icon:font:tint:size:state:isAvailable:](WFVariablePillDrawer, "drawVariableNamed:icon:font:tint:size:state:isAvailable:", v2, v4, v5, v6, v7, [v8 isAvailable], *(a1 + 56), *(a1 + 64));

  return v9;
}

void __68__WFSlotTextAttachment_imageForBounds_textContainer_characterIndex___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) image];

  v6 = v7;
  if (v5 != v7)
  {
    [*(a1 + 32) setImage:v7];
    v6 = v7;
    if (a3)
    {
      [*(a1 + 32) notifyNeedsDisplay];
      v6 = v7;
    }
  }
}

- (unint64_t)currentControlState
{
  v2 = self;
  if ([(WFSlotTextAttachment *)v2 isEnabled])
  {
    if ([(WFSlotTextAttachment *)v2 isSelected])
    {
      v3 = 2;
    }

    else if ([(WFSlotTextAttachment *)v2 isHighlighted])
    {
      v3 = 1;
    }

    else if ([(WFSlotTextAttachment *)v2 isEmphasized])
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    v4 = [MEMORY[0x1E69DC888] systemBlueColor];
    v5 = self->_tintColor;
    self->_tintColor = v4;

    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (id)adjustedFont
{
  v3 = [(WFSlotTextAttachment *)self standalone];
  v4 = [(WFSlotTextAttachment *)self font];
  if (!v3)
  {
    v5 = [(WFSlotTextAttachment *)self font];
    [v5 pointSize];
    v7 = [v4 fontWithSize:v6 * 0.9];

    v4 = v7;
  }

  return v4;
}

- (UIFont)font
{
  font = self->_font;
  if (!font)
  {
    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB980]];
    v5 = self->_font;
    self->_font = v4;

    font = self->_font;
  }

  return font;
}

- (id)variableName
{
  v3 = [(WFSlotTextAttachment *)self overrideVariableName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFSlotTextAttachment *)self token];
    v5 = [v6 displayName];
  }

  return v5;
}

- (id)accessibilityLabel
{
  v2 = [(WFSlotTextAttachment *)self token];
  v3 = [v2 displayName];

  return v3;
}

- (void)templateTokenDidChange:(id)a3
{
  objc_storeStrong(&self->_token, a3);

  [(WFSlotTextAttachment *)self notifyNeedsDisplay];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFSlotTextAttachment *)self token];
  v6 = [v4 initWithSlotTemplateToken:v5];

  [v6 setEnabled:{-[WFSlotTextAttachment isEnabled](self, "isEnabled")}];
  [v6 setSelected:{-[WFSlotTextAttachment isSelected](self, "isSelected")}];
  [v6 setHighlighted:{-[WFSlotTextAttachment isHighlighted](self, "isHighlighted")}];
  v7 = [(WFSlotTextAttachment *)self font];
  [v6 setFont:v7];

  v8 = [(WFSlotTextAttachment *)self surroundingTextFont];
  [v6 setSurroundingTextFont:v8];

  v9 = [(WFSlotTextAttachment *)self tintColor];
  [v6 setTintColor:v9];

  v10 = [(WFSlotTextAttachment *)self overrideVariableName];
  [v6 setOverrideVariableName:v10];

  v11 = [(WFSlotTextAttachment *)self containingSlotIdentifier];
  [v6 setContainingSlotIdentifier:v11];

  [v6 setStandalone:{-[WFSlotTextAttachment standalone](self, "standalone")}];
  return v6;
}

- (void)notifyNeedsDisplay
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WFSlotTextAttachment *)self observers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) slotTextAttachmentNeedsDisplay:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTextAttachment *)self observers];
  [v5 removeObject:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTextAttachment *)self observers];
  [v5 addObject:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = WFSlotTextAttachment;
  v4 = [(WFSlotTextAttachment *)&v12 description];
  v5 = [(WFSlotTextAttachment *)self token];
  v6 = [v5 displayName];
  v7 = [(WFSlotTextAttachment *)self token];
  v8 = [v7 isAvailable];
  v9 = @"unavailable";
  if (v8)
  {
    v9 = @"available";
  }

  v10 = [v3 stringWithFormat:@"%@: %@ %@", v4, v6, v9];

  return v10;
}

- (void)dealloc
{
  [(WFSlotTemplateToken *)self->_token removeDelegate:self];
  v3.receiver = self;
  v3.super_class = WFSlotTextAttachment;
  [(WFSlotTextAttachment *)&v3 dealloc];
}

- (WFSlotTextAttachment)initWithSlotTemplateToken:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFSlotTextAttachment.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v7 = objc_opt_new();
  v8 = [(WFSlotTextAttachment *)self initWithData:v7 ofType:0];

  if (v8)
  {
    objc_storeStrong(&v8->_token, a3);
    v8->_enabled = 1;
    v8->_standalone = 0;
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v9;

    [v6 addDelegate:v8];
    v11 = v8;
  }

  return v8;
}

@end