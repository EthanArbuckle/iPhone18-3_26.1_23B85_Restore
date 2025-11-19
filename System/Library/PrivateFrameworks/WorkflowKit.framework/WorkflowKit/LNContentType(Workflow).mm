@interface LNContentType(Workflow)
- (id)wf_fileType;
- (id)wf_initWithFileType:()Workflow;
@end

@implementation LNContentType(Workflow)

- (id)wf_initWithFileType:()Workflow
{
  v4 = a1;
  v5 = [a3 string];
  v6 = [v4 initWithContentType:v5];

  return v6;
}

- (id)wf_fileType
{
  v1 = MEMORY[0x1E69E0AF8];
  v2 = [a1 contentType];
  v3 = [v1 typeWithString:v2];

  return v3;
}

@end