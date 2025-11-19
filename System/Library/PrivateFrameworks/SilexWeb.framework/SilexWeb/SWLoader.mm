@interface SWLoader
+ (id)loaderWithBlock:(id)a3;
- (void)load;
@end

@implementation SWLoader

+ (id)loaderWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = MEMORY[0x1DA6FDA60](v4);

  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)load
{
  v2 = [(SWLoader *)self loadBlock];
  v2[2]();
}

@end