@interface TSPKnownField
+ (id)knownFieldWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (TSPKnownField)init;
- (TSPKnownField)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (id)debugDescription;
- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection;
- (void)mergeToUnknownFieldSet:(void *)set;
@end

@implementation TSPKnownField

+ (id)knownFieldWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v31 = 0uLL;
  v8 = *(descriptor + 6);
  if (v8)
  {
    descriptorCopy = descriptor;
    v33 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v8, memory_order_acquire) != -1)
    {
      v35[0] = &v33;
      v35[1] = &descriptorCopy;
      v34 = v35;
      std::__call_once(v8, &v34, sub_2769C149C);
    }
  }

  v9 = *(descriptor + 15);
  v28 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(descriptor + 14)];
  if (v28 == 8)
  {
    v10 = *(descriptor + 17);
    UnknownFields = google::protobuf::Reflection::GetUnknownFields(reflection, message);
    v12 = (UnknownFields[1] - *UnknownFields) >> 4;
    if (v12 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = (*UnknownFields + 16 * v13++);
        if (*v14 == v10)
        {
          operator new();
        }
      }

      while (v13 < v12);
    }
  }

  if (!v31)
  {
    if (v9 == 3)
    {
      if (google::protobuf::Reflection::FieldSize(reflection, message, descriptor))
      {
        goto LABEL_11;
      }
    }

    else if (google::protobuf::Reflection::HasField(reflection, message, descriptor))
    {
      goto LABEL_11;
    }

    v18 = [TSPKnownFieldToRemove alloc];
    v20 = objc_msgSend_initWithFieldDescriptor_fieldInfo_message_reflection_(v18, v19, descriptor, info, message, reflection);
    goto LABEL_32;
  }

LABEL_11:
  v15 = *(info + 28);
  switch(v15)
  {
    case 3:
      v16 = off_27A6E2148;
      v17 = off_27A6E2170;
      goto LABEL_29;
    case 2:
      v16 = off_27A6E2138;
      v17 = off_27A6E2160;
      goto LABEL_29;
    case 1:
      v16 = off_27A6E2158;
      v17 = off_27A6E2180;
LABEL_29:
      if (v9 == 3)
      {
        v16 = v17;
      }

      v24 = objc_alloc(*v16);
      v20 = objc_msgSend_initWithFieldDescriptor_fieldInfo_message_reflection_(v24, v25, descriptor, info, message, reflection);
      goto LABEL_32;
  }

  if ((v28 - 9) <= 1)
  {
    v16 = off_27A6E2190;
    v17 = off_27A6E2188;
    goto LABEL_29;
  }

  if (v28 != 8)
  {
    v16 = off_27A6E2150;
    v17 = off_27A6E2178;
    goto LABEL_29;
  }

  v21 = off_27A6E2168;
  if (v9 != 3)
  {
    v21 = off_27A6E2140;
  }

  v22 = objc_alloc(*v21);
  v20 = objc_msgSend_initWithFieldDescriptor_fieldInfo_message_reflection_unknownFieldSet_(v22, v23, descriptor, info, message, reflection, &v31);
LABEL_32:
  v26 = v20;
  if (*(&v31 + 1))
  {
    sub_2769C1430(*(&v31 + 1));
  }

  return v26;
}

- (TSPKnownField)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPKnownField init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 233, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPKnownField init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPKnownField)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v12.receiver = self;
  v12.super_class = TSPKnownField;
  v8 = [(TSPKnownField *)&v12 init:descriptor];
  if (v8)
  {
    v9 = *(descriptor + 6);
    if (v9)
    {
      descriptorCopy = descriptor;
      v14 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v9, memory_order_acquire) != -1)
      {
        v16[0] = &v14;
        v16[1] = &descriptorCopy;
        v15 = v16;
        std::__call_once(v9, &v15, sub_2769C149C);
      }
    }

    v10 = *(descriptor + 17);
    *(v8 + 2) = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(descriptor + 14)];
    *(v8 + 3) = v10;
    sub_2769E211C(v8 + 2, info);
  }

  return v8;
}

- (void)mergeToUnknownFieldSet:(void *)set
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPKnownField mergeToUnknownFieldSet:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 267, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSPKnownField mergeToUnknownFieldSet:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (void)mergeToMessage:(Message *)message reflection:(const Reflection *)reflection
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPKnownField mergeToMessage:reflection:]", reflection);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v7, 271, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSPKnownField mergeToMessage:reflection:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = TSPKnownField;
  v5 = [(TSPKnownField *)&v19 debugDescription];
  if (self->_fieldInfo.path_)
  {
    path = self->_fieldInfo.path_;
  }

  else
  {
    path = &qword_2812FC940;
  }

  v8 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v4, @"[");
  v9 = *(path + 4);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 4 * v9;
    do
    {
      if (v10)
      {
        objc_msgSend_appendString_(v8, v7, @", ");
      }

      objc_msgSend_appendFormat_(v8, v7, @"%u", *(*(path + 3) + v10));
      v10 += 4;
    }

    while (v11 != v10);
  }

  objc_msgSend_appendString_(v8, v7, @"]");
  unknown_field_rule = self->_fieldInfo.unknown_field_rule_;
  if ((self->_fieldInfo._has_bits_.has_bits_[0] & 0x10) != 0 && unknown_field_rule == -1)
  {
    known_field_rule = self->_fieldInfo.known_field_rule_;
    v15 = @"None";
    if (known_field_rule == 1)
    {
      v15 = @"PreserveNewerValueUntilModified";
    }

    if (known_field_rule == 2)
    {
      objc_msgSend_stringWithFormat_(v3, v12, @"%@; field path: %@; field rule: %@", v5, v8, @"PreserveNewerValue");
    }

    else
    {
      objc_msgSend_stringWithFormat_(v3, v12, @"%@; field path: %@; field rule: %@", v5, v8, v15);
    }
  }

  else
  {
    v16 = unknown_field_rule + 1;
    if (v16 > 3)
    {
      objc_msgSend_stringWithFormat_(v3, v12, @"%@; field path: %@; field rule: %@", v5, v8, @"IgnoreAndPreserveUntilModified");
    }

    else
    {
      objc_msgSend_stringWithFormat_(v3, v12, @"%@; field path: %@; field rule: %@", v5, v8, off_27A6E4240[v16]);
    }
  }
  v17 = ;

  return v17;
}

@end