@interface TLKFontUtilities
+ (BOOL)formattedTextItemIsColoredImage:(id)a3;
+ (id)attributedStringForFormattedText:(id)a3 appearance:(id)a4 prominence:(unint64_t)a5 alignment:(int64_t)a6 font:(id)a7 isButton:(BOOL)a8 scale:(double)a9 isDark:(BOOL)a10;
+ (id)attributedStringForRichText:(id)a3 appearance:(id)a4 prominence:(unint64_t)a5 alignment:(int64_t)a6 coloredRanges:(id)a7 nonColoredRanges:(id)a8 rangesForNonTemplateImageAttachments:(id)a9 rangesForTemplateImageAttachments:(id)a10 font:(id)a11 isButton:(BOOL)a12 scale:(double)a13 isDark:(BOOL)a14;
+ (id)attributedStringForRichText:(id)a3 appearance:(id)a4 prominence:(unint64_t)a5 alignment:(int64_t)a6 font:(id)a7 isButton:(BOOL)a8 scale:(double)a9 isDark:(BOOL)a10;
+ (id)cachedFontForKey:(id)a3 creatorBlock:(id)a4;
+ (id)cachedFontForTextStyle:(id)a3 isShort:(BOOL)a4 isBold:(BOOL)a5 useCustomWeight:(BOOL)a6 customFontWeight:(double)a7 isMacStyle:(BOOL)a8 fontFeatures:(id)a9;
+ (id)clearTextAttachmentForTextAttachment:(id)a3;
+ (id)preferredFontDescriptorWithTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 isMacStyle:(BOOL)a5;
+ (id)preferredFontWithTextStyle:(id)a3 isShort:(BOOL)a4 isBold:(BOOL)a5 useCustomWeight:(BOOL)a6 customFontWeight:(double)a7 isMonoSpaced:(BOOL)a8 isMacStyle:(BOOL)a9 fontFeatures:(id)a10;
+ (id)textAttachmentForImage:(id)a3 size:(CGSize)a4 cornerRoundingStyle:(unint64_t)a5 appearance:(id)a6;
+ (id)thinFontOfSize:(double)a3 grade:(unint64_t)a4;
+ (id)updateAttributedStringUnderlineStyle:(id)a3 isUnderlineVisible:(BOOL)a4;
+ (void)cacheInlineImagesForRichText:(id)a3 inView:(id)a4 updateHandler:(id)a5;
@end

@implementation TLKFontUtilities

+ (id)cachedFontForKey:(id)a3 creatorBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (cachedFontForKey_creatorBlock__onceToken != -1)
  {
    +[TLKFontUtilities cachedFontForKey:creatorBlock:];
  }

  v7 = [cachedFontForKey_creatorBlock__fontCache objectForKey:v5];
  if (!v7)
  {
    v7 = v6[2](v6);
    [cachedFontForKey_creatorBlock__fontCache setObject:v7 forKey:v5];
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

+ (id)cachedFontForTextStyle:(id)a3 isShort:(BOOL)a4 isBold:(BOOL)a5 useCustomWeight:(BOOL)a6 customFontWeight:(double)a7 isMacStyle:(BOOL)a8 fontFeatures:(id)a9
{
  v35 = a8;
  v11 = a6;
  v12 = a5;
  v37 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v13 = a9;
  v14 = objc_opt_new();
  v33 = v13;
  if ([v13 count])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = v13;
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
  v22 = [MEMORY[0x1E696AD98] numberWithBool:v37];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:v12];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
  v32 = v12;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:v35];
  v27 = [v21 stringWithFormat:@"%@-%@-%@-%@-%@-%@-%@", v34, v22, v23, v24, v25, v26, v14];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __115__TLKFontUtilities_cachedFontForTextStyle_isShort_isBold_useCustomWeight_customFontWeight_isMacStyle_fontFeatures___block_invoke;
  v38[3] = &unk_1E7FD8D08;
  v43 = v37;
  v44 = v32;
  v45 = v11;
  v42 = a7;
  v46 = v35;
  v39 = v34;
  v40 = v33;
  v41 = a1;
  v28 = v33;
  v29 = v34;
  v30 = [a1 cachedFontForKey:v27 creatorBlock:v38];

  return v30;
}

+ (id)thinFontOfSize:(double)a3 grade:(unint64_t)a4
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemFontType|0x80, a3, 0);
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
  CFRelease(UIFontForLanguage);

  return CopyOfSystemUIFontWithGrade;
}

+ (id)preferredFontWithTextStyle:(id)a3 isShort:(BOOL)a4 isBold:(BOOL)a5 useCustomWeight:(BOOL)a6 customFontWeight:(double)a7 isMonoSpaced:(BOOL)a8 isMacStyle:(BOOL)a9 fontFeatures:(id)a10
{
  v10 = a9;
  v11 = a8;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v31[1] = *MEMORY[0x1E69E9840];
  v18 = a10;
  if (v15)
  {
    v19 = 0x8000;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | 2;
  if (v13)
  {
    v20 = v19;
  }

  if (v14)
  {
    v19 = v20;
  }

  if (v11)
  {
    v21 = v19 | 0x400;
  }

  else
  {
    v21 = v19;
  }

  v22 = [a1 preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:v21 isMacStyle:v10];
  v23 = objc_opt_new();
  if ([v18 count])
  {
    v24 = [v18 copy];
    [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69DB8B0]];
  }

  if (v13)
  {
    v30 = *MEMORY[0x1E69DB990];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
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

+ (id)preferredFontDescriptorWithTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 isMacStyle:(BOOL)a5
{
  v5 = *&a4;
  v6 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{a3, *&a4, a5}];
  v7 = [v6 fontDescriptorWithSymbolicTraits:v5];

  return v7;
}

+ (id)attributedStringForRichText:(id)a3 appearance:(id)a4 prominence:(unint64_t)a5 alignment:(int64_t)a6 font:(id)a7 isButton:(BOOL)a8 scale:(double)a9 isDark:(BOOL)a10
{
  BYTE1(v11) = a10;
  LOBYTE(v11) = a8;
  return [TLKFontUtilities attributedStringForRichText:a3 appearance:a4 prominence:a5 alignment:a6 coloredRanges:0 nonColoredRanges:0 rangesForNonTemplateImageAttachments:a9 rangesForTemplateImageAttachments:0 font:0 isButton:a7 scale:v11 isDark:?];
}

+ (id)attributedStringForRichText:(id)a3 appearance:(id)a4 prominence:(unint64_t)a5 alignment:(int64_t)a6 coloredRanges:(id)a7 nonColoredRanges:(id)a8 rangesForNonTemplateImageAttachments:(id)a9 rangesForTemplateImageAttachments:(id)a10 font:(id)a11 isButton:(BOOL)a12 scale:(double)a13 isDark:(BOOL)a14
{
  v74 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v65 = a4;
  v56 = a7;
  v59 = a8;
  v55 = a9;
  v57 = a10;
  v64 = a11;
  if (v19)
  {
    v66 = objc_opt_new();
  }

  else
  {
    v66 = 0;
  }

  v20 = [v19 formattedTextItems];
  v21 = 0x1E7FD8000uLL;
  if ([v20 count] == 1)
  {
    v22 = [v19 formattedTextItems];
    v23 = [v22 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F3A9C828];
    [v66 appendAttributedString:v20];
  }

LABEL_8:
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v54 = v19;
  obj = [v19 formattedTextItems];
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
          v14 = [v27 string];
          if ([v14 length])
          {

LABEL_22:
            v32 = v21;
            LOBYTE(v53) = a14;
            v33 = [a1 attributedStringForFormattedText:v27 appearance:v65 prominence:a5 alignment:a6 font:v64 isButton:a12 scale:a13 isDark:v53];
            v34 = [MEMORY[0x1E696B098] valueWithRange:{objc_msgSend(v25, "length"), objc_msgSend(v33, "length")}];
            v35 = [a1 formattedTextItemIsColoredImage:v27];
            if ((v35 & 1) == 0)
            {
              v36 = [v27 color];
              v37 = v59;
              if (v36)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (v38 = [v27 encapsulationStyle], v37 = v59, !v38))
                {
                  v37 = v56;
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
              v40 = [v39 isPlaceholder];
              v41 = v40;
              if (v35)
              {
                if (v40)
                {
                  v42 = v57;
                  goto LABEL_37;
                }

LABEL_36:
                v42 = v55;
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

            v44 = [v29 tlkImage];
            v45 = [v44 isTemplate];
            v46 = v57;
            if (v45)
            {
              v47 = (([v29 color] == 0) | v41 & 1) == 0;
              v46 = v55;
              if (!v47)
              {
                v46 = v57;
              }
            }

            v43 = v46;

            goto LABEL_43;
          }
        }

        v31 = [v29 tlkImage];

        if (v30)
        {
        }

        if (v31)
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
    v50 = [v54 text];
    v51 = [TLKFormattedText formattedTextWithString:v50];
    LOBYTE(v53) = a14;
    v48 = [a1 attributedStringForFormattedText:v51 appearance:v65 prominence:a5 alignment:a6 font:v64 isButton:a12 scale:a13 isDark:v53];
  }

  return v48;
}

+ (BOOL)formattedTextItemIsColoredImage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 tlkImage], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (id)attributedStringForFormattedText:(id)a3 appearance:(id)a4 prominence:(unint64_t)a5 alignment:(int64_t)a6 font:(id)a7 isButton:(BOOL)a8 scale:(double)a9 isDark:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v16;
    v20 = objc_alloc(MEMORY[0x1E696AD40]);
    v21 = [v19 string];
    v22 = [v20 initWithString:v21];
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

    v21 = [v16 tlkImage];
    v23 = [v21 uiImage];
    if (!v23)
    {
      v23 = [v21 cachedImageForScale:a10 isDarkStyle:a9];
    }

    if ([v21 isTemplate])
    {
      v24 = [TLKImage templateImageForImage:v23];

      v23 = v24;
    }

    [v21 size];
    v27 = [a1 textAttachmentForImage:v23 size:objc_msgSend(v21 cornerRoundingStyle:"cornerRoundingStyle") appearance:{v17, v25, v26}];
    v28 = [MEMORY[0x1E696AD40] attributedStringWithAttachment:v27];
    v22 = [v28 mutableCopy];

    v19 = 0;
  }

LABEL_11:
  v29 = [v22 length];
  v30 = [v16 isEmphasized];
  v31 = MEMORY[0x1E69DB650];
  if (v17 && v30)
  {
    if (a5 == 3)
    {
      v32 = 2;
    }

    else
    {
      v32 = a5 == 2;
    }

    if (a8)
    {
      [v17 buttonColorForProminence:v32];
    }

    else
    {
      [v17 colorForProminence:v32];
    }
    v33 = ;
    [v22 addAttribute:*v31 value:v33 range:{0, v29}];
  }

  v34 = v18;
  v35 = v34;
  if ([v16 isBold])
  {
    v36 = [v34 fontDescriptor];
    v37 = [v36 fontDescriptorWithSymbolicTraits:2 mask:2];

    v35 = [MEMORY[0x1E69DB878] fontWithDescriptor:v37 size:0.0];
  }

  [v22 addAttribute:*MEMORY[0x1E69DB648] value:v35 range:{0, v29}];
  if (v19 && [v19 encapsulationStyle])
  {
    v38 = objc_opt_new();
    v39 = [v19 encapsulationStyle];
    [v38 setStyle:v39 == 2];
    if (v39 != 2 || ([v16 isEmphasized] & 1) != 0)
    {
      goto LABEL_31;
    }

    [v38 setScale:2];
    if ([v16 color])
    {
      [v17 textColorForColor:8];
    }

    else
    {
      [v17 quaternaryColor];
    }
    v40 = ;
    [v38 setColor:v40];

    if ([v16 color])
    {
      v41 = [v38 color];
    }

    else
    {
LABEL_31:
      v41 = 0;
    }

    [v22 addAttribute:*MEMORY[0x1E69DC5C8] value:v38 range:{0, v29}];

    if (v41)
    {
      goto LABEL_35;
    }
  }

  if ([v16 color])
  {
    v41 = [v17 textColorForColor:{objc_msgSend(v16, "color")}];
    if (v41)
    {
LABEL_35:
      [v22 addAttribute:*v31 value:v41 range:{0, v29}];
    }
  }

  v42 = v22;

  return v22;
}

+ (id)textAttachmentForImage:(id)a3 size:(CGSize)a4 cornerRoundingStyle:(unint64_t)a5 appearance:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a6;
  if (+[TLKImage imageIsSymbol:](TLKImage, "imageIsSymbol:", v10) && (width == *MEMORY[0x1E695F060] ? (v12 = height == *(MEMORY[0x1E695F060] + 8)) : (v12 = 0), v12 && ([MEMORY[0x1E69DB7F0] textAttachmentWithImage:v10], (v13 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v14 = v13;
  }

  else
  {
    v14 = objc_opt_new();
    if (!v10)
    {
      if (a5)
      {
        v15 = [v11 colorForProminence:3];
        v16 = [TLKUtilities testImageWithSize:v15 color:width, height];
        v10 = [v16 uiImage];
      }

      else
      {
        v10 = objc_opt_new();
      }

      [v14 setIsPlaceholder:1];
    }

    v17 = objc_opt_new();
    [v17 cornerRadiusForSize:a5 roundingStyle:{width, height}];
    v19 = v18;

    if (v19 != 0.0)
    {
      v20 = [TLKImage isTemplateImage:v10];
      v21 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __79__TLKFontUtilities_textAttachmentForImage_size_cornerRoundingStyle_appearance___block_invoke;
      v24[3] = &unk_1E7FD8D30;
      v26 = v19;
      v25 = v10;
      v10 = [v21 imageWithActions:v24];
      if (v20)
      {
        v22 = [TLKImage templateImageForImage:v10];

        v10 = v22;
      }
    }

    [v14 setImage:v10];
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

+ (id)clearTextAttachmentForTextAttachment:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 size];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = [MEMORY[0x1E69DC888] clearColor];
  v10 = [v4 image];
  v11 = [TLKImage applyTintColor:v9 toImage:v10];
  v12 = [a1 textAttachmentForImage:v11 size:0 cornerRoundingStyle:0 appearance:{v6, v8}];

  return v12;
}

+ (id)updateAttributedStringUnderlineStyle:(id)a3 isUnderlineVisible:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 length];
  v7 = *MEMORY[0x1E69DB758];
  if (a4)
  {
    [v5 addAttribute:v7 value:&unk_1F3AA82D8 range:{0, v6}];
    if ([v5 containsAttachmentsInRange:{0, v6}])
    {
      v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v9 = *MEMORY[0x1E69DB5F8];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__TLKFontUtilities_updateAttributedStringUnderlineStyle_isUnderlineVisible___block_invoke;
      v15[3] = &unk_1E7FD8D58;
      v16 = v8;
      v10 = v5;
      v17 = v10;
      v11 = v8;
      [v10 enumerateAttribute:v9 inRange:0 options:v6 usingBlock:{0, v15}];
      v12 = v10;

      goto LABEL_6;
    }
  }

  else
  {
    [v5 removeAttribute:v7 range:{0, v6}];
  }

  v13 = v5;
LABEL_6:

  return v5;
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

+ (void)cacheInlineImagesForRichText:(id)a3 inView:(id)a4 updateHandler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v8 effectiveScreenScale];
  v11 = v10;
  v12 = [TLKAppearance bestAppearanceForView:v8];
  v13 = [v12 isDark];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [v7 formattedTextItems];
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 tlkImage];
          v21 = [v20 cachedImageForScale:v13 isDarkStyle:v11];

          if (!v21)
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __70__TLKFontUtilities_cacheInlineImagesForRichText_inView_updateHandler___block_invoke;
            v23[3] = &unk_1E7FD8D80;
            v22 = v20;
            v24 = v22;
            v26 = v11;
            v27 = v13;
            v25 = v9;
            [v22 loadImageWithScale:v13 isDarkStyle:v23 completionHandler:v11];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
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