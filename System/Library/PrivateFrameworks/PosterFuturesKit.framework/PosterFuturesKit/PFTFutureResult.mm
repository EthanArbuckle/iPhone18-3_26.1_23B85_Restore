@interface PFTFutureResult
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToStream:(id)stream;
- (void)setResult:(id)result error:(id)error;
@end

@implementation PFTFutureResult

- (void)setResult:(id)result error:(id)error
{
  if (result)
  {
    [(PFTFutureResult *)self setResult:result, error];
  }

  else
  {
    [(PFTFutureResult *)self setError:error];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  result = [(PFTFutureResult *)self result];
  error = [(PFTFutureResult *)self error];
  [v4 setResult:result error:error];

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __30__PFTFutureResult_description__block_invoke;
  v10 = &unk_279A52B88;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  result = [(PFTFutureResult *)self result];
  error = [(PFTFutureResult *)self error];
  if (!(result | error))
  {
    [streamCopy appendString:@"unfinished" withName:0];
  }

  v6 = [streamCopy appendObject:self->_result withName:@"_result" skipIfNil:1];
  v7 = [streamCopy appendObject:self->_error withName:@"_error" skipIfNil:1];
}

@end