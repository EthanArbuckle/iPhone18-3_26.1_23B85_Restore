@interface UIFontPickerFontInfo
@end

@implementation UIFontPickerFontInfo

uint64_t __45___UIFontPickerFontInfo__sortedFacesByWeight__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *off_1E70ECCC0;
  v7 = [v4 objectForKey:*off_1E70ECCC0];
  v8 = [v5 objectForKey:v6];
  v9 = *off_1E70ECD38;
  v10 = [v7 objectForKeyedSubscript:*off_1E70ECD38];
  v11 = [v8 objectForKeyedSubscript:v9];
  v12 = [v10 compare:v11];
  if (!v12)
  {
    v13 = *off_1E70ECCD8;
    v14 = [v7 objectForKeyedSubscript:*off_1E70ECCD8];
    v15 = [v8 objectForKeyedSubscript:v13];
    v12 = [v14 compare:v15];
    if (!v12)
    {
      v18 = [v4 postscriptName];
      v16 = [v5 postscriptName];
      v12 = [v18 localizedStandardCompare:v16];
    }
  }

  return v12;
}

void __45___UIFontPickerFontInfo__sortedFacesByWeight__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[_UIFontPickerFontInfo alloc] initWithFontDescriptor:v4 isSystemFont:*(*(a1 + 40) + 152)];

  [v3 addObject:v5];
}

uint64_t __45___UIFontPickerFontInfo__createPreviewImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  [*(a1 + 32) ascender];
  v4 = v2 + v3;
  [*(a1 + 40) ascender];
  v6 = v4 - v5;
  v7 = v6 + *(a1 + 80);
  if (v7 > *(a1 + 96))
  {
    v8 = *(*(a1 + 48) + 96);
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES %@", v7, @"(?s).*\\p{Arabic}.*"];
      v10 = MEMORY[0x1E696AD98];
      v11 = [*(a1 + 48) preferredShortPreviewString];
      v12 = [v10 numberWithBool:{objc_msgSend(v9, "evaluateWithObject:", v11)}];
      v13 = *(a1 + 48);
      v14 = *(v13 + 96);
      *(v13 + 96) = v12;

      v8 = *(*(a1 + 48) + 96);
    }

    if ([v8 BOOLValue])
    {
      v6 = (*(a1 + 96) - *(a1 + 80)) * 0.5;
    }
  }

  v15 = *(a1 + 56);
  v16 = (*(a1 + 88) - *(a1 + 72)) * 0.5;

  return [v15 drawInRect:{v16, v6}];
}

void __50___UIFontPickerFontInfo_matchesClientFontContext___block_invoke(uint64_t a1, uint64_t (**a2)(void, void), void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 familyName];
  LOBYTE(a2) = (a2)[2](v6, v7);

  if ((a2 & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [*(a1 + 32) fontName];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  v10 = [*(a1 + 32) fontName];
  v11 = v12[2](v12, v10);

  if ((v11 & 1) == 0)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_8:
}

@end