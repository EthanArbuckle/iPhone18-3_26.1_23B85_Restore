@interface POSOAPFaultDetail
- (POSOAPFaultDetail)init;
@end

@implementation POSOAPFaultDetail

- (POSOAPFaultDetail)init
{
  v6.receiver = self;
  v6.super_class = POSOAPFaultDetail;
  v2 = [(POSOAPFaultDetail *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

@end