@interface PKBankConnectFormatter
+ (id)formatAsOfDate:(id)date hasMultipleBalance:(BOOL)balance;
@end

@implementation PKBankConnectFormatter

+ (id)formatAsOfDate:(id)date hasMultipleBalance:(BOOL)balance
{
  balanceCopy = balance;
  dateCopy = date;
  v6 = objc_alloc_init(_TtC9PassKitUI20BankConnectFormatter);
  v7 = [(BankConnectFormatter *)v6 formatAsOfDate:dateCopy hasMultipleBalances:balanceCopy];

  return v7;
}

@end