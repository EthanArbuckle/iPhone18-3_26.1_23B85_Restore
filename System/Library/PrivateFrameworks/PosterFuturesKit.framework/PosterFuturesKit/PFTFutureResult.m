@interface PFTFutureResult
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)setResult:(id)a3 error:(id)a4;
@end

@implementation PFTFutureResult

- (void)setResult:(id)a3 error:(id)a4
{
  if (a3)
  {
    [(PFTFutureResult *)self setResult:a3, a4];
  }

  else
  {
    [(PFTFutureResult *)self setError:a4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(PFTFutureResult *)self result];
  v6 = [(PFTFutureResult *)self error];
  [v4 setResult:v5 error:v6];

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __30__PFTFutureResult_description__block_invoke;
  v10 = &unk_279A52B88;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v8 = a3;
  v4 = [(PFTFutureResult *)self result];
  v5 = [(PFTFutureResult *)self error];
  if (!(v4 | v5))
  {
    [v8 appendString:@"unfinished" withName:0];
  }

  v6 = [v8 appendObject:self->_result withName:@"_result" skipIfNil:1];
  v7 = [v8 appendObject:self->_error withName:@"_error" skipIfNil:1];
}

@end