@interface SUScriptDateFormatter
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)dateFormat;
- (NSString)localeIdentifier;
- (SUScriptDateFormatter)init;
- (double)dateFromString:(id)a3;
- (id)scriptAttributeKeys;
- (id)stringFromDate:(id)a3;
- (unint64_t)dateStyle;
- (unint64_t)timeStyle;
- (void)dealloc;
- (void)setDateFormat:(id)a3;
- (void)setDateStyle:(unint64_t)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setTimeStyle:(unint64_t)a3;
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

- (double)dateFromString:(id)a3
{
  [(SUScriptObject *)self lock];
  [[(NSDateFormatter *)self->_dateFormatter dateFromString:a3] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(SUScriptObject *)self unlock];
  return v6;
}

- (id)stringFromDate:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [(SUScriptObject *)self lock];
    dateFormatter = self->_dateFormatter;
    v6 = MEMORY[0x1E695DF00];
    [a3 doubleValue];
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
  v3 = [(NSDateFormatter *)self->_dateFormatter dateFormat];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (unint64_t)dateStyle
{
  [(SUScriptObject *)self lock];
  v3 = [(NSDateFormatter *)self->_dateFormatter dateStyle];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (NSString)localeIdentifier
{
  [(SUScriptObject *)self lock];
  v3 = [(NSLocale *)[(NSDateFormatter *)self->_dateFormatter locale] localeIdentifier];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setDateFormat:(id)a3
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
  if (!a3 || (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = a3, (objc_opt_isKindOfClass() & 1) != 0))
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

- (void)setDateStyle:(unint64_t)a3
{
  [(SUScriptObject *)self lock];
  [(NSDateFormatter *)self->_dateFormatter setDateStyle:a3];

  [(SUScriptObject *)self unlock];
}

- (void)setLocaleIdentifier:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:a3]) != 0)
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

- (void)setTimeStyle:(unint64_t)a3
{
  [(SUScriptObject *)self lock];
  [(NSDateFormatter *)self->_dateFormatter setTimeStyle:a3];

  [(SUScriptObject *)self unlock];
}

- (unint64_t)timeStyle
{
  [(SUScriptObject *)self lock];
  v3 = [(NSDateFormatter *)self->_dateFormatter timeStyle];
  [(SUScriptObject *)self unlock];
  return v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_58 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDateFormatter;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_43, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDateFormatter;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDateFormatter;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_58 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_43 = sel_dateFromString_;
    unk_1EBF3B540 = @"dateFromString";
    qword_1EBF3B548 = sel_stringFromDate_;
    unk_1EBF3B550 = @"stringFromDate";
    __KeyMapping_58 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"dateFormat", @"dateStyle", @"dateStyle", @"localeIdentifier", @"localeIdentifier", @"timeStyle", @"timeStyle", @"DATE_FORMATTER_STYLE_FULL", @"dateFormatterFullStyle", @"DATE_FORMATTER_STYLE_LONG", @"dateFormatterLongStyle", @"DATE_FORMATTER_STYLE_MEDIUM", @"dateFormatterMediumStyle", @"DATE_FORMATTER_STYLE_NONE", @"dateFormatterNoStyle", @"DATE_FORMATTER_STYLE_SHORT", @"dateFormatterShortStyle", 0}];
  }
}

@end