@interface MCSessionHandler
- (DynamicArray<re::SharedPtr<(anonymous)handles;
- (MCSessionHandler)initWithSession:(id)session protocolLayer:(MultipeerProtocolLayer *)layer;
- (MCSessionPrivateDelegate)nextDelegate;
- (id).cxx_construct;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)session:(id)session didFinishReceivingResourceWithName:(id)name fromPeer:(id)peer atURL:(id)l withError:(id)error propagate:(BOOL *)propagate;
- (void)session:(id)session didReceiveData:(id)data fromPeer:(id)peer propagate:(BOOL *)propagate;
- (void)session:(id)session didReceiveStream:(id)stream withName:(id)name fromPeer:(id)peer propagate:(BOOL *)propagate;
- (void)session:(id)session didStartReceivingResourceWithName:(id)name fromPeer:(id)peer withProgress:(id)progress propagate:(BOOL *)propagate;
- (void)session:(id)session peer:(id)peer didChangeState:(int64_t)state propagate:(BOOL *)propagate;
- (void)setHandles:(DynamicArray<re::SharedPtr<(anonymous)namespace;
@end

@implementation MCSessionHandler

- (MCSessionHandler)initWithSession:(id)session protocolLayer:(MultipeerProtocolLayer *)layer
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = MCSessionHandler;
  v7 = [(MCSessionHandler *)&v22 init];
  [(MCSessionHandler *)v7 setSession:sessionCopy];
  [(MCSessionHandler *)v7 setProtocolLayer:layer];
  [(MCSessionHandler *)v7 setListener:layer->var3];
  v8 = objc_opt_new();
  [(MCSessionHandler *)v7 setHandlesLock:v8];

  privateDelegate = [sessionCopy privateDelegate];
  [(MCSessionHandler *)v7 setNextDelegate:privateDelegate];

  [sessionCopy setPrivateDelegate:v7];
  [sessionCopy addObserver:v7 forKeyPath:@"privateDelegate" options:1 context:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  connectedPeers = [sessionCopy connectedPeers];
  v11 = [connectedPeers countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(connectedPeers);
        }

        if (v17)
        {
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [connectedPeers countByEnumeratingWithState:&v18 objects:v23 count:16];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [(MCSession *)self->_session privateDelegate:path];

  if (v7 != self)
  {
    privateDelegate = [(MCSession *)self->_session privateDelegate];
    [(MCSession *)self->_session setPrivateDelegate:self];
    [(MCSessionHandler *)self setNextDelegate:privateDelegate];
  }
}

- (void)session:(id)session didReceiveData:(id)data fromPeer:(id)peer propagate:(BOOL *)propagate
{
  v61 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  dataCopy = data;
  peerCopy = peer;
  bytes = [dataCopy bytes];
  v14 = [dataCopy length];
  if (v14 >= 0xA)
  {
    v15 = v14;
    if (SignatureUnsafe)
    {
      v17 = bytes[8];
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

      v21 = bytes[8];
      v19 = v21 > 0xFD;
      if (v21 <= 0xFD)
      {
        v20 = 0;
      }

      else
      {
        v20 = bytes[8];
      }
    }

    *propagate = 0;
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
        if (v26 && v26 == peerCopy)
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
            [REMultipeerHelper makeAddressFromPeerID:peerCopy];
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

          (*(self->_listener->var0 + 3))(self->_listener, self->_protocolLayer, *m_data, v20, [dataCopy bytes] + 9, objc_msgSend(dataCopy, "length") - 9);
        }

        else
        {
          if ((*(v25 + 1776) & 1) == 0)
          {
            [REMultipeerHelper makeAddressFromPeerID:peerCopy];
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
            [dataCopy bytes];
            [dataCopy length];
            qmemcpy(v60 + 1, "com.apple.rekit.hello.ack", 25);
            v31 = sessionCopy;
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
                uTF8String = [v48 UTF8String];
                v50 = [v52 description];
                uTF8String2 = [v50 UTF8String];
                *v54 = 136315394;
                v55 = uTF8String;
                v56 = 2080;
                v57 = uTF8String2;
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
  nextDelegate = [(MCSessionHandler *)self nextDelegate];

  if (nextDelegate)
  {
    nextDelegate2 = [(MCSessionHandler *)self nextDelegate];
    [nextDelegate2 session:sessionCopy didReceiveData:dataCopy fromPeer:peerCopy propagate:propagate];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session peer:(id)peer didChangeState:(int64_t)state propagate:(BOOL *)propagate
{
  sessionCopy = session;
  peerCopy = peer;
  [(NSLock *)self->_handlesLock lock];
  if (state)
  {
    if (state == 2)
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
        if (v15 && v15 == peerCopy)
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
        [REMultipeerHelper makeAddressFromPeerID:peerCopy];
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
  nextDelegate = [(MCSessionHandler *)self nextDelegate];

  if (nextDelegate)
  {
    nextDelegate2 = [(MCSessionHandler *)self nextDelegate];
    [nextDelegate2 session:sessionCopy peer:peerCopy didChangeState:state propagate:propagate];
  }
}

- (void)session:(id)session didStartReceivingResourceWithName:(id)name fromPeer:(id)peer withProgress:(id)progress propagate:(BOOL *)propagate
{
  sessionCopy = session;
  nameCopy = name;
  peerCopy = peer;
  progressCopy = progress;
  nextDelegate = [(MCSessionHandler *)self nextDelegate];

  if (nextDelegate)
  {
    nextDelegate2 = [(MCSessionHandler *)self nextDelegate];
    [nextDelegate2 session:sessionCopy didStartReceivingResourceWithName:nameCopy fromPeer:peerCopy withProgress:progressCopy propagate:propagate];
  }
}

- (void)session:(id)session didFinishReceivingResourceWithName:(id)name fromPeer:(id)peer atURL:(id)l withError:(id)error propagate:(BOOL *)propagate
{
  sessionCopy = session;
  nameCopy = name;
  peerCopy = peer;
  lCopy = l;
  errorCopy = error;
  nextDelegate = [(MCSessionHandler *)self nextDelegate];

  if (nextDelegate)
  {
    nextDelegate2 = [(MCSessionHandler *)self nextDelegate];
    [nextDelegate2 session:sessionCopy didFinishReceivingResourceWithName:nameCopy fromPeer:peerCopy atURL:lCopy withError:errorCopy propagate:propagate];
  }
}

- (void)session:(id)session didReceiveStream:(id)stream withName:(id)name fromPeer:(id)peer propagate:(BOOL *)propagate
{
  sessionCopy = session;
  streamCopy = stream;
  nameCopy = name;
  peerCopy = peer;
  nextDelegate = [(MCSessionHandler *)self nextDelegate];

  if (nextDelegate)
  {
    nextDelegate2 = [(MCSessionHandler *)self nextDelegate];
    [nextDelegate2 session:sessionCopy didReceiveStream:streamCopy withName:nameCopy fromPeer:peerCopy propagate:propagate];
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