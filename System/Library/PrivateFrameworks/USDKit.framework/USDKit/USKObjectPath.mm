@interface USKObjectPath
- (BOOL)isEqual:(id)equal;
- (SdfPath)path;
- (USKObjectPath)init;
- (USKObjectPath)initWithSdfPath:(SdfPath)path;
- (USKObjectPath)initWithString:(id)string;
- (USKObjectPath)initWithToken:(id)token;
- (id).cxx_construct;
- (id)nodePath;
- (id)pathByAppendingPropertyComponent:(id)component;
- (id)propertyName;
- (id)stringValue;
- (id)tokenValue;
@end

@implementation USKObjectPath

- (SdfPath)path
{
  v4 = sub_2703256DC(v2, &self->_path) + 1;

  v5 = sub_270325728(v4, &self->_path._primPart._poolHandle + 1);
  result._propPart._poolHandle = v6;
  result._primPart._poolHandle = v5;
  return result;
}

- (USKObjectPath)init
{
  sub_27035CAC4();
  v7.receiver = self;
  v7.super_class = USKObjectPath;
  v3 = [(USKObjectPath *)&v7 init];
  if (v3)
  {
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    sub_270325804(&v3->_path, &v6);
    sub_27032585C(&v3->_path._primPart._poolHandle + 4, &v6 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v6);
    v4 = v3;
  }

  return v3;
}

- (USKObjectPath)initWithSdfPath:(SdfPath)path
{
  poolHandle = path._primPart._poolHandle;
  sub_27035CAC4();
  v9.receiver = self;
  v9.super_class = USKObjectPath;
  v5 = [(USKObjectPath *)&v9 init];
  v6 = v5;
  if (v5)
  {
    sub_27032787C(&v5->_path, poolHandle);
    sub_2703278D4(&v6->_path._primPart._poolHandle + 4, poolHandle + 1);
    v7 = v6;
  }

  return v6;
}

- (USKObjectPath)initWithString:(id)string
{
  stringCopy = string;
  sub_27035CAC4();
  v19.receiver = self;
  v19.super_class = USKObjectPath;
  v5 = [(USKObjectPath *)&v19 init];
  if (v5)
  {
    v6 = stringCopy;
    v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_270312990();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    v16 = v11;
    if (v11)
    {
      memmove(&__p, v10, v11);
    }

    *(&__p + v12) = 0;
    MEMORY[0x27439E5E0](&v17, &__p);
    sub_270325804(&v5->_path, &v17);
    sub_27032585C(&v5->_path._primPart._poolHandle + 4, &v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v17);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    v13 = v5;
  }

  return v5;
}

- (USKObjectPath)initWithToken:(id)token
{
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = USKObjectPath;
  v5 = [(USKObjectPath *)&v16 init];
  v9 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  if (!tokenCopy)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v5 = objc_msgSend_token(tokenCopy, v6, v7, v8);
  if ((v13 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
LABEL_6:
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
    goto LABEL_7;
  }

  EmptyString = (v13 & 0xFFFFFFFFFFFFFFF8) + 16;
LABEL_7:
  MEMORY[0x27439E5E0](&v14, EmptyString);
  sub_270325804(&v9->_path, &v14);
  sub_27032585C(&v9->_path._primPart._poolHandle + 4, &v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = v9;
LABEL_10:

  return v9;
}

- (id)stringValue
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v3 = MEMORY[0x277CCACA8];
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&self->_path);
    if (*(String + 23) >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v3, v5, String, v6);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v3, v5, *String, v6);
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pathByAppendingPropertyComponent:(id)component
{
  componentCopy = component;
  v18 = 0;
  v5 = componentCopy;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  MEMORY[0x27439E610](&v17, v9);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v18, &self->_path, &v17);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = [USKObjectPath alloc];
  sub_2703256DC(&v15, &v18);
  sub_270325728(&v16, &v18 + 1);
  v13 = objc_msgSend_initWithSdfPath_(v10, v11, &v15, v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v18);

  return v13;
}

- (id)tokenValue
{
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v3 = [USKToken alloc];
    v6 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(&self->_path);
    v10 = v6;
    if ((v6 & 7) != 0)
    {
      v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 = v7;
      }
    }

    v8 = objc_msgSend_initWithTfToken_(v3, v4, &v10, v5);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nodePath
{
  v3 = [USKObjectPath alloc];
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v8, &self->_path);
  v6 = objc_msgSend_initWithSdfPath_(v3, v4, &v8, v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v8);

  return v6;
}

- (id)propertyName
{
  v3 = [USKToken alloc];
  pxrInternal__aapl__pxrReserved__::SdfPath::GetElementToken(&v8, &self->_path);
  v6 = objc_msgSend_initWithTfToken_(v3, v4, &v8, v5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_path(v5, v6, v7, v8);
    poolHandle = self->_path._primPart._poolHandle;
    v10 = v13;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    v11 = poolHandle == v10;
    sub_2703143D8(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id).cxx_construct
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  return self;
}

@end