@interface RTIInputViewInfo(UIRemoteInputViewInfo)
- (UIRemoteInputViewInfo)uiRemoteInputViewInfoForProcessId:()UIRemoteInputViewInfo;
@end

@implementation RTIInputViewInfo(UIRemoteInputViewInfo)

- (UIRemoteInputViewInfo)uiRemoteInputViewInfoForProcessId:()UIRemoteInputViewInfo
{
  v5 = objc_alloc_init(UIRemoteInputViewInfo);
  [(UIRemoteInputViewInfo *)v5 setProcessId:a3];
  -[UIRemoteInputViewInfo setContextId:](v5, "setContextId:", [a1 contextId]);
  [a1 insets];
  [(UIRemoteInputViewInfo *)v5 setInsets:?];
  [a1 size];
  [(UIRemoteInputViewInfo *)v5 setSize:?];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    -[UIRemoteInputViewInfo setShouldShowDockView:](v5, "setShouldShowDockView:", [a1 performSelector:sel_shouldShowDockView] != 0);
  }

  return v5;
}

@end