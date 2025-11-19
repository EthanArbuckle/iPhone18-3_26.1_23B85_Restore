@interface MCSessionHandler
- (DynamicArray<re::SharedPtr<(anonymous)handles;
- (MCSessionHandler)initWithSession:(id)a3 protocolLayer:(MultipeerProtocolLayer *)a4;
- (MCSessionPrivateDelegate)nextDelegate;
- (id).cxx_construct;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7 propagate:(BOOL *)a8;
- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5 propagate:(BOOL *)a6;
- (void)session:(id)a3 didReceiveStream:(id)a4 withName:(id)a5 fromPeer:(id)a6 propagate:(BOOL *)a7;
- (void)session:(id)a3 didStartReceivingResourceWithName:(id)a4 fromPeer:(id)a5 withProgress:(id)a6 propagate:(BOOL *)a7;
- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5 propagate:(BOOL *)a6;
- (void)setHandles:(DynamicArray<re::SharedPtr<(anonymous)namespace;
@end

@implementation MCSessionHandler

- (MCSessionHandler)initWithSession:(id)a3 protocolLayer:(MultipeerProtocolLayer *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = MCSessionHandler;
  v7 = [(MCSessionHandler *)&v22 init];
  [(MCSessionHandler *)v7 setSession:v6];
  [(MCSessionHandler *)v7 setProtocolLayer:a4];
  [(MCSessionHandler *)v7 setListener:a4->var3];
  v8 = objc_opt_new();
  [(MCSessionHandler *)v7 setHandlesLock:v8];

  v9 = [v6 privateDelegate];
  [(MCSessionHandler *)v7 setNextDelegate:v9];

  [v6 setPrivateDelegate:v7];
  [v6 addObserver:v7 forKeyPath:@"privateDelegate" options:1 context:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v6 connectedPeers];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (v17)
        {
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  [(MCSession *)self->_session removeObserver:self forKeyPath:@"privateDelegate"];
  WeakRetained = objc_loadWeakRetained(&self->_nextDelegate);
  [(MCSession *)self->_session setPrivateDelegate:WeakRetained];

  [(MCSession *)self->_session disconnect];
  v4.receiver = self;
  v4.super_class = MCSessionHandler;
  [(MCSessionHandler *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = [(MCSession *)self->_session privateDelegate:a3];

  if (v7 != self)
  {
    v8 = [(MCSession *)self->_session privateDelegate];
    [(MCSession *)self->_session setPrivateDelegate:self];
    [(MCSessionHandler *)self setNextDelegate:v8];
  }
}

- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5 propagate:(BOOL *)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 bytes];
  v14 = [v11 length];
  if (v14 >= 0xA)
  {
    v15 = v14;
    if (SignatureUnsafe)
    {
      v17 = v13[8];
      if (v17 < 0xA)
      {
        v20 = v17 | 0x100;
        v19 = 1;
      }

      else
      {
        v18 = *re::networkLogObjects(SignatureUnsafe);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_impl(&dword_26168F000, v18, OS_LOG_TYPE_DEFAULT, "MPC: Unsupported channelID=%hhu", buf, 8u);
        }

        v19 = 0;
        v20 = 0;
      }
    }

    else
    {
      {
        goto LABEL_46;
      }

      v21 = v13[8];
      v19 = v21 > 0xFD;
      if (v21 <= 0xFD)
      {
        v20 = 0;
      }

      else
      {
        v20 = v13[8];
      }
    }

    *a6 = 0;
    [(NSLock *)self->_handlesLock lock];
    m_size = self->_handles.m_size;
    if (m_size)
    {
      m_data = self->_handles.m_data;
      v24 = 8 * m_size;
      while (1)
      {
        v25 = *m_data;
        v26 = *(*m_data + 1768);
        if (v26 && v26 == v12)
        {
          break;
        }

        ++m_data;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

      if (v19)
      {
        v28 = *(v25 + 1776);
        if ((v20 & 0x100) != 0)
        {
          if ((*(v25 + 1776) & 1) == 0)
          {
            [REMultipeerHelper makeAddressFromPeerID:v12];
            protocolLayer = self->_protocolLayer;
            v39 = *m_data;
            v40 = (*self->_listener->var0)();
            *(*m_data + 1776) = 1;
            v41 = *re::networkLogObjects(v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v41;
              if (v60[0])
              {
                v43 = *(&v60[0] + 1);
              }

              else
              {
                v43 = v60 + 1;
              }

              *v54 = 136315138;
              v55 = v43;
              _os_log_impl(&dword_26168F000, v42, OS_LOG_TYPE_DEFAULT, "MPC: Received data from a legacy client address=%s", v54, 0xCu);
            }

            if (*buf && (v60[0] & 1) != 0)
            {
              (*(**buf + 40))();
            }
          }

          (*(self->_listener->var0 + 3))(self->_listener, self->_protocolLayer, *m_data, v20, [v11 bytes] + 9, objc_msgSend(v11, "length") - 9);
        }

        else
        {
          if ((*(v25 + 1776) & 1) == 0)
          {
            [REMultipeerHelper makeAddressFromPeerID:v12];
            v29 = self->_protocolLayer;
            v30 = *m_data;
            (*self->_listener->var0)();
            if (*buf && (v60[0] & 1) != 0)
            {
              (*(**buf + 40))();
            }

            v25 = *m_data;
          }

          if (v20 == 0xFF)
          {
            [v11 bytes];
            [v11 length];
            qmemcpy(v60 + 1, "com.apple.rekit.hello.ack", 25);
            v31 = v10;
            LOBYTE(v60[0]) = -2;
            v32 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buf length:34 freeWhenDone:0];
            v58 = *(v25 + 1768);
            v33 = MEMORY[0x277CBEA60];
            v34 = v58;
            v35 = [v33 arrayWithObjects:&v58 count:1];
            v53 = 0;
            LOBYTE(v33) = [v31 sendData:v32 toPeers:v35 withMode:0 error:&v53];

            v52 = v53;
            if ((v33 & 1) == 0)
            {
              v37 = *re::networkLogObjects(v36);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                v47 = v37;
                v48 = [v52 description];
                v49 = [v48 UTF8String];
                v50 = [v52 description];
                v51 = [v50 UTF8String];
                *v54 = 136315394;
                v55 = v49;
                v56 = 2080;
                v57 = v51;
                _os_log_error_impl(&dword_26168F000, v47, OS_LOG_TYPE_ERROR, "MPC: Error sending handshake ack: %s, reason: %s", v54, 0x16u);
              }
            }
          }

          else
          {
            *(v25 + 1776) = 1;
          }
        }
      }

      else if (*(v25 + 1776) == 1)
      {
        (*(self->_listener->var0 + 2))(self->_listener, self->_protocolLayer, *m_data, 0);
      }
    }

LABEL_45:
    [(NSLock *)self->_handlesLock unlock];
  }

LABEL_46:
  v44 = [(MCSessionHandler *)self nextDelegate];

  if (v44)
  {
    v45 = [(MCSessionHandler *)self nextDelegate];
    [v45 session:v10 didReceiveData:v11 fromPeer:v12 propagate:a6];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5 propagate:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  [(NSLock *)self->_handlesLock lock];
  if (a5)
  {
    if (a5 == 2)
    {
      if (v19)
      {
      }
    }
  }

  else
  {
    m_size = self->_handles.m_size;
    if (m_size)
    {
      m_data = self->_handles.m_data;
      v14 = 8 * m_size;
      while (1)
      {
        v15 = *(*m_data + 1768);
        if (v15 && v15 == v11)
        {
          break;
        }

        ++m_data;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      *(*m_data + 1768) = 0;

      if (*(*m_data + 1776) == 1)
      {
        [REMultipeerHelper makeAddressFromPeerID:v11];
        (*(self->_listener->var0 + 1))(self->_listener, self->_protocolLayer, *m_data, &v19);
        if (v19)
        {
          if (v20)
          {
            (*(*v19 + 40))();
          }
        }
      }
    }
  }

LABEL_17:
  [(NSLock *)self->_handlesLock unlock];
  v17 = [(MCSessionHandler *)self nextDelegate];

  if (v17)
  {
    v18 = [(MCSessionHandler *)self nextDelegate];
    [v18 session:v10 peer:v11 didChangeState:a5 propagate:a6];
  }
}

- (void)session:(id)a3 didStartReceivingResourceWithName:(id)a4 fromPeer:(id)a5 withProgress:(id)a6 propagate:(BOOL *)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(MCSessionHandler *)self nextDelegate];

  if (v15)
  {
    v16 = [(MCSessionHandler *)self nextDelegate];
    [v16 session:v17 didStartReceivingResourceWithName:v12 fromPeer:v13 withProgress:v14 propagate:a7];
  }
}

- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7 propagate:(BOOL *)a8
{
  v20 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(MCSessionHandler *)self nextDelegate];

  if (v18)
  {
    v19 = [(MCSessionHandler *)self nextDelegate];
    [v19 session:v20 didFinishReceivingResourceWithName:v14 fromPeer:v15 atURL:v16 withError:v17 propagate:a8];
  }
}

- (void)session:(id)a3 didReceiveStream:(id)a4 withName:(id)a5 fromPeer:(id)a6 propagate:(BOOL *)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(MCSessionHandler *)self nextDelegate];

  if (v15)
  {
    v16 = [(MCSessionHandler *)self nextDelegate];
    [v16 session:v17 didReceiveStream:v12 withName:v13 fromPeer:v14 propagate:a7];
  }
}

- (DynamicArray<re::SharedPtr<(anonymous)handles
{
  p_m_capacity = &self[1].m_capacity;
  m_capacity = self[1].m_capacity;
  retstr->m_data = 0;
  retstr->m_capacity = 0;
  retstr->m_size = 0;
  retstr->m_allocator = 0;
  retstr->m_version = 0;
  if (m_capacity)
  {
    v6 = *&self[1].m_version;
    retstr->m_allocator = m_capacity;
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(retstr, v6);
    ++retstr->m_version;
  }

  return self;
}

- (void)setHandles:(DynamicArray<re::SharedPtr<(anonymous)namespace
{
  p_handles = &self->_handles;
  if (&self->_handles != a3)
  {
    m_allocator = a3->m_allocator;
    if (p_handles->m_allocator)
    {
      if (m_allocator)
      {
      }

      else
      {
        m_size = self->_handles.m_size;
        self->_handles.m_size = 0;
        if (m_size)
        {
          m_data = self->_handles.m_data;
          v10 = 8 * m_size;
          do
          {
            if (*m_data)
            {

              *m_data = 0;
            }

            m_data += 8;
            v10 -= 8;
          }

          while (v10);
        }
      }

      ++self->_handles.m_version;
    }

    else if (m_allocator)
    {
      v7 = a3->m_size;
      self->_handles.m_allocator = m_allocator;
      re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(&self->_handles.m_allocator, v7);
      ++self->_handles.m_version;
    }
  }
}

- (MCSessionPrivateDelegate)nextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_nextDelegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 18) = 0;
  return self;
}

@end