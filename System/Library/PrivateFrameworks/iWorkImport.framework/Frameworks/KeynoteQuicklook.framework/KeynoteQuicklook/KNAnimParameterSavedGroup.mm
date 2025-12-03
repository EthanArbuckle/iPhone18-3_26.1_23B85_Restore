@interface KNAnimParameterSavedGroup
- (KNAnimParameterSavedGroup)init;
- (KNAnimParameterSavedGroup)initWithCoder:(id)coder;
- (id)parameterForName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KNAnimParameterSavedGroup

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_name(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"nm");

  v11 = objc_msgSend_version(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"vers");

  v16 = objc_msgSend_parameters(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v16, @"params");
}

- (KNAnimParameterSavedGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = KNAnimParameterSavedGroup;
  v5 = [(KNAnimParameterSavedGroup *)&v32 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"nm");
    v11 = objc_msgSend_copy(v8, v9, v10);
    name = v5->_name;
    v5->_name = v11;

    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v13, @"vers");
    v18 = objc_msgSend_copy(v15, v16, v17);
    version = v5->_version;
    v5->_version = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v25 = objc_msgSend_setWithObjects_(v20, v24, v21, v22, v23, 0);
    v27 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v26, v25, @"params");
    parameters = v5->_parameters;
    v5->_parameters = v27;

    if (!v5->_parameters)
    {
      v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v30 = v5->_parameters;
      v5->_parameters = v29;
    }
  }

  return v5;
}

- (KNAnimParameterSavedGroup)init
{
  v6.receiver = self;
  v6.super_class = KNAnimParameterSavedGroup;
  v2 = [(KNAnimParameterSavedGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parameters = v2->_parameters;
    v2->_parameters = v3;
  }

  return v2;
}

- (id)parameterForName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_parameters(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, nameCopy);

  return v9;
}

@end