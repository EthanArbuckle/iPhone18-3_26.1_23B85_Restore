@interface PXTTRWorkflowFactory
+ (void)presentDefaultWorkFlowInViewController:(id)controller withContext:(int64_t)context attachmentFileUrls:(id)urls;
+ (void)presentDefaultWorkFlowInViewController:(id)controller withContext:(int64_t)context attachmentImageUrls:(id)urls;
+ (void)presentDefaultWorkFlowInViewController:(id)controller withContext:(int64_t)context attachmentImageUrls:(id)urls attachmentFileUrls:(id)fileUrls;
- (PXTTRWorkflowFactory)init;
@end

@implementation PXTTRWorkflowFactory

+ (void)presentDefaultWorkFlowInViewController:(id)controller withContext:(int64_t)context attachmentImageUrls:(id)urls attachmentFileUrls:(id)fileUrls
{
  selfCopy = urls;
  if (urls)
  {
    sub_1A5240E64();
    self = sub_1A524CA34();
    selfCopy = self;
  }

  if (fileUrls)
  {
    sub_1A5240E64();
    self = sub_1A524CA34();
    fileUrls = self;
  }

  MEMORY[0x1EEE9AC00](self);
  controllerCopy = controller;
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v11);
  v10 = swift_allocObject();
  *(v10 + 16) = selfCopy;
  *(v10 + 24) = fileUrls;
  TTRWorkflow.present(in:completion:)();
}

+ (void)presentDefaultWorkFlowInViewController:(id)controller withContext:(int64_t)context attachmentImageUrls:(id)urls
{
  selfCopy = urls;
  if (urls)
  {
    sub_1A5240E64();
    self = sub_1A524CA34();
    selfCopy = self;
  }

  MEMORY[0x1EEE9AC00](self);
  controllerCopy = controller;
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v9);
  v8 = swift_allocObject();
  *(v8 + 16) = selfCopy;
  *(v8 + 24) = 0;
  TTRWorkflow.present(in:completion:)();
}

+ (void)presentDefaultWorkFlowInViewController:(id)controller withContext:(int64_t)context attachmentFileUrls:(id)urls
{
  selfCopy = urls;
  if (urls)
  {
    sub_1A5240E64();
    self = sub_1A524CA34();
    selfCopy = self;
  }

  MEMORY[0x1EEE9AC00](self);
  controllerCopy = controller;
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v9);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = selfCopy;
  TTRWorkflow.present(in:completion:)();
}

- (PXTTRWorkflowFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRWorkflowFactory();
  return [(PXTTRWorkflowFactory *)&v3 init];
}

@end