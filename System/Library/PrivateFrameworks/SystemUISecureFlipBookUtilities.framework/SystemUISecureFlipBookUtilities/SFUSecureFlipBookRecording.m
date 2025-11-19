@interface SFUSecureFlipBookRecording
+ (id)recordingWithOptions:(id)a3;
- (BOOL)appendFlipBookFrameFrom:(id)a3 bounds:(CGRect)a4 lockHeld:(BOOL)a5;
- (BOOL)beginCaptureWithOptions:(id)a3;
- (BOOL)endCapture;
- (BOOL)startTransitionTo:(id)a3;
- (BOOL)updateContentStreamOptions:(id)a3;
- (SFUSecureFlipBookRecording)initWithOptions:(id)a3;
- (id).cxx_construct;
- (id)generateSecureAsset:(id *)a3;
- (void)dealloc;
- (void)endCapture;
- (void)sanitizeFrames;
- (void)setFallbackIndicatorRect:(CGRect)a3;
- (void)streamCallbackFrom:(id)a3 with:(id)a4;
@end

@implementation SFUSecureFlipBookRecording

+ (id)recordingWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"recordingName"];
  if ([v5 length])
  {
    v6 = [[a1 alloc] initWithOptions:v4];
  }

  else
  {
    v7 = os_log_get();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SFUSecureFlipBookRecording recordingWithOptions:];
    }

    v6 = 0;
  }

  return v6;
}

- (SFUSecureFlipBookRecording)initWithOptions:(id)a3
{
  v4 = a3;
  if (MEMORY[0x26D6A5730]("[SFUSecureFlipBookRecording initWithOptions:]"))
  {
    v5 = [v4 objectForKeyedSubscript:@"recordingName"];
    v6 = *(self + 1);
    *(self + 1) = v5;

    v7 = [v4 objectForKeyedSubscript:@"recordingVerbose"];
    *(self + 300) = v7 != 0;

    v8 = *(MEMORY[0x277CBF398] + 16);
    *(self + 10) = *MEMORY[0x277CBF398];
    *(self + 11) = v8;
    v9 = [v4 objectForKeyedSubscript:@"fallbackIndicatorFrame"];
    v10 = v9;
    if (v9)
    {
      [v9 getValue:location size:32];
      v11 = v42;
      *(self + 10) = *location;
      *(self + 11) = v11;
    }

    v12 = [MEMORY[0x277CD9E40] mainDisplay];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v17 = [v4 objectForKeyedSubscript:@"recordingExtent"];
    v18 = v17;
    if (v17)
    {
      [v17 getValue:location size:16];
      v14 = location[0];
      v16 = location[1];
    }

    v19 = [v4 objectForKeyedSubscript:@"queueDepth"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 unsignedIntValue];
    }

    else
    {
      v21 = 6;
    }

    v23 = [v12 displayId];
    v40.receiver = self;
    v40.super_class = SFUSecureFlipBookRecording;
    self = [(SFUSecureFlipBookRecording *)&v40 init];
    if (self)
    {
      v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v25 = dispatch_queue_create("FlipBookRecorderStreamQueue", v24);
      v26 = *(self + 5);
      *(self + 5) = v25;

      v27 = dispatch_queue_create("FlipBookRecorderCopyQueue", v24);
      v28 = *(self + 6);
      *(self + 6) = v27;

      v29 = objc_opt_new();
      [v29 setPixelFormat:1111970369];
      [v29 setFrameSize:{*&v14, *&v16}];
      [v29 setQueueDepth:v21];
      [v29 setTargetDisplayId:v23];
      [v29 setMinimumFrameTime:0.00833333333];
      [v12 bounds];
      [v29 setSourceRect:?];
      [v12 bounds];
      [v29 setDestinationRect:?];
      [v29 setAlwaysScaleToFit:1];
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__SFUSecureFlipBookRecording_initWithOptions___block_invoke;
      aBlock[3] = &unk_279D42558;
      objc_copyWeak(&v39, location);
      v30 = _Block_copy(aBlock);
      v31 = [MEMORY[0x277CD9E28] contentStreamWithOptions:v29 queue:*(self + 5) handler:v30 error:0];
      if (v31)
      {
        v32 = [MEMORY[0x277CD9E48] displayLinkWithDisplay:v12 target:objc_opt_class() selector:sel_linkCallback_];
        v33 = *(self + 4);
        *(self + 4) = v32;

        v34 = *(self + 4);
        v35 = [MEMORY[0x277CBEB88] mainRunLoop];
        [v34 addToRunLoop:v35 forMode:*MEMORY[0x277CBE640]];

        v43 = CAFrameRateRangeMake(120.0, 120.0, 120.0);
        [*(self + 4) setPreferredFrameRateRange:{*&v43.minimum, *&v43.maximum, *&v43.preferred}];
        [*(self + 4) setHighFrameRateReason:3211265];
        objc_storeStrong(self + 2, v29);
        objc_storeStrong(self + 3, v31);
        v22 = self;
      }

      else
      {
        v36 = os_log_get();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [SFUSecureFlipBookRecording initWithOptions:];
        }

        v22 = 0;
      }

      objc_destroyWeak(&v39);
      objc_destroyWeak(location);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __46__SFUSecureFlipBookRecording_initWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained streamCallbackFrom:v6 with:v5];
}

- (void)dealloc
{
  std::mutex::lock(self + 3);
  if (*(self + 36))
  {
    __assert_rtn("[SFUSecureFlipBookRecording dealloc]", "SFUSecureFlipBookRecorder.mm", 424, "!_current_capture");
  }

  [*(self + 3) stop:0];
  [*(self + 4) invalidate];
  std::mutex::unlock(self + 3);
  v3.receiver = self;
  v3.super_class = SFUSecureFlipBookRecording;
  [(SFUSecureFlipBookRecording *)&v3 dealloc];
}

- (BOOL)updateContentStreamOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"captureContextList"];
  if ([v5 count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
    v7 = [*(self + 7) isEqualToSet:v6];
    if ((v7 & 1) == 0)
    {
      [*(self + 3) setIncludedContexts:v6 error:0];
      v8 = *(self + 7);
      *(self + 7) = v6;
      v6 = v8;
    }

    v9 = v7 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 objectForKeyedSubscript:@"captureLayerBounds"];
  RenderId = CALayerGetRenderId();
  if ([*(self + 2) trackedLayer] != RenderId)
  {
    [*(self + 2) setTrackedLayer:RenderId];
    v9 = 1;
  }

  return v9;
}

- (BOOL)beginCaptureWithOptions:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"captureFromState"];
  std::string::basic_string[abi:ne200100]<0>(&__str, [v5 UTF8String]);

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = [v4 objectForKeyedSubscript:@"captureFlags"];
    [v7 unsignedIntValue];

    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
    v12 = [v4 objectForKeyedSubscript:@"captureBounds"];
    v13 = v12;
    x = v8;
    y = v9;
    width = v10;
    height = v11;
    if (v12)
    {
      [v12 getValue:&buf size:32];
      v29 = CGRectIntegral(buf);
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
    }

    v18 = [v4 objectForKeyedSubscript:@"captureLayerBounds"];
    if (CALayerGetRenderId() || (v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, (validate_capture_bounds(v30) & 1) != 0))
    {
      if (!-[SFUSecureFlipBookRecording updateContentStreamOptions:](self, "updateContentStreamOptions:", v4) || (dispatch_sync(*(self + 5), &__block_literal_global), ([*(self + 3) updateOptions:*(self + 2) error:0] & 1) != 0))
      {
        std::mutex::lock(self + 3);
        if (*(self + 36))
        {
          v19 = os_log_get();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording beginCaptureWithOptions:];
          }
        }

        else if ([*(self + 7) count])
        {
          if ([*(self + 3) start:0])
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "");
            v20 = [v4 objectForKeyedSubscript:@"captureToState"];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
              std::string::__assign_external(&__p, [v21 UTF8String]);
            }

            operator new();
          }

          v19 = os_log_get();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording beginCaptureWithOptions:];
          }
        }

        else
        {
          v19 = os_log_get();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording beginCaptureWithOptions:];
          }
        }

        std::mutex::unlock(self + 3);
        goto LABEL_27;
      }

      v23 = os_log_get();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording beginCaptureWithOptions:];
      }
    }

    else
    {
      v23 = os_log_get();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording beginCaptureWithOptions:];
      }
    }

    goto LABEL_27;
  }

  v18 = os_log_get();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SFUSecureFlipBookRecording beginCaptureWithOptions:];
  }

LABEL_27:

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 0;
}

- (BOOL)startTransitionTo:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  std::mutex::lock(self + 3);
  v5 = *(self + 36);
  if (!v5)
  {
LABEL_6:
    std::mutex::unlock(self + 3);
    v7 = 0;
    goto LABEL_26;
  }

  if (*(v5 + 168) == 1)
  {
    v6 = os_log_get();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SFUSecureFlipBookRecording startTransitionTo:];
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 64);
  v9 = *(v5 + 72);
  if (v9 == v8)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    v5 = *(self + 36);
  }

  *(v5 + 168) = 1;
  std::string::__assign_external((*(self + 36) + 40), [v4 UTF8String]);
  v10 = CACurrentMediaTime();
  v11 = ((v9 - v8) >> 1) - 1;
  v12 = *(self + 36);
  *v12 = v10;
  if (v9 == v8)
  {
    v11 = 0;
  }

  *(v12 + 164) = v11;
  if (*(self + 300))
  {
    v13 = os_log_get();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(self + 36);
      v15 = v14 + 2;
      if (*(v14 + 39) < 0)
      {
        v15 = *v15;
      }

      v16 = v14 + 5;
      if (*(v14 + 63) < 0)
      {
        v16 = *v16;
      }

      v17 = *v14;
      v21 = 136315650;
      v22 = v15;
      v23 = 2080;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&dword_26C632000, v13, OS_LOG_TYPE_DEFAULT, "Begin transition from %s -> %s for target time %f", &v21, 0x20u);
    }
  }

  if (v8 != v9)
  {
    v18 = v8;
    do
    {
      v19.handle = *v18;
      FlipBookFramePool::free(self + 8, v19);
      ++v18;
    }

    while (v18 != v9);
  }

  std::mutex::unlock(self + 3);
  if (v8)
  {
    operator delete(v8);
  }

  v7 = 1;
LABEL_26:

  return v7;
}

- (BOOL)appendFlipBookFrameFrom:(id)a3 bounds:(CGRect)a4 lockHeld:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v60 = *MEMORY[0x277D85DE8];
  v10 = a3;
  [v10 surface];
  v11 = CGImageCreateFromIOSurface();
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v12 = CGImageCreateWithImageInRect(v11, v61);
  BytesPerRow = CGImageGetBytesPerRow(v12);
  v48 = CGImageGetHeight(v12);
  v14 = CGImageGetWidth(v12);
  v15 = CGImageGetHeight(v12);
  v16 = CGImageGetBytesPerRow(v12);
  CGImageGetBitsPerComponent(v12);
  std::vector<unsigned char>::vector[abi:ne200100](&src_buffer, v16 * v15);
  v47 = BytesPerRow;
  std::vector<unsigned char>::vector[abi:ne200100](&dst_buffer, v16 * v15);
  if (v16 * v15)
  {
    if (CGImageGetData() != v15)
    {
      __assert_rtn("compress_cgimage", "SFUSecureFlipBookRecorder.mm", 615, "sub_row == height");
    }

    v17 = rgba_swizzle_from_cgimage(v12);
    v18 = dst_buffer;
    v19 = src_buffer;
    if (v15)
    {
      v20 = 0;
      v21 = HIBYTE(v17);
      v22 = v17;
      v23 = BYTE1(v17);
      v24 = BYTE2(v17);
      v25 = 4 * v14;
      v26 = &dst_buffer[v24];
      v27 = &dst_buffer[v23];
      v28 = &dst_buffer[v22];
      v29 = &dst_buffer[v21];
      do
      {
        if (v25)
        {
          for (i = 0; i < v25; i += 4)
          {
            v31 = &v19[i];
            *v31 = v26[i];
            v31[1] = v27[i];
            v31[2] = v28[i];
            v31[3] = v29[i];
          }
        }

        ++v20;
        v26 += v16;
        v27 += v16;
        v28 += v16;
        v19 += v16;
        v29 += v16;
      }

      while (v20 != v15);
      v18 = dst_buffer;
      v19 = src_buffer;
    }

    v32 = compression_encode_buffer(v18, v16 * v15, v19, v16 * v15, 0, COMPRESSION_LZFSE);
    v33 = v32;
    if (!v32)
    {
      v34 = os_log_get();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v55 = v14;
        v56 = 1024;
        v57 = v15;
        v58 = 1024;
        v59 = v16;
        _os_log_error_impl(&dword_26C632000, v34, OS_LOG_TYPE_ERROR, "Failed to compress image of size %ux%u Bpr:%u", buf, 0x14u);
      }
    }

    if (v33 <= v51 - dst_buffer)
    {
      if (v33 < v51 - dst_buffer)
      {
        v51 = &dst_buffer[v33];
      }
    }

    else
    {
      std::vector<unsigned char>::__append(&dst_buffer, v33 - (v51 - dst_buffer));
    }
  }

  if (src_buffer)
  {
    v53 = src_buffer;
    operator delete(src_buffer);
  }

  CGImageRelease(v11);
  CGImageRelease(v12);
  v35 = dst_buffer;
  if (dst_buffer == v51)
  {
    v37 = 0;
    if (!dst_buffer)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  src_buffer = self + 192;
  LOBYTE(v53) = 0;
  if (!a5)
  {
    std::unique_lock<std::mutex>::lock[abi:ne200100](&src_buffer);
  }

  v36 = *(self + 36);
  v37 = v36 != 0;
  if (v36)
  {
    *buf = FlipBookFramePool::alloc(self + 8, v51 - dst_buffer);
    v38 = *(self + 32) + 96 * *buf;
    if ((*(v38 - 96) & 1) == 0)
    {
      __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
    }

    memcpy(*(v38 - 24), dst_buffer, v51 - dst_buffer);
    *(v38 - 88) = *(*(self + 36) + 88);
    *(v38 - 72) = width;
    *(v38 - 64) = height;
    v39 = *(self + 36);
    *(v38 - 12) = (x - *(v39 + 88));
    *(v38 - 10) = (y - *(v39 + 96));
    *(v38 - 32) = v47;
    *(v38 - 40) = v48 * v47;
    *(v38 - 8) = *(v39 + 160);
    v40 = [v10 updateTime];
    if (host_time_to_time(unsigned long long)::once[0] != -1)
    {
      [SFUSecureFlipBookRecording appendFlipBookFrameFrom:bounds:lockHeld:];
    }

    *(v38 - 56) = *&host_time_to_time(unsigned long long)::time_scale * v40;
    v41 = [v10 displayTime];
    if (host_time_to_time(unsigned long long)::once[0] != -1)
    {
      [SFUSecureFlipBookRecording appendFlipBookFrameFrom:bounds:lockHeld:];
    }

    *(v38 - 48) = *&host_time_to_time(unsigned long long)::time_scale * v41;
    v42 = *(self + 74) + 1;
    *(self + 74) = v42;
    *(v38 - 16) = v42;
    *(self + 38) += *(v38 - 36);
    v43 = *(self + 36);
    v44 = *(v43 + 64);
    v45 = *(v43 + 72);
    std::vector<FlipBookFrameHandle>::push_back[abi:ne200100]((v43 + 64), buf);
    if (v44 == v45)
    {
      std::condition_variable::notify_all((*(self + 36) + 176));
    }
  }

  if (v53 == 1)
  {
    std::mutex::unlock(src_buffer);
  }

  v35 = dst_buffer;
  if (dst_buffer)
  {
LABEL_34:
    v51 = v35;
    operator delete(v35);
  }

LABEL_35:

  return v37;
}

- (void)streamCallbackFrom:(id)a3 with:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 surface])
  {
    v8 = [v7 updateTime];
    if (host_time_to_time(unsigned long long)::once[0] != -1)
    {
      [SFUSecureFlipBookRecording streamCallbackFrom:with:];
    }

    v9 = *&host_time_to_time(unsigned long long)::time_scale;
    std::mutex::lock(self + 3);
    v10 = *(self + 36);
    if (v10)
    {
      v12 = *(v10 + 64);
      v11 = *(v10 + 72);
      if (v12 == v11)
      {
        v14 = 0.0;
      }

      else
      {
        v13 = *(self + 32) + 96 * *(v11 - 2);
        if ((*(v13 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        v14 = *(v13 - 56);
      }

      v17 = v9 * v8;
      if (v7 && (*(self + 300) & 1) != 0 && [v7 surface])
      {
        v18 = os_log_get();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(self + 36);
          v21 = *(v19 + 64);
          v20 = *(v19 + 72);
          v22 = [v7 displayTime];
          if (host_time_to_time(unsigned long long)::once[0] != -1)
          {
            [SFUSecureFlipBookRecording streamCallbackFrom:with:];
          }

          v23 = *(self + 74);
          *buf = 67110400;
          v69 = (v20 - v21) >> 1;
          v70 = 2048;
          v71 = v17;
          v72 = 2048;
          v73 = v17 - v14;
          v74 = 2048;
          v75 = *&host_time_to_time(unsigned long long)::time_scale * v22;
          v76 = 1024;
          v77 = v23 + 1;
          v78 = 1024;
          v79 = [v7 status];
          _os_log_impl(&dword_26C632000, v18, OS_LOG_TYPE_DEFAULT, "Got frame %u for t=%f - delta t=%f  display t=%f (potential render_id %u) - status %u", buf, 0x32u);
        }

        v24 = *(self + 39);
        v25 = *(self + 40);
        v26 = [v7 surfaceId];
        if (v24 != v25)
        {
          while (*v24 != v26)
          {
            if (++v24 == v25)
            {
              v24 = v25;
              break;
            }
          }
        }

        if (v24 == *(self + 40))
        {
          v27 = [v7 surfaceId];
          v29 = *(self + 40);
          v28 = *(self + 41);
          if (v29 >= v28)
          {
            v31 = *(self + 39);
            v32 = v29 - v31;
            v33 = (v29 - v31) >> 2;
            v34 = v33 + 1;
            if ((v33 + 1) >> 62)
            {
              std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
            }

            v35 = v28 - v31;
            if (v35 >> 1 > v34)
            {
              v34 = v35 >> 1;
            }

            v36 = v35 >= 0x7FFFFFFFFFFFFFFCLL;
            v37 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v36)
            {
              v37 = v34;
            }

            if (v37)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(self + 312, v37);
            }

            v38 = (v29 - v31) >> 2;
            v39 = (4 * v33);
            v40 = (4 * v33 - 4 * v38);
            *v39 = v27;
            v30 = v39 + 1;
            memcpy(v40, v31, v32);
            v41 = *(self + 39);
            *(self + 39) = v40;
            *(self + 40) = v30;
            *(self + 41) = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *v29 = v27;
            v30 = v29 + 4;
          }

          *(self + 40) = v30;
        }
      }

      v42 = *(self + 36);
      v43 = *(v42 + 8);
      v44 = v43 <= 0.0 || v17 <= v43;
      if (v44 || *(v42 + 64) == *(v42 + 72))
      {
        if (CGRectIsNull(*(v42 + 88)))
        {
          [v7 contentRect];
          if (!CGRectIsEmpty(v81))
          {
            [v7 contentRect];
            v46 = *(self + 36);
            v46[11] = v47;
            v46[12] = v48;
            v46[13] = v49;
            v46[14] = v50;
          }
        }

        v51 = *(self + 36);
        if (v51[19])
        {
          [v7 contentRect];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
        }

        else
        {
          v53 = v51[11];
          v55 = v51[12];
          v57 = v51[13];
          v59 = v51[14];
        }

        v60 = *(self + 6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__SFUSecureFlipBookRecording_streamCallbackFrom_with___block_invoke;
        block[3] = &unk_279D425A0;
        block[4] = self;
        v62 = v7;
        v64 = v53;
        v65 = v55;
        v66 = v57;
        v67 = v59;
        v63 = v6;
        dispatch_async(v60, block);
      }

      else
      {
        if (*(self + 300) == 1)
        {
          v45 = os_log_get();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [SFUSecureFlipBookRecording streamCallbackFrom:with:];
          }
        }

        [*(self + 3) releaseSurfaceWithId:objc_msgSend(v7 error:{"surfaceId"), 0}];
      }
    }

    else
    {
      if (*(self + 300) == 1)
      {
        v16 = os_log_get();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26C632000, v16, OS_LOG_TYPE_DEFAULT, "frame received after capture scope", buf, 2u);
        }
      }

      [v6 releaseSurfaceWithId:objc_msgSend(v7 error:{"surfaceId"), 0}];
    }

    std::mutex::unlock(self + 3);
  }

  else
  {
    v15 = os_log_get();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      -[SFUSecureFlipBookRecording streamCallbackFrom:with:].cold.4(buf, [v7 status], v15);
    }
  }
}

uint64_t __54__SFUSecureFlipBookRecording_streamCallbackFrom_with___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendFlipBookFrameFrom:*(a1 + 40) bounds:0 lockHeld:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) surfaceId];

  return [v2 releaseSurfaceWithId:v3 error:0];
}

- (void)sanitizeFrames
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *(self + 36);
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3 != *(v2 + 72))
    {
      v5 = 0;
      v6 = 0;
      v47 = 0uLL;
      v48 = 0;
      do
      {
        v7 = *(self + 32) + 96 * *(v3 + 2 * v6);
        if ((*(v7 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        v8 = *(v7 - 56);
        v9 = *(self + 36);
        if (v8 >= *v9 && v8 <= v9[1])
        {
          v10 = validate_capture_bounds(*(v7 - 88));
          v3 = *(v2 + 64);
          if (v10)
          {
            std::vector<FlipBookFrameHandle>::push_back[abi:ne200100](&v47, (v3 + v5));
            v3 = *(v2 + 64);
          }
        }

        ++v6;
        v11 = *(v2 + 72);
        v5 += 2;
      }

      while (v6 < (v11 - v3) >> 1);
      v12 = v47;
      if (v47 == *(&v47 + 1))
      {
        if (v11 == v3)
        {
          v18 = 0;
          v20 = INFINITY;
        }

        else
        {
          LODWORD(v18) = 0;
          v19 = 0;
          v20 = INFINITY;
          do
          {
            v21 = *(self + 32) + 96 * *(v3 + 2 * v19);
            if ((*(v21 - 96) & 1) == 0)
            {
              __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
            }

            v22 = vabdd_f64(*(v21 - 56), **(self + 36));
            if (v22 >= v20)
            {
              v18 = v18;
            }

            else
            {
              v20 = v22;
              v18 = v19;
            }

            ++v19;
          }

          while ((v11 - v3) >> 1 != v19);
        }

        v23 = os_log_get();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(self + 36);
          v25 = (v24 + 16);
          if (*(v24 + 39) < 0)
          {
            v25 = *v25;
          }

          v26 = (v24 + 40);
          if (*(v24 + 63) < 0)
          {
            v26 = *v26;
          }

          *buf = 136315650;
          v50 = v25;
          v51 = 2080;
          v52 = v26;
          v53 = 2048;
          v54 = v20;
          _os_log_impl(&dword_26C632000, v23, OS_LOG_TYPE_DEFAULT, "Sanitizing frames lead to empty capture for %s -> %s. Assuming single frame state with frame delta_t = %g", buf, 0x20u);
        }

        std::vector<FlipBookFrameHandle>::push_back[abi:ne200100](&v47, (*(v2 + 64) + 2 * v18));
        if ((validate_capture_bounds(*(*(self + 36) + 88)) & 1) == 0)
        {
          v27 = *(self + 32) + 96 * *(*(v2 + 64) + 2 * v18);
          if ((*(v27 - 96) & 1) == 0)
          {
            __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
          }

          v28 = validate_capture_bounds(*(v27 - 88));
          v29 = *(self + 36);
          if (v28)
          {
            v30 = *(v27 - 88);
            *(v29 + 104) = *(v27 - 72);
            *(v29 + 88) = v30;
            v31 = os_log_get();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(v27 - 88);
              v33 = *(v27 - 80);
              v34 = *(v27 - 72);
              v35 = *(v27 - 64);
              *buf = 134218752;
              v50 = v32;
              v51 = 2048;
              v52 = v33;
              v53 = 2048;
              v54 = v34;
              v55 = 2048;
              v56 = v35;
              _os_log_impl(&dword_26C632000, v31, OS_LOG_TYPE_DEFAULT, "Using capture bounds infered from guessed frame [%g %g %g %g]", buf, 0x2Au);
            }
          }

          else
          {
            *(v29 + 88) = *(v29 + 120);
            *(v29 + 104) = *(v29 + 136);
            v31 = os_log_get();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *(v29 + 120);
              v37 = *(v29 + 128);
              v38 = *(v29 + 136);
              v39 = *(v29 + 144);
              *buf = 134218752;
              v50 = v36;
              v51 = 2048;
              v52 = v37;
              v53 = 2048;
              v54 = v38;
              v55 = 2048;
              v56 = v39;
              _os_log_impl(&dword_26C632000, v31, OS_LOG_TYPE_DEFAULT, "Invalid capture bounds from frame, falling back to explicit capture bounds [%g %g %g %g]", buf, 0x2Au);
            }
          }
        }
      }

      else if (*(&v47 + 1) - v47 >= 3uLL)
      {
        v13 = *(self + 32);
        v14 = v13 + 96 * *v47;
        if ((*(v14 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        v15 = (v47 + 2);
        v16 = v13 + 96 * *(v47 + 2);
        if ((*(v16 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        if (*(v16 - 56) - *(v14 - 56) < 0.004)
        {
          v17 = *(&v47 + 1) - v15;
          if (*(&v47 + 1) != v15)
          {
            memmove(v47, v15, *(&v47 + 1) - v15);
          }

          *(&v47 + 1) = v12 + v17;
        }
      }

      v40 = *(v2 + 64);
      v41 = *(v2 + 72);
      while (v40 != v41)
      {
        v42 = *v40;
        v43 = v47;
        if (v47 != *(&v47 + 1))
        {
          while (*v43 != v42)
          {
            if (++v43 == *(&v47 + 1))
            {
              goto LABEL_49;
            }
          }
        }

        if (v43 == *(&v47 + 1))
        {
LABEL_49:
          FlipBookFramePool::free(self + 8, v42);
        }

        ++v40;
      }

      v44 = *(self + 36);
      v45 = *(v44 + 64);
      *(v44 + 64) = v47;
      v46 = *(v44 + 80);
      *(v44 + 80) = v48;
      *&v47 = v45;
      v48 = v46;
      if (v45)
      {
        *(&v47 + 1) = v45;
        operator delete(v45);
      }
    }
  }
}

- (BOOL)endCapture
{
  v60 = *MEMORY[0x277D85DE8];
  __lk.__m_ = (self + 192);
  __lk.__owns_ = 1;
  std::mutex::lock(self + 3);
  v3 = *(self + 36);
  if (!v3)
  {
LABEL_78:
    std::mutex::unlock(__lk.__m_);
    return v3 != 0;
  }

  v4 = CACurrentMediaTime();
  v5 = *(self + 36);
  *(v5 + 8) = v4;
  if ((*(v5 + 63) & 0x8000000000000000) != 0)
  {
    if (*(v5 + 48))
    {
      goto LABEL_7;
    }
  }

  else if (*(v5 + 63))
  {
    goto LABEL_7;
  }

  std::string::operator=((v5 + 40), (v5 + 16));
  v5 = *(self + 36);
LABEL_7:
  v6 = v5;
  if (*(self + 300) == 1)
  {
    v7 = os_log_get();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(self + 36);
      v9 = (v8 + 16);
      if (*(v8 + 39) < 0)
      {
        v9 = *v9;
      }

      v10 = (v8 + 40);
      if (*(v8 + 63) < 0)
      {
        v10 = *v10;
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_26C632000, v7, OS_LOG_TYPE_DEFAULT, "Ending Capture for %s -> %s", buf, 0x16u);
    }

    v6 = *(self + 36);
  }

  v11 = (v5 + 16);
  v12 = (v5 + 40);
  if (*(v6 + 64) == *(v6 + 72))
  {
    v52 = (v5 + 16);
    v53 = (v5 + 40);
    v54 = v3;
    while (1)
    {
      v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
      v14.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v15.__d_.__rep_ = 5000000000;
      if (v14.__d_.__rep_)
      {
        if (v14.__d_.__rep_ >= 1)
        {
          if (v14.__d_.__rep_ <= 0x20C49BA5E353F7)
          {
LABEL_22:
            if (v14.__d_.__rep_ < 0x20C49BA59708B8)
            {
              v15.__d_.__rep_ = 1000 * v14.__d_.__rep_ + 5000000000;
              goto LABEL_25;
            }
          }

          v15.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_25;
        }

        v15.__d_.__rep_ = 0x800000012A05F200;
        if (v14.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
        {
          goto LABEL_22;
        }
      }

LABEL_25:
      std::condition_variable::__do_timed_wait((v6 + 176), &__lk, v15);
      v16.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - v13.__d_.__rep_;
      v6 = *(self + 36);
      if (*(v6 + 64) != *(v6 + 72) || v16.__d_.__rep_ > 0x12A05F1FFLL)
      {
        v12 = (v5 + 40);
        v11 = (v5 + 16);
        if (v16.__d_.__rep_ > 0x12A05F1FFLL)
        {
          v18 = os_log_get();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v5 + 16;
            if (*(v5 + 39) < 0)
            {
              v19 = *v52;
            }

            v20 = v5 + 40;
            if (*(v5 + 63) < 0)
            {
              v20 = *v53;
            }

            *buf = 136315394;
            *&buf[4] = v19;
            *&buf[12] = 2080;
            *&buf[14] = v20;
            _os_log_impl(&dword_26C632000, v18, OS_LOG_TYPE_DEFAULT, "Timed out waiting to receive frames for %s -> %s", buf, 0x16u);
          }
        }

        break;
      }
    }
  }

  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    dispatch_sync(*(self + 6), &__block_literal_global_77);
    std::unique_lock<std::mutex>::lock[abi:ne200100](&__lk);
    [(SFUSecureFlipBookRecording *)self sanitizeFrames];
    v21 = *(self + 36);
    v23 = *(v21 + 64);
    v22 = *(v21 + 72);
    if (validate_capture_bounds(*(v21 + 88)))
    {
      if (v22 != v23)
      {
        *buf = v11;
        v24 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(self + 8, v11);
        *buf = v12;
        v25 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v24 + 5, v12);
        v26 = *(v5 + 39);
        if (v26 >= 0)
        {
          v27 = *(v5 + 39);
        }

        else
        {
          v27 = *(v5 + 24);
        }

        v28 = *(v5 + 63);
        v29 = v28;
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(v5 + 48);
        }

        if (v27 == v28)
        {
          v30 = v26 >= 0 ? v11 : *v11;
          v31 = v29 >= 0 ? v12 : *v12;
          if (!memcmp(v30, v31, v27) && v25[5] != v25[6])
          {
            v32 = os_log_get();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [(SFUSecureFlipBookRecording *)(v5 + 39) endCapture];
            }
          }
        }

        v33 = *(self + 36);
        v34 = *(v33 + 164);
        if (v34 >= 0x10000)
        {
          v35 = *(v5 + 39);
          if (v35 >= 0)
          {
            v36 = *(v5 + 39);
          }

          else
          {
            v36 = *(v5 + 24);
          }

          v37 = *(v5 + 63);
          v38 = v37;
          if ((v37 & 0x80u) != 0)
          {
            v37 = *(v5 + 48);
          }

          if (v36 == v37 && (v35 >= 0 ? (v39 = v11) : (v39 = *v11), v38 >= 0 ? (v40 = v12) : (v40 = *v12), !memcmp(v39, v40, v36)))
          {
            v34 = ((*(v33 + 72) - *(v33 + 64)) >> 1) - 1;
          }

          else
          {
            v34 = -2;
          }

          *(v33 + 164) = v34;
        }

        *buf = v34;
        v41 = *(v33 + 64);
        v42 = *(v33 + 72);
        *&buf[8] = v41;
        *&buf[16] = v42;
        v43 = *(v33 + 80);
        v57 = v43;
        *(v33 + 72) = 0;
        *(v33 + 80) = 0;
        *(v33 + 64) = 0;
        v44 = v25[6];
        if (v44 >= v25[7])
        {
          v47 = std::vector<FlipBookTransitionPoint>::__emplace_back_slow_path<FlipBookTransitionPoint>(v25 + 5, buf);
          v48 = *&buf[8];
          v25[6] = v47;
          if (v48)
          {
            *&buf[16] = v48;
            operator delete(v48);
          }
        }

        else
        {
          *v44 = v34;
          *(v44 + 8) = v41;
          *(v44 + 16) = v42;
          *(v44 + 24) = v43;
          v25[6] = v44 + 32;
        }
      }
    }

    else
    {
      v45 = os_log_get();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v49 = *(self + 36);
        if (*(v5 + 39) < 0)
        {
          v11 = *v11;
        }

        v51 = *(v49 + 104);
        v50 = *(v49 + 112);
        if (*(v5 + 63) < 0)
        {
          v12 = *v12;
        }

        *buf = 134218754;
        *&buf[4] = v51;
        *&buf[12] = 2048;
        *&buf[14] = v50;
        *&buf[22] = 2080;
        v57 = v11;
        v58 = 2080;
        v59 = v12;
        _os_log_error_impl(&dword_26C632000, v45, OS_LOG_TYPE_ERROR, "Invalid capture size %gx%g for %s->%s", buf, 0x2Au);
      }
    }

    [*(self + 3) stop:{0, v52, v53, v54}];
    std::unique_ptr<CurrentCapture>::reset[abi:ne200100](self + 36, 0);
    ++*(self + 74);
    if (!__lk.__owns_)
    {
      return v3 != 0;
    }

    goto LABEL_78;
  }

  std::__throw_system_error(1, "unique_lock::unlock: not locked");
  __break(1u);
  return result;
}

- (void)setFallbackIndicatorRect:(CGRect)a3
{
  *(self + 20) = *&a3.origin.x;
  *(self + 21) = *&a3.origin.y;
  *(self + 22) = *&a3.size.width;
  *(self + 23) = *&a3.size.height;
}

- (id)generateSecureAsset:(id *)a3
{
  v308 = *MEMORY[0x277D85DE8];
  if (*(self + 300) == 1)
  {
    v3 = os_log_get();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(self + 1) UTF8String];
      v5 = *(self + 38);
      v6 = (*(self + 40) - *(self + 39)) >> 2;
      buf.A = 136315650;
      *&buf.B = v4;
      LOWORD(buf.D) = 2048;
      *(&buf.D + 2) = v6;
      HIWORD(buf.Nh) = 2048;
      *buf.data = v5;
      _os_log_impl(&dword_26C632000, v3, OS_LOG_TYPE_DEFAULT, "Exporting Secure Asset '%s'\n  Max Queue Depth used: %zu\n  Max In Flight Footprint: %zu", &buf, 0x20u);
    }
  }

  dispatch_sync(*(self + 6), &__block_literal_global_79);
  std::mutex::lock(self + 3);
  if (*(self + 36))
  {
    v7 = 0;
    goto LABEL_7;
  }

  v9 = *(self + 300);
  memset(&v282, 0, sizeof(v282));
  std::vector<std::string>::reserve(&v282, *(self + 11));
  v278 = 0u;
  *v279 = 0u;
  *&v279[16] = 1065353216;
  v10 = *(self + 10);
  if (v10)
  {
    do
    {
      while (std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(v10 + 5, v10 + 2))
      {
        std::vector<std::string>::push_back[abi:ne200100](&v282, v10 + 1);
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>::pair[abi:ne200100]<std::string const&,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>,0>(&buf, v10 + 1, v10 + 5);
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>(&v278, &buf);
      std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(buf.data);
      if (SHIBYTE(buf.Nh) < 0)
      {
        operator delete(*&buf.A);
      }

      v11 = *v10;
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove(self + 8, v10, &buf);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,void *>>>>::~unique_ptr[abi:ne200100](&buf);
      v10 = v11;
    }

    while (v11);
  }

LABEL_17:
  if (v9)
  {
    v12 = os_log_get();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.A) = 0;
      _os_log_impl(&dword_26C632000, v12, OS_LOG_TYPE_DEFAULT, "Final FlipBook has following valid states:\n", &buf, 2u);
    }

    begin = v282.__begin_;
    for (i = v282.__end_; begin != i; ++begin)
    {
      v15 = os_log_get();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = begin;
        if (SHIBYTE(begin->__r_.__value_.__r.__words[2]) < 0)
        {
          v16 = begin->__r_.__value_.__r.__words[0];
        }

        buf.A = 136315138;
        *&buf.B = v16;
        _os_log_impl(&dword_26C632000, v15, OS_LOG_TYPE_DEFAULT, "  %s\n", &buf, 0xCu);
      }
    }
  }

  memset(&buf, 0, 32);
  buf.data[2] = 1065353216;
  *v302 = 0;
  v304 = 0;
  v305 = 0;
  v303 = 0;
  *__p = 0u;
  v300 = 0u;
  v301 = 1065353216;
  v17 = *v279;
  if (*v279)
  {
    do
    {
      *v297 = v17 + 2;
      v18 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&buf, v17 + 2);
      resolve_transition(v17 + 2, self + 8, &v278, v302, v18 + 5, __p);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::clear(__p);
      v17 = *v17;
    }

    while (v17);
  }

  for (j = *(self + 10); j; j = *j)
  {
    v20 = j[7];
    while (v20)
    {
      v21 = v20 + 2;
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(&buf, v20 + 2);
      if (v22)
      {
        std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>::unordered_map(v297, (v22 + 5));
        v23 = v298;
        if (v298)
        {
          do
          {
            v24 = v23[5];
            if (v23[6] - v24 != 32)
            {
              __assert_rtn("resolve_states", "SFUSecureFlipBookRecorder.mm", 1171, "tps_it->second.size() == 1");
            }

            v25 = v20[5];
            if ((v20[6] - v25) >= 0x21)
            {
              v26 = os_log_get();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = v20 + 2;
                if (*(v20 + 39) < 0)
                {
                  v27 = *v21;
                }

                *v306 = 136315138;
                v307 = v27;
                _os_log_error_impl(&dword_26C632000, v26, OS_LOG_TYPE_ERROR, "Transient state %s has multiple transition point. Only the first one will be considered", v306, 0xCu);
              }

              v24 = v23[5];
              v25 = v20[5];
            }

            std::vector<FlipBookFrameHandle>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FlipBookFrameHandle*>,std::__wrap_iter<FlipBookFrameHandle*>>(v24 + 8, *(v24 + 8), *(v25 + 8), *(v25 + 16), (*(v25 + 16) - *(v25 + 8)) >> 1);
            v23 = *v23;
          }

          while (v23);
          v28 = v298;
          if (v298)
          {
            do
            {
              std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<FlipBookTransitionPoint>> const&>(j + 5, v28 + 2);
              v28 = *v28;
            }

            while (v28);
          }
        }

        v29 = *v20;
        std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove(j + 5, v20, v306);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](v306);
        std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::~__hash_table(v297);
        v20 = v29;
      }

      else if (std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(self + 8, v20 + 2))
      {
        v20 = *v20;
      }

      else
      {
        v30 = os_log_get();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          if (*(v20 + 39) < 0)
          {
            v21 = *v21;
          }

          *v297 = 136315138;
          *&v297[4] = v21;
          _os_log_error_impl(&dword_26C632000, v30, OS_LOG_TYPE_ERROR, "Failed to resolve transient state %s", v297, 0xCu);
        }

        v31 = *v20;
        std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::remove(j + 5, v20, v297);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,void *>>>>::~unique_ptr[abi:ne200100](v297);
        v20 = v31;
      }
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
  if (v303)
  {
    v304 = v303;
    operator delete(v303);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::~__hash_table(&buf);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::~__hash_table(&v278);
  v32 = 7.5;
  if (!CGRectIsNull(*(self + 5)))
  {
    v33 = *(self + 22);
    v32 = (v33 * 0.5);
  }

  v278 = 0uLL;
  *v279 = 0;
  memset(&v279[8], 0, 48);
  v280 = 0;
  v281 = 1065353216;
  FlipBookFramePool::all_frames(self + 8, __p);
  memset(&buf, 0, 32);
  buf.data[2] = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__rehash<true>(&buf, ((__p[1] - __p[0]) >> 1));
  for (k = *(self + 10); k; k = *k)
  {
    for (m = k[7]; m; m = *m)
    {
      v36 = m[5];
      v37 = m[6];
      while (v36 != v37)
      {
        v38 = *(v36 + 8);
        v39 = *(v36 + 16);
        while (v38 != v39)
        {
          std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::__emplace_unique_key_args<FlipBookFrameHandle,FlipBookFrameHandle const&>(&buf, v38++);
        }

        v36 += 32;
      }
    }
  }

  v40 = __p[0];
  v41 = __p[1];
  if (__p[0] == __p[1])
  {
    v42 = (self + 256);
  }

  else
  {
    v42 = (self + 256);
    while (1)
    {
      *v302 = *v40;
      if (!std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::find<FlipBookFrameHandle>(&buf, v302))
      {
        break;
      }

      if (++v40 == v41)
      {
        v40 = v41;
        goto LABEL_74;
      }
    }

    if (v40 != v41)
    {
      for (n = v40 + 1; n != v41; ++n)
      {
        *v302 = *n;
        if (std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::find<FlipBookFrameHandle>(&buf, v302))
        {
          *v40++ = *n;
        }
      }
    }
  }

LABEL_74:
  v43 = __p[1];
  if (v40 != __p[1])
  {
    v43 = v40;
    __p[1] = v40;
  }

  *v302 = v42;
  v44 = 126 - 2 * __clz((v43 - __p[0]) >> 1);
  if (v43 == __p[0])
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  std::__introsort<std::_ClassicAlgPolicy,export_all_frames(FlipBookFramePool const&,std::unordered_map<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>> const&)::$_1 &,FlipBookFrameHandle *,false>(__p[0], v43, v302, v45, 1);
  std::vector<ExportedFlipBookFrame>::vector[abi:ne200100](v297, (__p[1] - __p[0]) >> 1);
  v46 = *v297;
  if (*v297 != *&v297[8])
  {
    v47 = v42->entries.__begin_ + 96 * *__p[0];
    v48 = *(v47 - 96);
    if (v48 != 1)
    {
      __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 148, "get(h).alive");
    }

    v49 = 0;
    v50 = 0.0;
    v51 = &loc_26C64E000;
    do
    {
      v52 = v42->entries.__begin_ + 96 * *(__p[0] + v49);
      if ((*(v52 - 96) & 1) == 0)
      {
        __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 148, "get(h).alive");
      }

      v53 = 0.008;
      if (*(v52 - 16) - *(v47 - 16) == 1)
      {
        v53 = *(v52 - 48) - *(v47 - 48);
      }

      LODWORD(v51) = v51 & 0xFFFF0000 | *(__p[0] + v49);
      v54 = v46 + 16 * v49;
      *v54 = v51;
      *(v54 + 4) = v50;
      *(v54 + 8) = 0;
      v50 = v50 + v53;
      v49 = v48;
      v46 = *v297;
      ++v48;
      v47 = v52;
    }

    while (v49 < (*&v297[8] - *v297) >> 4);
  }

  std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::~__hash_table(&buf);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v55 = *v297;
  if (*v297 == *&v297[8])
  {
    v103 = os_log_get();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [SFUSecureFlipBookRecording generateSecureAsset:];
    }
  }

  else
  {
    v56 = vdupq_n_s64(0x7FF0000000000000uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    do
    {
      v61 = v42->entries.__begin_ + 96 * *v55;
      if ((*(v61 - 96) & 1) == 0)
      {
        __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
      }

      v62 = *(v61 - 88);
      v56 = vbslq_s8(vcgtq_f64(v56, v62), v62, v56);
      v63 = vaddq_f64(v62, *(v61 - 72));
      _Q0 = vbslq_s8(vcgtq_f64(v63, _Q0), v63, _Q0);
      v55 += 8;
    }

    while (v55 != *&v297[8]);
    v64 = vsubq_f64(_Q0, v56);
    v65 = v64.f64[0] + 7;
    v66 = v56;
    v67 = v64;
    if (v65 <= v64.f64[1] + 7)
    {
      v65 = v64.f64[1] + 7;
    }

    v267 = v65 & 0xFFFFFFF8;
    v68 = (v65 & 0xFFFFFFF8);
    v69 = v56.f64[1];
    v274 = v56.f64[0];
    v70 = v68;
    v310 = CGRectIntegral(*v66.f64);
    x = v310.origin.x;
    y = v310.origin.y;
    width = v310.size.width;
    height = v310.size.height;
    if (validate_capture_bounds(v310))
    {
      if (*&v279[8])
      {
        *&v279[16] = *&v279[8];
        operator delete(*&v279[8]);
      }

      *&v279[8] = *v297;
      *&v279[24] = v298;
      v298 = 0;
      memset(v297, 0, sizeof(v297));
      v75 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      v76 = CGBitmapContextCreate(0, width, height, 8uLL, 4 * width, v75, 1u);
      color = CGColorCreateSRGB(0.204, 0.78, 0.349, 1.0);
      CGContextSetFillColorWithColor(v76, color);
      CGContextSetStrokeColorWithColor(v76, color);
      CGContextAddArc(v76, vcvts_n_f32_u32(width, 1uLL), vcvts_n_f32_u32(height, 1uLL), v32, 0.0, 6.28318531, 1);
      CGContextFillPath(v76);
      Image = CGBitmapContextCreateImage(v76);
      scratch_buffer = CGImageGetWidth(Image);
      v78 = CGImageGetHeight(Image);
      BytesPerRow = CGImageGetBytesPerRow(Image);
      CGImageGetBitsPerComponent(Image);
      std::vector<unsigned char>::vector[abi:ne200100](&buf, BytesPerRow * v78);
      cf = v75;
      std::vector<unsigned char>::vector[abi:ne200100](__p, BytesPerRow * v78);
      if (BytesPerRow * v78)
      {
        if (CGImageGetData() != v78)
        {
          __assert_rtn("compress_cgimage", "SFUSecureFlipBookRecorder.mm", 615, "sub_row == height");
        }

        v80 = rgba_swizzle_from_cgimage(Image);
        v82 = __p[0];
        v83 = *&buf.A;
        if (v78)
        {
          v84 = 0;
          v85 = HIBYTE(v80);
          v86 = v80;
          v87 = BYTE1(v80);
          v88 = BYTE2(v80);
          v89 = 4 * scratch_buffer;
          v90 = __p[0] + v85;
          v91 = __p[0] + v88;
          v92 = __p[0] + v87;
          v93 = __p[0] + v86;
          do
          {
            if (v89)
            {
              for (ii = 0; ii < v89; ii += 4)
              {
                v95 = v90[ii];
                v96 = fmaxf(v95 / 255.0, 0.00001);
                LOBYTE(v81) = v91[ii];
                *&v97 = (((LODWORD(v81) / 255.0) / v96) * 255.0) + 0.5;
                v98 = &v83[ii];
                *v98 = *&v97;
                LOBYTE(v97) = v92[ii];
                *&v99 = (((v97 / 255.0) / v96) * 255.0) + 0.5;
                v98[1] = *&v99;
                LOBYTE(v99) = v93[ii];
                v81 = v99 / 255.0;
                v98[2] = (((v81 / v96) * 255.0) + 0.5);
                v98[3] = v95;
              }
            }

            ++v84;
            v90 += BytesPerRow;
            v91 += BytesPerRow;
            v92 += BytesPerRow;
            v83 += BytesPerRow;
            v93 += BytesPerRow;
          }

          while (v84 != v78);
          v82 = __p[0];
          v83 = *&buf.A;
        }

        v100 = compression_encode_buffer(v82, BytesPerRow * v78, v83, BytesPerRow * v78, 0, COMPRESSION_LZFSE);
        v42 = (self + 256);
        v101 = v100;
        if (!v100)
        {
          v102 = os_log_get();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *v302 = 67109632;
            *&v302[4] = scratch_buffer;
            LOWORD(v303) = 1024;
            *(&v303 + 2) = v78;
            HIWORD(v303) = 1024;
            LODWORD(v304) = BytesPerRow;
            _os_log_error_impl(&dword_26C632000, v102, OS_LOG_TYPE_ERROR, "Failed to compress image of size %ux%u Bpr:%u", v302, 0x14u);
          }

          v42 = (self + 256);
        }

        if (v101 <= __p[1] - __p[0])
        {
          if (v101 < __p[1] - __p[0])
          {
            __p[1] = __p[0] + v101;
          }
        }

        else
        {
          std::vector<unsigned char>::__append(__p, v101 - (__p[1] - __p[0]));
        }
      }

      if (*&buf.A)
      {
        *&buf.C = *&buf.A;
        operator delete(*&buf.A);
      }

      v105 = FlipBookFramePool::alloc(v42, LODWORD(__p[1]) - LODWORD(__p[0]));
      v106 = v42->entries.__begin_ + 96 * v105;
      if ((*(v106 - 96) & 1) == 0)
      {
        __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
      }

      memcpy(*(v106 - 24), __p[0], __p[1] - __p[0]);
      *(v106 - 88) = x;
      *(v106 - 80) = y;
      *(v106 - 72) = width;
      *(v106 - 64) = height;
      v107 = CGImageGetBytesPerRow(Image);
      *(v106 - 32) = v107;
      *(v106 - 40) = CGImageGetHeight(Image) * v107;
      *(v106 - 56) = vdupq_n_s64(0x7FF0000000000000uLL);
      *(v106 - 16) = 65534;
      *(v106 - 8) = 5;
      CFRelease(Image);
      CFRelease(color);
      CFRelease(v76);
      CFRelease(cf);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v108 = v105 | 0x7F80000000000000;
      v109 = *&v279[16];
      v110 = (*&v279[16] - *&v279[8]) >> 4;
      *v279 = v110;
      if (*&v279[16] >= *&v279[24])
      {
        v112 = v110 + 1;
        if ((v110 + 1) >> 60)
        {
          std::vector<FlipBookFramePool::PoolEntry>::__throw_length_error[abi:ne200100]();
        }

        v113 = *&v279[24] - *&v279[8];
        if ((*&v279[24] - *&v279[8]) >> 3 > v112)
        {
          v112 = v113 >> 3;
        }

        if (v113 >= 0x7FFFFFFFFFFFFFF0)
        {
          v114 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v114 = v112;
        }

        if (v114)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ExportedFlipBookFrame>>(&v279[8], v114);
        }

        v115 = (16 * v110);
        *v115 = v108;
        v115[1] = 0;
        v111 = 16 * v110 + 16;
        v116 = 16 * v110 - (*&v279[16] - *&v279[8]);
        memcpy(v115 - (*&v279[16] - *&v279[8]), *&v279[8], *&v279[16] - *&v279[8]);
        v117 = *&v279[8];
        *&v279[8] = v116;
        *&v279[16] = v111;
        *&v279[24] = 0;
        if (v117)
        {
          operator delete(v117);
        }
      }

      else
      {
        **&v279[16] = v108;
        *(v109 + 8) = 0;
        v111 = v109 + 16;
      }

      *&v279[16] = v111;
      v118 = *&v279[8];
      if (v111 == *&v279[8])
      {
        v121 = (v111 - *&v279[8]) >> 4;
      }

      else
      {
        v119 = 0;
        v120 = 1;
        do
        {
          *&buf.A = v118 + 16 * v119;
          *(std::__hash_table<std::__hash_value_type<FlipBookFrameHandle,unsigned int>,std::__unordered_map_hasher<FlipBookFrameHandle,std::__hash_value_type<FlipBookFrameHandle,unsigned int>,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,true>,std::__unordered_map_equal<FlipBookFrameHandle,std::__hash_value_type<FlipBookFrameHandle,unsigned int>,std::equal_to<FlipBookFrameHandle>,FlipBookFrameHandleHasher,true>,std::allocator<std::__hash_value_type<FlipBookFrameHandle,unsigned int>>>::__emplace_unique_key_args<FlipBookFrameHandle,std::piecewise_construct_t const&,std::tuple<FlipBookFrameHandle const&>,std::tuple<>>(&v279[32], *&buf.A) + 5) = v120 - 1;
          v119 = v120;
          v118 = *&v279[8];
          v121 = (*&v279[16] - *&v279[8]) >> 4;
          v134 = v121 > v120++;
        }

        while (v134);
      }

      v122 = 4 * v267;
      v123 = v122 * v267;
      v255 = v123 + v123 * v121;
      v124 = [MEMORY[0x277CBEB28] dataWithLength:?];
      __src = malloc_type_calloc(1uLL, 0x40000uLL, 0x100004077774924uLL);
      cfa = malloc_type_calloc(1uLL, v123, 0x100004077774924uLL);
      v125 = compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
      scratch_buffera = malloc_type_malloc(v125, 0x100004077774924uLL);
      v126 = *&v279[8];
      v127 = *&v279[16];
      if (*&v279[16] != *&v279[8])
      {
        v128 = 0;
        v129 = 0;
        v250 = 0;
        v251 = 0;
        v253 = v122 * v267;
        v130 = 0;
        while (1)
        {
          colora = v130;
          v131 = v42->entries.__begin_;
          v132 = v42->entries.__begin_ + 96 * v126[8 * v128];
          if ((*(v132 - 96) & 1) == 0)
          {
            break;
          }

          v133 = *(v132 - 88);
          v134 = v274 > v133 || v66.f64[1] > v66.f64[0];
          if (v134)
          {
            v245 = 1006;
            v247 = "export_frames";
            v246 = "min.x <= frame.rect.origin.x && min.y <= frame.rect.origin.y";
LABEL_292:
            __assert_rtn(v247, "SFUSecureFlipBookRecorder.mm", v245, v246);
          }

          v135 = v124;
          v136 = round(v274 - v133);
          v137 = round(v66.f64[1] - v66.f64[0]);
          v138 = &v126[8 * v128];
          v139 = v126;
          v268 = v129;
          if (v129)
          {
            v139 = v126;
            while (1)
            {
              v140 = (v131 + 96 * *v139);
              if ((*(v140 - 12) & 1) == 0)
              {
                __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
              }

              v141 = *(v132 - 36);
              if (v141 == *(v140 - 9))
              {
                v142 = round(v66.f64[1] - *(v140 - 10));
                _ZF = v136 == round(v274 - *(v140 - 11)) && v137 == v142;
                if (_ZF && !memcmp(*(v132 - 24), *(v140 - 3), v141))
                {
                  break;
                }
              }

              v139 += 8;
              if (v139 == v138)
              {
                goto LABEL_167;
              }
            }
          }

          if (v139 == v138)
          {
LABEL_167:
            v146 = *(v132 - 40);
            v124 = v135;
            if (v146 > 0x40000)
            {
              __assert_rtn("export_frames", "SFUSecureFlipBookRecorder.mm", 1027, "decomp_buffer_size >= frame.img_size");
            }

            v147 = compression_decode_buffer(__src, v146, *(v132 - 24), *(v132 - 36), scratch_buffera, COMPRESSION_LZFSE);
            v148 = *(v132 - 40);
            if (v147 != v148)
            {
              __assert_rtn("export_frames", "SFUSecureFlipBookRecorder.mm", 1030, "decomp_size == frame.img_size");
            }

            if (*(v132 - 64) > 0.0)
            {
              LODWORD(v149) = *(v132 - 32);
              v150 = &cfa[(v136 * v149 + v137 * v149)];
              v151 = 1;
              v152 = __src;
              do
              {
                memcpy(v150, v152, v149);
                v150 += v122;
                v149 = *(v132 - 32);
                v152 += v149;
                v153 = v151++;
              }

              while (*(v132 - 64) > v153);
              LODWORD(v148) = *(v132 - 40);
            }

            if (v148 > v253)
            {
              v248 = 1043;
              v249 = "uncompressed_sz <= final_frame_size";
              goto LABEL_297;
            }

            v154 = v135;
            v155 = compression_encode_buffer(colora + [v135 mutableBytes], v255 - colora, cfa, v253, scratch_buffera, COMPRESSION_LZFSE);
            v145 = v155;
            if (!v155)
            {
              v248 = 1049;
              v249 = "compressed_size > 0";
LABEL_297:
              __assert_rtn("export_frames", "SFUSecureFlipBookRecorder.mm", v248, v249);
            }

            v130 = (colora + v155);
            bzero(cfa, v253);
            v144 = colora;
            v126 = *&v279[8];
            v127 = *&v279[16];
          }

          else
          {
            v144 = *(v139 + 2);
            v145 = *(v139 + 3);
            ++v250;
            v251 += *(v132 - 36);
            v124 = v135;
            v130 = colora;
          }

          v156 = &v126[8 * v128];
          *(v156 + 2) = v144;
          *(v156 + 3) = v145;
          v128 = (v268 + 1);
          v129 = v268 + 1;
          v42 = (self + 256);
          if (v128 >= (v127 - v126) >> 4)
          {
            goto LABEL_179;
          }
        }

        v245 = 144;
        v246 = "get(h).alive";
        v247 = "frame";
        goto LABEL_292;
      }

      v130 = 0;
      v251 = 0;
      v250 = 0;
LABEL_179:
      free(cfa);
      free(scratch_buffera);
      free(__src);
      v157 = os_log_get();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        buf.A = 67109376;
        buf.B = v250;
        LOWORD(buf.C) = 2048;
        *(&buf.C + 2) = v251;
        _os_log_impl(&dword_26C632000, v157, OS_LOG_TYPE_DEFAULT, "Got %u identical frames and saved %zu bytes\n", &buf, 0x12u);
      }

      [v124 setLength:v130];
      v158 = v67.f64[0];
      if (v67.f64[0] < v67.f64[1])
      {
        v158 = v67.f64[1];
      }

      LODWORD(v278) = v158;
      DWORD1(v278) = v122;
      v103 = *(&v278 + 1);
      *(&v278 + 1) = v124;
    }

    else
    {
      v103 = os_log_get();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording generateSecureAsset:];
      }
    }
  }

  if (*v297)
  {
    *&v297[8] = *v297;
    operator delete(*v297);
  }

  if (*&v279[8] != *&v279[16])
  {
    if (v278 >= 0x101)
    {
      v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frames bounding box is larger than maximum allowed size %u > %u", v278, 256];
      v160 = os_log_get();
      if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording generateSecureAsset:];
      }

      if (a3)
      {
        v161 = MEMORY[0x277CCA9B8];
        v293 = *MEMORY[0x277CCA450];
        v294 = v159;
        v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
        *a3 = [v161 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:3 userInfo:v162];
      }

      v7 = 0;
      goto LABEL_281;
    }

    v165 = [MEMORY[0x277CBEB38] dictionary];
    v166 = v282.__begin_;
    end = v282.__end_;
    v254 = v165;
    if (v282.__begin_ != v282.__end_)
    {
      while (1)
      {
        *&buf.A = v166;
        v167 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::vector<FlipBookTransitionPoint>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(self + 8, &v166->__r_.__value_.__l.__data_);
        __srca = v166;
        v168 = std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(v167 + 5, &v166->__r_.__value_.__l.__data_);
        v169 = v168[5];
        v170 = v168 + 5;
        if ((v168[6] - v169) >= 0x21)
        {
          v171 = os_log_get();
          if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
          {
            [(SFUSecureFlipBookRecording *)__p generateSecureAsset:v166, (__p + 4), v171];
          }

          std::vector<FlipBookTransitionPoint>::resize(v170, 1uLL);
          v169 = *v170;
        }

        v172 = create_ranges_from_frames(&v278, (v169 + 8));
        if ([v172 count] == 2)
        {
          v173 = v172;
        }

        else
        {
          v174 = [v172 objectAtIndexedSubscript:0];
          v292[0] = v174;
          v175 = [v172 objectAtIndexedSubscript:1];
          v292[1] = v175;
          v176 = [MEMORY[0x277CBEA60] arrayWithObjects:v292 count:2];

          v177 = os_log_get();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
          {
            if (SHIBYTE(v166->__r_.__value_.__r.__words[2]) < 0)
            {
              v166 = v166->__r_.__value_.__r.__words[0];
            }

            v201 = [v176 objectAtIndexedSubscript:0];
            v202 = [v176 objectAtIndexedSubscript:1];
            buf.A = 136315650;
            *&buf.B = v166;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v201;
            HIWORD(buf.Nh) = 2112;
            *buf.data = v202;
            _os_log_error_impl(&dword_26C632000, v177, OS_LOG_TYPE_ERROR, "State %s contains indirect self transition. Keeping range %@ %@", &buf, 0x20u);
          }

          v173 = v176;
        }

        v256 = v173;
        v178 = [v173 objectAtIndexedSubscript:0];
        v179 = [v178 unsignedIntValue];

        v180 = [v256 objectAtIndexedSubscript:1];
        v181 = [v180 unsignedIntValue];

        v182 = __srca;
        if (SHIBYTE(__srca->__r_.__value_.__r.__words[2]) < 0)
        {
          v182 = __srca->__r_.__value_.__r.__words[0];
        }

        colorb = [MEMORY[0x277CCACA8] stringWithUTF8String:v182];
        cfb = [MEMORY[0x277CBEB38] dictionary];
        v183 = v167[7];
        if (v183)
        {
          break;
        }

LABEL_243:
        [v254 setObject:cfb forKeyedSubscript:colorb];

        v166 = __srca + 1;
        if (&__srca[1] == end)
        {
          goto LABEL_249;
        }
      }

LABEL_209:
      v184 = v183 + 16;
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<FlipBookTransitionPoint>>>>::find<std::string>(self + 8, v183 + 2))
      {
        __assert_rtn("[SFUSecureFlipBookRecording generateSecureAsset:]", "SFUSecureFlipBookRecorder.mm", 1341, "_states.find(target_state.first) != _states.end()");
      }

      if (v183[39] < 0)
      {
        v184 = *v184;
      }

      v275 = [MEMORY[0x277CCACA8] stringWithUTF8String:v184];
      v185 = [MEMORY[0x277CBEB38] dictionary];
      v187 = *(v183 + 5);
      v186 = *(v183 + 6);
      while (1)
      {
        if (v187 == v186)
        {
          [cfb setObject:v185 forKeyedSubscript:v275];

          v183 = *v183;
          if (!v183)
          {
            goto LABEL_243;
          }

          goto LABEL_209;
        }

        if (*v187 == -2)
        {
          v188 = v181;
        }

        else
        {
          v188 = *v187 + v179;
        }

        if (v188 >= 0xFFFF)
        {
          __assert_rtn("[SFUSecureFlipBookRecording generateSecureAsset:]", "SFUSecureFlipBookRecorder.mm", 1352, "abs_jump_frame < UINT16_MAX");
        }

        if (v179 <= v188)
        {
          if (v188 <= v181)
          {
            v190 = 1;
LABEL_232:
            v192 = v188;
            goto LABEL_233;
          }
        }

        else
        {
          v189 = os_log_get();
          if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
          {
            buf.A = 138413058;
            *&buf.B = colorb;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v275;
            HIWORD(buf.Nh) = 1024;
            buf.data[0] = v188;
            LOWORD(buf.data[1]) = 1024;
            *(&buf.data[1] + 2) = v179;
            _os_log_error_impl(&dword_26C632000, v189, OS_LOG_TYPE_ERROR, "Jump frame for transition %@ -> %@ is before first frame of state %u < %u", &buf, 0x22u);
          }

          if (v188 <= v181)
          {
            if (v179 - v188 > 4)
            {
              goto LABEL_229;
            }

            v190 = 0;
            goto LABEL_232;
          }
        }

        v191 = os_log_get();
        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          buf.A = 138413058;
          *&buf.B = colorb;
          LOWORD(buf.D) = 2112;
          *(&buf.D + 2) = v275;
          HIWORD(buf.Nh) = 1024;
          buf.data[0] = v188;
          LOWORD(buf.data[1]) = 1024;
          *(&buf.data[1] + 2) = v181;
          _os_log_error_impl(&dword_26C632000, v191, OS_LOG_TYPE_ERROR, "Jump frame for transition %@ -> %@ is after last frame of state %u > %u", &buf, 0x22u);
        }

        if (v188 - v181 >= 5)
        {
LABEL_229:
          v193 = os_log_get();
          if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
          {
            buf.A = 138413314;
            *&buf.B = colorb;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v275;
            HIWORD(buf.Nh) = 1024;
            buf.data[0] = v188;
            LOWORD(buf.data[1]) = 1024;
            *(&buf.data[1] + 2) = v179;
            HIWORD(buf.data[2]) = 1024;
            buf.data[3] = v181;
            v194 = v193;
            v195 = "Invalid transition %@ -> %@ : Jump frame %u not contained in state loop [%u %u]";
            v196 = 40;
            goto LABEL_241;
          }

LABEL_238:

          goto LABEL_239;
        }

        v190 = 0;
        v192 = v181;
LABEL_233:
        v197 = create_ranges_from_frames(&v278, (v187 + 2));
        if (v179 <= v188)
        {
          v198 = v192;
        }

        else
        {
          v198 = v179;
        }

        v199 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v198];
        v200 = [v199 stringValue];
        [v185 setObject:v197 forKeyedSubscript:v200];

        if ((v190 & 1) == 0)
        {
          v193 = os_log_get();
          if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
          {
            buf.A = 138413058;
            *&buf.B = colorb;
            LOWORD(buf.D) = 2112;
            *(&buf.D + 2) = v275;
            HIWORD(buf.Nh) = 1024;
            buf.data[0] = v179;
            LOWORD(buf.data[1]) = 1024;
            *(&buf.data[1] + 2) = v181;
            v194 = v193;
            v195 = "Jump frame for transition %@ -> %@ was clamped to valid range [%u %u]";
            v196 = 34;
LABEL_241:
            _os_log_error_impl(&dword_26C632000, v194, OS_LOG_TYPE_ERROR, v195, &buf, v196);
          }

          goto LABEL_238;
        }

LABEL_239:
        v187 += 8;
      }
    }

LABEL_249:
    if (MEMORY[0x282229CD0] && (SILManagerValidateFlipBookTransitions() & 1) == 0)
    {
      v243 = os_log_get();
      if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
      {
        [SFUSecureFlipBookRecording generateSecureAsset:];
      }

      if (!a3)
      {
        v7 = 0;
        goto LABEL_280;
      }

      v244 = MEMORY[0x277CCA9B8];
      v290 = *MEMORY[0x277CCA450];
      v291 = @"Failed to validate some states";
      scratch_bufferb = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
      [v244 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:4 userInfo:scratch_bufferb];
      *a3 = v7 = 0;
    }

    else
    {
      scratch_bufferb = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bin", *(self + 1)];
      cfc = [MEMORY[0x277CBEB18] array];
      v269 = [MEMORY[0x277CBEB38] dictionary];
      colorc = [MEMORY[0x277CBEB38] dictionary];
      [(CGColor *)colorc setObject:*(self + 1) forKeyedSubscript:@"name"];
      [(CGColor *)colorc setObject:&unk_287D274A0 forKeyedSubscript:@"type"];
      [(CGColor *)colorc setObject:&unk_287D274B8 forKeyedSubscript:@"sensorCategory"];
      [(CGColor *)colorc setObject:scratch_bufferb forKeyedSubscript:@"blobName"];
      v203 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v278];
      [(CGColor *)colorc setObject:v203 forKeyedSubscript:@"extent"];

      v204 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v278)];
      [(CGColor *)colorc setObject:v204 forKeyedSubscript:@"Bpr"];

      [(CGColor *)colorc setObject:v254 forKeyedSubscript:@"flipbook"];
      [(CGColor *)colorc setObject:*(self + 19) forKeyedSubscript:@"userInfo"];
      v205 = [MEMORY[0x277CD9E40] mainDisplay];
      [v205 bounds];
      v207 = v206;
      v209 = v208;

      v276 = [MEMORY[0x277CBEB18] array];
      v211 = *&v279[8];
      v210 = *&v279[16];
      while (v211 != v210)
      {
        v212 = MEMORY[0x277CBEB38];
        v288[0] = @"size";
        v213 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v278];
        v289[0] = v213;
        v288[1] = @"time";
        LODWORD(v214) = v211[1];
        v215 = [MEMORY[0x277CCABB0] numberWithFloat:v214];
        v289[1] = v215;
        v288[2] = @"dataOffset";
        v216 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v211[2]];
        v289[2] = v216;
        v288[3] = @"dataSize";
        v217 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v211[3]];
        v289[3] = v217;
        v218 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v289 forKeys:v288 count:4];
        v219 = [v212 dictionaryWithDictionary:v218];

        v220 = *(self + 32) + 96 * *v211;
        if ((*(v220 - 96) & 1) == 0)
        {
          __assert_rtn("frame", "SFUSecureFlipBookRecorder.mm", 144, "get(h).alive");
        }

        if (*(v220 - 12))
        {
          v221 = [MEMORY[0x277CCABB0] numberWithShort:?];
          [v219 setObject:v221 forKeyedSubscript:@"posOffsetX"];
        }

        if (*(v220 - 10))
        {
          v222 = [MEMORY[0x277CCABB0] numberWithShort:?];
          [v219 setObject:v222 forKeyedSubscript:@"posOffsetY"];
        }

        v223 = *(v220 - 8);
        if (v223)
        {
          [v219 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"startPoint"];
          v223 = *(v220 - 8);
        }

        if ((v223 & 2) != 0)
        {
          [v219 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"insecure"];
          v223 = *(v220 - 8);
        }

        if ((v223 & 4) != 0)
        {
          [v219 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"delayed"];
        }

        [v276 addObject:v219];

        v211 += 4;
      }

      [(CGColor *)colorc setObject:v276 forKeyedSubscript:@"frames"];
      [cfc addObject:colorc];
      v224 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(self + 14) - *(self + 13)) >> 5];
      v225 = *(self + 13);
      v226 = *(self + 14);
      while (v225 != v226)
      {
        v227 = create_bounding_box_dictionary_from_cgrect(*v225, 0);
        [v224 addObject:v227];

        ++v225;
      }

      v228 = *(self + 16);
      v229 = *(self + 17);
      while (v228 != v229)
      {
        v230 = create_bounding_box_dictionary_from_cgrect(*v228, 1);
        [v224 addObject:v230];

        ++v228;
      }

      [v269 setObject:v224 forKeyedSubscript:@"boundingBoxes"];
      [v269 setObject:&unk_287D27510 forKeyedSubscript:@"minStaticLocationDuration"];
      v231 = 0.0;
      v232 = 0.0;
      if (!CGRectIsNull(*(self + 5)))
      {
        v231 = *(self + 20) / v207;
        v232 = *(self + 21) / v209;
      }

      v286[0] = @"frame";
      v233 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v279];
      v287[0] = v233;
      v286[1] = @"x";
      v234 = [MEMORY[0x277CCABB0] numberWithDouble:v231];
      v287[1] = v234;
      v286[2] = @"y";
      v235 = [MEMORY[0x277CCABB0] numberWithDouble:v232];
      v287[2] = v235;
      v236 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v287 forKeys:v286 count:3];
      [v269 setObject:v236 forKeyedSubscript:@"fallbackInfo"];

      v237 = [MEMORY[0x277CBEB28] dataWithLength:16];
      CC_MD5_Init(&buf);
      v238 = [*(&v278 + 1) bytes];
      CC_MD5_Update(&buf, v238, [*(&v278 + 1) length]);
      v239 = v237;
      CC_MD5_Final([v237 bytes], &buf);
      v283[0] = @"indicators";
      v283[1] = @"blobmd5";
      v284[0] = cfc;
      v284[1] = v237;
      v240 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v284 forKeys:v283 count:2];
      v241 = [SFUSecureFlipBookAsset alloc];
      v242 = [(SFUSecureFlipBookRecording *)self name];
      v7 = [(SFUSecureFlipBookAsset *)v241 initWith:v242 metadata:v240 constraints:v269 blob:*(&v278 + 1)];
    }

LABEL_280:
    v159 = v254;
    goto LABEL_281;
  }

  v163 = os_log_get();
  if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
  {
    [SFUSecureFlipBookRecording generateSecureAsset:];
  }

  if (a3)
  {
    v164 = MEMORY[0x277CCA9B8];
    v295 = *MEMORY[0x277CCA450];
    v296 = @"Empty frames";
    v159 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    [v164 errorWithDomain:@"SFUCaptureCoordinatorErrorDomain" code:2 userInfo:?];
    *a3 = v7 = 0;
LABEL_281:

    goto LABEL_282;
  }

  v7 = 0;
LABEL_282:
  std::__hash_table<FlipBookFrameHandle,FlipBookFrameHandleHasher,std::equal_to<FlipBookFrameHandle>,std::allocator<FlipBookFrameHandle>>::~__hash_table(&v279[32]);
  if (*&v279[8])
  {
    *&v279[16] = *&v279[8];
    operator delete(*&v279[8]);
  }

  *&buf.A = &v282;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
LABEL_7:
  std::mutex::unlock(self + 3);

  return v7;
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 24) = 850045863;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 31) = 0;
  FlipBookFramePool::FlipBookFramePool(self + 8);
  *(self + 36) = 0;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  return self;
}

+ (void)recordingWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)beginCaptureWithOptions:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)streamCallbackFrom:(os_log_t)log with:.cold.4(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "Got error ? status : %u", buf, 8u);
}

- (void)endCapture
{
  v5 = *MEMORY[0x277D85DE8];
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  v3 = 136315138;
  v4 = a2;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "Duplicate capture for state %s", &v3, 0xCu);
}

- (void)generateSecureAsset:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)generateSecureAsset:(uint64_t *)a3 .cold.3(uint8_t *buf, uint64_t **a2, uint64_t ***a3, os_log_t log)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  *buf = 136315138;
  *a3 = a2;
  _os_log_error_impl(&dword_26C632000, log, OS_LOG_TYPE_ERROR, "State %s has more than 1 self transition. Dropping all others", buf, 0xCu);
}

- (void)generateSecureAsset:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end