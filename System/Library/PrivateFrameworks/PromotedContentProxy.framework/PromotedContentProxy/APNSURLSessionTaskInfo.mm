@interface APNSURLSessionTaskInfo
- (APNSURLSessionTaskInfo)initWithTask:(id)task delegate:(id)delegate modes:(id)modes;
- (NSURLSessionDataDelegate)delegate;
- (void)invalidate;
@end

@implementation APNSURLSessionTaskInfo

- (APNSURLSessionTaskInfo)initWithTask:(id)task delegate:(id)delegate modes:(id)modes
{
  taskCopy = task;
  delegateCopy = delegate;
  modesCopy = modes;
  v27.receiver = self;
  v27.super_class = APNSURLSessionTaskInfo;
  v12 = [(APNSURLSessionTaskInfo *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v18 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
    thread = v13->_thread;
    v13->_thread = v18;

    v24 = objc_msgSend_copy(modesCopy, v20, v21, v22, v23);
    modes = v13->_modes;
    v13->_modes = v24;

    objc_storeStrong(&v13->_task, task);
  }

  return v13;
}

- (void)invalidate
{
  objc_msgSend_setDelegate_(self, a2, 0, v2, v3);

  MEMORY[0x2821F9670](self, sel_setThread_, 0, v5, v6);
}

- (NSURLSessionDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end