@interface _UIDragMonitorSessionLifecyleListener
- (_UIDragMonitor)dragMonitor;
- (_UIDragMonitorDelegate)delegate;
- (_UIDragMonitorSessionLifecyleListener)initWithDragMonitor:(id)monitor;
- (void)dragDidBeginWithSession:(id)session identifier:(unsigned int)identifier reply:(id)reply;
- (void)dragDidEndWithSession:(id)session identifier:(unsigned int)identifier;
@end

@implementation _UIDragMonitorSessionLifecyleListener

- (_UIDragMonitorSessionLifecyleListener)initWithDragMonitor:(id)monitor
{
  monitorCopy = monitor;
  v8.receiver = self;
  v8.super_class = _UIDragMonitorSessionLifecyleListener;
  v5 = [(_UIDragMonitorSessionLifecyleListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dragMonitor, monitorCopy);
  }

  return v6;
}

- (void)dragDidBeginWithSession:(id)session identifier:(unsigned int)identifier reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82___UIDragMonitorSessionLifecyleListener_dragDidBeginWithSession_identifier_reply___block_invoke;
  v12[3] = &unk_1E7116C40;
  identifierCopy = identifier;
  v13 = sessionCopy;
  selfCopy = self;
  v15 = replyCopy;
  v10 = replyCopy;
  v11 = sessionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

- (void)dragDidEndWithSession:(id)session identifier:(unsigned int)identifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74___UIDragMonitorSessionLifecyleListener_dragDidEndWithSession_identifier___block_invoke;
  v4[3] = &unk_1E7102030;
  v4[4] = self;
  identifierCopy = identifier;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

- (_UIDragMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIDragMonitor)dragMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_dragMonitor);

  return WeakRetained;
}

@end