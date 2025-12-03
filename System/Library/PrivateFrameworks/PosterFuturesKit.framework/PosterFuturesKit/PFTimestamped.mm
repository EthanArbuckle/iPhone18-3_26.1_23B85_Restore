@interface PFTimestamped
+ (id)timestampedWithValue:(id)value timestamp:(double)timestamp;
+ (id)wrapTransformWithScheduler:(id)scheduler;
- (BOOL)isEqual:(id)equal;
- (PFTimestamped)initWithValue:(id)value timestamp:(double)timestamp;
- (id)description;
- (unint64_t)hash;
@end

@implementation PFTimestamped

+ (id)wrapTransformWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__PFTimestamped_wrapTransformWithScheduler___block_invoke;
  v8[3] = &unk_279A533A0;
  v9 = schedulerCopy;
  selfCopy = self;
  v5 = schedulerCopy;
  v6 = [v8 copy];

  return v6;
}

id __44__PFTimestamped_wrapTransformWithScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 alloc];
  [*(a1 + 32) timestamp];
  v6 = [v5 initWithValue:v4 timestamp:?];

  return v6;
}

+ (id)timestampedWithValue:(id)value timestamp:(double)timestamp
{
  valueCopy = value;
  v7 = [[self alloc] initWithValue:valueCopy timestamp:timestamp];

  return v7;
}

- (PFTimestamped)initWithValue:(id)value timestamp:(double)timestamp
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = PFTimestamped;
  v8 = [(PFTimestamped *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_timestamp = timestamp;
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = MEMORY[0x277CCABB0];
  [(PFTimestamped *)self timestamp];
  v5 = [v4 numberWithDouble:?];
  v6 = [v3 appendObject:v5 withName:@"timestamp"];

  value = [(PFTimestamped *)self value];
  v8 = [v3 appendObject:value withName:@"value"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __25__PFTimestamped_isEqual___block_invoke;
  v13[3] = &unk_279A533C8;
  v13[4] = self;
  v6 = equalCopy;
  v14 = v6;
  v7 = [v5 appendEqualsBlocks:{v13, 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __25__PFTimestamped_isEqual___block_invoke_2;
  v11[3] = &unk_279A533C8;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendEqualsBlocks:{v11, 0}];
  LOBYTE(v6) = [v5 isEqual];

  return v6;
}

uint64_t __25__PFTimestamped_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) value];
  v3 = [*(a1 + 40) value];
  v4 = BSEqualObjects();

  return v4;
}

uint64_t __25__PFTimestamped_isEqual___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) timestamp];
  v3 = v2;
  v4 = [*(a1 + 40) timestamp];
  v5.n128_u64[0] = v7.n128_u64[0];
  v6.n128_u64[0] = 0x3EB0C6F7A0B5ED8DLL;
  v7.n128_u64[0] = v3;

  return MEMORY[0x282143898](v4, v7, v5, v6);
}

- (unint64_t)hash
{
  value = [(PFTimestamped *)self value];
  v3 = [value hash];

  return v3;
}

@end