@interface VUIICUListFormatter
+ (id)localizedStringByJoiningStrings:(id)a3;
+ (id)localizedStringByJoiningStrings:(id)a3 style:(id)a4;
- (VUIICUListFormatter)initWithLocale:(id)a3 style:(id)a4;
- (id)_stringFromStringArray:(id)a3;
- (void)setStyle:(id)a3;
@end

@implementation VUIICUListFormatter

- (VUIICUListFormatter)initWithLocale:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = VUIICUListFormatter;
  v8 = [(NSListFormatter *)&v12 initWithLocale:v6];
  v9 = v8;
  if (v8)
  {
    [(VUIICUListFormatter *)v8 setStyle:v7];
    v10 = v9;
  }

  return v9;
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if ([(__CFString *)v5 length])
  {
    v4 = v5;
  }

  else
  {
    v4 = @"standard";
  }

  objc_storeStrong(&self->_style, v4);
}

- (id)_stringFromStringArray:(id)a3
{
  v4 = a3;
  v5 = [(NSListFormatter *)self _listFormatter];
  v6 = [(VUIICUListFormatter *)self style];
  StringByStyleJoiningStrings = VUICFListFormatterCreateStringByStyleJoiningStrings(*MEMORY[0x1E695E4A8], v5, v6, v4);

  return StringByStyleJoiningStrings;
}

+ (id)localizedStringByJoiningStrings:(id)a3
{
  v3 = [a1 localizedStringByJoiningStrings:a3 style:0];

  return v3;
}

+ (id)localizedStringByJoiningStrings:(id)a3 style:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [[VUIICUListFormatter alloc] initWithLocale:v7 style:v6];
  v9 = [(VUIICUListFormatter *)v8 _stringFromStringArray:v5];

  return v9;
}

@end