@interface SWQueueableScriptWithCompletion
- (SWQueueableScriptWithCompletion)initWithScript:(id)script completion:(id)completion;
@end

@implementation SWQueueableScriptWithCompletion

- (SWQueueableScriptWithCompletion)initWithScript:(id)script completion:(id)completion
{
  scriptCopy = script;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = SWQueueableScriptWithCompletion;
  v9 = [(SWQueueableScriptWithCompletion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_script, script);
    v11 = MEMORY[0x1DA6FDA60](completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

@end