@interface AEABlockCancelable
- (void)cancel;
@end

@implementation AEABlockCancelable

- (void)cancel
{
  v2 = *self->cancelHandler;
  if (v2)
  {
    v3 = *&self->cancelHandler[8];
    *self->cancelHandler = 0;
    *&self->cancelHandler[8] = 0;

    v2(v4);

    sub_10000858C(v2);
  }
}

@end