uint64_t ctu::bitfield(unsigned int a1, unsigned int a2)
{
  if ((BYTE1(a2) - a2) > 7u)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 0xFu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 0x1Fu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 0x1Fu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

uint64_t ctu::bitfield(unsigned __int8 a1, unsigned int a2)
{
  if ((BYTE1(a2) - a2) > 7u)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 7u)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

uint64_t ctu::bitfield(unsigned __int16 a1, unsigned int a2)
{
  if ((BYTE1(a2) - a2) > 0xFu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

uint64_t ctu::bitfield(unint64_t a1, unsigned int a2)
{
  if ((BYTE1(a2) - a2) > 0x3Fu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 0x3Fu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 0x3Fu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

{
  if ((BYTE1(a2) - a2) > 0x3Fu)
  {
    return 0;
  }

  v2 = 0;
  v3 = (a2 >> 8) - a2 + 1;
  do
  {
    v2 = (2 * v2) | 1;
    --v3;
  }

  while (v3);
  return v2 & (a1 >> a2);
}

void ctu::bitfieldPrettyPrint(unsigned int a1@<W0>, unsigned __int16 a2@<W1>, std::string::value_type a3@<W2>, unint64_t a4@<X8>)
{
  ctu::to_bitfieldPrettyPrint<unsigned char>(a1, a2, a3, a4);
}

{
  ctu::bitfieldPrettyPrint(a1, a2, a3, a4);
}

void ctu::to_bitfieldPrettyPrint<unsigned char>(unsigned int a1@<W0>, unint64_t a2@<X1>, std::string::value_type a3@<W2>, unint64_t a4@<X8>)
{
  v4 = a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if ((((a2 >> 8) - a2) & 0xF8) == 0)
  {
    v6 = a2;
    if ((BYTE1(a2) - a2) > 7u)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v8 = (a2 >> 8) - a2 + 1;
      do
      {
        v7 = (2 * v7) | 1;
        --v8;
      }

      while (v8);
      v9 = v7 & (a1 >> a2);
    }

    std::string::resize(a4, 8uLL, a3);
    if (BYTE1(v4) >= v6)
    {
      v10 = 1;
      v11 = v4 >> 8;
      do
      {
        if ((v10 & v9) != 0)
        {
          v12 = 49;
        }

        else
        {
          v12 = 48;
        }

        if (*(a4 + 23) >= 0)
        {
          v13 = a4;
        }

        else
        {
          v13 = *a4;
        }

        *(v13 + v4) = v12;
        v10 = 2 * v10;
        ++v4;
      }

      while (v4 <= v11);
    }

    v14 = *(a4 + 23);
    v15 = v14 < 0;
    if (v14 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if (v15)
    {
      v17 = *(a4 + 8);
    }

    else
    {
      v17 = *(a4 + 23);
    }

    v18 = (v16 + v17 - 1);
    if (v17)
    {
      v19 = v18 > v16;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = v16 + 1;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v18;
        *v18-- = v21;
      }

      while (v20++ < v18);
    }
  }
}

void sub_1A90F0DD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::bitfieldPrettyPrint(unsigned __int8 a1@<W0>, unsigned __int16 a2@<W1>, std::string::value_type a3@<W2>, unint64_t a4@<X8>)
{
  ctu::to_bitfieldPrettyPrint<unsigned char>(a1, a2, a3, a4);
}

{
  ctu::to_bitfieldPrettyPrint<unsigned char>(a1, a2, a3, a4);
}

void ctu::to_bitfieldPrettyPrint<unsigned short>(std::string *this, unsigned int a2, unint64_t a3, std::string::value_type __c)
{
  v4 = a3;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if ((((a3 >> 8) - a3) & 0xF0) == 0)
  {
    v6 = a3;
    if ((BYTE1(a3) - a3) > 0xFu)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v7 = 0;
      v8 = (a3 >> 8) - a3 + 1;
      do
      {
        v7 = (2 * v7) | 1;
        --v8;
      }

      while (v8);
      v9 = v7 & (a2 >> a3);
    }

    std::string::resize(this, 0x10uLL, __c);
    if (BYTE1(v4) >= v6)
    {
      v10 = 1;
      v11 = v4 >> 8;
      do
      {
        if ((v10 & v9) != 0)
        {
          v12 = 49;
        }

        else
        {
          v12 = 48;
        }

        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = this;
        }

        else
        {
          v13 = this->__r_.__value_.__r.__words[0];
        }

        v13->__r_.__value_.__s.__data_[v4] = v12;
        v10 *= 2;
        ++v4;
      }

      while (v4 <= v11);
    }

    v14 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    v15 = v14 < 0;
    if (v14 >= 0)
    {
      v16 = this;
    }

    else
    {
      v16 = this->__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    else
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    v18 = (v16 + size - 1);
    if (size)
    {
      v19 = v18 > v16;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = &v16->__r_.__value_.__s.__data_[1];
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = v18->__r_.__value_.__s.__data_[0];
        v18->__r_.__value_.__s.__data_[0] = v21;
        v18 = (v18 - 1);
      }

      while (v20++ < v18);
    }
  }
}

void sub_1A90F0F54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::bitfieldPrettyPrint(unsigned int a1@<W0>, int a2@<W1>, std::string::value_type a3@<W2>, unint64_t a4@<X8>)
{
  v5 = a2;
  v6 = BYTE1(a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (((BYTE1(a2) - a2) & 0xE0) == 0)
  {
    v7 = a2;
    v8 = a2;
    if ((BYTE1(a2) - a2) > 0x1Fu)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v9 = 0;
      v10 = BYTE1(a2) - a2 + 1;
      do
      {
        v9 = (2 * v9) | 1;
        --v10;
      }

      while (v10);
      v11 = v9 & (a1 >> a2);
    }

    std::string::resize(a4, 0x20uLL, a3);
    if (v8 <= v6)
    {
      v12 = 1;
      do
      {
        if ((v12 & v11) != 0)
        {
          v13 = 49;
        }

        else
        {
          v13 = 48;
        }

        if (*(a4 + 23) >= 0)
        {
          v14 = a4;
        }

        else
        {
          v14 = *a4;
        }

        *(v14 + v7) = v13;
        v12 *= 2;
        ++v7;
      }

      while ((v5 >> 8) >= v7);
    }

    v15 = *(a4 + 23);
    v16 = v15 < 0;
    if (v15 >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    if (v16)
    {
      v18 = *(a4 + 8);
    }

    else
    {
      v18 = *(a4 + 23);
    }

    v19 = (v17 + v18 - 1);
    if (v18)
    {
      v20 = v19 > v17;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = v17 + 1;
      do
      {
        v22 = *(v21 - 1);
        *(v21 - 1) = *v19;
        *v19-- = v22;
      }

      while (v21++ < v19);
    }
  }
}

void sub_1A90F10C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::bitfieldPrettyPrint(unint64_t a1@<X0>, int a2@<W1>, std::string::value_type a3@<W2>, unint64_t a4@<X8>)
{
  v5 = a2;
  v6 = BYTE1(a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (((BYTE1(a2) - a2) & 0xC0) == 0)
  {
    v7 = a2;
    if ((BYTE1(a2) - a2) > 0x3Fu)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v8 = 0;
      v9 = BYTE1(a2) - a2 + 1;
      do
      {
        v8 = (2 * v8) | 1;
        --v9;
      }

      while (v9);
      v10 = v8 & (a1 >> a2);
    }

    std::string::resize(a4, 0x40uLL, a3);
    if (v6 >= v5)
    {
      v11 = 1;
      do
      {
        if ((v11 & v10) != 0)
        {
          v12 = 49;
        }

        else
        {
          v12 = 48;
        }

        if (*(a4 + 23) >= 0)
        {
          v13 = a4;
        }

        else
        {
          v13 = *a4;
        }

        *(v13 + v7) = v12;
        v11 *= 2;
        ++v7;
      }

      while ((v5 >> 8) >= v7);
    }

    v14 = *(a4 + 23);
    v15 = v14 < 0;
    if (v14 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if (v15)
    {
      v17 = *(a4 + 8);
    }

    else
    {
      v17 = *(a4 + 23);
    }

    v18 = (v16 + v17 - 1);
    if (v17)
    {
      v19 = v18 > v16;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = v16 + 1;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v18;
        *v18-- = v21;
      }

      while (v20++ < v18);
    }
  }
}

{
  v5 = a2;
  v6 = BYTE1(a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (((BYTE1(a2) - a2) & 0xC0) == 0)
  {
    v7 = a2;
    if ((BYTE1(a2) - a2) > 0x3Fu)
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v8 = 0;
      v9 = BYTE1(a2) - a2 + 1;
      do
      {
        v8 = (2 * v8) | 1;
        --v9;
      }

      while (v9);
      v10 = v8 & (a1 >> a2);
    }

    std::string::resize(a4, 0x40uLL, a3);
    if (v6 >= v5)
    {
      v11 = 1;
      do
      {
        if ((v11 & v10) != 0)
        {
          v12 = 49;
        }

        else
        {
          v12 = 48;
        }

        if (*(a4 + 23) >= 0)
        {
          v13 = a4;
        }

        else
        {
          v13 = *a4;
        }

        *(v13 + v7) = v12;
        v11 *= 2;
        ++v7;
      }

      while ((v5 >> 8) >= v7);
    }

    v14 = *(a4 + 23);
    v15 = v14 < 0;
    if (v14 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if (v15)
    {
      v17 = *(a4 + 8);
    }

    else
    {
      v17 = *(a4 + 23);
    }

    v18 = (v16 + v17 - 1);
    if (v17)
    {
      v19 = v18 > v16;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v20 = v16 + 1;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v18;
        *v18-- = v21;
      }

      while (v20++ < v18);
    }
  }
}

void sub_1A90F121C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::bitfieldPrettyPrint(unint64_t a1@<X0>, unsigned __int16 a2@<W1>, std::string::value_type a3@<W2>, unint64_t a4@<X8>)
{
  ctu::bitfieldPrettyPrint(a1, a2, a3, a4);
}

{
  ctu::bitfieldPrettyPrint(a1, a2, a3, a4);
}

void sub_1A90F1378(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t ctu::MapRestResource::MapRestResource(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F1CB7178;
  std::__function::__value_func<std::unique_ptr<ctu::RestResourceBase> ()(std::string const&,xpc::object)>::__value_func[abi:ne200100](a1 + 8, a2);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

{
  *a1 = &unk_1F1CB7178;
  std::__function::__value_func<std::unique_ptr<ctu::RestResourceBase> ()(std::string const&,xpc::object)>::__value_func[abi:ne200100](a1 + 8, a2);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void ctu::MapRestResource::~MapRestResource(ctu::MapRestResource *this)
{
  *this = &unk_1F1CB7178;
  boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(this + 8);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = (*(this + 5) + 24);
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  if (*(this + 7))
  {
    operator delete(*(this + 5));
  }

  v5 = *(this + 4);
  if (v5 == (this + 8))
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }
}

{
  ctu::MapRestResource::~MapRestResource(this);

  operator delete(v1);
}

uint64_t ctu::MapRestResource::handleRestMessage_GET(ctu::MapRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v5 = *(a3 + 3);
  if (!v5)
  {
    ctu::MapRestResource::handleMessage_Root_GET(this, a2);
    return 1;
  }

  if (v5 != 1)
  {
    goto LABEL_13;
  }

  v7 = **(a3 + 2);
  if (v7 == 42)
  {
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29 = v11;
    *&__p.__r_.__value_.__l.__data_ = v11;
    v28 = v11;
    ctu::ReplyDictRestResourceContextDecorator::ReplyDictRestResourceContextDecorator(&v28, a2);
    v12 = *(this + 6);
    if (v12)
    {
      v13 = *(this + 5);
      v14 = v13 + 32 * v12;
      do
      {
        std::string::operator=(&__p, v13);
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31 = v15;
        v32 = v15;
        if (*(a3 + 3))
        {
          v16 = *a3;
          v17 = (*(a3 + 2) - *a3);
          v18 = v17 - 1;
          if (v17 > 1)
          {
            v17 = *(a3 + 1);
            if (v18 < v17)
            {
              v17 = v18;
            }
          }

          else if (v17 >= *(a3 + 1))
          {
            v17 = *(a3 + 1);
          }
        }

        else
        {
          v16 = *a3;
          v17 = *(a3 + 1);
        }

        v25[0] = v16;
        v25[1] = v17;
        ctu::splice_path_with_head<ctu::llvm::StringRef,std::string &,char const(&)[2]>(v26, v25, v13, "*", &v31);
        ctu::PathView::advance(&v31, 1);
        (*(**(v13 + 24) + 16))(*(v13 + 24), &v28, &v31);
        v13 += 32;
      }

      while (v13 != v14);
    }

    *&v28 = &unk_1F1CB6710;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(&v29 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v29 + 1));
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    return 1;
  }

  if (v7 != 95)
  {
LABEL_13:

    return ctu::MapRestResource::handleMessage_Resource(this, a2, a3);
  }

  v8 = *(a3 + 1);
  v31 = *a3;
  v32 = v8;
  v9 = ctu::PathView::advance(&v31, 1);
  if (!*(&v32 + 1))
  {
    ctu::MapRestResource::handleMessage_Meta_GET(v9, a2);
    return 1;
  }

  if (*(&v32 + 1) == 3)
  {
    if (*v32 == 27745 && *(v32 + 2) == 108)
    {
      __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v29 = v21;
      *&__p.__r_.__value_.__l.__data_ = v21;
      v28 = v21;
      ctu::ReplyDictRestResourceContextDecorator::ReplyDictRestResourceContextDecorator(&v28, a2);
      v22 = *(this + 6);
      if (v22)
      {
        v23 = *(this + 5);
        v24 = v23 + 32 * v22;
        do
        {
          std::string::operator=(&__p, v23);
          (*(**(v23 + 24) + 16))(*(v23 + 24), &v28, &v31);
          v23 += 32;
        }

        while (v23 != v24);
      }

      ctu::ReplyDictRestResourceContextDecorator::~ReplyDictRestResourceContextDecorator(&v28);
      return 1;
    }

    return 0;
  }

  if (*(&v32 + 1) != 6)
  {
    if (*(&v32 + 1) == 8 && *v32 == 0x7372656863746177)
    {
      if (v31 + *(&v31 + 1) == v32 + 8 || v32 + 9 == v31 + *(&v31 + 1))
      {
        ctu::MapRestResource::handleMessage_Watchers_GET(this, a2);
      }

      return 1;
    }

    return 0;
  }

  return *v32 == 1768189805 && *(v32 + 4) == 31078;
}

uint64_t ctu::MapRestResource::handleMessage_Root_GET(ctu::MapRestResource *this, ctu::RestResourceContext *a2)
{
  ctu::MapRestResource::getResourceList(this, &object);
  v5 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &v5);
  xpc_release(v5);
  v5 = 0;
  xpc_release(object);
  return 1;
}

void sub_1A90F19F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a9);
  _Unwind_Resume(a1);
}

uint64_t ctu::MapRestResource::handleMessage_Meta_GET(ctu::MapRestResource *this, ctu::RestResourceContext *a2)
{
  xpc::array_creator::array_creator(&object);
  xpc::array_creator::operator()<char const*>("watchers", &object, &v5);
  xpc_release(object);
  v3 = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &object);
  xpc_release(object);
  xpc_release(v3);
  return 1;
}

void sub_1A90F1ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t ctu::MapRestResource::handleMessage_Watchers_GET(ctu::MapRestResource *this, ctu::RestResourceContext *a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1AC581B70](v4) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (*(this + 9))
  {
    v6 = *(this + 8);
    do
    {
      v7 = v6[1];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = *v6;
          if (*v6)
          {
            v12 = *(v9 + 8);
            v10 = v9 + 8;
            v11 = v12;
            if (*(v10 + 23) >= 0)
            {
              v13 = v10;
            }

            else
            {
              v13 = v11;
            }

            v14 = xpc_string_create(v13);
            if (!v14)
            {
              v14 = xpc_null_create();
            }

            xpc_array_append_value(v5, v14);
            xpc_release(v14);
            v6 += 2;
LABEL_20:
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
            continue;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      object = v6;
      boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(this + 8, &object, &v16);
      v6 = v16;
      if (v8)
      {
        goto LABEL_20;
      }
    }

    while (v6 != (*(this + 8) + 16 * *(this + 9)));
  }

  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*a2 + 32))(a2, &object);
  xpc_release(object);
  xpc_release(v5);
  return 1;
}

void sub_1A90F1CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ctu::ReplyDictRestResourceContextDecorator::~ReplyDictRestResourceContextDecorator(void **this)
{
  *this = &unk_1F1CB6710;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_1F1CB6710;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_1F1CB6710;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

uint64_t ctu::splice_path_with_head<ctu::llvm::StringRef,std::string &,char const(&)[2]>@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  memset(&v20, 170, sizeof(v20));
  ctu::llvm::StringRef::operator std::string(a2, &v20);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  ctu::path_join_impl(&v20, v11, v12);
  v13 = strlen(a4);
  ctu::path_join_impl(&v20, a4, v13);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v20;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a5 = v14;
  *(a5 + 16) = v14;
  v15 = *(a1 + 23);
  if (v15 >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = *a1;
  }

  if (v15 >= 0)
  {
    v17 = *(a1 + 23);
  }

  else
  {
    v17 = *(a1 + 8);
  }

  v18 = ctu::PathView::PathView(a5, v16, v17);
  return ctu::PathView::skip(v18, *a2, a2[1]);
}

void sub_1A90F1E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::MapRestResource::handleMessage_Resource(void ***this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v5 = *(a3 + 1);
  v8[0] = *a3;
  v8[1] = v5;
  v9 = v5;
  ctu::PathView::advance(v8, 1);
  ctu::llvm::StringRef::operator std::string(&v9, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v12, this + 5, __p);
  v6 = v12;
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 == &this[5][4 * this[6]])
  {
    return 0;
  }

  else
  {
    return (*(**(v6 + 24) + 16))(*(v6 + 24), a2, v8);
  }
}

uint64_t ctu::MapRestResource::handleRestMessage_SET(void ***this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v3 = *(a3 + 3);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1 && **(a3 + 2) == 95)
  {
    v4 = *(a3 + 1);
    v8 = *a3;
    v9 = v4;
    v5 = 1;
    ctu::PathView::advance(&v8, 1);
    if (*(&v9 + 1))
    {
      if (*(&v9 + 1) == 6)
      {
        return *v9 == 1768189805 && *(v9 + 4) == 31078;
      }

      if (*(&v9 + 1) == 8)
      {
        return *v9 == 0x7372656863746177;
      }

      return 0;
    }

    return v5;
  }

  return ctu::MapRestResource::handleMessage_Resource(this, a2, a3);
}

uint64_t ctu::MapRestResource::handleRestMessage_POP(void ***this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v6 = *(a3 + 3);
  if (v6 == 1)
  {
    if (**(a3 + 2) == 95)
    {
      v8 = *(a3 + 1);
      v11 = *a3;
      v12 = v8;
      v7 = 1;
      ctu::PathView::advance(&v11, 1);
      if (*(&v12 + 1))
      {
        if (*(&v12 + 1) == 6 && (*v12 == 1768189805 ? (v9 = *(v12 + 4) == 31078) : (v9 = 0), v9))
        {
          v7 = 1;
          ctu::PathView::advance(&v11, 1);
          ctu::MapRestResource::handleMessage_Modify_POP(this, a2, a3, &v11);
        }

        else
        {
          return 0;
        }
      }

      return v7;
    }
  }

  else if (!v6)
  {
    ctu::MapRestResource::handleMessage_Root_POP(this, a2);
    return 1;
  }

  return ctu::MapRestResource::handleMessage_Resource(this, a2, a3);
}

uint64_t ctu::MapRestResource::handleMessage_Root_POP(ctu::MapRestResource *this, ctu::RestResourceContext *a2)
{
  (**a2)(&v8, a2);
  v3 = *(this + 8);
  if (*(this + 9))
  {
    do
    {
      v4 = v3[1];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        v6 = v5;
        if (v5 && *v3)
        {
          if (*v3 == v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v5);
            break;
          }

          v3 += 2;
LABEL_9:
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
          continue;
        }
      }

      else
      {
        v6 = 0;
      }

      v11 = v3;
      boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(this + 8, &v11, &v10);
      v3 = v10;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    while (v3 != (*(this + 8) + 16 * *(this + 9)));
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v3 != (*(this + 8) + 16 * *(this + 9)))
  {
    v8 = v3;
    boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(this + 8, &v8, &v11);
  }

  return 1;
}

void sub_1A90F2270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::MapRestResource::handleMessage_Modify_POP(void ***this, ctu::RestResourceContext *a2, const ctu::PathView *a3, const ctu::PathView *a4)
{
  v7 = *(a4 + 3);
  if (v7)
  {
    v8 = *(a4 + 2);
    v9 = (*a4 + *(a4 + 1));
    if (v9 != &v8[v7] && &v8[v7 + 1] != v9)
    {
      return 1;
    }
  }

  else
  {
    v8 = *(a4 + 2);
  }

  v26 = v8;
  v27 = v7;
  ctu::llvm::StringRef::operator std::string(&v26, __p);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::find(&v30, this + 5, __p);
  v11 = v30;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = &this[5][4 * this[6]];
  if (v11 != v12)
  {
    v13 = (v11 + 2);
    while (v13 != v12)
    {
      boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>::operator=(v11, v11 + 2);
      v13 = (v11 + 4);
      v11 += 2;
    }

    v14 = *(v12 - 8);
    *(v12 - 8) = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (*(v12 - 9) < 0)
    {
      operator delete(*(v12 - 32));
    }

    this[6] = (this[6] - 1);
    memset(__p, 170, sizeof(__p));
    if (*(a3 + 3))
    {
      v15 = *a3;
      v16 = *(a3 + 2) - *a3;
      v17 = v16 - 1;
      if (v16 > 1)
      {
        v16 = *(a3 + 1);
        if (v17 < v16)
        {
          v16 = v17;
        }
      }

      else if (v16 >= *(a3 + 1))
      {
        v16 = *(a3 + 1);
      }
    }

    else
    {
      v15 = *a3;
      v16 = *(a3 + 1);
    }

    v26 = v15;
    v27 = v16;
    ctu::llvm::StringRef::operator std::string(&v26, __p);
    object = 0xAAAAAAAAAAAAAAAALL;
    ctu::MapRestResource::getResourceList(this, &object);
    if (!this[9])
    {
LABEL_50:
      xpc_release(object);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      return 1;
    }

    v18 = this[8];
    while (1)
    {
      v19 = v18[1];
      if (!v19)
      {
        break;
      }

      v20 = std::__shared_weak_count::lock(v19);
      if (!v20)
      {
        goto LABEL_44;
      }

      v21 = *v18;
      if (!*v18)
      {
        goto LABEL_44;
      }

      if (v21[31] >= 0)
      {
        v22 = v21 + 8;
      }

      else
      {
        v22 = *(v21 + 1);
      }

      v26 = xpc_string_create(v22);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      v30 = xpc_string_create(v23);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      v29 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v29 = xpc_null_create();
      }

      (*(*a2 + 48))(a2, v21, &v26, &v30, &v29);
      xpc_release(v29);
      xpc_release(v30);
      xpc_release(v26);
      v18 += 2;
LABEL_48:
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
LABEL_49:
      if (v18 == &this[8][2 * this[9]])
      {
        goto LABEL_50;
      }
    }

    v20 = 0;
LABEL_44:
    v26 = v18;
    boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(this + 8, &v26, &v30);
    v18 = v30;
    if (!v20)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  return 1;
}

void sub_1A90F2570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, xpc_object_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::MapRestResource::handleRestMessage_PUSH(ctu::MapRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  v6 = *(a3 + 3);
  if (v6 == 1)
  {
    if (**(a3 + 2) == 95)
    {
      v8 = *(a3 + 1);
      v11 = *a3;
      v12 = v8;
      v7 = 1;
      ctu::PathView::advance(&v11, 1);
      if (*(&v12 + 1))
      {
        if (*(&v12 + 1) == 6 && (*v12 == 1768189805 ? (v9 = *(v12 + 4) == 31078) : (v9 = 0), v9))
        {
          v7 = 1;
          ctu::PathView::advance(&v11, 1);
          ctu::MapRestResource::handleMessage_Modify_PUSH(this, a2, a3, &v11);
        }

        else
        {
          return 0;
        }
      }

      return v7;
    }
  }

  else if (!v6)
  {
    ctu::MapRestResource::handleMessage_Root_PUSH(this, a2, a3);
    return 1;
  }

  return ctu::MapRestResource::handleMessage_Resource(this, a2, a3);
}

uint64_t ctu::MapRestResource::handleMessage_Root_PUSH(ctu::MapRestResource *this, ctu::RestResourceContext *a2, __n128 **a3)
{
  (**a2)(&v20, a2);
  if (v20.n128_u64[0])
  {
    __p = v20;
    if (v20.n128_u64[1])
    {
      atomic_fetch_add_explicit((v20.n128_u64[1] + 16), 1uLL, memory_order_relaxed);
    }

    boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::insert_unique(this + 8, &__p, v19);
    if (__p.n128_u64[1])
    {
      std::__shared_weak_count::__release_weak(__p.n128_u64[1]);
    }

    v6 = v20.n128_u64[0];
    v7 = (v20.n128_u64[0] + 8);
    if (*(v20.n128_u64[0] + 31) < 0)
    {
      v7 = *v7;
    }

    v18 = xpc_string_create(v7);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    if (a3[3])
    {
      v8 = *a3;
      v9 = (a3[2] - *a3);
      v10 = (v9 - 1);
      if (v9 > 1)
      {
        v9 = a3[1];
        if (v10 < v9)
        {
          v9 = v10;
        }
      }

      else if (v9 >= a3[1])
      {
        v9 = a3[1];
      }
    }

    else
    {
      v8 = *a3;
      v9 = a3[1];
    }

    v19[0] = v8;
    v19[1] = v9;
    ctu::llvm::StringRef::operator std::string(v19, &__p);
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.n128_u64[0];
    }

    v17 = xpc_string_create(p_p);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    ctu::MapRestResource::getResourceList(this, &object);
    v14 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v14 = xpc_null_create();
    }

    (*(*a2 + 48))(a2, v6, &v18, &v17, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(object);
    xpc_release(v17);
    v17 = 0;
    if (v16 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    xpc_release(v18);
  }

  if (v20.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20.n128_u64[1]);
  }

  return 1;
}

void sub_1A90F291C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17, xpc_object_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(a19);
  v21 = *(v19 - 40);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::MapRestResource::handleMessage_Modify_PUSH(ctu::MapRestResource *this, ctu::RestResourceContext *a2, const ctu::PathView *a3, const ctu::PathView *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 3);
  if (!v7)
  {
    v8 = *(a4 + 2);
    goto LABEL_8;
  }

  v8 = *(a4 + 2);
  v9 = (*a4 + *(a4 + 1));
  if (v9 == &v7[v8] || &v7[v8 + 1] == v9)
  {
LABEL_8:
    memset(v50, 170, sizeof(v50));
    __p[0] = v8;
    __p[1] = v7;
    ctu::llvm::StringRef::operator std::string(__p, v50);
    object = 0xAAAAAAAAAAAAAAAALL;
    (*(*a2 + 24))(&object, a2);
    v47 = object;
    v48 = 0xAAAAAAAAAAAAAAAALL;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v47 = xpc_null_create();
    }

    v11 = *(this + 4);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(&v48);
    xpc_release(v47);
    if (!v48)
    {
      goto LABEL_90;
    }

    v12 = *(this + 5);
    v14 = *(this + 6);
    v13 = (this + 40);
    if (v14)
    {
      v15 = *(this + 5);
      do
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v15[4 * (v14 >> 1)], v50) & 0x80u) == 0)
        {
          v14 >>= 1;
        }

        else
        {
          v15 += 4 * (v14 >> 1) + 4;
          v14 += ~(v14 >> 1);
        }
      }

      while (v14);
      v12 = *(this + 5);
      v16 = *(this + 6);
    }

    else
    {
      v16 = 0;
      v15 = *(this + 5);
    }

    if (v15 != (v12 + 32 * v16) && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v50, v15) & 0x80) == 0)
    {
LABEL_52:
      v33 = v48;
      v48 = 0;
      v34 = v15[3];
      v15[3] = v33;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }

      memset(__p, 170, sizeof(__p));
      if (*(a3 + 3))
      {
        v35 = *a3;
        v36 = *(a3 + 2) - *a3;
        v37 = v36 - 1;
        if (v36 > 1)
        {
          v36 = *(a3 + 1);
          if (v37 < v36)
          {
            v36 = v37;
          }
        }

        else if (v36 >= *(a3 + 1))
        {
          v36 = *(a3 + 1);
        }
      }

      else
      {
        v35 = *a3;
        v36 = *(a3 + 1);
      }

      *v52 = v35;
      *&v52[8] = v36;
      ctu::llvm::StringRef::operator std::string(v52, __p);
      v54 = 0xAAAAAAAAAAAAAAAALL;
      ctu::MapRestResource::getResourceList(this, &v54);
      if (*(this + 9))
      {
        v38 = *(this + 8);
        while (1)
        {
          v39 = v38[1];
          if (!v39)
          {
            break;
          }

          v40 = std::__shared_weak_count::lock(v39);
          if (!v40)
          {
            goto LABEL_80;
          }

          v41 = *v38;
          if (!*v38)
          {
            goto LABEL_80;
          }

          if (*(v41 + 31) >= 0)
          {
            v42 = (v41 + 8);
          }

          else
          {
            v42 = *(v41 + 8);
          }

          *v52 = xpc_string_create(v42);
          if (!*v52)
          {
            *v52 = xpc_null_create();
          }

          if (SHIBYTE(__p[2]) >= 0)
          {
            v43 = __p;
          }

          else
          {
            v43 = __p[0];
          }

          v53[0] = xpc_string_create(v43);
          if (!v53[0])
          {
            v53[0] = xpc_null_create();
          }

          v55 = v54;
          if (v54)
          {
            xpc_retain(v54);
          }

          else
          {
            v55 = xpc_null_create();
          }

          (*(*a2 + 48))(a2, v41, v52, v53, &v55);
          xpc_release(v55);
          xpc_release(v53[0]);
          xpc_release(*v52);
          v38 += 2;
LABEL_84:
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
LABEL_85:
          if (v38 == (*(this + 8) + 16 * *(this + 9)))
          {
            goto LABEL_86;
          }
        }

        v40 = 0;
LABEL_80:
        *v52 = v38;
        boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(this + 8, v52, v53);
        v38 = v53[0];
        if (!v40)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

LABEL_86:
      xpc_release(v54);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v44 = v48;
      v48 = 0;
      if (v44)
      {
        (*(*v44 + 8))(v44);
      }

LABEL_90:
      xpc_release(object);
      if (SHIBYTE(v50[2]) < 0)
      {
        operator delete(v50[0]);
      }

      goto LABEL_92;
    }

    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v52 = v17;
    *&v52[16] = v17;
    if (SHIBYTE(v50[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v52, v50[0], v50[1]);
    }

    else
    {
      *v52 = *v50;
      *&v52[16] = v50[2];
    }

    *__p = *v52;
    v18 = *&v52[16];
    memset(v52, 0, sizeof(v52));
    __p[2] = v18;
    v57 = 0;
    v53[0] = __p;
    v53[1] = this + 40;
    v54 = 0;
    v19 = *(this + 5);
    v20 = &v19[4 * *(this + 6)];
    if (v20 != v15)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v15) & 0x80) == 0)
      {
        v55 = v20;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::priv_insert_unique_prepare(v15, &v55, __p, &v54))
        {
          goto LABEL_41;
        }

LABEL_36:
        v22 = v54;
        v23 = *(this + 6);
        if (*(this + 7) == v23)
        {
          boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>(&v51, this + 40, v54, __p);
          goto LABEL_44;
        }

        v24 = &(*v13)[4 * v23];
        if (v24 == v54)
        {
          v29 = *__p;
          v24[2] = __p[2];
          *v24 = v29;
          memset(__p, 0, sizeof(__p));
          v30 = v57;
          v57 = 0;
          v24[3] = v30;
          ++*(this + 6);
        }

        else
        {
          v25 = (v24 - 4);
          *v24 = *(v24 - 2);
          *(v24 - 4) = 0;
          *(v24 - 3) = 0;
          v26 = *(v24 - 2);
          v27 = *(v24 - 1);
          *(v24 - 2) = 0;
          *(v24 - 1) = 0;
          v24[2] = v26;
          v24[3] = v27;
          ++*(this + 6);
          if (v24 - 4 != v22)
          {
            do
            {
              v28 = (v25 - 32);
              boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>::operator=(v25, (v25 - 32));
              v25 = v28;
            }

            while (v28 != v22);
          }

          boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>::operator=(v22, __p);
        }

LABEL_43:
        v51 = v22;
LABEL_44:
        v31 = v57;
        v57 = 0;
        if (v31)
        {
          (*(*v31 + 8))(v31);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v15 = v51;
        v32 = *&v52[24];
        *&v52[24] = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        if ((v52[23] & 0x80000000) != 0)
        {
          operator delete(*v52);
        }

        goto LABEL_52;
      }

      v19 = *v13;
    }

    v54 = v15;
    if (v19 == v15)
    {
      goto LABEL_36;
    }

    v21 = (v15 - 4);
    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v21, __p) & 0x80) != 0)
    {
      goto LABEL_36;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, v21) & 0x80) != 0)
    {
      v55 = v21;
      if (boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::priv_insert_unique_prepare(v19, &v55, __p, &v54))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v54 = v21;
    }

LABEL_41:
    v22 = v54;
    goto LABEL_43;
  }

LABEL_92:
  v45 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A90F2FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24, uint64_t a25, xpc_object_t a26, xpc_object_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>::~value_destructor(&a24);
  boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>::~pair(&a20);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ctu::MapRestResource::handleRestMessage_NOTIFY(void ***this, ctu::RestResourceContext *a2, const ctu::PathView *a3)
{
  if (*(a3 + 3))
  {
    return ctu::MapRestResource::handleMessage_Resource(this, a2, a3);
  }

  else
  {
    return 0;
  }
}

void ctu::MapRestResource::getResourceList(ctu::MapRestResource *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x1AC581B70](v5) == MEMORY[0x1E69E9E50])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *(this + 6);
  if (v7)
  {
    v8 = *(this + 5);
    v9 = 32 * v7;
    do
    {
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
        *&__p.__r_.__value_.__l.__data_ = v10;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v12 = xpc_string_create(p_p);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(*a2, v12);
      xpc_release(v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 2;
      v9 -= 32;
    }

    while (v9);
  }
}

void xpc::array::~array(xpc_object_t *this)
{
  xpc_release(*this);
  *this = 0;
}

{
  xpc_release(*this);
  *this = 0;
}

void *boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        std::__shared_weak_count::__release_weak(*v3);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::unique_ptr<ctu::RestResourceBase> ()(std::string const&,xpc::object)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>::priv_insert_unique_prepare(void **a1, void ***a2, void **a3, void ***a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = (*a2 - a1) >> 5;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7[4 * (v8 >> 1)], a3) & 0x80u) == 0)
      {
        v8 >>= 1;
      }

      else
      {
        v7 += 4 * (v8 >> 1) + 4;
        v8 += ~(v8 >> 1);
      }
    }

    while (v8);
  }

  *a4 = v7;
  return v7 == *a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v7) & 0x80u) != 0;
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>*,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = 0x3FFFFFFFFFFFFFFLL;
  v6 = *(a2 + 1) + 1;
  if (0x3FFFFFFFFFFFFFFLL - v4 < v6 - v4)
  {
    goto LABEL_29;
  }

  v7 = v4 >> 61;
  v8 = 8 * v4;
  if (v7 > 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v8 / 5;
  if (v7)
  {
    v10 = v9;
  }

  if (v10 < 0x3FFFFFFFFFFFFFFLL)
  {
    v5 = v10;
  }

  v11 = v6 <= v5 ? v5 : *(a2 + 1) + 1;
  if (v6 >> 58)
  {
LABEL_29:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v16 = *a2;
  v17 = operator new(32 * v11);
  v18 = v17;
  v19 = *a2;
  v20 = *a2 + 32 * *(a2 + 1);
  v21 = v17;
  if (*a2 != a3)
  {
    v22 = *a2;
    v21 = v17;
    do
    {
      v23 = *v22;
      *(v21 + 2) = *(v22 + 2);
      *v21 = v23;
      *v22 = 0;
      *(v22 + 1) = 0;
      v24 = *(v22 + 3);
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v21 + 3) = v24;
      v22 += 32;
      v21 += 32;
    }

    while (v22 != a3);
  }

  v25 = *a4;
  *(v21 + 2) = *(a4 + 2);
  *v21 = v25;
  *a4 = 0;
  *(a4 + 1) = 0;
  v26 = *(a4 + 3);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *(v21 + 3) = v26;
  if (v20 != a3)
  {
    v27 = v21 + 56;
    v28 = a3;
    do
    {
      v29 = *v28;
      *(v27 - 1) = *(v28 + 2);
      *(v27 - 3) = v29;
      *v28 = 0;
      *(v28 + 1) = 0;
      v30 = *(v28 + 3);
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      *v27 = v30;
      v27 += 4;
      v28 += 2;
    }

    while (v28 != v20);
  }

  if (v19)
  {
    v31 = *(a2 + 1);
    if (v31)
    {
      v32 = (v19 + 24);
      do
      {
        v33 = *v32;
        *v32 = 0;
        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        if (*(v32 - 1) < 0)
        {
          operator delete(*(v32 - 3));
        }

        v32 += 4;
        --v31;
      }

      while (v31);
    }

    operator delete(*a2);
  }

  v34 = *(a2 + 1) + 1;
  *a2 = v18;
  *(a2 + 1) = v34;
  *(a2 + 2) = v11;
  *a1 = &v18[a3 - v16];
}

uint64_t boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F1CB5B60;
  exception[1] = this;
}

void boost::container::out_of_range::~out_of_range(std::exception *this)
{
  std::exception::~exception(this);

  operator delete(v1);
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>,boost::container::dtl::pair<std::string,std::unique_ptr<ctu::RestResourceBase>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  *(v2 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

void xpc::array_creator::operator()<char const*>(char *string@<X1>, xpc_object_t *a2@<X0>, xpc_object_t *a3@<X8>)
{
  v5 = xpc_string_create(string);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_array_append_value(*a2, v5);
  v6 = *a2;
  *a3 = *a2;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    *a3 = xpc_null_create();
  }

  xpc_release(v5);
}

xpc::array_creator *xpc::array_creator::array_creator(xpc::array_creator *this)
{
  v2 = xpc_array_create(0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x1AC581B70](v2) == MEMORY[0x1E69E9E50])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  *this = v3;
  v4 = xpc_null_create();
  xpc_release(v4);
  return this;
}

void boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::erase(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *a1 + 16 * a1[1];
  for (i = *a2 + 16; i != v6; i += 16)
  {
    v8 = *i;
    *i = 0;
    *(i + 8) = 0;
    v9 = *(i - 8);
    *(i - 16) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  v10 = *(v6 - 8);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  --a1[1];
  *a3 = v5;
}

void boost::container::dtl::flat_tree<std::weak_ptr<ctu::RestResourceConnection>,boost::move_detail::identity<std::weak_ptr<ctu::RestResourceConnection>>,std::owner_less<std::weak_ptr<ctu::RestResourceConnection>>,void>::insert_unique(uint64_t *a1@<X0>, __n128 *a2@<X1>, __n128 **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a1 + 16 * v5);
  if (v5)
  {
    v8 = a1[1];
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[v8 >> 1];
      v11 = v10->n128_u64[1];
      v12 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (v11 >= a2->n128_u64[1])
      {
        v8 = v9;
      }

      else
      {
        v6 = v12;
      }
    }

    while (v8);
  }

  if (v6 == v7)
  {
    *(a3 + 8) = 1;
    if (a1[2] != v5)
    {
      *v7 = *a2;
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      ++a1[1];
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v13 = a2->n128_u64[1];
  v14 = v6->n128_u64[1];
  *(a3 + 8) = v13 < v14;
  if (v13 < v14)
  {
    if (a1[2] != v5)
    {
      v15 = v7 - 1;
      *v7 = v7[-1];
      v7[-1].n128_u64[1] = 0;
      v7[-1].n128_u64[0] = 0;
      ++a1[1];
      if (&v7[-1] != v6)
      {
        v16 = v7 - 1;
        do
        {
          v17 = v16[-1];
          --v16;
          v15[-1].n128_u64[1] = 0;
          v16->n128_u64[0] = 0;
          v18 = v15->n128_u64[1];
          *v15 = v17;
          if (v18)
          {
            std::__shared_weak_count::__release_weak(v18);
          }

          v15 = v16;
        }

        while (v16 != v6);
      }

      v19 = *a2;
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      v20 = v6->n128_u64[1];
      *v6 = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      goto LABEL_17;
    }

LABEL_21:
    boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>>>(a1, v6, 1, a2, &v21);
    v7 = v21;
    goto LABEL_20;
  }

LABEL_17:
  v7 = v6;
LABEL_20:
  *a3 = v7;
}

void boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>>>(uint64_t *a1@<X0>, __n128 *a2@<X1>, const char *a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = boost::container::vector_alloc_holder<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(a1, a3);
  if (v11 >> 59)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v12);
  }

  v13 = v11;
  v14 = operator new(16 * v11);
  boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>>>(a1, v14, v13, a2, a3, a4);
  *a5 = a2 + *a1 - v10;
}

unint64_t boost::container::vector_alloc_holder<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::next_capacity<boost::container::growth_factor_60>(uint64_t a1, const char *a2)
{
  v2 = 0x7FFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x7FFFFFFFFFFFFFFLL - v4 < &a2[v3 - v4])
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = &a2[v3];
  if (v8 < 0x7FFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void boost::container::vector<std::weak_ptr<ctu::RestResourceConnection>,boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,void>::priv_insert_forward_range_new_allocation<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>>>(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4, uint64_t a5, __n128 *a6)
{
  v10 = *a1;
  boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>*,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>>>(a1, *a1, a4, (*a1 + 16 * *(a1 + 8)), a2, a5, a6);
  if (v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v10->n128_u64[1];
      do
      {
        if (*v12)
        {
          std::__shared_weak_count::__release_weak(*v12);
        }

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    operator delete(*a1);
  }

  v13 = *(a1 + 8) + a5;
  *a1 = a2;
  *(a1 + 8) = v13;
  *(a1 + 16) = a3;
}

void sub_1A90F3DDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 boost::container::uninitialized_move_and_insert_alloc<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>*,boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<std::weak_ptr<ctu::RestResourceConnection>>,std::weak_ptr<ctu::RestResourceConnection>*,std::weak_ptr<ctu::RestResourceConnection>>>(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t a6, __n128 *a7)
{
  while (a2 != a3)
  {
    *a5++ = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    ++a2;
  }

  result = *a7;
  *a5 = *a7;
  a7->n128_u64[0] = 0;
  a7->n128_u64[1] = 0;
  if (a3 != a4)
  {
    v8 = &a5[a6];
    do
    {
      result = *a3;
      *v8++ = *a3;
      a3->n128_u64[0] = 0;
      a3->n128_u64[1] = 0;
      ++a3;
    }

    while (a3 != a4);
  }

  return result;
}

void *ctu::getDescUtil@<X0>(void *this@<X0>, const char *const *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if ((a3 & 0x80000000) == 0 && a2 > a3)
  {
    return std::string::basic_string[abi:ne200100]<0>(a4, this[a3]);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return this;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void ctu::logBitFieldWithDesc(unsigned int (***a1)(void, uint64_t), unsigned int a2, unsigned __int16 *a3, uint64_t a4)
{
  if ((**a1)(a1, 20))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    ctu::LogMessageBuffer::appendString(v16, "              ");
    ctu::to_bitfieldPrettyPrint<unsigned char>(a2, *a3, 45, v14);
    ctu::LogMessageBuffer::appendString(v16, v14);
    ctu::LogMessageBuffer::appendString(v16, "    ");
    v8 = *a3;
    if ((BYTE1(v8) - v8) > 7u)
    {
      v11 = 0;
    }

    else
    {
      v9 = 0;
      v10 = (v8 >> 8) - v8 + 1;
      do
      {
        v9 = (2 * v9) | 1;
        --v10;
      }

      while (v10);
      v11 = v9 & (a2 >> v8);
    }

    std::function<std::string ()(int)>::operator()(a4, v11);
    ctu::LogMessageBuffer::appendString(v16, &__p);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1, 20, v16);
    ctu::LogMessageBuffer::~LogMessageBuffer(v16);
  }
}

{
  if ((**a1)(a1, 20))
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    ctu::LogMessageBuffer::appendString(v10, "              ");
    ctu::to_bitfieldPrettyPrint<unsigned char>(a2, *a3, 45, __p);
    ctu::LogMessageBuffer::appendString(v10, __p);
    ctu::LogMessageBuffer::appendString(v10, "    ");
    ctu::LogMessageBuffer::appendString(v10, a4);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1, 20, v10);
    ctu::LogMessageBuffer::~LogMessageBuffer(v10);
  }
}

void sub_1A90F4058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  ctu::LogMessageBuffer::~LogMessageBuffer(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::function<std::string ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t ctu::getBitFieldPrintWithDesc@<X0>(unsigned int a1@<W0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[7] = v8;
  v34[8] = v8;
  v34[5] = v8;
  v34[6] = v8;
  v34[3] = v8;
  v34[4] = v8;
  v34[1] = v8;
  v34[2] = v8;
  v33 = v8;
  v34[0] = v8;
  *v31 = v8;
  v32 = v8;
  v30[1] = v8;
  v30[2] = v8;
  v29 = v8;
  v30[0] = v8;
  v28 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v28);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "              ", 14);
  ctu::to_bitfieldPrettyPrint<unsigned char>(a1, *a2, 45, v26);
  if ((v27 & 0x80u) == 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v11 = v27;
  }

  else
  {
    v11 = v26[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "    ", 4);
  v14 = *a2;
  if ((BYTE1(v14) - v14) > 7u)
  {
    v17 = 0;
  }

  else
  {
    v15 = 0;
    v16 = (v14 >> 8) - v14 + 1;
    do
    {
      v15 = (2 * v15) | 1;
      --v16;
    }

    while (v16);
    v17 = v15 & (a1 >> v14);
  }

  std::function<std::string ()(int)>::operator()(a3, v17);
  if ((v25 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v25 & 0x80u) == 0)
  {
    v19 = v25;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v18, v19);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v36, MEMORY[0x1E69E5318]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v36);
  std::ostream::put();
  std::ostream::flush();
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a4, &v28);
  *&v28 = *MEMORY[0x1E69E54D8];
  v22 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v28 + *(v28 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v29 = v22;
  *(&v29 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  *(&v29 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v30);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC580CE0](v34);
}

{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[7] = v8;
  v27[8] = v8;
  v27[5] = v8;
  v27[6] = v8;
  v27[3] = v8;
  v27[4] = v8;
  v27[1] = v8;
  v27[2] = v8;
  v26 = v8;
  v27[0] = v8;
  *v24 = v8;
  v25 = v8;
  v23[1] = v8;
  v23[2] = v8;
  v22 = v8;
  v23[0] = v8;
  v21 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v21);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "              ", 14);
  ctu::to_bitfieldPrettyPrint<unsigned char>(a1, *a2, 45, __p);
  if ((v20 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v11 = v20;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "    ", 4);
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a4, &v21);
  *&v21 = *MEMORY[0x1E69E54D8];
  v17 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v22 = v17;
  *(&v22 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  *(&v22 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC580CE0](v27);
}

void sub_1A90F4550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1A90F4828(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1AC580CE0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  v6 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = operator new(v7);
    a1[1] = v6;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v8;
    a1 = v8;
  }

  else
  {
    *(a1 + 23) = v4;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  result = memmove(a1, v5, v6);
LABEL_10:
  *(a1 + v6) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1AC580CE0](a1 + 128);
  return a1;
}

void ctu::getBytedumpPrettyPrint(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v4 >= 0x11)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ctu::hex0(v5, &v31);
      v7 = std::string::append(&v31, "    ", 4uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string(&v29, a1, v6, 0x10uLL, &v36);
      ctu::getPrettyByteLine(&__p, &v29);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v32, p_p, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v33, "\n", 1uLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v35 = v13->__r_.__value_.__r.__words[2];
      v34 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (v35 >= 0)
      {
        v15 = &v34;
      }

      else
      {
        v15 = v34;
      }

      if (v35 >= 0)
      {
        v16 = HIBYTE(v35);
      }

      else
      {
        v16 = *(&v34 + 1);
      }

      std::string::append(a2, v15, v16);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v6 += 16;
      v4 -= 16;
      v5 += 8;
    }

    while (v4 > 0x10);
    if (v4)
    {
      goto LABEL_32;
    }

LABEL_55:
    v25 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v26 = v25;
    v27 = a2 + v25;
    if (v26 >= 0)
    {
      v28 = a2;
    }

    else
    {
      v27 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
      v28 = a2->__r_.__value_.__r.__words[0];
    }

    std::string::erase(a2, v27 - v28, 1uLL);
    return;
  }

  v6 = 0;
  if (!v4)
  {
    goto LABEL_55;
  }

LABEL_32:
  ctu::hex0((v6 >> 1), &v32);
  v17 = std::string::append(&v32, "    ", 4uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string(&__p, a1, v6, v4, &v29);
  ctu::getPrettyByteLine(&v31, &__p);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v31;
  }

  else
  {
    v19 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v31.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v33, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v35 = v21->__r_.__value_.__r.__words[2];
  v34 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (v35 >= 0)
  {
    v23 = &v34;
  }

  else
  {
    v23 = v34;
  }

  if (v35 >= 0)
  {
    v24 = HIBYTE(v35);
  }

  else
  {
    v24 = *(&v34 + 1);
  }

  std::string::append(a2, v23, v24);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_1A90F4FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 + 23) < 0)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::getPrettyByteLine(std::string *a1, uint64_t *a2)
{
  v4 = operator new(0x38uLL);
  v5 = v4;
  v4[2] = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F1CB7040;
  v12[0] = v4;
  v12[1] = v4;
  LODWORD(v6) = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  *(v4 + 2) = v6;
  v4[4] = v7;
  v4[5] = 0;
  v4[6] = v6;
  do
  {
    (*(*v5 + 24))(v5);
    v5 = v5[2];
  }

  while (v5);
  ctu::TextConverter::pushConversion(v12, 1, 0, 0x7FFFFFFF, 0);
  memset(&__p, 170, sizeof(__p));
  ctu::TextConverter::readChars(v12, 0x7FFFFFFFLL, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  ctu::hex_sp(p_p, size, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while (1)
  {
    result = v12[0];
    if (!v12[0])
    {
      break;
    }

    v12[0] = *(v12[0] + 16);
    (*(*result + 8))(result);
  }

  return result;
}

void sub_1A90F526C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  while (1)
  {
    v17 = a16;
    if (!a16)
    {
      break;
    }

    a16 = *(a16 + 16);
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

void ctu::getBytePrettyPrint(__int16 a1@<W0>, ctu *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  ctu::hex0(a1, &v27);
  v7 = std::string::append(&v27, "    ", 4uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  ctu::hex0(a2, &v26);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v28, v9, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v29, "    ", 4uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  ctu::binary0(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v30, p_p, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v31, "    ", 4uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = std::string::append(&v32, v22, v23);
  *a4 = *v24;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1A90F54F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
  }

  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void ctu::getBytesPrettyPrint(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  ctu::hex0(a1, &v22);
  v7 = std::string::append(&v22, "    ", 4uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a2 + 8);
  if (v9 == *a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a2;
  }

  ctu::hex_sp(v10, v9 - *a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v23, p_p, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v24, "    ", 4uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = *(a3 + 8);
  }

  v20 = std::string::append(&v25, v18, v19);
  *a4 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1A90F572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ctu::getBytesPrettyPrint(__int16 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  ctu::hex0(a1, &v20);
  v7 = std::string::append(&v20, "    ", 4uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  ctu::getPrettyByteLine(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v21, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v22, "    ", 4uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = std::string::append(&v23, v16, v17);
  *a4 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_1A90F5914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::getBytedumpPrettyPrintBinary@<X0>(ctu *this@<X0>, const unsigned __int8 *a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  v6 = operator new(0x38uLL);
  v6[2] = 0;
  *(v6 + 24) = 0;
  *v6 = &unk_1F1CB7040;
  v9[0] = v6;
  v9[1] = v6;
  *(v6 + 2) = v3;
  v6[4] = this;
  v6[5] = 0;
  v6[6] = v3;
  do
  {
    (*(*v6 + 24))(v6);
    v6 = v6[2];
  }

  while (v6);
  ctu::TextConverter::pushConversion(v9, 0, 0, 0x7FFFFFFF, 0);
  ctu::TextConverter::readChars(v9, 0x7FFFFFFFLL, &__p);
  ctu::getBytedumpPrettyPrint(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while (1)
  {
    result = v9[0];
    if (!v9[0])
    {
      break;
    }

    v9[0] = *(v9[0] + 16);
    (*(*result + 8))(result);
  }

  return result;
}

void sub_1A90F5AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  while (1)
  {
    v17 = a16;
    if (!a16)
    {
      break;
    }

    a16 = *(a16 + 16);
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

void ctu::logStraddlingBitField(unsigned int (***a1)(void, uint64_t), int a2, int a3, uint64_t *a4, __int16 a5, uint64_t a6)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v7 = a2 - a3;
  if (a2 - a3 <= -8 || (v9 = (v7 / 8), v10 = *a4, a4[1] - *a4 <= v9))
  {
LABEL_19:
    if ((**a1)(a1, 20))
    {
      v31 = 0;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      ctu::LogMessageBuffer::appendString(v29, "Invalid current byte position");
      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1, 20, v29);
LABEL_21:
      ctu::LogMessageBuffer::~LogMessageBuffer(v29);
    }
  }

  else
  {
    v11 = a3;
    while (1)
    {
      v12 = v7 <= 0 ? -(-v7 & 7) : v7 & 7;
      v13 = 8 - v12;
      v14 = 7 - v12;
      v15 = v11 - (8 - v12);
      if (v11 <= 8 - v12)
      {
        break;
      }

      if (v12)
      {
        v16 = *(v10 + v9);
        v29[0] = v14 - v13 + 1;
        v29[1] = 7 - v12;
        v32[0] = &unk_1F1CB5608;
        v32[3] = v32;
        ctu::logBitFieldWithDesc(a1, v16, v29, v32);
        std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v32);
      }

      else if ((**a1)(a1, 20))
      {
        v31 = 0;
        v30 = 0u;
        memset(v29, 0, sizeof(v29));
        v17 = *(*a4 + v9);
        std::string::basic_string[abi:ne200100]<0>(v26, "");
        ctu::getBytePrettyPrint(v9 + a5, v17, v26, &__p);
        ctu::LogMessageBuffer::appendString(v29, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1, 20, v29);
        ctu::LogMessageBuffer::~LogMessageBuffer(v29);
      }

      v18 = __OFADD__(v13, v7);
      v7 += v13;
      v19 = v7 + 7;
      if (v7 < 0 == v18)
      {
        v19 = v7;
      }

      v9 = (v19 >> 3);
      v10 = *a4;
      v11 = v15;
      if (a4[1] - *a4 <= v9)
      {
        goto LABEL_19;
      }
    }

    if (v11 == 8)
    {
      if (!(**a1)(a1, 20))
      {
        goto LABEL_22;
      }

      v31 = 0;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      ctu::getBytePrettyPrint(v9 + a5, *(*a4 + v9), a6, &__p);
      ctu::LogMessageBuffer::appendString(v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1, 20, v29);
      goto LABEL_21;
    }

    if (!v12)
    {
      v21 = (**a1)(a1, 20);
      v10 = *a4;
      if (v21)
      {
        v31 = 0;
        v30 = 0u;
        memset(v29, 0, sizeof(v29));
        v22 = *(v10 + v9);
        std::string::basic_string[abi:ne200100]<0>(v26, "");
        ctu::getBytePrettyPrint(v9 + a5, v22, v26, &__p);
        ctu::LogMessageBuffer::appendString(v29, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        ctu::LoggerBase<std::shared_ptr<ctu::LogServer>>::forceLog(a1, 20, v29);
        ctu::LogMessageBuffer::~LogMessageBuffer(v29);
        v10 = *a4;
      }
    }

    v23 = *(v10 + v9);
    v29[0] = v14 - v11 + 1;
    v29[1] = v14;
    ctu::logBitFieldWithDesc(a1, v23, v29, a6);
  }

LABEL_22:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t ctu::getStraddlingBitFieldPrint@<X0>(int a1@<W0>, int a2@<W1>, uint64_t *a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v61[4] = *MEMORY[0x1E69E9840];
  v59 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58[7] = v9;
  v58[8] = v9;
  v58[5] = v9;
  v58[6] = v9;
  v58[3] = v9;
  v58[4] = v9;
  v58[1] = v9;
  v58[2] = v9;
  v57 = v9;
  v58[0] = v9;
  *v55 = v9;
  v56 = v9;
  v54[1] = v9;
  v54[2] = v9;
  v53 = v9;
  v54[0] = v9;
  v52 = v9;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v52);
  v10 = a1 - a2;
  if (a1 - a2 < -7 || (v11 = (v10 / 8), v12 = *a3, a3[1] - *a3 <= v11))
  {
LABEL_30:
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, "Invalid current byte position", 29);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v30 = std::locale::use_facet(&__p, MEMORY[0x1E69E5318]);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  else
  {
    while (1)
    {
      v13 = v10 <= 0 ? -(-v10 & 7) : v10 & 7;
      v14 = 8 - v13;
      v15 = 7 - v13;
      v16 = a2 - (8 - v13);
      if (a2 <= 8 - v13)
      {
        break;
      }

      if (v13)
      {
        v17 = *(v12 + v11);
        LOBYTE(v60.__locale_) = v15 - v14 + 1;
        BYTE1(v60.__locale_) = 7 - v13;
        v61[0] = &unk_1F1CB8C40;
        v61[3] = v61;
        ctu::getBitFieldPrintWithDesc(v17, &v60, v61, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, p_p, size);
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v21 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
        (v21->__vftable[2].~facet_0)(v21, 10);
        std::locale::~locale(&v49);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](v61);
      }

      else
      {
        v22 = *(v12 + v11);
        std::string::basic_string[abi:ne200100]<0>(&v49, "");
        ctu::getBytePrettyPrint(v11 + a4, v22, &v49, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &__p;
        }

        else
        {
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __p.__r_.__value_.__l.__size_;
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v23, v24);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(&v60, MEMORY[0x1E69E5318]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v60);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v50 < 0)
        {
          operator delete(v49.__locale_);
        }
      }

      v27 = __OFADD__(v14, v10);
      v10 += v14;
      v28 = v10 + 7;
      if (v10 < 0 == v27)
      {
        v28 = v10;
      }

      v11 = (v28 >> 3);
      v12 = *a3;
      a2 = v16;
      if (a3[1] - *a3 <= v11)
      {
        goto LABEL_30;
      }
    }

    if (a2 == 8)
    {
      ctu::getBytePrettyPrint(v11 + a4, *(v12 + v11), a5, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__p;
      }

      else
      {
        v34 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __p.__r_.__value_.__l.__size_;
      }

      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v34, v35);
      std::ios_base::getloc((v36 + *(*v36 - 24)));
      v37 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
      (v37->__vftable[2].~facet_0)(v37, 10);
      std::locale::~locale(&v49);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      if (!v13)
      {
        v38 = *(v12 + v11);
        std::string::basic_string[abi:ne200100]<0>(&v49, "");
        ctu::getBytePrettyPrint(v11 + a4, v38, &v49, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &__p;
        }

        else
        {
          v39 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v40 = __p.__r_.__value_.__l.__size_;
        }

        v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v39, v40);
        std::ios_base::getloc((v41 + *(*v41 - 24)));
        v42 = std::locale::use_facet(&v60, MEMORY[0x1E69E5318]);
        (v42->__vftable[2].~facet_0)(v42, 10);
        std::locale::~locale(&v60);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v50 < 0)
        {
          operator delete(v49.__locale_);
        }

        v12 = *a3;
      }

      v43 = *(v12 + v11);
      LOBYTE(v49.__locale_) = v15 - a2 + 1;
      BYTE1(v49.__locale_) = v15;
      ctu::getBitFieldPrintWithDesc(v43, &v49, a5, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v53, v44, v45);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](a6, &v52);
  *&v52 = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v52 + *(v52 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v53 = v31;
  *(&v53 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[1]);
  }

  *(&v53 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v54);
  std::iostream::~basic_iostream();
  result = MEMORY[0x1AC580CE0](v58);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90F66B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25);
  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E786B420, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC580C60](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1A90F68E0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x1AC580A70](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1AC580A80](v13);
  return a1;
}

void sub_1A90F6B58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1AC580A80](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1A90F6B38);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = SHIBYTE(__b[2]) >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1A90F6D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void *std::__function::__func<ctu::logStraddlingBitField(ctu::StaticLogger const&,int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0,std::allocator<ctu::logStraddlingBitField(ctu::StaticLogger const&,int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB5608;
  return result;
}

uint64_t std::__function::__func<ctu::logStraddlingBitField(ctu::StaticLogger const&,int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0,std::allocator<ctu::logStraddlingBitField(ctu::StaticLogger const&,int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<std::string ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<ctu::getStraddlingBitFieldPrint(int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0,std::allocator<ctu::getStraddlingBitFieldPrint(int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0>,std::string ()(int)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F1CB8C40;
  return result;
}

uint64_t std::__function::__func<ctu::getStraddlingBitFieldPrint(int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0,std::allocator<ctu::getStraddlingBitFieldPrint(int,int,std::vector<unsigned char> const&,unsigned long,std::string const&)::$_0>,std::string ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL ctu::Compression::Compress(uint64_t a1, void *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v12.state = 0xAAAAAAAAAAAAAAAALL;
  *&v12.avail_in = v4;
  v12.reserved = 0xAAAAAAAAAAAAAAAALL;
  *&v12.data_type = v4;
  *&v12.total_out = v4;
  *&v12.next_out = v4;
  *&v12.zfree = 0uLL;
  v12.next_in = *a1;
  v12.avail_in = *(a1 + 8) - LODWORD(v12.next_in);
  if (deflateInit2_(&v12, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    return 0;
  }

  v6 = *a1;
  if (*(a1 + 8) == *a1)
  {
    return 0;
  }

  a2[1] = *a2;
  v7 = 2 * (*(a1 + 8) - v6);
  if (v7 != -12)
  {
    std::vector<unsigned char>::__append(a2, v7 + 12);
  }

  do
  {
    v8 = *a2;
    v12.next_out = (*a2 + v12.total_out);
    v12.avail_out = *(a2 + 2) - (LODWORD(v12.total_out) + v8);
    v9 = deflate(&v12, 4);
  }

  while (!v9);
  v10 = v9;
  v11 = a2[1] - *a2;
  if (v12.total_out <= v11)
  {
    if (v12.total_out < v11)
    {
      a2[1] = *a2 + v12.total_out;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v12.total_out - v11);
  }

  return v10 == 1 && deflateEnd(&v12) == 0;
}

BOOL ctu::Compression::Decompress(uint64_t a1, void *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v18.state = 0xAAAAAAAAAAAAAAAALL;
  *&v18.avail_in = v4;
  v18.reserved = 0xAAAAAAAAAAAAAAAALL;
  *&v18.data_type = v4;
  *&v18.total_out = v4;
  *&v18.next_out = v4;
  *&v18.zfree = 0uLL;
  v18.next_in = *a1;
  v18.avail_in = *(a1 + 8) - LODWORD(v18.next_in);
  if (inflateInit2_(&v18, 47, "1.2.12", 112))
  {
    return 0;
  }

  v6 = *(a1 + 8) - *a1;
  if (!v6)
  {
    return 0;
  }

  v7 = v6 >> 1;
  a2[1] = *a2;
  if ((v6 >> 1) + v6)
  {
    std::vector<unsigned char>::__append(a2, (v6 >> 1) + v6);
  }

  total_out = v18.total_out;
  v9 = -v18.total_out;
  while (1)
  {
    v10 = v18.total_out;
    if (!v18.avail_in)
    {
      break;
    }

    v12 = *a2;
    v11 = a2[1];
    v13 = v11 - *a2;
    if (v18.total_out - total_out >= v13)
    {
      v14 = v13 + v7;
      if (v13 >= v13 + v7)
      {
        if (v13 > v13 + v7)
        {
          LODWORD(v11) = v12 + v14;
          a2[1] = v12 + v14;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a2, v7);
        v10 = v18.total_out;
        v12 = *a2;
        v11 = a2[1];
      }
    }

    v18.next_out = (v12 + v10 + v9);
    v18.avail_out = total_out - (v12 + v10) + v11;
    v15 = inflate(&v18, 0);
    if (v15)
    {
      if (v15 != 1)
      {
        return 0;
      }

      v10 = v18.total_out;
      break;
    }
  }

  v16 = v10 - total_out;
  v17 = a2[1] - *a2;
  if (v16 <= v17)
  {
    if (v16 < v17)
    {
      a2[1] = *a2 + v16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v16 - v17);
  }

  return inflateEnd(&v18) == 0;
}

BOOL ctu::Compression::Decompress(uint64_t a1)
{
  v7.reserved = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.data_type = v2;
  *&v7.state = 0xAAAAAAAAAAAAAAAALL;
  *&v7.total_out = v2;
  *&v7.next_out = v2;
  *&v7.avail_in = v2;
  v3 = operator new(0x4000uLL);
  bzero(v3, 0x4000uLL);
  *&v7.zfree = 0uLL;
  v7.next_in = *a1;
  v7.avail_in = *(a1 + 8) - LODWORD(v7.next_in);
  if (!inflateInit2_(&v7, 47, "1.2.12", 112) && *(a1 + 8) != *a1)
  {
    while (1)
    {
      v7.next_out = v3;
      v7.avail_out = 0x4000;
      if (inflate(&v7, 0) == -2)
      {
        break;
      }

      v6 = std::ostream::write();
      if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (v7.avail_out)
      {
        v4 = inflateEnd(&v7) == 0;
        goto LABEL_3;
      }
    }
  }

  v4 = 0;
LABEL_3:
  operator delete(v3);
  return v4;
}

const __CFData *ctu::Compression::Decompress@<X0>(void *a1@<X0>, CFDataRef *a2@<X1>, CFDataRef *a3@<X8>)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_3;
  }

  memset(&strm.data_type, 0, 24);
  memset(&strm.avail_in, 0, 56);
  strm.zalloc = ctu::Compression::Decompress(__CFAllocator const*,ctu::cf::CFSharedRef<__CFData const> const&)::$_0::__invoke;
  strm.zfree = ctu::Compression::Decompress(__CFAllocator const*,ctu::cf::CFSharedRef<__CFData const> const&)::$_1::__invoke;
  strm.opaque = a1;
  BytePtr = CFDataGetBytePtr(result);
  Length = CFDataGetLength(*a2);
  strm.next_in = BytePtr;
  strm.avail_in = Length;
  result = inflateInit2_(&strm, 47, "1.2.12", 112);
  if (result)
  {
    goto LABEL_3;
  }

  if (Length)
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
    cf = a1;
    if (a1)
    {
      CFRetain(a1);
      v9 = cf;
      v20 = cf;
      CFRetain(cf);
    }

    else
    {
      v9 = 0;
      v20 = 0;
    }

    ctu::SharedRef<__CFAllocator const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFAllocator const>::~SharedRef(&cf);
    cf = 0;
    v17 = 0;
    v18 = 0;
    v19 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = Length >> 1;
    if ((Length >> 1) + Length)
    {
      std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__append(&cf, (Length >> 1) + Length);
    }

    do
    {
      if (!strm.avail_in)
      {
        goto LABEL_22;
      }

      v11 = v17 - cf;
      if (strm.total_out >= v17 - cf)
      {
        if (v11 >= v11 + v10)
        {
          if (v11 > v11 + v10)
          {
            v17 += v10;
          }
        }

        else
        {
          std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__append(&cf, Length >> 1);
        }
      }

      if (!strm.avail_out)
      {
        strm.next_out = cf + strm.total_out;
        strm.avail_out = v17 - (LODWORD(strm.total_out) + cf);
      }

      v12 = inflate(&strm, 0);
    }

    while (!v12);
    if (v12 != 1)
    {
LABEL_23:
      v13 = 0;
      goto LABEL_29;
    }

LABEL_22:
    if (inflateEnd(&strm))
    {
      goto LABEL_23;
    }

    v14 = cf;
    v15 = v17;
    if (strm.total_out <= v17 - cf)
    {
      if (strm.total_out < v17 - cf)
      {
        v15 = cf + strm.total_out;
        v17 = cf + strm.total_out;
      }
    }

    else
    {
      std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__append(&cf, strm.total_out - (v17 - cf));
      v14 = cf;
      v15 = v17;
    }

    v13 = CFDataCreate(a1, v14, v15 - v14);
LABEL_29:
    *a3 = v13;
    std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&cf);
    ctu::SharedRef<__CFAllocator const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFAllocator const>::~SharedRef(&v19);
    return ctu::SharedRef<__CFAllocator const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFAllocator const>::~SharedRef(&v20);
  }

  else
  {
LABEL_3:
    *a3 = 0;
  }

  return result;
}

void sub_1A90F76A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__destroy_vector::operator()[abi:ne200100](va);
  ctu::SharedRef<__CFAllocator const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFAllocator const>::~SharedRef((v2 + 24));
  ctu::SharedRef<__CFAllocator const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFAllocator const>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

const void **ctu::SharedRef<__CFAllocator const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFAllocator const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v12 = &v4[a2];
      bzero(v4, a2);
      v4 = v12;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = &v4[-*a1];
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *a1;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = CFAllocatorAllocate(*(a1 + 24), v10, 0);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v7[v11];
    v14 = v11 + v10;
    v15 = &v13[a2];
    bzero(v13, a2);
    v16 = *(a1 + 8);
    v17 = &v13[*a1 - v16];
    memcpy(v17, *a1, v16 - *a1);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = v14;
    if (v18)
    {
      CFAllocatorDeallocate(*(a1 + 24), v18);
    }
  }
}

void std::vector<unsigned char,ctu::cf::allocator_adapter<unsigned char>>::__destroy_vector::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v1;
    CFAllocatorDeallocate(*(a1 + 24), v1);
  }
}

uint64_t TelephonyUtilWriteToCompletion(int __fd, char *__buf, size_t __nbyte, _DWORD *a4)
{
  *a4 = 0;
  if (!__nbyte)
  {
    return 0;
  }

  v5 = __nbyte;
  while (1)
  {
    v8 = write(__fd, __buf, v5);
    if (v8 < 0)
    {
      break;
    }

    *a4 += v8;
    __buf += v8;
    v5 -= v8;
    if (!v5)
    {
      return 0;
    }
  }

  return *__error();
}

ssize_t TelephonyUtilUnblockableReadWithTimeout(int a1, unsigned int a2, void *a3, unsigned int a4, unsigned int a5)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 < 0)
  {
    return 4294967287;
  }

  memset(&v15, 0, sizeof(v15));
  if (__darwin_check_fd_set_overflow(a1, &v15, 0))
  {
    v15.fds_bits[a1 >> 5] |= 1 << a1;
  }

  if ((a2 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(a2, &v15, 0))
  {
    v15.fds_bits[a2 >> 5] |= 1 << a2;
  }

  if (a5 == -1)
  {
    v10 = 0;
  }

  else
  {
    v13 = a5 / 0x3E8uLL;
    LODWORD(v14) = 1000 * (a5 % 0x3E8);
    v10 = &v13;
  }

  if (a1 <= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  result = select(v12 + 1, &v15, 0, 0, v10);
  if (result >= 1)
  {
    if (a2 & 0x80000000) == 0 && __darwin_check_fd_set_overflow(a2, &v15, 0) && ((v15.fds_bits[a2 >> 5] >> a2))
    {
      return 0;
    }

    else
    {
      return read(a1, a3, a4);
    }
  }

  return result;
}

BOOL TelephonyUtilUnblockableReadToCompletionWithTimeout(int a1, unsigned int a2, char *a3, unsigned int a4, unsigned int a5)
{
  do
  {
    v9 = a4;
    if (!a4)
    {
      break;
    }

    v10 = TelephonyUtilUnblockableReadWithTimeout(a1, a2, a3, a4, a5);
    a3 += v10;
    a4 = v9 - v10;
  }

  while (v10 > 0);
  return v9 == 0;
}

uint64_t TelephonyUtilLogBinaryToBuffer(_BYTE *a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  v4 = a1;
  v34 = *MEMORY[0x1E69E9840];
  if (a4 < 1)
  {
    v8 = 0;
    *a1 = 0;
  }

  else
  {
    v5 = a4;
    v7 = 0;
    LODWORD(v8) = 0;
    v26 = a4;
    v9 = a4;
    while (1)
    {
      v10 = v9 - 32;
      if (v9 >= 32)
      {
        v9 = 32;
      }

      memset(&v33[9], 0, 32);
      v11 = v9 <= 1 ? 1 : v9;
      v32 = 0uLL;
      memset(v33, 0, 144);
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      if (v7 >= v26)
      {
        *(v33 + 15) = 538976288;
        *&v22 = 0x2020202020202020;
        *(&v22 + 1) = 0x2020202020202020;
        v32 = v22;
        v33[0] = v22;
        v30 = v22;
        v31 = v22;
        v21 = 99;
        v28 = v22;
        v29 = v22;
      }

      else
      {
        v12 = v4;
        v13 = (102 - 3 * v11) - 3;
        v14 = a3;
        v15 = v11;
        v16 = &v28 + 1;
        do
        {
          v17 = *v14++;
          v18 = str_27[v17 & 0xF];
          *(v16 - 1) = str_27[v17 >> 4];
          *v16 = v18;
          v16[1] = 32;
          v16 += 3;
          v13 += 3;
          --v15;
        }

        while (v15);
        memset(v16 - 1, 32, (3 * (33 - v11)));
        for (i = 0; i != v11; ++i)
        {
          v20 = a3[i];
          if ((v20 - 32) > 0x5Eu || a3[i] == 92 || a3[i] == 37)
          {
            v20 = 46;
          }

          *(&v28 + v13 + i) = v20;
        }

        v21 = v13 + i;
        v4 = v12;
        v5 = a4;
      }

      *(&v28 + v21) = 10;
      v8 = (snprintf(&v4[v8], a2 - v8, "%04x  %s", v7, &v28) + v8);
      if (v8 >= a2)
      {
        break;
      }

      v7 += 32;
      a3 += 32;
      v9 = v10;
      if (v7 >= v5)
      {
        goto LABEL_24;
      }
    }

    v8 = a2;
  }

LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t TelephonyUtilDecodeHexWithDefault(int a1, unsigned int a2)
{
  v2 = a1 - 48;
  if ((a1 - 97) >= 6)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1 - 87;
  }

  if ((a1 - 65) <= 5)
  {
    v4 = a1 - 55;
  }

  else
  {
    v4 = v3;
  }

  if (v2 <= 9)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t TelephonyUtilEncodeHex(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  *a2 = str_27[result >> 4];
  *a3 = str_27[result & 0xF];
  return result;
}

uint64_t TelephonyUtilBinToHex(_BYTE *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = (a2 - 1) >> 1;
  if (a2 > 2 * a4)
  {
    v4 = a4;
  }

  v5 = a1;
  if (v4)
  {
    v6 = a1;
    do
    {
      v7 = *a3++;
      v8 = str_27[v7 & 0xF];
      *v6 = str_27[v7 >> 4];
      v5 = v6 + 2;
      v6[1] = v8;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  *v5 = 0;
  return (v5 - a1 + 1);
}

uint64_t TelephonyUtilHexToBin(_BYTE *a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  LODWORD(v7) = v6 >> 1;
  v8 = v6 & 1;
  if (a2 - v8 >= (v6 >> 1))
  {
    v7 = v7;
  }

  else
  {
    v7 = (a2 - v8);
  }

  if (v6)
  {
    v9 = *__s;
    v10 = v9 - 48;
    v11 = v9 - 65;
    if ((v9 - 97) >= 6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 - 87;
    }

    v13 = v9 - 55;
    if (v11 > 5)
    {
      v13 = v12;
    }

    if (v10 < 0xA)
    {
      v13 = v10;
    }

    *a1 = v13;
  }

  v14 = v6 & 1;
  if (v7)
  {
    v15 = &a1[v8];
    v16 = &__s[v8 + 1];
    v17 = v7;
    do
    {
      v18 = *(v16 - 1);
      v19 = v18 - 48;
      v20 = v18 - 65;
      if ((v18 - 97) >= 6)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 - 87;
      }

      v22 = v18 - 55;
      if (v20 > 5)
      {
        v22 = v21;
      }

      if (v19 < 0xA)
      {
        v22 = v19;
      }

      v23 = 16 * v22;
      v25 = *v16;
      v16 += 2;
      v24 = v25;
      v26 = v25 - 48;
      v27 = v25 - 65;
      v28 = v25 - 87;
      if ((v25 - 97) >= 6)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      v30 = v24 - 55;
      if (v27 > 5)
      {
        v30 = v29;
      }

      if (v26 < 0xA)
      {
        v30 = v26;
      }

      *v15++ = v30 | v23;
      --v17;
    }

    while (v17);
  }

  return (v7 + v14);
}

uint64_t TelephonyUtilParseHardwareModel(_BYTE *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  *(a2 + 8) = 0;
  *a2 = 0;
  if (!*a1)
  {
    goto LABEL_22;
  }

  *__s = 0u;
  v42 = 0u;
  __strlcpy_chk();
  v3 = strlen(__s);
  if (!v3)
  {
    v10 = "received zero-length string parameter\n";
    goto LABEL_20;
  }

  v4 = v3;
  if (!(v3 >> 31))
  {
    v11 = 0;
    *__endptr = 0u;
    v44 = 0u;
    v12 = -1;
    v10 = "aborting to prevent out-of-bounds access while copying suffix (non-numeric) characters\n";
    v13 = "received string parameter with no suffix (non-numeric) characters\n";
    while (1)
    {
      v14 = __s[(v3 + v12)];
      if ((v14 - 48) <= 9)
      {
        break;
      }

      if (v11 == 32)
      {
        goto LABEL_20;
      }

      *(__endptr + v11) = v14;
      --v12;
      if (v3 == ++v11)
      {
LABEL_10:
        v10 = v13;
        goto LABEL_20;
      }
    }

    if (v3 - v11 < 1)
    {
      v10 = "received string parameter without non-numeric prefix\n";
      goto LABEL_20;
    }

    v15 = -1 - v11;
    v10 = "aborting to prevent out-of-bounds access while copying numeric characters\n";
    v13 = "received string parameter without non-numeric prefix\n";
    while (1)
    {
      v16 = __s[(v3 + v15)];
      if ((v16 - 48) > 9)
      {
        break;
      }

      if (v11 == 32)
      {
        goto LABEL_20;
      }

      *(__endptr + v11) = v16;
      --v15;
      if (v3 == ++v11)
      {
        goto LABEL_10;
      }
    }

    if (v11 > 0x1F)
    {
      v10 = "aborting to prevent out-of-bounds access while copying 1-character alphabetical prefix\n";
      goto LABEL_20;
    }

    *(__endptr + v11) = v16;
    v26 = __s;
    __memset_chk();
    for (i = v11; i != -1; --i)
    {
      *v26++ = *(__endptr + i);
    }

    __s[v11 + 1] = 0;
    __endptr[0] = 0;
    v28 = __s[0];
    *(a2 + 4) = __s[0];
    v29 = __toupper(v28);
    *(a2 + 4) = v29;
    if ((v29 - 91) <= 0xFFFFFFE5)
    {
      v23 = "detected hardware model info string without alphabetical prefix\n";
      goto LABEL_21;
    }

    *__error() = 0;
    *a2 = strtoul(&__s[1], __endptr, 10);
    if (*__error())
    {
      v40 = *__error();
      _TelephonyUtilDebugPrintError("TelephonyUtilParseHardwareModel", "strtoul failed with error no %d\n", v30, v31, v32, v33, v34, v35, v40);
      goto LABEL_22;
    }

    v36 = __endptr[0];
    if (!*__endptr[0])
    {
      *(a2 + 8) = 0;
      goto LABEL_49;
    }

    if (strncasecmp("SIM", __endptr[0], 3uLL))
    {
      v37 = 4;
      if (!strncasecmp("FPGA", v36, 4uLL))
      {
        goto LABEL_42;
      }

      if (!strncasecmp("AP", v36 + 1, 2uLL))
      {
        *(a2 + 8) = 2;
        goto LABEL_48;
      }

      v37 = 2;
      if (!strncasecmp("AP", v36, 2uLL))
      {
LABEL_42:
        *(a2 + 8) = v37;
        goto LABEL_49;
      }

      if (!strncasecmp("DEV", v36 + 1, 3uLL))
      {
        v38 = 1;
      }

      else
      {
        if (!strncasecmp("DEV", v36, 3uLL))
        {
          result = 1;
          *(a2 + 8) = 1;
          goto LABEL_23;
        }

        if (strncasecmp("Mac", v36 + 1, 3uLL))
        {
          if (!strncasecmp("Mac", v36, 3uLL))
          {
            *(a2 + 8) = 5;
LABEL_49:
            result = 1;
            goto LABEL_23;
          }

LABEL_48:
          __strlcpy_chk();
          *(a2 + 5) = __tolower(*(a2 + 5));
          *(a2 + 6) = __tolower(*(a2 + 6));
          goto LABEL_49;
        }

        v38 = 5;
      }

      *(a2 + 8) = v38;
      goto LABEL_48;
    }

    *(a2 + 8) = 3;
    goto LABEL_48;
  }

  v10 = "received string with length exceeding maximum int value";
LABEL_20:
  _TelephonyUtilDebugPrintError("stripLongPrefix", v10, v4, v5, v6, v7, v8, v9, v39);
  v23 = "aborting because stripLongPrefix failed\n";
LABEL_21:
  _TelephonyUtilDebugPrintError("TelephonyUtilParseHardwareModel", v23, v17, v18, v19, v20, v21, v22, v39);
LABEL_22:
  result = 0;
LABEL_23:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TelephonyUtilIsInternalBuild()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return _TUIsInternalBuildCached;
}

uint64_t TelephonyUtilIsCarrierBuild()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return _TUIsCarrierBuildCached;
}

uint64_t TelephonyUtilIsDesenseBuild()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return _MergedGlobals_0;
}

uint64_t TelephonyUtilIsVendorBuild()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return byte_1EB382871;
}

uint64_t TelephonyUtilIsRestoreOS()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  return byte_1EB382872;
}

uint64_t TelephonyUtilTraceAllowed()
{
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  if (_TUIsInternalBuildCached & 1) != 0 || (_TUIsCarrierBuildCached & 1) != 0 || (_MergedGlobals_0)
  {
    return 1;
  }

  else
  {
    return byte_1EB382871;
  }
}

unint64_t TelephonyUtilGetSystemTime()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v1.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 0x3E8uLL;
}

uint64_t TelephonyUtilSystemMachTime()
{
  if (!qword_1EB382880)
  {
    info = 0xAAAAAAAAAAAAAAAALL;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v2 = denom;
        denom = numer % denom;
        numer = v2;
      }

      while (denom);
    }

    else
    {
      v2 = info.numer;
    }

    v3 = 1000000;
    v4 = info.numer / v2;
    do
    {
      v5 = v4;
      v4 = v3;
      v3 = v5 % v3;
    }

    while (v3);
    qword_1EB382878 = info.numer / v2 / v4;
    qword_1EB382880 = 0xF4240 / v4 * (info.denom / v2);
  }

  return qword_1EB382878 * mach_absolute_time() / qword_1EB382880;
}

uint64_t TelephonyUtilGetSystemWakeReason(void *a1, size_t a2, BOOL *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s1 = 0u;
  v11 = 0u;
  __n = 0;
  v6 = sysctlbyname("kern.wakereason", 0, &__n, 0, 0);
  result = 0;
  if (!v6 && __n - 257 >= 0xFFFFFFFFFFFFFF00)
  {
    if (a1 && __n > a2)
    {
      result = 0;
    }

    else
    {
      sysctlbyname("kern.wakereason", __s1, &__n, 0, 0);
      if (a3)
      {
        *a3 = strstr(__s1, "baseband") != 0;
      }

      if (a1)
      {
        memcpy(a1, __s1, __n);
      }

      result = 1;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

size_t TelephonyUtilStrlcpy(void *a1, char *__s1, size_t __n)
{
  v6 = strnlen(__s1, __n);
  v7 = v6;
  if (v6 >= __n)
  {
    if (__n)
    {
      v8 = __n - 1;
      memcpy(a1, __s1, v8);
      *(a1 + v8) = 0;
    }
  }

  else
  {
    memcpy(a1, __s1, v6 + 1);
  }

  return v7;
}

uint64_t TelephonyUtilRunCommand(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v4[0] = a1;
  v4[1] = a2;
  v4[4] = 0;
  v4[5] = 0xAAAAAAAAAAAAAA00;
  v4[2] = v5;
  v4[3] = 0;
  if (TelephonyUtilRunCommandExt(v4))
  {
    result = 0;
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t TelephonyUtilRunCommandExt(uint64_t *a1)
{
  v7 = 0;
  if (!a1)
  {
    syslog(3, "%s: parameter cannot be NULL.\n");
    return 0;
  }

  if (!*a1)
  {
    syslog(3, "%s: command cannot be NULL\n");
    return 0;
  }

  v2 = a1[1];
  if (!v2)
  {
    syslog(3, "%s: argument cannot be NULL\n");
    return 0;
  }

  v3 = a1[2];
  if (!v3)
  {
    syslog(3, "%s: environment cannot be NULL\n");
    return 0;
  }

  if (posix_spawn(&v7, *a1, a1[3], a1[4], v2, v3))
  {
    v4 = *a1;
    syslog(3, "%s: spawning %s failed! ret: %d\n");
    return 0;
  }

  if ((a1[5] & 1) == 0)
  {
    v6 = -1431655766;
    waitpid(v7, &v6, 0);
  }

  return v7;
}

uint64_t TelephonyUtilIsBBPlatformSimulationEnabled()
{
  if (qword_1EB382888 != -1)
  {
    dispatch_once(&qword_1EB382888, &__block_literal_global);
  }

  return byte_1EB382873;
}

void __TelephonyUtilIsBBPlatformSimulationEnabled_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  if (_TUIsInternalBuildCached == 1)
  {
    if (qword_1EB382898 != -1)
    {
      dispatch_once(&qword_1EB382898, &__block_literal_global_69);
    }

    if (byte_1EB382875)
    {
      v0 = CFPreferencesCopyValue(@"EnableBBSimulation", @"/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.plist", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (v0)
      {
        byte_1EB382873 = v0 == *MEMORY[0x1E695E4D0];
        CFRelease(v0);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          if (byte_1EB382873)
          {
            v1 = "enabled";
          }

          else
          {
            v1 = "disabled";
          }

          v5 = 136315138;
          v6 = v1;
          _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "BBSimulation %s", &v5, 0xCu);
        }

        goto LABEL_18;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "BBSimulation disabled due to key not set";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "Platform Simulation disabled due to 'libRemoteTelephonyTransport' not found";
    }

    _os_log_impl(&dword_1A90E3000, v2, OS_LOG_TYPE_DEFAULT, v3, &v5, 2u);
  }

LABEL_18:
  v4 = *MEMORY[0x1E69E9840];
}

void __TelephonyUtilIsOversteerEnabled_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  if (_TUQueryBuildInformationOnce != -1)
  {
    dispatch_once(&_TUQueryBuildInformationOnce, &__block_literal_global_43);
  }

  if (_TUIsInternalBuildCached == 1)
  {
    if (qword_1EB382898 != -1)
    {
      dispatch_once(&qword_1EB382898, &__block_literal_global_69);
    }

    if (byte_1EB382875)
    {
      v0 = CFPreferencesCopyValue(@"EnableOversteer", @"/private/var/wireless/Library/Preferences/com.apple.commcenter.plist", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (v0)
      {
        byte_1EB382874 = v0 == *MEMORY[0x1E695E4D0];
        CFRelease(v0);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          if (byte_1EB382874)
          {
            v1 = "enabled";
          }

          else
          {
            v1 = "disabled";
          }

          v5 = 136315138;
          v6 = v1;
          _os_log_debug_impl(&dword_1A90E3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Oversteer %s", &v5, 0xCu);
        }

        goto LABEL_18;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "Oversteer disabled due to key not set";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      LOWORD(v5) = 0;
      v2 = MEMORY[0x1E69E9C10];
      v3 = "Oversteer disabled due to 'libRemoteTelephonyTransport' not found";
    }

    _os_log_impl(&dword_1A90E3000, v2, OS_LOG_TYPE_DEFAULT, v3, &v5, 2u);
  }

LABEL_18:
  v4 = *MEMORY[0x1E69E9840];
}

void __TelephonyUtilQueryBuildInformation_block_invoke()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = @"ReleaseType";
  v0 = CFArrayCreate(*MEMORY[0x1E695E480], v16, 1, MEMORY[0x1E695E9C0]);
  if (v0)
  {
    v1 = v0;
    v2 = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
    if (!v2)
    {
      goto LABEL_25;
    }

    v3 = dlsym(v2, "MGCopyMultipleAnswers");
    if (!v3)
    {
      goto LABEL_25;
    }

    v4 = v3(v1, 0);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = v4;
    Value = CFDictionaryGetValue(v4, @"ReleaseType");
    if (!Value)
    {
LABEL_24:
      CFRelease(v5);
LABEL_25:
      CFRelease(v1);
      goto LABEL_26;
    }

    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFStringGetTypeID() && CFStringCompare(v7, @"Vendor", 0) == kCFCompareEqualTo)
    {
      v14 = &byte_1EB382871;
    }

    else
    {
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID() && CFStringCompare(v7, @"Carrier", 0) == kCFCompareEqualTo)
      {
        v14 = &_TUIsCarrierBuildCached;
      }

      else
      {
        v10 = CFGetTypeID(v7);
        if (v10 != CFStringGetTypeID() || CFStringCompare(v7, @"Internal", 0))
        {
          v11 = CFGetTypeID(v7);
          if (v11 == CFStringGetTypeID() && CFStringCompare(v7, @"Desense", 0) == kCFCompareEqualTo)
          {
            v14 = &_MergedGlobals_0;
            goto LABEL_23;
          }

          v12 = CFGetTypeID(v7);
          if (v12 != CFStringGetTypeID() || CFStringCompare(v7, @"NonUI", 0))
          {
            v13 = CFGetTypeID(v7);
            if (v13 != CFStringGetTypeID() || CFStringCompare(v7, @"Restore", 0))
            {
              goto LABEL_24;
            }

            v14 = &byte_1EB382872;
            goto LABEL_23;
          }
        }

        v14 = &_TUIsInternalBuildCached;
      }
    }

LABEL_23:
    *v14 = 1;
    goto LABEL_24;
  }

LABEL_26:
  v15 = *MEMORY[0x1E69E9840];
}

const char *__isRTDylibPresent_block_invoke()
{
  result = "/usr/lib/libRemoteTelephonyTransport.dylib";
  for (i = 1; ; i = 0)
  {
    v2 = i;
    v3 = dlopen(result, 1);
    if (v3)
    {
      break;
    }

    result = "/usr/local/lib/libRemoteTelephonyTransport.dylib";
    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  byte_1EB382875 = 1;

  return dlclose(v3);
}

ctu::MallocZone *ctu::MallocZone::MallocZone(ctu::MallocZone *this, const char *a2, vm_size_t start_size)
{
  zone = malloc_create_zone(start_size, 0);
  *this = zone;
  v6 = operator new(0x20uLL);
  *v6 = &unk_1F1CB4E48;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = zone;
  *(this + 1) = v6;
  *(this + 2) = a2;
  malloc_set_zone_name(zone, a2);
  return this;
}

void sub_1A90F9174(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::MallocZone::MallocZone(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *ctu::MallocZone::operator=(void *a1)
{
  v2 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  a1[2] = 0;
  return a1;
}

void std::__shared_ptr_pointer<_malloc_zone_t *,ctu::MallocZone::MallocZone(char const*,unsigned long)::$_0,std::allocator<_malloc_zone_t>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<_malloc_zone_t *,ctu::MallocZone::MallocZone(char const*,unsigned long)::$_0,std::allocator<_malloc_zone_t>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *ctu::RestModule::RestModule(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

std::__shared_weak_count_vtbl **ctu::RestModule::RestModule(std::__shared_weak_count_vtbl **a1, __int128 *a2, NSObject **a3, NSObject **a4)
{
  ctu::RestModuleState::create(a2, a3, a4, a1);
  return a1;
}

{
  ctu::RestModuleState::create(a2, a3, a4, a1);
  return a1;
}

void ctu::RestModuleState::create(__int128 *a1@<X0>, NSObject **a2@<X1>, NSObject **a3@<X2>, std::__shared_weak_count_vtbl **a4@<X8>)
{
  v8 = operator new(0x68uLL);
  ctu::RestModuleState::RestModuleState(v8, a1, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  v9->__vftable = &unk_1F1CB4D68;
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v8;
  a4[1] = v9;
  v10 = v8->~__shared_weak_count_0;
  if (v10)
  {
    if (v10->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8->~__shared_weak_count = v8;
    v8->~__shared_weak_count_0 = v9;
    std::__shared_weak_count::__release_weak(v10);
  }

  else
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8->~__shared_weak_count = v8;
    v8->~__shared_weak_count_0 = v9;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
}

void sub_1A90F942C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<ctu::RestModuleState> ctu::SharedSynchronizable<ctu::RestModuleState>::make_shared_ptr<ctu::RestModuleState>(ctu::RestModuleState*)::{lambda(ctu::RestModuleState*)#1}::operator() const(ctu::RestModuleState*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

std::__shared_weak_count_vtbl **ctu::RestModule::RestModule(std::__shared_weak_count_vtbl **a1, NSObject **a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = 0;
  ctu::RestModuleState::create(&v9, &v8, &v7, a1);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7 = 0;
  ctu::RestModuleState::create(&v9, &v8, &v7, a1);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1A90F9550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_release(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A90F9618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    dispatch_release(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestModuleState::addRequestHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 16));
  v6 = *(a1 + 96);
  if (!v6)
  {
    v7 = operator new(0x18uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    std::unique_ptr<boost::container::flat_map<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>,std::less<std::string>,void>>::reset[abi:ne200100]((a1 + 96), v7);
    v6 = *(a1 + 96);
  }

  v8 = *(a3 + 24);
  if (v8)
  {
    v33 = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32[0] = v9;
    v32[1] = v9;
    v31 = v9;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 8));
      v8 = *(a3 + 24);
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v31 = *a2;
      *&v32[0] = *(a2 + 16);
    }

    if (v8 == a3)
    {
      v33 = v32 + 8;
      (*(*v8 + 24))(v8, v32 + 8);
LABEL_25:
      object[0] = &v31;
      object[1] = v6;
      v17 = *v6;
      v18 = v6[1];
      v19 = *v6 + 56 * v18;
      while (v18)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17 + 7 * (v18 >> 1), &v31) & 0x80u) == 0)
        {
          v18 >>= 1;
        }

        else
        {
          v17 = (v17 + 56 * (v18 >> 1) + 56);
          v18 += ~(v18 >> 1);
        }
      }

      if (v17 == v19 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v31, v17) & 0x80) != 0)
      {
        v21 = v6[1];
        if (v6[2] == v21)
        {
          boost::container::vector<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>*,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>>(&v30, v6, v17, &v31);
          v20 = 1;
          v17 = v30;
        }

        else
        {
          v22 = *v6 + 56 * v21;
          if (v22 == v17)
          {
            v24 = v31;
            *(v22 + 16) = *&v32[0];
            *v22 = v24;
            *&v32[0] = 0;
            v31 = 0uLL;
            std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::__value_func[abi:ne200100](v22 + 24, v32 + 8);
            v6[1] = (v6[1] + 1);
          }

          else
          {
            v23 = v22 - 56;
            *v22 = *(v22 - 56);
            *(v22 + 16) = *(v22 - 40);
            *(v22 - 48) = 0;
            *(v22 - 40) = 0;
            *(v22 - 56) = 0;
            std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::__value_func[abi:ne200100](v22 + 24, v22 - 32);
            for (v6[1] = (v6[1] + 1); v23 != v17; v23 -= 56)
            {
              boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>::operator=(v23, (v23 - 56));
            }

            boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>::operator=(v17, &v31);
          }

          v20 = 1;
        }
      }

      else
      {
        v20 = 0;
      }

      std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](v32 + 8);
      if (SBYTE7(v32[0]) < 0)
      {
        operator delete(v31);
        if (v20)
        {
          goto LABEL_42;
        }
      }

      else if (v20)
      {
LABEL_42:
        v25 = *(a1 + 56);
        if (v25 && (*(*v25 + 32))(v25))
        {
          v26 = *(a1 + 56);
          if (*(a2 + 23) >= 0)
          {
            v27 = a2;
          }

          else
          {
            v27 = *a2;
          }

          *&v31 = xpc_string_create(v27);
          if (!v31)
          {
            *&v31 = xpc_null_create();
          }

          object[0] = xpc_null_create();
          (*(*v26 + 48))(v26, &v31, object);
          xpc_release(object[0]);
          xpc_release(v31);
        }

        goto LABEL_52;
      }

      std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::operator=[abi:ne200100](v17 + 24, a3);
      goto LABEL_52;
    }

    v8 = (*(*v8 + 16))(v8);
LABEL_13:
    v33 = v8;
    goto LABEL_25;
  }

  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>::find(&v31, v6, a2);
  v10 = *v6 + 56 * v6[1];
  v11 = v31;
  if (v31 != v10)
  {
    v12 = v31 + 56;
    while (v12 != v10)
    {
      v13 = v11 + 56;
      v12 = boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>::operator=(v11, (v11 + 56)) + 112;
      v11 = v13;
    }

    std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](v10 - 32);
    if (*(v10 - 33) < 0)
    {
      operator delete(*(v10 - 56));
    }

    v6[1] = (v6[1] - 1);
    v14 = *(a1 + 56);
    if (v14 && (*(*v14 + 32))(v14))
    {
      v15 = *(a1 + 56);
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      *&v31 = xpc_string_create(v16);
      if (!v31)
      {
        *&v31 = xpc_null_create();
      }

      object[0] = xpc_null_create();
      (*(*v15 + 56))(v15, &v31, object);
      xpc_release(object[0]);
      xpc_release(v31);
    }
  }

LABEL_52:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t ctu::RestModule::deregisterAsRequestSink(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6 = 0;
  ctu::RestModuleState::addRequestHandler(v2, a2, v5);
  result = std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90F9C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::RestModule::registerAsRequestSink(uint64_t *a1, uint64_t a2, void *aBlock)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (aBlock)
  {
    v7[0] = &unk_1F1CB5A80;
    v7[1] = _Block_copy(aBlock);
    v8 = v7;
    ctu::RestModuleState::addRequestHandler(v4, a2, v7);
  }

  else
  {
    v8 = 0;
    ctu::RestModuleState::addRequestHandler(v4, a2, v7);
  }

  result = std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90F9CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::RestModule::getPropertyOnce(uint64_t **a1, uint64_t a2, void *aBlock)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (aBlock)
  {
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  v8[0] = &unk_1F1CB5AD8;
  v8[1] = v5;
  v8[3] = v8;
  ctu::RestModuleState::getValueOnce(v4, a2, v8);
  result = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90F9DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestModuleState::getValueOnce(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1[7];
  if (v5 && ((*(*v5 + 32))(v5) & 1) != 0)
  {
    v7 = a1[7];
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v20 = xpc_string_create(v8);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v9 = a1[1];
    if (!v9 || (v10 = *a1, (v11 = std::__shared_weak_count::lock(v9)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v13 = std::__shared_weak_count::lock(v12);
    v14 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v12);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v12);
      v10 = 0;
    }

    v18 = v10;
    v19 = v14;
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v22, a3);
    v24 = 0;
    v16 = operator new(0x28uLL);
    *v16 = &unk_1F1CB56B8;
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v16 + 1), v22);
    v24 = v16;
    (*(*v7 + 72))(v7, &v20, &v18, a1 + 2, v23);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v23);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v22);
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    xpc_release(v20);
  }

  else
  {
    object = xpc_null_create();
    v15 = *(a3 + 24);
    if (!v15)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v15 + 48))(v15, &object);
    xpc_release(object);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1A90F9FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, xpc_object_t object, xpc_object_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::RestModuleState::removeSubscription(uint64_t a1, uint64_t a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>::find(&v12, (a1 + 72), a2);
  v4 = (*(a1 + 72) + 56 * *(a1 + 80));
  v5 = v12;
  if (v12 != v4)
  {
    v6 = (v12 + 56);
    while (v6 != v4)
    {
      v7 = v5 + 56;
      v6 = (boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>::operator=(v5, (v5 + 56)) + 112);
      v5 = v7;
    }

    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((v4 - 4));
    if (*(v4 - 33) < 0)
    {
      operator delete(*(v4 - 7));
    }

    --*(a1 + 80);
    v8 = *(a1 + 56);
    if (v8 && (*(*v8 + 32))(v8))
    {
      v9 = *(a1 + 56);
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      v12 = xpc_string_create(v10);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      object = xpc_null_create();
      (*(*v9 + 56))(v9, &v12, &object);
      xpc_release(object);
      xpc_release(v12);
    }
  }
}

void sub_1A90FA1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t ctu::RestModule::observeProperty(uint64_t *a1, uint64_t a2, void *aBlock)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (aBlock)
  {
    v7[0] = &unk_1F1CB5AD8;
    v7[1] = _Block_copy(aBlock);
    v8 = v7;
    ctu::RestModuleState::addSubscription(v4, a2, v7, 0);
  }

  else
  {
    v8 = 0;
    ctu::RestModuleState::addSubscription(v4, a2, v7, 0);
  }

  result = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90FA2C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ctu::RestModuleState::addSubscription(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 16));
  if (*(a3 + 24))
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[0] = v8;
    v25[1] = v8;
    v24 = v8;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
    }

    else
    {
      v24 = *a2;
      *&v25[0] = *(a2 + 16);
    }

    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v25 + 8, a3);
    object[0] = &v24;
    object[1] = (a1 + 72);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = (v10 + 56 * v11);
    while (v11)
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10 + 7 * (v11 >> 1), &v24) & 0x80u) == 0)
      {
        v11 >>= 1;
      }

      else
      {
        v10 = (v10 + 56 * (v11 >> 1) + 56);
        v11 += ~(v11 >> 1);
      }
    }

    if (v10 == v12 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, v10) & 0x80) != 0)
    {
      v14 = *(a1 + 80);
      if (*(a1 + 88) == v14)
      {
        boost::container::vector<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>*,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>(&v23, (a1 + 72), v10, &v24);
      }

      else
      {
        v15 = *(a1 + 72) + 56 * v14;
        if (v15 == v10)
        {
          v17 = v24;
          *(v15 + 16) = *&v25[0];
          *v15 = v17;
          *&v25[0] = 0;
          v24 = 0uLL;
          std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v15 + 24, v25 + 8);
          ++*(a1 + 80);
        }

        else
        {
          v16 = v15 - 56;
          *v15 = *(v15 - 56);
          *(v15 + 16) = *(v15 - 40);
          *(v15 - 48) = 0;
          *(v15 - 40) = 0;
          *(v15 - 56) = 0;
          std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v15 + 24, v15 - 32);
          ++*(a1 + 80);
          for (; v16 != v10; v16 -= 56)
          {
            boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>::operator=(v16, (v16 - 56));
          }

          boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>::operator=(v10, &v24);
        }
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v25 + 8);
    if (SBYTE7(v25[0]) < 0)
    {
      operator delete(v24);
    }

    if ((v13 | a4) == 1)
    {
      v18 = *(a1 + 56);
      if (v18)
      {
        if ((*(*v18 + 32))(v18))
        {
          v19 = *(a1 + 56);
          if (*(a2 + 23) >= 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = *a2;
          }

          *&v24 = xpc_string_create(v20);
          if (!v24)
          {
            *&v24 = xpc_null_create();
          }

          object[0] = xpc_null_create();
          (*(*v19 + 48))(v19, &v24, object);
          xpc_release(object[0]);
          xpc_release(v24);
        }
      }
    }

    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    ctu::RestModuleState::removeSubscription(a1, a2);
  }
}

void ctu::RestModule::observeProperty(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  ctu::RestModuleState::addSubscription(*a1, a2, a3, 0);
}

{
  ctu::RestModuleState::addSubscription(*a1, a2, a3, 1);
}

uint64_t ctu::RestModule::observeEvent(uint64_t *a1, uint64_t a2, void *aBlock)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (aBlock)
  {
    v7[0] = &unk_1F1CB5AD8;
    v7[1] = _Block_copy(aBlock);
    v8 = v7;
    ctu::RestModuleState::addSubscription(v4, a2, v7, 0);
  }

  else
  {
    v8 = 0;
    ctu::RestModuleState::addSubscription(v4, a2, v7, 0);
  }

  result = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90FA778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::RestModule::unobserveEvent(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6 = 0;
  ctu::RestModuleState::addSubscription(v2, a2, v5, 0);
  result = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90FA810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::RestModule::sendRequest(uint64_t **a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
  }

  else
  {
    v7 = 0;
  }

  v10[0] = &unk_1F1CB5AD8;
  v10[1] = v7;
  v10[3] = v10;
  ctu::RestModuleState::sendRequest(v6, a2, a3, v10);
  result = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v10);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A90FA8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestModuleState::sendRawGet(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  object[4] = *MEMORY[0x1E69E9840];
  v5 = a1[7];
  if (v5 && ((*(*v5 + 32))(v5) & 1) != 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    object[0] = xpc_string_create(v7);
    if (!object[0])
    {
      object[0] = xpc_null_create();
    }

    v8 = a1[1];
    if (!v8 || (v9 = a1[7], v10 = *a1, (v11 = std::__shared_weak_count::lock(v8)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    v13 = std::__shared_weak_count::lock(v12);
    v14 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_weak(v12);
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      std::__shared_weak_count::__release_weak(v12);
      v10 = 0;
    }

    v23 = v10;
    v24 = v14;
    (*(*v9 + 72))(v9, object, &v23, a1 + 2, a3);
    if (v24)
    {
      std::__shared_weak_count::__release_weak(v24);
    }

    xpc_release(object[0]);
  }

  else
  {
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](object, a3);
    v15 = a1[1];
    if (!v15 || (v16 = *a1, (v17 = std::__shared_weak_count::lock(v15)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v18 = v17;
    v19 = operator new(0x20uLL);
    std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v19, object);
    v20 = a1[2];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = operator new(0x18uLL);
    *v21 = v19;
    v21[1] = v16;
    v21[2] = v18;
    v25 = 0;
    v26 = 0;
    dispatch_async_f(v20, v21, dispatch::async<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<std::function<void ()(xpc::object)> &&,std::default_delete<std::function<void ()(xpc::object)> &&>>)::{lambda(void *)#1}::__invoke);
    std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v25);
    std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&v26);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](object);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1A90FAB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::RestModuleState::sendRawSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && (*(*v4 + 32))(v4))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    object = xpc_string_create(v7);
    if (!object)
    {
      object = xpc_null_create();
    }

    (*(**(a1 + 56) + 40))(*(a1 + 56), &object, a3);
    xpc_release(object);
  }
}

void ctu::RestModuleState::sendRawPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && (*(*v4 + 32))(v4))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    object = xpc_string_create(v7);
    if (!object)
    {
      object = xpc_null_create();
    }

    (*(**(a1 + 56) + 48))(*(a1 + 56), &object, a3);
    xpc_release(object);
  }
}

void ctu::RestModuleState::sendRawPop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && (*(*v4 + 32))(v4))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    object = xpc_string_create(v7);
    if (!object)
    {
      object = xpc_null_create();
    }

    (*(**(a1 + 56) + 56))(*(a1 + 56), &object, a3);
    xpc_release(object);
  }
}

void ctu::RestModuleState::sendRawNotify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4 && (*(*v4 + 32))(v4))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    object = xpc_string_create(v7);
    if (!object)
    {
      object = xpc_null_create();
    }

    (*(**(a1 + 56) + 64))(*(a1 + 56), &object, a3);
    xpc_release(object);
  }
}

void ctu::RestModule::connect(uint64_t *a1, xpc_object_t *a2)
{
  v2 = *a1;
  object = *a2;
  *a2 = xpc_null_create();
  ctu::rest::RestXpcConnector::create(&object, &v4);
  ctu::RestModuleState::connect(v2, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  xpc_release(object);
}

void sub_1A90FAFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void ctu::RestModuleState::connect(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "RestModule::connect cannot be called with a null connector");
    __cxa_throw(exception, off_1E786B428, MEMORY[0x1E69E5298]);
  }

  v4 = *(a1 + 8);
  if (!v4 || (v6 = *a1, (v7 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  std::string::operator=((v2 + 32), (a1 + 32));
  v9 = operator new(0x30uLL);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F1CB4F60;
  v9[3] = &unk_1F1CB60F8;
  v9[4] = v6;
  v9[5] = v8;
  v10 = *(v2 + 64);
  *(v2 + 56) = v9 + 3;
  *(v2 + 64) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(v2 + 24);
  if (v11)
  {
    xpc_retain(*(v2 + 24));
  }

  else
  {
    v11 = xpc_null_create();
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    dispatch_retain(*(a1 + 16));
  }

  v13 = *(v2 + 16);
  if (!v13 || (v14 = *(v2 + 8), (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v24 = xpc_null_create();
  }

  v17 = (v2 + 72);
  ctu::XpcClientHelper::setServer_internal(v17, &v24);
  xpc_release(v24);
  if (MEMORY[0x1AC581B70](*v17) == MEMORY[0x1E69E9E68])
  {
    v18 = *v17;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu15XpcClientHelper9setServerINS_4rest16RestXpcConnectorEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
    handler[3] = &__block_descriptor_tmp_12;
    handler[4] = v17;
    handler[5] = v14;
    v22 = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v23 = v18;
    xpc_connection_set_event_handler(v18, handler);
    xpc_connection_set_target_queue(v18, v12);
    xpc_connection_resume(v18);
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  std::__shared_weak_count::__release_weak(v16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  if (v12)
  {
    dispatch_release(v12);
  }

  xpc_release(v11);
  v20 = *a2;
  *a2 = 0;
  a2[1] = 0;
  ctu::RestModuleState::connectCommon(a1, &v20);
  if (*(&v20 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
  }
}

{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "RestModule::connect cannot be called with a null connector");
    __cxa_throw(exception, off_1E786B428, MEMORY[0x1E69E5298]);
  }

  v4 = *(a1 + 8);
  if (!v4 || (v6 = *a1, (v7 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  std::string::operator=((v2 + 32), (a1 + 32));
  v9 = operator new(0x30uLL);
  v9[1] = 0;
  v9[2] = 0;
  *v9 = &unk_1F1CB4F60;
  v9[3] = &unk_1F1CB60F8;
  v9[4] = v6;
  v9[5] = v8;
  v10 = *(v2 + 80);
  *(v2 + 72) = v9 + 3;
  *(v2 + 80) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    dispatch_retain(*(a1 + 16));
  }

  v12 = *(v2 + 56);
  *(v2 + 56) = v11;
  if (v12)
  {
    dispatch_release(v12);
  }

  v15 = *a2;
  *a2 = 0;
  a2[1] = 0;
  ctu::RestModuleState::connectCommon(a1, &v15);
  v13 = *(&v15 + 1);
  if (*(&v15 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1A90FB278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  std::__shared_weak_count::__release_weak(v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  if (v19)
  {
    dispatch_release(v19);
  }

  xpc_release(v18);
  _Unwind_Resume(a1);
}

void ctu::RestModule::connect(uint64_t *a1, uint64_t *a2)
{
  ctu::RestModuleState::connect(*a1, a2);
}

{
  ctu::RestModuleState::connect(*a1, a2);
}

uint64_t ctu::RestModule::disconnect(ctu::RestModule *this)
{
  result = *(*this + 56);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t ctu::RestModuleState::disconnect(ctu::RestModuleState *this)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t ctu::RestModule::isConnected(ctu::RestModule *this)
{
  result = *(*this + 56);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t ctu::RestModuleState::isConnected(ctu::RestModuleState *this)
{
  result = *(this + 7);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_1A90FB610(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::RestModule::getWeakHandle(ctu::RestModule *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *a2 = this;
  a2[1] = v4;
}

void ctu::RestModule::getQueue(ctu::RestModule *this@<X0>, NSObject **a2@<X8>)
{
  v2 = *(*this + 16);
  *a2 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

uint64_t ctu::RestModuleState::RestModuleState(uint64_t a1, __int128 *a2, NSObject **a3, NSObject **a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v7 = *a3;
  *(a1 + 16) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  *(a1 + 24) = *a4;
  if (v8)
  {
    dispatch_retain(v8);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v9;
  }

  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return a1;
}

void *ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void ctu::RestModuleState::connectCommon(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v19 = xpc_string_create("/connections");
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  object = xpc_null_create();
  (*(*v4 + 48))(v4, &v19, &object);
  xpc_release(object);
  xpc_release(v19);
  v5 = *(a1 + 96);
  if (v5)
  {
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = 56 * v6;
      do
      {
        v9 = v7;
        if (*(v7 + 23) < 0)
        {
          v9 = *v7;
        }

        v10 = *a2;
        v19 = xpc_string_create(v9);
        if (!v19)
        {
          v19 = xpc_null_create();
        }

        object = xpc_null_create();
        (*(*v10 + 48))(v10, &v19, &object);
        xpc_release(object);
        xpc_release(v19);
        v7 += 56;
        v8 -= 56;
      }

      while (v8);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = 56 * v11;
    do
    {
      v14 = v12;
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      v15 = *a2;
      v19 = xpc_string_create(v14);
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      object = xpc_null_create();
      (*(*v15 + 48))(v15, &v19, &object);
      xpc_release(object);
      xpc_release(v19);
      v12 += 56;
      v13 -= 56;
    }

    while (v13);
  }

  v16 = *a2;
  *a2 = 0;
  a2[1] = 0;
  v17 = *(a1 + 64);
  *(a1 + 56) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1A90FB9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB5A80;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__func(void *__p)
{
  *__p = &unk_1F1CB5A80;
  v2 = __p[1];
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F1CB5A80;
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v2[1] = v3;
  return v2;
}

void *std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1CB5A80;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::operator()(uint64_t a1, xpc_object_t *a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  object = *a2;
  *a2 = xpc_null_create();
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  (*(v4 + 16))(v4, &object, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }

  xpc_release(object);
}

void sub_1A90FBCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, xpc_object_t object)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object,std::shared_ptr<xpc::object>)>>,void ()(xpc::object,std::shared_ptr<xpc::object>)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void *std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_1F1CB5AD8;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::~__func(void *__p)
{
  *__p = &unk_1F1CB5AD8;
  v2 = __p[1];
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::__clone(uint64_t a1)
{
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F1CB5AD8;
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v2[1] = v3;
  return v2;
}

void *std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F1CB5AD8;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::destroy_deallocate(const void **a1)
{
  std::__function::__alloc_func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::destroy[abi:ne200100](a1[1]);

  operator delete(a1);
}

void std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::operator()(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  object = *a2;
  *a2 = xpc_null_create();
  (*(v2 + 16))(v2, &object);
  xpc_release(object);
}

uint64_t std::__function::__func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<dispatch::block<void({block_pointer})(xpc::object)>,std::allocator<dispatch::block<void({block_pointer})(xpc::object)>>,void ()(xpc::object)>::destroy[abi:ne200100](const void *a1)
{
  if (a1)
  {
    _Block_release(a1);
  }
}

void std::__shared_ptr_pointer<ctu::RestModuleState *,std::shared_ptr<ctu::RestModuleState> ctu::SharedSynchronizable<ctu::RestModuleState>::make_shared_ptr<ctu::RestModuleState>(ctu::RestModuleState*)::{lambda(ctu::RestModuleState *)#1},std::allocator<ctu::RestModuleState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::RestModuleState *,std::shared_ptr<ctu::RestModuleState> ctu::SharedSynchronizable<ctu::RestModuleState>::make_shared_ptr<ctu::RestModuleState>(ctu::RestModuleState*)::{lambda(ctu::RestModuleState *)#1},std::allocator<ctu::RestModuleState>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::shared_ptr<ctu::RestModuleState> ctu::SharedSynchronizable<ctu::RestModuleState>::make_shared_ptr<ctu::RestModuleState>(ctu::RestModuleState*)::{lambda(ctu::RestModuleState*)#1}::operator() const(ctu::RestModuleState*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    std::unique_ptr<boost::container::flat_map<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>,std::less<std::string>,void>>::reset[abi:ne200100]((a1 + 96), 0);
    v2 = *(a1 + 80);
    if (v2)
    {
      v3 = *(a1 + 72) + 24;
      do
      {
        std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v3);
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 += 56;
        --v2;
      }

      while (v2);
    }

    if (*(a1 + 88))
    {
      operator delete(*(a1 + 72));
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v5 = ctu::SharedSynchronizable<ctu::RestModuleState>::~SharedSynchronizable(a1);

    operator delete(v5);
  }
}

void std::unique_ptr<boost::container::flat_map<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>,std::less<std::string>,void>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *v2 + 24;
      do
      {
        std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](v4);
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 24));
        }

        v4 += 56;
        --v3;
      }

      while (v3);
    }

    if (*(v2 + 16))
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<ctu::rest::RestConnectorDelegate<ctu::RestModuleState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1CB4F60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::rest::RestConnectorDelegate<ctu::RestModuleState>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t ctu::rest::RestConnectorDelegate<ctu::RestModuleState>::~RestConnectorDelegate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void ctu::rest::RestConnectorDelegate<ctu::RestModuleState>::~RestConnectorDelegate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t ctu::rest::RestConnectorDelegate<ctu::RestModuleState>::handleMessage(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  return 0;
}

void ctu::rest::RestConnectorDelegate<ctu::RestModuleState>::reset(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void ___ZN3ctu15XpcClientHelper9setServerINS_4rest16RestXpcConnectorEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke(void *a1, xpc_object_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[5];
      if (!v8)
      {
LABEL_18:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }

      v9 = MEMORY[0x1AC581B70](a2);
      v10 = MEMORY[0x1E69E9E80];
      if (v9 != MEMORY[0x1E69E9E80])
      {
        if (v9 == MEMORY[0x1E69E9E98] && *v5 == a1[7])
        {
          if (a2)
          {
            xpc_retain(a2);
          }

          else
          {
            a2 = xpc_null_create();
          }

          xpc_release(a2);
        }

        goto LABEL_18;
      }

      if (a2)
      {
        xpc_retain(a2);
        object = a2;
      }

      else
      {
        a2 = xpc_null_create();
        object = a2;
        if (!a2)
        {
          v11 = xpc_null_create();
          a2 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x1AC581B70](a2) == v10)
      {
        xpc_retain(a2);
LABEL_17:
        ctu::rest::RestXpcConnector::handleMessage(v8, &object);
        xpc_release(object);
        object = 0;
        xpc_release(a2);
        goto LABEL_18;
      }

      v11 = xpc_null_create();
LABEL_16:
      object = v11;
      goto LABEL_17;
    }
  }
}

void sub_1A90FC458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c52_ZTSNSt3__18weak_ptrIN3ctu4rest16RestXpcConnectorEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c52_ZTSNSt3__18weak_ptrIN3ctu4rest16RestXpcConnectorEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<ctu::RestModuleState::getValueOnce(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &>,xpc::object>::~__func(void *a1)
{
  *a1 = &unk_1F1CB56B8;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<ctu::RestModuleState::getValueOnce(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &>,xpc::object>::~__func(void *a1)
{
  *a1 = &unk_1F1CB56B8;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

void *std::__function::__func<ctu::RestModuleState::getValueOnce(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &>,xpc::object>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F1CB56B8;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v2 + 1), a1 + 8);
  return v2;
}

void std::__function::__func<ctu::RestModuleState::getValueOnce(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &>,xpc::object>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<ctu::RestModuleState::getValueOnce(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &>,xpc::object>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = xpc_null_create();
  v12 = v3;
  v5 = MEMORY[0x1E69E9E80];
  if (v3 && MEMORY[0x1AC581B70](v3) == v5)
  {
    xpc_retain(v3);
    v6 = v3;
  }

  else
  {
    v6 = xpc_null_create();
    v12 = v6;
  }

  if (MEMORY[0x1AC581B70](v6) == v5)
  {
    object[0] = &v12;
    object[1] = "v";
    xpc::dict::object_proxy::operator xpc::object(object, &v11);
    v7 = v11;
    v11 = v4;
    xpc_release(v4);
    v11 = 0;
    v6 = v12;
    v4 = v7;
  }

  xpc_release(v6);
  object[0] = v4;
  v8 = xpc_null_create();
  v9 = *(a1 + 32);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v9, object);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v8);
  xpc_release(v3);
}

void sub_1A90FC77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v13);
  xpc_release(v12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ctu::RestModuleState::getValueOnce(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::allocator<std::function<void ()(xpc::object)> &>,xpc::object>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<ctu::RestModuleState::sendRequest(std::string &&,xpc::object &&,std::function<void ()(xpc)> &&)::$_0,std::allocator<std::function<void ()(xpc)>>,xpc::object &&>::~__func(void *a1)
{
  *a1 = &unk_1F1CB8D20;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<ctu::RestModuleState::sendRequest(std::string &&,xpc::object &&,std::function<void ()(xpc)> &&)::$_0,std::allocator<std::function<void ()(xpc)>>,xpc::object &&>::~__func(void *a1)
{
  *a1 = &unk_1F1CB8D20;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 1));

  operator delete(a1);
}

uint64_t std::__function::__func<ctu::RestModuleState::sendRequest(std::string &&,xpc::object &&,std::function<void ()(xpc)> &&)::$_0,std::allocator<std::function<void ()(xpc)>>,xpc::object &&>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>*,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 1) + 1;
  if (0x249249249249249 - v4 < v5 - v4)
  {
    goto LABEL_27;
  }

  v6 = v4 >> 61;
  v7 = 8 * v4;
  if (v6 > 4)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 / 5;
  if (v6)
  {
    v9 = v8;
  }

  if (v9 >= 0x249249249249249)
  {
    v9 = 0x249249249249249;
  }

  v10 = v5 <= v9 ? v9 : *(a2 + 1) + 1;
  if (v5 > 0x249249249249249)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *a2;
  v15 = operator new(56 * v10);
  v16 = v15;
  v17 = *a2;
  v18 = *a2 + 56 * *(a2 + 1);
  v19 = v15;
  if (*a2 != a3)
  {
    v20 = *a2;
    v19 = v15;
    do
    {
      v21 = *v20;
      *(v19 + 2) = *(v20 + 2);
      *v19 = v21;
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *v20 = 0;
      std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v19 + 24), v20 + 24);
      v20 = (v20 + 56);
      v19 += 56;
    }

    while (v20 != a3);
  }

  v22 = *a4;
  *(v19 + 2) = *(a4 + 2);
  *v19 = v22;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((v19 + 24), a4 + 24);
  if (v18 != a3)
  {
    v23 = (v19 + 80);
    v24 = a3;
    do
    {
      v25 = *v24;
      *(v23 - 8) = *(v24 + 2);
      *(v23 - 24) = v25;
      *(v24 + 1) = 0;
      *(v24 + 2) = 0;
      *v24 = 0;
      v26 = std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v23, v24 + 24);
      v24 = (v24 + 56);
      v23 = v26 + 56;
    }

    while (v24 != v18);
  }

  if (v17)
  {
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v17 + 24);
      do
      {
        std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v28);
        if (*(v28 - 1) < 0)
        {
          operator delete(*(v28 - 24));
        }

        v28 += 56;
        --v27;
      }

      while (v27);
    }

    operator delete(*a2);
  }

  v29 = *(a2 + 1) + 1;
  *a2 = v16;
  *(a2 + 1) = v29;
  *(a2 + 2) = v10;
  *a1 = &v16[a3 - v14];
}

uint64_t boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5 == a1 + 24)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v7 = a2 + 3;
  v8 = *(a2 + 6);
  if (v8)
  {
    if (v8 == (a2 + 24))
    {
      *v6 = (a1 + 24);
      (*(**v7 + 24))(*v7, a1 + 24);
      return a1;
    }

    *v6 = v8;
  }

  else
  {
    v7 = (a1 + 48);
  }

  *v7 = 0;
  return a1;
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object)>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](*a1 + 24);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>,boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>*,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>>(void *a1, char *a2, __int128 *a3, __int128 *a4)
{
  v4 = *(a2 + 2);
  v5 = *(a2 + 1) + 1;
  if (0x249249249249249 - v4 < v5 - v4)
  {
    goto LABEL_27;
  }

  v6 = v4 >> 61;
  v7 = 8 * v4;
  if (v6 > 4)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v7 / 5;
  if (v6)
  {
    v9 = v8;
  }

  if (v9 >= 0x249249249249249)
  {
    v9 = 0x249249249249249;
  }

  v10 = v5 <= v9 ? v9 : *(a2 + 1) + 1;
  if (v5 > 0x249249249249249)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *a2;
  v15 = operator new(56 * v10);
  v16 = v15;
  v17 = *a2;
  v18 = *a2 + 56 * *(a2 + 1);
  v19 = v15;
  if (*a2 != a3)
  {
    v20 = *a2;
    v19 = v15;
    do
    {
      v21 = *v20;
      *(v19 + 2) = *(v20 + 2);
      *v19 = v21;
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *v20 = 0;
      std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::__value_func[abi:ne200100]((v19 + 24), v20 + 24);
      v20 = (v20 + 56);
      v19 += 56;
    }

    while (v20 != a3);
  }

  v22 = *a4;
  *(v19 + 2) = *(a4 + 2);
  *v19 = v22;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::__value_func[abi:ne200100]((v19 + 24), a4 + 24);
  if (v18 != a3)
  {
    v23 = (v19 + 80);
    v24 = a3;
    do
    {
      v25 = *v24;
      *(v23 - 8) = *(v24 + 2);
      *(v23 - 24) = v25;
      *(v24 + 1) = 0;
      *(v24 + 2) = 0;
      *v24 = 0;
      v26 = std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::__value_func[abi:ne200100](v23, v24 + 24);
      v24 = (v24 + 56);
      v23 = v26 + 56;
    }

    while (v24 != v18);
  }

  if (v17)
  {
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v17 + 24);
      do
      {
        std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](v28);
        if (*(v28 - 1) < 0)
        {
          operator delete(*(v28 - 24));
        }

        v28 += 56;
        --v27;
      }

      while (v27);
    }

    operator delete(*a2);
  }

  v29 = *(a2 + 1) + 1;
  *a2 = v16;
  *(a2 + 1) = v29;
  *(a2 + 2) = v10;
  *a1 = &v16[a3 - v14];
}

uint64_t std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::operator=[abi:ne200100](a1 + 24, a2 + 24);
  return a1;
}

uint64_t *boost::container::dtl::value_destructor<boost::container::new_allocator<boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>,boost::container::dtl::pair<std::string,std::function<void ()(xpc::object,std::shared_ptr<xpc::object>)>>>::~value_destructor(uint64_t *a1)
{
  v2 = *a1;
  std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::~__value_func[abi:ne200100](*a1 + 24);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(xpc::object,std::shared_ptr<xpc::object>)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void **dispatch::async<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<std::function<void ()(xpc::object)> &&,std::default_delete<std::function<void ()(xpc::object)> &&>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v1 = *a1;
  v5[0] = a1;
  v5[1] = v1;
  object = xpc_null_create();
  v2 = v1[3];
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &object);
  xpc_release(object);
  v3 = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v1);
  operator delete(v3);
  return std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](v5);
}

void sub_1A90FD120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::default_delete<std::function<void ()(xpc::object)> &>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<ctu::RestModuleState>::execute_wrapped<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>(ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0 &&)::{lambda(void)#1},std::default_delete<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ctu::RestModuleState::sendRawGet(std::string &&,std::function<void ()(xpc::object)> &&)::$_0,std::default_delete<std::function<void ()(xpc::object)> &>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](v2);
    operator delete(v3);
  }

  return a1;
}

uint64_t ctu::FirstBootAfterUpdate::FirstBootAfterUpdate(uint64_t a1, char a2, uint64_t a3)
{
  v6 = os_log_create("com.apple.telephony", "timerScaling.firstbootafterupdate");
  v10 = v6;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v8 = dispatch_queue_create_with_target_V2("FirstBootAfterUpdate", initially_inactive, 0);
  dispatch_set_qos_class_floor(v8, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v8);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    dispatch_retain(v8);
    *(a1 + 32) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  v11 = v6;
  if (v6)
  {
    os_retain(v6);
  }

  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::SharedRef((a1 + 40), &v11);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v11);
  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(&v10);
  *a1 = &unk_1F1CB8DA0;
  *(a1 + 48) = 1;
  *(a1 + 49) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  return a1;
}

void ctu::FirstBootAfterUpdate::create(char a1@<W0>, uint64_t a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v6 = operator new(0x48uLL);
  ctu::FirstBootAfterUpdate::FirstBootAfterUpdate(v6, a1, a2);
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_1F1CB8E70;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (on_zero_shared)
  {
    if (on_zero_shared->__shared_owners_ != -1)
    {
      goto LABEL_6;
    }

    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v7;
    std::__shared_weak_count::__release_weak(on_zero_shared);
  }

  else
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_6:
  if (ctu::FirstBootAfterUpdate::init(v6))
  {
    *a3 = v6;
    a3[1] = v7;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

BOOL ctu::FirstBootAfterUpdate::init(ctu::FirstBootAfterUpdate *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_debug_impl(&dword_1A90E3000, v2, OS_LOG_TYPE_DEBUG, "#D Init", &v12, 2u);
  }

  v3 = *(this + 7);
  if (v3 <= 0)
  {
    v10 = *(this + 5);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v12 = 134217984;
      v13 = v3;
      v7 = "Invalid expiry time (%lld s) passed for scenario";
      v8 = v10;
      v9 = 12;
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *(this + 49);
    if (v4 > 1)
    {
      if (ctu::FirstBootAfterUpdate::isFirstBootAfterUpdate(this))
      {
        ctu::FirstBootAfterUpdate::scheduleEvaluationExpiryTimer(this);
      }

      else
      {
        *(this + 48) = 0;
      }

      result = 1;
    }

    else
    {
      v5 = *(this + 5);
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v12 = 67109120;
        LODWORD(v13) = v4;
        v7 = "Invalid scaling factor (%u) passed for scenario";
        v8 = v5;
        v9 = 8;
LABEL_9:
        _os_log_error_impl(&dword_1A90E3000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
        result = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void ctu::FirstBootAfterUpdate::~FirstBootAfterUpdate(ctu::FirstBootAfterUpdate *this)
{
  *this = &unk_1F1CB8DA0;
  v2 = *(this + 8);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 8);
    *(this + 8) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(this + 5);
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  ctu::FirstBootAfterUpdate::~FirstBootAfterUpdate(this);

  operator delete(v1);
}

void ctu::FirstBootAfterUpdate::getCurrentOSVersion(ctu::FirstBootAfterUpdate *this)
{
  pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v1 = off_1ED40DD20;
  if (!off_1ED40DD20)
  {
    ctu::Gestalt::create_default_global(&v4);
    v2 = *(&off_1ED40DD20 + 1);
    off_1ED40DD20 = v4;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      v1 = off_1ED40DD20;
    }

    else
    {
      v1 = v4;
    }
  }

  v3 = *(&off_1ED40DD20 + 1);
  if (*(&off_1ED40DD20 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED40DD20 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (**v1)(v1);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *ctu::FirstBootAfterUpdate::getCurrentBootSessionUUID@<X0>(ctu::FirstBootAfterUpdate *this@<X0>, void *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v15[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v4;
  *v15 = v4;
  v11 = 37;
  v5 = &v14;
  if (sysctlbyname("kern.bootsessionuuid", &v14, &v11, 0, 0) || v11 != 37)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315138;
      v13 = v10;
      _os_log_error_impl(&dword_1A90E3000, v6, OS_LOG_TYPE_ERROR, "Failed to get boot session uuid, error: %s", buf, 0xCu);
    }

    v5 = "";
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, v5);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ctu::FirstBootAfterUpdate::isFirstBootAfterUpdate(ctu::FirstBootAfterUpdate *this)
{
  v2 = this;
  if (atomic_load_explicit(&qword_1EB3828A8, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&qword_1EB3828A8, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<ctu::FirstBootAfterUpdate::isFirstBootAfterUpdate(void)::$_0 &&>>);
  }

  return _MergedGlobals_1;
}

void ctu::FirstBootAfterUpdate::scheduleEvaluationExpiryTimer(ctu::FirstBootAfterUpdate *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v26[0] = 0;
  v26[1] = 0;
  v25 = 16;
  if (sysctlbyname("kern.boottime", v26, &v25, 0, 0))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v28 = v20;
      _os_log_error_impl(&dword_1A90E3000, v2, OS_LOG_TYPE_ERROR, "Failed to read kern boot time, error: %s", buf, 0xCu);
    }

LABEL_4:
    *(this + 48) = 0;
    goto LABEL_5;
  }

  v4 = time(0) - v26[0];
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(this + 7);
    *buf = 134218240;
    v28 = v4;
    v29 = 2048;
    v30 = v21;
    _os_log_debug_impl(&dword_1A90E3000, v5, OS_LOG_TYPE_DEBUG, "#D uptime: %lld seconds, scenario expiry: %lld seconds", buf, 0x16u);
  }

  v6 = *(this + 7);
  v7 = v6 - v4;
  if (v6 <= v4)
  {
    v18 = *(this + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A90E3000, v18, OS_LOG_TYPE_DEFAULT, "#I Enough uptime, not starting First Boot After Update expiry timer", buf, 2u);
    }

    goto LABEL_4;
  }

  v8 = *(this + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = v7;
    _os_log_impl(&dword_1A90E3000, v8, OS_LOG_TYPE_DEFAULT, "#I Starting First Boot After Update expiry timer with %lld seconds", buf, 0xCu);
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, *(this + 3));
  v10 = *(this + 8);
  *(this + 8) = v9;
  if (v10)
  {
    dispatch_release(v10);
    v9 = *(this + 8);
  }

  if (v9)
  {
    dispatch_retain(v9);
    v11 = *(this + 2);
    if (!v11 || (v12 = *(this + 1), (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v13;
    p_shared_weak_owners = &v13->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 1174405120;
    handler[2] = ___ZN3ctu20FirstBootAfterUpdate29scheduleEvaluationExpiryTimerEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_13;
    handler[4] = this;
    handler[5] = v12;
    v23 = v14;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    object = v9;
    dispatch_retain(v9);
    dispatch_source_set_event_handler(v9, handler);
    v16 = *(this + 8);
    v17 = dispatch_time(0, 1000000000 * v7);
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    dispatch_activate(*(this + 8));
    if (object)
    {
      dispatch_release(object);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    std::__shared_weak_count::__release_weak(v14);
    dispatch_release(v9);
  }

LABEL_5:
  v3 = *MEMORY[0x1E69E9840];
}