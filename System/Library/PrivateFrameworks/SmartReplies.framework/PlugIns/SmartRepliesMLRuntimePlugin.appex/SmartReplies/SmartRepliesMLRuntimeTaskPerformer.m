@interface SmartRepliesMLRuntimeTaskPerformer
- (id)performTask:(id)a3 error:(id *)a4;
@end

@implementation SmartRepliesMLRuntimeTaskPerformer

- (id)performTask:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = SmartRepliesMLRuntimeTaskPerformer.perform(_:)(v5);

  return v7;
}

@end