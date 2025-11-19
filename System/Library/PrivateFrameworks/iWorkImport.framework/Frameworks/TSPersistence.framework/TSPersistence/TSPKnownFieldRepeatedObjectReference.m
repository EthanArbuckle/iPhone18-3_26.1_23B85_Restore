@interface TSPKnownFieldRepeatedObjectReference
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldRepeatedObjectReference

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TSPKnownFieldRepeatedObjectReference;
  [(TSPKnownField *)&v7 loadFromUnarchiver:v4];
  if (self->super._values.current_size_ >= 1)
  {
    objc_msgSend_strongReferences(v4, v5, v6);
    operator new();
  }
}

- (void)saveToArchiver:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = TSPKnownFieldRepeatedObjectReference;
  [(TSPKnownField *)&v35 saveToArchiver:v4];
  if (objc_msgSend_count(self->_strongObjects, v5, v6))
  {
    TSP::Reference::Reference(v34, 0);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = objc_msgSend_references(self->_strongObjects, v9, v10);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v37, 16);
    if (v14)
    {
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_setStrongLazyReference_message_(v4, v13, *(*(&v30 + 1) + 8 * v16++), v34);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v30, v37, 16);
      }

      while (v14);
    }

    TSP::Reference::~Reference(v34);
  }

  if (objc_msgSend_count(self->_weakObjects, v7, v8))
  {
    TSP::Reference::Reference(v34, 0);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = objc_msgSend_references(self->_weakObjects, v17, v18, 0);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v26, v36, 16);
    if (v22)
    {
      v23 = *v27;
      do
      {
        v24 = 0;
        do
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v19);
          }

          objc_msgSend_setWeakLazyReference_message_(v4, v21, *(*(&v26 + 1) + 8 * v24++), v34);
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v26, v36, 16);
      }

      while (v22);
    }

    TSP::Reference::~Reference(v34);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v20.receiver = self;
  v20.super_class = TSPKnownFieldRepeatedObjectReference;
  v4 = [(TSPKnownField *)&v20 debugDescription];
  v7 = objc_msgSend_references(self->_strongObjects, v5, v6);
  v10 = objc_msgSend_debugDescription(v7, v8, v9);
  v13 = objc_msgSend_references(self->_weakObjects, v11, v12);
  v16 = objc_msgSend_debugDescription(v13, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v3, v17, @"%@ strong_objects: %@; weak_objects: %@", v4, v10, v16);;

  return v18;
}

@end