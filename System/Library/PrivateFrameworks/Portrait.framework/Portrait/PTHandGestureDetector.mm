@interface PTHandGestureDetector
- (BOOL)detectGesturesFromBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp withRotationDegrees:(int)degrees withDetectedHands:(id)hands withDetectedFaces:(id)faces asyncWork:(id)work;
- (CGSize)frameSize;
- (PTHandGestureDelegate)delegate;
- (PTHandGestureDetector)initWithFrameSize:(CGSize)size asyncInitQueue:(id)queue externalHandDetectionsEnabled:(BOOL)enabled externalCamera:(BOOL)camera;
- (void)dealloc;
@end

@implementation PTHandGestureDetector

- (PTHandGestureDetector)initWithFrameSize:(CGSize)size asyncInitQueue:(id)queue externalHandDetectionsEnabled:(BOOL)enabled externalCamera:(BOOL)camera
{
  cameraCopy = camera;
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = PTHandGestureDetector;
  v12 = [(PTHandGestureDetector *)&v21 init];
  if (v12)
  {
    PTKTraceInit();
    v12->_frameSize.width = width;
    v12->_frameSize.height = height;
    v12->_numPendingRequests = 0;
    v12->_externalCamera = cameraCopy;
    v12->_useExternalHandDetections = enabled;
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      useExternalHandDetections = v12->_useExternalHandDetections;
      *buf = 138412802;
      if (useExternalHandDetections)
      {
        v15 = @"FW (ANST)";
      }

      else
      {
        v15 = @"MediaAnalysis";
      }

      v23 = v15;
      v24 = 1024;
      v25 = cameraCopy;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_2243FB000, v13, OS_LOG_TYPE_DEFAULT, "GestureDetector: Using hand detection from %@ externalCamera %i instance %p", buf, 0x1Cu);
    }

    objc_initWeak(buf, v12);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __103__PTHandGestureDetector_initWithFrameSize_asyncInitQueue_externalHandDetectionsEnabled_externalCamera___block_invoke;
    v19[3] = &unk_278522F50;
    objc_copyWeak(v20, buf);
    v20[1] = *&width;
    v20[2] = *&height;
    v16 = MEMORY[0x22AA50020](v19);
    dispatch_async(queueCopy, v16);
    v17 = v12;

    objc_destroyWeak(v20);
    objc_destroyWeak(buf);
  }

  return v12;
}

void __103__PTHandGestureDetector_initWithFrameSize_asyncInitQueue_externalHandDetectionsEnabled_externalCamera___block_invoke(uint64_t a1)
{
  v38[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    kdebug_trace();
    v3 = objc_alloc_init(PTMSRResize);
    v4 = *(WeakRetained + 5);
    *(WeakRetained + 5) = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = getVCPRequestMaxNumOfPersonsPropertyKey();
    [v5 setObject:&unk_2837F3688 forKeyedSubscript:v6];

    v7 = getVCPRequestUseAsyncPropertyKey();
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v7];

    v8 = +[PTInference ANEConfigForAsynchronousWork];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v8, "espressoPlanPriority")}];
    v10 = getVCPRequestEspressoPlanPriorityPropertyKey();
    [v5 setObject:v9 forKeyedSubscript:v10];

    v11 = [v8 MLANEExecutionPriority];
    v12 = getVCPRequestCoreMLANEPriorityPropertyKey();
    [v5 setObject:v11 forKeyedSubscript:v12];

    if (*(WeakRetained + 24))
    {
      v13 = getVCPRequestDisableHandDetectionPropertyKey();
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v13];
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v14 = getVCPRequestEnableANSTHandDetectionPropertyKey();
      [v5 setObject:v13 forKeyedSubscript:v14];
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = 1280;
    if (v15 == 1920 && v16 == 1080)
    {
      v18 = 720;
    }

    else
    {
      v19 = v15 == 1080;
      v20 = v16 == 1920;
      if (v19 && v20)
      {
        v18 = 1280;
      }

      else
      {
        v18 = v16;
      }

      if (v19 && v20)
      {
        v17 = 720;
      }

      else
      {
        v17 = v15;
      }
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInt:v17];
    v22 = getVCPRequestFrameWidthPropertyKey();
    [v5 setObject:v21 forKeyedSubscript:v22];

    v23 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    v24 = getVCPRequestFrameHeightPropertyKey();
    [v5 setObject:v23 forKeyedSubscript:v24];

    v25 = [objc_alloc(getVCPHandGestureVideoRequestClass()) initWithOptions:v5];
    [WeakRetained setVcpHandGestureRequest:v25];

    v26 = *MEMORY[0x277CC4E50];
    v37[0] = *MEMORY[0x277CC4E48];
    v37[1] = v26;
    v38[0] = &unk_2837F36A0;
    v38[1] = &unk_2837F36A0;
    v37[2] = *MEMORY[0x277CC4E58];
    v38[2] = @"Hand Gesture Detector Pool";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = [MEMORY[0x277CCABB0] numberWithInt:v17];
    [v28 setObject:v29 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

    v30 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    [v28 setObject:v30 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

    [v28 setObject:&unk_2837F36B8 forKeyedSubscript:*MEMORY[0x277CC4E30]];
    [v28 setObject:&unk_2837F36D0 forKeyedSubscript:*MEMORY[0x277CC4D60]];
    [v28 setObject:&unk_2837F36D0 forKeyedSubscript:*MEMORY[0x277CC4E38]];
    [v28 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
    v31 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v27, v28, WeakRetained + 6);
    if (v31)
    {
      v32 = v31;
      v33 = _PTLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __103__PTHandGestureDetector_initWithFrameSize_asyncInitQueue_externalHandDetectionsEnabled_externalCamera___block_invoke_cold_1(v32, v33);
      }
    }

    kdebug_trace();
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134217984;
      v36 = WeakRetained;
      _os_log_impl(&dword_2243FB000, v34, OS_LOG_TYPE_DEFAULT, "GestureDetector: finished creation instance %p", &v35, 0xCu);
    }
  }
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_pixelBufferPool);
  v3.receiver = self;
  v3.super_class = PTHandGestureDetector;
  [(PTHandGestureDetector *)&v3 dealloc];
}

- (CGSize)frameSize
{
  width = self->_frameSize.width;
  height = self->_frameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)detectGesturesFromBuffer:(__CVBuffer *)buffer timeStamp:(id *)stamp withRotationDegrees:(int)degrees withDetectedHands:(id)hands withDetectedFaces:(id)faces asyncWork:(id)work
{
  v10 = *&degrees;
  v92 = *MEMORY[0x277D85DE8];
  handsCopy = hands;
  facesCopy = faces;
  workCopy = work;
  val = self;
  vcpHandGestureRequest = [(PTHandGestureDetector *)self vcpHandGestureRequest];

  selfCopy = self;
  os_unfair_lock_lock(&self->_numPendingRequestsLock);
  numPendingRequests = self->_numPendingRequests;
  os_unfair_lock_unlock(&selfCopy->_numPendingRequestsLock);
  v15 = 0;
  if (!vcpHandGestureRequest || numPendingRequests > 0)
  {
    goto LABEL_49;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  v17 = getVCPRequestRotationInDegreesPropertyKey();
  [dictionary setObject:v16 forKeyedSubscript:v17];

  if (!handsCopy || !val->_useExternalHandDetections)
  {
    goto LABEL_27;
  }

  array = [MEMORY[0x277CBEB18] array];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v18 = handsCopy;
  v19 = [v18 countByEnumeratingWithState:&v86 objects:v91 count:16];
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = *v87;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v87 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v86 + 1) + 8 * i);
      v23 = objc_alloc_init(getVCPHandObjectClass());
      v24 = v22;
      v25 = v23;
      v26 = [v24 objectForKeyedSubscript:@"Rect"];
      v27 = v26;
      if (!v26)
      {
        goto LABEL_21;
      }

      [v25 setBounds:CGRectFromRectDictionary(v26)];
      [v25 bounds];
      v97.origin.x = 0.0;
      v97.origin.y = 0.0;
      v97.size.width = 1.0;
      v97.size.height = 1.0;
      v94 = CGRectIntersection(v93, v97);
      [v25 setBounds:{v94.origin.x, v94.origin.y, v94.size.width, v94.size.height}];
      [v25 bounds];
      if (CGRectIsNull(v95))
      {
        goto LABEL_21;
      }

      v28 = [v24 objectForKeyedSubscript:@"Chirality"];

      if (!v28)
      {
        goto LABEL_20;
      }

      if ([v28 intValue])
      {
        v29 = 0xFFFFFFFFLL;
      }

      else
      {
        v29 = 1;
      }

      [v25 setChirality:v29];
      v27 = [v24 objectForKeyedSubscript:@"ID"];

      if (!v27)
      {
        goto LABEL_21;
      }

      [v25 setHandID:{objc_msgSend(v27, "intValue")}];
      v30 = [v24 objectForKeyedSubscript:@"GroupID"];

      if (v30)
      {
        [v25 setGroupID:{objc_msgSend(v30, "intValue")}];
        v27 = [v24 objectForKeyedSubscript:@"ConfidenceLevel"];

        if (v27)
        {
          *&v31 = [v27 intValue] / 1000.0;
          [v25 setConfidence:v31];

          [array addObject:v25];
          goto LABEL_22;
        }
      }

      else
      {
LABEL_20:
        v27 = 0;
      }

LABEL_21:

LABEL_22:
    }

    v19 = [v18 countByEnumeratingWithState:&v86 objects:v91 count:16];
  }

  while (v19);
LABEL_24:

  if ([array count])
  {
    v32 = getVCPRequestHandObjectsPropertyKey();
    [dictionary setObject:array forKeyedSubscript:v32];
  }

LABEL_27:
  v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(facesCopy, "count")}];
  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(facesCopy, "count")}];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v35 = facesCopy;
  v36 = [v35 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v36)
  {
    v37 = *v83;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v83 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = *(*(&v82 + 1) + 8 * j);
        v40 = [v39 objectForKeyedSubscript:@"Rect"];
        v41 = CGRectFromRectDictionary(v40);
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v96.origin.x = v41;
        v96.origin.y = v43;
        v96.size.width = v45;
        v96.size.height = v47;
        v48 = NSStringFromRect(v96);
        [v33 addObject:v48];

        v49 = [v39 objectForKeyedSubscript:@"AngleInfoYaw"];
        [v49 doubleValue];
        v51 = v50 * 3.14159265 / 180.0;
        if (v51 > 3.14159265)
        {
          v51 = v51 + -6.28318531;
        }

        v52 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(fmax(v51, -1.57079633), 1.57079633)}];
        [v34 addObject:v52];
      }

      v36 = [v35 countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v36);
  }

  v53 = getVCPRequestFaceRectsPropertyKey();
  [dictionary setObject:v33 forKeyedSubscript:v53];

  v54 = getVCPRequestFaceYawsPropertyKey();
  [dictionary setObject:v34 forKeyedSubscript:v54];

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __126__PTHandGestureDetector_detectGesturesFromBuffer_timeStamp_withRotationDegrees_withDetectedHands_withDetectedFaces_asyncWork___block_invoke;
  v79[3] = &unk_278523678;
  v80 = *&stamp->var0;
  var3 = stamp->var3;
  v79[4] = val;
  v81 = var3;
  v56 = MEMORY[0x22AA50020](v79);
  pixelBufferOut = 0;
  if (!val->_useExternalHandDetections && ![handsCopy count])
  {
    pixelBufferOut = buffer;
    CVPixelBufferRetain(buffer);
LABEL_47:
    objc_initWeak(&location, val);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __126__PTHandGestureDetector_detectGesturesFromBuffer_timeStamp_withRotationDegrees_withDetectedHands_withDetectedFaces_asyncWork___block_invoke_140;
    v71[3] = &unk_2785236A0;
    objc_copyWeak(v74, &location);
    v74[1] = pixelBufferOut;
    v75 = *&stamp->var0;
    v76 = stamp->var3;
    v72 = dictionary;
    v73 = v56;
    v60 = MEMORY[0x22AA50020](v71);
    os_unfair_lock_lock(&val->_numPendingRequestsLock);
    ++val->_numPendingRequests;
    os_unfair_lock_unlock(&val->_numPendingRequestsLock);
    v61 = MEMORY[0x22AA50020](v60);
    [workCopy addObject:v61];

    objc_destroyWeak(v74);
    objc_destroyWeak(&location);
    v15 = 1;
    goto LABEL_48;
  }

  v57 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], val->_pixelBufferPool, &pixelBufferOut);
  if (v57)
  {
    v58 = _PTLogSystem();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      [PTHandGestureDetector detectGesturesFromBuffer:v57 timeStamp:v58 withRotationDegrees:? withDetectedHands:? withDetectedFaces:? asyncWork:?];
    }

    goto LABEL_45;
  }

  CVBufferPropagateAttachments(buffer, pixelBufferOut);
  v59 = [(PTMSRResize *)val->_msrResize transform:buffer crop:0 rotationDegree:pixelBufferOut toDest:0 synchronous:0.0];
  if (!v59)
  {
    goto LABEL_47;
  }

  v58 = _PTLogSystem();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    [PTHandGestureDetector detectGesturesFromBuffer:v59 timeStamp:v58 withRotationDegrees:? withDetectedHands:? withDetectedFaces:? asyncWork:?];
  }

LABEL_45:

  v15 = 0;
LABEL_48:

LABEL_49:
  return v15;
}

void __126__PTHandGestureDetector_detectGesturesFromBuffer_timeStamp_withRotationDegrees_withDetectedHands_withDetectedFaces_asyncWork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 28);
  os_unfair_lock_unlock((*(a1 + 32) + 32));
  if (v6)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __126__PTHandGestureDetector_detectGesturesFromBuffer_timeStamp_withRotationDegrees_withDetectedHands_withDetectedFaces_asyncWork___block_invoke_cold_1(v6, v7);
    }

    v8 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v31 = a1;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      v12 = 0x278522000uLL;
      v33 = *v40;
      do
      {
        v13 = 0;
        v34 = v10;
        do
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [objc_alloc(*(v12 + 2016)) initWithVCPHandObservation:*(*(&v39 + 1) + 8 * v13)];
          [v8 addObject:v14];

          v15 = _PTLogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(v12 + 2016);
            v38 = [v8 lastObject];
            v17 = [v16 gestureTypeToString:{objc_msgSend(v38, "type")}];
            v37 = [v8 lastObject];
            v36 = [v37 confidence];
            [v36 floatValue];
            v19 = v18;
            v20 = [v8 lastObject];
            v21 = [v20 handID];
            v22 = [v21 intValue];
            [v8 lastObject];
            v24 = v23 = v8;
            [v24 personID];
            v26 = v25 = v12;
            v27 = [v26 intValue];
            *buf = 138413058;
            *&buf[4] = v17;
            *&buf[12] = 2048;
            *&buf[14] = v19;
            *&buf[22] = 1024;
            v44 = v22;
            v45 = 1024;
            v46 = v27;
            _os_log_impl(&dword_2243FB000, v15, OS_LOG_TYPE_DEFAULT, "GestureDetector: Recieved gesture (type: %@) (confidence: %.2f) (HandID: %i) (PersonID: %i)", buf, 0x22u);

            v12 = v25;
            v8 = v23;

            v10 = v34;
            v11 = v33;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v10);
    }

    v6 = 0;
    v5 = v32;
    a1 = v31;
  }

  v28 = [*(a1 + 32) delegate];
  v29 = v28;
  if (v28)
  {
    *buf = *(a1 + 40);
    *&buf[16] = *(a1 + 56);
    [v28 gesturesAvailable:v8 forTimeStamp:buf];
  }

  else
  {
    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v30, OS_LOG_TYPE_INFO, "PTHandGestureDelegate not available to update with new gestures", buf, 2u);
    }
  }

  [v6 code];
  [v8 count];
  kdebug_trace();
}

void __126__PTHandGestureDetector_detectGesturesFromBuffer_timeStamp_withRotationDegrees_withDetectedHands_withDetectedFaces_asyncWork___block_invoke_140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    CVPixelBufferGetWidth(*(a1 + 56));
    CVPixelBufferGetHeight(*(a1 + 56));
    CVPixelBufferGetPixelFormatType(*(a1 + 56));
    kdebug_trace();
    v3 = WeakRetained[9];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    [v3 processBuffer:v4 timestamp:&v7 withOptions:v5 completion:v6];
  }

  CVPixelBufferRelease(*(a1 + 56));
}

- (PTHandGestureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __103__PTHandGestureDetector_initWithFrameSize_asyncInitQueue_externalHandDetectionsEnabled_externalCamera___block_invoke_cold_1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "cvErr";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Assertion failed %s %i", &v2, 0x12u);
}

- (void)detectGesturesFromBuffer:(int)a1 timeStamp:(NSObject *)a2 withRotationDegrees:withDetectedHands:withDetectedFaces:asyncWork:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "CVPixelBufferCreate failed %i", v2, 8u);
}

- (void)detectGesturesFromBuffer:(int)a1 timeStamp:(NSObject *)a2 withRotationDegrees:withDetectedHands:withDetectedFaces:asyncWork:.cold.2(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "MSR transform failed %i", v2, 8u);
}

void __126__PTHandGestureDetector_detectGesturesFromBuffer_timeStamp_withRotationDegrees_withDetectedHands_withDetectedFaces_asyncWork___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Error processing gesture request in MediaAnalysis: %@", &v4, 0xCu);
}

@end