@interface TSPKnownFieldRepeatedEnumValue
- (TSPKnownFieldRepeatedEnumValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection unknownFieldSet:(void *)set;
- (id).cxx_construct;
- (id)debugDescription;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
- (void)mergeToUnknownFieldSet:(void *)set;
@end

@implementation TSPKnownFieldRepeatedEnumValue

- (TSPKnownFieldRepeatedEnumValue)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection unknownFieldSet:(void *)set
{
  v62.receiver = self;
  v62.super_class = TSPKnownFieldRepeatedEnumValue;
  v11 = [TSPKnownFieldRepeatedNumericValue initSubclassWithFieldDescriptor:sel_initSubclassWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  v12 = v11;
  if (v11)
  {
    if (v11[2] != 8)
    {
      v57 = v11[2];
      TSUSetCrashReporterInfo();
      v51 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]", "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 645, v57);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v53, v55, 645, 1, "Unexpected field descriptor type (%d).", v12->super.super._type);

      TSUCrashBreakpoint();
      abort();
    }

    v13 = v11 + 38;
    v15 = *set;
    v14 = *(set + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v11 + 20);
    *v13 = v15;
    v12->_unknownFieldSet.__cntrl_ = v14;
    if (v16)
    {
      sub_2769C1430(v16);
    }

    reflectionCopy = reflection;
    v17 = google::protobuf::Reflection::FieldSize(reflection, message, descriptor);
    v19 = v17;
    v58 = v17;
    if (*set && v17)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
      v24 = *(descriptor + 1);
      if (*(v24 + 23) < 0)
      {
        v24 = *v24;
      }

      number = v12->super.super._number;
      (*(message->var0 + 2))(__p, message);
      if (v61 >= 0)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v23, 652, 0, "Repeated enum field %{public}s (%d) for message %{public}s has both known and unknown values. The order of the values will not be preserved.", v24, number, __p);
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v23, 652, 0, "Repeated enum field %{public}s (%d) for message %{public}s has both known and unknown values. The order of the values will not be preserved.", v24, number, __p[0]);
      }

      v19 = v58;
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v29 = objc_alloc(MEMORY[0x277CBEB18]);
    v31 = objc_msgSend_initWithCapacity_(v29, v30, v19);
    values = v12->super._values;
    v12->super._values = v31;

    v33 = reflectionCopy;
    if (v19 >= 1)
    {
      for (i = 0; i != v19; ++i)
      {
        RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(v33, message, descriptor, i);
        if (RepeatedEnum)
        {
          v37 = v12->super._values;
          v38 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v36, *(RepeatedEnum + 16));
          objc_msgSend_addObject_(v37, v39, v38);
        }

        else
        {
          v40 = MEMORY[0x277D81150];
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPKnownFieldRepeatedEnumValue initWithFieldDescriptor:fieldInfo:message:reflection:unknownFieldSet:]");
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
          v44 = *(descriptor + 1);
          if (*(v44 + 23) < 0)
          {
            v44 = *v44;
          }

          v45 = v12->super.super._number;
          (*(message->var0 + 2))(__p, message);
          v47 = __p;
          if (v61 < 0)
          {
            v47 = __p[0];
          }

          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v43, 662, 0, "Found unexpected enum value for field %{public}s (%d) message %{public}s.", v44, v45, v47);
          v19 = v58;
          v33 = reflectionCopy;
          if (v61 < 0)
          {
            operator delete(__p[0]);
          }

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
          v38 = v12->super._values;
          v12->super._values = 0;
        }
      }
    }
  }

  return v12;
}

- (void)mergeToUnknownFieldSet:(void *)set
{
  if (set)
  {
    google::protobuf::UnknownFieldSet::MergeFrom(set, self->_unknownFieldSet.__ptr_);
  }
}

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  selfCopy = self;
  v60 = *MEMORY[0x277D85DE8];
  if (!self->super._values && !objc_msgSend_hasUnknownValues(self, a2, message))
  {
LABEL_20:
    v38 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = (*(message->var0 + 19))(message, a2);
  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v6, selfCopy->super.super._number);
  if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(reflection, selfCopy->super.super._number)) != 0)
  {
    v9 = FieldByNumber;
    google::protobuf::Reflection::ClearField(reflection, message, FieldByNumber);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = selfCopy->super._values;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v55, v59, 16);
    if (v11)
    {
      v12 = *v56;
      v13 = 0x277CCA000uLL;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v56 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          v16 = google::protobuf::FieldDescriptor::enum_type(v9);
          v19 = objc_msgSend_intValue(v15, v17, v18);
          ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v16, v19);
          if (ValueByNumber)
          {
            google::protobuf::Reflection::AddEnum(reflection, message, v9, ValueByNumber);
          }

          else
          {
            v23 = MEMORY[0x277D81150];
            v51 = objc_msgSend_stringWithUTF8String_(*(v13 + 3240), v20, "[TSPKnownFieldRepeatedEnumValue mergeToMessage:reflection:]");
            v52 = objc_msgSend_stringWithUTF8String_(*(v13 + 3240), v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
            v27 = objc_msgSend_intValue(v15, v25, v26);
            v28 = v13;
            v29 = v9;
            v30 = v11;
            v31 = v12;
            v32 = selfCopy;
            number = selfCopy->super.super._number;
            (*(message->var0 + 2))(__p, message);
            v35 = __p;
            if (v54 < 0)
            {
              v35 = __p[0];
            }

            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v51, v52, 705, 0, "Found unexpected enum value (%d) for field (%d) message %{public}s.", v27, number, v35);
            if (v54 < 0)
            {
              operator delete(__p[0]);
            }

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
            selfCopy = v32;
            v12 = v31;
            v11 = v30;
            v9 = v29;
            v13 = v28;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v55, v59, 16);
      }

      while (v11);
    }

    goto LABEL_20;
  }

  v39 = selfCopy;
  v40 = MEMORY[0x277D81150];
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPKnownFieldRepeatedEnumValue mergeToMessage:reflection:]");
  v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 691, 0, "Unexpected unknown field (%d).", v39->super.super._number);

  v47 = MEMORY[0x277D81150];
  v48 = *MEMORY[0x277D85DE8];

  objc_msgSend_logBacktraceThrottled(v47, v45, v46);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldRepeatedEnumValue;
  v4 = [(TSPKnownFieldRepeatedNumericValue *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ values: %@", v4, self->super._values);;

  return v6;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  return self;
}

@end