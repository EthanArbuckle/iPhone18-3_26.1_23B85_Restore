@interface SWQueueableScriptWithCompletion
- (SWQueueableScriptWithCompletion)initWithScript:(id)a3 completion:(id)a4;
@end

@implementation SWQueueableScriptWithCompletion

- (SWQueueableScriptWithCompletion)initWithScript:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SWQueueableScriptWithCompletion;
  v9 = [(SWQueueableScriptWithCompletion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_script, a3);
    v11 = MEMORY[0x1DA6FDA60](v8);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end