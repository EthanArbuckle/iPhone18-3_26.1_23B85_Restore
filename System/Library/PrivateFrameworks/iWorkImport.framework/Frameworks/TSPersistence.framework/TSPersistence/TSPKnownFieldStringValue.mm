@interface TSPKnownFieldStringValue
- (TSPKnownFieldStringValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (id).cxx_construct;
- (id)debugDescription;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
@end

@implementation TSPKnownFieldStringValue

- (TSPKnownFieldStringValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v25.receiver = self;
  v25.super_class = TSPKnownFieldStringValue;
  v9 = [TSPKnownField initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  type = v9->super._type;
  if (type == 9)
  {
    google::protobuf::Reflection::GetString(reflection, message, descriptor, &v23);
  }

  else
  {
    if (type != 10)
    {
      if ((type - 1) < 8)
      {
        v22 = v9->super._type;
        TSUSetCrashReporterInfo();
        v12 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPKnownFieldStringValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "[TSPKnownFieldStringValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 740, v22);
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v14, v16, 740, 1, "Unexpected field descriptor type (%d).", v10->super._type);

        TSUCrashBreakpoint();
        abort();
      }

      return v10;
    }

    Message = google::protobuf::Reflection::GetMessage(reflection, message, descriptor, 0);
    google::protobuf::MessageLite::SerializePartialAsString(Message, &v23);
  }

  p_value = &v10->_value;
  if (*(&v10->_value.__rep_.__l + 23) < 0)
  {
    operator delete(*p_value);
  }

  v20 = v23;
  *(&v10->_value.__rep_.__l + 2) = v24;
  *p_value = v20;
  return v10;
}

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  v7 = (*(message->var0 + 19))(message, a2);
  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v7, self->super._number);
  if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(reflection, self->super._number)) != 0)
  {
    v10 = FieldByNumber;
    google::protobuf::Reflection::ClearField(reflection, message, FieldByNumber);
    type = self->super._type;
    if (type == 9)
    {
      p_value = &self->_value;
      if (*(&self->_value.__rep_.__l + 23) < 0)
      {
        sub_276A07B90(__p, p_value->__rep_.__l.__data_, self->_value.__rep_.__l.__size_);
      }

      else
      {
        *__p = *p_value->__rep_.__s.__data_;
        v30 = *(&self->_value.__rep_.__l + 2);
      }

      google::protobuf::Reflection::SetString(reflection, message, v10, __p);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (type == 10)
    {
      v18 = google::protobuf::Reflection::MutableMessage(reflection, message, v10, 0);

      google::protobuf::MessageLite::ParsePartialFromString(v18, &self->_value);
    }

    else if ((type - 1) < 8)
    {
      v28 = self->super._type;
      TSUSetCrashReporterInfo();
      v12 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPKnownFieldStringValue mergeToMessage:reflection:]", "[TSPKnownFieldStringValue mergeToMessage:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 781, v28);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v14, v16, 781, 1, "Unexpected field descriptor type (%d).", self->super._type);

      TSUCrashBreakpoint();
      abort();
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldStringValue mergeToMessage:reflection:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 754, 0, "Unexpected unknown field (%d).", self->super._number);

    v27 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v27, v25, v26);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = TSPKnownFieldStringValue;
  v4 = [(TSPKnownField *)&v10 debugDescription];
  v6 = v4;
  p_value = &self->_value;
  if (*(&self->_value.__rep_.__l + 23) < 0)
  {
    p_value = p_value->__rep_.__l.__data_;
  }

  v8 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ value: '%s'", v4, p_value);;

  return v8;
}

- (id).cxx_construct
{
  *(self + 152) = 0uLL;
  *(self + 18) = 0;
  return self;
}

@end