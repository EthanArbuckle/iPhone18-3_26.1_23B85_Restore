@interface TSPComponentParser
- (BOOL)readFromStream:(DispatchDataInputStream *)stream error:(id *)error;
- (TSPComponentParser)init;
- (TSPComponentParser)initWithDelegate:(id)delegate;
- (unint64_t)readArchiveFromStream:(DispatchDataInputStream *)stream error:(id *)error;
- (unint64_t)readArchiveInfoFromStream:(DispatchDataInputStream *)stream error:(id *)error;
- (unint64_t)readArchiveInfoLengthFromStream:(DispatchDataInputStream *)stream error:(id *)error;
- (void)readWithChannel:(id)channel completionQueue:(id)queue completion:(id)completion;
@end

@implementation TSPComponentParser

- (TSPComponentParser)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentParser init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentParser.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 50, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPComponentParser init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPComponentParser)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = TSPComponentParser;
  v5 = [(TSPComponentParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)readWithChannel:(id)channel completionQueue:(id)queue completion:(id)completion
{
  channelCopy = channel;
  queueCopy = queue;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A769C0;
  aBlock[3] = &unk_27A6E58D0;
  v11 = queueCopy;
  v26 = v11;
  v12 = completionCopy;
  v27 = v12;
  v14 = _Block_copy(aBlock);
  if (channelCopy)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 1;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_276A76A90;
    v22[4] = sub_276A76AA0;
    v22[5] = 0;
    self->_state = 0;
    operator new();
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPComponentParser readWithChannel:completionQueue:completion:]");
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentParser.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 70, 0, "Cannot read from a nil channel.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  (*(v14 + 2))(v14, 0, 0);
}

- (BOOL)readFromStream:(DispatchDataInputStream *)stream error:(id *)error
{
  state = self->_state;
  while (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        goto LABEL_13;
      }

      ArchiveInfoFromStream_error = objc_msgSend_readArchiveInfoFromStream_error_(self, a2, stream, error);
    }

    else
    {
      ArchiveInfoFromStream_error = objc_msgSend_readArchiveInfoLengthFromStream_error_(self, a2, stream, error);
    }

LABEL_9:
    self->_state = ArchiveInfoFromStream_error;
    v9 = state == ArchiveInfoFromStream_error;
    state = ArchiveInfoFromStream_error;
    if (v9)
    {
      return 1;
    }
  }

  if (state == 2)
  {
    ArchiveInfoFromStream_error = objc_msgSend_readArchiveFromStream_error_(self, a2, stream, error);
    goto LABEL_9;
  }

  if (state == 3)
  {
    return 0;
  }

LABEL_13:
  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentParser readFromStream:error:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentParser.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 128, 0, "Unexpected read state: %lu", self->_state);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  return 0;
}

- (unint64_t)readArchiveInfoLengthFromStream:(DispatchDataInputStream *)stream error:(id *)error
{
  if (sub_276A01088(stream) >= 5)
  {
    v13 = 0;
    v14 = 0;
    streamCopy = stream;
    v16[0] = 0;
    *(v16 + 6) = 0;
    v16[2] = 0x7FFFFFFFLL;
    v17 = 0x7FFFFFFF;
    v18 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v19 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
    v20 = 0;
    v21 = 0;
    google::protobuf::io::CodedInputStream::Refresh(&v13);
    google::protobuf::io::CodedInputStream::PushLimit(&v13, 5u);
    v7 = v13;
    if (v13 >= v14)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        self->_archiveInfoLength = v8;
        v13 = v7 + 1;
        goto LABEL_8;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v13, v8);
    self->_archiveInfoLength = Varint32Fallback;
    if (Varint32Fallback < 0)
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD5AE8();
      }

      if (!*error)
      {
        *error = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v11, 0);
      }

      v9 = 3;
      goto LABEL_9;
    }

LABEL_8:
    v9 = 1;
LABEL_9:
    google::protobuf::io::CodedInputStream::~CodedInputStream(&v13);
    return v9;
  }

  return 0;
}

- (unint64_t)readArchiveInfoFromStream:(DispatchDataInputStream *)stream error:(id *)error
{
  if (sub_276A01088(stream) < self->_archiveInfoLength)
  {
    return 1;
  }

  v14[0] = 0;
  v14[1] = 0;
  v14[2] = stream;
  v15[0] = 0;
  *(v15 + 6) = 0;
  v15[2] = 0x7FFFFFFFLL;
  v16 = 0x7FFFFFFF;
  v17 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v18 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v19 = 0;
  v20 = 0;
  google::protobuf::io::CodedInputStream::Refresh(v14);
  google::protobuf::io::CodedInputStream::PushLimit(v14, self->_archiveInfoLength);
  if (google::protobuf::MessageLite::ParseFromCodedStream(&self->_archiveInfo, v14))
  {
    current_size = self->_archiveInfo.message_infos_.current_size_;
    if (current_size < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = (self->_archiveInfo.message_infos_.rep_ + 8);
      do
      {
        v12 = *v11++;
        v10 += *(v12 + 204);
        --current_size;
      }

      while (current_size);
    }

    self->_messagesLength = v10;
    v7 = 2;
  }

  else
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD5B10();
    }

    if (!*error)
    {
      *error = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v8, 0);
    }

    v7 = 3;
  }

  google::protobuf::io::CodedInputStream::~CodedInputStream(v14);
  return v7;
}

- (unint64_t)readArchiveFromStream:(DispatchDataInputStream *)stream error:(id *)error
{
  if (sub_276A01088(stream) < self->_messagesLength)
  {
    return 2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  ArchiveInfo_stream_error = objc_msgSend_componentParser_didReadArchiveInfo_stream_error_(WeakRetained, v9, self, &self->_archiveInfo, stream, error);

  if (ArchiveInfo_stream_error)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

@end