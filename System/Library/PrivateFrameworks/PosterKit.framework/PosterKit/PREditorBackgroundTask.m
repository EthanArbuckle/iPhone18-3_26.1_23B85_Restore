@interface PREditorBackgroundTask
- (PREditorBackgroundTask)initWithReason:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)dealloc;
@end

@implementation PREditorBackgroundTask

- (PREditorBackgroundTask)initWithReason:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PREditorBackgroundTask;
  v5 = [(PREditorBackgroundTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    reason = v5->_reason;
    v5->_reason = v6;
  }

  return v5;
}

- (void)dealloc
{
  if (![(PREditorBackgroundTask *)self isInvalidated])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must end a background task using -[PREditor endBackgroundTask:completionStatus:]" userInfo:0];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = PREditorBackgroundTask;
  [(PREditorBackgroundTask *)&v4 dealloc];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [(PREditorBackgroundTask *)self reason];
  v5 = [v6 appendObject:v4 withName:@"reason"];
}

@end