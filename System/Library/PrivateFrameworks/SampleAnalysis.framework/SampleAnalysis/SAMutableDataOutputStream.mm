@interface SAMutableDataOutputStream
- (id)initWithMutableData:(void *)data;
@end

@implementation SAMutableDataOutputStream

- (id)initWithMutableData:(void *)data
{
  if (!data)
  {
    return 0;
  }

  v6.receiver = data;
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