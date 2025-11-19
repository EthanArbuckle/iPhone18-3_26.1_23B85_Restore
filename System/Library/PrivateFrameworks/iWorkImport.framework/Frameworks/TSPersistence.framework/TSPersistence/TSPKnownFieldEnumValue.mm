@interface TSPKnownFieldEnumValue
- (TSPKnownFieldEnumValue)initWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6 unknownFieldSet:(void *)a7;
- (id).cxx_construct;
- (id)debugDescription;
- (void)mergeToMessage:(Message *)a3 reflection:(const Reflection *)a4;
- (void)mergeToUnknownFieldSet:(void *)a3;
@end

@implementation TSPKnownFieldEnumValue

- (TSPKnownFieldEnumValue)initWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6 unknownFieldSet:(void *)a7
{
  v50.receiver = self;
  v50.super_class = TSPKnownFieldEnumValue;
  v11 = [TSPKnownFieldNumericValue initSubclassWithFieldDescriptor:sel_initSubclassWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:a3 message:a4 reflection:?];
  v12 = v11;
  if (v11)
  {
    if (v11[2] != 8)
    {
      v47 = v11[2];
      TSUSetCrashReporterInfo();
      v41 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSPKnownFieldEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]", "[TSPKnownFieldEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 573, v47);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v43, v45, 573, 1, "Unexpected field descriptor type (%d).", v12->super.super._type);

      TSUCrashBreakpoint();
      abort();
    }

    v13 = v11 + 38;
    v15 = *a7;
    v14 = *(a7 + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v11 + 20);
    *v13 = v15;
    v13[1] = v14;
    if (v16)
    {
      sub_2769C1430(v16);
    }

    if (*a7)
    {
      if (google::protobuf::Reflection::HasField(a6, a5, a3))
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPKnownFieldEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
        v22 = *(a3 + 1);
        if (*(v22 + 23) < 0)
        {
          v22 = *v22;
        }

        number = v12->super.super._number;
        (*(a5->var0 + 2))(__p, a5);
        if (v49 >= 0)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v21, 578, 0, "Enum field %{public}s (%d) for message %{public}s has both known and unknown values. We will only preserve the unknown values.", v22, number, __p);
        }

        else
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v21, 578, 0, "Enum field %{public}s (%d) for message %{public}s has both known and unknown values. We will only preserve the unknown values.", v22, number, __p[0]);
        }

        if (v49 < 0)
        {
          operator delete(__p[0]);
        }

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }
    }

    else
    {
      Enum = google::protobuf::Reflection::GetEnum(a6, a5, a3);
      if (Enum)
      {
        v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v28, *(Enum + 16));
      }

      else
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPKnownFieldEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
        v34 = *(a3 + 1);
        if (*(v34 + 23) < 0)
        {
          v34 = *v34;
        }

        v35 = v12->super.super._number;
        (*(a5->var0 + 2))(__p, a5);
        if (v49 >= 0)
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v33, 584, 0, "Found unexpected enum value for field %{public}s (%d) message %{public}s.", v34, v35, __p);
        }

        else
        {
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v33, 584, 0, "Found unexpected enum value for field %{public}s (%d) message %{public}s.", v34, v35, __p[0]);
        }

        if (v49 < 0)
        {
          operator delete(__p[0]);
        }

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
        v29 = 0;
      }

      value = v12->super._value;
      v12->super._value = v29;
    }
  }

  return v12;
}

- (void)mergeToUnknownFieldSet:(void *)a3
{
  if (a3)
  {
    google::protobuf::UnknownFieldSet::MergeFrom(a3, self->_unknownFieldSet.__ptr_);
  }
}

- (void)mergeToMessage:(Message *)a3 reflection:(const Reflection *)a4
{
  if (self->super._value || objc_msgSend_hasUnknownValues(self, a2, a3))
  {
    v7 = (*(a3->var0 + 19))(a3, a2);
    FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v7, self->super.super._number);
    if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(a4, self->super.super._number)) != 0)
    {
      v10 = FieldByNumber;
      google::protobuf::Reflection::ClearField(a4, a3, FieldByNumber);
      if (self->super._value)
      {
        v11 = google::protobuf::FieldDescriptor::enum_type(v10);
        v14 = objc_msgSend_intValue(self->super._value, v12, v13);
        ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v11, v14);
        if (ValueByNumber)
        {

          google::protobuf::Reflection::SetEnum(a4, a3, v10, ValueByNumber);
        }

        else
        {
          v17 = MEMORY[0x277D81150];
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPKnownFieldEnumValue mergeToMessage:reflection:]");
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
          v23 = objc_msgSend_intValue(self->super._value, v21, v22);
          number = self->super.super._number;
          (*(a3->var0 + 2))(__p, a3);
          if (v37 >= 0)
          {
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v18, v20, 627, 0, "Found unexpected enum value (%d) for field (%d) message %{public}s.", v23, number, __p);
          }

          else
          {
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v18, v20, 627, 0, "Found unexpected enum value (%d) for field (%d) message %{public}s.", v23, number, __p[0]);
          }

          if (v37 < 0)
          {
            operator delete(__p[0]);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
        }
      }
    }

    else
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldEnumValue mergeToMessage:reflection:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 613, 0, "Unexpected unknown field (%d).", self->super.super._number);

      v35 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v35, v33, v34);
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldEnumValue;
  v4 = [(TSPKnownFieldNumericValue *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ value: %@", v4, self->super._value);;

  return v6;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  return self;
}

@end