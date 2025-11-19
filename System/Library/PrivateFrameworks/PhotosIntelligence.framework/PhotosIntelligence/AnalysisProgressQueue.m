@interface AnalysisProgressQueue
@end

@implementation AnalysisProgressQueue

void ___AnalysisProgressQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.libraryProcessingProgress.analysis-progress-fetching", attr);
  v2 = _AnalysisProgressQueue__serial_queue;
  _AnalysisProgressQueue__serial_queue = v1;
}

@end