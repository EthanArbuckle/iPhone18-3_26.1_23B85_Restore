@interface APNSURLSessionTaskInfo
- (APNSURLSessionTaskInfo)initWithTask:(id)a3 delegate:(id)a4 modes:(id)a5;
- (NSURLSessionDataDelegate)delegate;
- (void)invalidate;
@end

@implementation APNSURLSessionTaskInfo

- (APNSURLSessionTaskInfo)initWithTask:(id)a3 delegate:(id)a4 modes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = APNSURLSessionTaskInfo;
  v12 = [(APNSURLSessionTaskInfo *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v10);
    v18 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v14, v15, v16, v17);
    thread = v13->_thread;
    v13->_thread = v18;

    v24 = objc_msgSend_copy(v11, v20, v21, v22, v23);
    modes = v13->_modes;
    v13->_modes = v24;

    objc_storeStrong(&v13->_task, a3);
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