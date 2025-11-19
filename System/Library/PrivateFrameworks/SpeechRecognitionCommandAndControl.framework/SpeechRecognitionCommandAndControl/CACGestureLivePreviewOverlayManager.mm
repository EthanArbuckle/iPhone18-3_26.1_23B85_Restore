@interface CACGestureLivePreviewOverlayManager
- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)a3 forces:(id)a4 atTime:(double)a5;
- (void)removeTrackingForFingerIdentifier:(id)a3;
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

- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)a3 forces:(id)a4 atTime:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CACGestureLivePreviewOverlayManager *)self gestureViewController];
  [v10 addPointsToLiveRecordingGesturePreviewByFingerIdentifier:v9 forces:v8 atTime:a5];
}

- (void)removeTrackingForFingerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CACGestureLivePreviewOverlayManager *)self gestureViewController];
  [v5 removeTrackingForFingerIdentifier:v4];
}

@end