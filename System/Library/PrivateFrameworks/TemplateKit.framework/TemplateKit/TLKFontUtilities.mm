@interface TLKFontUtilities
+ (BOOL)formattedTextItemIsColoredImage:(id)image;
+ (id)attributedStringForFormattedText:(id)text appearance:(id)appearance prominence:(unint64_t)prominence alignment:(int64_t)alignment font:(id)font isButton:(BOOL)button scale:(double)scale isDark:(BOOL)self0;
+ (id)attributedStringForRichText:(id)text appearance:(id)appearance prominence:(unint64_t)prominence alignment:(int64_t)alignment coloredRanges:(id)ranges nonColoredRanges:(id)coloredRanges rangesForNonTemplateImageAttachments:(id)attachments rangesForTemplateImageAttachments:(id)self0 font:(id)self1 isButton:(BOOL)self2 scale:(double)self3 isDark:(BOOL)self4;
+ (id)attributedStringForRichText:(id)text appearance:(id)appearance prominence:(unint64_t)prominence alignment:(int64_t)alignment font:(id)font isButton:(BOOL)button scale:(double)scale isDark:(BOOL)self0;
+ (id)cachedFontForKey:(id)key creatorBlock:(id)block;
+ (id)cachedFontForTextStyle:(id)style isShort:(BOOL)short isBold:(BOOL)bold useCustomWeight:(BOOL)weight customFontWeight:(double)fontWeight isMacStyle:(BOOL)macStyle fontFeatures:(id)features;
+ (id)clearTextAttachmentForTextAttachment:(id)attachment;
+ (id)preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits isMacStyle:(BOOL)macStyle;
+ (id)preferredFontWithTextStyle:(id)style isShort:(BOOL)short isBold:(BOOL)bold useCustomWeight:(BOOL)weight customFontWeight:(double)fontWeight isMonoSpaced:(BOOL)spaced isMacStyle:(BOOL)macStyle fontFeatures:(id)self0;
+ (id)textAttachmentForImage:(id)image size:(CGSize)size cornerRoundingStyle:(unint64_t)style appearance:(id)appearance;
+ (id)thinFontOfSize:(double)size grade:(unint64_t)grade;
+ (id)updateAttributedStringUnderlineStyle:(id)style isUnderlineVisible:(BOOL)visible;
+ (void)cacheInlineImagesForRichText:(id)text inView:(id)view updateHandler:(id)handler;
@end

@implementation TLKFontUtilities

+ (id)cachedFontForKey:(id)key creatorBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  if (cachedFontForKey_creatorBlock__onceToken != -1)
  {
    +[TLKFontUtilities cachedFontForKey:creatorBlock:];
  }

  v7 = [cachedFontForKey_creatorBlock__fontCache objectForKey:keyCopy];
  if (!v7)
  {
    v7 = blockCopy[2](blockCopy);
    [cachedFontForKey_creatorBlock__fontCache setObject:v7 forKey:keyCopy];
  }

  return v7;
}

void __50__TLKFontUtilities_cachedFontForKey_creatorBlock___block_invoke()
{
  v0 = objc_opt_new();
  v1 = cachedFontForKey_creatorBlock__fontCache;
  cachedFontForKey_creatorBlock__fontCache = v0;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [v3 addObserverForName:*MEMORY[0x1E69DDC48] object:0 queue:0 usingBlock:&__block_literal_global_18];
}

void __50__TLKFontUtilities_cachedFontForKey_creatorBlock___block_invoke_2()
{
  [cachedFontForKey_creatorBlock__fontCache removeAllObjects];
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"TLKContentSizeCategoryDidChangeNotification" object:0];
}

+ (id)cachedFontForTextStyle:(id)style isShort:(BOOL)short isBold:(BOOL)bold useCustomWeight:(BOOL)weight customFontWeight:(double)fontWeight isMacStyle:(BOOL)macStyle fontFeatures:(id)features
{
  macStyleCopy = macStyle;
  weightCopy = weight;
  boldCopy = bold;
  shortCopy = short;
  v52 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  featuresCopy = features;
  v14 = objc_opt_new();
  v33 = featuresCopy;
  if ([featuresCopy count])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = featuresCopy;
    v16 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v48;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v48 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v47 + 1) + 8 * i);
          if ([v14 length])
          {
            [v14 appendString:@"-"];
          }

          [v14 appendString:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v17);
    }
  }

  else
  {
    [v14 appendString:@"none"];
  }

  v21 = MEMORY[0x1E696AEC0];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:shortCopy];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:boldCopy];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:weightCopy];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:fontWeight];
  v32 = boldCopy;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:macStyleCopy];
  v27 = [v21 stringWithFormat:@"%@-%@-%@-%@-%@-%@-%@", styleCopy, v22, v23, v24, v25, v26, v14];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __115__TLKFontUtilities_cachedFontForTextStyle_isShort_isBold_useCustomWeight_customFontWeight_isMacStyle_fontFeatures___block_invoke;
  v38[3] = &unk_1E7FD8D08;
  v43 = shortCopy;
  v44 = v32;
  v45 = weightCopy;
  fontWeightCopy = fontWeight;
  v46 = macStyleCopy;
  v39 = styleCopy;
  v40 = v33;
  selfCopy = self;
  v28 = v33;
  v29 = styleCopy;
  v30 = [self cachedFontForKey:v27 creatorBlock:v38];

  return v30;
}

+ (id)thinFontOfSize:(double)size grade:(unint64_t)grade
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemFontType|0x80, size, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(UIFontForLanguage);

  return CopyOfSystemUIFontWithGrade;
}

+ (id)preferredFontWithTextStyle:(id)style isShort:(BOOL)short isBold:(BOOL)bold useCustomWeight:(BOOL)weight customFontWeight:(double)fontWeight isMonoSpaced:(BOOL)spaced isMacStyle:(BOOL)macStyle fontFeatures:(id)self0
{
  macStyleCopy = macStyle;
  spacedCopy = spaced;
  weightCopy = weight;
  boldCopy = bold;
  shortCopy = short;
  v31[1] = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  if (shortCopy)
  {
    v19 = 0x8000;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | 2;
  if (weightCopy)
  {
    v20 = v19;
  }

  if (boldCopy)
  {
    v19 = v20;
  }

  if (spacedCopy)
  {
    v21 = v19 | 0x400;
  }

  else
  {
    v21 = v19;
  }

  v22 = [self preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:v21 isMacStyle:macStyleCopy];
  v23 = objc_opt_new();
  if ([featuresCopy count])
  {
    v24 = [featuresCopy copy];
    [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69DB8B0]];
  }

  if (weightCopy)
  {
    v30 = *MEMORY[0x1E69DB990];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:fontWeight];
    v31[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v23 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69DB8F0]];
  }

  if ([v23 count])
  {
    v27 = [v22 fontDescriptorByAddingAttributes:v23];

    v22 = v27;
  }

  v28 = [MEMORY[0x1E69DB878] fontWithDescriptor:v22 size:0.0];

  return v28;
}

+ (id)preferredFontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits isMacStyle:(BOOL)macStyle
{
  v5 = *&traits;
  v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{style, *&traits, macStyle}];
  v7 = [v6 fontDescriptorWithSymbolicTraits:v5];

  return v7;
}

+ (id)attributedStringForRichText:(id)text appearance:(id)appearance prominence:(unint64_t)prominence alignment:(int64_t)alignment font:(id)font isButton:(BOOL)button scale:(double)scale isDark:(BOOL)self0
{
  BYTE1(v11) = dark;
  LOBYTE(v11) = button;
  return [TLKFontUtilities attributedStringForRichText:text appearance:appearance prominence:prominence alignment:alignment coloredRanges:0 nonColoredRanges:0 rangesForNonTemplateImageAttachments:scale rangesForTemplateImageAttachments:0 font:0 isButton:font scale:v11 isDark:?];
}

+ (id)attributedStringForRichText:(id)text appearance:(id)appearance prominence:(unint64_t)prominence alignment:(int64_t)alignment coloredRanges:(id)ranges nonColoredRanges:(id)coloredRanges rangesForNonTemplateImageAttachments:(id)attachments rangesForTemplateImageAttachments:(id)self0 font:(id)self1 isButton:(BOOL)self2 scale:(double)self3 isDark:(BOOL)self4
{
  v74 = *MEMORY[0x1E69E9840];
  textCopy = text;
  appearanceCopy = appearance;
  rangesCopy = ranges;
  coloredRangesCopy = coloredRanges;
  attachmentsCopy = attachments;
  imageAttachmentsCopy = imageAttachments;
  fontCopy = font;
  if (textCopy)
  {
    v66 = objc_opt_new();
  }

  else
  {
    v66 = 0;
  }

  formattedTextItems = [textCopy formattedTextItems];
  v21 = 0x1E7FD8000uLL;
  if ([formattedTextItems count] == 1)
  {
    formattedTextItems2 = [textCopy formattedTextItems];
    firstObject = [formattedTextItems2 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    formattedTextItems = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F3A9C828];
    [v66 appendAttributedString:formattedTextItems];
  }

LABEL_8:
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v54 = textCopy;
  obj = [textCopy formattedTextItems];
  v25 = v66;
  v68 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v68)
  {
    v67 = *v70;
    v58 = *MEMORY[0x1E69DB5F8];
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v69 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        objc_opt_class();
        v30 = objc_opt_isKindOfClass();
        if (v30)
        {
          string = [v27 string];
          if ([string length])
          {

LABEL_22:
            v32 = v21;
            LOBYTE(v53) = dark;
            v33 = [self attributedStringForFormattedText:v27 appearance:appearanceCopy prominence:prominence alignment:alignment font:fontCopy isButton:button scale:scale isDark:v53];
            v34 = [MEMORY[0x1E696B098] valueWithRange:{objc_msgSend(v25, "length"), objc_msgSend(v33, "length")}];
            v35 = [self formattedTextItemIsColoredImage:v27];
            if ((v35 & 1) == 0)
            {
              color = [v27 color];
              v37 = coloredRangesCopy;
              if (color)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (v38 = [v27 encapsulationStyle], v37 = coloredRangesCopy, !v38))
                {
                  v37 = rangesCopy;
                }
              }

              [v37 addObject:v34];
            }

            if (![v33 length] || !v29)
            {
              goto LABEL_45;
            }

            v39 = [v33 attribute:v58 atIndex:0 effectiveRange:0];
            if (!v39)
            {
              goto LABEL_44;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              isPlaceholder = [v39 isPlaceholder];
              v41 = isPlaceholder;
              if (v35)
              {
                if (isPlaceholder)
                {
                  v42 = imageAttachmentsCopy;
                  goto LABEL_37;
                }

LABEL_36:
                v42 = attachmentsCopy;
LABEL_37:
                v43 = v42;
LABEL_43:
                [v43 setObject:v39 forKeyedSubscript:v34];

LABEL_44:
LABEL_45:

                v25 = v66;
                if (v33)
                {
                  [v66 appendAttributedString:v33];
                }

                v21 = v32;
                goto LABEL_48;
              }
            }

            else
            {
              if (v35)
              {
                goto LABEL_36;
              }

              v41 = 0;
            }

            tlkImage = [v29 tlkImage];
            isTemplate = [tlkImage isTemplate];
            v46 = imageAttachmentsCopy;
            if (isTemplate)
            {
              v47 = (([v29 color] == 0) | v41 & 1) == 0;
              v46 = attachmentsCopy;
              if (!v47)
              {
                v46 = imageAttachmentsCopy;
              }
            }

            v43 = v46;

            goto LABEL_43;
          }
        }

        tlkImage2 = [v29 tlkImage];

        if (v30)
        {
        }

        if (tlkImage2)
        {
          goto LABEL_22;
        }

LABEL_48:
      }

      v68 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v68);
  }

  if ([v25 length] || (objc_msgSend(v54, "text"), v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
  {
    v48 = v25;
  }

  else
  {
    text = [v54 text];
    v51 = [TLKFormattedText formattedTextWithString:text];
    LOBYTE(v53) = dark;
    v48 = [self attributedStringForFormattedText:v51 appearance:appearanceCopy prominence:prominence alignment:alignment font:fontCopy isButton:button scale:scale isDark:v53];
  }

  return v48;
}

+ (BOOL)formattedTextItemIsColoredImage:(id)image
{
  imageCopy = image;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([imageCopy tlkImage], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 isTemplate] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (id)attributedStringForFormattedText:(id)text appearance:(id)appearance prominence:(unint64_t)prominence alignment:(int64_t)alignment font:(id)font isButton:(BOOL)button scale:(double)scale isDark:(BOOL)self0
{
  textCopy = text;
  appearanceCopy = appearance;
  fontCopy = font;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = textCopy;
    v20 = objc_alloc(MEMORY[0x1E696AD40]);
    string = [v19 string];
    v22 = [v20 initWithString:string];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    string = [textCopy tlkImage];
    uiImage = [string uiImage];
    if (!uiImage)
    {
      uiImage = [string cachedImageForScale:dark isDarkStyle:scale];
    }

    if ([string isTemplate])
    {
      v24 = [TLKImage templateImageForImage:uiImage];

      uiImage = v24;
    }

    [string size];
    v27 = [self textAttachmentForImage:uiImage size:objc_msgSend(string cornerRoundingStyle:"cornerRoundingStyle") appearance:{appearanceCopy, v25, v26}];
    v28 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v27];
    v22 = [v28 mutableCopy];

    v19 = 0;
  }

LABEL_11:
  v29 = [v22 length];
  isEmphasized = [textCopy isEmphasized];
  v31 = MEMORY[0x1E69DB650];
  if (appearanceCopy && isEmphasized)
  {
    if (prominence == 3)
    {
      v32 = 2;
    }

    else
    {
      v32 = prominence == 2;
    }

    if (button)
    {
      [appearanceCopy buttonColorForProminence:v32];
    }

    else
    {
      [appearanceCopy colorForProminence:v32];
    }
    v33 = ;
    [v22 addAttribute:*v31 value:v33 range:{0, v29}];
  }

  v34 = fontCopy;
  v35 = v34;
  if ([textCopy isBold])
  {
    fontDescriptor = [v34 fontDescriptor];
    v37 = [fontDescriptor fontDescriptorWithSymbolicTraits:2 mask:2];

    v35 = [MEMORY[0x1E69DB878] fontWithDescriptor:v37 size:0.0];
  }

  [v22 addAttribute:*MEMORY[0x1E69DB648] value:v35 range:{0, v29}];
  if (v19 && [v19 encapsulationStyle])
  {
    v38 = objc_opt_new();
    encapsulationStyle = [v19 encapsulationStyle];
    [v38 setStyle:encapsulationStyle == 2];
    if (encapsulationStyle != 2 || ([textCopy isEmphasized] & 1) != 0)
    {
      goto LABEL_31;
    }

    [v38 setScale:2];
    if ([textCopy color])
    {
      [appearanceCopy textColorForColor:8];
    }

    else
    {
      [appearanceCopy quaternaryColor];
    }
    v40 = ;
    [v38 setColor:v40];

    if ([textCopy color])
    {
      color = [v38 color];
    }

    else
    {
LABEL_31:
      color = 0;
    }

    [v22 addAttribute:*MEMORY[0x1E69DC5C8] value:v38 range:{0, v29}];

    if (color)
    {
      goto LABEL_35;
    }
  }

  if ([textCopy color])
  {
    color = [appearanceCopy textColorForColor:{objc_msgSend(textCopy, "color")}];
    if (color)
    {
LABEL_35:
      [v22 addAttribute:*v31 value:color range:{0, v29}];
    }
  }

  v42 = v22;

  return v22;
}

+ (id)textAttachmentForImage:(id)image size:(CGSize)size cornerRoundingStyle:(unint64_t)style appearance:(id)appearance
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  appearanceCopy = appearance;
  if (+[TLKImage imageIsSymbol:](TLKImage, "imageIsSymbol:", imageCopy) && (width == *MEMORY[0x1E695F060] ? (v12 = height == *(MEMORY[0x1E695F060] + 8)) : (v12 = 0), v12 && ([MEMORY[0x1E69DB7F0] textAttachmentWithImage:imageCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v14 = v13;
  }

  else
  {
    v14 = objc_opt_new();
    if (!imageCopy)
    {
      if (style)
      {
        v15 = [appearanceCopy colorForProminence:3];
        height = [TLKUtilities testImageWithSize:v15 color:width, height];
        imageCopy = [height uiImage];
      }

      else
      {
        imageCopy = objc_opt_new();
      }

      [v14 setIsPlaceholder:1];
    }

    v17 = objc_opt_new();
    [v17 cornerRadiusForSize:style roundingStyle:{width, height}];
    v19 = v18;

    if (v19 != 0.0)
    {
      v20 = [TLKImage isTemplateImage:imageCopy];
      v21 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __79__TLKFontUtilities_textAttachmentForImage_size_cornerRoundingStyle_appearance___block_invoke;
      v24[3] = &unk_1E7FD8D30;
      v26 = v19;
      v25 = imageCopy;
      imageCopy = [v21 imageWithActions:v24];
      if (v20)
      {
        v22 = [TLKImage templateImageForImage:imageCopy];

        imageCopy = v22;
      }
    }

    [v14 setImage:imageCopy];
    [v14 setSize:{width, height}];
  }

  return v14;
}

void __79__TLKFontUtilities_textAttachmentForImage_size_cornerRoundingStyle_appearance___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC728];
  v4 = a2;
  v5 = [v4 format];
  [v5 bounds];
  v6 = [v3 bezierPathWithRoundedRect:? cornerRadius:?];
  [v6 addClip];

  v7 = *(a1 + 32);
  v8 = [v4 format];

  [v8 bounds];
  [v7 drawInRect:?];
}

+ (id)clearTextAttachmentForTextAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [attachmentCopy size];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  image = [attachmentCopy image];
  v11 = [TLKImage applyTintColor:clearColor toImage:image];
  v12 = [self textAttachmentForImage:v11 size:0 cornerRoundingStyle:0 appearance:{v6, v8}];

  return v12;
}

+ (id)updateAttributedStringUnderlineStyle:(id)style isUnderlineVisible:(BOOL)visible
{
  styleCopy = style;
  v6 = [styleCopy length];
  v7 = *MEMORY[0x1E69DB758];
  if (visible)
  {
    [styleCopy addAttribute:v7 value:&unk_1F3AA82D8 range:{0, v6}];
    if ([styleCopy containsAttachmentsInRange:{0, v6}])
    {
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v9 = *MEMORY[0x1E69DB5F8];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__TLKFontUtilities_updateAttributedStringUnderlineStyle_isUnderlineVisible___block_invoke;
      v15[3] = &unk_1E7FD8D58;
      v16 = whitespaceCharacterSet;
      v10 = styleCopy;
      v17 = v10;
      v11 = whitespaceCharacterSet;
      [v10 enumerateAttribute:v9 inRange:0 options:v6 usingBlock:{0, v15}];
      v12 = v10;

      goto LABEL_6;
    }
  }

  else
  {
    [styleCopy removeAttribute:v7 range:{0, v6}];
  }

  v13 = styleCopy;
LABEL_6:

  return styleCopy;
}

uint64_t __76__TLKFontUtilities_updateAttributedStringUnderlineStyle_isUnderlineVisible___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = a3 + 1;
      v8 = a4 - 1;
      do
      {
        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) string];
        v11 = [v9 characterIsMember:{objc_msgSend(v10, "characterAtIndex:", v7 - 2)}];

        --v7;
        ++v8;
      }

      while ((v11 & 1) != 0);
      for (i = v8 + v7; i < [*(a1 + 40) length]; ++i)
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) string];
        LODWORD(v13) = [v13 characterIsMember:{objc_msgSend(v14, "characterAtIndex:", i)}];

        if (!v13)
        {
          break;
        }

        ++v8;
      }

      [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB758] range:{v7, v8}];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (void)cacheInlineImagesForRichText:(id)text inView:(id)view updateHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  textCopy = text;
  viewCopy = view;
  handlerCopy = handler;
  [viewCopy effectiveScreenScale];
  v11 = v10;
  v12 = [TLKAppearance bestAppearanceForView:viewCopy];
  isDark = [v12 isDark];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  formattedTextItems = [textCopy formattedTextItems];
  v15 = [formattedTextItems countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(formattedTextItems);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tlkImage = [v19 tlkImage];
          v21 = [tlkImage cachedImageForScale:isDark isDarkStyle:v11];

          if (!v21)
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __70__TLKFontUtilities_cacheInlineImagesForRichText_inView_updateHandler___block_invoke;
            v23[3] = &unk_1E7FD8D80;
            v22 = tlkImage;
            v24 = v22;
            v26 = v11;
            v27 = isDark;
            v25 = handlerCopy;
            [v22 loadImageWithScale:isDark isDarkStyle:v23 completionHandler:v11];
          }
        }
      }

      v16 = [formattedTextItems countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }
}

uint64_t __70__TLKFontUtilities_cacheInlineImagesForRichText_inView_updateHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) cacheImage:a2 forScale:*(v2 + 56) isDarkStyle:*(v2 + 48)];
    v3 = *(*(v2 + 40) + 16);

    return v3();
  }

  return result;
}

@end