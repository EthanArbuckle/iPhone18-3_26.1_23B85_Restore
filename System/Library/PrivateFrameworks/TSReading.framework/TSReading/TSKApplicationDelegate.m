@interface TSKApplicationDelegate
+ (id)documentDirectoryPath;
+ (id)sharedDelegate;
- (BOOL)centerOnInitialSelection;
- (BOOL)openURL:(id)a3 sourceDocumentRoot:(id)a4;
- (CGRect)applicationToolbarFrame;
- (NSString)applicationName;
- (NSString)documentTypeDisplayName;
- (NSString)templateTypeDisplayName;
- (TSKApplicationDelegate)init;
- (id)appChartPropertyOverrides;
- (id)createCompatibilityDelegate;
- (id)invalidURLSchemes;
- (id)previewImageForType:(id)a3;
- (id)toolbarButtonForModalDoneWithTarget:(id)a3 action:(SEL)a4;
- (id)validURLSchemes;
- (void)dealloc;
@end

@implementation TSKApplicationDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKApplicationDelegate;
  [(TSKApplicationDelegate *)&v3 dealloc];
}

+ (id)sharedDelegate
{
  if (gSurrogateDelegate)
  {
    return gSurrogateDelegate;
  }

  else
  {
    return [a1 platform_sharedDelegate];
  }
}

- (TSKApplicationDelegate)init
{
  v4.receiver = self;
  v4.super_class = TSKApplicationDelegate;
  v2 = [(TSKApplicationDelegate *)&v4 init];
  if (v2)
  {
    +[TSKKeyboardMonitor sharedKeyboardMonitor];
    [MEMORY[0x277D6C290] installAsNSHandler];
    [(TSKApplicationDelegate *)v2 setCompatibilityDelegate:[(TSKApplicationDelegate *)v2 createCompatibilityDelegate]];
  }

  return v2;
}

- (NSString)applicationName
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate applicationName]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 114, @"Abstract method"}];
  return 0;
}

- (NSString)documentTypeDisplayName
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate documentTypeDisplayName]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 120, @"Abstract method"}];
  return 0;
}

- (NSString)templateTypeDisplayName
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate templateTypeDisplayName]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 126, @"Abstract method"}];
  return 0;
}

+ (id)documentDirectoryPath
{
  v2 = [(NSArray *)NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory objectAtIndex:1), "objectAtIndex:", 0];

  return [v2 stringByAppendingPathComponent:@"Documents"];
}

- (id)createCompatibilityDelegate
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate createCompatibilityDelegate]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 137, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKApplicationDelegate createCompatibilityDelegate]"), 0}]);
}

- (BOOL)centerOnInitialSelection
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate centerOnInitialSelection]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 142, @"Abstract method"}];
  return 0;
}

- (CGRect)applicationToolbarFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)previewImageForType:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate previewImageForType:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 193, @"Abstract method"}];
  return 0;
}

- (id)appChartPropertyOverrides
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate appChartPropertyOverrides]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 200, @"Abstract method"}];
  return 0;
}

- (id)invalidURLSchemes
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate invalidURLSchemes]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 206, @"Abstract method"}];
  return 0;
}

- (id)validURLSchemes
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate validURLSchemes]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 212, @"Abstract method"}];
  return 0;
}

- (BOOL)openURL:(id)a3 sourceDocumentRoot:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate openURL:sourceDocumentRoot:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 224, @"Abstract method"}];
  return 0;
}

- (id)toolbarButtonForModalDoneWithTarget:(id)a3 action:(SEL)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKApplicationDelegate toolbarButtonForModalDoneWithTarget:action:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKApplicationDelegate.m"), 279, @"Abstract method"}];
  return 0;
}

@end