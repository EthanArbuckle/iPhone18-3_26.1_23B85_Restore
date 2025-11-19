void PRM::Camera::StreamReader::getIOSurfaces(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaces", "m_stream");
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
  PRM::Camera::StreamReaderInstance::StreamReaderInstance(v15, v16);
}

void PRM::Camera::StreamReaderInstance::StreamReaderInstance(NSObject *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "StreamReaderInstance";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t PRM::Camera::StreamReaderInstance::acquireResources(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "_reader");
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
  return PRM::Camera::StreamReaderInstance::acquireResources(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "_capacity");
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
  return PRM::Camera::StreamReaderInstance::acquireResources(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "this->sync_tag_arr");
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
  return PRM::Camera::StreamReaderInstance::acquireResources(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "this->m_forwardedBuffersList");
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
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v15);
}

uint64_t PRM::Camera::StreamReaderInstance::updateForwardBufferList(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "this->m_forwardedPBSAcquiredCountList");
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
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "this->m_forwardedPSResourceList");
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
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "this->m_forwardedBuffersList");
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
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "_reader");
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
  return PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(v15);
}

uint64_t PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "getFreeForwardBufferListIndex", "outIndex < this->m_maxForwardedBufferCount");
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
  return PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(v15);
}

uint64_t PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "releaseForwardBufferListIndex", "index < this->m_maxForwardedBufferCount");
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
  return PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(v15);
}

{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "releaseForwardBufferListIndex", "in_use_indicies_bitarray_current & set_bit_mask");
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
  return PRM::Camera::StreamWriterInstance::StreamWriterInstance(v15);
}

void PRM::Camera::StreamWriterInstance::StreamWriterInstance()
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

uint64_t PRM::Camera::StreamWriterInstance::acquireResources(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "pbs_res");
  v1 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v8 = "acquireResources";
    v9 = 1024;
    v10 = 119;
    v11 = 2080;
    v12 = "acquireResources";
    v13 = 2080;
    v14 = "pbs_res";
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "acquireResources";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamWriterInstance::relinquishResources(v5);
}

uint64_t PRM::Camera::StreamWriterInstance::relinquishResources(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Assertion (%s). %s", "relinquishResources", "this->has_acquired_resource", "Tried to relinquish when no buffer was held");
  v1 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v8 = "relinquishResources";
    v9 = 1024;
    v10 = 131;
    v11 = 2080;
    v12 = "relinquishResources";
    v13 = 2080;
    v14 = "this->has_acquired_resource";
    v15 = 2080;
    v16 = "Tried to relinquish when no buffer was held";
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion (%s). %s", buf, 0x30u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "relinquishResources";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamWriterInstance::~StreamWriterInstance(v5);
}

void PRM::Camera::StreamWriterInstance::~StreamWriterInstance()
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

void PRMFastPathHIDReader::createReaderInstanceContext(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "createReaderInstanceContext";
  *(buf + 6) = 1024;
  *(buf + 14) = 71;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d Cannot create reader instance context for inactive PRMReader for key: %s", buf, 0x1Cu);
}

void PRMFastPathHIDReader::createReaderInstanceContext(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "createReaderInstanceContext";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void PRMFastPathHIDReaderInstance::~PRMFastPathHIDReaderInstance(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRMFastPathHIDReaderInstance::acquireResources(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "acquireResources";
  *(buf + 6) = 1024;
  *(buf + 14) = 127;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d Double acquire! Relinquish before acquiring again %s.", buf, 0x1Cu);
}

void PRMFastPathHIDReaderInstance::acquireResources()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void PRMIOSurfaceSharedEventWaiter::init(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PRMPBSAneReader::init(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "init";
  *(buf + 6) = 1024;
  *(buf + 14) = 43;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d PRM ANE Reader (key %s) expects ANE chained stream!", buf, 0x1Cu);
}

void PRMPBSAneReader::init()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_3_4(v2))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t PRMPBSCameraReader::init(char **a1, PRMReader *this)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReader::getKey(this);
  asprintf(a1, "PRM Camera Reader (key %s) expects camera stream!", Key);
  v5 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v12 = "init";
    v13 = 1024;
    v14 = 31;
    v15 = 2080;
    v16 = PRMReader::getKey(this);
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d PRM Camera Reader (key %s) expects camera stream!", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "init";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = OUTLINED_FUNCTION_0();
  return PRMPBSCameraReader::_populateClientResTypeJasperBuffer(v9);
}

uint64_t PRMPBSCameraReader::_populateClientResTypeJasperBuffer(char **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unsupported metadata type");
  v1 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "_populateClientResTypeJasperBuffer";
    v9 = 1024;
    v10 = 320;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type", &v7, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "_populateClientResTypeJasperBuffer";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v7, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = OUTLINED_FUNCTION_0();
  return PRMPBSGenericReader::_populateClientResTypePixelBuffer(v5);
}

uint64_t PRMPBSGenericReader::_populateClientResTypePixelBuffer(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "this->metadata_type");
  v1 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v17, v18, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRMPBSGenericReader::_populateClientResTypeDataBuffer(v15);
}

uint64_t PRMPBSGenericReader::_populateClientResTypeDataBuffer(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid option detected: %s", "this->metadata_type");
  v1 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v2, v3, "%s:%d Invalid option detected: %s", v4, v5, v6, v7, v18, v19, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v18, v19, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::init(v15, v16);
}

uint64_t PRMPBSReader::init(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Received an invalid class type for reader %s", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Received an invalid class type for reader %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::init(v19);
}

{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Received an invalid class type for reader %s", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Received an invalid class type for reader %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::createReaderInstanceContext(v19);
}

uint64_t PRMPBSReader::createReaderInstanceContext(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Cannot create reader instance context for inactive PRMReader for key: %s", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Cannot create reader instance context for inactive PRMReader for key: %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::deleteReaderInstanceContext(v19);
}

uint64_t PRMPBSReader::deleteReaderInstanceContext(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Cannot delete context if buffer group has already been destroyed for key: %s", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Cannot delete context if buffer group has already been destroyed for key: %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::_checkBeforeAcquire(v19);
}

uint64_t PRMPBSReader::_checkBeforeAcquire(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Tried to use both frameID and seqNum for resource %s.", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Tried to use both frameID and seqNum for resource %s.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::_checkBeforeAcquire(v19);
}

{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Tried to use frameID for resource %s, but found an invalid frameID.", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Tried to use frameID for resource %s, but found an invalid frameID.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::populateResources(v19);
}

uint64_t PRMPBSReader::populateResources(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Received an invalid class type for reader %s", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Received an invalid class type for reader %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::_populateClientResTypeMTLBuffer(v19);
}

uint64_t PRMPBSReader::_populateClientResTypeMTLBuffer(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "MTLBuffer type not yet implemented.");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d MTLBuffer type not yet implemented.", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::_populateClientResTypeMTLTexture(v15);
}

void PRMPBSReader::_populateClientResTypeMTLTexture(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "MTLTexture type not yet implemented.");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d MTLTexture type not yet implemented.", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  PRMPBSReader::populatePBSValidity(v15, v16);
}

void PRMPBSReader::populatePBSValidity(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Received an invalid class type for reader %s", v4);
  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Received an invalid class type for reader %s", v8, v9, v10, v11, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRMPBSReaderInstance::PRMPBSReaderInstance();
}

void PRMPBSReaderInstance::PRMPBSReaderInstance()
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

void PRMPBSReaderInstance::~PRMPBSReaderInstance()
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

uint64_t PRMPBSReaderInstance::acquireResources(char **a1, PRMReaderInstance *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReaderInstance::getKey(this);
  asprintf(a1, "You cannot acquire a new buffer if you are already holding an old buffer! If you need to acquire multiple buffers at multiple instances in time, please create a new reader instance for key %s.", Key);
  v5 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v14 = "acquireResources";
    v15 = 1024;
    v16 = 85;
    v17 = 2080;
    v18 = PRMReaderInstance::getKey(this);
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d You cannot acquire a new buffer if you are already holding an old buffer! If you need to acquire multiple buffers at multiple instances in time, please create a new reader instance for key %s.", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "acquireResources";
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  v10 = abort_with_reason();
  return PRMReader::init(v10, v11);
}

uint64_t PRMReader::init(char **a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = (a2 + 24);
  v5 = (a2 + 24);
  if (*(a2 + 47) < 0)
  {
    v5 = *v4;
  }

  asprintf(a1, "Tried to init PRMReader for key %s that's already initialized", v5);
  v6 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 47) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315650;
    v12 = "init";
    v13 = 1024;
    v14 = 49;
    v15 = 2080;
    v16 = v4;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d Tried to init PRMReader for key %s that's already initialized", buf, 0x1Cu);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "init";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = *a1;
  result = abort_with_reason();
  __break(1u);
  return result;
}

uint64_t PRMReader::deinit(char **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = (a2 + 24);
  v5 = (a2 + 24);
  if (*(a2 + 47) < 0)
  {
    v5 = *v4;
  }

  asprintf(a1, "Tried to deinit PRMReader for key %s with nonzero (%d) refcount.", v5, *(a2 + 64));
  v6 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 47) < 0)
    {
      v4 = *v4;
    }

    v7 = *(a2 + 64);
    *buf = 136315906;
    v15 = "deinit";
    v16 = 1024;
    v17 = 68;
    v18 = 2080;
    v19 = v4;
    v20 = 1024;
    v21 = v7;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d Tried to deinit PRMReader for key %s with nonzero (%d) refcount.", buf, 0x22u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "deinit";
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v11 = *a1;
  v12 = abort_with_reason();
  return PRMWriterInstance::PRMWriterInstance(v12);
}

void PRMWriterInstance::PRMWriterInstance()
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

void PRMWriterInstance::initBuffers()
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

uint64_t PRMWriterInstance::installBufferTypeSurface(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Creation mode was not defined for IOSurface type %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Creation mode was not defined for IOSurface type %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePixelBuffer(v19);
}

uint64_t PRMWriterInstance::installBufferTypePixelBuffer(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Metadata IOSurface properties were not configured for: %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Metadata IOSurface properties were not configured for: %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePixelBuffer(v19);
}

{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Creation mode was not defined for CVPixelBuffer type %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Creation mode was not defined for CVPixelBuffer type %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeDataBuffer(v19);
}

uint64_t PRMWriterInstance::installBufferTypeDataBuffer(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Metadata IOSurface properties were not configured for: %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Metadata IOSurface properties were not configured for: %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeDataBuffer(v19);
}

{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Creation mode was not defined for CVDataBuffer type %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Creation mode was not defined for CVDataBuffer type %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeJasperBuffer(v19);
}

uint64_t PRMWriterInstance::installBufferTypeJasperBuffer(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Metadata IOSurface properties were not configured for: %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Metadata IOSurface properties were not configured for: %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeJasperBuffer(v19);
}

{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Creation mode was not defined for CVDataBuffer type %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Creation mode was not defined for CVDataBuffer type %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePearlBuffer(v19);
}

uint64_t PRMWriterInstance::installBufferTypePearlBuffer(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Creation mode was not defined for Pearlbuffer type %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Creation mode was not defined for Pearlbuffer type %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePearlBuffer(v19);
}

{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Metadata IOSurface properties were not configured for: %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Metadata IOSurface properties were not configured for: %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePearlBuffer(v19);
}

{
  v3 = OUTLINED_FUNCTION_19(a1, a2, *MEMORY[0x277D85DE8]);
  asprintf(v3, "Creation mode was not defined for Pearlbuffer type %s", v21);
  v4 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v5 = *(a2 + 56);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Creation mode was not defined for Pearlbuffer type %s", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::acquireResources(v19);
}

uint64_t _iosurfaceAllocator(char **a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to create CVPixelBuffer for resource with error code %d", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d Failed to create CVPixelBuffer for resource with error code %d", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _iosurfaceAllocator(v16);
}

uint64_t _iosurfaceAllocator(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to get IOSurface from CVPixelBuffer.");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Failed to get IOSurface from CVPixelBuffer.", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return _cvPixelBufferAllocator(v15, v16);
}

uint64_t _cvPixelBufferAllocator(char **a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to create CVPixelBuffer for resource with error code %d", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d Failed to create CVPixelBuffer for resource with error code %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _cvPixelBufferAllocator(v16, v17);
}

{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "failed to increment category 1 use count for CV Pixel Buffer ret=%d", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d failed to increment category 1 use count for CV Pixel Buffer ret=%d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _cvDataBufferAllocator(v16, v17);
}

uint64_t _cvDataBufferAllocator(char **a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to create CVDataBuffer for resource with error code %d", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d Failed to create CVDataBuffer for resource with error code %d", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _cvDataBufferAllocator(v16, v17);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "failed to increment category 1 use count for CV Data Buffer ret=%d", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v3, v4, "%s:%d failed to increment category 1 use count for CV Data Buffer ret=%d", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _cvDataBufferAllocator(v16);
}

uint64_t _cvDataBufferAllocator(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to allocate IOSurface for properties");
  v1 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v2, v3, "%s:%d Failed to allocate IOSurface for properties", v4, v5, v6, v7, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v8 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return PSActionTaker::signalResourceAvailable(v15);
}

uint64_t PSActionTaker::signalResourceAvailable(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Tried to call a null resource callback");
  v2 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "signalResourceAvailable";
    v11 = 1024;
    v12 = 44;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Tried to call a null resource callback", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "signalResourceAvailable";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return PSActionTakerManager::~PSActionTakerManager(v7);
}

void PSActionTakerManager::~PSActionTakerManager(NSObject *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "~PSActionTakerManager";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t PSActionTakerManager::initializeActionTaker(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "No free slots available to populate a new action taker (ie >%d action takers registered).", 64);
  v2 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v8 = "initializeActionTaker";
    v9 = 1024;
    v10 = 110;
    v11 = 1024;
    v12 = 64;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d No free slots available to populate a new action taker (ie >%d action takers registered).", buf, 0x18u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "initializeActionTaker";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = *a1;
  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSListenerThread::start(char **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReader::getKey(*(a2 + 16));
  asprintf(a1, "No pthread creation opt was found for resource %s", Key);
  v5 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    PRMReader::getKey(*(a2 + 16));
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d No pthread creation opt was found for resource %s", v8, v9, v10, v11, v21, v22, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  _thread_workloop(v19, v20);
}

void _thread_workloop(char **a1, PRMReader **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReader::getKey(*a2);
  asprintf(a1, "Could not find a frameid for resource %s", Key);
  v5 = __PSResourceManagerLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    PRMReader::getKey(*a2);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Could not find a frameid for resource %s", v8, v9, v10, v11, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PSResourceManagerLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  __PSResourceManagerLogSharedInstance_cold_1();
}

void PSResourceManager::PSResourceManager(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void PSResourceManager::createReaderInstance(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t PSResourceManager::createActionTaker(char **a1, const char *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not find provider (writer) for key %s.", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v3, v4, "%s:%d Could not find provider (writer) for key %s.", v5, v6, v7, v8, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSResourceManager::createActionTaker(v16, v17);
}

{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not find actionTakerManager for key %s.", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v3, v4, "%s:%d Could not find actionTakerManager for key %s.", v5, v6, v7, v8, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSResourceManager::createActionTaker(v16, v17);
}

{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not find provider (listener thread) for key %s.", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v3, v4, "%s:%d Could not find provider (listener thread) for key %s.", v5, v6, v7, v8, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSResourceManager::createActionTaker(v16, v17);
}

{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not find provider (reader) for key %s.", a2);
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v3, v4, "%s:%d Could not find provider (reader) for key %s.", v5, v6, v7, v8, v18, v19, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return PSResourceManager::deleteActionTaker(v16);
}

void PSResourceManager::getIOSurfaces(char **a1, const char *a2)
{
  *a1 = 0;
  asprintf(a1, "%s: reader/writer instance nil for key (%s)", "getIOSurfaces", a2);
  v3 = *a1;
  _os_crash();
  __break(1u);
}

uint64_t ps_prm_allocate_retained_nsobject_array_cold_1(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_retained_nsobject_array_cold_2(v16);
}

uint64_t ps_prm_allocate_retained_nsobject_array_cold_2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "NSObject allocator returned nil for key %s", [v4 UTF8String]);

  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d NSObject allocator returned nil for key %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_retained_nsobject_array_cold_3(v20);
}

uint64_t ps_prm_allocate_retained_nsobject_array_cold_3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "No retainable allocator was specified for stream %s", [v4 UTF8String]);

  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No retainable allocator was specified for stream %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_opaque_array_cold_1(v20);
}

uint64_t ps_prm_allocate_opaque_array_cold_1(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_opaque_array_cold_2(v16);
}

uint64_t ps_prm_allocate_opaque_array_cold_2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Opaque allocator returned nil for key %s", [v4 UTF8String]);

  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Opaque allocator returned nil for key %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_opaque_array_cold_3(v20);
}

uint64_t ps_prm_allocate_opaque_array_cold_3(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "No allocator was specified for stream %s", [v4 UTF8String]);

  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No allocator was specified for stream %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_prm_deallocate_opaque_array_cold_1(v20);
}

void ps_prm_deallocate_opaque_array_cold_1(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "No deallocator found for stream %s", [v4 UTF8String]);

  v5 = __PSResourceManagerLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 key];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No deallocator found for stream %s", v9, v10, v11, v12, v23, v24, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PSResourceManagerLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  ps_frame_history_writer_buffer_init(v20, v21, v22);
}

void ps_frame_history_writer_buffer_init(PSFrameHistoryBufferServiceClient *a1, void *a2, void *a3)
{
  v65 = a2;
  v5 = a3;
  if (a1 && v65 && v5)
  {
    v6 = [v5 getContext];
    if (ps_frame_history_buffer_service_allocate_buffer(a1, (v6 + 96), [v65 resolvedFrequency]))
    {
      v7 = ps_frame_history_graph_metadata_set_submission_timestamp(*(v6 + 96));
      [OUTLINED_FUNCTION_2_5(v7 v8];
      v15 = OUTLINED_FUNCTION_1_5();
      v17 = ps_frame_history_graph_metadata_set_deadline(v15, v16);
      [OUTLINED_FUNCTION_2_5(v17 v18];
      v25 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_frequency(v25, v26);
      v27 = *(v6 + 96);
      v28 = [v5 name];
      [v28 UTF8String];
      v29 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_graph_name(v29, v30, v31, 0);

      v40 = [OUTLINED_FUNCTION_2_5(v32 v33];
      v41 = [v40 key];
      [v41 UTF8String];
      v42 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_domain(v42, v43, v44);

      v53 = [OUTLINED_FUNCTION_2_5(v45 v46];
      LODWORD(v41) = [v53 intValue];
      v54 = [v65 offset];
      ps_frame_history_graph_metadata_set_stride_and_offset(v27, v41, [v54 intValue]);

      v55 = *(v6 + 96);
      v56 = [v5 output];
      v57 = [v56 resourceKey];
      [v57 UTF8String];
      v58 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_add_output(v58, v59, v60);

      ps_frame_history_buffer_set_init_complete(*(v6 + 96));
    }

    else
    {
      *(v6 + 96) = 0;
    }
  }
}

void ps_frame_history_reader_buffer_init(PSFrameHistoryBufferServiceClient *a1, void *a2, void *a3)
{
  v65 = a2;
  v5 = a3;
  if (a1 && v65 && v5)
  {
    v6 = [v5 getContext];
    if (ps_frame_history_buffer_service_allocate_buffer(a1, (v6 + 32), [v65 resolvedFrequency]))
    {
      v7 = ps_frame_history_graph_metadata_set_submission_timestamp(*(v6 + 32));
      [OUTLINED_FUNCTION_4_3(v7 v8];
      v15 = OUTLINED_FUNCTION_1_5();
      v17 = ps_frame_history_graph_metadata_set_deadline(v15, v16);
      [OUTLINED_FUNCTION_4_3(v17 v18];
      v25 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_frequency(v25, v26);
      v27 = *(v6 + 32);
      v28 = [v5 name];
      [v28 UTF8String];
      v29 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_graph_name(v29, v30, v31, 1);

      v40 = [OUTLINED_FUNCTION_4_3(v32 v33];
      v41 = [v40 key];
      [v41 UTF8String];
      v42 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_domain(v42, v43, v44);

      v53 = [OUTLINED_FUNCTION_4_3(v45 v46];
      LODWORD(v41) = [v53 intValue];
      v54 = [v65 offset];
      ps_frame_history_graph_metadata_set_stride_and_offset(v27, v41, [v54 intValue]);

      v55 = *(v6 + 32);
      v56 = [v5 input];
      v57 = [v56 resourceKey];
      [v57 UTF8String];
      v58 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_add_input(v58, v59, v60);

      ps_frame_history_buffer_set_init_complete(*(v6 + 32));
    }

    else
    {
      *(v6 + 32) = 0;
    }
  }
}

void ps_frame_history_graph_buffer_init(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a1 && a2 && v5)
  {
    if (ps_frame_history_buffer_service_allocate_buffer(a1, (a2 + 6816), [v5 resolvedFrequency]))
    {
      ps_frame_history_graph_metadata_set_submission_timestamp(*(a2 + 6816));
      v7 = *(a2 + 6816);
      [v6 resolvedDeadline];
      v8 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_deadline(v8, v9);
      v10 = *(a2 + 6816);
      [v6 resolvedFrequency];
      v11 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_frequency(v11, v12);
      v13 = +[PSExecutionSessionWorkarounds sharedInstance];
      v14 = [v6 name];
      v15 = [MEMORY[0x277CCAC38] processInfo];
      v16 = [v15 processName];
      v17 = [v13 shortenedNameForGraph:v14 procName:v16];

      v18 = *(a2 + 6816);
      v50 = v17;
      [v17 UTF8String];
      v19 = OUTLINED_FUNCTION_3_7();
      ps_frame_history_graph_metadata_set_graph_name(v19, v18, v20, 2);
      v21 = *(a2 + 6816);
      v22 = [v6 resolvedDomain];
      v23 = [v22 key];
      [v23 UTF8String];
      v24 = OUTLINED_FUNCTION_3_7();
      ps_frame_history_graph_metadata_set_domain(v24, v21, v25);

      v26 = *(a2 + 6816);
      v27 = [v6 systemPulseStride];
      LODWORD(v23) = [v27 intValue];
      v28 = [v6 offset];
      ps_frame_history_graph_metadata_set_stride_and_offset(v26, v23, [v28 intValue]);

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v51 = v6;
      obj = [v6 tasks];
      v54 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v54)
      {
        v53 = *v65;
        do
        {
          v29 = 0;
          do
          {
            if (*v65 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v64 + 1) + 8 * v29);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v55 = v30;
            v31 = [v30 inputs];
            v32 = [v31 countByEnumeratingWithState:&v60 objects:v69 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v61;
              do
              {
                v35 = 0;
                do
                {
                  if (*v61 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(a2 + 6816);
                  v37 = [*(*(&v60 + 1) + 8 * v35) resourceKey];
                  [v37 UTF8String];
                  v38 = OUTLINED_FUNCTION_3_7();
                  ps_frame_history_graph_metadata_add_input(v38, v36, v39);

                  ++v35;
                }

                while (v33 != v35);
                v33 = [v31 countByEnumeratingWithState:&v60 objects:v69 count:16];
              }

              while (v33);
            }

            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v40 = [v55 outputs];
            v41 = [v40 countByEnumeratingWithState:&v56 objects:v68 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v57;
              do
              {
                v44 = 0;
                do
                {
                  if (*v57 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v45 = *(a2 + 6816);
                  v46 = [*(*(&v56 + 1) + 8 * v44) resourceKey];
                  [v46 UTF8String];
                  v47 = OUTLINED_FUNCTION_3_7();
                  ps_frame_history_graph_metadata_add_output(v47, v45, v48);

                  ++v44;
                }

                while (v42 != v44);
                v42 = [v40 countByEnumeratingWithState:&v56 objects:v68 count:16];
              }

              while (v42);
            }

            ++v29;
          }

          while (v29 != v54);
          v54 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
        }

        while (v54);
      }

      ps_frame_history_buffer_set_init_complete(*(a2 + 6816));
      v6 = v51;
    }

    else
    {
      *(a2 + 6816) = 0;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void ps_frame_history_notify_start_frame_data(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      graph_metadata = ps_frame_history_buffer_get_graph_metadata(a1);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = __ps_frame_history_notify_start_frame_data_block_invoke;
      v13[3] = &__block_descriptor_tmp_12;
      v13[4] = a4;
      v13[5] = graph_metadata;
      v13[6] = a3;
      v13[7] = a2;
      v14 = a5;
      v13[8] = a6;
      ps_frame_history_buffer_update_data_entry(a1, 2u, v13);
    }
  }
}

void ps_frame_history_notify_end_frame_data(unint64_t *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  if (a1)
  {
    if (a2)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 0x40000000;
      v5[2] = __ps_frame_history_notify_end_frame_data_block_invoke;
      v5[3] = &__block_descriptor_tmp_1_2;
      v5[4] = a2;
      v5[5] = a3;
      v7 = a4;
      v6 = a5;
      ps_frame_history_buffer_update_data_entry(a1, 3u, v5);
    }
  }
}

uint64_t ps_gsm_gst_notify_complete_cold_1(uint64_t result)
{
  if (atomic_fetch_add((result + 136), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*(result + 144) + 16))();
  }

  return result;
}

uint64_t ps_gsm_wait_on_sem_cold_1(void *a1, mach_error_t a2)
{
  v4 = OUTLINED_FUNCTION_1_6(a1, a2);
  asprintf(v2, "%s: semaphore_timedwait failed with code %d (%s)", "ps_gsm_wait_on_sem", v3, v4);
  v5 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    mach_error_string(v3);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_2_6(&dword_25EA3A000, v6, v7, "%s:%d %s: semaphore_timedwait failed with code %d (%s)", v8, v9, v10, v11, v21, v22, v23, v24, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23, v24, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_gsm_signal_sem_cold_1(v19);
}

uint64_t ps_gsm_signal_sem_cold_1(void *a1, mach_error_t a2)
{
  v4 = OUTLINED_FUNCTION_1_6(a1, a2);
  asprintf(v2, "%s: semaphore_signal failed with code %d (%s)", "ps_gsm_signal_sem", v3, v4);
  v5 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    mach_error_string(v3);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_2_6(&dword_25EA3A000, v6, v7, "%s:%d %s: semaphore_signal failed with code %d (%s)", v8, v9, v10, v11, v21, v22, v23, v24, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23, v24, 2u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_gsm_create_gst_internal_cold_1(v19);
}

uint64_t ps_gsm_create_gst_internal_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "%s NULL Shared Trigger for shared gst (%s) creation", (a2 + 16), "ps_gsm_create_gst_internal");
  v2 = __PolarisGSMLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s NULL Shared Trigger for shared gst (%s) creation", v5, v6, v7, v8, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PolarisGSMLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_gsm_gst_handle_source_death_cold_1(v16, v17);
}

uint64_t ps_gsm_gst_handle_source_death_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Out of bounds assert error (%llu >= %llu)", a2, 1024);
  v2 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_6_3(&dword_25EA3A000, v3, v4, "%s:%d Out of bounds assert error (%llu >= %llu)", v5, v6, v7, v8, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_util_assert_less_than_equal_unsigned_cold_1(v16, v17);
}

uint64_t ps_util_assert_less_than_equal_unsigned_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Out of bounds assert error (%llu > %llu)", a2, 1024);
  v2 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_6_3(&dword_25EA3A000, v3, v4, "%s:%d Out of bounds assert error (%llu > %llu)", v5, v6, v7, v8, v18, v19, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PSUtilitiesLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_gsm_request_waiter_sequenced_teardown_cold_1(v16);
}

uint64_t ps_gsm_request_waiter_sequenced_teardown_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = a2 + 16;
  asprintf(a1, "GST (%s) Sequenced Teardown not supported on shared trigger", (a2 + 16));
  v4 = __PolarisGSMLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    *buf = 136315650;
    v18 = "ps_gsm_request_waiter_sequenced_teardown";
    v19 = 1024;
    v20 = 391;
    v21 = 2080;
    v22 = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d GST (%s) Sequenced Teardown not supported on shared trigger", buf, 0x1Cu);
  }

  if (OSLogFlushBuffers())
  {
    v5 = __PolarisGSMLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v6, v7, "%s() failed to flush buffers with error code: %d", v8, v9, v10, v11, v15, v16, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_gsm_gst_trigger_set_stride_cold_1(v12, v13);
}

void ps_gsm_gst_trigger_set_stride_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Stride %llu does not fit within the allocated %d bits.", a2, 10);
  v3 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v17 = "ps_gsm_gst_trigger_set_stride";
    v18 = 1024;
    v19 = 96;
    v20 = 2048;
    v21 = a2;
    v22 = 1024;
    v23 = 10;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d Stride %llu does not fit within the allocated %d bits.", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    v4 = __PolarisGSMLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v4))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v14, v15, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v11 = OUTLINED_FUNCTION_0();
  ps_gsm_wait_gst_cold_1(v11, v12, v13);
}

void ps_gsm_wait_gst_cold_1(unint64_t *a1, int *a2, _BYTE *a3)
{
  if (a1[598])
  {
    ps_gsm_remove_waiter_async(a1, a2);
  }

  else
  {
    OUTLINED_FUNCTION_5_3(a1, a2);
  }

  *a3 = 1;
}

uint64_t ps_gsm_wait_gst_cold_3(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "%s called for gst (%s) belonging to shared trigger", "ps_gsm_wait_gst", (a2 + 16));
  v2 = __PolarisGSMLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v3, v4, "%s:%d %s called for gst (%s) belonging to shared trigger", v5, v6, v7, v8, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PolarisGSMLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_gsm_gst_handle_death_cold_1(v16, v17);
}

void ps_gsm_gst_handle_death_cold_1(unsigned __int8 a1, char **a2)
{
  *a2 = 0;
  asprintf(a2, "%s: invalid storage_mode %d", "void ps_gsm_gst_handle_death(ps_gsm_t, ps_gsm_gst_t)", a1);
  v4 = __PolarisGSMLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    *buf = 136315906;
    v15 = "ps_gsm_gst_handle_death";
    v16 = 1024;
    v17 = 1089;
    v18 = 2080;
    v19 = "void ps_gsm_gst_handle_death(ps_gsm_t, ps_gsm_gst_t)";
    v20 = 1024;
    v21 = a1;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s: invalid storage_mode %d", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    v5 = __PolarisGSMLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v6, v7, "%s() failed to flush buffers with error code: %d", v8, v9, v10, v11, v12, v13, buf[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_gsm_get_gst_cold_1();
}

uint64_t ps_gsm_shared_trigger_get_available_index_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Shared Trigger (%s) Exec Mask no longer has bit available to execute in single waiter architecture", (a2 + 2));
  v2 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Shared Trigger (%s) Exec Mask no longer has bit available to execute in single waiter architecture", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_gsm_shared_trigger_get_available_index_cold_2(v16);
}

uint64_t ps_gsm_shared_trigger_get_available_index_cold_2(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Shared Trigger (%s) Cached Mask changed in single waiter architecture", (a2 + 2));
  v2 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Shared Trigger (%s) Cached Mask changed in single waiter architecture", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_gsm_wait_shared_trigger_cold_1(v16);
}

void ps_gsm_wait_shared_trigger_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Exited shared trigger (%s) wait without a bit to execute", (a2 + 2));
  v2 = __PolarisGSMLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d Exited shared trigger (%s) wait without a bit to execute", v5, v6, v7, v8, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PolarisGSMLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17, v18, v19);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v16 = OUTLINED_FUNCTION_0();
  ps_gsm_get_shared_trigger_cold_1(v16);
}

void ps_util_assert_less_than_equal_unsigned_cold_1_0(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Out of bounds assert error (%llu > %llu)", a2, 1024);
  v4 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "ps_util_assert_less_than_equal_unsigned";
    v12 = 1024;
    v13 = 199;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = 1024;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d Out of bounds assert error (%llu > %llu)", buf, 0x26u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSUtilitiesLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "ps_util_assert_less_than_equal_unsigned";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = *a1;
  v9 = abort_with_reason();
  ps_gsm_notify_cold_1(v9);
}

_DWORD *_liveness_remove_node(_DWORD *result, int a2)
{
  v2 = a2 & 0x7FFFFFF;
  if (v2 < result[8])
  {
    v3 = a2;
    v4 = result;
    v5 = result[2];
    v6 = result[3];
    v7 = result[5];
    v8 = result + (16 * result[4]);
    result = mach_absolute_time();
    v9 = &v8[400 * v2];
    *(v9 + 25) = result;
    if (v4[1])
    {
      if (v2 < v4[8])
      {
        v17 = &v4[4 * v2] + (16 * v4[3]);
        result = *v17;
        v18 = *(v17 + 8);
        v19 = -1;
        do
        {
          OUTLINED_FUNCTION_0_5(result, v18, v19);
          _ZF = _ZF && v21 == v20;
          result = v21;
          v18 = v22;
        }

        while (!_ZF);
      }
    }

    else
    {
      atomic_store(0, v9);
      atomic_fetch_add((&v4[v2] + (16 * v7)), 1u);
      v10 = &v4[4 * v2] + (16 * v6);
      result = *v10;
      _X2 = -1;
      do
      {
        _X5 = *(v10 + 8);
        __asm { CASPAL          X4, X5, X2, X3, [X10] }

        _ZF = _X4 == result;
        result = _X4;
      }

      while (!_ZF);
      v9[8] = 0;
      v9[88] = 0;
      v9[72] = 0;
      atomic_fetch_or((&v4[2 * (v2 >> 6)] + (16 * v5)), 1 << v3);
    }
  }

  return result;
}

uint64_t ps_liveness_reset_deadline_if_needed(int a1, unint64_t a2)
{
  v2 = 0;
  v27 = *MEMORY[0x277D85DE8];
  if (a1 < 0 && qword_27FD127D0)
  {
    if (a1 != -1)
    {
      v3 = a1 & 0x7FFFFFF;
      if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
      {
        snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_reset_deadline_if_needed", a1);
        if (qword_27FD127D0 && strlen(__str))
        {
          v13 = OUTLINED_FUNCTION_3_8();
          OUTLINED_FUNCTION_2_7(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, 0, 0, v25, __str[0]);
          ps_ringbuffer_close_allocation();
        }
      }

      else if (*(xmmword_27FD127E8 + 400 * v3 + 136) <= a2)
      {
        v2 = 1;
        ps_liveness_node_pause(a1, 1);
        _X0 = 0;
        _X1 = 0;
        __asm { CASPAL          X0, X1, X0, X1, [X9] }

        v12 = (xmmword_27FD127E8 + 400 * v3);
        ps_liveness_node_set_deadlines(a1, v12[18], v12[19]);
        v12[18] = 0;
        v12[19] = 0;
        v12[17] = -1;
        v12[46] = 3000000000;
        ps_liveness_node_pause(a1, 0);
        goto LABEL_11;
      }
    }

    v2 = 0;
  }

LABEL_11:
  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t ps_liveness_node_pause(int a1, int a2)
{
  result = 0;
  v33 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || !qword_27FD127D0)
  {
    goto LABEL_19;
  }

  if (a1 == -1)
  {
    goto LABEL_18;
  }

  v4 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_pause", a1);
    if (qword_27FD127D0 && strlen(__str))
    {
      v20 = OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_2_7(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, 0, 0, v31, __str[0]);
      ps_ringbuffer_close_allocation();
    }

    goto LABEL_18;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v11 = xmmword_27FD127E8 + 400 * v4;
  if (!a2 || _X2 == -1)
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  if (v4 < *(qword_27FD127D0 + 32))
  {
    OUTLINED_FUNCTION_1_7(qword_27FD127D0);
    v13 = OUTLINED_FUNCTION_4_5(v12);
    do
    {
      OUTLINED_FUNCTION_0_5(v13, v14, v15);
      _ZF = _ZF && v17 == v16;
      v13 = v17;
      v14 = v18;
    }

    while (!_ZF);
  }

  *(v11 + 184) = mach_absolute_time();
  result = 1;
LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ps_liveness_init_block_invoke_cold_1(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Liveness: Failed to obtain an address from the serial data writer - cannot continue\n");
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v12 = 136315394;
    v13 = "ps_liveness_init_block_invoke";
    v14 = 1024;
    v15 = 843;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Liveness: Failed to obtain an address from the serial data writer - cannot continue\n", &v12, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ps_liveness_init_block_invoke";
      v14 = 1024;
      v15 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v12, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return _liveness_cleanup_session_by_name_cold_1(v7, v8, v9, v10);
}

uint64_t _liveness_cleanup_session_by_name_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if ((a1 & 0x7FFFFFF) < *(qword_27FD127D0 + 32))
  {
    OUTLINED_FUNCTION_1_7(qword_27FD127D0);
    v9 = (v8 + 16 * (a1 & 0x7FFFFFF));
    v10 = *v9;
    v11 = v9[1];
    v12 = -1;
    do
    {
      OUTLINED_FUNCTION_0_5(v10, v11, v12);
      v16 = v16 && v14 == v13;
      v10 = v14;
      v11 = v15;
    }

    while (!v16);
  }

  v17 = ps_ringbuffer_allocate();
  *v17 = a3;
  *(v17 + 12) = *(xmmword_27FD127E8 + 400 * a1 + 116);
  v18 = atomic_load((*(&xmmword_27FD127F8 + 1) + 4 * a1));
  *(v17 + 16) = v18;
  *(v17 + 8) = a4;
  *(v17 + 20) = *(xmmword_27FD127E8 + 400 * a1 + 108);
  __strlcpy_chk();
  __strlcpy_chk();
  strlcpy((v17 + 104), (xmmword_27FD127E8 + 400 * a1 + 88), 0x10uLL);
  v19 = *a2;
  v20 = a2[1];
  return ps_ringbuffer_close_allocation();
}

uint64_t ps_liveness_node_finalize_cold_1(unsigned int a1, uint64_t a2)
{
  if (a1 < *(qword_27FD127D0 + 32))
  {
    OUTLINED_FUNCTION_1_7(qword_27FD127D0);
    v4 = OUTLINED_FUNCTION_4_5(v3);
    do
    {
      OUTLINED_FUNCTION_0_5(v4, v5, v6);
      v10 = v10 && v8 == v7;
      v4 = v8;
      v5 = v9;
    }

    while (!v10);
  }

  result = mach_absolute_time();
  *(xmmword_27FD127E8 + 400 * a2 + 184) = result;
  return result;
}

uint64_t ps_liveness_server_init_state_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Liveness: Failed to create serial data writer\n");
  v2 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v5 = *a1;
    v13 = 136315650;
    v14 = "ps_liveness_server_init_state";
    v15 = 1024;
    v16 = 856;
    v17 = 2080;
    v18 = v5;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v3, v4, "%s:%d %s", &v13);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      v13 = 136315394;
      v14 = "ps_liveness_server_init_state";
      v15 = 1024;
      v16 = v7;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", &v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v11 = OUTLINED_FUNCTION_0();
  return ps_liveness_server_init_cold_1(v11);
}

uint64_t ps_liveness_server_init_cold_1(char **a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not set attribute type compositor for graph:(%s) error:(%d)", liveness_workgroup_id, a2);
  v3 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    v6 = *a1;
    v14 = 136315650;
    v15 = "_liveness_create_workgroup";
    v16 = 1024;
    v17 = 159;
    v18 = 2080;
    v19 = v6;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v4, v5, "%s:%d %s", &v14);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    v9 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      v14 = 136315394;
      v15 = "_liveness_create_workgroup";
      v16 = 1024;
      v17 = v8;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", &v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_liveness_server_init_cold_2(v12);
}

uint64_t ps_liveness_server_init_cold_2(char **a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not create pthread for liveness with err:(%d)", a2);
  v3 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    v6 = *a1;
    v14 = 136315650;
    v15 = "ps_liveness_server_init";
    v16 = 1024;
    v17 = 939;
    v18 = 2080;
    v19 = v6;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v4, v5, "%s:%d %s", &v14);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    v9 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      v14 = 136315394;
      v15 = "ps_liveness_server_init";
      v16 = 1024;
      v17 = v8;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", &v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_liveness_server_init_cold_3(v12);
}

uint64_t ps_liveness_server_init_cold_3(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = __error();
  v3 = strerror(*v2);
  v4 = __error();
  asprintf(a1, "Could not create liveness workgroup with (%s) (%d)", v3, *v4);
  v5 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v8 = *a1;
    v16 = 136315650;
    v17 = "_liveness_create_workgroup";
    v18 = 1024;
    v19 = 169;
    v20 = 2080;
    v21 = v8;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v6, v7, "%s:%d %s", &v16);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      v16 = 136315394;
      v17 = "_liveness_create_workgroup";
      v18 = 1024;
      v19 = v10;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", &v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return _liveness_watchdog_thread_cold_1(v14);
}

uint64_t _liveness_watchdog_thread_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Liveness: RT Watchdog annotation failed");
  v2 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v5 = *a1;
    v13 = 136315650;
    v14 = "_liveness_watchdog_thread";
    v15 = 1024;
    v16 = 630;
    v17 = 2080;
    v18 = v5;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v3, v4, "%s:%d %s", &v13);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      v13 = 136315394;
      v14 = "_liveness_watchdog_thread";
      v15 = 1024;
      v16 = v7;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", &v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v11 = OUTLINED_FUNCTION_0();
  return _liveness_watchdog_thread_cold_2(v11);
}

void _liveness_watchdog_thread_cold_2(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Could not align-alloc checkinTimes array");
  v2 = _polarisdLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v5 = *a1;
    v11 = 136315650;
    v12 = "_liveness_watchdog_thread";
    v13 = 1024;
    v14 = 620;
    v15 = 2080;
    v16 = v5;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v3, v4, "%s:%d %s", &v11);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _polarisdLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v8))
    {
      v11 = 136315394;
      v12 = "_liveness_watchdog_thread";
      v13 = 1024;
      v14 = v7;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", &v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  __PSSGLogSharedInstance_cold_1();
}

CVPixelBufferRef cvpixBufferAllocator(uint64_t *a1)
{
  v112 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 4);
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = CVPixelFormatDescriptionCreateWithPixelFormatType(v4, v3);
  [CFDictionaryGetValue(v6 *MEMORY[0x277CC4F38])];
  v7 = [CFDictionaryGetValue(v6 *MEMORY[0x277CC4F48])];
  [CFDictionaryGetValue(v6 *MEMORY[0x277CC4ED8])];
  v8 = [CFDictionaryGetValue(v6 *MEMORY[0x277CC4ED0])];
  v9 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4EF0]);
  v108 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4EE8]);
  v106 = v9;
  if (v9)
  {
    v10 = [v9 unsignedIntValue];
  }

  else
  {
    v10 = 1;
  }

  if (v108)
  {
    v11 = [v108 unsignedIntValue];
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v6);
  value = CFArrayCreateMutable(v4, 2, MEMORY[0x277CBF128]);
  if (value)
  {
    if (v7)
    {
      v12 = (v1 + 63) & 0xFFFFFFFFFFFFFFC0;
      v13 = v2;
      v14 = v1;
      v15 = (v13 + 63) & 0xFFFFFFFFFFFFFFC0;
      v16 = v15 * v12;
      v105 = v12;
      v17 = (v15 >> 1) * v12;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2970], &unk_2870CAE90);
      v18 = *MEMORY[0x277CD2B88];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
      v19 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v19, v18, v20);
      v21 = *MEMORY[0x277CD2A28];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v22 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v22, v21, v23);
      v24 = *MEMORY[0x277CD2A70];
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      v25 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v25, v24, v26);
      v27 = *MEMORY[0x277CD2948];
      v104 = v17;
      v28 = v16;
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v17 + v16];
      v29 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v29, v27, v30);
      v31 = value;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], value);
      v32 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v32)
      {
        goto LABEL_25;
      }

      v33 = v32;
      CFArrayAppendValue(value, v32);
      key = *MEMORY[0x277CD2B38];
      CFDictionarySetValue(v33, *MEMORY[0x277CD2B38], &unk_2870CAE90);
      v34 = *MEMORY[0x277CD2B50];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      v35 = OUTLINED_FUNCTION_3_9();
      v103 = v34;
      CFDictionarySetValue(v35, v34, v36);
      v37 = *MEMORY[0x277CD2B18];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v38 = OUTLINED_FUNCTION_3_9();
      v102 = v37;
      CFDictionarySetValue(v38, v37, v39);
      v40 = *MEMORY[0x277CD2A98];
      CFDictionarySetValue(v33, *MEMORY[0x277CD2A98], &unk_2870CAEA8);
      v41 = *MEMORY[0x277CD2AA0];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v105];
      v42 = OUTLINED_FUNCTION_3_9();
      v100 = v41;
      CFDictionarySetValue(v42, v41, v43);
      v44 = *MEMORY[0x277CD2B40];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v28];
      v45 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v45, v44, v46);
      CFRelease(v33);
      v47 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v47)
      {
        goto LABEL_25;
      }

      v48 = v47;
      CFArrayAppendValue(value, v47);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v28];
      v49 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v49, key, v50);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v14 + 1) >> 1];
      v51 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v51, v103, v52);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v13 + 1) >> 1];
      v53 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v53, v102, v54);
      CFDictionarySetValue(v48, v40, &unk_2870CAEC0);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v105];
      v55 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v55, v100, v56);
      v57 = MEMORY[0x277CCABB0];
      v58 = v104;
    }

    else
    {
      v59 = *MEMORY[0x277CD2B88];
      v60 = v8 / v10 / v11;
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
      v61 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v61, v59, v62);
      v63 = *MEMORY[0x277CD2A28];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v64 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v64, v63, v65);
      v66 = *MEMORY[0x277CD2A70];
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      v67 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v67, v66, v68);
      v69 = *MEMORY[0x277CD2960];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v60 >> 3];
      v70 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v70, v69, v71);
      v72 = *MEMORY[0x277CD2968];
      v73 = (v1 * v60 + 511) >> 3;
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v73 & 0x1FFFFFFFFFFFFFC0];
      v74 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v74, v72, v75);
      if (v3 != 1899524402)
      {
LABEL_16:
        v88 = IOSurfaceCreate(Mutable);
        v31 = value;
        if (v88)
        {
          v89 = v88;
          CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
          v90 = CVPixelBufferCreateWithIOSurface(v4, v89, Mutable, &pixelBufferOut);
          if (v90)
          {
            v96 = v90;
            v97 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v111 = v96;
              v98 = "failed to create CV Pixel Buffer for resource ret=%d";
LABEL_30:
              _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_ERROR, v98, buf, 8u);
            }
          }

          else
          {
            v91 = CVPixelBufferIncrementUseCountForCategory();
            if (!v91)
            {
LABEL_19:
              CFRelease(value);
              v92 = v89;
LABEL_20:
              CFRelease(v92);
              goto LABEL_21;
            }

            v99 = v91;
            v97 = __PLSLogSharedInstance();
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v111 = v99;
              v98 = "failed to increment category 1 use count for CV Pixel Buffer ret=%d";
              goto LABEL_30;
            }
          }

          goto LABEL_19;
        }

        NSLog(&cfstr_FailedToAlloca_6.isa);
LABEL_25:
        v92 = v31;
        goto LABEL_20;
      }

      v31 = value;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], value);
      v76 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v76)
      {
        goto LABEL_25;
      }

      v48 = v76;
      CFArrayAppendValue(value, v76);
      CFDictionarySetValue(v48, *MEMORY[0x277CD2B38], &unk_2870CAE90);
      v77 = *MEMORY[0x277CD2B50];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
      v78 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v78, v77, v79);
      v80 = *MEMORY[0x277CD2B18];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v81 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v81, v80, v82);
      v83 = *MEMORY[0x277CD2A88];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v60];
      v84 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v84, v83, v85);
      v44 = *MEMORY[0x277CD2AA0];
      v57 = MEMORY[0x277CCABB0];
      v58 = v73 & 0x1FFFFFFFFFFFFFC0;
    }

    [v57 numberWithUnsignedLong:v58];
    v86 = OUTLINED_FUNCTION_3_9();
    CFDictionarySetValue(v86, v44, v87);
    CFRelease(v48);
    goto LABEL_16;
  }

LABEL_21:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v93 = pixelBufferOut;

  v94 = *MEMORY[0x277D85DE8];
  return v93;
}

uint64_t ps_buffer_writer_init_cold_1(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v8 = 136315394;
    v9 = "ps_buffer_writer_init";
    v10 = 1024;
    v11 = 257;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d OOM!!", &v8, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v8 = 136315394;
      v9 = "ps_buffer_writer_init";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v6 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_create_resource_cold_1(v6);
}

uint64_t ps_buffer_writer_create_resource_cold_1(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Unsupported resource class to create resource", "ps_buffer_writer_create_resource");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Unsupported resource class to create resource", v5, v6, v7, v8, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_create_resource_cold_2(v16, v17);
}

uint64_t ps_buffer_writer_create_resource_cold_2(char **a1, const char *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid metadata type passed into ps buffer writer create method for key: %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid metadata type passed into ps buffer writer create method for key: %s", v6, v7, v8, v9, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_create_resource_cold_3(v17, v18);
}

void ps_buffer_writer_create_resource_cold_3(char **a1, const char *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unable to create GSM source for key %s", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unable to create GSM source for key %s", v6, v7, v8, v9, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  cvdataBufferAllocator_cold_1_0();
}

void cvdataBufferAllocator_cold_1_0()
{
  v0 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_ERROR, "failed to allocate IO Surface for properties", v1, 2u);
  }
}

void cvdataBufferAllocator_cold_2_0(uint64_t *a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = *a2;
    v8 = 136315650;
    v9 = "cvdataBufferAllocator";
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "integer overflow in computing allocSize in %s (width=%lu, height=%lu)", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t ps_buffer_writer_camerastream_install_bufferpool_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Unsupported resource class to create resource", "ps_buffer_writer_camerastream_install_bufferpool");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Unsupported resource class to create resource", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_get_cam_stream_attr_cold_1(v16);
}

uint64_t ps_buffer_writer_get_cam_stream_attr_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Cannot get attributes for invalid resource type.", "ps_buffer_writer_get_cam_stream_attr");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Cannot get attributes for invalid resource type.", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _publishCVPixelBuffer_cold_1(v16);
}

uint64_t _publishCVPixelBuffer_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Serialize metadata failed. Aborting!", "_publishCVPixelBuffer");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Serialize metadata failed. Aborting!", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return _publishCVDataBuffer_cold_1(v16);
}

uint64_t _publishCVDataBuffer_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Serialize metadata failed. Aborting!", "_publishCVDataBuffer");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Serialize metadata failed. Aborting!", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_1(v16);
}

uint64_t ps_buffer_writer_publish_resource_cold_1(char **a1)
{
  v3 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No metadata found for resource %s", v3);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No metadata found for resource %s", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_2(v18);
}

uint64_t ps_buffer_writer_publish_resource_cold_2(char **a1)
{
  v3 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No metadata found for resource %s", v3);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No metadata found for resource %s", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_3(v18);
}

uint64_t ps_buffer_writer_publish_resource_cold_3(char **a1)
{
  v3 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No metadata found for resource %s", v3);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No metadata found for resource %s", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_4(v18);
}

uint64_t ps_buffer_writer_publish_resource_cold_4(char **a1)
{
  v3 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "No metadata found for resource %s", v3);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d No metadata found for resource %s", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_5(v18);
}

uint64_t ps_buffer_writer_publish_resource_cold_5(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Unsupported resource type to publish. Aborting!", "ps_buffer_writer_publish_resource");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Unsupported resource type to publish. Aborting!", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_6(v16);
}

uint64_t ps_buffer_writer_publish_resource_cold_6(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): Unsupported resource type to publish. Aborting!", "ps_buffer_writer_publish_resource");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): Unsupported resource type to publish. Aborting!", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_camerastream_attach_synctag_cold_1(v16);
}

uint64_t ps_buffer_writer_camerastream_attach_synctag_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): This method is currently unsupported for normal buffer writers. Aborting!", "ps_buffer_writer_camerastream_attach_synctag");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): This method is currently unsupported for normal buffer writers. Aborting!", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_broadcast_resource_cold_1(v16);
}

uint64_t ps_buffer_writer_broadcast_resource_cold_1(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "(%s): This method is currently unsupported for normal buffer writers. Aborting!", "ps_buffer_writer_broadcast_resource");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d (%s): This method is currently unsupported for normal buffer writers. Aborting!", v5, v6, v7, v8, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return +[(PSRCConstants *)v16];
}

uint64_t ps_synchronizer_init_cold_1(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: OOM!", "ps_synchronizer_init");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v17 = "ps_synchronizer_init";
    v18 = 1024;
    v19 = 20;
    v20 = 2080;
    v21 = "ps_synchronizer_init";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d %s: OOM!", v5, v6, v7, v8, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_1(v12);
}

uint64_t ps_synchronizer_register_writer_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_2(v16);
}

uint64_t ps_synchronizer_register_writer_cold_2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d OOM!", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_3(v16);
}

uint64_t ps_synchronizer_register_writer_cold_3(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: OOM!", "ps_synchronizer_register_writer");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v17 = "ps_synchronizer_register_writer";
    v18 = 1024;
    v19 = 55;
    v20 = 2080;
    v21 = "ps_synchronizer_register_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d %s: OOM!", v5, v6, v7, v8, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_4(v12);
}

uint64_t ps_synchronizer_register_writer_cold_4(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid buffer_writer", "ps_synchronizer_register_writer");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v17 = "ps_synchronizer_register_writer";
    v18 = 1024;
    v19 = 45;
    v20 = 2080;
    v21 = "ps_synchronizer_register_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d %s: Invalid buffer_writer", v5, v6, v7, v8, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_5(v12);
}

uint64_t ps_synchronizer_register_writer_cold_5(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid synchronizer", "ps_synchronizer_register_writer");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v17 = "ps_synchronizer_register_writer";
    v18 = 1024;
    v19 = 41;
    v20 = 2080;
    v21 = "ps_synchronizer_register_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d %s: Invalid synchronizer", v5, v6, v7, v8, v14, v15, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_unregister_writer_cold_1(v12);
}

uint64_t ps_synchronizer_unregister_writer_cold_1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unregister called. But was never initialized");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Unregister called. But was never initialized", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_unregister_writer_cold_2(v16);
}

uint64_t ps_synchronizer_unregister_writer_cold_2(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Something is wrong. Lock value is not valid");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Something is wrong. Lock value is not valid", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_unregister_writer_cold_3(v16);
}

void ps_synchronizer_unregister_writer_cold_3(char **a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid synchronizer", "ps_synchronizer_unregister_writer");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v16 = "ps_synchronizer_unregister_writer";
    v17 = 1024;
    v18 = 99;
    v19 = 2080;
    v20 = "ps_synchronizer_unregister_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d %s: Invalid synchronizer", v5, v6, v7, v8, v13, v14, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v12 = OUTLINED_FUNCTION_0();
  ps_synchronizer_check_time_and_broadcast_cold_1(v12);
}

void ps_synchronizer_check_time_and_broadcast_cold_1(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Something is wrong. Lock value is not valid in broadcast");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Something is wrong. Lock value is not valid in broadcast", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:v16];
}

void PSSG::Client::flushRegisterDeregisterAcknowledgements()
{
  __assert_rtn("flushRegisterDeregisterAcknowledgements", "PSSGClientProxy.cpp", 460, "mClientPendingRegisterAck == false");
}

{
  __assert_rtn("flushRegisterDeregisterAcknowledgements", "PSSGClientProxy.cpp", 455, "mClientPendingDeRegisterAck == false");
}

uint64_t PSSG::ServerComms::deallocateOOLMemory(char **a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown mach msg descriptor type %#x\n", a2);
  v4 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v12 = "deallocateOOLMemory";
    v13 = 1024;
    v14 = 529;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d Unknown mach msg descriptor type %#x\n", buf, 0x18u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "deallocateOOLMemory";
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = *a1;
  v9 = abort_with_reason();
  return ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_cold_1(v9);
}

void ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_cold_1(NSObject *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "sys_graph_notify_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void PSSH::SysProcessMonitor::handleProcessRegisterDispatched()
{
  OUTLINED_FUNCTION_2_4();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void PSSH::SysProcessMonitor::handleProcessDiedDispatched()
{
  OUTLINED_FUNCTION_2_4();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t PSSH::SysProcessMonitor::handleProcessDiedDispatched(NSObject *a1, char *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = os_signpost_enabled(a1);
  if (result)
  {
    if (*a2 < 0)
    {
      v6 = *a3;
    }

    result = _os_signpost_emit_unreliably_with_name_impl();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched()
{
  OUTLINED_FUNCTION_2_4();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_2_4();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void ps_system_action_handle_graph_hang_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "ps_system_action_handle_graph_hang";
    _os_log_impl(&dword_25EA3A000, v0, OS_LOG_TYPE_INFO, "%s() system action is paused. Ignoring.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void ps_system_action_handle_graph_hang_cold_3(uint64_t a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v7 = 136315394;
    v8 = a1;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "PolarisD SystemAction::Critical Graph [%s] is Hung for less than [%llu] (waitTimeBeforeKillMs), not taking any action for now", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t ps_system_action_trigger_panic(char **a1, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s() panicMessage: [%s]", "ps_system_action_trigger_panic", a2);
  v4 = __PSSysHealthLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "ps_system_action_trigger_panic";
    v12 = 1024;
    v13 = 188;
    v14 = 2080;
    v15 = "ps_system_action_trigger_panic";
    v16 = 2080;
    v17 = a2;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s() panicMessage: [%s]", buf, 0x26u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSSysHealthLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "ps_system_action_trigger_panic";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = *a1;
  abort_with_reason();
  return ps_telemetry_is_enabled();
}

uint64_t ps_telemetry_is_enabled()
{
  if (ps_telemetry_is_disabled_for_current_process)
  {
    v2 = 0;
  }

  else
  {
    v0 = &unk_27FD13000;
    v1 = _MergedGlobals;
    if (!_MergedGlobals)
    {
      if (qword_27FD132F8 != -1)
      {
        dispatch_once(&qword_27FD132F8, &__block_literal_global_25);
        v0 = &unk_27FD13000;
      }

      v1 = *(v0 + 94);
    }

    v2 = atomic_load(v1);
  }

  return v2 & 1;
}

void ps_telemetry_init_reader_cold_1(void *a1, _xpc_rich_error_s *a2)
{
  v3 = OUTLINED_FUNCTION_3_10(a1, a2);
  asprintf(v2, "%s Encountered an error while connecting to sysgraph xpc service : error = %s", xmmword_27FD2B658, v3);
  v4 = __PSTelemetryLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v14 = *v2;
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d %s", v7, v8, v9, v10, v12, v13, 2u);
  }

  v11 = OUTLINED_FUNCTION_0();
  ps_telemetry_init_reader_cold_2(v11);
}

void ps_telemetry_init_reader_cold_2(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Received a NULL graph_reply from polarisd for graph addition for session %s", xmmword_27FD2B658);
  v2 = __PSTelemetryLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v12 = *a1;
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v3, v4, "%s:%d %s", v5, v6, v7, v8, v10, v11, 2u);
  }

  v9 = OUTLINED_FUNCTION_0();
  ps_telemetry_init_reader_cold_3(v9);
}

void ps_telemetry_init_reader_cold_3(void *a1, _xpc_rich_error_s *a2)
{
  v3 = OUTLINED_FUNCTION_3_10(a1, a2);
  asprintf(v2, "Did not a receive a reply from polarisd for graph addition for session %s! Error = %s", xmmword_27FD2B658, v3);
  v4 = __PSTelemetryLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v14 = *v2;
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d %s", v7, v8, v9, v10, v12, v13, 2u);
  }

  v11 = OUTLINED_FUNCTION_0();
  ps_telemetry_start_reader_cold_1(v11);
}

void ps_telemetry_start_reader_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to create telemetry pthread");
  v2 = __PSTelemetryLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v10 = *a1;
    OUTLINED_FUNCTION_4_6(&dword_25EA3A000, v3, v4, "%s:%d %s", v5, v6, v7, v8, 2u);
  }

  v9 = OUTLINED_FUNCTION_0();
  __ps_telemetry_start_reader_block_invoke_cold_1(v9);
}

void remove_remote_gst_cold_1(void *a1, _xpc_rich_error_s *a2)
{
  v3 = OUTLINED_FUNCTION_3_10(a1, a2);
  asprintf(v2, "Could not send a message for gst removal for session %s! Error = %s", xmmword_27FD2B658, v3);
  v4 = __PSTelemetryLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    v14 = *v2;
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d %s", v7, v8, v9, v10, v12, v13, 2u);
  }

  v11 = OUTLINED_FUNCTION_0();
  __setup_xpc_connection_block_invoke_cold_1(v11);
}

uint64_t ps_telemetry_create_string_id(char *__s1)
{
  if (ps_telemetry_is_disabled_for_current_process)
  {
    return 0xFFFFLL;
  }

  v2 = atomic_load(byte_27FD2EE84);
  if ((v2 & 1) == 0 && ps_telemetry_init_process_onceToken != -1)
  {
    dispatch_once(&ps_telemetry_init_process_onceToken, &__block_literal_global_29);
  }

  if (!atomic_load(qword_27FD2DE78))
  {
LABEL_9:
    v8 = atomic_load(qword_27FD2DE78);
    if (v8 != 1024)
    {
      add = atomic_fetch_add(qword_27FD2DE78, 1u);
      strlcpy((qword_27FD2DE78 + 130 * add + 4), __s1, 0x80uLL);
      atomic_store(add, (qword_27FD2DE78 + 130 * add + 2));
      return add;
    }

    return 0xFFFFLL;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = qword_27FD2DE78;
    if (!strncmp(__s1, (qword_27FD2DE78 + v5 * 2 + 2), 0x80uLL))
    {
      return atomic_load(&v6[v5]);
    }

    ++v4;
    v7 = atomic_load(v6);
    v5 += 65;
    if (v4 >= v7)
    {
      goto LABEL_9;
    }
  }
}

_BYTE *ps_telemetry_init_thread_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  result = threadState();
  if ((*result & 1) == 0)
  {
    v1 = result;
    *result = 1;
    v2 = threadid();
    pthread_threadid_np(0, v2);
    v3 = pthread_self();
    pthread_getname_np(v3, __s1, 0x40uLL);
    ps_telemetry_create_string_id(__s1);
    v4 = threadNameID();
    *v4 = v5;
    LOBYTE(v5) = atomic_load(&ps_telemetry_writer_context[514] + 4);
    if ((v5 & 1) == 0)
    {
      ps_telemetry_init_process();
    }

    ps_telemetry_acquire_thread_buffer(*v2);
    result = buffer();
    *result = v6;
    if (v6)
    {
      *(v1 + 1) = 0;
      *(v1 + 3) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void ps_telemetry_deinit_thread_cold_1()
{
  v0 = *buffer();
  if (v0)
  {

    ps_telemetry_release_thread_buffer(v0);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}