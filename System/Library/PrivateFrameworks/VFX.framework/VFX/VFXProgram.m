@interface VFXProgram
+ (VFXProgram)programWithLibrary:(id)a3;
+ (id)program;
- (VFXProgram)init;
- (VFXProgram)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleBindingOfBufferNamed:(id)a3 frequency:(int64_t)a4 usingBlock:(id)a5;
- (void)setFragmentFunctionName:(id)a3;
- (void)setLibrary:(id)a3;
- (void)setLibraryProvider:(id)a3;
- (void)setName:(id)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setSource:(id)a3;
- (void)setVertexFunctionName:(id)a3;
@end

@implementation VFXProgram

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXProgram;
  [(VFXProgram *)&v3 dealloc];
}

- (VFXProgram)init
{
  v3.receiver = self;
  v3.super_class = VFXProgram;
  result = [(VFXProgram *)&v3 init];
  if (result)
  {
    result->_opaque = 1;
  }

  return result;
}

- (void)setLibrary:(id)a3
{
  library = self->_library;
  if (library != a3)
  {

    self->_library = a3;
    v7 = [VFXMetalLibraryProvider alloc];
    self->_libraryProvider = objc_msgSend_iniWithLibrary_(v7, v8, a3, v9);
    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11, v12);

    objc_msgSend_postNotificationName_object_userInfo_(v13, v14, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setLibraryProvider:(id)a3
{
  if (self->_libraryProvider != a3)
  {

    self->_library = 0;
    self->_libraryProvider = a3;
    v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7, v8);

    objc_msgSend_postNotificationName_object_userInfo_(v9, v10, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setName:(id)a3
{
  if ((objc_msgSend_isEqualToString_(self->_name, a2, a3, v3) & 1) == 0)
  {

    self->_name = objc_msgSend_copy(a3, v6, v7, v8);
  }
}

+ (id)program
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (VFXProgram)programWithLibrary:(id)a3
{
  v4 = objc_alloc_init(a1);
  objc_msgSend_setLibrary_(v4, v5, a3, v6);
  return v4;
}

- (void)setOpaque:(BOOL)a3
{
  if (self->_opaque != a3)
  {
    self->_opaque = a3;
    v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3, v3);

    objc_msgSend_postNotificationName_object_userInfo_(v6, v7, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setVertexFunctionName:(id)a3
{
  if ((objc_msgSend_isEqualToString_(self->_vertexFunctionName, a2, a3, v3) & 1) == 0)
  {

    self->_vertexFunctionName = objc_msgSend_copy(a3, v6, v7, v8);
    v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10, v11);

    objc_msgSend_postNotificationName_object_userInfo_(v12, v13, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setFragmentFunctionName:(id)a3
{
  if ((objc_msgSend_isEqualToString_(self->_fragmentFunctionName, a2, a3, v3) & 1) == 0)
  {

    self->_fragmentFunctionName = objc_msgSend_copy(a3, v6, v7, v8);
    v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10, v11);

    objc_msgSend_postNotificationName_object_userInfo_(v12, v13, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)setSource:(id)a3
{
  if ((objc_msgSend_isEqualToString_(self->_source, a2, a3, v3) & 1) == 0)
  {

    self->_source = objc_msgSend_copy(a3, v6, v7, v8);
    v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10, v11);

    objc_msgSend_postNotificationName_object_userInfo_(v12, v13, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v8 = objc_msgSend_source(self, v5, v6, v7);
  objc_msgSend_setSource_(v4, v9, v8, v10);
  v14 = objc_msgSend_vertexFunctionName(self, v11, v12, v13);
  objc_msgSend_setVertexFunctionName_(v4, v15, v14, v16);
  v20 = objc_msgSend_fragmentFunctionName(self, v17, v18, v19);
  objc_msgSend_setFragmentFunctionName_(v4, v21, v20, v22);
  v26 = objc_msgSend_name(self, v23, v24, v25);
  objc_msgSend_setName_(v4, v27, v26, v28);
  v32 = objc_msgSend_library(self, v29, v30, v31);
  objc_msgSend_setLibrary_(v4, v33, v32, v34);
  v38 = objc_msgSend_libraryProvider(self, v35, v36, v37);
  objc_msgSend_setLibraryProvider_(v4, v39, v38, v40);
  return v4;
}

- (void)handleBindingOfBufferNamed:(id)a3 frequency:(int64_t)a4 usingBlock:(id)a5
{
  bufferBindings = self->_bufferBindings;
  if (a5)
  {
    if (!bufferBindings)
    {
      self->_bufferBindings = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v10 = objc_alloc_init(VFXBufferBinding);
    objc_msgSend_setName_(v10, v11, a3, v12);
    objc_msgSend_setFrequency_(v10, v13, a4, v14);
    v15 = _Block_copy(a5);
    objc_msgSend_setBlock_(v10, v16, v15, v17);
    objc_msgSend_setValue_forKey_(self->_bufferBindings, v18, v10, a3);

    v22 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20, v21);

    objc_msgSend_postNotificationName_object_userInfo_(v22, v23, @"VFXProgramDidChangeNotification", self, 0);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(bufferBindings, a2, a3, a4);
    v31 = objc_alloc_init(VFXBufferBinding);
    objc_msgSend_setName_(v31, v24, a3, v25);
    v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v26, v27, v28);
    objc_msgSend_postNotificationName_object_userInfo_(v29, v30, @"VFXProgramDidChangeNotification", self, 0);
  }
}

- (void)encodeWithCoder:(id)a3
{
  source = self->_source;
  if (source)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, source, @"source");
  }

  vertexFunctionName = self->_vertexFunctionName;
  if (vertexFunctionName)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, vertexFunctionName, @"vertexFunctionName");
  }

  fragmentFunctionName = self->_fragmentFunctionName;
  if (fragmentFunctionName)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, fragmentFunctionName, @"fragmentFunctionName");
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(a3, a2, name, @"name");
  }

  opaque = self->_opaque;

  objc_msgSend_encodeBool_forKey_(a3, a2, opaque, @"opaque");
}

- (VFXProgram)initWithCoder:(id)a3
{
  v39.receiver = self;
  v39.super_class = VFXProgram;
  v7 = [(VFXProgram *)&v39 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"source");
    objc_msgSend_setSource_(v7, v14, v13, v15);
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v17, v16, @"vertexFunctionName");
    objc_msgSend_setVertexFunctionName_(v7, v19, v18, v20);
    v21 = objc_opt_class();
    v23 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v22, v21, @"fragmentFunctionName");
    objc_msgSend_setFragmentFunctionName_(v7, v24, v23, v25);
    v26 = objc_opt_class();
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v27, v26, @"name");
    objc_msgSend_setName_(v7, v29, v28, v30);
    v33 = objc_msgSend_decodeBoolForKey_(a3, v31, @"opaque", v32);
    objc_msgSend_setOpaque_(v7, v34, v33, v35);
    objc_msgSend_setImmediateMode_(VFXTransaction, v36, v8, v37);
  }

  return v7;
}

@end