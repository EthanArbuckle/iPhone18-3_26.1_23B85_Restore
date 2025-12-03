@interface WFSlotTemplateTextStorage
- (BOOL)slotContainsStrongRTL:(id)l;
- (NSParagraphStyle)paragraphStyle;
- (NSSet)highlightedSlots;
- (NSSet)selectedSlots;
- (NSSet)typingSlots;
- (UIColor)disabledSlotBackgroundColor;
- (UIColor)disabledSlotTitleColor;
- (UIColor)suffixColor;
- (UIColor)textColor;
- (UIColor)tintColor;
- (UIFont)font;
- (UIFont)suffixFont;
- (UIFont)unpopulatedFont;
- (WFSlotTemplateTextStorage)initWithUseCase:(unint64_t)case;
- (_NSRange)characterRangeForSlot:(id)slot includingInsideSpacingOpportunities:(BOOL)opportunities;
- (id)attributedStringForSlot:(id)slot isRTL:(BOOL)l;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)slotAtCharacterIndex:(unint64_t)index effectiveRange:(_NSRange *)range effectiveContentRange:(_NSRange *)contentRange;
- (id)string;
- (id)stringForSlotSpacingOpportunity:(unint64_t)opportunity;
- (unint64_t)slotSpacingOpportunityAtCharacterIndex:(unint64_t)index;
- (void)_updateColorsForSlot:(id)slot inRange:(_NSRange)range;
- (void)beginEditing;
- (void)didBeginTypingInSlot:(id)slot;
- (void)didDeselectSlot:(id)slot;
- (void)didEndTypingInSlot:(id)slot;
- (void)didHighlightSlot:(id)slot;
- (void)didSelectSlot:(id)slot;
- (void)didUnhighlightSlot:(id)slot;
- (void)endEditing;
- (void)enumerateContentInRange:(_NSRange)range usingBlock:(id)block;
- (void)getColorsForSlot:(id)slot titleColor:(id *)color backgroundColor:(id *)backgroundColor;
- (void)regenerateEntireAttributedString;
- (void)replaceAttribute:(id)attribute value:(id)value range:(_NSRange)range;
- (void)replaceAttributeInInanimateText:(id)text value:(id)value;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
- (void)setContents:(id)contents;
- (void)setDisabledSlotTitleColor:(id)color backgroundColor:(id)backgroundColor;
- (void)setDisclosureAttachment:(id)attachment;
- (void)setEnabled:(BOOL)enabled;
- (void)setFont:(id)font;
- (void)setOutputButtonAttachment:(id)attachment;
- (void)setParagraphStyle:(id)style;
- (void)setSuffixColor:(id)color;
- (void)setSuffixFont:(id)font;
- (void)setSuffixString:(id)string;
- (void)setTextColor:(id)color;
- (void)setTintColor:(id)color;
- (void)setUnpopulatedFont:(id)font;
- (void)updateColorsForAllSlots;
- (void)updateColorsForSlot:(id)slot;
@end

@implementation WFSlotTemplateTextStorage

- (void)enumerateContentInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__WFSlotTemplateTextStorage_enumerateContentInRange_usingBlock___block_invoke;
  v9[3] = &unk_1E8307A58;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(WFSlotTemplateTextStorage *)self enumerateAttribute:@"WFSlot" inRange:location options:length usingBlock:0, v9];
}

void __64__WFSlotTemplateTextStorage_enumerateContentInRange_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  if (v17)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (a4)
  {
    v9 = [*(a1 + 32) slotSpacingOpportunityAtCharacterIndex:a3];
    v10 = [*(a1 + 32) slotSpacingOpportunityAtCharacterIndex:a4 + a3 - 1];
    v11 = a4 - (v9 != 0);
    v12 = v10 != 0;
    v13 = v11 - v12;
    if (v11 != v12)
    {
      if (v9)
      {
        ++a3;
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) attributedSubstringFromRange:{a3, v11 - v12}];
      v16 = [v15 string];
      (*(v14 + 16))(v14, v16, a3, v13, a5);
    }
  }
}

- (id)slotAtCharacterIndex:(unint64_t)index effectiveRange:(_NSRange *)range effectiveContentRange:(_NSRange *)contentRange
{
  v9 = [(WFSlotTemplateTextStorage *)self length];
  if (v9)
  {
    if ([(WFSlotTemplateTextStorage *)self length]- 1 >= index)
    {
      v11 = xmmword_1C841E450;
      v9 = [(WFSlotTemplateTextStorage *)self attribute:@"WFSlot" atIndex:index longestEffectiveRange:&v11 inRange:0, [(WFSlotTemplateTextStorage *)self length]];
      if (v9)
      {
        if (range)
        {
          *range = v11;
        }

        if (contentRange)
        {
          *contentRange = vaddq_s64(v11, xmmword_1C841E360);
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (_NSRange)characterRangeForSlot:(id)slot includingInsideSpacingOpportunities:(BOOL)opportunities
{
  opportunitiesCopy = opportunities;
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"slotToFind"}];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_1C843E1FB;
  v23 = xmmword_1C841E370;
  v8 = [(WFSlotTemplateTextStorage *)self length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__WFSlotTemplateTextStorage_characterRangeForSlot_includingInsideSpacingOpportunities___block_invoke;
  v16[3] = &unk_1E8307A30;
  v9 = slotCopy;
  v17 = v9;
  v18 = &v19;
  [(WFSlotTemplateTextStorage *)self enumerateAttribute:@"WFSlot" inRange:0 options:v8 usingBlock:0, v16];
  v10 = v20;
  v11 = v20[4];
  if (opportunitiesCopy)
  {
    v12 = v20[5];
  }

  else
  {
    v11 += 2;
    v12 = v20[5] - 4;
    v20[4] = v11;
    v10[5] = v12;
  }

  _Block_object_dispose(&v19, 8);
  v13 = v11;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

uint64_t __87__WFSlotTemplateTextStorage_characterRangeForSlot_includingInsideSpacingOpportunities___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    v10 = *(*(a1 + 40) + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

- (unint64_t)slotSpacingOpportunityAtCharacterIndex:(unint64_t)index
{
  string = [(WFSlotTemplateTextStorage *)self string];
  v6 = 1;
  v7 = [string substringWithRange:{index, 1}];

  v8 = [(WFSlotTemplateTextStorage *)self stringForSlotSpacingOpportunity:1];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(WFSlotTemplateTextStorage *)self stringForSlotSpacingOpportunity:2];
    v11 = [v7 isEqualToString:v10];

    if (v11)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)stringForSlotSpacingOpportunity:(unint64_t)opportunity
{
  if (opportunity == 1)
  {
    v4 = 145;
LABEL_5:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v4];

    return v5;
  }

  if (opportunity == 2)
  {
    v4 = 146;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_updateColorsForSlot:(id)slot inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10 = 0;
  v11 = 0;
  [(WFSlotTemplateTextStorage *)self getColorsForSlot:slot titleColor:&v11 backgroundColor:&v10];
  v7 = v11;
  v8 = v10;
  v9 = v7;
  [(WFSlotTemplateTextStorage *)self beginEditing];
  [(WFSlotTemplateTextStorage *)self replaceAttribute:*MEMORY[0x1E69DB600] value:v8 range:location, length];
  [(WFSlotTemplateTextStorage *)self replaceAttribute:*MEMORY[0x1E69DB650] value:v9 range:location, length];

  [(WFSlotTemplateTextStorage *)self endEditing];
}

- (void)updateColorsForAllSlots
{
  [(WFSlotTemplateTextStorage *)self beginEditing];
  v3 = [(WFSlotTemplateTextStorage *)self length];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__WFSlotTemplateTextStorage_updateColorsForAllSlots__block_invoke;
  v4[3] = &unk_1E8308230;
  v4[4] = self;
  [(WFSlotTemplateTextStorage *)self enumerateAttribute:@"WFSlot" inRange:0 options:v3 usingBlock:0, v4];
  [(WFSlotTemplateTextStorage *)self endEditing];
}

uint64_t __52__WFSlotTemplateTextStorage_updateColorsForAllSlots__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) _updateColorsForSlot:a2 inRange:{a3, a4}];
  }

  return result;
}

- (void)updateColorsForSlot:(id)slot
{
  slotCopy = slot;
  v5 = [WFSlotTemplateTextStorage characterRangeForSlot:"characterRangeForSlot:includingInsideSpacingOpportunities:" includingInsideSpacingOpportunities:?];
  v7 = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:582 description:@"Tried to update colors for a slot that doesn't exist"];
  }

  [(WFSlotTemplateTextStorage *)self _updateColorsForSlot:slotCopy inRange:v5, v7];
}

- (void)getColorsForSlot:(id)slot titleColor:(id *)color backgroundColor:(id *)backgroundColor
{
  slotCopy = slot;
  highlightedSlots = [(WFSlotTemplateTextStorage *)self highlightedSlots];
  v9 = [highlightedSlots containsObject:slotCopy];

  selectedSlots = [(WFSlotTemplateTextStorage *)self selectedSlots];
  v11 = [selectedSlots containsObject:slotCopy];

  typingSlots = [(WFSlotTemplateTextStorage *)self typingSlots];
  v13 = [typingSlots containsObject:slotCopy];

  if ([(WFSlotTemplateTextStorage *)self isEnabled])
  {
    isEnabled = [slotCopy isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  isInvalid = [slotCopy isInvalid];
  isPopulated = [slotCopy isPopulated];
  tintColor = [(WFSlotTemplateTextStorage *)self tintColor];
  if (v13)
  {
    prefersTypingForSlotFilling = [(WFSlotTemplateTextStorage *)self prefersTypingForSlotFilling];
    v19 = MEMORY[0x1E69DC888];
    if (prefersTypingForSlotFilling && (isInvalid & 1) != 0)
    {
      goto LABEL_7;
    }

    wf_slotTemplateSlotTypingTitleColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotTypingTitleColor];
    disabledSlotBackgroundColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotTypingBackgroundColorForUseCase:{-[WFSlotTemplateTextStorage useCase](self, "useCase")}];
    goto LABEL_19;
  }

  if (v11)
  {
    if (isInvalid)
    {
      wf_slotTemplateSlotTypingTitleColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorSelectedTitleColor];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorSelectedBackgroundColor];
    }

    else
    {
      wf_slotTemplateSlotTypingTitleColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotSelectedTitleColorWithTintColor:tintColor];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotSelectedBackgroundColorWithTintColor:tintColor];
    }

    disabledSlotBackgroundColor = LABEL_11:;
    goto LABEL_19;
  }

  if ((isEnabled & 1) == 0)
  {
    wf_slotTemplateSlotTypingTitleColor = [(WFSlotTemplateTextStorage *)self disabledSlotTitleColor];
    disabledSlotBackgroundColor = [(WFSlotTemplateTextStorage *)self disabledSlotBackgroundColor];
    goto LABEL_19;
  }

  v19 = MEMORY[0x1E69DC888];
  if (!v9)
  {
    if (isInvalid)
    {
      wf_slotTemplateSlotTypingTitleColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorTitleColor];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorBackgroundColor];
    }

    else
    {
      wf_slotTemplateSlotTypingTitleColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotTitleColorWithTintColor:tintColor];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotBackgroundColorWithTintColor:tintColor];
    }

    goto LABEL_11;
  }

  if (isInvalid)
  {
LABEL_7:
    wf_slotTemplateSlotTypingTitleColor = [v19 wf_slotTemplateSlotErrorHighlightedTitleColor];
    disabledSlotBackgroundColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorHighlightedBackgroundColor];
    goto LABEL_19;
  }

  wf_slotTemplateSlotTypingTitleColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotHighlightedTitleColorWithTintColor:tintColor];
  disabledSlotBackgroundColor = [MEMORY[0x1E69DC888] wf_slotTemplateSlotHighlightedBackgroundColorWithTintColor:tintColor];
LABEL_19:
  v22 = disabledSlotBackgroundColor;
  if (isPopulated)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    useCase = [(WFSlotTemplateTextStorage *)self useCase];
    v25 = 0.0;
    if (useCase == 1)
    {
      v25 = 0.5;
    }

    if (!useCase)
    {
      v25 = 0.4;
    }

    clearColor = [wf_slotTemplateSlotTypingTitleColor colorWithAlphaComponent:v25];
  }

  v26 = clearColor;

  wf_slotTemplateSlotTypingTitleColor = v26;
LABEL_28:
  if (color)
  {
    v27 = wf_slotTemplateSlotTypingTitleColor;
    *color = wf_slotTemplateSlotTypingTitleColor;
  }

  if (backgroundColor)
  {
    v28 = v22;
    *backgroundColor = v22;
  }
}

- (id)attributedStringForSlot:(id)slot isRTL:(BOOL)l
{
  lCopy = l;
  v44[3] = *MEMORY[0x1E69E9840];
  slotCopy = slot;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = [(WFSlotTemplateTextStorage *)self stringForSlotSpacingOpportunity:1];
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  [v7 appendAttributedString:v9];

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = 8295;
  if (!lCopy)
  {
    v11 = 8296;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v11];
  v13 = [v10 initWithString:v12];

  v38 = v13;
  [v7 appendAttributedString:v13];
  contentAttributedString = [slotCopy contentAttributedString];
  if ([contentAttributedString length])
  {
    v15 = *MEMORY[0x1E69DB5F8];
    v16 = [contentAttributedString length];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __59__WFSlotTemplateTextStorage_attributedStringForSlot_isRTL___block_invoke;
    v42[3] = &unk_1E8307A08;
    v42[4] = self;
    [contentAttributedString enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v42}];
    goto LABEL_13;
  }

  localizedAttributedPlaceholder = [slotCopy localizedAttributedPlaceholder];
  v18 = [localizedAttributedPlaceholder length];

  if (v18)
  {
    localizedAttributedPlaceholder2 = [slotCopy localizedAttributedPlaceholder];
  }

  else
  {
    localizedPlaceholder = [slotCopy localizedPlaceholder];
    v21 = [localizedPlaceholder length];

    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      localizedPlaceholder2 = [slotCopy localizedPlaceholder];
    }

    else
    {
      localizedName = [slotCopy localizedName];
      v25 = [localizedName length];

      if (!v25)
      {
        goto LABEL_13;
      }

      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      localizedPlaceholder2 = [slotCopy localizedName];
    }

    v26 = localizedPlaceholder2;
    localizedAttributedPlaceholder2 = [v22 initWithString:localizedPlaceholder2];
  }

  contentAttributedString = localizedAttributedPlaceholder2;
LABEL_13:
  if ([contentAttributedString length])
  {
    [v7 appendAttributedString:contentAttributedString];
  }

  v27 = objc_alloc(MEMORY[0x1E696AAB0]);
  8297 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 8297];
  v29 = [v27 initWithString:8297];

  [v7 appendAttributedString:v29];
  v39 = v8;
  v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  [v7 appendAttributedString:v30];

  v40 = 0;
  v41 = 0;
  [(WFSlotTemplateTextStorage *)self getColorsForSlot:slotCopy titleColor:&v41 backgroundColor:&v40];
  v31 = v41;
  v32 = v40;
  v43[0] = *MEMORY[0x1E69DB648];
  if ([slotCopy isPopulated])
  {
    [(WFSlotTemplateTextStorage *)self font];
  }

  else
  {
    [(WFSlotTemplateTextStorage *)self unpopulatedFont];
  }
  v33 = ;
  v44[0] = v33;
  v43[1] = *MEMORY[0x1E69DB688];
  paragraphStyle = [(WFSlotTemplateTextStorage *)self paragraphStyle];
  v43[2] = @"WFSlot";
  v44[1] = paragraphStyle;
  v44[2] = slotCopy;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v36 = [v35 mutableCopy];

  if (v31)
  {
    [v36 setObject:v31 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  }

  if (v32)
  {
    [v36 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69DB600]];
  }

  [v7 addAttributes:v36 range:{0, objc_msgSend(v7, "length")}];

  return v7;
}

void __59__WFSlotTemplateTextStorage_attributedStringForSlot_isRTL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v17 = v3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = *(a1 + 32);
    if (isKindOfClass)
    {
      v6 = v17;
      v7 = [v5 font];
      [v6 setFontForAlignment:v7];
    }

    else
    {
      v7 = [v5 font];
      [v7 capHeight];
      v9 = v8;
      v6 = [v17 image];
      [v6 size];
      v11 = (v9 - v10) * 0.5;
      v12 = [v17 image];
      [v12 size];
      v14 = v13;
      v15 = [v17 image];
      [v15 size];
      [v17 setBounds:{0.0, v11, v14, v16}];
    }

    v3 = v17;
  }
}

- (void)replaceAttributeInInanimateText:(id)text value:(id)value
{
  textCopy = text;
  valueCopy = value;
  [(WFSlotTemplateTextStorage *)self beginEditing];
  v8 = [(WFSlotTemplateTextStorage *)self length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__WFSlotTemplateTextStorage_replaceAttributeInInanimateText_value___block_invoke;
  v11[3] = &unk_1E83079E0;
  v11[4] = self;
  v12 = textCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = textCopy;
  [(WFSlotTemplateTextStorage *)self enumerateAttributesInRange:0 options:v8 usingBlock:0, v11];
  [(WFSlotTemplateTextStorage *)self endEditing];
}

void __67__WFSlotTemplateTextStorage_replaceAttributeInInanimateText_value___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKey:@"WFSlot"];

  if (!v7)
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];

    [v8 replaceAttribute:v9 value:v10 range:{a3, a4}];
  }
}

- (void)replaceAttribute:(id)attribute value:(id)value range:(_NSRange)range
{
  if (value)
  {
    [(WFSlotTemplateTextStorage *)self addAttribute:attribute value:value range:range.location, range.length];
  }

  else
  {
    [(WFSlotTemplateTextStorage *)self removeAttribute:attribute range:range.location, range.length];
  }
}

- (void)regenerateEntireAttributedString
{
  v48[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v42 = *MEMORY[0x1E69DB650];
  v47[0] = *MEMORY[0x1E69DB650];
  textColor = [(WFSlotTemplateTextStorage *)self textColor];
  v48[0] = textColor;
  v41 = *MEMORY[0x1E69DB648];
  v47[1] = *MEMORY[0x1E69DB648];
  font = [(WFSlotTemplateTextStorage *)self font];
  v48[1] = font;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v43 = [(WFSlotTemplateTextStorage *)self stringForSlotSpacingOpportunity:2];
  v7 = 0x1E696A000uLL;
  if (![contents count])
  {
    v17 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = [contents objectAtIndexedSubscript:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      v8 |= [v11 wf_hasStrongRTLCharacter];
      v12 = [objc_alloc(*(v7 + 2736)) initWithString:v11 attributes:v44];

      [v3 appendAttributedString:v12];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      v12 = v10;
      v13 = [(WFSlotTemplateTextStorage *)self slotContainsStrongRTL:v12];
      if (v9)
      {
        v14 = [objc_alloc(*(v7 + 2736)) initWithString:v43];
        [v3 appendAttributedString:v14];

        v7 = 0x1E696A000uLL;
      }

      v8 |= v13;
      v15 = [(WFSlotTemplateTextStorage *)self attributedStringForSlot:v12 isRTL:v8 & 1];
      [v3 appendAttributedString:v15];
      if (v9 < [contents count] - 1)
      {
        v16 = [objc_alloc(*(v7 + 2736)) initWithString:v43];
        [v3 appendAttributedString:v16];

        v7 = 0x1E696A000;
      }
    }

LABEL_12:
    ++v9;
  }

  while (v9 < [contents count]);
  if (v8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

LABEL_17:
  disclosureAttachment = [(WFSlotTemplateTextStorage *)self disclosureAttachment];
  if (disclosureAttachment)
  {
    v19 = objc_alloc(*(v7 + 2736));
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 160];
    v21 = [v19 initWithString:v20];

    [v3 appendAttributedString:v21];
    v22 = [*(v7 + 2736) attributedStringWithAttachment:disclosureAttachment];
    [v3 appendAttributedString:v22];
  }

  outputButtonAttachment = [(WFSlotTemplateTextStorage *)self outputButtonAttachment];
  if (outputButtonAttachment)
  {
    v24 = objc_alloc(*(v7 + 2736));
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 160];
    v26 = [v24 initWithString:v25];

    [v3 appendAttributedString:v26];
    v27 = [*(v7 + 2736) attributedStringWithAttachment:outputButtonAttachment];
    [v3 appendAttributedString:v27];
  }

  suffixString = [(WFSlotTemplateTextStorage *)self suffixString];
  v29 = [suffixString length];

  if (v29)
  {
    v45[0] = v42;
    suffixColor = [(WFSlotTemplateTextStorage *)self suffixColor];
    v45[1] = v41;
    v46[0] = suffixColor;
    suffixFont = [(WFSlotTemplateTextStorage *)self suffixFont];
    v46[1] = suffixFont;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v33 = v32 = v7;

    v34 = objc_alloc(*(v32 + 2736));
    suffixString2 = [(WFSlotTemplateTextStorage *)self suffixString];
    v36 = [v34 initWithString:suffixString2 attributes:v33];

    [v3 appendAttributedString:v36];
  }

  self->_contentsTextAlignment = v17;
  paragraphStyle = [(WFSlotTemplateTextStorage *)self paragraphStyle];
  alignment = [paragraphStyle alignment];

  if (alignment == 4)
  {
    paragraphStyle2 = [(WFSlotTemplateTextStorage *)self paragraphStyle];
    v40 = [paragraphStyle2 mutableCopy];

    [v40 setAlignment:self->_contentsTextAlignment];
    [v3 addAttribute:*MEMORY[0x1E69DB688] value:v40 range:{0, objc_msgSend(v3, "length")}];
  }

  [(WFSlotTemplateTextStorage *)self setAttributedString:v3];
}

- (BOOL)slotContainsStrongRTL:(id)l
{
  lCopy = l;
  contentAttributedString = [lCopy contentAttributedString];
  string = [contentAttributedString string];

  if (![string length])
  {
    localizedPlaceholder = [lCopy localizedPlaceholder];
    v7 = localizedPlaceholder;
    if (localizedPlaceholder)
    {
      localizedName = localizedPlaceholder;
    }

    else
    {
      localizedName = [lCopy localizedName];
    }

    v9 = localizedName;

    string = v9;
  }

  wf_hasStrongRTLCharacter = [string wf_hasStrongRTLCharacter];

  return wf_hasStrongRTLCharacter;
}

- (void)didEndTypingInSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [contents containsObject:slotCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:333 description:@"Slot must be a member of the contents array"];
  }

  mutableTypingSlots = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  [mutableTypingSlots removeObject:slotCopy];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:slotCopy];
}

- (void)didBeginTypingInSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [contents containsObject:slotCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:326 description:@"Slot must be a member of the contents array"];
  }

  mutableTypingSlots = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  [mutableTypingSlots addObject:slotCopy];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:slotCopy];
}

- (NSSet)typingSlots
{
  mutableTypingSlots = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  v3 = [mutableTypingSlots copy];

  return v3;
}

- (void)didDeselectSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [contents containsObject:slotCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:313 description:@"Slot must be a member of the contents array"];
  }

  mutableSelectedSlots = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  [mutableSelectedSlots removeObject:slotCopy];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:slotCopy];
}

- (void)didSelectSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [contents containsObject:slotCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:306 description:@"Slot must be a member of the contents array"];
  }

  mutableSelectedSlots = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  [mutableSelectedSlots addObject:slotCopy];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:slotCopy];
}

- (NSSet)selectedSlots
{
  mutableSelectedSlots = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  v3 = [mutableSelectedSlots copy];

  return v3;
}

- (void)didUnhighlightSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [contents containsObject:slotCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:293 description:@"Slot must be a member of the contents array"];
  }

  mutableHighlightedSlots = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  [mutableHighlightedSlots removeObject:slotCopy];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:slotCopy];
}

- (void)didHighlightSlot:(id)slot
{
  slotCopy = slot;
  if (!slotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  contents = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [contents containsObject:slotCopy];

  if ((v6 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:286 description:@"Slot must be a member of the contents array"];
  }

  mutableHighlightedSlots = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  [mutableHighlightedSlots addObject:slotCopy];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:slotCopy];
}

- (NSSet)highlightedSlots
{
  mutableHighlightedSlots = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  v3 = [mutableHighlightedSlots copy];

  return v3;
}

- (void)setContents:(id)contents
{
  v20 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [contentsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(contentsCopy);
        }

        if (([*(*(&v15 + 1) + 8 * v9) conformsToProtocol:&unk_1F48556C0] & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:268 description:@"The contents array may only contain NSString and WFSlotTemplateSlot objects."];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [contentsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (contentsCopy)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:contentsCopy copyItems:1];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_contents, v11);
  if (contentsCopy)
  {
  }

  mutableHighlightedSlots = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  [mutableHighlightedSlots removeAllObjects];

  mutableSelectedSlots = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  [mutableSelectedSlots removeAllObjects];

  mutableTypingSlots = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  [mutableTypingSlots removeAllObjects];

  [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
}

- (void)setDisabledSlotTitleColor:(id)color backgroundColor:(id)backgroundColor
{
  v21 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  objc_storeStrong(&self->_disabledSlotTitleColor, color);
  objc_storeStrong(&self->_disabledSlotBackgroundColor, backgroundColor);
  if ([(WFSlotTemplateTextStorage *)self isEnabled])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contents = [(WFSlotTemplateTextStorage *)self contents];
    v10 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(contents);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            if (([v15 isEnabled] & 1) == 0)
            {
              [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v15];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    [(WFSlotTemplateTextStorage *)self updateColorsForAllSlots];
  }
}

- (UIColor)disabledSlotBackgroundColor
{
  disabledSlotBackgroundColor = self->_disabledSlotBackgroundColor;
  if (!disabledSlotBackgroundColor)
  {
    v4 = [MEMORY[0x1E69E09E0] colorWithSystemColor:14];
    v5 = [v4 colorWithAlphaComponent:0.100000001];
    platformColor = [v5 platformColor];
    v7 = self->_disabledSlotBackgroundColor;
    self->_disabledSlotBackgroundColor = platformColor;

    disabledSlotBackgroundColor = self->_disabledSlotBackgroundColor;
  }

  return disabledSlotBackgroundColor;
}

- (UIColor)disabledSlotTitleColor
{
  disabledSlotTitleColor = self->_disabledSlotTitleColor;
  if (!disabledSlotTitleColor)
  {
    wf_labelColor = [MEMORY[0x1E69DC888] wf_labelColor];
    v5 = self->_disabledSlotTitleColor;
    self->_disabledSlotTitleColor = wf_labelColor;

    disabledSlotTitleColor = self->_disabledSlotTitleColor;
  }

  return disabledSlotTitleColor;
}

- (void)setSuffixString:(id)string
{
  stringCopy = string;
  if (([stringCopy isEqualToString:self->_suffixString] & 1) == 0)
  {
    objc_storeStrong(&self->_suffixString, string);
    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setOutputButtonAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (self->_outputButtonAttachment != attachmentCopy)
  {
    v6 = attachmentCopy;
    objc_storeStrong(&self->_outputButtonAttachment, attachment);
    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
    attachmentCopy = v6;
  }
}

- (void)setDisclosureAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (self->_disclosureAttachment != attachmentCopy)
  {
    v6 = attachmentCopy;
    objc_storeStrong(&self->_disclosureAttachment, attachment);
    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
    attachmentCopy = v6;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(WFSlotTemplateTextStorage *)self updateColorsForAllSlots];
  }
}

- (void)setParagraphStyle:(id)style
{
  styleCopy = style;
  paragraphStyle = [(WFSlotTemplateTextStorage *)self paragraphStyle];
  v6 = [styleCopy isEqual:paragraphStyle];

  v7 = [styleCopy copy];
  paragraphStyle = self->_paragraphStyle;
  self->_paragraphStyle = v7;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setSuffixColor:(id)color
{
  colorCopy = color;
  suffixColor = [(WFSlotTemplateTextStorage *)self suffixColor];
  v6 = [(UIColor *)colorCopy isEqual:suffixColor];

  suffixColor = self->_suffixColor;
  self->_suffixColor = colorCopy;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  tintColor = [(WFSlotTemplateTextStorage *)self tintColor];
  v6 = [(UIColor *)colorCopy isEqual:tintColor];

  tintColor = self->_tintColor;
  self->_tintColor = colorCopy;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self updateColorsForAllSlots];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textColor = [(WFSlotTemplateTextStorage *)self textColor];
  v6 = [(UIColor *)colorCopy isEqual:textColor];

  textColor = self->_textColor;
  self->_textColor = colorCopy;

  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x1E69DB650];
    textColor2 = [(WFSlotTemplateTextStorage *)self textColor];
    [(WFSlotTemplateTextStorage *)self replaceAttributeInInanimateText:v8 value:textColor2];
  }
}

- (void)setSuffixFont:(id)font
{
  fontCopy = font;
  suffixFont = [(WFSlotTemplateTextStorage *)self suffixFont];
  v6 = [(UIFont *)fontCopy isEqual:suffixFont];

  suffixFont = self->_suffixFont;
  self->_suffixFont = fontCopy;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setUnpopulatedFont:(id)font
{
  fontCopy = font;
  unpopulatedFont = [(WFSlotTemplateTextStorage *)self unpopulatedFont];
  v7 = [fontCopy isEqual:unpopulatedFont];

  objc_storeStrong(&self->_unpopulatedFont, font);
  if ((v7 & 1) == 0)
  {
    v8 = [(WFSlotTemplateTextStorage *)self length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__WFSlotTemplateTextStorage_setUnpopulatedFont___block_invoke;
    v9[3] = &unk_1E8308230;
    v9[4] = self;
    [(WFSlotTemplateTextStorage *)self enumerateAttribute:@"WFSlot" inRange:0 options:v8 usingBlock:0, v9];
  }
}

void __48__WFSlotTemplateTextStorage_setUnpopulatedFont___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (([a2 isPopulated] & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x1E69DB648];
    v9 = [v7 unpopulatedFont];
    [v7 addAttribute:v8 value:v9 range:{a3, a4}];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(WFSlotTemplateTextStorage *)self font];
  v6 = [(UIFont *)fontCopy isEqual:font];

  font = self->_font;
  self->_font = fontCopy;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (NSParagraphStyle)paragraphStyle
{
  paragraphStyle = self->_paragraphStyle;
  if (!paragraphStyle)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v5 = self->_paragraphStyle;
    self->_paragraphStyle = defaultParagraphStyle;

    paragraphStyle = self->_paragraphStyle;
  }

  return paragraphStyle;
}

- (UIColor)suffixColor
{
  suffixColor = self->_suffixColor;
  if (suffixColor)
  {
    textColor = suffixColor;
  }

  else
  {
    textColor = [(WFSlotTemplateTextStorage *)self textColor];
  }

  return textColor;
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    wf_systemBlueColor = [MEMORY[0x1E69DC888] wf_systemBlueColor];
    v5 = self->_tintColor;
    self->_tintColor = wf_systemBlueColor;

    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (UIColor)textColor
{
  textColor = self->_textColor;
  if (!textColor)
  {
    wf_labelColor = [MEMORY[0x1E69DC888] wf_labelColor];
    v5 = self->_textColor;
    self->_textColor = wf_labelColor;

    textColor = self->_textColor;
  }

  return textColor;
}

- (UIFont)suffixFont
{
  suffixFont = self->_suffixFont;
  if (suffixFont)
  {
    font = suffixFont;
  }

  else
  {
    font = [(WFSlotTemplateTextStorage *)self font];
  }

  return font;
}

- (UIFont)unpopulatedFont
{
  unpopulatedFont = self->_unpopulatedFont;
  if (unpopulatedFont)
  {
    font = unpopulatedFont;
  }

  else
  {
    font = [(WFSlotTemplateTextStorage *)self font];
  }

  return font;
}

- (UIFont)font
{
  font = self->_font;
  if (!font)
  {
    v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = self->_font;
    self->_font = v4;

    font = self->_font;
  }

  return font;
}

- (void)endEditing
{
  v4.receiver = self;
  v4.super_class = WFSlotTemplateTextStorage;
  [(WFSlotTemplateTextStorage *)&v4 endEditing];
  if ([(WFSlotTemplateTextStorage *)self editingLevel])
  {
    [(WFSlotTemplateTextStorage *)self setEditingLevel:[(WFSlotTemplateTextStorage *)self editingLevel]- 1];
    if (![(WFSlotTemplateTextStorage *)self editingLevel])
    {
      delegate = [(WFSlotTemplateTextStorage *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate slotTemplateStorageDidInvalidateDisplay:self];
      }
    }
  }
}

- (void)beginEditing
{
  [(WFSlotTemplateTextStorage *)self setEditingLevel:[(WFSlotTemplateTextStorage *)self editingLevel]+ 1];
  v3.receiver = self;
  v3.super_class = WFSlotTemplateTextStorage;
  [(WFSlotTemplateTextStorage *)&v3 beginEditing];
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attributesCopy = attributes;
  textStorage = [(WFSlotTemplateTextStorage *)self textStorage];
  [textStorage setAttributes:attributesCopy range:{location, length}];

  [(WFSlotTemplateTextStorage *)self edited:1 range:location changeInLength:length, 0];
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  textStorage = [(WFSlotTemplateTextStorage *)self textStorage];
  [textStorage replaceCharactersInRange:location withString:{length, stringCopy}];

  v9 = [stringCopy length];

  [(WFSlotTemplateTextStorage *)self edited:2 range:location changeInLength:length, v9 - length];
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  textStorage = [(WFSlotTemplateTextStorage *)self textStorage];
  v7 = [textStorage attributesAtIndex:index effectiveRange:range];

  return v7;
}

- (id)string
{
  textStorage = [(WFSlotTemplateTextStorage *)self textStorage];
  string = [textStorage string];

  return string;
}

- (WFSlotTemplateTextStorage)initWithUseCase:(unint64_t)case
{
  v16.receiver = self;
  v16.super_class = WFSlotTemplateTextStorage;
  v4 = [(WFSlotTemplateTextStorage *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_useCase = case;
    v6 = objc_alloc_init(MEMORY[0x1E69DB850]);
    textStorage = v5->_textStorage;
    v5->_textStorage = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableHighlightedSlots = v5->_mutableHighlightedSlots;
    v5->_mutableHighlightedSlots = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableSelectedSlots = v5->_mutableSelectedSlots;
    v5->_mutableSelectedSlots = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableTypingSlots = v5->_mutableTypingSlots;
    v5->_mutableTypingSlots = v12;

    v5->_contentsTextAlignment = 4;
    v14 = v5;
  }

  return v5;
}

@end