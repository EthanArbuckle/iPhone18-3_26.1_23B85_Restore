@interface SYOpenLastModifiedDocumentImplUIKit
- (void)revealDocumentAtURL:(id)l completion:(id)completion;
@end

@implementation SYOpenLastModifiedDocumentImplUIKit

- (void)revealDocumentAtURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:0];
  [v6 setScheme:@"shareddocuments"];
  v7 = [v6 URL];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11 = 0;
  v9 = [defaultWorkspace openSensitiveURL:v7 withOptions:0 error:&v11];
  v10 = v11;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9, v10);
  }
}

@end