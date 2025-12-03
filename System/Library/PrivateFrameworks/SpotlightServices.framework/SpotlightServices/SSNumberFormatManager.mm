@interface SSNumberFormatManager
+ (id)currencyStringWithAmount:(id)amount currencyCode:(id)code;
+ (id)stringFromByteCount:(int64_t)count;
+ (void)initialize;
- (SSNumberFormatManager)init;
@end

@implementation SSNumberFormatManager

+ (void)initialize
{
  if (objc_opt_class() == self)
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

    byteCountFormatter = [(SSNumberFormatManager *)v2 byteCountFormatter];
    [byteCountFormatter setCountStyle:0];

    v6 = objc_opt_new();
    [(SSNumberFormatManager *)v2 setCurrencyFormatter:v6];

    currencyFormatter = [(SSNumberFormatManager *)v2 currencyFormatter];
    [currencyFormatter setNumberStyle:2];
  }

  return v2;
}

+ (id)stringFromByteCount:(int64_t)count
{
  byteCountFormatter = [sharedNumberFormatManager byteCountFormatter];
  v5 = [byteCountFormatter stringFromByteCount:count];

  return v5;
}

+ (id)currencyStringWithAmount:(id)amount currencyCode:(id)code
{
  v5 = sharedNumberFormatManager;
  codeCopy = code;
  amountCopy = amount;
  currencyFormatter = [v5 currencyFormatter];
  [currencyFormatter setCurrencyCode:codeCopy];

  currencyFormatter2 = [sharedNumberFormatManager currencyFormatter];
  v10 = [currencyFormatter2 stringFromNumber:amountCopy];

  return v10;
}

@end