uint64_t *std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::at(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 32);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return (v2 + 5);
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::map<CentauriPlatform::ThunderboltIdentifier,std::string>::map[abi:ne200100](uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__emplace_hint_unique_key_args<CentauriPlatform::ThunderboltIdentifier,std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<CentauriTransport::BootMode,std::string>,std::__map_value_compare<CentauriTransport::BootMode,std::__value_type<CentauriTransport::BootMode,std::string>,std::less<CentauriTransport::BootMode>,true>,std::allocator<std::__value_type<CentauriTransport::BootMode,std::string>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__find_equal<CentauriPlatform::ThunderboltIdentifier>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::__map_value_compare<CentauriPlatform::ThunderboltIdentifier,std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>,std::less<CentauriPlatform::ThunderboltIdentifier>,true>,std::allocator<std::__value_type<CentauriPlatform::ThunderboltIdentifier,std::string>>>::__construct_node<std::pair<CentauriPlatform::ThunderboltIdentifier const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[32] = *a2;
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

void sub_299E999DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<CentauriTransport::BootMode,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void CentauriUpdaterCreate_cold_1(uint64_t a1, void *a2)
{
  ACFULogging::handleMessage();

  populateCFError("CentauriUpdaterCreate", a2, "failed to initialize logging");
}

void CentauriUpdaterCreate_cold_3(uint64_t a1, void *a2)
{
  ACFULogging::handleMessage();

  populateCFError("CentauriUpdaterCreate", a2, "failed to create restore object");
}

void CentauriUpdaterCreate_cold_4(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();

  populateCFError("CentauriUpdaterCreate", a1, "failed to instantiate CF object");
}

void CentauriUpdaterCreate_cold_5(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();

  populateCFError("CentauriUpdaterCreate", a1, "failed to register class with CF");
}

CFMutableDataRef CentauriTransport::copySiKCertificateSigningRequest(CentauriTransport *this)
{
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  v2 = CentauriTransport::openInterfaceDriver(this);
  if ((v2 & 1) == 0)
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
    return 0;
  }

  v3 = CentauriTransport::sendCCHICommand(this, 0, 0, 6u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFDataGetLength(v3);
  if (v5 == 4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    v7 = *BytePtr;
    ACFULogging::getLogInstance(BytePtr);
    v8 = ACFULogging::handleMessage();
    if (v7)
    {
      v9 = *MEMORY[0x29EDB8ED8];
      Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], v7);
      if (Mutable)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v13 = v7 - v11;
          if (v7 - v11 >= 0x3F8)
          {
            v13 = 1016;
          }

          *bytes = v11;
          LODWORD(length) = v13;
          if (v12)
          {
            CFRelease(v12);
          }

          CFRelease(v4);
          v12 = CFDataCreate(v9, bytes, 8);
          ACFULogging::getLogInstance(v12);
          if (!v12)
          {
            break;
          }

          ACFULogging::handleMessage();
          v14 = CentauriTransport::sendCCHICommand(this, v12, 0, 7u);
          if (!v14)
          {
            CFRelease(Mutable);
            v19 = v12;
            goto LABEL_20;
          }

          v4 = v14;
          v15 = CFDataGetLength(v14);
          if (v15 != length)
          {
            ACFULogging::getLogInstance(v15);
            CFDataGetLength(v4);
            ACFULogging::handleMessage();
            CFRelease(Mutable);
            CFRelease(v12);
            Mutable = 0;
            goto LABEL_16;
          }

          v16 = CFDataGetBytePtr(v4);
          CFDataAppendBytes(Mutable, v16, length);
          v11 += length;
          if (v11 >= v7)
          {
            ACFULogging::getLogInstance(v17);
            ACFULogging::handleMessage();
            CFRelease(v12);
            goto LABEL_16;
          }
        }

        ACFULogging::handleMessage();
        v19 = Mutable;
LABEL_20:
        CFRelease(v19);
        return 0;
      }

      ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage();
      goto LABEL_16;
    }

    ACFULogging::getLogInstance(v8);
  }

  else
  {
    ACFULogging::getLogInstance(v5);
    CFDataGetLength(v4);
  }

  ACFULogging::handleMessage();
  Mutable = 0;
LABEL_16:
  CFRelease(v4);
  return Mutable;
}

uint64_t CentauriTransport::init(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::sendCCHICommand(ACFULogging *a1, unsigned __int8 *a2)
{
  ACFULogging::getLogInstance(a1);
  v5 = *a1;
  v6 = *a2;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v4 = *a2;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v4 = *a2;
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::generateBootNonce(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::setBootFlags(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::setHostPlatformIdentifier(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::sendImage(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::openControlDriver(ACFULogging *a1, uint64_t a2)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();

  return CentauriTransport::closeControlDriver(a2);
}

uint64_t CentauriTransport::destroySecondaryFtab(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::reset(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::pingCheck(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

void CentauriTransport::getDebugInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  ACFULogging::handleMessage();
  __ns.__rep_ = 20000000000;
  std::this_thread::sleep_for (&__ns);
}

uint64_t CentauriTransport::sendBootTimestamps(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0();
  return ACFULogging::handleMessage();
}

uint64_t CentauriFirmware::copyRFEM(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t CentauriFirmware::copyWSKU(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

void CentauriFirmware::getManifestUniqueId()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A14F2160, &dword_299E8A000);

    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  dispatch_once(&CentauriFirmware::getManifestUniqueId(void)::once, &__block_literal_global_1);
}

const __CFData *ACFUCommon::Parameter::GetDataAsType<unsigned short>(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  result = *a1;
  if (result)
  {
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(*a1);
    if (Length > 2)
    {
      return 0;
    }

    else
    {
      *a2 = 0;
      memcpy(a2, BytePtr, Length);
      return 1;
    }
  }

  return result;
}

uint64_t CentauriRestore::create(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t CentauriRestore::init(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1);
  return (*(v2 + 56))(v1);
}

{
  v1 = OUTLINED_FUNCTION_0_0(a1);
  return (*(v2 + 64))(v1);
}

uint64_t CentauriRestore::performCmd(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 120);
  v5 = OUTLINED_FUNCTION_0_0(*(a1 + 152));
  if ((*v6)(v5) || (v7 = OUTLINED_FUNCTION_0_0(*(a1 + 152)), (*(v8 + 8))(v7), v9 = OUTLINED_FUNCTION_0_0(*(a1 + 152)), result = (*(v10 + 24))(v9), result))
  {
    *a2 = 0;
    return 1;
  }

  return result;
}

uint64_t CentauriPlatform::isCentauriBuiltin(CentauriPlatform *this, BOOL *a2)
{
  if (this)
  {
    if (qword_2A14F2180 != -1)
    {
      dispatch_once(&qword_2A14F2180, &__block_literal_global_2);
    }

    if (_MergedGlobals_0 == 1)
    {
      *this = HIBYTE(_MergedGlobals_0);
      return 1;
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  return 0;
}

uint64_t CentauriPlatform::getThunderboltDeviceInfo(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  v3 = *a1;
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

{
  ACFULogging::getLogInstance(a1);
  return ACFULogging::handleMessage();
}

uint64_t RTKitFirmware::init()
{
  return MEMORY[0x2A1C5F118]();
}

{
  return MEMORY[0x2A1C5F120]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}