@interface ABMTapToRadar
+ (id)sharedInstance;
- (ABMTapToRadar)init;
- (BOOL)checkAudioTraces_sync;
- (BOOL)checkNotificationCriteria:(int *)criteria :(const void *)a4 :(BOOL)a5;
- (BOOL)checkTraces_sync:(int)traces_sync;
- (vector<std::string,)findLogFiles_sync:(ABMTapToRadar *)self :(SEL)a3;
- (void)setMode:(int)mode;
- (void)showNotification:(int)notification :()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> ::;
- (void)showUserNotification:(int)notification dumpReason:()basic_string<char;
@end

@implementation ABMTapToRadar

+ (id)sharedInstance
{
  if (qword_2A18B7820 != -1)
  {
    dispatch_once(&qword_2A18B7820, &__block_literal_global_3);
  }

  return _MergedGlobals_5;
}

ABMTapToRadar *__31__ABMTapToRadar_sharedInstance__block_invoke()
{
  result = objc_alloc_init(ABMTapToRadar);
  _MergedGlobals_5 = result;
  return result;
}

- (ABMTapToRadar)init
{
  v7.receiver = self;
  v7.super_class = ABMTapToRadar;
  v2 = [(ABMTapToRadar *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("abm.TapToRadar.queue", 0);
    fObj = v2->fQueue.fObj.fObj;
    v2->fQueue.fObj.fObj = v3;
    if (fObj)
    {
      dispatch_release(fObj);
      v3 = v2->fQueue.fObj.fObj;
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __21__ABMTapToRadar_init__block_invoke;
    block[3] = &unk_29EE641B8;
    block[4] = v2;
    dispatch_sync(v3, block);
  }

  return v2;
}

void __21__ABMTapToRadar_init__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 30;
  *(*(a1 + 32) + 28) = 86400;
  *(*(a1 + 32) + 8) = 0;
  if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
  {
    *(*(a1 + 32) + 8) = 1;
  }

  v2 = *MEMORY[0x29EDBE590];
  v3 = strlen(*MEMORY[0x29EDBE590]);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v9 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_12;
  }

  HIBYTE(v9) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_12:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  v7 = *(a1 + 32);
  memset(&__p, 0, sizeof(__p));
  if (prop::ttr::get(__dst, &__p))
  {
    v11 = -1431655766;
    if (util::convert<int>(&__p, &v11, 0))
    {
      *(v7 + 8) = v11;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_20;
  }
}

- (void)setMode:(int)mode
{
  fObj = self->fQueue.fObj.fObj;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __25__ABMTapToRadar_setMode___block_invoke;
  v4[3] = &unk_29EE641E0;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(fObj, v4);
}

void __25__ABMTapToRadar_setMode___block_invoke(uint64_t a1)
{
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
  {
    return;
  }

  *(*(a1 + 32) + 8) = *(a1 + 40);
  v2 = *MEMORY[0x29EDBE590];
  v3 = strlen(*MEMORY[0x29EDBE590]);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v9 = v6 | 0x8000000000000000;
    __dst[0] = v5;
  }

  else
  {
    HIBYTE(v9) = v3;
    v5 = __dst;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  memmove(v5, v2, v4);
LABEL_12:
  *(v4 + v5) = 0;
  std::to_string(&v10, *(*(a1 + 32) + 8));
  __p = v10;
  prop::ttr::set(__dst, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_16;
  }
}

- (vector<std::string,)findLogFiles_sync:(ABMTapToRadar *)self :(SEL)a3
{
  v5 = v4;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (*(&a4->var0.var1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, a4->var0.var1.var0, a4->var0.var1.var1);
  }

  else
  {
    v71 = *a4;
  }

  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&v69, v5, 0);
  support::fs::getFilteredFiles(&v71, &v69, &v72, 0);
  v9 = v70;
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    selfCopy2 = self;
    std::locale::~locale(&v69);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      v12 = v72;
      v11 = v73;
      if (v72 != v73)
      {
        goto LABEL_13;
      }

LABEL_124:
      if (v12)
      {
        goto LABEL_125;
      }

      return result;
    }
  }

  else
  {
    selfCopy2 = self;
    std::locale::~locale(&v69);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(v71.__r_.__value_.__l.__data_);
  v12 = v72;
  v11 = v73;
  if (v72 == v73)
  {
    goto LABEL_124;
  }

  do
  {
    while (1)
    {
LABEL_13:
      memset(&__p, 170, sizeof(__p));
      v13 = *(&a4->var0.var1 + 23);
      if (v13 >= 0)
      {
        var1 = *(&a4->var0.var1 + 23);
      }

      else
      {
        var1 = a4->var0.var1.var1;
      }

      v15 = var1 + 1;
      if (var1 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v15 < 0x17)
      {
        memset(&v75, 0, 24);
        v17 = &v75;
        HIBYTE(v75.st_gid) = var1 + 1;
        if (!var1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = (v15 | 7) == 0x17 ? 25 : (v15 | 7) + 1;
        v17 = operator new(v16);
        v75.st_ino = var1 + 1;
        *&v75.st_uid = v16 | 0x8000000000000000;
        *&v75.st_dev = v17;
      }

      var0 = a4->var0.var1.var0;
      v19 = v13 >= 0 ? a4 : a4->var0.var1.var0;
      memmove(v17, v19, var1);
LABEL_27:
      *&v17[var1] = 47;
      v20 = *(v12 + 23);
      v21 = v20 >= 0 ? v12 : *v12;
      v22 = v20 >= 0 ? *(v12 + 23) : v12[1];
      result = std::string::append(&v75, v21, v22);
      v23 = *&result->var0;
      __p.__r_.__value_.__r.__words[2] = result->var2;
      *&__p.__r_.__value_.__l.__data_ = v23;
      result->var1 = 0;
      result->var2 = 0;
      result->var0 = 0;
      if (SHIBYTE(v75.st_gid) < 0)
      {
        operator delete(*&v75.st_dev);
        v24 = *(v12 + 23);
        if ((v24 & 0x80000000) == 0)
        {
LABEL_35:
          if (v24 == 1)
          {
            if (*v12 == 46)
            {
              goto LABEL_11;
            }
          }

          else if (v24 == 2 && *v12 == 11822)
          {
            goto LABEL_11;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v24 = *(v12 + 23);
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }
      }

      v25 = v12[1];
      if (v25 == 1)
      {
        if (**v12 == 46)
        {
          goto LABEL_11;
        }
      }

      else if (v25 == 2 && **v12 == 11822)
      {
        goto LABEL_11;
      }

LABEL_49:
      v26.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v26.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v67.st_blksize = v26;
      *v67.st_qspare = v26;
      v67.st_birthtimespec = v26;
      *&v67.st_size = v26;
      v67.st_ctimespec = v26;
      v67.st_atimespec = v26;
      v67.st_mtimespec = v26;
      *&v67.st_dev = v26;
      *&v67.st_uid = v26;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      result = lstat(p_p, &v67);
      if ((v67.st_mode & 0xF000) == 0xA000)
      {
        goto LABEL_11;
      }

      v28.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v28.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v75.st_blksize = v28;
      *v75.st_qspare = v28;
      v75.st_birthtimespec = v28;
      *&v75.st_size = v28;
      v75.st_mtimespec = v28;
      v75.st_ctimespec = v28;
      *&v75.st_uid = v28;
      v75.st_atimespec = v28;
      *&v75.st_dev = v28;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p.__r_.__value_.__r.__words[0];
      }

      if (stat(v29, &v75) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v32 = &__p) : (v32 = __p.__r_.__value_.__r.__words[0]), (v33 = opendir(v32), (v34 = v33) == 0) || (v35 = readdir(v33), result = closedir(v34), !v35)))
      {
        v30 = retstr->var1;
        if (v30 >= retstr->var2)
        {
          result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(retstr, &__p);
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(retstr->var1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v31 = *&__p.__r_.__value_.__l.__data_;
            v30->var2 = __p.__r_.__value_.__r.__words[2];
            *&v30->var0 = v31;
          }

          result = v30 + 1;
        }

        retstr->var1 = result;
        goto LABEL_11;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ < 0xA)
        {
LABEL_136:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v36 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0xA)
        {
          goto LABEL_136;
        }

        v36 = &__p;
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      v38 = v36 + size;
      v39 = *(v38 - 10);
      v40 = *(v38 - 1);
      if (v39 == 0x6968637261676F6CLL && v40 == 25974)
      {
        goto LABEL_11;
      }

      memset(v66, 170, sizeof(v66));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v65, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v65 = __p;
      }

      v64 = 2;
      strcpy(v63, ".*");
      result = selfCopy2;
      if (selfCopy2)
      {
        result = [(ABMTapToRadar *)selfCopy2 findLogFiles_sync:&v65];
        if (v64 < 0)
        {
          operator delete(v63[0]);
          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_109:
            operator delete(v65.__r_.__value_.__l.__data_);
            v42 = v66[0];
            v43 = v66[1];
            if (v66[0] == v66[1])
            {
LABEL_110:
              if (!v42)
              {
                goto LABEL_11;
              }

LABEL_111:
              v58 = v42;
              if (v43 != v42)
              {
                do
                {
                  v59 = *(v43 - 1);
                  v43 -= 3;
                  if (v59 < 0)
                  {
                    operator delete(*v43);
                  }
                }

                while (v43 != v42);
                v58 = v66[0];
              }

              v66[1] = v42;
              operator delete(v58);
              goto LABEL_11;
            }

            goto LABEL_83;
          }
        }

        else if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        memset(v66, 0, sizeof(v66));
        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_109;
        }
      }

      v42 = v66[0];
      v43 = v66[1];
      if (v66[0] == v66[1])
      {
        goto LABEL_110;
      }

LABEL_83:
      v44 = retstr->var1;
      do
      {
        var2 = retstr->var2;
        if (v44 < var2)
        {
          if (*(v42 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v44, *v42, v42[1]);
          }

          else
          {
            v45 = *v42;
            v44->__r_.__value_.__r.__words[2] = v42[2];
            *&v44->__r_.__value_.__l.__data_ = v45;
          }

          ++v44;
        }

        else
        {
          v47 = retstr->var0;
          v48 = v44 - retstr->var0;
          v49 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3) + 1;
          if (v49 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
          }

          v50 = 0xAAAAAAAAAAAAAAABLL * ((var2 - v47) >> 3);
          if (2 * v50 > v49)
          {
            v49 = 2 * v50;
          }

          if (v50 >= 0x555555555555555)
          {
            v51 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v51 = v49;
          }

          v75.st_atimespec.tv_sec = retstr;
          if (v51)
          {
            if (v51 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v52 = operator new(24 * v51);
          }

          else
          {
            v52 = 0;
          }

          st_ino = &v52[8 * (v48 >> 3)];
          *&v75.st_dev = v52;
          v75.st_ino = st_ino;
          v54 = &v52[24 * v51];
          *&v75.st_uid = st_ino;
          *&v75.st_rdev = v54;
          if (*(v42 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(st_ino, *v42, v42[1]);
            v56 = *&v75.st_uid;
            st_ino = v75.st_ino;
            v47 = retstr->var0;
            v54 = *&v75.st_rdev;
            v48 = retstr->var1 - retstr->var0;
          }

          else
          {
            v55 = *v42;
            st_ino->__r_.__value_.__r.__words[2] = v42[2];
            *&st_ino->__r_.__value_.__l.__data_ = v55;
            v56 = &v52[8 * (v48 >> 3)];
          }

          v44 = v56 + 1;
          v57 = st_ino - v48;
          memcpy(st_ino - v48, v47, v48);
          result = retstr->var0;
          retstr->var0 = v57;
          retstr->var1 = v44;
          retstr->var2 = v54;
          if (result)
          {
            operator delete(result);
          }
        }

        retstr->var1 = v44;
        v42 += 3;
        v43 = v66[1];
      }

      while (v42 != v66[1]);
      v42 = v66[0];
      if (v66[0])
      {
        goto LABEL_111;
      }

LABEL_11:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      v12 += 3;
      v11 = v73;
      if (v12 == v73)
      {
        goto LABEL_120;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    v12 += 3;
    v11 = v73;
  }

  while (v12 != v73);
LABEL_120:
  v12 = v72;
  if (!v72)
  {
    return result;
  }

LABEL_125:
  v60 = v12;
  if (v11 != v12)
  {
    do
    {
      v61 = *(v11 - 1);
      v11 -= 3;
      if (v61 < 0)
      {
        operator delete(*v11);
      }
    }

    while (v11 != v12);
    v60 = v72;
  }

  v73 = v12;
  operator delete(v60);
  return result;
}

- (BOOL)checkAudioTraces_sync
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  memset(__dst, 170, sizeof(__dst));
  v2 = capabilities::radio::maverick(self);
  v3 = MEMORY[0x29EDBF418];
  if (!v2)
  {
    v3 = MEMORY[0x29EDBF200];
  }

  v4 = *v3;
  v5 = strlen(*v3);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    __dst[2] = (v8 | 0x8000000000000000);
    __dst[0] = v7;
    goto LABEL_11;
  }

  HIBYTE(__dst[2]) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_11:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  prop::bbtrace::get(__dst, v16);
  v14[23] = 5;
  strcpy(v14, "Audio");
  v9 = SHIBYTE(v17);
  v10 = v16[0];
  if (v17 >= 0)
  {
    v11 = v16;
  }

  else
  {
    v11 = v16[0];
  }

  v12 = strcasecmp(v14, v11);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
    if ((v9 & 0x80000000) == 0)
    {
      return v12 == 0;
    }

LABEL_19:
    operator delete(v10);
    return v12 == 0;
  }

  if (v9 < 0)
  {
    goto LABEL_19;
  }

  return v12 == 0;
}

- (BOOL)checkTraces_sync:(int)traces_sync
{
  v17 = 1;
  if (traces_sync > 5)
  {
    return v17;
  }

  if (((1 << traces_sync) & 0x26) == 0)
  {
    if (((1 << traces_sync) & 0x18) == 0)
    {
      return v17;
    }

    v7 = *MEMORY[0x29EDBE4C8];
    v8 = strlen(*MEMORY[0x29EDBE4C8]);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_31:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v8 | 7) + 1;
      }

      p_dst = operator new(v12);
      v15 = v9;
      v16 = v12 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v16) = v8;
      p_dst = &__dst;
      if (!v8)
      {
LABEL_24:
        *(p_dst + v9) = 0;
        memset(&__p, 0, sizeof(__p));
        if (!prop::coredump::get(&__dst, &__p))
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    memmove(p_dst, v7, v9);
    goto LABEL_24;
  }

  v3 = *MEMORY[0x29EDBE4C8];
  v4 = strlen(*MEMORY[0x29EDBE4C8]);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v4 | 7) + 1;
    }

    v6 = operator new(v11);
    v15 = v5;
    v16 = v11 | 0x8000000000000000;
    __dst = v6;
    goto LABEL_16;
  }

  HIBYTE(v16) = v4;
  v6 = &__dst;
  if (v4)
  {
LABEL_16:
    memmove(v6, v3, v5);
  }

  *(v6 + v5) = 0;
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(&__dst, &__p))
  {
    goto LABEL_26;
  }

LABEL_25:
  util::convert<BOOL>(&__p, &v17, 0);
LABEL_26:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return v17;
    }
  }

  else if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    return v17;
  }

  operator delete(__dst);
  return v17;
}

- (BOOL)checkNotificationCriteria:(int *)criteria :(const void *)a4 :(BOOL)a5
{
  v9 = operator new(0x20uLL);
  strcpy(v9, "Carrier Bundle file push failed");
  v76 = &v76;
  v77 = &v76;
  v78 = 0;
  v10 = operator new(0x30uLL);
  *v10 = 0;
  *(v10 + 1) = 0;
  std::string::__init_copy_ctor_external((v10 + 16), v9, 0x1FuLL);
  v11 = v78;
  v12 = v76;
  *(v10 + 10) = 2;
  *v10 = v12;
  *(v10 + 1) = &v76;
  *(v12 + 1) = v10;
  v76 = v10;
  v78 = v11 + 1;
  operator delete(v9);
  if ((atomic_load_explicit(&qword_2A18B7828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7828))
  {
    qword_2A18B7850 = "mav_bedf_component_config_reset: Reset Requested by Component Cfg";
    qword_2A18B7858 = "AutoBugCapture";
    qword_2A18B7860 = *MEMORY[0x29EDBFC50];
    __cxa_guard_release(&qword_2A18B7828);
  }

  v13 = *(a4 + 23);
  if (v13 < 0)
  {
    v15 = *(a4 + 1);
    if (!v15)
    {
      goto LABEL_21;
    }

    v14 = *a4;
    if (v15 < 30)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!*(a4 + 23))
    {
      goto LABEL_21;
    }

    v14 = a4;
    v15 = *(a4 + 23);
    if (v13 < 30)
    {
      goto LABEL_21;
    }
  }

  v16 = &v14[v15];
  v17 = v14;
  do
  {
    v18 = memchr(v17, 67, v15 - 29);
    if (!v18)
    {
      break;
    }

    if (*v18 == 0x736964206C6C6143 && *(v18 + 1) == 0x657463656E6E6F63 && *(v18 + 2) == 0x657078656E752064 && *(v18 + 22) == 0x796C646574636570)
    {
      if (v18 != v16 && v18 - v14 != -1)
      {
        *criteria = 1;
        LOBYTE(v13) = *(a4 + 23);
      }

      break;
    }

    v17 = v18 + 1;
    v15 = v16 - v17;
  }

  while (v16 - v17 >= 30);
LABEL_21:
  __s2[1] = 0xAAAAAAAAAA005D73;
  __s2[2] = 0xAAAAAAAAAAAAAAALL;
  __s2[0] = *"[Settings]";
  if (self->fMode == 3)
  {
    goto LABEL_33;
  }

  if ((v13 & 0x80) == 0)
  {
    if (v13 >= 0xAu)
    {
      v22 = 10;
    }

    else
    {
      v22 = v13;
    }

    v23 = memcmp(a4, __s2, v22);
    if (v22 != 10)
    {
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  if (*(a4 + 1) >= 0xAuLL)
  {
    v24 = 10;
  }

  else
  {
    v24 = *(a4 + 1);
  }

  v23 = memcmp(*a4, __s2, v24);
  if (v24 == 10)
  {
LABEL_32:
    if (v23)
    {
      goto LABEL_47;
    }

LABEL_33:
    v25 = v13;
    if ((v13 & 0x80u) == 0)
    {
      v26 = v13;
    }

    else
    {
      v26 = *(a4 + 1);
    }

    if (!v26)
    {
LABEL_46:
      v38 = 1;
      goto LABEL_111;
    }

    goto LABEL_37;
  }

LABEL_47:
  v38 = 0;
  if (capabilities::radio::supportsAutomaticRadarFiling(v23))
  {
    criteriaCopy = criteria;
    if (!a5)
    {
      v38 = 0;
      v39 = *(a4 + 23);
      v40 = v39 >= 0 ? *(a4 + 23) : *(a4 + 1);
      if (v40 && *criteriaCopy != 1)
      {
        v41 = v77;
        if (v77 == &v76)
        {
          goto LABEL_110;
        }

        if (v39 >= 0)
        {
          v42 = a4;
        }

        else
        {
          v42 = *a4;
        }

        v43 = &v42[v40];
        while (1)
        {
          v44 = *(v41 + 39);
          v45 = v44 >= 0 ? v41 + 2 : v41[2];
          v46 = v44 >= 0 ? *(v41 + 39) : v41[3];
          if (!v46)
          {
            break;
          }

          if (v40 >= v46)
          {
            v47 = *v45;
            v48 = v40;
            v49 = v42;
            do
            {
              v50 = v48 - v46;
              if (v50 == -1)
              {
                break;
              }

              v51 = memchr(v49, v47, v50 + 1);
              if (!v51)
              {
                break;
              }

              v52 = v51;
              if (!memcmp(v51, v45, v46))
              {
                if (v52 == v43 || v52 - v42 == -1)
                {
                  break;
                }

                goto LABEL_76;
              }

              v49 = v52 + 1;
              v48 = v43 - (v52 + 1);
            }

            while (v48 >= v46);
          }

          v38 = 0;
          v41 = v41[1];
          if (v41 == &v76)
          {
            goto LABEL_111;
          }
        }

LABEL_76:
        *criteriaCopy = *(v41 + 10);
        v25 = *(a4 + 23);
        if (v25 >= 0)
        {
          v26 = *(a4 + 23);
        }

        else
        {
          v26 = *(a4 + 1);
        }

        if (!v26)
        {
          goto LABEL_46;
        }

LABEL_37:
        if (v25 >= 0)
        {
          v27 = a4;
        }

        else
        {
          v27 = *a4;
        }

        v28 = qword_2A18B7850;
        v29 = strlen(qword_2A18B7850);
        if (v29)
        {
          v30 = v29;
          v31 = &v27[v26];
          if (v26 >= v29)
          {
            v53 = *qword_2A18B7850;
            v54 = v26;
            v55 = v27;
            do
            {
              v56 = v54 - v30;
              if (v56 == -1)
              {
                break;
              }

              v57 = memchr(v55, v53, v56 + 1);
              if (!v57)
              {
                break;
              }

              v58 = v57;
              if (!memcmp(v57, v28, v30))
              {
                if (v58 != v31 && v58 - v27 != -1)
                {
                  goto LABEL_110;
                }

                break;
              }

              v55 = v58 + 1;
              v54 = v31 - (v58 + 1);
            }

            while (v54 >= v30);
          }

          v32 = qword_2A18B7858;
          v33 = strlen(qword_2A18B7858);
          if (v33)
          {
            v34 = v33;
            if (v26 >= v33)
            {
              v59 = *qword_2A18B7858;
              v60 = v26;
              v61 = v27;
              do
              {
                v62 = v60 - v34;
                if (v62 == -1)
                {
                  break;
                }

                v63 = memchr(v61, v59, v62 + 1);
                if (!v63)
                {
                  break;
                }

                v64 = v63;
                if (!memcmp(v63, v32, v34))
                {
                  if (v64 != v31 && v64 - v27 != -1)
                  {
                    goto LABEL_110;
                  }

                  break;
                }

                v61 = v64 + 1;
                v60 = v31 - (v64 + 1);
              }

              while (v60 >= v34);
            }

            v35 = qword_2A18B7860;
            v36 = strlen(qword_2A18B7860);
            if (v36)
            {
              v37 = v36;
              if (v26 >= v36)
              {
                v65 = *qword_2A18B7860;
                v66 = v27;
                while (v26 - v37 != -1)
                {
                  v67 = memchr(v66, v65, v26 - v37 + 1);
                  if (!v67)
                  {
                    break;
                  }

                  v68 = v67;
                  if (!memcmp(v67, v35, v37))
                  {
                    if (v68 == v31 || v68 - v27 == -1)
                    {
                      goto LABEL_46;
                    }

                    goto LABEL_110;
                  }

                  v66 = v68 + 1;
                  v26 = v31 - (v68 + 1);
                  if (v26 < v37)
                  {
                    goto LABEL_46;
                  }
                }
              }

              goto LABEL_46;
            }
          }
        }

LABEL_110:
        v38 = 0;
      }
    }
  }

LABEL_111:
  if (v78)
  {
    v69 = v77;
    v70 = *(v76 + 1);
    v71 = *v77;
    *(v71 + 1) = v70;
    *v70 = v71;
    v78 = 0;
    if (v69 != &v76)
    {
      do
      {
        v73 = v69[1];
        if (*(v69 + 39) < 0)
        {
          operator delete(v69[2]);
        }

        operator delete(v69);
        v69 = v73;
      }

      while (v73 != &v76);
    }
  }

  return v38;
}

- (void)showUserNotification:(int)notification dumpReason:()basic_string<char
{
  v26 = *MEMORY[0x29EDCA608];
  *&v22.__r_.__value_.__r.__words[1] = 0u;
  *v23 = 0u;
  memset(__p, 0, sizeof(__p));
  *(&v22.__r_.__value_.__s + 23) = 7;
  strcpy(&v22, "LogDump");
  if ([(ABMTapToRadar *)self checkTraces_sync:?])
  {
    if (SHIBYTE(__p[0]) < 0)
    {
      v23[1] = 20;
      v6 = v23[0];
    }

    else
    {
      HIBYTE(__p[0]) = 20;
      v6 = v23;
    }

    strcpy(v6, "Telephony_Dump_Ready");
  }

  else
  {
    std::string::__assign_external(v23, "Telephony_Dump_Insufficient", 0x1BuLL);
  }

  if ((atomic_load_explicit(&qword_2A18B7838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7838))
  {
    qword_2A18B7840 = 0;
    qword_2A18B7848 = 0;
    __cxa_guard_release(&qword_2A18B7838);
  }

  if (qword_2A18B7830 == -1)
  {
    v7 = qword_2A18B7848;
    if (!os_log_type_enabled(qword_2A18B7848, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_once(&qword_2A18B7830, &__block_literal_global_57);
    v7 = qword_2A18B7848;
    if (!os_log_type_enabled(qword_2A18B7848, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }
  }

  if (SHIBYTE(__p[0]) >= 0)
  {
    v8 = v23;
  }

  else
  {
    v8 = v23[0];
  }

  *buf = 67109378;
  *&buf[4] = notification;
  *&buf[8] = 2080;
  *&buf[10] = v8;
  _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "Showing user notification for radarType: %d with header: %s", buf, 0x12u);
LABEL_14:
  v9 = *(&a4->var0.var1 + 23);
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (!*(&a4->var0.var1 + 23))
    {
      goto LABEL_16;
    }

LABEL_19:
    if (v9 >= 0)
    {
      var1 = *(&a4->var0.var1 + 23);
    }

    else
    {
      var1 = a4->var0.var1.var1;
    }

    v11 = var1 + 8;
    if (var1 + 8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      v14 = &buf[8];
      buf[9] = 0;
      *&buf[10] = 0;
      *&buf[12] = 0;
      *&buf[16] = 0;
      buf[23] = var1 + 8;
      strcpy(buf, "Reason: ");
      if (!var1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v11 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v11 | 7) + 1;
      }

      v13 = operator new(v12);
      *&buf[8] = var1 + 8;
      *&buf[16] = v12 | 0x8000000000000000;
      *buf = v13;
      *v13 = 0x203A6E6F73616552;
      v14 = v13 + 1;
    }

    var0 = a4->var0.var1.var0;
    if (v9 >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = a4->var0.var1.var0;
    }

    memmove(v14, v16, var1);
LABEL_33:
    v14[var1] = 0;
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    *&__p[1] = *buf;
    __p[3] = *&buf[16];
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

  if (a4->var0.var1.var1)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    v19 = v22;
    goto LABEL_37;
  }

LABEL_36:
  std::string::__init_copy_ctor_external(&v19, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
LABEL_37:
  if (SHIBYTE(__p[0]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v23[0], v23[1]);
  }

  else
  {
    *&v20.__r_.__value_.__l.__data_ = *v23;
    v20.__r_.__value_.__r.__words[2] = __p[0];
  }

  if (SHIBYTE(__p[3]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p[1], __p[2]);
  }

  else
  {
    v21 = *&__p[1];
  }

  support::ui::showNotification(1u, &v19, 0);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_46:
    if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

LABEL_52:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p[3]) & 0x80000000) == 0)
  {
LABEL_47:
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_54:
    operator delete(v23[0]);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_55;
  }

LABEL_53:
  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_54;
  }

LABEL_48:
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_49:
    v17 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_55:
  operator delete(v22.__r_.__value_.__l.__data_);
  v18 = *MEMORY[0x29EDCA608];
}

- (void)showNotification:(int)notification :()basic_string<char :()std:(std::allocator<char>> *)std :char_traits<char> ::
{
  v7 = v6;
  v8 = v4;
  fObj = self->fQueue.fObj.fObj;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3321888768;
  v11[2] = __38__ABMTapToRadar_showNotification___::__block_invoke;
  v11[3] = &unk_2A1E27FC0;
  v11[4] = self;
  notificationCopy = notification;
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *v5, *(v5 + 8));
    if ((*(&std->var0.var1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *v5;
    if ((*(&std->var0.var1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v13 = *std;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&v13, std->var0.var1.var0, std->var0.var1.var1);
LABEL_6:
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *v8, *(v8 + 8));
  }

  else
  {
    v14 = *v8;
  }

  if (*(v7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
  }

  else
  {
    __p = *v7;
  }

  dispatch_async(fObj, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((*(&v13.var0.var1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((*(&v13.var0.var1 + 23) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v13.var0.var1.var0);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void __38__ABMTapToRadar_showNotification___::__block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!v2[2] || ![v2 checkTraces_sync:*(a1 + 136)] || *(a1 + 136) == 5 && !objc_msgSend(*(a1 + 32), "checkAudioTraces_sync"))
  {
    goto LABEL_103;
  }

  memset(v70, 170, sizeof(v70));
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x29EDBFC08];
  v5 = strlen(*MEMORY[0x29EDBFC08]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v69 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_13;
  }

  HIBYTE(v69) = v5;
  v8 = __dst;
  if (v5)
  {
LABEL_13:
    memmove(v8, v4, v7);
  }

  *(v7 + v8) = 0;
  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = *(a1 + 63);
  }

  else
  {
    v11 = *(a1 + 48);
  }

  v12 = v11 + 2;
  if (v11 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 < 0x17)
  {
    v66 = 0;
    v67 = 0;
    __p = 0;
    p_p = &__p;
    HIBYTE(v67) = v11 + 2;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v12 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v12 | 7) + 1;
    }

    p_p = operator new(v13);
    v66 = v11 + 2;
    v67 = v13 | 0x8000000000000000;
    __p = p_p;
  }

  if (v10 >= 0)
  {
    v15 = (a1 + 40);
  }

  else
  {
    v15 = *(a1 + 40);
  }

  memmove(p_p, v15, v11);
LABEL_28:
  strcpy(p_p + v11, ".*");
  if (v3)
  {
    [v3 findLogFiles_sync:__dst :&__p];
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    memset(v70, 0, sizeof(v70));
    if ((SHIBYTE(v67) & 0x80000000) == 0)
    {
LABEL_30:
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }
  }

  operator delete(__p);
  if ((SHIBYTE(v69) & 0x80000000) == 0)
  {
LABEL_31:
    v16 = v70[0];
    if (v70[1] == v70[0])
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(__dst[0]);
  v16 = v70[0];
  if (v70[1] == v70[0])
  {
LABEL_32:
    if (!v16)
    {
      goto LABEL_103;
    }

    goto LABEL_96;
  }

LABEL_37:
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v63, "taptoradar.helper", v6);
  xdict = 0xAAAAAAAAAAAAAAAALL;
  v17 = xpc_dictionary_create(0, 0, 0);
  v18 = v17;
  v19 = MEMORY[0x29EDCAA00];
  if (v17)
  {
    xdict = v17;
  }

  else
  {
    v18 = xpc_null_create();
    xdict = v18;
    if (!v18)
    {
      v20 = xpc_null_create();
      v18 = 0;
      goto LABEL_44;
    }
  }

  if (MEMORY[0x29C26CE60](v18) == v19)
  {
    xpc_retain(v18);
    goto LABEL_45;
  }

  v20 = xpc_null_create();
LABEL_44:
  xdict = v20;
LABEL_45:
  xpc_release(v18);
  v21 = xpc_int64_create(*(a1 + 136));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD2E8], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v23 = *v23;
  }

  v24 = xpc_string_create(v23);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD2F8], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v26 = *v26;
  }

  v27 = xpc_string_create(v26);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD338], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v29 = *v29;
  }

  v30 = xpc_string_create(v29);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD3A8], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = xpc_int64_create(0);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD320], v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  v34 = xpc_array_create(0, 0);
  if (v34 || (v34 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v34) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v34);
      v35 = v34;
    }

    else
    {
      v35 = xpc_null_create();
    }
  }

  else
  {
    v35 = xpc_null_create();
    v34 = 0;
  }

  xpc_release(v34);
  v36 = v70[0];
  v37 = v70[1];
  v58[0] = MEMORY[0x29EDCA5F8];
  v58[1] = 3321888768;
  v59 = __38__ABMTapToRadar_showNotification___::__block_invoke_2;
  v60 = &__block_descriptor_40_e8_32c16_ZTSN3xpc5arrayE_e10_v16__0r_v8l;
  v61 = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    v61 = xpc_null_create();
  }

  while (v36 != v37)
  {
    v59(v58, v36);
    v36 += 24;
  }

  if (v35)
  {
    xpc_retain(v35);
    v38 = v35;
  }

  else
  {
    v38 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD3D0], v38);
  v39 = xpc_null_create();
  xpc_release(v38);
  xpc_release(v39);
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v40 = xpc_dictionary_create(0, 0, 0);
  v41 = v40;
  if (v40)
  {
    v57 = v40;
  }

  else
  {
    v41 = xpc_null_create();
    v57 = v41;
    if (!v41)
    {
      v42 = xpc_null_create();
      v41 = 0;
      goto LABEL_82;
    }
  }

  if (MEMORY[0x29C26CE60](v41) == v19)
  {
    xpc_retain(v41);
    goto LABEL_83;
  }

  v42 = xpc_null_create();
LABEL_82:
  v57 = v42;
LABEL_83:
  xpc_release(v41);
  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v55 = v43;
  v56 = v43;
  object = xdict;
  if (xdict)
  {
    xpc_retain(xdict);
  }

  else
  {
    object = xpc_null_create();
  }

  v44 = *MEMORY[0x29EDBD3B8];
  abm::HelperClient::perform();
  xpc_release(object);
  object = 0;
  if (LODWORD(v55[0]))
  {
    if ((atomic_load_explicit(&qword_2A18B7838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7838))
    {
      qword_2A18B7840 = 0;
      qword_2A18B7848 = 0;
      __cxa_guard_release(&qword_2A18B7838);
    }

    if (qword_2A18B7830 == -1)
    {
      v45 = qword_2A18B7848;
      if (!os_log_type_enabled(qword_2A18B7848, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }
    }

    else
    {
      dispatch_once(&qword_2A18B7830, &__block_literal_global_57);
      v45 = qword_2A18B7848;
      if (!os_log_type_enabled(qword_2A18B7848, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_90;
      }
    }

    xpc::dict::to_debug_string(&xdict, v52);
    if (v53 >= 0)
    {
      v51 = v52;
    }

    else
    {
      v51 = v52[0];
    }

    *buf = 136315138;
    v72 = v51;
    _os_log_error_impl(&dword_296FF7000, v45, OS_LOG_TYPE_ERROR, "Failed to file radar: %s", buf, 0xCu);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }
  }

LABEL_90:
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[1]);
  }

  xpc_release(v57);
  xpc_release(v61);
  v61 = 0;
  xpc_release(v35);
  xpc_release(xdict);
  v46 = v64;
  if (v64 && !atomic_fetch_add((v64 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v46->__on_zero_shared)(v46);
    std::__shared_weak_count::__release_weak(v46);
  }

  v16 = v70[0];
  if (v70[0])
  {
LABEL_96:
    v47 = v70[1];
    v48 = v16;
    if (v70[1] != v16)
    {
      do
      {
        v49 = *(v47 - 1);
        v47 -= 3;
        if (v49 < 0)
        {
          operator delete(*v47);
        }
      }

      while (v47 != v16);
      v48 = v70[0];
    }

    v70[1] = v16;
    operator delete(v48);
  }

LABEL_103:
  v50 = *MEMORY[0x29EDCA608];
}

void __38__ABMTapToRadar_showNotification___::__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = xpc_string_create(v3);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_array_append_value(*(a1 + 32), v4);
  xpc_release(v4);
}

@end