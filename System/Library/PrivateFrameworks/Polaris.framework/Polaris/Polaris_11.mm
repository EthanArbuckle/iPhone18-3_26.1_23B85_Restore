uint64_t PRM::Camera::ClosedLoopBufferPool::reserveBuffers(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_bufferList->getSize() > m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v15);
}

{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion (%s). %s", "reserveBuffers", "view_index == m_viewIndexBufferIndexMap->getSize()", "Unable to reserve enough buffers");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    *buf = 136316162;
    v9 = "reserveBuffers";
    v10 = 1024;
    v11 = 464;
    v12 = 2080;
    v13 = "reserveBuffers";
    v14 = 2080;
    v15 = "view_index == m_viewIndexBufferIndexMap->getSize()";
    v16 = 2080;
    v17 = "Unable to reserve enough buffers";
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion (%s). %s", buf, 0x30u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      *buf = 136315394;
      v9 = "reserveBuffers";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v6 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v6);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::reserveBuffers(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "reserveBuffers", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::deinitialize(v15);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::deinitialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::deinitialize(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(v15);
}

void PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v6[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v6);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "resource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

uint64_t PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incomingBuffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer_index < m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer.buffer_type == m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incoming_buffer_index < m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "resource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::initialize(v15);
}

uint64_t PRM::Camera::HybridLoopBufferPool::initialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::initialize(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::initialize(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v15);
}

uint64_t PRM::Camera::HybridLoopBufferPool::getBufferWithResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

uint64_t PRM::Camera::HybridLoopBufferPool::setBufferWithResource(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType == buffer.buffer_type");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer_index >= 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incoming_buffer_index < m_bufferList->getSize() || incoming_buffer_index == BufferIndexInvalid");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incoming_buffer_index >= 0 || incoming_buffer_index == BufferIndexInvalid");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer_index < m_bufferList->getSize() || reserved_buffer_index == BufferIndexInvalid");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType != BufferTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::deinitialize(v15);
}

uint64_t PRM::Camera::HybridLoopBufferPool::deinitialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_bufferType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::deinitialize(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_viewIndexBufferIndexMap");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(v15);
}

void PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v6[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v6);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "operator()", "property_name");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferStream::PixelBufferStream();
}

void PRM::Camera::PixelBufferStream::PixelBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::PixelBufferStream::~PixelBufferStream()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v6[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v6);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::PixelBufferStream::initialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraCVPixelBufferOpts.metadata_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "child_iosurface_properties");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

uint64_t PRM::Camera::PixelBufferStream::initialize(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::GroupTypeUnused");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_groupType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

uint64_t PRM::Camera::PixelBufferStream::read(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.buffer_type == BufferTypeCVPixelBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Unknown option detected for type: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_frameinfo");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

uint64_t PRM::Camera::PixelBufferStream::write(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_cfdata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "pixel_buffer_resource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_frameinfo");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_maximumViewIndex > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(v15);
}

uint64_t PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "iosurfaceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(v15);
}

uint64_t PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v15);
}

uint64_t PRM::Camera::PixelBufferStream::inUse(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVPixelBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::DataBufferStream(v15);
}

void PRM::Camera::DataBufferStream::DataBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::DataBufferStream::~DataBufferStream()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v6[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v6);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::DataBufferStream::initialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "cvdatabuffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraCVDataBufferOpts.image_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraCVDataBufferOpts.metadata_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_valid");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_timestamp");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

uint64_t PRM::Camera::DataBufferStream::initialize(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_options->metadata_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

uint64_t PRM::Camera::DataBufferStream::read(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.buffer_type == BufferTypeCVDataBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Unknown option detected for type: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "valid_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "timestamp_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_timestamp");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

uint64_t PRM::Camera::DataBufferStream::write(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_cfdata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "data_buffer_resource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "valid_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "timestamp_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_timestamp");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_maximumViewIndex > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::getBackingIOSurfaceList(v15);
}

uint64_t PRM::Camera::DataBufferStream::getBackingIOSurfaceList(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "iosurfaceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::getBackingIOSurfaceList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(v15);
}

uint64_t PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v15);
}

uint64_t PRM::Camera::DataBufferStream::inUse(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVDataBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::JasperBufferStream(v15);
}

void PRM::Camera::JasperBufferStream::JasperBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::JasperBufferStream::~JasperBufferStream()
{
  OUTLINED_FUNCTION_8();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v6[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v6);
  }

  OUTLINED_FUNCTION_20();
  v5 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::JasperBufferStream::initialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "cvdatabuffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraJasperBufferOpts.image_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraJasperBufferOpts.metadata_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_imageBufferPool[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_valid[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_timestamp[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_valid");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_timestamp");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

uint64_t PRM::Camera::JasperBufferStream::initialize(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_options->metadata_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

uint64_t PRM::Camera::JasperBufferStream::read(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer[i].buffer_type == BufferTypeCVDataBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata->length > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Unknown option detected for type: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer[i].cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "valid_ref[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "timestamp_ref[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata[i]) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata[i])");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_timestamp[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

uint64_t PRM::Camera::JasperBufferStream::write(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "cfdata_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion (%s). %s", "write", "outgoing_metadata_buffer->length > 0", "All valid buffers must have non zero length metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_24(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion (%s). %s", v4, v5, v6, v7, v17, v18, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19, v20, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion (%s). %s", "write", "cfdata_metadata[i]", "All valid buffers must have valid metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_24(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion (%s). %s", v4, v5, v6, v7, v17, v18, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19, v20, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface_metadata[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "valid_ref[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "timestamp_ref[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "cvbuffers");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "jasperTimestamps");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "jasperBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata[i]) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata[i])");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_timestamp[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(v15);
}

uint64_t PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool[jasper_bank_index]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(v15);
}

uint64_t PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool[jasper_bank_index]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v15);
}

uint64_t PRM::Camera::JasperBufferStream::inUse(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVDataBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvdatabuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::PearlBufferStream(v15);
}

void PRM::Camera::PearlBufferStream::PearlBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::PearlBufferStream::~PearlBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRM::Camera::PearlBufferStream::initialize(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "depth_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "score_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "dy_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "dx_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.depth_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.score_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.dy_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.dx_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.metadata_buffer_list[buffer_ix]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_cfdataMetadata");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_imageBufferPool[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "cvpixel_bufflets[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_valid[i]");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_valid");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_timestamp");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

uint64_t PRM::Camera::PearlBufferStream::initialize(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Unknown option detected for type: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Invalid option detected: %s", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

uint64_t PRM::Camera::PearlBufferStream::read(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.buffer_type == BufferTypeCVPixelBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Unknown option detected for type: %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "valid_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "res_valid_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "res_timestamp_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "read", "m_res_timestamp");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

uint64_t PRM::Camera::PearlBufferStream::write(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_cfdata");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "valid_ref[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "res_valid_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "res_timestamp_ref");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v15);
}

void PRM::Camera::PearlBufferStream::write(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "pearlBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata)");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_res_timestamp");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "write", "m_maximumViewIndex > 0");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::getBackingIOSurfaceList(v15);
}

void PRM::Camera::PearlBufferStream::getBackingIOSurfaceList(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool[pearl_attachment_id]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::getBackingIOSurfaceListSize(v15);
}

void PRM::Camera::PearlBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool[pearl_attachment_id]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v15);
}

void PRM::Camera::PearlBufferStream::inUse(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVPixelBuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvpixelbuffer");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool[i]");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v15);
}

{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRM::Camera::StreamReader::init(v15);
}

void PRM::Camera::StreamReader::init(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "init", "options->is_camera_stream");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "init", "m_maxForwardBufferCount == 0");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "init", "m_pbsReader == NULL");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "init", "options");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "init", "manager");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s: Assertion failed for %s", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v9))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = *a1;
  OUTLINED_FUNCTION_6_2();
  __break(1u);
}

uint64_t PRM::Camera::StreamReader::init(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown option detected for type: %s", "default");
  v3 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    v17 = 59;
    v18 = 2080;
    v19 = "default";
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Unknown option detected for type: %s", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_17_0(v5))
    {
      OUTLINED_FUNCTION_11();
      v17 = v4;
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v6, v7, "%s() failed to flush buffers with error code: %d", v8, v9, v10, v11, v14, v15, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = *a1;
  result = OUTLINED_FUNCTION_6_2();
  __break(1u);
  return result;
}

uint64_t PRM::Camera::StreamReader::acquirePBSResources(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquirePBSResources", "m_pbsReader");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::acquirePBSResources(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquirePBSResources", "pbsResourceList");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::isResourceInUse(v15);
}

uint64_t PRM::Camera::StreamReader::isResourceInUse(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "isResourceInUse", "m_stream");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::isResourceInUse(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "isResourceInUse", "pbsResource");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaceCount(v15);
}

uint64_t PRM::Camera::StreamReader::getIOSurfaceCount(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaceCount", "m_stream->getBackingIOSurfaceListSize(iosurface_count) == kIOReturnSuccess");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaceCount(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaceCount", "m_stream");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaces(v15);
}

uint64_t PRM::Camera::StreamReader::getIOSurfaces(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaces", "m_stream->getBackingIOSurfaceList(surfaces) == kIOReturnSuccess");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaces(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaces", "surfaces");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v2, v3, "%s:%d %s: Assertion failed for %s", v4, v5, v6, v7, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaces(v15);
}