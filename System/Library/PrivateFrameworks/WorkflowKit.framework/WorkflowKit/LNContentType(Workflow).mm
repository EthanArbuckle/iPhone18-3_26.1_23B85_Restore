@interface LNContentType(Workflow)
- (id)wf_fileType;
- (id)wf_initWithFileType:()Workflow;
@end

@implementation LNContentType(Workflow)

- (id)wf_initWithFileType:()Workflow
{
  selfCopy = self;
  string = [a3 string];
  v6 = [selfCopy initWithContentType:string];

  return v6;
}

- (id)wf_fileType
{
  v1 = MEMORY[0x1E69E0AF8];
  contentType = [self contentType];
  v3 = [v1 typeWithString:contentType];

  return v3;
}

@end