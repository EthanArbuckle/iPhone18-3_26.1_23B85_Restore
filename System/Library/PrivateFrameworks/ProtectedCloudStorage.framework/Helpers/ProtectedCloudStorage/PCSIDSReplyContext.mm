@interface PCSIDSReplyContext
- (PCSIDSReplyContext)initWithTimeout:(double)timeout queue:(id)queue logDescription:(id)description sentID:(id)d replyHandler:(id)handler completion:(id)completion;
- (void)runReplyHandlerWithMessage:(id)message error:(id)error;
@end

@implementation PCSIDSReplyContext

- (PCSIDSReplyContext)initWithTimeout:(double)timeout queue:(id)queue logDescription:(id)description sentID:(id)d replyHandler:(id)handler completion:(id)completion
{
  queueCopy = queue;
  descriptionCopy = description;
  dCopy = d;
  handlerCopy = handler;
  completionCopy = completion;
  v30.receiver = self;
  v30.super_class = PCSIDSReplyContext;
  v19 = [(PCSIDSReplyContext *)&v30 init];
  if (v19)
  {
    v20 = [handlerCopy copy];
    [(PCSIDSReplyContext *)v19 setReplyBlock:v20];

    v21 = [completionCopy copy];
    [(PCSIDSReplyContext *)v19 setCompletion:v21];

    [(PCSIDSReplyContext *)v19 setQueue:queueCopy];
    v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);
    v23 = dispatch_time(0, 1000000000 * timeout);
    dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000AE14;
    handler[3] = &unk_100038E38;
    v27 = descriptionCopy;
    v28 = dCopy;
    v24 = v19;
    v29 = v24;
    dispatch_source_set_event_handler(v22, handler);
    [(PCSIDSReplyContext *)v24 setTimeoutTimer:v22];
    dispatch_resume(v22);
  }

  return v19;
}

- (void)runReplyHandlerWithMessage:(id)message error:(id)error
{
  errorCopy = error;
  messageCopy = message;
  replyBlock = [(PCSIDSReplyContext *)self replyBlock];
  (replyBlock)[2](replyBlock, messageCopy, errorCopy);

  [(PCSIDSReplyContext *)self setReplyBlock:0];
  completion = [(PCSIDSReplyContext *)self completion];
  completion[2]();

  [(PCSIDSReplyContext *)self setCompletion:0];
  timeoutTimer = [(PCSIDSReplyContext *)self timeoutTimer];
  dispatch_source_cancel(timeoutTimer);

  [(PCSIDSReplyContext *)self setTimeoutTimer:0];
}

@end