@interface NSAttributedString(VideosExtras)
+ (id)attributedStringWithTextElement:()VideosExtras baseFont:;
@end

@implementation NSAttributedString(VideosExtras)

+ (id)attributedStringWithTextElement:()VideosExtras baseFont:
{
  v5 = a3;
  v6 = [v5 attributedStringWithFont:a4];
  string = [v6 string];
  if (string)
  {
    v8 = string;
  }

  else
  {
    v8 = &stru_1F5DB25C0;
  }

  v9 = [(__CFString *)v8 length];
  textAttributes = [v5 textAttributes];

  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
  [v11 addAttributes:textAttributes range:{0, v9}];

  return v11;
}

@end