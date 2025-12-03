@interface SBHLightSourceOverlayManager
- (SBHLightSourceOverlayManager)initWithWindowScene:(id)scene;
- (void)invalidate;
- (void)noteLightAngleDidUpdate;
- (void)updateOverlay;
- (void)updateTimerDidFire:(id)fire;
@end

@implementation SBHLightSourceOverlayManager

- (SBHLightSourceOverlayManager)initWithWindowScene:(id)scene
{
  v32[3] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v31.receiver = self;
  v31.super_class = SBHLightSourceOverlayManager;
  v5 = [(SBHLightSourceOverlayManager *)&v31 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:sceneCopy];
    overlayWindow = v5->_overlayWindow;
    v5->_overlayWindow = v6;

    [(UIWindow *)v5->_overlayWindow setWindowLevel:*MEMORY[0x1E69DE7E0] + 1.0];
    v8 = v5->_overlayWindow;
    [sceneCopy _referenceBounds];
    [(UIWindow *)v8 setFrame:?];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v5->_label;
    v5->_label = v9;

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = v5->_label;
    v30 = sceneCopy;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v11 setTextColor:whiteColor];

    v13 = v5->_label;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UILabel *)v13 setBackgroundColor:blackColor];

    [(UILabel *)v5->_label setNumberOfLines:0];
    [(UIWindow *)v5->_overlayWindow addSubview:v5->_label];
    [(UIWindow *)v5->_overlayWindow bs_setHitTestingDisabled:1];
    v28 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)v5->_label topAnchor];
    topAnchor2 = [(UIWindow *)v5->_overlayWindow topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:40.0];
    v32[0] = v16;
    leadingAnchor = [(UILabel *)v5->_label leadingAnchor];
    leadingAnchor2 = [(UIWindow *)v5->_overlayWindow leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v32[1] = v19;
    trailingAnchor = [(UILabel *)v5->_label trailingAnchor];
    trailingAnchor2 = [(UIWindow *)v5->_overlayWindow trailingAnchor];
    v22 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:8.0];
    v32[2] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    [v28 activateConstraints:v23];

    [(SBHLightSourceOverlayManager *)v5 updateOverlay];
    [(UIWindow *)v5->_overlayWindow setHidden:0];
    v24 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v5 target:sel_updateTimerDidFire_ selector:0 userInfo:1 repeats:1.0];
    updateTimer = v5->_updateTimer;
    v5->_updateTimer = v24;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:v5->_updateTimer forMode:*MEMORY[0x1E695DA28]];

    sceneCopy = v30;
  }

  return v5;
}

- (void)noteLightAngleDidUpdate
{
  v3 = [(SBHLightSourceOverlayManager *)self batchUpdateCount]+ 1;

  [(SBHLightSourceOverlayManager *)self setBatchUpdateCount:v3];
}

- (void)updateTimerDidFire:(id)fire
{
  batchUpdateCount = [(SBHLightSourceOverlayManager *)self batchUpdateCount];
  [(SBHLightSourceOverlayManager *)self setBatchUpdateCount:0];
  [(SBHLightSourceOverlayManager *)self setLastBatchUpdateCount:batchUpdateCount];

  [(SBHLightSourceOverlayManager *)self updateOverlay];
}

- (void)updateOverlay
{
  v41 = +[SBHLightSourceManager sharedManager];
  layerCount = [v41 layerCount];
  observerCount = [v41 observerCount];
  currentActivityLevel = [v41 currentActivityLevel];
  lastBatchUpdateCount = [(SBHLightSourceOverlayManager *)self lastBatchUpdateCount];
  [v41 lastLightAngle];
  v40 = v7;
  [v41 lastLightDirection];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v41 lastLightIntensity];
  v39 = v14;
  [v41 initialLightDirection];
  v16 = v15;
  v38 = v15;
  v18 = v17;
  v37 = v17;
  v20 = v19;
  [v41 initialDistanceThreshold];
  v36 = v21;
  v35 = SBH3DPointDistance(v16, v18, v20, v9, v11, v13);
  [v41 accumulatedDistance];
  v34 = v22;
  [v41 lastLightDirection2];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v41 lastLightTimestamp];
  v30 = v29;
  [v41 lastLightTimestamp2];
  v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu layers\n%lu observers\nActivity level: %li\nUpdate rate: %lu㎐\nAngle: %.1fº\nDirection: (%.2f, %.2f, %.2f)\nIntensity: %.2f\nInitial direction: (%.2f, %.2f, %.2f)\nDistance: %.2f (accum: %.2f, thres: %.2f)\nVelocity: %.2f", layerCount, observerCount, currentActivityLevel, lastBatchUpdateCount, v40 / 0.0174532925, *&v9, *&v11, *&v13, v39, *&v38, *&v37, *&v20, *&v35, v34, v36, SBH3DPointVelocityMagnitude(v24, v26, v28, v9, v11, v13, v30 - v31)];
  label = [(SBHLightSourceOverlayManager *)self label];
  [label setText:v32];
}

- (void)invalidate
{
  updateTimer = [(SBHLightSourceOverlayManager *)self updateTimer];
  [updateTimer invalidate];

  overlayWindow = [(SBHLightSourceOverlayManager *)self overlayWindow];
  [overlayWindow setHidden:1];
}

@end