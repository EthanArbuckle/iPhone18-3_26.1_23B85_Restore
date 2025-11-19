@interface TSPObjectSerializationDecoder
- (TSPObjectSerializationDecoder)init;
- (TSPObjectSerializationDecoder)initWithEncodedData:(id)a3;
- (id)newReadChannelForDataWithIdentifier:(int64_t)a3 info:(id)a4;
- (id)newReadChannelForLocator:(id)a3;
@end

@implementation TSPObjectSerializationDecoder

- (TSPObjectSerializationDecoder)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectSerializationDecoder init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectSerializationDecoder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 41, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPObjectSerializationDecoder init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPObjectSerializationDecoder)initWithEncodedData:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_length(v4, v5, v6);
  if (v7 > 0xB)
  {
    v53.receiver = self;
    v53.super_class = TSPObjectSerializationDecoder;
    v9 = [(TSPObjectSerializationDecoder *)&v53 init];
    if (v9)
    {
      v12 = objc_msgSend_tsp_dispatchData(v4, v10, v11);
      v13 = *(v9 + 1);
      *(v9 + 1) = v12;

      *(v9 + 2) = v7;
      size_ptr = 0;
      buffer_ptr = 0;
      subrange = dispatch_data_create_subrange(*(v9 + 1), v7 - 4, 4uLL);
      v15 = dispatch_data_create_map(subrange, &buffer_ptr, &size_ptr);

      if (*buffer_ptr != *" TSPN3TSP20DatabaseOutputStreamE")
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD3774();
        }

LABEL_19:

LABEL_20:
        v8 = 0;
        goto LABEL_25;
      }

      v16 = dispatch_data_create_subrange(*(v9 + 1), v7 - 12, 8uLL);
      v17 = dispatch_data_create_map(v16, &buffer_ptr, &size_ptr);

      v18 = *buffer_ptr;
      v19 = v7 > *buffer_ptr;
      v20 = v7 - *buffer_ptr;
      if (!v19)
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD379C();
        }

        v15 = v17;
        goto LABEL_19;
      }

      sub_276A00FEC(v48);
      v21 = v20 - 12;
      v22 = dispatch_data_create_subrange(*(v9 + 1), v18, v21);
      sub_276A01048(v48, v22);

      v41[0] = 0;
      v41[1] = 0;
      v41[2] = v48;
      v42[0] = 0;
      *(v42 + 6) = 0;
      v42[2] = 0x7FFFFFFFLL;
      v43 = 0x7FFFFFFF;
      v44 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
      v45 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
      v46 = 0;
      v47 = 0;
      google::protobuf::io::CodedInputStream::Refresh(v41);
      google::protobuf::io::CodedInputStream::PushLimit(v41, v21);
      sub_2769F1A80(v39, 0);
      v23 = google::protobuf::MessageLite::ParseFromCodedStream(v39, v41);
      if (v23)
      {
        v24 = v39[6];
        v25 = objc_alloc(MEMORY[0x277CBEB38]);
        v27 = objc_msgSend_initWithCapacity_(v25, v26, v24);
        v28 = *(v9 + 3);
        *(v9 + 3) = v27;

        if (v24 >= 1)
        {
          v29 = 8;
          do
          {
            v30 = *(v40 + v29);
            v31 = objc_alloc(MEMORY[0x277CCACA8]);
            v33 = objc_msgSend_tsp_initWithProtobufString_(v31, v32, v30[3] & 0xFFFFFFFFFFFFFFFELL);
            v34 = [TSPObjectSerializationDirectoryEntry alloc];
            v36 = objc_msgSend_initWithOffset_size_(v34, v35, v30[4], v30[5]);
            objc_msgSend_setObject_forKeyedSubscript_(*(v9 + 3), v37, v36, v33);

            v29 += 8;
            --v24;
          }

          while (v24);
        }
      }

      else if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD37C4();
      }

      sub_2769F1AC0(v39);
      google::protobuf::io::CodedInputStream::~CodedInputStream(v41);

      if ((v23 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v9 = v9;
    v8 = v9;
    goto LABEL_25;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD37EC();
  }

  v8 = 0;
  v9 = self;
LABEL_25:

  return v8;
}

- (id)newReadChannelForLocator:(id)a3
{
  v4 = objc_msgSend_objectForKeyedSubscript_(self->_directory, a2, a3);
  v7 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v8 = objc_msgSend_offset(v4, v5, v6);
  v11 = objc_msgSend_size(v7, v9, v10);
  if (v11 + v8 <= self->_encodedDataLength)
  {
    subrange = dispatch_data_create_subrange(self->_encodedData, v8, v11);
    v14 = [TSPMemoryReadChannel alloc];
    v12 = objc_msgSend_initWithDispatchData_(v14, v15, subrange);

    goto LABEL_8;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD3800();
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)newReadChannelForDataWithIdentifier:(int64_t)a3 info:(id)a4
{
  v5 = objc_msgSend_digest(a4, a2, a3);
  v8 = objc_msgSend_digestString(v5, v6, v7);
  ChannelForLocator = objc_msgSend_newReadChannelForLocator_(self, v9, v8);

  return ChannelForLocator;
}

@end