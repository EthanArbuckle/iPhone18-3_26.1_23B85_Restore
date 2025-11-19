BOOL ACFUFTABFile::isCacheValid(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v3 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v3)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  if (!BytePtr)
  {
    ACFUFTABFile::isCacheValid(0);
    v8 = 0;
    goto LABEL_23;
  }

  v6 = *(BytePtr + 10);
  CFRelease(v4);
  if (*(this + 7) != v6)
  {
    ACFUFTABFile::isCacheValid(v7);
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = 0;
  v36 = v6;
  v9 = 48;
  v10 = 1;
  do
  {
    v11 = ACFUDataContainer::copyData(*(this + 1), v9, 0x10uLL);
    if (!v11)
    {
      ACFUFTABFile::isCacheValid(0);
      return 0;
    }

    v4 = v11;
    v12 = CFDataGetBytePtr(v11);
    v38 = 4;
    LODWORD(__p) = *v12;
    BYTE4(__p) = 0;
    v13 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(this + 40, &__p);
    if ((this + 48) == v13)
    {
      LogInstance = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cache does not have entry for file %s. Cache is invalid\n", v21, v22, v23, v24, v25, "ACFUFTABFile");
    }

    else
    {
      v14 = v13 + 15;
      v15 = v12 + 4;
      if (v13[15] == *(v12 + 1))
      {
        v16 = v13 + 14;
        v18 = *(v12 + 2);
        v17 = v12 + 8;
        if (v13[14] == v18)
        {
          CFRelease(v4);
          v4 = 0;
          v19 = 1;
          goto LABEL_12;
        }

        v26 = ACFULogging::getLogInstance(v13);
        v15 = v17;
        v32 = "%s::%s: cache does not hold correct size for file %s. Cache size: %d. FTAB size: %d. Cache is invalid\n";
        v14 = v16;
      }

      else
      {
        v26 = ACFULogging::getLogInstance(v13);
        v32 = "%s::%s: cache does not hold correct offset for file %s. Cache offset: %d. FTAB offset: %d. Cache is invalid\n";
      }

      v34 = *v14;
      v35 = *v15;
      ACFULogging::handleMessage(v26, 2u, v32, v27, v28, v29, v30, v31, "ACFUFTABFile");
    }

    v19 = 0;
LABEL_12:
    if (v38 < 0)
    {
      operator delete(__p);
    }

    if ((v19 & 1) == 0)
    {
      break;
    }

    v8 = v10 >= v36;
    v9 += 16;
    ++v10;
    LODWORD(v6) = v6 - 1;
  }

  while (v6);
  if (!v4)
  {
    return v8;
  }

LABEL_23:
  CFRelease(v4);
  return v8;
}

void sub_2984C70F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateCache(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
  v9 = (a2 + 23);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 == 4)
  {
    v11 = a1 + 48;
    if (!(a4 | a3))
    {
      LogInstance = ACFULogging::getLogInstance(v9);
      if (*(a2 + 23) < 0)
      {
        v27 = *a2;
      }

      if (v11 == v8)
      {
        ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: attempting to delete file from cache that does not exist. File: %s\n", v22, v23, v24, v25, v26, "ACFUFTABFile");
      }

      else
      {
        ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: removing file from FTAB cache. File: %s\n", v22, v23, v24, v25, v26, "ACFUFTABFile");
        std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>((a1 + 40), a2);
      }

      return 1;
    }

    if (v11 != v8)
    {
      v12 = ACFULogging::getLogInstance(v9);
      if (*(a2 + 23) < 0)
      {
        v18 = *a2;
      }

      ACFULogging::handleMessage(v12, 4u, "%s::%s: ftab cache entry updated. File: %s, offset: %u, size: %u\n", v13, v14, v15, v16, v17, "ACFUFTABFile");
      if (a3)
      {
        v36 = a2;
        *(std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v36) + 15) = a3;
      }

      if (!a4)
      {
        return 1;
      }

      v36 = a2;
      v19 = (a1 + 40);
      v20 = a2;
LABEL_21:
      *(std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v19, v20, &std::piecewise_construct, &v36) + 14) = a4;
      return 1;
    }

    v28 = ACFULogging::getLogInstance(v9);
    if (*(a2 + 23) < 0)
    {
      v34 = *a2;
    }

    if (a3 && a4)
    {
      ACFULogging::handleMessage(v28, 4u, "%s::%s: Adding new file to FTAB cache. File: %s, offset: %u, size: %u\n", v29, v30, v31, v32, v33, "ACFUFTABFile");
      v36 = a2;
      *(std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v36) + 15) = a3;
      v36 = a2;
      v19 = (a1 + 40);
      v20 = a2;
      goto LABEL_21;
    }

    ACFULogging::handleMessage(v28, 2u, "%s::%s: attempting to add new file to cache, but not both size and offset are provided. File: %s\n", v29, v30, v31, v32, v33, "ACFUFTABFile");
  }

  else
  {
    ACFUFTABFile::updateCache(v9);
  }

  return 0;
}

void ACFUFTABFile::copyManifest(ACFUFTABFile *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 1);
  if (!v4)
  {
    ACFUFTABFile::copyManifest(0);
LABEL_13:
    v10 = 0;
    v11 = 1;
    goto LABEL_9;
  }

  v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
  if (!v5)
  {
    ACFUFTABFile::copyManifest(0);
    goto LABEL_13;
  }

  v6 = v5;
  BytePtr = CFDataGetBytePtr(v5);
  if (!BytePtr)
  {
    v11 = 1;
    v12 = "%s::%s: failed to copy ftab header\n";
    goto LABEL_16;
  }

  v8 = *(BytePtr + 5);
  if (!v8 || (v9 = *(BytePtr + 4)) == 0)
  {
    v11 = 1001;
    v12 = "%s::%s: no manifest found in ftab\n";
LABEL_16:
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 2u, v12, v14, v15, v16, v17, v18, "ACFUFTABFile");
    v10 = 0;
    goto LABEL_8;
  }

  BytePtr = ACFUDataContainer::copyData(*(this + 1), v9, v8);
  if (!BytePtr)
  {
    v11 = 4000;
    v12 = "%s::%s: failed to create manifest data output\n";
    goto LABEL_16;
  }

  v10 = BytePtr;
  v11 = 0;
LABEL_8:
  CFRelease(v6);
LABEL_9:
  *a2 = v10;
  *(a2 + 8) = v11;
}

uint64_t ACFUFTABFile::setBootNonce(ACFUFTABFile *this, uint64_t a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    isOptimized = ACFUDataContainer::isOptimized(v3);
    if (isOptimized)
    {
      ACFUFTABFile::setBootNonce(isOptimized);
    }

    else
    {
      Data = ACFUDataContainer::getData(*(this + 1));
      if (Data)
      {
        BytePtr = CFDataGetBytePtr(Data);
        *(BytePtr + 1) = a2;
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Boot nonce set for FTAB. Boot nonce value: %llu\n", v9, v10, v11, v12, v13, "ACFUFTABFile");
        return 1;
      }

      ACFUFTABFile::setBootNonce(0);
    }
  }

  else
  {
    ACFUFTABFile::setBootNonce(0);
  }

  return 0;
}

uint64_t ACFUFTABFile::getBootNonce(ACFUFTABFile *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    ACFUFTABFile::getBootNonce(0);
    return 0;
  }

  v2 = ACFUDataContainer::copyData(v1, 0, 0x30uLL);
  if (!v2)
  {
    ACFUFTABFile::getBootNonce(0);
    return 0;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  if (BytePtr)
  {
    v5 = *(BytePtr + 1);
  }

  else
  {
    ACFUFTABFile::getBootNonce(0);
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

uint64_t ACFUFTABFile::addNewFileToFTABOnData(ACFULogging *a1, void *a2, CFDataRef theData, CFDataRef *a4)
{
  v7 = a1;
  if (!a4 && !*(a1 + 1))
  {
    ACFUFTABFile::addNewFileToFTABOnData(a1);
    goto LABEL_88;
  }

  if (!theData)
  {
    ACFUFTABFile::addNewFileToFTABOnData(a1);
    goto LABEL_88;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::addNewFileToFTABOnData(Length);
    goto LABEL_88;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = a2[1];
  }

  if (v9 != 4)
  {
    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  v10 = (*(*v7 + 16))(v7, a2);
  if (v10)
  {
    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  if (a4)
  {
    if (*a4)
    {
      isValidFileData = ACFUFTABFile::isValidFileData(v7, *a4, 0);
      if (isValidFileData)
      {
        v12 = *a4;
        if (*a4)
        {
          goto LABEL_13;
        }

LABEL_62:
        ACFUFTABFile::addNewFileToFTABOnData(isValidFileData);
        v74 = 0;
        Mutable = 0;
        goto LABEL_90;
      }

      ACFUFTABFile::addNewFileToFTABOnData(isValidFileData);
    }

    else
    {
      ACFUFTABFile::addNewFileToFTABOnData(v10);
    }

LABEL_88:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (ACFUDataContainer::isOptimized(*(v7 + 8)))
  {
    if (!std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(v7 + 72, a2))
    {
      v39 = AMSupportSafeRetain();
      __p[0] = a2;
      std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v7 + 72), a2, &std::piecewise_construct, __p)[7] = v39;
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

    ACFUFTABFile::addNewFileToFTABOnData((a2 + 23));
    goto LABEL_88;
  }

  isValidFileData = ACFUDataContainer::getData(*(v7 + 8));
  v12 = isValidFileData;
  if (!isValidFileData)
  {
    goto LABEL_62;
  }

LABEL_13:
  v13 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::addNewFileToFTABOnData(0);
LABEL_81:
    v74 = 0;
    goto LABEL_90;
  }

  BytePtr = CFDataGetBytePtr(v12);
  v87 = &BytePtr[*(CFDataGetBytePtr(v12) + 13)];
  v16 = CFDataGetBytePtr(v12);
  v17 = &BytePtr[*&v16[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52]];
  v18 = CFDataGetBytePtr(v12);
  v86 = &v17[*&v18[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56]];
  CFDataGetBytePtr(v12);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = a2[1];
  }

  strncpy(__dst, v20, v21);
  v83 = theData;
  v92 = CFDataGetLength(theData);
  v93 = 0;
  v22 = CFDataGetBytePtr(v12);
  theDataa = Mutable;
  v82 = a2;
  if (!*(v22 + 5))
  {
    v84 = 0;
    v30 = 0;
    LODWORD(v32) = 0;
    goto LABEL_29;
  }

  LogInstance = ACFULogging::getLogInstance(v22);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v24, v25, v26, v27, v28, "ACFUFTABFile");
  v30 = ACFUFTABFile::removeManifestPadding(v29, v12);
  v31 = *(CFDataGetBytePtr(v12) + 4);
  v32 = *(CFDataGetBytePtr(v12) + 5);
  v33 = CFDataGetBytePtr(v12);
  v34 = CFDataCreate(v13, &BytePtr[v31], *(v33 + 5));
  if (!v34)
  {
    ACFUFTABFile::addNewFileToFTABOnData(0);
    goto LABEL_81;
  }

  v84 = v34;
  v35 = *(CFDataGetBytePtr(v12) + 4);
  v94.length = *(CFDataGetBytePtr(v12) + 5);
  v94.location = v35;
  CFDataDeleteBytes(v12, v94);
  if (v30)
  {
    v87 = &BytePtr[*(CFDataGetBytePtr(v12) + 13) - v32];
    v36 = CFDataGetBytePtr(v12);
    v37 = *&v36[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52];
    v38 = CFDataGetBytePtr(v12);
    v86 = &BytePtr[v37 - v32 + *&v38[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56]];
  }

  *(CFDataGetBytePtr(v12) + 5) = 0;
  *(CFDataGetBytePtr(v12) + 4) = 0;
LABEL_29:
  if (!*(CFDataGetBytePtr(v12) + 10))
  {
LABEL_48:
    v65 = CFDataGetBytePtr(v12);
    v66 = *&v65[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 52];
    v67 = CFDataGetBytePtr(v12);
    v91 = *&v67[16 * (*(CFDataGetBytePtr(v12) + 10) - 1) + 56] + v66;
    v68 = CFDataGetBytePtr(v12);
    ++*(v68 + 10);
    v69 = CFDataGetBytePtr(v12);
    Mutable = theDataa;
    CFDataAppendBytes(theDataa, v69, 48);
    v70 = CFDataGetBytePtr(v12);
    v71 = CFDataGetBytePtr(v12);
    CFDataAppendBytes(theDataa, v70 + 48, 16 * (*(v71 + 10) - 1));
    CFDataAppendBytes(theDataa, __dst, 16);
    CFDataAppendBytes(theDataa, v87, v86 - v87);
    v72 = CFDataGetBytePtr(v83);
    v73 = CFDataGetLength(v83);
    CFDataAppendBytes(theDataa, v72, v73);
    if (a4)
    {
      v74 = v84;
      if (*a4)
      {
        CFRelease(*a4);
        *a4 = 0;
      }

      v75 = AMSupportSafeRetain();
      *a4 = v75;
      if (!v75)
      {
        ACFUFTABFile::addNewFileToFTABOnData(0);
        goto LABEL_90;
      }

      if (!v84)
      {
        v77 = v75;
        goto LABEL_66;
      }

      v76 = ACFUFTABFile::setManifestOnData(v7, v84, a4);
      if (v76)
      {
        v77 = *a4;
LABEL_66:
        isCacheValid = ACFUFTABFile::isValidFileData(v7, v77, 0);
        goto LABEL_67;
      }
    }

    else
    {
      v78 = ACFUDataContainer::setData(*(v7 + 8), theDataa);
      v74 = v84;
      if ((v78 & 1) == 0)
      {
        ACFUFTABFile::addNewFileToFTABOnData(v78);
        goto LABEL_90;
      }

      updated = ACFUFTABFile::updateCache(v7, v82, v91, v92);
      if ((updated & 1) == 0)
      {
        ACFUFTABFile::addNewFileToFTABOnData(updated);
        goto LABEL_90;
      }

      if (!v84 || (v76 = ACFUFTABFile::setManifestOnData(v7, v84, 0), (v76 & 1) != 0))
      {
        if ((*(*v7 + 88))(v7))
        {
          isCacheValid = ACFUFTABFile::isCacheValid(v7);
LABEL_67:
          LOBYTE(v7) = isCacheValid;
          goto LABEL_68;
        }

LABEL_90:
        LOBYTE(v7) = 0;
        if (!Mutable)
        {
LABEL_69:
          if (v74)
          {
            CFRelease(v74);
          }

          return v7 & 1;
        }

LABEL_68:
        CFRelease(Mutable);
        goto LABEL_69;
      }
    }

    ACFUFTABFile::addNewFileToFTABOnData(v76);
    goto LABEL_90;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = CFDataGetBytePtr(v12);
    *&v42[v40 + 52] += 16;
    if (!a4)
    {
      v43 = CFDataGetBytePtr(v12);
      v89 = 4;
      LODWORD(__p[0]) = *&v43[v40 + 48];
      BYTE4(__p[0]) = 0;
      v44 = CFDataGetBytePtr(v12);
      v45 = ACFUFTABFile::updateCache(v7, __p, *&v44[v40 + 52], 0);
      v46 = v45;
      if (v45)
      {
        v47 = 0;
      }

      else
      {
        v53 = ACFULogging::getLogInstance(v45);
        ACFULogging::handleMessage(v53, 2u, "%s::%s: failed to update cache\n", v54, v55, v56, v57, v58, "ACFUFTABFile");
        v47 = 4;
      }

      if (v89 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v46)
      {
        break;
      }
    }

    if (v30)
    {
      v48 = CFDataGetBytePtr(v12);
      *&v48[v40 + 52] -= v32;
      if (!a4)
      {
        v49 = CFDataGetBytePtr(v12);
        v89 = 4;
        LODWORD(__p[0]) = *&v49[v40 + 48];
        BYTE4(__p[0]) = 0;
        v50 = CFDataGetBytePtr(v12);
        v51 = ACFUFTABFile::updateCache(v7, __p, *&v50[v40 + 52], 0);
        v52 = v51;
        if (v51)
        {
          v47 = 0;
        }

        else
        {
          v59 = ACFULogging::getLogInstance(v51);
          ACFULogging::handleMessage(v59, 2u, "%s::%s: failed to update cache\n", v60, v61, v62, v63, v64, "ACFUFTABFile");
          v47 = 4;
        }

        if (v89 < 0)
        {
          operator delete(__p[0]);
        }

        if (!v52)
        {
          break;
        }
      }
    }

    ++v41;
    v40 += 16;
    if (v41 >= *(CFDataGetBytePtr(v12) + 10))
    {
      goto LABEL_48;
    }
  }

  if ((v47 | 4) == 4)
  {
    LOBYTE(v7) = 0;
    v74 = v84;
    Mutable = theDataa;
    goto LABEL_68;
  }

  return v7 & 1;
}

void sub_2984C7D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateFileInFTABOnData(ACFULogging *a1, CFIndex a2, CFDataRef theData, CFDataRef *a4)
{
  v4 = a4;
  v5 = theData;
  v7 = a1;
  if (!a4 && !*(a1 + 1))
  {
    ACFUFTABFile::updateFileInFTABOnData(a1);
    goto LABEL_31;
  }

  if (!theData)
  {
    ACFUFTABFile::updateFileInFTABOnData(a1);
    goto LABEL_31;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::updateFileInFTABOnData(Length);
    goto LABEL_31;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 != 4)
  {
    ACFUFTABFile::updateFileInFTABOnData((a2 + 23));
    goto LABEL_31;
  }

  theDataa = v5;
  if (v4)
  {
    if (*v4)
    {
      isValidFileData = ACFUFTABFile::isValidFileData(v7, *v4, 0);
      if (isValidFileData)
      {
        v11 = *v4;
        BytePtr = CFDataGetBytePtr(*v4);
        if (BytePtr)
        {
          v13 = BytePtr[10];
          if (v13)
          {
            v14 = 0;
            v15 = 16 * v13;
            do
            {
              v16 = CFDataGetBytePtr(v11);
              v139 = 4;
              LODWORD(range.length) = *&v16[v14 + 48];
              BYTE4(range.length) = 0;
              v17 = *(a2 + 23);
              if (v17 >= 0)
              {
                v18 = *(a2 + 23);
              }

              else
              {
                v18 = *(a2 + 8);
              }

              if (v17 >= 0)
              {
                v19 = a2;
              }

              else
              {
                v19 = *a2;
              }

              if (v18 >= 4)
              {
                v20 = 4;
              }

              else
              {
                v20 = v18;
              }

              v21 = memcmp(v19, &range.length, v20);
              if (v18 == 4 && v21 == 0)
              {
                v35 = *&CFDataGetBytePtr(v11)[v14 + 56];
                v36 = *&CFDataGetBytePtr(v11)[v14 + 52];
                v5 = theDataa;
                goto LABEL_41;
              }

              v14 += 16;
            }

            while (v15 != v14);
            LogInstance = ACFULogging::getLogInstance(v21);
            if (*(a2 + 23) < 0)
            {
              v29 = *a2;
            }

            ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot update tag '%s' because it does not exist\n", v24, v25, v26, v27, v28, "ACFUFTABFile");
          }

          else
          {
            ACFUFTABFile::updateFileInFTABOnData(BytePtr);
          }
        }

        else
        {
          ACFUFTABFile::updateFileInFTABOnData(0);
        }
      }

      else
      {
        ACFUFTABFile::updateFileInFTABOnData(isValidFileData);
      }
    }

    else
    {
      ACFUFTABFile::updateFileInFTABOnData(Length);
    }

    goto LABEL_31;
  }

  if (ACFUDataContainer::isOptimized(*(v7 + 8)))
  {
    v31 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(v7 + 72, a2);
    if (v7 + 80 != v31)
    {
      v32 = v31;
      v33 = *(v31 + 56);
      if (v33)
      {
        CFRelease(v33);
        *(v32 + 56) = 0;
      }
    }

    v34 = AMSupportSafeRetain();
    range.length = a2;
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v7 + 72), a2, &std::piecewise_construct, &range.length)[7] = v34;
    v30 = 1;
    return v30 & 1;
  }

  Data = ACFUDataContainer::getData(*(v7 + 8));
  if (!Data)
  {
    ACFUFTABFile::updateFileInFTABOnData(0);
    goto LABEL_31;
  }

  v11 = Data;
  if (((*(*v7 + 16))(v7, a2) & 1) == 0)
  {
    ACFUFTABFile::updateFileInFTABOnData((a2 + 23));
    goto LABEL_31;
  }

  v38 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(v7 + 40, a2);
  v35 = *(v38 + 56);
  v36 = *(v38 + 60);
LABEL_41:
  v39 = v35;
  if (CFDataGetLength(v5) != v35)
  {
    v43 = CFDataGetBytePtr(v11);
    CFDataGetBytePtr(v11);
    v44 = CFDataGetBytePtr(v11);
    if (*(v44 + 5))
    {
      v45 = ACFULogging::getLogInstance(v44);
      ACFULogging::handleMessage(v45, 0, "%s::%s: manifest existing in FTAB is being deleted\n", v46, v47, v48, v49, v50, "ACFUFTABFile");
      LODWORD(range.location) = ACFUFTABFile::removeManifestPadding(v51, v11);
      v52 = *(CFDataGetBytePtr(v11) + 4);
      v53 = *MEMORY[0x29EDB8ED8];
      v54 = CFDataGetBytePtr(v11);
      v135 = CFDataCreate(v53, &v43[v52], *(v54 + 5));
      if (!v135)
      {
        ACFUFTABFile::updateFileInFTABOnData(0);
        goto LABEL_31;
      }

      v55 = *(CFDataGetBytePtr(v11) + 4);
      v142.length = *(CFDataGetBytePtr(v11) + 5);
      v142.location = v55;
      CFDataDeleteBytes(v11, v142);
      if (LODWORD(range.location) && *(CFDataGetBytePtr(v11) + 10))
      {
        v56 = 0;
        v57 = 52;
        do
        {
          v58 = *(CFDataGetBytePtr(v11) + 5);
          v59 = CFDataGetBytePtr(v11);
          *&v59[v57] -= v58;
          ++v56;
          v57 += 16;
        }

        while (v56 < *(CFDataGetBytePtr(v11) + 10));
      }

      *(CFDataGetBytePtr(v11) + 5) = 0;
      *(CFDataGetBytePtr(v11) + 4) = 0;
      v5 = theDataa;
    }

    else
    {
      v135 = 0;
    }

    if (*(CFDataGetBytePtr(v11) + 10))
    {
      v60 = 0;
      v61 = 48;
      do
      {
        v62 = CFDataGetBytePtr(v11);
        v139 = 4;
        LODWORD(range.length) = *&v62[v61];
        v63 = *(a2 + 23);
        v64 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v63 = *(a2 + 8);
        }

        if (v63 == 4)
        {
          v65 = v64 >= 0 ? a2 : *a2;
          if (*v65 == LODWORD(range.length))
          {
            break;
          }
        }

        ++v60;
        v61 += 16;
      }

      while (v60 < *(CFDataGetBytePtr(v11) + 10));
      v5 = theDataa;
    }

    else
    {
      LODWORD(v60) = 0;
    }

    v66 = CFDataGetLength(v5);
    v67 = CFDataGetLength(v5);
    if (v66 >= v39)
    {
      v136 = (v67 - v39);
      CFDataIncreaseLength(v11, v136);
      v83 = *(CFDataGetBytePtr(v11) + 10) - 1;
      if (v83 > v60)
      {
        v84 = 16 * v83 + 48;
        while (1)
        {
          range.location = (*&CFDataGetBytePtr(v11)[v84 + 4] + v136);
          v85 = *&CFDataGetBytePtr(v11)[v84 + 8];
          v86 = CFDataGetBytePtr(v11);
          v87 = v4;
          v88 = v7;
          v89 = *&CFDataGetBytePtr(v11)[v84 + 4];
          v90 = CFDataGetBytePtr(v11);
          v91 = &v86[v89];
          v7 = v88;
          v4 = v87;
          v143.location = range.location;
          v143.length = v85;
          CFDataReplaceBytes(v11, v143, v91, *&v90[v84 + 8]);
          v92 = CFDataGetBytePtr(v11);
          *&v92[v84 + 4] += v136;
          if (!v87)
          {
            v93 = CFDataGetBytePtr(v11);
            v139 = 4;
            LODWORD(range.length) = *&v93[v84];
            BYTE4(range.length) = 0;
            v94 = CFDataGetBytePtr(v11);
            updated = ACFUFTABFile::updateCache(v7, &range.length, *&v94[v84 + 4], 0);
            v96 = updated;
            if (updated)
            {
              v76 = 0;
            }

            else
            {
              v97 = ACFULogging::getLogInstance(updated);
              ACFULogging::handleMessage(v97, 2u, "%s::%s: could not update ftab cache\n", v98, v99, v100, v101, v102, "ACFUFTABFile");
              v76 = 4;
            }

            if (v139 < 0)
            {
              operator delete(range.length);
            }

            if (!v96)
            {
              break;
            }
          }

          v84 -= 16;
          if (v60 >= --v83)
          {
            goto LABEL_100;
          }
        }

LABEL_110:
        if (v76)
        {
          v120 = v135;
LABEL_117:
          v30 = 0;
LABEL_118:
          if (!v120)
          {
            return v30 & 1;
          }

LABEL_119:
          CFRelease(v120);
          return v30 & 1;
        }

        goto LABEL_112;
      }

LABEL_100:
      v110 = CFDataGetLength(theDataa);
      v60 = v60;
      *&CFDataGetBytePtr(v11)[16 * v60 + 56] = v110;
      if (!v4)
      {
        v111 = CFDataGetBytePtr(v11);
        v139 = 4;
        LODWORD(range.length) = *&v111[16 * v60 + 48];
        BYTE4(range.length) = 0;
        v112 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
        v113 = CFDataGetLength(theDataa);
        v114 = ACFUFTABFile::updateCache(v7, &range.length, v112, v113);
        v115 = v114;
        if (v114)
        {
          v76 = 0;
        }

        else
        {
          v129 = ACFULogging::getLogInstance(v114);
          ACFULogging::handleMessage(v129, 2u, "%s::%s: could not update ftab cache\n", v130, v131, v132, v133, v134, "ACFUFTABFile");
          v76 = 4;
        }

        if (v139 < 0)
        {
          operator delete(range.length);
        }

        if ((v115 & 1) == 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v68 = (v39 - v67);
      v69 = (v60 + 1);
      if (v69 < *(CFDataGetBytePtr(v11) + 10))
      {
        v70 = 16 * (v60 + 1);
        do
        {
          v71 = CFDataGetBytePtr(v11);
          *&v71[v70 + 52] -= v68;
          if (!v4)
          {
            v72 = CFDataGetBytePtr(v11);
            v139 = 4;
            LODWORD(range.length) = *&v72[v70 + 48];
            BYTE4(range.length) = 0;
            v73 = CFDataGetBytePtr(v11);
            v74 = ACFUFTABFile::updateCache(v7, &range.length, *&v73[v70 + 52], 0);
            v75 = v74;
            if (v74)
            {
              v76 = 0;
            }

            else
            {
              v77 = ACFULogging::getLogInstance(v74);
              ACFULogging::handleMessage(v77, 2u, "%s::%s: could not update ftab cache\n", v78, v79, v80, v81, v82, "ACFUFTABFile");
              v76 = 4;
            }

            if (v139 < 0)
            {
              operator delete(range.length);
            }

            if (!v75)
            {
              goto LABEL_110;
            }
          }

          ++v69;
          v70 += 16;
        }

        while (v69 < *(CFDataGetBytePtr(v11) + 10));
      }

      v103 = CFDataGetLength(theDataa);
      v60 = v60;
      *&CFDataGetBytePtr(v11)[16 * v60 + 56] = v103;
      if (!v4)
      {
        v104 = CFDataGetBytePtr(v11);
        v139 = 4;
        LODWORD(range.length) = *&v104[16 * v60 + 48];
        BYTE4(range.length) = 0;
        v105 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
        v106 = CFDataGetLength(theDataa);
        v107 = ACFUFTABFile::updateCache(v7, &range.length, v105, v106);
        v108 = v107;
        if (v107)
        {
          v76 = 0;
        }

        else
        {
          v123 = ACFULogging::getLogInstance(v107);
          ACFULogging::handleMessage(v123, 2u, "%s::%s: could not update ftab cache\n", v124, v125, v126, v127, v128, "ACFUFTABFile");
          v76 = 4;
        }

        if (v139 < 0)
        {
          operator delete(range.length);
        }

        if (!v108)
        {
          goto LABEL_110;
        }
      }

      v109 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
      v144.location = CFDataGetLength(theDataa) + v109;
      v144.length = v68;
      CFDataDeleteBytes(v11, v144);
    }

    v116 = *&CFDataGetBytePtr(v11)[16 * v60 + 52];
    v117 = CFDataGetLength(theDataa);
    v118 = CFDataGetBytePtr(theDataa);
    v119 = CFDataGetLength(theDataa);
    v145.location = v116;
    v145.length = v117;
    CFDataReplaceBytes(v11, v145, v118, v119);
    if (v4)
    {
      v120 = v135;
      if (!v135 || (v121 = ACFUFTABFile::setManifestOnData(v7, v135, v4), v121))
      {
        isCacheValid = ACFUFTABFile::isValidFileData(v7, *v4, 0);
        goto LABEL_116;
      }

LABEL_132:
      ACFUFTABFile::updateFileInFTABOnData(v121);
      v30 = 0;
      goto LABEL_119;
    }

LABEL_112:
    v120 = v135;
    if (!v135 || (v121 = ACFUFTABFile::setManifestOnData(v7, v135, 0), v121))
    {
      if (!(*(*v7 + 88))(v7))
      {
        goto LABEL_117;
      }

      isCacheValid = ACFUFTABFile::isCacheValid(v7);
LABEL_116:
      v30 = isCacheValid;
      goto LABEL_118;
    }

    goto LABEL_132;
  }

  v40 = CFDataGetBytePtr(v5);
  v141.location = v36;
  v141.length = v35;
  CFDataReplaceBytes(v11, v141, v40, v35);
  if (v4)
  {
    v41 = *v4;

    return ACFUFTABFile::isValidFileData(v7, v41, 0);
  }

  if (!(*(*v7 + 88))(v7))
  {
LABEL_31:
    v30 = 0;
    return v30 & 1;
  }

  return ACFUFTABFile::isCacheValid(v7);
}

void sub_2984C87DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::initCache(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::initCache(0);
    goto LABEL_26;
  }

  if (*(this + 7))
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: ftab cache had entries before ftab container was initialized. Clearing cache before moving on.\n", v4, v5, v6, v7, v8, "ACFUFTABFile");
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(this + 40, *(this + 6));
    *(this + 6) = 0;
    *(this + 7) = 0;
    *(this + 5) = this + 48;
    v2 = *(this + 1);
  }

  v9 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v9)
  {
    ACFUFTABFile::initCache(0);
    goto LABEL_26;
  }

  v10 = v9;
  BytePtr = CFDataGetBytePtr(v9);
  if (BytePtr)
  {
    v12 = *(BytePtr + 10);
    CFRelease(v10);
    if (v12)
    {
      v13 = 0;
      v14 = v12 - 1;
      v15 = 48;
      do
      {
        v16 = ACFUDataContainer::copyData(*(this + 1), v15, 0x10uLL);
        if (!v16)
        {
          ACFUFTABFile::initCache(0);
          LOBYTE(v19) = v13;
          return v19 & 1;
        }

        v10 = v16;
        v17 = CFDataGetBytePtr(v16);
        if (!v17)
        {
          ACFUFTABFile::initCache(0);
          LOBYTE(v19) = v13;
          goto LABEL_21;
        }

        v30 = 4;
        LODWORD(__p) = *v17;
        BYTE4(__p) = 0;
        updated = ACFUFTABFile::updateCache(this, &__p, *(v17 + 1), *(v17 + 2));
        v19 = updated;
        if (updated)
        {
          CFRelease(v10);
          v10 = 0;
        }

        else
        {
          v22 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v22, 2u, "%s::%s: failed to initialize cache\n", v23, v24, v25, v26, v27, "ACFUFTABFile");
        }

        if (v30 < 0)
        {
          operator delete(__p);
        }

        v21 = v14-- != 0;
        v15 += 16;
        v13 = 1;
      }

      while ((v19 & v21 & 1) != 0);
      if (!v10)
      {
        return v19 & 1;
      }

      goto LABEL_21;
    }

LABEL_26:
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  ACFUFTABFile::initCache(0);
  LOBYTE(v19) = 0;
LABEL_21:
  CFRelease(v10);
  return v19 & 1;
}

void sub_2984C89C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::setFTABValidity(ACFUFTABFile *this, int a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    isOptimized = ACFUDataContainer::isOptimized(v3);
    if (isOptimized)
    {
      ACFUFTABFile::setFTABValidity(isOptimized);
    }

    else
    {
      Data = ACFUDataContainer::getData(*(this + 1));
      if (Data)
      {
        *(CFDataGetBytePtr(Data) + 1) = a2;
        return 1;
      }

      ACFUFTABFile::setFTABValidity(0);
    }
  }

  else
  {
    ACFUFTABFile::setFTABValidity(0);
  }

  return 0;
}

uint64_t ACFUFTABFile::copyFWDataByName(uint64_t a1, uint64_t a2)
{
  isOptimized = ACFUDataContainer::isOptimized(*(a1 + 8));
  if (!isOptimized || (isOptimized = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), (a1 + 80) == isOptimized))
  {
    if (!*(a1 + 8))
    {
      ACFUFTABFile::copyFWDataByName(isOptimized);
      return 0;
    }

    v7 = *(a2 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v7 != 4)
    {
      ACFUFTABFile::copyFWDataByName(isOptimized);
      return 0;
    }

    v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
    if (a1 + 48 == v8)
    {
      ACFUFTABFile::copyFWDataByName((a2 + 23));
      return 0;
    }

    result = ACFUDataContainer::copyData(*(a1 + 8), *(v8 + 60), *(v8 + 56));
    if (!result)
    {
      ACFUFTABFile::copyFWDataByName(0);
      return 0;
    }
  }

  else
  {
    v5 = *(isOptimized + 7);
    result = AMSupportSafeRetain();
    if (!result)
    {
      ACFUFTABFile::copyFWDataByName(0);
      return 0;
    }
  }

  return result;
}

void ACFUFTABFile::copyFWRefByName(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, ACFUDataContainer::DirectDataRef **a5@<X8>)
{
  *a5 = 0;
  v7 = *(a1 + 8);
  if (!v7)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v34 = "%s::%s: file data was invalid\n";
    goto LABEL_19;
  }

  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 != 4)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    v34 = "%s::%s: specified tag name is invalid!\n";
    goto LABEL_19;
  }

  if (!ACFUDataContainer::isOptimized(v7) || (v12 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), a1 + 80 == v12))
  {
    v24 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
    if ((a1 + 48) == v24)
    {
      LogInstance = ACFULogging::getLogInstance(v24);
      v34 = "%s::%s: file does not exist\n";
    }

    else
    {
      ACFUDataContainer::copyDirectData(*(a1 + 8), a4, *(v24 + 15) + a3, &v35);
      v25 = v35;
      v35 = 0;
      std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a5, v25);
      v26 = v35;
      v35 = 0;
      if (v26)
      {
        ACFUDataContainer::DirectDataRef::~DirectDataRef(v26);
        operator delete(v27);
      }

      if (*a5)
      {
        return;
      }

      LogInstance = ACFULogging::getLogInstance(v26);
      v34 = "%s::%s: failed to obtain data ref\n";
    }

LABEL_19:
    ACFULogging::handleMessage(LogInstance, 2u, v34, v29, v30, v31, v32, v33, "ACFUFTABFile");
    return;
  }

  v13 = malloc(a4);
  if (!v13)
  {
    v17 = ACFULogging::getLogInstance(0);
    v23 = "%s::%s: failed to allocate data\n";
    goto LABEL_21;
  }

  v14 = v13;
  v36.location = a3;
  v36.length = a4;
  CFDataGetBytes(*(v12 + 56), v36, v13);
  v15 = operator new(0x18uLL);
  ACFUDataContainer::DirectDataRef::DirectDataRef(v15, v14, a4, 0);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a5, v15);
  if (!*a5)
  {
    v17 = ACFULogging::getLogInstance(v16);
    v23 = "%s::%s: failed to obtain data ref\n";
LABEL_21:
    ACFULogging::handleMessage(v17, 2u, v23, v18, v19, v20, v21, v22, "ACFUFTABFile");
  }
}

void sub_2984C8D10(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

CFDataRef ACFUFTABFile::copyFirmwareContainer(ACFUFTABFile *this)
{
  v13 = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::copyFirmwareContainer(0);
    return v13;
  }

  v13 = ACFUDataContainer::copyData(v2);
  if (!v13)
  {
    ACFUFTABFile::copyFirmwareContainer(0);
    return v13;
  }

  if (ACFUDataContainer::isOptimized(*(this + 1)))
  {
    v3 = *(this + 9);
    if (v3 != (this + 80))
    {
      do
      {
        v4 = (*(*this + 16))(this, v3 + 4);
        v5 = *(v3 + 7);
        v6 = (v3 + 32);
        if (v4)
        {
          updated = ACFUFTABFile::updateFileInFTABOnData(this, v6, v5, &v13);
          if ((updated & 1) == 0)
          {
            ACFUFTABFile::copyFirmwareContainer(updated);
            return v13;
          }
        }

        else
        {
          v8 = ACFUFTABFile::addNewFileToFTABOnData(this, v6, v5, &v13);
          if ((v8 & 1) == 0)
          {
            ACFUFTABFile::copyFirmwareContainer(v8);
            return v13;
          }
        }

        v9 = *(v3 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v3 + 2);
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v3 = v10;
      }

      while (v10 != (this + 80));
    }
  }

  return v13;
}

void ACFUFTABFile::prettyLog(ACFUFTABFile *this)
{
  v111 = *MEMORY[0x29EDCA608];
  __p = 0;
  v108 = 0;
  v109 = 0;
  v2 = *(this + 1);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v79 = "%s::%s: file data was invalid\n";
    goto LABEL_33;
  }

  isOptimized = ACFUDataContainer::isOptimized(v2);
  v4 = *(this + 1);
  if (isOptimized)
  {
    v5 = ACFUDataContainer::copyData(v4, 0, 0x30uLL);
    v6 = v5;
    if (v5)
    {
      BytePtr = CFDataGetBytePtr(v5);
      if (!BytePtr)
      {
        goto LABEL_34;
      }

      goto LABEL_8;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v79 = "%s::%s: failed to copy ftab header\n";
LABEL_33:
    v80 = 2;
    goto LABEL_25;
  }

  v8 = ACFUDataContainer::copyData(v4);
  v6 = v8;
  if (!v8)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v79 = "%s::%s: could not obtain file data\n";
    goto LABEL_33;
  }

  BytePtr = CFDataGetBytePtr(v8);
  if (!BytePtr)
  {
LABEL_34:
    v88 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v88, 2u, "%s::%s: failed to copy ftab header\n", v89, v90, v91, v92, v93, "ACFUFTABFile");
    CFRelease(v6);
    goto LABEL_26;
  }

LABEL_8:
  v9 = *(BytePtr + 10);
  v10 = *(BytePtr + 4);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p);
  }

  __p = v10;
  LOBYTE(v108) = 0;
  HIBYTE(v109) = 8;
  ACFUFile::fileVersionLog(this);
  v12 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v12, 4u, "%s::%s: =========== FTAB Header ===========\n", v13, v14, v15, v16, v17, "ACFUFTABFile");
  v19 = ACFULogging::getLogInstance(v18);
  v97 = *(BytePtr + 1);
  v100 = *(BytePtr + 1);
  v94 = *BytePtr;
  ACFULogging::handleMessage(v19, 4u, "%s::%s: Generation: %u, Valid: %u, BootNonce: 0x%08llx\n", v20, v21, v22, v23, v24, "ACFUFTABFile");
  v26 = ACFULogging::getLogInstance(v25);
  v98 = *(BytePtr + 5);
  v95 = *(BytePtr + 4);
  ACFULogging::handleMessage(v26, 4u, "%s::%s: Manifest Offset: %u, Manifest Length: %u, Magic: %s\n", v27, v28, v29, v30, v31, "ACFUFTABFile");
  v33 = ACFULogging::getLogInstance(v32);
  v96 = *(BytePtr + 10);
  ACFULogging::handleMessage(v33, 4u, "%s::%s: Num Files: %u\n", v34, v35, v36, v37, v38, "ACFUFTABFile");
  v40 = ACFULogging::getLogInstance(v39);
  ACFULogging::handleMessage(v40, 4u, "%s::%s: =========== FTAB Header ===========\n\n", v41, v42, v43, v44, v45, "ACFUFTABFile");
  v47 = ACFULogging::getLogInstance(v46);
  ACFULogging::handleMessage(v47, 4u, "%s::%s: =========== FTAB Payloads ===========\n", v48, v49, v50, v51, v52, "ACFUFTABFile");
  CFRelease(v6);
  if (!v9)
  {
LABEL_24:
    LogInstance = ACFULogging::getLogInstance(v53);
    v79 = "%s::%s: =========== FTAB Payloads ===========\n\n";
    v80 = 4;
LABEL_25:
    ACFULogging::handleMessage(LogInstance, v80, v79, v74, v75, v76, v77, v78, "ACFUFTABFile");
    goto LABEL_26;
  }

  v54 = 48;
  while (1)
  {
    v55 = ACFUDataContainer::copyData(*(this + 1), v54, 0x10uLL);
    v56 = v55;
    if (!v55)
    {
      break;
    }

    v57 = CFDataGetBytePtr(v55);
    v59 = v57[1];
    v58 = v57[2];
    v106 = 4;
    LODWORD(v105) = *v57;
    BYTE4(v105) = 0;
    v60 = ACFULogging::getLogInstance(v57);
    v61 = &BytePtr[v59];
    v99 = v57[1];
    ACFULogging::handleMessage(v60, 4u, "%s::%s: Tag: %s :: Offset: 0x%04x Raw address: 0x%lx, size: %u\n", v62, v63, v64, v65, v66, "ACFUFTABFile");
    if ((ACFUDataContainer::isOptimized(*(this + 1)) & 1) == 0)
    {
      v67 = CC_SHA384(v61, v58, md);
      if (v67 == md)
      {
        v68 = ACFULogging::getLogInstance(v67);
        std::string::basic_string[abi:ne200100]<0>(&v101, "ACFUFTABFile");
        v69 = std::string::append(&v101, "::");
        v70 = *&v69->__r_.__value_.__l.__data_;
        v102.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
        *&v102.__r_.__value_.__l.__data_ = v70;
        v69->__r_.__value_.__l.__size_ = 0;
        v69->__r_.__value_.__r.__words[2] = 0;
        v69->__r_.__value_.__r.__words[0] = 0;
        v71 = std::string::append(&v102, "prettyLog");
        v72 = *&v71->__r_.__value_.__l.__data_;
        v104 = v71->__r_.__value_.__r.__words[2];
        *v103 = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageBinary(v68, v103, 4, md, 0x30uLL, 1);
        if (SHIBYTE(v104) < 0)
        {
          operator delete(v103[0]);
        }

        if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v102.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }
      }
    }

    CFRelease(v56);
    if (v106 < 0)
    {
      operator delete(v105);
    }

    v54 += 16;
    if (!--v9)
    {
      goto LABEL_24;
    }
  }

  v82 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v82, 2u, "%s::%s: failed to copy ftab file header\n", v83, v84, v85, v86, v87, "ACFUFTABFile");
LABEL_26:
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p);
  }

  v81 = *MEMORY[0x29EDCA608];
}

void sub_2984C9324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFTABFile::hasFile(ACFULogging *a1, const void **a2)
{
  if (*(a1 + 1))
  {
    return std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(a1 + 40, a2) != 0;
  }

  ACFUFTABFile::hasFile(a1);
  return 0;
}

void ACFUFTABFile::~ACFUFTABFile(ACFUFTABFile *this)
{
  *this = &unk_2A1EE87D0;
  v2 = this + 72;
  v3 = *(this + 9);
  v4 = this + 80;
  if (v3 != this + 80)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5)
      {
        CFRelease(v5);
        *(v3 + 7) = 0;
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(v2, *(this + 10));
  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(this + 40, *(this + 6));

  ACFUFile::~ACFUFile(this);
}

{
  ACFUFTABFile::~ACFUFTABFile(this);

  operator delete(v1);
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, const __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v4 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v4 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v4 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v4 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v4);
  return 0;
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, __CFData *a2)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v4 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v4 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v4 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v4 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v4);
  return 0;
}

uint64_t ACFUFTABFile::init(ACFUFTABFile *this, const __CFString *a2, const __CFString *a3)
{
  *(this + 3) = @"ftab.bin";
  if (ACFUFile::init(this, a2, a3))
  {
    if ((*(*this + 88))(this))
    {
      if (ACFUFTABFile::initCache(this))
      {
        if (ACFUFTABFile::isCacheValid(this))
        {
          return 1;
        }

        v5 = "%s::%s: cache is invalid\n";
      }

      else
      {
        v5 = "%s::%s: failed to initialize file cache\n";
      }
    }

    else
    {
      v5 = "%s::%s: firmware file is invalid\n";
    }
  }

  else
  {
    v5 = "%s::%s: firmware file failed to initialize\n";
  }

  ACFUFTABFile::init(v5);
  return 0;
}

ACFULogging *ACFUFTABFile::getFileSizeByFileName(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!ACFUDataContainer::isOptimized(v3) || (v5 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 72, a2), a1 + 80 == v5))
    {
      v7 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
      if (a1 + 48 != v7)
      {
        return *(v7 + 56);
      }
    }

    else
    {
      result = CFDataGetLength(*(v5 + 56));
      if (result)
      {
        return result;
      }

      ACFUFTABFile::getFileSizeByFileName(result);
    }
  }

  else
  {
    ACFUFTABFile::getFileSizeByFileName(0);
  }

  return 0;
}

uint64_t ACFUFTABFile::getVersion(ACFUFTABFile *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(__p, "bver");
  if (*(this + 1))
  {
    if ((*(*this + 16))(this, __p))
    {
      v3 = (**this)(this, __p);
      goto LABEL_6;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v5, v6, v7, v8, v9, "ACFUFTABFile");
  }

  v3 = 0;
LABEL_6:
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2984C9880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v20.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    v20.__end_ = v18;
    v20.__end_cap_.__value_ = v19;
    v20.__first_ = v18;
    v20.__begin_ = v18;
    std::__split_buffer<std::string>::~__split_buffer(&v20);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = (v4 + 24);
  }

  *(a1 + 8) = v7;
}

void std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
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

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 6) = *(v8 + 2);
    *(v6 + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
}

void sub_2984C9D74(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::__find_equal<std::string>(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 6) = *(v8 + 2);
    *(v6 + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(a3 + 16) = 1;
}

void sub_2984CA428(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,void const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void OUTLINED_FUNCTION_0_12()
{
  if (*v1 < 0)
  {
    v2 = *v0;
  }
}

void OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  ACFULogging::handleMessage(a1, 2u, v9, a4, a5, a6, a7, a8, v8);
}

void *OUTLINED_FUNCTION_4_9(ACFULogging *this)
{

  return ACFULogging::getLogInstance(this);
}

void ACFUFTABFile::setManifestOnData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: something went wrong, extra bytes in file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: manifest data has no bytes\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no manifest input provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function cannot directly manipulate file data with optimized flow\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::isValidFileData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: manifest present beyond the bounds of the file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: invalid FTAB file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Payload is out of valid range\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: File indicated is within header space\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: payload is out of valid range\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file indicated is within header space\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to acquire cf data byte pointer\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to acquire ftab file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: manifest present in space allocated for header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v8 = *a1;
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: too many files specified or there are no files. Limit is %d. Num Files: %d\n", v3, v4, v5, v6, v7, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: header is bigger than the file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file is smaller than the ftab header size\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::setManifestToTopOnData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain new file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not allocate data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function cannot directly manipulate file data with optimized flow\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::removeManifestPadding(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no manifest preset in dataref\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no dataref\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::isCacheValid(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: number of files in cache is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file data?!\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::updateCache(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_10();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: specified tag name is invalid! Tag name: %s\n", v2, v3, v4, v5, v6, v7);
}

void ACFUFTABFile::copyManifest(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::setBootNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function is not supported in memory optimized flow. Memory optimized files are read only\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::getBootNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::addNewFileToFTABOnData(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_5_7();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag is either larger or smaller than limit %u (size: %lu)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain copy of manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain new file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update cache\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not allocate data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_10();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: cowardly retreating because tag '%s' exists in runtime MMIO File Data. I refuse to overwrite existing files!\n", v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_10();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: cowardly retreating because tag '%s' exists. I refuse to overwrite existing files!\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data has no bytes\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data provided is not valid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::updateFileInFTABOnData(ACFULogging *a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_5_7();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: tag is either larger or smaller than limit %u (size: %lu)\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data is invalid and does not meet ftab standards\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot update a file if no files exist\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data container is invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_10();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: cannot update tag '%s' because it does not exist\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain copy of manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update manifest\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: input data has no bytes\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data provided is not valid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data must be valid or firmware data must be provided\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::initCache(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab file header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy ftab header\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file data?!\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::setFTABValidity(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: function is not supported in memory optimized flow. Memory optimized files are read only\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::copyFWDataByName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to retain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: specified tag name is invalid!\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_10();
  ACFULogging::handleMessage(v1, 2u, "%s::%s: file '%s' does not exist\n", v2, v3, v4, v5, v6, v7);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::copyFirmwareContainer(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to add new file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to update file\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain file data\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void ACFUFTABFile::getFileSizeByFileName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed obtain file size\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file data was invalid\n", v2, v3, v4, v5, v6, "ACFUFTABFile");
}

void RTKitFirmware::create(uint64_t a1@<X0>, const __CFData *a2@<X1>, uint64_t a3@<X2>, ACFUFirmware **a4@<X8>)
{
  v8 = operator new(0x58uLL);
  ACFUFirmware::ACFUFirmware(v8);
  *v8 = &unk_2A1EE8860;
  *(v8 + 21) = 0;
  *a4 = v8;
  std::map<__CFString const*,std::string>::map[abi:ne200100](v9, a1);
  LOBYTE(a3) = RTKitFirmware::init(v8, v9, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v9, v9[1]);
  if ((a3 & 1) == 0)
  {
    *a4 = 0;
    (*(*v8 + 56))(v8);
  }
}

void sub_2984CBE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a10, a11);
  *v12 = 0;
  (*(*v11 + 56))(v11);
  _Unwind_Resume(a1);
}

uint64_t RTKitFirmware::init(uint64_t a1, uint64_t a2, const __CFData *a3, uint64_t a4)
{
  std::map<__CFString const*,std::string>::map[abi:ne200100](v31, a2);
  v7 = ACFUFirmware::init(a1, v31);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v31, v31[1]);
  if (!v7)
  {
    RTKitFirmware::init(v8);
    return 0;
  }

  ACFUFTABFile::create(a3, a4, 0xFFFF, &v29);
  v9 = v29;
  v29 = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    (*(*v10 + 56))(v10);
    v11 = v29;
    v29 = 0;
    if (v11)
    {
      (*(*v11 + 56))(v11);
    }

    v9 = *(a1 + 32);
  }

  if (!v9)
  {
    RTKitFirmware::init(0);
    return 0;
  }

  v12 = **v9;
  ACFUFTABFile::copyManifest(v13, &v29);
  if (!v30)
  {
    v21 = v29;
    *(a1 + 48) = v29;
    if (v21)
    {
      goto LABEL_11;
    }

    RTKitFirmware::init(v14);
    return 0;
  }

  if (v30 != 1001)
  {
    LogInstance = ACFULogging::getLogInstance(v14);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get manifest, error: %d\n", v24, v25, v26, v27, v28, "RTKitFirmware");
    return 0;
  }

  v15 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v15, 0, "%s::%s: No manifest present\n", v16, v17, v18, v19, v20, "RTKitFirmware");
  *(a1 + 48) = 0;
LABEL_11:
  if ((a4 & 2) != 0)
  {
    *(a1 + 80) = 1;
  }

  *(a1 + 56) = 1;
  return (*(*a1 + 64))(a1);
}

CFDataRef RTKitFirmware::copyFirmwareNonce(RTKitFirmware *this)
{
  v1 = *(this + 4);
  {
    *bytes = ACFUFTABFile::getBootNonce(v1);
    return CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 8);
  }

  else
  {
    RTKitFirmware::copyFirmwareNonce(v1);
    return 0;
  }
}

uint64_t RTKitFirmware::setFirmwareNonce(RTKitFirmware *this, const __CFData *a2)
{
  Length = *(this + 4);
  {
    RTKitFirmware::setFirmwareNonce(Length);
    return 0;
  }

  if (!a2 || (v5 = Length, Length = CFDataGetLength(a2), Length != 8))
  {
    RTKitFirmware::setFirmwareNonce(Length);
    return 0;
  }

  v6 = *CFDataGetBytePtr(a2);

  return ACFUFTABFile::setBootNonce(v5, v6);
}

uint64_t RTKitFirmware::openFirmwareInRestoreOptions(RTKitFirmware *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"FirmwareData");
  if (Value)
  {
    v5 = Value;
    AMSupportSafeRetain();
    v6 = CFGetTypeID(v5);
    TypeID = CFDataGetTypeID();
    if (v6 == TypeID)
    {
      ACFUFTABFile::create(v5, *(this + 21), 0xFFFF, &v12);
      v8 = v12;
      v12 = 0;
      v9 = *(this + 4);
      *(this + 4) = v8;
      if (v9)
      {
        (*(*v9 + 56))(v9);
        v9 = v12;
        v12 = 0;
        if (v9)
        {
          v9 = (*(*v9 + 56))(v9);
        }

        v8 = *(this + 4);
      }

      if (v8)
      {
        v10 = ACFUFirmware::openFirmwareInRestoreOptions(this, theDict);
      }

      else
      {
        RTKitFirmware::openFirmwareInRestoreOptions(v9);
        v10 = 1000;
      }
    }

    else
    {
      RTKitFirmware::openFirmwareInRestoreOptions(TypeID);
      v10 = 4002;
    }

    CFRelease(v5);
  }

  else
  {
    RTKitFirmware::openFirmwareInRestoreOptions(0);
    return 4001;
  }

  return v10;
}

uint64_t RTKitFirmware::saveFirmware(RTKitFirmware *this)
{
  v2 = *(this + 4);
  {
    v4 = ACFUFTABFile::setFTABValidity(v2, 1);
    if (v4)
    {
      if (*(this + 6))
      {

        return ACFUFirmware::saveFirmware(this, v5);
      }

      else
      {
        RTKitFirmware::saveFirmware(v4);
        return 1001;
      }
    }

    else
    {
      RTKitFirmware::saveFirmware(v4);
      return 1004;
    }
  }

  else
  {
    RTKitFirmware::saveFirmware(v2);
    return 1000;
  }
}

uint64_t RTKitFirmware::setManifest(RTKitFirmware *this, const __CFData *a2)
{
  v4 = *(this + 4);
  {
    v6 = ACFUFTABFile::setManifest(v4, a2);
    if ((v6 & 1) == 0)
    {
      RTKitFirmware::setManifest(v6);
      return 0;
    }

    v7 = 1;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid firmware file\n", v9, v10, v11, v12, v13, "RTKitFirmware");
    v7 = 0;
  }

  ACFUFirmware::setManifest(this, a2);
  return v7;
}

uint64_t RTKitFirmware::getFileSizeByFileName(uint64_t a1)
{
  v1 = *(a1 + 32);
  {
    v3 = *(*v1 + 32);

    return v3();
  }

  else
  {
    RTKitFirmware::getFileSizeByFileName(v1);
    return 0;
  }
}

void RTKitFirmware::~RTKitFirmware(RTKitFirmware *this)
{
  ACFUFirmware::~ACFUFirmware(this);

  operator delete(v1);
}

uint64_t *std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,std::string>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_2984CC78C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void RTKitFirmware::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize base object\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create manifest\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create firmware\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void RTKitFirmware::setFirmwareNonce(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Bad parameter\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid firmware file\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void RTKitFirmware::openFirmwareInRestoreOptions(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Unrecognized CF object!\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to open firmware in restore options\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to find firmware in restore options\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void RTKitFirmware::saveFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to set ftab validity\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: No manifest provided with firmware. Manifest is required!\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid firmware file\n", v2, v3, v4, v5, v6, "RTKitFirmware");
}

void ACFUFirmware::ACFUFirmware(ACFUFirmware *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_2A1EE88D8;
  *(this + 1) = this + 16;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
}

uint64_t ACFUFirmware::copyFWDataByTag(ACFUFirmware *this, const __CFString *a2)
{
  v12 = a2;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = this + 16;
    v4 = *(this + 2);
    if (v4)
    {
      v5 = this + 8;
      v6 = v3;
      do
      {
        v7 = *(v4 + 4);
        v8 = v7 >= a2;
        v9 = v7 < a2;
        if (v8)
        {
          v6 = v4;
        }

        v4 = *&v4[8 * v9];
      }

      while (v4);
      if (v6 != v3 && *(v6 + 4) <= a2)
      {
        v11 = std::map<__CFString const*,std::string>::at(v5, &v12);
        return (**v2)(v2, v11);
      }
    }
  }

  else
  {
    ACFUFirmware::copyFWDataByTag(this);
  }

  return 0;
}

const void *ACFUFirmware::getMeasureDataWithTag(CFDictionaryRef *this, const __CFString *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(this[5], a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ACFUFirmware::saveFirmware(ACFUFirmware *this, const __CFURL *a2)
{
  if (*(this + 4))
  {
    v3 = *(this + 8);
    if (v3)
    {
      if (!ACFUCommon::doesPathExist(v3, a2) && (v4 = MEMORY[0x29C28AF20](*(this + 8)), v4))
      {
        ACFUFirmware::saveFirmware(v4);
        return 1003;
      }

      else
      {
        v5 = ACFUFile::saveToPath(*(this + 4), *(this + 8));
        if (v5)
        {
          return 0;
        }

        else
        {
          ACFUFirmware::saveFirmware(v5);
          return 1004;
        }
      }
    }

    else
    {
      ACFUFirmware::saveFirmware(0);
      return 1014;
    }
  }

  else
  {
    ACFUFirmware::saveFirmware(this);
    return 1000;
  }
}

uint64_t ACFUFirmware::openFirmwareInRestoreOptions(const void **this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, this[9]);
  if (!Value)
  {
    v6 = 1001;
    v8 = "%s::%s: Manifest is not available\n";
LABEL_9:
    LogInstance = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(LogInstance, 2u, v8, v10, v11, v12, v13, v14, "ACFUFirmware");
    return v6;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  Value = CFDataGetTypeID();
  if (v5 != Value)
  {
    v6 = 4002;
    v8 = "%s::%s: Manifest is not present in expected data type\n";
    goto LABEL_9;
  }

  (*(*this + 9))(this, v4);
  Value = (*(*this + 8))(this);
  if ((Value & 1) == 0)
  {
    v6 = 1013;
    v8 = "%s::%s: Failed to measure firmware\n";
    goto LABEL_9;
  }

  return 0;
}

void ACFUFirmware::~ACFUFirmware(ACFUFirmware *this)
{
  *this = &unk_2A1EE88D8;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 8);
  if (v3)
  {
    CFRelease(v3);
    *(this + 8) = 0;
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
    *(this + 9) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
    *(this + 5) = 0;
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(this + 8, *(this + 2));
}

uint64_t ACFUFirmware::getFileSizeByFileName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: This function has not been implemented\n", v2, v3, v4, v5, v6, "ACFUFirmware");
  return 0;
}

CFDataRef ACFUFirmware::hashData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v33 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_9:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no firmware file provided\n", v7, v8, v9, v10, v11, "ACFUFirmware");
LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!a3)
  {
    ACFUFirmware::hashData(a1);
    goto LABEL_29;
  }

  v5 = *(a1 + 56);
  switch(v5)
  {
    case 2:
      CC_SHA512_Init(&v30);
      break;
    case 1:
      CC_SHA384_Init(&v30);
      break;
    case 0:
      CC_SHA256_Init(&c);
      break;
  }

  v12 = 0;
  do
  {
    if (v3 >= 0x100000)
    {
      v13 = 0x100000;
    }

    else
    {
      v13 = v3;
    }

    v14 = (*(**(a1 + 32) + 8))(md);
    v15 = *md;
    if (!*md)
    {
      v23 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v23, 2u, "%s::%s: failed to obtain file data\n", v24, v25, v26, v27, v28, "ACFUFirmware");
      goto LABEL_29;
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      if (v16 == 1)
      {
        DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
        CC_SHA384_Update(&v30, DataPtr, v13);
      }

      else if (v16 == 2)
      {
        v17 = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
        CC_SHA512_Update(&v30, v17, v13);
      }
    }

    else
    {
      v19 = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
      CC_SHA256_Update(&c, v19, v13);
    }

    v12 += v13;
    v3 -= v13;
    ACFUDataContainer::DirectDataRef::~DirectDataRef(v15);
    operator delete(v20);
  }

  while (v3);
  v21 = *(a1 + 56);
  if (v21 == 2)
  {
    CC_SHA512_Final(md, &v30);
    result = CFDataCreate(*MEMORY[0x29EDB8ED8], md, 64);
  }

  else if (v21 == 1)
  {
    CC_SHA384_Final(md, &v30);
    result = CFDataCreate(*MEMORY[0x29EDB8ED8], md, 48);
  }

  else
  {
    if (v21)
    {
      goto LABEL_29;
    }

    CC_SHA256_Final(md, &c);
    result = CFDataCreate(*MEMORY[0x29EDB8ED8], md, 32);
  }

LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

CFDataRef ACFUFirmware::hashData(ACFUFirmware *this, CFDataRef theData)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = *(this + 14);
  if (v3 == 2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v14 = CC_SHA512(BytePtr, Length, md);
    if (v14 == md)
    {
      v7 = *MEMORY[0x29EDB8ED8];
      v8 = 64;
      goto LABEL_10;
    }

    ACFUFirmware::hashData(v14);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v9 = CFDataGetBytePtr(theData);
    v10 = CFDataGetLength(theData);
    v11 = CC_SHA384(v9, v10, md);
    if (v11 == md)
    {
      v7 = *MEMORY[0x29EDB8ED8];
      v8 = 48;
      goto LABEL_10;
    }

    ACFUFirmware::hashData(v11);
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (v3)
  {
    goto LABEL_14;
  }

  v4 = CFDataGetBytePtr(theData);
  v5 = CFDataGetLength(theData);
  v6 = CC_SHA256(v4, v5, md);
  if (v6 != md)
  {
    ACFUFirmware::hashData(v6);
    goto LABEL_14;
  }

  v7 = *MEMORY[0x29EDB8ED8];
  v8 = 32;
LABEL_10:
  result = CFDataCreate(v7, md, v8);
LABEL_15:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL ACFUFirmware::init(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 8);
  if (v3 != a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>(v3, *a2, a2 + 1);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 40) = Mutable;
  if (!Mutable)
  {
    ACFUFirmware::init(0);
  }

  return Mutable != 0;
}

uint64_t ACFUFirmware::measureFW(ACFUFirmware *this)
{
  v1 = *(this + 1);
  v2 = this + 16;
  if (v1 == (this + 16))
  {
    return 1;
  }

  while (1)
  {
    if (*(this + 80) != 1)
    {
      v6 = ACFUFirmware::copyFWDataByTag(this, v1[4]);
      if (v6)
      {
        v7 = v6;
        v8 = ACFUFirmware::hashData(this, v6);
        CFRelease(v7);
        if (!v8)
        {
          break;
        }

        goto LABEL_19;
      }

      ACFUCommon::stringFromCFString(v1[4], &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v22, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_29;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v22 = __s;
        goto LABEL_29;
      }

      v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "UNDEF");
LABEL_29:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      goto LABEL_31;
    }

    v4 = (*(*this + 40))(this, v1 + 5);
    if (!v4)
    {
      ACFUCommon::stringFromCFString(v1[4], &__s);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v22, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_25;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v22 = __s;
        goto LABEL_25;
      }

      v10 = std::string::basic_string[abi:ne200100]<0>(&v22, "UNDEF");
LABEL_25:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

LABEL_31:
      __s = v22;
      LogInstance = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: no fw for tag '%s'\n", v12, v13, v14, v15, v16, "ACFUFirmware");
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      goto LABEL_33;
    }

    v5 = v4;
    if (*(v1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, v1[5], v1[6]);
    }

    else
    {
      v21 = *(v1 + 5);
    }

    v9 = ACFUFirmware::hashData(this, &v21, v5);
    v8 = v9;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (!v8)
    {
      break;
    }

LABEL_19:
    CFDictionarySetValue(*(this + 5), v1[4], v8);
    CFRelease(v8);
LABEL_33:
    v17 = v1[1];
    if (v17)
    {
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        v18 = v1[2];
        v19 = *v18 == v1;
        v1 = v18;
      }

      while (!v19);
    }

    v1 = v18;
    if (v18 == v2)
    {
      return 1;
    }
  }

  ACFUFirmware::measureFW(v9);
  return 0;
}

void sub_2984CD68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUFirmware::setManifest(ACFUFirmware *this, const __CFData *a2)
{
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
    *(this + 6) = 0;
  }

  AMSupportSafeRetain();
  *(this + 6) = a2;
  v5 = ACFUFirmware::hashData(this, a2);
  LogInstance = ACFULogging::getLogInstance(v5);
  if (v5)
  {
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Manifest digest\n", v7, v8, v9, v10, v11, "ACFUFirmware");
    v13 = ACFULogging::getLogInstance(v12);
    std::string::basic_string[abi:ne200100]<0>(&v21, "ACFUFirmware");
    v14 = std::string::append(&v21, "::");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v22, "setManifest");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v24 = v16->__r_.__value_.__r.__words[2];
    v23 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    ACFULogging::handleMessageBinary(v13, &v23, 0, BytePtr, Length, 1);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    CFRelease(v5);
  }

  else
  {
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Digest of manifest failed\n", v7, v8, v9, v10, v11, "ACFUFirmware");
  }

  return v5 != 0;
}

void sub_2984CD848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<__CFString const*,std::string>,std::__tree_node<std::__value_type<__CFString const*,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
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

    v14 = result;
    v15 = v8;
    v16 = v8;
    if (v8)
    {
      v15 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::string::operator=((v8 + 5), (v9 + 5));
          std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__node_insert_multi(v5, v16);
          v8 = v15;
          v16 = v15;
          if (v15)
          {
            v15 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v15);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v14);
  }

  if (a2 != a3)
  {
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_multi<std::pair<__CFString const* const,std::string> const&>(v5, (a2 + 4));
      v12 = a2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = a2[2];
          v11 = *v13 == a2;
          a2 = v13;
        }

        while (!v11);
      }

      a2 = v13;
    }

    while (v13 != a3);
  }

  return result;
}

void sub_2984CD9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_multi<std::pair<__CFString const* const,std::string> const&>(uint64_t a1, uint64_t a2)
{
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a2, &v7);
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (v7[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v3, v5, v7);
  return v7;
}

void ACFUFirmware::saveFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create directory to save firmware (status: %d)\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to save packaged firmware file\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: savePath for FW not specified. This needs to be specified.\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: fFirmwareFile has not been initialized.\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

void ACFUFirmware::hashData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: empty file\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: SHA512 failed\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: SHA384 failed\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: SHA256 failed\n", v2, v3, v4, v5, v6, "ACFUFirmware");
}

void ACFUFile::ACFUFile(ACFUFile *this)
{
  *this = &unk_2A1EE8948;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 1;
}

void ACFUFile::fileVersionLog(ACFUFile *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v1 = (*(*this + 96))(this);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    Length = CFDataGetLength(v2);
    if (Length > 0x7F)
    {
      ACFUFile::fileVersionLog(Length);
    }

    else
    {
      if (Length)
      {
        v5 = v14;
        do
        {
          v6 = *BytePtr++;
          *v5++ = v6;
          Length = (Length - 1);
        }

        while (Length);
      }

      HIBYTE(v15) = 0;
      LogInstance = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Firmware Version: %s\n", v8, v9, v10, v11, v12, "ACFUFile");
    }

    CFRelease(v2);
  }

  else
  {
    ACFUFile::fileVersionLog(0);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t ACFUFile::saveToPath(ACFUFile *this, const __CFURL *a2)
{
  if (!a2)
  {
    ACFUFile::saveToPath(this);
    return 0;
  }

  if (!*(this + 3))
  {
    ACFUFile::saveToPath(this);
    return 0;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    ACFUFile::saveToPath(0);
    return 0;
  }

  isOptimized = ACFUDataContainer::isOptimized(v3);
  if (isOptimized)
  {
    ACFUFile::saveToPath(isOptimized);
    return 0;
  }

  v6 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x29EDB8ED8], a2, *(this + 3), 0);
  if (!v6)
  {
    ACFUFile::saveToPath(0);
    return 0;
  }

  v8 = v6;
  if (!ACFUCommon::doesPathExist(v6, v7))
  {
    v9 = MEMORY[0x29C28AF20](v8);
    if (v9)
    {
      ACFUFile::saveToPath(v9);
      goto LABEL_26;
    }
  }

  if (!ACFUDataContainer::getData(*(this + 1)))
  {
    ACFUFile::saveToPath(0);
LABEL_26:
    v22 = 0;
    goto LABEL_14;
  }

  v10 = AMSupportWriteDataToFileURL();
  if (v10)
  {
    ACFUFile::saveToPath(v10);
    goto LABEL_26;
  }

  Length = ACFUDataContainer::getLength(*(this + 1));
  FileSize = ACFUCommon::getFileSize(v8, v12);
  LogInstance = ACFULogging::getLogInstance(FileSize);
  v15 = CFURLGetString(v8);
  ACFUCommon::stringFromCFString(v15, &__p);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Wrote %zu of %zu bytes to %s\n", v16, v17, v18, v19, v20, "ACFUFile");
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (Length != FileSize)
  {
    ACFUFile::saveToPath(v21);
    goto LABEL_26;
  }

  v22 = 1;
LABEL_14:
  CFRelease(v8);
  return v22;
}

void sub_2984CE128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUFile::~ACFUFile(ACFUFile *this)
{
  *this = &unk_2A1EE8948;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, 0);
}

uint64_t ACFUFile::init(ACFUDataContainer **this, const __CFData *a2)
{
  if (!this[3])
  {
    ACFUFile::init(this);
    return 0;
  }

  if (!a2)
  {
    ACFUFile::init(this);
    return 0;
  }

  TypeID = CFDataGetTypeID();
  v5 = CFGetTypeID(a2);
  if (TypeID != v5)
  {
    ACFUFile::init(v5);
    return 0;
  }

  ACFUDataContainer::create(a2, &v10);
  v6 = v10;
  v10 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, v6);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    ACFUDataContainer::~ACFUDataContainer(v7);
    operator delete(v8);
  }

  if (!this[1])
  {
    ACFUFile::init(v7);
    return 0;
  }

  return 1;
}

uint64_t ACFUFile::init(ACFUDataContainer **this, __CFData *a2)
{
  if (!this[3])
  {
    ACFUFile::init(this);
    return 0;
  }

  if (!a2)
  {
    ACFUFile::init(this);
    return 0;
  }

  TypeID = CFDataGetTypeID();
  v5 = CFGetTypeID(a2);
  if (TypeID != v5)
  {
    ACFUFile::init(v5);
    return 0;
  }

  ACFUDataContainer::create(a2, &v10);
  v6 = v10;
  v10 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, v6);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    ACFUDataContainer::~ACFUDataContainer(v7);
    operator delete(v8);
  }

  if (!this[1])
  {
    ACFUFile::init(v7);
    return 0;
  }

  return 1;
}

BOOL ACFUFile::init(ACFUDataContainer **this, const __CFString *a2, const __CFString *a3)
{
  if (!a2)
  {
    ACFUFile::init(this);
    return 0;
  }

  v4 = this[3];
  if (!v4)
  {
    ACFUFile::init(this);
    return 0;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@/%@", a2, v4);
  if (!v6)
  {
    ACFUFile::init(0);
    return 0;
  }

  v7 = v6;
  ACFUDataContainer::create(v6, a3, &v14);
  v8 = v14;
  v14 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, v8);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    ACFUDataContainer::~ACFUDataContainer(v9);
    operator delete(v10);
  }

  v11 = this[1];
  v12 = v11 != 0;
  if (!v11)
  {
    ACFUFile::init(v9);
  }

  CFRelease(v7);
  return v12;
}

void ACFUFile::fileVersionLog(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: data exceeds local buffer size\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no data to log\n", v2, v3, v4, v5, v6, "ACFUFile");
}

void ACFUFile::saveToPath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create directory to save firmware (status: %d)\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to save file (%d)\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to write some or all of data\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to obtain reference of data from data container\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: could not create URL to file\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot save data using optimized flow\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file data?!\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file name not specified\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad parameters\n", v2, v3, v4, v5, v6, "ACFUFile");
}

void ACFUFile::init(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: data is of an unsupported type\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create data container\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad parameter!\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file name specified\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create ftab file path\n", v2, v3, v4, v5, v6, "ACFUFile");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file name does not exist\n", v2, v3, v4, v5, v6, "ACFUFile");
}

off_t ACFUCommon::getFileSize(ACFUCommon *this, const __CFURL *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  bzero(buffer, 0x400uLL);
  v3 = CFURLGetFileSystemRepresentation(this, 1u, buffer, 1024);
  if (!v3)
  {
    ACFUCommon::getFileSize(v3);
    st_size = 0;
    v5 = -1;
    goto LABEL_5;
  }

  v4 = open(buffer, 0);
  v5 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    ACFUCommon::getFileSize(v4);
    st_size = 0;
    goto LABEL_5;
  }

  v6 = fstat(v4, &v10);
  if (v6)
  {
    ACFUCommon::getFileSize(v6);
    st_size = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  st_size = v10.st_size;
  if (v5)
  {
LABEL_5:
    close(v5);
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return st_size;
}

__CFData *ACFUCommon::createMutableFileDatafromFilePath(ACFUCommon *this, const __CFString *a2)
{
  v2 = MEMORY[0x2A1C7C4A8](this, a2);
  v25 = *MEMORY[0x29EDCA608];
  bzero(__ptr, 0x1000uLL);
  if (!v2)
  {
    ACFUCommon::createMutableFileDatafromFilePath(v3);
LABEL_22:
    Mutable = 0;
    goto LABEL_16;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  URLFromString = AMSupportCreateURLFromString();
  if (!URLFromString)
  {
    ACFUCommon::createMutableFileDatafromFilePath(0);
    goto LABEL_22;
  }

  v7 = URLFromString;
  FileSize = ACFUCommon::getFileSize(URLFromString, v6);
  if (FileSize)
  {
    v9 = FileSize;
    bzero(v24, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(v7, 1u, v24, 1024))
    {
      v10 = fopen(v24, "r");
      if (v10)
      {
        v11 = v10;
        Mutable = CFDataCreateMutable(v4, 0);
        if (Mutable)
        {
          while (1)
          {
            v13 = v9 >= 0x1000 ? 4096 : v9;
            v14 = fread(__ptr, 1uLL, v13, v11);
            if (v13 != v14)
            {
              break;
            }

            if (feof(v11) || ferror(v11) < 0)
            {
              ACFUCommon::createMutableFileDatafromFilePath(v11);
              goto LABEL_19;
            }

            CFDataAppendBytes(Mutable, __ptr, v13);
            v9 -= v13;
            if (!v9)
            {
              goto LABEL_14;
            }
          }

          LogInstance = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: read less bytes than required (read: %zu, required: %zu)\n", v18, v19, v20, v21, v22, "ACFUCommon");
LABEL_19:
          CFRelease(Mutable);
          Mutable = 0;
        }

        else
        {
          ACFUCommon::createMutableFileDatafromFilePath(0);
        }

LABEL_14:
        fclose(v11);
        goto LABEL_15;
      }
    }

    else
    {
      ACFUCommon::createMutableFileDatafromFilePath(v24);
    }

    ACFUCommon::createMutableFileDatafromFilePath(v10);
  }

  else
  {
    ACFUCommon::createMutableFileDatafromFilePath(0);
  }

  Mutable = 0;
LABEL_15:
  CFRelease(v7);
LABEL_16:
  v15 = *MEMORY[0x29EDCA608];
  return Mutable;
}

void ACFUCommon::parseDebugArgs(ACFUCommon *this@<X0>, const __CFDictionary *a2@<X1>, _DWORD *a3@<X8>)
{
  v71 = *MEMORY[0x29EDCA608];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  if (!this)
  {
    ACFUCommon::parseDebugArgs(0);
LABEL_29:
    v23 = 0;
    v24 = 4006;
    goto LABEL_30;
  }

  if (!a2)
  {
    ACFUCommon::parseDebugArgs(this);
    v23 = 0;
    v24 = 4005;
    goto LABEL_30;
  }

  v6 = this;
  Value = CFDictionaryGetValue(this, @"Options");
  LogInstance = ACFULogging::getLogInstance(Value);
  if (Value)
  {
    v14 = "%s::%s: Found updater options in dictionary\n";
  }

  else
  {
    v14 = "%s::%s: Assuming updater options dictionary is being passed\n";
  }

  if (Value)
  {
    v6 = Value;
  }

  ACFULogging::handleMessage(LogInstance, 3u, v14, v9, v10, v11, v12, v13, "ACFUCommon");
  TypeID = CFDictionaryGetTypeID();
  v16 = CFGetTypeID(v6);
  if (TypeID != v16)
  {
    ACFUCommon::parseDebugArgs(v16);
LABEL_32:
    v23 = 0;
    v24 = 4002;
    goto LABEL_30;
  }

  v17 = CFDictionaryGetValue(v6, @"ACFUDebugArgs");
  if (!v17)
  {
    ACFUCommon::parseDebugArgs(0);
    goto LABEL_29;
  }

  v18 = v17;
  v19 = CFStringGetTypeID();
  v20 = CFGetTypeID(v18);
  if (v19 != v20)
  {
    ACFUCommon::parseDebugArgs(v20);
    goto LABEL_32;
  }

  CString = CFStringGetCString(v18, buffer, 512, 0x8000100u);
  if (CString)
  {
    __stringp = buffer;
    v22 = strsep(&__stringp, " ");
    if (v22)
    {
      v23 = 0;
      v24 = 4006;
      while (1)
      {
        v25 = strlen(a2);
        v26 = strncmp(v22, a2, v25);
        if (!v26)
        {
          v27 = v22[v25] == 61;
          v28 = ACFULogging::getLogInstance(v26);
          if (!v27)
          {
            ACFULogging::handleMessage(v28, 2u, "%s::%s: Invalid token: %s\n", v29, v30, v31, v32, v33, "ACFUCommon");
            goto LABEL_24;
          }

          ACFULogging::handleMessage(v28, 3u, "%s::%s: Token: %s\n", v29, v30, v31, v32, v33, "ACFUCommon");
          v34 = strchr(v22, 61);
          if (!v34)
          {
            ACFUCommon::parseDebugArgs(a2);
            goto LABEL_24;
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, v34 + 1);
          v35 = std::stoul(&__str, 0, 0);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v24 = 0;
          v23 = v35;
        }

        v22 = strsep(&__stringp, " ");
        if (!v22)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_29;
  }

  ACFUCommon::parseDebugArgs(CString);
  v23 = 0;
LABEL_24:
  v24 = 4007;
LABEL_30:
  *a3 = v23;
  a3[1] = v24;
  v36 = *MEMORY[0x29EDCA608];
}

void ACFUCommon::stringFromCFString(const __CFString *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(this, SystemEncoding);
    if (CStringPtr)
    {
      v7 = CStringPtr;
      v8 = 0;
    }

    else
    {
      Length = CFStringGetLength(this);
      v10 = malloc(Length + 1);
      v8 = v10;
      v7 = "";
      if (v10)
      {
        bzero(v10, Length + 1);
        v11 = CFStringGetSystemEncoding();
        if (CFStringGetCString(this, v8, Length + 1, v11))
        {
          v7 = v8;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, v7);
  *a2 = v12;
  a2[2] = v13;
  if (v8)
  {
    free(v8);
  }
}

void ACFUCommon::cfTypeDescription(ACFUCommon *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = CFCopyTypeIDDescription(this);
  v7 = v6;
  if (!v6)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy type description for type ID %lu\n", v16, v17, v18, v19, v20, "ACFUCommon");
    return;
  }

  if (!a2)
  {
    CFRetain(v6);
    v8 = v7;
    goto LABEL_6;
  }

  v8 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@ (%lu)", v6, this);
  if (v8)
  {
LABEL_6:
    ACFUCommon::stringFromCFString(v8, &v21);
    *a3 = v21;
    a3[2] = v22;
    CFRelease(v8);
    goto LABEL_7;
  }

  v9 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v9, 2u, "%s::%s: failed to create full description for type ID %lu\n", v10, v11, v12, v13, v14, "ACFUCommon");
LABEL_7:
  CFRelease(v7);
}

void sub_2984CF120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUCommon::doesPathExist(ACFUCommon *this, const __CFURL *a2)
{
  v21 = 0;
  v3 = MEMORY[0x29C28AEE0](this, &v21);
  if (v3)
  {
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to determine if url exists (%u)\n", v5, v6, v7, v8, v9, "ACFUCommon");
    v11 = ACFULogging::getLogInstance(v10);
    std::string::basic_string[abi:ne200100]<0>(&v17, "ACFUCommon");
    v12 = std::string::append(&v17, "::");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v18, "doesPathExist");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v11, &v19, 0, "Path URL: ", this);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return v21 == 1;
}

void sub_2984CF268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUCommon::removeFileWithURL(ACFUCommon *this, const __CFURL *a2)
{
  if (this && (v2 = this, v3 = CFURLGetTypeID(), this = CFGetTypeID(v2), v3 == this))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    std::string::basic_string[abi:ne200100]<0>(&v23, "ACFUCommon");
    v5 = std::string::append(&v23, "::");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v24, "removeFileWithURL");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &v25, 0, "Removing file at URL: ", v2);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v9 = AMSupportRemoveFile();
    if (!v9)
    {
      return 1;
    }

    v10 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v10, 2u, "%s::%s: failed to remove file (%u)\n", v11, v12, v13, v14, v15, "ACFUCommon");
  }

  else
  {
    v16 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v16, 2u, "%s::%s: failed due to unexpected data type\n", v17, v18, v19, v20, v21, "ACFUCommon");
  }

  return 0;
}

void sub_2984CF418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
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

void sub_2984CF4C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C28BC90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2984CF574(_Unwind_Exception *a1)
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
  MEMORY[0x29C28BBC0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
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

  MEMORY[0x29C28BBD0](v13);
  return a1;
}

void sub_2984CF7E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C28BBD0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2984CF7C4);
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
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
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

void sub_2984CFA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::getFileSize(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get file stats\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v2 = __error();
  strerror(*v2);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to open file (%s)\n", v3, v4, v5, v6, v7, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get file system reprensetation\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void ACFUCommon::createMutableFileDatafromFilePath(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ferror(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file i/o error (code: %d)\n", v3, v4, v5, v6, v7, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create mutable data\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to get file system reprensetation\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: bad input file parameters\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file is empty (file size: %zu)\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create url from string\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no file path provided\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

void ACFUCommon::parseDebugArgs(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid Type of Updater Options dict\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid Type of DebugArgs\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Missing = for key: %s\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Failed to get DebugArgs buffer\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Empty DebugArgs\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Invalid arguments to parseDebugArgs\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Empty options dict\n", v2, v3, v4, v5, v6, "ACFUCommon");
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v5);
  if (!result)
  {
    if (HIDWORD(v5[0]))
    {
      result = 7;
    }

    else
    {
      result = 0;
      *a2 = v5[0];
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v9[3] = *MEMORY[0x29EDCA608];
  memset(v9, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v9, 0);
  if (result)
  {
    goto LABEL_7;
  }

  v6 = v9[0];
  *a2 = v9[0];
  if (v6 >> 1 != 0x1000000000000008)
  {
    result = 2;
    goto LABEL_7;
  }

  if (__CFADD__(v9[1], v9[2]))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v9[1] + v9[2];
    if (v9[1] <= v9[1] + v9[2])
    {
      result = 0;
      *a3 = v9[1];
      a3[1] = v7;
LABEL_7:
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_8;
  }

  v11[0] = *a1;
  v11[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v11, a2, 0);
  if (result)
  {
LABEL_8:
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = a2[1];
  v7 = a2[2];
  if (!__CFADD__(v8, v7))
  {
    v9 = v8 + v7;
    if (v9 <= a1[1] && *a1 <= v9)
    {
      result = 0;
      *a1 = v9;
      goto LABEL_8;
    }

    __break(0x5519u);
  }

  __break(0x5513u);
  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v13[3] = *MEMORY[0x29EDCA608];
  memset(v13, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v13, 0);
  if (!result)
  {
    if (v13[0] == 0x2000000000000010)
    {
      result = DERParseSequenceContentToObject(&v13[1], a2, a3, a4, a5, a6);
    }

    else
    {
      result = 2;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v38 = *MEMORY[0x29EDCA608];
  v36 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v36 = *a1;
  v37 = v13;
  if (a2)
  {
    v14 = 0;
    while (1)
    {
      memset(v35, 170, sizeof(v35));
      v16 = v36;
      v15 = v37;
      result = DERDecodeSeqNext(&v36, v35);
      if (result)
      {
        if (result == 1)
        {
          if (a2 <= v14)
          {
            result = 0;
          }

          else
          {
            v29 = (a3 + 24 * v14 + 16);
            v30 = a2 - v14;
            result = 0;
            while (1)
            {
              v31 = *v29;
              v29 += 12;
              if ((v31 & 1) == 0)
              {
                break;
              }

              if (!--v30)
              {
                goto LABEL_51;
              }
            }

            result = 5;
          }
        }

        goto LABEL_51;
      }

      if (a2 <= v14)
      {
        result = 2;
        goto LABEL_51;
      }

      while (1)
      {
        if (24 * v14 > ~a3)
        {
          goto LABEL_58;
        }

        v18 = a3 + 24 * v14;
        v19 = *(v18 + 16);
        if ((v19 & 2) != 0 || v35[0] == *(v18 + 8))
        {
          break;
        }

        result = 2;
        if ((v19 & 1) != 0 && a2 > ++v14)
        {
          continue;
        }

        goto LABEL_51;
      }

      if ((v19 & 4) == 0)
      {
        v20 = *v18;
        v21 = *v18 + 16;
        if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
        {
          result = 7;
          goto LABEL_51;
        }

        if (v20 > ~a4)
        {
          goto LABEL_58;
        }

        v23 = (a4 + v20);
        v24 = v23 + 16;
        if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
        {
          goto LABEL_59;
        }

        *v23 = *&v35[1];
        if ((v19 & 8) != 0)
        {
          if (v16 >= v35[1])
          {
            if (v15 < v16 || *(v23 + 1) > v15 - v16)
            {
              goto LABEL_59;
            }

            *v23 = v16;
            result = 3;
            goto LABEL_51;
          }

          v27 = *(v23 + 1);
          v28 = v27 + v35[1] - v16;
          if (__CFADD__(v27, v35[1] - v16))
          {
            __break(0x5500u);
            return result;
          }

          if (v15 < v16 || v28 > v15 - v16)
          {
            goto LABEL_59;
          }

          *v23 = v16;
          *(v23 + 1) = v28;
        }
      }

      if (a2 == ++v14)
      {
        if (!__CFADD__(v35[1], v35[2]))
        {
          v32 = a1[1];
          if (!__CFADD__(*a1, v32))
          {
            v11 = v35[1] + v35[2];
            v13 = *a1 + v32;
            break;
          }
        }

LABEL_58:
        __break(0x5513u);
        goto LABEL_59;
      }

      if (a2 <= v14)
      {
        v11 = v36;
        v13 = v37;
        break;
      }
    }
  }

  if (v11 == v13)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

LABEL_51:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t SoCUpdaterExecCommandDynamic(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, const __CFDictionary *a5, CFErrorRef *a6)
{
  v11 = a1;
  v26 = 0;
  v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s: Dylib Path: %@\n", "CFDictionaryRef  _Nullable SoCUpdaterExecCommandDynamic(NSString *__strong _Nullable, SoCUpdaterLogSinkFunction _Nonnull, void * _Nonnull, CFStringRef _Nonnull, CFDictionaryRef _Nonnull, CFErrorRef * _Nullable)", v11];
  a2(a3, [v12 UTF8String]);

  Value = CFDictionaryGetValue(a5, @"DeviceInfo");
  v14 = CFDictionaryGetValue(Value, @"UpdaterRef");
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  v16 = v11;
  v17 = v16;
  if (!v16)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    v24 = 5;
LABEL_12:
    *a6 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], v24, 0);
    goto LABEL_13;
  }

  v18 = dlopen([v16 UTF8String], 1);
  if (!v18)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    v24 = 9;
    goto LABEL_12;
  }

  v19 = dlsym(v18, "UARPSoCUpdaterExecCommand");
  if (!v19)
  {
    if (a6)
    {
      v24 = 14;
      goto LABEL_12;
    }

LABEL_13:

LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v20 = v19;

  v21 = v20(v15, a4, a5, &v26, a6);
  v22 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"result:%d output:%@ updater:%@", v21, v26, v15];
  a2(a3, [v22 UTF8String]);

  v23 = v26;
LABEL_15:

  return v23;
}

CFTypeRef Ace3RestoreInfoGetTags(const __CFDictionary *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, CFErrorRef *a4)
{
  result = SoCUpdaterExecCommandDynamic(@"/usr/lib/updaters/libAce3Updater.dylib", a2, a3, @"queryTags", a1, a4);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void *Ace3RestoreInfoCopyFirmware(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [(Ace3SoCRestoreInfoFirmwareCopierOS *)[Ace3RestoreInfoFirmwareCopierOS alloc] initWithOptions:a1 logFunction:a2 logContext:a3];
  v15 = 0;
  v6 = [(Ace3SoCRestoreInfoFirmwareCopierOS *)v5 copyFirmwareToDestinationBundleWithError:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v14 = 0;
    v9 = [(Ace3SoCRestoreInfoFirmwareCopierOS *)v5 readFirmwareFileDataWithError:&v14];
    v10 = v14;
    v11 = v10;
    if (v9)
    {
      v12 = v9;
    }

    else if (a4)
    {
      *a4 = v10;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      *a4 = v7;
    }
  }

  return v9;
}

CFTypeRef Ace3RestoreInfoCreateRequest(const __CFDictionary *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, CFErrorRef *a4)
{
  result = SoCUpdaterExecCommandDynamic(@"/usr/lib/updaters/libAce3Updater.dylib", a2, a3, @"generateMeasurements", a1, a4);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t AppleTconUARPRestoreInfoGetTags(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], 102, 0);
  }

  return 0;
}

uint64_t AppleTconUARPRestoreInfoCopyFirmware(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], 102, 0);
  }

  return 0;
}

uint64_t AppleTconUARPRestoreInfoCreateRequest(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], 102, 0);
  }

  return 0;
}

id UARPPersonalizationTSSRequestWithSigningServer(void *a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = String();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_29849C000, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v17, 2u);
    }

    v5 = [MEMORY[0x29EDB8E70] URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&dword_29849C000, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with options %{public}@", &v17, 0x16u);
  }

  v8 = String(v3, v5, 0);
  v9 = String();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_1();
    }

    v11 = v8;
  }

  else
  {
    if (v10)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_2();
    }

    v12 = MGCopyAnswer();
    v13 = [v12 BOOLValue];
    v14 = 0;
    if (v13)
    {
      v14 = UARPPersonalizationTSSRequestWithSigningServerSSO(v3, v5);
    }

    v11 = v14;
  }

  v15 = *MEMORY[0x29EDCA608];

  return v11;
}

id String()
{
  if (TSSRequestLogToken_onceToken != -1)
  {
    TSSRequestLogToken_cold_1();
  }

  v1 = TSSRequestLogToken_logToken;

  return v1;
}

id String(void *a1, void *a2, int a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v6 = a2;
  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&dword_29849C000, v7, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", buf, 0xCu);
  }

  AMAuthInstallLogSetHandler(String);
  v8 = AMAuthInstallCreate(*MEMORY[0x29EDB8ED8]);
  if (!v8)
  {
    v11 = String();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_5();
    }

    goto LABEL_11;
  }

  v9 = v8;
  if (AMAuthInstallSetSigningServerURL(v8, v6))
  {
    v10 = String();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_1();
    }

LABEL_7:

    CFRelease(v9);
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (a3)
  {
    v15 = String();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29849C000, v15, OS_LOG_TYPE_INFO, "UARP: TSS request is using SSO", buf, 2u);
    }

    if (AMAuthInstallSsoInitialize())
    {
      v10 = String();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        TSSRequestWithSigningServer_cold_2();
      }

      goto LABEL_7;
    }

    if (AMAuthInstallSsoEnable(v9, v16, v17, v18, v19, v20, v21, v22))
    {
      v10 = String();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        TSSRequestWithSigningServer_cold_3();
      }

      goto LABEL_7;
    }
  }

  v23 = String();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v24 = @" <AppleConnect>";
    }

    else
    {
      v24 = @" ";
    }

    *buf = 138543618;
    v33 = v6;
    v34 = 2114;
    v35 = v24;
    _os_log_impl(&dword_29849C000, v23, OS_LOG_TYPE_INFO, "UARP: TSS Request %{public}@%{public}@ is ", buf, 0x16u);
  }

  v25 = String();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&dword_29849C000, v25, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  v31 = 0;
  v26 = AMAuthInstallApCreatePersonalizedResponse(v9, v5, &v31);
  v27 = String();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v28 = @" <AppleConnect>";
    }

    else
    {
      v28 = @" ";
    }

    *buf = 138543618;
    v33 = v6;
    v34 = 2114;
    v35 = v28;
    _os_log_impl(&dword_29849C000, v27, OS_LOG_TYPE_INFO, "UARP: TSS Response %{public}@%{public}@ is ", buf, 0x16u);
  }

  v29 = String();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v33 = v31;
    _os_log_impl(&dword_29849C000, v29, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  if (v26)
  {
    v30 = String();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_4(v26, v30);
    }

    v12 = 0;
  }

  else
  {
    v12 = v31;
  }

  CFRelease(v9);
LABEL_12:

  v13 = *MEMORY[0x29EDCA608];

  return v12;
}

id UARPPersonalizationTSSRequestWithSigningServerSSO(void *a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = String();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_29849C000, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v12, 2u);
    }

    v5 = [MEMORY[0x29EDB8E70] URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_29849C000, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with SSO and options %{public}@", &v12, 0x16u);
  }

  v8 = String(v3, v5, 1);
  if (!v8)
  {
    v9 = String();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      UARPPersonalizationTSSRequestWithSigningServerSSO_cold_1();
    }
  }

  v10 = *MEMORY[0x29EDCA608];

  return v8;
}

void __TSSRequestLogToken_block_invoke()
{
  v0 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
  v1 = TSSRequestLogToken_logToken;
  TSSRequestLogToken_logToken = v0;
}

void String(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = String();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = a2;
    _os_log_impl(&dword_29849C000, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void OUTLINED_FUNCTION_0_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void TSSRequestWithSigningServer_cold_4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_29849C000, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v3, 8u);
  v2 = *MEMORY[0x29EDCA608];
}

void OUTLINED_FUNCTION_0_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id __copy_helper_block_e8_32s40s(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);

  return v4;
}

void __destroy_helper_block_e8_32s40s(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id AppleTypeCRetimerRestoreInfoGetTags(void *a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v1 = [a1 objectForKeyedSubscript:@"DeviceInfo"];
  v2 = [v1 objectForKeyedSubscript:@"InfoArray"];
  if (v2)
  {
    v20 = v1;
    v3 = [MEMORY[0x29EDB8DE8] array];
    v22 = [MEMORY[0x29EDB8DE8] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v2;
    obj = v2;
    v4 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"TicketName"];
          v10 = [v8 objectForKeyedSubscript:@"TagNumber"];
          v11 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, objc_msgSend(v10, "unsignedCharValue")];
          [v3 addObject:v11];
          [v22 addObject:v9];
        }

        v5 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v5);
    }

    v31[0] = @"BuildIdentityTags";
    v12 = [MEMORY[0x29EDB8D80] arrayWithArray:v3];
    v32[0] = v12;
    v31[1] = @"ResponseTags";
    v13 = v22;
    v14 = [MEMORY[0x29EDB8D80] arrayWithArray:v22];
    v32[1] = v14;
    v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v2 = v19;
    v1 = v20;
  }

  else
  {
    v3 = [v1 objectForKeyedSubscript:@"TicketName"];
    v13 = [v1 objectForKeyedSubscript:@"TagNumber"];
    v12 = [MEMORY[0x29EDBA0F8] stringWithValidatedFormat:@"Timer validFormatSpecifiers:RTKitOS error:%u", @"%u", 0, objc_msgSend(v13, "unsignedCharValue")];
    v28 = v12;
    v29[0] = @"BuildIdentityTags";
    v14 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v28 count:1];
    v30[0] = v14;
    v29[1] = @"ResponseTags";
    v27 = v3;
    v16 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v27 count:1];
    v30[1] = v16;
    v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  v17 = *MEMORY[0x29EDCA608];
  return v15;
}

id AppleTypeCRetimerRestoreInfoCopyFirmware(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [[AppleTypeCRetimerFirmwareCopierOS alloc] initWithOptions:a1 logFunction:a2 logContext:a3];
  v15 = 0;
  v6 = [(AppleTypeCRetimerFirmwareCopierOS *)v5 copyFirmwareToDestinationBundleWithError:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v14 = 0;
    v9 = [(AppleTypeCRetimerFirmwareCopierOS *)v5 readFirmwareFileDataWithError:&v14];
    v10 = v14;
    v11 = v10;
    if (v9)
    {
      v12 = v9;
    }

    else if (a4)
    {
      *a4 = v10;
    }
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      *a4 = v7;
    }
  }

  return v9;
}

id AppleTypeCRetimerRestoreInfoCreateRequest(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:@"DeviceInfo"];
  v7 = [v6 objectForKeyedSubscript:@"InfoArray"];

  if (v7)
  {
    v8 = AppleTypeCRetimerFirmwareAggregateRequestCreatorOS;
  }

  else
  {
    v8 = AppleTypeCRetimerFirmwareRequestCreatorOS;
  }

  v9 = [[v8 alloc] initWithOptions:v5 logFunction:a2 logContext:a3];

  if (v9)
  {
    v10 = [v9 requestDictionary];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  return v10;
}

void CentauriCommon::getTatsuTagToFileNameMap(uint64_t a1@<X8>)
{
  v47[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v5, &CentauriTags::Firmware::kRTKitOS, "rkos");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v6, &CentauriTags::Firmware::kRestoreRTKitOS, "rrko");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v7, &CentauriTags::Firmware::kRTKitOSLPEM, "rkol");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v8, &CentauriTags::Firmware::kFirmwareDigestArray, "fwda");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v9, &CentauriTags::Firmware::kACIWIFI, "aciw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v10, &CentauriTags::Firmware::kACIWiFiTxManuf, "awma");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v11, &CentauriTags::Firmware::kWiFiTx, "wftp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v12, &CentauriTags::Firmware::kWiFiTxManuf, "wftm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v13, &CentauriTags::Firmware::kWiFiRx, "wfrp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v14, &CentauriTags::Firmware::kWiFiRxManuf, "wfrm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v15, &CentauriTags::Firmware::kScanWifi, "scaw");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v16, &CentauriTags::Firmware::kScanWifiManuf, "swfm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v17, &CentauriTags::Firmware::kWifi2GLMAC, "w2lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v18, &CentauriTags::Firmware::kWifi2GLMACManuf, "w2lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v19, &CentauriTags::Firmware::kWifi5GLMAC, "w5lp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v20, &CentauriTags::Firmware::kWifi5GLMACManuf, "w5lm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v21, &CentauriTags::Firmware::kWifi2GLPhy, "w2pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v22, &CentauriTags::Firmware::kWifi2GLPhyManuf, "w2pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v23, &CentauriTags::Firmware::kWifi5GLPhy, "w5pp");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v24, &CentauriTags::Firmware::kWifi5GLPhyManuf, "w5pm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v25, &CentauriTags::Firmware::kWifiRegData, "wfrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v26, &CentauriTags::Firmware::kACIBT, "acib");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v27, &CentauriTags::Firmware::kACIBTLPEM, "lpbt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v28, &CentauriTags::Firmware::kACIBTManuf, "acim");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v29, &CentauriTags::Firmware::kPhyBlueTooth, "phyb");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v30, &CentauriTags::Firmware::kPhyBlueToothManuf, "pbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v31, &CentauriTags::Firmware::kScanBluetooth, "scab");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v32, &CentauriTags::Firmware::kScanBTLPEM, "sbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v33, &CentauriTags::Firmware::kScanBTManuf, "sbtm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v34, &CentauriTags::Firmware::kBTRegData, "btrd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v35, &CentauriTags::Firmware::kCCPUApplicationFirmware, "ccaf");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v36, &CentauriTags::Firmware::kCoexRealTimeArbiter, "crta");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v37, &CentauriTags::Firmware::kPhyBlueToothLPM, "pbtl");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v38, &CentauriTags::Firmware::kBTOTPDatabase, "bopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v39, &CentauriTags::Firmware::kBTSecondary, "btse");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v40, &CentauriTags::Firmware::kBTSecondaryManuf, "btsm");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v41, &CentauriTags::Firmware::kPhyBlueTooth5G, "bt5p");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v42, &CentauriTags::Firmware::kPhyBlueTooth5GManuf, "bt5m");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v43, &CentauriTags::Firmware::kWiFiOTPDatabase, "wopd");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v44, &CentauriTags::Firmware::kPhyBluetoothTrim, "pbtt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v45, &CentauriTags::Firmware::kPhyBluetooth5GTrim, "bt5t");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(&v46, &CentauriTags::Firmware::kWifi2GLPhyTrim, "w2pt");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v47, &CentauriTags::Firmware::kWifi5GLPhyTrim, "w5pt");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v5, 43);
  v3 = 172;
  do
  {
    if (SHIBYTE(v5[v3 - 1]) < 0)
    {
      operator delete(v5[v3 - 3]);
    }

    v3 -= 4;
  }

  while (v3 * 8);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_2984EA5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 1352;
  v13 = -1376;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t CentauriRestoreHost::create@<X0>(CentauriRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  v7 = operator new(0xF0uLL);
  ACFURestoreHost::ACFURestoreHost(v7);
  *v7 = &unk_2A1EE8A40;
  *(v7 + 232) = 0;
  *a3 = v7;
  result = CentauriRestoreHost::init(v7, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v9 = *(*v7 + 24);

    return v9(v7);
  }

  return result;
}

void sub_2984EA7A0(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

__CFDictionary *CentauriRestoreHost::createRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v21 = *a2;
  v22 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = ACFURestoreHost::createRequest(a1, &v21, a3);
  v6 = v22;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v5)
  {
    CFDictionaryAddValue(v5, @"Wireless1,UID_MODE", *MEMORY[0x29EDB8EF8]);
    if (*(a1 + 232) == 1)
    {
      LODWORD(valuePtr) = 1;
      v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
      if (!v8)
      {
        std::string::basic_string[abi:ne200100]<0>(v20, "createRequest: failed to create internal data structure");
        ACFUError::addError(a1 + 24, v20, 0x3EDuLL, 0);
        CentauriRestoreHost::createRequest(v20, &valuePtr, v5);
        return 0;
      }

      v9 = v8;
      CFDictionaryRemoveValue(v5, @"Wireless1,ECID");
      CFDictionaryRemoveValue(v5, @"Wireless1,Nonce");
      CFDictionarySetValue(v5, @"Wireless1,UseGlobalSigning", v9);
    }

    else
    {
      v9 = 0;
    }

    LogInstance = ACFULogging::getLogInstance(v7);
    std::string::basic_string[abi:ne200100]<0>(&v16, "CentauriRestoreHost");
    v11 = std::string::append(&v16, "::", 2uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v17, "createRequest", 0xDuLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v19 = v13->__r_.__value_.__r.__words[2];
    valuePtr = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &valuePtr, 0, "Updated Request Dictionary:", v5);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(valuePtr);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    CentauriRestoreHost::createRequest(v6);
  }

  return v5;
}

void sub_2984EA9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

void CentauriRestoreHost::~CentauriRestoreHost(CentauriRestoreHost *this)
{
  ACFURestoreHost::~ACFURestoreHost(this);

  operator delete(v1);
}

uint64_t CentauriRestoreHost::init(CentauriRestoreHost *this, const __CFDictionary *a2, const __CFString *a3)
{
  v76 = *MEMORY[0x29EDCA608];
  *&__src = @"UniqueBuildID";
  *(&__src + 1) = @"Wireless1,OSLongVersion";
  *&v72 = @"Wireless1,ChipID";
  *(&v72 + 1) = @"Wireless1,BoardID";
  *&v73 = @"Wireless1,SecurityDomain";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 5, &__src, &v73 + 8, 5uLL);
  __src = xmmword_29EE9BF90;
  v72 = *&off_29EE9BFA0;
  v73 = xmmword_29EE9BFB0;
  v74 = @"Wireless1,SecurityDomain";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 8, &__src, v75, 7uLL);
  *&__src = @"@Wireless1,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 11, &__src, &__src + 8, 1uLL);
  *&__src = @"Wireless1,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 14, &__src, &__src + 8, 1uLL);
  TypeID = CFDataGetTypeID();
  *&__src = @"UniqueBuildID";
  *(&__src + 1) = TypeID;
  v5 = CFStringGetTypeID();
  *&v72 = @"Wireless1,OSLongVersion";
  *(&v72 + 1) = v5;
  v6 = CFNumberGetTypeID();
  *&v73 = @"Wireless1,ChipID";
  *(&v73 + 1) = v6;
  v7 = CFNumberGetTypeID();
  v74 = @"Wireless1,BoardID";
  v75[0] = v7;
  v8 = CFNumberGetTypeID();
  v75[1] = @"Wireless1,ECID";
  v75[2] = v8;
  v9 = CFDataGetTypeID();
  v75[3] = @"Wireless1,Nonce";
  v75[4] = v9;
  v10 = CFBooleanGetTypeID();
  v75[5] = @"Wireless1,ProductionMode";
  v75[6] = v10;
  v11 = CFBooleanGetTypeID();
  v75[7] = @"Wireless1,SecurityMode";
  v75[8] = v11;
  v12 = CFNumberGetTypeID();
  v75[9] = @"Wireless1,SecurityDomain";
  v75[10] = v12;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(this + 20, &__src, &v76);
  *(this + 28) = @"Centauri";
  CentauriCommon::getTatsuTagToFileNameMap(&__src);
  v13 = __src;
  if (__src != (&__src + 8))
  {
    do
    {
      v15 = *(this + 6);
      v14 = *(this + 7);
      if (v15 >= v14)
      {
        v17 = *(this + 5);
        v18 = (v15 - v17) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
        }

        v19 = v14 - v17;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          v22 = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(this + 40, v21);
        }

        else
        {
          v22 = 0;
        }

        v24 = &v22[8 * v21];
        v23 = &v22[8 * v18];
        *v23 = *(v13 + 4);
        v16 = v23 + 8;
        v25 = *(this + 5);
        v26 = *(this + 6) - v25;
        v27 = &v23[-v26];
        memcpy(&v23[-v26], v25, v26);
        v28 = *(this + 5);
        *(this + 5) = v27;
        *(this + 6) = v16;
        *(this + 7) = v24;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v15 = *(v13 + 4);
        v16 = v15 + 1;
      }

      *(this + 6) = v16;
      v29 = *(v13 + 4);
      v30 = CFStringCompare(v29, @"Wireless1,RTKitOS", 0) != kCFCompareEqualTo;
      v32 = *(this + 18);
      v31 = *(this + 19);
      if (v32 >= v31)
      {
        v34 = *(this + 17);
        v35 = (v32 - v34) >> 4;
        v36 = v35 + 1;
        if ((v35 + 1) >> 60)
        {
          std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
        }

        v37 = v31 - v34;
        if (v37 >> 3 > v36)
        {
          v36 = v37 >> 3;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          v39 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(this + 136, v38);
        }

        else
        {
          v39 = 0;
        }

        v40 = &v39[16 * v35];
        v41 = &v39[16 * v38];
        *v40 = v29;
        v40[8] = v30;
        v33 = v40 + 16;
        v42 = *(this + 17);
        v43 = *(this + 18) - v42;
        v44 = &v40[-v43];
        memcpy(&v40[-v43], v42, v43);
        v45 = *(this + 17);
        *(this + 17) = v44;
        *(this + 18) = v33;
        *(this + 19) = v41;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v32 = v29;
        *(v32 + 8) = v30;
        v33 = (v32 + 16);
      }

      *(this + 18) = v33;
      v46 = CFStringCompare(*(v13 + 4), @"Wireless1,RTKitOS", 0) == kCFCompareEqualTo;
      *&v70 = *(v13 + 4);
      WORD4(v70) = v46;
      std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(this + 25, &v70, &v70);
      v47 = *(v13 + 1);
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = *(v13 + 2);
          v49 = *v48 == v13;
          v13 = v48;
        }

        while (!v49);
      }

      v13 = v48;
    }

    while (v48 != (&__src + 8));
  }

  if ((ACFURestoreHost::init(this, a2, a3) & 1) == 0)
  {
    goto LABEL_47;
  }

  Value = CFDictionaryGetValue(*(this + 2), @"Options");
  v51 = Value;
  if (Value)
  {
    v52 = CFGetTypeID(Value);
    v53 = CFDictionaryGetTypeID();
    if (v52 != v53)
    {
      LogInstance = ACFULogging::getLogInstance(v53);
      v67 = "%s::%s: updater options has wrong type\n";
LABEL_46:
      ACFULogging::handleMessage(LogInstance, 2u, v67, v62, v63, v64, v65, v66, "CentauriRestoreHost");
LABEL_47:
      v58 = 0;
      goto LABEL_43;
    }

    v54 = CFDictionaryGetValue(v51, @"GlobalSigning");
    v55 = v54;
    if (v54)
    {
      v56 = CFGetTypeID(v54);
      v57 = CFBooleanGetTypeID();
      if (v56 == v57)
      {
        *(this + 232) = CFBooleanGetValue(v55) != 0;
        goto LABEL_40;
      }

      LogInstance = ACFULogging::getLogInstance(v57);
      v67 = "%s::%s: global signing has wrong type\n";
      goto LABEL_46;
    }
  }

LABEL_40:
  if ((*(this + 232) & 1) == 0)
  {
    *(this + 23) = @"Wireless1,FdrRootCaDigest";
    *(this + 24) = @"Wireless1,FDRAllowUnsealed";
  }

  v58 = 1;
LABEL_43:
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&__src, *(&__src + 1));
  v59 = *MEMORY[0x29EDCA608];
  return v58;
}

CFDataRef CentauriRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2, int a3)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFDictionaryGetTypeID()))
  {
    CentauriRestoreHost::copyFirmwareUpdater(a1);
    return 0;
  }

  BytePtr = CFDictionaryGetValue(v7, @"Wireless1,ChipRev");
  if (BytePtr)
  {
    v10 = BytePtr;
    v11 = CFGetTypeID(BytePtr);
    if (v11 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v10) == 2)
      {
        BytePtr = CFDataGetBytePtr(v10);
        v12 = *BytePtr;
        goto LABEL_9;
      }

      CentauriRestoreHost::copyFirmwareUpdater(a1);
    }

    else
    {
      CentauriRestoreHost::copyFirmwareUpdater(a1);
    }

    return 0;
  }

  if ((*(a1 + 232) & 1) == 0)
  {
    CentauriRestoreHost::copyFirmwareUpdater(a1);
    return 0;
  }

  v12 = 0xFFFF;
LABEL_9:
  LogInstance = ACFULogging::getLogInstance(BytePtr);
  std::string::basic_string[abi:ne200100]<0>(&v94, "CentauriRestoreHost");
  v14 = std::string::append(&v94, "::", 2uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v95.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v95.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v95, "copyFirmwareUpdater", 0x13uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v97 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(LogInstance, __p, 0, "firmware map: ", a2);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v18 = CFDictionaryContainsKey(a2, *(a1 + 8));
  v19 = v18;
  v20 = ACFULogging::getLogInstance(v18);
  if (v19)
  {
    ACFULogging::handleMessage(v20, 0, "%s::%s: found rooted firmware\n", v21, v22, v23, v24, v25, "CentauriRestoreHost");
    v26 = *(a1 + 8);
  }

  else
  {
    ACFULogging::handleMessage(v20, 0, "%s::%s: no firmware override specified\n", v21, v22, v23, v24, v25, "CentauriRestoreHost");
    v26 = @"Wireless1,RTKitOS";
  }

  v27 = ACFURestoreHost::copyDataFromFileDictionary(v26, a2, a3);
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFDataGetTypeID())
    {
      ACFUFTABFile::create(v28, 0, v12, __p);
      v30 = __p[0];
      if (__p[0])
      {
        isFirmwareValid = CentauriRestoreHost::isFirmwareValid(a1, __p[0]);
        if (isFirmwareValid)
        {
          v32 = CFDictionaryGetValue(v7, @"Wireless1,RestoreBootNonce");
          v33 = v32;
          if (!v32)
          {
LABEL_27:
            BootNonce = ACFUFTABFile::getBootNonce(v30);
            if (BootNonce)
            {
              v39 = ACFULogging::getLogInstance(BootNonce);
              ACFULogging::handleMessage(v39, 0, "%s::%s: firmware already has a boot nonce\n", v40, v41, v42, v43, v44, "CentauriRestoreHost");
              goto LABEL_29;
            }

            v88 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v88, 2u, "%s::%s: no boot nonce in device info or firmware\n", v89, v90, v91, v92, v93, "CentauriRestoreHost");
            v74 = 1005;
            v75 = "no boot nonce in device info or firmware";
            goto LABEL_54;
          }

          v34 = CFGetTypeID(v32);
          TypeID = CFDataGetTypeID();
          if (v34 == TypeID)
          {
            Length = CFDataGetLength(v33);
            if (Length == 8)
            {
              v37 = *CFDataGetBytePtr(v33);
              if (v37)
              {
                ACFUFTABFile::setBootNonce(v30, v37);
LABEL_29:
                ACFUFTABFile::setFTABValidity(v30, 1);
                v45 = (*(*v30 + 40))(v30);
                v46 = v45;
                if (v45 && (v47 = CFGetTypeID(v45), v45 = CFDataGetTypeID(), v47 == v45))
                {
                  v48 = ACFULogging::getLogInstance(v45);
                  std::string::basic_string[abi:ne200100]<0>(&v94, "CentauriRestoreHost");
                  v49 = std::string::append(&v94, "::", 2uLL);
                  v50 = *&v49->__r_.__value_.__l.__data_;
                  v95.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
                  *&v95.__r_.__value_.__l.__data_ = v50;
                  v49->__r_.__value_.__l.__size_ = 0;
                  v49->__r_.__value_.__r.__words[2] = 0;
                  v49->__r_.__value_.__r.__words[0] = 0;
                  v51 = std::string::append(&v95, "copyFirmwareUpdater", 0x13uLL);
                  v52 = *&v51->__r_.__value_.__l.__data_;
                  v97 = v51->__r_.__value_.__r.__words[2];
                  *__p = v52;
                  v51->__r_.__value_.__l.__size_ = 0;
                  v51->__r_.__value_.__r.__words[2] = 0;
                  v51->__r_.__value_.__r.__words[0] = 0;
                  ACFULogging::handleMessageCFType(v48, __p, 3, "outData", v46);
                  if (SHIBYTE(v97) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v95.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v94.__r_.__value_.__l.__data_);
                  }

                  (*(*v30 + 24))(v30);
                }

                else
                {
                  v62 = ACFULogging::getLogInstance(v45);
                  ACFULogging::handleMessage(v62, 2u, "%s::%s: could not create output data\n", v63, v64, v65, v66, v67, "CentauriRestoreHost");
                  CentauriRestoreHost::populateCFError(a1, "copyFirmwareUpdater", "could not create output data", 4000);
                }

                goto LABEL_38;
              }

              goto LABEL_27;
            }

            v82 = ACFULogging::getLogInstance(Length);
            ACFULogging::handleMessage(v82, 2u, "%s::%s: boot nonce has wrong size\n", v83, v84, v85, v86, v87, "CentauriRestoreHost");
            v74 = 1005;
            v75 = "boot nonce has wrong size";
          }

          else
          {
            v76 = ACFULogging::getLogInstance(TypeID);
            ACFULogging::handleMessage(v76, 2u, "%s::%s: boot nonce has wrong type\n", v77, v78, v79, v80, v81, "CentauriRestoreHost");
            v74 = 1005;
            v75 = "boot nonce has wrong type";
          }
        }

        else
        {
          v68 = ACFULogging::getLogInstance(isFirmwareValid);
          ACFULogging::handleMessage(v68, 2u, "%s::%s: firmware is invalid\n", v69, v70, v71, v72, v73, "CentauriRestoreHost");
          v74 = 1000;
          v75 = "firmware is invalid";
        }

LABEL_54:
        CentauriRestoreHost::populateCFError(a1, "copyFirmwareUpdater", v75, v74);
        goto LABEL_55;
      }

      CentauriRestoreHost::copyFirmwareUpdater(a1);
    }

    else
    {
      CentauriRestoreHost::copyFirmwareUpdater(a1);
      v30 = 0;
    }

LABEL_55:
    v46 = 0;
LABEL_38:
    CFRelease(v28);
    if (v30)
    {
      (*(*v30 + 56))(v30);
    }

    return v46;
  }

  v53 = *(a1 + 232);
  v54 = ACFULogging::getLogInstance(0);
  if ((v53 & 1) == 0)
  {
    CentauriRestoreHost::copyFirmwareUpdater(v54, a1, v55, v56, v57, v58, v59, v60);
    return 0;
  }

  ACFULogging::handleMessage(v54, 0, "%s::%s: using global signing with no firmware data available\n", v56, v57, v58, v59, v60, "CentauriRestoreHost");
  v46 = CFDataCreate(*MEMORY[0x29EDB8ED8], 0, 0);
  if (!v46)
  {
    CentauriRestoreHost::copyFirmwareUpdater(0);
  }

  return v46;
}

void sub_2984EB568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

  (*(*v30 + 56))(v30);
  _Unwind_Resume(a1);
}

void CentauriRestoreHost::populateCFError(uint64_t a1, const char *a2, char *a3, int a4)
{
  v7 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a2, 0x8000100u);
  if (v7)
  {
    v8 = v7;
    ACFUError::createAppendedDomain((a1 + 24), v7);
    std::string::basic_string[abi:ne200100]<0>(__p, a3);
    ACFUError::addError(a1 + 24, __p, a4, 0);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    CFRelease(v8);
  }

  else
  {
    CentauriRestoreHost::populateCFError(0);
  }
}

void sub_2984EB6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CentauriRestoreHost::isFirmwareValid(CentauriRestoreHost *this, ACFUFTABFile *a2)
{
  CentauriCommon::getTatsuTagToFileNameMap(v19);
  v4 = *(this + 17);
  v5 = *(this + 18);
  if (v4 == v5)
  {
    v9 = 1;
  }

  else
  {
    do
    {
      v6 = std::map<__CFString const*,std::string>::at(v19, v4);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v18, *v6, v6[1]);
      }

      else
      {
        v7 = *v6;
        v18.__r_.__value_.__r.__words[2] = v6[2];
        *&v18.__r_.__value_.__l.__data_ = v7;
      }

      if (*(v4 + 8) & 1) != 0 || (v8 = (*(*a2 + 16))(a2, &v18), (v8))
      {
        v9 = 1;
      }

      else
      {
        LogInstance = ACFULogging::getLogInstance(v8);
        ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: missing required file %s\n", v12, v13, v14, v15, v16, "CentauriRestoreHost");
        v9 = 0;
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      v4 += 16;
      if (v4 == v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }
    }

    while ((v10 & 1) != 0);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v19, v20);
  return v9;
}

void sub_2984EB850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, char *a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

void *std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 3)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 8;
          *v18 = v19;
          v18 += 8;
          v17 += 8;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 8;
      *v12 = v13;
      v12 += 8;
    }
  }

  v7[1] = v12;
  return result;
}

uint64_t **std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(uint64_t **result, unint64_t *a2, unint64_t *a3)
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
      v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v8);
      while (a2 != a3)
      {
        std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 2;
            break;
          }

          v11 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v10);
  }

  while (a2 != a3)
  {
    result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, a2, a2);
    a2 += 2;
  }

  return result;
}

void sub_2984EBAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(uint64_t **a1, unint64_t *a2, _OWORD *a3)
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
        v9 = v5[4];
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
        break;
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
    v10 = operator new(0x30uLL);
    *(v10 + 2) = *a3;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void CentauriRestoreHost::createRequest(uint64_t a1, uint64_t a2, const void *a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create number\n", v5, v6, v7, v8, v9, "CentauriRestoreHost");
  CFRelease(a3);
}

void CentauriRestoreHost::copyFirmwareUpdater(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: wrong chip rev type\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
  v7 = OUTLINED_FUNCTION_0_16();

  CentauriRestoreHost::populateCFError(v7, v8, v9, 1005);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: wrong chip rev size\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
  v7 = OUTLINED_FUNCTION_0_16();

  CentauriRestoreHost::populateCFError(v7, v8, v9, 1005);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no chip rev\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
  v7 = OUTLINED_FUNCTION_0_16();

  CentauriRestoreHost::populateCFError(v7, v8, v9, 1005);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: firmware data has wrong type\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
  v7 = OUTLINED_FUNCTION_0_16();
  CentauriRestoreHost::populateCFError(v7, v8, v9, 1000);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create firmware\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
  v7 = OUTLINED_FUNCTION_0_16();
  CentauriRestoreHost::populateCFError(v7, v8, v9, 4000);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create empty data\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no device info\n", v2, v3, v4, v5, v6, "CentauriRestoreHost");
  v7 = OUTLINED_FUNCTION_0_16();

  CentauriRestoreHost::populateCFError(v7, v8, v9, 4001);
}

void CentauriRestoreHost::copyFirmwareUpdater(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ACFULogging::handleMessage(a1, 2u, "%s::%s: failed to get firmware data\n", a4, a5, a6, a7, a8, "CentauriRestoreHost");
  v8 = OUTLINED_FUNCTION_0_16();
  CentauriRestoreHost::populateCFError(v8, v9, v10, 1000);
}

ACFULogging *CentauriUpdaterGetTags(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v10 = inited;
  v11 = ACFULogging::getLogInstance(inited);
  if (v10)
  {
    CentauriUpdaterGetTags_cold_1(v11, a4, v10, v12, v13, v14, v15, v16);
    return 0;
  }

  ACFULogging::handleMessage(v11, 0, "%s::%s: CentauriUpdater Version: %s\n", v12, v13, v14, v15, v16, "CentauriRestoreInfo");
  v18 = ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage(v18, 3u, "%s::%s: getting tags\n", v19, v20, v21, v22, v23, "CentauriRestoreInfo");
  CentauriRestoreHost::create(a1, @"CentauriRestoreInfo", &v40);
  v24 = v40;
  if (!v40)
  {
    CentauriUpdaterGetTags_cold_2(a4);
    return 0;
  }

  v25 = (**v40)(v40);
  v26 = v25;
  if (v25)
  {
    v27 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v27, 3u, "%s::%s: successfully got tags\n", v28, v29, v30, v31, v32, "CentauriRestoreInfo");
  }

  else
  {
    v34 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v34, 2u, "%s::%s: failed to get tags\n", v35, v36, v37, v38, v39, "CentauriRestoreInfo");
    *a4 = ACFURestoreHost::getError(v24);
  }

  (*(*v24 + 24))(v24);
  return v26;
}

void populateCFError(const char *a1, CFErrorRef *a2, const char *a3, int a4)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    populateCFError(0);
    return;
  }

  v9 = Mutable;
  CFStringAppendCString(Mutable, "CentauriRestoreInfo::", 0x8000100u);
  CFStringAppendCString(v9, a1, 0x8000100u);
  ACFUError::ACFUError(v16, v9);
  v10 = strlen(a3);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    __dst[1] = v11;
    v15 = v13 | 0x8000000000000000;
    __dst[0] = v12;
  }

  else
  {
    HIBYTE(v15) = v10;
    v12 = __dst;
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  memcpy(v12, a3, v11);
LABEL_11:
  *(v11 + v12) = 0;
  ACFUError::addError(v16, __dst, a4, 0);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  *a2 = ACFUError::getCFError(v16);
  ACFUError::~ACFUError(v16);
  CFRelease(v9);
}

void sub_2984EC2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ACFUError::~ACFUError(&a16);
  _Unwind_Resume(a1);
}

ACFULogging *CentauriUpdaterCopyFirmware(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  v10 = inited;
  v11 = ACFULogging::getLogInstance(inited);
  if (v10)
  {
    CentauriUpdaterCopyFirmware_cold_1(v11, a4, v10, v12, v13, v14, v15, v16);
    return 0;
  }

  ACFULogging::handleMessage(v11, 0, "%s::%s: CentauriUpdater Version: %s\n", v12, v13, v14, v15, v16, "CentauriRestoreInfo");
  v18 = ACFULogging::getLogInstance(v17);
  ACFULogging::handleMessage(v18, 3u, "%s::%s: copying firmware\n", v19, v20, v21, v22, v23, "CentauriRestoreInfo");
  CentauriRestoreHost::create(a1, @"CentauriRestoreInfo", &v40);
  v24 = v40;
  if (!v40)
  {
    CentauriUpdaterCopyFirmware_cold_2(a4);
    return 0;
  }

  v25 = ACFURestoreHost::copyFirmware(v40);
  v26 = v25;
  if (v25)
  {
    v27 = ACFULogging::getLogInstance(v25);
    ACFULogging::handleMessage(v27, 3u, "%s::%s: successfully copied firmware\n", v28, v29, v30, v31, v32, "CentauriRestoreInfo");
  }

  else
  {
    v34 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v34, 2u, "%s::%s: failed to copy firmware\n", v35, v36, v37, v38, v39, "CentauriRestoreInfo");
    *a4 = ACFURestoreHost::getError(v24);
  }

  (*(*v24 + 24))(v24);
  return v26;
}

uint64_t CentauriUpdaterCreateRequest(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v78[0] = @"Wireless1,ProductionMode";
  v78[1] = @"Wireless1,SecurityMode";
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  LODWORD(a3) = inited;
  if (inited)
  {
    v54 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v54, 2u, "%s::%s: failed to initialize logging\n", v55, v56, v57, v58, v59, "CentauriRestoreInfo");
    v60 = "failed to initialize logging";
  }

  else
  {
    v10 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v10, 0, "%s::%s: CentauriUpdater Version: %s\n", v11, v12, v13, v14, v15, "CentauriRestoreInfo");
    v17 = ACFULogging::getLogInstance(v16);
    ACFULogging::handleMessage(v17, 3u, "%s::%s: creating request\n", v18, v19, v20, v21, v22, "CentauriRestoreInfo");
    ACFUCommon::parseDebugArgs(a1, "demoteProd", &v77);
    a3 = HIDWORD(v77);
    if (HIDWORD(v77) != 4006)
    {
      if (HIDWORD(v77))
      {
        v67 = ACFULogging::getLogInstance(v23);
        ACFULogging::handleMessage(v67, 2u, "%s::%s: failed to parse debug arguments\n", v68, v69, v70, v71, v72, "CentauriRestoreInfo");
        v60 = "failed to parse debug arguments";
        goto LABEL_30;
      }

      LOBYTE(v79) = v77 == 1;
    }

    v24 = CentauriRestoreHost::create(a1, @"CentauriRestoreInfo", &v77);
    v25 = v77;
    if (v77)
    {
      Value = CFDictionaryGetValue(a1, @"FirmwareData");
      v27 = Value;
      if (Value)
      {
        TypeID = CFDataGetTypeID();
        Value = CFGetTypeID(v27);
        if (TypeID == Value)
        {
          if (CFDataGetLength(v27))
          {
            CentauriCommon::getTatsuTagToFileNameMap(v75);
            RTKitFirmware::create(v75, v27, 0, &v77);
            std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v80, &v77);
            v29 = v77;
            v77 = 0;
            if (v29)
            {
              (*(*v29 + 56))(v29);
            }

            std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v75, v76);
            v31 = v80;
            if (!v80)
            {
              v32 = ACFULogging::getLogInstance(v30);
              ACFULogging::handleMessage(v32, 2u, "%s::%s: failed to create firmware\n", v33, v34, v35, v36, v37, "CentauriRestoreInfo");
              v38 = "failed to create firmware";
LABEL_25:
              populateCFError("CentauriUpdaterCreateRequest", a4, v38, 1000);
              v39 = 0;
LABEL_20:
              (*(*v25 + 24))(v25);
              goto LABEL_21;
            }
          }

          else
          {
            v31 = v80;
          }

          v73 = v31;
          v74 = v81;
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v39 = (*(*v25 + 8))(v25, &v73, v78);
          v40 = v74;
          if (v74)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v74);
          }

          v41 = ACFULogging::getLogInstance(v40);
          if (v39)
          {
            ACFULogging::handleMessage(v41, 3u, "%s::%s: successfully created request\n", v42, v43, v44, v45, v46, "CentauriRestoreInfo");
          }

          else
          {
            ACFULogging::handleMessage(v41, 2u, "%s::%s: failed to create request\n", v42, v43, v44, v45, v46, "CentauriRestoreInfo");
            v39 = 0;
            *a4 = ACFURestoreHost::getError(v25);
          }

          goto LABEL_20;
        }
      }

      v48 = ACFULogging::getLogInstance(Value);
      ACFULogging::handleMessage(v48, 2u, "%s::%s: no firmware in restore options\n", v49, v50, v51, v52, v53, "CentauriRestoreInfo");
      v38 = "no firmware in restore options";
      goto LABEL_25;
    }

    v61 = ACFULogging::getLogInstance(v24);
    ACFULogging::handleMessage(v61, 2u, "%s::%s: failed to create host object\n", v62, v63, v64, v65, v66, "CentauriRestoreInfo");
    LODWORD(a3) = 4000;
    v60 = "failed to create host object";
  }

LABEL_30:
  populateCFError("CentauriUpdaterCreateRequest", a4, v60, a3);
  v39 = 0;
LABEL_21:
  if (v81)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v81);
  }

  return v39;
}

void sub_2984EC800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, uint64_t a16, uint64_t a17)
{
  v20 = a17;
  a17 = 0;
  if (v20)
  {
    CentauriUpdaterCreateRequest_cold_1(v20);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&a14, a15);
  (*(*v17 + 24))(v17);
  v21 = *(v18 - 56);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1EE8A98;
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

void std::__shared_ptr_pointer<RTKitFirmware  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void CentauriUpdaterGetTags_cold_1(uint64_t a1, CFErrorRef *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ACFULogging::handleMessage(a1, 2u, "%s::%s: failed to initialize logging\n", a4, a5, a6, a7, a8, "CentauriRestoreInfo");

  populateCFError("CentauriUpdaterGetTags", a2, "failed to initialize logging", a3);
}

void CentauriUpdaterGetTags_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize logging\n", v3, v4, v5, v6, v7, "CentauriRestoreInfo");
  populateCFError("CentauriUpdaterGetTags", a1, "failed to initialize logging", 4000);
}

void CentauriUpdaterCopyFirmware_cold_1(uint64_t a1, CFErrorRef *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ACFULogging::handleMessage(a1, 2u, "%s::%s: failed to initialize logging\n", a4, a5, a6, a7, a8, "CentauriRestoreInfo");

  populateCFError("CentauriUpdaterCopyFirmware", a2, "failed to initialize logging", a3);
}

void CentauriUpdaterCopyFirmware_cold_2(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to create host object\n", v3, v4, v5, v6, v7, "CentauriRestoreInfo");
  populateCFError("CentauriUpdaterCopyFirmware", a1, "failed to create host object", 4000);
}

id FormatHex(uint64_t a1, unint64_t a2, int a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v6 = [MEMORY[0x29EDBA050] stringWithCapacity:0];
  v7 = v6;
  v49 = 0;
  v48 = 0;
  if (a3)
  {
    v8 = @"00000000  ";
  }

  else
  {
    v8 = @"0000  ";
  }

  [v6 appendFormat:v8];
  v9 = 0;
  if (a2)
  {
    v10 = "%s %s\n%04x  ";
    if (a3)
    {
      v10 = "%s %s\n%08x  ";
    }

    __format = v10;
    do
    {
      if (v9 && (v9 & 0xF) == 0)
      {
        v11 = 0;
        v47 = 0;
        v46 = *(a1 + v9 - 16);
        do
        {
          v12 = *(&v46 + v11);
          if (v12 < 32 || v12 == 127 || *(&v46 + v11) == 32)
          {
            *(&v46 + v11) = 46;
          }

          ++v11;
        }

        while (v11 != 8);
        v13 = 0;
        v45 = 0;
        v44 = *(a1 + v9 - 8);
        do
        {
          v14 = *(&v44 + v13);
          if (v14 < 32 || v14 == 127 || *(&v44 + v13) == 32)
          {
            *(&v44 + v13) = 46;
          }

          ++v13;
        }

        while (v13 != 8);
        snprintf(__str, 0x20uLL, __format, &v46, &v44, v9);
        [v7 appendFormat:@"%s", __str];
      }

      if (v9 + 8 >= a2)
      {
        [v7 appendFormat:@"%02x ", *(a1 + v9++)];
      }

      else
      {
        v15 = *(a1 + v9);
        v16 = *(a1 + v9 + 1);
        v17 = *(a1 + v9 + 2);
        v18 = *(a1 + v9 + 3);
        v19 = *(a1 + v9 + 4);
        v20 = *(a1 + v9 + 5);
        if (((v9 + 8) & 0xF) != 0)
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x  ", v15, v16);
        }

        else
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x    ", v15, v16);
        }

        [v7 appendFormat:@"%s", __str];
        v9 += 8;
      }
    }

    while (v9 < a2);
    if (a2 >= 0x10)
    {
      a2 &= 0xFu;
      if (!a2)
      {
        [v7 appendString:@"   "];
        v36 = 0;
        v37 = a1 + v9;
        v48 = *(a1 + v9 - 16);
        do
        {
          v38 = *(&v48 + v36);
          if (v38 < 32 || v38 == 127 || *(&v48 + v36) == 32)
          {
            *(&v48 + v36) = 46;
          }

          ++v36;
        }

        while (v36 != 8);
        v39 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:&v48];
        [v7 appendString:v39];

        [v7 appendString:@" "];
        v40 = 0;
        v48 = *(v37 - 8);
        do
        {
          v41 = *(&v48 + v40);
          if (v41 < 32 || v41 == 127 || *(&v48 + v40) == 32)
          {
            *(&v48 + v40) = 46;
          }

          ++v40;
        }

        while (v40 != 8);
        goto LABEL_58;
      }
    }
  }

  v21 = 3;
  if (a2 < 9)
  {
    v21 = 4;
  }

  v22 = 3 * (16 - a2) + v21;
  do
  {
    [v7 appendString:@" "];
    --v22;
  }

  while (v22);
  v23 = a2 - 8;
  if (a2 >= 8)
  {
    v26 = 0;
    v48 = *(a1 + v9 - a2);
    do
    {
      v27 = *(&v48 + v26);
      if (v27 < 32 || v27 == 127 || *(&v48 + v26) == 32)
      {
        *(&v48 + v26) = 46;
      }

      ++v26;
    }

    while (v26 != 8);
  }

  else
  {
    __memcpy_chk();
    *(&v48 + a2) = 0;
    if (a2)
    {
      v24 = &v48;
      do
      {
        v25 = *v24;
        if (v25 < 32 || v25 == 127 || *v24 == 32)
        {
          *v24 = 46;
        }

        v24 = (v24 + 1);
        --a2;
      }

      while (a2);
    }

    v23 = 0;
  }

  v28 = &v48;
  v29 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:&v48];
  [v7 appendString:v29];

  if (v23)
  {
    [v7 appendString:@" "];
    __memcpy_chk();
    *(&v48 + v23) = 0;
    v30 = 1;
    do
    {
      v31 = *v28;
      if (v31 < 32 || v31 == 127 || *v28 == 32)
      {
        *v28 = 46;
      }

      v28 = (v28 + 1);
    }

    while (v23 > v30++);
LABEL_58:
    v33 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:&v48];
    [v7 appendString:v33];
  }

  v34 = *MEMORY[0x29EDCA608];

  return v7;
}

id MantaMCURestoreInfoCoreGetTags(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v54 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v45 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_20;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v45 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!a2)
  {
    goto LABEL_20;
  }

  v41 = a4;
  v6 = a1;
  v12 = [[MRULogHelper alloc] initWithOptions:v6 logFunction:a2 logContext:a3];
  v14 = [v6 objectForKeyedSubscript:@"DeviceInfo"];
  v7 = v14;
  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:@"PersonalizationInfoArray"];
    v8 = v15;
    if (v15 && [v15 count] == 1)
    {
      [(MRULogHelper *)v12 verboseLog:@"infoArray: %@\n", v8];
      v44 = [MEMORY[0x29EDB8DE8] array];
      v45 = [MEMORY[0x29EDB8DE8] array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v16 = v8;
      v17 = [v16 countByEnumeratingWithState:&v47 objects:v53 count:16];
      obj = v16;
      if (v17)
      {
        v18 = v17;
        v39 = v6;
        v40 = v12;
        v38 = v7;
        v4 = 0;
        v10 = 0;
        v11 = 0;
        v43 = *v48;
        while (2)
        {
          v19 = 0;
          v20 = v4;
          v21 = v10;
          v22 = v11;
          do
          {
            if (*v48 != v43)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v47 + 1) + 8 * v19);
            v24 = [MRUPersonalizationInfo alloc];
            v46 = v20;
            v11 = [(MRUPersonalizationInfo *)v24 initWithOptions:v23 error:&v46];
            v4 = v46;

            if (!v11)
            {
              [(MRULogHelper *)v40 log:@"Failed to create personalizationInfo with options: %@\n", v23];
              v10 = v21;
              v8 = obj;
              goto LABEL_24;
            }

            v25 = [(MRUPersonalizationInfo *)v11 tag];
            [v44 addObject:v25];

            v26 = [(MRUPersonalizationInfo *)v11 ticketName];
            [v45 addObject:v26];

            v27 = MEMORY[0x29EDBA0F8];
            v28 = [(MRUPersonalizationInfo *)v11 objectName];
            v29 = [(MRUPersonalizationInfo *)v11 hardwareInfo];
            v30 = [v29 chipID];
            v31 = [(MRUPersonalizationInfo *)v11 hardwareInfo];
            v10 = [v27 stringWithFormat:@"%@-%x-%llx", v28, v30, objc_msgSend(v31, "ecid")];

            ++v19;
            v20 = v4;
            v21 = v10;
            v22 = v11;
          }

          while (v18 != v19);
          v8 = obj;
          v18 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

LABEL_24:

        v7 = v38;
        v6 = v39;
        v12 = v40;
        if (v4)
        {
          v9 = v44;
          goto LABEL_19;
        }
      }

      else
      {

        v11 = 0;
        v10 = 0;
      }

      v51[0] = @"BuildIdentityTags";
      v35 = [MEMORY[0x29EDB8D80] arrayWithArray:v44];
      v52[0] = v35;
      v51[1] = @"ResponseTags";
      v36 = [MEMORY[0x29EDB8D80] arrayWithArray:v45];
      v51[2] = @"LoopInstance";
      v52[1] = v36;
      v52[2] = v10;
      v37 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

      v8 = obj;
      v9 = v44;
      [(MRULogHelper *)v12 verboseLog:@"[%@]: getTags result:\n %@\n", @"MantaMRI", v37];
      v32 = v37;

      v4 = 0;
      goto LABEL_22;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0;
    v8 = 0;
  }

  v9 = 0;
  v45 = 0;
  v10 = 0;
  v11 = 0;
LABEL_19:
  a4 = v41;
LABEL_20:
  v32 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_22:

  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

id MantaMCURestoreInfoCoreCopyFirmware(void *a1, uint64_t a2, uint64_t a3)
{
  v77 = [MEMORY[0x29EDB9FB8] defaultManager];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1 && a2)
  {
    v6 = a1;
    v22 = [[MRULogHelper alloc] initWithOptions:v6 logFunction:a2 logContext:a3];
    v23 = [v6 objectForKeyedSubscript:@"DeviceInfo"];
    v7 = v23;
    if (v23)
    {
      v24 = [v23 objectForKeyedSubscript:@"PersonalizationInfoArray"];
      if (v24)
      {
        v25 = v24;
        v26 = [v6 objectForKeyedSubscript:@"BundleDataDict"];
        v27 = [v6 objectForKeyedSubscript:@"FirmwareData"];
        v70 = [v6 objectForKeyedSubscript:@"BuildIdentity"];
        v28 = [v6 objectForKeyedSubscript:@"BundlePath"];
        v83 = [v6 objectForKeyedSubscript:@"DestBundlePath"];
        if (v27)
        {
          v9 = v27;
          [(MRULogHelper *)v22 verboseLog:@"[%@]: Using firmwareOverride\n", @"MantaMRI"];
          v16 = v26;
          v11 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v8 = v25;
          v17 = v9;
          v10 = v28;
          v12 = v83;
          v18 = v70;
          goto LABEL_10;
        }

        v39 = [v25 firstObject];
        v89[0] = 0;
        v21 = [[MRUPersonalizationInfo alloc] initWithOptions:v39 error:v89];
        v40 = v89[0];
        if (!v21)
        {
          v43 = v40;
          [(MRULogHelper *)v22 log:@"Failed to create personalizationInfo with options %@: %@", v39, v40];
          v15 = v43;
          v9 = 0;
          v16 = v26;
          v11 = 0;
          v13 = 0;
          v14 = 0;
          v8 = v25;
          v17 = 0;
          v19 = 0;
          v10 = v28;
          v12 = v83;
          v18 = v70;
          v20 = v39;
          goto LABEL_10;
        }

        v69 = v39;
        if (v26)
        {
          v41 = v40;
          v42 = [(MRUPersonalizationInfo *)v21 tag];
          v9 = [v26 objectForKeyedSubscript:v42];

          [(MRULogHelper *)v22 verboseLog:@"[%@]: Using firmware from bundle data, %@", @"MantaMRI", v21];
          v15 = v41;
          v16 = v26;
          v11 = 0;
          v13 = 0;
          v14 = 0;
          v8 = v25;
          v17 = 0;
          v19 = 0;
LABEL_14:
          v10 = v28;
          v12 = v83;
LABEL_15:
          v20 = v69;
          v18 = v70;
          goto LABEL_10;
        }

        if (!v70)
        {
          v59 = v40;
          [(MRULogHelper *)v22 log:@"No buildIdentity key"];
          v15 = v59;
          v9 = 0;
          v11 = 0;
          v13 = 0;
          v14 = 0;
          v16 = 0;
          v8 = v25;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v10 = v28;
          v12 = v83;
          v20 = v69;
          goto LABEL_10;
        }

        v81 = v40;
        if (v28)
        {
          v44 = [(MRUPersonalizationInfo *)v21 tag];
          v45 = [v44 stringByAppendingString:@".Info.Path"];
          v11 = [v70 valueForKeyPath:v45];

          if (v11)
          {
            v67 = v11;
            v46 = [v28 URLByAppendingPathComponent:v11];
            v11 = v46;
            if (v46)
            {
              v47 = MEMORY[0x29EDB8DA0];
              v48 = [v46 path];
              v88 = v81;
              v9 = [v47 dataWithContentsOfFile:v48 options:0 error:&v88];
              v75 = v88;

              if (!v9)
              {
                [(MRULogHelper *)v22 log:@"%@", v67];
                [(MRULogHelper *)v22 log:@"Failed to load file %@:%@", v11, v75];
                v19 = v67;
                v13 = 0;
                v14 = 0;
                v16 = 0;
                v8 = v25;
                v17 = 0;
                v15 = v75;
                goto LABEL_14;
              }

              v16 = v83;
              v19 = v67;
              if (!v83)
              {
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v8 = v25;
                v17 = 0;
                v15 = v75;
                v10 = v28;
                goto LABEL_15;
              }

              v49 = [v83 URLByAppendingPathComponent:v67];
              if (v49)
              {
                v82 = v49;
                v50 = [v49 URLByDeletingLastPathComponent];
                if (v50)
                {
                  v79 = v11;
                  v66 = v50;
                  v51 = [v50 path];
                  v87 = v75;
                  v65 = [v77 createDirectoryAtPath:v51 withIntermediateDirectories:1 attributes:0 error:&v87];
                  v52 = v87;

                  if (v65 & 1) != 0 || ([v52 isFileExistsError])
                  {
                    v76 = v25;
                    v53 = [v82 path];
                    v54 = [v77 fileExistsAtPath:v53];

                    v64 = v21;
                    v73 = v7;
                    if (v54)
                    {
                      v55 = [v82 path];
                      v86 = v52;
                      v56 = [v77 removeItemAtPath:v55 error:&v86];
                      v57 = v86;

                      if ((v56 & 1) == 0)
                      {
                        [(MRULogHelper *)v22 log:@"Failed to remove file at %@: %@", v82, v57];
                        v13 = v82;
                        v16 = 0;
                        v17 = 0;
                        v15 = v57;
                        v8 = v25;
                        v10 = v28;
                        v12 = v83;
                        v20 = v69;
                        v18 = v70;
                        v21 = v64;
                        v11 = v79;
                        goto LABEL_47;
                      }

                      v58 = v57;
                    }

                    else
                    {
                      v58 = v52;
                    }

                    v60 = [v79 path];
                    v61 = [v82 path];
                    v85 = v58;
                    v62 = [v77 copyItemAtPath:v60 toPath:v61 error:&v85];
                    v63 = v85;

                    if (v62)
                    {
                      v16 = 0;
                      v17 = 0;
                      v7 = v73;
                      v8 = v76;
                      v21 = v64;
                      v10 = v28;
                      v13 = v82;
                      v12 = v83;
                      v20 = v69;
                      v18 = v70;
                      v11 = v79;
                      v19 = v67;
                      v15 = v63;
LABEL_48:
                      v14 = v66;
                      goto LABEL_10;
                    }

                    v11 = v79;
                    [(MRULogHelper *)v22 log:@"Failed to copy %@ to %@: %@", v79, v82, v63];
                    v13 = v82;
                    v15 = v63;
                    v16 = 0;
                    v17 = 0;
                    v7 = v73;
                    v8 = v76;
                    v10 = v28;
                    v12 = v83;
                    v20 = v69;
                    v18 = v70;
                    v21 = v64;
LABEL_47:
                    v19 = v67;
                    goto LABEL_48;
                  }

                  [(MRULogHelper *)v22 log:@"Failed to create directory at '%@': %@", v66, v52];
                  v14 = v66;
                  v16 = 0;
                  v8 = v25;
                  v17 = 0;
                  v10 = v28;
                  v12 = v83;
                  v20 = v69;
                  v18 = v70;
                  v15 = v52;
                  v11 = v79;
                }

                else
                {
                  [(MRULogHelper *)v22 log:@"Failed to compose destDirURL"];
                  v14 = 0;
                  v16 = 0;
                  v8 = v25;
                  v17 = 0;
                  v15 = v75;
                  v10 = v28;
                  v12 = v83;
                  v20 = v69;
                  v18 = v70;
                }

                v19 = v67;
                v13 = v82;
                goto LABEL_10;
              }

              [(MRULogHelper *)v22 log:@"Failed to compose destFileURL"];
              v13 = 0;
              v14 = 0;
              v16 = 0;
              v8 = v25;
              v17 = 0;
              v15 = v75;
              v10 = v28;
              v12 = v83;
            }

            else
            {
              [(MRULogHelper *)v22 log:@"Failed to compose file url"];
              v9 = 0;
              v13 = 0;
              v14 = 0;
              v16 = 0;
              v8 = v25;
              v17 = 0;
              v10 = v28;
              v15 = v81;
              v12 = v83;
            }

            v20 = v69;
            v18 = v70;
            v19 = v67;
            goto LABEL_10;
          }

          [(MRULogHelper *)v22 log:@"Failed to get filePathSuffix"];
          v9 = 0;
          v13 = 0;
          v14 = 0;
          v16 = 0;
          v8 = v25;
          v17 = 0;
          v19 = 0;
          v10 = v28;
        }

        else
        {
          [(MRULogHelper *)v22 log:@"No bundleURL"];
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v13 = 0;
          v14 = 0;
          v16 = 0;
          v8 = v25;
          v17 = 0;
          v19 = 0;
        }

        v15 = v81;
        v12 = v83;
        goto LABEL_15;
      }

      v29 = @"No infoArray in deviceInfo dict";
    }

    else
    {
      v29 = @"No deviceInfo in options dict";
    }

    [(MRULogHelper *)v22 log:v29];
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

LABEL_10:
  v80 = v13;
  v84 = v12;
  v78 = v11;
  v68 = v10;
  v71 = v6;
  v72 = v7;
  v74 = v8;
  v30 = v18;
  v31 = v20;
  v32 = v19;
  v33 = v15;
  v34 = v14;
  v35 = v16;
  v36 = v17;
  v37 = v9;

  return v37;
}