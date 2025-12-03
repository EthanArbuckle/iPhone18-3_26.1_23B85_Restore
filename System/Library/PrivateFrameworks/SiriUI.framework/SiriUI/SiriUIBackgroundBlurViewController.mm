@interface SiriUIBackgroundBlurViewController
- (SiriUIBackgroundBlurViewController)initWithDelegate:(id)delegate;
- (SiriUIBackgroundBlurViewControllerDelegate)backgroundBlurViewControllerDelegate;
- (void)requestBackgroundBlurVisible:(BOOL)visible forReason:(int64_t)reason;
- (void)setBackgroundBlurIsVisible:(BOOL)visible;
- (void)viewDidLoad;
@end

@implementation SiriUIBackgroundBlurViewController

- (SiriUIBackgroundBlurViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SiriUIBackgroundBlurViewController;
  v5 = [(SiriUIBackgroundBlurViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriUIBackgroundBlurViewController *)v5 setBackgroundBlurViewControllerDelegate:delegateCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SiriUIBackgroundBlurViewController;
  [(SiriUIBackgroundBlurViewController *)&v8 viewDidLoad];
  [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurIsVisible:0];
  [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurVisibleReason:5];
  v3 = [SiriUIBackgroundBlurView alloc];
  view = [(SiriUIBackgroundBlurViewController *)self view];
  [view bounds];
  v5 = [(SiriUIBackgroundBlurView *)v3 initWithFrame:?];
  [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurView:v5];

  view2 = [(SiriUIBackgroundBlurViewController *)self view];
  backgroundBlurView = [(SiriUIBackgroundBlurViewController *)self backgroundBlurView];
  [view2 addSubview:backgroundBlurView];
}

- (void)requestBackgroundBlurVisible:(BOOL)visible forReason:(int64_t)reason
{
  visibleCopy = visible;
  v40 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:a2 forReason:self];
  }

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    if (visibleCopy)
    {
      v10 = @"show";
    }

    else
    {
      v10 = @"hide";
    }

    v11 = v9;
    v12 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:reason];
    if ([(SiriUIBackgroundBlurViewController *)self backgroundBlurIsVisible])
    {
      v13 = @"showing";
    }

    else
    {
      v13 = @"hidden";
    }

    v14 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:[(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]];
    v30 = 136316162;
    v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s Request to %@ blur for reason %@. Current visibility: %@ and reason: %@", &v30, 0x34u);
  }

  if ([(SiriUIBackgroundBlurViewController *)self backgroundBlurIsVisible]!= visibleCopy)
  {
    if (visibleCopy)
    {
      if (!reason)
      {
        v15 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          [SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:v15 forReason:?];
        }

        return;
      }

      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (visibleCopy && [(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]> reason)
  {
    [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurVisibleReason:reason];
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:reason];
      v30 = 136315394;
      v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_26948D000, v17, OS_LOG_TYPE_DEFAULT, "%s Background blur is visible for reason: %@", &v30, 0x16u);
    }
  }

  if (reason == 4 && [(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]>= 4)
  {
    if (visibleCopy)
    {
LABEL_23:
      [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurVisibleReason:reason];
      [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurIsVisible:1];
      v19 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:reason];
        v30 = 136315394;
        v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_26948D000, v20, OS_LOG_TYPE_DEFAULT, "%s Showing the background blur for reason: %@", &v30, 0x16u);
      }

      backgroundBlurView = [(SiriUIBackgroundBlurViewController *)self backgroundBlurView];
      v23 = backgroundBlurView;
      v24 = 1;
      goto LABEL_32;
    }

LABEL_26:
    if ([(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]< reason)
    {
      v25 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = v25;
      v26 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:reason];
      v30 = 136315394;
      v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_26948D000, v23, OS_LOG_TYPE_DEFAULT, "%s NOT hiding the background blur for reason: %@", &v30, 0x16u);

      goto LABEL_33;
    }

    [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurVisibleReason:5];
    [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurIsVisible:0];
    v27 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:reason];
      v30 = 136315394;
      v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
      v32 = 2112;
      v33 = v29;
      _os_log_impl(&dword_26948D000, v28, OS_LOG_TYPE_DEFAULT, "%s Hiding the background blur for reason: %@", &v30, 0x16u);
    }

    backgroundBlurView = [(SiriUIBackgroundBlurViewController *)self backgroundBlurView];
    v23 = backgroundBlurView;
    v24 = 0;
LABEL_32:
    [backgroundBlurView setVisible:v24];
LABEL_33:
  }
}

- (void)setBackgroundBlurIsVisible:(BOOL)visible
{
  if (self->_backgroundBlurIsVisible != visible)
  {
    self->_backgroundBlurIsVisible = visible;
    backgroundBlurViewControllerDelegate = [(SiriUIBackgroundBlurViewController *)self backgroundBlurViewControllerDelegate];
    [backgroundBlurViewControllerDelegate backgroundBlurViewController:self didSetBlurVisibilityTo:self->_backgroundBlurIsVisible];
  }
}

- (SiriUIBackgroundBlurViewControllerDelegate)backgroundBlurViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundBlurViewControllerDelegate);

  return WeakRetained;
}

- (void)requestBackgroundBlurVisible:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]"];
  [v5 handleFailureInMethod:a1 object:a2 file:@"SiriUIBackgroundBlurViewController.m" lineNumber:55 description:{@"%@ can only be used on the main thread", v4}];
}

- (void)requestBackgroundBlurVisible:(os_log_t)log forReason:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
  _os_log_error_impl(&dword_26948D000, log, OS_LOG_TYPE_ERROR, "%s Cannot request visibility with the force dismissal reason", &v1, 0xCu);
}

@end