@interface SSNumberFormatManager
+ (id)currencyStringWithAmount:(id)a3 currencyCode:(id)a4;
+ (id)stringFromByteCount:(int64_t)a3;
+ (void)initialize;
- (SSNumberFormatManager)init;
@end

@implementation SSNumberFormatManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sharedNumberFormatManager = objc_opt_new();

    MEMORY[0x1EEE66BB8]();
  }
}

- (SSNumberFormatManager)init
{
  v9.receiver = self;
  v9.super_class = SSNumberFormatManager;
  v2 = [(SSNumberFormatManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SSNumberFormatManager *)v2 setNumberFormatter:v3];

    v4 = objc_opt_new();
    [(SSNumberFormatManager *)v2 setByteCountFormatter:v4];

    v5 = [(SSNumberFormatManager *)v2 byteCountFormatter];
    [v5 setCountStyle:0];

    v6 = objc_opt_new();
    [(SSNumberFormatManager *)v2 setCurrencyFormatter:v6];

    v7 = [(SSNumberFormatManager *)v2 currencyFormatter];
    [v7 setNumberStyle:2];
  }

  return v2;
}

+ (id)stringFromByteCount:(int64_t)a3
{
  v4 = [sharedNumberFormatManager byteCountFormatter];
  v5 = [v4 stringFromByteCount:a3];

  return v5;
}

+ (id)currencyStringWithAmount:(id)a3 currencyCode:(id)a4
{
  v5 = sharedNumberFormatManager;
  v6 = a4;
  v7 = a3;
  v8 = [v5 currencyFormatter];
  [v8 setCurrencyCode:v6];

  v9 = [sharedNumberFormatManager currencyFormatter];
  v10 = [v9 stringFromNumber:v7];

  return v10;
}

@end