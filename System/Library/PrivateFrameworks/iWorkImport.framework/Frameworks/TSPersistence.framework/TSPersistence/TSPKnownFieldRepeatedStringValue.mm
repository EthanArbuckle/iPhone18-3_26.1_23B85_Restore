@interface TSPKnownFieldRepeatedStringValue
- (TSPKnownFieldRepeatedStringValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (id).cxx_construct;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
@end

@implementation TSPKnownFieldRepeatedStringValue

- (TSPKnownFieldRepeatedStringValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v33.receiver = self;
  v33.super_class = TSPKnownFieldRepeatedStringValue;
  v9 = [TSPKnownField initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  if (v9)
  {
    v10 = google::protobuf::Reflection::FieldSize(reflection, message, descriptor);
    p_values = &v9->_values;
    sub_276A057E0(&v9->_values, v10);
    type = v9->super._type;
    if (type == 9)
    {
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          google::protobuf::Reflection::GetRepeatedString(reflection, message, descriptor, i, &__str);
          current_size = p_values->current_size_;
          if (p_values->current_size_ == v9->_values.total_size_)
          {
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_276A07B90(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              total_size = v9->_values.total_size_;
            }

            else
            {
              __dst = __str;
              total_size = current_size;
            }

            sub_276A057E0(&v9->_values, total_size + 1);
            v28 = v9->_values.arena_or_elements_ + 24 * current_size;
            if (*(v28 + 23) < 0)
            {
              operator delete(*v28);
            }

            v29 = *&__dst.__r_.__value_.__l.__data_;
            *(v28 + 16) = *(&__dst.__r_.__value_.__l + 2);
            *v28 = v29;
          }

          else
          {
            std::string::operator=(v9->_values.arena_or_elements_ + current_size, &__str);
          }

          p_values->current_size_ = current_size + 1;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else if (type == 10)
    {
      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(reflection, message, descriptor, j);
          google::protobuf::MessageLite::SerializePartialAsString(RepeatedMessage, &__str);
          v21 = p_values->current_size_;
          if (p_values->current_size_ == v9->_values.total_size_)
          {
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_276A07B90(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              v22 = v9->_values.total_size_;
            }

            else
            {
              __dst = __str;
              v22 = v21;
            }

            sub_276A057E0(&v9->_values, v22 + 1);
            v23 = v9->_values.arena_or_elements_ + 24 * v21;
            if (*(v23 + 23) < 0)
            {
              operator delete(*v23);
            }

            v24 = *&__dst.__r_.__value_.__l.__data_;
            *(v23 + 16) = *(&__dst.__r_.__value_.__l + 2);
            *v23 = v24;
          }

          else
          {
            std::string::operator=(v9->_values.arena_or_elements_ + v21, &__str);
          }

          p_values->current_size_ = v21 + 1;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    else if ((type - 1) < 8)
    {
      v31 = v9->super._type;
      TSUSetCrashReporterInfo();
      v13 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPKnownFieldRepeatedStringValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "[TSPKnownFieldRepeatedStringValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 824, v31);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 824, 1, "Unexpected field descriptor type (%d).", v9->super._type);

      TSUCrashBreakpoint();
      abort();
    }
  }

  return v9;
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
      p_values = &self->_values;
      current_size = p_values->current_size_;
      if (current_size >= 1)
      {
        v25 = 0;
        v26 = 24 * current_size;
        do
        {
          v27 = p_values->arena_or_elements_ + v25;
          if (v27[23] < 0)
          {
            sub_276A07B90(__p, *v27, *(v27 + 1));
          }

          else
          {
            v28 = *v27;
            v39 = *(v27 + 2);
            *__p = v28;
          }

          google::protobuf::Reflection::AddString(reflection, message, v10, __p);
          if (SHIBYTE(v39) < 0)
          {
            operator delete(__p[0]);
          }

          v25 += 24;
        }

        while (v26 != v25);
      }
    }

    else if (type == 10)
    {
      v18 = &self->_values;
      v19 = v18->current_size_;
      if (v19 >= 1)
      {
        v20 = 0;
        v21 = 24 * v19;
        do
        {
          v22 = google::protobuf::Reflection::AddMessage(reflection, message, v10, 0);
          google::protobuf::MessageLite::ParsePartialFromString(v22, v18->arena_or_elements_ + v20);
          v20 += 24;
        }

        while (v21 != v20);
      }
    }

    else if ((type - 1) < 8)
    {
      v37 = self->super._type;
      TSUSetCrashReporterInfo();
      v12 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPKnownFieldRepeatedStringValue mergeToMessage:reflection:]", "[TSPKnownFieldRepeatedStringValue mergeToMessage:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 871, v37);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v14, v16, 871, 1, "Unexpected field descriptor type (%d).", self->super._type);

      TSUCrashBreakpoint();
      abort();
    }
  }

  else
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldRepeatedStringValue mergeToMessage:reflection:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 838, 0, "Unexpected unknown field (%d).", self->super._number);

    v36 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v36, v34, v35);
  }
}

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 19) = 0;
  return self;
}

@end