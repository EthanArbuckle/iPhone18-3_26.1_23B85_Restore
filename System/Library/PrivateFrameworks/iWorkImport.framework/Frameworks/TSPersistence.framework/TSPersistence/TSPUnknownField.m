@interface TSPUnknownField
+ (id)unknownFieldWithFieldSet:(void *)a3 fieldInfo:(const void *)a4;
- (TSPUnknownField)initWithFieldSet:(void *)a3 fieldInfo:(const void *)a4;
- (id).cxx_construct;
- (id)debugDescription;
- (void)mergeToMessage:(Message *)a3 reflection:(const Reflection *)a4;
- (void)mergeToUnknownFieldSet:(void *)a3;
- (void)updateMessageInfo:(void *)a3;
@end

@implementation TSPUnknownField

+ (id)unknownFieldWithFieldSet:(void *)a3 fieldInfo:(const void *)a4
{
  v6 = *(a4 + 28) - 1;
  if (v6 > 2)
  {
    v7 = off_27A6E21E0;
  }

  else
  {
    v7 = off_27A6E6DA8[v6];
  }

  v8 = objc_alloc(*v7);
  v10 = objc_msgSend_initWithFieldSet_fieldInfo_(v8, v9, a3, a4);

  return v10;
}

- (TSPUnknownField)initWithFieldSet:(void *)a3 fieldInfo:(const void *)a4
{
  v13.receiver = self;
  v13.super_class = TSPUnknownField;
  v6 = [(TSPUnknownField *)&v13 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    v10 = *a3;
    v9 = *(a3 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v6->_fieldSet.__cntrl_;
    v8->_fieldSet.__ptr_ = v10;
    v8->_fieldSet.__cntrl_ = v9;
    if (cntrl)
    {
      sub_2769C1430(cntrl);
    }

    sub_2769E211C(&v7->_fieldInfo, a4);
  }

  return v8;
}

- (void)mergeToUnknownFieldSet:(void *)a3
{
  if (a3)
  {
    google::protobuf::UnknownFieldSet::MergeFrom(a3, self->_fieldSet.__ptr_);
  }
}

- (void)mergeToMessage:(Message *)a3 reflection:(const Reflection *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownField mergeToMessage:reflection:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 95, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPUnknownField mergeToMessage:reflection:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)updateMessageInfo:(void *)a3
{
  v5 = *(a3 + 8);
  if (!v5)
  {
    v7 = *(a3 + 15);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 12, v7 + 1);
    v5 = *(a3 + 8);
    v7 = *v5;
    goto LABEL_7;
  }

  v6 = *(a3 + 14);
  v7 = *v5;
  if (v6 < *v5)
  {
    *(a3 + 14) = v6 + 1;
    v8 = *&v5[2 * v6 + 2];
    goto LABEL_8;
  }

  if (v7 == *(a3 + 15))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v5 = v7 + 1;
  v8 = sub_2769F4F5C(*(a3 + 6));
  v9 = *(a3 + 14);
  v10 = *(a3 + 8) + 8 * v9;
  *(a3 + 14) = v9 + 1;
  *(v10 + 8) = v8;
LABEL_8:

  sub_2769E211C(v8, &self->_fieldInfo);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = TSPUnknownField;
  v5 = [(TSPUnknownField *)&v19 debugDescription];
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
      objc_msgSend_stringWithFormat_(v3, v12, @"%@; field path: %@; field rule: %@", v5, v8, off_27A6E6DC0[v16]);
    }
  }
  v17 = ;

  return v17;
}

- (id).cxx_construct
{
  self->_fieldSet.__ptr_ = 0;
  self->_fieldSet.__cntrl_ = 0;
  sub_2769E0F1C(&self->_fieldInfo, 0);
  return self;
}

@end