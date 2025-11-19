@interface PCSRegistryOperationPair
- (id)description;
- (id)init:(id)a3 finish:(id)a4;
@end

@implementation PCSRegistryOperationPair

- (id)init:(id)a3 finish:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PCSRegistryOperationPair;
  v9 = [(PCSRegistryOperationPair *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_actualOperation, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (id)description
{
  v3 = [(PCSRegistryOperationPair *)self actualOperation];
  v4 = [(PCSRegistryOperationPair *)self finishOperation];
  v5 = [NSString stringWithFormat:@"<PCSRegistryOperationPair: %@, %@>", v3, v4];

  return v5;
}

@end