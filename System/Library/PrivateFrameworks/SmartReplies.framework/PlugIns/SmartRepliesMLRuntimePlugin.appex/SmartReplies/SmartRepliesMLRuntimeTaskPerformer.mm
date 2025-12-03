@interface SmartRepliesMLRuntimeTaskPerformer
- (id)performTask:(id)task error:(id *)error;
@end

@implementation SmartRepliesMLRuntimeTaskPerformer

- (id)performTask:(id)task error:(id *)error
{
  taskCopy = task;
  selfCopy = self;
  v7 = SmartRepliesMLRuntimeTaskPerformer.perform(_:)(taskCopy);

  return v7;
}

@end