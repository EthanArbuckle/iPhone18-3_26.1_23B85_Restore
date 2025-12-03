@interface CSDVoiceOverObserver
- (BOOL)isBrailleScreenInputEnabled;
- (BOOL)isEnabled;
- (CSDVoiceOverObserver)initWithQueue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)handleAXSVoiceOverTouchEnabledNotification:(id)notification;
- (void)performAsynchronousBlock:(id)block;
- (void)performSynchronousBlock:(id)block;
- (void)removeDelegate:(id)delegate;
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
  isEnabled = [(CSDVoiceOverObserver *)self isEnabled];
  if (isEnabled)
  {
    LOBYTE(isEnabled) = _AXSBrailleScreenInputEnabled() != 0;
  }

  return isEnabled;
}

- (CSDVoiceOverObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CSDVoiceOverObserver;
  v6 = [(CSDVoiceOverObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(self) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(CSDVoiceOverObserver *)self queue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)performAsynchronousBlock:(id)block
{
  if (dispatch_get_specific(self) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(CSDVoiceOverObserver *)self queue];
    dispatch_async(blockCopy, blockCopy2);
  }
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10023D954;
  v9[3] = &unk_100619E58;
  v9[4] = self;
  queueCopy = queue;
  v11 = delegateCopy;
  v7 = delegateCopy;
  v8 = queueCopy;
  [(CSDVoiceOverObserver *)self performAsynchronousBlock:v9];
}

- (void)removeDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10023DA3C;
  v4[3] = &unk_100619D88;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(CSDVoiceOverObserver *)selfCopy performSynchronousBlock:v4];
}

- (void)handleAXSVoiceOverTouchEnabledNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = notificationCopy;
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
  queue = [(CSDVoiceOverObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = _AXSVoiceOverTouchEnabled() != 0;

  [(CSDVoiceOverObserver *)self setEnabled:v4];
}

@end