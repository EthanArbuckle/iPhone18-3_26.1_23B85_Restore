@interface VUIICUListFormatter
+ (id)localizedStringByJoiningStrings:(id)strings;
+ (id)localizedStringByJoiningStrings:(id)strings style:(id)style;
- (VUIICUListFormatter)initWithLocale:(id)locale style:(id)style;
- (id)_stringFromStringArray:(id)array;
- (void)setStyle:(id)style;
@end

@implementation VUIICUListFormatter

- (VUIICUListFormatter)initWithLocale:(id)locale style:(id)style
{
  localeCopy = locale;
  styleCopy = style;
  v12.receiver = self;
  v12.super_class = VUIICUListFormatter;
  v8 = [(NSListFormatter *)&v12 initWithLocale:localeCopy];
  v9 = v8;
  if (v8)
  {
    [(VUIICUListFormatter *)v8 setStyle:styleCopy];
    v10 = v9;
  }

  return v9;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if ([(__CFString *)styleCopy length])
  {
    v4 = styleCopy;
  }

  else
  {
    v4 = @"standard";
  }

  objc_storeStrong(&self->_style, v4);
}

- (id)_stringFromStringArray:(id)array
{
  arrayCopy = array;
  _listFormatter = [(NSListFormatter *)self _listFormatter];
  style = [(VUIICUListFormatter *)self style];
  StringByStyleJoiningStrings = VUICFListFormatterCreateStringByStyleJoiningStrings(*MEMORY[0x1E695E4A8], _listFormatter, style, arrayCopy);

  return StringByStyleJoiningStrings;
}

+ (id)localizedStringByJoiningStrings:(id)strings
{
  v3 = [self localizedStringByJoiningStrings:strings style:0];

  return v3;
}

+ (id)localizedStringByJoiningStrings:(id)strings style:(id)style
{
  stringsCopy = strings;
  styleCopy = style;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [[VUIICUListFormatter alloc] initWithLocale:currentLocale style:styleCopy];
  v9 = [(VUIICUListFormatter *)v8 _stringFromStringArray:stringsCopy];

  return v9;
}

@end