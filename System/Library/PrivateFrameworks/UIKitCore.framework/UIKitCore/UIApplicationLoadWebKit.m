@interface UIApplicationLoadWebKit
@end

@implementation UIApplicationLoadWebKit

void ___UIApplicationLoadWebKit_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EA993230)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __WebKitLegacyLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E711DD80;
    v6 = 0;
    qword_1EA993230 = _sl_dlopen();
  }

  v0 = qword_1EA993230;
  if (!qword_1EA993230)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebKitLegacyLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIApplication.m" lineNumber:5590 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  WebKitFramework = v0;
  off_1EA992FF0 = dlsym(v0, "WebKitInitialize");
  off_1EA992FF8 = dlsym(WebKitFramework, "WebKitSetBackgroundAndForegroundNotificationNames");
  off_1EA993000 = dlsym(WebKitFramework, "WebKitSetInvalidWebBackgroundTaskIdentifier");
  off_1EA993008 = dlsym(WebKitFramework, "WebKitSetStartBackgroundTaskBlock");
  off_1EA993010 = dlsym(WebKitFramework, "WebKitSetEndBackgroundTaskBlock");
  off_1EA992FF0();
  off_1EA992FF8(@"UIApplicationDidEnterBackgroundNotification", @"UIApplicationWillEnterForegroundNotification");
  off_1EA993000(0);
  off_1EA993008(&__block_literal_global_1507);
  off_1EA993010(&__block_literal_global_1510_0);
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"UIApplicationLoadedWebKit" object:0];
}

@end