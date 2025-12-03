@interface TSCH3DShaderLinkedVariable
+ (id)linkedVariable;
- (id)description;
- (id)inputVariableName;
@end

@implementation TSCH3DShaderLinkedVariable

+ (id)linkedVariable
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v31.receiver = self;
  v31.super_class = TSCH3DShaderLinkedVariable;
  v4 = [(TSCH3DShaderLinkedVariable *)&v31 description];
  v9 = objc_msgSend_name(self, v5, v6, v7, v8);
  v30 = objc_msgSend_scope(self, v10, v11, v12, v13);
  v18 = sub_2761A17CC(&v30, v14, v15, v16, v17);
  v23 = objc_msgSend_variable(self, v19, v20, v21, v22);
  v28 = objc_msgSend_stringWithFormat_(v3, v24, v25, v26, v27, @"%@(%@, %@, %@)", v4, v9, v18, v23);

  return v28;
}

- (id)inputVariableName
{
  isAttribute = objc_msgSend_isAttribute(self, a2, v2, v3, v4);
  v7 = &stru_288528678;
  if (isAttribute)
  {
    v7 = @"Array";
  }

  v8 = v7;
  v9 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_name(self, v10, v11, v12, v13);
  v19 = objc_msgSend_stringWithFormat_(v9, v15, v16, v17, v18, @"%@%@", v14, v8);

  return v19;
}

@end