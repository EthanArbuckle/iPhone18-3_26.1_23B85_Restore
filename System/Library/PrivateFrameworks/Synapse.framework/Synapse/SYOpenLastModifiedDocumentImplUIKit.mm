@interface SYOpenLastModifiedDocumentImplUIKit
- (void)revealDocumentAtURL:(id)a3 completion:(id)a4;
@end

@implementation SYOpenLastModifiedDocumentImplUIKit

- (void)revealDocumentAtURL:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  [v6 setScheme:@"shareddocuments"];
  v7 = [v6 URL];
  v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11 = 0;
  v9 = [v8 openSensitiveURL:v7 withOptions:0 error:&v11];
  v10 = v11;

  if (v5)
  {
    v5[2](v5, v9, v10);
  }
}

@end