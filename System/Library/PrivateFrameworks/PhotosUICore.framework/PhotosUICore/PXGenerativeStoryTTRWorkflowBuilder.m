@interface PXGenerativeStoryTTRWorkflowBuilder
+ (void)presentViewController:(id)a3 memory:(id)a4 attachmentFileUrls:(id)a5;
- (PXGenerativeStoryTTRWorkflowBuilder)init;
@end

@implementation PXGenerativeStoryTTRWorkflowBuilder

+ (void)presentViewController:(id)a3 memory:(id)a4 attachmentFileUrls:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_1A5240E64();
    v5 = sub_1A524CA34();
  }

  swift_getObjCClassMetadata();
  static GenerativeStoryTTRWorkflowBuilder.presentWorkflow(in:memory:attachmentFileURLs:)(a3, a4, v5);
}

- (PXGenerativeStoryTTRWorkflowBuilder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeStoryTTRWorkflowBuilder();
  return [(PXGenerativeStoryTTRWorkflowBuilder *)&v3 init];
}

@end