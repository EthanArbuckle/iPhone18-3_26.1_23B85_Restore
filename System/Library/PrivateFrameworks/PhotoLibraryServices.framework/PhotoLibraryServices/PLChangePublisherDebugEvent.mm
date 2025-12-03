@interface PLChangePublisherDebugEvent
- (NSString)eventDescription;
- (void)reset;
- (void)startLocalPublish;
- (void)startRemotePublish;
@end

@implementation PLChangePublisherDebugEvent

- (void)startLocalPublish
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PLChangePublisherDebugEvent *)self setKind:1];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = PLChangePublisherDebugEvent;
  [(PFAbstractStateCaptureEvent *)&v3 reset];
  [(PLChangePublisherDebugEvent *)self setKind:0];
  [(PLChangePublisherDebugEvent *)self setHasMessage:0];
  [(PLChangePublisherDebugEvent *)self setHasEmptyMessage:0];
  [(PLChangePublisherDebugEvent *)self setPostTimestamp:0.0];
  [(PLChangePublisherDebugEvent *)self setPostCount:0];
}

- (NSString)eventDescription
{
  if ([(PLChangePublisherDebugEvent *)self kind])
  {
    v3 = objc_alloc(MEMORY[0x1E69BDD70]);
    [(PFAbstractStateCaptureEvent *)self startTimestamp];
    v4 = [v3 initWithStartTimestamp:?];
    v5 = [v4 appendString:@" thr: "];
    v6 = [v5 appendThreadID:{-[PFAbstractStateCaptureEvent threadID](self, "threadID")}];

    v7 = [v4 appendString:@" qos: "];
    v8 = [v7 appendQoSClass:{-[PFAbstractStateCaptureEvent qosClass](self, "qosClass")}];

    v9 = [v4 appendString:@" kind: "];
    kind = [(PLChangePublisherDebugEvent *)self kind];
    if (kind > 2)
    {
      v11 = @"<Unknown>";
    }

    else
    {
      v11 = off_1E75741A8[kind];
    }

    v13 = [v9 appendString:v11];

    v14 = [v4 appendString:@" msg: "];
    v15 = [v14 appendBool:{-[PLChangePublisherDebugEvent hasMessage](self, "hasMessage")}];

    v16 = [v4 appendString:@" empty: "];
    v17 = [v16 appendBool:{-[PLChangePublisherDebugEvent hasEmptyMessage](self, "hasEmptyMessage")}];

    [(PLChangePublisherDebugEvent *)self postTimestamp];
    if (v18 > 0.0)
    {
      v19 = [v4 appendString:@" post: "];
      [(PLChangePublisherDebugEvent *)self postTimestamp];
      v20 = [v19 appendRelativeTimestamp:?];

      v21 = [v4 appendString:@" count: "];
      v22 = [v21 appendUInt64:{-[PLChangePublisherDebugEvent postCount](self, "postCount")}];
    }

    [(PFAbstractStateCaptureEvent *)self endTimestamp];
    v23 = [v4 appendEndTimestamp:?];
    v12 = [v4 description];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unused: %p>", self];
  }

  return v12;
}

- (void)startRemotePublish
{
  [(PFAbstractStateCaptureEvent *)self setInitialValues];

  [(PLChangePublisherDebugEvent *)self setKind:2];
}

@end