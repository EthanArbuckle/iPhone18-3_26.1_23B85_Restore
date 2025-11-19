@interface UIDictationControllerUndoRedoLog
@end

@implementation UIDictationControllerUndoRedoLog

void ___UIDictationControllerUndoRedoLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "DictationUndoRedo");
  v1 = _UIDictationControllerUndoRedoLog_log;
  _UIDictationControllerUndoRedoLog_log = v0;
}

@end