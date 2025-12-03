@interface WFSlotTextAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (NSString)description;
- (UIColor)tintColor;
- (UIFont)font;
- (WFSlotTextAttachment)initWithSlotTemplateToken:(id)token;
- (id)accessibilityLabel;
- (id)adjustedFont;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(unint64_t)index;
- (id)variableName;
- (unint64_t)currentControlState;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)notifyNeedsDisplay;
- (void)removeObserver:(id)observer;
- (void)templateTokenDidChange:(id)change;
@end

@implementation WFSlotTextAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  width = fragment.size.width;
  containerCopy = container;
  layoutManager = [containerCopy layoutManager];
  surroundingTextFont = [(WFSlotTextAttachment *)self surroundingTextFont];
  v12 = surroundingTextFont;
  if (surroundingTextFont)
  {
    [surroundingTextFont wf_lineHeight];
    v14 = v13 * 0.92;
  }

  else
  {
    adjustedFont = [(WFSlotTextAttachment *)self adjustedFont];
    [adjustedFont wf_lineHeight];
    v14 = v16 * 1.06;
  }

  if ([layoutManager conformsToProtocol:&unk_1F4853988] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [layoutManager preferredHeightForDrawingTextAttachment:self atCharacterIndex:index withProposedHeight:v14];
    v14 = v17;
  }

  [containerCopy lineFragmentPadding];
  v19 = v18;
  variableName = [(WFSlotTextAttachment *)self variableName];
  token = [(WFSlotTextAttachment *)self token];
  icon = [token icon];
  adjustedFont2 = [(WFSlotTextAttachment *)self adjustedFont];
  [WFVariablePillView widthForVariableViewWithName:variableName icon:icon font:adjustedFont2 height:v14];
  v25 = v24;

  if (v12)
  {
    [v12 capHeight];
    v27 = v26;
  }

  else
  {
    font = [(WFSlotTextAttachment *)self font];
    [font capHeight];
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

- (id)imageForBounds:(CGRect)bounds textContainer:(id)container characterIndex:(unint64_t)index
{
  height = bounds.size.height;
  width = bounds.size.width;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__WFSlotTextAttachment_imageForBounds_textContainer_characterIndex___block_invoke;
  aBlock[3] = &unk_1E8308258;
  aBlock[4] = self;
  boundsCopy = bounds;
  v8 = _Block_copy(aBlock);
  token = [(WFSlotTextAttachment *)self token];
  icon = [token icon];

  if (icon && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    variableName = [(WFSlotTextAttachment *)self variableName];
    adjustedFont = [(WFSlotTextAttachment *)self adjustedFont];
    tintColor = [(WFSlotTextAttachment *)self tintColor];
    currentControlState = [(WFSlotTextAttachment *)self currentControlState];
    token2 = [(WFSlotTextAttachment *)self token];
    isAvailable = [token2 isAvailable];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__WFSlotTextAttachment_imageForBounds_textContainer_characterIndex___block_invoke_2;
    v20[3] = &unk_1E8308280;
    v20[4] = self;
    [WFVariablePillDrawer drawVariableForAppIconNamed:variableName icon:icon font:adjustedFont tint:tintColor size:currentControlState state:isAvailable isAvailable:width completion:height, v20];

    image = [(WFSlotTextAttachment *)self image];

    if (image)
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
  selfCopy = self;
  if ([(WFSlotTextAttachment *)selfCopy isEnabled])
  {
    if ([(WFSlotTextAttachment *)selfCopy isSelected])
    {
      v3 = 2;
    }

    else if ([(WFSlotTextAttachment *)selfCopy isHighlighted])
    {
      v3 = 1;
    }

    else if ([(WFSlotTextAttachment *)selfCopy isEmphasized])
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
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v5 = self->_tintColor;
    self->_tintColor = systemBlueColor;

    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (id)adjustedFont
{
  standalone = [(WFSlotTextAttachment *)self standalone];
  font = [(WFSlotTextAttachment *)self font];
  if (!standalone)
  {
    font2 = [(WFSlotTextAttachment *)self font];
    [font2 pointSize];
    v7 = [font fontWithSize:v6 * 0.9];

    font = v7;
  }

  return font;
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
  overrideVariableName = [(WFSlotTextAttachment *)self overrideVariableName];
  v4 = overrideVariableName;
  if (overrideVariableName)
  {
    displayName = overrideVariableName;
  }

  else
  {
    token = [(WFSlotTextAttachment *)self token];
    displayName = [token displayName];
  }

  return displayName;
}

- (id)accessibilityLabel
{
  token = [(WFSlotTextAttachment *)self token];
  displayName = [token displayName];

  return displayName;
}

- (void)templateTokenDidChange:(id)change
{
  objc_storeStrong(&self->_token, change);

  [(WFSlotTextAttachment *)self notifyNeedsDisplay];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  token = [(WFSlotTextAttachment *)self token];
  v6 = [v4 initWithSlotTemplateToken:token];

  [v6 setEnabled:{-[WFSlotTextAttachment isEnabled](self, "isEnabled")}];
  [v6 setSelected:{-[WFSlotTextAttachment isSelected](self, "isSelected")}];
  [v6 setHighlighted:{-[WFSlotTextAttachment isHighlighted](self, "isHighlighted")}];
  font = [(WFSlotTextAttachment *)self font];
  [v6 setFont:font];

  surroundingTextFont = [(WFSlotTextAttachment *)self surroundingTextFont];
  [v6 setSurroundingTextFont:surroundingTextFont];

  tintColor = [(WFSlotTextAttachment *)self tintColor];
  [v6 setTintColor:tintColor];

  overrideVariableName = [(WFSlotTextAttachment *)self overrideVariableName];
  [v6 setOverrideVariableName:overrideVariableName];

  containingSlotIdentifier = [(WFSlotTextAttachment *)self containingSlotIdentifier];
  [v6 setContainingSlotIdentifier:containingSlotIdentifier];

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
  observers = [(WFSlotTextAttachment *)self observers];
  v4 = [observers copy];

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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(WFSlotTextAttachment *)self observers];
  [observers removeObject:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(WFSlotTextAttachment *)self observers];
  [observers addObject:observerCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = WFSlotTextAttachment;
  v4 = [(WFSlotTextAttachment *)&v12 description];
  token = [(WFSlotTextAttachment *)self token];
  displayName = [token displayName];
  token2 = [(WFSlotTextAttachment *)self token];
  isAvailable = [token2 isAvailable];
  v9 = @"unavailable";
  if (isAvailable)
  {
    v9 = @"available";
  }

  v10 = [v3 stringWithFormat:@"%@: %@ %@", v4, displayName, v9];

  return v10;
}

- (void)dealloc
{
  [(WFSlotTemplateToken *)self->_token removeDelegate:self];
  v3.receiver = self;
  v3.super_class = WFSlotTextAttachment;
  [(WFSlotTextAttachment *)&v3 dealloc];
}

- (WFSlotTextAttachment)initWithSlotTemplateToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTextAttachment.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v7 = objc_opt_new();
  v8 = [(WFSlotTextAttachment *)self initWithData:v7 ofType:0];

  if (v8)
  {
    objc_storeStrong(&v8->_token, token);
    v8->_enabled = 1;
    v8->_standalone = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable;

    [tokenCopy addDelegate:v8];
    v11 = v8;
  }

  return v8;
}

@end