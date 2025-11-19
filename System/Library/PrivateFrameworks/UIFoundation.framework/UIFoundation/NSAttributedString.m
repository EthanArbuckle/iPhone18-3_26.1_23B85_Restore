@interface NSAttributedString
- (id)_ui_attributedStringScaledByScaleFactor:(id)result;
- (id)_ui_scaledStringWithAttributes:(void *)a3 font:(double)a4 scale:;
@end

@implementation NSAttributedString

uint64_t __87__NSAttributedString_NSAttributedStringUIFoundationAdditions___isAttributedStringAgent__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 32) _inASA];
    _isAttributedStringAgent_isInAgent = result;
  }

  return result;
}

Class __89__NSAttributedString_NSAttributedStringUIFoundationAdditions__allowedSecureCodingClasses__block_invoke()
{
  v23 = objc_alloc(MEMORY[0x1E695DFA8]);
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v23 initWithObjects:{v22, v21, v20, v19, v18, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  Class = objc_getClass("NSFont");
  if (Class)
  {
    [v10 addObject:Class];
  }

  v12 = objc_getClass("NSColor");
  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = objc_getClass("NSImage");
  if (v13)
  {
    [v10 addObject:v13];
  }

  v14 = objc_getClass("NSImageRep");
  if (v14)
  {
    [v10 addObject:v14];
  }

  v15 = objc_getClass("UIFont");
  if (v15)
  {
    [v10 addObject:v15];
  }

  v16 = objc_getClass("UIColor");
  if (v16)
  {
    [v10 addObject:v16];
  }

  result = objc_getClass("UIImage");
  if (result)
  {
    result = [v10 addObject:result];
  }

  allowedSecureCodingClasses_allowedClasses = v10;
  return result;
}

id __109__NSAttributedString_NSAttributedStringUIFoundationAdditions__lineBreakByHyphenatingBeforeIndex_withinRange___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v0 = [objc_msgSend(MEMORY[0x1E695DF58] "preferredLanguages")];
  }

  result = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v0];
  lineBreakByHyphenatingBeforeIndex_withinRange__defaultLocale = result;
  return result;
}

uint64_t __90__NSAttributedString_NSAttributedStringUIFoundationAdditions__containsAttachmentsInRange___block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    result = [v0 BOOLValue];
  }

  else
  {
    result = 1;
  }

  containsAttachmentsInRange__checksImageGlyphs = result;
  return result;
}

uint64_t __90__NSAttributedString_NSAttributedStringUIFoundationAdditions__containsAttachmentsInRange___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void __101__NSAttributedString_NSAttributedStringUIFoundationAdditions__readFromURL_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = [objc_alloc(*(a1 + 32)) initWithAttributedString:v6];
    }

    else
    {
      a2 = 0;
    }
  }

  v8 = a2;
  if (!a2)
  {
    a2 = v6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3, a4);
}

void __102__NSAttributedString_NSAttributedStringUIFoundationAdditions__readFromData_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = [objc_alloc(*(a1 + 32)) initWithAttributedString:v6];
    }

    else
    {
      a2 = 0;
    }
  }

  v8 = a2;
  if (!a2)
  {
    a2 = v6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, a3, a4);
}

NSFont *__87__NSAttributedString_NSExtendedStringDrawing___ui_attributedStringScaledByScaleFactor___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a2 pointSize];
  result = +[UIFont fontWithDescriptor:size:](NSFont, "fontWithDescriptor:size:", [a2 fontDescriptor], round(v8 * *(a1 + 40) * 4.0) * 0.25);
  if (result)
  {
    v10 = result;
    v11 = *(a1 + 32);

    return [v11 addAttribute:@"NSFont" value:v10 range:{a3, a4}];
  }

  return result;
}

void __103__NSAttributedString_NSExtendedStringDrawing___ui_attributedSubstringFromRange_withTrackingAdjustment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc(MEMORY[0x1E696AD98]);
  if (a2)
  {
    [a2 doubleValue];
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v8 initWithDouble:v9 + *(a1 + 40)];
  [*(a1 + 32) addAttribute:@"NSKern" value:v10 range:{a3, a4}];
}

uint64_t __84__NSAttributedString_NSExtendedStringDrawing__boundingRectWithSize_options_context___block_invoke()
{
  result = dyld_program_sdk_at_least();
  boundingRectWithSize_options_context__scaleSingleLineWithHeight = result;
  return result;
}

uint64_t __95__NSAttributedString_NSAttributedStringAttachmentConveniences__attributedStringWithAttachment___block_invoke()
{
  result = dyld_program_minos_at_least();
  attributedStringWithAttachment__useInitWithAttachment = result;
  return result;
}

- (id)_ui_attributedStringScaledByScaleFactor:(id)result
{
  if (result)
  {
    v3 = result;
    v4 = [result mutableCopy];
    v5 = [objc_msgSend(v3 "string")];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __87__NSAttributedString_NSExtendedStringDrawing___ui_attributedStringScaledByScaleFactor___block_invoke;
    v6[3] = &unk_1E72679B8;
    *&v6[5] = a2;
    v6[4] = v4;
    [v3 enumerateAttribute:@"NSFont" inRange:0 options:v5 usingBlock:{0x100000, v6}];
    return v4;
  }

  return result;
}

- (id)_ui_scaledStringWithAttributes:(void *)a3 font:(double)a4 scale:
{
  if (result)
  {
    v6 = result;
    if (a2)
    {
      [a3 pointSize];
      [a2 setObject:objc_msgSend(a3 forKeyedSubscript:{"fontWithSize:", round(v8 * a4 * 4.0) * 0.25), @"NSFont"}];

      return [v6 string];
    }

    else
    {

      return [(NSAttributedString *)result _ui_attributedStringScaledByScaleFactor:a4];
    }
  }

  return result;
}

@end