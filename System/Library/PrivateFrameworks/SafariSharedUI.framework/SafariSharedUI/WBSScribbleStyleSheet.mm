@interface WBSScribbleStyleSheet
- (WBSScribbleStyleSheet)initWithSource:(id)a3 webView:(id)a4 host:(id)a5;
@end

@implementation WBSScribbleStyleSheet

- (WBSScribbleStyleSheet)initWithSource:(id)a3 webView:(id)a4 host:(id)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a5;
  v1 = v11 = a3;
  v2 = +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern]::allHostsPattern;
  +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern]::allHostsPattern = v1;
}

@end