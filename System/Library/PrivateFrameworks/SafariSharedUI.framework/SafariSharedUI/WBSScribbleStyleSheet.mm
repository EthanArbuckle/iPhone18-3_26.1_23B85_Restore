@interface WBSScribbleStyleSheet
- (WBSScribbleStyleSheet)initWithSource:(id)source webView:(id)view host:(id)host;
@end

@implementation WBSScribbleStyleSheet

- (WBSScribbleStyleSheet)initWithSource:(id)source webView:(id)view host:(id)host
{
  v22[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v9 = MEMORY[0x1E696AEC0];
  hostCopy = host;
  v1 = v11 = source;
  v2 = +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern]::allHostsPattern;
  +[WBSWebExtensionMatchPattern allHostsAndSchemesMatchPattern]::allHostsPattern = v1;
}

@end