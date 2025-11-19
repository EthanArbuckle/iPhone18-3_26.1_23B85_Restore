@interface VKClientLocalizedStrings
- (VKClientLocalizedStrings)initWithStrings:(id)a3 locale:(id)a4;
- (void)getAnnotationTextForChargersAvailable:(unint64_t)a3 total:(unint64_t)a4 text:(id *)a5 locale:(id *)a6;
- (void)getAnnotationTextForChargersNoStatus:(unint64_t)a3 text:(id *)a4 locale:(id *)a5;
- (void)getAnnotationTextForChargersNoneAvailable:(id *)a3 locale:(id *)a4;
- (void)getClusterAnnotationTextForClusterCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5;
- (void)getTextForKey:(id)a3 text:(id *)a4 locale:(id *)a5;
@end

@implementation VKClientLocalizedStrings

- (void)getAnnotationTextForChargersNoStatus:(unint64_t)a3 text:(id *)a4 locale:(id *)a5
{
  v10 = 0;
  [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A88530 text:&v10 locale:0];
  v9 = v10;
  if (v9)
  {
    *a4 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%lu" error:0, a3];
    if (a5)
    {
      *a5 = self->_locale;
    }
  }
}

- (void)getAnnotationTextForChargersAvailable:(unint64_t)a3 total:(unint64_t)a4 text:(id *)a5 locale:(id *)a6
{
  v12 = 0;
  [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A88518 text:&v12 locale:0];
  v11 = v12;
  if (v11)
  {
    *a5 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%1$lu%2$lu" error:0, a3, a4];
    if (a6)
    {
      *a6 = self->_locale;
    }
  }
}

- (void)getAnnotationTextForChargersNoneAvailable:(id *)a3 locale:(id *)a4
{
  v8 = 0;
  [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A88500 text:&v8 locale:0];
  v7 = v8;
  if (v7)
  {
    *a3 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%d" error:0, 0];
    if (a4)
    {
      *a4 = self->_locale;
    }
  }
}

- (void)getClusterAnnotationTextForClusterCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5
{
  if (a3 >= 2)
  {
    v7 = a3;
    v10 = 0;
    [(VKClientLocalizedStrings *)self getTextForKey:&unk_1F2A884E8 text:&v10 locale:0];
    v9 = v10;
    if (v9)
    {
      *a4 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:0, (v7 - 1)];
      if (a5)
      {
        *a5 = self->_locale;
      }
    }
  }
}

- (void)getTextForKey:(id)a3 text:(id *)a4 locale:(id *)a5
{
  v8 = a3;
  *a4 = [(NSDictionary *)self->_stringDictionary objectForKeyedSubscript:?];
  if (a5)
  {
    *a5 = self->_locale;
  }
}

- (VKClientLocalizedStrings)initWithStrings:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VKClientLocalizedStrings;
  v8 = [(VKClientLocalizedStrings *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    stringDictionary = v8->_stringDictionary;
    v8->_stringDictionary = v9;

    objc_storeStrong(&v8->_locale, a4);
    v11 = v8;
  }

  return v8;
}

@end