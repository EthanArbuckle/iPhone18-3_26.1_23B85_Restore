@interface SiriUIBackgroundBlurViewController
- (SiriUIBackgroundBlurViewController)initWithDelegate:(id)a3;
- (SiriUIBackgroundBlurViewControllerDelegate)backgroundBlurViewControllerDelegate;
- (void)requestBackgroundBlurVisible:(BOOL)a3 forReason:(int64_t)a4;
- (void)setBackgroundBlurIsVisible:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SiriUIBackgroundBlurViewController

- (SiriUIBackgroundBlurViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriUIBackgroundBlurViewController;
  v5 = [(SiriUIBackgroundBlurViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriUIBackgroundBlurViewController *)v5 setBackgroundBlurViewControllerDelegate:v4];
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
  v4 = [(SiriUIBackgroundBlurViewController *)self view];
  [v4 bounds];
  v5 = [(SiriUIBackgroundBlurView *)v3 initWithFrame:?];
  [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurView:v5];

  v6 = [(SiriUIBackgroundBlurViewController *)self view];
  v7 = [(SiriUIBackgroundBlurViewController *)self backgroundBlurView];
  [v6 addSubview:v7];
}

- (void)requestBackgroundBlurVisible:(BOOL)a3 forReason:(int64_t)a4
{
  v5 = a3;
  v40 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:a2 forReason:self];
  }

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v10 = @"show";
    }

    else
    {
      v10 = @"hide";
    }

    v11 = v9;
    v12 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:a4];
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

  if ([(SiriUIBackgroundBlurViewController *)self backgroundBlurIsVisible]!= v5)
  {
    if (v5)
    {
      if (!a4)
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

  if (v5 && [(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]> a4)
  {
    [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurVisibleReason:a4];
    v16 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:a4];
      v30 = 136315394;
      v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_26948D000, v17, OS_LOG_TYPE_DEFAULT, "%s Background blur is visible for reason: %@", &v30, 0x16u);
    }
  }

  if (a4 == 4 && [(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]>= 4)
  {
    if (v5)
    {
LABEL_23:
      [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurVisibleReason:a4];
      [(SiriUIBackgroundBlurViewController *)self setBackgroundBlurIsVisible:1];
      v19 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:a4];
        v30 = 136315394;
        v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
        v32 = 2112;
        v33 = v21;
        _os_log_impl(&dword_26948D000, v20, OS_LOG_TYPE_DEFAULT, "%s Showing the background blur for reason: %@", &v30, 0x16u);
      }

      v22 = [(SiriUIBackgroundBlurViewController *)self backgroundBlurView];
      v23 = v22;
      v24 = 1;
      goto LABEL_32;
    }

LABEL_26:
    if ([(SiriUIBackgroundBlurViewController *)self backgroundBlurVisibleReason]< a4)
    {
      v25 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = v25;
      v26 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:a4];
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
      v29 = [SiriUIUtilities stringForSiriUIBackgroundBlurReason:a4];
      v30 = 136315394;
      v31 = "[SiriUIBackgroundBlurViewController requestBackgroundBlurVisible:forReason:]";
      v32 = 2112;
      v33 = v29;
      _os_log_impl(&dword_26948D000, v28, OS_LOG_TYPE_DEFAULT, "%s Hiding the background blur for reason: %@", &v30, 0x16u);
    }

    v22 = [(SiriUIBackgroundBlurViewController *)self backgroundBlurView];
    v23 = v22;
    v24 = 0;
LABEL_32:
    [v22 setVisible:v24];
LABEL_33:
  }
}

- (void)setBackgroundBlurIsVisible:(BOOL)a3
{
  if (self->_backgroundBlurIsVisible != a3)
  {
    self->_backgroundBlurIsVisible = a3;
    v4 = [(SiriUIBackgroundBlurViewController *)self backgroundBlurViewControllerDelegate];
    [v4 backgroundBlurViewController:self didSetBlurVisibilityTo:self->_backgroundBlurIsVisible];
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