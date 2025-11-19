@interface CACGestureLivePreviewViewController
- (id)newPathEffectView;
- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)a3 forces:(id)a4 atTime:(double)a5;
- (void)removeTrackingForFingerIdentifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation CACGestureLivePreviewViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CACGestureLivePreviewViewController;
  [(CACGestureLivePreviewViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(CACGestureLivePreviewViewController *)self setMappedPathEffectViews:v3];
}

- (void)addPointsToLiveRecordingGesturePreviewByFingerIdentifier:(id)a3 forces:(id)a4 atTime:(double)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
        v16 = [v15 objectForKey:v14];

        if (!v16)
        {
          v17 = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
          v18 = [(CACGestureLivePreviewViewController *)self newPathEffectView];
          [v17 setObject:v18 forKey:v14];

          v19 = CACLogGestureRecording();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = v25;
            v31 = v14;
            _os_log_debug_impl(&dword_26B354000, v19, OS_LOG_TYPE_DEBUG, "Creating new path view for finger %@", buf, 0xCu);
          }
        }

        v20 = [v7 objectForKey:v14];
        [v20 CGPointValue];
        v22 = v21;
        v24 = v23;

        [v16 addPoint:v22 force:v24 timestamp:{1.0, a5}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }
}

- (void)removeTrackingForFingerIdentifier:(id)a3
{
  v4 = a3;
  v5 = CACLogGestureRecording();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CACGestureLivePreviewViewController *)v4 removeTrackingForFingerIdentifier:v5];
  }

  v6 = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
  v7 = [v6 objectForKey:v4];

  [v7 buildOut];
  v8 = [(CACGestureLivePreviewViewController *)self mappedPathEffectViews];
  [v8 removeObjectForKey:v4];
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
  v7 = [(CACGestureLivePreviewViewController *)self view];
  [v7 addSubview:v4];
  v17 = MEMORY[0x277CCAAD0];
  v22 = [(CACGestureLivePreviewPathEffectView *)v4 leftAnchor];
  v21 = [v7 leftAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [(CACGestureLivePreviewPathEffectView *)v4 rightAnchor];
  v18 = [v7 rightAnchor];
  v8 = [v19 constraintEqualToAnchor:v18];
  v23[1] = v8;
  v9 = [(CACGestureLivePreviewPathEffectView *)v4 bottomAnchor];
  v10 = [v7 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v23[2] = v11;
  v12 = [(CACGestureLivePreviewPathEffectView *)v4 topAnchor];
  v13 = [v7 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
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