@interface WFModelContentLocation(Icon)
- (id)icon;
@end

@implementation WFModelContentLocation(Icon)

- (id)icon
{
  v1 = [a1 identifier];
  v2 = [v1 isEqualToString:@"com.apple.shortcuts.askllm.chatgpt"];

  v3 = objc_alloc(MEMORY[0x277D79FD0]);
  v4 = MEMORY[0x277D79FC8];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WorkflowKit"];
  if (v2)
  {
    v6 = @"Use Model Icon - OpenAI";
  }

  else
  {
    v6 = @"Use Model Icon";
  }

  v7 = [v4 imageNamed:v6 inBundle:v5];
  v8 = [v3 initWithImage:v7];

  return v8;
}

@end