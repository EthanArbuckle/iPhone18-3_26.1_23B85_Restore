@interface TSPKnownFieldNumericValue
- (TSPKnownFieldNumericValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (id)debugDescription;
- (id)initSubclassWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
@end

@implementation TSPKnownFieldNumericValue

- (TSPKnownFieldNumericValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v43.receiver = self;
  v43.super_class = TSPKnownFieldNumericValue;
  v9 = [TSPKnownField initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  type = v9->super._type;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        v23 = MEMORY[0x277CCABB0];
        Bool = google::protobuf::Reflection::GetBool(reflection, message, descriptor);
        v15 = objc_msgSend_numberWithBool_(v23, v25, Bool);
        goto LABEL_18;
      }

      if ((type - 8) < 3)
      {
        v42 = v9->super._type;
        TSUSetCrashReporterInfo();
        v36 = MEMORY[0x277D81150];
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSPKnownFieldNumericValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "[TSPKnownFieldNumericValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 344, v42);
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v38, v40, 344, 1, "Unexpected field descriptor type (%d).", v10->super._type);

        TSUCrashBreakpoint();
        abort();
      }

      return v10;
    }

    v16 = MEMORY[0x277CCABB0];
    if (type == 5)
    {
      Double = google::protobuf::Reflection::GetDouble(reflection, message, descriptor);
      objc_msgSend_numberWithDouble_(v16, v27, v28, Double);
    }

    else
    {
      *&v17 = google::protobuf::Reflection::GetFloat(reflection, message, descriptor);
      objc_msgSend_numberWithFloat_(v16, v18, v19, v17);
    }

    v15 = LABEL_10:;
    goto LABEL_18;
  }

  if (type > 2)
  {
    v20 = MEMORY[0x277CCABB0];
    if (type == 3)
    {
      UInt32 = google::protobuf::Reflection::GetUInt32(reflection, message, descriptor);
      objc_msgSend_numberWithUnsignedInt_(v20, v33, UInt32);
    }

    else
    {
      UInt64 = google::protobuf::Reflection::GetUInt64(reflection, message, descriptor);
      objc_msgSend_numberWithUnsignedLongLong_(v20, v22, UInt64);
    }

    goto LABEL_10;
  }

  if (type == 1)
  {
    v29 = MEMORY[0x277CCABB0];
    Int32 = google::protobuf::Reflection::GetInt32(reflection, message, descriptor);
    v15 = objc_msgSend_numberWithInt_(v29, v31, Int32);
    goto LABEL_18;
  }

  if (type == 2)
  {
    v12 = MEMORY[0x277CCABB0];
    Int64 = google::protobuf::Reflection::GetInt64(reflection, message, descriptor);
    v15 = objc_msgSend_numberWithLongLong_(v12, v14, Int64);
LABEL_18:
    value = v10->_value;
    v10->_value = v15;
  }

  return v10;
}

- (id)initSubclassWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v7.receiver = self;
  v7.super_class = TSPKnownFieldNumericValue;
  return [(TSPKnownField *)&v7 initWithFieldDescriptor:descriptor fieldInfo:info message:message reflection:reflection];
}

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  if (self->_value)
  {
    v7 = (*(message->var0 + 19))(message, a2);
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v7, self->super._number);
    if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(reflection, self->super._number)) != 0)
    {
      v10 = FieldByNumber;
      google::protobuf::Reflection::ClearField(reflection, message, FieldByNumber);
      type = self->super._type;
      if (type > 4)
      {
        if (type > 6)
        {
          if (type == 7)
          {
            v25 = objc_msgSend_BOOLValue(self->_value, v11, v12);

            google::protobuf::Reflection::SetBool(reflection, message, v10, v25);
          }

          else if ((type - 8) < 3)
          {
            v35 = self->super._type;
            TSUSetCrashReporterInfo();
            v29 = MEMORY[0x277D81150];
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSPKnownFieldNumericValue mergeToMessage:reflection:]", "[TSPKnownFieldNumericValue mergeToMessage:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 408, v35);
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v31, v33, 408, 1, "Unexpected field descriptor type (%d).", self->super._type);

            TSUCrashBreakpoint();
            abort();
          }
        }

        else if (type == 5)
        {
          objc_msgSend_doubleValue(self->_value, v11, v12);

          google::protobuf::Reflection::SetDouble(reflection, message, v10, v26);
        }

        else
        {
          objc_msgSend_floatValue(self->_value, v11, v12);

          google::protobuf::Reflection::SetFloat(reflection, message, v10, v15);
        }
      }

      else if (type > 2)
      {
        if (type == 3)
        {
          v28 = objc_msgSend_unsignedIntValue(self->_value, v11, v12);

          google::protobuf::Reflection::SetUInt32(reflection, message, v10, v28);
        }

        else
        {
          v16 = objc_msgSend_unsignedLongLongValue(self->_value, v11, v12);

          google::protobuf::Reflection::SetUInt64(reflection, message, v10, v16);
        }
      }

      else if (type == 1)
      {
        v27 = objc_msgSend_intValue(self->_value, v11, v12);

        google::protobuf::Reflection::SetInt32(reflection, message, v10, v27);
      }

      else if (type == 2)
      {
        v14 = objc_msgSend_longLongValue(self->_value, v11, v12);

        google::protobuf::Reflection::SetInt64(reflection, message, v10, v14);
      }
    }

    else
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldNumericValue mergeToMessage:reflection:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 367, 0, "Unexpected unknown field (%d).", self->super._number);

      v24 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v24, v22, v23);
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldNumericValue;
  v4 = [(TSPKnownField *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ value: %@", v4, self->_value);;

  return v6;
}

@end