@interface CACGestureLivePreviewOverlayManager
- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)identifier forces:(id)forces atTime:(double)time;
- (void)removeTrackingForFingerIdentifier:(id)identifier;
- (void)showGestureLivePreviewViewer;
@end

@implementation CACGestureLivePreviewOverlayManager

- (void)showGestureLivePreviewViewer
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__CACGestureLivePreviewOverlayManager_showGestureLivePreviewViewer__block_invoke_2;
  v2[3] = &unk_279CEB6F0;
  v2[4] = self;
  [(CACSimpleContentViewManager *)self showViewControllerWithCreationHandler:&__block_literal_global_5 updateHandler:v2];
}

CACGestureLivePreviewViewController *__67__CACGestureLivePreviewOverlayManager_showGestureLivePreviewViewer__block_invoke()
{
  v0 = objc_alloc_init(CACGestureLivePreviewViewController);

  return v0;
}

- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)identifier forces:(id)forces atTime:(double)time
{
  forcesCopy = forces;
  identifierCopy = identifier;
  gestureViewController = [(CACGestureLivePreviewOverlayManager *)self gestureViewController];
  [gestureViewController addPointsToLiveRecordingGesturePreviewByFingerIdentifier:identifierCopy forces:forcesCopy atTime:time];
}

- (void)removeTrackingForFingerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  gestureViewController = [(CACGestureLivePreviewOverlayManager *)self gestureViewController];
  [gestureViewController removeTrackingForFingerIdentifier:identifierCopy];
}

@end