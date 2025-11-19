@interface WFSlotTemplateTextStorage
- (BOOL)slotContainsStrongRTL:(id)a3;
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
- (WFSlotTemplateTextStorage)initWithUseCase:(unint64_t)a3;
- (_NSRange)characterRangeForSlot:(id)a3 includingInsideSpacingOpportunities:(BOOL)a4;
- (id)attributedStringForSlot:(id)a3 isRTL:(BOOL)a4;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)slotAtCharacterIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4 effectiveContentRange:(_NSRange *)a5;
- (id)string;
- (id)stringForSlotSpacingOpportunity:(unint64_t)a3;
- (unint64_t)slotSpacingOpportunityAtCharacterIndex:(unint64_t)a3;
- (void)_updateColorsForSlot:(id)a3 inRange:(_NSRange)a4;
- (void)beginEditing;
- (void)didBeginTypingInSlot:(id)a3;
- (void)didDeselectSlot:(id)a3;
- (void)didEndTypingInSlot:(id)a3;
- (void)didHighlightSlot:(id)a3;
- (void)didSelectSlot:(id)a3;
- (void)didUnhighlightSlot:(id)a3;
- (void)endEditing;
- (void)enumerateContentInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)getColorsForSlot:(id)a3 titleColor:(id *)a4 backgroundColor:(id *)a5;
- (void)regenerateEntireAttributedString;
- (void)replaceAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5;
- (void)replaceAttributeInInanimateText:(id)a3 value:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
- (void)setContents:(id)a3;
- (void)setDisabledSlotTitleColor:(id)a3 backgroundColor:(id)a4;
- (void)setDisclosureAttachment:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setOutputButtonAttachment:(id)a3;
- (void)setParagraphStyle:(id)a3;
- (void)setSuffixColor:(id)a3;
- (void)setSuffixFont:(id)a3;
- (void)setSuffixString:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setUnpopulatedFont:(id)a3;
- (void)updateColorsForAllSlots;
- (void)updateColorsForSlot:(id)a3;
@end

@implementation WFSlotTemplateTextStorage

- (void)enumerateContentInRange:(_NSRange)a3 usingBlock:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__WFSlotTemplateTextStorage_enumerateContentInRange_usingBlock___block_invoke;
  v9[3] = &unk_1E8307A58;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
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

- (id)slotAtCharacterIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4 effectiveContentRange:(_NSRange *)a5
{
  v9 = [(WFSlotTemplateTextStorage *)self length];
  if (v9)
  {
    if ([(WFSlotTemplateTextStorage *)self length]- 1 >= a3)
    {
      v11 = xmmword_1C841E450;
      v9 = [(WFSlotTemplateTextStorage *)self attribute:@"WFSlot" atIndex:a3 longestEffectiveRange:&v11 inRange:0, [(WFSlotTemplateTextStorage *)self length]];
      if (v9)
      {
        if (a4)
        {
          *a4 = v11;
        }

        if (a5)
        {
          *a5 = vaddq_s64(v11, xmmword_1C841E360);
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

- (_NSRange)characterRangeForSlot:(id)a3 includingInsideSpacingOpportunities:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"slotToFind"}];
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
  v9 = v7;
  v17 = v9;
  v18 = &v19;
  [(WFSlotTemplateTextStorage *)self enumerateAttribute:@"WFSlot" inRange:0 options:v8 usingBlock:0, v16];
  v10 = v20;
  v11 = v20[4];
  if (v4)
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

- (unint64_t)slotSpacingOpportunityAtCharacterIndex:(unint64_t)a3
{
  v5 = [(WFSlotTemplateTextStorage *)self string];
  v6 = 1;
  v7 = [v5 substringWithRange:{a3, 1}];

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

- (id)stringForSlotSpacingOpportunity:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = 145;
LABEL_5:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v4];

    return v5;
  }

  if (a3 == 2)
  {
    v4 = 146;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_updateColorsForSlot:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v10 = 0;
  v11 = 0;
  [(WFSlotTemplateTextStorage *)self getColorsForSlot:a3 titleColor:&v11 backgroundColor:&v10];
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

- (void)updateColorsForSlot:(id)a3
{
  v9 = a3;
  v5 = [WFSlotTemplateTextStorage characterRangeForSlot:"characterRangeForSlot:includingInsideSpacingOpportunities:" includingInsideSpacingOpportunities:?];
  v7 = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:582 description:@"Tried to update colors for a slot that doesn't exist"];
  }

  [(WFSlotTemplateTextStorage *)self _updateColorsForSlot:v9 inRange:v5, v7];
}

- (void)getColorsForSlot:(id)a3 titleColor:(id *)a4 backgroundColor:(id *)a5
{
  v29 = a3;
  v8 = [(WFSlotTemplateTextStorage *)self highlightedSlots];
  v9 = [v8 containsObject:v29];

  v10 = [(WFSlotTemplateTextStorage *)self selectedSlots];
  v11 = [v10 containsObject:v29];

  v12 = [(WFSlotTemplateTextStorage *)self typingSlots];
  v13 = [v12 containsObject:v29];

  if ([(WFSlotTemplateTextStorage *)self isEnabled])
  {
    v14 = [v29 isEnabled];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v29 isInvalid];
  v16 = [v29 isPopulated];
  v17 = [(WFSlotTemplateTextStorage *)self tintColor];
  if (v13)
  {
    v18 = [(WFSlotTemplateTextStorage *)self prefersTypingForSlotFilling];
    v19 = MEMORY[0x1E69DC888];
    if (v18 && (v15 & 1) != 0)
    {
      goto LABEL_7;
    }

    v20 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotTypingTitleColor];
    v21 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotTypingBackgroundColorForUseCase:{-[WFSlotTemplateTextStorage useCase](self, "useCase")}];
    goto LABEL_19;
  }

  if (v11)
  {
    if (v15)
    {
      v20 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorSelectedTitleColor];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorSelectedBackgroundColor];
    }

    else
    {
      v20 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotSelectedTitleColorWithTintColor:v17];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotSelectedBackgroundColorWithTintColor:v17];
    }

    v21 = LABEL_11:;
    goto LABEL_19;
  }

  if ((v14 & 1) == 0)
  {
    v20 = [(WFSlotTemplateTextStorage *)self disabledSlotTitleColor];
    v21 = [(WFSlotTemplateTextStorage *)self disabledSlotBackgroundColor];
    goto LABEL_19;
  }

  v19 = MEMORY[0x1E69DC888];
  if (!v9)
  {
    if (v15)
    {
      v20 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorTitleColor];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorBackgroundColor];
    }

    else
    {
      v20 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotTitleColorWithTintColor:v17];
      [MEMORY[0x1E69DC888] wf_slotTemplateSlotBackgroundColorWithTintColor:v17];
    }

    goto LABEL_11;
  }

  if (v15)
  {
LABEL_7:
    v20 = [v19 wf_slotTemplateSlotErrorHighlightedTitleColor];
    v21 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotErrorHighlightedBackgroundColor];
    goto LABEL_19;
  }

  v20 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotHighlightedTitleColorWithTintColor:v17];
  v21 = [MEMORY[0x1E69DC888] wf_slotTemplateSlotHighlightedBackgroundColorWithTintColor:v17];
LABEL_19:
  v22 = v21;
  if (v16)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    v23 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v24 = [(WFSlotTemplateTextStorage *)self useCase];
    v25 = 0.0;
    if (v24 == 1)
    {
      v25 = 0.5;
    }

    if (!v24)
    {
      v25 = 0.4;
    }

    v23 = [v20 colorWithAlphaComponent:v25];
  }

  v26 = v23;

  v20 = v26;
LABEL_28:
  if (a4)
  {
    v27 = v20;
    *a4 = v20;
  }

  if (a5)
  {
    v28 = v22;
    *a5 = v22;
  }
}

- (id)attributedStringForSlot:(id)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v44[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = [(WFSlotTemplateTextStorage *)self stringForSlotSpacingOpportunity:1];
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  [v7 appendAttributedString:v9];

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = 8295;
  if (!v4)
  {
    v11 = 8296;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v11];
  v13 = [v10 initWithString:v12];

  v38 = v13;
  [v7 appendAttributedString:v13];
  v14 = [v6 contentAttributedString];
  if ([v14 length])
  {
    v15 = *MEMORY[0x1E69DB5F8];
    v16 = [v14 length];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __59__WFSlotTemplateTextStorage_attributedStringForSlot_isRTL___block_invoke;
    v42[3] = &unk_1E8307A08;
    v42[4] = self;
    [v14 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v42}];
    goto LABEL_13;
  }

  v17 = [v6 localizedAttributedPlaceholder];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v6 localizedAttributedPlaceholder];
  }

  else
  {
    v20 = [v6 localizedPlaceholder];
    v21 = [v20 length];

    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = [v6 localizedPlaceholder];
    }

    else
    {
      v24 = [v6 localizedName];
      v25 = [v24 length];

      if (!v25)
      {
        goto LABEL_13;
      }

      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = [v6 localizedName];
    }

    v26 = v23;
    v19 = [v22 initWithString:v23];
  }

  v14 = v19;
LABEL_13:
  if ([v14 length])
  {
    [v7 appendAttributedString:v14];
  }

  v27 = objc_alloc(MEMORY[0x1E696AAB0]);
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 8297];
  v29 = [v27 initWithString:v28];

  [v7 appendAttributedString:v29];
  v39 = v8;
  v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
  [v7 appendAttributedString:v30];

  v40 = 0;
  v41 = 0;
  [(WFSlotTemplateTextStorage *)self getColorsForSlot:v6 titleColor:&v41 backgroundColor:&v40];
  v31 = v41;
  v32 = v40;
  v43[0] = *MEMORY[0x1E69DB648];
  if ([v6 isPopulated])
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
  v34 = [(WFSlotTemplateTextStorage *)self paragraphStyle];
  v43[2] = @"WFSlot";
  v44[1] = v34;
  v44[2] = v6;
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

- (void)replaceAttributeInInanimateText:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WFSlotTemplateTextStorage *)self beginEditing];
  v8 = [(WFSlotTemplateTextStorage *)self length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__WFSlotTemplateTextStorage_replaceAttributeInInanimateText_value___block_invoke;
  v11[3] = &unk_1E83079E0;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)replaceAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5
{
  if (a4)
  {
    [(WFSlotTemplateTextStorage *)self addAttribute:a3 value:a4 range:a5.location, a5.length];
  }

  else
  {
    [(WFSlotTemplateTextStorage *)self removeAttribute:a3 range:a5.location, a5.length];
  }
}

- (void)regenerateEntireAttributedString
{
  v48[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v42 = *MEMORY[0x1E69DB650];
  v47[0] = *MEMORY[0x1E69DB650];
  v4 = [(WFSlotTemplateTextStorage *)self textColor];
  v48[0] = v4;
  v41 = *MEMORY[0x1E69DB648];
  v47[1] = *MEMORY[0x1E69DB648];
  v5 = [(WFSlotTemplateTextStorage *)self font];
  v48[1] = v5;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  v6 = [(WFSlotTemplateTextStorage *)self contents];
  v43 = [(WFSlotTemplateTextStorage *)self stringForSlotSpacingOpportunity:2];
  v7 = 0x1E696A000uLL;
  if (![v6 count])
  {
    v17 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = [v6 objectAtIndexedSubscript:v9];
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
      if (v9 < [v6 count] - 1)
      {
        v16 = [objc_alloc(*(v7 + 2736)) initWithString:v43];
        [v3 appendAttributedString:v16];

        v7 = 0x1E696A000;
      }
    }

LABEL_12:
    ++v9;
  }

  while (v9 < [v6 count]);
  if (v8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

LABEL_17:
  v18 = [(WFSlotTemplateTextStorage *)self disclosureAttachment];
  if (v18)
  {
    v19 = objc_alloc(*(v7 + 2736));
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 160];
    v21 = [v19 initWithString:v20];

    [v3 appendAttributedString:v21];
    v22 = [*(v7 + 2736) attributedStringWithAttachment:v18];
    [v3 appendAttributedString:v22];
  }

  v23 = [(WFSlotTemplateTextStorage *)self outputButtonAttachment];
  if (v23)
  {
    v24 = objc_alloc(*(v7 + 2736));
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 160];
    v26 = [v24 initWithString:v25];

    [v3 appendAttributedString:v26];
    v27 = [*(v7 + 2736) attributedStringWithAttachment:v23];
    [v3 appendAttributedString:v27];
  }

  v28 = [(WFSlotTemplateTextStorage *)self suffixString];
  v29 = [v28 length];

  if (v29)
  {
    v45[0] = v42;
    v30 = [(WFSlotTemplateTextStorage *)self suffixColor];
    v45[1] = v41;
    v46[0] = v30;
    v31 = [(WFSlotTemplateTextStorage *)self suffixFont];
    v46[1] = v31;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
    v33 = v32 = v7;

    v34 = objc_alloc(*(v32 + 2736));
    v35 = [(WFSlotTemplateTextStorage *)self suffixString];
    v36 = [v34 initWithString:v35 attributes:v33];

    [v3 appendAttributedString:v36];
  }

  self->_contentsTextAlignment = v17;
  v37 = [(WFSlotTemplateTextStorage *)self paragraphStyle];
  v38 = [v37 alignment];

  if (v38 == 4)
  {
    v39 = [(WFSlotTemplateTextStorage *)self paragraphStyle];
    v40 = [v39 mutableCopy];

    [v40 setAlignment:self->_contentsTextAlignment];
    [v3 addAttribute:*MEMORY[0x1E69DB688] value:v40 range:{0, objc_msgSend(v3, "length")}];
  }

  [(WFSlotTemplateTextStorage *)self setAttributedString:v3];
}

- (BOOL)slotContainsStrongRTL:(id)a3
{
  v3 = a3;
  v4 = [v3 contentAttributedString];
  v5 = [v4 string];

  if (![v5 length])
  {
    v6 = [v3 localizedPlaceholder];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v3 localizedName];
    }

    v9 = v8;

    v5 = v9;
  }

  v10 = [v5 wf_hasStrongRTLCharacter];

  return v10;
}

- (void)didEndTypingInSlot:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v5 = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [v5 containsObject:v10];

  if ((v6 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:333 description:@"Slot must be a member of the contents array"];
  }

  v7 = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  [v7 removeObject:v10];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v10];
}

- (void)didBeginTypingInSlot:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v5 = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [v5 containsObject:v10];

  if ((v6 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:326 description:@"Slot must be a member of the contents array"];
  }

  v7 = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  [v7 addObject:v10];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v10];
}

- (NSSet)typingSlots
{
  v2 = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  v3 = [v2 copy];

  return v3;
}

- (void)didDeselectSlot:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v5 = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [v5 containsObject:v10];

  if ((v6 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:313 description:@"Slot must be a member of the contents array"];
  }

  v7 = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  [v7 removeObject:v10];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v10];
}

- (void)didSelectSlot:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v5 = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [v5 containsObject:v10];

  if ((v6 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:306 description:@"Slot must be a member of the contents array"];
  }

  v7 = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  [v7 addObject:v10];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v10];
}

- (NSSet)selectedSlots
{
  v2 = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  v3 = [v2 copy];

  return v3;
}

- (void)didUnhighlightSlot:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v5 = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [v5 containsObject:v10];

  if ((v6 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:293 description:@"Slot must be a member of the contents array"];
  }

  v7 = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  [v7 removeObject:v10];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v10];
}

- (void)didHighlightSlot:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"slot"}];
  }

  v5 = [(WFSlotTemplateTextStorage *)self contents];
  v6 = [v5 containsObject:v10];

  if ((v6 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:286 description:@"Slot must be a member of the contents array"];
  }

  v7 = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  [v7 addObject:v10];

  [(WFSlotTemplateTextStorage *)self updateColorsForSlot:v10];
}

- (NSSet)highlightedSlots
{
  v2 = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  v3 = [v2 copy];

  return v3;
}

- (void)setContents:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        if (([*(*(&v15 + 1) + 8 * v9) conformsToProtocol:&unk_1F48556C0] & 1) == 0)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:a2 object:self file:@"WFSlotTemplateTextStorage.m" lineNumber:268 description:@"The contents array may only contain NSString and WFSlotTemplateSlot objects."];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (v5)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5 copyItems:1];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_contents, v11);
  if (v5)
  {
  }

  v12 = [(WFSlotTemplateTextStorage *)self mutableHighlightedSlots];
  [v12 removeAllObjects];

  v13 = [(WFSlotTemplateTextStorage *)self mutableSelectedSlots];
  [v13 removeAllObjects];

  v14 = [(WFSlotTemplateTextStorage *)self mutableTypingSlots];
  [v14 removeAllObjects];

  [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
}

- (void)setDisabledSlotTitleColor:(id)a3 backgroundColor:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_disabledSlotTitleColor, a3);
  objc_storeStrong(&self->_disabledSlotBackgroundColor, a4);
  if ([(WFSlotTemplateTextStorage *)self isEnabled])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(WFSlotTemplateTextStorage *)self contents];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
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
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    v6 = [v5 platformColor];
    v7 = self->_disabledSlotBackgroundColor;
    self->_disabledSlotBackgroundColor = v6;

    disabledSlotBackgroundColor = self->_disabledSlotBackgroundColor;
  }

  return disabledSlotBackgroundColor;
}

- (UIColor)disabledSlotTitleColor
{
  disabledSlotTitleColor = self->_disabledSlotTitleColor;
  if (!disabledSlotTitleColor)
  {
    v4 = [MEMORY[0x1E69DC888] wf_labelColor];
    v5 = self->_disabledSlotTitleColor;
    self->_disabledSlotTitleColor = v4;

    disabledSlotTitleColor = self->_disabledSlotTitleColor;
  }

  return disabledSlotTitleColor;
}

- (void)setSuffixString:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_suffixString] & 1) == 0)
  {
    objc_storeStrong(&self->_suffixString, a3);
    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setOutputButtonAttachment:(id)a3
{
  v5 = a3;
  if (self->_outputButtonAttachment != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_outputButtonAttachment, a3);
    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
    v5 = v6;
  }
}

- (void)setDisclosureAttachment:(id)a3
{
  v5 = a3;
  if (self->_disclosureAttachment != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_disclosureAttachment, a3);
    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(WFSlotTemplateTextStorage *)self updateColorsForAllSlots];
  }
}

- (void)setParagraphStyle:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTextStorage *)self paragraphStyle];
  v6 = [v4 isEqual:v5];

  v7 = [v4 copy];
  paragraphStyle = self->_paragraphStyle;
  self->_paragraphStyle = v7;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setSuffixColor:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTextStorage *)self suffixColor];
  v6 = [(UIColor *)v4 isEqual:v5];

  suffixColor = self->_suffixColor;
  self->_suffixColor = v4;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTextStorage *)self tintColor];
  v6 = [(UIColor *)v4 isEqual:v5];

  tintColor = self->_tintColor;
  self->_tintColor = v4;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self updateColorsForAllSlots];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTextStorage *)self textColor];
  v6 = [(UIColor *)v4 isEqual:v5];

  textColor = self->_textColor;
  self->_textColor = v4;

  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x1E69DB650];
    v9 = [(WFSlotTemplateTextStorage *)self textColor];
    [(WFSlotTemplateTextStorage *)self replaceAttributeInInanimateText:v8 value:v9];
  }
}

- (void)setSuffixFont:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTextStorage *)self suffixFont];
  v6 = [(UIFont *)v4 isEqual:v5];

  suffixFont = self->_suffixFont;
  self->_suffixFont = v4;

  if ((v6 & 1) == 0)
  {

    [(WFSlotTemplateTextStorage *)self regenerateEntireAttributedString];
  }
}

- (void)setUnpopulatedFont:(id)a3
{
  v5 = a3;
  v6 = [(WFSlotTemplateTextStorage *)self unpopulatedFont];
  v7 = [v5 isEqual:v6];

  objc_storeStrong(&self->_unpopulatedFont, a3);
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

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(WFSlotTemplateTextStorage *)self font];
  v6 = [(UIFont *)v4 isEqual:v5];

  font = self->_font;
  self->_font = v4;

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
    v4 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v5 = self->_paragraphStyle;
    self->_paragraphStyle = v4;

    paragraphStyle = self->_paragraphStyle;
  }

  return paragraphStyle;
}

- (UIColor)suffixColor
{
  suffixColor = self->_suffixColor;
  if (suffixColor)
  {
    v3 = suffixColor;
  }

  else
  {
    v3 = [(WFSlotTemplateTextStorage *)self textColor];
  }

  return v3;
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    v4 = [MEMORY[0x1E69DC888] wf_systemBlueColor];
    v5 = self->_tintColor;
    self->_tintColor = v4;

    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (UIColor)textColor
{
  textColor = self->_textColor;
  if (!textColor)
  {
    v4 = [MEMORY[0x1E69DC888] wf_labelColor];
    v5 = self->_textColor;
    self->_textColor = v4;

    textColor = self->_textColor;
  }

  return textColor;
}

- (UIFont)suffixFont
{
  suffixFont = self->_suffixFont;
  if (suffixFont)
  {
    v3 = suffixFont;
  }

  else
  {
    v3 = [(WFSlotTemplateTextStorage *)self font];
  }

  return v3;
}

- (UIFont)unpopulatedFont
{
  unpopulatedFont = self->_unpopulatedFont;
  if (unpopulatedFont)
  {
    v3 = unpopulatedFont;
  }

  else
  {
    v3 = [(WFSlotTemplateTextStorage *)self font];
  }

  return v3;
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
      v3 = [(WFSlotTemplateTextStorage *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v3 slotTemplateStorageDidInvalidateDisplay:self];
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

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(WFSlotTemplateTextStorage *)self textStorage];
  [v8 setAttributes:v7 range:{location, length}];

  [(WFSlotTemplateTextStorage *)self edited:1 range:location changeInLength:length, 0];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(WFSlotTemplateTextStorage *)self textStorage];
  [v8 replaceCharactersInRange:location withString:{length, v7}];

  v9 = [v7 length];

  [(WFSlotTemplateTextStorage *)self edited:2 range:location changeInLength:length, v9 - length];
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(WFSlotTemplateTextStorage *)self textStorage];
  v7 = [v6 attributesAtIndex:a3 effectiveRange:a4];

  return v7;
}

- (id)string
{
  v2 = [(WFSlotTemplateTextStorage *)self textStorage];
  v3 = [v2 string];

  return v3;
}

- (WFSlotTemplateTextStorage)initWithUseCase:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = WFSlotTemplateTextStorage;
  v4 = [(WFSlotTemplateTextStorage *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_useCase = a3;
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