@interface TSPAVAssetResourceLoaderDelegate
+ (BOOL)shouldDisableEntireLengthAvailableOnDemand;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (TSPAVAssetResourceLoaderDelegate)init;
- (TSPAVAssetResourceLoaderDelegate)initWithData:(id)a3;
- (void)_provideContentInformationToLoadingRequest:(id)a3;
- (void)_provideDataToLoadingRequest:(id)a3;
- (void)_provideNextDataBlockToLoadingRequest:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation TSPAVAssetResourceLoaderDelegate

- (TSPAVAssetResourceLoaderDelegate)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPAVAssetResourceLoaderDelegate init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 21, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPAVAssetResourceLoaderDelegate init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPAVAssetResourceLoaderDelegate)initWithData:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = TSPAVAssetResourceLoaderDelegate;
  v6 = [(TSPAVAssetResourceLoaderDelegate *)&v32 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v7->_dataLength = objc_msgSend_length(v5, v8, v9);
    v12 = objc_msgSend_digestString(v5, v10, v11);
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"TSPAVAssetResourceLoaderDelegate.DelegateQueue[%@]", v12);
    v15 = v14;
    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    delegateQueue = v7->_delegateQueue;
    v7->_delegateQueue = v20;

    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"TSPAVAssetResourceLoaderDelegate.RequestHandlingQueue[%@]", v12);
    v24 = v23;
    v27 = objc_msgSend_UTF8String(v24, v25, v26);
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create(v27, v28);
    requestHandlingQueue = v7->_requestHandlingQueue;
    v7->_requestHandlingQueue = v29;
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_close(self->_readChannel, a2, v2);
  v4.receiver = self;
  v4.super_class = TSPAVAssetResourceLoaderDelegate;
  [(TSPAVAssetResourceLoaderDelegate *)&v4 dealloc];
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v5 = a4;
  if ((objc_msgSend_isCancelled(v5, v6, v7) & 1) == 0)
  {
    v10 = objc_msgSend_contentInformationRequest(v5, v8, v9);

    if (v10)
    {
      objc_msgSend__provideContentInformationToLoadingRequest_(self, v11, v5);
    }

    v13 = objc_msgSend_dataRequest(v5, v11, v12);

    if (v13)
    {
      objc_msgSend__provideDataToLoadingRequest_(self, v14, v5);
    }
  }

  return 1;
}

+ (BOOL)shouldDisableEntireLengthAvailableOnDemand
{
  if (qword_280A52428[0] != -1)
  {
    sub_276BD1728();
  }

  return byte_280A52420;
}

- (void)_provideContentInformationToLoadingRequest:(id)a3
{
  v4 = a3;
  requestHandlingQueue = self->_requestHandlingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769D7468;
  v7[3] = &unk_27A6E2898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(requestHandlingQueue, v7);
}

- (void)_provideDataToLoadingRequest:(id)a3
{
  v4 = a3;
  requestHandlingQueue = self->_requestHandlingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2769D7600;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(requestHandlingQueue, v7);
}

- (void)_provideNextDataBlockToLoadingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isCancelled(v6, v8, v9))
  {
    v7[2](v7);
  }

  else
  {
    v14 = objc_msgSend_dataRequest(v6, v10, v11);
    if (!v14)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPAVAssetResourceLoaderDelegate _provideNextDataBlockToLoadingRequest:completion:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 142, 0, "invalid nil value for '%{public}s'", "dataRequest");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    v22 = objc_msgSend_currentOffset(v14, v12, v13);
    v25 = objc_msgSend_requestedLength(v14, v23, v24);
    v28 = objc_msgSend_requestedOffset(v14, v26, v27);
    dataLength = self->_dataLength;
    v32 = dataLength < v22;
    v33 = dataLength - v22;
    if (v32 || (v33 >= v25 - v22 + v28 ? (v34 = v25 - v22 + v28) : (v34 = v33), v34 >= 0x20000 ? (v35 = 0x20000) : (v35 = v34), !v34))
    {
      objc_msgSend_finishLoading(v6, v29, v30);
      v7[2](v7);
    }

    else
    {
      v55[0] = 0;
      v55[1] = v55;
      v55[2] = 0x3032000000;
      v55[3] = sub_2769D7B88;
      v55[4] = sub_2769D7B98;
      v36 = MEMORY[0x277D85CC8];
      v37 = MEMORY[0x277D85CC8];
      v56 = v36;
      readChannel = self->_readChannel;
      if (!readChannel)
      {
        v47 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSPAVAssetResourceLoaderDelegate _provideNextDataBlockToLoadingRequest:completion:]");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v43, v40, v42, 162, 0, "invalid nil value for '%{public}s'", "_readChannel");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
        readChannel = self->_readChannel;
      }

      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_2769D7BA0;
      v48[3] = &unk_27A6E3BB8;
      v52 = v55;
      v49 = v6;
      v50 = self;
      v51 = v7;
      v53 = v34;
      v54 = v35;
      objc_msgSend_readFromOffset_length_handler_(readChannel, v46, v22, v35, v48);

      _Block_object_dispose(v55, 8);
    }
  }
}

@end