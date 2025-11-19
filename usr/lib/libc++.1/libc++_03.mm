uint64_t std::pmr::synchronized_pool_resource::do_allocate(std::pmr::synchronized_pool_resource *this, uint64_t a2, uint64_t a3)
{
  std::mutex::lock((this + 8));
  v6 = (*(*(this + 9) + 16))(this + 72, a2, a3);
  std::mutex::unlock((this + 8));
  return v6;
}

void std::pmr::synchronized_pool_resource::do_deallocate(std::pmr::synchronized_pool_resource *this, void *a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((this + 8));
  (*(*(this + 9) + 24))(this + 72, a2, a3, a4);

  std::mutex::unlock((this + 8));
}

void *std::pmr::__new_delete_memory_resource_imp::do_allocate(std::pmr::__new_delete_memory_resource_imp *this, size_t __sz, std::align_val_t a3)
{
  if (a3 < 0x11)
  {
    operator new();
  }

  return operator new(__sz, a3);
}

void std::pmr::__new_delete_memory_resource_imp::do_deallocate(std::pmr::__new_delete_memory_resource_imp *this, void *__p, size_t __sz, std::align_val_t a4)
{
  if (a4 < 0x11)
  {
    JUMPOUT(0x193B0CA40);
  }

  operator delete(__p, __sz, a4);
}

void *std::pmr::monotonic_buffer_resource::release[abi:ne200100](void *result)
{
  v1 = result;
  if (result[1])
  {
    result[2] = result[3];
  }

  v2 = result[4];
  if (v2)
  {
    do
    {
      v4 = *v2;
      v3 = v2[1];
      v5 = v2[3];
      result = (*(*v1[5] + 24))(v1[5]);
      v1[4] = v4;
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

void std::__throw_bad_alloc(void)
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_alloc::bad_alloc(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5648], MEMORY[0x1E69E5628]);
}

void std::bad_optional_access::~bad_optional_access(std::bad_optional_access *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193B0CA40);
}

void std::experimental::bad_optional_access::~bad_optional_access(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x193B0CA40);
}

std::__rs_default *__cdecl std::__rs_default::__rs_default(std::__rs_default *this)
{
  pthread_mutex_lock(&std::__rs_mut);
  std::__rs_default::__c_ = 1;
  return this;
}

{
  pthread_mutex_lock(&std::__rs_mut);
  std::__rs_default::__c_ = 1;
  return this;
}

std::__rs_default *__cdecl std::__rs_default::__rs_default(std::__rs_default *this, const std::__rs_default *a2)
{
  ++std::__rs_default::__c_;
  return this;
}

{
  ++std::__rs_default::__c_;
  return this;
}

void std::__rs_default::~__rs_default(std::__rs_default *this)
{
  if (!--std::__rs_default::__c_)
  {
    pthread_mutex_unlock(&std::__rs_mut);
  }
}

std::__rs_default::result_type std::__rs_default::operator()(std::__rs_default *this)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    std::__rs_default::operator()();
  }

  return std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&dword_1EAE00B48);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t std::__rs_get()
{
  result = pthread_mutex_lock(&std::__rs_mut);
  std::__rs_default::__c_ = 1;
  return result;
}

unint64_t std::__append_n_digits(unint64_t this, unsigned int a2, _BYTE *a3, char *a4)
{
  v4 = &a3[this];
  if (a2 >> 4 < 0x271)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a2;
    do
    {
      a2 = v6 / 0x2710;
      this = v6 % 0x2710 / 0x64uLL;
      v7 = &v4[-v5];
      *(v7 - 1) = std::__itoa::__digits_base_10[v6 % 0x2710 % 0x64];
      *(v7 - 2) = std::__itoa::__digits_base_10[this];
      v5 += 4;
      v8 = v6 > 0x5F5E0FF;
      v6 /= 0x2710u;
    }

    while (v8);
  }

  if (a2 >= 0x64)
  {
    *&v4[-v5 - 2] = std::__itoa::__digits_base_10[a2 % 0x64u];
    v5 |= 2u;
    a2 = a2 / 0x64u;
  }

  if (a2 < 0xA)
  {
    *a3 = a2 | 0x30;
  }

  else
  {
    *&v4[-v5 - 2] = std::__itoa::__digits_base_10[a2];
  }

  return this;
}

unint64_t std::__append_nine_digits(unint64_t this, _BYTE *a2, char *a3)
{
  if (this)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = this;
      v6 = v4;
      this = this / 0x2710uLL;
      v7 = v5 - 10000 * this;
      *&a2[v3 + 7] = std::__itoa::__digits_base_10[v7 % 0x64];
      *&a2[v3 + 5] = std::__itoa::__digits_base_10[v7 / 0x64uLL];
      v3 = -4;
      v4 = 0;
    }

    while ((v6 & 1) != 0);
    *a2 = this + 48;
  }

  else
  {
    *a2 = 0x3030303030303030;
    a2[8] = 48;
  }

  return this;
}

char *std::__d2fixed_buffered_n(std::__1 *this, char *a2, size_t __len, double a4)
{
  v4 = __len;
  v5 = a2;
  if (a4 != 0.0)
  {
    if (*&a4 >> 52)
    {
      v6 = *&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
    }

    else
    {
      v6 = *&a4 & 0xFFFFFFFFFFFFFLL;
    }

    __len_4 = v6;
    if (*&a4 >> 52)
    {
      v7 = (*&a4 >> 52) - 1075;
    }

    else
    {
      v7 = -1074;
    }

    v8 = this;
    v81 = v7;
    if (v7 < -52)
    {
LABEL_46:
      if (v8 != v5)
      {
        *v8 = 48;
        v8 = (v8 + 1);
        goto LABEL_48;
      }

      return v5;
    }

    v9 = 0;
    v10 = (v7 + 15) >> 4;
    if (v7 < 0)
    {
      v10 = 0;
    }

    v11 = 16 * v10 - v7;
    v12 = __len_4 << 8;
    v13 = std::__POW10_OFFSET[v10];
    v14 = (7282 * (((1262608 * v10) >> 18) + 25)) >> 16;
    v8 = this;
    v78 = v13;
    __lena = v4;
    while (1)
    {
      v15 = (&std::__POW10_SPLIT + 24 * v13 + 24 * v14 - 8);
      v16 = v14;
      while (1)
      {
        v17 = *v15 * v12;
        v18 = ((*(v15 - 1) * v12) >> 64) + __CFADD__(*(v15 - 1) * v12, (*(v15 - 2) * v12) >> 64) + v17;
        if (v18 >= v17)
        {
          v19 = (*v15 * v12) >> 64;
        }

        else
        {
          v19 = ((*v15 * v12) >> 64) + 1;
        }

        v20 = ((2 * v19) << ~(v11 & 0x3Fu)) | (v18 >> (v11 & 0x3F));
        v21 = __CFADD__(0x89705F4136B4A597 * v20, (__PAIR128__(v19 >> v11, v20) * 0x31680A88F8953031) >> 64);
        v14 = v16 - 1;
        v22 = (v21 + __CFADD__((v20 * 0x31680A88F8953031uLL) >> 64, 0x31680A88F8953031 * (v19 >> v11)) + ((__PAIR128__(0x89705F4136B4A597, 0x31680A88F8953031) * (v19 >> v11)) >> 64) + ((v20 * 0x89705F4136B4A597) >> 64)) >> 29;
        v23 = v20 - 1000000000 * v22;
        if (v9)
        {
          if (v5 - v8 >= 9)
          {
            v24 = v8;
            std::__append_nine_digits((v20 - 1000000000 * v22), v8, v5);
            v25 = 9;
            goto LABEL_44;
          }

          return v5;
        }

        if (v23)
        {
          break;
        }

        v9 = 0;
        v15 -= 3;
        --v16;
        if (v14 + 1 <= 1)
        {
          goto LABEL_46;
        }
      }

      if (v23 <= 0x5F5E0FF)
      {
        if (v23 <= 0x98967F)
        {
          if (v23 <= 0xF423F)
          {
            if (v23 >> 5 <= 0xC34)
            {
              if (v23 >> 4 <= 0x270)
              {
                if (v23 <= 0x3E7)
                {
                  if (v23 <= 9)
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v26 = 2;
                  }

                  if (v23 > 0x63)
                  {
                    v26 = 3;
                  }
                }

                else
                {
                  v26 = 4;
                }
              }

              else
              {
                v26 = 5;
              }
            }

            else
            {
              v26 = 6;
            }
          }

          else
          {
            v26 = 7;
          }
        }

        else
        {
          v26 = 8;
        }
      }

      else
      {
        v26 = 9;
      }

      if (v5 - v8 < v26)
      {
        return v5;
      }

      v25 = v26;
      v24 = v8;
      std::__append_n_digits(v26, v23, v8, v8);
LABEL_44:
      v8 = (v24 + v25);
      v9 = 1;
      v13 = v78;
      v5 = a2;
      v4 = __lena;
      if (v16 < 2)
      {
LABEL_48:
        if (v4)
        {
          if (v8 != v5)
          {
            *v8 = 46;
            v8 = (v8 + 1);
            goto LABEL_51;
          }

          return v5;
        }

LABEL_51:
        if ((v81 & 0x80000000) == 0 || (v27 = -v81 >> 4, v28 = v4 / 9, v29 = std::__MIN_BLOCK_2[v27], v4 / 9 < v29))
        {
          if (v5 - v8 >= v4)
          {
            v30 = v8;
            memset(v8, 48, v4);
            return v30 + v4;
          }

          return v5;
        }

        if (v27 - 68 >= 0xFFFFFFFFFFFFFFC2)
        {
          if (v5 - v8 < 9 * v29)
          {
            return v5;
          }

          v35 = v5;
          v36 = v8;
          memset(v8, 48, 9 * v29);
          v5 = v35;
          v8 = (v36 + 9 * v29);
          v34 = v29;
        }

        else
        {
          v34 = 0;
        }

        v79 = std::__POW10_OFFSET_2[v27];
        v37 = v34 - v29 + v79;
        v76 = std::__POW10_OFFSET_2[(v27 + 1)];
        __lenb = v4;
        if (v37 >= v76)
        {
LABEL_78:
          v56 = __lenb - 9 * v34;
          if (v5 - v8 >= v56)
          {
            v57 = v8;
            memset(v8, 48, __lenb - 9 * v34);
            return v57 + v56;
          }

          return v5;
        }

        v38 = -v81 & 0xF;
        v39 = __len_4 << 8;
        v75 = v4 / 9;
        v74 = v4;
        v40 = (v8 + ~(9 * v28) + v4);
        while (1)
        {
          v41 = (&std::__POW10_SPLIT_2 + 24 * v37);
          v42 = v41[1];
          v43 = (*v41 * v39) >> 64;
          v44 = v41[2];
          v45 = (v44 * v39) >> 64;
          v46 = v44 * v39;
          v47 = ((v42 * v39) >> 64) + __CFADD__(v42 * v39, v43) + v46;
          v48 = v47 >= v46 ? v45 : v45 + 1;
          v49 = v48 >> v38;
          v50 = v47 >> v38;
          v51 = ((2 * v48) << ~v38) | v50;
          v52 = __CFADD__(0x89705F4136B4A597 * v51, (__PAIR128__(v49, v51) * 0x31680A88F8953031) >> 64);
          v53 = v50 - 1000000000 * ((v52 + __CFADD__((v51 * 0x31680A88F8953031uLL) >> 64, 0x31680A88F8953031 * v49) + ((__PAIR128__(0x89705F4136B4A597, 0x31680A88F8953031) * v49) >> 64) + ((v51 * 0x89705F4136B4A597) >> 64)) >> 29);
          if (v34 == v28)
          {
            break;
          }

          if (v5 - v8 < 9)
          {
            return v5;
          }

          v54 = v5;
          v55 = v8;
          std::__append_nine_digits(v53, v8, v5);
          v5 = v54;
          v8 = (v55 + 9);
          v37 = ++v34 - v29 + v79;
          v40 = (v40 + 9);
          if (v37 >= v76)
          {
            goto LABEL_78;
          }
        }

        v58 = __lenb - 9 * v75;
        if (v58 == 9)
        {
          v59 = 0;
          v60 = this;
          goto LABEL_95;
        }

        v61 = 0;
        v60 = this;
        do
        {
          v62 = v53;
          LODWORD(v53) = v53 / 0xA;
          ++v61;
        }

        while (v61 < 9 - v58);
        v59 = v62 - 10 * v53;
        if (v59 == 5)
        {
          v63 = ~__lenb - v81;
          if ((__len_4 & ~(-1 << v63)) != 0)
          {
            v64 = 1;
          }

          else
          {
            v64 = 2;
          }

          if (v63 <= 0x3B)
          {
            v65 = v64;
          }

          else
          {
            v65 = 1;
          }

          if (v63 >= 1)
          {
            v66 = v65;
          }

          else
          {
            v66 = 2;
          }
        }

        else
        {
LABEL_95:
          v66 = v59 > 5;
        }

        if (v58)
        {
          if (v5 - v8 < v58)
          {
            return v5;
          }

          if (v58 == 1)
          {
            LODWORD(v67) = 0;
          }

          else
          {
            v67 = 0;
            v68 = v74 - 9 * v28 - 2;
            do
            {
              v69 = v53;
              LODWORD(v53) = v53 / 0x64;
              *(v8 + v68) = std::__itoa::__digits_base_10[(v69 - 100 * v53)];
              v67 += 2;
              v68 -= 2;
            }

            while (v67 < (v58 - 1));
          }

          if (v67 < v58)
          {
            *(v8 + (v58 + ~v67)) = (v53 % 0xA) | 0x30;
          }

          v8 = (v8 + v58);
        }

        if (!v66)
        {
          return v8;
        }

        if (v8 != v60)
        {
          v70 = v5;
          while (1)
          {
            v71 = *v40;
            if (v71 == 57)
            {
              *v40 = 48;
              v66 = 1;
            }

            else
            {
              if (v71 != 46)
              {
                if (v66 == 1 || (v71 & 1) != 0)
                {
                  *v40 = v71 + 1;
                }

                return v8;
              }

              v70 = v40;
            }

            v72 = v40 - 1;
            v73 = v40 == v60;
            v40 = (v40 - 1);
            if (v73)
            {
              v72[1] = 49;
              if (v70 != v5)
              {
                *v70 = 11824;
              }

              goto LABEL_118;
            }
          }
        }

        *v8 = 49;
LABEL_118:
        if (v8 != v5)
        {
          *v8 = 48;
          return v8 + 1;
        }

        return v5;
      }
    }
  }

  if (v4)
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  if (a2 - this < (v31 + v4))
  {
    return v5;
  }

  *this = 48;
  v8 = (this + 1);
  if (v4)
  {
    v33 = this + 2;
    *(this + 1) = 46;
    memset(this + 2, 48, v4);
    return &v33[v4];
  }

  return v8;
}

char *std::__d2exp_buffered_n(std::__1 *this, char *a2, char *__len, double a4)
{
  v4 = __len;
  v5 = a2;
  if (a4 == 0.0)
  {
    if (__len)
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    if (a2 - this >= __len + v34 + 4)
    {
      *this = 48;
      v35 = this + 1;
      if (__len)
      {
        v36 = this + 2;
        *(this + 1) = 46;
        memset(this + 2, 48, __len);
        v35 = &v36[v4];
      }

      *v35 = 808463205;
      return v35 + 4;
    }

    return v5;
  }

  v6 = 0;
  v100 = __len;
  v101 = 0;
  v7 = *&a4 & 0xFFFFFFFFFFFFFLL;
  if (*&a4 >> 52)
  {
    v7 = *&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
    v8 = (*&a4 >> 52) - 1075;
  }

  else
  {
    v8 = -1074;
  }

  v105 = __len + 1;
  v97 = v7;
  v9 = v7 << 8;
  v10 = this;
  v99 = v8;
  if (v8 >= -52)
  {
    v6 = 0;
    v101 = 0;
    v11 = (v8 + 15) >> 4;
    if (v8 < 0)
    {
      v11 = 0;
    }

    v103 = std::__POW10_OFFSET[v11];
    v102 = 16 * v11 - v8;
    v12 = (7282 * (((1262608 * v11) >> 18) + 25)) >> 16;
    v10 = this;
    do
    {
      v13 = v12--;
      v14 = (&std::__POW10_SPLIT + 24 * v12 + 24 * v103);
      v15 = v14[1];
      v16 = (*v14 * v9) >> 64;
      v17 = v14[2];
      v18 = (v17 * v9) >> 64;
      v19 = v17 * v9;
      v20 = ((v15 * v9) >> 64) + __CFADD__(v15 * v9, v16) + v19;
      if (v20 >= v19)
      {
        v21 = v18;
      }

      else
      {
        v21 = v18 + 1;
      }

      v22 = v21 >> v102;
      v23 = ((2 * v21) << (v102 & 0x3F ^ 0x3Fu)) | (v20 >> (v102 & 0x3F));
      v24 = __CFADD__(0x89705F4136B4A597 * v23, (__PAIR128__(v22, v23) * 0x31680A88F8953031) >> 64);
      v25 = v23 - 1000000000 * ((v24 + __CFADD__((v23 * 0x31680A88F8953031uLL) >> 64, 0x31680A88F8953031 * v22) + ((__PAIR128__(0x89705F4136B4A597, 0x31680A88F8953031) * v22) >> 64) + ((v23 * 0x89705F4136B4A597) >> 64)) >> 29);
      if (v6)
      {
        v26 = v6 + 9;
        if (v6 + 9 > v105)
        {
          v67 = v6;
          v6 = 9;
          goto LABEL_123;
        }

        if (a2 - v10 < 9)
        {
          return a2;
        }

        std::__append_nine_digits(v25, v10, __len);
        v10 = (v10 + 9);
        v6 = v26;
      }

      else if (v25)
      {
        if (v25 <= 0x5F5E0FF)
        {
          if (v25 <= 0x98967F)
          {
            if (v25 <= 0xF423F)
            {
              if (v25 >> 5 <= 0xC34)
              {
                if (v25 >> 4 <= 0x270)
                {
                  if (v25 <= 0x3E7)
                  {
                    if (v25 <= 0x63)
                    {
                      if (v25 <= 9)
                      {
                        v6 = 1;
                      }

                      else
                      {
                        v6 = 2;
                      }
                    }

                    else
                    {
                      v6 = 3;
                    }
                  }

                  else
                  {
                    v6 = 4;
                  }
                }

                else
                {
                  v6 = 5;
                }
              }

              else
              {
                v6 = 6;
              }
            }

            else
            {
              v6 = 7;
            }
          }

          else
          {
            v6 = 8;
          }
        }

        else
        {
          v6 = 9;
        }

        v101 = 9 * v12 + v6 - 1;
        if (v6 > v105)
        {
          v67 = 0;
          goto LABEL_123;
        }

        if (v100)
        {
          v27 = v6 + 1;
          if (a2 - v10 < v27)
          {
            return a2;
          }

          v28 = v10 + v6;
          if (v25 >> 4 < 0x271)
          {
            v29 = 0;
          }

          else
          {
            LODWORD(v29) = 0;
            do
            {
              v30 = v25;
              LODWORD(v25) = v25 / 0x2710;
              v31 = v30 - 10000 * v25;
              v32 = &v28[-v29 + 1];
              *(v32 - 2) = std::__itoa::__digits_base_10[v31 % 0x64];
              *(v32 - 4) = std::__itoa::__digits_base_10[v31 / 0x64uLL];
              v29 = (v29 + 4);
            }

            while (v30 > 0x5F5E0FF);
          }

          if (v25 >= 0x64)
          {
            *&v28[~v29] = std::__itoa::__digits_base_10[v25 % 0x64u];
            LODWORD(v25) = v25 / 0x64u;
          }

          if (v25 < 0xA)
          {
            *(v10 + 1) = 46;
            v33 = v25 | 0x30;
          }

          else
          {
            *(v10 + 2) = *(std::__itoa::__digits_base_10 + (2 * v25) + 1);
            *(v10 + 1) = 46;
            v33 = std::__itoa::__digits_base_10[v25];
          }

          *v10 = v33;
          v10 = (v10 + v27);
        }

        else
        {
          if (v10 == a2)
          {
            return a2;
          }

          *v10 = v23 + 48;
          v10 = (v10 + 1);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    while (v13 > 1);
    if ((v99 & 0x80000000) == 0)
    {
LABEL_118:
      v65 = 0;
      LODWORD(v25) = 0;
      v66 = v105 - v6;
      v67 = v6;
      v5 = a2;
      goto LABEL_132;
    }
  }

  v37 = -v99;
  v38 = std::__MIN_BLOCK_2[v37 >> 4];
  v39 = std::__POW10_OFFSET_2[v37 >> 4];
  v40 = std::__POW10_OFFSET_2[(-v99 >> 4) + 1];
  v41 = -v99 & 0xF;
  if (v38 <= 0xC7)
  {
    v42 = 199;
  }

  else
  {
    v42 = std::__MIN_BLOCK_2[v37 >> 4];
  }

  v43 = std::__MIN_BLOCK_2[v37 >> 4];
  while (1)
  {
    v44 = v43 - v38 + v39;
    if (v44 < v40)
    {
      break;
    }

    v25 = 0;
    if (!v6)
    {
      v6 = 0;
      goto LABEL_116;
    }

LABEL_80:
    v57 = v6 + 9;
    if (v6 + 9 > v105)
    {
      v67 = v6;
      v6 = 9;
      goto LABEL_123;
    }

    if (a2 - v10 < 9)
    {
      return a2;
    }

    std::__append_nine_digits(v25, v10, 0xFFFFD8F0);
    v10 = (v10 + 9);
    v6 = v57;
LABEL_116:
    v64 = v43++ == v42;
    if (v64)
    {
      goto LABEL_118;
    }
  }

  v45 = (&std::__POW10_SPLIT_2 + 24 * v44);
  v46 = v45[1];
  v47 = (*v45 * v9) >> 64;
  v48 = v45[2];
  v49 = (v48 * v9) >> 64;
  v50 = v48 * v9;
  v51 = ((v46 * v9) >> 64) + __CFADD__(v46 * v9, v47) + v50;
  if (v51 >= v50)
  {
    v52 = v49;
  }

  else
  {
    v52 = v49 + 1;
  }

  v53 = v52 >> v41;
  v54 = v51 >> v41;
  v55 = ((2 * v52) << ~v41) | v54;
  v56 = __CFADD__(0x89705F4136B4A597 * v55, (__PAIR128__(v53, v55) * 0x31680A88F8953031) >> 64);
  v25 = v54 - 1000000000 * ((v56 + __CFADD__((v55 * 0x31680A88F8953031uLL) >> 64, 0x31680A88F8953031 * v53) + ((__PAIR128__(0x89705F4136B4A597, 0x31680A88F8953031) * v53) >> 64) + ((v55 * 0x89705F4136B4A597) >> 64)) >> 29);
  if (v6)
  {
    goto LABEL_80;
  }

  if (!v25)
  {
    v6 = 0;
    goto LABEL_116;
  }

  if (v25 <= 0x5F5E0FF)
  {
    if (v25 <= 0x98967F)
    {
      if (v25 <= 0xF423F)
      {
        if (v25 >> 5 <= 0xC34)
        {
          if (v25 >> 4 <= 0x270)
          {
            if (v25 <= 0x3E7)
            {
              if (v25 <= 0x63)
              {
                if (v25 <= 9)
                {
                  v6 = 1;
                }

                else
                {
                  v6 = 2;
                }
              }

              else
              {
                v6 = 3;
              }
            }

            else
            {
              v6 = 4;
            }
          }

          else
          {
            v6 = 5;
          }
        }

        else
        {
          v6 = 6;
        }
      }

      else
      {
        v6 = 7;
      }
    }

    else
    {
      v6 = 8;
    }
  }

  else
  {
    v6 = 9;
  }

  v101 = 9 * ~v43 + v6 - 1;
  if (v6 <= v105)
  {
    if (v100)
    {
      v58 = v6 + 1;
      if (a2 - v10 < v58)
      {
        return a2;
      }

      if (v25 >> 4 < 0x271)
      {
        v59 = 0;
      }

      else
      {
        LODWORD(v59) = 0;
        do
        {
          v60 = v25;
          LODWORD(v25) = v25 / 0x2710;
          v61 = v60 - 10000 * v25;
          v62 = v10 + v6 - v59 + 1;
          *(v62 - 2) = std::__itoa::__digits_base_10[v61 % 0x64];
          *(v62 - 4) = std::__itoa::__digits_base_10[v61 / 0x64uLL];
          v59 = (v59 + 4);
        }

        while (v60 > 0x5F5E0FF);
      }

      if (v25 >= 0x64)
      {
        *(v10 + v6 + ~v59) = std::__itoa::__digits_base_10[v25 % 0x64u];
        LODWORD(v25) = v25 / 0x64u;
      }

      if (v25 < 0xA)
      {
        *(v10 + 1) = 46;
        v63 = v25 | 0x30;
      }

      else
      {
        *(v10 + 2) = *(std::__itoa::__digits_base_10 + (2 * v25) + 1);
        *(v10 + 1) = 46;
        v63 = std::__itoa::__digits_base_10[v25];
      }

      *v10 = v63;
      v10 = (v10 + v58);
    }

    else
    {
      if (v10 == a2)
      {
        return a2;
      }

      *v10 = v55 + 48;
      v10 = (v10 + 1);
    }

    goto LABEL_116;
  }

  v67 = 0;
LABEL_123:
  v66 = v105 - v67;
  v68 = v6 >= v105 - v67;
  v69 = v6 - (v105 - v67);
  v5 = a2;
  v70 = v97;
  if (v69 == 0 || !v68)
  {
    v65 = 0;
    goto LABEL_132;
  }

  if (v69 <= 1)
  {
    v69 = 1;
  }

  do
  {
    v71 = v25;
    LODWORD(v25) = v25 / 0xA;
    --v69;
  }

  while (v69);
  v65 = v71 - 10 * v25;
  if (v65 == 5)
  {
    v72 = v105 - v101;
    v73 = -v99 - (v105 - v101);
    if (v73 < 1)
    {
      v74 = 1;
      goto LABEL_185;
    }

    if (v73 > 0x3B)
    {
LABEL_190:
      v75 = 1;
    }

    else
    {
      v74 = (v97 & ~(-1 << v73)) == 0;
LABEL_185:
      if (v72 < 0 && v74)
      {
        v96 = -1;
        do
        {
          ++v96;
          v64 = v70 % 5 == 0;
          v70 /= 5uLL;
        }

        while (v64);
        if (v96 < v101 - v105)
        {
          goto LABEL_190;
        }
      }

      else if (v72 < 0 || !v74)
      {
        goto LABEL_190;
      }

      v75 = 2;
    }
  }

  else
  {
LABEL_132:
    v75 = v65 > 5;
  }

  if (v67)
  {
    v76 = this;
    if (v5 - v10 < v66)
    {
      return v5;
    }

    v77 = v66;
    if (v25)
    {
      if (v66 == 1)
      {
        LODWORD(v78) = 0;
      }

      else
      {
        v78 = 0;
        v79 = (v10 + v66 - 2);
        do
        {
          v80 = v25;
          LODWORD(v25) = v25 / 0x64;
          *v79-- = std::__itoa::__digits_base_10[(v80 - 100 * v25)];
          v78 += 2;
        }

        while (v78 < v66 - 1);
      }

      if (v78 < v66)
      {
        *(v10 + v66 + ~v78) = (v25 % 0xA) | 0x30;
      }
    }

    else
    {
      memset(v10, 48, v66);
    }

    v86 = (v10 + v77);
  }

  else
  {
    v76 = this;
    if (v100)
    {
      v81 = v66 + 1;
      if (v5 - v10 < v81)
      {
        return v5;
      }

      if (v25 >> 4 < 0x271)
      {
        v82 = 0;
      }

      else
      {
        LODWORD(v82) = 0;
        do
        {
          v83 = v25;
          LODWORD(v25) = v25 / 0x2710;
          v84 = v83 - 10000 * v25;
          v85 = v10 + v66 - v82 + 1;
          *(v85 - 2) = std::__itoa::__digits_base_10[v84 % 0x64];
          *(v85 - 4) = std::__itoa::__digits_base_10[v84 / 0x64uLL];
          v82 = (v82 + 4);
        }

        while (v83 > 0x5F5E0FF);
      }

      if (v25 >= 0x64)
      {
        *(v10 + v66 + ~v82) = std::__itoa::__digits_base_10[v25 % 0x64u];
        LODWORD(v25) = v25 / 0x64u;
      }

      if (v25 < 0xA)
      {
        *(v10 + 1) = 46;
        v87 = v25 | 0x30;
      }

      else
      {
        *(v10 + 2) = *(std::__itoa::__digits_base_10 + (2 * v25) + 1);
        *(v10 + 1) = 46;
        v87 = std::__itoa::__digits_base_10[v25];
      }

      *v10 = v87;
      v86 = (v10 + v81);
    }

    else
    {
      if (v10 == v5)
      {
        return v5;
      }

      *v10 = v25 + 48;
      v86 = (v10 + 1);
    }
  }

  v88 = v101;
  if (!v75)
  {
    goto LABEL_168;
  }

  v89 = v86;
  if (v86 == v76)
  {
LABEL_167:
    *v89 = 49;
    v88 = v101 + 1;
    goto LABEL_168;
  }

  v89 = v86;
  while (2)
  {
    v91 = *(v89 - 1);
    v89 = (v89 - 1);
    v90 = v91;
    if (v91 == 46)
    {
LABEL_166:
      if (v89 == v76)
      {
        goto LABEL_167;
      }

      continue;
    }

    break;
  }

  if (v90 == 57)
  {
    *v89 = 48;
    v75 = 1;
    goto LABEL_166;
  }

  if (v75 == 1 || (v90 & 1) != 0)
  {
    *v89 = v90 + 1;
  }

LABEL_168:
  if (v88 >= 0)
  {
    v92 = v88;
  }

  else
  {
    v92 = -v88;
  }

  v93 = 4;
  if (v92 > 0x63)
  {
    v93 = 5;
  }

  if (v5 - v86 >= v93)
  {
    if (v88 >= 0)
    {
      v95 = 43;
    }

    else
    {
      v95 = 45;
    }

    *v86 = 101;
    *(v86 + 1) = v95;
    if (v92 < 0x64)
    {
      *(v86 + 1) = std::__itoa::__digits_base_10[v92];
      return v86 + 4;
    }

    else
    {
      *(v86 + 1) = std::__itoa::__digits_base_10[v92 / 0xAuLL];
      *(v86 + 4) = (v92 % 0xA) | 0x30;
      return v86 + 5;
    }
  }

  return v5;
}

char *std::__d2s_buffered_n(std::__1 *this, char *a2, int a3, double a4)
{
  v6 = a2;
  v7 = this;
  if (a4 == 0.0)
  {
    if (a3 == 1)
    {
      if (a2 - this >= 5)
      {
        *(this + 4) = 48;
        *this = 808150320;
        return this + 5;
      }
    }

    else
    {
      if (this != a2)
      {
        *this = 48;
        return this + 1;
      }

      return v7;
    }
  }

  else
  {
    if (a3 == 2 && *&a4 >> 54 >= 0x10DuLL)
    {
      return std::__d2fixed_buffered_n(this, a2, 0, a4);
    }

    v9 = *&a4 & 0xFFFFFFFFFFFFFLL;
    v10 = *&a4 >> 52;
    if ((*&a4 >> 52) - 1076 < 0xFFFFFFCB || (v11 = v9 | 0x10000000000000, v12 = 51 - v10, ((v9 | 0x10000000000000) & ~(-1 << (51 - v10))) != 0))
    {
      v13 = std::__d2d[abi:ne200100](v9, v10);
      v15 = v14;
    }

    else
    {
      v13 = v11 >> v12;
      v17 = (v11 >> v12) / 0xA;
      if ((v11 >> v12) % 0xA)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        do
        {
          v13 = v17;
          ++v15;
          v17 /= 0xAuLL;
        }

        while (!(-10 * v17 + v13));
      }
    }

    return std::__to_chars[abi:ne200100](v7, v6, v13, v15, a3, a4);
  }

  return v6;
}

unint64_t std::__d2d[abi:ne200100](uint64_t a1, unsigned int a2)
{
  v2 = a1 | 0x10000000000000;
  if (a2)
  {
    v3 = a2 - 1077;
  }

  else
  {
    v2 = a1;
    v3 = -1076;
  }

  v4 = 4 * v2;
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2 >= 2;
  }

  v6 = !v5;
  if ((v3 & 0x80000000) != 0)
  {
    v30 = ((-732923 * v3) >> 20) - (v3 != -1);
    v31 = v30 - ((32337073 * (v30 + v3)) >> 19) + 56;
    v32 = (&std::__DOUBLE_POW5_SPLIT - 16 * v30 + -16 * v3);
    v34 = *v32;
    v33 = v32[1];
    if (__CFADD__((*v32 * (v4 | 2)) >> 64, v33 * (v4 | 2)))
    {
      v35 = ((v33 * (v4 | 2)) >> 64) + 1;
    }

    else
    {
      v35 = (v33 * (v4 | 2)) >> 64;
    }

    v36 = v31 & 0x3F ^ 0x3F;
    v15 = ((2 * v35) << v36) | (((__PAIR128__(v33, v34) * (v4 | 2)) >> 64) >> v31);
    v37 = v4 + ~v6;
    v38 = v33 * v37;
    v39 = (v33 * v37) >> 64;
    v40 = (v34 * v37) >> 64;
    v5 = __CFADD__(v40, v38);
    v41 = v40 + v38;
    if (v5)
    {
      v42 = v39 + 1;
    }

    else
    {
      v42 = v39;
    }

    v22 = ((2 * v42) << v36) | (v41 >> v31);
    v43 = v33 * v4;
    v44 = (v33 * v4) >> 64;
    v45 = (v34 * v4) >> 64;
    v5 = __CFADD__(v45, v43);
    v46 = v45 + v43;
    if (v5)
    {
      ++v44;
    }

    v27 = ((2 * v44) << v36) | (v46 >> v31);
    if (v30 <= 1)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
      }

      v15 -= v2 & 1;
      LOBYTE(v29) = 1;
      goto LABEL_42;
    }

    if (v30 <= 0x3E)
    {
      LODWORD(v6) = 0;
      v29 = (v4 & ~(-1 << (v30 - 1))) == 0;
      goto LABEL_38;
    }

LABEL_37:
    v29 = 0;
    LODWORD(v6) = 0;
    goto LABEL_38;
  }

  v7 = ((78913 * v3) >> 18) - (v3 > 3);
  v8 = v7 - v3 + ((1217359 * v7) >> 19) + 58;
  v9 = (&std::__DOUBLE_POW5_INV_SPLIT + 16 * v7);
  v10 = v4 | 2;
  v12 = *v9;
  v11 = v9[1];
  v13 = (v11 * (v4 | 2)) >> 64;
  if (__CFADD__((*v9 * (v4 | 2)) >> 64, v11 * (v4 | 2)))
  {
    ++v13;
  }

  v14 = v8 & 0x3F ^ 0x3F;
  v15 = ((2 * v13) << v14) | (((__PAIR128__(v11, v12) * (v4 | 2)) >> 64) >> v8);
  v16 = v4 + ~v6;
  v17 = v11 * v16;
  v18 = (v11 * v16) >> 64;
  v19 = (v12 * v16) >> 64;
  v5 = __CFADD__(v19, v17);
  v20 = v19 + v17;
  if (v5)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = ((2 * v21) << v14) | (v20 >> v8);
  v23 = v11 * v4;
  v24 = (v11 * v4) >> 64;
  v25 = (v12 * v4) >> 64;
  v5 = __CFADD__(v25, v23);
  v26 = v25 + v23;
  if (v5)
  {
    ++v24;
  }

  v27 = ((2 * v24) << v14) | (v26 >> v8);
  if (v7 > 0x15)
  {
    goto LABEL_37;
  }

  if (v4 % 5)
  {
    if (v2)
    {
      v67 = -1;
      do
      {
        ++v67;
        v57 = v10 % 5 == 0;
        v10 /= 5uLL;
      }

      while (v57);
      v29 = 0;
      LODWORD(v6) = 0;
      v15 -= v67 >= v7;
    }

    else
    {
      v64 = ~v6 + v4;
      v65 = -1;
      do
      {
        ++v65;
        v57 = v64 % 5 == 0;
        v64 /= 5uLL;
      }

      while (v57);
      v29 = 0;
      LODWORD(v6) = v65 >= v7;
    }
  }

  else
  {
    v28 = -1;
    do
    {
      ++v28;
      v57 = v4 % 5 == 0;
      v4 /= 5uLL;
    }

    while (v57);
    LODWORD(v6) = 0;
    v29 = v28 >= v7;
  }

LABEL_38:
  if ((v6 & 1) == 0 && !v29)
  {
    if (v15 / 0x64 <= v22 / 0x64)
    {
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v22 /= 0x64uLL;
      v47 = (v27 % 0x64) > 0x31;
      v48 = 2;
      v15 /= 0x64uLL;
      v27 /= 0x64uLL;
    }

    v60 = v15 / 0xA;
    if (v60 > v22 / 0xA)
    {
      v61 = v22 / 0xA;
      do
      {
        v62 = v27;
        v22 = v61;
        v27 /= 0xAuLL;
        ++v48;
        v60 /= 0xAuLL;
        v61 /= 0xAuLL;
      }

      while (v60 > v61);
      v47 = (v62 - 10 * v27) > 4;
    }

    v63 = v27 == v22 || v47;
    v59 = v27;
    return v59 + (v63 & 1);
  }

LABEL_42:
  v49 = v15 / 0xA;
  if (v15 / 0xA <= v22 / 0xA)
  {
    v55 = 0;
    v50 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = v22 / 0xA;
    v53 = v27;
    v54 = v22;
    do
    {
      v22 = v52;
      v27 = v53 / 0xA;
      v55 = v53 % 0xA;
      LODWORD(v6) = v6 & (-10 * v52 + v54 == 0);
      LOBYTE(v29) = v51 == 0 && v29;
      ++v50;
      v49 /= 0xAuLL;
      v52 /= 0xAuLL;
      v53 /= 0xAuLL;
      v51 = v55;
      v54 = v22;
    }

    while (v49 > v22 / 0xA);
  }

  v56 = v22 / 0xA;
  if (v6)
  {
    v57 = v22 % 0xA == 0;
  }

  else
  {
    v57 = 0;
  }

  if (v57)
  {
    do
    {
      v22 = v56;
      v59 = v27 / 0xA;
      v58 = v27 % 0xA;
      LOBYTE(v29) = v55 == 0 && v29;
      ++v50;
      v56 /= 0xAuLL;
      v27 /= 0xAuLL;
      v55 = v58;
    }

    while (!(-10 * v56 + v22));
  }

  else
  {
    v58 = v55;
    v59 = v27;
  }

  v63 = (v59 == v22) & (v2 | v6 ^ 1) | ((v58 != 5) | ~v29 | v59) & (v58 > 4u);
  return v59 + (v63 & 1);
}

char *std::__to_chars[abi:ne200100](std::__1 *this, char *a2, unint64_t a3, int a4, int a5, double a6)
{
  v6 = a2;
  if (a3 <= 0x2386F26FC0FFFFLL)
  {
    if (a3 <= 0x38D7EA4C67FFFLL)
    {
      if (a3 <= 0x5AF3107A3FFFLL)
      {
        if (a3 <= 0x9184E729FFFLL)
        {
          if (a3 <= 0xE8D4A50FFFLL)
          {
            if (a3 <= 0x174876E7FFLL)
            {
              if (a3 <= 0x2540BE3FFLL)
              {
                if (a3 <= 0x3B9AC9FF)
                {
                  if (a3 <= 0x5F5E0FF)
                  {
                    if (a3 <= 0x98967F)
                    {
                      if (a3 <= 0xF423F)
                      {
                        if (a3 >> 5 <= 0xC34)
                        {
                          if (a3 >> 4 <= 0x270)
                          {
                            if (a3 <= 0x3E7)
                            {
                              if (a3 <= 0x63)
                              {
                                if (a3 <= 9)
                                {
                                  v8 = 1;
                                }

                                else
                                {
                                  v8 = 2;
                                }
                              }

                              else
                              {
                                v8 = 3;
                              }
                            }

                            else
                            {
                              v8 = 4;
                            }
                          }

                          else
                          {
                            v8 = 5;
                          }
                        }

                        else
                        {
                          v8 = 6;
                        }
                      }

                      else
                      {
                        v8 = 7;
                      }
                    }

                    else
                    {
                      v8 = 8;
                    }
                  }

                  else
                  {
                    v8 = 9;
                  }
                }

                else
                {
                  v8 = 10;
                }
              }

              else
              {
                v8 = 11;
              }
            }

            else
            {
              v8 = 12;
            }
          }

          else
          {
            v8 = 13;
          }
        }

        else
        {
          v8 = 14;
        }
      }

      else
      {
        v8 = 15;
      }
    }

    else
    {
      v8 = 16;
    }
  }

  else
  {
    v8 = 17;
  }

  v9 = v8 + a4;
  if (a5 == 3)
  {
    if ((v9 + 3) <= 9)
    {
      goto LABEL_45;
    }
  }

  else if (a5 == 2 || !a5 && (v8 == 1 ? (v10 = 4) : (v10 = 5), v8 != 1 ? (v11 = -3 - v8) : (v11 = -3), v11 <= a4 && v10 >= a4))
  {
LABEL_45:
    if (a4 < 0)
    {
      LODWORD(v12) = 2 - a4;
      if (v9 >= 1)
      {
        LODWORD(v12) = v8 + 1;
      }
    }

    else
    {
      LODWORD(v12) = v8 + a4;
      if (a3 == 1)
      {
        LODWORD(v12) = v9 - std::__to_chars[abi:ne200100](char *,char *,std::__floating_decimal_64,std::chars_format,double)::_Adjustment[a4 & 0x7FFFFFFF];
      }
    }

    if (a2 - this < v12)
    {
      return v6;
    }

    v24 = v12;
    v12 = v12;
    if (a4 >= 1)
    {
      if (a4 > 0x16)
      {
        return std::__d2fixed_buffered_n(this, a2, 0, a6);
      }

      if (a3)
      {
        LOBYTE(v25) = __clz(__rbit32(a3));
      }

      else
      {
        v25 = __clz(__rbit32(HIDWORD(a3))) | 0x20;
      }

      if (a3 >> v25 > std::__to_chars[abi:ne200100](char *,char *,std::__floating_decimal_64,std::chars_format,double)::_Max_shifted_mantissa[a4 & 0x1F])
      {
        return std::__d2fixed_buffered_n(this, a2, 0, a6);
      }

      v12 = v8;
    }

    v31 = (this + v12);
    if (HIDWORD(a3))
    {
      v32 = a3 % 0x5F5E100 % 0x2710;
      v33 = a3 % 0x5F5E100 / 0x2710 - 10000 * ((429497 * (a3 % 0x5F5E100 / 0x2710)) >> 32);
      v34 = v32 / 0x64u;
      LOWORD(v32) = std::__itoa::__digits_base_10[v32 % 0x64u];
      *(v31 - 4) = std::__itoa::__digits_base_10[(5243 * v33) >> 19];
      v31 -= 4;
      v31[3] = v32;
      v31[2] = std::__itoa::__digits_base_10[v34];
      v31[1] = std::__itoa::__digits_base_10[(v33 - 100 * (((5243 * v33) >> 16) >> 3))];
      a3 /= 0x5F5E100uLL;
    }

    if (a3 >> 4 < 0x271)
    {
      v35 = a3;
    }

    else
    {
      do
      {
        v35 = a3 / 0x2710;
        v36 = std::__itoa::__digits_base_10[a3 % 0x2710 % 0x64];
        *(v31 - 2) = std::__itoa::__digits_base_10[a3 % 0x2710 / 0x64uLL];
        v31 -= 2;
        v31[1] = v36;
        v23 = a3 > 0x5F5E0FF;
        LODWORD(a3) = a3 / 0x2710;
      }

      while (v23);
    }

    if (v35 >= 0x64)
    {
      *--v31 = std::__itoa::__digits_base_10[v35 % 0x64u];
      v35 = v35 / 0x64u;
    }

    if (v35 < 0xA)
    {
      *(v31 - 1) = v35 | 0x30;
    }

    else
    {
      *(v31 - 1) = std::__itoa::__digits_base_10[v35];
    }

    if (a4 < 1)
    {
      if (!a4)
      {
        return this + v24;
      }

      if (v9 >= 1)
      {
        memmove(this, this + 1, v8 + a4);
        *(this + v9) = 46;
        return this + v24;
      }

      *this = 11824;
      v37 = this + 2;
      v38 = -v9;
    }

    else
    {
      v37 = this + v8;
      v38 = a4 & 0x7FFFFFFF;
    }

    memset(v37, 48, v38);
    return this + v24;
  }

  if (v8 <= 1)
  {
    v13 = v8;
  }

  else
  {
    v13 = v8 + 1;
  }

  if ((v9 + 98) < 0xC7)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = v13 + v14;
  if (a2 - this >= v15)
  {
    v16 = HIDWORD(a3);
    v17 = this + v8;
    if (HIDWORD(a3))
    {
      v18 = a3 % 0x5F5E100;
      v19 = v18 / 0x2710;
      v18 %= 0x2710u;
      v20 = v19 - 10000 * ((429497 * v19) >> 32);
      *(v17 - 1) = std::__itoa::__digits_base_10[v18 % 0x64u];
      *(v17 - 3) = std::__itoa::__digits_base_10[v18 / 0x64u];
      *(v17 - 5) = std::__itoa::__digits_base_10[(v20 - 100 * (((5243 * v20) >> 16) >> 3))];
      *(v17 - 7) = std::__itoa::__digits_base_10[(5243 * v20) >> 19];
      LODWORD(v16) = 8;
      a3 /= 0x5F5E100uLL;
    }

    if (a3 >> 4 < 0x271)
    {
      v21 = a3;
    }

    else
    {
      do
      {
        v21 = a3 / 0x2710;
        v22 = &v17[-v16];
        *(v22 - 1) = std::__itoa::__digits_base_10[a3 % 0x2710 % 0x64];
        *(v22 - 3) = std::__itoa::__digits_base_10[a3 % 0x2710 / 0x64uLL];
        LODWORD(v16) = v16 + 4;
        v23 = a3 > 0x5F5E0FF;
        LODWORD(a3) = a3 / 0x2710;
      }

      while (v23);
    }

    if (v21 >= 0x64)
    {
      *&v17[~v16] = std::__itoa::__digits_base_10[v21 % 0x64u];
      v21 = v21 / 0x64u;
    }

    if (v21 < 0xA)
    {
      v26 = v21 | 0x30;
    }

    else
    {
      *(this + 2) = HIBYTE(std::__itoa::__digits_base_10[v21]);
      v26 = std::__itoa::__digits_base_10[v21];
    }

    *this = v26;
    if (v8 < 2)
    {
      v27 = 1;
    }

    else
    {
      *(this + 1) = 46;
      v27 = v8 + 1;
    }

    *(this + v27) = 101;
    v28 = this + v27;
    if (v9 <= 0)
    {
      v28[1] = 45;
      v29 = 1 - v9;
    }

    else
    {
      v29 = v9 - 1;
      v28[1] = 43;
    }

    v30 = v27 + 2;
    if (v29 < 0x64)
    {
      *(this + v30) = std::__itoa::__digits_base_10[v29];
    }

    else
    {
      *(this + v30) = std::__itoa::__digits_base_10[v29 / 0xAuLL];
      v28[4] = (v29 % 0xA) | 0x30;
    }

    return this + v15;
  }

  return v6;
}

_BYTE *std::__f2s_buffered_n(_BYTE *a1, _BYTE *a2, int a3, float a4)
{
  v5 = a2;
  v6 = a1;
  if (a4 == 0.0)
  {
    if (a3 == 1)
    {
      if (a2 - a1 >= 5)
      {
        a1[4] = 48;
        *a1 = 808150320;
        return a1 + 5;
      }
    }

    else
    {
      if (a1 != a2)
      {
        *a1 = 48;
        return a1 + 1;
      }

      return v6;
    }
  }

  else
  {
    v7 = LODWORD(a4) & 0x7FFFFF;
    v8 = LODWORD(a4) >> 23;
    if (a3 == 2 && v8 >= 0x97)
    {
      return std::_Large_integer_to_chars[abi:ne200100](a1, a2, v7 | 0x800000u, v8 - 150);
    }

    v10 = std::__f2d[abi:ne200100](LODWORD(a4) & 0x7FFFFF, LODWORD(a4) >> 23);
    return std::__to_chars[abi:ne200100](v6, v5, v10, a3, v7, v8);
  }

  return v5;
}

_BYTE *std::_Large_integer_to_chars[abi:ne200100](_BYTE *a1, _BYTE *a2, unsigned int a3, unint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  *v25 = 0;
  v26 = 0;
  v6 = (a4 + 55) >> 5;
  v7 = v6 - 1;
  v8 = a3 << a4;
  if ((a4 & 0x1F) >= 9)
  {
    v25[v6 - 2] = v8;
    v8 = a3 >> -(a4 & 0x1F);
  }

  v25[v7] = v8;
  if (v6 == 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v25[v6 - 2];
    do
    {
      v11 = v9;
      do
      {
        v12 = v25[v7];
        v13 = v12 % 0x3B9ACA00;
        v25[v7] = v12 / 0x3B9ACA00;
        v14 = v10;
        v15 = v7;
        do
        {
          a4 = *v14;
          v16 = (a4 | (v13 << 32)) / 0x3B9ACA00;
          v13 = (a4 - 1000000000 * v16);
          *v14-- = v16;
          --v15;
        }

        while (v15);
        v9 = v11 + 1;
        v24[v11++] = v13;
      }

      while (v12 >= 0x3B9ACA00);
      --v10;
      --v7;
    }

    while (v7);
  }

  if (v25[0] <= 0x3B9AC9FF)
  {
    if (v25[0] <= 0x5F5E0FF)
    {
      if (v25[0] <= 0x98967F)
      {
        if (v25[0] <= 0xF423F)
        {
          if (v25[0] >> 5 <= 0xC34)
          {
            if (v25[0] >> 4 <= 0x270)
            {
              if (v25[0] <= 0x3E7)
              {
                if (v25[0] <= 0x63)
                {
                  if (v25[0] <= 9)
                  {
                    v17 = 1;
                  }

                  else
                  {
                    v17 = 2;
                  }
                }

                else
                {
                  v17 = 3;
                }
              }

              else
              {
                v17 = 4;
              }
            }

            else
            {
              v17 = 5;
            }
          }

          else
          {
            v17 = 6;
          }
        }

        else
        {
          v17 = 7;
        }
      }

      else
      {
        v17 = 8;
      }
    }

    else
    {
      v17 = 9;
    }
  }

  else
  {
    v17 = 10;
  }

  if (a2 - a1 >= (v17 + 9 * v9))
  {
    std::__append_n_digits(v17, v25[0], a1, a4);
    a2 = &a1[v17];
    if (v9 >= 1)
    {
      v19 = v9 + 1;
      v20 = &v24[v9 - 1];
      do
      {
        v21 = *v20--;
        std::__append_nine_digits(v21, a2, v18);
        a2 += 9;
        --v19;
      }

      while (v19 > 1);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return a2;
}

unint64_t std::__f2d[abi:ne200100](int a1, unsigned int a2)
{
  v2 = a1 | 0x800000;
  if (a2)
  {
    v3 = a2 - 152;
  }

  else
  {
    v2 = a1;
    v3 = -151;
  }

  v4 = 4 * v2;
  v5 = (4 * v2) | 2;
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 >= 2;
  }

  v7 = !v6;
  v8 = ~v7 + 4 * v2;
  if (v3 < 0)
  {
    v31 = 0;
    v32 = -732923 * v3;
    v33 = (-732923 * v3) >> 20;
    v10 = v3 + v33;
    v34 = v33 - ((-1217359 * (v3 + v33)) >> 19);
    v35 = std::__FLOAT_POW5_SPLIT[-v3 - v33];
    v36 = HIDWORD(v35);
    v37 = HIDWORD(v35) * v4;
    v38 = (v35 * v4) >> 32;
    v6 = __CFADD__(v38, v37);
    v39 = v38 + v37;
    if (v6)
    {
      v40 = HIDWORD(v37) + 1;
    }

    else
    {
      v40 = (HIDWORD(v35) * v4) >> 32;
    }

    v41 = v34 + 28;
    v42 = ~(v34 + 28);
    v20 = ((2 * v40) << v42) | (v39 >> (v34 + 28));
    v43 = v35 * v5;
    v44 = HIDWORD(v35) * v5;
    v43 >>= 32;
    v6 = __CFADD__(v43, v44);
    v45 = v43 + v44;
    v46 = HIDWORD(v44);
    if (v6)
    {
      LODWORD(v46) = v46 + 1;
    }

    v25 = ((2 * v46) << v42) | (v45 >> v41);
    v47 = v35 * v8;
    v48 = v36 * v8;
    v47 >>= 32;
    v6 = __CFADD__(v47, v48);
    v49 = v47 + v48;
    if (v6)
    {
      v50 = HIDWORD(v48) + 1;
    }

    else
    {
      v50 = HIDWORD(v48);
    }

    v30 = ((2 * v50) << v42) | (v49 >> v41);
    if (v32 < 0x100000)
    {
      goto LABEL_54;
    }

    if ((v25 - 1) / 0xA <= v30 / 0xA)
    {
      v63 = std::__FLOAT_POW5_SPLIT[1 - v10];
      v64 = HIDWORD(v63) * v4;
      v65 = (v63 * v4) >> 32;
      v6 = __CFADD__(v65, v64);
      v66 = v65 + v64;
      v67 = v6 ? HIDWORD(v64) + 1 : HIDWORD(v64);
      v62 = v33 + ~((1217359 * (1 - v10)) >> 19);
      v31 = (((2 * v67) << ~(v62 + 28)) | (v66 >> (v62 + 28))) % 0xA;
    }

    else
    {
      v31 = 0;
    }

    if (!(v32 >> 21))
    {
LABEL_54:
      if (v2)
      {
        v59 = 0;
      }

      else
      {
        v59 = v7;
      }

      v25 -= v2 & 1;
      v60 = 1;
LABEL_73:
      v72 = v25 / 0xA;
      v73 = v30 / 0xA;
      if (v25 / 0xA <= v30 / 0xA)
      {
        v70 = 0;
        v75 = v20;
        if (!v59)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v70 = 0;
        v74 = v30;
        do
        {
          v30 = v73;
          v59 = v59 & (-10 * v73 + v74 == 0);
          v60 = v60 & (v31 == 0);
          v75 = v20 / 0xA;
          v31 = v20 % 0xA;
          ++v70;
          v72 /= 0xAu;
          v73 /= 0xAu;
          v20 /= 0xAu;
          v74 = v30;
        }

        while (v72 > v73);
        if (!v59)
        {
          goto LABEL_82;
        }
      }

      if (!(v30 % 0xA))
      {
        do
        {
          v60 = v60 & (v31 == 0);
          v20 = v75 / 0xA;
          v31 = v75 % 0xA;
          v30 /= 0xAu;
          ++v70;
          HIDWORD(v76) = -858993459 * v30;
          LODWORD(v76) = -858993459 * v30;
          v75 /= 0xAu;
        }

        while ((v76 >> 1) < 0x1999999A);
        goto LABEL_83;
      }

LABEL_82:
      v20 = v75;
LABEL_83:
      v77 = (v20 == v30) & (v2 | v59 ^ 1) | ((v31 != 5) | ~v60 | v20) & (v31 > 4);
      return (v20 + v77) | ((v70 + v10) << 32);
    }

    if (v33 <= 0x1E)
    {
      v59 = 0;
      v60 = (v4 & ~(-1 << (v33 - 1))) == 0;
      goto LABEL_68;
    }

    goto LABEL_60;
  }

  v9 = 78913 * v3;
  v10 = (78913 * v3) >> 18;
  v11 = v10 - v3;
  v12 = v10 - v3 + ((1217359 * v10) >> 19);
  v13 = std::__FLOAT_POW5_INV_SPLIT[v10];
  v14 = HIDWORD(v13) * v4;
  v15 = (v13 * v4) >> 32;
  v6 = __CFADD__(v15, v14);
  v16 = v15 + v14;
  if (v6)
  {
    v17 = HIDWORD(v14) + 1;
  }

  else
  {
    v17 = (HIDWORD(v13) * v4) >> 32;
  }

  v18 = v12 + 27;
  v19 = ~v18;
  v20 = ((2 * v17) << ~v18) | (v16 >> v18);
  v21 = HIDWORD(v13) * v5;
  v22 = (v13 * v5) >> 32;
  v6 = __CFADD__(v22, v21);
  v23 = v22 + v21;
  if (v6)
  {
    v24 = HIDWORD(v21) + 1;
  }

  else
  {
    v24 = (HIDWORD(v13) * v5) >> 32;
  }

  v25 = ((2 * v24) << v19) | (v23 >> v18);
  v26 = HIDWORD(v13) * v8;
  v27 = (v13 * v8) >> 32;
  v6 = __CFADD__(v27, v26);
  v28 = v27 + v26;
  if (v6)
  {
    v29 = HIDWORD(v26) + 1;
  }

  else
  {
    v29 = HIDWORD(v26);
  }

  v30 = ((2 * v29) << v19) | (v28 >> v18);
  if (v9 < 0x40000)
  {
    v31 = 0;
    goto LABEL_40;
  }

  if ((v25 - 1) / 0xA <= v30 / 0xA)
  {
    v51 = v11 + ((1217359 * (v10 - 1)) >> 19);
    v52 = std::__FLOAT_POW5_INV_SPLIT[v10 - 1];
    v53 = HIDWORD(v52) * v4;
    v54 = (v52 * v4) >> 32;
    v6 = __CFADD__(v54, v53);
    v55 = v54 + v53;
    if (v6)
    {
      v56 = HIDWORD(v53) + 1;
    }

    else
    {
      v56 = HIDWORD(v53);
    }

    v31 = (((2 * v56) << ~(v51 + 26)) | (v55 >> (v51 + 26))) % 0xA;
  }

  else
  {
    v31 = 0;
  }

  if (v9 >> 19 > 4)
  {
LABEL_60:
    v60 = 0;
    v59 = 0;
    goto LABEL_68;
  }

LABEL_40:
  if ((858993460 * v2) <= 0x33333333)
  {
    v58 = 0;
    do
    {
      v4 /= 5u;
      ++v58;
    }

    while (-858993459 * v4 < 0x33333334);
    v59 = 0;
    v60 = v58 >= v10;
  }

  else if (v2)
  {
    if (-858993459 * v5 <= 0x33333333)
    {
      v61 = 0;
      do
      {
        v5 /= 5u;
        ++v61;
      }

      while (-858993459 * v5 < 0x33333334);
    }

    else
    {
      v61 = 0;
    }

    v60 = 0;
    v59 = 0;
    v25 -= v61 >= v10;
  }

  else
  {
    if (-858993459 * v8 <= 0x33333333)
    {
      v57 = 0;
      do
      {
        v8 /= 5u;
        ++v57;
      }

      while (-858993459 * v8 < 0x33333334);
    }

    else
    {
      v57 = 0;
    }

    v60 = 0;
    v59 = v57 >= v10;
    if (v57 >= v10)
    {
      goto LABEL_73;
    }
  }

LABEL_68:
  if (v60)
  {
    goto LABEL_73;
  }

  v68 = v25 / 0xA;
  v69 = v30 / 0xA;
  if (v25 / 0xA <= v30 / 0xA)
  {
    v70 = 0;
  }

  else
  {
    v70 = 0;
    do
    {
      v71 = v20;
      v30 = v69;
      v20 /= 0xAu;
      ++v70;
      v68 /= 0xAu;
      v69 /= 0xAu;
    }

    while (v68 > v69);
    v31 = (v71 - 10 * v20);
  }

  v77 = v20 == v30 || v31 > 4;
  return (v20 + v77) | ((v70 + v10) << 32);
}

_BYTE *std::__to_chars[abi:ne200100](_BYTE *a1, _BYTE *a2, unint64_t a3, int a4, int a5, int a6)
{
  v8 = HIDWORD(a3);
  if (a3 <= 0x5F5E0FF)
  {
    if (a3 <= 9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (a3 <= 0x63)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3;
    }

    if (a3 <= 0x3E7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 4;
    }

    if (a3 >> 4 <= 0x270)
    {
      v13 = v12;
    }

    else
    {
      v13 = 5;
    }

    if (a3 >> 5 <= 0xC34)
    {
      v14 = v13;
    }

    else
    {
      v14 = 6;
    }

    if (a3 <= 0xF423F)
    {
      v15 = v14;
    }

    else
    {
      v15 = 7;
    }

    if (a3 <= 0x98967F)
    {
      v9 = v15;
    }

    else
    {
      v9 = 8;
    }
  }

  else
  {
    v9 = 9;
  }

  v16 = v9 + HIDWORD(a3);
  if (a4 == 3)
  {
    if ((v16 + 3) <= 9)
    {
      goto LABEL_35;
    }
  }

  else if (a4 == 2 || !a4 && (v9 == 1 ? (v17 = 4) : (v17 = 5), v9 != 1 ? (v18 = -3 - v9) : (v18 = -3), v18 <= SHIDWORD(a3) && v17 >= SHIDWORD(a3)))
  {
LABEL_35:
    if ((a3 & 0x8000000000000000) != 0)
    {
      LODWORD(v19) = 2 - HIDWORD(a3);
      if (v16 >= 1)
      {
        LODWORD(v19) = v9 + 1;
      }
    }

    else
    {
      LODWORD(v19) = v9 + HIDWORD(a3);
      if (a3 == 1)
      {
        LODWORD(v19) = v16 - std::__to_chars[abi:ne200100](char *,char *,std::__floating_decimal_32,std::chars_format,unsigned int,unsigned int)::_Adjustment[v8];
      }
    }

    if (a2 - a1 < v19)
    {
      return a2;
    }

    v27 = v19;
    v19 = v19;
    if (SHIDWORD(a3) >= 1)
    {
      if (v8 > 0xA || a3 >> __clz(__rbit32(a3)) > std::__to_chars[abi:ne200100](char *,char *,std::__floating_decimal_32,std::chars_format,unsigned int,unsigned int)::_Max_shifted_mantissa[v8])
      {
        return std::_Large_integer_to_chars[abi:ne200100](a1, a2, a5 | 0x800000u, (a6 - 150));
      }

      v19 = v9;
    }

    v32 = &a1[v19];
    if (a3 >> 4 < 0x271)
    {
      v33 = a3;
    }

    else
    {
      do
      {
        v33 = a3 / 0x2710;
        v34 = std::__itoa::__digits_base_10[a3 % 0x2710 % 0x64];
        *(v32 - 2) = std::__itoa::__digits_base_10[a3 % 0x2710 / 0x64uLL];
        v32 -= 4;
        *(v32 + 1) = v34;
        v35 = a3 > 0x5F5E0FF;
        LODWORD(a3) = a3 / 0x2710;
      }

      while (v35);
    }

    if (v33 >= 0x64)
    {
      *(v32 - 1) = std::__itoa::__digits_base_10[v33 % 0x64u];
      v32 -= 2;
      v33 = v33 / 0x64u;
    }

    if (v33 < 0xA)
    {
      *(v32 - 1) = v33 | 0x30;
    }

    else
    {
      *(v32 - 1) = std::__itoa::__digits_base_10[v33];
    }

    if (v8 < 1)
    {
      if (!v8)
      {
        return &a1[v27];
      }

      if (v16 >= 1)
      {
        memmove(a1, a1 + 1, v9 + v8);
        a1[v16] = 46;
        return &a1[v27];
      }

      *a1 = 11824;
      v36 = a1 + 2;
      v37 = -v16;
    }

    else
    {
      v36 = &a1[v9];
      v37 = v8;
    }

    memset(v36, 48, v37);
    return &a1[v27];
  }

  if (v9 <= 1)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  v21 = v20 + 4;
  if (a2 - a1 >= v21)
  {
    v22 = &a1[v9];
    if (a3 >> 4 < 0x271)
    {
      v23 = 0;
    }

    else
    {
      LODWORD(v23) = 0;
      do
      {
        v24 = a3;
        LODWORD(a3) = a3 / 0x2710;
        v25 = v24 - 10000 * a3;
        v26 = &v22[-v23];
        *(v26 - 1) = std::__itoa::__digits_base_10[v25 % 0x64];
        *(v26 - 3) = std::__itoa::__digits_base_10[v25 / 0x64uLL];
        v23 = (v23 + 4);
      }

      while (v24 > 0x5F5E0FF);
    }

    if (a3 >= 0x64)
    {
      *&v22[~v23] = std::__itoa::__digits_base_10[a3 % 0x64u];
      LODWORD(a3) = a3 / 0x64u;
    }

    if (a3 < 0xA)
    {
      v28 = a3 | 0x30;
    }

    else
    {
      a1[2] = *(std::__itoa::__digits_base_10 + (2 * a3) + 1);
      v28 = std::__itoa::__digits_base_10[a3];
    }

    *a1 = v28;
    if (v9 < 2)
    {
      v29 = 1;
    }

    else
    {
      a1[1] = 46;
      v29 = v9 + 1;
    }

    a1[v29] = 101;
    v30 = &a1[v29];
    if (v16 <= 0)
    {
      v30[1] = 45;
      v31 = 1 - v16;
    }

    else
    {
      v31 = v16 - 1;
      v30[1] = 43;
    }

    *(v30 + 1) = std::__itoa::__digits_base_10[v31];
    return &a1[v21];
  }

  return a2;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const std::string *a2)
{
  this->__vftable = (MEMORY[0x1E69E5650] + 16);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2->__r_.__value_.__r.__words[0];
  }

  v4 = strlen(v3);
  v5 = operator new(v4 + 25);
  *v5 = v4;
  *(v5 + 1) = v4;
  v6 = v5 + 24;
  *(v5 + 4) = 0;
  memcpy(v5 + 24, v3, v4 + 1);
  this->__imp_.__imp_ = v6;
  return this;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  this->__vftable = (MEMORY[0x1E69E5650] + 16);
  v4 = strlen(a2);
  v5 = operator new(v4 + 25);
  *v5 = v4;
  *(v5 + 1) = v4;
  v6 = v5 + 24;
  *(v5 + 4) = 0;
  memcpy(v5 + 24, a2, v4 + 1);
  this->__imp_.__imp_ = v6;
  return this;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const std::logic_error *a2)
{
  imp = a2->__imp_.__imp_;
  this->__vftable = (MEMORY[0x1E69E5650] + 16);
  this->__imp_.__imp_ = imp;
  if ((atomic_load_explicit(qword_1EAE01518, memory_order_acquire) & 1) == 0)
  {
    v3 = imp;
    v4 = this;
    std::logic_error::logic_error();
    imp = v3;
    this = v4;
  }

  if (imp != _MergedGlobals_0)
  {
    atomic_fetch_add(this->__imp_.__imp_ - 2, 1u);
  }

  return this;
}

std::__libcpp_refstring *__cdecl std::__libcpp_refstring::operator=(std::__libcpp_refstring *this, const std::__libcpp_refstring *__s)
{
  imp = this->__imp_;
  if ((atomic_load_explicit(qword_1EAE01518, memory_order_acquire) & 1) == 0)
  {
    v10 = __s;
    v12 = imp;
    std::logic_error::logic_error();
    __s = v10;
    imp = v12;
  }

  v4 = _MergedGlobals_0;
  v5 = this->__imp_;
  v6 = __s->__imp_;
  this->__imp_ = __s->__imp_;
  if ((atomic_load_explicit(qword_1EAE01518, memory_order_acquire) & 1) == 0)
  {
    v11 = v4;
    v13 = imp;
    v8 = v6;
    v9 = v5;
    std::logic_error::logic_error();
    v6 = v8;
    v5 = v9;
    v4 = v11;
    imp = v13;
  }

  if (v6 != _MergedGlobals_0)
  {
    atomic_fetch_add(this->__imp_ - 2, 1u);
  }

  if (imp != v4 && (atomic_fetch_add(v5 - 2, 0xFFFFFFFF) - 1) < 0)
  {
    operator delete((v5 - 24));
  }

  return this;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  this->__vftable = (MEMORY[0x1E69E5668] + 16);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2->__r_.__value_.__r.__words[0];
  }

  v4 = strlen(v3);
  v5 = operator new(v4 + 25);
  *v5 = v4;
  *(v5 + 1) = v4;
  v6 = v5 + 24;
  *(v5 + 4) = 0;
  memcpy(v5 + 24, v3, v4 + 1);
  this->__imp_.__imp_ = v6;
  return this;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  this->__vftable = (MEMORY[0x1E69E5668] + 16);
  v4 = strlen(a2);
  v5 = operator new(v4 + 25);
  *v5 = v4;
  *(v5 + 1) = v4;
  v6 = v5 + 24;
  *(v5 + 4) = 0;
  memcpy(v5 + 24, a2, v4 + 1);
  this->__imp_.__imp_ = v6;
  return this;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  imp = a2->__imp_.__imp_;
  this->__vftable = (MEMORY[0x1E69E5668] + 16);
  this->__imp_.__imp_ = imp;
  if ((atomic_load_explicit(qword_1EAE01518, memory_order_acquire) & 1) == 0)
  {
    v3 = imp;
    v4 = this;
    std::logic_error::logic_error();
    imp = v3;
    this = v4;
  }

  if (imp != _MergedGlobals_0)
  {
    atomic_fetch_add(this->__imp_.__imp_ - 2, 1u);
  }

  return this;
}

void std::__throw_runtime_error(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, a1);
  __cxa_throw(exception, MEMORY[0x1E69E5630], MEMORY[0x1E69E5600]);
}

char *std::__refstring_imp::anonymous namespace::compute_gcc_empty_string_storage(std::__refstring_imp::_anonymous_namespace_ *this)
{
  result = dlopen("/usr/lib/libstdc++.6.dylib", 16);
  if (result)
  {
    v2 = dlsym(result, "_ZNSs4_Rep20_S_empty_rep_storageE");
    if (v2)
    {
      return v2 + 24;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::string *__cdecl std::string::replace(std::string *this, std::string::size_type __pos, std::string::size_type __n1, const std::string::value_type *__s, std::string::size_type __n2)
{
  v5 = __n2;
  v6 = __s;
  v7 = __pos;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = size - __pos;
    if (size >= __pos)
    {
      if (v10 >= __n1)
      {
        v11 = __n1;
      }

      else
      {
        v11 = size - __pos;
      }

      v12 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 - size + v12 < __n2)
      {
        goto LABEL_13;
      }

      v13 = this->__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }

LABEL_39:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v10 = size - __pos;
  if (size < __pos)
  {
    goto LABEL_39;
  }

  if (v10 >= __n1)
  {
    v11 = __n1;
  }

  else
  {
    v11 = size - __pos;
  }

  if (v11 - size + 22 < __n2)
  {
    v12 = 22;
LABEL_13:
    std::string::__grow_by_and_replace(this, v12, size + __n2 - v12 - v11, size, v7, v11, __n2, __s);
    return this;
  }

  v13 = this;
LABEL_16:
  if (__n2 == v11)
  {
    v11 = __n2;
  }

  else
  {
    v14 = v10 - v11;
    if (v10 != v11)
    {
      v15 = v13 + v7;
      v16 = __n2 - v11;
      if (__n2 < v11)
      {
        if (__n2)
        {
          memmove(v13 + v7, __s, __n2);
        }

        memmove(&v15[v5], &v15[v11], v14);
        v17 = size + v16;
        goto LABEL_34;
      }

      if (v13 + size > __s && v15 + 1 <= __s)
      {
        if (&v15[v11] <= __s)
        {
          v6 = &__s[v16];
        }

        else
        {
          if (v11)
          {
            memmove(v13 + v7, __s, v11);
          }

          v7 += v11;
          v6 += v5;
          v5 -= v11;
          v11 = 0;
        }
      }

      memmove(v13 + v7 + v5, v13 + v7 + v11, v14);
    }
  }

  if (v5)
  {
    memmove(v13 + v7, v6, v5);
  }

  v17 = v5 - v11 + size;
LABEL_34:
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v17;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
  }

  v13->__r_.__value_.__s.__data_[v17] = 0;
  return this;
}

void std::string::__grow_by_and_replace(std::string *this, std::string::size_type __old_cap, std::string::size_type __delta_cap, std::string::size_type __old_sz, std::string::size_type __n_copy, std::string::size_type __n_del, std::string::size_type __n_add, const std::string::value_type *__p_new_stuff)
{
  if (0x7FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::string::size_type std::string::rfind(const std::string *this, const std::string::value_type *__s, std::string::size_type __pos, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
  }

  if (size >= __pos)
  {
    v6 = __pos;
  }

  else
  {
    v6 = size;
  }

  v7 = size - v6;
  v8 = v6 + __n;
  if (v7 <= __n)
  {
    v8 = size;
  }

  v9 = (this + v8);
  if (__n && v8)
  {
    v12 = *__s;
    v10 = __s + 1;
    v11 = v12;
    v13 = this;
    v14 = (this + v8);
    do
    {
      v15 = &v13->__r_.__value_.__s.__data_[1];
      while (v13->__r_.__value_.__s.__data_[0] != v11)
      {
        v13 = (v13 + 1);
        ++v15;
        if (v13 == v9)
        {
          goto LABEL_24;
        }
      }

      v16 = __n - 1;
      v17 = v10;
      while (v16)
      {
        if (v15 == v9)
        {
          goto LABEL_24;
        }

        v19 = *v15++;
        v18 = v19;
        v20 = *v17++;
        --v16;
        if (v18 != v20)
        {
          goto LABEL_21;
        }
      }

      v14 = v13;
LABEL_21:
      v13 = (v13 + 1);
    }

    while (v13 != v9);
  }

  else
  {
    v14 = (this + v8);
  }

LABEL_24:
  if (v14 != v9 || __n == 0)
  {
    return v14 - this;
  }

  else
  {
    return -1;
  }
}

void std::string::__init(std::string *this, const std::string::value_type *__s, std::string::size_type __sz, std::string::size_type __reserve)
{
  if (__reserve >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__reserve > 0x16)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = __sz & 0x7F;
  if (__sz)
  {
    memmove(this, __s, __sz);
  }

  this->__r_.__value_.__s.__data_[__sz] = 0;
}

std::string *__cdecl std::string::basic_string(std::string *this, const std::string *__str)
{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

std::string *__cdecl std::string::replace(std::string *this, std::string::size_type __pos, std::string::size_type __n1, const std::string::value_type *__s)
{
  v8 = strlen(__s);

  return std::string::replace(this, __pos, __n1, __s, v8);
}

std::string *__cdecl std::string::basic_string(std::string *this, const std::string *__str, const std::string::allocator_type *__a)
{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

std::string::size_type std::string::find_last_not_of(const std::string *this, const std::string::value_type *__s, std::string::size_type __pos, std::string::size_type __n)
{
  v6 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  if (size > __pos)
  {
    size = __pos + 1;
  }

  v8 = size - 1;
  do
  {
    v9 = v8;
    if (v8 == -1)
    {
      break;
    }

    if (!__n)
    {
      break;
    }

    v10 = memchr(__s, v6->__r_.__value_.__s.__data_[v8], __n);
    v8 = v9 - 1;
  }

  while (v10);
  return v9;
}

void std::string::~string(std::string *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__r_.__value_.__r.__words[0], this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }
}

{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__r_.__value_.__r.__words[0], this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }
}

std::string::size_type std::string::find_first_not_of(const std::string *this, const std::string::value_type *__s, std::string::size_type __pos, std::string::size_type __n)
{
  v6 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  v8 = size - __pos;
  if (size <= __pos)
  {
    return -1;
  }

  v9 = v6 + __pos;
  if (__n)
  {
    while (memchr(__s, *v9, __n))
    {
      ++v9;
      if (!--v8)
      {
        return -1;
      }
    }
  }

  return v9 - v6;
}

std::string *__cdecl std::string::insert(std::string *this, std::string::size_type __pos, std::string::size_type __n, std::string::value_type __c)
{
  v4 = __c;
  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v8 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size < __pos)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (__n)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v10 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v10 - size >= __n)
      {
        v11 = this->__r_.__value_.__r.__words[0];
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 22;
      v11 = this;
      if (22 - size >= __n)
      {
LABEL_12:
        if (size != __pos)
        {
          memmove(v11 + __pos + __n, v11 + __pos, size - __pos);
        }

        goto LABEL_14;
      }
    }

    std::string::__grow_by(this, v10, size + __n - v10, size, __pos, 0, __n);
    this->__r_.__value_.__l.__size_ = size + __n;
    v11 = this->__r_.__value_.__r.__words[0];
LABEL_14:
    memset(v11 + __pos, v4, __n);
    v12 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v12;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v12 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v12] = 0;
  }

  return this;
}

std::string *__cdecl std::string::operator=(std::string *this, std::string::value_type __c)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = 1;
    v2 = this;
  }

  v2->__r_.__value_.__s.__data_[0] = __c;
  v2->__r_.__value_.__s.__data_[1] = 0;
  return this;
}

void std::string::__init(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__sz >= 0x17)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  if (__sz)
  {
    memmove(this, __s, __sz);
  }

  this->__r_.__value_.__s.__data_[__sz] = 0;
}

std::string::const_reference std::string::at(const std::string *this, std::string::size_type __n)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size <= __n)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if ((v2 & 0x80000000) != 0)
  {
    this = this->__r_.__value_.__r.__words[0];
  }

  return this + __n;
}

std::string *__cdecl std::string::insert(std::string *this, std::string::size_type __pos, const std::string::value_type *__s, std::string::size_type __n)
{
  v5 = __s;
  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8 >= __pos)
    {
      v9 = 22;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      goto LABEL_6;
    }

LABEL_24:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  size = this->__r_.__value_.__l.__size_;
  if (size < __pos)
  {
    goto LABEL_24;
  }

  v9 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
LABEL_6:
  if (v9 - size >= __n)
  {
    if (__n)
    {
      v11 = this;
      if ((v8 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      if (size != __pos)
      {
        v12 = v11 + __pos;
        if (v11 + size <= __s || v12 > __s)
        {
          v14 = 0;
        }

        else
        {
          v14 = __n;
        }

        v5 = &__s[v14];
        memmove(&v12[__n], v12, size - __pos);
      }

      memmove(v11 + __pos, v5, __n);
      v15 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v15;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(this, v9, size + __n - v9, size, __pos, 0, __n, __s);
  }

  return this;
}

std::string::size_type std::string::find_first_of(const std::string *this, const std::string::value_type *__s, std::string::size_type __pos, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
  }

  v6 = -1;
  if (__n && size > __pos)
  {
    v7 = this + size;
    v8 = (this + __pos);
LABEL_6:
    v9 = __n;
    v10 = __s;
    while (v8->__r_.__value_.__s.__data_[0] != *v10)
    {
      ++v10;
      if (!--v9)
      {
        v8 = (v8 + 1);
        if (v8 != v7)
        {
          goto LABEL_6;
        }

        v8 = v7;
        break;
      }
    }

    if (v8 == v7)
    {
      return -1;
    }

    else
    {
      return v8 - this;
    }
  }

  return v6;
}

std::string *__cdecl std::string::replace(std::string *this, std::string::size_type __pos, std::string::size_type __n1, std::string::size_type __n2, std::string::value_type __c)
{
  v5 = __c;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = size - __pos;
    if (size >= __pos)
    {
      if (v10 >= __n1)
      {
        v11 = __n1;
      }

      else
      {
        v11 = size - __pos;
      }

      v12 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 - size + v12 < __n2)
      {
        goto LABEL_13;
      }

      v14 = this->__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }

LABEL_27:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v10 = size - __pos;
  if (size < __pos)
  {
    goto LABEL_27;
  }

  if (v10 >= __n1)
  {
    v11 = __n1;
  }

  else
  {
    v11 = size - __pos;
  }

  if (v11 - size + 22 < __n2)
  {
    v12 = 22;
LABEL_13:
    v13 = size + __n2;
    std::string::__grow_by(this, v12, size + __n2 - v12 - v11, size, __pos, v11, __n2);
    this->__r_.__value_.__l.__size_ = v13 - v11;
    v14 = this->__r_.__value_.__r.__words[0];
LABEL_22:
    memset(v14 + __pos, v5, __n2);
    goto LABEL_23;
  }

  v14 = this;
LABEL_16:
  if (v11 != __n2 && v10 != v11)
  {
    memmove(v14 + __pos + __n2, v14 + __pos + v11, v10 - v11);
  }

  if (__n2)
  {
    goto LABEL_22;
  }

LABEL_23:
  v16 = __n2 - v11 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v16;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
  }

  v14->__r_.__value_.__s.__data_[v16] = 0;
  return this;
}

void std::string::reserve(std::string *this, std::string::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v3 = 22;
  }

  if (v3 < __requested_capacity)
  {
    v4 = __requested_capacity | 7;
    if ((__requested_capacity | 7) == 0x17)
    {
      v4 = 24;
    }

    if (__requested_capacity <= 0x16)
    {
      v5 = 22;
    }

    else
    {
      v5 = v4;
    }

    std::string::__shrink_or_extend[abi:ne200100](&this->__r_.__value_.__l.__data_, v5);
  }
}

const void **std::string::__shrink_or_extend[abi:ne200100](const void **__dst, unint64_t a2)
{
  v2 = __dst;
  v3 = *(__dst + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = __dst[1];
    v6 = __dst[2];
    v4 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v6);
  }

  else
  {
    v4 = 22;
    LOBYTE(v5) = *(__dst + 23);
  }

  v7 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v8 = *__dst;
  if ((v5 & 0x80) != 0)
  {
    v5 = __dst[1];
    v7 = 1;
  }

  else
  {
    v5 = v5;
  }

  v9 = v5 + 1;
  if (v5 != -1)
  {
    __dst = memmove(__dst, v8, v9);
  }

  if (v7)
  {
    __dst = MEMORY[0x193B0CA40](v8, v4 + 1, v9);
  }

  *(v2 + 23) = v3 & 0x7F;
  return __dst;
}

void sub_1922ACFC8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

std::string *__cdecl std::string::append(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + size, __s, __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

std::string *__cdecl std::string::assign(std::string *this, const std::string *__str, std::string::size_type __pos, std::string::size_type __n)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_11;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_11:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = size - __pos;
  if (v6 >= __n)
  {
    v6 = __n;
  }

  v7 = __str + __pos;

  return std::string::__assign_external(this, v7, v6);
}

std::string::size_type std::string::copy(const std::string *this, std::string::value_type *__s, std::string::size_type __n, std::string::size_type __pos)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v5 = size >= __pos;
    v10 = size - __pos;
    if (!v5)
    {
LABEL_17:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v10 >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = v10;
    }

    this = this->__r_.__value_.__r.__words[0];
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v4 >= __pos;
    v6 = v4 - __pos;
    if (!v5)
    {
      goto LABEL_17;
    }

    if (v6 >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
LABEL_8:
      memmove(__s, this + __pos, v7);
    }
  }

  return v7;
}

std::string *__cdecl std::string::basic_string(std::string *this, const std::string *__str, std::string::size_type __pos, std::string::size_type __n, std::allocator<char> *__a)
{
  v5 = __str;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_16;
    }

    v5 = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_16:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v8 = size - __pos;
  if (v8 >= __n)
  {
    v9 = __n;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(this, v5 + __pos, v9);
  }

  this->__r_.__value_.__s.__data_[v9] = 0;
  return this;
}

std::string::size_type std::string::find(const std::string *this, std::string::value_type __c, std::string::size_type __pos)
{
  v3 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  v5 = size > __pos;
  v6 = size - __pos;
  if (!v5)
  {
    return -1;
  }

  v7 = memchr(v3 + __pos, __c, v6);
  if (v7)
  {
    return v7 - v3;
  }

  else
  {
    return -1;
  }
}

void std::string::__init(std::string *this, std::string::size_type __n, std::string::value_type __c)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  *(&this->__r_.__value_.__s + 23) = __n;
  if (__n)
  {
    memset(this, __c, __n);
  }

  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::string *__cdecl std::string::insert(std::string *this, std::string::size_type __pos, const std::string::value_type *__s)
{
  v6 = strlen(__s);

  return std::string::insert(this, __pos, __s, v6);
}

std::string::size_type std::string::find_last_of(const std::string *this, const std::string::value_type *__s, std::string::size_type __pos, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v7->__r_.__value_.__l.__size_;
    if (!__n)
    {
      return -1;
    }
  }

  else if (!__n)
  {
    return -1;
  }

  if (size > __pos)
  {
    v8 = __pos + 1;
  }

  else
  {
    v8 = size;
  }

  v9 = &this[-1].__r_.__value_.__r.__words[2] + 7;
  while (v8)
  {
    if (memchr(__s, v9[v8--], __n))
    {
      return v8;
    }
  }

  return -1;
}

void std::string::__grow_by(std::string *this, std::string::size_type __old_cap, std::string::size_type __delta_cap, std::string::size_type __old_sz, std::string::size_type __n_copy, std::string::size_type __n_del, std::string::size_type __n_add)
{
  if (0x7FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void std::string::push_back(std::string *this, std::string::value_type __c)
{
  v3 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23) != 22)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      *(&this->__r_.__value_.__s + 23) = (*(&this->__r_.__value_.__s + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v4 = 22;
    goto LABEL_5;
  }

  size = this->__r_.__value_.__l.__size_;
  v4 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (size == v4)
  {
LABEL_5:
    std::string::__grow_by(this, v4, 1uLL, v4, v4, 0, 0);
    size = v4;
  }

  v3->__r_.__value_.__l.__size_ = size + 1;
  v3 = v3->__r_.__value_.__r.__words[0];
LABEL_8:
  v6 = v3 + size;
  *v6 = __c;
  v6[1] = 0;
}

std::string *__cdecl std::string::append(std::string *this, std::string::size_type __n, std::string::value_type __c)
{
  if (__n)
  {
    v4 = __c;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 22;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    if (v7 - size < __n)
    {
      std::string::__grow_by(this, v7, __n - v7 + size, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v10 = this;
    if ((v8 & 0x80) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    memset(v10 + size, v4, __n);
    v11 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v11;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v11 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v11] = 0;
  }

  return this;
}

std::string::size_type std::string::rfind(const std::string *this, std::string::value_type __c, std::string::size_type __pos)
{
  v3 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
    if (!size)
    {
      return -1;
    }
  }

  else if (!*(&this->__r_.__value_.__s + 23))
  {
    return -1;
  }

  if (size > __pos)
  {
    result = __pos + 1;
  }

  else
  {
    result = size;
  }

  v6 = &v3[-1].__r_.__value_.__r.__words[2] + 7;
  while (result)
  {
    v7 = v6[result--];
    if (v7 == __c)
    {
      return result;
    }
  }

  return -1;
}

std::string *__cdecl std::string::assign(std::string *this, std::string::size_type __n, std::string::value_type __c)
{
  v3 = __c;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 >= __n)
    {
      size = HIBYTE(v9);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = this;
    if (__n <= 0x16)
    {
      goto LABEL_8;
    }

    v8 = 22;
  }

  std::string::__grow_by(this, v8, __n - v8, size, 0, size, 0);
  this->__r_.__value_.__l.__size_ = 0;
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80) == 0)
  {
LABEL_7:
    v7 = this;
LABEL_8:
    if (!__n)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v7 = this->__r_.__value_.__r.__words[0];
  if (__n)
  {
LABEL_9:
    memset(v7, v3, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

LABEL_10:
  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::erase(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size < __pos)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (__n == -1)
  {
    if ((v4 & 0x80000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = __pos;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = __pos & 0x7F;
      v6 = this;
    }

    v6->__r_.__value_.__s.__data_[__pos] = 0;
  }

  else
  {
    std::string::__erase_external_with_move(this, __pos, __n);
  }

  return this;
}

void std::string::__erase_external_with_move(std::string *this, std::string::size_type __pos, std::string::size_type __n)
{
  if (__n)
  {
    v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v4;
    v6 = this;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    if (size - __pos >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = size - __pos;
    }

    if (size - __pos > __n)
    {
      memmove(v6 + __pos, v6 + __pos + v7, size - __pos - v7);
      LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
    }

    v8 = size - v7;
    if ((v4 & 0x80) != 0)
    {
      this->__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
    }

    v6->__r_.__value_.__s.__data_[v8] = 0;
  }
}

std::string *__cdecl std::string::append(std::string *this, const std::string *__str, std::string::size_type __pos, std::string::size_type __n)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_11;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_11:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = size - __pos;
  if (v6 >= __n)
  {
    v6 = __n;
  }

  v7 = __str + __pos;

  return std::string::append(this, v7, v6);
}

int std::string::compare(const std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (v4 == -1)
    {
      goto LABEL_15;
    }

    v6 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v6->__r_.__value_.__l.__size_;
  }

  else if (v4 == -1)
  {
LABEL_15:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (size >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = size;
  }

  if (size < v4)
  {
    v8 = -1;
  }

  else
  {
    v8 = size > v4;
  }

  result = memcmp(this, __s, v7);
  if (!result)
  {
    return v8;
  }

  return result;
}

int std::string::compare(const std::string *this, std::string::size_type __pos1, std::string::size_type __n1, const std::string::value_type *__s, std::string::size_type __n2)
{
  v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (__n2 == -1 || (size = this->__r_.__value_.__l.__size_, v6 = size >= __pos1, v7 = size - __pos1, !v6))
    {
LABEL_23:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v7 >= __n1)
    {
      v7 = __n1;
    }

    this = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (__n2 == -1)
    {
      goto LABEL_23;
    }

    v6 = v5 >= __pos1;
    v7 = v5 - __pos1;
    if (!v6)
    {
      goto LABEL_23;
    }

    if (v7 >= __n1)
    {
      v7 = __n1;
    }
  }

  if (v7 >= __n2)
  {
    v9 = __n2;
  }

  else
  {
    v9 = v7;
  }

  if (v7 < __n2)
  {
    v10 = -1;
  }

  else
  {
    v10 = v7 > __n2;
  }

  result = memcmp(this + __pos1, __s, v9);
  if (!result)
  {
    return v10;
  }

  return result;
}

int std::string::compare(const std::string *this, std::string::size_type __pos1, std::string::size_type __n1, const std::string::value_type *__s)
{
  v8 = strlen(__s);
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) != 0)
  {
    if (v8 == -1 || (size = this->__r_.__value_.__l.__size_, v10 = size >= __pos1, v11 = size - __pos1, !v10))
    {
LABEL_23:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v11 >= __n1)
    {
      v11 = __n1;
    }

    this = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v8 == -1)
    {
      goto LABEL_23;
    }

    v10 = v9 >= __pos1;
    v11 = v9 - __pos1;
    if (!v10)
    {
      goto LABEL_23;
    }

    if (v11 >= __n1)
    {
      v11 = __n1;
    }
  }

  if (v11 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v11;
  }

  if (v11 < v8)
  {
    v14 = -1;
  }

  else
  {
    v14 = v11 > v8;
  }

  result = memcmp(this + __pos1, __s, v13);
  if (!result)
  {
    return v14;
  }

  return result;
}

std::string::reference std::string::at(std::string *this, std::string::size_type __n)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size <= __n)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if ((v2 & 0x80000000) != 0)
  {
    this = this->__r_.__value_.__r.__words[0];
  }

  return this + __n;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string::size_type std::string::find(const std::string *this, const std::string::value_type *__s, std::string::size_type __pos, std::string::size_type __n)
{
  v6 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  v8 = size - __pos;
  if (size < __pos)
  {
    return -1;
  }

  if (__n)
  {
    v9 = v6 + size;
    if (v8 >= __n)
    {
      v12 = v6 + __pos;
      v13 = *__s;
      do
      {
        v14 = v8 - __n;
        if (v14 == -1)
        {
          break;
        }

        v15 = memchr(v12, v13, v14 + 1);
        if (!v15)
        {
          break;
        }

        v10 = v15;
        if (!memcmp(v15, __s, __n))
        {
          goto LABEL_8;
        }

        v12 = v10 + 1;
        v8 = v9 - (v10 + 1);
      }

      while (v8 >= __n);
    }

    v10 = v9;
LABEL_8:
    if (v10 == v9)
    {
      return -1;
    }

    else
    {
      return v10 - v6;
    }
  }

  return __pos;
}

int std::string::compare(const std::string *this, std::string::size_type __pos1, std::string::size_type __n1, const std::string *__str, std::string::size_type __pos2, std::string::size_type __n2)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = this;
    this = this->__r_.__value_.__r.__words[0];
    v8 = v9->__r_.__value_.__l.__size_;
  }

  v10 = v8 >= __pos1;
  v11 = v8 - __pos1;
  if (!v10 || (v11 >= __n1 ? (v12 = __n1) : (v12 = v11), v10 = size >= __pos2, v13 = size - __pos2, !v10))
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v13 >= __n2)
  {
    v14 = __n2;
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  result = memcmp(this + __pos1, v7 + __pos2, v15);
  if (v12 < v14)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 == v14)
  {
    v17 = 0;
  }

  if (!result)
  {
    return v17;
  }

  return result;
}

std::string *__cdecl std::string::operator=(std::string *this, const std::string *__str)
{
  if (this != __str)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        __str = __str->__r_.__value_.__r.__words[0];
        v4 = size;
      }

      return std::string::__assign_no_alias<false>(this, __str, v4);
    }

    else if ((*(&__str->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      return std::string::__assign_no_alias<true>(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v2;
    }
  }

  return this;
}

std::string *std::string::__assign_no_alias<true>(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  v5 = __len > 0x16;
  v6 = __len - 22;
  if (v5)
  {
    std::string::__grow_by_and_replace(__dst, 0x16uLL, v6, *(&__dst->__r_.__value_.__s + 23) & 0x7F, 0, *(&__dst->__r_.__value_.__s + 23) & 0x7F, __len, __src);
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len;
    if (__len)
    {
      memmove(__dst, __src, __len);
    }

    __dst->__r_.__value_.__s.__data_[__len] = 0;
  }

  return __dst;
}

std::string *std::string::__assign_no_alias<false>(std::string *this, const std::string::value_type *__src, size_t __len)
{
  v5 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    std::string::__grow_by_and_replace(this, v5 - 1, __len - v5 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __len, __src);
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __len;
    if (__len)
    {
      memmove(v6, __src, __len);
    }

    *(v6 + __len) = 0;
  }

  return this;
}

std::string *__cdecl std::string::append(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::append(this, __s, v4);
}

std::string *__cdecl std::string::replace(std::string *this, std::string::size_type __pos1, std::string::size_type __n1, const std::string *__str, std::string::size_type __pos2, std::string::size_type __n2)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos2)
    {
      goto LABEL_11;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos2)
  {
LABEL_11:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v8 = size - __pos2;
  if (v8 >= __n2)
  {
    v8 = __n2;
  }

  v9 = __str + __pos2;

  return std::string::replace(this, __pos1, __n1, v9, v8);
}

std::string::iterator std::string::insert(std::string *this, std::string::const_iterator __pos, std::string::value_type __c)
{
  v4 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
    v6 = &__pos.__i_[-this->__r_.__value_.__r.__words[0]];
    if ((this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 == size)
    {
      goto LABEL_5;
    }

LABEL_7:
    if (size == v6)
    {
      v6 = size;
    }

    else
    {
      memmove(&v6[v7 + 1], &v6[v7], size - v6);
    }

    goto LABEL_10;
  }

  v6 = (__pos.__i_ - this);
  if (size != 22)
  {
    v7 = this;
    goto LABEL_7;
  }

  size = 22;
LABEL_5:
  std::string::__grow_by(this, size, 1uLL, size, v6, 0, 1uLL);
  v4->__r_.__value_.__l.__size_ = size + 1;
  v7 = v4->__r_.__value_.__r.__words[0];
LABEL_10:
  v6[v7] = __c;
  v8 = size + 1;
  v7->__r_.__value_.__s.__data_[size + 1] = 0;
  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    v4->__r_.__value_.__l.__size_ = v8;
    v4 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v4->__r_.__value_.__s + 23) = v8 & 0x7F;
  }

  return (v4 + v6);
}

void std::string::resize(std::string *this, std::string::size_type __n, std::string::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::string::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::string *__cdecl std::string::insert(std::string *this, std::string::size_type __pos1, const std::string *__str, std::string::size_type __pos2, std::string::size_type __n)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos2)
    {
      goto LABEL_11;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos2)
  {
LABEL_11:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v7 = size - __pos2;
  if (v7 >= __n)
  {
    v7 = __n;
  }

  v8 = __str + __pos2;

  return std::string::insert(this, __pos1, v8, v7);
}

std::wstring *__cdecl std::wstring::replace(std::wstring *this, std::wstring::size_type __pos, std::wstring::size_type __n1, const std::wstring::value_type *__s, std::wstring::size_type __n2)
{
  v5 = __n2;
  v6 = __s;
  v7 = __pos;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = size - __pos;
    if (size >= __pos)
    {
      if (v10 >= __n1)
      {
        v11 = __n1;
      }

      else
      {
        v11 = size - __pos;
      }

      v12 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 - size + v12 < __n2)
      {
        goto LABEL_13;
      }

      v13 = this->__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }

LABEL_39:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v10 = size - __pos;
  if (size < __pos)
  {
    goto LABEL_39;
  }

  if (v10 >= __n1)
  {
    v11 = __n1;
  }

  else
  {
    v11 = size - __pos;
  }

  if (v11 - size + 4 < __n2)
  {
    v12 = 4;
LABEL_13:
    std::wstring::__grow_by_and_replace(this, v12, size + __n2 - v12 - v11, size, v7, v11, __n2, __s);
    return this;
  }

  v13 = this;
LABEL_16:
  if (__n2 == v11)
  {
    v11 = __n2;
  }

  else
  {
    v14 = v10 - v11;
    if (v10 != v11)
    {
      v15 = v13 + 4 * v7;
      v16 = __n2 - v11;
      if (__n2 < v11)
      {
        if (__n2)
        {
          memmove(v13 + 4 * v7, __s, 4 * __n2);
        }

        memmove(&v15[4 * v5], &v15[4 * v11], 4 * v14);
        v17 = size + v16;
        goto LABEL_34;
      }

      if (v13 + 4 * size > __s && v15 + 4 <= __s)
      {
        if (&v15[4 * v11] <= __s)
        {
          v6 = &__s[v16];
        }

        else
        {
          if (v11)
          {
            memmove(v13 + 4 * v7, __s, 4 * v11);
          }

          v7 += v11;
          v6 += v5;
          v5 -= v11;
          v11 = 0;
        }
      }

      memmove(v13 + 4 * v7 + 4 * v5, v13 + 4 * v7 + 4 * v11, 4 * v14);
    }
  }

  if (v5)
  {
    memmove(v13 + 4 * v7, v6, 4 * v5);
  }

  v17 = v5 - v11 + size;
LABEL_34:
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v17;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
  }

  v13->__r_.__value_.__s.__data_[v17] = 0;
  return this;
}

void std::wstring::__grow_by_and_replace(std::wstring *this, std::wstring::size_type __old_cap, std::wstring::size_type __delta_cap, std::wstring::size_type __old_sz, std::wstring::size_type __n_copy, std::wstring::size_type __n_del, std::wstring::size_type __n_add, const std::wstring::value_type *__p_new_stuff)
{
  if (0x3FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    v9 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v9 = 2 * __old_cap;
    }

    if ((v9 | 1) == 5)
    {
      v10 = 7;
    }

    else
    {
      v10 = (v9 | 1) + 1;
    }

    v11 = v9 >= 5;
    v12 = 5;
    if (v11)
    {
      v12 = v10;
    }

    if (__old_cap > 0x1FFFFFFFFFFFFFF2)
    {
      v13 = 0x3FFFFFFFFFFFFFF7;
    }

    else
    {
      v13 = v12;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v13);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

std::wstring::size_type std::wstring::rfind(const std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
  }

  if (size >= __pos)
  {
    v6 = __pos;
  }

  else
  {
    v6 = size;
  }

  v7 = size - v6;
  v8 = v6 + __n;
  if (v7 <= __n)
  {
    v8 = size;
  }

  v9 = (this + 4 * v8);
  if (__n && v8)
  {
    v12 = *__s;
    v10 = __s + 1;
    v11 = v12;
    v13 = this;
    v14 = (this + 4 * v8);
    do
    {
      v15 = &v13->__r_.__value_.__s.__data_[1];
      while (v13->__r_.__value_.__s.__data_[0] != v11)
      {
        v13 = (v13 + 4);
        ++v15;
        if (v13 == v9)
        {
          goto LABEL_24;
        }
      }

      v16 = 4 * __n - 4;
      v17 = v10;
      while (v16)
      {
        if (v15 == v9)
        {
          goto LABEL_24;
        }

        v19 = *v15++;
        v18 = v19;
        v20 = *v17++;
        v16 -= 4;
        if (v18 != v20)
        {
          goto LABEL_21;
        }
      }

      v14 = v13;
LABEL_21:
      v13 = (v13 + 4);
    }

    while (v13 != v9);
  }

  else
  {
    v14 = (this + 4 * v8);
  }

LABEL_24:
  if (v14 != v9 || __n == 0)
  {
    return (v14 - this) >> 2;
  }

  else
  {
    return -1;
  }
}

void std::wstring::__init(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz, std::wstring::size_type __reserve)
{
  if (__reserve >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__reserve > 4)
  {
    if ((__reserve | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (__reserve | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v6);
  }

  *(&this->__r_.__value_.__s + 23) = __sz & 0x7F;
  if (__sz)
  {
    memmove(this, __s, 4 * __sz);
  }

  this->__r_.__value_.__s.__data_[__sz] = 0;
}

std::wstring *__cdecl std::wstring::basic_string(std::wstring *this, const std::wstring *__str)
{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::wstring::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::wstring::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v3 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

void std::wstring::__init_copy_ctor_external(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz)
{
  if (__sz > 4)
  {
    if (__sz < 0x3FFFFFFFFFFFFFF8)
    {
      if ((__sz | 1) == 5)
      {
        v3 = 7;
      }

      else
      {
        v3 = (__sz | 1) + 1;
      }

      std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v3);
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = 4 * __sz + 4;

  memmove(this, __s, v4);
}

std::wstring *__cdecl std::wstring::replace(std::wstring *this, std::wstring::size_type __pos, std::wstring::size_type __n1, const std::wstring::value_type *__s)
{
  v8 = wcslen(__s);

  return std::wstring::replace(this, __pos, __n1, __s, v8);
}

std::wstring *__cdecl std::wstring::basic_string(std::wstring *this, const std::wstring *__str, const std::wstring::allocator_type *__a)
{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::wstring::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

{
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    std::wstring::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&__str->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  return this;
}

std::wstring::size_type std::wstring::find_last_not_of(const std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  v6 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  if (size > __pos)
  {
    size = __pos + 1;
  }

  v8 = 4 * size - 4;
  while (v8 != -4)
  {
    v9 = v8;
    if (__n)
    {
      v10 = wmemchr(__s, *(v6->__r_.__value_.__s.__data_ + v8), __n);
      v8 = v9 - 4;
      if (v10)
      {
        continue;
      }
    }

    return v9 >> 2;
  }

  return -1;
}

void std::wstring::~wstring(std::wstring *this)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__r_.__value_.__r.__words[0], 4 * this->__r_.__value_.__r.__words[2]);
  }
}

{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](this->__r_.__value_.__r.__words[0], 4 * this->__r_.__value_.__r.__words[2]);
  }
}

std::wstring::size_type std::wstring::find_first_not_of(const std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  v6 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  if (size <= __pos)
  {
    return -1;
  }

  v8 = (v6 + 4 * __pos);
  if (__n)
  {
    v9 = 4 * size - 4 * __pos;
    while (wmemchr(__s, *v8, __n))
    {
      ++v8;
      v9 -= 4;
      if (!v9)
      {
        return -1;
      }
    }
  }

  return (v8 - v6) >> 2;
}

std::wstring *__cdecl std::wstring::insert(std::wstring *this, std::wstring::size_type __pos, std::wstring::size_type __n, std::wstring::value_type __c)
{
  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v8 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size < __pos)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (__n)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v10 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v10 - size >= __n)
      {
        v11 = this->__r_.__value_.__r.__words[0];
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 4;
      v11 = this;
      if (4 - size >= __n)
      {
LABEL_12:
        if (size != __pos)
        {
          memmove(v11 + 4 * __pos + 4 * __n, v11 + 4 * __pos, 4 * (size - __pos));
        }

        goto LABEL_14;
      }
    }

    std::wstring::__grow_by(this, v10, size + __n - v10, size, __pos, 0, __n);
    this->__r_.__value_.__l.__size_ = size + __n;
    v11 = this->__r_.__value_.__r.__words[0];
LABEL_14:
    v12 = 0;
    v13 = vdupq_n_s64(__n - 1);
    v14 = &v11->__r_.__value_.__s.__data_[__pos + 2];
    do
    {
      v15 = vdupq_n_s64(v12);
      v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_1922FB310)));
      if (vuzp1_s16(v16, *v13.i8).u8[0])
      {
        *(v14 - 2) = __c;
      }

      if (vuzp1_s16(v16, *&v13).i8[2])
      {
        *(v14 - 1) = __c;
      }

      if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_1922FB300)))).i32[1])
      {
        *v14 = __c;
        v14[1] = __c;
      }

      v12 += 4;
      v14 += 4;
    }

    while (((__n + 3) & 0xFFFFFFFFFFFFFFFCLL) != v12);
    v17 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v17] = 0;
  }

  return this;
}

std::wstring *__cdecl std::wstring::operator=(std::wstring *this, std::wstring::value_type __c)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = 1;
    v2 = this;
  }

  v2->__r_.__value_.__s.__data_[0] = __c;
  v2->__r_.__value_.__s.__data_[1] = 0;
  return this;
}

void std::wstring::__init(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __sz)
{
  if (__sz >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__sz >= 5)
  {
    if ((__sz | 1) == 5)
    {
      v5 = 7;
    }

    else
    {
      v5 = (__sz | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v5);
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  if (__sz)
  {
    memmove(this, __s, 4 * __sz);
  }

  this->__r_.__value_.__s.__data_[__sz] = 0;
}

std::wstring::const_reference std::wstring::at(const std::wstring *this, std::wstring::size_type __n)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size <= __n)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if ((v2 & 0x80000000) != 0)
  {
    this = this->__r_.__value_.__r.__words[0];
  }

  return (this + 4 * __n);
}

std::wstring *__cdecl std::wstring::insert(std::wstring *this, std::wstring::size_type __pos, const std::wstring::value_type *__s, std::wstring::size_type __n)
{
  v5 = __s;
  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8 >= __pos)
    {
      v9 = 4;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      goto LABEL_6;
    }

LABEL_24:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  size = this->__r_.__value_.__l.__size_;
  if (size < __pos)
  {
    goto LABEL_24;
  }

  v9 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
LABEL_6:
  if (v9 - size >= __n)
  {
    if (__n)
    {
      v11 = this;
      if ((v8 & 0x80000000) != 0)
      {
        v11 = this->__r_.__value_.__r.__words[0];
      }

      v12 = (v11 + 4 * __pos);
      if (size != __pos)
      {
        if (v11 + 4 * size <= __s || v12 > __s)
        {
          v14 = 0;
        }

        else
        {
          v14 = __n;
        }

        v5 = &__s[v14];
        memmove(&v12[__n], v11 + 4 * __pos, 4 * (size - __pos));
      }

      memmove(v12, v5, 4 * __n);
      v15 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v15;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      }

      v11->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {
    std::wstring::__grow_by_and_replace(this, v9, size + __n - v9, size, __pos, 0, __n, __s);
  }

  return this;
}

std::wstring::size_type std::wstring::find_first_of(const std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v5->__r_.__value_.__l.__size_;
  }

  v6 = -1;
  if (__n && size > __pos)
  {
    v7 = this + 4 * size;
    v8 = this + 4 * __pos;
LABEL_6:
    v9 = 4 * __n;
    v10 = __s;
    while (*v8 != *v10)
    {
      ++v10;
      v9 -= 4;
      if (!v9)
      {
        v8 += 4;
        if (v8 != v7)
        {
          goto LABEL_6;
        }

        v8 = v7;
        break;
      }
    }

    if (v8 == v7)
    {
      return -1;
    }

    else
    {
      return (v8 - this) >> 2;
    }
  }

  return v6;
}

std::wstring *__cdecl std::wstring::replace(std::wstring *this, std::wstring::size_type __pos, std::wstring::size_type __n1, std::wstring::size_type __n2, std::wstring::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = size - __pos;
    if (size >= __pos)
    {
      if (v10 >= __n1)
      {
        v11 = __n1;
      }

      else
      {
        v11 = size - __pos;
      }

      v12 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v11 - size + v12 < __n2)
      {
        goto LABEL_13;
      }

      v14 = this->__r_.__value_.__r.__words[0];
      goto LABEL_16;
    }

LABEL_34:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v10 = size - __pos;
  if (size < __pos)
  {
    goto LABEL_34;
  }

  if (v10 >= __n1)
  {
    v11 = __n1;
  }

  else
  {
    v11 = size - __pos;
  }

  if (v11 - size + 4 < __n2)
  {
    v12 = 4;
LABEL_13:
    v13 = size + __n2;
    std::wstring::__grow_by(this, v12, size + __n2 - v12 - v11, size, __pos, v11, __n2);
    this->__r_.__value_.__l.__size_ = v13 - v11;
    v14 = this->__r_.__value_.__r.__words[0];
LABEL_22:
    v16 = 0;
    v17 = vdupq_n_s64(__n2 - 1);
    v18 = &v14->__r_.__value_.__s.__data_[__pos + 2];
    do
    {
      v19 = vdupq_n_s64(v16);
      v20 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_1922FB310)));
      if (vuzp1_s16(v20, *v17.i8).u8[0])
      {
        *(v18 - 2) = __c;
      }

      if (vuzp1_s16(v20, *&v17).i8[2])
      {
        *(v18 - 1) = __c;
      }

      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v19, xmmword_1922FB300)))).i32[1])
      {
        *v18 = __c;
        v18[1] = __c;
      }

      v16 += 4;
      v18 += 4;
    }

    while (((__n2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v16);
    goto LABEL_30;
  }

  v14 = this;
LABEL_16:
  if (v11 != __n2 && v10 != v11)
  {
    memmove(v14 + 4 * __pos + 4 * __n2, v14 + 4 * __pos + 4 * v11, 4 * (v10 - v11));
  }

  if (__n2)
  {
    goto LABEL_22;
  }

LABEL_30:
  v21 = __n2 - v11 + size;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = v21;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v14->__r_.__value_.__s.__data_[v21] = 0;
  return this;
}

std::wstring *__cdecl std::wstring::__assign_external(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 4)
    {
      v8 = 4;
LABEL_6:
      std::wstring::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, 4 * __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void std::wstring::reserve(std::wstring *this, std::wstring::size_type __requested_capacity)
{
  if (__requested_capacity >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v3 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v3 = 4;
  }

  if (v3 < __requested_capacity)
  {
    v4 = __requested_capacity | 1;
    if ((__requested_capacity | 1) == 5)
    {
      v4 = 6;
    }

    if (__requested_capacity <= 4)
    {
      v5 = 4;
    }

    else
    {
      v5 = v4;
    }

    std::wstring::__shrink_or_extend[abi:ne200100](&this->__r_.__value_.__l.__data_, v5);
  }
}

const void **std::wstring::__shrink_or_extend[abi:ne200100](const void **__dst, unint64_t a2)
{
  v2 = __dst;
  v3 = *(__dst + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = __dst[1];
    v6 = __dst[2];
    v4 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v5 = HIBYTE(v6);
  }

  else
  {
    v4 = 4;
    LOBYTE(v5) = *(__dst + 23);
  }

  v7 = a2 < 5;
  if (a2 >= 5)
  {
    if (v4 < a2)
    {
      std::allocator<wchar_t>::allocate_at_least[abi:ne200100](__dst, a2 + 1);
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](__dst, a2 + 1);
  }

  v8 = *__dst;
  if ((v5 & 0x80) != 0)
  {
    v5 = __dst[1];
    v7 = 1;
  }

  else
  {
    v5 = v5;
  }

  v9 = __CFADD__(v5, 1);
  v10 = v5 + 1;
  if (!v9)
  {
    __dst = memmove(__dst, v8, 4 * v10);
  }

  if (v7)
  {
    __dst = MEMORY[0x193B0CA40](v8, 4 * v4 + 4);
  }

  *(v2 + 23) = v3 & 0x7F;
  return __dst;
}

void sub_1922AF124(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

std::wstring *__cdecl std::wstring::append(std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 4;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 4 * size, __s, 4 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::wstring::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

std::wstring *__cdecl std::wstring::assign(std::wstring *this, const std::wstring *__str, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_11;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_11:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = size - __pos;
  if (v6 >= __n)
  {
    v6 = __n;
  }

  v7 = (__str + 4 * __pos);

  return std::wstring::__assign_external(this, v7, v6);
}

std::wstring::size_type std::wstring::copy(const std::wstring *this, std::wstring::value_type *__s, std::wstring::size_type __n, std::wstring::size_type __pos)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v5 = size >= __pos;
    v10 = size - __pos;
    if (!v5)
    {
LABEL_17:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v10 >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = v10;
    }

    this = this->__r_.__value_.__r.__words[0];
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v4 >= __pos;
    v6 = v4 - __pos;
    if (!v5)
    {
      goto LABEL_17;
    }

    if (v6 >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
LABEL_8:
      memmove(__s, this + 4 * __pos, 4 * v7);
    }
  }

  return v7;
}

std::wstring *__cdecl std::wstring::basic_string(std::wstring *this, const std::wstring *__str, std::wstring::size_type __pos, std::wstring::size_type __n, std::allocator<wchar_t> *__a)
{
  v5 = __str;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_19;
    }

    v5 = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_19:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v8 = size - __pos;
  if (v8 >= __n)
  {
    v9 = __n;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 5)
  {
    if ((v9 | 1) == 5)
    {
      v11 = 7;
    }

    else
    {
      v11 = (v9 | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v11);
  }

  *(&this->__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(this, v5 + 4 * __pos, 4 * v9);
  }

  this->__r_.__value_.__s.__data_[v9] = 0;
  return this;
}

std::wstring::size_type std::wstring::find(const std::wstring *this, std::wstring::value_type __c, std::wstring::size_type __pos)
{
  v3 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v3 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  v5 = size > __pos;
  v6 = size - __pos;
  if (!v5)
  {
    return -1;
  }

  v7 = wmemchr(v3 + __pos, __c, v6);
  if (v7)
  {
    return (v7 - v3) >> 2;
  }

  else
  {
    return -1;
  }
}

void std::wstring::__init(std::wstring *this, std::wstring::size_type __n, std::wstring::value_type __c)
{
  if (__n >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 5)
  {
    if ((__n | 1) == 5)
    {
      v3 = 7;
    }

    else
    {
      v3 = (__n | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v3);
  }

  *(&this->__r_.__value_.__s + 23) = __n;
  if (__n)
  {
    v4 = 0;
    v5 = vdupq_n_s64(__n - 1);
    p_size = &this->__r_.__value_.__l.__size_;
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1922FB310)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(p_size - 2) = __c;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(p_size - 1) = __c;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1922FB300)))).i32[1])
      {
        *p_size = __c;
        *(p_size + 1) = __c;
      }

      v4 += 4;
      p_size += 2;
    }

    while (((__n + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::wstring *__cdecl std::wstring::insert(std::wstring *this, std::wstring::size_type __pos, const std::wstring::value_type *__s)
{
  v6 = wcslen(__s);

  return std::wstring::insert(this, __pos, __s, v6);
}

std::wstring::size_type std::wstring::find_last_of(const std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v7 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v7->__r_.__value_.__l.__size_;
    if (!__n)
    {
      return -1;
    }
  }

  else if (!__n)
  {
    return -1;
  }

  if (size > __pos)
  {
    size = __pos + 1;
  }

  v8 = 4 * size;
  padding = this[-1].__r_.__value_.__s.__padding_;
  while (v8)
  {
    v10 = wmemchr(__s, *&padding[v8], __n);
    v8 -= 4;
    if (v10)
    {
      return v8 >> 2;
    }
  }

  return -1;
}

void std::wstring::__grow_by(std::wstring *this, std::wstring::size_type __old_cap, std::wstring::size_type __delta_cap, std::wstring::size_type __old_sz, std::wstring::size_type __n_copy, std::wstring::size_type __n_del, std::wstring::size_type __n_add)
{
  if (0x3FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 1) == 5)
    {
      v9 = 7;
    }

    else
    {
      v9 = (v8 | 1) + 1;
    }

    v10 = v8 >= 5;
    v11 = 5;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap <= 0x1FFFFFFFFFFFFFF2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x3FFFFFFFFFFFFFF7;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](this, v12);
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void std::wstring::push_back(std::wstring *this, std::wstring::value_type __c)
{
  v3 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23) != 4)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      *(&this->__r_.__value_.__s + 23) = (*(&this->__r_.__value_.__s + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v4 = 4;
    goto LABEL_5;
  }

  size = this->__r_.__value_.__l.__size_;
  v4 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (size == v4)
  {
LABEL_5:
    std::wstring::__grow_by(this, v4, 1uLL, v4, v4, 0, 0);
    size = v4;
  }

  v3->__r_.__value_.__l.__size_ = size + 1;
  v3 = v3->__r_.__value_.__r.__words[0];
LABEL_8:
  v6 = (v3 + 4 * size);
  *v6 = __c;
  v6[1] = 0;
}

std::wstring *__cdecl std::wstring::append(std::wstring *this, std::wstring::size_type __n, std::wstring::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v9 = this->__r_.__value_.__r.__words[2];
      v7 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v8 = HIBYTE(v9);
    }

    else
    {
      v7 = 4;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    if (v7 - size < __n)
    {
      std::wstring::__grow_by(this, v7, __n - v7 + size, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v10 = this;
    if ((v8 & 0x80) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
    }

    v11 = 0;
    v12 = vdupq_n_s64(__n - 1);
    v13 = &v10->__r_.__value_.__s.__data_[size + 2];
    do
    {
      v14 = vdupq_n_s64(v11);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1922FB310)));
      if (vuzp1_s16(v15, *v12.i8).u8[0])
      {
        *(v13 - 2) = __c;
      }

      if (vuzp1_s16(v15, *&v12).i8[2])
      {
        *(v13 - 1) = __c;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_1922FB300)))).i32[1])
      {
        *v13 = __c;
        v13[1] = __c;
      }

      v11 += 4;
      v13 += 4;
    }

    while (((__n + 3) & 0xFFFFFFFFFFFFFFFCLL) != v11);
    v16 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }

    v10->__r_.__value_.__s.__data_[v16] = 0;
  }

  return this;
}

std::wstring::size_type std::wstring::rfind(const std::wstring *this, std::wstring::value_type __c, std::wstring::size_type __pos)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v4 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v4->__r_.__value_.__l.__size_;
    if (!size)
    {
      return -1;
    }
  }

  else if (!*(&this->__r_.__value_.__s + 23))
  {
    return -1;
  }

  if (size > __pos)
  {
    size = __pos + 1;
  }

  v5 = 4 * size;
  while (v5)
  {
    v6 = *(&this[-1].__r_.__value_.__r.__words[2] + v5 + 4);
    v5 -= 4;
    if (v6 == __c)
    {
      return v5 >> 2;
    }
  }

  return -1;
}

std::wstring *__cdecl std::wstring::assign(std::wstring *this, std::wstring::size_type __n, std::wstring::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 >= __n)
    {
      size = HIBYTE(v9);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v7 = this;
    if (__n <= 4)
    {
      goto LABEL_8;
    }

    v8 = 4;
  }

  std::wstring::__grow_by(this, v8, __n - v8, size, 0, size, 0);
  this->__r_.__value_.__l.__size_ = 0;
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80) == 0)
  {
LABEL_7:
    v7 = this;
LABEL_8:
    if (!__n)
    {
      goto LABEL_9;
    }

LABEL_13:
    v10 = 0;
    v11 = vdupq_n_s64(__n - 1);
    v12 = &v7->__r_.__value_.__s.__data_[2];
    do
    {
      v13 = vdupq_n_s64(v10);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1922FB310)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 2) = __c;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 1) = __c;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_1922FB300)))).i32[1])
      {
        *v12 = __c;
        v12[1] = __c;
      }

      v10 += 4;
      v12 += 4;
    }

    while (((__n + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
    if ((*(&this->__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this->__r_.__value_.__l.__size_ = __n;
    goto LABEL_23;
  }

LABEL_12:
  v7 = this->__r_.__value_.__r.__words[0];
  if (__n)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((size & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_23:
  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::wstring *__cdecl std::wstring::erase(std::wstring *this, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size < __pos)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (__n == -1)
  {
    if ((v4 & 0x80000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = __pos;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = __pos & 0x7F;
      v6 = this;
    }

    v6->__r_.__value_.__s.__data_[__pos] = 0;
  }

  else
  {
    std::wstring::__erase_external_with_move(this, __pos, __n);
  }

  return this;
}

void std::wstring::__erase_external_with_move(std::wstring *this, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  if (__n)
  {
    v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v4;
    v6 = this;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    if (size - __pos >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = size - __pos;
    }

    if (size - __pos > __n)
    {
      memmove(v6 + 4 * __pos, v6 + 4 * __pos + 4 * v7, 4 * (size - __pos - v7));
      LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
    }

    v8 = size - v7;
    if ((v4 & 0x80) != 0)
    {
      this->__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
    }

    v6->__r_.__value_.__s.__data_[v8] = 0;
  }
}

std::wstring *__cdecl std::wstring::append(std::wstring *this, const std::wstring *__str, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_12;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_12:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v6 = (__str + 4 * __pos);
  v7 = size - __pos;
  if (v7 >= __n)
  {
    v8 = __n;
  }

  else
  {
    v8 = v7;
  }

  return std::wstring::append(this, v6, v8);
}

int std::wstring::compare(const std::wstring *this, const std::wstring::value_type *__s)
{
  v4 = wcslen(__s);
  v5 = v4;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    if (v4 == -1)
    {
      goto LABEL_15;
    }

    v7 = this;
    this = this->__r_.__value_.__r.__words[0];
    size = v7->__r_.__value_.__l.__size_;
  }

  else if (v4 == -1)
  {
LABEL_15:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (size >= v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = size;
  }

  if (!v8 || (result = wmemcmp(this, __s, v8)) == 0)
  {
    if (size < v5)
    {
      return -1;
    }

    else
    {
      return size > v5;
    }
  }

  return result;
}

int std::wstring::compare(const std::wstring *this, std::wstring::size_type __pos1, std::wstring::size_type __n1, const std::wstring::value_type *__s, std::wstring::size_type __n2)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v6 & 0x8000000000000000) != 0)
  {
    if (__n2 == -1 || (size = this->__r_.__value_.__l.__size_, v7 = size >= __pos1, v11 = size - __pos1, !v7))
    {
LABEL_24:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v11 >= __n1)
    {
      v9 = __n1;
    }

    else
    {
      v9 = v11;
    }

    this = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (__n2 == -1)
    {
      goto LABEL_24;
    }

    v7 = v6 >= __pos1;
    v8 = v6 - __pos1;
    if (!v7)
    {
      goto LABEL_24;
    }

    if (v8 >= __n1)
    {
      v9 = __n1;
    }

    else
    {
      v9 = v8;
    }
  }

  if (v9 >= __n2)
  {
    v12 = __n2;
  }

  else
  {
    v12 = v9;
  }

  if (!v12 || (result = wmemcmp(this + __pos1, __s, v12)) == 0)
  {
    if (v9 < __n2)
    {
      return -1;
    }

    else
    {
      return v9 > __n2;
    }
  }

  return result;
}

int std::wstring::compare(const std::wstring *this, std::wstring::size_type __pos1, std::wstring::size_type __n1, const std::wstring::value_type *__s)
{
  v8 = wcslen(__s);
  v9 = v8;
  v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v10 & 0x8000000000000000) != 0)
  {
    if (v8 == -1 || (size = this->__r_.__value_.__l.__size_, v11 = size >= __pos1, v14 = size - __pos1, !v11))
    {
LABEL_23:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v14 < __n1)
    {
      __n1 = v14;
    }

    this = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v8 == -1)
    {
      goto LABEL_23;
    }

    v11 = v10 >= __pos1;
    v12 = v10 - __pos1;
    if (!v11)
    {
      goto LABEL_23;
    }

    if (v12 < __n1)
    {
      __n1 = v12;
    }
  }

  if (__n1 >= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = __n1;
  }

  if (!v15 || (result = wmemcmp(this + __pos1, __s, v15)) == 0)
  {
    if (__n1 < v9)
    {
      return -1;
    }

    else
    {
      return __n1 > v9;
    }
  }

  return result;
}

std::wstring::reference std::wstring::at(std::wstring *this, std::wstring::size_type __n)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size <= __n)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if ((v2 & 0x80000000) != 0)
  {
    this = this->__r_.__value_.__r.__words[0];
  }

  return (this + 4 * __n);
}

std::wstring *__cdecl std::wstring::__assign_external(std::wstring *this, const std::wstring::value_type *__s)
{
  v4 = wcslen(__s);

  return std::wstring::__assign_external(this, __s, v4);
}

std::wstring::size_type std::wstring::find(const std::wstring *this, const std::wstring::value_type *__s, std::wstring::size_type __pos, std::wstring::size_type __n)
{
  v6 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  if (size < __pos)
  {
    return -1;
  }

  if (__n)
  {
    v8 = (v6 + 4 * size);
    v9 = 4 * size - 4 * __pos;
    if (v9 >= (4 * __n))
    {
      v12 = (v6 + 4 * __pos);
      v13 = *__s;
      v14 = v9 >> 2;
      do
      {
        v15 = v14 - __n;
        if (v15 == -1)
        {
          break;
        }

        v16 = wmemchr(v12, v13, v15 + 1);
        if (!v16)
        {
          break;
        }

        v10 = v16;
        if (!wmemcmp(v16, __s, __n))
        {
          goto LABEL_8;
        }

        v12 = v10 + 1;
        v14 = v8 - (v10 + 1);
      }

      while (v14 >= __n);
    }

    v10 = v8;
LABEL_8:
    if (v10 == v8)
    {
      return -1;
    }

    else
    {
      return (v10 - v6) >> 2;
    }
  }

  return __pos;
}

int std::wstring::compare(const std::wstring *this, std::wstring::size_type __pos1, std::wstring::size_type __n1, const std::wstring *__str, std::wstring::size_type __pos2, std::wstring::size_type __n2)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v8 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = this;
    this = this->__r_.__value_.__r.__words[0];
    v8 = v9->__r_.__value_.__l.__size_;
  }

  v10 = v8 - __pos1;
  if (v8 < __pos1)
  {
    goto LABEL_17;
  }

  v11 = __str->__r_.__value_.__r.__words[0];
  if (v10 >= __n1)
  {
    v10 = __n1;
  }

  v17.__data_ = (this + 4 * __pos1);
  v17.__size_ = v10;
  v12 = size >= __pos2;
  v13 = size - __pos2;
  if (!v12)
  {
LABEL_17:
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (v7 >= 0)
  {
    v14 = __str;
  }

  else
  {
    v14 = v11;
  }

  if (v13 >= __n2)
  {
    v15.__size_ = __n2;
  }

  else
  {
    v15.__size_ = v13;
  }

  v15.__data_ = (v14 + 4 * __pos2);
  return std::wstring_view::compare(&v17, v15);
}

std::wstring *__cdecl std::wstring::operator=(std::wstring *this, const std::wstring *__str)
{
  if (this != __str)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        __str = __str->__r_.__value_.__r.__words[0];
        v4 = size;
      }

      return std::wstring::__assign_no_alias<false>(this, __str, v4);
    }

    else if ((*(&__str->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      return std::wstring::__assign_no_alias<true>(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v2;
    }
  }

  return this;
}

std::wstring *std::wstring::__assign_no_alias<true>(std::wstring *__dst, const std::wstring::value_type *__src, std::wstring::size_type __n_add)
{
  v5 = __n_add > 4;
  v6 = __n_add - 4;
  if (v5)
  {
    std::wstring::__grow_by_and_replace(__dst, 4uLL, v6, *(&__dst->__r_.__value_.__s + 23) & 0x7F, 0, *(&__dst->__r_.__value_.__s + 23) & 0x7F, __n_add, __src);
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __n_add;
    if (__n_add)
    {
      memmove(__dst, __src, 4 * __n_add);
    }

    __dst->__r_.__value_.__s.__data_[__n_add] = 0;
  }

  return __dst;
}

std::wstring *std::wstring::__assign_no_alias<false>(std::wstring *this, const std::wstring::value_type *__src, std::wstring::size_type __n_add)
{
  v5 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __n_add)
  {
    std::wstring::__grow_by_and_replace(this, v5 - 1, __n_add - v5 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __n_add, __src);
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __n_add;
    if (__n_add)
    {
      memmove(v6, __src, 4 * __n_add);
    }

    *(v6 + __n_add) = 0;
  }

  return this;
}

std::wstring *__cdecl std::wstring::append(std::wstring *this, const std::wstring::value_type *__s)
{
  v4 = wcslen(__s);

  return std::wstring::append(this, __s, v4);
}

std::wstring *__cdecl std::wstring::replace(std::wstring *this, std::wstring::size_type __pos1, std::wstring::size_type __n1, const std::wstring *__str, std::wstring::size_type __pos2, std::wstring::size_type __n2)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos2)
    {
      goto LABEL_12;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos2)
  {
LABEL_12:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v8 = (__str + 4 * __pos2);
  v9 = size - __pos2;
  if (v9 >= __n2)
  {
    v10 = __n2;
  }

  else
  {
    v10 = v9;
  }

  return std::wstring::replace(this, __pos1, __n1, v8, v10);
}

std::wstring::iterator std::wstring::insert(std::wstring *this, std::wstring::const_iterator __pos, std::wstring::value_type __c)
{
  v4 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v8 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
    v6 = __pos.__i_ - this->__r_.__value_.__r.__words[0];
    v7 = v6 >> 2;
    if ((this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 == size)
    {
      goto LABEL_5;
    }

LABEL_7:
    if (size == v7)
    {
      v7 = size;
    }

    else
    {
      memmove(v8->__r_.__value_.__r.__words + 4 * v7 + 4, v8 + 4 * v7, 4 * (size - v7));
    }

    goto LABEL_10;
  }

  v6 = __pos.__i_ - this;
  v7 = (__pos.__i_ - this) >> 2;
  if (size != 4)
  {
    v8 = this;
    goto LABEL_7;
  }

  size = 4;
LABEL_5:
  std::wstring::__grow_by(this, size, 1uLL, size, v7, 0, 1uLL);
  v4->__r_.__value_.__l.__size_ = size + 1;
  v8 = v4->__r_.__value_.__r.__words[0];
LABEL_10:
  v8->__r_.__value_.__s.__data_[v7] = __c;
  v9 = size + 1;
  v8->__r_.__value_.__s.__data_[size + 1] = 0;
  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    v4->__r_.__value_.__l.__size_ = v9;
    v4 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v4->__r_.__value_.__s + 23) = v9 & 0x7F;
  }

  return (v4 + v6);
}

void std::wstring::resize(std::wstring *this, std::wstring::size_type __n, std::wstring::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::wstring::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::wstring *__cdecl std::wstring::insert(std::wstring *this, std::wstring::size_type __pos1, const std::wstring *__str, std::wstring::size_type __pos2, std::wstring::size_type __n)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos2)
    {
      goto LABEL_12;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos2)
  {
LABEL_12:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v7 = (__str + 4 * __pos2);
  v8 = size - __pos2;
  if (v8 >= __n)
  {
    v9 = __n;
  }

  else
  {
    v9 = v8;
  }

  return std::wstring::insert(this, __pos1, v7, v9);
}

uint64_t std::operator+<char>@<X0>(const char *a1@<X0>, const void **a2@<X1>, void **a3@<X8>)
{
  v6 = strlen(a1);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v8 + v6);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v7)
  {
    result = memmove(a3, a1, v7);
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(a3 + v7, v10, v8);
  }

  *(a3 + v7 + v8) = 0;
  return result;
}

int std::stoi(const std::string *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(v15, "stoi");
  __endptr[0] = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtol(__str, __endptr, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
  }

  if (__endptr[0] == __str)
  {
  }

  if (__idx)
  {
    *__idx = __endptr[0] - __str;
  }

  if (v7 != v7)
  {
    if (v16 >= 0)
    {
      v11 = HIBYTE(v16);
    }

    else
    {
      v11 = v15[1];
    }

    v12 = __endptr;
    std::string::basic_string[abi:ne200100](__endptr, v11 + 14);
    if (v18 < 0)
    {
      v12 = __endptr[0];
    }

    if (v11)
    {
      if (v16 >= 0)
      {
        v13 = v15;
      }

      else
      {
        v13 = v15[0];
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v18 >= 0)
    {
      v14 = __endptr;
    }

    else
    {
      v14 = __endptr[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (SHIBYTE(v16) < 0)
  {
    MEMORY[0x193B0CA40](v15[0], v16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B05A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::stol(const std::string *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(v11, "stol");
  __endptr = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtol(__str, &__endptr, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
  }

  if (__endptr == __str)
  {
  }

  if (__idx)
  {
    *__idx = __endptr - __str;
  }

  if (SHIBYTE(v12) < 0)
  {
    MEMORY[0x193B0CA40](v11[0], v12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B0770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    std::stoi(&a9);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::stoul(const std::string *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "stoul");
  __endptr = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtoul(__str, &__endptr, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
    if (v21 >= 0)
    {
      v11 = HIBYTE(v21);
    }

    else
    {
      v11 = v20;
    }

    v12 = v23;
    std::string::basic_string[abi:ne200100](v23, v11 + 14);
    if (v24 < 0)
    {
      v12 = v23[0];
    }

    if (v11)
    {
      if (v21 >= 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = v23[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (__endptr == __str)
  {
    if (v21 >= 0)
    {
      v15 = HIBYTE(v21);
    }

    else
    {
      v15 = v20;
    }

    v16 = v23;
    std::string::basic_string[abi:ne200100](v23, v15 + 15);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if (v21 >= 0)
      {
        v17 = &v19;
      }

      else
      {
        v17 = v19;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ": no conversion");
    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v18);
  }

  if (__idx)
  {
    *__idx = __endptr - __str;
  }

  if (SHIBYTE(v21) < 0)
  {
    MEMORY[0x193B0CA40](v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B0980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stoll(const std::string *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "stoll");
  __endptr = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtoll(__str, &__endptr, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
    if (v21 >= 0)
    {
      v11 = HIBYTE(v21);
    }

    else
    {
      v11 = v20;
    }

    v12 = v23;
    std::string::basic_string[abi:ne200100](v23, v11 + 14);
    if (v24 < 0)
    {
      v12 = v23[0];
    }

    if (v11)
    {
      if (v21 >= 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = v23[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (__endptr == __str)
  {
    if (v21 >= 0)
    {
      v15 = HIBYTE(v21);
    }

    else
    {
      v15 = v20;
    }

    v16 = v23;
    std::string::basic_string[abi:ne200100](v23, v15 + 15);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if (v21 >= 0)
      {
        v17 = &v19;
      }

      else
      {
        v17 = v19;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ": no conversion");
    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v18);
  }

  if (__idx)
  {
    *__idx = __endptr - __str;
  }

  if (SHIBYTE(v21) < 0)
  {
    MEMORY[0x193B0CA40](v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B0BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::stoull(const std::string *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "stoull");
  __endptr = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = strtoull(__str, &__endptr, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
    if (v21 >= 0)
    {
      v11 = HIBYTE(v21);
    }

    else
    {
      v11 = v20;
    }

    v12 = v23;
    std::string::basic_string[abi:ne200100](v23, v11 + 14);
    if (v24 < 0)
    {
      v12 = v23[0];
    }

    if (v11)
    {
      if (v21 >= 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = v23[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (__endptr == __str)
  {
    if (v21 >= 0)
    {
      v15 = HIBYTE(v21);
    }

    else
    {
      v15 = v20;
    }

    v16 = v23;
    std::string::basic_string[abi:ne200100](v23, v15 + 15);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if (v21 >= 0)
      {
        v17 = &v19;
      }

      else
      {
        v17 = v19;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ": no conversion");
    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v18);
  }

  if (__idx)
  {
    *__idx = __endptr - __str;
  }

  if (SHIBYTE(v21) < 0)
  {
    MEMORY[0x193B0CA40](v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B0E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

float std::stof(const std::string *__str, size_t *__idx)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "stof");
  v20 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v4 = *__error();
  *__error() = 0;
  v5 = strtof(__str, &v20);
  v6 = __error();
  v7 = *v6;
  *v6 = v4;
  if (v7 == 34)
  {
    if (v19 >= 0)
    {
      v9 = HIBYTE(v19);
    }

    else
    {
      v9 = v18;
    }

    v10 = v21;
    std::string::basic_string[abi:ne200100](v21, v9 + 14);
    if (v22 < 0)
    {
      v10 = v21[0];
    }

    if (v9)
    {
      if (v19 >= 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": out of range");
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    std::__throw_out_of_range[abi:ne200100](v12);
  }

  if (v20 == __str)
  {
    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = v18;
    }

    v14 = v21;
    std::string::basic_string[abi:ne200100](v21, v13 + 15);
    if (v22 < 0)
    {
      v14 = v21[0];
    }

    if (v13)
    {
      if (v19 >= 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ": no conversion");
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v16);
  }

  if (__idx)
  {
    *__idx = v20 - __str;
  }

  if (SHIBYTE(v19) < 0)
  {
    MEMORY[0x193B0CA40](v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

void sub_1922B1058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

double std::stod(const std::string *__str, size_t *__idx)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "stod");
  v20 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v4 = *__error();
  *__error() = 0;
  v5 = strtod(__str, &v20);
  v6 = __error();
  v7 = *v6;
  *v6 = v4;
  if (v7 == 34)
  {
    if (v19 >= 0)
    {
      v9 = HIBYTE(v19);
    }

    else
    {
      v9 = v18;
    }

    v10 = v21;
    std::string::basic_string[abi:ne200100](v21, v9 + 14);
    if (v22 < 0)
    {
      v10 = v21[0];
    }

    if (v9)
    {
      if (v19 >= 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": out of range");
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    std::__throw_out_of_range[abi:ne200100](v12);
  }

  if (v20 == __str)
  {
    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = v18;
    }

    v14 = v21;
    std::string::basic_string[abi:ne200100](v21, v13 + 15);
    if (v22 < 0)
    {
      v14 = v21[0];
    }

    if (v13)
    {
      if (v19 >= 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ": no conversion");
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v16);
  }

  if (__idx)
  {
    *__idx = v20 - __str;
  }

  if (SHIBYTE(v19) < 0)
  {
    MEMORY[0x193B0CA40](v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

void sub_1922B12A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

long double std::stold(const std::string *__str, size_t *__idx)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "stold");
  v20 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v4 = *__error();
  *__error() = 0;
  v5 = strtold(__str, &v20);
  v6 = __error();
  v7 = *v6;
  *v6 = v4;
  if (v7 == 34)
  {
    if (v19 >= 0)
    {
      v9 = HIBYTE(v19);
    }

    else
    {
      v9 = v18;
    }

    v10 = v21;
    std::string::basic_string[abi:ne200100](v21, v9 + 14);
    if (v22 < 0)
    {
      v10 = v21[0];
    }

    if (v9)
    {
      if (v19 >= 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": out of range");
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    std::__throw_out_of_range[abi:ne200100](v12);
  }

  if (v20 == __str)
  {
    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = v18;
    }

    v14 = v21;
    std::string::basic_string[abi:ne200100](v21, v13 + 15);
    if (v22 < 0)
    {
      v14 = v21[0];
    }

    if (v13)
    {
      if (v19 >= 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ": no conversion");
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v16);
  }

  if (__idx)
  {
    *__idx = v20 - __str;
  }

  if (SHIBYTE(v19) < 0)
  {
    MEMORY[0x193B0CA40](v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

void sub_1922B14E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

int std::stoi(const std::wstring *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(v15, "stoi");
  v17[0] = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = wcstol(__str, v17, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
  }

  if (v17[0] == __str)
  {
  }

  if (__idx)
  {
    *__idx = (v17[0] - __str) >> 2;
  }

  if (v7 != v7)
  {
    if (v16 >= 0)
    {
      v11 = HIBYTE(v16);
    }

    else
    {
      v11 = v15[1];
    }

    v12 = v17;
    std::string::basic_string[abi:ne200100](v17, v11 + 14);
    if (v18 < 0)
    {
      v12 = v17[0];
    }

    if (v11)
    {
      if (v16 >= 0)
      {
        v13 = v15;
      }

      else
      {
        v13 = v15[0];
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v18 >= 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v17[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (SHIBYTE(v16) < 0)
  {
    MEMORY[0x193B0CA40](v15[0], v16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B16BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stol(const std::wstring *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(v11, "stol");
  v13 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = wcstol(__str, &v13, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
  }

  if (v13 == __str)
  {
  }

  if (__idx)
  {
    *__idx = (v13 - __str) >> 2;
  }

  if (SHIBYTE(v12) < 0)
  {
    MEMORY[0x193B0CA40](v11[0], v12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B17D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    std::stoi(&a9);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::stoul(const std::wstring *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "stoul");
  v22 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = wcstoul(__str, &v22, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
    if (v21 >= 0)
    {
      v11 = HIBYTE(v21);
    }

    else
    {
      v11 = v20;
    }

    v12 = v23;
    std::string::basic_string[abi:ne200100](v23, v11 + 14);
    if (v24 < 0)
    {
      v12 = v23[0];
    }

    if (v11)
    {
      if (v21 >= 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = v23[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (v22 == __str)
  {
    if (v21 >= 0)
    {
      v15 = HIBYTE(v21);
    }

    else
    {
      v15 = v20;
    }

    v16 = v23;
    std::string::basic_string[abi:ne200100](v23, v15 + 15);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if (v21 >= 0)
      {
        v17 = &v19;
      }

      else
      {
        v17 = v19;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ": no conversion");
    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v18);
  }

  if (__idx)
  {
    *__idx = (v22 - __str) >> 2;
  }

  if (SHIBYTE(v21) < 0)
  {
    MEMORY[0x193B0CA40](v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B19EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stoll(const std::wstring *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "stoll");
  v22 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = wcstoll(__str, &v22, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
    if (v21 >= 0)
    {
      v11 = HIBYTE(v21);
    }

    else
    {
      v11 = v20;
    }

    v12 = v23;
    std::string::basic_string[abi:ne200100](v23, v11 + 14);
    if (v24 < 0)
    {
      v12 = v23[0];
    }

    if (v11)
    {
      if (v21 >= 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = v23[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (v22 == __str)
  {
    if (v21 >= 0)
    {
      v15 = HIBYTE(v21);
    }

    else
    {
      v15 = v20;
    }

    v16 = v23;
    std::string::basic_string[abi:ne200100](v23, v15 + 15);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if (v21 >= 0)
      {
        v17 = &v19;
      }

      else
      {
        v17 = v19;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ": no conversion");
    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v18);
  }

  if (__idx)
  {
    *__idx = (v22 - __str) >> 2;
  }

  if (SHIBYTE(v21) < 0)
  {
    MEMORY[0x193B0CA40](v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B1C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::stoull(const std::wstring *__str, size_t *__idx, int __base)
{
  std::string::basic_string[abi:ne200100]<0>(&v19, "stoull");
  v22 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v6 = *__error();
  *__error() = 0;
  v7 = wcstoull(__str, &v22, __base);
  v8 = __error();
  v9 = *v8;
  *v8 = v6;
  if (v9 == 34)
  {
    if (v21 >= 0)
    {
      v11 = HIBYTE(v21);
    }

    else
    {
      v11 = v20;
    }

    v12 = v23;
    std::string::basic_string[abi:ne200100](v23, v11 + 14);
    if (v24 < 0)
    {
      v12 = v23[0];
    }

    if (v11)
    {
      if (v21 >= 0)
      {
        v13 = &v19;
      }

      else
      {
        v13 = v19;
      }

      memmove(v12, v13, v11);
    }

    strcpy(v12 + v11, ": out of range");
    if (v24 >= 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = v23[0];
    }

    std::__throw_out_of_range[abi:ne200100](v14);
  }

  if (v22 == __str)
  {
    if (v21 >= 0)
    {
      v15 = HIBYTE(v21);
    }

    else
    {
      v15 = v20;
    }

    v16 = v23;
    std::string::basic_string[abi:ne200100](v23, v15 + 15);
    if (v24 < 0)
    {
      v16 = v23[0];
    }

    if (v15)
    {
      if (v21 >= 0)
      {
        v17 = &v19;
      }

      else
      {
        v17 = v19;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, ": no conversion");
    if (v24 >= 0)
    {
      v18 = v23;
    }

    else
    {
      v18 = v23[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v18);
  }

  if (__idx)
  {
    *__idx = (v22 - __str) >> 2;
  }

  if (SHIBYTE(v21) < 0)
  {
    MEMORY[0x193B0CA40](v19, v21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922B1E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

float std::stof(const std::wstring *__str, size_t *__idx)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "stof");
  v20 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v4 = *__error();
  *__error() = 0;
  v5 = wcstof(__str, &v20);
  v6 = __error();
  v7 = *v6;
  *v6 = v4;
  if (v7 == 34)
  {
    if (v19 >= 0)
    {
      v9 = HIBYTE(v19);
    }

    else
    {
      v9 = v18;
    }

    v10 = v21;
    std::string::basic_string[abi:ne200100](v21, v9 + 14);
    if (v22 < 0)
    {
      v10 = v21[0];
    }

    if (v9)
    {
      if (v19 >= 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": out of range");
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    std::__throw_out_of_range[abi:ne200100](v12);
  }

  if (v20 == __str)
  {
    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = v18;
    }

    v14 = v21;
    std::string::basic_string[abi:ne200100](v21, v13 + 15);
    if (v22 < 0)
    {
      v14 = v21[0];
    }

    if (v13)
    {
      if (v19 >= 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ": no conversion");
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v16);
  }

  if (__idx)
  {
    *__idx = (v20 - __str) >> 2;
  }

  if (SHIBYTE(v19) < 0)
  {
    MEMORY[0x193B0CA40](v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

void sub_1922B20D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

double std::stod(const std::wstring *__str, size_t *__idx)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "stod");
  v20 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v4 = *__error();
  *__error() = 0;
  v5 = wcstod(__str, &v20);
  v6 = __error();
  v7 = *v6;
  *v6 = v4;
  if (v7 == 34)
  {
    if (v19 >= 0)
    {
      v9 = HIBYTE(v19);
    }

    else
    {
      v9 = v18;
    }

    v10 = v21;
    std::string::basic_string[abi:ne200100](v21, v9 + 14);
    if (v22 < 0)
    {
      v10 = v21[0];
    }

    if (v9)
    {
      if (v19 >= 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": out of range");
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    std::__throw_out_of_range[abi:ne200100](v12);
  }

  if (v20 == __str)
  {
    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = v18;
    }

    v14 = v21;
    std::string::basic_string[abi:ne200100](v21, v13 + 15);
    if (v22 < 0)
    {
      v14 = v21[0];
    }

    if (v13)
    {
      if (v19 >= 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ": no conversion");
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v16);
  }

  if (__idx)
  {
    *__idx = (v20 - __str) >> 2;
  }

  if (SHIBYTE(v19) < 0)
  {
    MEMORY[0x193B0CA40](v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

void sub_1922B231C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

long double std::stold(const std::wstring *__str, size_t *__idx)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "stold");
  v20 = 0;
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  v4 = *__error();
  *__error() = 0;
  v5 = wcstold(__str, &v20);
  v6 = __error();
  v7 = *v6;
  *v6 = v4;
  if (v7 == 34)
  {
    if (v19 >= 0)
    {
      v9 = HIBYTE(v19);
    }

    else
    {
      v9 = v18;
    }

    v10 = v21;
    std::string::basic_string[abi:ne200100](v21, v9 + 14);
    if (v22 < 0)
    {
      v10 = v21[0];
    }

    if (v9)
    {
      if (v19 >= 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17;
      }

      memmove(v10, v11, v9);
    }

    strcpy(v10 + v9, ": out of range");
    if (v22 >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = v21[0];
    }

    std::__throw_out_of_range[abi:ne200100](v12);
  }

  if (v20 == __str)
  {
    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = v18;
    }

    v14 = v21;
    std::string::basic_string[abi:ne200100](v21, v13 + 15);
    if (v22 < 0)
    {
      v14 = v21[0];
    }

    if (v13)
    {
      if (v19 >= 0)
      {
        v15 = &v17;
      }

      else
      {
        v15 = v17;
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, ": no conversion");
    if (v22 >= 0)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    std::__throw_invalid_argument[abi:ne200100](v16);
  }

  if (__idx)
  {
    *__idx = (v20 - __str) >> 2;
  }

  if (SHIBYTE(v19) < 0)
  {
    MEMORY[0x193B0CA40](v17, v19 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v5;
}

void sub_1922B2568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    std::stoi(&a13);
  }

  if (SHIBYTE(a11) < 0)
  {
    MEMORY[0x193B0CA40](a9, a11 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, int __val)
{
  v11 = *MEMORY[0x1E69E9840];
  p_src = &__src;
  v5 = &v11;
  if (__val < 0)
  {
    p_src = &v10;
    __src = 45;
    __val = -__val;
  }

  if (&v11 - p_src > 9 || (v6 = (1233 * (32 - __clz(__val | 1))) >> 12, &v11 - p_src >= (((__PAIR64__(v6, __val) - std::__itoa::__pow10_32[v6]) >> 32) + 1)))
  {
    v5 = std::__itoa::__base_10_u32[abi:ne200100](p_src, __val);
  }

  result = std::string::__init_with_size[abi:ne200100]<char const*,char const*>(retstr, &__src, v5, v5 - &__src);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}