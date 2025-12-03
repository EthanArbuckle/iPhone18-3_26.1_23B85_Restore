@interface NSObject(VideosUI)
- (void)vui_debounce:()VideosUI object:delay:;
@end

@implementation NSObject(VideosUI)

- (void)vui_debounce:()VideosUI object:delay:
{
  v8 = MEMORY[0x1E69E58C0];
  v9 = a5;
  [v8 cancelPreviousPerformRequestsWithTarget:self selector:a4 object:v9];
  [self performSelector:a4 withObject:v9 afterDelay:a2];
}

@end