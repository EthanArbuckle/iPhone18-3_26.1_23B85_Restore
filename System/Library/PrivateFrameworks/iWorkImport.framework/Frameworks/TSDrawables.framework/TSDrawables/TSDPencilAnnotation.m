@interface TSDPencilAnnotation
- (TSDDrawableInfo)parent;
- (TSDPencilAnnotation)initWithContext:(id)a3 pencilAnnotationStorage:(id)a4;
- (id)copyWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSDPencilAnnotation

- (TSDPencilAnnotation)initWithContext:(id)a3 pencilAnnotationStorage:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSDPencilAnnotation;
  v8 = [(TSDPencilAnnotation *)&v11 initWithContext:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pencilAnnotationStorage, a4);
  }

  return v9;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_pencilAnnotationStorage(self, v6, v7);
  v10 = objc_msgSend_initWithContext_pencilAnnotationStorage_(v5, v9, v4, v8);

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_context(self, a2, a3);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (*(a3 + 16))
  {
    v8 = *(a3 + 3);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276797DE0;
    v12[3] = &unk_27A6CDD10;
    v12[4] = self;
    v9 = v6;
    v10 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v12);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812F5188[122]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v15 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v15, v4, sub_276798088, off_2812F5188[122]);

  v8 = objc_msgSend_pencilAnnotationStorage(self, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_pencilAnnotationStorage(self, v9, v10);
    *(v5 + 16) |= 1u;
    v13 = *(v5 + 24);
    if (!v13)
    {
      v14 = *(v5 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C9BB20](v14);
      *(v5 + 24) = v13;
    }

    objc_msgSend_setStrongReference_message_(v15, v11, v12, v13);
  }
}

- (TSDDrawableInfo)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end