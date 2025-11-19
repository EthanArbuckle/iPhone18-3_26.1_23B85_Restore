uint64_t ps_buffer_writer_camerastream_install_metadata_bufferpool(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(result + 128))
  {
    v2 = result;
    v3 = *(result + 168);
    if (*(v3 + 2) == 11)
    {
      v4 = *v3;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = (*(v3 + 3) + (*(v3 + 2) + *(*(result + 168) + 4)) * *(v3 + 20) + *v3);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    v6 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/Polaris/RealityCamera/BufferResource/PSBufferWriter.m";
      v11 = 2080;
      v12 = "ps_buffer_writer_camerastream_install_metadata_bufferpool";
      v13 = 1024;
      v14 = 452;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "%s:%s:%d - Installing surfaces for camera stream", &v9, 0x1Cu);
    }

    v7 = *(v2 + 160);
    result = ps_buffer_camera_stream_writer_install_metadatasurfaces();
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *ps_buffer_writer_get_cam_stream_attr(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    cam_stream_attr_cold_1 = ps_buffer_writer_get_cam_stream_attr_cold_1(&v7);
    return _serializeMetadata(cam_stream_attr_cold_1, v4, v5, v6);
  }

  else
  {
    result = *(a1 + 168);
    if (!result)
    {
      result = malloc_type_calloc(1uLL, 0x60uLL, 0x10200409F2A63CEuLL);
      *(a1 + 168) = result;
    }
  }

  return result;
}

uint64_t _serializeMetadata(const __CFData *a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    Length = CFDataGetLength(a1);
    if (Length + 16 < a3)
    {
      v9.length = Length;
      *a2 = Length;
      *(a2 + 8) = a4;
      if (Length)
      {
        v9.location = 0;
        CFDataGetBytes(a1, v9, (a2 + 16));
      }

      result = 0;
      goto LABEL_11;
    }
  }

  else if (a3 >= 0x11)
  {
    result = 0;
    *a2 = 0;
    *(a2 + 8) = a4;
    goto LABEL_11;
  }

  v11 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "_serializeMetadata";
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "(%s): Metadata size exceeds allocated size!", &v13, 0xCu);
  }

  result = 0xFFFFFFFFLL;
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _copyCVPixelBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a2, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a2);
  v5 = 0;
  if (PlaneCount <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = PlaneCount;
  }

  do
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, v5);
    v8 = CVPixelBufferGetHeightOfPlane(a1, v5);
    if (HeightOfPlane >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = HeightOfPlane;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v5);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v5);
    v12 = CVPixelBufferGetBaseAddressOfPlane(a2, v5);
    v13 = CVPixelBufferGetBytesPerRowOfPlane(a2, v5);
    if (BytesPerRowOfPlane >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = BytesPerRowOfPlane;
    }

    if (v9 >= 1)
    {
      v15 = v13;
      do
      {
        memcpy(v12, BaseAddressOfPlane, v14);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v12 += v15;
        --v9;
      }

      while (v9);
    }

    ++v5;
  }

  while (v5 != v6);
  CVPixelBufferUnlockBaseAddress(a2, 0);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t _copyCVDataBuffer()
{
  DataSize = CVDataBufferGetDataSize();
  IOSurface = CVDataBufferGetIOSurface();
  v2 = CVDataBufferGetIOSurface();
  IOSurfaceLock(v2, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v2);
  IOSurfaceLock(IOSurface, 0, 0);
  v4 = IOSurfaceGetBaseAddress(IOSurface);
  memcpy(BaseAddress, v4, DataSize);
  IOSurfaceUnlock(IOSurface, 0, 0);

  return IOSurfaceUnlock(v2, 0, 0);
}

uint64_t _copyIOSurface(__IOSurface *a1, __IOSurface *a2)
{
  IOSurfaceLock(a1, 0, 0);
  IOSurfaceLock(a2, 0, 0);
  PlaneCount = IOSurfaceGetPlaneCount(a2);
  v5 = 0;
  if (PlaneCount <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = PlaneCount;
  }

  do
  {
    HeightOfPlane = IOSurfaceGetHeightOfPlane(a2, v5);
    v8 = IOSurfaceGetHeightOfPlane(a1, v5);
    if (HeightOfPlane >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = HeightOfPlane;
    }

    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, v5);
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, v5);
    v12 = IOSurfaceGetBaseAddressOfPlane(a2, v5);
    v13 = IOSurfaceGetBytesPerRowOfPlane(a2, v5);
    if (BytesPerRowOfPlane >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = BytesPerRowOfPlane;
    }

    if (v9 >= 1)
    {
      v15 = v13;
      do
      {
        memcpy(v12, BaseAddressOfPlane, v14);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v12 += v15;
        --v9;
      }

      while (v9);
    }

    ++v5;
  }

  while (v5 != v6);
  IOSurfaceUnlock(a2, 0, 0);

  return IOSurfaceUnlock(a1, 0, 0);
}

uint64_t _publishCVPixelBuffer(uint64_t a1, const __CFData *a2, __CVBuffer *a3, unint64_t a4)
{
  v8 = *(a1 + 160);
  v9 = ps_buffer_get_write_buffers();
  v10 = *(v9 + 40);
  _copyCVPixelBuffer(a3, *(v9 + 8));
  if (_serializeMetadata(a2, v10, 0x16000u, a4))
  {
    v13 = _publishCVPixelBuffer_cold_1(&v14);
    return _publishCVDataBuffer(v13);
  }

  else
  {
    v11 = *(a1 + 160);
    ps_buffer_release_write_buffers();
    return 0;
  }
}

uint64_t _publishCVDataBuffer(uint64_t a1, const __CFData *a2, uint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 160);
  v8 = ps_buffer_get_write_buffers();
  v9 = *(v8 + 8);
  v10 = *(v8 + 40);
  _copyCVDataBuffer();
  if (_serializeMetadata(a2, v10, 0x16000u, a4))
  {
    v13 = _publishCVDataBuffer_cold_1(&v14);
    return _publishIOSurface(v13);
  }

  else
  {
    v11 = *(a1 + 160);
    ps_buffer_release_write_buffers();
    return 0;
  }
}

uint64_t _publishIOSurface(uint64_t a1, __IOSurface *a2, uint64_t a3)
{
  v6 = *(a1 + 160);
  v7 = ps_buffer_get_write_buffers();
  v8 = *(v7 + 8);
  **(v7 + 40) = a3;
  _copyIOSurface(a2, v8);
  v9 = *(a1 + 160);
  ps_buffer_release_write_buffers();
  return 0;
}

uint64_t ps_buffer_writer_publish_resource(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 128);
  if (v5)
  {
    if (v5 != 1)
    {
LABEL_44:
      v35 = *MEMORY[0x277D85DE8];
      return 0;
    }

    v6 = *(*(a1 + 168) + 24);
    switch(v6)
    {
      case 4:
        MEMORY[0x25F8C9230](a2, 0);
        iosurface = ps_resource_surface_get_iosurface();
        v20 = MEMORY[0x25F8C9240](a2, 0);
        _publishIOSurface(a1, iosurface, v20);
        goto LABEL_44;
      case 8:
        MEMORY[0x25F8C9160](a2, 0);
        metadata = ps_resource_databuffer_get_metadata();
        databuffer = ps_resource_databuffer_get_databuffer();
        v18 = MEMORY[0x25F8C9240](a2, 0);
        _publishCVDataBuffer(a1, metadata, databuffer, v18);
        goto LABEL_44;
      case 7:
        MEMORY[0x25F8C9210](a2, 0);
        v7 = ps_resource_pixelbuffer_get_metadata();
        cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer();
        v9 = MEMORY[0x25F8C9240](a2, 0);
        _publishCVPixelBuffer(a1, v7, cvpixelbuffer, v9);
        goto LABEL_44;
    }

    ps_buffer_writer_publish_resource_cold_6(v43);
    goto LABEL_46;
  }

  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v11 = *(a1 + 168);
  WORD4(v44) = *(v11 + 56);
  v12 = *(v11 + 16);
  if (v12 <= 8)
  {
    if (v12 == 7)
    {
      MEMORY[0x25F8C9210](a2, 0);
      ps_resource_pixelbuffer_get_cvpixelbuffer();
      v21 = MEMORY[0x25F8C9240](a2, 0);
      v14 = ps_util_mct_to_mat(v21);
      MEMORY[0x25F8C9200](a2, 0);
      *&v43[0] = v14;
      ps_telemetry_emit_event_internal(0, v43, 0x30uLL, 8);
      ps_liveness_node_start_execution(*(a1 + 136), a3);
      if (MEMORY[0x25F8C91C0](a2, 0))
      {
        if (MEMORY[0x25F8C91C0](a2, 0) != 1)
        {
LABEL_49:
          ps_buffer_writer_publish_resource_cold_4(&v39);
          goto LABEL_50;
        }

        ps_resource_pixelbuffer_get_iosurface_metadata();
      }

      else
      {
        ps_resource_pixelbuffer_get_cfdata_metadata();
      }

      v25 = *(a1 + 160);
      goto LABEL_34;
    }

    if (v12 == 8)
    {
      MEMORY[0x25F8C9160](a2, 0);
      if (MEMORY[0x25F8C91C0](a2, 0))
      {
        if (MEMORY[0x25F8C91C0](a2, 0) != 1)
        {
LABEL_47:
          ps_buffer_writer_publish_resource_cold_3(&v39);
          goto LABEL_48;
        }

        ps_resource_databuffer_get_iosurface_metadata();
      }

      else
      {
        ps_resource_databuffer_get_cfdata_metadata();
      }

      ps_resource_databuffer_get_databuffer();
      v32 = MEMORY[0x25F8C9240](a2, 0);
      v14 = ps_util_mct_to_mat(v32);
      MEMORY[0x25F8C9200](a2, 0);
      *&v43[0] = v14;
      ps_telemetry_emit_event_internal(0, v43, 0x30uLL, 8);
      ps_liveness_node_start_execution(*(a1 + 136), a3);
      v33 = *(a1 + 160);
LABEL_34:
      v27 = ps_buffer_camera_stream_writer_write_buffers();
      v28 = *(a1 + 136);
      if (v27 != 1000)
      {
        ps_liveness_node_end_execution(v28);
        v29 = *(a1 + 168);
        v30 = v29[3];
        if (!v30)
        {
          *&v49 = a3;
          ps_buffer_writer_camerastream_attach_synctag(a1);
          dxbuffer = a3;
          dybuffer = v27;
          v42 = 0;
          v41 = 0u;
          v40 = 0u;
          LOWORD(v42) = *(*(a1 + 168) + 56);
          v39 = v14;
          ps_telemetry_emit_event_internal(2, &v39, 0x30uLL, 8);
          v31 = &dxbuffer;
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_46:
    ps_buffer_writer_publish_resource_cold_5(&v39);
    goto LABEL_47;
  }

  if (v12 != 9)
  {
    if (v12 == 11)
    {
      MEMORY[0x25F8C91F0](a2, 0);
      dxbuffer = ps_resource_pearlbuffer_get_dxbuffer();
      dybuffer = ps_resource_pearlbuffer_get_dybuffer();
      scorebuffer = ps_resource_pearlbuffer_get_scorebuffer();
      depthbuffer = ps_resource_pearlbuffer_get_depthbuffer();
      v13 = MEMORY[0x25F8C9240](a2, 0);
      v14 = ps_util_mct_to_mat(v13);
      MEMORY[0x25F8C9200](a2, 0);
      *&v43[0] = v14;
      ps_telemetry_emit_event_internal(0, v43, 0x30uLL, 8);
      ps_liveness_node_start_execution(*(a1 + 136), a3);
      *(&v49 + 1) = 0;
      v50 = 0uLL;
      if (MEMORY[0x25F8C91C0](a2, 0))
      {
        if (MEMORY[0x25F8C91C0](a2, 0) != 1)
        {
LABEL_48:
          ps_buffer_writer_publish_resource_cold_1(&v39);
          goto LABEL_49;
        }

        iosurface_metadata = ps_resource_pearlbuffer_get_iosurface_metadata();
      }

      else
      {
        iosurface_metadata = ps_resource_pearlbuffer_get_cfdata_metadata();
      }

      *&v49 = iosurface_metadata;
      v47 = 0;
      v48 = 0;
      v45 = v14;
      v46 = 0;
      v34 = *(a1 + 160);
      v27 = ps_buffer_camera_stream_writer_write_multiple_buffers();
      v28 = *(a1 + 136);
      if (v27 != 1000)
      {
        ps_liveness_node_end_execution(v28);
        v29 = *(a1 + 168);
        v30 = v29[3];
        if (!v30)
        {
          v38[2] = a3;
          ps_buffer_writer_camerastream_attach_synctag(a1);
          v38[0] = a3;
          v38[1] = v27;
          v42 = 0;
          v41 = 0u;
          v40 = 0u;
          LOWORD(v42) = *(*(a1 + 168) + 56);
          v39 = v14;
          ps_telemetry_emit_event_internal(2, &v39, 0x30uLL, 8);
          v31 = v38;
          goto LABEL_43;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    goto LABEL_46;
  }

  MEMORY[0x25F8C91A0](a2, 0);
  v22 = MEMORY[0x25F8C9240](a2, 0);
  v14 = ps_util_mct_to_mat(v22);
  MEMORY[0x25F8C9200](a2, 0);
  *&v43[0] = v14;
  ps_telemetry_emit_event_internal(0, v43, 0x30uLL, 8);
  ps_liveness_node_start_execution(*(a1 + 136), a3);
  dxbuffer = v14;
  dybuffer = v14;
  depthbuffer = v14;
  scorebuffer = v14;
  databuffer_array = ps_resource_jasperbuffer_get_databuffer_array();
  v24 = databuffer_array[1];
  v49 = *databuffer_array;
  v50 = v24;
  if (!MEMORY[0x25F8C91C0](a2, 0))
  {
    ps_resource_jasperbuffer_get_cfdata_metadata_array();
LABEL_29:
    v26 = *(a1 + 160);
    v27 = ps_buffer_camera_stream_writer_write_multiple_buffers();
    v28 = *(a1 + 136);
    if (v27 != 1000)
    {
      ps_liveness_node_end_execution(v28);
      v29 = *(a1 + 168);
      v30 = v29[3];
      if (!v30)
      {
        v38[0] = a3;
        ps_buffer_writer_camerastream_attach_synctag(a1);
        v45 = a3;
        v46 = v27;
        v42 = 0;
        v41 = 0u;
        v40 = 0u;
        LOWORD(v42) = *(*(a1 + 168) + 56);
        v39 = v14;
        ps_telemetry_emit_event_internal(2, &v39, 0x30uLL, 8);
        v31 = &v45;
LABEL_43:
        ps_buffer_writer_broadcast_resource(a1, v31);
        goto LABEL_44;
      }

LABEL_41:
      ps_synchronizer_check_time_and_broadcast(v30, v14, v29[4], v29[6], v27);
      goto LABEL_44;
    }

LABEL_39:
    ps_liveness_node_end_execution(v28);
    goto LABEL_44;
  }

  if (MEMORY[0x25F8C91C0](a2, 0) == 1)
  {
    ps_resource_jasperbuffer_get_iosurface_metadata_array();
    goto LABEL_29;
  }

LABEL_50:
  v37 = ps_buffer_writer_publish_resource_cold_2(&v39);
  return ps_buffer_writer_camerastream_attach_synctag(v37);
}

uint64_t ps_buffer_writer_camerastream_attach_synctag(uint64_t result)
{
  v3 = *(result + 128);
  if (v3)
  {
    if (v3 == 1)
    {
      v6[1] = v1;
      v6[2] = v2;
      v5 = ps_buffer_writer_camerastream_attach_synctag_cold_1(v6);
      return ps_buffer_writer_broadcast_resource(v5);
    }
  }

  else
  {
    v4 = *(result + 160);

    return MEMORY[0x28219F040](v4);
  }

  return result;
}

uint64_t ps_buffer_writer_broadcast_resource(uint64_t a1, void *a2)
{
  v2 = *(a1 + 128);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    a1 = ps_buffer_writer_broadcast_resource_cold_1(&v7);
LABEL_4:
    v3 = a2;
    v4 = a1;
    v5 = *(a1 + 160);
    ps_buffer_camera_stream_writer_increment_write_index();
    ps_gsm_notify(*(v4 + 144), *(v4 + 152), *v3 & 0xFFFFFFFFFFFFLL);
  }

  return 0;
}

void ps_buffer_writer_release(uint64_t a1)
{
  ps_gsm_remove_source(*(a1 + 144), *(a1 + 152));
  v2 = *(a1 + 160);
  if (*(a1 + 128) == 1)
  {
    ps_buffer_delete_write_buffer();
  }

  else
  {
    ps_buffer_camera_stream_writer_stop();
    v3 = *(a1 + 160);
    ps_buffer_delete_camera_stream_writer();
  }

  v4 = *(a1 + 136);
  if (v4 != -1)
  {
    ps_liveness_node_free(v4);
  }

  free(a1);
}

uint64_t OUTLINED_FUNCTION_9_3@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 40) = a2;
  *a1 = 0;

  return ps_resource_get_key();
}

uint64_t ps_synchronizer_init()
{
  v0 = malloc_type_calloc(1uLL, 0x1690uLL, 0x10300405BE762D9uLL);
  if (v0)
  {
    v1 = v0;
    v2 = 1248;
    bzero(v0, 0x4E0uLL);
    for (i = 0; i != 156; ++i)
    {
      v4 = &v1[v2];
      v4[176] = 0;
      v1[i + 2496] = 0;
      *v4 = 0;
      *&v1[4 * i + 3904] = -1;
      v2 += 8;
    }

    return v1;
  }

  else
  {
    inited = ps_synchronizer_init_cold_1(&v7);
    return ps_synchronizer_register_writer(inited);
  }
}

uint64_t ps_synchronizer_register_writer(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ps_synchronizer_register_writer_cold_5(&v17);
LABEL_13:
    ps_synchronizer_register_writer_cold_4(&v17);
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  v8 = a1 + 2496;
  v9 = (a1 + 8 * a3);
  if (a4 > 0x9B)
  {
    *(v8 + a3) = 1;
    result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    if (result)
    {
LABEL_10:
      *result = 0;
      v9[566] = result;
      goto LABEL_11;
    }

    ps_synchronizer_register_writer_cold_1(&v17);
  }

  else if (*(v8 + a4))
  {
    v10 = a1 + 1248;
    pthread_mutex_lock(*(a1 + 1248 + 8 * a4));
    *(v8 + a3) = 1;
    *(v10 + 8 * a3) = *(v10 + 8 * a4);
    *(a1 + 4528 + 8 * a3) = *(a1 + 4528 + 8 * a4);
    result = pthread_mutex_unlock(*(v10 + 8 * a4));
LABEL_11:
    v9[332] = a2;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v12 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  if (v12)
  {
    v13 = v12;
    v17.__sig = 0;
    *v17.__opaque = 0;
    pthread_mutexattr_init(&v17);
    pthread_mutexattr_settype(&v17, 2);
    pthread_mutex_init(v13, &v17);
    pthread_mutexattr_destroy(&v17);
    v9[156] = v13;
    *(v8 + a3) = 1;
    result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ps_synchronizer_register_writer_cold_3(&v17);
  }

  v15 = ps_synchronizer_register_writer_cold_2(&v16);
  return ps_synchronizer_unregister_writer(v15);
}

void ps_synchronizer_unregister_writer(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ps_synchronizer_unregister_writer_cold_3(buf);
  }

  if (a3 > 0x9B)
  {
    v11 = a1 + 8 * a2;
    *(v11 + 2656) = 0;
    *(a1 + 4 * a2 + 3904) = -1;
    free(*(v11 + 4528));
    *(v11 + 4528) = 0;
    *v11 = 0;
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = a1 + 2496;
  if ((*(a1 + 2496 + a2) & 1) == 0)
  {
    ps_synchronizer_unregister_writer_cold_1(buf);
    goto LABEL_16;
  }

  v7 = *(a1 + 1248 + 8 * a2);
  if (!v7)
  {
LABEL_16:
    v13 = ps_synchronizer_unregister_writer_cold_2(buf);
    goto LABEL_17;
  }

  v8 = *(v6 + a3);
  pthread_mutex_lock(*(a1 + 1248 + 8 * a2));
  *(a1 + 1248 + 8 * a2) = 0;
  *(v6 + a2) = 0;
  v9 = a1 + 4528;
  if (v8)
  {
    *(v9 + 8 * a2) = 0;
    *(a1 + 4 * a2 + 3904) = -1;
    *(a1 + 8 * a2) = 0;
    v10 = *MEMORY[0x277D85DE8];

    pthread_mutex_unlock(v7);
    return;
  }

  free(*(v9 + 8 * a2));
  *(v9 + 8 * a2) = 0;
  *(a1 + 4 * a2 + 3904) = -1;
  *(a1 + 8 * a2) = 0;
  *(a1 + 2656 + 8 * a2) = 0;
  *(a1 + 2656 + 8 * a3) = 0;
  pthread_mutex_unlock(v7);
  v13 = pthread_mutex_destroy(v7);
  if (!v13)
  {
    v14 = *MEMORY[0x277D85DE8];

    free(v7);
    return;
  }

LABEL_17:
  v15 = v13;
  v25 = 0;
  asprintf(&v25, "Failed to destroy timestamp lock for resourceID %llu err=%d", a2, v13);
  v16 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v27 = "ps_synchronizer_unregister_writer";
    v28 = 1024;
    v29 = 126;
    v30 = 2048;
    v31 = a2;
    v32 = 1024;
    v33 = v15;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d Failed to destroy timestamp lock for resourceID %llu err=%d", buf, 0x22u);
  }

  v17 = OSLogFlushBuffers();
  if (v17)
  {
    v18 = v17;
    v19 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "ps_synchronizer_unregister_writer";
      v28 = 1024;
      v29 = v18;
      _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = abort_with_reason();
  ps_synchronizer_check_time_and_broadcast(v20, v21, v22, v23, v24);
}

uint64_t ps_synchronizer_check_time_and_broadcast(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  if (a4 > 0x9B)
  {
    v13 = a1 + 8 * a3;
    v14 = *(v13 + 2656);
    v33[0] = **(v13 + 4528);
    v15 = v33[0];
    ps_buffer_writer_camerastream_attach_synctag(v14);
    ++**(v13 + 4528);
    v34 = v15;
    v35 = a5;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    LOWORD(v32) = *(*(v14 + 168) + 56);
    v29 = a2;
    ps_telemetry_emit_event_internal(2, &v29, 0x30uLL, 8);
    ps_buffer_writer_broadcast_resource(v14, &v34);
    return 0;
  }

  else
  {
    v9 = a1 + 8 * a3;
    v10 = *(v9 + 1248);
    if (!v10)
    {
      ps_synchronizer_check_time_and_broadcast_cold_1(&v29);
    }

    if (pthread_mutex_lock(*(v9 + 1248)))
    {
      return 2;
    }

    else
    {
      v16 = *(a1 + 8 * a4);
      *(a1 + 8 * a3) = a2;
      v17 = a1 + 3904;
      *(a1 + 3904 + 4 * a3) = a5;
      if (v16)
      {
        v18 = &a2[-v16];
        v19 = v16 > a2;
        v20 = v16 - a2;
        if (!v19)
        {
          v20 = v18;
        }

        if (v20 > 0x1D4C0)
        {
          v12 = 2;
        }

        else
        {
          v21 = *(v9 + 4528);
          v22 = (*v21)++;
          v35 = 0;
          v36 = v22;
          v23 = *(v17 + 4 * a4);
          v34 = v22;
          LODWORD(v35) = a5;
          v33[0] = v22;
          v33[1] = v23;
          v24 = *(a1 + 2656 + 8 * a3);
          v25 = *(a1 + 2656 + 8 * a4);
          ps_buffer_writer_camerastream_attach_synctag(v24);
          ps_buffer_writer_camerastream_attach_synctag(v25);
          v26 = ps_buffer_writer_broadcast_resource(v24, &v34);
          v27 = ps_buffer_writer_broadcast_resource(v25, v33);
          if (!v26)
          {
            *(a1 + 8 * a3) = 0;
            *(v17 + 4 * a3) = -1;
            v32 = 0;
            v30 = 0u;
            v31 = 0u;
            LOWORD(v32) = *(*(v24 + 168) + 56);
            v29 = a2;
            ps_telemetry_emit_event_internal(2, &v29, 0x30uLL, 8);
          }

          if (!v27)
          {
            *(a1 + 8 * a4) = 0;
            *(v17 + 4 * a4) = -1;
            v32 = 0;
            v30 = 0u;
            v31 = 0u;
            LOWORD(v32) = *(*(v25 + 168) + 56);
            v29 = a2;
            ps_telemetry_emit_event_internal(2, &v29, 0x30uLL, 8);
          }

          v12 = 2 * ((v27 | v26) != 0);
        }
      }

      else
      {
        v12 = 1;
      }

      pthread_mutex_unlock(v10);
    }
  }

  return v12;
}

void sub_25EAC8D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EAC8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EAC9130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EACA920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void PSSG::Client::~Client(PSSG::Client *this)
{
  *this = &unk_2870BA6E8;
  v2 = *(this + 12);
  if (v2)
  {
    PSSG::Client::_deallocateOOLMem(this, v2, *(this + 26));
  }

  v3 = *(this + 17);
  if (v3)
  {
    PSSG::Client::_deallocateOOLMem(this, v3, *(this + 36));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 1000);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 960);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 912);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 872);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 832);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 792);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 752);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 712);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 672);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 632);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 592);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 552);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 512);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 472);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 432);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 392);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 352);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 312);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 272);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 232);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 192);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 152);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 56);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  PSSG::Client::~Client(this);

  JUMPOUT(0x25F8C7C50);
}

double PSSG::Client::remoteHasRegistered(PSSG::Client *this, int a2)
{
  *(this + 13) = a2;
  if (*(this + 268))
  {
    PSSG::Client::handleRemoteExit(this);
  }

  *&result = 1;
  *(this + 134) = 1;
  *(this + 48) = 1;
  return result;
}

void *PSSG::Client::handleRemoteExit(PSSG::Client *this)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 268) = 0;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 34);
  for (i = *(this + 66); i; i = *i)
  {
    v3 = i[2];
    v4 = __PSSGLogSharedInstance();
    if (os_signpost_enabled(v4))
    {
      v5 = this + 24;
      if (*(this + 47) < 0)
      {
        v5 = *(this + 3);
      }

      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      *v16 = 136315394;
      *&v16[4] = v5;
      v17 = 2080;
      v18 = v3;
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 64);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 74);
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(this + 672);
  if (!PSSG::Server::isOrchestratorInitialized(*(this + 1)))
  {
    for (j = *(this + 71); j; j = *j)
    {
      PSSG::Resource::consumerNoLongerWantsResource(j[2], this);
    }
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 69);
  for (k = *(this + 9); k; k = *k)
  {
    PSSG::Resource::providerHasExited(k[2]);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 7);
  for (m = *(this + 91); m; m = *m)
  {
    PSSG::Resource::consumerNoLongerAwaitingContext(m[2], this);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 89);
  for (n = *(this + 96); n; n = *n)
  {
    PSSG::Resource::consumerNoLongerAwaitingResourceAvailabilityUpdates(n[2], this);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 94);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 99);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 104);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 59);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 49);
  for (ii = *(this + 111); ii; ii = *ii)
  {
    v11 = ii[2];
    *v16 = this;
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>((v11 + 352), v16);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 109);
  for (jj = *(this + 116); jj; jj = *jj)
  {
    v13 = jj[2];
    *v16 = this;
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>((v13 + 1000), v16);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 114);
  *(this + 952) = 0;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 125);
  *(this + 1040) = 0;
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 120);
  *(this + 24) = 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

PSSG::Client *PSSG::Client::remoteHasDied(PSSG::Client *this, int a2)
{
  if (*(this + 13) == a2)
  {
    return PSSG::Client::handleRemoteExit(this);
  }

  return this;
}

void *PSSG::Client::remoteHasPublishedResourceStreams(PSSG::Client *this, void *a2, int a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    PSSG::Client::_deallocateOOLMem(this, v6, *(this + 26));
  }

  *(this + 12) = a2;
  *(this + 26) = a3;
  for (i = *(this + 9); i; i = *i)
  {
    PSSG::Resource::providerHasPublishedResourceStream(i[2]);
  }

  return PSSG::Client::notifyClientsAwaitingResourceStreams(this);
}

void *PSSG::Client::notifyClientsAwaitingResourceStreams(void *this)
{
  if (this[10])
  {
    v1 = this;
    if (this[12])
    {
      for (i = this[46]; i; i = *i)
      {
        v3 = i[2];
        if (*(v1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v1 + 24), *(v1 + 32));
        }

        else
        {
          __p = *(v1 + 24);
        }

        p_p = &__p;
        std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 672), &__p.__r_.__value_.__l.__data_)[5] = (v1 + 56);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((v1 + 352));
    }
  }

  return this;
}

void sub_25EACC7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Client::notifyClientsAwaitingResourceAvailabilityUpdates(uint64_t this)
{
  v1 = *(this + 408);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = v1[2];
      std::unordered_set<PSSG::Resource *>::unordered_set(v4, v2 + 472);
      PSSG::Client::providerHasSetResourceAvailability(v3, v4);
      this = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v4);
      v1 = *v1;
    }

    while (v1);
  }

  return this;
}

void sub_25EACC854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *PSSG::Client::providerHasSetResourceAvailability(void *result, uint64_t a2)
{
  v2 = result;
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(v2 + 94, &v5);
    if (result)
    {
      result = std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v2 + 104, &v5);
    }
  }

  for (j = v2[101]; j; j = *j)
  {
    v5 = j[2];
    result = std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v2 + 104, &v5);
  }

  return result;
}

void *PSSG::Client::remoteHasRequestedContext(PSSG::Client *this, PSSG::Client *a2)
{
  v5 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 109, &v5);
  v3 = v5;
  v6 = this;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(v5 + 44, &v6);
  return PSSG::Client::notifyClientsAwaitingResourceStreams(v3);
}

void *PSSG::Client::consumerIsAwaitingContext(PSSG::Client *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 44, &v4);
  return PSSG::Client::notifyClientsAwaitingResourceStreams(this);
}

uint64_t PSSG::Client::remoteHasRequestedContextForResources(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v3 + 89, &v4);
      result = PSSG::Resource::consumerIsAwaitingContext(v4, v3);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t PSSG::Client::consumerIsAwaitingResourceAvailabilityUpdates(PSSG::Client *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 49, &v4);
  return PSSG::Client::notifyClientsAwaitingResourceAvailabilityUpdates(this);
}

void *PSSG::Client::remoteHasEnteredSleep(PSSG::Client *this)
{
  *(this + 269) = 1;
  for (i = *(this + 66); i; i = *i)
  {
    v4 = i[2];
    std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(this + 79, &v4);
    PSSG::Resource::consumerNoLongerWantsResource(v4, this);
  }

  return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 64);
}

uint64_t PSSG::Client::remoteHasExitedSleep(uint64_t this)
{
  *(this + 1076) = 0;
  for (i = *(this + 72); i; i = *i)
  {
    this = PSSG::Resource::providerIsAcceptingRequests(i[2]);
  }

  return this;
}

void *PSSG::Client::resourceIsNowBeingProduced(PSSG::Client *this, PSSG::Resource *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(this + 64, &v4);
  return std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(this + 74, &v4);
}

uint64_t PSSG::Client::remoteHasStoppedProducingResources(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerHasStoppedProducingResource(i[2]);
  }

  return result;
}

uint64_t PSSG::Client::setupResourcesCompleted(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  while (v2 != v3)
  {
    result = PSSG::Resource::providerHasSetupResource(*v2, *(v2 + 8));
    v2 += 16;
  }

  return result;
}

uint64_t PSSG::Client::pauseResourcesCompleted(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerHasPausedResource(i[2]);
  }

  return result;
}

uint64_t PSSG::Client::setupResourcesFailed(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerFailedToSetupResource(i[2]);
  }

  return result;
}

uint64_t PSSG::Client::pauseResourcesFailed(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerFailedToPauseResource(i[2]);
  }

  return result;
}

void *PSSG::Client::remoteHasRequestedCurrentGraphsForAllSessions(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 1000);
  if (a1 + 1000 != a2)
  {
    *(a1 + 1032) = *(a2 + 32);
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PSSG::Client *,void *> *>>((a1 + 1000), *(a2 + 16), 0);
  }

  v7 = a1;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(v3, &v7);
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((a1 + 960));
  *(a1 + 1040) = 1;
  for (i = *(a1 + 1016); i; i = *i)
  {
    v6 = i[2];
    v7 = a1;
    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>((v6 + 912), &v7);
  }

  return result;
}

void PSSG::Client::remoteHasPublishedCurrentGraphs(PSSG::Client *this, void *a2, unsigned int a3)
{
  v6 = *(this + 17);
  if (v6)
  {
    PSSG::Client::_deallocateOOLMem(this, v6, *(this + 36));
  }

  v7 = this + 24;
  std::string::operator=((this + 112), this + 1);
  *(this + 17) = a2;
  *(this + 36) = a3;
  for (i = *(this + 116); i; i = *i)
  {
    PSSG::Client::clientHasPublishedCurrentGraphs(i[2], this, this + 112);
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 114);
  *(this + 952) = 0;
  if (*(this + 47) < 0)
  {
    v7 = *v7;
  }

  ps_telemetry_send_session_event(v7, 0, a2, a3);
}

uint64_t *PSSG::Client::clientHasPublishedCurrentGraphs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>((a1 + 1000), &v6);
  if (result)
  {
    std::__hash_table<PSSG::Graphs *,std::hash<PSSG::Graphs *>,std::equal_to<PSSG::Graphs *>,std::allocator<PSSG::Graphs *>>::__emplace_unique_key_args<PSSG::Graphs *,PSSG::Graphs * const&>((a1 + 960), &v5);
    return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>((a1 + 1000), &v6);
  }

  return result;
}

uint64_t PSSG::Client::clientStartingSystemReplay(uint64_t this, PSSG::Client *a2)
{
  *(this + 1048) = 1;
  *(this + 1056) = a2;
  *(this + 1064) = 1;
  return this;
}

uint64_t PSSG::Client::clientEndingSystemReplay(uint64_t this, PSSG::Client *a2)
{
  *(this + 1049) = 1;
  *(this + 1056) = a2;
  *(this + 1064) = 1;
  return this;
}

uint64_t PSSG::Client::requestPausedResources(uint64_t this)
{
  for (i = *(this + 248); i; i = *i)
  {
    this = PSSG::Resource::resumePausedResource(i[2]);
  }

  return this;
}

uint64_t PSSG::Client::systemIsPaused(uint64_t this)
{
  for (i = *(this + 248); i; i = *i)
  {
    this = PSSG::Resource::pauseResource(i[2]);
  }

  return this;
}

void PSSG::Client::flushResponses(void *a1, uint64_t a2)
{
  PSSG::Client::flushRegisterDeregisterAcknowledgements(a1, a2);
  PSSG::Client::flushContexts(a1, a2);
  PSSG::Client::flushResourceAvailabilityUpdates(a1, a2);
  PSSG::Client::flushResourceRequest(a1, a2);
  PSSG::Client::flushResourcePauseRequest(a1, a2);
  PSSG::Client::flushResourceSetupRequest(a1, a2);
  PSSG::Client::flushCompletedResourceRequest(a1, a2);
  PSSG::Client::flushCurrentGraphsRequest(a1, a2);
  PSSG::Client::flushCompletedCurrentGraphsRequest(a1, a2);

  PSSG::Client::flushSystemReplayRequest(a1, a2);
}

void PSSG::Client::flushRegisterDeregisterAcknowledgements(uint64_t a1, uint64_t a2)
{
  v5[62] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (*(a1 + 48))
    {
      PSSG::Client::flushRegisterDeregisterAcknowledgements();
    }

LABEL_7:
    PSSG::MessageBase::MessageBase(v5, 32, (a1 + 24));
    v5[0] = &unk_2870BA760;
    (*(a2 + 16))(a2, v5);
    PSSG::MessageBase::~MessageBase(v5);
    *(a1 + 49) = 0;
    goto LABEL_8;
  }

  if (*(a1 + 49))
  {
    PSSG::Client::flushRegisterDeregisterAcknowledgements();
  }

  PSSG::MessageBase::MessageBase(v5, 31, (a1 + 24));
  v5[0] = &unk_2870BA718;
  (*(a2 + 16))(a2, v5);
  PSSG::MessageBase::~MessageBase(v5);
  *(a1 + 48) = 0;
  if (*(a1 + 49))
  {
    goto LABEL_7;
  }

LABEL_8:
  v4 = *MEMORY[0x277D85DE8];
}

void sub_25EACD158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::Client::flushContexts(uint64_t a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  for (i = *(a1 + 688); i; i = *i)
  {
    v5 = *(i + 5);
    PSSG::Client::resourceKeysAndSupportedOptions(v5, v7);
    PSSG::MessagePublishResourceKeysAndStrides::MessagePublishResourceKeysAndStrides(v8, i + 1, v7);
    (*(a2 + 16))(a2, v8);
    v8[0] = &unk_2870BB4A8;
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v11);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    PSSG::MessageBase::~MessageBase(v8);
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v7);
    PSSG::MessageBase::MessageBase(v8, 25, i + 1, *(v5 + 40), *(v5 + 48));
    v8[0] = off_2870BA7A8;
    (*(a2 + 16))(a2, v8);
    PSSG::MessageBase::~MessageBase(v8);
  }

  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(a1 + 672);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSSG::Client::flushResourceAvailabilityUpdates(uint64_t result, uint64_t a2)
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (*(result + 856))
  {
    v3 = result;
    memset(v9, 0, sizeof(v9));
    v10 = 1065353216;
    for (i = *(result + 848); i; i = *i)
    {
      v5 = i[2];
      v6 = v5[193];
      v11[0] = v5;
      *(std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9, v5) + 40) = v6;
    }

    if (*(v3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *(v3 + 24), *(v3 + 32));
    }

    else
    {
      v8 = *(v3 + 24);
    }

    PSSG::MessageSetResourceAvailability::MessageSetResourceAvailability(v11, &v8, v9);
    (*(a2 + 16))(a2, v11);
    v11[0] = &unk_2870BB4D8;
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v14);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    PSSG::MessageBase::~MessageBase(v11);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((v3 + 832));
    result = std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *PSSG::Client::flushResourceRequest(void *result, uint64_t a2)
{
  v3 = result;
  v17 = *MEMORY[0x277D85DE8];
  if (result[22] || result[37])
  {
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, result[3], result[4]);
    }

    else
    {
      v9 = *(result + 1);
    }

    v12[0] = &unk_2870BAA30;
    v12[1] = v3;
    v12[3] = v12;
    PSSG::mapStrideArray((v3 + 19), v12, v8);
    v11[0] = &unk_2870BAAC0;
    v11[1] = v3;
    v11[3] = v11;
    PSSG::mapStrideArray((v3 + 34), v11, v7);
    PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(v13, 26, &v9, v8, v7);
    v13[0] = &unk_2870BB608;
    (*(a2 + 16))(a2, v13);
    v4 = v16;
    v13[0] = &unk_2870BB508;
    v16 = 0;
    if (v4)
    {
      MEMORY[0x25F8C7C30](v4, 0x1000C80B3D5DE44);
    }

    v10 = &v15;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v10);
    v10 = &v14;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v10);
    PSSG::MessageBase::~MessageBase(v13);
    v10 = v7;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v10);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v11);
    v7[0] = v8;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](v7);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v12);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 19);
    for (i = v3[36]; i; i = *i)
    {
      v13[0] = i[2];
      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(v3 + 39, v13);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 34);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EACD6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  PSSG::MessageRequestResourcesWithStrides::~MessageRequestResourcesWithStrides(&a30);
  a21 = &a9;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](&a22);
  a9 = &a12;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](&a26);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *PSSG::Client::flushResourcePauseRequest(void *result, uint64_t a2)
{
  v12[62] = *MEMORY[0x277D85DE8];
  if (result[57])
  {
    v3 = result;
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, result[3], result[4]);
    }

    else
    {
      v9 = *(result + 1);
    }

    v10[0] = &unk_2870BAB40;
    v10[1] = v3;
    v11 = v10;
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    v4 = v3 + 56;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v5 = v4[2];
      (*(*v11 + 48))(v11, v5);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v7, v5);
    }

    PSSG::MessageBase::MessageBase(v12, 44, &v9, v7);
    v12[0] = &unk_2870BA7F0;
    (*(a2 + 16))(a2, v12);
    PSSG::MessageBase::~MessageBase(v12);
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(v7);
    std::__function::__value_func<void ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v10);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 54);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *PSSG::Client::flushResourceSetupRequest(void *result, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result[27])
  {
    v3 = result;
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, result[3], result[4]);
    }

    else
    {
      v7 = *(result + 1);
    }

    v9[0] = &unk_2870BABD0;
    v9[1] = v3;
    v9[3] = v9;
    PSSG::mapStrideArray((v3 + 24), v9, v6);
    PSSG::MessageSetupResources::MessageSetupResources(v10, &v7, v6);
    (*(a2 + 16))(a2, v10);
    v4 = v13;
    v10[0] = &unk_2870BB508;
    v13 = 0;
    if (v4)
    {
      MEMORY[0x25F8C7C30](v4, 0x1000C80B3D5DE44);
    }

    v8 = &v12;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v8);
    v8 = &v11;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v8);
    PSSG::MessageBase::~MessageBase(v10);
    v8 = v6;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v8);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v9);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 24);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *PSSG::Client::flushCompletedResourceRequest(void *result, uint64_t a2)
{
  v3 = result;
  v29 = *MEMORY[0x277D85DE8];
  if (result[77])
  {
    if (*(result + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, result[3], result[4]);
    }

    else
    {
      v20 = *(result + 1);
    }

    v22[0] = &unk_2870BAC50;
    v22[1] = v3;
    v22[3] = v22;
    PSSG::mapStrideArray((v3 + 74), v22, buf);
    memset(v19, 0, sizeof(v19));
    PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(__p, 27, &v20, buf, v19);
    __p[0] = &unk_2870BB6E0;
    (*(a2 + 16))(a2, __p);
    v4 = v28;
    __p[0] = &unk_2870BB508;
    v28 = 0;
    if (v4)
    {
      MEMORY[0x25F8C7C30](v4, 0x1000C80B3D5DE44);
    }

    v21 = v27;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v21);
    v21 = v26;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v21);
    PSSG::MessageBase::~MessageBase(__p);
    v21 = v19;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v21);
    v19[0] = buf;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](v19);
    std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](v22);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 74);
  }

  if (v3[82])
  {
    memset(&v20, 0, sizeof(v20));
    PSSG::MessageResourceRequestsFailed::MessageResourceRequestsFailed(__p, (v3 + 3), &v20);
    (*(a2 + 16))(a2, __p);
    v5 = v28;
    __p[0] = &unk_2870BB508;
    v28 = 0;
    if (v5)
    {
      MEMORY[0x25F8C7C30](v5, 0x1000C80B3D5DE44);
    }

    *buf = v27;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v26;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](buf);
    PSSG::MessageBase::~MessageBase(__p);
    *buf = &v20;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](buf);
    for (i = v3[81]; i; i = *i)
    {
      v7 = i[2];
      v8 = __PSSGLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v7 + 23) >= 0)
        {
          v9 = *(v7 + 23);
        }

        else
        {
          v9 = v7[1];
        }

        std::string::basic_string[abi:ne200100](&v20, v9 + 1);
        if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &v20;
        }

        else
        {
          v10 = v20.__r_.__value_.__r.__words[0];
        }

        if (v9)
        {
          if (*(v7 + 23) >= 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = *v7;
          }

          memmove(v10, v11, v9);
        }

        *(&v10->__r_.__value_.__l.__data_ + v9) = 58;
        v12 = *(v3 + 47);
        if (v12 >= 0)
        {
          v13 = (v3 + 3);
        }

        else
        {
          v13 = v3[3];
        }

        if (v12 >= 0)
        {
          v14 = *(v3 + 47);
        }

        else
        {
          v14 = v3[4];
        }

        v15 = std::string::append(&v20, v13, v14);
        v16 = *&v15->__r_.__value_.__l.__data_;
        v25 = v15->__r_.__value_.__r.__words[2];
        *__p = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        if (v25 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v17;
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "%s <-- Failed", buf, 0xCu);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      PSSG::Resource::logState(v7);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v3 + 79);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EACDED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void **p_p, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  PSSG::MessageRequestResourcesWithStrides::~MessageRequestResourcesWithStrides(&a30);
  p_p = &__p;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&p_p);
  _Unwind_Resume(a1);
}

void PSSG::Client::flushCurrentGraphsRequest(uint64_t a1, uint64_t a2)
{
  v5[62] = *MEMORY[0x277D85DE8];
  if (*(a1 + 936) && (*(a1 + 952) & 1) == 0)
  {
    PSSG::MessageBase::MessageBase(v5, 37, (a1 + 24));
    v5[0] = &unk_2870BA838;
    (*(a2 + 16))(a2, v5);
    PSSG::MessageBase::~MessageBase(v5);
    *(a1 + 952) = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25EACE030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void *PSSG::Client::flushCompletedCurrentGraphsRequest(void *result, uint64_t a2)
{
  v6[62] = *MEMORY[0x277D85DE8];
  if (!result[128])
  {
    v2 = result;
    if (*(result + 1040) == 1)
    {
      for (i = result[122]; i; i = *i)
      {
        PSSG::MessageBase::MessageBase(v6, 28, i[2], i[2][3], *(i[2] + 8));
        v6[0] = off_2870BA880;
        (*(a2 + 16))(a2, v6);
        PSSG::MessageBase::~MessageBase(v6);
      }

      PSSG::MessageBase::MessageBase(v6, 38, (v2 + 3));
      v6[0] = &unk_2870BA8C8;
      (*(a2 + 16))(a2, v6);
      PSSG::MessageBase::~MessageBase(v6);
      *(v2 + 1040) = 0;
      result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(v2 + 120);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EACE18C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::Client::flushSystemReplayRequest(uint64_t a1, uint64_t a2)
{
  v5[62] = *MEMORY[0x277D85DE8];
  if (*(a1 + 1048) == 1)
  {
    if ((*(a1 + 1064) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    PSSG::MessageBase::MessageBase(v5, 39, (*(a1 + 1056) + 24));
    v5[0] = &unk_2870BA910;
    (*(a2 + 16))(a2, v5);
    PSSG::MessageBase::~MessageBase(v5);
    *(a1 + 1048) = 0;
  }

  if (*(a1 + 1049) == 1)
  {
    if ((*(a1 + 1064) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    PSSG::MessageBase::MessageBase(v5, 40, (*(a1 + 1056) + 24));
    v5[0] = &unk_2870BA958;
    (*(a2 + 16))(a2, v5);
    PSSG::MessageBase::~MessageBase(v5);
    *(a1 + 1049) = 0;
  }

  if (*(a1 + 1050) == 1)
  {
    PSSG::MessageRequestGraphResubmission::MessageRequestGraphResubmission(v5);
    (*(a2 + 16))(a2, v5);
    PSSG::MessageBase::~MessageBase(v5);
    *(a1 + 1050) = 0;
  }

  if (*(a1 + 1051) == 1)
  {
    PSSG::MessageRequestReplayResources::MessageRequestReplayResources(v5);
    (*(a2 + 16))(a2, v5);
    PSSG::MessageBase::~MessageBase(v5);
    *(a1 + 1051) = 0;
  }

  if (*(a1 + 1064) == 1)
  {
    *(a1 + 1064) = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_25EACE360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PSSG::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void PSSG::Client::resourceKeysAndSupportedOptions(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = i[2];
    __p = 0;
    v18 = 0;
    v19 = 0;
    std::map<unsigned int,unsigned int>::map[abi:ne200100](&v13, v4 + 224);
    v5 = v13;
    if (v13 != &v14)
    {
      do
      {
        v20 = *(v5 + 28);
        std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&__p, &v20);
        v6 = *(v5 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v5 + 2);
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != &v14);
    }

    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(&v13, v14);
    LODWORD(v13) = *(v4 + 216);
    v15 = 0;
    v14 = 0uLL;
    std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(&v14, __p, v18, (v18 - __p) >> 3);
    LOBYTE(v16) = 0;
    HIDWORD(v16) = 0;
    v20 = v4;
    v9 = std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v4);
    *(v9 + 10) = v13;
    v10 = v9[6];
    if (v10)
    {
      v9[7] = v10;
      operator delete(v10);
      v9[6] = 0;
      v9[7] = 0;
      v9[8] = 0;
    }

    *(v9 + 3) = v14;
    v11 = v15;
    v12 = v16;
    v15 = 0;
    v14 = 0uLL;
    v9[8] = v11;
    v9[9] = v12;
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

void sub_25EACE50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void PSSG::mapStrideArray(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v7 = i[2];
    (*(*v6 + 48))(v13);
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v11 = std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<PSSG::ResourceStridesEntry>(a3, v13);
      v12 = SHIBYTE(v17);
      a3[1] = v11;
      if (v12 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v9 = *v13;
      *(v8 + 16) = v14;
      *v8 = v9;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      *(v8 + 24) = v15;
      v10 = __p;
      *(v8 + 48) = v17;
      *(v8 + 32) = v10;
      v17 = 0;
      __p = 0uLL;
      a3[1] = v8 + 56;
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }
}

void sub_25EACE670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PSSG::ResourceStridesEntry::~ResourceStridesEntry(va);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *PSSG::Client::remoteHasPublishedResourcesWithStrides(PSSG::Client *this, uint64_t a2, void *a3)
{
  *(this + 268) = 2;
  for (i = *(a2 + 16); i; i = *i)
  {
    v9 = i[2];
    if (!std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(this + 7, &v9))
    {
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(this + 7, &v9);
      v6 = v9;
      v7 = std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::find<std::string>(a3, v9);
      if (!v7)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      PSSG::Resource::providerHasPublishedResource(v6, this, (v7 + 5));
    }
  }

  return PSSG::Client::notifyClientsAwaitingResourceStreams(this);
}

void *PSSG::Client::remoteHasSetResourceAvailability(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a1 + 24);
    do
    {
      v14 = v4[2];
      if (std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>((a1 + 56), &v14))
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((a1 + 472), &v14);
        v7 = v14;
        v8 = std::__hash_table<std::__hash_value_type<std::string,PRMWriterInstance *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PRMWriterInstance *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PRMWriterInstance *>>>::find<std::string>(a3, v14);
        if (!v8)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        PSSG::Resource::providerHasSetResourceAvailability(v7, *(v8 + 40));
      }

      else
      {
        v9 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = a1 + 24;
          if (*(a1 + 47) < 0)
          {
            v10 = *v6;
          }

          v11 = v14;
          if (*(v14 + 23) < 0)
          {
            v11 = *v14;
          }

          *buf = 136381187;
          v16 = "remoteHasSetResourceAvailability";
          v17 = 2081;
          v18 = v10;
          v19 = 2081;
          v20 = v11;
          _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%{private}s: Client %{private}s has not published resource %{private}s", buf, 0x20u);
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear((a1 + 472));
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *PSSG::Client::remoteHasRequestedResourceAvailabilityUpdates(PSSG::Client *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v6 = i[2];
    std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a1 + 94, &v6);
    v4 = v6;
    if (*(v6 + 214) == 1)
    {
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a1 + 99, &v6);
      v4 = v6;
    }

    PSSG::Resource::consumerIsAwaitingResourceAvailabilityUpdates(v4, a1);
  }

  return std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(a1 + 99);
}

uint64_t *PSSG::Client::remoteHasRequestedToStopResourceAvailabilityUpdates(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(v3 + 94, &v4);
      result = PSSG::Resource::consumerNoLongerAwaitingResourceAvailabilityUpdates(v4, v3);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t PSSG::Client::remoteHasRequestedResources(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v83 = *MEMORY[0x277D85DE8];
  if (a2[1] != *a2 || a3[1] != *a3)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v73);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "\n    Resources wanted: ", 23);
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      do
      {
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "{", 1);
        v9 = *(*v6 + 23);
        if (v9 >= 0)
        {
          v10 = *v6;
        }

        else
        {
          v10 = **v6;
        }

        if (v9 >= 0)
        {
          v11 = *(*v6 + 23);
        }

        else
        {
          v11 = *(*v6 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        if (*(v6 + 8))
        {
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "@", 1);
          MEMORY[0x25F8C7B00](v12, *(v6 + 8));
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "}, ", 3);
        v6 += 16;
      }

      while (v6 != v7);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "\n    Resources no longer wanted: ", 33);
    v13 = *a3;
    v14 = a3[1];
    if (*a3 != v14)
    {
      do
      {
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "{", 1);
        v16 = *(*v13 + 23);
        if (v16 >= 0)
        {
          v17 = *v13;
        }

        else
        {
          v17 = **v13;
        }

        if (v16 >= 0)
        {
          v18 = *(*v13 + 23);
        }

        else
        {
          v18 = *(*v13 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
        if (*(v13 + 8))
        {
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "@", 1);
          MEMORY[0x25F8C7B00](v19, *(v13 + 8));
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v74, "}, ", 3);
        v13 += 16;
      }

      while (v13 != v14);
    }

    v20 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      std::stringbuf::str();
      v21 = (SBYTE7(v71) & 0x80u) == 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEBUG, "RequestedResources: %s", buf, 0xCu);
      if (SBYTE7(v71) < 0)
      {
        operator delete(__p[0]);
      }
    }

    *__p = 0u;
    v71 = 0u;
    v72 = 1065353216;
    *buf = 0u;
    v81 = 0u;
    v82 = 1065353216;
    v22 = *a3;
    v23 = a3[1];
    if (*a3 != v23)
    {
      do
      {
        v79 = v22;
        v24 = std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(__p, v22);
        v25 = v24;
        v27 = v24[4];
        v26 = v24[5];
        if (v27 >= v26)
        {
          v29 = v24[3];
          v30 = v27 - v29;
          v31 = (v27 - v29) >> 2;
          v32 = v31 + 1;
          if ((v31 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v33 = v26 - v29;
          if (v33 >> 1 > v32)
          {
            v32 = v33 >> 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v24 + 3), v34);
          }

          v35 = (v27 - v29) >> 2;
          v36 = (4 * v31);
          v37 = (4 * v31 - 4 * v35);
          *v36 = *(v22 + 8);
          v28 = v36 + 1;
          memcpy(v37, v29, v30);
          v38 = v25[3];
          v25[3] = v37;
          v25[4] = v28;
          v25[5] = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          *v27 = *(v22 + 8);
          v28 = v27 + 4;
        }

        v25[4] = v28;
        v22 += 16;
      }

      while (v22 != v23);
      for (i = v71; i; i = *i)
      {
        v67 = 0;
        v68 = 0;
        v41 = i[2];
        v40 = i[3];
        v69 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v67, v40, i[4], (i[4] - v40) >> 2);
        PSSG::Resource::consumerNoLongerWantsResourceAtStrides(v41, v5, &v67);
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }
      }
    }

    v42 = *a2;
    v43 = a2[1];
    if (*(v5 + 1076) == 1)
    {
      while (v42 != v43)
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v5 + 632), v42);
        v42 += 16;
      }
    }

    else
    {
      for (; v42 != v43; v42 += 16)
      {
        v79 = v42;
        v44 = std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(buf, v42);
        v45 = v44;
        v47 = v44[4];
        v46 = v44[5];
        if (v47 >= v46)
        {
          v49 = v44[3];
          v50 = v47 - v49;
          v51 = (v47 - v49) >> 2;
          v52 = v51 + 1;
          if ((v51 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v53 = v46 - v49;
          if (v53 >> 1 > v52)
          {
            v52 = v53 >> 1;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v54 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v52;
          }

          if (v54)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v44 + 3), v54);
          }

          v55 = (v47 - v49) >> 2;
          v56 = (4 * v51);
          v57 = (4 * v51 - 4 * v55);
          *v56 = *(v42 + 8);
          v48 = v56 + 1;
          memcpy(v57, v49, v50);
          v58 = v45[3];
          v45[3] = v57;
          v45[4] = v48;
          v45[5] = 0;
          if (v58)
          {
            operator delete(v58);
          }
        }

        else
        {
          *v47 = *(v42 + 8);
          v48 = v47 + 4;
        }

        v45[4] = v48;
      }

      for (j = v81; j; j = *j)
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v5 + 512), j + 2);
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v5 + 552), j + 2);
        v64 = 0;
        v65 = 0;
        v61 = j[2];
        v60 = j[3];
        v66 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v64, v60, j[4], (j[4] - v60) >> 2);
        PSSG::Resource::consumerWantsResourceAtStrides(v61, v5, &v64);
        if (v64)
        {
          v65 = v64;
          operator delete(v64);
        }
      }
    }

    std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(buf);
    std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(__p);
    v73[0] = *MEMORY[0x277D82818];
    v62 = *(MEMORY[0x277D82818] + 72);
    *(v73 + *(v73[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v74 = v62;
    v75 = MEMORY[0x277D82878] + 16;
    if (v77 < 0)
    {
      operator delete(v76[7].__locale_);
    }

    v75 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v76);
    std::iostream::~basic_iostream();
    result = MEMORY[0x25F8C7BD0](&v78);
  }

  v63 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EACF134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15, MEMORY[0x277D82818]);
  MEMORY[0x25F8C7BD0](va);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_25EACF44C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F8C7BD0](v1);
  _Unwind_Resume(a1);
}

uint64_t PSSG::Client::remoteHasRequestedResources(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v4 = result;
    v21 = 0u;
    v22 = 0u;
    v23 = 1065353216;
    if (*(result + 1076) == 1)
    {
      do
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v4 + 79, v2);
        v2 += 16;
      }

      while (v2 != v3);
    }

    else
    {
      do
      {
        v24 = v2;
        v5 = std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(&v21, v2);
        v6 = v5;
        v8 = v5[4];
        v7 = v5[5];
        if (v8 >= v7)
        {
          v10 = v5[3];
          v11 = v8 - v10;
          v12 = (v8 - v10) >> 2;
          v13 = v12 + 1;
          if ((v12 + 1) >> 62)
          {
            std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
          }

          v14 = v7 - v10;
          if (v14 >> 1 > v13)
          {
            v13 = v14 >> 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((v5 + 3), v15);
          }

          v16 = (v8 - v10) >> 2;
          v17 = (4 * v12);
          v18 = (4 * v12 - 4 * v16);
          *v17 = *(v2 + 8);
          v9 = v17 + 1;
          memcpy(v18, v10, v11);
          v19 = v6[3];
          v6[3] = v18;
          v6[4] = v9;
          v6[5] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v8 = *(v2 + 8);
          v9 = v8 + 4;
        }

        v6[4] = v9;
        v2 += 16;
      }

      while (v2 != v3);
      for (i = v22; i; i = *i)
      {
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v4 + 64, i + 2);
        std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(v4 + 69, i + 2);
        PSSG::Resource::consumerWantsResource(i[2], v4);
      }
    }

    return std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(&v21);
  }

  return result;
}

uint64_t PSSG::Client::remoteIsNowProducingResources(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>((v4 + 312), v2);
      result = PSSG::Resource::providerIsNowProducingResource(*v2, *(v2 + 8));
      v2 += 16;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t PSSG::Client::remoteFailedToProcessResourceRequests(uint64_t a1, PSSG::Resource ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    result = PSSG::Resource::providerFailedToProduceResource(v4);
  }

  return result;
}

uint64_t PSSG::Client::remoteFailedToProcessNotificationsOfResourcesNoLongerWanted(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerFailedToProcessNoLongerWantedNotification(i[2]);
  }

  return result;
}

uint64_t PSSG::Client::remoteProcessedNotificationsOfResourcesNoLongerWanted(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    result = PSSG::Resource::providerProcessedNoLongerWantedNotification(i[2]);
  }

  return result;
}

void PSSG::Client::_deallocateOOLMem(PSSG::Client *this, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x25F8C9D00](*MEMORY[0x277D85F48]);
  if (v6)
  {
    v7 = v6;
    v8 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = (this + 24);
      if (*(this + 47) < 0)
      {
        v9 = *v9;
      }

      v11 = 136316418;
      v12 = "_deallocateOOLMem";
      v13 = 1024;
      v14 = 880;
      v15 = 2080;
      v16 = v9;
      v17 = 2048;
      v18 = a2;
      v19 = 2048;
      v20 = a3;
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s %d Client= %s, failed to vm_deallocate addr %p of size:%lu ret=%#x\n", &v11, 0x36u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v4;
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 488) = 0;
  return a1;
}

void PSSG::MessageRegisterAck::~MessageRegisterAck(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageDeRegisterAck::~MessageDeRegisterAck(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishResourceKeysAndStrides::~MessagePublishResourceKeysAndStrides(PSSG::MessagePublishResourceKeysAndStrides *this)
{
  *this = &unk_2870BB4A8;
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4A8;
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4A8;
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v8;
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = a5;
  *(a1 + 128) = a4;
  *(a1 + 488) = 0;
  return a1;
}

void PSSG::MessagePublishResourceStreams::~MessagePublishResourceStreams(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishResourceStreams::description(PSSG::MessagePublishResourceStreams *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "Publish resource streams: ");
  std::to_string(&v13, *(this + 30));
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v13;
  }

  else
  {
    v4 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v14, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, " bytes");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_25EACFC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageSetResourceAvailability::~MessageSetResourceAvailability(PSSG::MessageSetResourceAvailability *this)
{
  *this = &unk_2870BB4D8;
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4D8;
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB4D8;
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::~__hash_table(this + 520);
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

uint64_t std::vector<PSSG::ResourceStridesEntry>::__emplace_back_slow_path<PSSG::ResourceStridesEntry>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 6);
  v9 = a2[2];
  *(v7 + 48) = *(a2 + 6);
  *(v7 + 32) = v9;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  *&v18 = 56 * v2 + 56;
  v10 = a1[1];
  v11 = 56 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(&v16);
  return v15;
}

void sub_25EACFE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<PSSG::ResourceStridesEntry>::~__split_buffer(void **a1)
{
  std::__split_buffer<PSSG::ResourceStridesEntry>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PSSG::ResourceStridesEntry>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void PSSG::ResourceStridesEntry::~ResourceStridesEntry(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void PSSG::MessageRequestResourcesWithStrides::~MessageRequestResourcesWithStrides(PSSG::MessageRequestResourcesWithStrides *this)
{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
}

{
  *this = &unk_2870BB508;
  v2 = *(this + 68);
  *(this + 68) = 0;
  if (v2)
  {
    MEMORY[0x25F8C7C30](v2, 0x1000C80B3D5DE44);
  }

  v3 = (this + 520);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 496);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  PSSG::MessageBase::~MessageBase(this);
  MEMORY[0x25F8C7C50]();
}

uint64_t PSSG::MessageBase::MessageBase(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *a1 = &unk_2870BB478;
  *(a1 + 8) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v6;
  }

  std::unordered_set<std::string>::unordered_set(a1 + 40, a4);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 488) = 0;
  return a1;
}

void sub_25EAD0284(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessagePauseResources::~MessagePauseResources(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePauseResources::description(PSSG::MessagePauseResources *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v47, "Pause resources: ");
  v4 = *(this + 8);
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v6 = std::string::basic_string[abi:ne200100]<0>(&v55, "[");
    v7 = *(this + 7);
    v10 = *(v7 + 16);
    v8 = v7 + 16;
    v9 = v10;
    v11 = *(v8 + 23);
    if (v11 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v11 >= 0)
    {
      v13 = *(v8 + 23);
    }

    else
    {
      v13 = *(v8 + 8);
    }

    v14 = std::string::append(v6, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v54, "]");
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v54;
    }

    else
    {
      v16 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v56, v16, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v46 = v18->__r_.__value_.__r.__words[2];
    *v45 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v55.__r_.__value_.__r.__words[0];
LABEL_60:
      operator delete(v20);
    }
  }

  else
  {
    if (!v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "[]");
      goto LABEL_61;
    }

    std::string::basic_string[abi:ne200100]<0>(&v53, "[");
    v21 = *(this + 7);
    v24 = *(v21 + 16);
    v22 = v21 + 16;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v28 = std::string::append(&v53, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v51, " +");
    if ((v52 & 0x80u) == 0)
    {
      v30 = v51;
    }

    else
    {
      v30 = v51[0];
    }

    if ((v52 & 0x80u) == 0)
    {
      v31 = v52;
    }

    else
    {
      v31 = v51[1];
    }

    v32 = std::string::append(&v54, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v50, v5);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v50;
    }

    else
    {
      v34 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v50.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v55, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, " more]");
    if ((v49 & 0x80u) == 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = __p[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v39 = v49;
    }

    else
    {
      v39 = __p[1];
    }

    v40 = std::string::append(&v56, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v46 = v40->__r_.__value_.__r.__words[2];
    *v45 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    if (v49 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = v53.__r_.__value_.__r.__words[0];
      goto LABEL_60;
    }
  }

LABEL_61:
  if (v46 >= 0)
  {
    v42 = v45;
  }

  else
  {
    v42 = v45[0];
  }

  if (v46 >= 0)
  {
    v43 = HIBYTE(v46);
  }

  else
  {
    v43 = v45[1];
  }

  v44 = std::string::append(&v47, v42, v43);
  *a2 = *v44;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD0604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 41) < 0)
  {
    operator delete(*(v44 - 64));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAD09D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD0A94(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *PSSG::MessageSetupResources::MessageSetupResources(void *a1, __int128 *a2, uint64_t *a3)
{
  memset(v5, 0, sizeof(v5));
  PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(a1, 43, a2, a3, v5);
  v6 = v5;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v6);
  *a1 = &unk_2870BB698;
  return a1;
}

void sub_25EAD0B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *PSSG::MessageResourceRequestsFailed::MessageResourceRequestsFailed(void *a1, __int128 *a2, uint64_t *a3)
{
  memset(v5, 0, sizeof(v5));
  PSSG::MessageRequestResourcesBase::MessageRequestResourcesBase(a1, 29, a2, a3, v5);
  v6 = v5;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v6);
  *a1 = &unk_2870BB650;
  return a1;
}

void sub_25EAD0BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PSSG::MessageRequestCurrentGraphs::~MessageRequestCurrentGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishCurrentGraphs::~MessagePublishCurrentGraphs(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessagePublishCurrentGraphs::description(PSSG::MessagePublishCurrentGraphs *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v14, "Publish current graphs: ");
  std::to_string(&v13, *(this + 30));
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v13;
  }

  else
  {
    v4 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v14, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, " bytes");
  if ((v12 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_25EAD0D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageCompletedCurrentGraphsRequest::~MessageCompletedCurrentGraphsRequest(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void PSSG::MessageSystemReplayStarting::~MessageSystemReplayStarting(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void PSSG::MessageSystemReplayEnding::~MessageSystemReplayEnding(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

PSSG::MessageRequestGraphResubmission *PSSG::MessageRequestGraphResubmission::MessageRequestGraphResubmission(PSSG::MessageRequestGraphResubmission *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  PSSG::MessageBase::MessageBase(this, 41, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2870BA9A0;
  return this;
}

void sub_25EAD0F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestGraphResubmission::~MessageRequestGraphResubmission(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

PSSG::MessageRequestReplayResources *PSSG::MessageRequestReplayResources::MessageRequestReplayResources(PSSG::MessageRequestReplayResources *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  PSSG::MessageBase::MessageBase(this, 42, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2870BA9E8;
  return this;
}

void sub_25EAD1034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSSG::MessageRequestReplayResources::~MessageRequestReplayResources(void **this)
{
  PSSG::MessageBase::~MessageBase(this);

  JUMPOUT(0x25F8C7C50);
}

void *std::map<unsigned int,unsigned int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned int,unsigned int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned int>,std::__tree_node<std::__value_type<unsigned int,unsigned int>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,unsigned int> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::vector<std::pair<unsigned int,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<unsigned int,unsigned int>*,std::pair<unsigned int,unsigned int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned int,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EAD1464(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned int,unsigned int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8C7B80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25EAD1598(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F8C7AD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x25F8C7AE0](v13);
  return a1;
}

void sub_25EAD1700(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F8C7AE0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25EAD16E0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_25EAD1934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<PSSG::ResourceStridesEntry>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAD1C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD1CF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(void *result)
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

uint64_t std::unordered_set<PSSG::Resource *>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<PSSG::Resource *,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,std::allocator<PSSG::Resource *>>::__emplace_unique_key_args<PSSG::Resource *,PSSG::Resource * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(void *a1, void *a2)
{
  result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(a1, a2);
  if (result)
  {
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::find<PSSG::Client *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAD2678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD2740(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceStreams *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceStreams *>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,service_support>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,service_support>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,service_support>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,service_support>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PSSG::Client *,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v8[2] = a2[2];
        v9 = *v8;
        std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_multi<PSSG::Client * const&>();
  }
}

void sub_25EAD287C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v5 >> 47) ^ v5)) >> 47));
  a2[1] = v6;
  inserted = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_prepare(a1, v6, v4);
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_25EAD2E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<PSSG::Graphs *,std::hash<PSSG::Graphs *>,std::equal_to<PSSG::Graphs *>,std::allocator<PSSG::Graphs *>>::__emplace_unique_key_args<PSSG::Graphs *,PSSG::Graphs * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,PSSG::ResourceOptions>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,PSSG::ResourceOptions>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAD3468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EAD3530(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,service_support>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAA30;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a2 + 51);
  v7 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    v9 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v8 + 1);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 58;
    v13 = *(v5 + 24);
    v12 = v5 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&v25, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    v20 = v26.__r_.__value_.__r.__words[0];
    PSSG::Resource::describe(v6, &__p);
    v21 = &v26;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v28 = v21;
    v29 = 2080;
    v30 = p_p;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- Wanted@%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, a2[1]);
  }

  else
  {
    v26 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &v26, v6, &v25);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25EAD38B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *PSSG::ResourceStridesEntry::ResourceStridesEntry(std::string *this, __int128 *a2, int a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = a3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(this + 32) = __p;
  }

  return this;
}

void sub_25EAD3A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_1,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAAC0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_1,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, std::string *a3@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    v8 = &v20;
    std::string::basic_string[abi:ne200100](&v20, v7 + 1);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v20.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 58;
    v12 = *(v5 + 24);
    v11 = v5 + 24;
    v10 = v12;
    v13 = *(v11 + 23);
    if (v13 >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = *(v11 + 8);
    }

    v16 = std::string::append(&v20, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v23 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s <-- No longer wanted", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, a2[1]);
  }

  else
  {
    __p = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v20, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &__p, 0, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_25EAD3DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourceRequest(void({block_pointer})(PSSG::Message &&))::$_1,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PSSG::Client::flushResourcePauseRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,void ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAB40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<PSSG::Client::flushResourcePauseRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,void ()(PSSG::Resource const&)>::operator()(uint64_t a1, const void **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    v6 = &v19;
    std::string::basic_string[abi:ne200100](&v19, v5 + 1);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v19.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v10 = *(v3 + 24);
    v9 = v3 + 24;
    v8 = v10;
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      v13 = *(v9 + 23);
    }

    else
    {
      v13 = *(v9 + 8);
    }

    v14 = std::string::append(&v19, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v21 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = __p;
    if (v21 < 0)
    {
      v16 = __p[0];
    }

    *buf = 136315138;
    v23 = v16;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s <-- Pause", buf, 0xCu);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  result = PSSG::Resource::logState(a2);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourcePauseRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,void ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(PSSG::Resource const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<PSSG::Client::flushResourceSetupRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BABD0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushResourceSetupRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a2 + 51);
  v7 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    v9 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v8 + 1);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 58;
    v13 = *(v5 + 24);
    v12 = v5 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&v25, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    v20 = v26.__r_.__value_.__r.__words[0];
    PSSG::Resource::describe(v6, &__p);
    v21 = &v26;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v28 = v21;
    v29 = 2080;
    v30 = p_p;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- Setup@%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, a2[1]);
  }

  else
  {
    v26 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &v26, v6, &v25);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25EAD4458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushResourceSetupRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<PSSG::Client::flushCompletedResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2870BAC50;
  a2[1] = v2;
  return result;
}

void std::__function::__func<PSSG::Client::flushCompletedResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, std::string *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = *(a2 + 49);
  v7 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = a2[1];
    }

    v9 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v8 + 1);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 58;
    v13 = *(v5 + 24);
    v12 = v5 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    if (v14 >= 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = *(v12 + 8);
    }

    v17 = std::string::append(&v25, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
    v20 = v26.__r_.__value_.__r.__words[0];
    PSSG::Resource::describe(v6, &__p);
    v21 = &v26;
    if (v19 < 0)
    {
      v21 = v20;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v28 = v21;
    v29 = 2080;
    v30 = p_p;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "%s <-- Completed@%s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  PSSG::Resource::logState(a2);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, a2[1]);
  }

  else
  {
    v26 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&v25, "");
  PSSG::ResourceStridesEntry::ResourceStridesEntry(a3, &v26, v6, &v25);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_25EAD47E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<PSSG::Client::flushCompletedResourceRequest(void({block_pointer})(PSSG::Message &&))::$_0,std::allocator<void({block_pointer})(PSSG::Message &&)>,PSSG::ResourceStridesEntry ()(PSSG::Resource const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::ResourceOptions>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::ResourceOptions>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25EAD4AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,PSSG::ResourceOptions>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,PSSG::ResourceOptions>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::__unordered_map_hasher<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::hash<PSSG::Resource *>,std::equal_to<PSSG::Resource *>,true>,std::__unordered_map_equal<PSSG::Resource *,std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,std::equal_to<PSSG::Resource *>,std::hash<PSSG::Resource *>,true>,std::allocator<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>>>::__emplace_unique_key_args<PSSG::Resource *,std::piecewise_construct_t const&,std::tuple<PSSG::Resource * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PSSG::Resource *,std::vector<unsigned int>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EAD4FE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t PSSG::ServerComms::registerOrchestrator(PSSG::ServerComms *this, void *a2)
{
  *(*(this + 10) + 184) = a2;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN4PSSG11ServerComms20registerOrchestratorEPv_block_invoke;
  v3[3] = &__block_descriptor_40_e24_v16__0__NSMutableArray_8l;
  v3[4] = this;
  return [a2 setNotifier:v3];
}

void ___ZN4PSSG11ServerComms20registerOrchestratorEPv_block_invoke(uint64_t a1, void *a2)
{
  v8[46] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v8[0] = &unk_2870BB538;
  v8[1] = v5;
  v6 = **(v4 + 48);
  PSSG::MessageResourceStateUpdate::serialize(v8);
  ps_comms_client_send();

  v7 = *MEMORY[0x277D85DE8];
}

void PSSG::Server::forwardMessage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v16 = v2;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    for (i = *(a2 + 536); i; i = *i)
    {
      v6 = objc_alloc_init(PSSupportedCadencesConfig);
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(i + 10)];
      [(PSSupportedCadencesConfig *)v6 setDefaultStride:v7];

      if (*(i + 19) == -1)
      {
        [(PSSupportedCadencesConfig *)v6 setBaseMSGSyncID:0];
      }

      else
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        [(PSSupportedCadencesConfig *)v6 setBaseMSGSyncID:v8];
      }

      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = i[6];
      v10 = i[7];
      while (v11 != v10)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[1]];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v11];
        [v9 setObject:v12 forKeyedSubscript:v13];

        v11 += 2;
      }

      [(PSSupportedCadencesConfig *)v6 setSupportedCadences:v9];
      v14 = i + 2;
      if (*(i + 39) < 0)
      {
        v14 = *v14;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
      [v4 setObject:v6 forKeyedSubscript:v15];
    }

    [v16 setupSupportedCadences:v4];
  }
}

{
  v2 = *(a1 + 184);
  if (v2)
  {
    v9 = v2;
    v6 = *(a2 + 16);
    v5 = a2 + 16;
    v4 = v6;
    if (*(v5 + 23) >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    [v9 execSessionRemoved:v8];
  }
}

{
  v2 = *(a1 + 184);
  if (v2)
  {
    v9 = v2;
    v6 = *(a2 + 16);
    v5 = a2 + 16;
    v4 = v6;
    if (*(v5 + 23) >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
    [v9 execSessionRemoved:v8];
  }
}

void PSSG::Server::forwardMessage(PSSG::Server *this, const PSSG::MessageCompletedResourceRequestWithStrides *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(&v12, *(a2 + 62), *(a2 + 63), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 63) - *(a2 + 62)) >> 3));
    v6 = v12;
    for (i = v13; v6 != i; v6 += 7)
    {
      v8 = objc_alloc_init(PSResourceStateUpdate);
      v9 = v6;
      if (*(v6 + 23) < 0)
      {
        v9 = *v6;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [(PSResourceStateUpdate *)v8 setResourceName:v10];

      [(PSResourceStateUpdate *)v8 setState:2];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v6 + 6)];
      [(PSResourceStateUpdate *)v8 setStride:v11];

      [v5 addObject:v8];
    }

    [v4 resourceStateUpdate:v5];
    v15 = &v12;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v15);
  }
}

void sub_25EAD5520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void PSSG::Server::forwardMessage(PSSG::Server *this, const PSSG::MessageSetupCompleted *a2)
{
  v2 = *(this + 23);
  if (v2)
  {
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(&v12, *(a2 + 62), *(a2 + 63), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 63) - *(a2 + 62)) >> 3));
    v6 = v12;
    for (i = v13; v6 != i; v6 += 7)
    {
      v8 = objc_alloc_init(PSResourceStateUpdate);
      v9 = v6;
      if (*(v6 + 23) < 0)
      {
        v9 = *v6;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [(PSResourceStateUpdate *)v8 setResourceName:v10];

      [(PSResourceStateUpdate *)v8 setState:1];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v6 + 6)];
      [(PSResourceStateUpdate *)v8 setStride:v11];

      [v5 addObject:v8];
    }

    [v4 resourceStateUpdate:v5];
    v15 = &v12;
    std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&v15);
  }
}

void sub_25EAD56D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a12);

  _Unwind_Resume(a1);
}

void PSSG::Server::handleMessage(PSSG::Server *this, const PSSG::MessageResourceStateUpdate *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 1);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 resourceName];
        v9 = v8;
        v10 = [v8 UTF8String];
        v11 = strlen(v10);
        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v12 = v11;
        if (v11 >= 0x17)
        {
          operator new();
        }

        v18 = v11;
        if (v11)
        {
          memmove(&__dst, v10, v11);
        }

        *(&__dst + v12) = 0;
        p_dst = &__dst;
        v13 = std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 6, &__dst)[5];
        if (v18 < 0)
        {
          operator delete(__dst);
        }

        v14 = [v7 desiredStride];
        PSSG::Resource::orchestratorHasSetState(v13, [v14 unsignedIntValue], objc_msgSend(v7, "wantedByConsumers"));
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<PSSG::ResourceStridesEntry>::__init_with_size[abi:ne200100]<PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PSSG::ResourceStridesEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25EAD5B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PSSG::ResourceStridesEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<PSSG::ResourceStridesEntry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*,PSSG::ResourceStridesEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 32), *(v6 + 4), *(v6 + 5));
      }

      else
      {
        v8 = v6[2];
        v4[2].__r_.__value_.__r.__words[0] = *(v6 + 6);
        *&v4[1].__r_.__value_.__r.__words[1] = v8;
      }

      v6 = (v6 + 56);
      v4 = (v13 + 56);
      v13 = (v13 + 56);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PSSG::ResourceStridesEntry>,PSSG::ResourceStridesEntry*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

const void **std::__hash_table<std::__hash_value_type<std::string,PSSG::Resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,PSSG::Resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,PSSG::Resource *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

std::string *PSSG::Resource::Resource(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[2]) = 1065353216;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = 1065353216;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[6].__r_.__value_.__l.__data_) = 1065353216;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[7].__r_.__value_.__r.__words[2]) = 1065353216;
  this[9].__r_.__value_.__r.__words[2] = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__s.__data_[8] = 0;
  *(&this[8].__r_.__value_.__r.__words[2] + 4) = 0;
  *(&this[8].__r_.__value_.__r.__words[1] + 4) = 0;
  this[9].__r_.__value_.__l.__size_ = &this[9].__r_.__value_.__r.__words[2];
  this[10].__r_.__value_.__r.__words[2] = 0;
  this[11].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  this[10].__r_.__value_.__l.__size_ = &this[10].__r_.__value_.__r.__words[2];
  return this;
}

uint64_t PSSG::Resource::providerHasPublishedResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 232);
  v6 = *(a1 + 232);
  *(a1 + 24) = a2;
  v8 = a1 + 224;
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::destroy(a1 + 224, v6);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
  *(v7 - 4) = 0;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  if (v10 != v9)
  {
    *(a1 + 216) = *a3;
    do
    {
      std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,unsigned int> const&>(v8, v9);
      v9 += 2;
    }

    while (v9 != v10);
  }

  if (*(a3 + 32) == 1)
  {
    *(a1 + 215) = 1;
    PSSG::Client::resourceCanBePaused(*(a1 + 24), a1);
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v41 = *(a2 + 24);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v41.__r_.__value_.__l.__size_ != 14)
    {
      goto LABEL_18;
    }

    v11 = v41.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) != 14)
    {
      goto LABEL_18;
    }

    v11 = &v41;
  }

  v12 = v11->__r_.__value_.__r.__words[0];
  v13 = *(v11->__r_.__value_.__r.__words + 6);
  if (v12 == 0x72506172656D6143 && v13 == 0x72656469766F7250)
  {
    v16 = 1;
    if ((*(&v41.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_18:
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v40 = *(a2 + 24);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = v40.__r_.__value_.__l.__size_ == 12 && *v40.__r_.__value_.__l.__data_ == 0x65526D6574737953 && *(v40.__r_.__value_.__r.__words[0] + 8) == 2036427888;
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  else
  {
    v16 = SHIBYTE(v40.__r_.__value_.__r.__words[2]) == 12 && v40.__r_.__value_.__r.__words[0] == 0x65526D6574737953 && LODWORD(v40.__r_.__value_.__r.__words[1]) == 2036427888;
  }

  if ((*(&v41.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_42:
    operator delete(v41.__r_.__value_.__l.__data_);
  }

LABEL_43:
  if (v16)
  {
    *(a1 + 192) = 1;
  }

  v18 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v19 = *(a1 + 23);
    }

    else
    {
      v19 = *(a1 + 8);
    }

    v20 = &v39;
    std::string::basic_string[abi:ne200100](&v39, v19 + 1);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v39.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a1 + 23) >= 0)
      {
        v21 = a1;
      }

      else
      {
        v21 = *a1;
      }

      memmove(v20, v21, v19);
    }

    *(&v20->__r_.__value_.__l.__data_ + v19) = 58;
    v22 = *(a1 + 24);
    if (v22)
    {
      if (*(v22 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v38, *(v22 + 24), *(v22 + 32));
      }

      else
      {
        v38 = *(v22 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v38, "NULL (likely due to a Polaris client error)");
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v38;
    }

    else
    {
      v23 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v39, v23, size);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
    v28 = v40.__r_.__value_.__r.__words[0];
    v29 = *(a3 + 32);
    PSSG::Resource::describeSupportedStrides(a1, __p);
    v30 = &v40;
    if (v27 < 0)
    {
      v30 = v28;
    }

    v31 = "unsupported";
    if (v29)
    {
      v31 = "supported";
    }

    v32 = *(a3 + 36);
    LODWORD(v41.__r_.__value_.__l.__data_) = 136316162;
    *(v41.__r_.__value_.__r.__words + 4) = v30;
    if (v37 >= 0)
    {
      v33 = __p;
    }

    else
    {
      v33 = __p[0];
    }

    WORD2(v41.__r_.__value_.__r.__words[1]) = 2080;
    *(&v41.__r_.__value_.__r.__words[1] + 6) = "providerHasPublishedResource";
    HIWORD(v41.__r_.__value_.__r.__words[2]) = 2080;
    v42 = v31;
    v43 = 2080;
    v44 = v33;
    v45 = 1024;
    v46 = v32;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEFAULT, "%s --> %s [setup/pause %s] %s [%u]", &v41, 0x30u);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  result = PSSG::Resource::sendOutgoingMessages(a1);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD6478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *PSSG::Resource::describeSupportedStrides@<X0>(PSSG::Resource *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 30))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "[", 1);
    v3 = *(this + 28);
    if (v3 != (this + 232))
    {
      v4 = 1;
      do
      {
        if ((v4 & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, ",", 1);
        }

        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "(", 1);
        v6 = MEMORY[0x25F8C7B00](v5, *(v3 + 7));
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "/", 1);
        v8 = MEMORY[0x25F8C7B00](v7, *(v3 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
        if (*(v3 + 7) == *(this + 54))
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " (default)", 10);
        }

        v9 = *(v3 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v4 = 0;
        v3 = v10;
      }

      while (v10 != (this + 232));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "]", 1);
    std::stringbuf::str();
    v14[0] = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 72);
    *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v15 = v12;
    v16 = MEMORY[0x277D82878] + 16;
    if (v18 < 0)
    {
      operator delete(v17[7].__locale_);
    }

    v16 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v17);
    std::iostream::~basic_iostream();
    return MEMORY[0x25F8C7BD0](&v19);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "[]");
  }
}

uint64_t PSSG::Resource::sendOutgoingMessages(PSSG::Client **this)
{
  result = PSSG::Resource::logState(this);
  if (*(this + 52) == 1)
  {
    for (i = this[11]; i; i = *i)
    {
      PSSG::Client::resourceIsNowBeingProduced(*(i + 2), this);
    }

    result = std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 9);
  }

  if (this[3])
  {
    if (*(this + 214) == 1)
    {
      for (j = this[16]; j; j = *j)
      {
        PSSG::Client::consumerIsAwaitingContext(this[3], *(j + 2));
      }

      for (k = this[21]; k; k = *k)
      {
        PSSG::Client::consumerIsAwaitingResourceAvailabilityUpdates(this[3], *(k + 2));
      }

      std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::clear(this + 14);
    }

    if (*(this + 212) == 1)
    {
      v6 = this[3];

      return PSSG::Client::isAcceptingRequests(v6);
    }

    else
    {
      v7 = *(this + 213);
      result = PSSG::Client::isAcceptingRequests(this[3]);
      if (result && (v7 & 1) == 0)
      {
        if (this[25] & 1) != 0 || *(this + 52) == 1 && (*(this + 52) = 0, PSSG::Client::resourceNeedsToBeUnlocked(this[3], this), (this[25]) || *(this + 195) == 1 && (*(this + 212) = 1, *(this + 195) = 0, PSSG::Client::resourceNoLongerHasConsumers(this[3], this), (this[25]))
        {
          if (*(this + 195) == 1 && !*(this + 52))
          {
            *(this + 213) = 1;
            PSSG::Client::resourceNeedsToBeLocked(this[3], this);
          }
        }

        if (PSSG::Resource::needToSendWanted(this) && (*(this + 200) != 1 || *(this + 195) != 1 || *(this + 52)))
        {
          *(this + 212) = 1;
          PSSG::Client::resourceNowHasConsumers(this[3], this);
        }

        result = PSSG::Resource::needToSendSetup(this);
        if (result)
        {
          *(this + 212) = 1;
          result = PSSG::Client::resourceNeedsToBeSetup(this[3], this);
        }

        if (*(this + 200) == 1)
        {
          result = PSSG::Client::isUserInactive(this[3]);
          if (result)
          {
            if (*(this + 215) == 1 && *(this + 194) == 1)
            {
              *(this + 212) = 1;
              v8 = this[3];

              return PSSG::Client::resourceNeedsToBePaused(v8, this);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t PSSG::Resource::providerHasExited(PSSG::Resource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v3 = *(this + 23);
    }

    else
    {
      v3 = *(this + 1);
    }

    v4 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v3 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if (v3)
    {
      if (*(this + 23) >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      memmove(v4, v5, v3);
    }

    *(&v4->__r_.__value_.__l.__data_ + v3) = 58;
    v6 = *(this + 3);
    if (v6)
    {
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v14 = *(v6 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 2080;
    v21 = "providerHasExited";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 3) = 0;
  *(this + 214) = 0;
  *(this + 97) = 0;
  *(this + 49) = 0;
  *(this + 212) = 0;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD6BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::consumerIsAwaitingContext(PSSG::Resource *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 14, &v4);
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::consumerIsAwaitingResourceAvailabilityUpdates(PSSG::Resource *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 19, &v4);
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::providerIsNowProducingResource(PSSG::Resource *this, PSSG::Resource *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v21;
    std::string::basic_string[abi:ne200100](&v21, v5 + 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v21.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v8 = *(this + 3);
    if (v8)
    {
      if (*(v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v20 = *(v8 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v20, "NULL (likely due to a Polaris client error)");
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v20;
    }

    else
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v21, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v23 = v11->__r_.__value_.__r.__words[2];
    *v22 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = SHIBYTE(v23);
    v14 = v22[0];
    PSSG::Resource::describe(a2, &__p);
    v15 = v22;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v25 = v15;
    v26 = 2080;
    v27 = "providerIsNowProducingResource";
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s @ %s", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  *(this + 97) = 257;
  *(this + 49) = a2;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD6F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *PSSG::Resource::describe@<X0>(PSSG::Resource *this@<X0>, std::string *a2@<X8>)
{
  if (this)
  {
    return std::to_string(a2, this);
  }

  else
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "_");
  }
}

uint64_t PSSG::Resource::providerIsAcceptingRequests(PSSG::Resource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v3 = *(this + 23);
    }

    else
    {
      v3 = *(this + 1);
    }

    v4 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v3 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if (v3)
    {
      if (*(this + 23) >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      memmove(v4, v5, v3);
    }

    *(&v4->__r_.__value_.__l.__data_ + v3) = 58;
    v6 = *(this + 3);
    if (v6)
    {
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v14 = *(v6 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 2080;
    v21 = "providerIsAcceptingRequests";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  result = PSSG::Resource::sendOutgoingMessages(this);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::resumePausedResource(PSSG::Resource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v3 = *(this + 23);
    }

    else
    {
      v3 = *(this + 1);
    }

    v4 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v3 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if (v3)
    {
      if (*(this + 23) >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      memmove(v4, v5, v3);
    }

    *(&v4->__r_.__value_.__l.__data_ + v3) = 58;
    v6 = *(this + 3);
    if (v6)
    {
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v14 = *(v6 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 2080;
    v21 = "resumePausedResource";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  result = PSSG::Resource::sendOutgoingMessages(this);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD73BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::pauseResource(PSSG::Resource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v3 = *(this + 23);
    }

    else
    {
      v3 = *(this + 1);
    }

    v4 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v3 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if (v3)
    {
      if (*(this + 23) >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      memmove(v4, v5, v3);
    }

    *(&v4->__r_.__value_.__l.__data_ + v3) = 58;
    v6 = *(this + 3);
    if (v6)
    {
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v14 = *(v6 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 2080;
    v21 = "pauseResource";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  result = PSSG::Resource::sendOutgoingMessages(this);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD75DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasStoppedProducingResource(PSSG::Resource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v3 = *(this + 23);
    }

    else
    {
      v3 = *(this + 1);
    }

    v4 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v3 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if (v3)
    {
      if (*(this + 23) >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      memmove(v4, v5, v3);
    }

    *(&v4->__r_.__value_.__l.__data_ + v3) = 58;
    v6 = *(this + 3);
    if (v6)
    {
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v14 = *(v6 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 2080;
    v21 = "providerHasStoppedProducingResource";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 194) = 0;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD7800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasSetResourceAvailability(PSSG::Resource *this, char a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v17;
    std::string::basic_string[abi:ne200100](&v17, v5 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v17.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v8 = *(this + 3);
    if (v8)
    {
      if (*(v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v16 = *(v8 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v16, "NULL (likely due to a Polaris client error)");
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v17, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = __p;
    if (v19 < 0)
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v21 = v13;
    v22 = 2080;
    v23 = "providerHasSetResourceAvailability";
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  *(this + 193) = a2;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD7A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::consumerWantsResourceAtStrides(const void **a1, uint64_t a2, unsigned int **a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v6 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v7 + 1);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v25.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 58;
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v24 = *(a2 + 24);
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v24;
    }

    else
    {
      v10 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v25, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v27 = v12->__r_.__value_.__r.__words[2];
    *v26 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = SHIBYTE(v27);
    v15 = v26[0];
    PSSG::describeStrides(a3);
    v16 = v26;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    *v30 = v16;
    *&v30[8] = 2080;
    *&v30[10] = "consumerWantsResourceAtStrides";
    v31 = 2080;
    v32 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s --> %s %s", buf, 0x20u);
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }
  }

  if (*a3 != a3[1])
  {
    *buf = **a3;
    *&v30[4] = a2;
    std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__emplace_multi<std::pair<unsigned int const,PSSG::Client *>>();
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(a1 + 9, &v28);
  v18 = PSSG::Resource::computeDesiredStride(a1);
  if ((v18 & 0x100000000) != 0)
  {
    *(a1 + 51) = v18;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 200) = v19;
  result = PSSG::Resource::sendOutgoingMessages(a1);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD7CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::describeStrides(unsigned int **a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "[", 1);
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = 1;
    do
    {
      v5 = *v2;
      if ((v4 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, ",", 1);
      }

      PSSG::Resource::describe(v5, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 = 0;
      ++v2;
    }

    while (v2 != v3);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "]", 1);
  std::stringbuf::str();
  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v8;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x25F8C7BD0](&v16);
}

uint64_t PSSG::Resource::consumerNoLongerWantsResourceAtStrides(const void **a1, uint64_t a2, unsigned int **a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = &v39;
    std::string::basic_string[abi:ne200100](&v39, v7 + 1);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v39.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 23) >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 58;
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v38 = *(a2 + 24);
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v38;
    }

    else
    {
      v10 = v38.__r_.__value_.__r.__words[0];
    }

    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v38.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v39, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
    v15 = v40.__r_.__value_.__r.__words[0];
    PSSG::describeStrides(a3);
    v16 = &v40;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v37 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    v42 = v16;
    v43 = 2080;
    v44 = "consumerNoLongerWantsResourceAtStrides";
    v45 = 2080;
    v46 = p_p;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "%s --> %s %s", buf, 0x20u);
    if (v37 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v18 = *a3;
  v19 = a3[1];
  if (*a3 != v19)
  {
    while (1)
    {
      v20 = *v18;
      *buf = *v18;
      v21 = std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__equal_range_multi<unsigned int>((a1 + 31), buf);
      v23 = v21;
      if (a1 + 32 == v21)
      {
        break;
      }

      if (v21 != v22)
      {
        while (v23[5] != a2)
        {
          v24 = v23[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v23[2];
              v26 = *v25 == v23;
              v23 = v25;
            }

            while (!v26);
          }

          v23 = v25;
          if (v25 == v22)
          {
            goto LABEL_62;
          }
        }

        std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__remove_node_pointer(a1 + 31, v23);
        v28 = v23;
LABEL_61:
        operator delete(v28);
      }

LABEL_62:
      if (++v18 == v19)
      {
        goto LABEL_63;
      }
    }

    v27 = __PSSGLogSharedInstance();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_62;
    }

    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v40 = *(a2 + 24);
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &v40;
    }

    else
    {
      v29 = v40.__r_.__value_.__r.__words[0];
    }

    v30 = a1;
    if (*(a1 + 23) < 0)
    {
      v30 = *a1;
    }

    PSSG::Resource::describe(v20, &v39);
    v31 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v39.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    v42 = v29;
    v43 = 2080;
    v44 = v30;
    v45 = 2080;
    v46 = v31;
    _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_ERROR, "Critical! API MISUSE: Client %s isn't using (%s) at stride %s but is attempting to remove it", buf, 0x20u);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    v28 = v40.__r_.__value_.__r.__words[0];
    goto LABEL_61;
  }

LABEL_63:
  v32 = PSSG::Resource::computeDesiredStride(a1);
  if ((v32 & 0x100000000) != 0)
  {
    *(a1 + 51) = v32;
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 200) = v33;
  result = PSSG::Resource::sendOutgoingMessages(a1);
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD8368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::consumerWantsResource(PSSG::Resource *this, PSSG::Client *a2)
{
  v4 = a2;
  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__emplace_unique_key_args<PSSG::Client *,PSSG::Client * const&>(this + 9, &v4);
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::orchestratorHasSetState(PSSG::Client **this, int a2, char a3)
{
  *(this + 200) = a3;
  *(this + 51) = a2;
  return PSSG::Resource::sendOutgoingMessages(this);
}

uint64_t PSSG::Resource::consumerNoLongerWantsResource(PSSG::Resource *this, PSSG::Client *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v4 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v22;
    std::string::basic_string[abi:ne200100](&v22, v5 + 1);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v22.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v21 = *(a2 + 1);
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v21;
    }

    else
    {
      v8 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v22, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v24 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = __p;
    if (v24 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315394;
    v27 = v12;
    v28 = 2080;
    v29 = "consumerNoLongerWantsResource";
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  v13 = *(this + 31);
  if (v13 != (this + 256))
  {
    do
    {
      if (v13[5] == v25)
      {
        v15 = std::__tree<std::__value_type<unsigned int,PSSG::Client *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PSSG::Client *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PSSG::Client *>>>::__remove_node_pointer(this + 31, v13);
        operator delete(v13);
      }

      else
      {
        v14 = v13[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v13[2];
            v16 = *v15 == v13;
            v13 = v15;
          }

          while (!v16);
        }
      }

      v13 = v15;
    }

    while (v15 != (this + 256));
  }

  std::__hash_table<PSSG::Client *,std::hash<PSSG::Client *>,std::equal_to<PSSG::Client *>,std::allocator<PSSG::Client *>>::__erase_unique<PSSG::Client *>(this + 9, &v25);
  v17 = PSSG::Resource::computeDesiredStride(this);
  if ((v17 & 0x100000000) != 0)
  {
    *(this + 51) = v17;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  *(this + 200) = v18;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD869C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerFailedToProduceResource(PSSG::Resource *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v3 = *(this + 23);
    }

    else
    {
      v3 = *(this + 1);
    }

    v4 = &v15;
    std::string::basic_string[abi:ne200100](&v15, v3 + 1);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v15.__r_.__value_.__r.__words[0];
    }

    if (v3)
    {
      if (*(this + 23) >= 0)
      {
        v5 = this;
      }

      else
      {
        v5 = *this;
      }

      memmove(v4, v5, v3);
    }

    *(&v4->__r_.__value_.__l.__data_ + v3) = 58;
    v6 = *(this + 3);
    if (v6)
    {
      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, *(v6 + 24), *(v6 + 32));
      }

      else
      {
        v14 = *(v6 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "NULL (likely due to a Polaris client error)");
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v14;
    }

    else
    {
      v7 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v15, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = __p;
    if (v17 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 2080;
    v21 = "providerFailedToProduceResource";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  *(this + 212) = 0;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25EAD88C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSSG::Resource::providerHasSetupResource(PSSG::Resource *this, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 23) >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = &v17;
    std::string::basic_string[abi:ne200100](&v17, v5 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v17.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 23) >= 0)
      {
        v7 = this;
      }

      else
      {
        v7 = *this;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 58;
    v8 = *(this + 3);
    if (v8)
    {
      if (*(v8 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        v16 = *(v8 + 24);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v16, "NULL (likely due to a Polaris client error)");
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v16;
    }

    else
    {
      v9 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v17, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19 = v11->__r_.__value_.__r.__words[2];
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = __p;
    if (v19 < 0)
    {
      v13 = __p[0];
    }

    *buf = 136315394;
    v21 = v13;
    v22 = 2080;
    v23 = "providerHasSetupResource";
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "%s --> %s ", buf, 0x16u);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  *(this + 49) = a2;
  *(this + 212) = 0;
  *(this + 195) = 1;
  result = PSSG::Resource::sendOutgoingMessages(this);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}