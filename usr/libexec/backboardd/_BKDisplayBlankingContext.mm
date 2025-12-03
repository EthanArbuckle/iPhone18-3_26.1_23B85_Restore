@interface _BKDisplayBlankingContext
- (id)initForDisplay:(id)display;
- (void)_updateBounds;
- (void)_wrapInCATransaction:(id)transaction;
- (void)blank;
- (void)clear;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _BKDisplayBlankingContext

- (void)_wrapInCATransaction:(id)transaction
{
  if (transaction)
  {
    transactionCopy = transaction;
    +[CATransaction begin];
    transactionCopy[2](transactionCopy);

    +[CATransaction commit];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"bounds", object, change, context}])
  {

    [(_BKDisplayBlankingContext *)self _updateBounds];
  }
}

- (void)_updateBounds
{
  layer = [(CAContext *)self->_blankingContext layer];
  [(CAWindowServerDisplay *)self->_display bounds];
  [layer setBounds:?];
}

- (void)clear
{
  if (self->_blankingContext)
  {
    v3 = BKLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      display = self->_display;
      *buf = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = display;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ - clearing blanked display: %@", buf, 0x16u);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100021B0C;
    v5[3] = &unk_1000FD150;
    v5[4] = self;
    [(_BKDisplayBlankingContext *)self _wrapInCATransaction:v5];
  }
}

- (void)blank
{
  if (self->_blankingContext)
  {
    v6 = [NSString stringWithFormat:@"Already have a context"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      selfCopy2 = v7;
      v13 = 2114;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_BKDisplayBlankingContext.m";
      v19 = 1024;
      v20 = 33;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100021D78);
  }

  v3 = BKLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    display = self->_display;
    *buf = 138412546;
    selfCopy2 = self;
    v13 = 2112;
    v14 = display;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ - blanking display: %@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021D80;
  v10[3] = &unk_1000FD150;
  v10[4] = self;
  [(_BKDisplayBlankingContext *)self _wrapInCATransaction:v10];
}

- (void)dealloc
{
  [(_BKDisplayBlankingContext *)self clear];
  v3.receiver = self;
  v3.super_class = _BKDisplayBlankingContext;
  [(_BKDisplayBlankingContext *)&v3 dealloc];
}

- (id)initForDisplay:(id)display
{
  displayCopy = display;
  v9.receiver = self;
  v9.super_class = _BKDisplayBlankingContext;
  v6 = [(_BKDisplayBlankingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, display);
  }

  return v7;
}

@end