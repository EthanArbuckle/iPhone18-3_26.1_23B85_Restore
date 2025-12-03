@interface _PFTConstantFutureImpl
- (NSString)description;
- (_PFTConstantFutureImpl)initWithResult:(id)result;
@end

@implementation _PFTConstantFutureImpl

- (_PFTConstantFutureImpl)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = _PFTConstantFutureImpl;
  v6 = [(_PFTConstantFutureImpl *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __37___PFTConstantFutureImpl_description__block_invoke;
  v10 = &unk_279A52B88;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

@end