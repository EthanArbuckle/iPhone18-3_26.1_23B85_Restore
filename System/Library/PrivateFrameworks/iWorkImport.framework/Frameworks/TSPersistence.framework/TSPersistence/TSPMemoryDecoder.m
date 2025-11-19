@interface TSPMemoryDecoder
- (TSPMemoryDecoder)init;
- (TSPMemoryDecoder)initWithEncodedData:(id)a3 delegate:(id)a4;
- (TSPMemoryDecoder)initWithMetadataDispatchData:(id)a3 rootObjectComponentDispatchData:(id)a4 delegate:(id)a5;
- (id)newReadChannelForDataWithIdentifier:(int64_t)a3 info:(id)a4;
- (id)newReadChannelForMetadata;
- (id)newReadChannelForRootObjectComponent;
@end

@implementation TSPMemoryDecoder

- (TSPMemoryDecoder)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPMemoryDecoder init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPMemoryDecoder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 42, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPMemoryDecoder init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPMemoryDecoder)initWithMetadataDispatchData:(id)a3 rootObjectComponentDispatchData:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSPMemoryDecoder;
  v12 = [(TSPMemoryDecoder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_metadataDispatchData, a3);
    objc_storeStrong(&v13->_rootObjectComponentDispatchData, a4);
    objc_storeWeak(&v13->_delegate, v11);
  }

  return v13;
}

- (TSPMemoryDecoder)initWithEncodedData:(id)a3 delegate:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D85CC8];
  v8 = MEMORY[0x277D85CC8];
  v9 = v7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = v31;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 10;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_276A857F0;
  v25[3] = &unk_27A6E5C18;
  v25[4] = v26;
  v25[5] = &v27;
  v11 = objc_msgSend_tsp_dispatchDataWithApplier_(a3, v10, v25);
  size = dispatch_data_get_size(v11);
  v14 = size;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v28[3] - v31;
  if (v18 >= 0xA)
  {
    v18 = 10;
  }

  v19 = MEMORY[0x277D85CC8];
  while (v18 != v16)
  {
    v20 = v31[v16];
    v17 |= (v20 & 0x7F) << v15;
    ++v16;
    v15 += 7;
    if ((v20 & 0x80) == 0)
    {
      v28[3] = &v31[v16];
      if (v17 < size)
      {
        subrange = dispatch_data_create_subrange(v11, v16, v17);

        v19 = dispatch_data_create_subrange(v11, v17 + v16, v14 - v17 - v16);
        goto LABEL_10;
      }

      v19 = MEMORY[0x277D85CC8];
      break;
    }
  }

  subrange = v19;
LABEL_10:
  v22 = objc_msgSend_initWithMetadataDispatchData_rootObjectComponentDispatchData_delegate_(self, v13, subrange, v19, v6);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)newReadChannelForMetadata
{
  v3 = [TSPMemoryReadChannel alloc];
  metadataDispatchData = self->_metadataDispatchData;

  return objc_msgSend_initWithDispatchData_(v3, v4, metadataDispatchData);
}

- (id)newReadChannelForRootObjectComponent
{
  v3 = [TSPMemoryReadChannel alloc];
  rootObjectComponentDispatchData = self->_rootObjectComponentDispatchData;

  return objc_msgSend_initWithDispatchData_(v3, v4, rootObjectComponentDispatchData);
}

- (id)newReadChannelForDataWithIdentifier:(int64_t)a3 info:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  ChannelForDataWithIdentifier_info = objc_msgSend_newReadChannelForDataWithIdentifier_info_(WeakRetained, v8, a3, v6);

  return ChannelForDataWithIdentifier_info;
}

@end