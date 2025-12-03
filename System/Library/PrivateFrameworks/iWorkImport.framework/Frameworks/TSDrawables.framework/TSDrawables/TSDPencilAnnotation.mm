@interface TSDPencilAnnotation
- (TSDDrawableInfo)parent;
- (TSDPencilAnnotation)initWithContext:(id)context pencilAnnotationStorage:(id)storage;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSDPencilAnnotation

- (TSDPencilAnnotation)initWithContext:(id)context pencilAnnotationStorage:(id)storage
{
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = TSDPencilAnnotation;
  v8 = [(TSDPencilAnnotation *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pencilAnnotationStorage, storage);
  }

  return v9;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_pencilAnnotationStorage(self, v6, v7);
  v10 = objc_msgSend_initWithContext_pencilAnnotationStorage_(v5, v9, contextCopy, v8);

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_context(self, a2, zone);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = unarchiverCopy;
  if (*(archive + 16))
  {
    v8 = *(archive + 3);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276797DE0;
    v12[3] = &unk_27A6CDD10;
    v12[4] = self;
    v9 = unarchiverCopy;
    v10 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v12);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[122]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276798088, off_2812F5188[122]);

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

    objc_msgSend_setStrongReference_message_(archiverCopy, v11, v12, v13);
  }
}

- (TSDDrawableInfo)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end