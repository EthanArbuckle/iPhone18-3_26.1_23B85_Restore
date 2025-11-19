@interface VFXMetalLibraryProvider
- (id)iniWithBlock:(id)a3;
- (id)iniWithLibrary:(id)a3;
- (id)iniWithLibraryURL:(id)a3;
- (id)libraryForDevice:(id)a3;
- (unint64_t)_libraryHash;
- (void)dealloc;
@end

@implementation VFXMetalLibraryProvider

- (void)dealloc
{
  _Block_release(self->_block);
  v3.receiver = self;
  v3.super_class = VFXMetalLibraryProvider;
  [(VFXMetalLibraryProvider *)&v3 dealloc];
}

- (id)iniWithLibrary:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXMetalLibraryProvider;
  v4 = [(VFXMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_library = a3;
  }

  return v4;
}

- (id)iniWithLibraryURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXMetalLibraryProvider;
  v4 = [(VFXMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_libraryURL = a3;
  }

  return v4;
}

- (id)iniWithBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = VFXMetalLibraryProvider;
  v4 = [(VFXMetalLibraryProvider *)&v6 init];
  if (v4)
  {
    v4->_block = _Block_copy(a3);
  }

  return v4;
}

- (id)libraryForDevice:(id)a3
{
  v6 = objc_msgSend_device(self->_library, a2, a3, v3);
  v10 = objc_msgSend_registryID(v6, v7, v8, v9);
  if (v10 == objc_msgSend_registryID(a3, v11, v12, v13))
  {
    return self->_library;
  }

  block = self->_block;
  if (!block || (result = block[2](block, a3)) == 0)
  {
    libraryURL = self->_libraryURL;
    if (libraryURL)
    {
      v21 = 0;
      v18 = objc_msgSend_newLibraryWithURL_error_(a3, v14, libraryURL, &v21);
      if (v18)
      {
        return v18;
      }

      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF860C();
      }
    }

    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8684();
    }

    return 0;
  }

  return result;
}

- (unint64_t)_libraryHash
{
  library = self->_library;
  if (library || (library = self->_block) != 0 || (library = self->_libraryURL) != 0)
  {

    return CFHash(library);
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF86F8();
    }

    return 0;
  }
}

@end