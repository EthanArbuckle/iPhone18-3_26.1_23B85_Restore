@interface NSAttributedString(VideosExtras)
+ (id)attributedStringWithTextElement:()VideosExtras baseFont:;
@end

@implementation NSAttributedString(VideosExtras)

+ (id)attributedStringWithTextElement:()VideosExtras baseFont:
{
  v5 = a3;
  v6 = [v5 attributedStringWithFont:a4];
  v7 = [v6 string];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F5DB25C0;
  }

  v9 = [(__CFString *)v8 length];
  v10 = [v5 textAttributes];

  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
  [v11 addAttributes:v10 range:{0, v9}];

  return v11;
}

@end