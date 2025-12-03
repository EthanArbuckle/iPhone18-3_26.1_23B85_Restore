@interface SWLoader
+ (id)loaderWithBlock:(id)block;
- (void)load;
@end

@implementation SWLoader

+ (id)loaderWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  v6 = MEMORY[0x1DA6FDA60](blockCopy);

  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)load
{
  loadBlock = [(SWLoader *)self loadBlock];
  loadBlock[2]();
}

@end