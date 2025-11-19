@interface VFXPrefab
+ (id)prefabWithAsset:(id)a3;
- (NSString)description;
- (VFXPrefab)init;
- (VFXPrefab)initWithAsset:(id)a3;
- (VFXPrefab)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reload:(id)a3 options:(unint64_t)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
@end

@implementation VFXPrefab

- (VFXPrefab)initWithAsset:(id)a3
{
  v9.receiver = self;
  v9.super_class = VFXPrefab;
  v4 = [(VFXPrefab *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setSource_(v4, v5, a3, v6);
  }

  return v7;
}

- (VFXPrefab)init
{
  v3.receiver = self;
  v3.super_class = VFXPrefab;
  return [(VFXPrefab *)&v3 init];
}

+ (id)prefabWithAsset:(id)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithAsset_(v4, v5, a3, v6);

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPrefab;
  [(VFXPrefab *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_msgSend_copyTo_withContext_(self, v5, v4, 0);
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p source=%@>", v7, v5, self, self->_source);
}

- (id)reload:(id)a3 options:(unint64_t)a4
{
  v7 = objc_msgSend_source(self, a2, a3, a4);
  v10 = objc_msgSend_instantiate_(v7, v8, 0, v9);
  v13 = v10;
  if (!a3 || (a4 & 0x80) != 0)
  {
    objc_msgSend_setPrefab_(v10, v11, self, v12);
    if (!a3)
    {
      objc_msgSend_setHidden_(v13, v16, 0, v18);
      return v13;
    }
  }

  else
  {
    v14 = objc_alloc_init(VFXPrefabUpdater);
    objc_msgSend_updatePrefab_withNewPrefab_options_(v14, v15, a3, v13, a4);
    v13 = 0;
  }

  objc_msgSend_position(a3, v16, v17, v18);
  objc_msgSend_setPosition_(v13, v19, v20, v21);
  isHidden = objc_msgSend_isHidden(a3, v22, v23, v24);
  objc_msgSend_setHidden_(v13, v26, isHidden, v27);
  return v13;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  source = self->_source;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF3160F8;
  v5[3] = &unk_1E7A7C0C8;
  v5[4] = self;
  (*(a4 + 2))(a4, source, 1, v5);
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  if (source)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, source, @"source");
  }
}

- (VFXPrefab)initWithCoder:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VFXPrefab;
  v4 = [(VFXPrefab *)&v16 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v17, 1);
    v10 = objc_msgSend_setWithArray_(v5, v8, v7, v9);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v11, v10, @"source");
    objc_msgSend_setSource_(v4, v13, v12, v14);
  }

  return v4;
}

@end