@interface AirDropAlertUIViewController
- (void)activateIfNeeded;
- (void)configureWithCompletion:(id)completion;
- (void)invalidate;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updatedTransfer:(id)transfer;
- (void)viewDidLoad;
@end

@implementation AirDropAlertUIViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(AirDropAlertUIViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = AirDropAlertUIViewController;
  [(AirDropAlertUIViewController *)&v41 viewDidLoad];
  [(AirDropAlertUIViewController *)self setPreferredContentSize:65.0, 89.0];
  v3 = objc_alloc_init(UIImageView);
  imgView = self->_imgView;
  self->_imgView = v3;

  view = [(AirDropAlertUIViewController *)self view];
  [view addSubview:self->_imgView];

  [(UIImageView *)self->_imgView setContentMode:2];
  v6 = objc_alloc_init(AirDropAlertUIProgressAlertView);
  progressAlertView = self->_progressAlertView;
  self->_progressAlertView = v6;

  view2 = [(AirDropAlertUIViewController *)self view];
  [view2 addSubview:self->_progressAlertView];

  [(AirDropAlertUIProgressAlertView *)self->_progressAlertView setTranslatesAutoresizingMaskIntoConstraints:0];
  leftAnchor = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView leftAnchor];
  view3 = [(AirDropAlertUIViewController *)self view];
  leftAnchor2 = [view3 leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v12 setActive:1];

  rightAnchor = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView rightAnchor];
  view4 = [(AirDropAlertUIViewController *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v16 setActive:1];

  topAnchor = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView topAnchor];
  view5 = [(AirDropAlertUIViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v20 setActive:1];

  bottomAnchor = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView bottomAnchor];
  view6 = [(AirDropAlertUIViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-24.0];
  [v24 setActive:1];

  [(AirDropAlertUIProgressAlertView *)self->_progressAlertView setHidden:1];
  view7 = [(AirDropAlertUIViewController *)self view];
  [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = airdrop_ui_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    extensionContext = [(AirDropAlertUIViewController *)self extensionContext];
    inputItems = [extensionContext inputItems];
    *buf = 138412290;
    v43 = inputItems;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Extension items: %@", buf, 0xCu);
  }

  extensionContext2 = [(AirDropAlertUIViewController *)self extensionContext];
  inputItems2 = [extensionContext2 inputItems];

  v31 = airdrop_ui_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    view8 = [(AirDropAlertUIViewController *)self view];
    superview = [view8 superview];
    *buf = 138412290;
    v43 = superview;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "View loaded with superview: %@", buf, 0xCu);
  }

  firstObject = [inputItems2 firstObject];
  v35 = firstObject;
  if (firstObject)
  {
    userInfo = [firstObject userInfo];
    v37 = [userInfo objectForKeyedSubscript:@"id"];

    v38 = v37;
    if (v38)
    {
      objc_storeStrong(&self->_identifier, v37);
      v39 = objc_opt_new();
      observer = self->_observer;
      self->_observer = v39;

      [(SFAirDropTransferObserver *)self->_observer setDelegate:self];
      [(SFAirDropTransferObserver *)self->_observer activate];
    }
  }

  else
  {
    v38 = airdrop_ui_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_100002990();
    }
  }
}

- (void)activateIfNeeded
{
  v3 = objc_retainBlock(self->_completion);
  if (!v3)
  {
    v5 = airdrop_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B0C();
    }

    goto LABEL_42;
  }

  v4 = self->_relevantTransfer;
  v5 = v4;
  if (!v4)
  {
    v9 = airdrop_ui_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100002AD8();
    }

    goto LABEL_37;
  }

  if ([(SFAirDropTransfer *)v4 transferState]!= 2)
  {
    if (![v5 userResponse]&& [v5 needsAction])
    {
      metaData = [v5 metaData];
      previewImage = [metaData previewImage];

      transferProgress = airdrop_ui_log();
      v12 = os_log_type_enabled(transferProgress, OS_LOG_TYPE_DEFAULT);
      if (previewImage)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, transferProgress, OS_LOG_TYPE_DEFAULT, "Preview image available.", buf, 2u);
        }

        transferProgress = [UIImage imageWithCGImage:previewImage];
        [transferProgress size];
        if (v13 <= 270.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 270.0;
        }

        [transferProgress size];
        v16 = v14 / v15;
        [transferProgress size];
        if (v17 * v16 <= 300.0)
        {
          v18 = v17 * v16;
        }

        else
        {
          v18 = 300.0;
        }

        metaData2 = [v5 metaData];
        transferTypes = [metaData2 transferTypes];

        if ((transferTypes & 0x80) != 0)
        {
          [(UIImageView *)self->_imgView setContentMode:1];
          v18 = 117.0;
          v14 = 90.0;
        }

        [(AirDropAlertUIViewController *)self setPreferredContentSize:v14, v18];
        [(UIImageView *)self->_imgView setImage:transferProgress];
        view = [(AirDropAlertUIViewController *)self view];
        [view bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        if ((transferTypes & 0x80) != 0)
        {
          v30 = 90.0;
        }

        else
        {
          v30 = v29;
        }

        [(UIImageView *)self->_imgView setFrame:v23, v25, v27, v30];
      }

      else if (v12)
      {
        v32[0] = 0;
        _os_log_impl(&_mh_execute_header, transferProgress, OS_LOG_TYPE_DEFAULT, "No preview image available.", v32, 2u);
      }

      goto LABEL_34;
    }

    if ([v5 transferState]== 6 && [v5 needsAction])
    {
      transferProgress = airdrop_ui_log();
      if (os_log_type_enabled(transferProgress, OS_LOG_TYPE_ERROR))
      {
        sub_1000029F8();
      }

      goto LABEL_34;
    }

    v9 = airdrop_ui_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000029C4();
    }

LABEL_37:

    goto LABEL_42;
  }

  if (!self->_observingExistenceOfProgress)
  {
    self->_observingExistenceOfProgress = 1;
    [v5 addObserver:self forKeyPath:@"transferProgress" options:4 context:0];
    goto LABEL_42;
  }

  transferProgress = [v5 transferProgress];
  v7 = airdrop_ui_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (transferProgress)
  {
    if (v8)
    {
      sub_100002A2C(transferProgress, v7);
    }

LABEL_34:
    completion = self->_completion;
    self->_completion = 0;

    v3[2](v3);
    goto LABEL_42;
  }

  if (v8)
  {
    sub_100002AA4();
  }

LABEL_42:
}

- (void)updatedTransfer:(id)transfer
{
  transferCopy = transfer;
  identifier = [transferCopy identifier];
  v7 = [identifier isEqualToString:self->_identifier];

  if (v7)
  {
    v8 = airdrop_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B40(transferCopy, self, v8);
    }

    objc_storeStrong(&self->_relevantTransfer, transfer);
    [(AirDropAlertUIViewController *)self activateIfNeeded];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018A4;
  block[3] = &unk_1000081F0;
  pathCopy = path;
  selfCopy = self;
  objectCopy = object;
  v8 = objectCopy;
  v9 = pathCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)configureWithCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  completion = self->_completion;
  self->_completion = v4;

  [(AirDropAlertUIViewController *)self activateIfNeeded];
}

- (void)invalidate
{
  v3 = airdrop_ui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AirDropAlertVC: Invalidate called", v10, 2u);
  }

  if (self->_observingProgress)
  {
    progress = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView progress];
    [progress removeObserver:self forKeyPath:@"fractionCompleted"];

    progress2 = [(AirDropAlertUIProgressAlertView *)self->_progressAlertView progress];
    [progress2 removeObserver:self forKeyPath:@"finished"];
  }

  relevantTransfer = self->_relevantTransfer;
  self->_relevantTransfer = 0;

  progressAlertView = self->_progressAlertView;
  self->_progressAlertView = 0;

  [(SFAirDropTransferObserver *)self->_observer invalidate];
  observer = self->_observer;
  self->_observer = 0;

  completion = self->_completion;
  self->_completion = 0;
}

@end