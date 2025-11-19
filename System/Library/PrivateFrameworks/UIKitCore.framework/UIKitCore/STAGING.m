@interface STAGING
@end

@implementation STAGING

void __keyboardui_system_get_log_STAGING_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "KeyboardUISignpostsSystem");
  v1 = qword_1ED49DC80;
  qword_1ED49DC80 = v0;
}

@end