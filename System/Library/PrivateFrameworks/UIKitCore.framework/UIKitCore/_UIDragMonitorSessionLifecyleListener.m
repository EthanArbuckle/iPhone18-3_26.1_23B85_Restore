@interface _UIDragMonitorSessionLifecyleListener
- (_UIDragMonitor)dragMonitor;
- (_UIDragMonitorDelegate)delegate;
- (_UIDragMonitorSessionLifecyleListener)initWithDragMonitor:(id)a3;
- (void)dragDidBeginWithSession:(id)a3 identifier:(unsigned int)a4 reply:(id)a5;
- (void)dragDidEndWithSession:(id)a3 identifier:(unsigned int)a4;
@end

@implementation _UIDragMonitorSessionLifecyleListener

- (_UIDragMonitorSessionLifecyleListener)initWithDragMonitor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIDragMonitorSessionLifecyleListener;
  v5 = [(_UIDragMonitorSessionLifecyleListener *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dragMonitor, v4);
  }

  return v6;
}

- (void)dragDidBeginWithSession:(id)a3 identifier:(unsigned int)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82___UIDragMonitorSessionLifecyleListener_dragDidBeginWithSession_identifier_reply___block_invoke;
  v12[3] = &unk_1E7116C40;
  v16 = a4;
  v13 = v8;
  v14 = self;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

- (void)dragDidEndWithSession:(id)a3 identifier:(unsigned int)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74___UIDragMonitorSessionLifecyleListener_dragDidEndWithSession_identifier___block_invoke;
  v4[3] = &unk_1E7102030;
  v4[4] = self;
  v5 = a4;
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