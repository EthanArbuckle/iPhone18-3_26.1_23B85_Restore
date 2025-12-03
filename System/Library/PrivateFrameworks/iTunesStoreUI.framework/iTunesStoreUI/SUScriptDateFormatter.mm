@interface SUScriptDateFormatter
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)dateFormat;
- (NSString)localeIdentifier;
- (SUScriptDateFormatter)init;
- (double)dateFromString:(id)string;
- (id)scriptAttributeKeys;
- (id)stringFromDate:(id)date;
- (unint64_t)dateStyle;
- (unint64_t)timeStyle;
- (void)dealloc;
- (void)setDateFormat:(id)format;
- (void)setDateStyle:(unint64_t)style;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setTimeStyle:(unint64_t)style;
@end

@implementation SUScriptDateFormatter

- (SUScriptDateFormatter)init
{
  v4.receiver = self;
  v4.super_class = SUScriptDateFormatter;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    v2->_dateFormatter = objc_alloc_init(MEMORY[0x1E696AB78]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptDateFormatter;
  [(SUScriptObject *)&v3 dealloc];
}

- (double)dateFromString:(id)string
{
  [(SUScriptObject *)self lock];
  [[(NSDateFormatter *)self->_dateFormatter dateFromString:string] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(SUScriptObject *)self unlock];
  return v6;
}

- (id)stringFromDate:(id)date
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    dateFormatter = self->_dateFormatter;
    v6 = MEMORY[0x1E695DF00];
    [date doubleValue];
    v7 = -[NSDateFormatter stringFromDate:](dateFormatter, "stringFromDate:", [v6 dateWithTimeIntervalSinceReferenceDate:?]);
    [(SUScriptObject *)self unlock];
    return v7;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    return 0;
  }
}

- (NSString)dateFormat
{
  [(SUScriptObject *)self lock];
  dateFormat = [(NSDateFormatter *)self->_dateFormatter dateFormat];
  [(SUScriptObject *)self unlock];
  return dateFormat;
}

- (unint64_t)dateStyle
{
  [(SUScriptObject *)self lock];
  dateStyle = [(NSDateFormatter *)self->_dateFormatter dateStyle];
  [(SUScriptObject *)self unlock];
  return dateStyle;
}

- (NSString)localeIdentifier
{
  [(SUScriptObject *)self lock];
  localeIdentifier = [(NSLocale *)[(NSDateFormatter *)self->_dateFormatter locale] localeIdentifier];
  [(SUScriptObject *)self unlock];
  return localeIdentifier;
}

- (void)setDateFormat:(id)format
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!format || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = format, (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_3:
    [(SUScriptObject *)self lock];
    [(NSDateFormatter *)self->_dateFormatter setDateFormat:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setDateStyle:(unint64_t)style
{
  [(SUScriptObject *)self lock];
  [(NSDateFormatter *)self->_dateFormatter setDateStyle:style];

  [(SUScriptObject *)self unlock];
}

- (void)setLocaleIdentifier:(id)identifier
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:identifier]) != 0)
  {
    v7 = v5;
    [(SUScriptObject *)self lock];
    [(NSDateFormatter *)self->_dateFormatter setLocale:v7];
    [(SUScriptObject *)self unlock];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setTimeStyle:(unint64_t)style
{
  [(SUScriptObject *)self lock];
  [(NSDateFormatter *)self->_dateFormatter setTimeStyle:style];

  [(SUScriptObject *)self unlock];
}

- (unint64_t)timeStyle
{
  [(SUScriptObject *)self lock];
  timeStyle = [(NSDateFormatter *)self->_dateFormatter timeStyle];
  [(SUScriptObject *)self unlock];
  return timeStyle;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_58 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDateFormatter;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_43, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDateFormatter;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDateFormatter;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_58 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_43 = sel_dateFromString_;
    unk_1EBF3B540 = @"dateFromString";
    qword_1EBF3B548 = sel_stringFromDate_;
    unk_1EBF3B550 = @"stringFromDate";
    __KeyMapping_58 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"dateFormat", @"dateStyle", @"dateStyle", @"localeIdentifier", @"localeIdentifier", @"timeStyle", @"timeStyle", @"DATE_FORMATTER_STYLE_FULL", @"dateFormatterFullStyle", @"DATE_FORMATTER_STYLE_LONG", @"dateFormatterLongStyle", @"DATE_FORMATTER_STYLE_MEDIUM", @"dateFormatterMediumStyle", @"DATE_FORMATTER_STYLE_NONE", @"dateFormatterNoStyle", @"DATE_FORMATTER_STYLE_SHORT", @"dateFormatterShortStyle", 0}];
  }
}

@end