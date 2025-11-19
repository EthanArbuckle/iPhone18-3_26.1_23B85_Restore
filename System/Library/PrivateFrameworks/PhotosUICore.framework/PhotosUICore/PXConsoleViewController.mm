@interface PXConsoleViewController
@end

@implementation PXConsoleViewController

void __41___PXConsoleViewController_appendOutput___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) _textView];
  v2 = [v9 px_isScrolledAtEdge:3];
  v3 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F1741150];
  v4 = [v9 attributedText];
  if ([v4 length])
  {
    [v3 appendAttributedString:v4];
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v3 appendAttributedString:v5];
  }

  [v3 appendAttributedString:*(a1 + 40)];
  v6 = *MEMORY[0x1E69DB650];
  v7 = [MEMORY[0x1E69DC888] labelColor];
  [v3 addAttribute:v6 value:v7 range:{0, objc_msgSend(v3, "length")}];

  [v9 setAttributedText:v3];
  if (v2)
  {
    [v9 px_scrollToEdge:3 animated:0];
  }

  v8 = [*(a1 + 40) string];
  NSLog(&stru_1F1740FB0.isa, v8);
}

@end