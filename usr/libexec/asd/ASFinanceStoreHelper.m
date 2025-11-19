@interface ASFinanceStoreHelper
- (NSString)errorDomain;
- (void)countTransactionsWithStartDateOffset:(unint64_t)a3 endDateOffset:(unint64_t)a4 transactionSources:(unint64_t)a5 locationType:(unint64_t)a6 locationFilterDistance:(int64_t)a7 lat:(NSString *)a8 lon:(NSString *)a9 maxCount:(unint64_t)a10 completionHandler:(id)aBlock;
@end

@implementation ASFinanceStoreHelper

- (NSString)errorDomain
{
  v2 = ASFinanceStoreHelper.errorDomain.getter();

  return v2;
}

- (void)countTransactionsWithStartDateOffset:(unint64_t)a3 endDateOffset:(unint64_t)a4 transactionSources:(unint64_t)a5 locationType:(unint64_t)a6 locationFilterDistance:(int64_t)a7 lat:(NSString *)a8 lon:(NSString *)a9 maxCount:(unint64_t)a10 completionHandler:(id)aBlock
{
  v17 = _Block_copy(aBlock);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v18[9] = a10;
  v18[10] = v17;
  v18[11] = self;
  v19 = a8;
  v20 = a9;
  v21 = self;

  sub_1000CAD58(&unk_1005CC7A0, v18);
}

@end