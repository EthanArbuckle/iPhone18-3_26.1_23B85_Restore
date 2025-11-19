@interface SAMutableDataOutputStream
- (id)initWithMutableData:(void *)a1;
@end

@implementation SAMutableDataOutputStream

- (id)initWithMutableData:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = SAMutableDataOutputStream;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 17, a2);
  }

  return v4;
}

@end