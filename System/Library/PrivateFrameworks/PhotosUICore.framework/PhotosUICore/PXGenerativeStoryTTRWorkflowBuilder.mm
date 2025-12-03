@interface PXGenerativeStoryTTRWorkflowBuilder
+ (void)presentViewController:(id)controller memory:(id)memory attachmentFileUrls:(id)urls;
- (PXGenerativeStoryTTRWorkflowBuilder)init;
@end

@implementation PXGenerativeStoryTTRWorkflowBuilder

+ (void)presentViewController:(id)controller memory:(id)memory attachmentFileUrls:(id)urls
{
  urlsCopy = urls;
  if (urls)
  {
    sub_1A5240E64();
    urlsCopy = sub_1A524CA34();
  }

  swift_getObjCClassMetadata();
  static GenerativeStoryTTRWorkflowBuilder.presentWorkflow(in:memory:attachmentFileURLs:)(controller, memory, urlsCopy);
}

- (PXGenerativeStoryTTRWorkflowBuilder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeStoryTTRWorkflowBuilder();
  return [(PXGenerativeStoryTTRWorkflowBuilder *)&v3 init];
}

@end