@interface WFHarnessTestResultExpectation
- (WFHarnessTestResultExpectation)initWithBlock:(id)block filePath:(id)path lineNumber:(int64_t)number;
- (void)testWithResult:(id)result completion:(id)completion;
@end

@implementation WFHarnessTestResultExpectation

- (void)testWithResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  resultCopy = result;
  block = [(WFHarnessTestResultExpectation *)self block];
  block[2](block, resultCopy, completionCopy);
}

- (WFHarnessTestResultExpectation)initWithBlock:(id)block filePath:(id)path lineNumber:(int64_t)number
{
  blockCopy = block;
  pathCopy = path;
  v11 = pathCopy;
  if (blockCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHarnessTestResultExpectation.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFHarnessTestResultExpectation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFHarnessTestResultExpectation;
  v12 = [(WFHarnessTestResultExpectation *)&v19 init];
  if (v12)
  {
    v13 = _Block_copy(blockCopy);
    block = v12->_block;
    v12->_block = v13;

    objc_storeStrong(&v12->_filePath, path);
    v12->_lineNumber = number;
    v15 = v12;
  }

  return v12;
}

@end