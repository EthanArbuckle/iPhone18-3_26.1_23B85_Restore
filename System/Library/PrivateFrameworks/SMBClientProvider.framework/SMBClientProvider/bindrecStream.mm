@interface bindrecStream
- (bindrecStream)init;
- (void)dealloc;
@end

@implementation bindrecStream

- (bindrecStream)init
{
  v6.receiver = self;
  v6.super_class = bindrecStream;
  v2 = [(bindrecStream *)&v6 init];
  v3 = v2;
  if (v2)
  {
    tctx = v2->_tctx;
    v2->_tctx = 0;

    v3->_sec_addr = 0;
  }

  return v3;
}

- (void)dealloc
{
  if ([(bindrecStream *)self in_base])
  {
    free([(bindrecStream *)self in_base]);
  }

  if ([(bindrecStream *)self out_base])
  {
    free([(bindrecStream *)self out_base]);
  }

  if ([(bindrecStream *)self sec_addr])
  {
    free([(bindrecStream *)self sec_addr]);
  }

  v3.receiver = self;
  v3.super_class = bindrecStream;
  [(bindrecStream *)&v3 dealloc];
}

@end