@interface VFXMTLLibrary
- (VFXMTLLibrary)initWithPath:(id)path manager:(id)manager;
- (void)_load;
- (void)dealloc;
@end

@implementation VFXMTLLibrary

- (VFXMTLLibrary)initWithPath:(id)path manager:(id)manager
{
  v24.receiver = self;
  v24.super_class = VFXMTLLibrary;
  v8 = [(VFXMTLLibrary *)&v24 init];
  if (v8)
  {
    if (path)
    {
      v9 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v6, path, v7);
    }

    else
    {
      v9 = 0;
    }

    v8->_libraryURL = v9;
    objc_storeWeak(&v8->_manager, manager);
    v23 = 0;
    v13 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11, v12);
    v15 = objc_msgSend_attributesOfItemAtPath_error_(v13, v14, path, &v23);
    v18 = objc_msgSend_objectForKey_(v15, v16, *MEMORY[0x1E696A350], v17);
    if (v23 || !v18)
    {
      v18 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v19, v20, v21);
    }

    v8->_lastModificationDate = v18;
    objc_msgSend__load(v8, v19, v20, v21);
  }

  return v8;
}

- (void)dealloc
{
  objc_storeWeak(&self->_manager, 0);

  v3.receiver = self;
  v3.super_class = VFXMTLLibrary;
  [(VFXMTLLibrary *)&v3 dealloc];
}

- (void)_load
{
  p_libraryURL = &self->_libraryURL;
  libraryURL = self->_libraryURL;
  self->_library = 0;
  if (libraryURL)
  {
    v11 = 0;
    v7 = objc_msgSend_device(self->_manager, a2, v2, v3);
    v9 = objc_msgSend_newLibraryWithURL_error_(v7, v8, self->_libraryURL, &v11);
    self->_library = v9;
    if (!v9)
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5B1C(p_libraryURL, &v11, v10);
      }
    }
  }
}

@end