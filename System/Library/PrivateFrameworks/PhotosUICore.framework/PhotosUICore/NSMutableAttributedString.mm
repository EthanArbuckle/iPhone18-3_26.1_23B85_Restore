@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __98__NSMutableAttributedString_PhotosUICore__px_replaceFontWithFontDescriptor_keepingSymbolicTraits___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v17;
  if (isKindOfClass)
  {
    v9 = v17;
    v10 = v9;
    if (*(a1 + 32) && ([v9 fontDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "symbolicTraits"), v13 = *(a1 + 48), v11, v14 = MEMORY[0x1E69DB878], objc_msgSend(*(a1 + 32), "fontDescriptorWithSymbolicTraits:", v13 & v12), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "fontWithDescriptor:size:", v15, 0.0), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
    {
      [*(a1 + 40) addAttribute:*MEMORY[0x1E69DB648] value:v16 range:{a3, a4}];
    }

    else
    {
      [*(a1 + 40) removeAttribute:*MEMORY[0x1E69DB648] range:{a3, a4}];
    }

    v8 = v17;
  }
}

@end