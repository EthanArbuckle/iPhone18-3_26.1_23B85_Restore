@interface PKBankConnectFormatter
+ (id)formatAsOfDate:(id)a3 hasMultipleBalance:(BOOL)a4;
@end

@implementation PKBankConnectFormatter

+ (id)formatAsOfDate:(id)a3 hasMultipleBalance:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(_TtC9PassKitUI20BankConnectFormatter);
  v7 = [(BankConnectFormatter *)v6 formatAsOfDate:v5 hasMultipleBalances:v4];

  return v7;
}

@end