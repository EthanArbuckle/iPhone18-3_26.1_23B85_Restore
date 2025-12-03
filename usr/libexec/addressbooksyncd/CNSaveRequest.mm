@interface CNSaveRequest
+ (id)abs_new;
+ (id)abs_transactionSignature;
@end

@implementation CNSaveRequest

+ (id)abs_new
{
  v3 = objc_alloc_init(CNSaveRequest);
  [v3 setIgnoresGuardianRestrictions:1];
  abs_transactionSignature = [self abs_transactionSignature];
  [v3 setTransactionAuthor:abs_transactionSignature];

  return v3;
}

+ (id)abs_transactionSignature
{
  if (qword_100071C90 != -1)
  {
    sub_10003B2F4();
  }

  v3 = qword_100071C98;

  return v3;
}

@end