@interface VFXFileAsset
- (VFXFileAsset)initWithCoder:(id)coder;
- (VFXFileAsset)initWithFileNamed:(id)named entityObject:(id)object;
- (id)absolutePath;
- (id)copyWithFilename:(id)filename;
- (void)copyTo:(id)to withContext:(id)context;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAbsolutePath:(id)path;
- (void)setFileName:(id)name;
@end

@implementation VFXFileAsset

- (VFXFileAsset)initWithFileNamed:(id)named entityObject:(id)object
{
  v10.receiver = self;
  v10.super_class = VFXFileAsset;
  v5 = [(VFXCoreAsset *)&v10 initWithEntityObject:object];
  if (v5)
  {
    namedCopy = named;
    v5->_filename = namedCopy;
    objc_msgSend_setName_(v5, v7, namedCopy, v8);
  }

  return v5;
}

- (void)setFileName:(id)name
{
  filename = self->_filename;
  if (filename != name)
  {

    nameCopy = name;
    self->_filename = nameCopy;

    objc_msgSend_setName_(self, v6, nameCopy, v8);
  }
}

- (id)absolutePath
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_absolutePath, v9, v10);
}

- (void)setAbsolutePath:(id)path
{
  v5 = objc_msgSend_entityObject(self, a2, path, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setAbsolutePath_, path, v10);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXFileAsset;
  [(VFXCoreAsset *)&v3 dealloc];
}

- (void)copyTo:(id)to withContext:(id)context
{
  v9.receiver = self;
  v9.super_class = VFXFileAsset;
  [(VFXCoreAsset *)&v9 copyTo:to withContext:context];

  *(to + 6) = objc_msgSend_filename(self, v6, v7, v8);
}

- (id)copyWithFilename:(id)filename
{
  v5 = objc_msgSend_copy(self, a2, filename, v3);
  v6 = v5;
  if (v5)
  {

    v6[6] = filename;
  }

  return v6;
}

- (VFXFileAsset)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = VFXFileAsset;
  v4 = [(VFXCoreAsset *)&v19 initWithCoder:?];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"filename");
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = objc_opt_class();
      v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"path");
      if (v11)
      {
        PathComponent = v11;
        if (objc_msgSend_hasPrefix_(v11, v12, @"/", v13))
        {
          PathComponent = objc_msgSend_lastPathComponent(PathComponent, v15, v16, v17);
        }

        v8 = PathComponent;
      }

      else
      {
        v8 = &stru_1F2575650;
      }
    }

    v4->_filename = &v8->isa;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  filename = self->_filename;
  if (filename)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, filename, @"filename");
  }

  v6.receiver = self;
  v6.super_class = VFXFileAsset;
  [(VFXCoreAsset *)&v6 encodeWithCoder:coder];
}

@end