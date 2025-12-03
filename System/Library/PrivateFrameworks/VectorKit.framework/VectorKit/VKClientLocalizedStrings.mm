@interface VKClientLocalizedStrings
- (VKClientLocalizedStrings)initWithStrings:(id)strings locale:(id)locale;
- (void)getAnnotationTextForChargersAvailable:(unint64_t)available total:(unint64_t)total text:(id *)text locale:(id *)locale;
- (void)getAnnotationTextForChargersNoStatus:(unint64_t)status text:(id *)text locale:(id *)locale;
- (void)getAnnotationTextForChargersNoneAvailable:(id *)available locale:(id *)locale;
- (void)getClusterAnnotationTextForClusterCount:(unint64_t)count text:(id *)text locale:(id *)locale;
- (void)getTextForKey:(id)key text:(id *)text locale:(id *)locale;
@end

@implementation VKClientLocalizedStrings

- (void)getAnnotationTextForChargersNoStatus:(unint64_t)status text:(id *)text locale:(id *)locale
{
  v10 = 0;
  [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A88530 text:&v10 locale:0];
  v9 = v10;
  if (v9)
  {
    *text = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%lu" error:0, status];
    if (locale)
    {
      *locale = self->_locale;
    }
  }
}

- (void)getAnnotationTextForChargersAvailable:(unint64_t)available total:(unint64_t)total text:(id *)text locale:(id *)locale
{
  v12 = 0;
  [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A88518 text:&v12 locale:0];
  v11 = v12;
  if (v11)
  {
    *text = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%1$lu%2$lu" error:0, available, total];
    if (locale)
    {
      *locale = self->_locale;
    }
  }
}

- (void)getAnnotationTextForChargersNoneAvailable:(id *)available locale:(id *)locale
{
  v8 = 0;
  [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A88500 text:&v8 locale:0];
  v7 = v8;
  if (v7)
  {
    *available = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%d" error:0, 0];
    if (locale)
    {
      *locale = self->_locale;
    }
  }
}

- (void)getClusterAnnotationTextForClusterCount:(unint64_t)count text:(id *)text locale:(id *)locale
{
  if (count >= 2)
  {
    countCopy = count;
    v10 = 0;
    [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A884E8 text:&v10 locale:0];
    v9 = v10;
    if (v9)
    {
      *text = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:0, (countCopy - 1)];
      if (locale)
      {
        *locale = self->_locale;
      }
    }
  }
}

- (void)getTextForKey:(id)key text:(id *)text locale:(id *)locale
{
  keyCopy = key;
  *text = [(NSDictionary *)self->_stringDictionary objectForKeyedSubscript:?];
  if (locale)
  {
    *locale = self->_locale;
  }
}

- (VKClientLocalizedStrings)initWithStrings:(id)strings locale:(id)locale
{
  stringsCopy = strings;
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = VKClientLocalizedStrings;
  v8 = [(VKClientLocalizedStrings *)&v13 init];
  if (v8)
  {
    v9 = [stringsCopy copy];
    stringDictionary = v8->_stringDictionary;
    v8->_stringDictionary = v9;

    objc_storeStrong(&v8->_locale, locale);
    v11 = v8;
  }

  return v8;
}

@end