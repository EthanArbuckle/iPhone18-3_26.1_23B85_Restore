@interface NWListener
- (NWListener)initWithLayer:(void *)a3;
- (void)setListener:(id)a3;
- (void)stopListening;
@end

@implementation NWListener

- (NWListener)initWithLayer:(void *)a3
{
  v8.receiver = self;
  v8.super_class = NWListener;
  v4 = [(NWListener *)&v8 init];
  if (v4)
  {
    v5 = dispatch_semaphore_create(0);
    readySemaphore = v4->readySemaphore;
    v4->readySemaphore = v5;

    v4->listenerState = 0;
    v4->layer = a3;
  }

  return v4;
}

- (void)stopListening
{
  if (self->listener)
  {
    v3 = *re::networkLogObjects(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_INFO, "NWListener.stopListening", v5, 2u);
    }

    nw_listener_cancel(self->listener);
    nw_listener_set_state_changed_handler(self->listener, 0);
    nw_listener_set_new_connection_handler(self->listener, 0);
    listener = self->listener;
    self->listener = 0;
  }
}

- (void)setListener:(id)a3
{
  objc_storeStrong(&self->listener, a3);
  v5 = a3;
  v6 = self;
  nw_listener_set_queue(self->listener, v6->listenerQueue);
  listener = self->listener;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __26__NWListener_setListener___block_invoke;
  handler[3] = &unk_279AE3C88;
  v8 = v6;
  v14 = v8;
  nw_listener_set_state_changed_handler(listener, handler);
  v9 = self->listener;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __26__NWListener_setListener___block_invoke_3;
  v11[3] = &unk_279AE3CD8;
  v12 = v8;
  v10 = v8;
  nw_listener_set_new_connection_handler(v9, v11);
  nw_listener_start(self->listener);
}

void __26__NWListener_setListener___block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *re::networkLogObjects(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    v8 = v6;
    if (a2 > 4)
    {
      v9 = "unknown";
    }

    else
    {
      v9 = off_279AE3DD8[a2];
    }

    v15 = 136315138;
    v16 = v9;
    _os_log_impl(&dword_26168F000, v8, OS_LOG_TYPE_INFO, "NWListener.stateChanged state=%s.", &v15, 0xCu);
  }

  *(*(a1 + 32) + 40) = a2;
  if (a2 == 2)
  {
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    v10 = *re::networkLogObjects(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = [(re *)v5 description];
      v14 = [v13 UTF8String];
      v15 = 136315138;
      v16 = v14;
      _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, "NWListener failed error=%s", &v15, 0xCu);
    }

LABEL_10:
    dispatch_semaphore_signal(*(*(a1 + 32) + 24));
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __26__NWListener_setListener___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *re::networkLogObjects(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "NWListener.newConnection", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = v5[2];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__NWListener_setListener___block_invoke_4;
  v8[3] = &unk_279AE3CB0;
  v9 = v5;
  v10 = v3;
  v7 = v3;
  dispatch_sync(v6, v8);
}

void __26__NWListener_setListener___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    re::NWProtocolLayer::addConnection(&v11, v1, *(a1 + 40));
    v3 = nw_connection_copy_endpoint(*(a1 + 40));
    hostname = nw_endpoint_get_hostname(v3);
    if (hostname)
    {
      v5 = hostname;
      port = nw_endpoint_get_port(v3);

      re::Address::makeFromIPAndPort(v5, port, v10);
    }

    else
    {
      description = nw_endpoint_get_description();

      re::DynamicString::DynamicString(v10, &v12);
      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }
    }

    v7 = v11;
    re::DynamicString::operator=((v11 + 1784), v10);
    if (*&v10[0])
    {
      if (BYTE8(v10[0]))
      {
        (*(**&v10[0] + 40))();
      }

      memset(v10, 0, sizeof(v10));
    }

    if (v7)
    {
    }
  }
}

@end