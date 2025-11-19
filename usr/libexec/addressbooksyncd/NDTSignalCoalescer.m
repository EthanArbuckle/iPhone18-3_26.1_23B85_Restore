@interface NDTSignalCoalescer
- (NDTSignalCoalescer)initWithLeadingEdgeDelay:(double)a3 nextDelay:(id)a4 action:(id)a5;
- (void)_cancel;
- (void)cancel;
- (void)fireAction;
- (void)forceDelay:(double)a3;
- (void)setAction:(id)a3;
- (void)signal;
@end

@implementation NDTSignalCoalescer

- (NDTSignalCoalescer)initWithLeadingEdgeDelay:(double)a3 nextDelay:(id)a4 action:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = NDTSignalCoalescer;
  v10 = [(NDTSignalCoalescer *)&v17 init];
  v11 = v10;
  if (v10)
  {
    [(NDTSignalCoalescer *)v10 setLeeway:0.5];
    v12 = sub_10002ADFC();
    [(NDTSignalCoalescer *)v11 setQueue:v12];

    [(NDTSignalCoalescer *)v11 setNextDelayCalculator:v8];
    [(NDTSignalCoalescer *)v11 setAction:v9];
    [(NDTSignalCoalescer *)v11 setLeadingEdgeDelay:a3];
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
  v3 = [(NDTSignalCoalescer *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000073DC;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)forceDelay:(double)a3
{
  objc_initWeak(&location, self);
  v5 = [(NDTSignalCoalescer *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000075AC;
  block[3] = &unk_10005CE18;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  dispatch_sync(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  v3 = [(NDTSignalCoalescer *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000076A8;
  block[3] = &unk_10005CDF0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)fireAction
{
  queue = [(NDTSignalCoalescer *)self queue];
  v3 = [(NDTSignalCoalescer *)self action];
  dispatch_async(queue, v3);
}

- (void)setAction:(id)a3
{
  v4 = [a3 copy];
  action = self->_action;
  self->_action = v4;

  _objc_release_x1();
}

- (void)_cancel
{
  v3 = [(NDTSignalCoalescer *)self source];

  if (v3)
  {
    v4 = [(NDTSignalCoalescer *)self source];
    dispatch_source_cancel(v4);

    [(NDTSignalCoalescer *)self setSource:0];
  }
}

@end