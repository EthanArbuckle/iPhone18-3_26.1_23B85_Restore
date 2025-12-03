@interface PLChangeHandlingNotificationEvent
- (NSString)eventDescription;
- (void)reset;
- (void)startBeginObserving;
- (void)startEndObserving;
- (void)startPostNotification;
- (void)startResumeLowPriority;
@end

@implementation PLChangeHandlingNotificationEvent

- (void)startBeginObserving
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PLChangeHandlingNotificationEvent *)self setKind:2];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = PLChangeHandlingNotificationEvent;
  [(PFAbstractStateCaptureEvent *)&v3 reset];
  [(PLChangeHandlingNotificationEvent *)self setKind:0];
  [(PLChangeHandlingNotificationEvent *)self setNotificationPostTimestamp:0.0];
  [(PLChangeHandlingNotificationEvent *)self setNotificationType:0];
  [(PLChangeHandlingNotificationEvent *)self setDidSuspendLowPriority:0];
  [(PLChangeHandlingNotificationEvent *)self setThrottleInterval:0.0];
  [(PLChangeHandlingNotificationEvent *)self setNotificationBlock:0];
  [(PLChangeHandlingNotificationEvent *)self setWasObserving:0];
}

- (void)startResumeLowPriority
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PLChangeHandlingNotificationEvent *)self setKind:4];
}

- (void)startPostNotification
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PLChangeHandlingNotificationEvent *)self setKind:1];
}

- (NSString)eventDescription
{
  if (![(PLChangeHandlingNotificationEvent *)self kind])
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unused: %p>", self];
    goto LABEL_23;
  }

  v3 = objc_alloc(MEMORY[0x1E69BDD70]);
  [(PFAbstractStateCaptureEvent *)self startTimestamp];
  v4 = [v3 initWithStartTimestamp:?];
  v5 = [v4 appendString:@" thr: "];
  v6 = [v5 appendThreadID:{-[PFAbstractStateCaptureEvent threadID](self, "threadID")}];

  v7 = [v4 appendString:@" qos: "];
  v8 = [v7 appendQoSClass:{-[PFAbstractStateCaptureEvent qosClass](self, "qosClass")}];

  if ([(PLChangeHandlingNotificationEvent *)self kind]== 1)
  {
    v9 = [v4 appendString:@" post: "];
    [(PLChangeHandlingNotificationEvent *)self notificationPostTimestamp];
    v10 = [v9 appendRelativeTimestamp:?];

    v11 = [v4 appendString:@" type: "];
    notificationType = [(PLChangeHandlingNotificationEvent *)self notificationType];
    v13 = @"<Unknown>";
    if (notificationType == 1)
    {
      v13 = @"H";
    }

    if (notificationType)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"L";
    }

    v15 = [v11 appendString:v14];

    v16 = [v4 appendString:@" susp: "];
    v17 = [v16 appendBool:{-[PLChangeHandlingNotificationEvent didSuspendLowPriority](self, "didSuspendLowPriority")}];

    if (![(PLChangeHandlingNotificationEvent *)self didSuspendLowPriority])
    {
      goto LABEL_19;
    }

    v18 = [v4 appendString:@" throttle: "];
    [(PLChangeHandlingNotificationEvent *)self throttleInterval];
    v19 = [v18 appendDuration:?];
  }

  else
  {
    kind = [(PLChangeHandlingNotificationEvent *)self kind];
    v18 = [v4 appendString:@" kind: "];
    kind2 = [(PLChangeHandlingNotificationEvent *)self kind];
    if (kind != 2)
    {
      if (kind2 > 4)
      {
        v24 = @"<Unknown>";
      }

      else
      {
        v24 = off_1E756E8E0[kind2];
      }

      v27 = [v18 appendString:v24];
      goto LABEL_22;
    }

    if (kind2 > 4)
    {
      v23 = @"<Unknown>";
    }

    else
    {
      v23 = off_1E756E8E0[kind2];
    }

    v25 = [v18 appendString:v23];
  }

LABEL_19:
  v18 = [v4 appendString:@" block: "];
  v26 = [v18 appendPointer:{-[PLChangeHandlingNotificationEvent notificationBlock](self, "notificationBlock")}];
LABEL_22:

  [(PFAbstractStateCaptureEvent *)self endTimestamp];
  v28 = [v4 appendEndTimestamp:?];
  v20 = [v4 description];

LABEL_23:

  return v20;
}

- (void)startEndObserving
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PLChangeHandlingNotificationEvent *)self setKind:3];
}

@end