@interface SFUMemoryOutputStream
- (SFUMemoryOutputStream)initWithData:(id)a3;
- (void)dealloc;
@end

@implementation SFUMemoryOutputStream

- (SFUMemoryOutputStream)initWithData:(id)a3
{
  v4 = [(SFUMemoryOutputStream *)self init];
  if (v4)
  {
    v4->mData = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryOutputStream;
  [(SFUMemoryOutputStream *)&v3 dealloc];
}

@end