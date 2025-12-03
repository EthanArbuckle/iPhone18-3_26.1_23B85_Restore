@interface SearchUITLKMultilineTextConverter
+ (id)formattedTextForSearchUIText:(id)text;
+ (id)richTextForSearchUIText:(id)text withCompletionHandler:(id)handler;
+ (id)textForSearchUIString:(id)string;
+ (id)textForSearchUIText:(id)text;
+ (void)applyRichText:(id)text toTLKRichText:(id)richText isAsync:(BOOL)async;
@end

@implementation SearchUITLKMultilineTextConverter

+ (id)textForSearchUIText:(id)text
{
  if (text)
  {
    v3 = MEMORY[0x1E69D91B8];
    textCopy = text;
    text = [textCopy text];
    v6 = [v3 textWithString:text];

    maxLines = [textCopy maxLines];
    [v6 setMaxLines:maxLines];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)textForSearchUIString:(id)string
{
  if (string)
  {
    v3 = [MEMORY[0x1E69D91B8] textWithString:?];
    [v3 setMaxLines:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)richTextForSearchUIText:(id)text withCompletionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  if (textCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = [self richTextOverridesAsyncLoader:textCopy];
    v8 = objc_opt_new();
    if (*(v18 + 24) == 1)
    {
      objc_initWeak(&location, textCopy);
      objc_initWeak(&from, v8);
      [self applyRichText:textCopy toTLKRichText:v8 isAsync:1];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __83__SearchUITLKMultilineTextConverter_richTextForSearchUIText_withCompletionHandler___block_invoke;
      v10[3] = &unk_1E85B4908;
      objc_copyWeak(&v13, &location);
      objc_copyWeak(v14, &from);
      v14[1] = self;
      v11 = handlerCopy;
      v12 = &v17;
      [textCopy loadRichTextWithCompletionHandler:v10];

      objc_destroyWeak(v14);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else
    {
      [self applyRichText:textCopy toTLKRichText:v8 isAsync:0];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, textCopy, v8, *(v18 + 24));
      }
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __83__SearchUITLKMultilineTextConverter_richTextForSearchUIText_withCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__SearchUITLKMultilineTextConverter_richTextForSearchUIText_withCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E85B4908;
  objc_copyWeak(&v7, (a1 + 48));
  objc_copyWeak(v8, (a1 + 56));
  v8[1] = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v4];

  objc_destroyWeak(v8);
  objc_destroyWeak(&v7);
}

void __83__SearchUITLKMultilineTextConverter_richTextForSearchUIText_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 64) applyRichText:WeakRetained toTLKRichText:v2 isAsync:1];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, WeakRetained, v2, *(*(*(a1 + 40) + 8) + 24));
  }
}

+ (void)applyRichText:(id)text toTLKRichText:(id)richText isAsync:(BOOL)async
{
  asyncCopy = async;
  v43 = *MEMORY[0x1E69E9840];
  textCopy = text;
  richTextCopy = richText;
  v8 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  formattedTextPieces = [textCopy formattedTextPieces];
  v10 = [formattedTextPieces countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(formattedTextPieces);
        }

        v14 = [self formattedTextForSearchUIText:*(*(&v37 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [formattedTextPieces countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [textCopy icons];
  v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v20 = objc_opt_new();
        v21 = [SearchUIImage imageWithSFImage:v19 variantForAppIcon:0];
        v22 = [SearchUITLKImageConverter imageForSFImage:v21];
        [v20 setImage:v22];

        [v8 addObject:v20];
      }

      v16 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v16);
  }

  [textCopy starRating];
  if (v23 > 0.0)
  {
    v24 = objc_opt_new();
    [textCopy starRating];
    [v24 setStarRating:?];
    [v8 addObject:v24];
  }

  contentAdvisory = [textCopy contentAdvisory];
  v26 = [contentAdvisory length];

  if (v26)
  {
    contentAdvisory = objc_opt_new();
    contentAdvisory2 = [textCopy contentAdvisory];
    [contentAdvisory setString:contentAdvisory2];

    [v8 addObject:contentAdvisory];
  }

  [richTextCopy setFormattedTextItems:v8];
  if (asyncCopy)
  {
    contentAdvisory = [textCopy text];
    if (![contentAdvisory length])
    {
      [richTextCopy setText:@" "];
      goto LABEL_24;
    }
  }

  text = [textCopy text];
  [richTextCopy setText:text];

  if (asyncCopy)
  {
LABEL_24:

    maxLines = 1;
    goto LABEL_25;
  }

  maxLines = [textCopy maxLines];
LABEL_25:
  [richTextCopy setMaxLines:maxLines];
}

+ (id)formattedTextForSearchUIText:(id)text
{
  textCopy = text;
  glyph = [textCopy glyph];

  if (glyph)
  {
    v5 = objc_opt_new();
    glyph2 = [textCopy glyph];
    v7 = [SearchUIImage imageWithSFImage:glyph2 variantForAppIcon:0];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v7 symbolScale])
    {
      [v7 setSymbolScale:1];
    }

    v8 = [SearchUITLKImageConverter imageForSFImage:v7];
    [v5 setTlkImage:v8];
  }

  else
  {
    v5 = objc_opt_new();
    text = [textCopy text];
    [v5 setString:text];

    [v5 setMaxLines:{objc_msgSend(textCopy, "maxLines")}];
    encapsulationStyle = [textCopy encapsulationStyle];
    if (encapsulationStyle == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (encapsulationStyle == 2);
    }

    [v5 setEncapsulationStyle:v11];
  }

  [v5 setColor:{+[SearchUITLKConverters colorForSFColor:](SearchUITLKConverters, "colorForSFColor:", objc_msgSend(textCopy, "textColor"))}];
  [v5 setIsBold:{objc_msgSend(textCopy, "isBold")}];
  [v5 setIsEmphasized:{objc_msgSend(textCopy, "isEmphasized")}];

  return v5;
}

@end