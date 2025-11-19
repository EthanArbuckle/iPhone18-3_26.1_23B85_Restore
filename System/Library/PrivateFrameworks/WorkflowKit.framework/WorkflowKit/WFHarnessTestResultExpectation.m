@interface WFHarnessTestResultExpectation
- (WFHarnessTestResultExpectation)initWithBlock:(id)a3 filePath:(id)a4 lineNumber:(int64_t)a5;
- (void)testWithResult:(id)a3 completion:(id)a4;
@end

@implementation WFHarnessTestResultExpectation

- (void)testWithResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFHarnessTestResultExpectation *)self block];
  v8[2](v8, v7, v6);
}

- (WFHarnessTestResultExpectation)initWithBlock:(id)a3 filePath:(id)a4 lineNumber:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFHarnessTestResultExpectation.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFHarnessTestResultExpectation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"filePath"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFHarnessTestResultExpectation;
  v12 = [(WFHarnessTestResultExpectation *)&v19 init];
  if (v12)
  {
    v13 = _Block_copy(v9);
    block = v12->_block;
    v12->_block = v13;

    objc_storeStrong(&v12->_filePath, a4);
    v12->_lineNumber = a5;
    v15 = v12;
  }

  return v12;
}

@end