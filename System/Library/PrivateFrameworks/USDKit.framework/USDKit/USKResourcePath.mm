@interface USKResourcePath
- (BOOL)isEqual:(id)equal;
- (SdfAssetPath)sdfAssetPath;
- (USKResourcePath)initWithSdfAssetPath:(SdfAssetPath *)path;
- (id)path;
- (id)resolvedPath;
- (unint64_t)hash;
@end

@implementation USKResourcePath

- (SdfAssetPath)sdfAssetPath
{
  v2 = result;
  if (*(&result->var1 + 3) < 0)
  {
    result = sub_2703129A8(retstr, result->_assetPath.__rep_.__l.__size_, *(&result->_assetPath.__rep_.__l + 2));
  }

  else
  {
    *retstr->_assetPath.__rep_.__s.__data_ = *&result->_assetPath.__rep_.__l.__size_;
    *(&retstr->_assetPath.__rep_.__l + 2) = *&result->var0;
  }

  if (*(&v2[1]._assetPath.__rep_.__l + 23) < 0)
  {
    return sub_2703129A8(&retstr->var0, v2[1]._assetPath.__rep_.__l.__data_, v2[1]._assetPath.__rep_.__l.__size_);
  }

  *&retstr->var0 = *v2[1]._assetPath.__rep_.__s.__data_;
  retstr[1]._assetPath.__rep_.__l.__size_ = *(&v2[1]._assetPath.__rep_.__l + 2);
  return result;
}

- (USKResourcePath)initWithSdfAssetPath:(SdfAssetPath *)path
{
  v8.receiver = self;
  v8.super_class = USKResourcePath;
  v4 = [(USKResourcePath *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=((v4 + 8), path);
    std::string::operator=((v5 + 32), &path->var0);
    v6 = v5;
  }

  return v5;
}

- (id)path
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (*(&self->_path._assetPath.__rep_.__l + 23) < 0)
  {
    sub_2703129A8(__p, self->_path._assetPath.__rep_.__l.__data_, self->_path._assetPath.__rep_.__l.__size_);
  }

  else
  {
    *__p = *self->_path._assetPath.__rep_.__s.__data_;
    v6 = *(&self->_path._assetPath.__rep_.__l + 2);
  }

  if (v6 >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, __p, v2, __p[0], __p[1], v6);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, __p[0], v2, __p[0], __p[1], v6);
  }
  v3 = ;
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

- (id)resolvedPath
{
  __p[0] = 0;
  __p[1] = 0;
  data = 0;
  if (self[1]._path._assetPath.__rep_.__s.__data_[7] < 0)
  {
    sub_2703129A8(__p, *&self->_path.var0, self[1].super.isa);
  }

  else
  {
    *__p = *&self->_path.var0;
    data = self[1]._path._assetPath.__rep_.__l.__data_;
  }

  if (SHIBYTE(data) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, __p, v2, __p[0], __p[1], data);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, __p[0], v2, __p[0], __p[1], data);
  }
  v3 = ;
  if (SHIBYTE(data) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v23 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_sdfAssetPath(v5, v6, v7, v8);
        v9 = *(&self->_path._assetPath.__rep_.__l + 23);
        if (v9 >= 0)
        {
          size = *(&self->_path._assetPath.__rep_.__l + 23);
        }

        else
        {
          size = self->_path._assetPath.__rep_.__l.__size_;
        }

        v11 = v26;
        v12 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v11 = v25[1];
        }

        if (size != v11)
        {
          goto LABEL_32;
        }

        v13 = v9 >= 0 ? &self->_path : self->_path._assetPath.__rep_.__l.__data_;
        v14 = (v26 & 0x80u) == 0 ? v25 : v25[0];
        if (memcmp(v13, v14, size))
        {
          goto LABEL_32;
        }

        v15 = self[1]._path._assetPath.__rep_.__s.__data_[7];
        if (v15 >= 0)
        {
          isa = self[1]._path._assetPath.__rep_.__s.__data_[7];
        }

        else
        {
          isa = self[1].super.isa;
        }

        v17 = v28;
        if ((v28 & 0x80u) != 0)
        {
          v17 = __p[1];
        }

        if (isa == v17)
        {
          v20 = *&self->_path.var0;
          p_var0 = &self->_path.var0;
          v18 = v20;
          if (v15 >= 0)
          {
            v21 = p_var0;
          }

          else
          {
            v21 = v18;
          }

          if ((v28 & 0x80u) == 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          v23 = memcmp(v21, v22, isa) == 0;
        }

        else
        {
LABEL_32:
          v23 = 0;
        }

        if (v28 < 0)
        {
          operator delete(__p[0]);
          if ((v26 & 0x80) == 0)
          {
            goto LABEL_35;
          }
        }

        else if ((v12 & 0x80) == 0)
        {
          goto LABEL_35;
        }

        operator delete(v25[0]);
        goto LABEL_35;
      }
    }

    v23 = 0;
  }

LABEL_35:

  return v23;
}

- (unint64_t)hash
{
  v3[0] = 0;
  v3[1] = 0;
  sub_27032A8D8(v3, self->_path._assetPath.__rep_.__s.__data_, &self->_path.var0);
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

@end