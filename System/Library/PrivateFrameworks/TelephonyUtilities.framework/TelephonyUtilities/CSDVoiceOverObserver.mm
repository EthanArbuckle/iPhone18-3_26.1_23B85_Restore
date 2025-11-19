@interface CSDVoiceOverObserver
- (BOOL)isBrailleScreenInputEnabled;
- (BOOL)isEnabled;
- (CSDVoiceOverObserver)initWithQueue:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)handleAXSVoiceOverTouchEnabledNotification:(id)a3;
- (void)performAsynchronousBlock:(id)a3;
- (void)performSynchronousBlock:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)updateEnabled;
@end

@implementation CSDVoiceOverObserver

- (BOOL)isEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000313F0;
  v4[3] = &unk_100619E80;
  v4[4] = self;
  v4[5] = &v5;
  [(CSDVoiceOverObserver *)self performSynchronousBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isBrailleScreenInputEnabled
{
  v2 = [(CSDVoiceOverObserver *)self isEnabled];
  if (v2)
  {
    LOBYTE(v2) = _AXSBrailleScreenInputEnabled() != 0;
  }

  return v2;
}

- (CSDVoiceOverObserver)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSDVoiceOverObserver;
  v6 = [(CSDVoiceOverObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    dispatch_queue_set_specific(v7->_queue, v7, v7, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10023D488;
    v9[3] = &unk_100619D38;
    v10 = v7;
    [(CSDVoiceOverObserver *)v10 performAsynchronousBlock:v9];
  }

  return v7;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_queue, self, 0, 0);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kAXSVoiceOverTouchEnabledNotification object:0];

  v4.receiver = self;
  v4.super_class = CSDVoiceOverObserver;
  [(CSDVoiceOverObserver *)&v4 dealloc];
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(self) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(CSDVoiceOverObserver *)self queue];
    dispatch_sync(v7, v5);
  }
}

- (void)performAsynchronousBlock:(id)a3
{
  if (dispatch_get_specific(self) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(CSDVoiceOverObserver *)self queue];
    dispatch_async(v7, v5);
  }
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023D954;
  v9[3] = &unk_100619E58;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(CSDVoiceOverObserver *)self performAsynchronousBlock:v9];
}

- (void)removeDelegate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10023DA3C;
  v4[3] = &unk_100619D88;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CSDVoiceOverObserver *)v5 performSynchronousBlock:v4];
}

- (void)handleAXSVoiceOverTouchEnabledNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10023DBA8;
  v6[3] = &unk_100619D38;
  v6[4] = self;
  [(CSDVoiceOverObserver *)self performAsynchronousBlock:v6];
}

- (void)updateEnabled
{
  v3 = [(CSDVoiceOverObserver *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = _AXSVoiceOverTouchEnabled() != 0;

  [(CSDVoiceOverObserver *)self setEnabled:v4];
}

@end