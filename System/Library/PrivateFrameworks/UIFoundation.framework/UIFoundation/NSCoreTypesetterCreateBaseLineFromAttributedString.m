@interface NSCoreTypesetterCreateBaseLineFromAttributedString
@end

@implementation NSCoreTypesetterCreateBaseLineFromAttributedString

void ____NSCoreTypesetterCreateBaseLineFromAttributedString_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v4 = a2;
  if ([objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "string")] != 65532)
  {
    return;
  }

  if ([v4 _isEmojiImage])
  {
    goto LABEL_6;
  }

  v6 = [v4 adaptiveImageGlyph];
  if (v6)
  {
    v4 = v6;
LABEL_6:
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      *(*(*(a1 + 48) + 8) + 40) = [[_NSCachedAttributedString alloc] initWithAttributedString:*(*(*(a1 + 40) + 8) + 40)];
      *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 48) + 8) + 40);
      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    v8 = *MEMORY[0x1E6965628];

    [v7 addAttribute:v8 value:v4 range:{a3, 1}];
    return;
  }

  v9 = [*(a1 + 32) textLayoutFragment];
  if (v9)
  {
    v10 = [objc_msgSend(v9 "textParagraph")];
  }

  else
  {
    v10 = [[NSCountableTextLocation alloc] initWithIndex:a3];
  }

  v14 = v10;
  v11 = [objc_msgSend(*(a1 + 32) textAttachmentLayoutInfoForLocation:v10 attributes:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "attributesAtIndex:effectiveRange:", a3, 0)), "runDelegate"}];
  if (v11)
  {
    v12 = v11;
    v13 = *(*(*(a1 + 48) + 8) + 40);
    if (!v13)
    {
      *(*(*(a1 + 48) + 8) + 40) = [[_NSCachedAttributedString alloc] initWithAttributedString:*(*(*(a1 + 40) + 8) + 40)];
      *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 48) + 8) + 40);
      v13 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v13 addAttribute:*MEMORY[0x1E6965A50] value:v12 range:{a3, 1}];
  }
}

uint64_t ____NSCoreTypesetterCreateBaseLineFromAttributedString_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    return v4 + a2;
  }

  else
  {
    return 0;
  }
}

@end