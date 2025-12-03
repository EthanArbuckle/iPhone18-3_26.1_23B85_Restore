@interface SFUMemoryOutputStream
- (SFUMemoryOutputStream)initWithData:(id)data;
- (void)dealloc;
@end

@implementation SFUMemoryOutputStream

- (SFUMemoryOutputStream)initWithData:(id)data
{
  v4 = [(SFUMemoryOutputStream *)self init];
  if (v4)
  {
    v4->mData = data;
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