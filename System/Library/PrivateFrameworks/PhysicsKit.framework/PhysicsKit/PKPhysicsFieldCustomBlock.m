@interface PKPhysicsFieldCustomBlock
+ (id)fieldWithCustomBatchBlock:(id)a3;
+ (id)fieldWithCustomBlock:(id)a3;
- (PKPhysicsFieldCustomBlock)initWithCustomBatchBlock:(id)a3;
- (PKPhysicsFieldCustomBlock)initWithCustomBlock:(id)a3;
@end

@implementation PKPhysicsFieldCustomBlock

- (PKPhysicsFieldCustomBlock)initWithCustomBlock:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPhysicsFieldCustomBlock;
  if ([(PKPhysicsField *)&v6 init])
  {
    std::allocate_shared[abi:ne200100]<PKCFieldUser,std::allocator<PKCFieldUser>,void *,0>();
  }

  return 0;
}

+ (id)fieldWithCustomBlock:(id)a3
{
  v3 = a3;
  v4 = [[PKPhysicsFieldCustomBlock alloc] initWithCustomBlock:v3];

  return v4;
}

- (PKPhysicsFieldCustomBlock)initWithCustomBatchBlock:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPhysicsFieldCustomBlock;
  if ([(PKPhysicsField *)&v6 init])
  {
    std::allocate_shared[abi:ne200100]<PKCFieldUser,std::allocator<PKCFieldUser>,void *,0>();
  }

  return 0;
}

+ (id)fieldWithCustomBatchBlock:(id)a3
{
  v3 = a3;
  v4 = [[PKPhysicsFieldCustomBlock alloc] initWithCustomBatchBlock:v3];

  return v4;
}

@end