uint64_t ps_buffer_resource_get_index(uint64_t a1)
{
  result = **(a1 + 16);
  if (result == 0x7FFFFFFF)
  {
    v5[1] = v1;
    v5[2] = v2;
    index_cold_1 = ps_buffer_resource_get_index_cold_1(v5);
    return ps_buffer_create_group_writer(index_cold_1);
  }

  return result;
}

uint64_t ps_buffer_delete_read_buffer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_delete_write_buffer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_get_resource_view_index(uint64_t a1)
{
  result = **(a1 + 16);
  if (result == 0x7FFFFFFF)
  {
    v4[1] = v1;
    v4[2] = v2;
    ps_buffer_get_resource_view_index_cold_1(v4);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_1()
{
  v2 = *v0;

  return abort_with_reason();
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

uint64_t PSShbufferGroup::isLocklessSupported(PSShbufferGroup *this, const char *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = strlen(PSShbufferGroup::_fastpathReplayKeys[v3]);
    result = strncmp(a2, PSShbufferGroup::_fastpathReplayKeys[v3], v4);
    if (!result)
    {
      break;
    }

    if (++v3 == 2)
    {
      result = strncmp(a2, "local-kAddAnchorOutput", 0x17uLL);
      if (result)
      {
        result = strncmp(a2, "local-kRemoveAnchorOutput", 0x1AuLL);
        if (result)
        {
          return strncmp(a2, "local-kAnchorGroupChangedOutput", 0x20uLL) != 0;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t PSShbufferGroup::addResinfo(uint64_t a1, PSSharedResource *a2, int a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00406ADA8A08uLL);
  if (!v8)
  {
    PSShbufferGroup::addResinfo();
  }

  v9 = v8;
  if (*(a1 + 624))
  {
    **(a1 + 616) = v8;
  }

  else
  {
    *(a1 + 624) = v8;
  }

  *(a1 + 616) = v8;
  *v8 = 0;
  ID = PSSharedResource::getID(a2);
  *(v9 + 2) = ID;
  *(v9 + 4) = ID;
  *(v9 + 5) = a3;
  v9[3] = 0;
  *(v9 + 8) = ID;
  *(v9 + 9) = a4;
  v9[5] = 0;
  v9[6] = a2;
  *(v9 + 14) = -1;
  *(a1 + 560) = vadd_s32(*(a1 + 560), 0x100000001);
  return 0;
}

uint64_t PSShbufferGroup::updateResourceFactoryStatus(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf[0].msgh_bits = 136315394;
    *&buf[0].msgh_size = "SHBUFFER";
    LOWORD(buf[0].msgh_local_port) = 1024;
    *(&buf[0].msgh_local_port + 2) = v3;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s: updateResourceFactoryStatus:%d\n", buf, 0x12u);
  }

  if (v3 >= 4)
  {
    PSShbufferGroup::updateResourceFactoryStatus();
  }

  bzero(v12, 0x888uLL);
  strlcpy(v13, (v4 + 16), 0x200uLL);
  v17 = 0xD0000000CLL;
  v14 = 20;
  v15 = v3;
  v16 = *(v4 + 636);
  PSCommsClient::send_wait(*(v4 + 8), v12, 0x888u, buf, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(buf))
  {
    PSShbufferGroup::updateResourceFactoryStatus(&v9, v4 + 16);
LABEL_11:
    PSShbufferGroup::updateResourceFactoryStatus(v4);
  }

  isAck = PSCommsClient::isAck(v12, &buf[0].msgh_bits);
  v4 = _ps_buffer_log;
  if (isAck)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "SHBUFFER";
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: updateResourceFactoryStatus SUCCESS\n", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSShbufferGroup::setupSerialDataLines(PSShbufferGroup *this, PSSharedSerialData *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SHBUFFER";
        v15 = 1024;
        v16 = v6;
        v17 = 1024;
        v18 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupSerialData at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = (*(*a2 + 64))(a2, v6);
      *(v10 + 4) = 3;
      if (++v6 >= *(this + 159))
      {
        goto LABEL_8;
      }
    }

    PSShbufferGroup::setupSerialDataLines(buf);
LABEL_10:
    PSShbufferGroup::setupSerialDataLines();
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSShbufferGroup::setupIOSurfaceLines(PSShbufferGroup *this, PSSharedIOSurface *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SHBUFFER";
        v15 = 1024;
        v16 = v6;
        v17 = 1024;
        v18 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupIOSurface at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = (*(*a2 + 48))(a2, v6);
      *(v10 + 4) = 4;
      if (++v6 >= *(this + 159))
      {
        goto LABEL_8;
      }
    }

    PSShbufferGroup::setupIOSurfaceLines(buf);
LABEL_10:
    PSShbufferGroup::setupIOSurfaceLines();
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSShbufferGroup::setupCVPixelBufferLines(PSShbufferGroup *this, PSSharedCVPixelBuffer *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SHBUFFER";
        v15 = 1024;
        v16 = v6;
        v17 = 1024;
        v18 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupCVPixelBuffer at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = PSSharedCVPixelBuffer::getBuffer(a2, v6);
      *(v10 + 4) = 0;
      if (++v6 >= *(this + 159))
      {
        goto LABEL_8;
      }
    }

    PSShbufferGroup::setupCVPixelBufferLines(buf);
LABEL_10:
    PSShbufferGroup::setupCVPixelBufferLines();
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSShbufferGroup::setupCVDataBufferLines(PSShbufferGroup *this, PSSharedCVDataBuffer *a2, unsigned int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v14 = "SHBUFFER";
        v15 = 1024;
        v16 = v6;
        v17 = 1024;
        v18 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupCVDataBuffer at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = (*(*a2 + 48))(a2, v6);
      *(v10 + 4) = 1;
      if (++v6 >= *(this + 159))
      {
        goto LABEL_8;
      }
    }

    PSShbufferGroup::setupCVDataBufferLines(buf);
LABEL_10:
    PSShbufferGroup::setupCVDataBufferLines();
  }

LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSShbufferGroup::registerBufferGroup(PSShbufferGroup *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v25 = *MEMORY[0x277D85DE8];
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf[0].msgh_bits = 136315394;
    *&buf[0].msgh_size = "SHBUFFER";
    LOWORD(buf[0].msgh_local_port) = 2080;
    *(&buf[0].msgh_local_port + 2) = PSSharedResource::getKey(v6);
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s: registerBufferGroup:%s\n", buf, 0x16u);
  }

  bzero(v18, 0x888uLL);
  strlcpy(v19, (v6 + 16), 0x200uLL);
  v24 = 1;
  v20 = v5;
  v21 = v3;
  v22 = 0;
  v23 = 0;
  bzero(buf, 0x898uLL);
  PSCommsClient::send_wait(*(v6 + 8), v18, 0x888u, buf, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(buf))
  {
    PSShbufferGroup::registerBufferGroup(&v12, v6 + 16);
  }

  isAck = PSCommsClient::isAck(v18, &buf[0].msgh_bits);
  v9 = _ps_buffer_log;
  if (isAck)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = (v6 + 16);
      v14 = 1024;
      v15 = isAck;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "Failed to register buffer group for key: %s with Resource Factory. Err code: %d", &v12, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "SHBUFFER";
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s: registerBufferGroup SUCCESS\n", &v12, 0xCu);
    }

    *(v6 + 568) = v17;
  }

  v10 = *MEMORY[0x277D85DE8];
  return isAck;
}

uint64_t PSShbufferGroup::unregisterBufferGroup(PSShbufferGroup *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf[0].msgh_bits = 136315394;
    *&buf[0].msgh_size = "SHBUFFER";
    LOWORD(buf[0].msgh_local_port) = 2080;
    *(&buf[0].msgh_local_port + 2) = PSSharedResource::getKey(v6);
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s: unregisterBufferGroup:%s\n", buf, 0x16u);
  }

  bzero(v15, 0x888uLL);
  strlcpy(v16, (v6 + 16), 0x200uLL);
  v22 = 2;
  v17 = v5;
  v19 = v3;
  v20 = 0;
  v21 = 0;
  v18 = *(v6 + 568);
  bzero(buf, 0x898uLL);
  PSCommsClient::send_wait(*(v6 + 8), v15, 0x888u, buf, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(buf))
  {
    PSShbufferGroup::unregisterBufferGroup(&v12, v6 + 16);
  }

  isAck = PSCommsClient::isAck(v15, &buf[0].msgh_bits);
  v9 = _ps_buffer_log;
  if (isAck)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = (v6 + 16);
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "Failed to unregister buffer group for key: %s with Resource Factory. We have reached maximum processes allowed.", &v12, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "SHBUFFER";
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s: unregisterBufferGroup SUCCESS\n", &v12, 0xCu);
    }

    *(v6 + 568) = 0x7FFFFFFF;
  }

  v10 = *MEMORY[0x277D85DE8];
  return isAck;
}

uint64_t PSShbufferGroup::deallocate(PSShbufferGroup *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "SHBUFFER";
    v18 = 2080;
    v19 = "deallocate";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s Bye!\n", &v16, 0x16u);
  }

  v3 = *(this + 138);
  v4 = *(this + 143);
  v5 = (v4 + v3);
  if (v4 + v3 && *(this + 141))
  {
    v6 = *(this + 73);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if (*(this + 75))
    {
      v7 = *(this + 76);
      *(this + 75) = 0;
      *(this + 76) = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    (*(*this + 48))(this);
    v8 = *(this + 78);
    if (v8)
    {
      do
      {
        v9 = v8[6];
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        v10 = *v8;
        free(v8);
        v8 = v10;
      }

      while (v10);
    }

    v11 = 0;
    do
    {
      free(*(*(*(this + 80) + 8 * v11) + 16));
      free(*(*(this + 80) + 8 * v11++));
    }

    while (v5 != v11);
    free(*(this + 80));
  }

  else
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(this + 141);
      v16 = 136315906;
      v17 = "SHBUFFER";
      v18 = 2080;
      v19 = "deallocate";
      v20 = 1024;
      v21 = v5;
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s:%s Nothing to deallocate num_lines=%d num_client_resources=%d\n", &v16, 0x22u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSShbufferGroup::finalizeSetup(PSShbufferGroup *this)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "SHBUFFER";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s- --- finalizeSetup ---\n", buf, 0xCu);
  }

  v3 = *(this + 138);
  v4 = *(this + 143);
  v5 = (v4 + v3);
  if (!(v4 + v3) || !*(this + 141))
  {
    PSShbufferGroup::finalizeSetup();
  }

  v6 = malloc_type_calloc(1uLL, 8 * (v4 + v3), 0x2004093837F09uLL);
  *(this + 80) = v6;
  if (!v6)
  {
    PSShbufferGroup::finalizeSetup();
  }

  v7 = 0;
  do
  {
    *(*(this + 80) + 8 * v7) = malloc_type_calloc(1uLL, 32 * *(this + 141), 0x108004009D44AE3uLL);
    if (!*(*(this + 80) + 8 * v7))
    {
      v17 = PSShbufferGroup::finalizeSetup(v7, buf, v8, v9, v10, v11, v12, v13, v39, v40, buf[0], v42, SHIDWORD(v42), v43, *(&v44 + 2), SHIWORD(v44), v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
LABEL_46:
      PSShbufferGroup::finalizeSetup(v17, v7);
    }

    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    v15 = *(this + 80);
    *(*(v15 + 8 * v7) + 16) = v14;
    *(*(v15 + 8 * v7++) + 24) = -1;
  }

  while (v5 != v7);
  if (*(this + 593))
  {
    v16 = *(this + 78);
    if (v16)
    {
      LODWORD(v7) = 0;
      while (1)
      {
        v17 = *(v16 + 2);
        if (v7 != v17)
        {
          goto LABEL_46;
        }

        v18 = *(v16 + 5);
        v19 = _ps_buffer_log;
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v28 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v29 = v7;
            if (v28)
            {
              *buf = 136315650;
              v42 = "SHBUFFER";
              v43 = 2080;
              v44 = "finalizeSetup";
              v45 = 1024;
              LODWORD(v46) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_SERIALDATA - id (%d)\n", buf, 0x1Cu);
              v29 = *(v16 + 2);
            }

            PSShbufferGroup::setupSerialDataLines(this, v16[6], v29);
            goto LABEL_37;
          }

          if (v18 == 4)
          {
            v24 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v25 = v7;
            if (v24)
            {
              *buf = 136315650;
              v42 = "SHBUFFER";
              v43 = 2080;
              v44 = "finalizeSetup";
              v45 = 1024;
              LODWORD(v46) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_RAWSURFACE - id (%d)\n", buf, 0x1Cu);
              v25 = *(v16 + 2);
            }

            PSShbufferGroup::setupIOSurfaceLines(this, v16[6], v25);
            goto LABEL_37;
          }

          if (v18 != 5)
          {
LABEL_48:
            PSShbufferGroup::finalizeSetup(_ps_buffer_log);
          }

          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          *buf = 136315650;
          v42 = "SHBUFFER";
          v43 = 2080;
          v44 = "finalizeSetup";
          v45 = 1024;
          LODWORD(v46) = v7;
          v20 = v19;
          v21 = "%s- %s: finalizing CLIRESTYPE_NOTBACKED - id (%d)\n";
        }

        else
        {
          if (!v18)
          {
            v26 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v27 = v7;
            if (v26)
            {
              *buf = 136315650;
              v42 = "SHBUFFER";
              v43 = 2080;
              v44 = "finalizeSetup";
              v45 = 1024;
              LODWORD(v46) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_CVPIXELBUFF - id (%d)\n", buf, 0x1Cu);
              v27 = *(v16 + 2);
            }

            PSShbufferGroup::setupCVPixelBufferLines(this, v16[6], v27);
            goto LABEL_37;
          }

          if (v18 == 1)
          {
            v22 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v23 = v7;
            if (v22)
            {
              *buf = 136315650;
              v42 = "SHBUFFER";
              v43 = 2080;
              v44 = "finalizeSetup";
              v45 = 1024;
              LODWORD(v46) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_CVDATABUFF - id (%d)\n", buf, 0x1Cu);
              v23 = *(v16 + 2);
            }

            PSShbufferGroup::setupCVDataBufferLines(this, v16[6], v23);
            goto LABEL_37;
          }

          if (v18 != 2)
          {
            goto LABEL_48;
          }

          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          *buf = 136315650;
          v42 = "SHBUFFER";
          v43 = 2080;
          v44 = "finalizeSetup";
          v45 = 1024;
          LODWORD(v46) = v7;
          v20 = v19;
          v21 = "%s- %s: finalizing CLIRESTYPE_MTLTEXTURE - id (%d)\n";
        }

        _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0x1Cu);
LABEL_37:
        LODWORD(v7) = v7 + 1;
        v16 = *v16;
        if (!v16)
        {
          goto LABEL_44;
        }
      }
    }

    v36 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "SHBUFFER";
      v43 = 2080;
      v44 = "finalizeSetup";
      v32 = "%s: %s Initializing writer with no shared resources.\n";
      v33 = v36;
      v34 = OS_LOG_TYPE_ERROR;
      v35 = 22;
      goto LABEL_43;
    }
  }

  else
  {
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136315650;
      v42 = "SHBUFFER";
      v43 = 2080;
      v44 = "finalizeSetup";
      v45 = 2080;
      v46 = Key;
      v32 = "%s:%s - (Resource: %s): Finished setup without filling lines.";
      v33 = v30;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 32;
LABEL_43:
      _os_log_impl(&dword_25EBC5000, v33, v34, v32, buf, v35);
    }
  }

LABEL_44:
  v37 = *MEMORY[0x277D85DE8];
  return 0;
}

void *PSShbufferGroup::getBufflets(PSShbufferGroup *this)
{
  v27 = *MEMORY[0x277D85DE8];
  result = malloc_type_calloc(*(this + 140), 8uLL, 0x2004093837F09uLL);
  if (result)
  {
    v3 = *(this + 78);
    if (v3)
    {
      v4 = 0;
      do
      {
        result[v4++] = v3[6];
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 140);
    if (v4 == v5)
    {
      v6 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    PSShbufferGroup::getBufflets(buf);
  }

  v14 = 0;
  v7 = v4;
  asprintf(&v14, "%s- %s: The number of shbufflets that we thought we had is different from the number we have. Expected: %d Found:%d", "SHBUFFER", "getBufflets", v5, v4);
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v9 = *(this + 140);
    *buf = 136316418;
    v16 = "getBufflets";
    v17 = 1024;
    v18 = 520;
    v19 = 2080;
    v20 = "SHBUFFER";
    v21 = 2080;
    v22 = "getBufflets";
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s- %s: The number of shbufflets that we thought we had is different from the number we have. Expected: %d Found:%d", buf, 0x32u);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "getBufflets";
      v17 = 1024;
      v18 = v11;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = abort_with_reason();
  return PSShbufferGroup::shareResource(v13);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_7()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

BOOL OUTLINED_FUNCTION_8()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return usleep(0x1E8480u);
}

BOOL OUTLINED_FUNCTION_10()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t PSShbufferGroupReader::acquireSharedLock(PSSharedSyncObject **this, int a2)
{
  if (*(this + 632) != 1 || a2 == 0)
  {
    return 1;
  }

  else
  {
    return PSSharedSyncObject::lock(this[82]);
  }
}

uint64_t PSShbufferGroupReader::releaseSharedLock(PSSharedSyncObject **this, int a2)
{
  if (*(this + 632) != 1 || a2 == 0)
  {
    return 1;
  }

  else
  {
    return PSSharedSyncObject::unlock(this[82]);
  }
}

uint64_t PSShbufferGroupReader::requestShbufferGroupList(PSShbufferGroupReader *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v57 = *MEMORY[0x277D85DE8];
  v12 = v52;
  bzero(v52, 0x888uLL);
  v13 = (v11 + 16);
  strlcpy(v53, (v11 + 16), 0x200uLL);
  v56 = 0x1000000012;
  v54 = 20;
  v55 = v55 & 0xFE | *(v11 + 649);
  PSCommsClient::send_wait(*(v11 + 8), v52, 0x888u, &v45, 0x898u, 0);
  if (PSCommsClient::is_valid_simple_message(&v45) && PSCommsClient::isAck(v52, &v45.msgh_bits))
  {
    v31 = PSShbufferGroupReader::requestShbufferGroupList(buf, v11 + 16);
LABEL_25:
    v28 = v31;
    v29 = *v12;
    if (!os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!PSCommsClient::is_valid_ool_message(&v45))
  {
    v35 = 0;
    asprintf(&v35, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v45.msgh_bits & 0x80000000, v46, v48, (v11 + 16));
    v26 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v37 = "requestShbufferGroupList";
      v38 = 1024;
      v39 = 60;
      v40 = 1024;
      *v41 = v45.msgh_bits & 0x80000000;
      *&v41[4] = 1024;
      *&v41[6] = v46;
      *v42 = 1024;
      *&v42[2] = v48;
      v43 = 2080;
      v44 = v11 + 16;
      _os_log_impl(&dword_25EBC5000, v26, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v27 = OSLogFlushBuffers();
    if (!v27)
    {
      goto LABEL_23;
    }

    v28 = v27;
    v29 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      v32 = abort_with_reason();
      return PSShbufferGroupReader::addSharedCVPixelBuffer(v32, v33);
    }

LABEL_26:
    *buf = 136315394;
    v37 = "requestShbufferGroupList";
    v38 = 1024;
    v39 = v28;
    _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    goto LABEL_27;
  }

  v12 = &_ps_buffer_log;
  v14 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v37 = "SHBUFFERGROUPREADER";
    _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: requestShbufferGroupList SUCCESS\n", buf, 0xCu);
  }

  if (v46 != 1)
  {
    v35 = 0;
    asprintf(&v35, "Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", v13, v46);
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v37 = "requestShbufferGroupList";
      v38 = 1024;
      v39 = 70;
      v40 = 2080;
      *v41 = v13;
      *&v41[8] = 1024;
      *v42 = v46;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_FAULT, "%s:%d Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", buf, 0x22u);
    }

    v31 = OSLogFlushBuffers();
    if (!v31)
    {
LABEL_23:
      usleep(0x1E8480u);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v34 = v47;
  v15 = v49;
  *v10 = v50;
  *v8 = v51;
  *v6 = v15;
  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v17 = *v10;
    *buf = 136315394;
    v37 = "SHBUFFERGROUPREADER";
    v38 = 1024;
    v39 = v17;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: Found (%d) shbufflets\n", buf, 0x12u);
  }

  v18 = *v10;
  if (v18)
  {
    v19 = 0;
    v20 = _ps_buffer_log;
    v21 = (v34 + 4);
    do
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        *buf = 136315906;
        v37 = "SHBUFFERGROUPREADER";
        v38 = 1024;
        v39 = v19;
        v40 = 1024;
        *v41 = v22;
        *&v41[4] = 1024;
        *&v41[6] = v23;
        _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, "%s: Resource (%d) type: (%d) id(%d)\n", buf, 0x1Eu);
        v20 = _ps_buffer_log;
        v18 = *v10;
      }

      ++v19;
      v21 += 2;
    }

    while (v19 < v18);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v34;
}

void PSShbufferGroupReader::addSharedCVPixelBuffer(PSShbufferGroupReader *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedCVPixelBuffer";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s -s namr (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedCVDataBuffer(PSShbufferGroupReader *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedCVDataBuffer";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedIOSurface(PSShbufferGroupReader *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedIOSurface";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - namr (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedStreamingCodecFrameSelector(PSShbufferGroupReader *this, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedStreamingCodecFrameSelector";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v5, 0x26u);
  }

  PSBufferService::PSStreamingCodecFrameSelector::createReader((this + 16), a2);
}

void PSShbufferGroupReader::addSharedFIFOSelector(PSShbufferGroupReader *this, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "SHBUFFERGROUPREADER";
    v8 = 2080;
    v9 = "addSharedFIFOSelector";
    v10 = 2080;
    v11 = this + 16;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v6, 0x26u);
  }

  PSBufferService::PSStreamingCodecFrameSelector::createFifoReader((this + 16), a2, 0, v5);
}

void PSShbufferGroupReader::addSharedRingSwappableView(PSShbufferGroupReader *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedRingSwappableView";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

uint64_t PSShbufferGroupReader::addLockLessSelector(PSShbufferGroupReader *this, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315906;
    *&v10[4] = "SHBUFFERGROUPREADER";
    *v11 = 2080;
    *&v11[2] = "addLockLessSelector";
    v12 = 2080;
    v13 = this + 16;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", v10, 0x26u);
  }

  *(this + 592) = 1;
  *v10 = 0x140000000FLL;
  *v11 = 0;
  *&v11[4] = 0;
  v15 = 0;
  v17 = 1;
  *&v10[8] = a2;
  v5 = this + 16;
  v16 = 1;
  v18 = 0;
  v6 = *(this + 1) + 44;
  v7 = this + 600;
  v13 = v5;
  v14 = v6;
  if (PSBufferService::PSLocklessBufferSelector::Create(v10))
  {
    PSShbufferGroupReader::addLockLessSelector();
  }

  if ((*(**v7 + 160))())
  {
    PSShbufferGroupReader::addLockLessSelector();
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSShbufferGroupReader::addSharedBufferGroupSyncObject(PSShbufferGroupReader *this, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedBufferGroupSyncObject";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - namr (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedResSerialData(PSShbufferGroupReader *this, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(this + 648);
    v6 = 136316162;
    v7 = "SHBUFFERGROUPREADER";
    v8 = 2080;
    v9 = "addSharedResSerialData";
    v10 = 2080;
    v11 = this + 16;
    v12 = 1024;
    v13 = a2;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) hasWritePermission=%d \n", &v6, 0x2Cu);
  }

  operator new();
}

uint64_t PSShbufferGroupReader::getAllReadBuffers(PSShbufferGroupReader *this)
{
  result = *(this + 80);
  if (!result)
  {
    PSShbufferGroupReader::getAllReadBuffers();
  }

  return result;
}

PSSharedSyncObject *PSShbufferGroupReader::waitForBuffers(uint64_t a1, uint64_t a2, int *a3)
{
  result = *(a1 + 656);
  if (result)
  {
    if (*(a1 + 592))
    {
      return PSSharedSyncObject::waitForSignalAtomicTags(result, a2, a3);
    }

    else
    {
      return PSSharedSyncObject::waitForSignal(result, a2, a3);
    }
  }

  return result;
}

PSSharedSerialData *PSShbufferGroupReader::_getReadResourceswithFrameID(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unsigned int *a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  result = *(a1 + 664);
  if (!result)
  {
    return result;
  }

  Data = PSSharedSerialData::getData(result);
  v11 = Data;
  v12 = 0;
  v13 = (*(a1 + 680) + *(a1 + 676) + *(a1 + 636)) % *(a1 + 636);
  while (1)
  {
    v14 = v13;
    v15 = atomic_load((Data + 8 * v13));
    if (v15 == a4)
    {
      break;
    }

    v16 = *(a1 + 636);
    if (v13 + 1 == v16)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v13 + 1);
    }

    if (++v12 >= v16)
    {
      goto LABEL_12;
    }
  }

  *(a1 + 680) = v13 - *(a1 + 676);
  *(a1 + 676) = v13;
  v16 = *(a1 + 636);
LABEL_12:
  if (v12 == v16)
  {
    return 0;
  }

  if (*(a1 + 592))
  {
    if (a5)
    {
      a5 = *a5;
    }

    if ((*(**(a1 + 600) + 208))())
    {
      return 0;
    }
  }

  else
  {
    a5 = 0;
    if ((*(**(a1 + 584) + 104))(*(a1 + 584), v13))
    {
      return 0;
    }
  }

  v17 = atomic_load((v11 + 8 * v14));
  if (v17 != a4)
  {
    if (*(a1 + 592) == 1)
    {
      (*(**(a1 + 600) + 232))(*(a1 + 600), v13, 0, a5);
    }

    else
    {
      (*(**(a1 + 584) + 80))(*(a1 + 584), v13, 0);
    }

    return 0;
  }

  result = *(*(a1 + 640) + 8 * v13);
  **(result + 2) = v13;
  if (a3)
  {
    atomic_store(a4, a3);
  }

  return result;
}

PSSharedSerialData *PSShbufferGroupReader::_getReadResourcesLastN(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, unsigned int *a7)
{
  i = a2;
  *&v46[5] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 552);
  v10 = (v9 - 1);
  if (v9 - 1 <= 0)
  {
LABEL_24:
    v39 = 0;
    asprintf(&v39, "Unsupported max last N count %d for buffer depth %d. Increase the buffer depth to resolve this. requested_buffer_count = %lld", v10, v9, i);
    v28 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v29 = *(a1 + 552);
      *buf = 136316162;
      v41 = "_getReadResourcesLastN";
      v42 = 1024;
      v43 = 387;
      v44 = 1024;
      *v45 = v10;
      *&v45[4] = 1024;
      *&v45[6] = v29;
      v46[0] = 2048;
      *&v46[1] = i;
      _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_FAULT, "%s:%d Unsupported max last N count %d for buffer depth %d. Increase the buffer depth to resolve this. requested_buffer_count = %lld", buf, 0x28u);
    }

    v30 = OSLogFlushBuffers();
    if (!v30)
    {
LABEL_37:
      usleep(0x1E8480u);
      goto LABEL_40;
    }

    v31 = v30;
    v32 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_39:
      *buf = 136315394;
      v41 = "_getReadResourcesLastN";
      v42 = 1024;
      v43 = v31;
      _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }

LABEL_40:
    v37 = abort_with_reason();
    return PSShbufferGroupReader::_getReadResourcesSinceLast(v37);
  }

  if (v10 < a2)
  {
    v39 = 0;
    asprintf(&v39, "Unsupported last N count %llu. Only upto %d supported", a2, v9 - 1);
    v33 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v41 = "_getReadResourcesLastN";
      v42 = 1024;
      v43 = 391;
      v44 = 2048;
      *v45 = i;
      *&v45[8] = 1024;
      *v46 = v10;
      _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_FAULT, "%s:%d Unsupported last N count %llu. Only upto %d supported", buf, 0x22u);
    }

    v34 = OSLogFlushBuffers();
    if (!v34)
    {
      goto LABEL_37;
    }

    v31 = v34;
    v32 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  MEMORY[0x28223BE20](a1);
  v10 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v19, v18);
  if (!a4 || !a6)
  {
    v39 = 0;
    asprintf(&v39, "Invalid arg passed. resources=%p, read_buffer_count=%p", a4, a6);
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v41 = "_getReadResourcesLastN";
      v42 = 1024;
      v43 = 401;
      v44 = 2048;
      *v45 = a4;
      *&v45[8] = 2048;
      *v46 = a6;
      _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_FAULT, "%s:%d Invalid arg passed. resources=%p, read_buffer_count=%p", buf, 0x26u);
    }

    v36 = OSLogFlushBuffers();
    if (!v36)
    {
      goto LABEL_37;
    }

    v31 = v36;
    v32 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (*(a1 + 592))
  {
    if (a7)
    {
      v20 = *a7;
    }

    else
    {
      v20 = 0;
    }

    result = (*(**(a1 + 600) + 216))(*(a1 + 600), v20, v10, i, a3, v19, a6);
  }

  else
  {
    result = (*(**(a1 + 584) + 64))(*(a1 + 584), v10, i, a3, v19, a6);
  }

  if (*a6)
  {
    for (i = 0; i < *a6; ++i)
    {
      v22 = *(v10 + 4 * i);
      if (v22 == -1)
      {
        break;
      }

      if (v22 == -2)
      {
        PSShbufferGroupReader::_getReadResourcesLastN(a1, buf);
        goto LABEL_24;
      }

      v23 = v22;
      a4[i] = *(*(a1 + 640) + 8 * v22);
      v24 = *(*(*(a1 + 640) + 8 * v22) + 16);
      *v24 = v22;
      *(v24 + 8) = *&v19[8 * i];
      if (a5)
      {
        v25 = *(a5 + 8 * i);
        if (v25)
        {
          result = *(a1 + 664);
          if (result)
          {
            result = PSSharedSerialData::getData(result);
            v26 = atomic_load(result + v23);
            v25 = *(a5 + 8 * i);
          }

          else
          {
            v26 = 0;
          }

          atomic_store(v26, v25);
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

PSSharedSerialData *PSShbufferGroupReader::_getReadResourcesSinceLast(PSSharedResource *this, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7, unsigned int *a8)
{
  i = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  LODWORD(v10) = *(this + 138);
  v11 = (v10 - 1);
  if (v10 - 1 <= 0)
  {
LABEL_24:
    v49 = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(&v49, "Unsupported max last N count %d for buffer depth %d for %s. Increase the buffer depth to resolve this. max_buffer_count = %lld", v11, v10, Key, i);
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v31 = *(this + 138);
      v32 = PSSharedResource::getKey(this);
      *buf = 136316418;
      v51 = "_getReadResourcesSinceLast";
      v52 = 1024;
      v53 = 466;
      v54 = 1024;
      *v55 = v11;
      *&v55[4] = 1024;
      *&v55[6] = v31;
      *v56 = 2080;
      *&v56[2] = v32;
      LOWORD(v57[0]) = 2048;
      *(v57 + 2) = i;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_FAULT, "%s:%d Unsupported max last N count %d for buffer depth %d for %s. Increase the buffer depth to resolve this. max_buffer_count = %lld", buf, 0x32u);
    }

    v33 = OSLogFlushBuffers();
    if (!v33)
    {
LABEL_37:
      usleep(0x1E8480u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_39:
      *buf = 136315394;
      v51 = "_getReadResourcesSinceLast";
      v52 = 1024;
      v53 = v34;
      _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }

LABEL_40:
    v44 = abort_with_reason();
    return PSShbufferGroupReader::_getReadResources(v44, v45, v46, v47);
  }

  if (v11 < a2)
  {
    v49 = 0;
    v36 = PSSharedResource::getKey(this);
    asprintf(&v49, "Unsupported max buffer count %llu for %s. Only upto %d supported.", i, v36, v10 - 1);
    v37 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v38 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v51 = "_getReadResourcesSinceLast";
      v52 = 1024;
      v53 = 471;
      v54 = 2048;
      *v55 = i;
      *&v55[8] = 2080;
      *v56 = v38;
      *&v56[8] = 1024;
      LODWORD(v57[0]) = v10 - 1;
      _os_log_impl(&dword_25EBC5000, v37, OS_LOG_TYPE_FAULT, "%s:%d Unsupported max buffer count %llu for %s. Only upto %d supported.", buf, 0x2Cu);
    }

    v39 = OSLogFlushBuffers();
    if (!v39)
    {
      goto LABEL_37;
    }

    v34 = v39;
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  MEMORY[0x28223BE20](this);
  v11 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v18);
  MEMORY[0x28223BE20](v19);
  v10 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v20);
  if (!a5 || !a7)
  {
    v49 = 0;
    v40 = PSSharedResource::getKey(this);
    asprintf(&v49, "Invalid arg passed. resources=%p, read_buffer_count=%p for %s", a5, a7, v40);
    v41 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v42 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v51 = "_getReadResourcesSinceLast";
      v52 = 1024;
      v53 = 481;
      v54 = 2048;
      *v55 = a5;
      *&v55[8] = 2048;
      *v56 = a7;
      *&v56[8] = 2080;
      v57[0] = v42;
      _os_log_impl(&dword_25EBC5000, v41, OS_LOG_TYPE_FAULT, "%s:%d Invalid arg passed. resources=%p, read_buffer_count=%p for %s", buf, 0x30u);
    }

    v43 = OSLogFlushBuffers();
    if (!v43)
    {
      goto LABEL_37;
    }

    v34 = v43;
    v35 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (*(this + 592))
  {
    if (a8)
    {
      v21 = *a8;
    }

    else
    {
      v21 = 0;
    }

    result = (*(**(this + 75) + 224))(*(this + 75), v21, v11, i, a3, a4, v10, a7);
  }

  else
  {
    result = (*(**(this + 73) + 64))(*(this + 73), v11, i, a4, v10, a7);
  }

  if (*a7)
  {
    for (i = 0; i < *a7; ++i)
    {
      v23 = *(v11 + 4 * i);
      if (v23 == -1)
      {
        break;
      }

      if (v23 == -2)
      {
        PSShbufferGroupReader::_getReadResourcesSinceLast(this, buf);
        goto LABEL_24;
      }

      v24 = v23;
      a5[i] = *(*(this + 80) + 8 * v23);
      v25 = *(*(*(this + 80) + 8 * v23) + 16);
      *v25 = v23;
      *(v25 + 8) = *&v10[8 * i];
      if (a6)
      {
        v26 = *(a6 + 8 * i);
        if (v26)
        {
          result = *(this + 83);
          if (result)
          {
            result = PSSharedSerialData::getData(result);
            v27 = atomic_load(result + v24);
            v26 = *(a6 + 8 * i);
          }

          else
          {
            v27 = 0;
          }

          atomic_store(v27, v26);
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSShbufferGroupReader::_getReadResources(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int *a4)
{
  if (*(a1 + 592))
  {
    if (a4)
    {
      v6 = *a4;
    }

    else
    {
      v6 = 0;
    }

    v8 = (*(**(a1 + 600) + 200))(*(a1 + 600), v6);
  }

  else
  {
    v7 = **(a1 + 584);
    if (a2)
    {
      v8 = (*(v7 + 112))();
    }

    else
    {
      v8 = (*(v7 + 56))();
    }
  }

  if (v8 == -1)
  {
    return 0;
  }

  if (v8 != -2)
  {
    v9 = *(*(a1 + 640) + 8 * v8);
    **(v9 + 16) = v8;
    if (a3)
    {
      v10 = *(a1 + 664);
      if (v10)
      {
        v10 = atomic_load((PSSharedSerialData::getData(v10) + 8 * v8));
      }

      atomic_store(v10, a3);
    }

    return v9;
  }

  Resources = PSShbufferGroupReader::_getReadResources(a1, v13);
  return PSShbufferGroupReader::getReadBuffersLastN(Resources);
}

uint64_t PSShbufferGroupReader::getReadBuffersLastN(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, unsigned int *a7, int a8, char a9)
{
  if (!a2)
  {
    PSShbufferGroupReader::getReadBuffersLastN(v28, a1);
LABEL_14:
    PSShbufferGroupReader::getReadBuffersLastN(v28);
LABEL_15:
    BuffersLastN = PSShbufferGroupReader::getReadBuffersLastN(v28);
    return PSShbufferGroupReader::getReadBuffersSinceLast(BuffersLastN, v21, v22, v23, v24, v25, v26, v27, a9);
  }

  v17 = *(a1 + 632) != 1 || a8 == 0;
  if (!v17 && (PSSharedSyncObject::lock(*(a1 + 656)) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = PSShbufferGroupReader::_getReadResourcesLastN(a1, a2, a3, a4, a5, a6, a7);
  if (*(a1 + 632) == 1 && a8 != 0)
  {
    result = PSSharedSyncObject::unlock(*(a1 + 656));
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t PSShbufferGroupReader::getReadBuffersSinceLast(PSSharedSyncObject **this, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7, unsigned int *a8, char a9)
{
  if (!a2)
  {
    PSShbufferGroupReader::getReadBuffersSinceLast(v25, this);
LABEL_14:
    PSShbufferGroupReader::getReadBuffersSinceLast(v25);
LABEL_15:
    BuffersSinceLast = PSShbufferGroupReader::getReadBuffersSinceLast(v25);
    return PSShbufferGroupReader::getReadBuffers(BuffersSinceLast, v21, v22, v23, v24);
  }

  v17 = *(this + 632) != 1 || a9 == 0;
  if (!v17 && (PSSharedSyncObject::lock(this[82]) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = PSShbufferGroupReader::_getReadResourcesSinceLast(this, a2, a3, a4, a5, a6, a7, a8);
  if (*(this + 632) == 1 && a9 != 0)
  {
    result = PSSharedSyncObject::unlock(this[82]);
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t PSShbufferGroupReader::getReadBuffers(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int *a4, int a5)
{
  v10 = *(a1 + 632) != 1 || a5 == 0;
  if (v10 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    Resources = PSShbufferGroupReader::_getReadResources(a1, a2, a3, a4);
    v12 = *(a1 + 632) != 1 || a5 == 0;
    if (v12 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return Resources;
    }
  }

  else
  {
    PSShbufferGroupReader::getReadBuffers(v15);
  }

  Buffers = PSShbufferGroupReader::getReadBuffers(v15);
  return PSShbufferGroupReader::getReadBufferswithFrameID(Buffers);
}

uint64_t PSShbufferGroupReader::getReadBufferswithFrameID(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unsigned int *a5, int a6)
{
  v11 = *(a1 + 632) != 1 || a6 == 0;
  if (v11 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    ResourceswithFrameID = PSShbufferGroupReader::_getReadResourceswithFrameID(a1, a2, a3, a4, a5);
    v13 = *(a1 + 632) != 1 || a6 == 0;
    if (v13 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return ResourceswithFrameID;
    }
  }

  else
  {
    PSShbufferGroupReader::getReadBufferswithFrameID(v16);
  }

  BufferswithFrameID = PSShbufferGroupReader::getReadBufferswithFrameID(v16);
  return PSShbufferGroupReader::releaseReadResources(BufferswithFrameID);
}

uint64_t PSShbufferGroupReader::releaseReadResources(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 16);
  if (*v3 == 0x7FFFFFFF)
  {
    PSShbufferGroupReader::releaseReadResources();
  }

  if (*(a1 + 592))
  {
    if (a3)
    {
      v4 = *a3;
    }

    (*(**(a1 + 600) + 232))(*(a1 + 600));
  }

  else
  {
    (*(**(a1 + 584) + 80))(*(a1 + 584));
  }

  result = 0;
  *v3 = 0x7FFFFFFF;
  return result;
}

uint64_t PSShbufferGroupReader::releaseReadBuffers(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  v8 = *(a1 + 632) != 1 || a4 == 0;
  if (v8 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    Resources = PSShbufferGroupReader::releaseReadResources(a1, a2, a3);
    v10 = *(a1 + 632) != 1 || a4 == 0;
    if (v10 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return Resources;
    }
  }

  else
  {
    PSShbufferGroupReader::releaseReadBuffers(v13);
  }

  Buffers = PSShbufferGroupReader::releaseReadBuffers(v13);
  return PSShbufferGroupReader::releaseReadBuffersLastN(Buffers);
}

uint64_t PSShbufferGroupReader::releaseReadBuffersLastN(uint64_t result, uint64_t *a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    v10 = a4;
    do
    {
      result = PSShbufferGroupReader::releaseReadBuffers(v9, *a2, a5, 1);
      if (a4)
      {
        *v10 = result;
      }

      ++v10;
      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t PSShbufferGroupReader::initialize(PSShbufferGroupReader *this)
{
  v43 = *MEMORY[0x277D85DE8];
  *v32 = 0;
  v31 = 0;
  v4 = PSShbufferGroupReader::requestShbufferGroupList(this, &v32[1], v32, &v31);
  v5 = v32[0];
  v6 = v32[1];
  *(this + 168) = v32[1];
  *(this + 138) = v5;
  *(this + 159) = v5;
  *(this + 41) = 0u;
  if (!v4)
  {
    PSShbufferGroupReader::initialize(buf, this);
LABEL_57:
    v21 = PSShbufferGroupReader::initialize(buf, v1);
    goto LABEL_58;
  }

  v1 = v4;
  if (v6)
  {
    v7 = (v4 + 4);
    do
    {
      v8 = *(v7 - 1);
      if (v8 <= 5)
      {
        if (v8 <= 1)
        {
          if (!v8)
          {
            v12 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v34 = "SHBUFFERGROUPREADER";
              _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_IOSURFACE\n", buf, 0xCu);
            }

            PSShbufferGroupReader::addSharedIOSurface(this, *v7);
          }

          if (v8 == 1)
          {
            v11 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v34 = "SHBUFFERGROUPREADER";
              _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_IOSURFACE_CVPIXELBUFF\n", buf, 0xCu);
            }

            PSShbufferGroupReader::addSharedCVPixelBuffer(this, *v7);
          }

LABEL_45:
          v20 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v34 = "SHBUFFERGROUPREADER";
            v14 = v20;
            v15 = "%s UNKNOWN SHBUFFLET TYPE\n";
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        if (v8 == 2)
        {
          v17 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v34 = "SHBUFFERGROUPREADER";
            _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_IOSURFACE_CVDATABUFF\n", buf, 0xCu);
          }

          PSShbufferGroupReader::addSharedCVDataBuffer(this, *v7);
        }

        if (v8 != 3)
        {
          if (v8 == 4)
          {
            v9 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v34 = "SHBUFFERGROUPREADER";
              _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA\n", buf, 0xCu);
            }

            PSShbufferGroupReader::addSharedResSerialData(this, *v7);
          }

          goto LABEL_45;
        }

        v13 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v34 = "SHBUFFERGROUPREADER";
          v14 = v13;
          v15 = "%s PLS_RES_FACT_IOSURFACE_MTLTEXT\n";
LABEL_47:
          _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
        }
      }

      else
      {
        if (v8 > 11)
        {
          switch(v8)
          {
            case 12:
              v19 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v34 = "SHBUFFERGROUPREADER";
                _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA_SO\n", buf, 0xCu);
              }

              PSShbufferGroupReader::addSharedBufferGroupSyncObject(this, *v7);
            case 15:
              v16 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v34 = "SHBUFFERGROUPREADER";
                _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA_SCFS \n", buf, 0xCu);
              }

              PSShbufferGroupReader::addSharedStreamingCodecFrameSelector(this, *v7);
            case 16:
              v10 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v34 = "SHBUFFERGROUPREADER";
                _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA_FIFO_SELECTOR \n", buf, 0xCu);
              }

              PSShbufferGroupReader::addSharedFIFOSelector(this, *v7);
          }

          goto LABEL_45;
        }

        if (v8 != 6)
        {
          if (v8 == 8)
          {
            PSShbufferGroupReader::addSharedRingSwappableView(this, *v7);
          }

          if (v8 == 10)
          {
            PSShbufferGroupReader::addLockLessSelector(this, *v7);
            goto LABEL_48;
          }

          goto LABEL_45;
        }

        v18 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v34 = "SHBUFFERGROUPREADER";
          v14 = v18;
          v15 = "%s PLS_RES_FACT_MANJUSURFACE\n";
          goto LABEL_47;
        }
      }

LABEL_48:
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v2 = v31;
  if (!v31)
  {
    goto LABEL_57;
  }

  v21 = MEMORY[0x25F8CAE70](*MEMORY[0x277D85F48], v1, v31);
  if (!v21)
  {
    *(this + 632) = !*(this + 75) && (*(**(this + 73) + 48))(*(this + 73)) != 3;
    v22 = *MEMORY[0x277D85DE8];
    return 0;
  }

LABEL_58:
  v24 = v21;
  v30 = 0;
  asprintf(&v30, "Failed to vm_deallocate mem. type_list=%p of size:%d ret=%#x\n", v1, v2, v21);
  v25 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v34 = "initialize";
    v35 = 1024;
    v36 = 856;
    v37 = 2048;
    v38 = v1;
    v39 = 1024;
    v40 = v2;
    v41 = 1024;
    v42 = v24;
    _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d Failed to vm_deallocate mem. type_list=%p of size:%d ret=%#x\n", buf, 0x28u);
  }

  v26 = OSLogFlushBuffers();
  if (v26)
  {
    v27 = v26;
    v28 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "initialize";
      v35 = 1024;
      v36 = v27;
      _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v29 = abort_with_reason();
  return PSShbufferGroupReader::addReaderInstance(v29);
}

_DWORD *PSShbufferGroupReader::addReaderInstance(PSShbufferGroupReader *this)
{
  v7 = -1;
  if (*(this + 592) == 1)
  {
    v2 = *(this + 75);
    if (v2)
    {
      if (!(*(*v2 + 184))(v2, *(this + 142), &v7))
      {
        if (v7 != -1)
        {
          result = malloc_type_calloc(4uLL, 1uLL, 0x100004052888210uLL);
          *result = v7;
          return result;
        }

        return 0;
      }
    }

    else
    {
      PSShbufferGroupReader::addReaderInstance(v6, this);
    }

    v4 = PSShbufferGroupReader::addReaderInstance(v6, this);
    return PSShbufferGroupReader::removeReaderInstance(v4, v5);
  }

  return 0;
}

uint64_t PSShbufferGroupReader::removeReaderInstance(uint64_t this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a2)
  {
    v9 = this;
    if (*(this + 592))
    {
      v10 = *a2;
      free(a2);
      this = (*(**(v9 + 600) + 192))(*(v9 + 600), *(v9 + 568), v10);
      if (this)
      {
        v11 = PSShbufferGroupReader::removeReaderInstance(v19, v9);
        PSShbufferGroupReader::PSShbufferGroupReader(v11, v12, v13, v14, v15, v16, v17, v18, a9);
      }
    }
  }

  return this;
}

void PSShbufferGroupReader::PSShbufferGroupReader(PSShbufferGroupReader *this, const char *a2, int (*a3)(void), int (*a4)(void *, unsigned int), int (*a5)(void), char *a6, BOOL a7, BOOL a8, int a9)
{
  v9 = *MEMORY[0x277D85DE8];
  PSShbufferGroup::PSShbufferGroup(this, a2, 0, 0, a6);
}

{
  PSShbufferGroupReader::PSShbufferGroupReader(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void PSShbufferGroup::~PSShbufferGroup(PSShbufferGroup *this)
{
  *this = &unk_2870CC610;
  v2 = *(this + 76);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSShbufferGroupReader::deallocateBufferSyncContextObject(PSShbufferGroupReader *this)
{
  v1 = *(this + 83);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

void PSShbufferGroupReader::~PSShbufferGroupReader(PSShbufferGroupReader *this)
{
  *this = &unk_2870CC670;
  v2 = *(this + 82);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 82) = 0;
  }

  PSShbufferGroup::deallocate(this);
  getpid();
  PSShbufferGroup::unregisterBufferGroup(this);
  *this = &unk_2870CC610;
  v3 = *(this + 76);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PSSharedResource::~PSSharedResource(this);
}

{
  PSShbufferGroupReader::~PSShbufferGroupReader(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_9_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

uint64_t OUTLINED_FUNCTION_11_0(void *a1, PSSharedResource *this, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a1 = 0;

  return PSSharedResource::getKey(this);
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t PSShbufferGroupWriter::getResourceAt(PSShbufferGroupWriter *this, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(this + 159);
  if (v2 <= a2)
  {
    v16 = 0;
    asprintf(&v16, "%s:%s- index(%d) >= total lines (%d)\n", "SHBUFFERGROUPWRITER", "getResourceAt", a2, v2);
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v8 = *(this + 159);
      *buf = 136316418;
      v18 = "getResourceAt";
      v19 = 1024;
      v20 = 16;
      v21 = 2080;
      v22 = "SHBUFFERGROUPWRITER";
      v23 = 2080;
      v24 = "getResourceAt";
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = v8;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s:%s- index(%d) >= total lines (%d)\n", buf, 0x32u);
    }

    v9 = OSLogFlushBuffers();
    if (v9)
    {
      v10 = v9;
      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "getResourceAt";
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v12 = abort_with_reason();
    return PSShbufferGroupWriter::addNonSharedSerialData(v12, v13, v14, v15);
  }

  else
  {
    result = *(*(this + 80) + 8 * a2);
    **(result + 16) = a2;
    v4 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void PSShbufferGroupWriter::addNonSharedSerialData(PSShbufferGroupWriter *this, unsigned int a2, char a3, char a4)
{
  if (*(this + 140) < 0x64u)
  {
    if ((a3 & 1) == 0 && (a4 & 1) == 0)
    {
      v6 = PSShbufferGroupWriter::addNonSharedSerialData(v7, this);
      MEMORY[0x25F8CA500](v5, v4);
      _Unwind_Resume(v6);
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::addSharedResSerialData(PSShbufferGroupWriter *this, unsigned int a2)
{
  if (*(this + 548) == 1)
  {

    PSShbufferGroupWriter::addNonSharedSerialData(this, a2, 1, 0);
  }

  if (*(this + 140) < 0x64u)
  {
    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVPixelBuffer(PSShbufferGroupWriter *this, __CVBuffer *(*a2)(void *), void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(this + 140) < 0x64u)
  {
    v6 = *(this + 159);
    MEMORY[0x28223BE20](this);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFF0);
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(v12 - ((v7 + 15) & 0xFFFFFFFF0), v9);
    if (v6)
    {
      v10 = 0;
      do
      {
        v11 = a2(a3);
        *&v8[8 * v10] = v11;
        if (!v11)
        {
          PSShbufferGroupWriter::installCVPixelBuffer();
        }

        ++v10;
      }

      while (v10 < *(this + 159));
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVPixelBuffer(PSShbufferGroupWriter *this, __CVBuffer **a2, int a3)
{
  if (*(this + 140) < 0x64u)
  {
    if (*(this + 593) == 1 && *(this + 159) != a3)
    {
      PSShbufferGroupWriter::installCVPixelBuffer();
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVPixelBuffer(PSShbufferGroupWriter *this, __IOSurface **a2, int a3)
{
  if (*(this + 140) < 0x64u)
  {
    if (*(this + 593) == 1 && *(this + 159) != a3)
    {
      PSShbufferGroupWriter::installCVPixelBuffer();
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVDataBuffer(PSShbufferGroupWriter *this, __CVBuffer *(*a2)(void *), void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(this + 140) < 0x64u)
  {
    v6 = *(this + 159);
    MEMORY[0x28223BE20](this);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFF0);
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(v12 - ((v7 + 15) & 0xFFFFFFFF0), v9);
    if (v6)
    {
      v10 = 0;
      do
      {
        v11 = a2(a3);
        *&v8[8 * v10] = v11;
        if (!v11)
        {
          PSShbufferGroupWriter::installCVDataBuffer();
        }

        ++v10;
      }

      while (v10 < *(this + 159));
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVDataBuffer(PSShbufferGroupWriter *this, __CVBuffer **a2, int a3)
{
  if (*(this + 140) < 0x64u)
  {
    if (*(this + 593) == 1 && *(this + 159) != a3)
    {
      PSShbufferGroupWriter::installCVDataBuffer();
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

uint64_t PSShbufferGroupWriter::installCVDataBuffer(PSShbufferGroupWriter *this, __IOSurface **a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 140) >= 0x64u)
  {
    PSShbufferGroupWriter::addNonSharedSerialData();
  }

  if (*(this + 593) != 1 || (v5 = *(this + 159), v5 == a3))
  {
    operator new();
  }

  v11 = 0;
  asprintf(&v11, "%s: Invalid number of CVDataBuffers to install. Expected (%d), provided (%d)\n", "SHBUFFERGROUPWRITER", v5, a3);
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v7 = *(this + 159);
    *buf = 136316162;
    v13 = "installCVDataBuffer";
    v14 = 1024;
    v15 = 252;
    v16 = 2080;
    v17 = "SHBUFFERGROUPWRITER";
    v18 = 1024;
    v19 = v7;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s: Invalid number of CVDataBuffers to install. Expected (%d), provided (%d)\n", buf, 0x28u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "installCVDataBuffer";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSShbufferGroupWriter::installIOSurface(PSShbufferGroupWriter *this, __IOSurface *(*a2)(void *), void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 140) >= 0x64u)
  {
    PSShbufferGroupWriter::installIOSurface(v12, a2, a3);
  }

  else
  {
    v6 = *(this + 159);
    MEMORY[0x28223BE20](this);
    v8 = &v12[-((v7 + 15) & 0xFFFFFFFF0)];
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(&v12[-((v7 + 15) & 0xFFFFFFFF0)], v9);
    if (!v6)
    {
LABEL_9:
      operator new();
    }

    v10 = 0;
    while (1)
    {
      v11 = a2(a3);
      *&v8[8 * v10] = v11;
      if (!v11)
      {
        break;
      }

      if (++v10 >= *(this + 159))
      {
        goto LABEL_9;
      }
    }

    PSShbufferGroupWriter::installIOSurface(v12);
  }

  __break(1u);
}

uint64_t PSShbufferGroupWriter::installIOSurface(PSShbufferGroupWriter *this, __IOSurface **a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 140) >= 0x64u)
  {
    result = PSShbufferGroupWriter::installIOSurface(buf, a2);
  }

  else
  {
    if (*(this + 593) != 1 || (v5 = *(this + 159), v5 == a3))
    {
      operator new();
    }

    v11 = 0;
    asprintf(&v11, "%s: Invalid number of IOSurfaces to install. Expected (%d), provided (%d)\n", "SHBUFFERGROUPWRITER", v5, a3);
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v8 = *(this + 159);
      *buf = 136316162;
      v13 = "installIOSurface";
      v14 = 1024;
      v15 = 296;
      v16 = 2080;
      v17 = "SHBUFFERGROUPWRITER";
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Invalid number of IOSurfaces to install. Expected (%d), provided (%d)\n", buf, 0x28u);
    }

    v9 = OSLogFlushBuffers();
    if (v9)
    {
      v10 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "installIOSurface";
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
  }

  __break(1u);
  return result;
}

void PSShbufferGroupWriter::addSharedIOSurface(PSShbufferGroupWriter *this)
{
  if (*(this + 140) < 0x64u)
  {
    operator new();
  }

  v3 = PSShbufferGroupWriter::addSharedIOSurface(v4);
  MEMORY[0x25F8CA500](v2, v1);
  _Unwind_Resume(v3);
}

uint64_t PSShbufferGroupWriter::addSharedStreamingCodecFrameSelector(PSShbufferGroupWriter *this, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315906;
    v11 = "SHBUFFERGROUPWRITER";
    v12 = 2080;
    v13 = "addSharedStreamingCodecFrameSelector";
    v14 = 2080;
    v15 = this + 16;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s:%s - name (%s) id (%d)\n", &v10, 0x26u);
  }

  if ((*(this + 162) & 0xE) == 4)
  {
    PSBufferService::PSStreamingCodecFrameSelector::createFifoWriter((this + 16), a2, *(this + 138), 0, 0, v5);
  }

  if ((*(this + 162) & 0xE) == 2)
  {
    v6 = *(this + 138);
    PSBufferService::PSStreamingCodecFrameSelector::createWriter((this + 16), a2);
  }

  v7 = PSShbufferGroupWriter::addSharedStreamingCodecFrameSelector(&v10);
  return PSShbufferGroupWriter::addSharedLocklessSelector(v7, v8);
}

uint64_t PSShbufferGroupWriter::addSharedLocklessSelector(PSShbufferGroupWriter *this)
{
  v7 = 0;
  v11 = 0;
  v10 = 0;
  v1 = *(this + 143) + *(this + 138);
  v5[0] = *(this + 138);
  v5[1] = v1;
  v6 = 101;
  v13 = 1;
  v12 = 0;
  v2 = *(this + 1) + 44;
  v3 = this + 600;
  v8 = this + 16;
  v9 = v2;
  if (PSBufferService::PSLocklessBufferSelector::Create(v5))
  {
    PSShbufferGroupWriter::addSharedLocklessSelector();
  }

  result = (*(**v3 + 168))();
  if (result)
  {
    PSShbufferGroupWriter::addSharedLocklessSelector();
  }

  return result;
}

uint64_t PSShbufferGroupWriter::getWriteBuffersIndex(PSShbufferGroupWriter *this)
{
  v1 = 584;
  if (*(this + 592))
  {
    v1 = 600;
  }

  result = (*(**(this + v1) + 56))(*(this + v1));
  if ((result & 0x80000000) != 0)
  {
    v3 = PSShbufferGroupWriter::getWriteBuffersIndex(&v5, result);
    return PSShbufferGroupWriter::getWriteResourceForFrameID(v3, v4);
  }

  return result;
}

uint64_t PSShbufferGroupWriter::getWriteResourceForFrameID(PSShbufferGroupWriter *this)
{
  v2 = (*(**(this + 73) + 128))(*(this + 73));
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  return PSShbufferGroupWriter::getResourceAt(this, v2);
}

uint64_t PSShbufferGroupWriter::getWriteBuffers(PSShbufferGroupWriter *this, int a2)
{
  v4 = *(this + 632) != 1 || a2 == 0;
  if (v4 || (PSSharedSyncObject::lock(*(this + 82)) & 1) != 0)
  {
    v5 = PSShbufferGroupWriter::getWriteBuffersIndex(this);
    ResourceAt = PSShbufferGroupWriter::getResourceAt(this, v5);
    v7 = *(this + 632) != 1 || a2 == 0;
    if (v7 || (PSSharedSyncObject::unlock(*(this + 82)) & 1) != 0)
    {
      return ResourceAt;
    }
  }

  else
  {
    PSShbufferGroupWriter::getWriteBuffers(v11);
  }

  v9 = PSShbufferGroupWriter::getWriteBuffers(v11);
  return PSShbufferGroupWriter::getWriteBuffersForFrameID(v9, v10);
}

uint64_t PSShbufferGroupWriter::getWriteBuffersForFrameID(PSSharedSyncObject **this)
{
  if (*(this + 632) == 1 && (PSSharedSyncObject::lock(this[82]) & 1) == 0)
  {
    PSShbufferGroupWriter::getWriteBuffersForFrameID(v5);
  }

  else
  {
    v2 = PSShbufferGroupWriter::getWriteResourceForFrameID(this);
    if (*(this + 632) != 1 || (PSSharedSyncObject::unlock(this[82]) & 1) != 0)
    {
      return v2;
    }
  }

  v4 = PSShbufferGroupWriter::getWriteBuffersForFrameID(v5);
  return PSShbufferGroupWriter::attachSyncTagtoBuffer(v4);
}

uint64_t PSShbufferGroupWriter::attachSyncTagtoBuffer(uint64_t a1, int a2, unint64_t *a3)
{
  if (*(a1 + 632) == 1 && (PSSharedSyncObject::lock(*(a1 + 656)) & 1) == 0)
  {
    PSShbufferGroupWriter::attachSyncTagtoBuffer(v13);
  }

  else
  {
    if (a3)
    {
      v6 = atomic_load(a3);
      if (v6 != -1)
      {
        Data = PSSharedSerialData::getData(*(a1 + 664));
        v8 = atomic_load(a3);
        atomic_store(v8, (Data + 8 * a2));
      }
    }

    if (*(a1 + 632) != 1 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return 0;
    }
  }

  v10 = PSShbufferGroupWriter::attachSyncTagtoBuffer(v13);
  return PSShbufferGroupWriter::releaseWriteResource(v10, v11, v12);
}

uint64_t PSShbufferGroupWriter::releaseWriteResource(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  v4 = *v3;
  if (v4 == 0x7FFFFFFF)
  {
    v9 = PSShbufferGroupWriter::releaseWriteResource(v11);
    return PSShbufferGroupWriter::releaseWriteBuffers(v9);
  }

  else
  {
    v10 = 0;
    v5 = *(a1 + 592);
    if (a3)
    {
      if (*(a1 + 592))
      {
        v6 = *(a1 + 600);
      }

      else
      {
        v6 = *(a1 + 584);
      }

      (*(*v6 + 80))(v6, v4, &v10);
    }

    else
    {
      if (*(a1 + 592))
      {
        v7 = *(a1 + 600);
      }

      else
      {
        v7 = *(a1 + 584);
      }

      (*(*v7 + 88))(v7, v4, &v10);
    }

    if (!v10)
    {
      *v3 = 0x7FFFFFFF;
    }

    return v4;
  }
}

uint64_t PSShbufferGroupWriter::releaseWriteBuffers(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 632) != 1 || a3 == 0;
  if (v6 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    v7 = PSShbufferGroupWriter::releaseWriteResource(a1, a2, 1);
    v8 = *(a1 + 632) != 1 || a3 == 0;
    if (v8 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return v7;
    }
  }

  else
  {
    PSShbufferGroupWriter::releaseWriteBuffers(v11);
  }

  v10 = PSShbufferGroupWriter::releaseWriteBuffers(v11);
  return PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(v10);
}

uint64_t PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 632) != 1 || a3 == 0;
  if (v6 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    v7 = PSShbufferGroupWriter::releaseWriteResource(a1, a2, 0);
    v8 = *(a1 + 632) != 1 || a3 == 0;
    if (v8 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return v7;
    }
  }

  else
  {
    PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(v11);
  }

  v10 = PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(v11);
  return PSShbufferGroupWriter::getAllWriteBuffers(v10);
}

uint64_t PSShbufferGroupWriter::getAllWriteBuffers(PSShbufferGroupWriter *this)
{
  result = *(this + 80);
  if (!result)
  {
    v6 = v1;
    v7 = v2;
    v4 = PSShbufferGroupWriter::getAllWriteBuffers(v5);
    return PSShbufferGroupWriter::broadcastBuffers(v4);
  }

  return result;
}

PSSharedSyncObject *PSShbufferGroupWriter::broadcastBuffers(PSShbufferGroupWriter *this)
{
  result = *(this + 82);
  if (result)
  {
    return PSSharedSyncObject::broadcastSignal(result, 0);
  }

  return result;
}

uint64_t PSShbufferGroupWriter::incrementWriteIndex(PSShbufferGroupWriter *this)
{
  if (*(this + 632) == 1 && (PSSharedSyncObject::lock(*(this + 82)) & 1) == 0)
  {
    PSShbufferGroupWriter::incrementWriteIndex(&v6);
  }

  else
  {
    if (*(this + 592) == 1)
    {
      v6 = 0;
      v2 = (*(**(this + 75) + 176))(*(this + 75), &v6);
    }

    else
    {
      v2 = (*(**(this + 73) + 96))(*(this + 73));
    }

    v3 = v2;
    if (*(this + 632) != 1 || (PSSharedSyncObject::unlock(*(this + 82)) & 1) != 0)
    {
      return v3;
    }
  }

  v5 = PSShbufferGroupWriter::incrementWriteIndex(&v6);
  return PSShbufferGroupWriter::finalizeSetup(v5);
}

uint64_t PSShbufferGroupWriter::finalizeSetup(PSShbufferGroupWriter *this)
{
  PSShbufferGroup::finalizeSetup(this);
  PSShbufferGroup::updateResourceFactoryStatus(this);
  *(this + 652) = 1;
  return 0;
}

uint64_t PSShbufferGroupWriter::finalizeSetupStatus(PSShbufferGroupWriter *this)
{
  PSShbufferGroup::updateResourceFactoryStatus(this);
  getpid();
  if (PSShbufferGroup::registerBufferGroup(this) != 13)
  {
    return 0;
  }

  v3 = PSShbufferGroupWriter::finalizeSetupStatus(v4, this);
  return PSShbufferGroupWriter::broadcastBuffers(v3);
}

PSSharedSyncObject *PSShbufferGroupWriter::broadcastBuffers(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 656);
  if (result)
  {
    if (*(a1 + 592))
    {
      return PSSharedSyncObject::broadcastSignalAtomicTags(result, a2);
    }

    else
    {
      return PSSharedSyncObject::broadcastSignal(result, a2);
    }
  }

  return result;
}

PSShbufferGroupWriter *PSShbufferGroupWriter::_requestShbufferGroupList(PSShbufferGroupWriter *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v60 = *MEMORY[0x277D85DE8];
  bzero(v55, 0x888uLL);
  strlcpy(v56, (v11 + 16), 0x200uLL);
  v59 = 0x1000000012;
  v57 = 20;
  v58 &= ~1u;
  PSCommsClient::send_wait(*(v11 + 8), v55, 0x888u, &v48, 0x898u, 0);
  if (PSCommsClient::is_valid_simple_message(&v48) && PSCommsClient::isAck(v55, &v48.msgh_bits))
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v40 = "SHBUFFERGROUPWRITER";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: requestShbufferGroupList Failed. This is fine because we are the writer and when noone created the key, we will have to be the one's to create it\n", buf, 0xCu);
    }

    v13 = 0;
LABEL_17:
    v24 = *MEMORY[0x277D85DE8];
    return v13;
  }

  if (PSCommsClient::is_valid_ool_message(&v48))
  {
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v40 = "SHBUFFERGROUPWRITER";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: requestShbufferGroupList SUCCESS\n", buf, 0xCu);
    }

    if (v49 == 1)
    {
      v13 = v50;
      v15 = v52;
      *v10 = v53;
      *v8 = v54;
      *v6 = v15;
      v16 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v17 = *v10;
        *buf = 136315394;
        v40 = "SHBUFFERGROUPWRITER";
        v41 = 1024;
        v42 = v17;
        _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: Found (%d) shbufflets\n", buf, 0x12u);
      }

      v18 = *v10;
      if (v18)
      {
        v19 = 0;
        v20 = _ps_buffer_log;
        v21 = (v13 + 4);
        do
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v22 = *(v21 - 1);
            v23 = *v21;
            *buf = 136315906;
            v40 = "SHBUFFERGROUPWRITER";
            v41 = 1024;
            v42 = v19;
            v43 = 1024;
            *v44 = v22;
            *&v44[4] = 1024;
            *&v44[6] = v23;
            _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, "%s: Resource (%d) type: (%d) id(%d)\n", buf, 0x1Eu);
            v20 = _ps_buffer_log;
            v18 = *v10;
          }

          ++v19;
          v21 += 2;
        }

        while (v19 < v18);
      }

      goto LABEL_17;
    }

    v38 = 0;
    asprintf(&v38, "Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", v56, v49);
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v40 = "_requestShbufferGroupList";
      v41 = 1024;
      v42 = 761;
      v43 = 2080;
      *v44 = v56;
      *&v44[8] = 1024;
      *v45 = v49;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_FAULT, "%s:%d Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", buf, 0x22u);
    }

    v31 = OSLogFlushBuffers();
    if (!v31)
    {
      goto LABEL_26;
    }

    v28 = v31;
    v29 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v38 = 0;
  asprintf(&v38, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v48.msgh_bits & 0x80000000, v49, v51, (v11 + 16));
  v26 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316418;
    v40 = "_requestShbufferGroupList";
    v41 = 1024;
    v42 = 751;
    v43 = 1024;
    *v44 = v48.msgh_bits & 0x80000000;
    *&v44[4] = 1024;
    *&v44[6] = v49;
    *v45 = 1024;
    *&v45[2] = v51;
    v46 = 2080;
    v47 = v11 + 16;
    _os_log_impl(&dword_25EBC5000, v26, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
  }

  v27 = OSLogFlushBuffers();
  if (!v27)
  {
LABEL_26:
    usleep(0x1E8480u);
    goto LABEL_29;
  }

  v28 = v27;
  v29 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_28:
    *buf = 136315394;
    v40 = "_requestShbufferGroupList";
    v41 = 1024;
    v42 = v28;
    _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
  }

LABEL_29:
  v32 = abort_with_reason();
  return PSShbufferGroupWriter::PSShbufferGroupWriter(v32, v33, v34, v35, v36, v37);
}

uint64_t PSShbufferGroupWriter::deallocateBufferSyncContextObject(PSShbufferGroupWriter *this)
{
  v1 = *(this + 83);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

void PSShbufferGroupWriter::~PSShbufferGroupWriter(PSShbufferGroupWriter *this)
{
  v10 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CC6D0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "SHBUFFERGROUPWRITER";
    v8 = 2080;
    v9 = this + 16;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s: Setting status to DEINITIALIZING... %s\n", &v6, 0x16u);
  }

  v3 = *(this + 82);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 82) = 0;
  }

  PSShbufferGroup::deallocate(this);
  getpid();
  PSShbufferGroup::unregisterBufferGroup(this);
  *this = &unk_2870CC610;
  v4 = *(this + 76);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  PSSharedResource::~PSSharedResource(this);
  v5 = *MEMORY[0x277D85DE8];
}

{
  PSShbufferGroupWriter::~PSShbufferGroupWriter(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBCD820(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return abort_with_reason();
}

BOOL OUTLINED_FUNCTION_6_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x18u);
}

void OUTLINED_FUNCTION_15(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x22u);
}

uint64_t PSBufferServiceManager::sharedInstance(PSBufferServiceManager *this)
{
  if (!bufferService)
  {
    operator new();
  }

  return bufferService;
}

void PSBufferServiceManager::~PSBufferServiceManager(PSBufferServiceManager *this)
{
  *this = &unk_2870CC730;
  if (bufferService)
  {
    (*(*bufferService + 8))(bufferService);
    bufferService = 0;
  }
}

{
  *this = &unk_2870CC730;
  if (bufferService)
  {
    (*(*bufferService + 8))(bufferService);
    bufferService = 0;
  }

  JUMPOUT(0x25F8CA500);
}

void sub_25EBCDB7C(_Unwind_Exception *a1)
{
  PSBufferService::AtomicDeque::AtomicDeque(v1 + 71);
  PSSharedResource::~PSSharedResource(v1);
  _Unwind_Resume(a1);
}

void PSBufferService::PSLocklessBufferSelector::~PSLocklessBufferSelector(PSBufferService::PSLocklessBufferSelector *this)
{
  *this = &unk_2870CC760;
  *(this + 560) = 0;
  v2 = *(this + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PSBufferService::LocklessViewReaper::~LocklessViewReaper((this + 600));
  PSBufferService::AtomicDeque::AtomicDeque(this + 71);

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSBufferService::PSLocklessBufferSelector::Create(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = ((*(a1 + 4) + *a1) << 7) + 65052;
  v1 = *(a1 + 48);
  switch(v1)
  {
    case 2:
      v4 = *(a1 + 32);
      std::allocate_shared[abi:ne200100]<PSSharedSerialDataWriter,std::allocator<PSSharedSerialDataWriter>,char const* const&,unsigned int const&,unsigned int const&,unsigned int &,int,unsigned int const&,unsigned int const&,char *,0>();
    case 1:
      v5 = *(a1 + 46) ^ 1;
      std::allocate_shared[abi:ne200100]<PSSharedSerialDataWriter,std::allocator<PSSharedSerialDataWriter>,char const* const&,unsigned int const&,BOOL &,char const* const&,0>();
    case 0:
      std::allocate_shared[abi:ne200100]<PSSharedSerialDataReader,std::allocator<PSSharedSerialDataReader>,char const* const&,unsigned int const&,BOOL const&,char const* const&,0>();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 3;
}

void sub_25EBCE060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourcewithBufferID(PSBufferService::PSLocklessBufferSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSBufferService::PSLocklessBufferSelector::getResourcewithBufferID(int)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResource(PSBufferService::PSLocklessBufferSelector *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::getResource()");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v11 = "getResource";
    v12 = 1024;
    v13 = 128;
    v14 = 2080;
    v15 = "virtual int PSBufferService::PSLocklessBufferSelector::getResource()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "getResource";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::relinquishResource(v5, v6, v7);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSBufferService::PSLocklessBufferSelector::getResource(uint32_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::relinquishResource(PSBufferService::PSLocklessBufferSelector *this, int a2, unsigned __int16 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0;
  asprintf(&v11, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResource(int, uint16_t *)");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v13 = "relinquishResource";
    v14 = 1024;
    v15 = 134;
    v16 = 2080;
    v17 = "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResource(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "relinquishResource";
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(v7, v8, v9);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResource(int, uint16_t *, uint32_t)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(PSBufferService::PSLocklessBufferSelector *this, int a2, unsigned __int16 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0;
  asprintf(&v10, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v12 = "relinquishResourceWithoutWriteIndexIncrement";
    v13 = 1024;
    v14 = 140;
    v15 = 2080;
    v16 = "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "relinquishResourceWithoutWriteIndexIncrement";
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(v7, v8);
}

uint64_t PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(PSBufferService::PSLocklessBufferSelector *this, unint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(uint64_t &)");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v11 = "incrementWriteIndex";
    v12 = 1024;
    v13 = 146;
    v14 = 2080;
    v15 = "virtual int PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(uint64_t &)";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "incrementWriteIndex";
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::getResource(v6, v7);
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourceWithBufferID(PSBufferService::PSLocklessBufferSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSBufferService::PSLocklessBufferSelector::getResourceWithBufferID(int, uint32_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourceLastN(PSBufferService::PSLocklessBufferSelector *this, unsigned int a2, int *a3, unint64_t a4, unsigned int *a5, unint64_t *a6, unint64_t *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  asprintf(&v20, "%s Non Implemented virtual function called", "virtual void PSBufferService::PSLocklessBufferSelector::getResourceLastN(uint32_t, int *, uint64_t, uint32_t *, uint64_t *, uint64_t *)");
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v22 = "getResourceLastN";
    v23 = 1024;
    v24 = 171;
    v25 = 2080;
    v26 = "virtual void PSBufferService::PSLocklessBufferSelector::getResourceLastN(uint32_t, int *, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "getResourceLastN";
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v11 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(PSBufferService::PSLocklessBufferSelector *this, unsigned int a2, int *a3, unint64_t a4, unint64_t a5, unsigned int *a6, unint64_t *a7, unint64_t *a8)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0;
  asprintf(&v17, "%s Non Implemented virtual function called", "virtual void PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(uint32_t, int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)");
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v19 = "getResourceSinceLast";
    v20 = 1024;
    v21 = 182;
    v22 = 2080;
    v23 = "virtual void PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(uint32_t, int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "getResourceSinceLast";
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v12 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::relinquishResource(v12, v13, v14, v15);
}

uint64_t PSBufferService::PSLocklessBufferSelector::addReader(PSBufferService::PSLocklessBufferSelector *this, unsigned int a2, unsigned int *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "virtual PBSResult PSBufferService::PSLocklessBufferSelector::addReader(uint32_t, uint32_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t PSBufferService::PSLocklessBufferSelector::removeReader(PSBufferService::PSLocklessBufferSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual PBSResult PSBufferService::PSLocklessBufferSelector::removeReader(uint32_t, uint32_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t PSBufferService::PSLocklessBufferSelector::checkAVAViewCount(uint64_t a1, unsigned int a2)
{
  _X2 = 0;
  _X3 = 0;
  v4 = *(a1 + 584);
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v9 = v45;
  do
  {
    _X7 = v46;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v9;
    v9 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v15 = v43;
  do
  {
    _X7 = v44;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v15;
    v15 = _X6;
  }

  while (!_ZF);
  if (_X2)
  {
    return 0;
  }

  while (1)
  {
    v19 = *(a1 + 584);
    if (*(v19 + 144))
    {
      v20 = 0;
      v21 = 0;
      do
      {
        _X2 = 0;
        v23 = *(a1 + 592) + (v20 << 7) + 16;
        _X3 = 0;
        __asm { CASPAL          X2, X3, X2, X3, [X15] }

        v26 = v42[0];
        do
        {
          _X7 = v42[1];
          __asm { CASPAL          X6, X7, X2, X3, [X12] }

          _ZF = _X6 == v26;
          v26 = _X6;
        }

        while (!_ZF);
        _ZF = (*(v42 + a2) & 0x7C00) != 0 || (*(v42 + a2) & 7) == 1;
        if (_ZF)
        {
          ++v21;
        }

        ++v20;
        v19 = *(a1 + 584);
      }

      while (v20 < *(v19 + 144));
    }

    else
    {
      v21 = 0;
    }

    v30 = *(v19 + 32 + 32 * a2);
    if (v30 <= v21)
    {
      break;
    }

    _X2 = 0;
    _X3 = 0;
    LOBYTE(v43) = v30 - v21;
    __asm { CASPAL          X2, X3, X2, X3, [X10] }

    _X5 = v46;
    __asm { CASPAL          X4, X5, X2, X3, [X13] }

    if (_X4 != v45)
    {
      _X2 = 0;
      v45 = _X4;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X11] }

      v39 = v43;
      do
      {
        _X7 = v44;
        __asm { CASPAL          X6, X7, X2, X3, [X10] }

        _ZF = _X6 == v39;
        v39 = _X6;
      }

      while (!_ZF);
      if (!_X2)
      {
        continue;
      }
    }

    return 0;
  }

  return 2;
}

uint64_t PSBufferService::PSLocklessBufferSelector::getReaderResource(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int *a5, uint64_t a6, int a7)
{
  v9 = a2;
  v132 = *MEMORY[0x277D85DE8];
  if (PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 1, *(*(a1 + 592) + (a2 << 7)), *(a1 + 624)))
  {
    v11 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136315394;
    Key = PSSharedResource::getKey(a1);
    v126 = 1024;
    LODWORD(v127) = a3;
    v12 = " [key=%s] Failed to set state for memdesc for readerID %ul";
    v13 = v11;
    v14 = 18;
    goto LABEL_4;
  }

  v116 = a5;
  _X0 = 0;
  _X1 = 0;
  v19 = *(a1 + 592);
  v119 = v9;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v24 = v122;
  do
  {
    _X5 = v123;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v24;
    v24 = _X4;
  }

  while (!_ZF);
  _X26 = 0;
  _X20 = 0;
  v117 = v9 << 7;
  while (1)
  {
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X28] }

    v31 = v120;
    do
    {
      _X5 = v121;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v31;
      v31 = _X4;
    }

    while (!_ZF);
    v121 = 1 << a3;
    v34 = *(a1 + 624);
    v35 = v9;
    SetBit = PSBufferService::AtomicPoolAccountant::GetSetBit(*(a1 + 584), v9);
    v37 = *(a1 + 624);
    v38 = *(&v122 + v37) & 7;
    if (v38 == 3)
    {
      break;
    }

    if (v38 != 1)
    {
      v76 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v77 = PSSharedResource::getKey(a1);
      v78 = *(&v122 + *(a1 + 624)) & 7;
      *buf = 136315650;
      Key = "int PSBufferService::PSLocklessBufferSelector::getReaderResource(int, uint32_t, AVACriticality, uint32_t *, uint32_t, BOOL)";
      v126 = 2080;
      v127 = v77;
      v128 = 1024;
      v129 = v78;
      v12 = "%s [key=%s] Buffer state invalid for Reading, state=%d";
      v13 = v76;
      v14 = 28;
LABEL_4:
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_5;
    }

    if (!a7)
    {
      goto LABEL_29;
    }

    PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 3, *(*(a1 + 592) + v117), v37);
    v39 = *(a1 + 624);
    *(&v120 + v39) = (*(&v120 + v39) + 8) & 0x3F8 | *(&v120 + v39) & 0xFC07;
    v40 = ((HIWORD(v120) & 0xFFC0) + 64);
    HIWORD(v120) = ((HIWORD(v120) & 0xFFC0) + 64) & 0xFFC0 | BYTE6(v120) & 0x3F;
    _ZF = (*(&v120 + v39) & 0x3F8) == 0 || v40 == 0;
    if (_ZF)
    {
      PSBufferService::PSLocklessBufferSelector::getReaderResource(buf);
LABEL_72:
      PSBufferService::PSLocklessBufferSelector::getReaderResource(buf);
    }

    v42 = *(a1 + 592) + (v119 << 7) + 16;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X26, X27, [X25] }

    _X1 = v123;
    __asm { CASPAL          X0, X1, X2, X3, [X8] }

    if (_X0 == v122)
    {
      v110 = v117;
      v109 = a3;
      v111 = *(*(a1 + 592) + v117);
      v112 = *(a1 + 624);
      v113 = a1 + 600;
      v114 = 4;
LABEL_67:
      PSBufferService::LocklessViewReaper::setState(v113, v109, v114, v111, v112);
      result = *(*(a1 + 592) + v110);
      if (v116)
      {
        *v116 = HIWORD(v120) >> 6;
      }

      goto LABEL_6;
    }

LABEL_30:
    v122 = _X0;
    v123 = _X1;
  }

  v47 = SetBit;
  PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 1, *(*(a1 + 592) + v117), v37);
  v48 = *(a1 + 624);
  if ((*(&v122 + v48) & 0x3C00) != 0)
  {
    if (!a7)
    {
      goto LABEL_29;
    }

    v49 = *(&v120 + v48);
    v50 = (v49 + 1024) & 0x3C00;
    v51 = v49 & 0xC3FF;
  }

  else
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_72;
    }

    v50 = *(&v120 + v48) & 0x43FF | (~v47 << 15);
    v51 = (*(&v120 + v48) + 1024) & 0x3C00;
  }

  *(&v120 + v48) = v50 | v51;
LABEL_29:
  v52 = *(a1 + 592) + (v119 << 7) + 16;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X20, X21, [X25] }

  _X1 = v123;
  __asm { CASPAL          X0, X1, X2, X3, [X8] }

  v9 = v35;
  if (_X0 != v122)
  {
    goto LABEL_30;
  }

  PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 2, *(*(a1 + 592) + v117), *(a1 + 624));
  v55 = *(&v120 + *(a1 + 624)) >> 15;
  v56 = PSBufferService::AtomicPoolAccountant::DecrementPoolCount(*(a1 + 584), v55, v35);
  if (v56 != 2)
  {
    goto LABEL_34;
  }

  if (PSBufferService::PSLocklessBufferSelector::checkAVAViewCount(a1, *(a1 + 624)))
  {
    goto LABEL_35;
  }

  v57 = *(a1 + 624);
  v56 = PSBufferService::AtomicPoolAccountant::DecrementPoolCount(*(a1 + 584), v55, v35);
LABEL_34:
  if ((v56 & 0xFFFFFFFE) == 2)
  {
LABEL_35:
    PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 5, *(*(a1 + 592) + v117), *(a1 + 624));
    _X0 = 0;
    _X1 = 0;
    v60 = *(a1 + 592);
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v62 = v122;
    do
    {
      _X5 = v123;
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v62;
      v62 = _X4;
    }

    while (!_ZF);
    _X0 = 0;
    while (1)
    {
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X9] }

      v68 = v120;
      do
      {
        _X7 = v121;
        __asm { CASPAL          X6, X7, X2, X3, [X10] }

        _ZF = _X6 == v68;
        v68 = _X6;
      }

      while (!_ZF);
      *(&v120 + *(a1 + 624)) = (*(&v120 + *(a1 + 624)) + 15360) & 0x3C00 | *(&v120 + *(a1 + 624)) & 0xC3FF;
      v121 &= ~(1 << a3);
      v71 = *(a1 + 592) + (v119 << 7) + 16;
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X10] }

      _X3 = v123;
      __asm { CASPAL          X2, X3, X4, X5, [X12] }

      if (_X2 == v122)
      {
        break;
      }

      v122 = _X2;
    }

    v79 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v80 = PSSharedResource::getKey(a1);
      *buf = 136315906;
      Key = "int PSBufferService::PSLocklessBufferSelector::getReaderResource(int, uint32_t, AVACriticality, uint32_t *, uint32_t, BOOL)";
      v126 = 2080;
      v127 = v80;
      v128 = 1024;
      v129 = v35;
      v130 = 1024;
      v131 = a3;
      _os_log_impl(&dword_25EBC5000, v79, OS_LOG_TYPE_ERROR, "%s [key=%s] Out of views for this reader for buff_id=%d reader_id=%d!", buf, 0x22u);
    }

    result = 4294967294;
    goto LABEL_6;
  }

  PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 7, *(*(a1 + 592) + v117), *(a1 + 624));
  _X0 = 0;
  _X1 = 0;
  v83 = *(a1 + 592);
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v85 = v122;
  do
  {
    _X5 = v123;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v85;
    v85 = _X4;
  }

  while (!_ZF);
  _X20 = 0;
  _X24 = 0;
  while (2)
  {
    _X1 = 0;
    __asm { CASPAL          X0, X1, X24, X25, [X23] }

    v92 = v120;
    do
    {
      _X5 = v121;
      __asm { CASPAL          X4, X5, X0, X1, [X26] }

      _ZF = _X4 == v92;
      v92 = _X4;
    }

    while (!_ZF);
    v121 = 0;
    v95 = *(a1 + 624);
    v96 = *(&v122 + v95) & 7;
    if (v96 > 1)
    {
      if (v96 != 2)
      {
        if (v96 != 3)
        {
LABEL_73:
          abort();
        }

        PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 7, *(*(a1 + 592) + v117), v95);
        v97 = *(a1 + 624);
        v98 = *(&v120 + v97) & 0xC000 | ((*(&v120 + v97) & 0x3FF8) + 15361) & 0x3C00 | ((*(&v120 + v97) & 0x3F8) + 9) & 0x3F8 | 1;
        goto LABEL_63;
      }
    }

    else if ((*(&v122 + v95) & 7) != 0)
    {
      if (v96 != 1)
      {
        goto LABEL_73;
      }

      PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 7, *(*(a1 + 592) + v117), v95);
      v97 = *(a1 + 624);
      v98 = (*(&v120 + v97) + 15360) & 0x3C00 | *(&v120 + v97) & 0xC007 | (*(&v120 + v97) + 8) & 0x3F8;
LABEL_63:
      *(&v120 + v97) = v98;
      HIWORD(v120) += 64;
      v99 = *(a1 + 592) + (v119 << 7) + 16;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X20, X21, [X26] }

      _X1 = v123;
      __asm { CASPAL          X0, X1, X2, X3, [X8] }

      if (_X0 == v122)
      {
        v110 = v117;
        v109 = a3;
        v111 = *(*(a1 + 592) + v117);
        v112 = *(a1 + 624);
        v113 = a1 + 600;
        v114 = 8;
        goto LABEL_67;
      }

LABEL_66:
      v122 = _X0;
      v123 = _X1;
      continue;
    }

    break;
  }

  PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 6, *(*(a1 + 592) + v117), v95);
  v104 = *(a1 + 624);
  v105 = *(&v120 + v104);
  *(&v120 + v104) = (v105 + 15360) & 0x3C00 | v105 & 0xC3FF;
  v106 = *(a1 + 592) + (v119 << 7) + 16;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X24, X25, [X26] }

  _X1 = v123;
  __asm { CASPAL          X0, X1, X2, X3, [X9] }

  if (_X0 != v122)
  {
    goto LABEL_66;
  }

  if (((v105 + 15360) & 0x3C00) == 0)
  {
    v115 = *(a1 + 624);
    PSBufferService::AtomicPoolAccountant::IncrementPoolCount(*(a1 + 584));
  }

LABEL_5:
  result = 0xFFFFFFFFLL;
LABEL_6:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(uint64_t a1, unsigned int a2, _WORD *a3, unsigned int a4, unsigned int a5)
{
  v125 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(a1 + 552) <= a2)
  {
    v60 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v116 = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
      v117 = 2080;
      *v118 = PSSharedResource::getKey(a1);
      *&v118[8] = 1024;
      *&v118[10] = a2;
      _os_log_impl(&dword_25EBC5000, v60, OS_LOG_TYPE_ERROR, "%s [key=%s] Buffer Id invalid %d", buf, 0x1Cu);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_61;
  }

  _X10 = 0;
  _X11 = 0;
  v10 = *(a1 + 592);
  v109 = a2;
  __asm { CASPAL          X10, X11, X10, X11, [X8] }

  v15 = v113;
  do
  {
    _X5 = v114;
    __asm { CASPAL          X4, X5, X10, X11, [X8] }

    _ZF = _X4 == v15;
    v15 = _X4;
  }

  while (!_ZF);
  _X10 = 0;
  _X11 = 0;
  __asm { CASPAL          X10, X11, X10, X11, [X8] }

  v21 = v111;
  do
  {
    _X5 = v112;
    __asm { CASPAL          X4, X5, X10, X11, [X8] }

    _ZF = _X4 == v21;
    v21 = _X4;
  }

  while (!_ZF);
  v24 = *(&v113 + a5) & 7;
  if (v24 != 1)
  {
    v110 = 0;
    Key = PSSharedResource::getKey(a1);
    asprintf(&v110, "%s [key=%s] Trying to release a Buffer which is not in Reading %d state %d", "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)", Key, a2, v24);
    v87 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v88 = PSSharedResource::getKey(a1);
      v89 = *(&v113 + a5) & 7;
      *buf = 136316418;
      v116 = "relinquishReaderResource";
      v117 = 1024;
      *v118 = 598;
      *&v118[4] = 2080;
      *&v118[6] = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
      v119 = 2080;
      v120 = v88;
      v121 = 1024;
      v122 = a2;
      v123 = 1024;
      v124 = v89;
      _os_log_impl(&dword_25EBC5000, v87, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to release a Buffer which is not in Reading %d state %d", buf, 0x32u);
    }

    v90 = OSLogFlushBuffers();
    if (!v90)
    {
      goto LABEL_75;
    }

    v91 = v90;
    v92 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  v105 = (a1 + 584);
  v107 = a2 << 7;
  PSBufferService::LocklessViewReaper::setState(a1 + 600, a4, 9, *(*(a1 + 592) + v107), a5);
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v29 = v113;
  do
  {
    _X5 = v114;
    __asm { CASPAL          X4, X5, X0, X1, [X20] }

    _ZF = _X4 == v29;
    v29 = _X4;
  }

  while (!_ZF);
  _X22 = 0;
  v33 = 1 << a4;
  v34 = a1;
  while (1)
  {
    _X26 = 0;
    _X27 = 0;
    __asm { CASPAL          X26, X27, X26, X27, [X28] }

    v38 = v111;
    do
    {
      _X3 = v112;
      __asm { CASPAL          X2, X3, X26, X27, [X24] }

      _ZF = _X2 == v38;
      v38 = _X2;
    }

    while (!_ZF);
    v112 = v33;
    v41 = *(&v113 + a5);
    v108 = v41 & 0x3FF8;
    if (v108 == 8)
    {
      v42 = v33;
      v43 = (_X26 & 0x20000000000000) == 0;
      v44 = *(*(v34 + 74) + v107);
      if ((_X26 & 0x20000000000000) != 0)
      {
        PSBufferService::LocklessViewReaper::setState(a1 + 600, a4, 11, v44, a5);
        HIWORD(v111) = HIWORD(_X26) & 0xFFDF;
        LODWORD(v111) = _X26 & 0xFFF8FFF8;
        v34 = a1;
        WORD2(v111) = WORD2(_X26) & 0xFFF8;
        v46 = *(&v111 + a5);
      }

      else
      {
        v45 = v34;
        PSBufferService::LocklessViewReaper::setState(v34 + 600, a4, 10, v44, a5);
        v34 = v45;
        v46 = *(&v111 + a5) & 0xBFF8 | 0x4003;
      }

      LOWORD(v51) = v46 & 0xFC07;
      v49 = (_X26 & 0x20000000000000) == 0;
      v52 = v43;
      v33 = v42;
      goto LABEL_30;
    }

    _ZF = (*(&v113 + a5) & 0x3C00) != 0 && (v41 & 0x3F8) == 8;
    if (_ZF)
    {
      v53 = v34;
      PSBufferService::LocklessViewReaper::setState(v34 + 600, a4, 9, *(*(v34 + 74) + v107), a5);
      v34 = v53;
      v49 = 0;
      LOWORD(v51) = *(&v111 + a5) & 0xFC07;
      goto LABEL_29;
    }

    if ((*(&v113 + a5) & 0x3F0) != 0)
    {
      v48 = v34;
      PSBufferService::LocklessViewReaper::setState(v34 + 600, a4, 9, *(*(v34 + 74) + v107), a5);
      v34 = v48;
      v49 = 0;
      v50 = *(&v111 + a5);
      v51 = v50 & 0xFFFFFC07 | (8 * (((v50 + 1016) >> 3) & 0x7F));
LABEL_29:
      v52 = 1;
LABEL_30:
      *(&v111 + a5) = v51;
      HIWORD(v111) -= 64;
      goto LABEL_31;
    }

    v49 = 0;
    v52 = 1;
LABEL_31:
    v54 = *(v34 + 74) + (v109 << 7) + 16;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X22, X23, [X24] }

    _X1 = v114;
    __asm { CASPAL          X0, X1, X2, X3, [X9] }

    if (_X0 == v113)
    {
      break;
    }

    v113 = _X0;
  }

  if (HIWORD(v111) > 0x3Fu)
  {
    v52 = 1;
  }

  if (v52)
  {
LABEL_42:
    if (v108 == 8)
    {
      v64 = v34;
      PSBufferService::AtomicPoolAccountant::IncrementPoolCount(*v105);
      v34 = v64;
    }

    if (v49)
    {
      v65 = 12;
    }

    else
    {
      v65 = 13;
    }

    v66 = v34;
    PSBufferService::LocklessViewReaper::setState(v34 + 600, a4, v65, *(*(v34 + 74) + v107), a5);
    _X0 = 0;
    _X1 = 0;
    v69 = *(v66 + 74);
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v71 = v113;
    do
    {
      _X5 = v114;
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v71;
      v71 = _X4;
    }

    while (!_ZF);
    _X0 = 0;
    while (1)
    {
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X9] }

      v77 = v111;
      do
      {
        _X7 = v112;
        __asm { CASPAL          X6, X7, X2, X3, [X10] }

        _ZF = _X6 == v77;
        v77 = _X6;
      }

      while (!_ZF);
      v112 = 0;
      if (v49)
      {
        *(&v111 + a5) &= ~0x4000u;
      }

      v80 = *(v66 + 74) + (v109 << 7) + 16;
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X10] }

      _X3 = v114;
      __asm { CASPAL          X2, X3, X4, X5, [X11] }

      if (_X2 == v113)
      {
        break;
      }

      v113 = _X2;
    }

    if (a3)
    {
      *a3 = HIWORD(v111) >> 6;
    }

    result = 0;
LABEL_61:
    v85 = *MEMORY[0x277D85DE8];
    return result;
  }

  v62 = v34;
  v63 = PSBufferService::MemDescPool::AddMemDescToFreePool(v105, a2);
  if (v63 == 1)
  {
    v110 = 0;
    v93 = PSSharedResource::getKey(v62);
    asprintf(&v110, "%s [key=%s] Failed to release memdesc id: %d to free pool in function. Memdesc ID is already free!", "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)", v93, a2);
    v94 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v95 = PSSharedResource::getKey(a1);
      *buf = 136316162;
      v116 = "relinquishReaderResource";
      v117 = 1024;
      *v118 = 693;
      *&v118[4] = 2080;
      *&v118[6] = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
      v119 = 2080;
      v120 = v95;
      v121 = 1024;
      v122 = a2;
      _os_log_impl(&dword_25EBC5000, v94, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to release memdesc id: %d to free pool in function. Memdesc ID is already free!", buf, 0x2Cu);
    }

    v96 = OSLogFlushBuffers();
    if (!v96)
    {
      goto LABEL_75;
    }

    v91 = v96;
    v92 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_77;
    }
  }

  else
  {
    v34 = v62;
    if (v63 != 3)
    {
      goto LABEL_42;
    }

    v110 = 0;
    v97 = PSSharedResource::getKey(v62);
    asprintf(&v110, "%s [key=%s] Failed to release memdesc id: %d to free pool in function. Invalid Parameters! NumMemDescNodes: %d", "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)", v97, a2, *(v62 + 138));
    v98 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v99 = PSSharedResource::getKey(a1);
      v100 = *(a1 + 552);
      *buf = 136316418;
      v116 = "relinquishReaderResource";
      v117 = 1024;
      *v118 = 688;
      *&v118[4] = 2080;
      *&v118[6] = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
      v119 = 2080;
      v120 = v99;
      v121 = 1024;
      v122 = a2;
      v123 = 1024;
      v124 = v100;
      _os_log_impl(&dword_25EBC5000, v98, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to release memdesc id: %d to free pool in function. Invalid Parameters! NumMemDescNodes: %d", buf, 0x32u);
    }

    v101 = OSLogFlushBuffers();
    if (!v101)
    {
LABEL_75:
      usleep(0x1E8480u);
      goto LABEL_78;
    }

    v91 = v101;
    v92 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_77:
      *buf = 136315394;
      v116 = "relinquishReaderResource";
      v117 = 1024;
      *v118 = v91;
      _os_log_impl(&dword_25EBC5000, v92, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

LABEL_78:
  v102 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelectorWriter::Initialize(v102);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::Initialize(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(this + 560))
  {
    v1 = 2;
    goto LABEL_13;
  }

  Data = PSSharedSerialData::getData(*(this + 79));
  v4 = PSBufferService::AtomicDeque::InitializeIntoRawBuffer((this + 568), (Data + 256), *(this + 139));
  if (v4)
  {
    v1 = v4;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = (Data + (*(this + 139) << 7) + 384);
  v7 = PSBufferService::MemDescPool::InitializeIntoRawBuffer((this + 584), v6, *(this + 138));
  if (v7)
  {
    v1 = v7;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    v8 = "%s [key=%s] Failed to initialize memory descriptor";
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
    goto LABEL_13;
  }

  v9 = *(this + 139);
  v10 = PSBufferService::LocklessViewReaper::InitializeIntoRawBuffer((this + 600), &v6[128 * *(this + 138) + 256]);
  if (v10)
  {
    v1 = v10;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

LABEL_11:
    *buf = 136315394;
    *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    v8 = "%s [key=%s] Failed to initialize AtomicDeque";
    goto LABEL_12;
  }

  v13 = *(this + 72);
  v24 = 0;
  if (*(this + 139))
  {
    v14 = 0;
    v15 = (v13 + 24);
    do
    {
      *buf = 0;
      *&buf[8] = 0;
      PSBufferService::MemDescPool::GetFreeMemDescFromPool((this + 584), &v24, buf, 0);
      v16 = v24;
      atomic_store(v24, v15);
      *(*(this + 74) + (v16 << 7) + 4) = v14++;
      v17 = *(this + 139);
      v15 += 32;
    }

    while (v14 < v17);
  }

  else
  {
    LODWORD(v17) = 0;
  }

  *&v23[4] = 0;
  v18 = *(this + 138);
  *v23 = v18 - v17;
  if (PSBufferService::AtomicPoolAccountant::Initialize(*(this + 73), v18, v23))
  {
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136315394;
      *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
      *&buf[12] = 2080;
      *&buf[14] = Key;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "%s [key=%s] Failed to initialize AVA structure", buf, 0x16u);
    }

    v1 = 0;
  }

  else if ((*(**(this + 79) + 96))(*(this + 79), 10))
  {
    v21 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v22 = PSSharedResource::getKey(this);
      *buf = 136315394;
      *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
      *&buf[12] = 2080;
      *&buf[14] = v22;
      _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, " [key=%s]Failed to initialize remote resource %s", buf, 0x16u);
    }

    v1 = 4;
  }

  else
  {
    v1 = 0;
    *(this + 560) = 1;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::InitializeFromRawBuffer(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 560))
  {
    v1 = 2;
    goto LABEL_13;
  }

  Data = PSSharedSerialData::getData(*(this + 79));
  v4 = PSBufferService::AtomicDeque::InitializeFromRawBuffer((this + 568), (Data + 256));
  if (v4)
  {
    v1 = v4;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::InitializeFromRawBuffer()";
    v15 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize AtomicDeque structure";
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v6, &v13, 0x16u);
    goto LABEL_13;
  }

  v7 = *(*(this + 71) + 32);
  *(this + 139) = v7;
  v8 = (Data + (v7 << 7) + 384);
  v9 = PSBufferService::MemDescPool::InitializeFromRawBuffer((this + 584), v8);
  if (v9)
  {
    v1 = v9;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v10 = *(*(this + 73) + 144);
  *(this + 138) = v10;
  v1 = PSBufferService::LocklessViewReaper::InitializeFromRawBuffer((this + 600), &v8[128 * v10 + 256]);
  if (!v1)
  {
    *(this + 560) = 1;
    goto LABEL_13;
  }

  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    v13 = 136315394;
    v14 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::InitializeFromRawBuffer()";
    v15 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize memory descriptor";
    goto LABEL_12;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::getResource(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  return PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(this, 0);
}

{
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v75 = 0;
  v4 = *(this + 561);
  v5 = (this + 568);
  if (v4 == 1)
  {
    if (PSBufferService::AtomicDeque::Dequeue(v5, &v75))
    {
      goto LABEL_3;
    }
  }

  else if (PSBufferService::AtomicDeque::GetNodeIdFromTail(v5, &v75))
  {
LABEL_3:
    abort();
  }

  _X0 = 0;
  _X1 = 0;
  v8 = atomic_load((*(this + 72) + (v75 << 7) + 24));
  v73 = 0;
  v74 = v8;
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v15 = v71;
  do
  {
    _X5 = v72;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v15;
    v15 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  while (1)
  {
    _X3 = 0;
    __asm { CASPAL          X2, X3, X0, X1, [X8] }

    v21 = v69;
    do
    {
      _X7 = v70;
      __asm { CASPAL          X6, X7, X2, X3, [X9] }

      _ZF = _X6 == v21;
      v21 = _X6;
    }

    while (!_ZF);
    if ((_X2 & 7) == 1 || (v24 = BYTE2(_X2) & 7, v24 == 1) || (v25 = BYTE4(_X2) & 7, v25 == 1))
    {
      HIWORD(v69) = HIWORD(_X2) | 0x20;
    }

    else
    {
      if ((_X2 & 7) == 2 || v24 == 2 || v25 == 2)
      {
        *&v68 = 0;
        Key = PSSharedResource::getKey(this);
        asprintf(&v68, "%s [key=%s] Trying to acquire memdesc already in WRITING!! %d %d", "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)", Key, v75, v8);
        v54 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v55 = PSSharedResource::getKey(this);
          *buf = 136316418;
          v77 = "getResourceInternal";
          v78 = 1024;
          *v79 = 944;
          *&v79[4] = 2080;
          *&v79[6] = "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)";
          v80 = 2080;
          *v81 = v55;
          *&v81[8] = 1024;
          *&v81[10] = v75;
          v82 = 1024;
          v83 = v8;
          _os_log_impl(&dword_25EBC5000, v54, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to acquire memdesc already in WRITING!! %d %d", buf, 0x32u);
        }

        v56 = OSLogFlushBuffers();
        if (v56)
        {
          v57 = v56;
          v58 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v77 = "getResourceInternal";
            v78 = 1024;
            *v79 = v57;
            _os_log_impl(&dword_25EBC5000, v58, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }

        else
        {
          usleep(0x1E8480u);
        }

LABEL_45:
        abort_with_reason();
      }

      LOWORD(v69) = _X2 & 0xFFF8 | 2;
      WORD1(v69) = WORD1(_X2) & 0xFFF8 | 2;
      WORD2(v69) = WORD2(_X2) & 0xFFF8 | 2;
    }

    v26 = *(this + 74) + (v8 << 7) + 16;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _X3 = v72;
    __asm { CASPAL          X2, X3, X4, X5, [X10] }

    if (_X2 == v71)
    {
      break;
    }

    v71 = _X2;
  }

  if ((v69 & 0x20000000000000) != 0)
  {
    v68 = 0uLL;
    v67 = 0uLL;
    if (PSBufferService::MemDescPool::ReadFreeMemDescFromPool((this + 584), &v74, &v68))
    {
      PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(buf, this);
    }

    else
    {
      _X2 = 0;
      _X3 = 0;
      v36 = *(this + 74);
      __asm { CASPAL          X2, X3, X2, X3, [X8] }

      v38 = v69;
      do
      {
        _X5 = v70;
        __asm { CASPAL          X4, X5, X2, X3, [X8] }

        _ZF = _X4 == v38;
        v38 = _X4;
      }

      while (!_ZF);
      _X0 = 0;
      _X1 = 0;
      LOWORD(v69) = _X2 & 0xFFF8 | 2;
      WORD1(v69) = WORD1(_X2) & 0xFFF8 | 2;
      WORD2(v69) = WORD2(_X2) & 0xFFF8 | 2;
      v43 = *(this + 74) + (v74 << 7);
      __asm { CASPAL          X0, X1, X0, X1, [X9] }

      v45 = *(v43 + 16);
      do
      {
        _X5 = *(v43 + 24);
        __asm { CASPAL          X4, X5, X0, X1, [X8] }

        _ZF = _X4 == v45;
        v45 = _X4;
      }

      while (!_ZF);
      if (a2 == 1)
      {
        goto LABEL_36;
      }

      if (!PSBufferService::MemDescPool::GetFreeMemDescFromPool((this + 584), &v73, &v67, &v74) && v73 == v74)
      {
        if (a2 != 2)
        {
          v49 = *(this + 74);
          *(v49 + (v8 << 7) + 4) = -1;
          v50 = v75;
          *(v49 + (v74 << 7) + 4) = v75;
          v51 = (*(this + 72) + (v50 << 7) + 24);
          v52 = v74;
          atomic_store(v74, v51);
          v31 = *(this + 74);
          v32 = v52 << 7;
          goto LABEL_24;
        }

LABEL_36:
        result = 0xFFFFFFFFLL;
        goto LABEL_37;
      }
    }

    v59 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v77 = *(&v68 + 1);
      v78 = 2048;
      *v79 = v68;
      _os_log_impl(&dword_25EBC5000, v59, OS_LOG_TYPE_ERROR, "free_array_on_read =%llx %llx", buf, 0x16u);
      v59 = _ps_buffer_log;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v77 = *(&v67 + 1);
      v78 = 2048;
      *v79 = v67;
      _os_log_impl(&dword_25EBC5000, v59, OS_LOG_TYPE_ERROR, "free_array_on_get =%llx %llx", buf, 0x16u);
    }

    v66 = 0;
    v60 = PSSharedResource::getKey(this);
    asprintf(&v66, "%s line=%d [key=%s] Failed to get a new memDesc from pool (checkId=%u newId=%u)", "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)", 1001, v60, v73, v74);
    v61 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v62 = PSSharedResource::getKey(this);
      *buf = 136316674;
      v77 = "getResourceInternal";
      v78 = 1024;
      *v79 = 1001;
      *&v79[4] = 2080;
      *&v79[6] = "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)";
      v80 = 1024;
      *v81 = 1001;
      *&v81[4] = 2080;
      *&v81[6] = v62;
      v82 = 1024;
      v83 = v73;
      v84 = 1024;
      v85 = v74;
      _os_log_impl(&dword_25EBC5000, v61, OS_LOG_TYPE_FAULT, "%s:%d %s line=%d [key=%s] Failed to get a new memDesc from pool (checkId=%u newId=%u)", buf, 0x38u);
    }

    v63 = OSLogFlushBuffers();
    if (v63)
    {
      v64 = v63;
      v65 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v77 = "getResourceInternal";
        v78 = 1024;
        *v79 = v64;
        _os_log_impl(&dword_25EBC5000, v65, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    goto LABEL_45;
  }

  v31 = *(this + 74);
  v32 = v8 << 7;
LABEL_24:
  result = *(v31 + v32);
LABEL_37:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 138) <= a2)
  {
    v34 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_22:
      result = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    *buf = 136315650;
    v55 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
    v56 = 2080;
    *v57 = PSSharedResource::getKey(this);
    *&v57[8] = 1024;
    *&v57[10] = a2;
    v35 = "%s [key=%s] Buffer Id invalid %d";
LABEL_21:
    _os_log_impl(&dword_25EBC5000, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x1Cu);
    goto LABEL_22;
  }

  v5 = *(*(this + 74) + (a2 << 7) + 4);
  if (v5 >= *(this + 139))
  {
    v34 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315650;
    v55 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
    v56 = 2080;
    *v57 = PSSharedResource::getKey(this);
    *&v57[8] = 1024;
    *&v57[10] = a2;
    v35 = "%s [key=%s] NodeId not owned by buff_id %d";
    goto LABEL_21;
  }

  _X0 = 0;
  _X1 = 0;
  v9 = atomic_load((*(this + 72) + (v5 << 7) + 24));
  v10 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v16 = v52[1];
  do
  {
    _X5 = v52[2];
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v16;
    v16 = _X4;
  }

  while (!_ZF);
  if ((_X0 & 7) == 2)
  {
    _X2 = 0;
    _X3 = 0;
    v21 = *(this + 74);
    __asm { CASPAL          X2, X3, X2, X3, [X9] }

    v23 = v53[0];
    do
    {
      _X5 = v53[1];
      __asm { CASPAL          X4, X5, X2, X3, [X9] }

      _ZF = _X4 == v23;
      v23 = _X4;
    }

    while (!_ZF);
    _X0 = 0;
    _X1 = 0;
    LOWORD(v53[0]) = _X2 & 0xFFF8 | 3;
    WORD1(v53[0]) = WORD1(_X2) & 0xFFF8 | 3;
    WORD2(v53[0]) = WORD2(_X2) & 0xFFF8 | 3;
    HIWORD(v53[0]) = HIWORD(_X2) & 0xFFE0 | (HIWORD(_X2) + 1) & 0x1F;
    v28 = *(this + 74) + (v9 << 7);
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v30 = *(v28 + 16);
    do
    {
      _X5 = *(v28 + 24);
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v30;
      v30 = _X4;
    }

    while (!_ZF);
    v52[0] = 0;
    if (*(this + 561) != 1)
    {
      (*(*this + 176))(this, v52, _X4);
      if (!a3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (!PSBufferService::AtomicDeque::Enqueue((this + 568), v5, v52))
    {
      if (!a3)
      {
LABEL_18:
        result = 0;
LABEL_23:
        v36 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_17:
      *a3 = 0;
      goto LABEL_18;
    }

    v51 = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(&v51, "%s [key=%s] Failed to Enqueue the nodeId %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)", Key, v5);
    v44 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v45 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v55 = "relinquishResource";
      v56 = 1024;
      *v57 = 1089;
      *&v57[4] = 2080;
      *&v57[6] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
      v58 = 2080;
      v59 = v45;
      v60 = 1024;
      v61 = v5;
      _os_log_impl(&dword_25EBC5000, v44, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to Enqueue the nodeId %d", buf, 0x2Cu);
    }

    v46 = OSLogFlushBuffers();
    if (v46)
    {
      v47 = v46;
      v48 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v55 = "relinquishResource";
        v56 = 1024;
        *v57 = v47;
        _os_log_impl(&dword_25EBC5000, v48, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }
  }

  else
  {
    v53[0] = 0;
    v37 = PSSharedResource::getKey(this);
    asprintf(v53, "%s [key=%s] Trying to relinquish Buffer that is not in Writing %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)", v37, a2);
    v38 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v39 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v55 = "relinquishResource";
      v56 = 1024;
      *v57 = 1067;
      *&v57[4] = 2080;
      *&v57[6] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
      v58 = 2080;
      v59 = v39;
      v60 = 1024;
      v61 = a2;
      _os_log_impl(&dword_25EBC5000, v38, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to relinquish Buffer that is not in Writing %d", buf, 0x2Cu);
    }

    v40 = OSLogFlushBuffers();
    if (v40)
    {
      v41 = v40;
      v42 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v55 = "relinquishResource";
        v56 = 1024;
        *v57 = v41;
        _os_log_impl(&dword_25EBC5000, v42, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }
  }

  v49 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(v49, v50);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(PSBufferService::PSLocklessBufferSelectorWriter *this, unint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0;
  if (!PSBufferService::AtomicDeque::Dequeue((this + 568), &v20))
  {
    if (!PSBufferService::AtomicDeque::Enqueue((this + 568), v20, a2))
    {
      v4 = *MEMORY[0x277D85DE8];
      return 0;
    }

    v19 = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(&v19, "%s [key=%s] Failed to Enqueue the nodeId %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)", Key, v20);
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v14 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v22 = "incrementWriteIndex";
      v23 = 1024;
      v24 = 1116;
      v25 = 2080;
      v26 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)";
      v27 = 2080;
      v28 = v14;
      v29 = 1024;
      v30 = v20;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to Enqueue the nodeId %d", buf, 0x2Cu);
    }

    v15 = OSLogFlushBuffers();
    if (!v15)
    {
      goto LABEL_12;
    }

    v10 = v15;
    v11 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = 0;
  v6 = PSSharedResource::getKey(this);
  asprintf(&v19, "%s [key=%s] Failed to Dequeue the nodeId %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)", v6, v20);
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = PSSharedResource::getKey(this);
    *buf = 136316162;
    v22 = "incrementWriteIndex";
    v23 = 1024;
    v24 = 1110;
    v25 = 2080;
    v26 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)";
    v27 = 2080;
    v28 = v8;
    v29 = 1024;
    v30 = v20;
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to Dequeue the nodeId %d", buf, 0x2Cu);
  }

  v9 = OSLogFlushBuffers();
  if (!v9)
  {
LABEL_12:
    usleep(0x1E8480u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    *buf = 136315394;
    v22 = "incrementWriteIndex";
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
  }

LABEL_15:
  v16 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(v16, v17, v18);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 138) <= a2)
  {
    v33 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      result = 0xFFFFFFFFLL;
LABEL_21:
      v35 = *MEMORY[0x277D85DE8];
      return result;
    }

    *buf = 136315650;
    *&buf[4] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    *&buf[22] = 1024;
    *&buf[24] = a2;
    v34 = "%s [key=%s] Buffer Id invalid %d";
LABEL_19:
    _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x1Cu);
    goto LABEL_20;
  }

  v5 = *(*(this + 74) + (a2 << 7) + 4);
  if (v5 >= *(this + 139))
  {
    v33 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136315650;
    *&buf[4] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    *&buf[22] = 1024;
    *&buf[24] = a2;
    v34 = "%s [key=%s] NodeId not owned by buff_id %d";
    goto LABEL_19;
  }

  _X0 = 0;
  _X1 = 0;
  v8 = atomic_load((*(this + 72) + (v5 << 7) + 24));
  atomic_load((*(this + 72) + (v5 << 7) + 8));
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v43[1];
  do
  {
    _X7 = v43[2];
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v15;
    v15 = _X6;
  }

  while (!_ZF);
  if ((_X0 & 7) == 2)
  {
    _X4 = 0;
    _X5 = 0;
    v20 = *(this + 74);
    __asm { CASPAL          X4, X5, X4, X5, [X9] }

    v22 = *buf;
    do
    {
      _X7 = *&buf[8];
      __asm { CASPAL          X6, X7, X4, X5, [X9] }

      _ZF = _X6 == v22;
      v22 = _X6;
    }

    while (!_ZF);
    _X0 = 0;
    _X1 = 0;
    *buf = _X4 & 0xFFF8 | 3;
    *&buf[2] = WORD1(_X4) & 0xFFF8 | 3;
    *&buf[4] = WORD2(_X4) & 0xFFF8 | 3;
    *&buf[6] = HIWORD(_X4) & 0xFFE0 | (HIWORD(_X4) + 1) & 0x1F;
    v27 = *(this + 74) + (v8 << 7);
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v29 = *(v27 + 16);
    do
    {
      _X7 = *(v27 + 24);
      __asm { CASPAL          X6, X7, X0, X1, [X8] }

      _ZF = _X6 == v29;
      v29 = _X6;
    }

    while (!_ZF);
    if (a3)
    {
      *a3 = 0;
    }

    result = 0;
    goto LABEL_21;
  }

  v43[0] = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(v43, "%s [key=%s] Trying to relinquish Buffer that is not in Writing %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)", Key, a2);
  v37 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v38 = PSSharedResource::getKey(this);
    *buf = 136316162;
    *&buf[4] = "relinquishResourceWithoutWriteIndexIncrement";
    *&buf[12] = 1024;
    *&buf[14] = 1152;
    *&buf[18] = 2080;
    *&buf[20] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    v45 = 2080;
    v46 = v38;
    v47 = 1024;
    v48 = a2;
    _os_log_impl(&dword_25EBC5000, v37, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to relinquish Buffer that is not in Writing %d", buf, 0x2Cu);
  }

  v39 = OSLogFlushBuffers();
  if (v39)
  {
    v40 = v39;
    v41 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "relinquishResourceWithoutWriteIndexIncrement";
      *&buf[12] = 1024;
      *&buf[14] = v40;
      _os_log_impl(&dword_25EBC5000, v41, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v42 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelectorWriter::relinquishWriterResources(v42);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishWriterResources(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = 0;
  MissingNodeInQueue = PSBufferService::AtomicDeque::FindMissingNodeInQueue((this + 568), &v42, a3, a4, a5, a6);
  if (MissingNodeInQueue == 2 && PSBufferService::AtomicDeque::GetNodeIdFromTail((this + 568), &v42))
  {
    abort();
  }

  _X2 = 0;
  _X3 = 0;
  v10 = atomic_load((*(this + 72) + (v42 << 7) + 24));
  v11 = (this + 584);
  v12 = *(this + 74);
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v18 = v40;
  do
  {
    _X7 = v41;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v18;
    v18 = _X6;
  }

  while (!_ZF);
  if ((_X2 & 7) == 3)
  {
    if ((BYTE2(_X2) & 7) == 3 && (BYTE4(_X2) & 7) == 3)
    {
      goto LABEL_24;
    }
  }

  else if ((_X2 & 7) == 2 && (BYTE2(_X2) & 7) == 2 && (BYTE4(_X2) & 7) == 2)
  {
    v21 = (*(this + 74) + (v10 << 7));
    v21[8] &= 0xFFF8u;
    v21[9] &= 0xFFF8u;
    v21[10] &= 0xFFF8u;
    goto LABEL_24;
  }

  v37 = 0;
  if (!*(*v11 + 144))
  {
    return 0;
  }

  _X2 = 0;
  v23 = 0;
  while (1)
  {
    v24 = *(this + 74) + (v23 << 7) + 16;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X2, X3, [X11] }

    v27 = v38;
    do
    {
      _X13 = v39;
      __asm { CASPAL          X12, X13, X4, X5, [X9] }

      _ZF = _X12 == v27;
      v27 = _X12;
    }

    while (!_ZF);
    if ((_X4 & 7) == 2 || (_X4 & 0x70000) == 0x20000 || (_X4 & 0x700000000) == 0x200000000)
    {
      break;
    }

    v23 = v37 + 1;
    v37 = v23;
    if (v23 >= *(*v11 + 144))
    {
      return 0;
    }
  }

  v30 = *(this + 74);
  *(v30 + (v10 << 7) + 4) = -1;
  v31 = v42;
  v32 = v37;
  *(v30 + (v37 << 7) + 4) = v42;
  atomic_store(v32, (*(this + 72) + (v31 << 7) + 24));
  v33 = (*(this + 74) + (v32 << 7));
  v33[8] &= 0xFFF8u;
  v33[9] &= 0xFFF8u;
  v33[10] &= 0xFFF8u;
  v36 = 0uLL;
  v35 = 0;
  PSBufferService::MemDescPool::GetFreeMemDescFromPool(v11, &v35, &v36, &v37);
LABEL_24:
  if (MissingNodeInQueue != 2)
  {
    PSBufferService::AtomicDeque::AddNodeToTail((this + 568), v42);
  }

  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  v4 = a3;
  PSBufferService::LocklessViewReaper::setState(this + 600, a2, 0, a3, *(*(this + 77) + 880 * a2 + 8 * a3 + 2));
  _X0 = 0;
  _X1 = 0;
  v7 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v13 = v38;
  do
  {
    _X5 = v40;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v13;
    v13 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9,#0x40+var_40] }

  v19 = v42;
  do
  {
    _X5 = v43;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v19;
    v19 = _X4;
  }

  while (!_ZF);
  _X4 = 0;
  _X5 = 0;
  v24 = *(this + 74) + (v4 << 7) + 16;
  __asm { CASPAL          X4, X5, X4, X5, [X9] }

  _X3 = v40;
  __asm { CASPAL          X2, X3, X4, X5, [X10] }

  if (_X2 != v38)
  {
    _X0 = 0;
    do
    {
      v39 = _X2;
      v41 = _X3;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X10] }

      v31 = v42;
      do
      {
        _X7 = 0;
        __asm { CASPAL          X6, X7, X2, X3, [X9] }

        _ZF = _X6 == v31;
        v31 = _X6;
      }

      while (!_ZF);
      v34 = *(this + 74);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X9] }

      _X3 = v41;
      __asm { CASPAL          X2, X3, X4, X5, [X11] }
    }

    while (_X2 != v39);
  }

  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleAcquirePrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v19;
  do
  {
    _X5 = v20;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v15;
    v15 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

void PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v7 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v8 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v14 = v17[1];
  do
  {
    _X5 = v17[2];
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v14;
    v14 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(v17);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleAVAOutOfViewsState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X4 = 0;
  _X5 = 0;
  v5 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v6 = *(this + 74);
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  v12 = v16;
  do
  {
    _X13 = v17;
    __asm { CASPAL          X12, X13, X4, X5, [X11] }

    _ZF = _X12 == v12;
    v12 = _X12;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleReadingFailedState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X4 = 0;
  _X5 = 0;
  v5 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v6 = *(this + 74);
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  v12 = v16;
  do
  {
    _X13 = v17;
    __asm { CASPAL          X12, X13, X4, X5, [X11] }

    _ZF = _X12 == v12;
    v12 = _X12;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleReadingPrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v19;
  do
  {
    _X5 = v20;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v15;
    v15 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleReadingCommitState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, *(*(this + 77) + 880 * a2 + 8 * a3 + 2));
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishPrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v19;
  do
  {
    _X7 = v20;
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v15;
    v15 = _X6;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseToPoolState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v19;
  do
  {
    _X5 = v20;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v15;
    v15 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAvaPrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X10] }

  v15 = v19;
  do
  {
    _X7 = v20;
    __asm { CASPAL          X6, X7, X0, X1, [X10] }

    _ZF = _X6 == v15;
    v15 = _X6;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAVACommitState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X4 = 0;
  _X5 = 0;
  v5 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v6 = *(this + 74);
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  v12 = v16;
  do
  {
    _X13 = v17;
    __asm { CASPAL          X12, X13, X4, X5, [X11] }

    _ZF = _X12 == v12;
    v12 = _X12;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleAlreadyReadingState(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned int a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  v9 = *(this + 74);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v19;
  do
  {
    _X7 = v20;
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v15;
    v15 = _X6;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishReaderResourcesForProcessID(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2)
{
  if (a2 > 0x3FF)
  {
    return 3;
  }

  v5 = *(*(this + 75) + 8 * a2 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v5)
      {
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *(*(this + 77) + v9);
          if (v10 > 7)
          {
            if (*(*(this + 77) + v9) > 0xAu)
            {
              switch(v10)
              {
                case 0xBu:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseToPoolState(this, v7, v8);
                  break;
                case 0xCu:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAVACommitState(this, v7, v8);
                  break;
                case 0xDu:
                  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, v7, v8);
                  break;
              }
            }

            else
            {
              switch(v10)
              {
                case 8u:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleReadingCommitState(this, v7, v8);
                  break;
                case 9u:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishPrepareState(this, v7, v8);
                  break;
                case 0xAu:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAvaPrepareState(this, v7, v8);
                  break;
              }
            }
          }

          else if (*(*(this + 77) + v9) > 4u)
          {
            switch(v10)
            {
              case 5u:
                PSBufferService::PSLocklessBufferSelectorWriter::handleAVAOutOfViewsState(this, v7, v8);
                break;
              case 6u:
                PSBufferService::PSLocklessBufferSelectorWriter::handleReadingFailedState(this, v7, v8);
                break;
              case 7u:
                PSBufferService::PSLocklessBufferSelectorWriter::handleReadingPrepareState(this, v7, v8);
                break;
            }
          }

          else if (v10 - 3 < 2)
          {
            PSBufferService::PSLocklessBufferSelectorWriter::handleAlreadyReadingState(this, v7, v8);
          }

          else if (v10 == 1)
          {
            PSBufferService::PSLocklessBufferSelectorWriter::handleAcquirePrepareState(this, v7, v8);
          }

          else if (v10 == 2)
          {
            PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(this, v7, v8);
          }

          PSBufferService::LocklessViewReaper::removeReader(this + 75, a2, v7);
          ++v8;
          v9 += 8;
        }

        while (v8 != 110);
      }

      ++v7;
      v6 += 880;
      v11 = v5 > 1;
      v5 >>= 1;
    }

    while (v11);
  }

  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::Initialize(PSBufferService::PSLocklessBufferSelectorReader *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 560))
  {
    v1 = 2;
    goto LABEL_13;
  }

  Data = PSSharedSerialData::getData(*(this + 79));
  v4 = PSBufferService::AtomicDeque::InitializeFromRawBuffer((this + 568), (Data + 256));
  if (v4)
  {
    v1 = v4;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v13 = 136315394;
    v14 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorReader::Initialize()";
    v15 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize AtomicDeque structure";
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v6, &v13, 0x16u);
    goto LABEL_13;
  }

  v7 = *(*(this + 71) + 32);
  *(this + 139) = v7;
  v8 = (Data + (v7 << 7) + 384);
  v9 = PSBufferService::MemDescPool::InitializeFromRawBuffer((this + 584), v8);
  if (v9)
  {
    v1 = v9;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v10 = *(*(this + 73) + 144);
  *(this + 138) = v10;
  v1 = PSBufferService::LocklessViewReaper::InitializeFromRawBuffer((this + 600), &v8[128 * v10 + 256]);
  if (!v1)
  {
    *(this + 560) = 1;
    goto LABEL_13;
  }

  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    v13 = 136315394;
    v14 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorReader::Initialize()";
    v15 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize memory descriptor";
    goto LABEL_12;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::getResource(PSBufferService::PSLocklessBufferSelectorReader *this, unsigned int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v11 = 0;
  if (PSBufferService::AtomicDeque::GetNodeIdFromHead((this + 568), &v12, &v11))
  {
    ReaderResource = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = atomic_load((*(this + 72) + (v12 << 7) + 24));
    ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, v6, a2, 0, 0, v4, 1);
    if (ReaderResource >= 0xFFFFFFFE)
    {
      v7 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        Key = PSSharedResource::getKey(this);
        *buf = 136316162;
        v14 = "getResource";
        v15 = 2080;
        v16 = Key;
        v17 = 1024;
        v18 = v6;
        v19 = 1024;
        v20 = a2;
        v21 = 1024;
        v22 = ReaderResource;
        _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s [key=%s] id=%d reader_id=%d result=%d", buf, 0x28u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return ReaderResource;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::getResourceWithBufferID(PSBufferService::PSLocklessBufferSelectorReader *this, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v24 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 138) <= a2)
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "virtual int PSBufferService::PSLocklessBufferSelectorReader::getResourceWithBufferID(int, uint32_t)";
      v16 = 2080;
      Key = PSSharedResource::getKey(this);
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s [key=%s] Buffer Id invalid %d", &v14, 0x1Cu);
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
    ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, a2, a3, 0, 0, a6, 1);
    result = 0;
    if (ReaderResource >= 0xFFFFFFFE)
    {
      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v14 = 136316162;
        v15 = "getResourceWithBufferID";
        v16 = 2080;
        Key = PSSharedResource::getKey(this);
        v18 = 1024;
        v19 = v6;
        v20 = 1024;
        v21 = a3;
        v22 = 1024;
        v23 = ReaderResource;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s [key=%s] id=%d reader_id=%d result=%d", &v14, 0x28u);
      }

      result = ReaderResource;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void PSBufferService::PSLocklessBufferSelectorReader::getResourceLastN(PSBufferService::PSLocklessBufferSelectorReader *this, unsigned int a2, int *a3, unint64_t a4, unsigned int *a5, unint64_t *a6, unint64_t *a7)
{
  v40 = *MEMORY[0x277D85DE8];
  PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN((this + 568), a4, a3, a6, a7);
  if (*a7)
  {
    v14 = 0;
    v15 = a5;
    while (1)
    {
      v16 = a3[v14];
      v17 = a5 ? v15 : 0;
      ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, a3[v14], a2, 0, v17, v13, 1);
      if (ReaderResource >= 0xFFFFFFFE)
      {
        break;
      }

      ++v14;
      ++v15;
      if (v14 >= *a7)
      {
        goto LABEL_11;
      }
    }

    v19 = ReaderResource;
    *a7 = v14;
    v20 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      v22 = *a7;
      v24 = 136316930;
      v25 = "virtual void PSBufferService::PSLocklessBufferSelectorReader::getResourceLastN(uint32_t, int *, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
      v26 = 2080;
      v27 = Key;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = a2;
      v32 = 2048;
      v33 = a4;
      v34 = 2048;
      v35 = v22;
      v36 = 2048;
      v37 = v14;
      v38 = 1024;
      v39 = v19;
      _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_ERROR, "%s [key=%s] index=%d reader_id=%d requested_buffer_count=%llu read_buffer_count=%llu i=%llu ret=%d", &v24, 0x46u);
    }
  }

LABEL_11:
  v23 = *MEMORY[0x277D85DE8];
}

void PSBufferService::PSLocklessBufferSelectorReader::getResourceSinceLast(PSBufferService::PSLocklessBufferSelectorReader *this, unsigned int a2, int *a3, unint64_t a4, unint64_t a5, unsigned int *a6, unint64_t *a7, unint64_t *a8)
{
  v43 = *MEMORY[0x277D85DE8];
  PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast((this + 568), a4, a5, a3, a7, a8);
  if (*a8)
  {
    v15 = 0;
    v16 = a6;
    while (1)
    {
      v17 = a3[v15];
      v18 = a6 ? v16 : 0;
      ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, a3[v15], a2, 0, v18, v14, 1);
      if (ReaderResource >= 0xFFFFFFFE)
      {
        break;
      }

      ++v15;
      ++v16;
      if (v15 >= *a8)
      {
        goto LABEL_11;
      }
    }

    v20 = ReaderResource;
    *a8 = v15;
    v21 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      v23 = *a8;
      v25 = 136317186;
      v26 = "virtual void PSBufferService::PSLocklessBufferSelectorReader::getResourceSinceLast(uint32_t, int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
      v27 = 1024;
      v28 = 1942;
      v29 = 2080;
      v30 = Key;
      v31 = 1024;
      v32 = v17;
      v33 = 1024;
      v34 = a2;
      v35 = 2048;
      v36 = a4;
      v37 = 2048;
      v38 = v23;
      v39 = 2048;
      v40 = v15;
      v41 = 1024;
      v42 = v20;
      _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, "%s:%d [key=%s] index=%d reader_id=%d max_read_count=%llu read_buffer_count=%llu i=%llu ret=%d", &v25, 0x4Cu);
    }
  }

LABEL_11:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::relinquishResourceWithoutWriteIndexIncrement(PSBufferService::PSLocklessBufferSelectorReader *this, int a2, unsigned __int16 *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "virtual int PSBufferService::PSLocklessBufferSelectorReader::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s Non Implemented function called", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::incrementWriteIndex(PSBufferService::PSLocklessBufferSelectorReader *this, unint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "virtual int PSBufferService::PSLocklessBufferSelectorReader::incrementWriteIndex(uint64_t &)";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s Non Implemented function called", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::InitializeFromRawBuffer(PSBufferService::PSLocklessBufferSelectorReader *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorReader::InitializeFromRawBuffer()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 2;
}

void PSBufferService::PSLocklessBufferSelectorWriter::~PSLocklessBufferSelectorWriter(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  PSBufferService::PSLocklessBufferSelector::~PSLocklessBufferSelector(this);

  JUMPOUT(0x25F8CA500);
}

void PSBufferService::PSLocklessBufferSelectorReader::~PSLocklessBufferSelectorReader(PSBufferService::PSLocklessBufferSelectorReader *this)
{
  PSBufferService::PSLocklessBufferSelector::~PSLocklessBufferSelector(this);

  JUMPOUT(0x25F8CA500);
}

void *std::__shared_ptr_emplace<PSSharedSerialDataReader>::__shared_ptr_emplace[abi:ne200100]<char const* const&,unsigned int const&,BOOL const&,char const* const&,std::allocator<PSSharedSerialDataReader>,0>(void *a1, const char **a2, unsigned int *a3, BOOL *a4, const char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCAA8;
  PSSharedSerialDataReader::PSSharedSerialDataReader((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<PSSharedSerialDataReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCAA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorReader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<PSSharedSerialData> &,char const* const&,unsigned int const&,char const* const&,std::allocator<PSBufferService::PSLocklessBufferSelectorReader>,0>(void *a1, int a2, char **a3, unsigned int *a4, char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCAF8;
  PSBufferService::PSLocklessBufferSelector::PSLocklessBufferSelector((a1 + 3), a2, *a3, *a4, *a5);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void *std::__shared_ptr_emplace<PSSharedSerialDataWriter>::__shared_ptr_emplace[abi:ne200100]<char const* const&,unsigned int const&,BOOL &,char const* const&,std::allocator<PSSharedSerialDataWriter>,0>(void *a1, const char **a2, unsigned int *a3, BOOL *a4, const char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCB48;
  PSSharedSerialDataWriter::PSSharedSerialDataWriter((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<PSSharedSerialDataWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorWriter>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<PSSharedSerialData> &,char const* const&,unsigned int const&,char const* const&,std::allocator<PSBufferService::PSLocklessBufferSelectorWriter>,0>(void *a1, int a2, char **a3, unsigned int *a4, char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCB98;
  PSBufferService::PSLocklessBufferSelector::PSLocklessBufferSelector((a1 + 3), a2, *a3, *a4, *a5);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__shared_ptr_emplace<PSSharedSerialDataWriter>::__shared_ptr_emplace[abi:ne200100]<char const* const&,unsigned int const&,unsigned int const&,unsigned int &,int,unsigned int const&,unsigned int const&,char *,std::allocator<PSSharedSerialDataWriter>,0>(void *a1, const char **a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, char **a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCB48;
  PSSharedSerialDataWriter::PSSharedSerialDataWriter((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
}

BOOL OUTLINED_FUNCTION_1_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

BOOL OUTLINED_FUNCTION_4()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

uint64_t PSBufferService::MemDescPool::InitializeFromRawBuffer(PSBufferService::MemDescPool *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  *this = a2;
  if (*(a2 + 36) > 0x6Eu)
  {
    return 2;
  }

  result = 0;
  *(this + 1) = a2 + 256;
  return result;
}

uint64_t PSBufferService::MemDescPool::InitializeIntoRawBuffer(PSBufferService::MemDescPool *this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 3;
  if (a2 && a3 <= 0x6E)
  {
    *(a2 + 36) = a3;
    v4 = a2 + 256;
    *this = a2;
    *(this + 1) = a2 + 256;
    if (a3)
    {
      _X4 = 0;
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = &v4[128 * v6];
        v9 = *(v8 + 2);
        do
        {
          _X7 = *(v8 + 3);
          __asm { CASPAL          X6, X7, X4, X5, [X11] }

          _ZF = _X6 == v9;
          v9 = _X6;
        }

        while (!_ZF);
        v4 = *(this + 1);
        v16 = &v4[128 * v6];
        *v16 = v6;
        *(v16 + 1) = -1;
        ++v6;
      }

      while (v6 != v7);
      a2 = *this;
    }

    v17 = *(a2 + 16);
    _X4 = -1;
    do
    {
      _X7 = *(a2 + 17);
      __asm { CASPAL          X6, X7, X4, X5, [X8] }

      _ZF = _X6 == v17;
      v17 = _X6;
    }

    while (!_ZF);
    return 0;
  }

  return v3;
}

uint64_t PSBufferService::MemDescPool::GetFreeMemDescFromPool(PSBufferService::MemDescPool *this, unsigned int *a2, unsigned __int128 *a3, unsigned int *a4)
{
  _X20 = 0;
  _X21 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v6 = *(*this + 144);
  v7 = 1 << v6;
  _ZF = (v6 & 0x40) == 0;
  if ((v6 & 0x40) != 0)
  {
    v9 = 1 << v6;
  }

  else
  {
    v9 = 0;
  }

  if (!_ZF)
  {
    v7 = 0;
  }

  v10 = *this + 128;
  __asm { CASPAL          X20, X21, X20, X21, [X11] }

  do
  {
    if (a4)
    {
      v15 = *a4;
      if (*a4 >= *(*this + 144))
      {
        v31 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v33 = 136315650;
          v34 = "GetFreeMemDescFromPool";
          v35 = 1024;
          v36 = 91;
          v37 = 1024;
          LODWORD(v38) = v15;
          v28 = "%s line=%d invalid inMemDescId=%u";
          v29 = v31;
          v30 = 24;
LABEL_30:
          _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_ERROR, v28, &v33, v30);
        }

LABEL_31:
        result = 2;
        goto LABEL_32;
      }

      v16 = 1 << v15;
      if ((v15 & 0x40) != 0)
      {
        v17 = 1 << v15;
      }

      else
      {
        v17 = 0;
      }

      if ((v15 & 0x40) != 0)
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = _X20 & -_X20;
      v17 = 0;
    }

    if (v9 == v17 && v7 == v16)
    {
      v27 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v33 = 136315906;
        v34 = "GetFreeMemDescFromPool";
        v35 = 1024;
        v36 = 107;
        v37 = 2048;
        v38 = 0;
        v39 = 2048;
        v40 = _X20;
        v28 = "%s line=%d free_bitarray_curr=%llx %llx";
        v29 = v27;
        v30 = 38;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    _X6 = _X20 & ~v16;
    v20 = *this + 128;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X6, X7, [X13] }

    _ZF = _X4 == _X20;
    _X20 = _X4;
  }

  while (!_ZF);
  v23 = v16 ^ 1 | v17;
  if (v23)
  {
    LODWORD(v23) = 0;
    do
    {
      *(&v24 + 1) = v17;
      *&v24 = v16;
      v16 = v24 >> 1;
      v25 = v16 ^ 1 | (v17 >> 1);
      v17 >>= 1;
      LODWORD(v23) = v23 + 1;
    }

    while (v25);
  }

  result = 0;
  *a2 = v23;
  *a3 = _X4;
LABEL_32:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::MemDescPool::ReadFreeMemDescFromPool(PSBufferService::MemDescPool *this, unsigned int *a2, unsigned __int128 *a3)
{
  _X20 = 0;
  _X21 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(*this + 144);
  v6 = 1 << v5;
  if ((v5 & 0x40) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1 << v5;
  }

  if ((v5 & 0x40) == 0)
  {
    v6 = 0;
  }

  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  v12 = _X20 & -_X20;
  v13 = 0;
  if (v6)
  {
    _ZF = 0;
  }

  else
  {
    _ZF = v7 == v12;
  }

  if (_ZF)
  {
    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "ReadFreeMemDescFromPool";
      v23 = 1024;
      v24 = 144;
      v25 = 2048;
      v26 = 0;
      v27 = 2048;
      v28 = _X20;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s line=%d free_bitarray_curr=%llx %llx", &v21, 0x26u);
    }

    result = 2;
  }

  else
  {
    v17 = v12 ^ 1;
    if (v12 != 1)
    {
      v17 = 0;
      do
      {
        *(&v18 + 1) = v13;
        *&v18 = v12;
        v12 = v18 >> 1;
        v19 = v12 ^ 1 | (v13 >> 1);
        v13 >>= 1;
        ++v17;
      }

      while (v19);
    }

    result = 0;
    *a2 = v17;
    *a3 = _X20;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t PSBufferService::MemDescPool::IsMemDescInFreePool(PSBufferService::MemDescPool *this, unsigned int a2)
{
  if (*(*this + 144) <= a2)
  {
    return 0;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v9 = _X2 >> a2;
  if ((a2 & 0x40) != 0)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t PSBufferService::MemDescPool::AddMemDescToFreePool(PSBufferService::MemDescPool *this, unsigned int a2)
{
  if (*(*this + 144) <= a2)
  {
    return 3;
  }

  _X2 = 0;
  _X3 = 0;
  v4 = 1;
  if ((a2 & 0x40) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << a2;
  }

  __asm { CASPAL          X2, X3, X2, X3, [X11] }

  if ((_X2 & v5) == 0)
  {
    do
    {
      _X4 = _X2 | v5;
      v12 = *this + 128;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X8] }

      _ZF = _X6 == _X2;
      _X2 = _X6;
    }

    while (!_ZF);
    return 0;
  }

  return v4;
}

uint64_t PSBufferService::AtomicPoolAccountant::Initialize(uint64_t a1, unsigned int a2, int *a3)
{
  v3 = 3;
  if (a2 <= 0x6E)
  {
    v4 = a3[2] + a3[1] + *a3;
    if (v4 <= 255 && v4 <= a2)
    {
      *a1 = a2;
      if (a2 == 56)
      {
        v6 = -1;
      }

      else
      {
        v6 = ~(-1 << (a2 + 8));
      }

      if (a2 < 0x39)
      {
        v7 = 0;
      }

      else
      {
        v6 = -1;
        v7 = ~(-1 << (a2 - 56));
      }

      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      v8 = *a3;
      *(a1 + 32) = *a3;
      _X4 = *&v8 | 0xFFFFFFFFFFFFFF00;
      v10 = *(a1 + 48);
      do
      {
        _X11 = *(a1 + 56);
        __asm { CASPAL          X10, X11, X4, X5, [X8] }

        _ZF = _X10 == v10;
        v10 = _X10;
      }

      while (!_ZF);
      v17 = a3[1];
      *(a1 + 64) = v17;
      _X4 = *&v17 | 0xFFFFFFFFFFFFFF00;
      v19 = *(a1 + 80);
      do
      {
        _X11 = *(a1 + 88);
        __asm { CASPAL          X10, X11, X4, X5, [X8] }

        _ZF = _X10 == v19;
        v19 = _X10;
      }

      while (!_ZF);
      v22 = a3[2];
      *(a1 + 96) = v22;
      _X2 = *&v22 | 0xFFFFFFFFFFFFFF00;
      v24 = *(a1 + 112);
      do
      {
        _X7 = *(a1 + 120);
        __asm { CASPAL          X6, X7, X2, X3, [X8] }

        _ZF = _X6 == v24;
        v24 = _X6;
      }

      while (!_ZF);
      return 0;
    }
  }

  return v3;
}

uint64_t PSBufferService::AtomicPoolAccountant::DecrementPoolCount(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 1 || *a1 <= a3)
  {
    return 3;
  }

  _X4 = 0;
  _X5 = 0;
  v50 = 0;
  v49 = 0;
  v5 = 1 << (a3 + 8);
  if (((a3 + 8) & 0x40) != 0)
  {
    v5 = 0;
  }

  __asm { CASPAL          X4, X5, X4, X5, [X10] }

  v11 = 0;
  do
  {
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X11] }

    _ZF = _X6 == v11;
    v11 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X4 = 0;
  while (1)
  {
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X13] }

    v18 = v49;
    do
    {
      _X21 = 0;
      __asm { CASPAL          X20, X21, X6, X7, [X15] }

      _ZF = _X20 == v18;
      v18 = _X20;
    }

    while (!_ZF);
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X19] }

    v23 = *a1 + 8;
    *a1;
    v24 = (v23 & 0x40) != 0 ? 0 : _X6 >> (*a1 + 8);
    v25 = v24 + 1;
    v26 = (v23 & 0x40) != 0 ? 0 : v25 << v23;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X19] }

    if ((_X6 & v5) != 0)
    {
      if (a2)
      {
        return 1;
      }

      if (!_X6)
      {
        return 2;
      }

      v29 = v49;
      do
      {
        _X20 = v29 & ~v5;
        _X23 = 0;
        __asm { CASPAL          X22, X23, X20, X21, [X19] }

        _ZF = _X22 == v29;
        v29 = _X22;
      }

      while (!_ZF);
    }

    else
    {
      if (!a2)
      {
        return 1;
      }

      if (!_X6)
      {
        return 2;
      }

      v33 = v49;
      do
      {
        _X20 = v33 | v5;
        _X23 = 0;
        __asm { CASPAL          X22, X23, X20, X21, [X19] }

        _ZF = _X22 == v33;
        v33 = _X22;
      }

      while (!_ZF);
    }

    LOBYTE(v49) = v49 - 1;
    _X21 = 0;
    __asm { CASPAL          X20, X21, X2, X3, [X6] }

    *(a1 + 24);
    _X20 = _X20 & *(a1 + 16) | v26;
    v40 = v49;
    do
    {
      _X23 = 0;
      __asm { CASPAL          X22, X23, X20, X21, [X6] }

      _ZF = _X22 == v40;
      v40 = _X22;
    }

    while (!_ZF);
    _X20 = 0;
    _X21 = 0;
    __asm { CASPAL          X20, X21, X20, X21, [X16] }

    _X7 = 0;
    __asm { CASPAL          X6, X7, X20, X21, [X10] }

    if (_X6 == v50)
    {
      break;
    }

    v50 = _X6;
  }

  return 0;
}

uint64_t PSBufferService::AtomicPoolAccountant::IncrementPoolCount(uint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v8 = v36;
  do
  {
    _X7 = v37;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v8;
    v8 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X4 = 0;
  while (1)
  {
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X9] }

    v15 = v34;
    do
    {
      _X15 = v35;
      __asm { CASPAL          X14, X15, X6, X7, [X10] }

      _ZF = _X14 == v15;
      v15 = _X14;
    }

    while (!_ZF);
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    v20 = *a1 + 8;
    v21 = _X6 >> (*a1 + 8);
    if ((v20 & 0x40) != 0)
    {
      *a1;
      v21 = 0;
    }

    _ZF = (v20 & 0x40) == 0;
    v22 = (v21 + 1) << v20;
    if (!_ZF)
    {
      v22 = 0;
    }

    v34 = _X6 & 0xFFFFFFFFFFFFFF00 | (_X6 + 1);
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    *(a1 + 24);
    _X6 = v22 | _X6 & *(a1 + 16);
    v26 = v34;
    do
    {
      _X15 = v35;
      __asm { CASPAL          X14, X15, X6, X7, [X10] }

      _ZF = _X14 == v26;
      v26 = _X14;
    }

    while (!_ZF);
    _X13 = 0;
    __asm { CASPAL          X12, X13, X2, X3, [X10] }

    _X7 = v37;
    __asm { CASPAL          X6, X7, X12, X13, [X8] }

    if (_X6 == v36)
    {
      break;
    }

    v36 = _X6;
  }

  return 0;
}

uint64_t PSBufferService::AtomicPoolAccountant::GetSetBit(unsigned int *a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 255;
  }

  _X4 = 0;
  _X5 = 0;
  v4 = 1 << (a2 + 8);
  if (((a2 + 8) & 0x40) != 0)
  {
    v4 = 0;
  }

  __asm { CASPAL          X4, X5, X4, X5, [X10] }

  v10 = v17;
  do
  {
    _X3 = v18;
    __asm { CASPAL          X2, X3, X4, X5, [X10] }

    _ZF = _X2 == v10;
    v10 = _X2;
  }

  while (!_ZF);
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X10,#0x10+var_10] }

  return (_X0 & v4) != 0;
}

void *PSBufferService::LocklessViewReaper::LocklessViewReaper(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

uint64_t PSBufferService::LocklessViewReaper::InitializeFromRawBuffer(PSBufferService::LocklessViewReaper *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  result = 0;
  *(this + 1) = a2 + 56320;
  *(this + 2) = a2;
  *this = a2 + 56324;
  return result;
}

uint64_t PSBufferService::LocklessViewReaper::InitializeIntoRawBuffer(PSBufferService::LocklessViewReaper *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  v2 = 0;
  v3 = 0;
  *(this + 2) = a2;
  do
  {
    v4 = 110;
    v5 = v2;
    do
    {
      *(*(this + 2) + v5) = 0;
      *(*(this + 2) + v5 + 2) = 1;
      v5 += 8;
      --v4;
    }

    while (v4);
    ++v3;
    v2 += 880;
  }

  while (v3 != 64);
  *this = a2 + 56324;
  *(this + 1) = a2 + 56320;
  atomic_store(0, (a2 + 56324));
  bzero(a2 + 56332, 0x2000uLL);
  return 0;
}

uint64_t PSBufferService::LocklessViewReaper::addReader(unint64_t **this, unsigned int a2, unsigned int *a3)
{
  v3 = 3;
  if (a2 <= 0x3FF && a3)
  {
    v4 = atomic_load(*this);
    while (1)
    {
      if (v4 == -1)
      {
        PSBufferService::LocklessViewReaper::addReader(&v10);
      }

      v5 = __clz(__rbit64(~v4));
      v6 = 1 << v5;
      if (((*this)[a2 + 1] & (1 << v5)) != 0)
      {
        break;
      }

      v7 = v4;
      atomic_compare_exchange_strong(*this, &v7, v6 | v4);
      *a3 = v5;
      v8 = v7 == v4;
      v4 = v7;
      if (v8)
      {
        v3 = 0;
        (*this)[a2 + 1] |= v6;
        return v3;
      }
    }

    return 2;
  }

  return v3;
}

uint64_t PSBufferService::LocklessViewReaper::removeReader(unint64_t **this, unsigned int a2, unsigned int a3)
{
  v3 = 3;
  if (a2 <= 0x3FF && a3 <= 0x3F)
  {
    v4 = atomic_load(*this);
    v5 = 1 << a3;
    v6 = ~(1 << a3);
    while ((v4 & v5) != 0 && ((*this)[a2 + 1] & v5) != 0)
    {
      v7 = v4;
      atomic_compare_exchange_strong(*this, &v7, v4 & v6);
      v8 = v7 == v4;
      v4 = v7;
      if (v8)
      {
        v3 = 0;
        (*this)[a2 + 1] &= v6;
        return v3;
      }
    }

    return 2;
  }

  return v3;
}

uint64_t PSBufferService::LocklessViewReaper::setState(uint64_t a1, unsigned int a2, __int16 a3, unsigned int a4, __int16 a5)
{
  if (a2 > 0x3F)
  {
    return 3;
  }

  v6 = atomic_load((*(a1 + 16) + 880 * a2 + 8 * a4));
  atomic_store(v6, &v17);
  v7 = atomic_load(&v17);
  atomic_store(v7, &v16);
  LOWORD(v16) = a3;
  WORD1(v16) = a5;
  v8 = (*(a1 + 16) + 880 * a2 + 8 * a4);
  v9 = atomic_load(&v16);
  v10 = v17;
  v11 = v17;
  atomic_compare_exchange_strong(v8, &v11, v9);
  if (v11 != v10)
  {
    do
    {
      v17 = v11;
      v12 = atomic_load(&v17);
      atomic_store(v12, &v16);
      LOWORD(v16) = a3;
      WORD1(v16) = a5;
      v13 = (*(a1 + 16) + 880 * a2 + 8 * a4);
      v14 = atomic_load(&v16);
      v15 = v17;
      v11 = v17;
      atomic_compare_exchange_strong(v13, &v11, v14);
    }

    while (v11 != v15);
  }

  return 0;
}

void *PSBufferService::AtomicDeque::AtomicDeque(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t PSBufferService::AtomicDeque::InitializeFromRawBuffer(PSBufferService::AtomicDeque *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  result = 0;
  *this = a2;
  *(this + 1) = a2 + 128;
  return result;
}

uint64_t PSBufferService::AtomicDeque::InitializeIntoRawBuffer(PSBufferService::AtomicDeque *this, unsigned __int8 *a2, int a3)
{
  if (!a2)
  {
    return 3;
  }

  *(a2 + 8) = a3;
  *this = a2;
  *(this + 1) = a2 + 128;
  atomic_store(0x99u, a2 + 37);
  atomic_store(1u, a2 + 36);
  *(a2 + 32) = 0;
  atomic_store(1uLL, a2 + 17);
  *a2 = 0;
  v3 = (a3 - 1);
  v4 = *(this + 1);
  if (v3 < 2)
  {
    v7 = 2;
  }

  else
  {
    v5 = 0;
    v6 = (v4 + 148);
    do
    {
      atomic_store(v5, v6);
      atomic_store(v5 + 2, v6 - 1);
      *(v6 - 5) = v5 + 1;
      atomic_store(v5 + 2, (v6 - 3));
      v6 += 32;
      ++v5;
    }

    while (v3 - 1 != v5);
    v7 = v3 + 1;
  }

  v8 = 0;
  v9 = v4 + (v3 << 7);
  atomic_store(a3 - 2, (v9 + 20));
  atomic_store(0x99u, (v9 + 16));
  atomic_store(v7, (v9 + 8));
  *v9 = v3;
  *(*this + 16) = v3;
  v10 = *this;
  v11 = atomic_load((*(this + 1) + (v3 << 7) + 8));
  *(v10 + 24) = v11;
  v12 = *this;
  v13 = atomic_load((*(this + 1) + (v3 << 7) + 8));
  *(v12 + 8) = v13;
  atomic_store(0, (*this + 40));
  return v8;
}

uint64_t PSBufferService::AtomicDeque::Enqueue(PSBufferService::AtomicDeque *this, unsigned int a2, unint64_t *a3)
{
  if (*(*this + 32) <= a2)
  {
    return 3;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    return 2;
  }

  _X4 = 0;
  _X5 = 0;
  v6 = v3 + (a2 << 7);
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  v12 = v31;
  do
  {
    _X11 = v32;
    __asm { CASPAL          X10, X11, X4, X5, [X8] }

    _ZF = _X10 == v12;
    v12 = _X10;
  }

  while (!_ZF);
  _X14 = 0;
  atomic_store(_X4, (v6 + 16));
  atomic_store(0x99u, (v6 + 20));
  atomic_store(1uLL, (v6 + 8));
  atomic_load((v6 + 8));
  v16 = *this;
  _X15 = 0;
  __asm { CASPAL          X14, X15, X14, X15, [X12,#0x20+var_20] }

  _X7 = v32;
  __asm { CASPAL          X6, X7, X14, X15, [X13] }

  if (_X6 != v31)
  {
    _X4 = 0;
    do
    {
      atomic_store(_X6, (v6 + 16));
      atomic_store(0x99u, (v6 + 20));
      atomic_store(v32 + 1, (v6 + 8));
      atomic_load((v6 + 8));
      v22 = *this;
      _X15 = 0;
      __asm { CASPAL          X14, X15, X4, X5, [X12] }

      v25 = _X6;
      __asm { CASPAL          X6, X7, X14, X15, [X13] }
    }

    while (_X6 != v25);
  }

  v26 = 0;
  v27 = atomic_load((v6 + 8));
  *a3 = v27;
  v28 = *(this + 1);
  v29 = atomic_load((v6 + 16));
  atomic_store(*v6, (v28 + (v29 << 7) + 20));
  atomic_fetch_add((*this + 40), 1uLL);
  return v26;
}

uint64_t PSBufferService::AtomicDeque::Dequeue(PSBufferService::AtomicDeque *this, unsigned int *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!*this || !*(this + 1))
  {
LABEL_9:
    result = 2;
    goto LABEL_10;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v9 = v24;
  do
  {
    _X7 = v25;
    __asm { CASPAL          X6, X7, X2, X3, [X8] }

    _ZF = _X6 == v9;
    v9 = _X6;
  }

  while (!_ZF);
  v12 = *(this + 1) + (_X2 << 7);
  v13 = atomic_load((v12 + 20));
  if (v13 == 153)
  {
LABEL_7:
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "PBSResult PSBufferService::AtomicDeque::Dequeue(uint32_t &)";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "%s Only one buffer left! Failed to get a buffer", buf, 0xCu);
    }

    goto LABEL_9;
  }

  while (1)
  {
    v17 = (*(this + 1) + (v13 << 7));
    v23 = *v17;
    atomic_load(v17 + 1);
    v18 = *this + 16;
    __asm { CASPAL          X2, X3, X2, X3, [X10] }

    _X5 = v25;
    __asm { CASPAL          X4, X5, X2, X3, [X11] }

    if (_X4 == v24)
    {
      break;
    }

    v24 = _X4;
    v12 = *(this + 1) + (_X4 << 7);
    v13 = atomic_load((v12 + 20));
    if (v13 == 153)
    {
      goto LABEL_7;
    }
  }

  result = 0;
  v22 = *v12;
  atomic_compare_exchange_strong(v17 + 4, &v22, 0x99u);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (v12 + 8));
  *a2 = *v12;
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdFromHead(PSBufferService::AtomicDeque *this, unsigned int *a2, unint64_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*this && *(this + 1))
  {
    _X4 = 0;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X4, X5, [X8] }

    v10 = v16;
    do
    {
      _X11 = v17;
      __asm { CASPAL          X10, X11, X4, X5, [X8] }

      _ZF = _X10 == v10;
      v10 = _X10;
    }

    while (!_ZF);
    if (_X4 != 153)
    {
      result = 0;
      *a2 = _X4;
      *a3 = 0;
      goto LABEL_10;
    }

    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdFromHead(uint32_t &, uint64_t &) const";
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }
  }

  result = 2;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN(PSBufferService::AtomicDeque *this, unint64_t a2, int *a3, unint64_t *a4, unint64_t *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  if (!*this || !*(this + 1))
  {
LABEL_9:
    result = 2;
    goto LABEL_10;
  }

  _X6 = 0;
  _X7 = 0;
  __asm { CASPAL          X6, X7, X6, X7, [X8] }

  v11 = v28;
  do
  {
    _X13 = v29;
    __asm { CASPAL          X12, X13, X6, X7, [X10] }

    _ZF = _X12 == v11;
    v11 = _X12;
  }

  while (!_ZF);
  if (_X6 == 153)
  {
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN(uint64_t, int *, uint64_t *, uint64_t *) const";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v17 = atomic_load((*this + 40));
  if (v17 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(this + 1) + (v28 << 7);
  v20 = atomic_load((v19 + 8));
  if (v18)
  {
    v21 = 0;
    v22 = v18 - 1;
    v23 = v20;
    while (1)
    {
      v18 = v21;
      v24 = atomic_load((v19 + 24));
      a3[v18] = v24;
      v25 = atomic_load((v19 + 8));
      a4[v18] = v25;
      _ZF = v25 != v23 || v25 == -1;
      if (_ZF)
      {
        break;
      }

      v27 = atomic_load((v19 + 16));
      if (v27 != 153)
      {
        v19 = *(this + 1) + (v27 << 7);
        v23 = atomic_load((v19 + 8));
        if (v22 != v18)
        {
          v21 = v18 + 1;
          if (v23 < v20)
          {
            continue;
          }
        }
      }

      ++v18;
      break;
    }
  }

  result = 0;
  *a5 = v18;
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast(PSBufferService::AtomicDeque *this, unint64_t a2, unint64_t a3, int *a4, unint64_t *a5, unint64_t *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  if (!*this || !*(this + 1))
  {
LABEL_9:
    result = 2;
    goto LABEL_10;
  }

  _X6 = 0;
  _X7 = 0;
  __asm { CASPAL          X6, X7, X6, X7, [X8] }

  v11 = v28;
  do
  {
    _X13 = v29;
    __asm { CASPAL          X12, X13, X6, X7, [X10] }

    _ZF = _X12 == v11;
    v11 = _X12;
  }

  while (!_ZF);
  if (_X6 == 153)
  {
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast(uint64_t, uint64_t, int *, uint64_t *, uint64_t *) const";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (a3)
  {
    v17 = *(this + 1) + (_X6 << 7);
    v18 = atomic_load((v17 + 8));
    if (v18 != 0xFFFFFFFF && (v18 > a3 ? (v19 = v18 > *(*this + 32)) : (v19 = 0), v19))
    {
      v20 = 0;
      v21 = v18;
      while (1)
      {
        v22 = v20;
        v23 = atomic_load((v17 + 24));
        a4[v22] = v23;
        v24 = atomic_load((v17 + 8));
        a5[v22] = v24;
        _ZF = v24 != v21 || v24 == -1;
        if (_ZF)
        {
          break;
        }

        v26 = atomic_load((v17 + 16));
        if (v26 != 153)
        {
          v17 = *(this + 1) + (v26 << 7);
          v21 = atomic_load((v17 + 8));
          if (v22 + 1 < a2)
          {
            v20 = v22 + 1;
            if (v21 > a3 && v21 < v18)
            {
              continue;
            }
          }
        }

        ++v22;
        break;
      }
    }

    else
    {
      v22 = 0;
    }

    result = 0;
    *a6 = v22;
  }

  else
  {
    result = PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN(this, a2, a4, a5, a6);
  }

LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdFromTail(PSBufferService::AtomicDeque *this, unsigned int *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*this && *(this + 1))
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    v9 = v15;
    do
    {
      _X7 = v16;
      __asm { CASPAL          X6, X7, X2, X3, [X8] }

      _ZF = _X6 == v9;
      v9 = _X6;
    }

    while (!_ZF);
    if (_X2 != 153)
    {
      result = 0;
      *a2 = _X2;
      goto LABEL_10;
    }

    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdFromTail(uint32_t &)";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }
  }

  result = 2;
LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN(PSBufferService::AtomicDeque *this, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*this || !*(this + 1))
  {
LABEL_13:
    result = 2;
    goto LABEL_14;
  }

  v5 = *(*this + 32);
  if (v5 < a2)
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PBSResult PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN(uint64_t, uint32_t *, uint64_t *) const";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v29 = 1024;
      v30 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s Invalid params. lastNCount=%llu deque_->numNodes=%d", buf, 0x1Cu);
    }

    result = 3;
    goto LABEL_14;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  v15 = *buf;
  do
  {
    _X11 = *&buf[8];
    __asm { CASPAL          X10, X11, X4, X5, [X8] }

    _ZF = _X10 == v15;
    v15 = _X10;
  }

  while (!_ZF);
  if (_X4 == 153)
  {
    v18 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315138;
      v27 = "PBSResult PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN(uint64_t, uint32_t *, uint64_t *) const";
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, "%s No Nodes left", &v26, 0xCu);
    }

    goto LABEL_13;
  }

  v20 = 0;
  if (a2)
  {
    v21 = _X4;
    v22 = a2 - 1;
    do
    {
      v23 = *(this + 1) + (v21 << 7);
      v24 = atomic_load((v23 + 8));
      if (v24 != 0xFFFFFFFF && v24 > *(*this + 32))
      {
        v25 = atomic_load((v23 + 24));
        a3[v20++] = v25;
      }

      v21 = atomic_load((v23 + 20));
      if (!v22)
      {
        break;
      }

      --v22;
    }

    while (v21 != 153);
  }

  result = 0;
  *a4 = v20;
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL PSBufferService::AtomicDeque::EverEnqueued(PSBufferService::AtomicDeque *this)
{
  if (!*this || !*(this + 1))
  {
    return 0;
  }

  v1 = atomic_load((*this + 40));
  return v1 != 0;
}

uint64_t PSBufferService::AtomicDeque::FindMissingNodeInQueue(PSBufferService::AtomicDeque *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*this)
  {
    return 2;
  }

  if (!*(this + 1))
  {
    return 2;
  }

  _X2 = 0;
  _X3 = 0;
  v8 = (*(*this + 32) + *(*this + 32) * *(*this + 32)) >> 1;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  do
  {
    _X7 = a6;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == a5;
    a5 = _X6;
  }

  while (!_ZF);
  for (i = (*(this + 1) + (_X2 << 7)); ; i = (v18 + (v19 << 7)))
  {
    v17 = atomic_load(i + 4);
    if (v17 == 153)
    {
      break;
    }

    v8 += ~*i;
    v18 = *(this + 1);
    v19 = atomic_load(i + 4);
  }

  v20 = v8 + ~*i;
  if (!v20)
  {
    return 2;
  }

  result = 0;
  *a2 = v20 - 1;
  return result;
}

uint64_t PSBufferService::AtomicDeque::AddNodeToTail(PSBufferService::AtomicDeque *this, unsigned int a2)
{
  if (!*this)
  {
    return 2;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 2;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X10] }

  v10 = v22;
  do
  {
    _X7 = v23;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    _ZF = _X6 == v10;
    v10 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X3 = 0;
  v15 = (*(this + 1) + (_X4 << 7));
  atomic_store(a2, v15 + 4);
  atomic_store(*v15, (v2 + (a2 << 7) + 20));
  __asm { CASPAL          X2, X3, X2, X3, [X8,#0x20+var_20] }

  v17 = *this;
  v18 = *(*this + 16);
  do
  {
    _X5 = *(v17 + 24);
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    _ZF = _X4 == v18;
    v18 = _X4;
  }

  while (!_ZF);
  return 0;
}

void PSRingSwappableView::~PSRingSwappableView(PSRingSwappableView *this)
{
  *this = &unk_2870CCBE8;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSRingSwappableView::~PSRingSwappableView - Bye!\n", v3, 2u);
  }

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSRingSwappableView::getMemdescForOwner(PSRingSwappableView *this, __int16 a2)
{
  v2 = *(this + 70);
  if (v2[153])
  {
    v3 = v2[154];
    v4 = *(this + 73);
    v5 = (v2[152] + 1) % v3;
    while (1)
    {
      result = v4 + 336 * v5;
      if (!*(result + 6))
      {
        break;
      }

      v5 = (v5 + 1) % v3;
      if (v5 == (v2[152] + 1) % v3)
      {
        PSRingSwappableView::getMemdescForOwner();
      }
    }

    --v2[153];
    *(result + 6) = 1;
    *(result + 4) = a2;
    v2[152] = v5;
  }

  else
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "OUT OF VIEWS!\n", v8, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t PSRingSwappableViewReader::_release_view(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 4) = 0xFFFF;
  v3 = *(a3 + 2) + 1;
  *(a3 + 2) = v3;
  if (*(a3 + 4) < v3)
  {
    PSRingSwappableViewReader::_release_view();
  }

  return 0;
}

uint64_t PSRingSwappableViewReader::initialize(PSSharedSerialData **this)
{
  v28 = *MEMORY[0x277D85DE8];
  Data = PSSharedSerialData::getData(this[75]);
  this[70] = Data;
  v3 = *(Data + 260);
  *(this + 138) = v3;
  this[72] = (Data + 312);
  this[73] = (Data + 312 + 12 * v3);
  v4 = *(Data + 308) - v3;
  *(this + 139) = v4;
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(Data + 306);
    *buf = 67109632;
    v23 = v3;
    v24 = 1024;
    v25 = v4;
    v26 = 1024;
    v27 = v6;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "PSSwappableViewReader mmaped: shared memory numBuffers (%d) numViews (%d) freeViews (%d)\n", buf, 0x14u);
    v3 = *(this + 138);
  }

  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = _ps_buffer_log;
    do
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = (this[72] + v7);
        v11 = *v10;
        v12 = v10[1];
        LODWORD(v10) = v10[2];
        *buf = 67109632;
        v23 = v11;
        v24 = 1024;
        v25 = v12;
        v26 = 1024;
        v27 = v10;
        _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "PSSwappableViewReader: memdec_id (%d) view_memdec_id (%d) id (%d) \n", buf, 0x14u);
        v9 = _ps_buffer_log;
        v3 = *(this + 138);
      }

      ++v8;
      v7 += 12;
    }

    while (v8 < v3);
  }

  v13 = *(this + 139) + v3;
  if (v13)
  {
    v14 = 0;
    v15 = _ps_buffer_log;
    v16 = 336 * v13;
    do
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = (this[73] + v14);
        v18 = v17[1];
        v19 = *v17;
        LODWORD(v17) = v17[2];
        *buf = 67109632;
        v23 = v18;
        v24 = 1024;
        v25 = v19;
        v26 = 1024;
        v27 = v17;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "PSSwappableViewReader: view buff_id (%d) view id (%d) view owner id (%d) \n", buf, 0x14u);
        v15 = _ps_buffer_log;
      }

      v14 += 336;
    }

    while (v16 != v14);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

__int16 *PSRingSwappableViewReader::_getResourcewithViewIndex(PSRingSwappableViewReader *this, int *a2, int a3)
{
  if (a3 << 16 != -65536)
  {
    v7 = (*(this + 72) + 12 * a3);
    if (v7[1] == -1)
    {
      result = PSRingSwappableView::getMemdescForOwner(this, a3);
      if (!result)
      {
        LODWORD(v5) = -2;
        goto LABEL_19;
      }

      v9 = *v7;
      if (v9 == -1)
      {
        PSRingSwappableViewReader::_getResourcewithViewIndex();
      }

      v7[1] = v9;
      *v7 = *result;
      *(v7 + 2) &= ~1u;
      result = (*(this + 73) + 336 * v9);
      if ((*(this + 592) & 1) == 0)
      {
        v8 = result + 8;
        v5 = 20;
        while (*v8)
        {
          v8 += 8;
          if (!--v5)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      result = (*(this + 73) + 336 * v7[1]);
      ++result[3];
      if ((*(this + 592) & 1) == 0)
      {
        v8 = result + 8;
        v5 = 20;
        while (*v8)
        {
          v8 += 8;
          if (!--v5)
          {
            goto LABEL_19;
          }
        }

LABEL_18:
        LODWORD(v5) = 0;
        *v8 = *(this + 71);
        *(v8 + 2) = *(this + 136);
        goto LABEL_19;
      }
    }

    LODWORD(v5) = 0;
    goto LABEL_19;
  }

  result = 0;
  LODWORD(v5) = -1;
LABEL_19:
  *a2 = v5;
  return result;
}

__int16 *PSRingSwappableViewReader::_getResourceLastN(PSRingSwappableViewReader *this, int *a2, __int16 **a3, unint64_t a4, uint64_t *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(this + 70);
  v7 = *(v6 + 260);
  v8 = (v7 - 1);
  if (v8 < a4)
  {
    v34 = 0;
    v23 = a4;
    Key = PSSharedResource::getKey(this);
    v25 = v23;
    asprintf(&v34, "requested_buffer_count=%llu is greater than depth-1=%d for key=%s", v23, v8, Key);
    v26 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v27 = *(*(this + 70) + 260) - 1;
      v28 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v36 = "_getResourceLastN";
      v37 = 1024;
      v38 = 168;
      v39 = 2048;
      v40 = v25;
      v41 = 1024;
      v42 = v27;
      v43 = 2080;
      v44 = v28;
      _os_log_impl(&dword_25EBC5000, v26, OS_LOG_TYPE_FAULT, "%s:%d requested_buffer_count=%llu is greater than depth-1=%d for key=%s", buf, 0x2Cu);
    }

    v29 = OSLogFlushBuffers();
    if (v29)
    {
      v30 = v29;
      v31 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "_getResourceLastN";
        v37 = 1024;
        v38 = v30;
        _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v32 = abort_with_reason();
    return PSRingSwappableViewReader::getResourcewithBufferID(v32, v33);
  }

  else
  {
    if (*(v6 + 296) < a4)
    {
      a4 = *(v6 + 296);
    }

    v12 = *(v6 + 280);
    if (*(v6 + 280) == 0xFFFF)
    {
      v13 = *(v6 + 280);
    }

    else
    {
      v14 = v7 + v12 - (a4 - 1);
      if (v12 >= a4 - 1)
      {
        LOWORD(v13) = v12 - (a4 - 1);
      }

      else
      {
        LOWORD(v13) = v14;
      }
    }

    v15 = v12;
    result = PSRingSwappableViewReader::_getResourcewithViewIndex(this, a2, v12);
    *a3 = result;
    if (result)
    {
      v17 = a3 + 1;
      v18 = 0x100000000;
      do
      {
        v19 = v18;
        if (v13 == v15)
        {
          break;
        }

        v20 = v12 ? v12 : *(*(this + 70) + 260);
        v12 = (v20 - 1) % *(*(this + 70) + 260);
        v15 = v12;
        result = PSRingSwappableViewReader::_getResourcewithViewIndex(this, a2, v12);
        *v17++ = result;
        v18 = v19 + 0x100000000;
      }

      while (result);
      v21 = v19 >> 32;
    }

    else
    {
      v21 = 0;
    }

    *a5 = v21;
    v22 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t PSRingSwappableViewReader::getResourcewithBufferID(PSRingSwappableViewReader *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewReader::getResourcewithBufferID(&v15);
  }

  v2 = *(this + 73) + 336 * a2;
  v3 = *(v2 + 6);
  if (!v3)
  {
    return 4294967293;
  }

  v4 = (*(this + 72) + 12 * *(v2 + 4));
  v5 = *v4;
  if (v5 == -1)
  {
    return 4294967293;
  }

  v6 = v4[1];
  if (v5 == a2)
  {
    if (v6 != 0xFFFF)
    {
      return 4294967293;
    }

    v6 = 0xFFFF;
  }

  else if (v4[1] != a2)
  {
    *(v2 + 6) = v3 + 1;
    if (*(this + 592))
    {
      return 0;
    }

    v9 = v2 + 16;
    v10 = 20;
    while (1)
    {
      v7 = *v9;
      if (!*v9)
      {
        break;
      }

      v7 = 0;
      v9 += 16;
      if (!--v10)
      {
        return v7;
      }
    }

LABEL_28:
    *v9 = *(this + 71);
    *(v9 + 8) = *(this + 136);
    return v7;
  }

  if (a2 == v6)
  {
    *(v2 + 6) = v3 + 1;
    if (*(this + 592))
    {
      return 0;
    }

    v9 = v2 + 16;
    v12 = 20;
    while (1)
    {
      v7 = *v9;
      if (!*v9)
      {
        break;
      }

      v7 = 0;
      v9 += 16;
      if (!--v12)
      {
        return v7;
      }
    }

    goto LABEL_28;
  }

  if (v5 == a2 && v6 == 0xFFFF)
  {
    LODWORD(v15) = 0;
    PSRingSwappableViewReader::_getResourcewithViewIndex(this, &v15, v4[2]);
    return v15;
  }

  ResourcewithBufferID = PSRingSwappableViewReader::getResourcewithBufferID(&v15);
  return PSRingSwappableViewReader::getResource(ResourcewithBufferID, v14);
}

uint64_t PSRingSwappableViewReader::getResource(PSRingSwappableViewReader *this, unsigned int *a2)
{
  v5 = 0;
  ResourcewithViewIndex = PSRingSwappableViewReader::_getResourcewithViewIndex(this, &v5, *(*(this + 70) + 280));
  if (!ResourcewithViewIndex)
  {
    return v5;
  }

  *a2 = ResourcewithViewIndex[3];
  return ResourcewithViewIndex[1];
}

uint64_t PSRingSwappableViewReader::getResource(PSRingSwappableViewReader *this)
{
  v3 = 0;
  ResourcewithViewIndex = PSRingSwappableViewReader::_getResourcewithViewIndex(this, &v3, *(*(this + 70) + 280));
  if (ResourcewithViewIndex)
  {
    return ResourcewithViewIndex[1];
  }

  else
  {
    return v3;
  }
}

__int16 *PSRingSwappableViewReader::getResourceLastN(PSRingSwappableViewReader *this, int *a2, unint64_t a3, unsigned int *a4, unint64_t *a5, unint64_t *a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *(this + 138);
  if (v8 < a3)
  {
    v29 = 0;
    asprintf(&v29, "Unsupported last N count %llu. Only upto %d supported", a3, v8);
    v20 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v21 = *(this + 138);
      *buf = 136315906;
      v31 = "getResourceLastN";
      v32 = 1024;
      v33 = 324;
      v34 = 2048;
      v35 = a3;
      v36 = 1024;
      v37 = v21;
      _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_FAULT, "%s:%d Unsupported last N count %llu. Only upto %d supported", buf, 0x22u);
    }

    v22 = OSLogFlushBuffers();
    if (v22)
    {
      v23 = v22;
      v24 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "getResourceLastN";
        v32 = 1024;
        v33 = v23;
        _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v25 = abort_with_reason();
    return PSRingSwappableViewReader::relinquishResource(v25, v26, v27);
  }

  else
  {
    MEMORY[0x28223BE20](this);
    v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v12 >= 0x200)
    {
      v14 = 512;
    }

    else
    {
      v14 = v12;
    }

    bzero(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    result = PSRingSwappableViewReader::_getResourceLastN(this, buf, v13, a3, a6);
    v16 = *a6;
    if (*a6)
    {
      v17 = a4;
      do
      {
        v18 = *v13;
        if (!*v13)
        {
          break;
        }

        if (a4)
        {
          *v17 = v18[3];
        }

        *a2++ = v18[1];
        ++v17;
        ++v13;
        --v16;
      }

      while (v16);
    }

    v19 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t PSRingSwappableViewReader::relinquishResource(PSRingSwappableViewReader *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewReader::relinquishResource(&v15);
  }

  v3 = (*(this + 73) + 336 * a2);
  if (!v3[3])
  {
    PSRingSwappableViewReader::relinquishResource();
  }

  v5 = v3[3] - 1;
  v3[3] = v5;
  if (*(this + 592))
  {
LABEL_7:
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = v3 + 8;
  v7 = 20;
  while (*v6 != *(this + 71))
  {
    v6 += 8;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  *v6 = 0;
  *(v6 + 2) = 0;
  if (a3)
  {
LABEL_8:
    *a3 = v5;
    v5 = v3[3];
  }

LABEL_9:
  if (v5)
  {
    goto LABEL_18;
  }

  if (v3[2] == -1)
  {
    PSRingSwappableViewReader::relinquishResource();
  }

  v8 = (*(this + 72) + 12 * v3[2]);
  v9 = v8[1];
  if (v9 != *v3)
  {
    PSRingSwappableViewReader::_release_view(this, v3, *(this + 70) + 304);
LABEL_18:
    if (!a3)
    {
      return 0;
    }

LABEL_19:
    *a3 = v3[3];
    return 0;
  }

  v10 = *(v8 + 2);
  if ((v10 & 1) != 0 || (v11 = *v8, v11 == -1))
  {
    v13 = *(this + 70) + 304;
    v12 = v3;
  }

  else
  {
    *v8 = v9;
    *(v8 + 2) = v10 | 1;
    v3[3] = 1;
    v12 = *(this + 73) + 336 * v11;
    v13 = *(this + 70) + 304;
  }

  PSRingSwappableViewReader::_release_view(this, v12, v13);
  v8[1] = -1;
  if (a3)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t PSRingSwappableViewReader::relinquishResourceWithoutWriteIndexIncrement(PSRingSwappableViewReader *this, int a2, unsigned __int16 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s: %s Cannot relinquish resource and increment the write index for a reader. Something is wrong.\n", "PSRingSwappableViewReader", "relinquishResourceWithoutWriteIndexIncrement");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "relinquishResourceWithoutWriteIndexIncrement";
    v12 = 1024;
    v13 = 423;
    v14 = 2080;
    v15 = "PSRingSwappableViewReader";
    v16 = 2080;
    v17 = "relinquishResourceWithoutWriteIndexIncrement";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: %s Cannot relinquish resource and increment the write index for a reader. Something is wrong.\n", buf, 0x26u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "relinquishResourceWithoutWriteIndexIncrement";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSRingSwappableViewReader::incrementWriteIndex(v7);
}

PSRingSwappableViewReader *PSRingSwappableViewReader::incrementWriteIndex(PSRingSwappableViewReader *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0;
  asprintf(&v11, "%s: %s Cannot increment the write index for a reader. Something is wrong.\n", "PSRingSwappableViewReader", "incrementWriteIndex");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v13 = "incrementWriteIndex";
    v14 = 1024;
    v15 = 428;
    v16 = 2080;
    v17 = "PSRingSwappableViewReader";
    v18 = 2080;
    v19 = "incrementWriteIndex";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s: %s Cannot increment the write index for a reader. Something is wrong.\n", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "incrementWriteIndex";
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  return PSRingSwappableViewReader::PSRingSwappableViewReader(v5, v6, v7, v8, v9);
}

uint64_t PSRingSwappableViewReader::relinquishAllPreviouslyHeldViews(uint64_t this)
{
  v6 = 0;
  if ((*(this + 592) & 1) == 0)
  {
    v1 = this;
    if (*(this + 552) + *(this + 556))
    {
      v2 = 0;
      v3 = 24;
      do
      {
        v4 = (*(v1 + 584) + v3);
        v5 = 20;
        do
        {
          if (*(v4 - 1) == *(v1 + 568) && *v4 != *(v1 + 544))
          {
            this = (*(*v1 + 80))(v1, v2, &v6);
          }

          v4 += 4;
          --v5;
        }

        while (v5);
        ++v2;
        v3 += 336;
      }

      while (v2 < (*(v1 + 552) + *(v1 + 556)));
    }
  }

  return this;
}

void PSRingSwappableViewReader::~PSRingSwappableViewReader(PSRingSwappableViewReader *this)
{
  *this = &unk_2870CCCB0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, " PSRingSwappableViewReader::~PSRingSwappableViewReader - Bye!", v4, 2u);
  }

  v3 = *(this + 75);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PSRingSwappableView::~PSRingSwappableView(this);
}

{
  PSRingSwappableViewReader::~PSRingSwappableViewReader(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_4_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x2Cu);
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void PSRingSwappableViewWriter::setupMemdesc(PSRingSwappableViewWriter *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = *(this + 70);
  v1 = *(this + 138);
  v2 = *(this + 139);
  v3 = (v2 + v1);
  if (v2 + v1)
  {
    v5 = 0;
    v6 = _ps_buffer_log;
    v7 = 2;
    do
    {
      v8 = (*(this + 73) + v7);
      *v8 = v5;
      *(v8 - 1) = v5;
      v8[1] = -1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v12 = v5;
        v13 = 1024;
        v14 = v5;
        v15 = 1024;
        v16 = -1;
        _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "PSSwappableViewWriter: view buff_id (%d) view id (%d) view owner id (%d) \n", buf, 0x14u);
        v6 = _ps_buffer_log;
      }

      ++v5;
      v7 += 336;
    }

    while (v3 != v5);
  }

  v10[152] = -1;
  v10[154] = v3;
  v10[153] = v3;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t PSRingSwappableViewWriter::initialize(PSSharedSerialData **this)
{
  v21 = *MEMORY[0x277D85DE8];
  Data = PSSharedSerialData::getData(this[74]);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *v18 = Data;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "PSSwappableViewWriter: initialize [CANARY: %s]\n", buf, 0xCu);
  }

  this[70] = Data;
  *(Data + 260) = *(this + 138);
  *(this[70] + 70) = -1;
  *(this[70] + 37) = 0;
  this[72] = (Data + 312);
  this[73] = (Data + 312 + 12 * *(this + 138));
  PSRingSwappableViewWriter::setupMemdesc(this);
  LODWORD(v4) = *(this + 138);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      MemdescForOwner = PSRingSwappableView::getMemdescForOwner(this, v6);
      if (!MemdescForOwner)
      {
        PSRingSwappableViewWriter::initialize();
      }

      v8 = (this[72] + v5);
      *v8 = *MemdescForOwner;
      v8[1] = -1;
      v8[2] = v6++;
      v4 = *(this + 138);
      v5 += 12;
    }

    while (v6 < v4);
  }

  v9 = *(this + 139);
  v10 = (v9 + v4);
  if (v9 + v4)
  {
    v11 = 0;
    v12 = _ps_buffer_log;
    v13 = 2;
    do
    {
      v14 = (this[73] + v13);
      *v14 = v11;
      *(v14 - 1) = v11;
      v14[1] = -1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v18 = v11;
        *&v18[4] = 1024;
        *&v18[6] = v11;
        v19 = 1024;
        v20 = -1;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "PSSwappableViewWriter: view buff_id (%d) view id (%d) view owner id (%d) \n", buf, 0x14u);
        v12 = _ps_buffer_log;
      }

      ++v11;
      v13 += 336;
    }

    while (v10 != v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSRingSwappableViewWriter::getResource(PSRingSwappableViewWriter *this)
{
  v1 = (*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260);
  v2 = (*(this + 72) + 12 * v1);
  if (*v2 == -1)
  {
    PSRingSwappableViewWriter::getResource();
  }

  v3 = (*(this + 73) + 336 * *v2);
  v4 = v3[1];
  if (v4 == -1 || v3[3] != 1)
  {
    PSRingSwappableViewWriter::getResource(this);
  }

  v3[2] = v1;
  *v2 = -1;
  return v4;
}

uint64_t PSRingSwappableViewWriter::relinquishResource(PSRingSwappableViewWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewWriter::relinquishResource(&v7);
LABEL_6:
    PSRingSwappableViewWriter::relinquishResource();
  }

  v3 = (*(this + 73) + 336 * a2);
  v4 = v3[2];
  v5 = (*(this + 72) + 12 * v3[2]);
  if (*v5 != -1)
  {
    goto LABEL_6;
  }

  if (v4 != ((*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260)))
  {
    PSRingSwappableViewWriter::relinquishResource();
  }

  *v5 = *v3;
  v5[1] = -1;
  *(v5 + 2) |= 1u;
  *(*(this + 70) + 280) = v4;
  ++*(*(this + 70) + 296);
  *a3 = 0;
  return 0;
}

uint64_t PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(PSRingSwappableViewWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(&v6);
LABEL_6:
    PSRingSwappableViewWriter::relinquishResource();
  }

  v3 = (*(this + 73) + 336 * a2);
  v4 = (*(this + 72) + 12 * v3[2]);
  if (*v4 != -1)
  {
    goto LABEL_6;
  }

  if (v3[2] != ((*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260)))
  {
    PSRingSwappableViewWriter::relinquishResource();
  }

  *v4 = *v3;
  v4[1] = -1;
  *(v4 + 2) |= 1u;
  *a3 = 0;
  return 0;
}

uint64_t PSRingSwappableViewWriter::incrementWriteIndex(PSRingSwappableViewWriter *this)
{
  *(*(this + 70) + 280) = (*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260);
  ++*(*(this + 70) + 296);
  return 0;
}

void PSRingSwappableViewWriter::~PSRingSwappableViewWriter(PSRingSwappableViewWriter *this)
{
  *this = &unk_2870CCD78;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSRingSwappableViewWriter::~PSRingSwappableViewWriter - Bye!\n", v4, 2u);
  }

  v3 = *(this + 74);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PSRingSwappableView::~PSRingSwappableView(this);
}

{
  PSRingSwappableViewWriter::~PSRingSwappableViewWriter(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_6_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

PSAtomicWnRnArray *ps_buffer_destroy_atomic_array(PSAtomicWnRnArray *result)
{
  if (result)
  {
    PSAtomicWnRnArray::~PSAtomicWnRnArray(result);

    JUMPOUT(0x25F8CA500);
  }

  return result;
}

uint64_t ps_buffer_atomic_array_create_in_buffer(PSAtomicWnRnArray *a1, unsigned int a2, char *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::createInBuffer(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_init_from_buffer(PSAtomicWnRnArray *a1, _DWORD *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::initFromBuffer(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_acquire_write_idx(PSAtomicWnRnArray *a1, unint64_t *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::acquireWriteIdx(a1, a2, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_acquire_write_idx_get_updated_mask(PSAtomicWnRnArray *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::acquireWriteIdx(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_clear_write_idx(PSAtomicWnRnArray *a1, unint64_t a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::clearWriteIdx(a1, a2, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_clear_write_idx_get_updated_mask(PSAtomicWnRnArray *a1, unint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::clearWriteIdx(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_relinquish_write_idx(PSAtomicWnRnArray *a1, unint64_t a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::relinquishWriteIdx(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_acquire_read_idx(PSAtomicWnRnArray *a1, unint64_t *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::acquireReadIdx(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_relinquish_read_idx(PSAtomicWnRnArray *a1, unint64_t a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::relinquishReadIdx(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_handle_death(unint64_t *a1, int a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  PSAtomicWnRnArray::handleDeath(a1, a2, 0, 0);
  return 0;
}

uint64_t ps_buffer_atomic_array_handle_death_get_updated_mask(unint64_t *a1, int a2, unint64_t *a3)
{
  v3 = 3758097090;
  if (a1)
  {
    v5 = 0;
    PSAtomicWnRnArray::handleDeath(a1, a2, &v5, a3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return 3758097101;
    }
  }

  return v3;
}

PSAtomicWnRnArray *ps_buffer_atomic_array_get_arr_size(PSAtomicWnRnArray *result)
{
  if (result)
  {
    return PSAtomicWnRnArray::getArrSize(result);
  }

  return result;
}