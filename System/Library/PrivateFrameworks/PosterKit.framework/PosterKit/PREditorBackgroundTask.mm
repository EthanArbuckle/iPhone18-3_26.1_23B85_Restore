@interface PREditorBackgroundTask
- (PREditorBackgroundTask)initWithReason:(id)reason;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)dealloc;
@end

@implementation PREditorBackgroundTask

- (PREditorBackgroundTask)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = PREditorBackgroundTask;
  v5 = [(PREditorBackgroundTask *)&v9 init];
  if (v5)
  {
    v6 = [reasonCopy copy];
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

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  reason = [(PREditorBackgroundTask *)self reason];
  v5 = [formatterCopy appendObject:reason withName:@"reason"];
}

@end