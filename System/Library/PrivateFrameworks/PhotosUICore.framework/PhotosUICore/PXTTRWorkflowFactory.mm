@interface PXTTRWorkflowFactory
+ (void)presentDefaultWorkFlowInViewController:(id)a3 withContext:(int64_t)a4 attachmentFileUrls:(id)a5;
+ (void)presentDefaultWorkFlowInViewController:(id)a3 withContext:(int64_t)a4 attachmentImageUrls:(id)a5;
+ (void)presentDefaultWorkFlowInViewController:(id)a3 withContext:(int64_t)a4 attachmentImageUrls:(id)a5 attachmentFileUrls:(id)a6;
- (PXTTRWorkflowFactory)init;
@end

@implementation PXTTRWorkflowFactory

+ (void)presentDefaultWorkFlowInViewController:(id)a3 withContext:(int64_t)a4 attachmentImageUrls:(id)a5 attachmentFileUrls:(id)a6
{
  v7 = a5;
  if (a5)
  {
    sub_1A5240E64();
    a1 = sub_1A524CA34();
    v7 = a1;
  }

  if (a6)
  {
    sub_1A5240E64();
    a1 = sub_1A524CA34();
    a6 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = a3;
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v11);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = a6;
  TTRWorkflow.present(in:completion:)();
}

+ (void)presentDefaultWorkFlowInViewController:(id)a3 withContext:(int64_t)a4 attachmentImageUrls:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_1A5240E64();
    a1 = sub_1A524CA34();
    v5 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = a3;
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v9);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = 0;
  TTRWorkflow.present(in:completion:)();
}

+ (void)presentDefaultWorkFlowInViewController:(id)a3 withContext:(int64_t)a4 attachmentFileUrls:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_1A5240E64();
    a1 = sub_1A524CA34();
    v5 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = a3;
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v9);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v5;
  TTRWorkflow.present(in:completion:)();
}

- (PXTTRWorkflowFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRWorkflowFactory();
  return [(PXTTRWorkflowFactory *)&v3 init];
}

@end