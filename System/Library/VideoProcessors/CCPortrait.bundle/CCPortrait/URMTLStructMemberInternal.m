@interface URMTLStructMemberInternal
- (URMTLStructMemberInternal)init;
- (URMTLStructMemberInternal)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation URMTLStructMemberInternal

- (URMTLStructMemberInternal)init
{
  v3.receiver = self;
  v3.super_class = URMTLStructMemberInternal;
  return [(URMTLStructMemberInternal *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_name(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"name");

  v9 = MEMORY[0x29EDBA070];
  v12 = objc_msgSend_offset(self, v10, v11);
  v14 = objc_msgSend_numberWithUnsignedInteger_(v9, v13, v12);
  objc_msgSend_encodeObject_forKey_(v4, v15, v14, @"offset");

  v16 = MEMORY[0x29EDBA070];
  v19 = objc_msgSend_dataType(self, v17, v18);
  v21 = objc_msgSend_numberWithUnsignedInteger_(v16, v20, v19);
  objc_msgSend_encodeObject_forKey_(v4, v22, v21, @"dataType");

  v23 = MEMORY[0x29EDBA070];
  v26 = objc_msgSend_argumentIndex(self, v24, v25);
  v29 = objc_msgSend_numberWithUnsignedInteger_(v23, v27, v26);
  objc_msgSend_encodeObject_forKey_(v4, v28, v29, @"argumentIndex");
}

- (URMTLStructMemberInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(URMTLStructMemberInternal);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"name");
  objc_msgSend_setName_(v5, v10, v9);

  v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v6, @"offset");
  v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  objc_msgSend_setOffset_(v5, v16, v15);

  v18 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v6, @"dataType");
  v21 = objc_msgSend_unsignedIntegerValue(v18, v19, v20);
  objc_msgSend_setDataType_(v5, v22, v21);

  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v6, @"argumentIndex");

  v27 = objc_msgSend_unsignedIntegerValue(v24, v25, v26);
  objc_msgSend_setArgumentIndex_(v5, v28, v27);

  return v5;
}

@end