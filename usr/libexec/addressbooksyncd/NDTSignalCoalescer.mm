@interface NDTSignalCoalescer
- (NDTSignalCoalescer)initWithLeadingEdgeDelay:(double)delay nextDelay:(id)nextDelay action:(id)action;
- (void)_cancel;
- (void)cancel;
- (void)fireAction;
- (void)forceDelay:(double)delay;
- (void)setAction:(id)action;
- (void)signal;
@end

@implementation NDTSignalCoalescer

- (NDTSignalCoalescer)initWithLeadingEdgeDelay:(double)delay nextDelay:(id)nextDelay action:(id)action
{
  nextDelayCopy = nextDelay;
  actionCopy = action;
  v17.receiver = self;
  v17.super_class = NDTSignalCoalescer;
  v10 = [(NDTSignalCoalescer *)&v17 init];
  v11 = v10;
  if (v10)
  {
    [(NDTSignalCoalescer *)v10 setLeeway:0.5];
    v12 = sub_10002ADFC();
    [(NDTSignalCoalescer *)v11 setQueue:v12];

    [(NDTSignalCoalescer *)v11 setNextDelayCalculator:nextDelayCopy];
    [(NDTSignalCoalescer *)v11 setAction:actionCopy];
    [(NDTSignalCoalescer *)v11 setLeadingEdgeDelay:delay];
    [(NDTSignalCoalescer *)v11 setPending:0];
    v16 = 0;
    asprintf(&v16, "NDTSignalCoalescer<%p>", v11);
    if (v16)
    {
      v13 = v16;
    }

    else
    {
      v13 = "NDTSignalCoalescer";
    }

    v14 = sub_10002AD40(v13);
    [(NDTSignalCoalescer *)v11 setAccessQueue:v14];

    if (v16)
    {
      free(v16);
    }
  }

  return v11;
}

- (void)signal
{
  accessQueue = [(NDTSignalCoalescer *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000073DC;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)forceDelay:(double)delay
{
  objc_initWeak(&location, self);
  accessQueue = [(NDTSignalCoalescer *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000075AC;
  block[3] = &unk_10005CE18;
  objc_copyWeak(v7, &location);
  v7[1] = *&delay;
  dispatch_sync(accessQueue, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  accessQueue = [(NDTSignalCoalescer *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000076A8;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)fireAction
{
  queue = [(NDTSignalCoalescer *)self queue];
  action = [(NDTSignalCoalescer *)self action];
  dispatch_async(queue, action);
}

- (void)setAction:(id)action
{
  v4 = [action copy];
  action = self->_action;
  self->_action = v4;

  _objc_release_x1();
}

- (void)_cancel
{
  source = [(NDTSignalCoalescer *)self source];

  if (source)
  {
    source2 = [(NDTSignalCoalescer *)self source];
    dispatch_source_cancel(source2);

    [(NDTSignalCoalescer *)self setSource:0];
  }
}

@end