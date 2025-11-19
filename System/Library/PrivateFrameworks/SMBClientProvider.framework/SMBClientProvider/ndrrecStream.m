@interface ndrrecStream
- (ndrrecStream)init;
- (void)dealloc;
@end

@implementation ndrrecStream

- (ndrrecStream)init
{
  v6.receiver = self;
  v6.super_class = ndrrecStream;
  v2 = [(ndrrecStream *)&v6 init];
  v3 = v2;
  if (v2)
  {
    tctx = v2->_tctx;
    v2->_tctx = 0;

    v3->_out_base = 0;
    v3->_in_base = 0;
  }

  return v3;
}

- (void)dealloc
{
  if ([(ndrrecStream *)self out_base])
  {
    free([(ndrrecStream *)self out_base]);
  }

  if ([(ndrrecStream *)self in_base])
  {
    free([(ndrrecStream *)self in_base]);
  }

  [(ndrrecStream *)self setTctx:0];
  v3.receiver = self;
  v3.super_class = ndrrecStream;
  [(ndrrecStream *)&v3 dealloc];
}

@end