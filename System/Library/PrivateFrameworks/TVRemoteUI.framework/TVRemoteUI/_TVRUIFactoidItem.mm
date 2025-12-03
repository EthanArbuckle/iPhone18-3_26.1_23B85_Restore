@interface _TVRUIFactoidItem
+ (id)factoidWithText:(id)text;
+ (id)factoidWithText:(id)text options:(unint64_t)options;
- (_TVRUIFactoidItem)initWithText:(id)text options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _TVRUIFactoidItem

- (_TVRUIFactoidItem)initWithText:(id)text options:(unint64_t)options
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = _TVRUIFactoidItem;
  v8 = [(_TVRUIFactoidItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_factoidText, text);
    v9->_factoidOptions = options;
  }

  return v9;
}

+ (id)factoidWithText:(id)text
{
  textCopy = text;
  v5 = [[self alloc] initWithText:textCopy options:0];

  return v5;
}

+ (id)factoidWithText:(id)text options:(unint64_t)options
{
  textCopy = text;
  v7 = [[self alloc] initWithText:textCopy options:options];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  factoidText = [(_TVRUIFactoidItem *)self factoidText];
  v6 = [v4 initWithText:factoidText options:{-[_TVRUIFactoidItem factoidOptions](self, "factoidOptions")}];

  return v6;
}

@end