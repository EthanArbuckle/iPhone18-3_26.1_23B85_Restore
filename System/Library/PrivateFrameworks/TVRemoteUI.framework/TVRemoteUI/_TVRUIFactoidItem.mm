@interface _TVRUIFactoidItem
+ (id)factoidWithText:(id)a3;
+ (id)factoidWithText:(id)a3 options:(unint64_t)a4;
- (_TVRUIFactoidItem)initWithText:(id)a3 options:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _TVRUIFactoidItem

- (_TVRUIFactoidItem)initWithText:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _TVRUIFactoidItem;
  v8 = [(_TVRUIFactoidItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_factoidText, a3);
    v9->_factoidOptions = a4;
  }

  return v9;
}

+ (id)factoidWithText:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithText:v4 options:0];

  return v5;
}

+ (id)factoidWithText:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithText:v6 options:a4];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_TVRUIFactoidItem *)self factoidText];
  v6 = [v4 initWithText:v5 options:{-[_TVRUIFactoidItem factoidOptions](self, "factoidOptions")}];

  return v6;
}

@end