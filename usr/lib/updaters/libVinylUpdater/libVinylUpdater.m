VinylRestore *VinylRestore::create(VinylRestore *this, const __CFDictionary *a2)
{
  ACFULogging::getLogInstance(this);
  v3 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v3);
  std::string::basic_string[abi:ne200100]<0>(&v11, "VinylRestore");
  v4 = std::string::append(&v11, "::", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v12, "create", 6uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14 = v6->__r_.__value_.__r.__words[2];
  v13 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v8 = operator new(0x168uLL);
  VinylRestore::VinylRestore(v8);
  v9 = (*(*v8 + 40))(v8, this, @"eUICC,Ticket");
  if (v9)
  {
    ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage();
    v9 = (*(*v8 + 8))(v8);
    v8 = 0;
  }

  ACFULogging::getLogInstance(v9);
  ACFULogging::handleMessage();
  return v8;
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

uint64_t VinylRestore::queryCmd@<X0>(std::__shared_weak_count **this@<X0>, std::__shared_weak_count **a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  ACFULogging::getLogInstance(this);
  ACFURestore::isPreflight(this);
  ACFURestore::isNeRDOS(this);
  ACFULogging::handleMessage();
  if (ACFURestore::isPreflight(this) && (ACFURestore::isNeRDOS(this) & 1) == 0)
  {
    PersoParameters = ((*this)->__shared_weak_owners_)(this);
    *a2 = PersoParameters;
    *(a2 + 8) = PersoParameters != 0;
  }

  else
  {
    PersoParameters = this[21];
    if (PersoParameters)
    {
      v5 = PersoParameters->~__shared_weak_count;
      if (PersoParameters)
      {
        v6 = this[22];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        PersoParameters = VinylTransport::getPersoParameters(PersoParameters, &v17);
        *a2 = v17;
        *(a2 + 8) = BYTE8(v17);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }
      }
    }
  }

  ACFULogging::getLogInstance(PersoParameters);
  std::string::basic_string[abi:ne200100]<0>(&v15, "VinylRestore");
  v7 = std::string::append(&v15, "::", 2uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v16, "queryCmd", 8uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v18 = v9->__r_.__value_.__r.__words[2];
  v17 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = *a2;
  v12 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v12);
  v14 = *(a2 + 8);
  return ACFULogging::handleMessage();
}

void sub_299F8D624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylRestore::getPreflightPersoParameters@<X0>(VinylRestore *this@<X0>, uint64_t a2@<X8>)
{
  result = (*(*this + 16))(this);
  *a2 = result;
  *(a2 + 8) = result != 0;
  return result;
}

uint64_t VinylRestore::performCmd(const __CFDictionary **this)
{
  ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v13, "VinylRestore");
  v2 = std::string::append(&v13, "::", 2uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v14, "performCmd", 0xAuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16 = v4->__r_.__value_.__r.__words[2];
  v15 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = this[15];
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  updated = this[21];
  if (!updated)
  {
    goto LABEL_16;
  }

  v8 = **updated;
  if (!updated)
  {
    goto LABEL_16;
  }

  v9 = this[22];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  updated = VinylTransport::updateFw(updated, this[15]);
  v10 = updated;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v10)
  {
    v11 = 1;
  }

  else
  {
LABEL_16:
    updated = VinylRestore::performCmd(updated);
    v11 = 0;
  }

  ACFULogging::getLogInstance(updated);
  ACFULogging::handleMessage();
  return v11;
}

void sub_299F8D880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void VinylRestore::~VinylRestore(VinylRestore *this)
{
  *this = &unk_2A2030F68;
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();

  ACFURestore::~ACFURestore(this);
}

{
  VinylRestore::~VinylRestore(this);

  operator delete(v1);
}

void VinylRestore::VinylRestore(VinylRestore *this)
{
  ACFURestore::ACFURestore(this);
  *v1 = &unk_2A2030F68;
  ACFULogging::getLogInstance(v1);
  ACFULogging::handleMessage();
}

__CFDictionary *VinylRestore::gatherPreflightParameters(VinylRestore *this)
{
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v1 = MGCopyAnswer();
  v2 = v1;
  if (!v1)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_44;
  }

  ACFULogging::getLogInstance(v1);
  std::string::basic_string[abi:ne200100]<0>(&v38, "VinylRestore");
  v3 = std::string::append(&v38, "::", 2uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v39, "gatherPreflightParameters", 0x19uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v41 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  Value = CFDictionaryGetValue(v2, @"kVinylFwUpdateKeyId");
  v8 = CFGetTypeID(Value);
  TypeID = CFDataGetTypeID();
  if (v8 != TypeID || (TypeID = CFDataGetLength(Value), TypeID <= 0x13))
  {
    ACFULogging::getLogInstance(TypeID);
LABEL_44:
    ACFULogging::handleMessage();
    return 0;
  }

  v10 = CFDictionaryGetValue(v2, @"kVinylFwUpdateKeyId");
  BytePtr = CFDataGetBytePtr(v10);
  v12 = *MEMORY[0x29EDB8ED8];
  v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x29EDB8ED8], BytePtr, 20, *MEMORY[0x29EDB8EE8]);
  v14 = v13;
  v42 = v13;
  if (!v13)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_44;
  }

  ACFULogging::getLogInstance(v13);
  std::string::basic_string[abi:ne200100]<0>(&v38, "VinylRestore");
  v15 = std::string::append(&v38, "::", 2uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v39, "gatherPreflightParameters", 0x19uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v41 = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v43 = Mutable;
  v20 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v21 = v20;
  v44 = v20;
  if (!Mutable || !v20)
  {
    ACFULogging::getLogInstance(v20);
LABEL_46:
    ACFULogging::handleMessage();
    v22 = 0;
    goto LABEL_33;
  }

  v22 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!v22)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_46;
  }

  v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateCsn");
  if (v23 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateEuiccChipId")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateMainFwNonce")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwNonce")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateLoaderVersion")) != 0 && (v23 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwMac")) != 0)
  {
    v24 = CFDictionaryGetValue(v2, @"kVinylFwUpdateCsn");
    CFDictionarySetValue(v22, @"eUICC,EID", v24);
    v25 = CFDictionaryGetValue(v2, @"kVinylFwUpdateEuiccChipId");
    CFDictionarySetValue(v22, @"eUICC,ChipID", v25);
    v26 = CFDictionaryGetValue(v2, @"kVinylFwUpdateMainFwNonce");
    CFDictionarySetValue(Mutable, @"Nonce", v26);
    CFDictionarySetValue(v22, @"eUICC,Main", Mutable);
    v27 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwNonce");
    CFDictionarySetValue(v21, @"Nonce", v27);
    CFDictionarySetValue(v22, @"eUICC,Gold", v21);
    CFDictionarySetValue(v22, @"eUICC,RootKeyIdentifier", v14);
    v28 = CFDictionaryGetValue(v2, @"kVinylFwUpdateLoaderVersion");
    CFDictionarySetValue(v22, @"eUICC,FirmwareLoaderVersion", v28);
    v29 = CFDictionaryGetValue(v2, @"kVinylFwUpdateMainFwMac");
    CFDictionarySetValue(v22, @"eUICC,MainFwMac", v29);
    v30 = CFDictionaryGetValue(v2, @"kVinylFwUpdateGoldFwMac");
    CFDictionarySetValue(v22, @"eUICC,GoldFwMac", v30);
    v31 = MGCopyAnswer();
    if (v31)
    {
      CFDictionarySetValue(v22, @"eUICC,ApProductionMode", v31);
      CFDictionarySetValue(v22, @"@eUICC,Ticket", *MEMORY[0x29EDB8F00]);
      ACFULogging::getLogInstance(v32);
      std::string::basic_string[abi:ne200100]<0>(&v38, "VinylRestore");
      v33 = std::string::append(&v38, "::", 2uLL);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v39, "gatherPreflightParameters", 0x19uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v41 = v35->__r_.__value_.__r.__words[2];
      *__p = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      goto LABEL_33;
    }

    ACFULogging::getLogInstance(0);
  }

  else
  {
    ACFULogging::getLogInstance(v23);
  }

  ACFULogging::handleMessage();
LABEL_33:
  CFRelease(v14);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

void sub_299F8E07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v30 - 88));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v30 - 80));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v30 - 72));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylRestore::init(VinylRestore *this, const __CFDictionary *a2, const void *a3)
{
  v66 = *MEMORY[0x29EDCA608];
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  if (ACFURestore::isNeRDOS(this))
  {
    v59.__r_.__value_.__r.__words[0] = 0;
    Value = CFDictionaryGetValue(a2, @"Options");
    v7 = *MEMORY[0x29EDB8ED8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, Value);
    v62 = MutableCopy;
    v9 = CFDictionaryCreateMutableCopy(v7, 0, a2);
    v10 = *MEMORY[0x29EDB8F00];
    v59.__r_.__value_.__r.__words[0] = v9;
    CFDictionarySetValue(MutableCopy, @"BootedUpdate", v10);
    CFDictionaryReplaceValue(v9, @"Options", MutableCopy);
    ACFULogging::getLogInstance(v11);
    std::string::basic_string[abi:ne200100]<0>(&v60, "VinylRestore");
    v12 = std::string::append(&v60, "::", 2uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v61, "init", 4uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v64 = v14->__r_.__value_.__r.__words[2];
    v63 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v16 = ACFURestore::init(this, v9, a3);
    v17 = v16;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v16 = ACFURestore::init(this, a2, a3);
    v17 = v16;
  }

  if (v17)
  {
    ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage();
    goto LABEL_72;
  }

  v18 = CFDictionaryContainsKey(*(this + 16), @"RestoreSystemPartition");
  if (v18)
  {
    v19 = CFDictionaryGetValue(*(this + 16), @"RestoreSystemPartition");
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v19))
    {
LABEL_16:
      v17 = 4002;
      goto LABEL_72;
    }
  }

  else
  {
    ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage();
    v19 = &stru_2A2032B88;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"DebugLogPath"))
  {
    v21 = CFDictionaryGetValue(*(this + 16), @"DebugLogPath");
    v22 = CFGetTypeID(v21);
    v23 = CFStringGetTypeID();
    if (v22 != v23)
    {
      ACFULogging::getLogInstance(v23);
      ACFULogging::handleMessage();
      goto LABEL_16;
    }
  }

  isPreflight = ACFURestore::isPreflight(this);
  if (isPreflight)
  {
    isPreflight = ACFURestore::isNeRDOS(this);
    if (!isPreflight)
    {
      v43 = *(this + 24);
      v49 = *(this + 23);
      v50 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      VinylTransport::createTransport(&v49, *(this + 17), &v63);
      std::shared_ptr<ACFUTransport>::operator=[abi:ne200100]<VinylTransport,std::default_delete<VinylTransport>,0>(this + 21, &v63);
      v44 = v63;
      *&v63 = 0;
      if (v44)
      {
        (*(*v44 + 64))(v44);
      }

      v45 = v50;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (!*(this + 21))
      {
        ACFULogging::getLogInstance(v45);
        ACFULogging::handleMessage();
        v17 = 4008;
        goto LABEL_72;
      }

      ACFULogging::getLogInstance(v45);
      ACFULogging::handleMessage();
      v40 = 0;
      goto LABEL_65;
    }
  }

  LODWORD(v63) = 1;
  *&v65.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v63 + 1) = 0;
  v64 = 0;
  v65.__r_.__value_.__r.__words[0] = &v65.__r_.__value_.__l.__size_;
  LOWORD(v62) = 1;
  ACFULogging::getLogInstance(isPreflight);
  std::string::basic_string[abi:ne200100]<0>(&v59, "VinylRestore");
  v25 = std::string::append(&v59, "::", 2uLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v60, "init", 4uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(v19, @"/usr/standalone/firmware/Vinyl/", v29);
  if (!URLByAppendingStrings)
  {
    ACFULogging::getLogInstance(0);
    v39 = 0;
    ACFULogging::handleMessage();
    v17 = 4000;
    goto LABEL_79;
  }

  *(&v63 + 1) = @"eUICC,Ticket";
  v64 = URLByAppendingStrings;
  getVinylTatsuTagToFileNameMap(&v61);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v65, v65.__r_.__value_.__l.__size_);
  size = v61.__r_.__value_.__l.__size_;
  v65 = v61;
  if (v61.__r_.__value_.__r.__words[2])
  {
    *(v61.__r_.__value_.__l.__size_ + 16) = &v65.__r_.__value_.__l.__size_;
    v61.__r_.__value_.__r.__words[0] = &v61.__r_.__value_.__l.__size_;
    *&v61.__r_.__value_.__r.__words[1] = 0uLL;
    size = 0;
  }

  else
  {
    v65.__r_.__value_.__r.__words[0] = &v65.__r_.__value_.__l.__size_;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v61, size);
  RTKitFirmware::create();
  std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(this + 19, &v61);
  v32 = v61.__r_.__value_.__r.__words[0];
  v61.__r_.__value_.__r.__words[0] = 0;
  if (v32)
  {
    v32 = (*(*v32 + 56))(v32);
  }

  if (!*(this + 19))
  {
    ACFULogging::getLogInstance(v32);
    v39 = 0;
    ACFULogging::handleMessage();
    v17 = 1000;
    goto LABEL_79;
  }

  v33 = *(this + 24);
  v57 = *(this + 23);
  v58 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  VinylTransport::createTransport(&v57, *(this + 17), &v61);
  std::shared_ptr<ACFUTransport>::operator=[abi:ne200100]<VinylTransport,std::default_delete<VinylTransport>,0>(this + 21, &v61);
  v34 = v61.__r_.__value_.__r.__words[0];
  v61.__r_.__value_.__r.__words[0] = 0;
  if (v34)
  {
    (*(*v34 + 64))(v34);
  }

  v35 = v58;
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (!*(this + 21))
  {
    ACFULogging::getLogInstance(v35);
    v39 = 0;
    ACFULogging::handleMessage();
LABEL_78:
    v17 = 4008;
LABEL_79:
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v65, v65.__r_.__value_.__l.__size_);
    if (!v39)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v36 = *(this + 22);
  v55 = *(this + 21);
  v56 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = *(this + 20);
  v53 = *(this + 19);
  v54 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = *(this + 24);
  v51 = *(this + 23);
  v52 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFURTKitROM::create();
  v39 = v61.__r_.__value_.__l.__size_;
  v40 = v61.__r_.__value_.__r.__words[0];
  *&v61.__r_.__value_.__l.__data_ = 0uLL;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v41 = v56;
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (!v40)
  {
    ACFULogging::getLogInstance(v41);
    ACFULogging::handleMessage();
    goto LABEL_78;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v65, v65.__r_.__value_.__l.__size_);
  if (v39)
  {
    v42 = 0;
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    LODWORD(v63) = 0;
    *(&v63 + 1) = v40;
    v64 = v39;
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_66;
  }

LABEL_65:
  v39 = 0;
  LODWORD(v63) = 0;
  v42 = 1;
  *(&v63 + 1) = v40;
  v64 = 0;
LABEL_66:
  LOWORD(v65.__r_.__value_.__l.__data_) = 3;
  v65.__r_.__value_.__s.__data_[2] = 1;
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(this + 3, &v63, &v65.__r_.__value_.__r.__words[1]);
  v46 = v64;
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  if ((v42 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  ACFULogging::getLogInstance(v46);
  ACFULogging::handleMessage();
  v17 = 0;
  if (v39)
  {
LABEL_71:
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

LABEL_72:
  v47 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_299F8E9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v42 = *(v40 - 160);
  *(v40 - 160) = 0;
  if (v42)
  {
    VinylRestore::init(v42);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2030FC0;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::shared_ptr<ACFUTransport>::operator=[abi:ne200100]<VinylTransport,std::default_delete<VinylTransport>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A2031020;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t VinylRestore::updateAllowed(VinylRestore *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = **v2;
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = *(this + 22);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  Value = CFDictionaryGetValue(*(this + 17), @"BasebandUpdater");
  ctu::cf::dict_adapter::dict_adapter(v27, Value);
  v7 = ctu::cf::dict_adapter::dict_adapter(v26, *(this + 17));
  ACFULogging::getLogInstance(v7);
  ACFURestore::isPreflight(this);
  ACFURestore::isNeRDOS(this);
  ACFULogging::handleMessage();
  Bool = ctu::cf::map_adapter::getBool(v27, @"VinylSkipAll");
  v9 = ctu::cf::map_adapter::getBool(v26, @"UpdateBaseband");
  isPreflight = ACFURestore::isPreflight(this);
  if (isPreflight && (isPreflight = ACFURestore::isNeRDOS(this), (isPreflight & 1) == 0))
  {
    v14 = MGCopyAnswer();
    v15 = v14;
    if (v14)
    {
      ACFULogging::getLogInstance(v14);
      std::string::basic_string[abi:ne200100]<0>(&v22, "VinylRestore");
      v16 = std::string::append(&v22, "::", 2uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v23, "updateAllowed", 0xDuLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v25 = v18->__r_.__value_.__r.__words[2];
      *__p = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      v14 = CFDictionaryGetValue(v15, @"kVinylFwUpdateCsn");
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    ACFULogging::getLogInstance(v14);
    isPreflight = ACFULogging::handleMessage();
    if (!v20)
    {
      goto LABEL_10;
    }

    ACFULogging::getLogInstance(isPreflight);
    CFGetTypeID(v20);
    CFDataGetTypeID();
    CFDataGetLength(v20);
    ACFULogging::handleMessage();
    v21 = CFGetTypeID(v20);
    isPreflight = CFDataGetTypeID();
    if (v21 != isPreflight)
    {
      goto LABEL_10;
    }

    isPreflight = CFDataGetLength(v20);
    v11 = isPreflight > 0;
  }

  else
  {
    if (Bool & 1 | ((v9 & 1) == 0))
    {
LABEL_10:
      v11 = 0;
      goto LABEL_12;
    }

    isNeRDOS = ACFURestore::isNeRDOS(this);
    isPreflight = VinylTransport::checkVinylPresence(v4, isNeRDOS);
    v11 = isPreflight;
  }

LABEL_12:
  ACFULogging::getLogInstance(isPreflight);
  ACFULogging::handleMessage();
  MEMORY[0x29C2B8210](v26);
  MEMORY[0x29C2B8210](v27);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (Bool ^ 1) & v9 & v11;
}

void sub_299F8EFFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  MEMORY[0x29C2B8210](v33 - 112);
  MEMORY[0x29C2B8210](v33 - 96);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29F2931C8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__shared_ptr_pointer<RTKitFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
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

void std::__shared_ptr_pointer<VinylTransport  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<VinylTransport  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<VinylTransport  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__assign_unique<std::pair<ACFURestore::UpdateSteps const,RestoreStep> const*>(uint64_t **result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 8;
            break;
          }

          v11 = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 8;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(v5, a2, a2);
    a2 += 8;
  }

  return result;
}

void sub_299F8F4B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__node_assign_unique(uint64_t **a1, int *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1 + 1;
  v5 = a1[1];
  v7 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v7;
    RestoreStep::operator=();
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v8, v6, v3);
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__emplace_unique_key_args<ACFURestore::UpdateSteps,std::pair<ACFURestore::UpdateSteps const,RestoreStep> const&>(uint64_t **a1, int *a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 8);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x40uLL);
    v11 = v10;
    v10[8] = *a3;
    v12 = *(a3 + 16);
    *(v10 + 5) = *(a3 + 8);
    *(v10 + 6) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(v10 + 28) = *(a3 + 24);
    *(v10 + 58) = *(a3 + 26);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v8, v6, v10);
  }

  return v11;
}

void *eUICCFwReaderOpen(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = vinyl_unzOpen(BytePtr, Length);
  if (!v4)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return v4;
}

uint64_t eUICCFwReaderFindAndCopyFileData(ACFULogging *a1, const __CFString *a2, CFTypeRef *a3)
{
  v15 = 0;
  if (a2)
  {
    ACFULogging::getLogInstance(a1);
    *(&v11.__r_.__value_.__s + 23) = 13;
    strcpy(&v11, "eUICCFwReader");
    v6 = std::string::append(&v11, "::", 2uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v12, "eUICCFwReaderFindAndCopyFileData", 0x20uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v14 = v8->__r_.__value_.__r.__words[2];
    v13 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    eUICCFwReaderFindAndCopyFileData_cold_1(&v13, &v11.__r_.__value_.__l.__data_, &v12, &v11.__r_.__value_.__r.__words[2] + 7);
  }

  eUICCFwReaderFindAndCopyFileData_cold_2(a1, a2, &v15, a3, &v16);
  return v16;
}

void sub_299F8FB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return vinyl_unzGetCurrentFileInfo(a1, a2, a3, 0x400uLL, 0, 0, 0, 0);
}

uint64_t BBUpdaterCommon::BBUASCIIDigitToInt(__darwin_ct_rune_t this, unsigned int a2)
{
  result = (this - 48);
  if (result > 9)
  {
    v5 = __toupper(this);
    v6 = v5 - 55;
    if (v6 >= a2 || (v5 - 65) >= 0x1A)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

unint64_t BBUpdaterCommon::BBUStringToUInt32(const char *a1, int __base)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return strtoul(a1, 0, __base);
}

BOOL BBUpdaterCommon::BBUFileExists(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

uint64_t BBUpdaterCommon::BBUIsDirectoryEmpty(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = opendir(a1);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  while (1)
  {
    v3 = readdir(v2);
    if (!v3)
    {
      break;
    }

    if (v3->d_name[0] != 46 || v3->d_name[1] && (v3->d_name[1] != 46 || v3->d_name[2]))
    {
      v4 = 0;
      goto LABEL_13;
    }
  }

  v4 = 1;
LABEL_13:
  closedir(v2);
  return v4;
}

DIR *BBUpdaterCommon::BBUReadDirectory(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v9 = 25;
          }

          else
          {
            v9 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v9);
          __dst[1] = d_namlen;
          v13 = v9 | 0x8000000000000000;
          __dst[0] = v8;
        }

        else
        {
          HIBYTE(v13) = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            goto LABEL_14;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
LABEL_14:
        *(v8 + d_namlen) = 0;
        v10 = std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(a2, 0, 0, __dst);
        v11 = *a2;
        *v10 = *a2;
        *(v10 + 1) = a2;
        *(v11 + 1) = v10;
        *a2 = v10;
        ++a2[2];
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__dst[0]);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_299F8FDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUpdaterCommon::BBUGetFileName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  ctu::tokenize();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v6 - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v6 - 24), *(v6 - 16));
  }

  else
  {
    v3 = *(v6 - 24);
    a2->__r_.__value_.__r.__words[2] = *(v6 - 8);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }

  v7 = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_299F8FEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  *(v16 - 24) = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v16 - 24));
  _Unwind_Resume(a1);
}

void BBUpdaterCommon::BBUStripCharacters(uint64_t *a1@<X0>, const std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  if ((v6 & 0x80000000) == 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = operator new[](v8 + 1);
  v10 = v9;
  v11 = v9;
  if (v8)
  {
    v12 = 0;
    v13 = v6 >> 63;
    v14 = 1;
    v11 = v9;
    do
    {
      if (v13)
      {
        v15 = *a1;
      }

      else
      {
        v15 = a1;
      }

      if (std::string::find(a2, *(v15 + v12), 0) == -1)
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *v11++ = *(v16 + v12);
      }

      v12 = v14;
      v17 = *(a1 + 23);
      v13 = v17 >> 63;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = a1[1];
      }
    }

    while (v17 > v14++);
  }

  *v11 = 0;
  std::string::basic_string[abi:ne200100]<0>(a3, v10);

  operator delete[](v10);
}

void *BBUpdaterCommon::BBUCFStringToCPPString@<X0>(const __CFString *this@<X0>, void *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  CFStringGetCString(this, buffer, 1024, 0x8000100u);
  result = std::string::basic_string[abi:ne200100]<0>(a2, buffer);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void BBUpdaterCommon::BBUStringToArgv(char *a1, uint64_t a2)
{
  std::operator+<char>();
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }

  *a1 = v19;
  v4 = v20;
  *(a1 + 2) = v20;
  v5 = HIBYTE(v4);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x29EDCA600];
    do
    {
      while (1)
      {
        v9 = a1[23] >= 0 ? a1 : *a1;
        v10 = v9[v7];
        v11 = (v10 & 0x80000000) != 0 ? __maskrune(v10, 0x4000uLL) : *(v8 + 4 * v10 + 60) & 0x4000;
        if (v7 >= v6 || !v11)
        {
          break;
        }

        if (a1[23] >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        v12[v7++] = 0;
      }

      if (a1[23] >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      *&v19 = &v13[v7];
      std::vector<char *>::push_back[abi:ne200100](a2, &v19);
      v14 = v7 + 1;
      do
      {
        v15 = v14;
        if (a1[23] >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        v17 = v16[v15];
        if ((v17 & 0x80000000) != 0)
        {
          v18 = __maskrune(v17, 0x4000uLL);
        }

        else
        {
          v18 = *(v8 + 4 * v17 + 60) & 0x4000;
        }

        v14 = v15 + 1;
      }

      while (v15 < v6 && !v18);
      v7 = v15;
    }

    while (v15 < v6);
  }

  *&v19 = 0;
  std::vector<char *>::push_back[abi:ne200100](a2, &v19);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<char *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t BBUpdaterCommon::BBUThreadSpawn(BBUpdaterCommon *this, void *(__cdecl *a2)(void *), void *(*a3)(void *), void *a4)
{
  v4 = a4;
  v12 = *MEMORY[0x29EDCA608];
  v10 = 0;
  pthread_attr_init(&v11);
  if (v4)
  {
    pthread_attr_setdetachstate(&v11, 2);
  }

  v7 = pthread_create(&v10, &v11, a2, a3);
  pthread_attr_destroy(&v11);
  if (v7)
  {
    result = 0;
  }

  else
  {
    result = v10;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void BBUpdaterCommon::BBUMutex::~BBUMutex(pthread_mutex_t *this)
{
  pthread_mutex_destroy(this);
}

{
  pthread_mutex_destroy(this);
}

uint64_t BBUpdaterCommon::collectCoreDump(BBUpdaterCommon *this, const __CFString *a2, const __CFString *a3, int a4)
{
  v5 = a3;
  obj = 0;
  cf = 0;
  valuePtr = 2;
  v8 = *MEMORY[0x29EDB8ED8];
  if (byte_2A197F7BF >= 0)
  {
    v9 = &BBUpdaterCommon::bbCoredumpPath;
  }

  else
  {
    v9 = BBUpdaterCommon::bbCoredumpPath;
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v9, 0x8000100u);
  v11 = v10;
  if (!a2)
  {
    a2 = v10;
  }

  if (a4)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Only attach the the existing coredump dir to output dictionary without executing coredump again.\n", v12, v13, v14, v43);
    BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v15);
    v16 = 0;
LABEL_23:
    v33 = 1;
    goto LABEL_24;
  }

  v16 = MEMORY[0x29C2B7880](&obj);
  if (!v16)
  {
    BBUpdaterCommon::collectCoreDump();
LABEL_40:
    v33 = 0;
    goto LABEL_24;
  }

  BBUpdaterRegisterLogSink();
  v17 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"Client", @"Vinyl");
  CFDictionarySetValue(Mutable, @"BootMode", v17);
  CFDictionarySetValue(Mutable, @"SystemRoot", @"/mnt5");
  CFDictionarySetValue(Mutable, @"DataRoot", @"/mnt4");
  if (TelephonyRadiosGetRadioVendor() - 3 > 1)
  {
    v20 = @"RemoteFSRoot";
    v22 = @"/mnt3/bbfs/";
    v21 = Mutable;
  }

  else
  {
    v19 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    CFDictionarySetValue(v19, @"RemoteFSRoot", @"/mnt3");
    v20 = @"Options";
    v21 = Mutable;
    v22 = v19;
  }

  CFDictionarySetValue(v21, v20, v22);
  CFDictionarySetValue(Mutable, @"coreDumpPath", a2);
  if (!BBUpdaterSetOptions())
  {
    BBUpdaterCommon::collectCoreDump();
    goto LABEL_40;
  }

  v23 = BBUpdaterExecCommand();
  v24 = gBBULogMaskGet();
  if (!v23)
  {
    BBUpdaterCommon::collectCoreDump(v24, v25, v26, v27, v28, v29, v30, v31);
    goto LABEL_40;
  }

  _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Core dump successful \n", v29, v30, v31, v43);
  BBUpdaterCommon::attachCoredumpPathToOutDict(this, a2, v32);
  if (!v5)
  {
    goto LABEL_23;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CFRelease(v16);
  if (obj)
  {
    CFRelease(obj);
    obj = 0;
  }

  v16 = MEMORY[0x29C2B7880](&obj);
  if (!v16)
  {
    BBUpdaterCommon::collectCoreDump();
    goto LABEL_23;
  }

  BBUpdaterRegisterLogSink();
  if (!BBUpdaterSetOptions())
  {
    BBUpdaterCommon::collectCoreDump();
    goto LABEL_40;
  }

  v33 = BBUpdaterExecCommand();
  v34 = gBBULogMaskGet();
  if (v33)
  {
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "BB reset successful\n", v39, v40, v41, v44);
    goto LABEL_23;
  }

  BBUpdaterCommon::collectCoreDump(v34, v35, v36, v37, v38, v39, v40, v41);
LABEL_24:
  if (obj)
  {
    CFShow(obj);
    if (obj)
    {
      CFRelease(obj);
    }

    obj = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v33;
}

CFDictionaryRef BBUpdaterCommon::attachCoredumpPathToOutDict(CFDictionaryRef this, const __CFString *a2, const __CFString *a3)
{
  if (this)
  {
    if (a2)
    {
      v3 = this;
      keys = @"LogDirectory";
      v4 = *MEMORY[0x29EDB8ED8];
      v5 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], a2, 0);
      this = CFDictionaryCreate(v4, &keys, &v5, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      *v3 = this;
    }
  }

  return this;
}

uint64_t BBUpdaterCommon::inRestoreOS(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    BBUpdaterCommon::inRestoreOS();
  }

  return (BBUpdaterCommon::inRestoreOS(void)::restoreOS | BBUpdaterCommon::inRestoreOS(void)::recoveryOS) & 1;
}

void ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v5 = BBUpdaterCommon::BBUMGCopyAnswer(@"RestoreOSBuild", a2);
  ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&BOOLean, &v5);
  if (BOOLean)
  {
    BBUpdaterCommon::inRestoreOS(void)::restoreOS = CFBooleanGetValue(BOOLean) != 0;
  }

  if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(24, 0, "BBUCommon", "", "inRestoreOS: %d\n", v2, v3, v4, BBUpdaterCommon::inRestoreOS(void)::restoreOS);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }
}

void sub_299F909AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUMGCopyAnswer(BBUpdaterCommon *this, const __CFString *a2)
{
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    BBUpdaterCommon::BBUMGCopyAnswer();
  }

  v3 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    return 0;
  }

  return v3(this, 0);
}

uint64_t ___ZN15BBUpdaterCommon11inRestoreOSEv_block_invoke_2()
{
  BBUpdaterCommon::inRestoreOS(void)::recoveryOS = os_variant_is_recovery();
  result = gBBULogMaskGet();
  if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    return _BBULog(24, 0, "BBUCommon", "", "InRecoveryOS: %d\n", v1, v2, v3, BBUpdaterCommon::inRestoreOS(void)::recoveryOS);
  }

  return result;
}

uint64_t BBUpdaterCommon::getECID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getECID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getECID();
  }

  return BBUpdaterCommon::getECID(void)::ecid;
}

void ___ZN15BBUpdaterCommon7getECIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v5 = BBUpdaterCommon::BBUMGCopyAnswer(@"UniqueChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v5);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getECID(void)::ecid);
    if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(24, 0, "BBUCommon", "", "ECID: 0x%llx\n", v2, v3, v4, BBUpdaterCommon::getECID(void)::ecid);
    }

    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_299F90B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t BBUpdaterCommon::getEUICCChipID(BBUpdaterCommon *this)
{
  if (BBUpdaterCommon::getEUICCChipID(void)::sOnce != -1)
  {
    BBUpdaterCommon::getEUICCChipID();
  }

  return BBUpdaterCommon::getEUICCChipID(void)::euiccChipID;
}

void ___ZN15BBUpdaterCommon14getEUICCChipIDEv_block_invoke(uint64_t a1, const __CFString *a2)
{
  v2 = BBUpdaterCommon::BBUMGCopyAnswer(@"EUICCChipID", a2);
  ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(&number, &v2);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &BBUpdaterCommon::getEUICCChipID(void)::euiccChipID);
    if (number)
    {
      CFRelease(number);
    }
  }
}

void sub_299F90C80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef BBUpdaterCommon::BBUReadNVRAM@<X0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A14F5CD0, memory_order_acquire) & 1) == 0)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if (BBUpdaterCommon::BBUReadNVRAM(void)::onceToken != -1)
  {
    BBUpdaterCommon::BBUReadNVRAM();
  }

  if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(&cf, &_MergedGlobals);
    CFOBJ_STR(&cf, __p);
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      LOBYTE(v6) = __p[0];
    }

    _BBULog(24, 0, "BBUCommon", "", "NVRAM: %s\n", v3, v4, v5, v6);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  result = _MergedGlobals;
  *a1 = _MergedGlobals;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_299F90D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15BBUpdaterCommon12BBUReadNVRAMEv_block_invoke()
{
  v25 = 0;
  v0 = MEMORY[0x29C2B7D20](*MEMORY[0x29EDCA6A0], &v25);
  if (v0)
  {
    v1 = v0;
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", v2, v3, v4, "KERN_SUCCESS == kr");
    result = gBBULogMaskGet();
    if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = "Could not get master port %d\n";
      v23 = v1;
      return _BBULog(24, 0, "BBUCommon", "", v9, v6, v7, v8, v23);
    }
  }

  else
  {
    v10 = IORegistryEntryFromPath(v25, "IODeviceTree:/options");
    if (v10)
    {
      v11 = v10;
      properties[0] = 0;
      properties[1] = &_MergedGlobals;
      CFProperties = IORegistryEntryCreateCFProperties(v10, properties, *MEMORY[0x29EDB8ED8], 0);
      ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(properties);
      if (CFProperties)
      {
        v13 = 1;
      }

      else
      {
        v13 = _MergedGlobals == 0;
      }

      if (v13)
      {
        gBBULogMaskGet();
        _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "KERN_SUCCESS == kr && nvramInfo");
        if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(24, 0, "BBUCommon", "", "Could not load NVRAM? %d\n", v17, v18, v19, CFProperties);
        }
      }

      return IOObjectRelease(v11);
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "BBUCommon", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "nvramRef");
      result = gBBULogMaskGet();
      if ((*(result + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
      {
        v9 = "Could not find NVRAM via IOKit\n";
        return _BBULog(24, 0, "BBUCommon", "", v9, v6, v7, v8, v23);
      }
    }
  }

  return result;
}

void sub_299F90FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(va);
  _Unwind_Resume(a1);
}

BOOL BBUpdaterCommon::isNVRAMKeyPresent(const __CFString *this, const __CFString *a2)
{
  BBUpdaterCommon::BBUReadNVRAM(&theDict);
  if (theDict)
  {
    v3 = CFDictionaryContainsKey(theDict, this) != 0;
  }

  else
  {
    v3 = 0;
  }

  if ((*(gBBULogMaskGet() + 3) & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    _BBULog(24, 0, "BBUCommon", "", "NVRAM '%s' exists? %s\n", v5, v6, v7, CStringPtr);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&theDict);
  return v3;
}

void sub_299F910C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterCommon::BBUCreateCFError(CFErrorRef *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  userInfo = 0;
  if (!a1)
  {
    v16 = gBBULogMaskGet();
    if ((BBUpdaterCommon::BBUCreateCFError(v16) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v11 = 0;
    if ((*gBBULogMaskGet() & 2) == 0 || gBBULogVerbosity <= 5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v9 = userInfo;
  userInfo = Mutable;
  v18 = v9;
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v18);
  v18 = 0;
  if ((ctu::cf::convert_copy() & 1) == 0)
  {
    v11 = 0;
    if ((*gBBULogMaskGet() & 2) == 0 || gBBULogVerbosity < 6)
    {
      goto LABEL_16;
    }

LABEL_14:
    _BBULog(1, 6, "BBUCommon", "", "check failed: %s, %d, assertion: %s\n", v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Support/BBUCommon.cpp");
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v10 = v18;
  ctu::cf::insert<__CFString const*,__CFString const*>(userInfo, *MEMORY[0x29EDB8F38], v18);
  if (a4)
  {
    ctu::cf::insert<__CFString const*,__CFError *>(userInfo, *MEMORY[0x29EDB8F68], a4);
  }

  *a1 = CFErrorCreate(v7, @"BBUpdater", a3, userInfo);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = 1;
LABEL_16:
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&userInfo);
  return v11;
}

void sub_299F912B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFString const*>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_299F91350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,__CFError *>(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&v6);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&key);
  return a3;
}

void sub_299F913F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void *BBUpdaterCommon::BBUStrError@<X0>(BBUpdaterCommon *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__strerrbuf = 0u;
  v7 = 0u;
  if (strerror_r(this, __strerrbuf, 0x80uLL))
  {
    snprintf(__strerrbuf, 0x80uLL, "unknown error %d", v2);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, __strerrbuf);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

const char *BBUpdaterCommon::redactedString(BBUpdaterCommon *this, const char *a2)
{
  if (BBUpdaterCommon::inRestoreOS(this))
  {
    return this;
  }

  else
  {
    return "0x<< SNUM >>";
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void *___ZN15BBUpdaterCommonL15BBUMGCopyAnswerEPK10__CFString_block_invoke()
{
  result = dlopen("/usr/lib/libMobileGestalt.dylib", 1);
  if (result)
  {
    result = dlsym(result, "MGCopyAnswer");
    BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer = result;
  }

  return result;
}

const void **ctu::cf::CFSharedRef<__CFBoolean const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::__list_imp<std::string>::__create_node[abi:ne200100]<std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  *(v7 + 1) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 16), *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    *(v7 + 4) = *(a4 + 16);
  }

  return v8;
}

void *ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFBooleanGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void *ctu::cf::CFSharedRef<__CFNumber const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFNumberGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFDictionary>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFDictionary,void>(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(const char *a1@<X2>, const char *a2@<X3>, const char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  return _BBULog(1, 6, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return _BBULog(0, 0xFFFFFFFFLL, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _GLOBAL__sub_I_BBUCommon_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(&BBUpdaterCommon::bbCoredumpPath, "/mnt4/wireless/Library/Logs/CrashReporter/Vinyl/Baseband/baseband_updater_logs/");
  v0 = MEMORY[0x29EDC9388];

  return __cxa_atexit(v0, &BBUpdaterCommon::bbCoredumpPath, &dword_299F8C000);
}

VinylSecureElement *VinylSecureElement::create(VinylSecureElement *this)
{
  v1 = operator new(1uLL);
  VinylSecureElement::init(v1);
  return v1;
}

uint64_t VinylSecureElement::init(VinylSecureElement *this)
{
  v1 = dlopen("/usr/lib/libnfrestore.dylib", 261);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x2Eu, "Assertion failure(lib != __null && Could not find /usr/lib/libnfrestore.dylib)", v5, v6, v7, v17);
    goto LABEL_10;
  }

  v2 = v1;
  pfnNfRestoreOpenWithSE = dlsym(v1, "NfRestoreSEOpenWithError");
  if (!pfnNfRestoreOpenWithSE)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x31u, "Assertion failure(pfnNfRestoreOpenWithSE != __null && Could not find NfRestoreSEOpenWithError symbol\\n)", v8, v9, v10, v17);
    goto LABEL_10;
  }

  pfnNfRestoreSEClose = dlsym(v2, "NfRestoreSEClose");
  if (!pfnNfRestoreSEClose)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x34u, "Assertion failure(pfnNfRestoreSEClose != __null && Could not find NfRestoreSEClose symbol\\n)", v11, v12, v13, v17);
    goto LABEL_10;
  }

  pfnNfRestoreDumpUART = dlsym(v2, "NfRestoreDumpUART");
  if (!pfnNfRestoreDumpUART)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 1, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/SecureElement/VinylSecureElement.cpp", 0x37u, "Assertion failure(pfnNfRestoreDumpUART != __null && Could not find pfnNfRestoreDumpUART symbol\\n)", v14, v15, v16, v17);
LABEL_10:
  }

  return 0;
}

uint64_t VinylSecureElement::PowerUpSE(VinylSecureElement *this)
{
  v7 = 0;
  if (pfnNfRestoreOpenWithSE)
  {
    v1 = pfnNfRestoreDumpUART == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v2 = pfnNfRestoreOpenWithSE(0, 0, &v7);
  if (v7)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "VinylSecureElement", "", "pfnNfRestoreOpenWithSE failure, outResult: %d\n", v3, v4, v5, v7);
  }

  __ns.__rep_ = 1000000000;
  std::this_thread::sleep_for (&__ns);
  return v2;
}

uint64_t VinylSecureElement::PowerDownSE(VinylSecureElement *this, void *a2)
{
  if (!pfnNfRestoreSEClose)
  {
    return 1;
  }

  pfnNfRestoreSEClose(a2);
  gBBULogMaskGet();
  _BBULog(0, 0xFFFFFFFFLL, "VinylSecureElement", "", "SE closed SUCCESSFULLY\n", v2, v3, v4, vars0);
  return 0;
}

uint64_t _BBUFSDebugPrint(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sDelegate)
  {
    return sDelegate(result, a2, &a9);
  }

  return result;
}

uint64_t VinylMipcTransport::open(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (!*(a2 + 24) || !*a3)
  {
    return 0;
  }

  std::function<void ()(unsigned char const*,unsigned long)>::operator=((a1 + 112), a2);
  v5 = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  TelephonyBasebandPCITransportInitParameters();
  v16 = *(a1 + 144);
  v22 = 0;
  v23 = 0;
  v18 = 0x200001B58;
  v20 = 0xF0000000000FLL;
  v15 = 30;
  v19 |= 5u;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke;
  v13[3] = &__block_descriptor_tmp_7;
  v13[4] = v7;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v13;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1;
  v11[3] = &__block_descriptor_tmp_3;
  v11[4] = a1;
  v11[5] = v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  v21 = v11;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v9 = TelephonyBasebandPCITransportCreate();
  *(a1 + 152) = v9;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return v9;
}

void sub_299F91F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(unsigned char const*,unsigned long)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

uint64_t __copy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN18VinylMipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(void *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    v6 = a1[6];
    if (v6 && (v9 = a1[4], (v10 = std::__shared_weak_count::lock(v6)) != 0))
    {
      v11 = v10;
      if (a2 || !a1[5])
      {
        free(a3);
      }

      else
      {
        std::function<void ()(unsigned char const*,unsigned long)>::operator()(v9 + 112, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {

      free(a3);
    }
  }
}

uint64_t std::function<void ()(unsigned char const*,unsigned long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrI18VinylMipcTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t VinylMipcTransport::close(VinylMipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t VinylMipcTransport::write(VinylMipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v7 = *(this + 10);
    if (!v7)
    {
      return 0;
    }

    result = v7(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (v10)
    {
      result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
      if (a4)
      {
        if (result)
        {
          *a4 = v11;
          return 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t VinylMipcTransport::isReady(VinylMipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void VinylMipcTransport::~VinylMipcTransport(VinylMipcTransport *this)
{
  VinylMipcTransport::~VinylMipcTransport(this);

  operator delete(v1);
}

{
  *this = &unk_2A20311A0;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](this + 112);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(unsigned char const*,unsigned long)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F926E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void CFOBJ_STR(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@", *a1);
  ctu::cf::assign();
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_299F927B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t VinylControllerMapBBUReturnToVinylResult(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return result;
    case 4:
    case 12:
      goto LABEL_4;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 13:
      result = 11;
      break;
    case 14:
      result = 12;
      break;
    case 15:
      result = 13;
      break;
    case 16:
      result = 14;
      break;
    case 17:
      result = 15;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 21;
      break;
    case 24:
      result = 22;
      break;
    case 25:
      result = 23;
      break;
    case 26:
      result = 24;
      break;
    case 27:
      result = 25;
      break;
    default:
      if (result == 107)
      {
        result = 26;
      }

      else
      {
LABEL_4:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t eUICC::Perso::Perform(uint64_t a1, uint64_t a2, void (****a3)(std::string *__return_ptr))
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v6 = off_2A14F58A8;
  if (!off_2A14F58A8)
  {
    v7 = operator new(0x38uLL);
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = 0;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v13, v7);
    v8 = v13;
    v13 = 0uLL;
    v9 = *(&off_2A14F58A8 + 1);
    off_2A14F58A8 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    v6 = off_2A14F58A8;
  }

  v10 = *(&off_2A14F58A8 + 1);
  if (*(&off_2A14F58A8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F58A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v11 = eUICC::Perso::PersoImplementation::Perform(v6, a1, a2, a3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v11;
}

uint64_t eUICC::Perso::PersoImplementation::Perform(uint64_t a1, uint64_t a2, uint64_t a3, void (****a4)(std::string *__return_ptr))
{
  __p = 0;
  v40 = 0;
  v41 = 0;
  if (!*a4)
  {
    gBBULogMaskGet();
    v19 = "vinylValve";
LABEL_15:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, v19);
    v20 = 10;
    goto LABEL_19;
  }

  *(a1 + 24) = a2;
  v8 = dispatch_queue_create("PersoImpl", 0);
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a2 + 47);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 32);
  }

  if (!v10)
  {
    gBBULogMaskGet();
    v19 = "!performOptions.alderHostname.empty()";
    goto LABEL_15;
  }

  ReverseProxyGetSettings(a2 + 24, &v38);
  v11 = (a1 + 8);
  if ((a1 + 8) != &v38)
  {
    v42 = *v11;
    *v11 = v38;
    v38 = 0;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v42);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v38);
  if (!*v11)
  {
    gBBULogMaskGet();
    v19 = "this->reverseProxySettings";
    goto LABEL_15;
  }

  if (eUICC::Perso::PersoImplementation::ForcePerso(a1, &__p, a4))
  {
    gBBULogMaskGet();
    v15 = "kBBUReturnSuccess == ret";
LABEL_18:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v12, v13, v14, v15);
    v20 = 18;
    goto LABEL_19;
  }

  if (eUICC::Perso::PersoImplementation::InitPersoDevice(a1, &__p, a4) || __p == v40)
  {
    goto LABEL_17;
  }

  if (eUICC::Perso::PersoImplementation::InitPersoServer(a1, &__p, a3, a4) || __p == v40)
  {
    goto LABEL_26;
  }

  if (eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(a1, &__p, a4) || __p == v40)
  {
LABEL_17:
    gBBULogMaskGet();
    v15 = "kBBUReturnSuccess == ret && !dataBuffer.empty()";
    goto LABEL_18;
  }

  if (eUICC::Perso::PersoImplementation::GetWrapKeyServer(a1, &__p) || __p == v40)
  {
    goto LABEL_26;
  }

  v20 = eUICC::Perso::PersoImplementation::FinalizePersoDevice(a1, &__p, a4);
  if (v20)
  {
LABEL_35:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v30, v31, v32, "kBBUReturnSuccess == ret");
    goto LABEL_19;
  }

  v33 = *(a1 + 16);
  *(a1 + 16) = 0;
  v42 = v33;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v42);
  NonceServer = eUICC::Perso::PersoImplementation::GetNonceServer(a1, &__p, a4);
  if (NonceServer || __p == v40 || eUICC::Perso::PersoImplementation::CreateValidationBlob(NonceServer, &__p) || __p == v40 || eUICC::Perso::PersoImplementation::ValidatePersoDevice(a1, &__p, a4) || __p == v40)
  {
LABEL_26:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "kBBUReturnSuccess == ret && !dataBuffer.empty()");
    v20 = 53;
    goto LABEL_19;
  }

  v20 = eUICC::Perso::PersoImplementation::SendReceiptServer(a1, &__p);
  if (v20)
  {
    goto LABEL_35;
  }

  v36 = *(a1 + 32);
  for (i = *(a1 + 40); i != v36; std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i))
  {
    i -= 48;
  }

  v20 = 0;
  *(a1 + 40) = v36;
LABEL_19:
  v21 = *(a1 + 16);
  *(a1 + 16) = 0;
  v42 = v21;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v42);
  *(a1 + 24) = 0;
  v22 = *a1;
  *a1 = 0;
  if (v22)
  {
    dispatch_release(v22);
  }

  gBBULogMaskGet();
  v37 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ret %d records %zu\n", v23, v24, v25, v20);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return v20;
}

void sub_299F92E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::Perso::DumpTransactions(std::string *a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v3 = off_2A14F58A8;
  if (!off_2A14F58A8)
  {
    v4 = operator new(0x38uLL);
    v4[4] = 0;
    v4[5] = 0;
    v4[6] = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v8, v4);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(&off_2A14F58A8 + 1);
    off_2A14F58A8 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }

    v3 = off_2A14F58A8;
  }

  v7 = *(&off_2A14F58A8 + 1);
  if (*(&off_2A14F58A8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A14F58A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, *(v3 + 32), *(v3 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 40) - *(v3 + 32)) >> 4));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

std::string *eUICC::Perso::PersoImplementation::DumpTransactions@<X0>(__int128 **this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a2, this[4], this[5], 0xAAAAAAAAAAAAAAABLL * (this[5] - this[4]));
}

void *eUICC::Perso::PersoImplementation::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x38uLL);
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = 0;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;

  return std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(a1, v3);
}

uint64_t eUICC::Perso::PersoImplementation::ForcePerso(BBUpdaterCommon *a1, uint64_t a2, void *a3)
{
  *&__dst[71] = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 3) + 48) != 1)
  {
    v5 = 0;
    goto LABEL_18;
  }

  v37 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v35 = 0;
  v36 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  (*(**a3 + 8))(__dst);
  if (__dst[0] != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    goto LABEL_7;
  }

  if (!LOBYTE(__dst[1]))
  {
    if (DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v35))
    {
      gBBULogMaskGet();
LABEL_13:
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v9, v10, v11, "DR_Success == derRet");
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n", v12, v13, v14, v29);
      v5 = 10;
      goto LABEL_14;
    }

    if (DEREncodeItemIntoVector(0x2000000000000010uLL, v36 - v35, v35, &__p))
    {
      gBBULogMaskGet();
      goto LABEL_13;
    }

    v5 = (*(**a3 + 72))(*a3, &__p, a2);
    if (v5)
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "kBBUReturnSuccess == ret");
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n", v20, v21, v22, v30);
      goto LABEL_14;
    }

    (*(**a3 + 16))(*a3, 0, 1);
    *__ns = 10000000000;
    std::this_thread::sleep_for (__ns);
    (*(**a3 + 8))(__ns);
    memcpy(__dst, __ns, 0x11BuLL);
    if (__dst[0] == TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
    {
      if (LOBYTE(__dst[1]))
      {
        goto LABEL_4;
      }

      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "cardData.contents.perso");
      gBBULogMaskGet();
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Still persod after force?\n", v26, v27, v28, v31);
LABEL_8:
      v5 = 18;
      goto LABEL_14;
    }

    gBBULogMaskGet();
LABEL_7:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "cardData.Valid()");
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
LABEL_14:
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

LABEL_18:
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_299F933E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoDevice(BBUpdaterCommon *a1, uint64_t a2, void *a3)
{
  v41 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v38))
  {
    gBBULogMaskGet();
LABEL_5:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v6, v7, v8, "DR_Success == derRet");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n", v9, v10, v11, v23);
    v12 = 10;
    goto LABEL_6;
  }

  if (DEREncodeItemIntoVector(0x2000000000000010uLL, v39 - v38, v38, &v35))
  {
    gBBULogMaskGet();
    goto LABEL_5;
  }

  v32 = 0;
  v33 = operator new(0x19uLL);
  v34 = xmmword_299FDFCB0;
  strcpy(v33, "InitPersoDeviceBlob.bin");
  __p = 0;
  v31 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v35, v36, v36 - v35);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v33, &__p);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  v12 = (*(**a3 + 72))(*a3, &v35, a2);
  if (v12)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n", v20, v21, v22, v24);
  }

  else
  {
    v27 = 0;
    v28 = operator new(0x20uLL);
    v29 = xmmword_299FDFCC0;
    strcpy(v28, "InitPersoDeviceResponse.bin");
    v25 = 0;
    v26 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v25, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v28, &v25);
    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    v12 = 0;
  }

LABEL_6:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoDevice %d\n", v13, v14, v15, v12);
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v12;
}

void sub_299F936FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    *(v30 - 88) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 72);
  if (v33)
  {
    *(v30 - 64) = v33;
    operator delete(v33);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v30 - 48));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoServer(void *a1, uint64_t a2, uint64_t a3, void (****a4)(std::string *__return_ptr))
{
  v80 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v65, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  memset(v77, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v77, v65, v66, v66 - v65);
  v75 = 0;
  memset(__p, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *v77, *&v77[8], *&v77[8] - *v77);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = values[0];
    v75 = values[0];
  }

  else
  {
    v8 = 0;
  }

  if (__p[0].__r_.__value_.__r.__words[0])
  {
    __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v68 = v8;
  if (*v77)
  {
    *&v77[8] = *v77;
    operator delete(*v77);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *a3, *(a3 + 8));
  }

  else
  {
    v63 = *a3;
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v77, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    *v77 = v63;
  }

  v74 = 0;
  if ((v77[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *v77, *&v77[8]);
  }

  else
  {
    __p[0] = *v77;
  }

  v75 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  if (ctu::cf::convert_copy())
  {
    v10 = v74;
    v74 = v75;
    values[0] = v10;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(values);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v64 = v74;
  v74 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v74);
  if ((v77[23] & 0x80000000) != 0)
  {
    operator delete(*v77);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  (***a4)(__p);
  if (LODWORD(__p[0].__r_.__value_.__l.__data_) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    v16 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v17, v18, v19, "hwType.Valid()");
LABEL_33:
    v12 = 18;
    goto LABEL_34;
  }

  *v77 = xmmword_29F293298;
  *&v77[16] = *&off_29F2932A8;
  values[0] = @"StartSession";
  values[1] = v8;
  v11 = @"2";
  if (!v79)
  {
    v11 = @"0";
  }

  values[2] = v64;
  values[3] = v11;
  v12 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(v77, values, 4);
  if (v12)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "kBBUReturnSuccess == ret");
    v16 = 0;
    goto LABEL_34;
  }

  v60 = 0;
  v61 = operator new(0x20uLL);
  v62 = xmmword_299FDFCD0;
  strcpy(v61, "InitPersoServerRequest.plist");
  v58 = 0;
  v59 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v58, v69, v70, v70 - v69);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v61, &v58);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(a1, &v69, v77);
  v16 = *&v77[8];
  v25 = *v77;
  if (!*v77)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v29, v30, v31, "response");
LABEL_66:
    v12 = 53;
    goto LABEL_34;
  }

  v56 = operator new(0x20uLL);
  v57 = xmmword_299FDFCE0;
  strcpy(v56, "InitPersoServerResponse.plist");
  (*(*v25 + 40))(&v55, v25);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v56, &v55);
  if (v55)
  {
    CFRelease(v55);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  (*(*v25 + 40))(&v54, v25);
  v12 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v54, &theDict);
  if (v54)
  {
    CFRelease(v54);
  }

  if (v12)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v26, v27, v28, "kBBUReturnSuccess == ret");
    goto LABEL_34;
  }

  if (!theDict)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v46, v47, v48, "respDict");
    goto LABEL_33;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(v77, values);
  v32 = a1[2];
  a1[2] = *v77;
  *v77 = v32;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v77);
  v33 = a1[2];
  if (!v33 || !CFStringGetLength(v33))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v37, v38, v39, "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0");
    gBBULogMaskGet();
    v40 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v40, 0x8000100u);
    v45 = "Missing or empty server sssion?! %s\n";
LABEL_65:
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", v45, v42, v43, v44, CStringPtr);
    goto LABEL_66;
  }

  *v77 = CFDictionaryGetValue(theDict, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, v77);
  if (!cf)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v49, v50, v51, "respDataPayload");
    gBBULogMaskGet();
    v52 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v52, 0x8000100u);
    v45 = "Couldn't get response payload %s\n";
    goto LABEL_65;
  }

  memset(v77, 0, 24);
  ctu::cf::assign();
  v34 = *v77;
  v35 = *&v77[16];
  v36 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v36;
    v53 = v34;
    operator delete(v36);
    v34 = v53;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v12 = 0;
  *a2 = v34;
  *(a2 + 16) = v35;
LABEL_34:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoServer %d\n", v20, v21, v22, v12);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v64);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  v23 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_299F93F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, void *a32, uint64_t a33, uint64_t a34, const void *a35, void *a36, uint64_t a37, uint64_t a38, const void *a39, const void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a35);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a40);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = operator new(0x28uLL);
  v27 = xmmword_299FDFCF0;
  strcpy(v26, "AuthenticatePersoDeviceRequest.bin");
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v26, &__p);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  v6 = (*(**a3 + 80))(*a3, a2, a2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete AuthPerso command\n", v10, v11, v12, v17);
  }

  else
  {
    v20 = 0;
    v21 = operator new(0x28uLL);
    v22 = xmmword_299FDFD00;
    strcpy(v21, "AuthenticatePersoDeviceResponse.bin");
    v18 = 0;
    v19 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v18, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v21, &v18);
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "AuthenticatePersoDevice %d\n", v13, v14, v15, v6);
  return v6;
}

void sub_299F942E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetWrapKeyServer(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v50 = 0;
  v51 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v57 = 0;
  keys = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&keys, __p, v44, v44 - __p);
  v52 = 0;
  v53 = 0uLL;
  v54 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v53, keys, *(&keys + 1), *(&keys + 1) - keys);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = values[0];
    v52 = values[0];
  }

  else
  {
    v4 = 0;
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  v46 = v4;
  if (keys)
  {
    *(&keys + 1) = keys;
    operator delete(keys);
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  keys = xmmword_29F2932C8;
  v57 = @"SessionId";
  values[0] = @"GetWrapKey";
  values[1] = v4;
  values[2] = *(a1 + 16);
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 3);
  if (v5)
  {
    gBBULogMaskGet();
    v6 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    goto LABEL_31;
  }

  v40 = 0;
  v41 = operator new(0x20uLL);
  v42 = xmmword_299FDFCE0;
  strcpy(v41, "GetWrapKeyServerRequest.plist");
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v38, v47, v48, v48 - v47);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v41, &v38);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(a1, &v47, &v53);
  v6 = *(&v53 + 1);
  v10 = v53;
  if (!v53)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v14, v15, v16, "response");
LABEL_26:
    v5 = 53;
    goto LABEL_31;
  }

  v36 = operator new(0x20uLL);
  v37 = xmmword_299FDFD10;
  strcpy(v36, "GetWrapKeyServerResponse.plist");
  (*(*v10 + 40))(&cf, v10);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v36, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  (*(*v10 + 40))(&v34, v10);
  v5 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v34, &v51);
  if (v34)
  {
    CFRelease(v34);
  }

  if (v5)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "kBBUReturnSuccess == ret");
    goto LABEL_31;
  }

  *&v53 = CFDictionaryGetValue(v51, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&v50, &v53);
  if (!v50)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v25, v26, v27, "respDataPayload");
    gBBULogMaskGet();
    v28 = CFCopyDescription(v51);
    CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", v30, v31, v32, CStringPtr);
    goto LABEL_26;
  }

  v53 = 0uLL;
  v54 = 0;
  ctu::cf::assign();
  v17 = v53;
  v18 = v54;
  v19 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v19;
    v33 = v17;
    operator delete(v19);
    v17 = v33;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v5 = 0;
  *a2 = v17;
  *(a2 + 16) = v18;
LABEL_31:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetWrapKeyServer %d\n", v20, v21, v22, v5);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v51);
  v23 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_299F94844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, const void *a39, void *__p, uint64_t a41)
{
  v44 = *(v42 - 144);
  if (v44)
  {
    *(v42 - 136) = v44;
    operator delete(v44);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v42 - 168));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v42 - 160));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::FinalizePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = 0;
  v21 = operator new(0x20uLL);
  v22 = xmmword_299FDFD10;
  strcpy(v21, "FinalizePersoDeviceRequest.bin");
  __p = 0;
  v19 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v21, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  v6 = (*(**a3 + 96))(*a3, a2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete FinalizePerso command\n", v10, v11, v12, v17);
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "FinalizePersoDevice %d\n", v13, v14, v15, v6);
  return v6;
}

void sub_299F94B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetNonceServer(void *a1, uint64_t a2, void (****a3)(void *__return_ptr))
{
  v65 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  __p = 0;
  v56 = 0;
  v57 = 0;
  (***a3)(v61);
  if (LODWORD(v61[0]) != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    gBBULogMaskGet();
    v10 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "hwType.Valid()");
    v6 = 18;
    goto LABEL_8;
  }

  *keys = xmmword_29F2932B8;
  if (v62)
  {
    v5 = @"2";
  }

  else
  {
    v5 = @"0";
  }

  values[0] = @"GetNonce";
  values[1] = v5;
  v6 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, values, 2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    v10 = 0;
    goto LABEL_8;
  }

  v52 = 0;
  v53 = operator new(0x20uLL);
  v54 = xmmword_299FDFCC0;
  strcpy(v53, "GetNonceServerRequest.plist");
  v50 = 0;
  v51 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v50, __p, v56, v56 - __p);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v53, &v50);
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  eUICC::Perso::PersoImplementation::PostDataSync(a1, &__p, keys);
  v19 = keys[0];
  v10 = keys[1];
  if (!keys[0])
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v23, v24, v25, "response");
LABEL_37:
    v6 = 53;
    goto LABEL_8;
  }

  v48 = operator new(0x20uLL);
  v49 = xmmword_299FDFCD0;
  strcpy(v48, "GetNonceServerResponse.plist");
  (*(*v19 + 40))(&v47, v19);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v48, &v47);
  if (v47)
  {
    CFRelease(v47);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  (*(*v19 + 40))(&v46, v19);
  v6 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v46, &theDict);
  if (v46)
  {
    CFRelease(v46);
  }

  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v20, v21, v22, "kBBUReturnSuccess == ret");
    goto LABEL_8;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  v26 = ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(keys, values);
  v27 = a1[2];
  a1[2] = keys[0];
  keys[0] = v27;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v26);
  v28 = a1[2];
  if (!v28 || !CFStringGetLength(v28))
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v32, v33, v34, "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0");
    gBBULogMaskGet();
    v35 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v35, 0x8000100u);
    v40 = "Missing or empty server sssion?! %s\n";
LABEL_36:
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", v40, v37, v38, v39, CStringPtr);
    goto LABEL_37;
  }

  keys[0] = CFDictionaryGetValue(theDict, @"DATA");
  ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, keys);
  if (!cf)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v41, v42, v43, "respDataPayload");
    gBBULogMaskGet();
    v44 = CFCopyDescription(theDict);
    CStringPtr = CFStringGetCStringPtr(v44, 0x8000100u);
    v40 = "Couldn't get response payload %s\n";
    goto LABEL_36;
  }

  keys[0] = 0;
  keys[1] = 0;
  v64 = 0;
  ctu::cf::assign();
  v29 = *keys;
  v30 = v64;
  v31 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v31;
    v45 = v29;
    operator delete(v31);
    v29 = v45;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v6 = 0;
  *a2 = v29;
  *(a2 + 16) = v30;
LABEL_8:
  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetNonceServer %d\n", v14, v15, v16, v6);
  if (__p)
  {
    v56 = __p;
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  v17 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_299F950D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, uint64_t a37, const void *a38, const void *a39)
{
  v42 = *(v40 - 80);
  if (v42)
  {
    *(v40 - 72) = v42;
    operator delete(v42);
  }

  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a39);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::CreateValidationBlob(BBUpdaterCommon *a1, unint64_t *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  ECID = BBUpdaterCommon::getECID(a1);
  v42 = 4;
  v41 = 17433507;
  v44[0] = 0;
  v44[2] = 512;
  *&v45[8] = 0u;
  v44[1] = 12;
  *v45 = xmmword_299FDFD20;
  *&v45[16] = 512;
  v40[0] = v44;
  v40[1] = 2;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v3 = a2[1] - *a2;
  v13[0] = *a2;
  v13[1] = v3;
  v4 = DERDecodeItem(v13, v14);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = DEREncodeItemIntoVector(0xCuLL, 6uLL, "kNonce", &v24);
  if (v4)
  {
    goto LABEL_14;
  }

  v38[0] = v24;
  v38[1] = v25 - v24;
  v38[2] = v14[1];
  v38[3] = v14[2];
  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v38, v40, &v30);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = DEREncodeItemIntoVector(0xCuLL, 0x11uLL, "kDeviceIdentifier", &v33);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v27);
  if (v4)
  {
    goto LABEL_14;
  }

  v39[0] = v33;
  v39[1] = v34 - v33;
  v39[2] = v27;
  v39[3] = v28 - v27;
  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v39, v40, &v21);
  if (v4)
  {
    goto LABEL_14;
  }

  v37[0] = v21;
  v37[1] = v22 - v21;
  v37[2] = v30;
  v37[3] = v31 - v30;
  v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v37, v40, &v18);
  if (v4 || (v4 = DEREncodeItemIntoVector(0xA000000000000005, v19 - v18, v18, &__p)) != 0 || (v36[0] = &v41, v36[1] = 5, v36[2] = __p, v36[3] = v16 - __p, (v4 = DEREncodeSequenceIntoVector(0x2000000000000010, v36, v40, a2)) != 0))
  {
LABEL_14:
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v5, v6, v7, "DR_Success == ret");
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "CreateValidationBlob DR %d\n", v8, v9, v10, v4);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v4)
  {
    result = 11;
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F956FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::ValidatePersoDevice(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = 0;
  v21 = operator new(0x20uLL);
  v22 = xmmword_299FDFD10;
  strcpy(v21, "ValidatePersoDeviceRequest.bin");
  __p = 0;
  v19 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v21, &__p);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  v6 = (*(**a3 + 88))(*a3, a2, a2);
  if (v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete ValidatePerso command\n", v10, v11, v12, v17);
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ValidatePersoDevice %d\n", v13, v14, v15, v6);
  return v6;
}

void sub_299F958F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::SendReceiptServer(void *a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v37 = 0;
  v38 = 0;
  values = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&values, __p, v29, v29 - __p);
  v35 = 0;
  keys[0] = 0;
  keys[1] = 0;
  v40 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(keys, values, v37, v37 - values);
  v22[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v22[0];
    v35 = v22[0];
  }

  else
  {
    v4 = 0;
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  v31 = v4;
  if (values)
  {
    v37 = values;
    operator delete(values);
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  *keys = xmmword_29F2932C8;
  v40 = @"SessionId";
  values = @"SendReceipt";
  v37 = v4;
  v38 = a1[2];
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, &values, 3);
  if (v5)
  {
    gBBULogMaskGet();
    v6 = 0;
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "kBBUReturnSuccess == ret");
  }

  else
  {
    v25 = 0;
    v26 = operator new(0x20uLL);
    v27 = xmmword_299FDFD10;
    strcpy(v26, "SendReceiptServerRequest.plist");
    v23 = 0;
    v24 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v23, v32, v33, v33 - v32);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v26, &v23);
    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    eUICC::Perso::PersoImplementation::PostDataSync(a1, &v32, v22);
    v10 = v22[0];
    v6 = v22[1];
    if (v22[0])
    {
      v20 = operator new(0x20uLL);
      v21 = xmmword_299FDFD30;
      strcpy(v20, "SendReceiptServerResponse.plist");
      (*(*v10 + 40))(&cf, v10);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v20, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }

      v5 = 0;
      *(a2 + 8) = *a2;
    }

    else
    {
      gBBULogMaskGet();
      _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v11, v12, v13, "response");
      v5 = 53;
    }
  }

  gBBULogMaskGet();
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "SendReceiptServer %d\n", v14, v15, v16, v5);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v17 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_299F95C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::string *eUICC::Perso::PersoImplementation::logTransactionData(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 48))
  {
    result = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, a3);
  }

  else
  {
    std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, a3);
    result = v4 + 2;
    *(a1 + 40) = v4 + 2;
  }

  *(a1 + 40) = result;
  return result;
}

uint64_t eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(const void **keys, const void **values, CFIndex numValues)
{
  v38 = 0;
  v39 = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  v4 = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], keys, values, numValues, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v37 = v4;
  if (!v4)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v7, v8, v9, "inDict");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create dictionary\n", v10, v11, v12, v31);
LABEL_12:
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v37);
    v6 = 11;
    goto LABEL_15;
  }

  error[0] = 0;
  error[1] = &v39;
  Data = CFPropertyListCreateData(v3, v4, kCFPropertyListXMLFormat_v1_0, 0, error);
  v38 = Data;
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!Data)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v13, v14, v15, "outData");
    gBBULogMaskGet();
    ctu::cf::show(1, v37, v16);
    v17 = v36;
    v18 = error[0];
    ctu::cf::show(1, v39, v19);
    v23 = error;
    if (v17 < 0)
    {
      LOBYTE(v23) = v18;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to serialize dictionary %s error %s\n", v20, v21, v22, v23);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    if (v36 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_12;
  }

  if (ctu::cf::assign())
  {
    v6 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v24, v25, v26, "success");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to assign output data\n", v27, v28, v29, v32);
    v6 = 11;
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v37);
  CFRelease(Data);
LABEL_15:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v39);
  return v6;
}

void sub_299F96078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v25 - 56));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v25 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v25 - 40));
  _Unwind_Resume(a1);
}

uint64_t *eUICC::Perso::PersoImplementation::PostDataSync@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = operator new(0xA0uLL);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 850045863;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *(v6 + 11) = 1018212795;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 124) = 0u;
  *v6 = &unk_2A20312B0;
  v26 = v6;
  v27 = v6;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v6);
  v7 = a1[3];
  aBlock[1] = 0;
  v23 = 0;
  v21[2] = 0;
  aBlock[0] = &aBlock[1];
  v21[1] = 0;
  ctu::Http::HttpRequest::create();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(aBlock, aBlock[1]);
  (*(*v24 + 8))(v24, *a1);
  v8 = v24;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v26, aBlock);
  (*(*v8 + 16))(v8, aBlock[0]);
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  (*(*v24 + 96))(v24, 60.0);
  v9 = v24;
  v10 = a1[1];
  v21[0] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  (*(*v9 + 88))(v9, v21);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(v21);
  (*(*v24 + 56))(v24, a2);
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  (*(*v24 + 40))(v24, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(&v26, aBlock);
  if ((*(*aBlock[0] + 16))(aBlock[0]) == 1 && (*(*aBlock[0] + 24))(aBlock[0]) == 200)
  {
    *a3 = *aBlock;
  }

  else
  {
    gBBULogMaskGet();
    v11 = (*(*aBlock[0] + 16))(aBlock[0]);
    (*(*aBlock[0] + 24))(aBlock[0]);
    (*(*aBlock[0] + 32))(aBlock[0]);
    (*(*aBlock[0] + 72))(&cf);
    v12 = CFCopyDescription(cf);
    CFStringGetCStringPtr(v12, 0x8000100u);
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "result %d code %d raw_error %ld error %s\n", v13, v14, v15, v11);
    ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&cf);
    *a3 = 0;
    *(a3 + 8) = 0;
    if (aBlock[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](aBlock[1]);
    }
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v16 = v26;
  if (v26 && !atomic_fetch_add(v26 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v16 + 16))(v16);
  }

  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v27);
}

void sub_299F96500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *aBlock, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = *(v25 - 48);
  if (v28)
  {
    if (!atomic_fetch_add(v28 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v28 + 16))(v28);
    }
  }

  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v25 - 40));
  _Unwind_Resume(a1);
}

void eUICC::Perso::PersoImplementation::logTransactionCFData(uint64_t a1, __int128 *a2, CFDataRef *a3)
{
  if (*a3)
  {
    BytePtr = CFDataGetBytePtr(*a3);
    Length = CFDataGetLength(*a3);
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, BytePtr, &BytePtr[Length], Length);
    v8 = *(a1 + 40);
    if (v8 >= *(a1 + 48))
    {
      v9 = std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(a1 + 32, a2, &__p);
    }

    else
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(*(a1 + 40), a2, &__p);
      v9 = v8 + 2;
      *(a1 + 40) = v8 + 2;
    }

    *(a1 + 40) = v9;
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }
}

void sub_299F966AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(uint64_t *a1, __CFError **a2)
{
  v41 = 0;
  v42 = 0;
  v3 = *a1;
  if (!*a1)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v10, v11, v12, "inData");
    gBBULogMaskGet();
    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to create data\n", v13, v14, v15, v36);
LABEL_12:
    v9 = 11;
    goto LABEL_20;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v42;
  v6 = CFPropertyListCreateWithData(v5, v3, 0, 0, error);
  v41 = v6;
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!v6)
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v16, v17, v18, "outPlist");
    gBBULogMaskGet();
    ctu::cf::show(1, *a1, v19);
    v20 = v40;
    v21 = error[0];
    ctu::cf::show(__p, v42, v22);
    v26 = error;
    if (v20 < 0)
    {
      LOBYTE(v26) = v21;
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to deserialize dictionary %s error %s\n", v23, v24, v25, v26);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    if (v40 < 0)
    {
      operator delete(error[0]);
    }

    goto LABEL_12;
  }

  v7 = CFGetTypeID(v6);
  if (v7 == CFDictionaryGetTypeID())
  {
    __p[0] = v6;
    ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(error, __p);
    v8 = *a2;
    *a2 = error[0];
    error[0] = v8;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(error);
    v9 = 0;
  }

  else
  {
    gBBULogMaskGet();
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v27, v28, v29, "CFGetTypeID(outPlist.get()) == CFDictionaryGetTypeID()");
    gBBULogMaskGet();
    ctu::cf::show(error, v6, v30);
    if (v40 >= 0)
    {
      v34 = error;
    }

    else
    {
      LOBYTE(v34) = error[0];
    }

    _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Deserialized plist data is not a dictionary: %s\n", v31, v32, v33, v34);
    if (v40 < 0)
    {
      operator delete(error[0]);
    }

    v9 = 11;
  }

  CFRelease(v6);
LABEL_20:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v42);
  return v9;
}

void sub_299F969B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v24 - 48));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v24 - 40));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(atomic_ullong **a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  *a1 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v2, a2);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(*v2 + 16);

    v3(v2);
  }
}

void sub_299F96AF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

void *ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, const void *a2, uint64_t a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_299F96C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__emplace_back_slow_path<std::string&,std::vector<unsigned char>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = v9 + 2 * v3;
  v18 = v17;
  v19 = &v9[2 * v8];
  std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(v17, a2, a3);
  v10 = v17 + 2;
  v11 = *(a1 + 8) - *a1;
  v12 = v17 - v11;
  memcpy(v17 - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(&v16);
  return v10;
}

void sub_299F96E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100]<std::string&,std::vector<unsigned char>&,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  return this;
}

void sub_299F96EC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(48 * a2);
}

uint64_t std::__split_buffer<std::pair<std::string,std::vector<unsigned char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_299F96FD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

std::string *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(v6, a2, a3, v6->__r_.__value_.__l.__size_);
    v6->__r_.__value_.__l.__size_ = result;
  }

  return result;
}

void sub_299F9708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::pair<std::string,std::vector<unsigned char>>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::vector<char *>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[48 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::vector<unsigned char>>>,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](this, v6);
      v6 += 3;
      this += 2;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_299F97158(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::pair<std::string,std::vector<unsigned char>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this[1].__r_.__value_.__r.__words, *(a2 + 3), *(a2 + 4), *(a2 + 4) - *(a2 + 3));
  return this;
}

void sub_299F971E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void *std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2031238;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_299F97398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<eUICC::Perso::PersoImplementation *,std::shared_ptr<eUICC::Perso::PersoImplementation>::__shared_ptr_default_delete<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation>,std::allocator<eUICC::Perso::PersoImplementation>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<eUICC::Perso::PersoImplementation>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 32);
    std::vector<std::pair<std::string,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](&v3);
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((a2 + 16));
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((a2 + 8));
    if (*a2)
    {
      dispatch_release(*a2);
    }

    operator delete(a2);
  }
}

void *ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::SharedRef(a1, v5);
}

void *ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFDataGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

uint64_t *std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2B8CD0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2B8CE0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x29EDC9548] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2A1C6FB70](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2B8CD0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>@<X0>(atomic_ullong **a1@<X0>, void **a2@<X8>)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3002000000;
  v8[3] = __Block_byref_object_copy_;
  v8[4] = __Block_byref_object_dispose_;
  v4 = operator new(0xA0uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A20312B0;
  v9 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  v5 = *a1;
  *a1 = v4;
  if (v5 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN8dispatch20future_callback_implINSt3__110shared_ptrIN3ctu4Http12HttpResponseEEES6_EENS_5blockIU13block_pointerFvT0_EEERNS1_6futureIT_EE_block_invoke;
  aBlock[3] = &unk_29F2932E8;
  aBlock[4] = v8;
  *a2 = _Block_copy(aBlock);
  _Block_object_dispose(v8, 8);
  return std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v9);
}

void sub_299F97B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise((v7 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::set_value(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(v3, a2);
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::set_value<std::shared_ptr<ctu::Http::HttpResponse>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  __lk.__m_ = (a1 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  v4 = *(a1 + 16);
  v7.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v7);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v6, (a1 + 16));
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 144);
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }
}

void sub_299F97D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

void *ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::SharedRef(a1, v5);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_94()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance, &dword_299F8C000);
  }

  return result;
}

VinylFirmware *VinylGoldFirmwareCreate(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  ACFULogging::getLogInstance(a1);
  v8 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v8);
  std::string::basic_string[abi:ne200100]<0>(&v18, "VinylFirmware");
  v9 = std::string::append(&v18, "::", 2uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v19, "VinylGoldFirmwareCreate", 0x17uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v21 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v13 = operator new(0xC0uLL);
  VinylFirmware::VinylFirmware(v13, @"/update/gold/firmware.der", @"/update/gold/info.plist", @"/update/gold/profile.bin", off_29F293368);
  v14 = VinylFirmware::setFwInfo(v13, a1, a2, a3);
  if (v14)
  {
    ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage();
    VinylFirmware::~VinylFirmware(v13);
    operator delete(v15);
    v13 = 0;
  }

  else
  {
    v16 = VinylFirmware::setRecoveryFwInfo(v13, a1, a2, a3, 0, a4);
  }

  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  return v13;
}

uint64_t VinylFirmware::setFwInfo(VinylFirmware *this, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  v25 = 0;
  ACFULogging::getLogInstance(this);
  v8 = ACFULogging::handleMessage();
  v23 = 0;
  v24 = 0;
  *(this + 15) = 0;
  if (!a2 || !a3 || !a4)
  {
    ACFULogging::getLogInstance(v8);
LABEL_17:
    ACFULogging::handleMessage();
    v18 = 99;
    goto LABEL_14;
  }

  FWSrcPath = VinylFirmware::getFWSrcPath(v8, a3, a4);
  v10 = FWSrcPath;
  v24 = FWSrcPath;
  if (!FWSrcPath)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_17;
  }

  FileDataFromZip = VinylFirmware::getFileDataFromZip(FWSrcPath, a2, FWSrcPath, *(this + 12));
  v12 = FileDataFromZip;
  v23 = FileDataFromZip;
  if (!FileDataFromZip)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    v18 = 99;
    goto LABEL_13;
  }

  v13 = VinylFirmware::getFileDataFromZip(FileDataFromZip, a2, v10, *(this + 13));
  *(this + 18) = v13;
  if (!v13 || (v14 = VinylFirmware::getFileDataFromZip(v13, a2, v10, *(this + 14)), (*(this + 19) = v14) == 0) || (v15 = *MEMORY[0x29EDB8ED8], MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, v12), (*(this + 15) = MutableCopy) == 0))
  {
    ACFULogging::getLogInstance(0);
LABEL_22:
    ACFULogging::handleMessage();
    v18 = 99;
    goto LABEL_12;
  }

  Im4p = VinylFirmware::createIm4p(this, a2, this + 16, this + 17);
  v18 = Im4p;
  if (Im4p)
  {
    ACFULogging::getLogInstance(Im4p);
    ACFULogging::handleMessage();
    goto LABEL_12;
  }

  v19 = *(this + 18);
  error[0] = 0;
  error[1] = &v25;
  *(this + 21) = CFPropertyListCreateWithData(v15, v19, 0, 0, error);
  v20 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  if (!*(this + 21))
  {
    ACFULogging::getLogInstance(v20);
    goto LABEL_22;
  }

  v18 = 0;
LABEL_12:
  CFRelease(v12);
LABEL_13:
  CFRelease(v10);
LABEL_14:
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v25);
  return v18;
}

void sub_299F982F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va2);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(va3);
  _Unwind_Resume(a1);
}

const void **VinylFirmware::setRecoveryFwInfo(VinylFirmware *this, const __CFData *a2, const __CFData *a3, const __CFData *a4, uint64_t a5, const __CFData *a6)
{
  v99 = *MEMORY[0x29EDCA608];
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  cf = 0;
  *(this + 16) = 0;
  ACFULogging::getLogInstance(this);
  v9 = ACFULogging::handleMessage();
  if (!a2 || !a3 || !a4 || !a6)
  {
    ACFULogging::getLogInstance(v9);
LABEL_91:
    ACFULogging::handleMessage();
    goto LABEL_79;
  }

  FwMac = VinylFirmware::getFwMac(v9, *(this + 21));
  v11 = FwMac;
  if (!FwMac)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_91;
  }

  ACFULogging::getLogInstance(FwMac);
  std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
  v12 = std::string::append(&v87, "::", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v88, "setRecoveryFwInfo", 0x11uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v90 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v16);
  std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
  v17 = std::string::append(&v87, "::", 2uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v88, "setRecoveryFwInfo", 0x11uLL);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v90 = v19->__r_.__value_.__r.__words[2];
  *__p = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v90) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  BytePtr = CFDataGetBytePtr(v11);
  v22 = CFDataGetBytePtr(a6);
  Length = CFDataGetLength(v11);
  if (Length >= CFDataGetLength(a6))
  {
    v24 = a6;
  }

  else
  {
    v24 = v11;
  }

  v25 = CFDataGetLength(v24);
  v26 = memcmp(BytePtr, v22, v25);
  v27 = v26;
  ACFULogging::getLogInstance(v26);
  v77 = a5;
  v28 = ACFULogging::handleMessage();
  if (v27)
  {
    if ((a5 & 1) == 0)
    {
      strcpy(v98, "/recovery/gold-");
      strcpy(v97, "/firmware.der");
      strcpy(v96, "/info.plist");
      FWSrcPath = VinylFirmware::getFWSrcPath(v28, a3, a4);
      v86 = FWSrcPath;
      if (FWSrcPath)
      {
        v30 = malloc(0x22uLL);
        v31 = malloc(0x20uLL);
        v79 = v31;
        __str = v30;
        if (v30 && v31)
        {
          v81 = FWSrcPath;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          alloc = *MEMORY[0x29EDB8ED8];
          v36 = "%s%03d%s";
          v37 = "::";
          while (1)
          {
            v38 = snprintf(__str, 0x22uLL, v36, v98, v35, v97, v77);
            __str[33] = 0;
            ACFULogging::getLogInstance(v38);
            ACFULogging::handleMessage();
            v31 = CFStringCreateWithCString(alloc, __str, 0x8000100u);
            v39 = v31;
            v94 = v31;
            if (v34)
            {
              CFRelease(v34);
            }

            if (!v39)
            {
              break;
            }

            ACFULogging::getLogInstance(v31);
            std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
            v40 = std::string::append(&v87, v37, 2uLL);
            v41 = *&v40->__r_.__value_.__l.__data_;
            v88.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
            *&v88.__r_.__value_.__l.__data_ = v41;
            v40->__r_.__value_.__l.__size_ = 0;
            v40->__r_.__value_.__r.__words[2] = 0;
            v40->__r_.__value_.__r.__words[0] = 0;
            v42 = std::string::append(&v88, "setRecoveryFwInfo", 0x11uLL);
            v43 = *&v42->__r_.__value_.__l.__data_;
            v90 = v42->__r_.__value_.__r.__words[2];
            *__p = v43;
            v42->__r_.__value_.__l.__size_ = 0;
            v42->__r_.__value_.__r.__words[2] = 0;
            v42->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType();
            if (SHIBYTE(v90) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v88.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }

            v44 = snprintf(v79, 0x20uLL, v36, v98, v35, v96);
            v79[31] = 0;
            ACFULogging::getLogInstance(v44);
            ACFULogging::handleMessage();
            v31 = CFStringCreateWithCString(alloc, v79, 0x8000100u);
            v45 = v31;
            v93 = v31;
            if (v33)
            {
              CFRelease(v33);
            }

            if (!v45)
            {
              break;
            }

            ACFULogging::getLogInstance(v31);
            std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
            v46 = std::string::append(&v87, v37, 2uLL);
            v47 = *&v46->__r_.__value_.__l.__data_;
            v88.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
            *&v88.__r_.__value_.__l.__data_ = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            v48 = std::string::append(&v88, "setRecoveryFwInfo", 0x11uLL);
            v49 = *&v48->__r_.__value_.__l.__data_;
            v90 = v48->__r_.__value_.__r.__words[2];
            *__p = v49;
            v48->__r_.__value_.__l.__size_ = 0;
            v48->__r_.__value_.__r.__words[2] = 0;
            v48->__r_.__value_.__r.__words[0] = 0;
            v50 = ACFULogging::handleMessageCFType();
            v51 = v81;
            if (SHIBYTE(v90) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v88.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v87.__r_.__value_.__l.__data_);
            }

            FileDataFromZip = VinylFirmware::getFileDataFromZip(v50, a2, v81, v39);
            v92 = FileDataFromZip;
            if (v32)
            {
              CFRelease(v32);
              v51 = v86;
            }

            v53 = v93;
            v54 = VinylFirmware::getFileDataFromZip(FileDataFromZip, a2, v51, v93);
            v55 = cf;
            cf = v54;
            if (v55)
            {
              CFRelease(v55);
            }

            v32 = v92;
            v56 = 1;
            if (v92 && v54)
            {
              v80 = v53;
              v81 = v51;
              v57 = v35;
              v58 = v37;
              v59 = v36;
              __p[0] = 0;
              __p[1] = &v95;
              v60 = CFPropertyListCreateWithData(alloc, v54, 0, 0, __p);
              v88.__r_.__value_.__r.__words[0] = v60;
              v61 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(__p);
              v62 = VinylFirmware::getFwMac(v61, v60);
              v63 = CFDataGetBytePtr(v62);
              v64 = CFDataGetBytePtr(a6);
              v65 = CFDataGetLength(v62);
              if (v65 >= CFDataGetLength(a6))
              {
                v66 = a6;
              }

              else
              {
                v66 = v62;
              }

              v67 = CFDataGetLength(v66);
              v68 = memcmp(v63, v64, v67);
              if (!v68)
              {
                *(this + 16) = CFDataCreateMutableCopy(alloc, 0, v32);
              }

              v36 = v59;
              if (v60)
              {
                CFRelease(v60);
              }

              v56 = 1;
              if (v68)
              {
                v37 = v58;
                v34 = v39;
                v69 = v57 == 999;
                v35 = (v57 + 1);
                v33 = v80;
                if (!v69)
                {
                  continue;
                }
              }
            }

            goto LABEL_61;
          }
        }

        ACFULogging::getLogInstance(v31);
        ACFULogging::handleMessage();
        v56 = 0;
      }

      else
      {
        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
        v56 = 0;
        v79 = 0;
        __str = 0;
      }

LABEL_61:
      v28 = v86;
      if (v86)
      {
        CFRelease(v86);
      }

      if ((v56 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_67;
    }
  }

  else
  {
    *(this + 16) = *(this + 15);
    v28 = AMSupportSafeRetain();
  }

  v79 = 0;
  __str = 0;
LABEL_67:
  if (*(this + 16))
  {
    ACFULogging::getLogInstance(v28);
    std::string::basic_string[abi:ne200100]<0>(&v87, "VinylFirmware");
    v70 = std::string::append(&v87, "::", 2uLL);
    v71 = *&v70->__r_.__value_.__l.__data_;
    v88.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v88.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v88, "setRecoveryFwInfo", 0x11uLL);
    v73 = *&v72->__r_.__value_.__l.__data_;
    v90 = v72->__r_.__value_.__r.__words[2];
    *__p = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    v74 = *(this + 16);
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v90) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage();
  }

LABEL_75:
  if (__str)
  {
    free(__str);
  }

  if (v79)
  {
    free(v79);
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  result = ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v95);
  v76 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F98CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, const void *a41)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a21);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a41);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v41 - 176));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v41 - 168));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v41 - 160));
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v41 - 152));
  _Unwind_Resume(a1);
}

VinylFirmware *VinylMainFirmwareCreate(const __CFData *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4)
{
  ACFULogging::getLogInstance(a1);
  v8 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v8);
  std::string::basic_string[abi:ne200100]<0>(&v18, "VinylFirmware");
  v9 = std::string::append(&v18, "::", 2uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v19, "VinylMainFirmwareCreate", 0x17uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v21 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v13 = operator new(0xC0uLL);
  VinylFirmware::VinylFirmware(v13, @"/update/main/firmware.der", @"/update/main/info.plist", @"/update/main/profile.bin", off_29F293308);
  v14 = VinylFirmware::setFwInfo(v13, a1, a2, a3);
  if (v14)
  {
    ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage();
    VinylFirmware::~VinylFirmware(v13);
    operator delete(v15);
    v13 = 0;
  }

  else
  {
    v16 = VinylFirmware::setRecoveryFwInfo(v13, a1, a2, a3, 1, a4);
  }

  ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage();
  return v13;
}

VinylFirmware *VinylFirmwareCreate(__CFData *a1, __CFData *a2, const __CFData *a3, const __CFData *a4, const __CFData *a5, const __CFData *a6)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  v12 = operator new(0xC0uLL);
  v13 = VinylFirmware::VinylFirmware(v12, a1, a2, a3, a4, a5, off_29F293368);
  if (a6)
  {
    v13 = VinylFirmware::setAuthPayload(v12, a6);
    if (v13)
    {
      ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage();
      VinylFirmware::~VinylFirmware(v12);
      operator delete(v15);
      v12 = 0;
    }
  }

  ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage();
  return v12;
}

uint64_t VinylFirmware::VinylFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  *a1 = *a5;
  *(a1 + 16) = v6;
  v7 = a5[2];
  v8 = a5[3];
  v9 = a5[5];
  *(a1 + 64) = a5[4];
  *(a1 + 80) = v9;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 112) = a4;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = "/usr/lib/libauthinstall.dylib";
  *(a1 + 184) = 0;
  AMSupportSafeRetain();
  v10 = *(a1 + 104);
  AMSupportSafeRetain();
  v11 = *(a1 + 112);
  AMSupportSafeRetain();
  *(a1 + 184) = dlopen(*(a1 + 176), 1);
  return a1;
}

uint64_t VinylFirmware::VinylFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFData *a5, uint64_t a6, _OWORD *a7)
{
  v9 = a7[1];
  *a1 = *a7;
  *(a1 + 16) = v9;
  v10 = a7[2];
  v11 = a7[3];
  v12 = a7[5];
  *(a1 + 64) = a7[4];
  *(a1 + 80) = v12;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
  *(a1 + 136) = a4;
  *(a1 + 144) = a5;
  *(a1 + 152) = a6;
  *(a1 + 176) = "/usr/lib/libauthinstall.dylib";
  *(a1 + 184) = 0;
  v20 = 0;
  AMSupportSafeRetain();
  v13 = *(a1 + 128);
  AMSupportSafeRetain();
  v14 = *(a1 + 136);
  AMSupportSafeRetain();
  v15 = *(a1 + 144);
  AMSupportSafeRetain();
  v16 = *(a1 + 152);
  AMSupportSafeRetain();
  v17 = *MEMORY[0x29EDB8ED8];
  error[0] = 0;
  error[1] = &v20;
  *(a1 + 168) = CFPropertyListCreateWithData(v17, a5, 0, 0, error);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(error);
  *(a1 + 184) = dlopen(*(a1 + 176), 1);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v20);
  return a1;
}

void sub_299F99314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(va);
  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(va1);
  _Unwind_Resume(a1);
}

void VinylFirmware::~VinylFirmware(VinylFirmware *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = *(this + 12);
  if (v2)
  {
    CFRelease(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 13);
  if (v3)
  {
    CFRelease(v3);
    *(this + 13) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
    *(this + 14) = 0;
  }

  v5 = *(this + 15);
  if (v5)
  {
    CFRelease(v5);
    *(this + 15) = 0;
  }

  v6 = *(this + 16);
  if (v6)
  {
    CFRelease(v6);
    *(this + 16) = 0;
  }

  v7 = *(this + 17);
  if (v7)
  {
    CFRelease(v7);
    *(this + 17) = 0;
  }

  v8 = *(this + 18);
  if (v8)
  {
    CFRelease(v8);
    *(this + 18) = 0;
  }

  v9 = *(this + 19);
  if (v9)
  {
    CFRelease(v9);
    *(this + 19) = 0;
  }

  v10 = *(this + 21);
  if (v10)
  {
    CFRelease(v10);
    *(this + 21) = 0;
  }

  v11 = *(this + 20);
  if (v11)
  {
    CFRelease(v11);
    *(this + 20) = 0;
  }

  v12 = *(this + 23);
  if (v12)
  {
    dlclose(v12);
    *(this + 23) = 0;
  }
}

ACFULogging *VinylFirmware::getFWSrcPath(VinylFirmware *this, const __CFData *a2, const __CFData *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v5 = malloc(0x41uLL);
  if (!v5)
  {
    VinylFirmware::getFWSrcPath(0);
    v30 = 0;
    goto LABEL_37;
  }

  v6 = v5;
  if (!a2 || !a3)
  {
    VinylFirmware::getFWSrcPath(v5);
LABEL_41:
    v30 = 0;
    goto LABEL_36;
  }

  MutableCopy = CFDataCreateMutableCopy(0, 0, a2);
  ACFULogging::getLogInstance(MutableCopy);
  if (!MutableCopy)
  {
    ACFULogging::handleMessage();
    goto LABEL_41;
  }

  std::string::basic_string[abi:ne200100]<0>(&v37, "VinylFirmware");
  v8 = std::string::append(&v37, "::", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v38, "getFWSrcPath", 0xCuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v40 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
  ACFULogging::getLogInstance(v14);
  std::string::basic_string[abi:ne200100]<0>(&v37, "VinylFirmware");
  v15 = std::string::append(&v37, "::", 2uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v38, "getFWSrcPath", 0xCuLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v40 = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  CFDataGetBytePtr(MutableCopy);
  CFDataGetLength(MutableCopy);
  v19 = AMSupportDigestSha256();
  if (v19)
  {
    VinylFirmware::getFWSrcPath(v19);
  }

  else
  {
    v20 = CFDataCreate(0, bytes, 32);
    ACFULogging::getLogInstance(v20);
    if (v20)
    {
      std::string::basic_string[abi:ne200100]<0>(&v37, "VinylFirmware");
      v21 = std::string::append(&v37, "::", 2uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v38, "getFWSrcPath", 0xCuLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v40 = v23->__r_.__value_.__r.__words[2];
      *__p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v25 = bytes;
      v26 = 65;
      v27 = v6;
      do
      {
        v28 = *v25++;
        v29 = snprintf(v27, v26, "%02x", v28);
        v27 += 2;
        v26 -= 2;
      }

      while (v26 != 1);
      v6[64] = 0;
      ACFULogging::getLogInstance(v29);
      ACFULogging::handleMessage();
      v30 = CFStringCreateWithCString(0, v6, 0x8000100u);
      ACFULogging::getLogInstance(v30);
      if (v30)
      {
        std::string::basic_string[abi:ne200100]<0>(&v37, "VinylFirmware");
        v31 = std::string::append(&v37, "::", 2uLL);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v38.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v38.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v38, "getFWSrcPath", 0xCuLL);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v40 = v33->__r_.__value_.__r.__words[2];
        *__p = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        ACFULogging::handleMessage();
      }

      CFRelease(v20);
      goto LABEL_35;
    }

    ACFULogging::handleMessage();
  }

  v30 = 0;
LABEL_35:
  CFRelease(MutableCopy);
LABEL_36:
  free(v6);
LABEL_37:
  v35 = *MEMORY[0x29EDCA608];
  return v30;
}

void sub_299F99970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef VinylFirmware::getFileDataFromZip(VinylFirmware *this, const __CFData *a2, const __CFString *a3, const __CFString *a4)
{
  v32 = 0;
  ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
  v7 = std::string::append(&v28, "::", 2uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v29, "getFileDataFromZip", 0x12uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v31 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v11);
  std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
  v12 = std::string::append(&v28, "::", 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v29, "getFileDataFromZip", 0x12uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v31 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v16 = "%s::%s: invalid params passed\n";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_28;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    v16 = "%s::%s: Unable to allocate memory for fullPath:\n";
LABEL_28:
    VinylFirmware::getFileDataFromZip(v16);
    return 0;
  }

  v18 = Mutable;
  CFStringAppend(Mutable, a3);
  CFStringAppend(v18, a4);
  ACFULogging::getLogInstance(v19);
  std::string::basic_string[abi:ne200100]<0>(&v28, "VinylFirmware");
  v20 = std::string::append(&v28, "::", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v29, "getFileDataFromZip", 0x12uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v31 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v24 = eUICCFwReaderOpen(a2);
  v25 = v24;
  if (!v24)
  {
    v27 = "%s::%s: Unable to unzip the fwdata:\n";
LABEL_31:
    VinylFirmware::getFileDataFromZip(v27);
    goto LABEL_25;
  }

  if (eUICCFwReaderFindAndCopyFileData(v24, v18, &v32))
  {
    v27 = "%s::%s: Unable to copy the firmware:\n";
    goto LABEL_31;
  }

LABEL_25:
  eUICCFwReaderClose(v25);
  CFRelease(v18);
  return v32;
}

void sub_299F99CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFData const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylFirmware::createIm4p(ACFULogging *a1, ACFULogging *a2, uint64_t a3, uint64_t *a4)
{
  v95 = *MEMORY[0x29EDCA608];
  v92 = 0;
  v91 = 0;
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  v6 = MEMORY[0x29EDB9000];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  values = Mutable;
  v94 = CFArrayCreateMutable(0, 0, v6);
  theArray = v94;
  v8 = 1;
  v9 = Mutable;
  if (!a2 || !a3)
  {
    goto LABEL_100;
  }

  v10 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_82;
  }

  v8 = 2;
  if (!Mutable)
  {
LABEL_100:
    v10 = 0;
    v11 = 0;
    goto LABEL_82;
  }

  v10 = 0;
  v11 = 0;
  if (!v94)
  {
    goto LABEL_82;
  }

  v12 = CFArrayCreate(0, &values, 2, MEMORY[0x29EDB9000]);
  *(a3 + 48) = v12;
  if (!v12)
  {
    goto LABEL_107;
  }

  v88[0] = a1;
  v88[1] = a3;
  v13 = eUICCFwReaderStart(a2, VinylFirmwareReaderInfoPlistCallback, v88);
  v8 = v13;
  if (v13)
  {
    VinylFirmware::createIm4p(v13);
LABEL_107:
    v11 = 0;
    v10 = 0;
    goto LABEL_83;
  }

  if (!*(a3 + 56))
  {
    VinylFirmware::createIm4p(v13);
LABEL_106:
    v8 = 0;
    goto LABEL_107;
  }

  v8 = eUICCFwReaderStart(a2, VinylFirmwareReaderCallback, v88);
  ACFULogging::getLogInstance(v8);
  if (v8)
  {
    ACFULogging::handleMessage();
    goto LABEL_107;
  }

  std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
  v14 = std::string::append(&v84, "::", 2uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v85, "createIm4p", 0xAuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v87 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = *a3;
  v19 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v87) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v19);
  std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
  v20 = std::string::append(&v84, "::", 2uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v85, "createIm4p", 0xAuLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v87 = v22->__r_.__value_.__r.__words[2];
  *__p = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = *(a3 + 8);
  v25 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v87) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v25);
  std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
  v26 = std::string::append(&v84, "::", 2uLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v85.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v85.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v85, "createIm4p", 0xAuLL);
  v29 = Mutable;
  v30 = *&v28->__r_.__value_.__l.__data_;
  v87 = v28->__r_.__value_.__r.__words[2];
  *__p = v30;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v31 = *(a3 + 16);
  v32 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v87) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 24))
  {
    ACFULogging::getLogInstance(v32);
    std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
    v33 = std::string::append(&v84, "::", 2uLL);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v85, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v36 = *&v35->__r_.__value_.__l.__data_;
    v87 = v35->__r_.__value_.__r.__words[2];
    *__p = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = *(a3 + 24);
    v32 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 32))
  {
    ACFULogging::getLogInstance(v32);
    std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
    v38 = std::string::append(&v84, "::", 2uLL);
    v39 = *&v38->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    v40 = std::string::append(&v85, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v41 = *&v40->__r_.__value_.__l.__data_;
    v87 = v40->__r_.__value_.__r.__words[2];
    *__p = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = *(a3 + 32);
    v32 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 40))
  {
    ACFULogging::getLogInstance(v32);
    std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
    v43 = std::string::append(&v84, "::", 2uLL);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = std::string::append(&v85, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v46 = *&v45->__r_.__value_.__l.__data_;
    v87 = v45->__r_.__value_.__r.__words[2];
    *__p = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = *(a3 + 40);
    v32 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 48))
  {
    ACFULogging::getLogInstance(v32);
    std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
    v48 = std::string::append(&v84, "::", 2uLL);
    v49 = *&v48->__r_.__value_.__l.__data_;
    v85.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v85.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    v50 = std::string::append(&v85, "createIm4p", 0xAuLL);
    v29 = Mutable;
    v51 = *&v50->__r_.__value_.__l.__data_;
    v87 = v50->__r_.__value_.__r.__words[2];
    *__p = v51;
    v50->__r_.__value_.__l.__size_ = 0;
    v50->__r_.__value_.__r.__words[2] = 0;
    v50->__r_.__value_.__r.__words[0] = 0;
    v52 = *(a3 + 48);
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(v87) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  Count = CFArrayGetCount(v29);
  v54 = Count;
  if (Count <= 0)
  {
    VinylFirmware::createIm4p(Count);
    goto LABEL_106;
  }

  v55 = CFArrayGetCount(theArray);
  if (v54 != v55)
  {
    VinylFirmware::createIm4p(v55);
    goto LABEL_106;
  }

  v11 = malloc(8 * v54);
  v56 = malloc(8 * v54);
  v10 = v56;
  if (v11 && v56)
  {
    v96.location = 0;
    v96.length = v54;
    CFArrayGetValues(Mutable, v96, v11);
    v97.location = 0;
    v97.length = v54;
    CFArrayGetValues(theArray, v97, v10);
    DEREncoderCreate();
    DEREncoderCreate();
    v57 = 0;
    do
    {
      DEREncoderCreate();
      CFDataGetBytePtr(v11[v57]);
      CFDataGetLength(v11[v57]);
      v58 = DEREncoderAddData();
      if (v58)
      {
        VinylFirmware::createIm4p(v58);
        goto LABEL_81;
      }

      CFDataGetBytePtr(v10[v57]);
      CFDataGetLength(v10[v57]);
      v59 = DEREncoderAddData();
      if (v59)
      {
        VinylFirmware::createIm4p(v59);
        goto LABEL_81;
      }

      v60 = DEREncoderAddSequenceFromEncoder();
      if (v60)
      {
        VinylFirmware::createIm4p(v60);
        goto LABEL_81;
      }

      DEREncoderDestroy();
      ++v57;
    }

    while (v54 != v57);
    v61 = DEREncoderAddSequenceFromEncoder();
    if (v61)
    {
      VinylFirmware::createIm4p(v61);
    }

    else
    {
      DEREncoderDestroy();
      EncodedBuffer = DEREncoderCreateEncodedBuffer();
      if (EncodedBuffer)
      {
        VinylFirmware::createIm4p(EncodedBuffer);
      }

      else
      {
        v63 = CFDataCreateWithBytesNoCopy(0, v92, v91, *MEMORY[0x29EDB8EE0]);
        if (!v63)
        {
          v8 = 2;
          goto LABEL_82;
        }

        if (CFStringGetCString(*a3, buffer, 5, 0x8000100u))
        {
          CString = CFStringGetCString(@"1.0", v89, 5, 0x8000100u);
          if (CString)
          {
            ACFULogging::getLogInstance(CString);
            std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
            v65 = std::string::append(&v84, "::", 2uLL);
            v66 = *&v65->__r_.__value_.__l.__data_;
            v85.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
            *&v85.__r_.__value_.__l.__data_ = v66;
            v65->__r_.__value_.__l.__size_ = 0;
            v65->__r_.__value_.__r.__words[2] = 0;
            v65->__r_.__value_.__r.__words[0] = 0;
            v67 = std::string::append(&v85, "createIm4p", 0xAuLL);
            v68 = *&v67->__r_.__value_.__l.__data_;
            v87 = v67->__r_.__value_.__r.__words[2];
            *__p = v68;
            v67->__r_.__value_.__l.__size_ = 0;
            v67->__r_.__value_.__r.__words[2] = 0;
            v67->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType();
            if (SHIBYTE(v87) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }

            v69 = *(a1 + 23);
            if (v69)
            {
              v70 = dlsym(v69, "AMAuthInstallApImg4CreatePayload");
              v71 = dlerror();
              if (!v71 && v70)
              {
                v8 = (v70)(buffer, v89, v63, 0, 0, a4);
                ACFULogging::getLogInstance(v8);
                if (!v8)
                {
                  std::string::basic_string[abi:ne200100]<0>(&v84, "VinylFirmware");
                  v72 = std::string::append(&v84, "::", 2uLL);
                  v73 = *&v72->__r_.__value_.__l.__data_;
                  v85.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
                  *&v85.__r_.__value_.__l.__data_ = v73;
                  v72->__r_.__value_.__l.__size_ = 0;
                  v72->__r_.__value_.__r.__words[2] = 0;
                  v72->__r_.__value_.__r.__words[0] = 0;
                  v74 = std::string::append(&v85, "createIm4p", 0xAuLL);
                  v75 = *&v74->__r_.__value_.__l.__data_;
                  v87 = v74->__r_.__value_.__r.__words[2];
                  *__p = v75;
                  v74->__r_.__value_.__l.__size_ = 0;
                  v74->__r_.__value_.__r.__words[2] = 0;
                  v74->__r_.__value_.__r.__words[0] = 0;
                  v76 = *a4;
                  ACFULogging::handleMessageCFType();
                  VinylFirmware::createIm4p(__p, &v84, &v85);
LABEL_81:
                  v8 = 0;
                  goto LABEL_82;
                }

                ACFULogging::handleMessage();
LABEL_82:
                if (!v9)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }

              VinylFirmware::createIm4p(v71);
            }

            else
            {
              VinylFirmware::createIm4p(0);
            }

            v8 = 99;
            goto LABEL_82;
          }
        }
      }
    }

    v8 = 3;
    goto LABEL_82;
  }

  VinylFirmware::createIm4p(v56);
  v8 = 0;
LABEL_83:
  CFRelease(v9);
LABEL_84:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v11)
  {
    free(v11);
  }

  if (v10)
  {
    free(v10);
  }

  DEREncoderDestroy();
  DEREncoderDestroy();
  v77 = *(a3 + 48);
  if (v77)
  {
    CFRelease(v77);
    *(a3 + 48) = 0;
  }

  v78 = *(a3 + 56);
  if (v78)
  {
    CFRelease(v78);
    *(a3 + 56) = 0;
  }

  if (v92)
  {
    free(v92);
  }

  v79 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_299F9A968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

const void *VinylFirmware::getFwMac(VinylFirmware *this, const __CFDictionary *a2)
{
  if (a2 && (v3 = CFDictionaryGetTypeID(), this = CFGetTypeID(a2), v3 == this))
  {
    Value = CFDictionaryGetValue(a2, @"com.apple.EmbeddedSoftwareRestore.eUICC.firmwareMac");
    if (Value)
    {
      TypeID = CFDataGetTypeID();
      Length = CFGetTypeID(Value);
      if (TypeID == Length && (Length = CFDataGetLength(Value), Length == 8))
      {
        ACFULogging::getLogInstance(8);
        std::string::basic_string[abi:ne200100]<0>(&v12, "VinylFirmware");
        v7 = std::string::append(&v12, "::", 2uLL);
        v8 = *&v7->__r_.__value_.__l.__data_;
        v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
        *&v13.__r_.__value_.__l.__data_ = v8;
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        v9 = std::string::append(&v13, "getFwMac", 8uLL);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v15 = v9->__r_.__value_.__r.__words[2];
        v14 = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType();
        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14);
        }

        if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v13.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        VinylFirmware::getFwMac(Length);
      }
    }

    else
    {
      VinylFirmware::getFwMac(0);
    }
  }

  else
  {
    VinylFirmware::getFwMac(this);
    return 0;
  }

  return Value;
}

void sub_299F9ABB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylFirmware::getRecoveryFwData(VinylFirmware *this)
{
  ACFULogging::getLogInstance(this);
  std::string::basic_string[abi:ne200100]<0>(&v14, "VinylFirmware");
  v2 = std::string::append(&v14, "::", 2uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v15, "getRecoveryFwData", 0x11uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v17 = v4->__r_.__value_.__r.__words[2];
  v16 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(this + 16);
  v7 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  ACFULogging::getLogInstance(v7);
  std::string::basic_string[abi:ne200100]<0>(&v14, "VinylFirmware");
  v8 = std::string::append(&v14, "::", 2uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v15, "getRecoveryFwData", 0x11uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v17 = v10->__r_.__value_.__r.__words[2];
  v16 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(this + 15);
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return *(this + 16);
}

void sub_299F9ADB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylFirmwareReaderInfoPlistCallback(VinylFirmware *a1, CFStringRef theString, ACFULogging *a3)
{
  if (a1)
  {
    v6 = *(a1 + 1);

    return VinylFirmware::fwReaderInfoPlistCallback(a1, v6, theString, a3);
  }

  else
  {
    VinylFirmwareReaderInfoPlistCallback(a1);
    return 0;
  }
}

uint64_t VinylFirmwareReaderCallback(VinylFirmware **a1, CFStringRef theString, ACFULogging *a3)
{
  if (a1)
  {
    v6 = a1[1];
    v7 = *a1;

    return VinylFirmware::fwReaderCallback(v7, v6, theString, a3);
  }

  else
  {
    VinylFirmwareReaderCallback(a1);
    return 0;
  }
}

CFStringRef VinylFirmware::getPathComponent(VinylFirmware *this, const __CFString *a2)
{
  if (!a2)
  {
    VinylFirmware::getPathComponent(this);
    return 0;
  }

  v2 = *MEMORY[0x29EDB8ED8];
  v3 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], a2, kCFURLPOSIXPathStyle, 0);
  if (!v3)
  {
    VinylFirmware::getPathComponent(0);
    return 0;
  }

  v4 = v3;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(v2, v3);
  if (!PathComponent)
  {
    VinylFirmware::getPathComponent(v4);
    return 0;
  }

  v6 = PathComponent;
  v7 = CFURLGetString(PathComponent);
  Copy = CFStringCreateCopy(v2, v7);
  if (!Copy)
  {
    VinylFirmware::getPathComponent(0);
  }

  CFRelease(v4);
  CFRelease(v6);
  return Copy;
}

BOOL VinylFirmware::checkVinylFwLdrVerLegacy(VinylFirmware *this, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count <= 0)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(Count);
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(0);
    return 1;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
  if (!ArrayBySeparatingStrings)
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(0);
    return 1;
  }

  v6 = ArrayBySeparatingStrings;
  v7 = CFArrayGetCount(ArrayBySeparatingStrings);
  if (v7 == 2)
  {
    v8 = CFArrayGetValueAtIndex(v6, 0);
    IntValue = CFStringGetIntValue(v8);
    v10 = CFArrayGetValueAtIndex(v6, 1);
    v11 = ((CFStringGetIntValue(v10) | (IntValue << 8)) & 0x7FFFu) < 0x301;
  }

  else
  {
    VinylFirmware::checkVinylFwLdrVerLegacy(v7);
    v11 = 1;
  }

  CFRelease(v6);
  return v11;
}

const __CFData *VinylFirmware::fwLdrVerEqual(VinylFirmware *this, CFArrayRef theArray, const __CFData *a3)
{
  if (!theArray || (this = CFArrayGetCount(theArray), this <= 0))
  {
    VinylFirmware::fwLdrVerEqual(this);
    return 0;
  }

  if (a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
      if (ArrayBySeparatingStrings)
      {
        v7 = ArrayBySeparatingStrings;
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        if (Count == 2)
        {
          BytePtr = CFDataGetBytePtr(a3);
          a3 = BytePtr;
          if (!BytePtr)
          {
            VinylFirmware::fwLdrVerEqual(0);
            goto LABEL_17;
          }

          v10 = *BytePtr;
          v11 = CFArrayGetValueAtIndex(v7, 0);
          if (CFStringGetIntValue(v11) == v10)
          {
            v12 = *(a3 + 1);
            v13 = CFArrayGetValueAtIndex(v7, 1);
            a3 = (CFStringGetIntValue(v13) == v12);
LABEL_17:
            CFRelease(v7);
            return a3;
          }
        }

        else
        {
          VinylFirmware::fwLdrVerEqual(Count);
        }

        a3 = 0;
        goto LABEL_17;
      }

      VinylFirmware::fwLdrVerEqual(0);
    }

    else
    {
      VinylFirmware::fwLdrVerEqual(0);
    }

    return 0;
  }

  VinylFirmware::fwLdrVerEqual(this);
  return a3;
}

uint64_t VinylFirmware::generateMeasurement@<X0>(CFDataRef *this@<X0>, const void **a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  *a2 = 0;
  CFDataGetBytePtr(this[17]);
  CFDataGetLength(this[17]);
  v4 = AMSupportDigestSha256();
  if (v4)
  {
    ACFULogging::getLogInstance(v4);
    result = ACFULogging::handleMessage();
  }

  else
  {
    __p[0] = CFDataCreate(0, bytes, 32);
    v5 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, __p);
    ACFULogging::getLogInstance(v5);
    std::string::basic_string[abi:ne200100]<0>(&v14, "VinylFirmware");
    v6 = std::string::append(&v14, "::", 2uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v15, "generateMeasurement", 0x13uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v17 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *a2;
    v11 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    ACFULogging::getLogInstance(v11);
    result = ACFULogging::handleMessage();
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F9B30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v30);
  _Unwind_Resume(a1);
}

void VinylFirmware::getFirmwareAPDUs(VinylFirmware **this@<X0>, uint64_t a2@<X8>)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v4 = this[15];

  VinylFirmware::getFirmwareAPDUs(v4, a2);
}

void VinylFirmware::getFirmwareAPDUs(VinylFirmware *this@<X0>, uint64_t a2@<X8>)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v31 = 0uLL;
  v32 = 0;
  v28[0] = CFDataGetMutableBytePtr(this);
  v28[1] = CFDataGetLength(this);
  v27 = 0;
  v5 = DERParseSequence(v28, 2u, &eUICC::DER::vinylFirmwareImageItemSpec, v29, 0x20uLL);
  if (v5 || (v5 = DERDecodeSeqInit(&v30, &v27, v26), v5))
  {
    ACFULogging::getLogInstance(v5);
    v22 = ACFULogging::handleMessage();
  }

  else
  {
    while (1)
    {
      v6 = DERDecodeSeqNext(v26, &v24);
      if (v6 == 1)
      {
        ACFULogging::getLogInstance(v6);
        ACFULogging::handleMessage();
        *a2 = v31;
        *(a2 + 16) = v32;
        return;
      }

      if (v6)
      {
        break;
      }

      v6 = DERParseSequenceContent(&v25, 3u, &eUICC::DER::vinylFirmwareImageAPDUItemSpec, v23, 0x30uLL);
      if (v6)
      {
        break;
      }

      v7 = v23[0];
      v8 = v23[1];
      v10 = v23[2];
      v9 = v23[3];
      v11 = *(&v31 + 1);
      if (*(&v31 + 1) >= v32)
      {
        v13 = (*(&v31 + 1) - v31) >> 5;
        v14 = v13 + 1;
        if ((v13 + 1) >> 59)
        {
          std::vector<char *>::__throw_length_error[abi:ne200100]();
        }

        v15 = &v32[-v31];
        if (&v32[-v31] >> 4 > v14)
        {
          v14 = v15 >> 4;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFE0)
        {
          v16 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          v17 = std::__allocate_at_least[abi:ne200100]<std::allocator<VinylFirmware::APDU>>(&v31, v16);
        }

        else
        {
          v17 = 0;
        }

        v18 = &v17[32 * v13];
        v19 = &v17[32 * v16];
        *v18 = v7;
        *(v18 + 1) = v8;
        *(v18 + 2) = v10;
        *(v18 + 3) = v9;
        v12 = v18 + 32;
        v20 = &v18[-(*(&v31 + 1) - v31)];
        memcpy(v20, v31, *(&v31 + 1) - v31);
        v21 = v31;
        *&v31 = v20;
        *(&v31 + 1) = v12;
        v32 = v19;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        **(&v31 + 1) = v23[0];
        v11[1] = v8;
        v12 = v11 + 4;
        v11[2] = v10;
        v11[3] = v9;
      }

      *(&v31 + 1) = v12;
    }

    ACFULogging::getLogInstance(v6);
    v22 = ACFULogging::handleMessage();
  }

  ACFULogging::getLogInstance(v22);
  ACFULogging::handleMessage();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v31)
  {
    *(&v31 + 1) = v31;
    operator delete(v31);
  }
}

void sub_299F9B66C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *VinylFirmware::getVersionString@<X0>(CFMutableDataRef *this@<X0>, void *a2@<X8>)
{
  v9[0] = CFDataGetMutableBytePtr(this[15]);
  v9[1] = CFDataGetLength(this[15]);
  if (!DERParseSequence(v9, 2u, &eUICC::DER::vinylFirmwareImageItemSpec, v12, 0x20uLL))
  {
    result = DERParseSequenceContent(v12, 3u, &eUICC::DER::vinylFirmwareImageHeaderItemSpec, &__src, 0x30uLL);
    if (!result)
    {
      v5 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v6 = __src;
      if (__len >= 0x17)
      {
        if ((__len | 7) == 0x17)
        {
          v7 = 25;
        }

        else
        {
          v7 = (__len | 7) + 1;
        }

        v8 = operator new(v7);
        a2[1] = v5;
        a2[2] = v7 | 0x8000000000000000;
        *a2 = v8;
        a2 = v8;
      }

      else
      {
        *(a2 + 23) = __len;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      result = memmove(a2, v6, v5);
LABEL_12:
      *(a2 + v5) = 0;
      return result;
    }
  }

  return VinylFirmware::getVersionString(a2);
}

void VinylFirmware::bootloaderVersion(VinylFirmware *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  std::to_string(&v11, this);
  v5 = std::string::append(&v11, ".", 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
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

  v9 = std::string::append(&v12, p_p, size);
  *a3 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_299F9B88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
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

void VinylFirmware::generateMeasurementDict(VinylFirmware *this@<X0>, const __CFData *a2@<X1>, const void **a3@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v27 = 0;
  v28 = 0;
  *a3 = 0;
  __p[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = ctu::cf::CFSharedRef<__CFDictionary>::operator=(a3, __p);
  if (!*a3 || (CFDataGetBytePtr(this), CFDataGetLength(this), v7 = AMSupportDigestSha256(), v7))
  {
    ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage();
    goto LABEL_21;
  }

  v8 = CFDataCreate(0, bytes, 32);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = Mutable;
  v28 = Mutable;
  if (v8 && Mutable)
  {
    CFDictionarySetValue(Mutable, @"Digest", v8);
    CFDictionarySetValue(*a3, @"eUICC,Gold", v10);
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    v11 = AMSupportDigestSha256();
    if (!v11)
    {
      v12 = CFDataCreate(0, bytes, 32);
      v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v14 = v13;
      v27 = v13;
      if (v13 && v12)
      {
        CFDictionarySetValue(v13, @"Digest", v12);
        CFDictionarySetValue(*a3, @"eUICC,Main", v14);
        ACFULogging::getLogInstance(v15);
        std::string::basic_string[abi:ne200100]<0>(&v23, "VinylFirmware");
        v16 = std::string::append(&v23, "::", 2uLL);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v24.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v24.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        v18 = std::string::append(&v24, "generateMeasurementDict", 0x17uLL);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v26 = v18->__r_.__value_.__r.__words[2];
        *__p = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v20 = *a3;
        v21 = ACFULogging::handleMessageCFType();
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        ACFULogging::getLogInstance(v21);
        ACFULogging::handleMessage();
      }

      else
      {
        ACFULogging::getLogInstance(v13);
        ACFULogging::handleMessage();
      }

      goto LABEL_15;
    }

    ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage();
LABEL_26:
    v14 = 0;
    v12 = 0;
LABEL_15:
    CFRelease(v8);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v14)
    {
      CFRelease(v14);
      v10 = v28;
    }

    goto LABEL_19;
  }

  ACFULogging::getLogInstance(Mutable);
  ACFULogging::handleMessage();
  if (v8)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_21:
  v22 = *MEMORY[0x29EDCA608];
}

void sub_299F9BC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFDictionary>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylFirmware::generateMeasurement@<X0>(VinylFirmware *this@<X0>, const void **a2@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  *a2 = 0;
  CFDataGetBytePtr(this);
  CFDataGetLength(this);
  v5 = AMSupportDigestSha256();
  if (v5)
  {
    ACFULogging::getLogInstance(v5);
    result = ACFULogging::handleMessage();
  }

  else
  {
    __p[0] = CFDataCreate(0, bytes, 32);
    v6 = ctu::cf::CFSharedRef<__CFData const>::operator=(a2, __p);
    ACFULogging::getLogInstance(v6);
    std::string::basic_string[abi:ne200100]<0>(&v15, "VinylFirmware");
    v7 = std::string::append(&v15, "::", 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v16, "generateMeasurement", 0x13uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v18 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = *a2;
    v12 = ACFULogging::handleMessageCFType();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    ACFULogging::getLogInstance(v12);
    result = ACFULogging::handleMessage();
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299F9BF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(v30);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<VinylFirmware::APDU>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(32 * a2);
}

void VinylEURCommunication::statusCallback(char a1, uint64_t a2, int a3)
{
  if ((*gBBULogMaskGet() & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(0, 0, "VinylEURCommunication", "", "transport %p, status: %#x\n", v5, v6, v7, a1);
  }

  if (a3 == 1)
  {
    v8 = *MEMORY[0x29EDB8ED8];
    Controller = TelephonyBasebandCreateController();
    v10 = TelephonyBasebandResetModem();
    if ((*gBBULogMaskGet() & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v14 = "failure";
      if (v10)
      {
        v14 = "success";
      }

      _BBULog(2, 0, "VinylEURCommunication", "", "Resetting modem: %s\n", v11, v12, v13, v14);
    }

    if (Controller)
    {
      CFRelease(Controller);
    }
  }
}

void sub_299F9C0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylEURCommunication::freeTransportSync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 1;
  }

  if (v2 == a2)
  {
    v8 = TelephonyUtilTransportFree();
    v9 = *(a1 + 32);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylEURCommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke;
    block[3] = &__block_descriptor_tmp_1;
    v13 = v8;
    block[4] = a1;
    block[5] = a2;
    dispatch_sync(v9, block);
  }

  else
  {
    v8 = 0;
    if ((*gBBULogMaskGet() & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      v11 = *(a1 + 40);
      _BBULog(0, 0, "VinylEURCommunication", "", "call with %p different from fTransportCreated(%p)\n", v5, v6, v7, a2);
      return 0;
    }
  }

  return v8;
}

uint64_t ___ZN21VinylEURCommunication17freeTransportSyncEP26TelephonyUtilTransport_tag_block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    *(*(result + 32) + 40) = 0;
  }

  else
  {
    result = gBBULogMaskGet();
    if ((*result & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      return _BBULog(0, 0, "VinylEURCommunication", "", "fail to free transport: %p\n", v2, v3, v4, *(v1 + 40));
    }
  }

  return result;
}

uint64_t VinylEURCommunication::createTransport(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 3;
  if (capabilities::diag::preferredInterface(a1) == 8)
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2000000000;
    v34 = 0;
    TelephonyBasebandPCITransportInitParameters();
    if (*(a1 + 40))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Eureka/VinylEURCommunication.cpp", 0x59u, "Assertion failure(nullptr == fTransportCreated && Telephony transport error.)", v15, v16, v17, v18);
    }

    v4 = *(a1 + 32);
    v26[0] = MEMORY[0x29EDCA5F8];
    v26[1] = 0x40000000;
    v26[2] = ___ZN21VinylEURCommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke;
    v26[3] = &__block_descriptor_tmp_11;
    v26[4] = a2;
    *(&v27 + 1) = v4;
    *&v28 = v26;
    if ((*gBBULogMaskGet() & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(0, 0, "VinylEURCommunication", "", "Creating transport:%p \n", v5, v6, v7, a2);
    }

    LODWORD(v27) = 2;
    DWORD2(v28) = 2000;
    *(a1 + 48) = 2;
    if ((*gBBULogMaskGet() & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(0, 0, "VinylEURCommunication", "", "Creating with timeout set to %u ms\n", v8, v9, v10, SBYTE8(v28));
    }

    v11 = *(a1 + 24);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN21VinylEURCommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2;
    block[3] = &unk_29F293410;
    block[6] = a1;
    block[7] = a2;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v20 = v27;
    v21 = v28;
    block[4] = v33;
    block[5] = &v35;
    dispatch_sync(v11, block);
    _Block_object_dispose(v33, 8);
  }

  v12 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  return v12;
}

void sub_299F9C4F0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

_BYTE *___ZN21VinylEURCommunication15createTransportEP26TelephonyUtilTransport_tag_block_invoke_2(void *a1)
{
  v2 = a1[6];
  *(v2 + 40) = a1[7];
  *(*(a1[4] + 8) + 24) = TelephonyBasebandPCITransportCreate();
  result = gBBULogMaskGet();
  if ((*result & 1) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v7 = "success";
    }

    else
    {
      v7 = "failure";
    }

    result = _BBULog(0, 0, "VinylEURCommunication", "", " TelephonyBasebandPCITransportCreate returns: %s\n", v4, v5, v6, v7);
  }

  if (*(*(a1[4] + 8) + 24))
  {
    if (!*(v2 + 40))
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Communication/Eureka/VinylEURCommunication.cpp", 0x76u, "Assertion failure(nullptr != fTransportCreated && Telephony Util transport error!\\n)", v10, v11, v12, v13);
    }

    v8 = 0;
  }

  else
  {
    result = VinylEURCommunication::freeTransportSync(v2, a1[7]);
    v8 = 3;
  }

  *(*(a1[5] + 8) + 24) = v8;
  return result;
}