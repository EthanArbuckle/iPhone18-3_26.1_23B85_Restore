@interface CACGestureLivePreviewViewController
- (id)newPathEffectView;
- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)identifier forces:(id)forces atTime:(double)time;
- (void)removeTrackingForFingerIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation CACGestureLivePreviewViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CACGestureLivePreviewViewController;
  [(CACGestureLivePreviewViewController *)&v4 viewDidLoad];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(CACGestureLivePreviewViewController *)self setMappedPathEffectViews:dictionary];
}

- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)identifier forces:(id)forces atTime:(double)time
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allKeys = [identifierCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    *&v10 = 138412290;
    v25 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        mappedPathEffectViews = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
        v16 = [mappedPathEffectViews objectForKey:v14];

        if (!v16)
        {
          mappedPathEffectViews2 = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
          newPathEffectView = [(CACGestureLivePreviewViewController *)self newPathEffectView];
          [mappedPathEffectViews2 setObject:newPathEffectView forKey:v14];

          v19 = CACLogGestureRecording();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v31 = v14;
            _os_log_debug_impl(&dword_26B354000, v19, OS_LOG_TYPE_DEBUG, "Creating new path view for finger %@", buf, 0xCu);
          }
        }

        v20 = [identifierCopy objectForKey:v14];
        [v20 CGPointValue];
        v22 = v21;
        v24 = v23;

        [v16 addPoint:v22 force:v24 timestamp:{1.0, time}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }
}

- (void)removeTrackingForFingerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = CACLogGestureRecording();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CACGestureLivePreviewViewController *)identifierCopy removeTrackingForFingerIdentifier:v5];
  }

  mappedPathEffectViews = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
  v7 = [mappedPathEffectViews objectForKey:identifierCopy];

  [v7 buildOut];
  mappedPathEffectViews2 = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
  [mappedPathEffectViews2 removeObjectForKey:identifierCopy];
}

- (id)newPathEffectView
{
  v23[4] = *MEMORY[0x277D85DE8];
  v3 = [CACGestureLivePreviewPathEffectView alloc];
  v4 = [(CACGestureLivePreviewPathEffectView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(CACGestureLivePreviewPathEffectView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = CACIsInDarkMode();
  v6 = 0.6;
  if (v5)
  {
    v6 = 0.7;
  }

  [(CACGestureLivePreviewPathEffectView *)v4 setAlpha:v6];
  view = [(CACGestureLivePreviewViewController *)self view];
  [view addSubview:v4];
  v17 = MEMORY[0x277CCAAD0];
  leftAnchor = [(CACGestureLivePreviewPathEffectView *)v4 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v23[0] = v20;
  rightAnchor = [(CACGestureLivePreviewPathEffectView *)v4 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v8 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v23[1] = v8;
  bottomAnchor = [(CACGestureLivePreviewPathEffectView *)v4 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[2] = v11;
  topAnchor = [(CACGestureLivePreviewPathEffectView *)v4 topAnchor];
  topAnchor2 = [view topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v15];

  return v4;
}

- (void)removeTrackingForFingerIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "Removing path view for finger %@", &v2, 0xCu);
}

@end