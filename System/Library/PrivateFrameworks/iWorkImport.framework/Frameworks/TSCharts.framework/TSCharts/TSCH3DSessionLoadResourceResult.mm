@interface TSCH3DSessionLoadResourceResult
- (TSCH3DSessionLoadResourceResult)init;
@end

@implementation TSCH3DSessionLoadResourceResult

- (TSCH3DSessionLoadResourceResult)init
{
  v7.receiver = self;
  v7.super_class = TSCH3DSessionLoadResourceResult;
  v2 = [(TSCH3DSessionLoadResourceResult *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_generated = 0;
    v2->_failed = 0;
    handle = v2->_handle;
    v2->_handle = 0;

    resource = v3->_resource;
    v3->_resource = 0;
  }

  return v3;
}

@end