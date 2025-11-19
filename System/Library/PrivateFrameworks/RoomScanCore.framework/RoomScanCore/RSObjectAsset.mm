@interface RSObjectAsset
- (RSObjectAsset)init;
- (RSObjectAsset)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RSObjectAsset

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  objc_msgSend_encodeObject_forKey_(v6, v4, self->_objects, @"objects");
  objc_msgSend_encodeObject_forKey_(v6, v5, self->_groups, @"groups");
}

- (RSObjectAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = RSObjectAsset;
  v5 = [(RSObjectAsset *)&v30 init];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
  v12 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v10, @"groups");
  v15 = objc_msgSend_mutableCopy(v12, v13, v14);

  v18 = objc_msgSend_mutableCopy(v15, v16, v17);
  groups = v5->_groups;
  v5->_groups = v18;

  v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v10, @"objects");
  v24 = objc_msgSend_mutableCopy(v21, v22, v23);

  v27 = objc_msgSend_mutableCopy(v24, v25, v26);
  objects = v5->_objects;
  v5->_objects = v27;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RSObjectAsset);
  v7 = objc_msgSend_mutableCopy(self->_groups, v5, v6);
  groups = v4->_groups;
  v4->_groups = v7;

  v11 = objc_msgSend_mutableCopy(self->_objects, v9, v10);
  objects = v4->_objects;
  v4->_objects = v11;

  return v4;
}

- (RSObjectAsset)init
{
  v8.receiver = self;
  v8.super_class = RSObjectAsset;
  v2 = [(RSObjectAsset *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groups = v2->_groups;
    v2->_groups = v3;

    v5 = objc_opt_new();
    objects = v2->_objects;
    v2->_objects = v5;
  }

  return v2;
}

@end