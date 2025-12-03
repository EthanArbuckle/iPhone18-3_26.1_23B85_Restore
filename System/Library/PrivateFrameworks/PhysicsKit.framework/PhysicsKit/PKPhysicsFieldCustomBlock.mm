@interface PKPhysicsFieldCustomBlock
+ (id)fieldWithCustomBatchBlock:(id)block;
+ (id)fieldWithCustomBlock:(id)block;
- (PKPhysicsFieldCustomBlock)initWithCustomBatchBlock:(id)block;
- (PKPhysicsFieldCustomBlock)initWithCustomBlock:(id)block;
@end

@implementation PKPhysicsFieldCustomBlock

- (PKPhysicsFieldCustomBlock)initWithCustomBlock:(id)block
{
  blockCopy = block;
  v6.receiver = self;
  v6.super_class = PKPhysicsFieldCustomBlock;
  if ([(PKPhysicsField *)&v6 init])
  {
    std::allocate_shared[abi:ne200100]<PKCFieldUser,std::allocator<PKCFieldUser>,void *,0>();
  }

  return 0;
}

+ (id)fieldWithCustomBlock:(id)block
{
  blockCopy = block;
  v4 = [[PKPhysicsFieldCustomBlock alloc] initWithCustomBlock:blockCopy];

  return v4;
}

- (PKPhysicsFieldCustomBlock)initWithCustomBatchBlock:(id)block
{
  blockCopy = block;
  v6.receiver = self;
  v6.super_class = PKPhysicsFieldCustomBlock;
  if ([(PKPhysicsField *)&v6 init])
  {
    std::allocate_shared[abi:ne200100]<PKCFieldUser,std::allocator<PKCFieldUser>,void *,0>();
  }

  return 0;
}

+ (id)fieldWithCustomBatchBlock:(id)block
{
  blockCopy = block;
  v4 = [[PKPhysicsFieldCustomBlock alloc] initWithCustomBatchBlock:blockCopy];

  return v4;
}

@end