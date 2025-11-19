vm_address_t dyld3::Map<char const*,BOOL,dyld3::HashCString,dyld3::EqualCString>::insert(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v24, 0, sizeof(v24));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v24, v5);
      do
      {
        v23 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v24, &v23);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        v7 = *dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v6);
        v8 = _platform_strlen(v7);
        v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, v7, v8);
        v10 = (v24[2] - 1) & v9;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) != -1)
        {
          v11 = 1;
          do
          {
            v10 = (v24[2] - 1) & (v10 + v11++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v24, v10) = v6++;
      }

      while (v6 != *(a1 + 72));
    }

    if ((a1 + 16) == v24)
    {
      v24[2] = 0;
      if (v24[3])
      {
        vm_deallocate(mach_task_self_, v24[3], size);
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        vm_deallocate(mach_task_self_, v12, *(a1 + 48));
      }

      *(a1 + 16) = v24[0];
      *(a1 + 24) = *&v24[1];
      v13 = size;
      *(a1 + 40) = v24[3];
      *(a1 + 48) = v13;
    }
  }

  v14 = *a2;
  v15 = _platform_strlen(*a2);
  v16 = (*(a1 + 32) - 1) & std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v24, v14, v15);
  v17 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16);
  if (v17 == -1)
  {
LABEL_21:
    v20 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16) = v20;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((a1 + 56), a2);
    v21 = *(a1 + 72);
    if (!v21)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 16 * v21 - 16;
  }

  else
  {
    v18 = 1;
    while (1)
    {
      v19 = dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v17);
      if (!_platform_strcmp(*v19, *a2))
      {
        return dyld3::OverflowSafeArray<dyld3::MapBase<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v17);
      }

      v16 = (*(a1 + 32) - 1) & (v16 + v18++);
      v17 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v16);
      if (v17 == -1)
      {
        goto LABEL_21;
      }
    }
  }
}

uint64_t dyld3::MapBase<char const*,BOOL,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, const char **a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  v8 = *a5;
  v9 = _platform_strlen(*a5);
  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v22, v8, v9);
  v11 = a2[2];
  v12 = v11 - 1;
  v13 = v10 & (v11 - 1);
  if (v11 <= v13)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v14 = *a2;
  v15 = a3[2];
  v16 = *a3;
  v17 = 1;
  v18 = *a5;
  while (1)
  {
    v19 = *(v14 + 4 * v13);
    if (v19 == -1)
    {
      return v16 + 16 * v15;
    }

    if (v15 <= v19)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    if (!_platform_strcmp(*(v16 + 16 * v19), v18))
    {
      return v16 + 16 * v19;
    }

    v20 = v13 + v17++;
    v13 = v20 & v12;
    if (v11 <= (v20 & v12))
    {
      goto LABEL_8;
    }
  }
}

BOOL dyld4::SyscallDelegate::getCWD(dyld4::SyscallDelegate *this, char *a2)
{
  v3 = open(".", 0x100000, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  v5 = fcntl(v3, 50, a2);
  close(v4);
  return v5 != -1;
}

uint64_t dyld4::SyscallDelegate::dtraceRegisterUserProbes(dyld4::SyscallDelegate *this, dof_ioctl_data *a2)
{
  result = open("/dev/dtracehelper", 2);
  if (result != -1)
  {
    v4 = result;
    v5 = a2;
    ioctl(result, 0x80086804uLL, &v5);
    return close(v4);
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::dtraceUnregisterUserProbe(dyld4::SyscallDelegate *this, uint64_t a2)
{
  result = open("/dev/dtracehelper", 2, 0);
  if (result != -1)
  {
    v4 = result;
    ioctl(result, 0x20006802uLL, a2);

    return close(v4);
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::forEachInDirectory(int a1, char *a2, int a3, uint64_t a4)
{
  result = open(a2, 0x100000, 0);
  if (result != -1)
  {
    v8 = result;
    bzero(v15, 0x18uLL);
    v15[0] = 5;
    v16 = -2147483639;
    v9 = getattrlistbulk(v8, v15, v18, 0x200uLL, 0);
    if (v9 < 1)
    {
      return close(v8);
    }

    v10 = v9;
    while (1)
    {
      v11 = v18;
      do
      {
        v12 = v11 + 6;
        v13 = v11[6];
        if ((v11[1] & 8) == 0)
        {
          goto LABEL_15;
        }

        v14 = v11[8];
        if (v14 == 2)
        {
          if (!a3)
          {
            goto LABEL_15;
          }
        }

        else if (v14 != 1 || (a3 & 1) != 0)
        {
          goto LABEL_15;
        }

        v17[0] = 0;
        if (dyld4::Utils::concatenatePaths(v17, a2, &stru_3C8.reloff) > 0x3FF || dyld4::Utils::concatenatePaths(v17, "/", &stru_3C8.reloff) > 0x3FF || dyld4::Utils::concatenatePaths(v17, v12 + v13, &stru_3C8.reloff) > 0x3FF)
        {
          return close(v8);
        }

        (*(a4 + 16))(a4, v17, v12 + v13);
LABEL_15:
        v11 = (v11 + *v11);
        --v10;
      }

      while (v10);
      v10 = getattrlistbulk(v8, v15, v18, 0x200uLL, 0);
      if (v10 <= 0)
      {
        return close(v8);
      }
    }
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::getDylibInfo(int a1, dyld3 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Diagnostics::Diagnostics(v24);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1174405120;
  v15[2] = ___ZNK5dyld415SyscallDelegate12getDylibInfoEPKcN6mach_o8PlatformERKNS3_19GradedArchitecturesERjPc_block_invoke;
  v15[3] = &unk_A1FB8;
  v12 = *a3;
  v15[5] = a4;
  v15[6] = v12;
  v16 = *(a3 + 2);
  v17 = a2;
  v18 = a5;
  v19 = a6;
  v15[4] = &v20;
  dyld4::SyscallDelegate::withReadOnlyMappedFile(a1, v24, a2, 0, v15);
  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  Diagnostics::~Diagnostics(v24);
  return v13;
}

uint64_t ___ZNK5dyld415SyscallDelegate12getDylibInfoEPKcN6mach_o8PlatformERKNS3_19GradedArchitecturesERjPc_block_invoke(uint64_t a1, _DWORD *a2, unint64_t a3, int a4)
{
  v8 = mach_o::Universal::isUniversal(a2, a3);
  if (v8)
  {
    __source = 0;
    v16 = 0;
    v17 = 0;
    result = mach_o::Universal::bestSlice(v8, *(a1 + 40), a4, &__source);
    if ((result & 1) == 0)
    {
      return result;
    }

    v10 = v16;
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    result = mach_o::Header::isMachO(a2, a3);
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  result = dyld3::MachOFile::isDylib(v10);
  if (result)
  {
    __source = *(a1 + 48);
    LODWORD(v16) = *(a1 + 56);
    v11 = *(a1 + 64);
    if (v11)
    {
      v12 = _platform_strlen(*(a1 + 64));
    }

    else
    {
      v12 = 0;
    }

    result = mach_o::Header::loadableIntoProcess(v10, &__source, v11, v12);
    if (result)
    {
      __source = 0;
      v13 = 0x10000;
      v14 = 0x10000;
      result = mach_o::Header::getDylibInstallName(v10, &__source, &v14, &v13);
      if (result)
      {
        **(a1 + 72) = v13;
        result = strlcpy(*(a1 + 80), __source, 0x400uLL);
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t __copy_helper_block_8_48c22_ZTSN6mach_o8PlatformE(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  return result;
}

BOOL dyld4::SyscallDelegate::mkdirs(dyld4::SyscallDelegate *this, const char *__s)
{
  v3 = _platform_strlen(__s);
  v4 = &v12 - ((__chkstk_darwin(v3) + 16) & 0xFFFFFFFFFFFFFFF0);
  v5 = strcpy(v4, __s);
  v6 = strrchr(v5, 47);
  v8 = v6;
  if (v6)
  {
    v6[1] = 0;
    if (dyld3::stat(v4, &v13, v7))
    {
      v9 = _platform_strchr(v4 + 1, 47);
      if (v9)
      {
        v10 = v9;
        do
        {
          *v10 = 0;
          mkdir(v4, 0x1EDu);
          *v10 = 47;
          v10 = _platform_strchr(v10 + 1, 47);
        }

        while (v10);
      }
    }
  }

  return v8 != 0;
}

BOOL dyld4::SyscallDelegate::sandboxBlockedStat(dyld4::SyscallDelegate *this, const char *a2)
{
  v2 = a2;
  v3 = getpid();
  return sandbox_check(v3, "file-read-metadata", 1073741825, v4, v5, v6, v7, v8, v2) > 0;
}

uint64_t ___ZNK5dyld415SyscallDelegate15mapFileReadOnlyER11DiagnosticsPKcPiPmPNS_6FileIDEPbPc_block_invoke(uint64_t result, int a2, int a3, dyld3::MachOAnalyzer *a4)
{
  if (a2 == 16777228 && (a3 & 0xFFFFFF) == 2)
  {
    v5 = result;
    result = dyld3::MachOAnalyzer::isOSBinary(a4, *(result + 48), a4 - *(result + 32));
    if (result)
    {
      **(v5 + 40) = 1;
    }
  }

  return result;
}

BOOL dyld4::SyscallDelegate::setFileAttribute(int a1, char *a2, const char *a3, uint64_t a4)
{
  if (chmod(a2, 0x180u))
  {
    return 0;
  }

  if (setxattr(a2, a3, *a4, *(a4 + 16), 0, 4))
  {
    v8 = setxattr(a2, a3, *a4, *(a4 + 16), 0, 0) == 0;
  }

  else
  {
    v8 = 1;
  }

  return !chmod(a2, 0x100u) && v8;
}

uint64_t dyld4::SyscallDelegate::saveFileWithAttribute(int a1, Diagnostics *a2, const std::__fs::filesystem::path *__source, const void *a4, size_t a5, const char *a6, uint64_t a7)
{
  strlcpy(__dst, __source, 0x400uLL);
  v13 = getpid();
  __sourcea[0] = 46;
  v14 = (v13 >> 28) + 55;
  if (v13 >> 29 < 5)
  {
    LOBYTE(v14) = (v13 >> 28) | 0x30;
  }

  __sourcea[1] = v14;
  v15 = HIBYTE(v13) & 0xF;
  if (v15 >= 0xA)
  {
    v16 = v15 + 55;
  }

  else
  {
    v16 = v15 | 0x30;
  }

  __sourcea[2] = v16;
  if (BYTE2(v13) >= 0xA0u)
  {
    v17 = ((v13 >> 20) & 0xF) + 55;
  }

  else
  {
    v17 = (v13 >> 20) & 0xF | 0x30;
  }

  __sourcea[3] = v17;
  if ((HIWORD(v13) & 0xF) >= 0xAu)
  {
    v18 = (BYTE2(v13) & 0xF) + 55;
  }

  else
  {
    v18 = BYTE2(v13) & 0xF | 0x30;
  }

  __sourcea[4] = v18;
  if (BYTE1(v13) >= 0xA0u)
  {
    v19 = (v13 >> 12) + 55;
  }

  else
  {
    v19 = (v13 >> 12) | 0x30;
  }

  __sourcea[5] = v19;
  v20 = (v13 >> 8) & 0xF;
  if (v20 >= 0xA)
  {
    v21 = v20 + 55;
  }

  else
  {
    v21 = v20 | 0x30;
  }

  __sourcea[6] = v21;
  if (v13 >= 0xA0u)
  {
    v22 = (v13 >> 4) + 55;
  }

  else
  {
    v22 = (v13 >> 4) | 0x30;
  }

  __sourcea[7] = v22;
  if ((v13 & 0xF) >= 0xA)
  {
    v23 = (v13 & 0xF) + 55;
  }

  else
  {
    v23 = v13 & 0xF | 0x30;
  }

  __sourcea[8] = v23;
  __sourcea[9] = 0;
  strlcat(__dst, __sourcea, 0x400uLL);
  v24 = open_dprotected_np(__dst, 513, 4, 0, 384);
  if (v24 == -1)
  {
    v29 = *__error();
    Diagnostics::error(a2, "open/open_dprotected_np(%s) failed, errno=%d");
  }

  else
  {
    v25 = v24;
    if (ftruncate(v24, a5) == -1)
    {
      v30 = *__error();
      Diagnostics::error(a2, "ftruncate(%lu) failed, errno=%d");
    }

    else if (write(v25, a4, a5) == a5)
    {
      if (fsetxattr(v25, a6, *a7, *(a7 + 16), 0, 0) == -1)
      {
        v32 = *__error();
        Diagnostics::error(a2, "fsetxattr(%s) failed, errno=%d");
      }

      else if (fchmod(v25, 0x100u) == -1)
      {
        v33 = *__error();
        Diagnostics::error(a2, "fchmod(S_IRUSR) failed, errno=%d");
      }

      else if (close(v25) == -1)
      {
        v34 = *__error();
        Diagnostics::error(a2, "close() failed, errno=%d");
      }

      else
      {
        rename(__dst, __source, v26);
        if (v27 != -1)
        {
          return 1;
        }

        v35 = *__error();
        Diagnostics::error(a2, "rename(%s, %s) failed, errno=%d");
      }
    }

    else
    {
      v31 = *__error();
      Diagnostics::error(a2, "write() failed, errno=%d");
    }
  }

  return 0;
}

BOOL dyld4::SyscallDelegate::sandboxBlockedMmap(dyld4::SyscallDelegate *this, const char *a2)
{
  v2 = a2;
  v3 = getpid();
  return sandbox_check(v3, "file-map-executable", 1073741825, v4, v5, v6, v7, v8, v2) > 0;
}

uint64_t PatchTable::patchableExportCount(int **this, unsigned int a2)
{
  v2 = *this;
  v3 = **this;
  if ((v3 == 4 || v3 == 3 || v3 == 2) && *(v2 + 2) > a2)
  {
    return *(&v2[4 * a2 + 3] + *(v2 + 1) - this[1]);
  }

  else
  {
    return 0;
  }
}

BOOL PatchTableV2::imageHasClient(PatchTableV2 *this, unsigned int a2, int a3)
{
  v3 = *this;
  if (*(*this + 16) <= a2)
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = (v3 + *(v3 + 8) - v4 + 16 * a2);
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v7 = (v3 + *(v3 + 40) - v4 + 12 * *v5);
  v8 = 12 * v6 - 12;
  do
  {
    v9 = *v7;
    v7 += 3;
    result = v9 == a3;
    v11 = v9 == a3 || v8 == 0;
    v8 -= 12;
  }

  while (!v11);
  return result;
}

void *PatchTable::forEachPatchableExport(void *result, unsigned int a2, uint64_t a3)
{
  if ((**result - 2) <= 2)
  {
    return PatchTableV2::forEachPatchableExport(result, a2, a3);
  }

  return result;
}

void *PatchTableV2::forEachPatchableExport(void *result, unsigned int a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16) > a2)
  {
    v4 = result[1];
    v5 = &v3[2 * a2] + v3[1] - v4;
    v6 = *(v5 + 12);
    if (v6)
    {
      v8 = v3[12];
      v9 = v3 + v3[11] - v4;
      v10 = v3 + v3[3] + 8 * *(v5 + 8) - v4 + 4;
      v11 = 8 * v6;
      v12 = v10;
      do
      {
        v14 = *v12;
        v12 += 2;
        v13 = v14;
        v15 = v14 & 0xFFFFFFF;
        if (v8 < v15)
        {
          abort();
        }

        result = (*(a3 + 16))(a3, *(v10 - 4), &v9[v15], v13 >> 28);
        v10 = v12;
        v11 -= 8;
      }

      while (v11);
    }
  }

  return result;
}

PatchTableV2 *PatchTable::forEachPatchableUseOfExportInImage(PatchTableV2 *a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v5 = **a1;
  if (v5 == 4)
  {
    return PatchTableV4::forEachPatchableUseOfExportInImage(a1, a2, a3, a4, a5);
  }

  if (v5 == 3 || v5 == 2)
  {
    return PatchTableV2::forEachPatchableUseOfExportInImage(a1, a2, a3, a4, a5);
  }

  return a1;
}

char *PatchTableV2::forEachPatchableUseOfExportInImage(PatchTableV2 *a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(*a1 + 24);
  v10 = *(*a1 + 72);
  result = PatchTableV2::clientsExportsForImageAndClient(a1, a2, a4);
  if (v12)
  {
    v13 = (result + 4);
    v14 = 12 * v12;
    while (*(v7 + v9 - v8 + 8 * *(v13 - 1)) != a3)
    {
      v13 += 3;
      v14 -= 12;
      if (!v14)
      {
        return result;
      }
    }

    v15 = v13[1];
    if (v15)
    {
      v16 = (v10 + 8 * *v13 - v8 + v7 + 4);
      v17 = 8 * v15;
      do
      {
        dyld3::MachOFile::PointerMetaData::PointerMetaData(&v19);
        v18 = vandq_s8(vshlq_u32(vdupq_n_s32(*v16), xmmword_8C9D0), xmmword_8C9E0);
        *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
        v19 = v18.i32[0] | v19 & 0xF0000000 | v18.i32[1] | HIWORD(*v16);
        result = (*(a5 + 16))(a5, *(v16 - 1));
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
    }
  }

  return result;
}

char *PatchTableV4::forEachPatchableUseOfExportInImage(PatchTableV2 *a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(*a1 + 24);
  v10 = *(*a1 + 72);
  result = PatchTableV2::clientsExportsForImageAndClient(a1, a2, a4);
  if (v12)
  {
    v13 = (result + 4);
    v14 = 12 * v12;
    while (*(v7 + v9 - v8 + 8 * *(v13 - 1)) != a3)
    {
      v13 += 3;
      v14 -= 12;
      if (!v14)
      {
        return result;
      }
    }

    v15 = v13[1];
    if (v15)
    {
      v16 = (v7 + v10 - v8 + 8 * *v13);
      v17 = &v16[2 * v15];
      do
      {
        dyld3::MachOFile::PointerMetaData::PointerMetaData(&v21);
        dyld_cache_patchable_location_v4::getPMD(v16, &v21);
        v18 = *v16;
        v19 = v16[1];
        v16 += 2;
        if (v19)
        {
          v20 = (v19 >> 9) & 0x1F;
        }

        else
        {
          v20 = v19 >> 9;
        }

        result = (*(a5 + 16))(a5, v18, v21, v20, (v19 >> 8) & 1);
      }

      while (v16 != v17);
    }
  }

  return result;
}

void *PatchTable::forEachPatchableCacheUseOfExport(void *result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = **result;
  if (v6 == 4)
  {
    return PatchTableV4::forEachPatchableCacheUseOfExport(result, a2, a3, a4, a5, a6);
  }

  if (v6 == 3 || v6 == 2)
  {
    return PatchTableV2::forEachPatchableCacheUseOfExport(result, a2, a3, a4, a5, a6);
  }

  return result;
}

void *PatchTableV2::forEachPatchableCacheUseOfExport(void *result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *result;
  if (*(*result + 16) <= a2)
  {
    v14 = result[1];
  }

  else
  {
    v9 = result[1];
    v10 = (&v8[2 * a2] + v8[1] - v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = (v8 + 12 * v12 + v8[5] - v9);
    if (v11)
    {
      v15 = v8 + v8[3] - v9;
      v26 = v8 + v8[7] - v9;
      v31 = v8 + v8[9] - v9;
      v28 = &v13[3 * v11];
      do
      {
        result = (*(a5 + 16))(a5, *v13);
        v30 = v13;
        v16 = v13[2];
        if (v16)
        {
          v17 = &v26[12 * v13[1]];
          v18 = &v17[3 * v16];
          v19 = result - a4;
          do
          {
            if (*&v15[8 * *v17] == a3)
            {
              v20 = v17[2];
              if (v20)
              {
                v21 = &v31[8 * v17[1]];
                v22 = &v21[2 * v20];
                do
                {
                  v23 = *v21;
                  dyld3::MachOFile::PointerMetaData::PointerMetaData(&v32);
                  v24 = v21[1];
                  v25 = vandq_s8(vshlq_u32(vdupq_n_s32(v24), xmmword_8C9D0), xmmword_8C9E0);
                  *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
                  v32 = v25.i32[0] | v32 & 0xF0000000 | v25.i32[1] | HIWORD(v24);
                  result = (*(a6 + 16))(a6, &v19[v23]);
                  v21 += 2;
                }

                while (v21 != v22);
              }
            }

            v17 += 3;
          }

          while (v17 != v18);
        }

        v13 = v30 + 3;
      }

      while (v30 + 3 != v28);
    }
  }

  return result;
}

void *PatchTableV4::forEachPatchableCacheUseOfExport(void *result, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *result;
  if (*(*result + 16) <= a2)
  {
    v14 = result[1];
  }

  else
  {
    v9 = result[1];
    v10 = (&v8[2 * a2] + v8[1] - v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = (v8 + 12 * v12 + v8[5] - v9);
    if (v11)
    {
      v15 = v8 + v8[3] - v9;
      v26 = v8 + v8[7] - v9;
      v31 = v8 + v8[9] - v9;
      v28 = &v13[3 * v11];
      do
      {
        result = (*(a5 + 16))(a5, *v13);
        v30 = v13;
        v16 = v13[2];
        if (v16)
        {
          v17 = &v26[12 * v13[1]];
          v18 = &v17[3 * v16];
          v19 = result - a4;
          do
          {
            if (*&v15[8 * *v17] == a3)
            {
              v20 = v17[2];
              if (v20)
              {
                v21 = &v31[8 * v17[1]];
                v22 = &v21[2 * v20];
                do
                {
                  v23 = *v21;
                  dyld3::MachOFile::PointerMetaData::PointerMetaData(&v32);
                  dyld_cache_patchable_location_v4::getPMD(v21, &v32);
                  v24 = v21[1];
                  if (v24)
                  {
                    v25 = (v24 >> 9) & 0x1F;
                  }

                  else
                  {
                    v25 = v24 >> 9;
                  }

                  result = (*(a6 + 16))(a6, &v19[v23], v32, v25, (v24 >> 8) & 1);
                  v21 += 2;
                }

                while (v21 != v22);
              }
            }

            v17 += 3;
          }

          while (v17 != v18);
        }

        v13 = v30 + 3;
      }

      while (v30 + 3 != v28);
    }
  }

  return result;
}

uint64_t PatchTable::forEachPatchableGOTUseOfExport(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = **result;
  if (v4 == 4)
  {
    return PatchTableV4::forEachPatchableGOTUseOfExport(result, a2, a3, a4);
  }

  if (v4 == 3)
  {
    return PatchTableV3::forEachPatchableGOTUseOfExport(result, a2, a3, a4);
  }

  return result;
}

uint64_t PatchTableV3::forEachPatchableGOTUseOfExport(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *result;
  if (*(*result + 112) > a2)
  {
    v5 = *(result + 8);
    v6 = (&v4[a2] + v4[13] - v5);
    v7 = v6[1];
    if (v7)
    {
      v9 = 0;
      v10 = v7 - 1;
      while (1)
      {
        v11 = v9 + v10;
        v12 = (v4 + 12 * *v6 + 12 * ((v9 + v10) >> 1) + v4[15] - v5);
        result = *(&v4[*v12] + v4[3] - v5);
        if (result == a3)
        {
          break;
        }

        v13 = v11 >> 1;
        v14 = (v11 >> 1) - 1;
        if (result <= a3)
        {
          v9 = v13 + 1;
        }

        else
        {
          v10 = v14;
        }

        if (v9 > v10)
        {
          return result;
        }
      }

      v15 = v12[2];
      if (v15)
      {
        v16 = (v4 + v4[17] + 16 * v12[1] - v5 + 8);
        v17 = 16 * v15;
        do
        {
          dyld3::MachOFile::PointerMetaData::PointerMetaData(&v19);
          v18 = vandq_s8(vshlq_u32(vdupq_n_s32(*v16), xmmword_8C9D0), xmmword_8C9E0);
          *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
          v19 = v18.i32[0] | v19 & 0xF0000000 | v18.i32[1] | HIWORD(*v16);
          result = (*(a4 + 16))(a4, *(v16 - 1));
          v16 += 4;
          v17 -= 16;
        }

        while (v17);
      }
    }
  }

  return result;
}

void *PatchTableV4::forEachPatchableGOTUseOfExport(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *result;
  if (*(*result + 112) > a2)
  {
    v5 = result[1];
    v6 = (&v4[a2] + v4[13] - v5);
    v7 = v6[1];
    if (v7)
    {
      v9 = 0;
      v10 = v4 + 12 * *v6 + v4[15] - v5;
      v11 = v4[17] - v5;
      v12 = v4 + v4[3] - v5;
      v13 = v4 + v11;
      v14 = v7 - 1;
      while (1)
      {
        v15 = v9 + v14;
        v16 = (v10 + 12 * ((v9 + v14) >> 1));
        v17 = *&v12[8 * *v16];
        if (v17 == a3)
        {
          break;
        }

        v18 = v15 >> 1;
        v19 = (v15 >> 1) - 1;
        if (v17 <= a3)
        {
          v9 = v18 + 1;
        }

        else
        {
          v14 = v19;
        }

        if (v9 > v14)
        {
          return result;
        }
      }

      v20 = v16[2];
      if (v20)
      {
        v21 = &v13[16 * v16[1]];
        v22 = v21 + 16 * v20;
        do
        {
          dyld3::MachOFile::PointerMetaData::PointerMetaData(&v25);
          dyld_cache_patchable_location_v4_got::getPMD(v21, &v25);
          v23 = *(v21 + 8);
          if (v23)
          {
            v24 = (v23 >> 9) & 0x1F;
          }

          else
          {
            v24 = v23 >> 9;
          }

          result = (*(a4 + 16))(a4, *v21, v25, v24, (v23 >> 8) & 1);
          v21 += 16;
        }

        while (v21 != v22);
      }
    }
  }

  return result;
}

char *PatchTableV2::clientsExportsForImageAndClient(PatchTableV2 *this, unsigned int a2, int a3)
{
  v3 = *this;
  if (*(*this + 16) <= a2)
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = (&v3[2 * a2] + v3[1] - v4);
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v7 = *v5;
  v8 = v3 + v3[7] - v4;
  v9 = 12 * v6;
  for (i = (v3 + v3[5] + 12 * v7 - v4 + 8); *(i - 2) != a3; i += 3)
  {
    v9 -= 12;
    if (!v9)
    {
      return 0;
    }
  }

  v12 = *i;
  return &v8[12 * *(i - 1)];
}

uint64_t dyld_cache_patchable_location_v4::getPMD(uint64_t this, dyld3::MachOFile::PointerMetaData *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v5 = HIWORD(v2) | (*(a2 + 1) << 16);
    *a2 = v5;
    v6 = v5 & 0xFF00FFFF | (((*(this + 4) >> 1) & 0x7F) << 17);
    *a2 = v6;
    v7 = v6 & 0xFEFFFFFF | ((*(this + 4) & 1) << 24);
    *a2 = v7;
    v8 = v7 & 0xF9FFFFFF | (*(this + 4) << 11) & 0x4000000;
    *a2 = v8;
    v4 = v8 & 0xF7FFFFFF | (*(this + 4) << 13) & 0x8000000;
  }

  else
  {
    v3 = *a2;
    *a2 &= 0xFFFF0000;
    v4 = v3 & 0xF0000000 | (((*(this + 4) >> 1) & 0x7F) << 17);
  }

  *a2 = v4;
  return this;
}

uint64_t dyld_cache_patchable_location_v4_got::getPMD(uint64_t this, dyld3::MachOFile::PointerMetaData *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v5 = HIWORD(v2) | (*(a2 + 1) << 16);
    *a2 = v5;
    v6 = v5 & 0xFF00FFFF | (((*(this + 8) >> 1) & 0x7F) << 17);
    *a2 = v6;
    v7 = v6 & 0xFEFFFFFF | ((*(this + 8) & 1) << 24);
    *a2 = v7;
    v8 = v7 & 0xF9FFFFFF | (*(this + 8) << 11) & 0x4000000;
    *a2 = v8;
    v4 = v8 & 0xF7FFFFFF | (*(this + 8) << 13) & 0x8000000;
  }

  else
  {
    v3 = *a2;
    *a2 &= 0xFFFF0000;
    v4 = v3 & 0xF0000000 | (((*(this + 8) >> 1) & 0x7F) << 17);
  }

  *a2 = v4;
  return this;
}

lsl::MemoryManager *lsl::MemoryManager::MemoryManager(lsl::MemoryManager *this, const char **a2, const char **a3, void *a4, char a5)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 32) = a5;
  *(this + 33) = 0;
  *(this + 35) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (_simple_getenv(a3, "dyld_hw_tpro"))
  {
    *(this + 33) = 1;
  }

  v17 = 0;
  if (rosetta_dyld_is_translated(&v17, v8, v9, v10, v11, v12, v13, v14))
  {
    if (*(this + 34))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = v17;
    *(this + 34) = v17;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  if (_simple_getenv(a3, "has_sec_transition"))
  {
    *(this + 35) = 1;
  }

LABEL_9:
  if ((MEMORY[0xFFFFFC162] & 0x80) != 0)
  {
    *(this + 35) = 0;
  }

  *(this + 5) = a4;
  return this;
}

uint64_t lsl::MemoryManager::writeProtect(lsl::MemoryManager *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  if (*(this + 32))
  {
    v5 = 0;
  }

  else
  {
    *(this + 32) = 1;
    v5 = 16;
  }

  vm_protect(mach_task_self_, &lsl::sPoolBuffer, 0xD0080 - &lsl::sPoolBuffer, 0, v4);
  v6 = *(this + 5);
  if (v6 && *(v6 + 16) >= 0x205u && *(v6 + 516))
  {
    v7 = 0;
    v8 = v6 - *(v6 + 224);
    v9 = (*(v6 + 512) + v6 + 8);
    do
    {
      vm_protect(mach_task_self_, v8 + *(v9 - 1), *v9, 0, v5 | v4);
      ++v7;
      v9 += 2;
    }

    while (v7 < *(v6 + 516));
  }

  result = *(this + 2);
  if (result)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZN3lsl13MemoryManager12writeProtectEb_block_invoke;
    v11[3] = &__block_descriptor_tmp_7;
    v12 = v2;
    return lsl::Allocator::forEachVMAllocatedBuffer(result, v11);
  }

  return result;
}

uint64_t lsl::Allocator::forEachVMAllocatedBuffer(uint64_t result, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v4 = ___ZN3lsl9Allocator24forEachVMAllocatedBufferEU13block_pointerFvRKNS_13MemoryManager6BufferEE_block_invoke;
  v5 = &unk_A2030;
  v6 = a2;
  for (i = *(result + 8); i; i = *(i + 16))
  {
    result = (v4)(v3, i);
  }

  return result;
}

uint64_t ___ZN3lsl13MemoryManager12writeProtectEb_block_invoke(uint64_t a1, vm_address_t *a2)
{
  if (*(a1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  return vm_protect(mach_task_self_, *a2, a2[1], 0, v2);
}

uint64_t ___ZN3lsl9Allocator24forEachVMAllocatedBufferEU13block_pointerFvRKNS_13MemoryManager6BufferEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 56) == 1)
  {
    v8[2] = v4;
    v8[3] = v5;
    v6 = *(result + 32);
    v7 = *(a2 + 40);
    v8[0] = *(a2 + 32);
    v8[1] = v7;
    return (*(v6 + 16))(v6, v8, a3, a4);
  }

  return result;
}

uint64_t lsl::Allocator::Pool::Pool(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  *(a1 + 55) = 0;
  if (a6 < a4 || a6 + a7 > a5 + a4)
  {
    lsl::Allocator::Pool::Pool();
  }

  *(a1 + 58) = a8;
  *(a1 + 57) = a9;
  *a6 = a1 | 1;
  a6[1] = (a6 + (a7 & 0xFFFFFFFFFFFFFFF0)) | 2;
  *(a1 + 24) = a6;
  v10 = lsl::Allocator::Pool::aligned_alloc(a1, 16, 64);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(a1 + 8) = v10;
  return a1;
}

{
  return lsl::Allocator::Pool::Pool(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t lsl::ProtectedStack::withNestedProtectedStack(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*a1)
  {
    lsl::ProtectedStack::withNestedProtectedStack();
  }

  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    v11 = a1[1];
    if (&a9 >= v10 && &a9 < v9)
    {
LABEL_14:
      lsl::ProtectedStack::withNestedProtectedStack();
    }
  }

  else if (&a9 < v9)
  {
    goto LABEL_14;
  }

  v13 = a1[3];
  if (v13)
  {
    v14 = a1[3];
  }

  return callWithProtectedStack(v13, a1 + 4, a2);
}

double lsl::MemoryManager::init(char const**,char const**,void *)::$_0::operator()(uint64_t a1, const char **a2)
{
  if (MEMORY[0xFFFFF4084])
  {
    v7 = _simple_getenv(**a1, "_DYLD_PRINT_PROTETED_MEMORY_STATUS");
    v8 = *(a1 + 8);
    v4 = *(v8 + 35);
    v5 = *(v8 + 33);
    v6 = **(a1 + 16);
    if (v7)
    {
      v9 = "Shared Cache ";
      if (!v6)
      {
        v9 = &unk_91735;
      }

      fprintf(__stderrp, "%s__TPRO_CONST,__allocator = 0x%llx - 0x%llx\n", v9, lsl::sPoolBytes, 0xD0080uLL);
      if (v5)
      {
        v10 = "On";
      }

      else
      {
        v10 = "Off";
      }

      fprintf(__stderrp, "\tTPRO: %s\n", v10);
      if (v4)
      {
        v11 = "On";
      }

      else
      {
        v11 = "Off";
      }

      fprintf(__stderrp, "\tMTE:  %s\n", v11);
    }
  }

  else
  {
    v3 = *(a1 + 8);
    LOBYTE(v4) = *(v3 + 35);
    LOBYTE(v5) = *(v3 + 33);
    v6 = **(a1 + 16);
  }

  if ((v5 & 1) != 0 || (v4) && (hactivateRegion(v4 & 1, v5 & 1, &lsl::sPoolBuffer, 0xD0080, lsl::sPoolBytes - &lsl::sPoolBuffer), v6))
  {
    if (!*(v6 + 516))
    {
      goto LABEL_31;
    }

    v12 = 0;
    v13 = 0;
    v14 = v6 - *(v6 + 224);
    v15 = *(v6 + 512) + v6 + 8;
LABEL_18:
    v16 = (v15 + 16 * v12);
    do
    {
      v17 = *v16;
      v18 = (*(v16 - 1) + v14);
      v19 = v18 + *v16;
      if (v18 <= lsl::sPoolBytes && v19 > lsl::sPoolBytes)
      {
        hactivateRegion(v4 & 1, v5 & 1, v18, v19, lsl::sPoolBytes - v18);
        ++v12;
        v13 = 1;
        if (v12 >= *(v6 + 516))
        {
          goto LABEL_30;
        }

        goto LABEL_18;
      }

      v16 += 2;
      hactivateRegion(0, v5 & 1, v18, v19, v17);
      ++v12;
    }

    while (v12 < *(v6 + 516));
    if ((v13 & 1) == 0)
    {
LABEL_31:
      lsl::MemoryManager::init(char const**,char const**,void *)::$_0::operator()();
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_30:
  lsl::MemoryManager::MemoryManager(&lsl::sMemoryManagerBuffer, a2, **(a1 + 24), **(a1 + 16), v13);
  lsl::sMemoryManagerInitialized = 1;
  v21 = *(*(a1 + 8) + 33);
  lsl::sPoolBuffer = &lsl::sAllocatorBuffer;
  qword_B0008 = 0;
  qword_B0020 = lsl::sPoolBytes;
  unk_B0028 = 0x20000;
  *(&qword_B0030 + 7) = 0;
  qword_B0030 = 0;
  byte_B003A = v21;
  byte_B0039 = v4 & 1;
  lsl::sPoolBytes[0] = &lsl::sPoolBuffer + 1;
  unk_B0088 = 0xD0082uLL;
  qword_B0010 = 0;
  unk_B0018 = lsl::sPoolBytes;
  v22 = lsl::Allocator::Pool::aligned_alloc(&lsl::sPoolBuffer, 16, 64);
  result = 0.0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  qword_B0008 = v22;
  lsl::sAllocatorBuffer = &lsl::sPoolBuffer;
  *algn_B0048 = &lsl::sPoolBuffer;
  qword_B0050 = 0;
  unk_B0058 = 0;
  word_B0060 = 0;
  qword_AC018 = &lsl::sAllocatorBuffer;
  return result;
}

void *hactivateRegion(int a1, int a2, void *a3, uint64_t a4, size_t a5)
{
  v9 = a4 - a3;
  __chkstk_darwin();
  v11 = &address - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memmove(v11, v12, v10);
  if (a1)
  {
    v13 = 1006657536;
  }

  else
  {
    v13 = 1006649344;
  }

  if (a2)
  {
    v14 = 4096;
  }

  else
  {
    v14 = 0;
  }

  address = a3;
  if (vm_allocate(mach_task_self_, &address, v9, v14 | v13))
  {
    hactivateRegion();
  }

  return memmove(a3, v11, a5);
}

size_t OUTLINED_FUNCTION_0_0(uint64_t a1, const char *a2)
{

  return strlcat(v2, a2, 0x400uLL);
}

size_t OUTLINED_FUNCTION_1_0(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4)
{

  return appendHexToString<unsigned long long>(v4, a4, 0x400uLL, a1, a2);
}

uint64_t dyld3::deallocateExistingSharedCache(dyld3 *this)
{
  v2 = 0;
  result = __shared_region_check_np(&v2);
  if (!result)
  {
    return __shared_region_check_np(0);
  }

  return result;
}

uint64_t dyld3::mapSplitCachePrivate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, v197[36]);
  v9 = v8;
  v11 = v10;
  v188 = v8;
  v184 = 0;
  v185 = 0;
  memset(v196, 0, sizeof(v196));
  v12 = dyld3::preflightMainCacheFile(v10, v8, v183, v196, v182);
  v13 = 0;
  if (!v12)
  {
    return v13 & 1;
  }

  if (*(v11 + 6) == 1 && FileIdTuple::getPath((v9 + 28), v192))
  {
    dyld4::console("mapped dyld cache file private to process (%s):\n", v14, v192);
  }

  v15 = v186;
  if (v186 && (v184 & 1) == 0)
  {
    v13 = 0;
    v144 = v188;
    v145 = "shared cache is too old, missing subcache suffixes";
LABEL_149:
    *(v144 + 16) = v145;
    return v13 & 1;
  }

  for (i = 0; i != 7168; i += 56)
  {
    v17 = &v192[i];
    *(v17 + 389) = 0;
    *(v17 + 98) = 0;
  }

  v158 = v15;
  if (v15 >= 2)
  {
    v18 = &v195;
    v19 = v158 - 1;
    v20 = v182;
    do
    {
      memset(v176, 0, sizeof(v176));
      v177 = 0;
      bzero(v178, 0x10uLL);
      if (!dyld3::preflightSubCacheFile(v11, v176, v18, v196, v20))
      {
        goto LABEL_147;
      }

      if (*(v11 + 6) == 1)
      {
        bzero(v191, 0x400uLL);
        if (FileIdTuple::getPath(v178, v191))
        {
          dyld4::console("mapped dyld cache file private to process (%s):\n", v21, v191);
        }
      }

      v18 += 56;
      v20 += 32;
    }

    while (--v19);
  }

  v166 = v11;
  v22 = memmove(v192, v183, 0x1C0uLL);
  v156 = v183[0];
  dyld3::deallocateExistingSharedCache(v22);
  v23 = v188;
  *v188 = v192[0];
  *(v23 + 8) = 0;
  v24 = v158;
  if (v158)
  {
    v25 = 0;
    v165 = &v193;
    while (1)
    {
      v26 = &v192[56 * v25];
      v27 = *(v26 + 96);
      if (v27)
      {
        break;
      }

LABEL_33:
      ++v25;
      v165 += 112;
      v24 = v158;
      if (v25 == v158)
      {
        goto LABEL_34;
      }
    }

    v28 = *v26;
    v29 = *(v26 + 98);
    v30 = *v26 - (v156 + *(v188 + 8)) + 0x180000000;
    v31 = v165;
    while (1)
    {
      v32 = *(v31 - 1);
      v33 = *v31 & 5 | 2;
      if (*(v166 + 9))
      {
        v34 = 524306;
      }

      else
      {
        v34 = 18;
      }

      if ((*(v166 + 9) & 1) == 0)
      {
        v33 = *v31 & 7;
      }

      v35 = (v32 & 0x200) != 0 ? v34 : 18;
      v36 = (v32 & 0x200) != 0 ? v33 : *v31 & 7u;
      if (mmap((v30 + *(v31 - 11) - v28 + *(v188 + 8)), *(v31 - 9), v36, v35, v29, *(v31 - 7)) == -1)
      {
        break;
      }

      v31 += 12;
      if (!--v27)
      {
        goto LABEL_33;
      }
    }

    if (*(v166 + 6) == 1)
    {
      v146 = __error();
      dyld4::console("mmap(%d, %d) the shared cache region failed due to: %d\n", v147, v36, v35, *v146);
    }

    if (!*(v188 + 16))
    {
      *(v188 + 16) = "mmap() the shared cache region failed";
    }

    v148 = v194;
    v149 = v158;
    do
    {
      if (*v148 != -1)
      {
        close(*v148);
      }

      v148 += 112;
      --v149;
    }

    while (v149);
LABEL_147:
    v13 = 0;
    return v13 & 1;
  }

LABEL_34:
  v37 = DyldSharedCache::DynamicRegion::make((*(v188 + 8) + v187));
  if (!v37)
  {
    mmap(0x180000000, 0x180000000uLL, 0, 4114, 0, 0);
    v13 = 0;
    *v188 = 0;
    v144 = v188;
    v145 = "could not mmap() dynamic config memory";
    goto LABEL_149;
  }

  v38 = v37;
  bzero(v191, 0x400uLL);
  if (FileIdTuple::getPath((v188 + 28), v191))
  {
    DyldSharedCache::DynamicRegion::setCachePath(v38, v191);
  }

  DyldSharedCache::DynamicRegion::setDyldCacheFileID(v38, *(v188 + 28), *(v188 + 36));
  v39 = v166;
  v40 = *(v166 + 4);
  v41 = dyld4::ProcessConfig::evaluateProcessorSpecificFunctionVariantFlags();
  v43 = v42;
  *&v198 = v41;
  *(&v198 + 1) = v43;
  DyldSharedCache::DynamicRegion::setProcessorFlags(v38, v198);
  v44 = dyld4::ProcessConfig::evaluateSystemWideFunctionVariantFlags(*(v166 + 4));
  v46 = v45;
  *&v199 = v44;
  *(&v199 + 1) = v46;
  DyldSharedCache::DynamicRegion::setSystemWideFlags(v38, v199);
  DyldSharedCache::DynamicRegion::setReadOnly(v38);
  if (*(v166 + 6) == 1)
  {
    dyld3::verboseSharedCacheMappings(*v188, v47);
  }

  v181 = 1;
  if (v24)
  {
    v48 = 0;
    v154[1] = v190;
    v154[2] = v168;
    v154[3] = v170;
    v157 = v178 + 4;
    v155 = &v179;
    do
    {
      v159 = v48;
      v161 = &v192[56 * v48];
      v49 = memmove(v176, v161, 0x1C0uLL);
      v57 = v180;
      if (v180)
      {
        v58 = 0;
        v59 = *(v39 + 13);
        v60 = v180;
        v61 = v157;
        do
        {
          if (*(v61 - 1))
          {
            ++v58;
            v59 &= **v61 == 5;
          }

          v61 += 6;
          --v60;
        }

        while (v60);
        if (v58)
        {
          if (((v58 < 6) & v59) != 1)
          {
            goto LABEL_92;
          }

          v171 = v189;
          v172 = 8;
          v174 = 0;
          v175 = 0;
          v160 = &v176[6 * v159];
          v62 = v155;
          v173 = 0;
          do
          {
            if (*(v62 - 5))
            {
              v63 = *(v62 - 3);
              if (*v63 != 5)
              {
                __assert_rtn("mapSplitCachePrivate", "SharedCacheRuntime.cpp", 856, "slideInfoHeader->version == 5");
              }

              if (*(v39 + 9))
              {
                v64 = *v62 & 7 | 0x200;
              }

              else
              {
                v64 = *v62 & 7;
              }

              if ((*(v62 - 1) & 0x200) == 0)
              {
                v64 = *v62 & 7;
              }

              LODWORD(v165) = v64;
              v163 = *(v161 + 98);
              v164 = *(v62 - 7);
              v162 = *(v62 - 11);
              v65 = *(v188 + 8);
              v66 = v63[1];
              v67 = v63[2];
              v49 = DyldSharedCache::mappingName(*(v160 + 10), 0);
              v68 = v173 + 1;
              if (v173 + 1 > v172)
              {
                v69 = v49;
                v70 = v174;
                v71 = v175;
                if (2 * v172 > v68)
                {
                  v68 = 2 * v172;
                }

                v175 = (vm_page_size + 48 * v68 - 1) & -vm_page_size;
                v72 = vm_allocate(mach_task_self_, &v174, v175, 1006632961);
                if (v72)
                {
                  strcpy(v197, "OverflowSafeArray failed to allocate 0x");
                  v151 = v72;
                  appendHexToString<unsigned long long>(v197, v175, 0x100uLL, *"OverflowSafeArray failed to allocate 0x", *"y failed to allocate 0x");
                  strlcat(v197, " bytes, vm_allocate returned: 0x", 0x100uLL);
                  appendHexToString<int>(v197, v151, 0x100uLL, v152);
                  strlcat(v197, "\n", 0x100uLL);
                  qword_A82F8 = v197;
                  __assert_rtn("growTo", "Array.h", 196, "0");
                }

                memmove(v174, v171, 48 * v173);
                v171 = v174;
                v172 = v175 / 0x30;
                v49 = v69;
                if (v70)
                {
                  vm_deallocate(mach_task_self_, v70, v71);
                  v49 = v69;
                }
              }

              v73 = v65 + v162;
              v74 = v173++;
              v75 = v171 + 48 * v74;
              *v75 = v163;
              *(v75 + 1) = v165;
              *(v75 + 1) = v164;
              *(v75 + 2) = v73;
              *(v75 + 3) = (v67 * v66);
              *(v75 + 4) = v49;
              *(v75 + 5) = v63;
              v39 = v166;
            }

            v62 += 12;
            --v57;
          }

          while (v57);
          v76 = v173;
          if (v173)
          {
            v77 = 4 * v173 + 4;
            v78 = v171 + 40;
            v79 = 48 * v173;
            v24 = v158;
            do
            {
              if (**v78 != 5)
              {
                __assert_rtn("mapSplitCachePrivate", "SharedCacheRuntime.cpp", 891, "slideInfoHeader->version == 5");
              }

              v77 = (v77 + 2 * *(*v78 + 8) + 25) & 0xFFFFFFFC;
              v78 += 48;
              v79 -= 48;
            }

            while (v79);
            v80 = (v77 + 47) & 0xFFFFFFF8;
            __chkstk_darwin(v49, v50, v51, v52, v53, v54, v55, v56, v154[0]);
            v81 = (v154 - ((v80 + 15) & 0x1FFFFFFF0));
            bzero(v81, v80);
            *v81 = 0xD400000000007;
            *(v81 + 2) = v80;
            *(v81 + 12) = 0x2800000000;
            *(v81 + 5) = v77;
            v90 = *(v188 + 8);
            v91 = v156;
            v81[3] = v90;
            v81[4] = v91;
            v92 = v173;
            *(v81 + 10) = v173;
            if (v92)
            {
              v93 = 0;
              v94 = (v171 + 48 * v92);
              v95 = 4 * v92 + 4;
              v96 = v90 + v91;
              v97 = v171;
              do
              {
                v98 = *(v97 + 5);
                if (*v98 != 5)
                {
                  __assert_rtn("mapSplitCachePrivate", "SharedCacheRuntime.cpp", 917, "slideInfoHeader->version == 5");
                }

                *(v81 + v93 + 11) = v95;
                v99 = v81 + v95 + 40;
                v100 = 2 * v98[2] + 22;
                *v99 = v100;
                *(v99 + 4) = 868352;
                *(v99 + 8) = *(v97 + 2) - v96;
                *(v99 + 16) = 0;
                v101 = v98[2];
                *(v99 + 20) = v101;
                if (v101)
                {
                  v98 += 6;
                  v99 += 22;
                  do
                  {
                    v102 = *v98;
                    v98 = (v98 + 2);
                    v84 = v102;
                    *v99 = v102;
                    v99 += 2;
                    --v101;
                  }

                  while (v101);
                }

                ++v93;
                v95 = (v95 + v100 + 3) & 0xFFFFFFFC;
                v97 = (v97 + 48);
              }

              while (v97 != v94);
              __chkstk_darwin(v98, v99, v84, 868352, v86, v87, v88, v89, v154[0]);
              v107 = (v154 - (v106 & 0xFFFFFFFFFFFFFFE0 | 0x10));
              v108 = 0;
              v109 = 48 * v104;
              v110 = v107;
              do
              {
                if (v104 == v108)
                {
                  __assert_rtn("push_back", "Array.h", 68, "_usedCount < _allocCount");
                }

                ++v108;
                v111 = *v105;
                v112 = v105[1];
                v105 += 3;
                *&v110->mwlr_fd = v111;
                *&v110->mwlr_address = v112;
                ++v110;
                v109 -= 48;
              }

              while (v109);
            }

            else
            {
              __chkstk_darwin(v82, v83, v84, v85, v86, v87, v88, v89, v154[0]);
              v107 = &v153;
              LODWORD(v108) = 0;
            }

            if (*(v39 + 6))
            {
              dyld4::console("Setting up kernel page-in linking for subcache %d\n", v103, v159);
            }

            v114 = __map_with_linking_np(v107, v108, (v154 - ((v80 + 15) & 0x1FFFFFFF0)), v80);
            v113 = v114 == 0;
            if (v114 && *(v39 + 6) == 1)
            {
              dyld4::console("__map_with_linking_np(subcache %d) failed, falling back to linking in-process\n", v115, v159);
            }
          }

          else
          {
            v113 = 1;
            v24 = v158;
          }

          v173 = 0;
          if (v174)
          {
            vm_deallocate(mach_task_self_, v174, v175);
          }

          if (v76 && !v113)
          {
LABEL_92:
            v117 = v176[0];
            v171 = v176[0];
            if (*(v39 + 8) == 1)
            {
              v169[0] = _NSConcreteStackBlock;
              v169[1] = 0x40000000;
              v170[0] = ___ZN5dyld3L20mapSplitCachePrivateERKNS_18SharedCacheOptionsEPNS_19SharedCacheLoadInfoE_block_invoke;
              v170[1] = &__block_descriptor_tmp_8;
              v170[2] = v39;
              v170[3] = v188;
              v117 = DyldSharedCache::forEachRegion(v176[0], v169);
            }

            v118 = lsl::MemoryManager::memoryManager(v117);
            v119 = *(v118 + 6);
            if (v119 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v119))
            {
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_156;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_156;
              }

              v126 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v126 & 0xFE) != 2)
              {
                goto LABEL_156;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v127 = MEMORY[0xFFFFFC0D0];
              if (v127 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_156;
              }

              v128 = *(v118 + 6);
              v189[0] = _NSConcreteStackBlock;
              v189[1] = 0x40000000;
              v190[0] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld3L20mapSplitCachePrivateERKNS2_18SharedCacheOptionsEPNS2_19SharedCacheLoadInfoEE3__0EEvT__block_invoke;
              v190[1] = &__block_descriptor_tmp_45_1;
              v190[2] = &v171;
              v190[3] = &v188;
              v190[4] = &v181;
              lsl::ProtectedStack::withNestedProtectedStack(v128, v189, v120, v121, v122, v123, v124, v125, v154[0]);
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_156;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_156;
              }

              v129 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v129 & 0xFE) != 2)
              {
                goto LABEL_156;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
              __isb(0xFu);
              v130 = MEMORY[0xFFFFFC0D8];
              if (v130 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_156;
              }
            }

            else if (*(v118 + 33) == 1)
            {
              if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_156;
              }

              if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
              {
                DyldSharedCache::fixupDataPages(v171, *(v188 + 8), v197);
                if (v197[0])
                {
                  *(v188 + 16) = "error fixing up shared cache";
                  v141 = mach_o::Error::message(v197);
                  dyld4::console("error: cannot fix up shared cache due to %s\n", v142, v141);
                  v181 = 0;
                }

                mach_o::Error::~Error(v197);
              }

              else
              {
                if (!MEMORY[0xFFFFFC10C])
                {
                  goto LABEL_156;
                }

                if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                {
                  goto LABEL_156;
                }

                v131 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v131 & 0xFE) != 2)
                {
                  goto LABEL_156;
                }

                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v132 = MEMORY[0xFFFFFC0D0];
                if (v132 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  goto LABEL_156;
                }

                DyldSharedCache::fixupDataPages(v171, *(v188 + 8), v197);
                if (v197[0])
                {
                  *(v188 + 16) = "error fixing up shared cache";
                  v133 = mach_o::Error::message(v197);
                  dyld4::console("error: cannot fix up shared cache due to %s\n", v134, v133);
                  v181 = 0;
                }

                mach_o::Error::~Error(v197);
                if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v135 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v135 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]), __isb(0xFu), v136 = MEMORY[0xFFFFFC0D8], v136 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
                {
LABEL_156:
                  __break(1u);
                }
              }
            }

            else
            {
              lsl::MemoryManager::lockGuard(v118, v197);
              v137 = *(v118 + 3);
              if (!v137)
              {
                lsl::MemoryManager::writeProtect(v118, 0);
                v137 = *(v118 + 3);
              }

              *(v118 + 3) = v137 + 1;
              lsl::Lock::unlock(v197[0]);
              DyldSharedCache::fixupDataPages(v171, *(v188 + 8), v197);
              if (v197[0])
              {
                *(v188 + 16) = "error fixing up shared cache";
                v138 = mach_o::Error::message(v197);
                dyld4::console("error: cannot fix up shared cache due to %s\n", v139, v138);
                v181 = 0;
              }

              mach_o::Error::~Error(v197);
              lsl::MemoryManager::lockGuard(v118, v197);
              v140 = *(v118 + 3) - 1;
              *(v118 + 3) = v140;
              if (!v140)
              {
                lsl::MemoryManager::writeProtect(v118, 1);
              }

              lsl::Lock::unlock(v197[0]);
            }

            if (*(v39 + 8) == 1)
            {
              v167[0] = _NSConcreteStackBlock;
              v167[1] = 0x40000000;
              v168[0] = ___ZN5dyld3L20mapSplitCachePrivateERKNS_18SharedCacheOptionsEPNS_19SharedCacheLoadInfoE_block_invoke_2;
              v168[1] = &__block_descriptor_tmp_10;
              v168[2] = v39;
              v168[3] = v188;
              DyldSharedCache::forEachRegion(v171, v167);
            }
          }
        }
      }

      v48 = v159 + 1;
    }

    while (v159 + 1 != v24);
    v143 = v194;
    do
    {
      if (*v143 != -1)
      {
        close(*v143);
      }

      v143 += 112;
      --v24;
    }

    while (v24);
  }

  v13 = v181;
  return v13 & 1;
}

char *dyld3::mapSplitCacheSystemWide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, v95);
  v9 = v8;
  v11 = v10;
  v84 = 0;
  v85 = 0;
  memset(v94, 0, sizeof(v94));
  v12 = dyld3::preflightMainCacheFile(v10, v8, v83, v94, v82);
  result = 0;
  if (!v12)
  {
    return result;
  }

  v14 = v86;
  if (v86 && (v84 & 1) == 0)
  {
    result = 0;
    v54 = "shared cache is too old, missing subcache suffixes";
    goto LABEL_20;
  }

  for (i = 0; i != 57344; i += 448)
  {
    v16 = &v91[i];
    v16[389] = 0;
    *(v16 + 98) = 0;
  }

  if (v14 < 2)
  {
LABEL_10:
    result = DyldSharedCache::DynamicRegion::make(0);
    if (result)
    {
      v20 = result;
      bzero(v88, 0x400uLL);
      FileIdTuple::getPath((v9 + 28), v88);
      DyldSharedCache::DynamicRegion::setDyldCacheFileID(v20, *(v9 + 28), *(v9 + 36));
      v21 = *(v11 + 32);
      v22 = dyld4::ProcessConfig::evaluateProcessorSpecificFunctionVariantFlags();
      v24 = v23;
      *&v96 = v22;
      *(&v96 + 1) = v24;
      DyldSharedCache::DynamicRegion::setProcessorFlags(v20, v96);
      v25 = dyld4::ProcessConfig::evaluateSystemWideFunctionVariantFlags(*(v11 + 32));
      v27 = v26;
      *&v97 = v25;
      *(&v97 + 1) = v27;
      DyldSharedCache::DynamicRegion::setSystemWideFlags(v20, v97);
      DyldSharedCache::DynamicRegion::setCachePath(v20, v88);
      v28 = memmove(v91, v83, 0x1C0uLL);
      v81 = &v78;
      v80 = v14 + 1;
      __chkstk_darwin(v28, v29, v30, v31, v32, v33, v34, v35, v78);
      v45 = &v78 - v44;
      if (v14)
      {
        v46 = 0;
        v47 = 0;
        v48 = v92[6];
        v49 = v92;
        v50 = v45 + 4;
        do
        {
          v51 = *(v49 - 2);
          *(v50 - 1) = *v49;
          *v50 = v51;
          v47 += v51;
          if (v46)
          {
            v52 = 0;
          }

          else
          {
            v52 = v48;
          }

          v50[1] = v52;
          ++v46;
          v49 += 112;
          v50 += 3;
        }

        while (v14 != v46);
        v53 = v14;
      }

      else
      {
        v53 = 0;
        v47 = 0;
      }

      v79 = v45;
      v55 = &v45[12 * v53];
      *v55 = 0x1FFFFFFFFLL;
      *(v55 + 2) = 0;
      __chkstk_darwin(v36, v37, v38, v39, v40, v41, v42, v43, v78);
      v59 = &v78 - (v47 + 1) * v58;
      if (*(v11 + 6))
      {
        v56 = dyld4::console("Mapping the shared cache system wide\n", v57);
      }

      if (v14)
      {
        v60 = 0;
        v61 = 0;
        v62 = v91;
        do
        {
          v63 = *&v91[448 * v60 + 384];
          v64 = v62;
          if (v63)
          {
            do
            {
              v65 = &v59[48 * v61++];
              v66 = v64[1];
              *v65 = *v64;
              *(v65 + 1) = v66;
              *(v65 + 2) = v64[2];
              v64 += 3;
              --v63;
            }

            while (v63);
          }

          ++v60;
          v62 += 448;
        }

        while (v60 != v53);
      }

      v67 = v87;
      v68 = DyldSharedCache::DynamicRegion::size(v56);
      v69 = &v59[48 * v47];
      *v69 = v67;
      *(v69 + 1) = v68;
      *(v69 + 3) = 0;
      *(v69 + 4) = 0;
      *(v69 + 2) = v20;
      *(v69 + 5) = 0x100000001;
      v74 = __shared_region_map_and_slide_2_np(v80, v79, (v47 + 1), v59, v70, v71, v72, v73);
      DyldSharedCache::DynamicRegion::free(v20);
      if (v14)
      {
        v75 = v92;
        do
        {
          if (*v75 != -1)
          {
            close(*v75);
          }

          v75 += 112;
          --v53;
        }

        while (v53);
      }

      v76 = dyld3::reuseExistingCache(v11, v9);
      if (v74)
      {
        if ((v76 & 1) == 0)
        {
          result = 0;
          if (!*(v9 + 16))
          {
            *(v9 + 16) = "syscall to map cache into shared region failed";
          }

          return result;
        }
      }

      else if ((v76 & 1) == 0 && *(v11 + 6) == 1)
      {
        dyld4::console("mapped dyld cache file system wide\n", v77);
      }

      return (&dword_0 + 1);
    }

    v54 = "Could not vm_allocate dynamic config memory";
LABEL_20:
    *(v9 + 16) = v54;
    return result;
  }

  v17 = &v93;
  v18 = v14 - 1;
  v19 = v82;
  while (1)
  {
    memset(v88, 0, sizeof(v88));
    v89 = 0;
    bzero(&v90, 0x10uLL);
    if ((dyld3::preflightSubCacheFile(v11, v88, v17, v94, v19) & 1) == 0)
    {
      return 0;
    }

    v17 += 56;
    v19 += 32;
    if (!--v18)
    {
      goto LABEL_10;
    }
  }
}

uint64_t dyld3::preflightMainCacheFile(unsigned int *a1, uint64_t a2, uint64_t a3, char *__dst, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 10);
  v11 = *(a1 + 11);
  strcpy(__source, "dyld_shared_cache_arm64e");
  strlcpy(__dst, __source, 0x100uLL);
  if ((v10 & 1) == 0)
  {
    strlcpy(__dsta, __source, 0x100uLL);
    strlcat(__dsta, ".development", 0x100uLL);
    if (!dyld3::fstatat(v9, __dsta, &v22, 0))
    {
      if (dyld3::fstatat(v9, __source, &v21, 0) || v11)
      {
        strlcpy(__source, __dsta, 0x100uLL);
      }

      else if (!dyld3::stat("/System/Library/Caches/com.apple.dyld/enable-dylibs-to-override-cache", &v20, v13) && v20.st_size <= 1023)
      {
        strlcat(__source, ".development", 0x100uLL);
      }
    }
  }

  v14 = dyld3::openat(*a1, __source, v12);
  if (v14 == -1)
  {
    if (*__error() == 2)
    {
      result = 0;
      *(a2 + 24) = 0;
      v19 = "no shared cache file";
    }

    else
    {
      result = 0;
      v19 = "shared cache file open() failed";
    }

    *(a2 + 16) = v19;
  }

  else
  {
    *(a2 + 24) = 1;
    return dyld3::preflightCacheFile(a1, a2, a3, v14, a5, v15, v16, v17);
  }

  return result;
}

uint64_t dyld3::preflightSubCacheFile(unsigned int *a1, uint64_t a2, uint64_t a3, char *__source, const char *a5)
{
  v9 = *a1;
  strlcpy(__dst, __source, 0x100uLL);
  strlcat(__dst, a5, 0x100uLL);
  v11 = dyld3::openat(v9, __dst, v10);
  if (v11 == -1)
  {
    if (*__error() == 2)
    {
      result = 0;
      *(a2 + 24) = 0;
      v16 = "no shared cache file";
    }

    else
    {
      result = 0;
      v16 = "shared cache file open() failed";
    }

    *(a2 + 16) = v16;
  }

  else
  {
    *(a2 + 24) = 1;
    return dyld3::preflightCacheFile(a1, a2, a3, v11, 0, v12, v13, v14);
  }

  return result;
}

void dyld3::verboseSharedCacheMappings(dyld3 *this, const DyldSharedCache *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZN5dyld3L26verboseSharedCacheMappingsEPK15DyldSharedCache_block_invoke;
  v3[3] = &__block_descriptor_tmp_37_2;
  v3[4] = DyldSharedCache::slide(this);
  DyldSharedCache::forEachRange(this, v3, 0);
}

uint64_t ___ZN5dyld3L20mapSplitCachePrivateERKNS_18SharedCacheOptionsEPNS_19SharedCacheLoadInfoE_block_invoke(uint64_t result, int a2, uint64_t a3, vm_size_t size, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 4) != 0 && ((a7 & 0x40) == 0 || (*(*(result + 32) + 9) & 1) == 0))
  {
    return vm_protect(mach_task_self_, *(*(result + 40) + 8) + a3, size, 0, 19);
  }

  return result;
}

uint64_t ___ZN5dyld3L20mapSplitCachePrivateERKNS_18SharedCacheOptionsEPNS_19SharedCacheLoadInfoE_block_invoke_2(uint64_t result, int a2, uint64_t a3, vm_size_t size, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 4) != 0 && ((a7 & 0x40) == 0 || (*(*(result + 32) + 9) & 1) == 0))
  {
    return vm_protect(mach_task_self_, *(*(result + 40) + 8) + a3, size, 0, 1);
  }

  return result;
}

uint64_t dyld3::preflightCacheFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, v83);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (fstat64(v10, &v59))
  {
    v18 = "shared cache file stat() failed";
LABEL_10:
    *(v15 + 16) = v18;
LABEL_11:
    close(v11);
    return 0;
  }

  st_size = v59.st_size;
  FileIdTuple::FileIdTuple(&v63, &v59);
  *(v15 + 28) = v63;
  if (pread(v11, &v63, 0x4000uLL, 0) != 0x4000)
  {
    v18 = "shared cache file pread() failed";
    goto LABEL_10;
  }

  if (v63 != 0x2031765F646C7964 || *(&v63 + 1) != 0x6534366D726120)
  {
    v18 = "shared cache file has wrong magic";
    goto LABEL_10;
  }

  if (v64 >= 0xE0)
  {
    v23 = mach_o::Platform::value((v17 + 16));
    if (v72 == v23)
    {
      if ((v73 & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v77 && v77 == v23)
    {
      goto LABEL_13;
    }

    v18 = "shared cache file is for a different platform";
    goto LABEL_10;
  }

LABEL_13:
  v22 = v65;
  if (v65 - 9 <= 0xFFFFFFF7)
  {
    v18 = "shared cache file mappings are invalid";
    goto LABEL_10;
  }

  v24 = v64;
  v25 = &v63 + v64;
  v26 = &v25[32 * v65];
  v27 = *(v25 + 2);
  if (v27)
  {
    v28 = "shared cache text file offset is invalid";
    goto LABEL_28;
  }

  if (v68 + v67 != st_size)
  {
    v28 = "shared cache code signature size is invalid";
LABEL_28:
    *(v15 + 16) = v28;
    if (v22 >= 2)
    {
LABEL_29:
      v29 = *(v25 + 6) | 4;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v65 >= 2)
  {
    if (*(v26 - 2) != 1)
    {
      *(v15 + 16) = "shared cache linkedit permissions are invalid";
    }

    goto LABEL_29;
  }

LABEL_30:
  v29 = *(v25 + 6);
LABEL_31:
  if (v29 != 5)
  {
    *(v15 + 16) = "shared cache text permissions are invalid";
  }

  if (*(v15 + 16))
  {
    goto LABEL_11;
  }

  v30 = 1;
  while (v22 != v30)
  {
    v31 = &v25[32 * v30 - 32];
    v33 = *v31;
    v32 = *(v31 + 1);
    v34 = v32 + v33;
    v35 = &v25[32 * v30];
    if (v34 <= *v35)
    {
      v27 += v32;
      ++v30;
      if (v27 == *(v35 + 2))
      {
        continue;
      }
    }

    v18 = "shared cache mappings overlap";
    goto LABEL_10;
  }

  v62[0] = 0;
  v62[1] = v67;
  v62[2] = v68;
  if (fcntl(v11, 97, v62) == -1)
  {
    v18 = "code signature registration for shared cache failed";
    goto LABEL_10;
  }

  if (v62[0] < v67)
  {
    v18 = "code signature does not cover entire shared cache file";
    goto LABEL_10;
  }

  v36 = mmap(0, 0x4000uLL, 5, 2, v11, 0);
  if (v36 == -1)
  {
    v18 = "first page of shared cache not mmap()able";
    goto LABEL_10;
  }

  v37 = v36;
  if (_platform_memcmp(v36, &v63, 0x4000uLL))
  {
    v18 = "first page of mmap()ed shared cache not valid";
    goto LABEL_10;
  }

  munmap(v37, 0x4000uLL);
  v38 = v65;
  *(v13 + 384) = v65;
  if (v38)
  {
    v39 = 0;
    v40 = 0;
    v41 = v64;
    v42 = 48 * v38;
    v43 = v17[8];
    do
    {
      v44 = *&v66[v24];
      v45 = *&v66[v24 + 4];
      if (v41 > 0x138)
      {
        v49 = (&v63 + v39 + v76);
        v50 = v49[5];
        if (v50)
        {
          v46 = 32;
        }

        else
        {
          v46 = 96;
        }

        if ((v50 & 4) != 0)
        {
          if (v43)
          {
            v44 |= 0x200u;
          }

          else
          {
            v45 |= 2u;
          }
        }

        v47 = v49[3];
        v48 = v49[4];
        if ((v50 & 0x40) != 0)
        {
          v45 = 3;
          v44 = 3;
        }
      }

      else if (v40 == 48)
      {
        v46 = 32;
        v47 = v69;
        v48 = v70;
      }

      else
      {
        v48 = 0;
        v47 = 0;
        v46 = 32;
      }

      v51 = v13 + v40;
      *v51 = *(&v63 + v24);
      *(v51 + 16) = *(&v63 + v24 + 16);
      *(v13 + v40 + 24) = 0;
      *(v51 + 32) = 0;
      *(v51 + 40) = v44;
      *(v51 + 44) = v45;
      if (v48)
      {
        if (v22 <= 1)
        {
          *(v13 + 392) = v11;
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        *(v51 + 32) = v47 - *(v26 - 2) + *(v26 - 4);
        *(v13 + v40 + 24) = v48;
        *(v51 + 40) = v44 | v46;
        *(v51 + 44) = v45 | v46;
      }

      v40 += 48;
      v39 += 56;
      v24 += 32;
    }

    while (v42 != v40);
    *(v13 + 392) = v11;
  }

  if (__offset_4 > 0x7F)
  {
    v18 = "shared cache file subcache count exceeds limit";
    goto LABEL_10;
  }

  if (!v9 && __offset_4)
  {
    v18 = "no shared cache subcache indices";
    goto LABEL_10;
  }

  v52 = v64;
  *(v13 + 389) = v64 > 0x1C8;
  if (v52 >= 0x1C9)
  {
    if (pread(v11, __buf, 0x1C00uLL, __offseta) != 7168)
    {
      v18 = "shared cache file pread() failed, could not read subcache entries";
      goto LABEL_10;
    }

    v53 = __offset_4;
    if (__offset_4)
    {
      v54 = &v61;
      do
      {
        v55 = *(v54 + 1);
        *v9 = *v54;
        v9[1] = v55;
        v9 += 2;
        v54 += 7;
        --v53;
      }

      while (v53);
    }
  }

  *(v13 + 400) = v74;
  *(v13 + 416) = v75;
  *(v13 + 388) = v17[12];
  *(v13 + 424) = DyldSharedCache::numSubCaches(&v63) + 1;
  v56 = v82;
  v57 = v71;
  *(v13 + 432) = v81 + v74;
  *(v13 + 440) = v56;
  v58 = v57 == 2 && v80 == 0;
  *(v15 + 25) = v57 == 0 || v58;
  return 1;
}

uint64_t dyld3::openat(dyld3 *this, const char *a2, const char *a3)
{
  v4 = this;
  for (result = openat(this, a2, 0, 0); result == -1; result = openat(v4, a2, 0, 0))
  {
    if (*__error() != 35 && *__error() != 4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld3L20mapSplitCachePrivateERKNS2_18SharedCacheOptionsEPNS2_19SharedCacheLoadInfoEE3__0EEvT__block_invoke(uint64_t a1)
{
  DyldSharedCache::fixupDataPages(**(a1 + 32), *(**(a1 + 40) + 8), &v4);
  if (v4)
  {
    *(**(a1 + 40) + 16) = "error fixing up shared cache";
    v2 = mach_o::Error::message(&v4);
    dyld4::console("error: cannot fix up shared cache due to %s\n", v3, v2);
    **(a1 + 48) = 0;
  }

  mach_o::Error::~Error(&v4);
}

uint64_t dyld4::RemoteNotificationResponder::sendMessage(uint64_t this, mach_msg_id_t a2, mach_msg_size_t a3, mach_msg_header_t *a4)
{
  if (*(this + 40))
  {
    v7 = this;
    name = 0;
    *&options.flags = xmmword_8CA00;
    options.reserved[1] = 0;
    this = mach_port_construct(mach_task_self_, &options, &name, &name);
    if (!this)
    {
      v8 = *(v7 + 40);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v10 = *(v7 + 32);
          if (*(v10 + 4 * i))
          {
            a4->msgh_bits = 5395;
            a4->msgh_id = a2;
            v11 = name;
            a4->msgh_local_port = name;
            v12 = *(v10 + 4 * i);
            a4->msgh_voucher_port = 0;
            a4->msgh_size = a3;
            a4->msgh_remote_port = v12;
            if (mach_msg_overwrite(a4, 3, a3, 0x5Cu, v11, 0, 0, &rcv_msg, 0))
            {
              mach_msg_destroy(a4);
              *(*(v7 + 32) + 4 * i) = 0;
            }

            v8 = *(v7 + 40);
          }
        }
      }

      return mach_port_destruct(mach_task_self_, name, 0, &name);
    }
  }

  return this;
}

uint64_t dyld4::RemoteNotificationResponder::notifyMonitorOfImageListChanges(dyld4::RemoteNotificationResponder *this, _BOOL8 a2, mach_msg_size_t a3, const mach_header **a4, const char **a5, unint64_t a6)
{
  while (1)
  {
    v6 = a6;
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = this;
    v12 = 32 * a3;
    v13 = 0;
    if (a3)
    {
      v14 = a3;
      v15 = a5;
      do
      {
        v16 = *v15++;
        v13 += _platform_strlen(v16) + 1;
        --v14;
      }

      while (v14);
    }

    v17 = (v12 + 48 + v13 + 127) & 0xFFFFFF80;
    if ((v17 | 0x44) <= 0x8000)
    {
      break;
    }

    dyld4::RemoteNotificationResponder::notifyMonitorOfImageListChanges(v11, v10, v9 >> 1, v8, v7, v6);
    a3 = v9 - (v9 >> 1);
    a4 = &v8[v9 >> 1];
    a5 = &v7[v9 >> 1];
    this = v11;
    a2 = v10;
    a6 = v6;
  }

  v31[1] = v31;
  v32 = v11;
  __chkstk_darwin();
  v20 = (v31 - ((v19 + 15) & 0x1FFFFFFF0));
  v20[1].msgh_bits = 1;
  v20[1].msgh_size = v9;
  v20[1].msgh_remote_port = 48;
  v20[1].msgh_local_port = v18;
  *&v20[1].msgh_voucher_port = v6;
  if (v9)
  {
    v21 = v20 + (v18 & 0xFFFFFFF0);
    v22 = &v20[2];
    v23 = v9;
    v24 = v20 + (v18 & 0xFFFFFFF0);
    do
    {
      v25 = *v7++;
      v26 = strcpy(v24, v25);
      v27 = _platform_strlen(v26);
      bzero(v22, 0x10uLL);
      mach_o::Header::getUuid(*v8, v22);
      v28 = *v8++;
      *(v22 + 2) = v28;
      *(v22 + 6) = v24 - v21;
      *(v22 + 7) = v27;
      v24 += (v27 + 1);
      v22 += 32;
      --v23;
    }

    while (v23);
  }

  if (v10)
  {
    v29 = 0x2000;
  }

  else
  {
    v29 = 4096;
  }

  return dyld4::RemoteNotificationResponder::sendMessage(v32, v29, v17, v20);
}

uint64_t AAREncoder::encodeLink(uint64_t a1, const char **a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "AA01", "");
  v5 = _platform_strlen(*a2);
  v6 = _platform_strlen(a2[1]);
  ByteStream::push_back<unsigned short>(a3, v5 + v6 + 23);
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "TYP1L", "");
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "PATP", "");
  v7 = _platform_strlen(*a2);
  ByteStream::push_back<unsigned short>(a3, v7);
  v8 = *a2;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = _platform_strlen(*a2);
  lsl::Vector<std::byte>::insert<std::byte*>(a3, v9 + v10, v8, &v8[v11]);
  lsl::Vector<std::byte>::insert<std::byte*>(a3, *(a3 + 8) + *(a3 + 16), "LNKP", "");
  v12 = _platform_strlen(a2[1]);
  ByteStream::push_back<unsigned short>(a3, v12);
  v13 = a2[1];
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = &v13[_platform_strlen(v13)];

  return lsl::Vector<std::byte>::insert<std::byte*>(a3, v14 + v15, v13, v16);
}

uint64_t dyld4::APIs::dyld_get_program_sdk_watch_os_version(dyld4::APIs *this, uint64_t a2, const mach_o::Header *a3)
{
  dyld4::APIs::getImagePlatformAndVersions(this, *(*(this + 1) + 24), a3, v8);
  mach_o::Platform::basePlatform(v8, &v6);
  if (v6 != &mach_o::PlatformInfo_watchOS::singleton || v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[5];
  }

  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_program_sdk_watch_os_version() => 0x%08X\n", v4);
  }

  return v4;
}

uint64_t dyld4::APIs::dyld_get_program_min_watch_os_version(dyld4::APIs *this, uint64_t a2, const mach_o::Header *a3)
{
  dyld4::APIs::getImagePlatformAndVersions(this, *(*(this + 1) + 24), a3, v8);
  mach_o::Platform::basePlatform(v8, &v6);
  if (v6 != &mach_o::PlatformInfo_watchOS::singleton || v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = v8[4];
  }

  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_program_min_watch_os_version() => 0x%08X\n", v4);
  }

  return v4;
}

uint64_t dyld4::APIs::dyld_get_sdk_version(dyld4::APIs *this, const mach_header *a2, const mach_o::Header *a3)
{
  SdkVersion = dyld4::APIs::getSdkVersion(this, a2, a3);
  v6 = SdkVersion;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_sdk_version(%p) => 0x%08X\n", a2, SdkVersion);
  }

  return v6;
}

uint64_t dyld4::APIs::dyld_get_min_os_version(dyld4::APIs *this, const mach_header *a2, const mach_o::Header *a3)
{
  dyld4::APIs::getImagePlatformAndVersions(this, a2, a3, &v11);
  v5 = *(this + 1);
  if (v11 == *(v5 + 112) && v12 == *(v5 + 120))
  {
    v6 = v13;
    mach_o::Platform::basePlatform(&v11, &v9);
    if (v9 != &mach_o::PlatformInfo_bridgeOS::singleton || v10)
    {
      if (v9 == &mach_o::PlatformInfo_watchOS::singleton)
      {
        if (v6 < 0x1A0000 && v10 == 0)
        {
          v6 = (v6 + 458752);
        }

        else
        {
          v6 = v6;
        }
      }
    }

    else
    {
      v6 = (v6 + 589824);
    }

    v5 = *(this + 1);
  }

  else
  {
    v6 = 0;
  }

  if (*(v5 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_min_os_version(%p) => 0x%08X\n", a2, v6);
  }

  return v6;
}

uint64_t dyld4::APIs::dyld_is_simulator_platform(dyld4::APIs *this, unsigned int a2)
{
  mach_o::Platform::Platform(v7, a2);
  isSimulator = mach_o::Platform::isSimulator(v7);
  v5 = isSimulator;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_is_simulator_platform(%d) => %d\n", a2, isSimulator);
  }

  return v5;
}

BOOL dyld4::APIs::dyld_minos_at_least(dyld4::APIs *a1, const mach_o::Header *a2, unint64_t a3)
{
  v6 = *(a1 + 1);
  v16 = *(v6 + 112);
  v17 = *(v6 + 120);
  v7 = dyld4::APIs::mapFromVersionSet(a1, a3, &v16);
  dyld4::APIs::getImagePlatformAndVersions(a1, a2, v8, &v16);
  mach_o::Platform::basePlatform(&v16, &v14);
  mach_o::Platform::Platform(v11, v7);
  mach_o::Platform::basePlatform(v11, &v12);
  v9 = v14 == v12 && v15 == v13 && (mach_o::Platform::basePlatform(&v16, &v14), !mach_o::Platform::empty(&v14)) && v18 >= HIDWORD(v7);
  if (*(*(a1 + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(a1, "dyld_minos_at_least(%p, <%d,0x%08X>) => %d\n", a2, a3, HIDWORD(a3), v9);
  }

  return v9;
}

void *___ZN5dyld44APIs6dladdrEPKvP7dl_info_block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = result[6];
  v4 = result[5] + *(a2 + 16);
  if (v4 <= v3 && v3 < *(a2 + 24) + v4)
  {
    *(*(result[4] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void ___ZN5dyld44APIs16dlopen_preflightEPKc_block_invoke(void *a1, dyld3 *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[6];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3802000000;
  v18 = __Block_byref_object_copy__71;
  v19 = __Block_byref_object_dispose__72;
  Diagnostics::Diagnostics(v20);
  v8 = *(v7 + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZN5dyld44APIs16dlopen_preflightEPKc_block_invoke_2;
  v14[3] = &unk_A2360;
  v9 = a1[7];
  v14[6] = v7;
  v14[7] = v9;
  v10 = a1[4];
  v14[4] = &v15;
  v14[5] = v10;
  v14[8] = a4;
  dyld4::SyscallDelegate::withReadOnlyMappedFile(v8, (v16 + 5), a2, 1, v14);
  if ((*(*(a1[4] + 8) + 24) & 1) == 0 && Diagnostics::hasError((v16 + 5)))
  {
    v11 = Diagnostics::noError((*(a1[5] + 8) + 40));
    v12 = *(a1[5] + 8);
    v13 = Diagnostics::errorMessage((v16 + 5));
    if (v11)
    {
      Diagnostics::error((v12 + 40), "tried: '%s' (%s)", a2, v13);
    }

    else
    {
      Diagnostics::appendError((v12 + 40), ", '%s' (%s)", a2, v13);
    }
  }

  _Block_object_dispose(&v15, 8);
  Diagnostics::~Diagnostics(v20);
}

mach_header *___ZN5dyld44APIs16dlopen_preflightEPKc_block_invoke_2(uint64_t a1, mach_header *a2, unint64_t a3, int a4)
{
  v13 = 0;
  v12 = 0;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 48) + 8);
  v10 = *(v7 + 112);
  v11 = *(v7 + 120);
  v9 = *(v7 + 289);
  result = dyld3::MachOFile::compatibleSlice((v5 + 40), &v13, &v12, a2, a3, v6, &v10, a4, *(v7 + 208));
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    **(a1 + 64) = 1;
  }

  return result;
}

__n128 __Block_byref_object_copy__85(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

BOOL dyld4::APIs::_dyld_shared_cache_optimized(dyld4::APIs *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 368);
  if (v2)
  {
    v3 = *(v2 + 104) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_shared_cache_optimized() => %d\n", v3);
  }

  return v3;
}

uint64_t dyld4::APIs::_dyld_register_for_image_loads(uint64_t **this, const void *a2)
{
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_register_for_image_loads(%p)\n", a2);
  }

  v4 = this[14];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 0x40000000;
  v33[2] = ___ZN5dyld44APIs30_dyld_register_for_image_loadsENS_16ReadOnlyCallbackIPFvPK11mach_headerPKcbEEE_block_invoke;
  v33[3] = &__block_descriptor_tmp_108;
  v33[4] = this;
  v33[5] = a2;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v33);
  ImageContaining = dyld4::APIs::findImageContaining(this, a2);
  v6 = this[14];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v28 = ___ZN5dyld44APIs30_dyld_register_for_image_loadsENS_16ReadOnlyCallbackIPFvPK11mach_headerPKcbEEE_block_invoke_2;
  v29 = &__block_descriptor_tmp_109;
  v30 = this;
  v31 = ImageContaining;
  v32 = a2;
  v34 = v27;
  v7 = lsl::MemoryManager::memoryManager(ImageContaining);
  result = *(v7 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result);
    if (result)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v15 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v15 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v16 = MEMORY[0xFFFFFC0D0];
            if (v16 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v17 = *(v7 + 6);
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 0x40000000;
              v35[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks22withNotifiersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke;
              v35[3] = &__block_descriptor_tmp_216;
              v35[4] = v6;
              v35[5] = &v34;
              result = lsl::ProtectedStack::withNestedProtectedStack(v17, v35, v9, v10, v11, v12, v13, v14, v26);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v18 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v18 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v19 = MEMORY[0xFFFFFC0D8];
                    if (v19 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_40:
      __break(1u);
      return result;
    }
  }

  if (*(v7 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_40;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      if (*v6)
      {
        (*(**v6 + 96))(*v6, v6 + 24, 0);
        v28(v27);
        return (*(**v6 + 104))(*v6, v6 + 24);
      }

      else
      {
        return v28(v27);
      }
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_40;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      v20 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v20 & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      result = MEMORY[0xFFFFFC0D0];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v21 = MEMORY[0xFFFFFC0D0];
      if (v21 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_40;
      }

      if (*v6)
      {
        (*(**v6 + 96))(*v6, v6 + 24, 0);
        v28(v27);
        result = (*(**v6 + 104))(*v6, v6 + 24);
      }

      else
      {
        result = v28(v27);
      }

      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_40;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      v24 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v24 & 0xFE) != 2)
      {
        goto LABEL_40;
      }

      result = MEMORY[0xFFFFFC0D8];
      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v25 = MEMORY[0xFFFFFC0D8];
      if (v25 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v7, v35);
    v22 = *(v7 + 3);
    if (!v22)
    {
      lsl::MemoryManager::writeProtect(v7, 0);
      v22 = *(v7 + 3);
    }

    *(v7 + 3) = v22 + 1;
    lsl::Lock::unlock(v35[0]);
    if (*v6)
    {
      (*(**v6 + 96))(*v6, v6 + 24, 0);
      v28(v27);
      (*(**v6 + 104))(*v6, v6 + 24);
    }

    else
    {
      v28(v27);
    }

    lsl::MemoryManager::lockGuard(v7, v35);
    v23 = *(v7 + 3) - 1;
    *(v7 + 3) = v23;
    if (!v23)
    {
      lsl::MemoryManager::writeProtect(v7, 1);
    }

    return lsl::Lock::unlock(v35[0]);
  }

  return result;
}

uint64_t ___ZN5dyld44APIs30_dyld_register_for_image_loadsENS_16ReadOnlyCallbackIPFvPK11mach_headerPKcbEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 6);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 5);
    v5 = 8 * v2;
    v6 = v4;
    do
    {
      v7 = *v6;
      Address = dyld4::Loader::loadAddress(*v6, v1);
      v11 = Address;
      if (*(*(v1 + 1) + 325) == 1)
      {
        dyld4::RuntimeState::log(v1, "add notifier %p called with mh=%p\n", *(v3 + 40), Address);
      }

      v10 = dyld4::Loader::path(v7, v1);
      v9 = (*(v7 + 2) & 0x20) == 0;
      result = dyld4::ReadOnlyCallback<void (*)(mach_header const*,char const*,BOOL)>::operator()<dyld3::MachOLoaded const*&,char const*,BOOL>((v3 + 40), &v11, &v10, &v9);
      ++v6;
      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t dyld4::ReadOnlyCallback<void (*)(mach_header const*,char const*,BOOL)>::operator()<dyld3::MachOLoaded const*&,char const*,BOOL>(lsl::MemoryManager *a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  result = v15[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v32[0]);
    if (result)
    {
      v23 = v15[6];
      v32[1] = 0x40000000;
      v32[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerPKcbEEclIJRPKN5dyld311MachOLoadedES8_bEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke;
      v32[3] = &__block_descriptor_tmp_237;
      v32[4] = a1;
      v32[5] = a2;
      v32[6] = a3;
      v32[7] = a4;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v32, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
    }
  }

  if (*(v15 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v28 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v28 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v29 = MEMORY[0xFFFFFC0D8];
          if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v30 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v30 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v31 = MEMORY[0xFFFFFC0D0];
                  if (v31 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v24 = *a1;
  v25 = *a2;
  v26 = *a3;
  v27 = *a4;

  return v24(v25, v26, v27);
}

uint64_t dyld4::findCacheInDirAndMap(dyld4 *this, dyld4::RuntimeState *a2, char *a3, const char *a4, unint64_t *a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = *(this + 1);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN5dyld4L20findCacheInDirAndMapERNS_12RuntimeStateEPKhPKcRm_block_invoke;
  v8[3] = &unk_A2A68;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a4;
  dyld4::SyscallDelegate::forEachInDirectory(v5, a3, 0, v8);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t dyld4::APIs::dyld_shared_cache_iterate_text(dyld4::RuntimeState *this, uint64_t a2, uint64_t a3)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_shared_cache_iterate_text()\n");
  }

  v7 = 0;
  return (*(*this + 496))(this, a2, &v7, a3);
}

uint64_t (***dyld4::APIs::_dyld_fork_child(dyld4::APIs *this))(void)
{
  mach_task_self_ = task_self_trap();
  dyld4::ExternallyViewableState::fork_child(*(this + 77));
  v2 = *(this + 14);

  return dyld4::RuntimeLocks::resetLockInForkChild(v2);
}

uint64_t dyld4::APIs::_dyld_visit_objc_classes(dyld4::RuntimeState *this, uint64_t a2)
{
  v4 = *(this + 1);
  if (*(v4 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_visit_objc_classes()\n");
    v4 = *(this + 1);
  }

  result = *(v4 + 440);
  if (result)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZN5dyld44APIs24_dyld_visit_objc_classesENS_16ReadOnlyCallbackIU13block_pointerFvPKvEEE_block_invoke;
    v6[3] = &__block_descriptor_tmp_142;
    v6[4] = this;
    v6[5] = a2;
    return objc::ObjectHashTable::forEachObject(result, v6);
  }

  return result;
}

uint64_t ___ZN5dyld44APIs24_dyld_visit_objc_classesENS_16ReadOnlyCallbackIU13block_pointerFvPKvEEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4)
  {
    v5 = result;
    v6 = *a4;
    v7 = *(result + 32);
    v8 = 16 * v4;
    do
    {
      v9 = *v6;
      v6 += 2;
      v10 = v9 + *(*(v7 + 8) + 368);
      result = dyld4::ReadOnlyCallback<void({block_pointer})(void const*)>::operator()<void const*>((v5 + 40), &v10);
      v8 -= 16;
    }

    while (v8);
  }

  return result;
}

uint64_t dyld4::ReadOnlyCallback<void({block_pointer})(void const*)>::operator()<void const*>(lsl::MemoryManager *a1, uint64_t *a2)
{
  v11 = lsl::MemoryManager::memoryManager(a1);
  v12 = *(v11 + 6);
  if (v12 && lsl::ProtectedStack::onStackInCurrentFrame(v12, v4, v5, v6, v7, v8, v9, v10, v28[0]))
  {
    v19 = *(v11 + 6);
    v28[1] = 0x40000000;
    v28[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPKvEEclIJS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESG__block_invoke;
    v28[3] = &__block_descriptor_tmp_243;
    v28[4] = a1;
    v28[5] = a2;
    return lsl::ProtectedStack::withNestedRegularStack(v19, v28, v13, v14, v15, v16, v17, v18, _NSConcreteStackBlock);
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    JUMPOUT(0x66980);
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v23 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v23 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v24 = MEMORY[0xFFFFFC0D8];
          if (v24 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v25 = *a2;
            (*(*a1 + 16))();
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v26 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v26 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v27 = MEMORY[0xFFFFFC0D0];
                  if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v21 = *a2;
  v22 = *(*a1 + 16);

  return v22();
}

uint64_t dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::RuntimeState *this, const void *a2)
{
  v27 = a2;
  v3 = *(this + 1);
  if ((*(v3 + 313) & 1) == 0)
  {
    if (*(v3 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_pseudodylib_register_callbacks() => nullptr: blocked by security policy");
    }

    return 0;
  }

  v25[2] = this;
  v26 = 0;
  v4 = *(this + 14);
  v25[0] = &v27;
  v25[1] = &v26;
  v5 = lsl::MemoryManager::memoryManager(this);
  result = *(v5 + 6);
  if (!result || (result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result), !result))
  {
    if (*(v5 + 33) != 1)
    {
      lsl::MemoryManager::lockGuard(v5, v28);
      v20 = *(v5 + 3);
      if (!v20)
      {
        lsl::MemoryManager::writeProtect(v5, 0);
        v20 = *(v5 + 3);
      }

      *(v5 + 3) = v20 + 1;
      lsl::Lock::unlock(v28[0]);
      if (*v4)
      {
        (*(**v4 + 96))(*v4, v4 + 16, 0);
        dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v25);
        (*(**v4 + 104))(*v4, v4 + 16);
      }

      else
      {
        dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v25);
      }

      lsl::MemoryManager::lockGuard(v5, v28);
      v21 = *(v5 + 3) - 1;
      *(v5 + 3) = v21;
      if (!v21)
      {
        lsl::MemoryManager::writeProtect(v5, 1);
      }

      lsl::Lock::unlock(v28[0]);
      goto LABEL_41;
    }

    if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        if (*v4)
        {
          (*(**v4 + 96))(*v4, v4 + 16, 0);
          dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v25);
          (*(**v4 + 104))(*v4, v4 + 16);
        }

        else
        {
          dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v25);
        }

        goto LABEL_41;
      }

      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v18 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v18 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v19 = MEMORY[0xFFFFFC0D0];
            if (v19 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              if (*v4)
              {
                (*(**v4 + 96))(*v4, v4 + 16, 0);
                dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v25);
                result = (*(**v4 + 104))(*v4, v4 + 16);
              }

              else
              {
                result = dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v25);
              }

              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v22 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v22 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v23 = MEMORY[0xFFFFFC0D8];
                    if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_41;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_46:
    __break(1u);
    return result;
  }

  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_46;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_46;
  }

  v13 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v13 & 0xFE) != 2)
  {
    goto LABEL_46;
  }

  result = MEMORY[0xFFFFFC0D0];
  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
  __isb(0xFu);
  v14 = MEMORY[0xFFFFFC0D0];
  if (v14 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
  {
    goto LABEL_46;
  }

  v15 = *(v5 + 6);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 0x40000000;
  v28[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs36_dyld_pseudodylib_register_callbacksEPKNS2_28PseudoDylibRegisterCallbacksEE3__0EEvT_EUlvE_EEvSA__block_invoke;
  v28[3] = &__block_descriptor_tmp_249;
  v28[4] = v4;
  v28[5] = v25;
  result = lsl::ProtectedStack::withNestedProtectedStack(v15, v28, v7, v8, v9, v10, v11, v12, v24);
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_46;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_46;
  }

  v16 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v16 & 0xFE) != 2)
  {
    goto LABEL_46;
  }

  result = MEMORY[0xFFFFFC0D8];
  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v17 = MEMORY[0xFFFFFC0D8];
  if (v17 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
  {
    goto LABEL_46;
  }

LABEL_41:
  result = v26;
  if (v26)
  {
    return result;
  }

  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_pseudodylib_register_callbacks(%p): callbacks struct version not recognized", v27);
    return v26;
  }

  return 0;
}

void dyld4::APIs::_dyld_pseudodylib_deregister_callbacks(dyld4::RuntimeState *this, void *a2)
{
  v25 = a2;
  v3 = *(this + 1);
  if (*(v3 + 313))
  {
    if (!a2)
    {
      return;
    }

    v4 = *(this + 14);
    v26[0] = this;
    v26[1] = &v25;
    v5 = lsl::MemoryManager::memoryManager(this);
    v6 = *(v5 + 6);
    if (v6 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v6))
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v13 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v13 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v14 = MEMORY[0xFFFFFC0D0];
            if (v14 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v15 = *(v5 + 6);
              v27[0] = _NSConcreteStackBlock;
              v27[1] = 0x40000000;
              v27[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs38_dyld_pseudodylib_deregister_callbacksEP34_dyld_pseudodylib_callbacks_opaqueE3__0EEvT_EUlvE_EEvS9__block_invoke;
              v27[3] = &__block_descriptor_tmp_250;
              v27[4] = v4;
              v27[5] = v26;
              lsl::ProtectedStack::withNestedProtectedStack(v15, v27, v7, v8, v9, v10, v11, v12, v24);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v16 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v16 & 0xFE) == 2)
                  {
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v17 = MEMORY[0xFFFFFC0D8];
                    if (v17 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_45:
      __break(1u);
      return;
    }

    if (*(v5 + 33) == 1)
    {
      if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_45;
      }

      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        if (*v4)
        {
          (*(**v4 + 96))(*v4, v4 + 16, 0);
          lsl::Allocator::free(*(this + 2), v25);
          (*(**v4 + 104))(*v4, v4 + 16);
        }

        else
        {
          lsl::Allocator::free(*(this + 2), v25);
        }
      }

      else
      {
        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_45;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_45;
        }

        v18 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v18 & 0xFE) != 2)
        {
          goto LABEL_45;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
        __isb(0xFu);
        v19 = MEMORY[0xFFFFFC0D0];
        if (v19 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_45;
        }

        if (*v4)
        {
          (*(**v4 + 96))(*v4, v4 + 16, 0);
          lsl::Allocator::free(*(this + 2), v25);
          (*(**v4 + 104))(*v4, v4 + 16);
        }

        else
        {
          lsl::Allocator::free(*(this + 2), v25);
        }

        if (!MEMORY[0xFFFFFC10C])
        {
          goto LABEL_45;
        }

        if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
        {
          goto LABEL_45;
        }

        v22 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v22 & 0xFE) != 2)
        {
          goto LABEL_45;
        }

        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v23 = MEMORY[0xFFFFFC0D8];
        if (v23 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      lsl::MemoryManager::lockGuard(v5, v27);
      v20 = *(v5 + 3);
      if (!v20)
      {
        lsl::MemoryManager::writeProtect(v5, 0);
        v20 = *(v5 + 3);
      }

      *(v5 + 3) = v20 + 1;
      lsl::Lock::unlock(v27[0]);
      if (*v4)
      {
        (*(**v4 + 96))(*v4, v4 + 16, 0);
        lsl::Allocator::free(*(this + 2), v25);
        (*(**v4 + 104))(*v4, v4 + 16);
      }

      else
      {
        lsl::Allocator::free(*(this + 2), v25);
      }

      lsl::MemoryManager::lockGuard(v5, v27);
      v21 = *(v5 + 3) - 1;
      *(v5 + 3) = v21;
      if (!v21)
      {
        lsl::MemoryManager::writeProtect(v5, 1);
      }

      lsl::Lock::unlock(v27[0]);
    }
  }

  else if (*(v3 + 324) == 1)
  {

    dyld4::RuntimeState::log(this, "_dyld_pseudodylib_deregister_callbacks(): blocked by security policy");
  }
}

uint64_t dyld4::APIs::_dyld_pseudodylib_register(dyld4::RuntimeState *this, mach_o::Header *a2, uint64_t a3, const void *a4, const void *a5)
{
  v83 = a3;
  v84 = a2;
  v81 = a5;
  v82 = a4;
  v6 = *(this + 1);
  if ((*(v6 + 313) & 1) == 0)
  {
    if (*(v6 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_pseudodylib_register() => nullptr: blocked by security policy");
    }

    return 0;
  }

  v11 = mach_o::Header::installName(a2);
  __s2 = v11;
  if (!v11)
  {
    if (*(*(this + 1) + 324))
    {
      dyld4::RuntimeState::log(this, "_dyld_register_pseudodylib(%p, %lx, %p, %p): registered range does not contain an install name");
    }

    return 0;
  }

  if (*(*(this + 1) + 324))
  {
    dyld4::RuntimeState::log(this, "_dyld_register_pseudodylib(%p, %lx, %p, %p): [%p, %p) %s\n", a2, a3, a4, a5, a2, a2 + a3, v11);
  }

  v78 = 0;
  v79 = 0;
  v12 = *(this + 14);
  v77[0] = this;
  v77[1] = &__s2;
  v77[2] = &v78;
  v77[3] = &v84;
  v77[4] = &v83;
  v77[5] = &v82;
  v77[6] = &v81;
  v77[7] = &v79;
  v13 = lsl::MemoryManager::memoryManager(v11);
  result = *(v13 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInAnyFrameInThisThread(result);
    if (result)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v21 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v21 & 0xFE) == 2)
          {
            result = MEMORY[0xFFFFFC0D0];
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v22 = MEMORY[0xFFFFFC0D0];
            if (v22 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v23 = *(v13 + 6);
              v85[0] = _NSConcreteStackBlock;
              v85[1] = 0x40000000;
              v85[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs26_dyld_pseudodylib_registerEPvmP34_dyld_pseudodylib_callbacks_opaqueS6_E3__0EEvT_EUlvE_EEvSA__block_invoke;
              v85[3] = &__block_descriptor_tmp_251;
              v85[4] = v12;
              v85[5] = v77;
              result = lsl::ProtectedStack::withNestedProtectedStack(v23, v85, v15, v16, v17, v18, v19, v20, v76);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v24 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v24 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v25 = MEMORY[0xFFFFFC0D8];
                    if (v25 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_83;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_92:
      __break(1u);
      return result;
    }
  }

  if (*(v13 + 33) != 1)
  {
    lsl::MemoryManager::lockGuard(v13, &v86);
    v35 = *(v13 + 3);
    if (!v35)
    {
      lsl::MemoryManager::writeProtect(v13, 0);
      v35 = *(v13 + 3);
    }

    *(v13 + 3) = v35 + 1;
    lsl::Lock::unlock(v86);
    if (*v12)
    {
      (*(**v12 + 96))(*v12, v12 + 2, 0);
      v36 = *(this + 80);
      if (v36)
      {
        v37 = *(this + 79);
        v38 = __s2;
        v39 = 8 * v36;
        v40 = v37;
        while (1)
        {
          v41 = *v40;
          if (!_platform_strcmp(*(*v40 + 32), v38))
          {
            break;
          }

          ++v40;
          ++v37;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_42;
          }
        }

        v78 = v41;
      }

      else
      {
LABEL_42:
        if (!v78)
        {
          v42 = dyld4::PseudoDylib::create(*(this + 2), __s2, v84, v83, v82, v81);
          v86 = v42;
          lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(this + 624, *(this + 80) + 1);
          v43 = *(this + 79);
          v44 = *(this + 80);
          *(this + 80) = v44 + 1;
          *(v43 + 8 * v44) = v86;
          v79 = v42;
        }
      }

      (*(**v12 + 104))(*v12, v12 + 2);
    }

    else
    {
      v52 = *(this + 80);
      if (v52)
      {
        v53 = *(this + 79);
        v54 = __s2;
        v55 = 8 * v52;
        v56 = v53;
        while (1)
        {
          v57 = *v56;
          if (!_platform_strcmp(*(*v56 + 32), v54))
          {
            break;
          }

          ++v56;
          ++v53;
          v55 -= 8;
          if (!v55)
          {
            goto LABEL_55;
          }
        }

        v78 = v57;
      }

      else
      {
LABEL_55:
        if (!v78)
        {
          v58 = dyld4::PseudoDylib::create(*(this + 2), __s2, v84, v83, v82, v81);
          v86 = v58;
          lsl::Vector<AuthenticatedValue<dyld4::PseudoDylib *>>::push_back(this + 624, &v86);
          v79 = v58;
        }
      }
    }

    lsl::MemoryManager::lockGuard(v13, &v86);
    v59 = *(v13 + 3) - 1;
    *(v13 + 3) = v59;
    if (!v59)
    {
      lsl::MemoryManager::writeProtect(v13, 1);
    }

    lsl::Lock::unlock(v86);
    goto LABEL_83;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_92;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (*v12)
    {
      (*(**v12 + 96))(*v12, v12 + 2, 0);
      v45 = *(this + 80);
      if (v45)
      {
        v46 = *(this + 79);
        v47 = __s2;
        v48 = 8 * v45;
        v49 = v46;
        while (1)
        {
          v50 = *v49;
          if (!_platform_strcmp(*(*v49 + 32), v47))
          {
            break;
          }

          ++v49;
          ++v46;
          v48 -= 8;
          if (!v48)
          {
            goto LABEL_49;
          }
        }

        v78 = v50;
      }

      else
      {
LABEL_49:
        if (!v78)
        {
          v51 = dyld4::PseudoDylib::create(*(this + 2), __s2, v84, v83, v82, v81);
          v86 = v51;
          lsl::Vector<AuthenticatedValue<dyld4::PseudoDylib *>>::push_back(this + 624, &v86);
          v79 = v51;
        }
      }

      (*(**v12 + 104))(*v12, v12 + 2);
    }

    else
    {
      v60 = *(this + 80);
      if (v60)
      {
        v61 = *(this + 79);
        v62 = __s2;
        v63 = 8 * v60;
        v64 = v61;
        while (1)
        {
          v65 = *v64;
          if (!_platform_strcmp(*(*v64 + 32), v62))
          {
            break;
          }

          ++v64;
          ++v61;
          v63 -= 8;
          if (!v63)
          {
            goto LABEL_66;
          }
        }

        v78 = v65;
        goto LABEL_84;
      }

LABEL_66:
      v65 = v78;
      if (v78)
      {
LABEL_84:
        if (*(*(this + 1) + 324) == 1)
        {
          dyld4::RuntimeState::log(this, "_dyld_register_pseudodylib(%s, %p, %lx): identifier conflicts with existing registration covering [%p, %p)", __s2, v84, v83, *v65, (*v65 + *(v65 + 8)));
        }

        if (v79)
        {
          dyld4::APIs::_dyld_pseudodylib_register();
        }

        return 0;
      }

      v66 = dyld4::PseudoDylib::create(*(this + 2), __s2, v84, v83, v82, v81);
      v86 = v66;
      lsl::Vector<AuthenticatedValue<dyld4::PseudoDylib *>>::push_back(this + 624, &v86);
      v79 = v66;
    }

    goto LABEL_83;
  }

  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_92;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_92;
  }

  v26 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v26 & 0xFE) != 2)
  {
    goto LABEL_92;
  }

  result = MEMORY[0xFFFFFC0D0];
  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
  __isb(0xFu);
  v27 = MEMORY[0xFFFFFC0D0];
  if (v27 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
  {
    goto LABEL_92;
  }

  result = *v12;
  if (*v12)
  {
    (*(*result + 96))(result, v12 + 2, 0);
    v28 = *(this + 80);
    if (v28)
    {
      v29 = *(this + 79);
      v30 = __s2;
      v31 = 8 * v28;
      v32 = v29;
      while (1)
      {
        v33 = *v32;
        if (!_platform_strcmp(*(*v32 + 32), v30))
        {
          break;
        }

        ++v32;
        ++v29;
        v31 -= 8;
        if (!v31)
        {
          goto LABEL_31;
        }
      }

      v78 = v33;
    }

    else
    {
LABEL_31:
      if (!v78)
      {
        v34 = dyld4::PseudoDylib::create(*(this + 2), __s2, v84, v83, v82, v81);
        v86 = v34;
        lsl::Vector<AuthenticatedValue<dyld4::PseudoDylib *>>::push_back(this + 624, &v86);
        v79 = v34;
      }
    }

    result = (*(**v12 + 104))(*v12, v12 + 2);
  }

  else
  {
    v67 = *(this + 80);
    if (v67)
    {
      v68 = *(this + 79);
      v69 = __s2;
      v70 = 8 * v67;
      v71 = v68;
      while (1)
      {
        v72 = *v71;
        result = _platform_strcmp(*(*v71 + 32), v69);
        if (!result)
        {
          break;
        }

        ++v71;
        ++v68;
        v70 -= 8;
        if (!v70)
        {
          goto LABEL_72;
        }
      }

      v78 = v72;
    }

    else
    {
LABEL_72:
      if (!v78)
      {
        v73 = dyld4::PseudoDylib::create(*(this + 2), __s2, v84, v83, v82, v81);
        v86 = v73;
        result = lsl::Vector<AuthenticatedValue<dyld4::PseudoDylib *>>::push_back(this + 624, &v86);
        v79 = v73;
      }
    }
  }

  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_92;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_92;
  }

  v74 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v74 & 0xFE) != 2)
  {
    goto LABEL_92;
  }

  result = MEMORY[0xFFFFFC0D8];
  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v75 = MEMORY[0xFFFFFC0D8];
  if (v75 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
  {
    goto LABEL_92;
  }

LABEL_83:
  v65 = v78;
  if (v78)
  {
    goto LABEL_84;
  }

  return v79;
}

void dyld4::APIs::_dyld_pseudodylib_deregister(dyld4::RuntimeState *this, uint64_t a2)
{
  v26 = a2;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_deregister_pseudodylib(<handle for %s>)\n", *(a2 + 32));
  }

  v25 = 0;
  v3 = *(this + 14);
  v24[0] = this;
  v24[1] = &v26;
  v24[2] = &v25;
  v4 = lsl::MemoryManager::memoryManager(this);
  *&v29 = v3;
  *(&v29 + 1) = v24;
  v5 = *(v4 + 6);
  if (v5 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v5))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v12 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v12 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v13 = MEMORY[0xFFFFFC0D0];
          if (v13 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v14 = *(v4 + 6);
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 0x40000000;
            v27[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs28_dyld_pseudodylib_deregisterEP24_dyld_pseudodylib_opaqueE3__0EEvT_EUlvE_EEvS9__block_invoke;
            v27[3] = &__block_descriptor_tmp_252;
            v28 = v29;
            lsl::ProtectedStack::withNestedProtectedStack(v14, v27, v6, v7, v8, v9, v10, v11, v23);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v15 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v15 & 0xFE) == 2)
                {
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v16 = MEMORY[0xFFFFFC0D8];
                  if (v16 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_37:
    __break(1u);
    JUMPOUT(0x680E8);
  }

  if (*(v4 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_37;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      dyld4::RuntimeLocks::withLoadersWriteLock<dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0>(dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0)::{lambda(void)#1}::operator()(&v29);
      goto LABEL_33;
    }

    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_37;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_37;
    }

    v17 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v17 & 0xFE) != 2)
    {
      goto LABEL_37;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v18 = MEMORY[0xFFFFFC0D0];
    if (v18 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_37;
    }

    dyld4::RuntimeLocks::withLoadersWriteLock<dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0>(dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0)::{lambda(void)#1}::operator()(&v29);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_37;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_37;
    }

    v19 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v19 & 0xFE) != 2)
    {
      goto LABEL_37;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v20 = MEMORY[0xFFFFFC0D8];
    if (v20 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_37;
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v4, v27);
    v21 = *(v4 + 3);
    if (!v21)
    {
      lsl::MemoryManager::writeProtect(v4, 0);
      v21 = *(v4 + 3);
    }

    *(v4 + 3) = v21 + 1;
    lsl::Lock::unlock(v27[0]);
    dyld4::RuntimeLocks::withLoadersWriteLock<dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0>(dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0)::{lambda(void)#1}::operator()(&v29);
    lsl::MemoryManager::lockGuard(v4, v27);
    v22 = *(v4 + 3) - 1;
    *(v4 + 3) = v22;
    if (!v22)
    {
      lsl::MemoryManager::writeProtect(v4, 1);
    }

    lsl::Lock::unlock(v27[0]);
  }

LABEL_33:
  if ((v25 & 1) == 0 && *(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_deregister_pseudodylib(<handle for %s>): no registered pseudo-dylib for handle", *(v26 + 32));
  }
}

uint64_t dyld4::APIs::_dyld_has_fix_for_radar(dyld4::APIs *this, const char *a2)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_has_fix_for_radar(%s)\n", a2);
  }

  return 0;
}

uint64_t dyld4::APIs::_dyld_is_objc_constant(dyld4::RuntimeState *a1, int a2, const void *a3)
{
  if (*(*(a1 + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(a1, "_dyld_is_objc_constant(%d, %p)\n", a2, a3);
  }

  return 0;
}

void dyld4::APIs::_dyld_register_driverkit_main(dyld4::APIs *this, void (*a2)(void))
{
  v4 = *(this + 1);
  if (*(v4 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_register_driverkit_main(%p)\n", a2);
    v4 = *(this + 1);
  }

  if (*(v4 + 112) != &mach_o::PlatformInfo_driverKit::singleton || *(v4 + 120))
  {

    dyld4::RuntimeState::log(this, "_dyld_register_driverkit_main() can only be called in DriverKit processes\n");
  }

  else
  {
    if (*(this + 127))
    {
      dyld4::halt("_dyld_register_driverkit_main() may only be called once", 0);
    }

    *(this + 127) = a2;
  }
}

uint64_t dyld4::APIs::_dyld_shared_cache_is_locally_built(dyld4::APIs *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 368);
  if (v2)
  {
    v3 = (*(v2 + 221) >> 2) & 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_shared_cache_is_locally_built() => %d\n", v3);
  }

  return v3;
}

uint64_t dyld4::APIs::dyld_need_closure(dyld4::APIs *this, const char *a2, const char *a3)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_need_closure()\n", a3, v3, v4);
  }

  return 0;
}

BOOL dyld4::APIs::_dyld_is_pseudodylib(dyld4::APIs *this, dyld4::Loader *a2)
{
  v2 = a2;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_is_pseudodylib(%p)\n", a2);
  }

  if (v2)
  {
    v2 = v2 & 0xFFFFFFFFFFFFFFFELL ^ &dword_0;
  }

  result = dyld4::APIs::validLoader(this, v2);
  if (result)
  {
    result = 0;
    if (v2)
    {
      if ((*(v2 + 4) & 1) == 0)
      {
        return *(v2 + 104) != 0;
      }
    }
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_for_each_prewarming_range(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 8) + 368);
  if (result)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = ___ZN5dyld44APIs31_dyld_for_each_prewarming_rangeENS_16ReadOnlyCallbackIPFvPKvmEEE_block_invoke;
    v3[3] = &__block_descriptor_tmp_193_1;
    v3[4] = a2;
    return DyldSharedCache::forEachPrewarmingEntry(result, v3);
  }

  return result;
}

uint64_t ___ZN5dyld44APIs31_dyld_for_each_prewarming_rangeENS_16ReadOnlyCallbackIPFvPKvmEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a2;
  return dyld4::ReadOnlyCallback<void (*)(void const*,unsigned long)>::operator()<void const*&,unsigned long>((a1 + 32), &v6, &v5);
}

uint64_t dyld4::ReadOnlyCallback<void (*)(void const*,unsigned long)>::operator()<void const*&,unsigned long>(lsl::MemoryManager *a1, void *a2, void *a3)
{
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = v13[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v29);
    if (result)
    {
      v21 = v13[6];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 0x40000000;
      v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPKvmEEclIJRS5_mEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESH__block_invoke;
      v31[3] = &__block_descriptor_tmp_254;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v31, v15, v16, v17, v18, v19, v20, v30);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v25 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v25 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v26 = MEMORY[0xFFFFFC0D8];
          if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v27 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v27 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v28 = MEMORY[0xFFFFFC0D0];
                  if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v22 = *a1;
  v23 = *a2;
  v24 = *a3;

  return v22(v23, v24);
}

const os_unfair_lock *dyld4::APIs::_dyld_call_with_writable_tpro_memory(dyld4::APIs *this, void (*a2)(void *), void *a3)
{
  v26 = a3;
  v27 = a2;
  if (*(this + 1113) == 1)
  {
LABEL_35:
    dyld4::halt("Illegal TPRO memory access", 0);
  }

  v4 = lsl::MemoryManager::memoryManager(this);
  v5 = *(v4 + 6);
  if (v5 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v5))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v12 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v12 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v13 = MEMORY[0xFFFFFC0D0];
          if (v13 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v14 = *(v4 + 6);
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 0x40000000;
            v28[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld44APIs36_dyld_call_with_writable_tpro_memoryEPFvPvES4_E3__0EEvT__block_invoke;
            v28[3] = &__block_descriptor_tmp_255;
            v28[4] = &v27;
            v28[5] = &v26;
            lsl::ProtectedStack::withNestedProtectedStack(v14, v28, v6, v7, v8, v9, v10, v11, v24);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v15 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v15 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D8];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v17 = MEMORY[0xFFFFFC0D8];
                  if (v17 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_34;
  }

  if (*(v4 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_34;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v18 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v18 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v19 = MEMORY[0xFFFFFC0D0];
            if (v19 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              a2(a3);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v20 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v20 & 0xFE) == 2)
                  {
                    result = MEMORY[0xFFFFFC0D8];
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v21 = MEMORY[0xFFFFFC0D8];
                    if (v21 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    return (a2)(a3);
  }

  else
  {
    lsl::MemoryManager::lockGuard(v4, v28);
    v22 = *(v4 + 3);
    if (!v22)
    {
      lsl::MemoryManager::writeProtect(v4, 0);
      v22 = *(v4 + 3);
    }

    *(v4 + 3) = v22 + 1;
    lsl::Lock::unlock(v28[0]);
    a2(a3);
    lsl::MemoryManager::lockGuard(v4, v28);
    v23 = *(v4 + 3) - 1;
    *(v4 + 3) = v23;
    if (!v23)
    {
      lsl::MemoryManager::writeProtect(v4, 1);
    }

    return lsl::Lock::unlock(v28[0]);
  }
}

void ___ZN5dyld4L20findCacheInDirAndMapERNS_12RuntimeStateEPKhPKcRm_block_invoke(uint64_t a1, dyld3 *a2, DyldSharedCache *this)
{
  if (!DyldSharedCache::isSubCachePath(this, a2) && !*(*(*(a1 + 32) + 8) + 24))
  {
    if (stat64(a2, &v15) == -1)
    {
      v9 = 0;
      st_size = 0x100000;
    }

    else
    {
      if (v15.st_size >= 0x100000uLL)
      {
        st_size = 0x100000;
      }

      else
      {
        st_size = v15.st_size;
      }

      v6 = dyld3::open(a2, 0, 0);
      if (v6 < 0)
      {
        v9 = 0;
      }

      else
      {
        v7 = v6;
        v8 = mmap(0, st_size, 1, 2, v6, 0);
        close(v7);
        if (v8 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v9;
    v10 = *(*(*(a1 + 32) + 8) + 24);
    if (v10)
    {
      *&v15.st_dev = 0;
      v15.st_ino = 0;
      DyldSharedCache::getUUID(v10, &v15);
      v11 = *(a1 + 40);
      v13 = *v11;
      v12 = v11[1];
      if (*&v15.st_dev == v13 && v15.st_ino == v12)
      {
        **(a1 + 48) = st_size;
      }

      else
      {
        munmap(*(*(*(a1 + 32) + 8) + 24), st_size);
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }
}

uint64_t objc::ObjectHashTable::forEachObject(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 1056;
    v19 = vdupq_n_s64(1uLL);
    do
    {
      v7 = v6 + (*(v4 + 16) + 1) + v2;
      v8 = v5;
      v9 = *(v7 + 4 * v5);
      if (v9)
      {
        v10 = *(v7 + 4 * v2 + 8 * v8);
        if (v10)
        {
          __chkstk_darwin();
          if (v12)
          {
            v14 = &v19 - v12;
            do
            {
              v14->i64[0] = 0;
              v14->i16[4] = 0;
              ++v14;
            }

            while (v14 != &v19);
            v15 = (v6 + *(v4 + 4) + (*(v4 + 16) + 1) + 4 * *(v4 + 4) + 8 * *(v4 + 4) + 8 * ((*(v13 + 8 * v8) >> 1) & 0x7FFFFFFFFFFFLL) + 4);
            v16 = &v19.i16[-8 * v12 + 4];
            v17 = v12;
            do
            {
              v18 = *v15++;
              *(v16 - 1) = (v18 >> 1) & 0x7FFFFFFFFFFFLL;
              *v16 = HIWORD(v18);
              v16 += 8;
              --v17;
            }

            while (v17);
          }

          v20 = &v19.i64[-2 * v12];
          v21.i64[0] = v12;
          v21.i64[1] = v12;
          result = (*(a2 + 16))(a2, v8, v4 + v11, &v20);
        }

        else
        {
          v22 = (v10 >> 1) & 0x7FFFFFFFFFFFLL;
          v23 = HIWORD(v10);
          v20 = &v22;
          v21 = v19;
          result = (*(a2 + 16))(a2, v8, v4 + v9, &v20);
        }
      }

      v5 = v8 + 1;
      v2 = *(v4 + 4);
    }

    while (v8 + 1 != v2);
  }

  return result;
}

double ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld44APIs19_libdyld_initializeEvE3__0EEvT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  **(v1 + 112) = *(v1 + 160);
  return dyld4::RuntimeState::initialize(v1);
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerlEEclIJRS6_RlEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESJ__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks22withNotifiersWriteLockIU13block_pointerFvvEEEvT_EUlvE_EEvS7__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    (*(**v2 + 96))(*v2, v2 + 3, 0);
    (*(**(a1 + 40) + 16))();
    v3 = *(**v2 + 104);
  }

  else
  {
    v3 = *(**(a1 + 40) + 16);
  }

  return v3();
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerPKcbEEclIJRPKN5dyld311MachOLoadedES8_bEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEclIJRjS7_SA_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48), **(v2 + 56));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPK33dyld_shared_cache_dylib_text_infoEEclIJPS4_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESI__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          v4 = **(v2 + 40);
          result = (*(**(v2 + 32) + 16))();
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v5 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v5 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v6 = MEMORY[0xFFFFFC0D0];
                if (v6 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPvbPbEEclIJS4_bS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESG__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          v4 = **(v2 + 40);
          v5 = **(v2 + 48);
          v6 = **(v2 + 56);
          result = (*(**(v2 + 32) + 16))();
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v7 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v7 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v8 = MEMORY[0xFFFFFC0D0];
                if (v8 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPvbPbEEclIJPhbS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESH__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          v4 = **(v2 + 40);
          v5 = **(v2 + 48);
          v6 = **(v2 + 56);
          result = (*(**(v2 + 32) + 16))();
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v7 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v7 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v8 = MEMORY[0xFFFFFC0D0];
                if (v8 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPKvEEclIJS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESG__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_10;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || (v3 = **(a1 + 40), (*(**(a1 + 32) + 16))(), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v4 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v4 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v5 = MEMORY[0xFFFFFC0D0], v5 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_10:
    __break(1u);
    JUMPOUT(0x69C94);
  }

  return 0;
}

size_t appendHexToString<unsigned long long>(char *a1, uint64_t a2, size_t a3, int8x16_t a4, int8x16_t a5)
{
  a5.i16[0] = -24416;
  a5.i8[2] = -96;
  a5.i8[3] = -96;
  a5.i8[4] = -96;
  a5.i8[5] = -96;
  a5.i8[6] = -96;
  a5.i8[7] = -96;
  *a5.i8 = vbsl_s8(vcgt_u8(*a5.i8, a2), vsra_n_u8(0x3030303030303030, a2, 4uLL), vsra_n_u8(0x5757575757575757, a2, 4uLL));
  *a4.i8 = vand_s8(a2, 0xF0F0F0F0F0F0F0FLL);
  *a4.i8 = vbsl_s8(vcgt_u8(0xA0A0A0A0A0A0A0ALL, *a4.i8), vorr_s8(*a4.i8, 0x3030303030303030), vadd_s8(*a4.i8, 0x5757575757575757));
  v6 = vzip1q_s8(a5, a4);
  v7 = 0;
  return strlcat(a1, v6.i8, a3);
}

size_t appendHexToString<int>(char *a1, __int32 a2, size_t a3, int8x8_t a4)
{
  a4.i32[0] = a2;
  v4 = vzip1_s8(a4, a4);
  v5 = vand_s8(v4, 0xF000F000F000FLL);
  v7 = vtrn1_s8(vbsl_s8(vcgt_u16(0xA000A000A000A0, (*&v4 & 0xFF00FF00FF00FFLL)), (*&vshr_n_u16((*&v4 & 0xFF00FF00FF00FFLL), 4uLL) | 0x30003000300030), vsra_n_u16(0x57005700570057, (*&v4 & 0xFF00FF00FF00FFLL), 4uLL)), vbsl_s8(vcgt_u16(0xA000A000A000ALL, v5), (*&v5 | 0x30003000300030), vadd_s16(v5, 0x57005700570057)));
  v8 = 0;
  return strlcat(a1, &v7, a3);
}

void *dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 48 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 48 * address[2]);
  v9 = address[4] / 0x30;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

lsl::Allocator::Pool *___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs36_dyld_pseudodylib_register_callbacksEPKNS2_28PseudoDylibRegisterCallbacksEE3__0EEvT_EUlvE_EEvSA__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    (*(**v2 + 96))(*v2, v2 + 2, 0);
    dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(*(a1 + 40));
    v3 = *(**v2 + 104);

    return v3();
  }

  else
  {
    v5 = *(a1 + 40);

    return dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(v5);
  }
}

lsl::Allocator::Pool *dyld4::APIs::_dyld_pseudodylib_register_callbacks(dyld4::PseudoDylibRegisterCallbacks const*)::$_0::operator()(lsl::Allocator::Pool *result)
{
  v1 = result;
  v2 = *(result + 2);
  v3 = **result;
  v4 = *v3;
  if (*v3 == 3)
  {
    v15 = *(v3 + 1);
    v9 = *(v3 + 5);
    v12 = *(v3 + 3);
    v6 = *(v3 + 7);
    result = lsl::Allocator::aligned_alloc(*(v2 + 16), 8uLL, 0x40uLL);
    *result = v15;
    *(result + 1) = v12;
    *(result + 2) = v9;
    *(result + 3) = v6;
  }

  else if (v4 == 2)
  {
    v5 = v3[7];
    v14 = *(v3 + 1);
    v8 = *(v3 + 5);
    v11 = *(v3 + 3);
    result = lsl::Allocator::aligned_alloc(*(v2 + 16), 8uLL, 0x40uLL);
    *result = v14;
    *(result + 1) = v11;
    *(result + 2) = v8;
    *(result + 6) = v5;
    *(result + 7) = 0;
  }

  else
  {
    if (v4 != 1)
    {
      return result;
    }

    v13 = *(v3 + 1);
    v7 = *(v3 + 5);
    v10 = *(v3 + 3);
    result = lsl::Allocator::aligned_alloc(*(v2 + 16), 8uLL, 0x40uLL);
    *result = v13;
    *(result + 1) = v10;
    *(result + 2) = v7;
    *(result + 6) = 0;
    *(result + 7) = 0;
  }

  **(v1 + 1) = result;
  return result;
}

uint64_t ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs38_dyld_pseudodylib_deregister_callbacksEP34_dyld_pseudodylib_callbacks_opaqueE3__0EEvT_EUlvE_EEvS9__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*v2)
  {
    (*(**v2 + 96))(*v2, v2 + 2, 0);
    lsl::Allocator::free(*(**(a1 + 40) + 16), **(*(a1 + 40) + 8));
    v3 = *(**v2 + 104);

    return v3();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = (*v5)[2];
    v7 = *v5[1];

    return lsl::Allocator::free(v6, v7);
  }
}

uint64_t ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks20withLoadersWriteLockIZNS2_4APIs26_dyld_pseudodylib_registerEPvmP34_dyld_pseudodylib_callbacks_opaqueS6_E3__0EEvT_EUlvE_EEvSA__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *v2;
  if (*v2)
  {
    (*(*result + 96))(result, v2 + 2, 0);
    v4 = *(a1 + 40);
    v5 = *v4;
    v6 = *(*v4 + 640);
    if (v6)
    {
      v7 = *(v5 + 632);
      v8 = 8 * v6;
      v9 = v7;
      while (1)
      {
        v10 = *v9;
        if (!_platform_strcmp(*(*v9 + 32), *v4[1]))
        {
          break;
        }

        ++v9;
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      *v4[2] = v10;
    }

LABEL_13:
    if (!*v4[2])
    {
      v22 = dyld4::PseudoDylib::create(*(v5 + 16), *v4[1], *v4[3], *v4[4], *v4[5], *v4[6]);
      lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(v5 + 624, *(v5 + 640) + 1);
      v18 = *(v5 + 632);
      v19 = *(v5 + 640);
      *(v5 + 640) = v19 + 1;
      *(v18 + 8 * v19) = v22;
      *v4[7] = v22;
    }

    return (*(**v2 + 104))(*v2, v2 + 2);
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *v11;
    v13 = *(*v11 + 640);
    if (v13)
    {
      v14 = *(v12 + 632);
      v15 = 8 * v13;
      v16 = v14;
      while (1)
      {
        v17 = *v16;
        result = _platform_strcmp(*(*v16 + 32), *v11[1]);
        if (!result)
        {
          break;
        }

        ++v16;
        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      *v11[2] = v17;
    }

LABEL_17:
    if (!*v11[2])
    {
      v23 = dyld4::PseudoDylib::create(*(v12 + 16), *v11[1], *v11[3], *v11[4], *v11[5], *v11[6]);
      result = lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(v12 + 624, *(v12 + 640) + 1);
      v20 = *(v12 + 632);
      v21 = *(v12 + 640);
      *(v12 + 640) = v21 + 1;
      *(v20 + 8 * v21) = v23;
      *v11[7] = v23;
    }
  }

  return result;
}

uint64_t lsl::Vector<AuthenticatedValue<dyld4::PseudoDylib *>>::push_back(uint64_t a1, void *a2)
{
  result = lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(a1, *(a1 + 16) + 1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(a1 + 16) = v6 + 1;
  *(v5 + 8 * v6) = *a2;
  *a2 = 0;
  return result;
}

uint64_t dyld4::RuntimeLocks::withLoadersWriteLock<dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0>(dyld4::APIs::_dyld_pseudodylib_deregister(_dyld_pseudodylib_opaque *)::$_0)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  result = **a1;
  if (result)
  {
    (*(*result + 96))(result, v2 + 2, 0);
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = *(*v4 + 640);
    if (v6)
    {
      v7 = *(v5 + 632);
      v8 = 8 * v6;
      v9 = v7;
      while (*v4[1] != *v9)
      {
        ++v9;
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      *v4[2] = 1;
      lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase(v5 + 624, v9);
      lsl::Allocator::free(*(v5 + 16), *v4[1]);
    }

LABEL_13:
    v16 = *(**v2 + 104);

    return v16();
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *v10;
    v12 = *(*v10 + 640);
    if (v12)
    {
      v13 = *(v11 + 632);
      v14 = 8 * v12;
      v15 = v13;
      while (*v10[1] != *v15)
      {
        ++v15;
        ++v13;
        v14 -= 8;
        if (!v14)
        {
          return result;
        }
      }

      *v10[2] = 1;
      lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase(v11 + 624, v15);
      v17 = *(v11 + 16);
      v18 = *v10[1];

      return lsl::Allocator::free(v17, v18);
    }
  }

  return result;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPKcEEclIJRS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESH__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_10;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_10;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) || ((**(a1 + 32))(**(a1 + 40)), !MEMORY[0xFFFFFC10C]) || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v3 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v3 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v4 = MEMORY[0xFFFFFC0D0], v4 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_10:
    __break(1u);
    JUMPOUT(0x6A864);
  }

  return 0;
}

uint64_t ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPKvmEEclIJRS5_mEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESH__block_invoke(uint64_t result)
{
  if (MEMORY[0xFFFFFC10C])
  {
    if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      v1 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v1 & 0xFE) == 2)
      {
        v2 = result;
        result = MEMORY[0xFFFFFC0D8];
        _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
        __isb(0xFu);
        v3 = MEMORY[0xFFFFFC0D8];
        if (v3 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
        {
          result = (**(v2 + 32))(**(v2 + 40), **(v2 + 48));
          if (MEMORY[0xFFFFFC10C])
          {
            if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
            {
              v4 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v4 & 0xFE) == 2)
              {
                result = MEMORY[0xFFFFFC0D0];
                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v5 = MEMORY[0xFFFFFC0D0];
                if (v5 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t prebuilt_objc::forEachClass(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v13[0] = a1 + 1;
  v13[1] = v8;
  v9 = &a1[v8];
  v10 = v9[1];
  v13[2] = v8;
  v14[0] = (v9 + 2);
  v14[1] = v10;
  v14[2] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN13prebuilt_objc12forEachClassEPKvU13block_pointerFvRKN5dyld414PrebuiltLoader13BindTargetRefERKN5dyld35ArrayIPS5_EEE_block_invoke;
  v12[3] = &unk_A2D40;
  v12[4] = a2;
  return dyld3::MultiMapBase<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::forEachEntry(v13, v13, v14, v12, a5, a6, a7, a8);
}

uint64_t ___ZN13prebuilt_objc12forEachClassEPKvU13block_pointerFvRKN5dyld414PrebuiltLoader13BindTargetRefERKN5dyld35ArrayIPS5_EEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 16);
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, v19[0]);
  v14 = v19 - ((v13 + 23) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v14;
  v19[1] = v12;
  if (v12)
  {
    v15 = 0;
    v16 = *v11;
    do
    {
      if (v12 == v15)
      {
        ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
      }

      v17 = v15 + 1;
      *&v14[8 * v15] = *(v16 + 8 * v15);
      ++v15;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v17 = 0;
  }

  v19[2] = v17;
  return (*(*(v9 + 32) + 16))(*(v9 + 32), v10, v19);
}

dyld4::PrebuiltObjC::ObjCOptimizerImage *dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCOptimizerImage(dyld4::PrebuiltObjC::ObjCOptimizerImage *this, const dyld4::JustInTimeLoader *a2, uint64_t a3, int a4)
{
  *this = a2;
  *(this + 2) = a4;
  *(this + 2) = a3;
  *(this + 24) = 1;
  Diagnostics::Diagnostics((this + 32));
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 3) = 0u;
  dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::Map(this + 168);
  dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::Map(this + 264);
  *(this + 49) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::Map(this + 400);
  *(this + 157) = 0;
  *(this + 612) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 607) = 0;
  return this;
}

vm_address_t *dyld4::PrebuiltObjC::ObjCOptimizerImage::visitReferenceToObjCSelector(uint64_t a1, objc::StringHashTable *this, uint64_t *a3, int a4, int a5, unint64_t a6, char a7, char *__s)
{
  Index = objc::StringHashTable::tryGetIndex(this, __s);
  if ((Index & 0x100000000) != 0)
  {
    v23.var0 = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(*(this + 4 * Index + *(this + 1) + *(this + 4) + 1 + 1056));
    return dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back((a1 + 360), &v23);
  }

  v26.var0 = __s;
  v26.var1 = _platform_strlen(__s);
  v15 = dyld3::MapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::find<prebuilt_objc::ObjCStringKey>(a3, a3 + 2, a3 + 7, 0, &v26);
  if (v15 == a3[7] + 32 * a3[9])
  {
    v24 = 0;
    v25 = 0;
    v23 = v26;
    v18 = dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(a1 + 400, &v23);
    v16 = v18;
    if (v19)
    {
      v23.var0 = *a1;
      if ((a7 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v23.var1 = a6;
      v18[1] = v23;
      dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(v22, &v23);
      v20 = (a1 + 360);
      v21 = v22;
      return dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back(v20, v21);
    }
  }

  else
  {
    v16 = v15;
  }

  dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v23, v16 + 1);
  v20 = (a1 + 360);
  v21 = &v23;
  return dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back(v20, v21);
}

uint64_t dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v22, 0, sizeof(v22));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v22, v5);
      do
      {
        v21 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v22, &v21);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        v7 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v6);
        v8 = murmurHash(*v7, *(v7 + 8), 0);
        v9 = (v22[2] - 1) & v8;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v22, v9) != -1)
        {
          v10 = 1;
          do
          {
            v9 = (v22[2] - 1) & (v9 + v10++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v22, v9) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v22, v9) = v6++;
      }

      while (v6 != *(a1 + 72));
    }

    if ((a1 + 16) == v22)
    {
      v22[2] = 0;
      if (v22[3])
      {
        vm_deallocate(mach_task_self_, v22[3], size);
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        vm_deallocate(mach_task_self_, v11, *(a1 + 48));
      }

      *(a1 + 16) = v22[0];
      *(a1 + 24) = *&v22[1];
      v12 = size;
      *(a1 + 40) = v22[3];
      *(a1 + 48) = v12;
    }
  }

  v13 = (*(a1 + 32) - 1) & murmurHash(*a2, *(a2 + 8), 0);
  v14 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v13);
  if (v14 == -1)
  {
LABEL_22:
    v18 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v13) = v18;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::push_back((a1 + 56), a2);
    v19 = *(a1 + 72);
    if (!v19)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 32 * v19 - 32;
  }

  else
  {
    v15 = 1;
    while (1)
    {
      v16 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v14);
      v17 = *(v16 + 8);
      if (v17 == *(a2 + 8) && !_platform_memcmp(*v16, *a2, v17))
      {
        return dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftTypeProtocolConformanceDiskLocationKey,SwiftTypeProtocolConformanceDiskLocation,dyld4::HashTypeConformanceKey,dyld4::EqualTypeConformanceKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v14);
      }

      v13 = (*(a1 + 32) - 1) & (v13 + v15++);
      v14 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v13);
      if (v14 == -1)
      {
        goto LABEL_22;
      }
    }
  }
}

double dyld4::PrebuiltObjC::ObjCOptimizerImage::visitClass(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, char *a11)
{
  v16 = _NSConcreteStackBlock;
  v17 = 0x40000000;
  v18 = ___ZN5dyld4L22checkForDuplicateClassE9VMAddressPKcPKN4objc14ClassHashTableERN5dyld33MapItNSt3__14pairIS0_PKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS8_IS2_NSB_10BindTargetENS7_11HashCStringENS7_12EqualCStringEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke;
  v19 = &__block_descriptor_tmp_42_1;
  v20 = a5;
  v21 = a6;
  v22 = a11;
  v23 = a2;
  v24 = a3;
  v25 = a1;
  objc::ObjectHashTable::forEachObject(a4, a11, &v16);
  if ((a10 & 1) == 0 || (*(a1 + 24) & 1) == 0 || (a8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v14 = *(a1 + 16);
  v16 = a11;
  v17 = a9 - v14;
  v18 = (&dword_0 + 1);
  v19 = (a7 - v14);
  v20 = 1;
  *&result = dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCObject,4294967295ull>::push_back((a1 + 48), &v16).n128_u64[0];
  return result;
}

__n128 dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCObject,4294967295ull>::push_back(vm_address_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCObject,4294967295ull>::growTo(a1, v5);
    v4 = a1[2];
    v5 = v4 + 1;
  }

  v6 = *a1;
  a1[2] = v5;
  v7 = v6 + 40 * v4;
  result = *a2;
  v9 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *v7 = result;
  *(v7 + 16) = v9;
  return result;
}

void dyld4::PrebuiltObjC::ObjCOptimizerImage::visitProtocol(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char *a8)
{
  v16 = *(a1 + 144);
  v20.n128_u8[0] = 0;
  dyld3::OverflowSafeArray<BOOL,4294967295ull>::push_back((a1 + 128), &v20);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v20.n128_u64[0] = _NSConcreteStackBlock;
  v20.n128_u64[1] = 0x40000000;
  v21 = ___ZN5dyld4L23protocolIsInSharedCacheEPKcPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEE_block_invoke;
  v22 = &unk_A2F28;
  v23 = &v25;
  v24 = a3;
  objc::ObjectHashTable::forEachObject(a2, a8, &v20);
  LOBYTE(a3) = *(v26 + 24);
  _Block_object_dispose(&v25, 8);
  if ((a3 & 1) == 0)
  {
    if ((a7 & 1) == 0 || (*(a1 + 24) & 1) == 0 || (a5 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    v17 = *(a1 + 16);
    v18 = a6 - v17;
    v19 = a4 - v17;
    v20.n128_u64[0] = a8;
    v20.n128_u64[1] = v18;
    v21 = (&dword_0 + 1);
    v22 = (a4 - v17);
    v23 = (&dword_0 + 1);
    dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCObject,4294967295ull>::push_back((a1 + 88), &v20);
    v20.n128_u64[0] = v19;
    v20.n128_u64[1] = 1;
    LODWORD(v21) = 0;
    *(dyld3::Map<VMOffset,unsigned int,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetHash,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual>::insert(a1 + 264, &v20) + 16) = v16;
  }
}

vm_address_t *dyld3::OverflowSafeArray<BOOL,4294967295ull>::push_back(vm_address_t *result, char *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4 + 1;
  if (v4 + 1 > result[1])
  {
    result = dyld3::OverflowSafeArray<BOOL,4294967295ull>::growTo(result, v5);
    v4 = v3[2];
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *v3;
  v3[2] = v5;
  *(v7 + v4) = v6;
  return result;
}

__n128 dyld4::PrebuiltObjC::commitImage(dyld4::PrebuiltObjC *this, const dyld4::PrebuiltObjC::ObjCOptimizerImage *a2)
{
  v4 = *(a2 + 30);
  if (v4)
  {
    v5 = *(a2 + 28);
    v6 = &v5[3 * v4];
    do
    {
      v13 = *v5;
      v14 = 0;
      v7 = dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::insert(this + 344, &v13);
      result = *(v5 + 1);
      *(v7 + 8) = result;
      v5 += 3;
    }

    while (v5 != v6);
  }

  v9 = *(a2 + 59);
  if (v9)
  {
    v10 = *(a2 + 57);
    v11 = &v10[2 * v9];
    do
    {
      v13 = *v10;
      v14 = 0;
      v15 = 0;
      v12 = dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(this + 40, &v13);
      result = v10[1];
      v12[1] = result;
      v10 += 2;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t dyld4::PrebuiltObjC::serializeSelectorMap(dyld4::PrebuiltObjC *this, dyld4::BumpAllocator *a2)
{
  v2 = (*(a2 + 4) - *a2);
  dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::serialize<prebuilt_objc::ObjCStringKeyOnDisk,void>(this + 40, a2, &__block_literal_global_1);
  return v2;
}

void *dyld3::Map<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::serialize<prebuilt_objc::ObjCStringKeyOnDisk,void>(uint64_t a1, dyld4::BumpAllocator *this, uint64_t a3)
{
  v11 = *(a1 + 32);
  dyld4::BumpAllocator::append(this, &v11, 8uLL);
  dyld4::BumpAllocator::append(this, *(a1 + 16), 4 * v11);
  v11 = *(a1 + 72);
  result = dyld4::BumpAllocator::append(this, &v11, 8uLL);
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = v8 + 32 * v7;
    do
    {
      v10 = (*(a3 + 16))(a3, v8, v8 + 16);
      result = dyld4::BumpAllocator::append(this, &v10, 8uLL);
      v8 += 32;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t dyld4::PrebuiltObjC::serializeClassMap(dyld4::PrebuiltObjC *this, dyld4::BumpAllocator *a2)
{
  v2 = (*(a2 + 4) - *a2);
  dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::serialize<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation>(this + 136, a2, &__block_literal_global_15, &__block_literal_global_19);
  return v2;
}

void *dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::serialize<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation>(uint64_t a1, dyld4::BumpAllocator *this, uint64_t a3, uint64_t a4)
{
  v13 = *(a1 + 32);
  dyld4::BumpAllocator::append(this, &v13, 8uLL);
  dyld4::BumpAllocator::append(this, *(a1 + 16), 8 * v13);
  v13 = *(a1 + 72);
  result = dyld4::BumpAllocator::append(this, &v13, 8uLL);
  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = *(a1 + 56);
    v11 = v10 + 56 * v9;
    do
    {
      v12[0] = (*(a3 + 16))(a3, v10, v10 + 16);
      v12[1] = (*(a4 + 16))(a4, v10, v10 + 16);
      v12[2] = *(v10 + 48);
      result = dyld4::BumpAllocator::append(this, v12, 0x18uLL);
      v10 += 56;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t dyld4::PrebuiltObjC::serializeProtocolMap(dyld4::PrebuiltObjC *this, dyld4::BumpAllocator *a2)
{
  v2 = (*(a2 + 4) - *a2);
  dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::serialize<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation>(this + 240, a2, &__block_literal_global_22, &__block_literal_global_25);
  return v2;
}

uint64_t dyld4::generateClassOrProtocolHashTable(uint64_t result, void *a2, uint64_t *a3, uint64_t a4, _BYTE *a5)
{
  v31 = result;
  v5 = a2[2];
  if (v5)
  {
    v7 = 0;
    v8 = a2[2];
    v32 = a2;
    do
    {
      v9 = v8 - 1;
      if (v5 <= v9)
      {
        ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
      }

      v34 = v7;
      v35 = v9;
      result = Diagnostics::hasError((*a2 + 632 * v9 + 32));
      if ((result & 1) == 0)
      {
        if (v32[2] <= v35)
        {
          ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
        }

        v10 = (*v32 + 632 * v35);
        if (v31 == 1)
        {
          v22 = v10[13];
          if (v22)
          {
            v23 = v10[11] + 16;
            v24 = 40 * v22;
            do
            {
              if ((*v23 & 1) == 0 || (*(v23 + 16) & 1) == 0)
              {
LABEL_35:
                std::__throw_bad_optional_access[abi:nn200100]();
              }

              v25 = *v10;
              v26 = *(v23 + 8);
              v27 = *(v23 - 16);
              v28 = *(v23 - 8);
              v29 = _platform_strlen(v27);
              v44 = 0;
              v38 = v27;
              v39 = v29;
              v40 = v25;
              v41 = v28;
              v42 = v25;
              v43 = v26;
              result = dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(a4, &v38, &v44);
              if ((v44 & 1) == 0)
              {
                result = dyld3::MapBase<VMOffset,unsigned int,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetHash,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual>::find<VMOffset>((v10 + 33), v10 + 35, v10 + 40, 0, v23 + 8);
                if (result == v10[40] + 24 * v10[42])
                {
                  dyld4::generateClassOrProtocolHashTable();
                }

                v30 = *(result + 16);
                if (v10[18] <= v30)
                {
                  if (v10[17] <= v30)
                  {
                    result = dyld3::OverflowSafeArray<BOOL,4294967295ull>::growTo(v10 + 16, v30 + 1);
                  }

                  v10[18] = v30 + 1;
                }

                *(v10[16] + v30) = 1;
              }

              v23 += 40;
              v24 -= 40;
            }

            while (v24);
          }
        }

        else if (!v31)
        {
          v11 = v10[8];
          if (v11)
          {
            v12 = v10[6];
            v13 = 40 * v11;
            while (1)
            {
              if ((*(v12 + 16) & 1) == 0 || (*(v12 + 32) & 1) == 0)
              {
                goto LABEL_35;
              }

              v14 = *v10;
              v15 = *(v12 + 24);
              v17 = *v12;
              v16 = *(v12 + 8);
              v18 = _platform_strlen(*v12);
              v44 = 0;
              v38 = v17;
              v39 = v18;
              v40 = v14;
              v41 = v16;
              v42 = v14;
              v43 = v15;
              v19 = a4;
              result = dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(a4, &v38, &v44);
              if (v44)
              {
                goto LABEL_15;
              }

              v20 = result;
              result = dyld3::MapBase<char const*,dyld4::Loader::BindTarget,dyld3::HashCString,dyld3::EqualCString>::const_find<char const*>(a3, a3 + 2, a3 + 7, 0, v12);
              if (result != a3[7] + 24 * a3[9])
              {
                break;
              }

LABEL_16:
              v12 += 40;
              v13 -= 40;
              a4 = v19;
              if (!v13)
              {
                goto LABEL_30;
              }
            }

            v21 = *(result + 8);
            *(v20 + 16) = v14;
            *(v20 + 24) = v16;
            *(v20 + 32) = v21;
            v37[0] = 0;
            v38 = v17;
            v39 = v18;
            v40 = v14;
            v41 = v16;
            v42 = v14;
            v43 = v15;
            result = dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(v19, &v38, v37);
LABEL_15:
            *a5 = 1;
            goto LABEL_16;
          }
        }
      }

LABEL_30:
      v8 = v35;
      v7 = v34 + 1;
      a2 = v32;
      v5 = v32[2];
    }

    while (v34 + 1 != v5);
  }

  return result;
}

void dyld4::PrebuiltObjC::generatePerImageFixups(vm_address_t *this, dyld4::RuntimeState *a2)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    v4 = 0;
    v5 = *(a2 + 5);
    v6 = 8 * v3;
    v7 = v5;
    do
    {
      if ((*(*v7 + 4) & 1) == 0)
      {
        v8 = *(*v7 + 6);
        if ((v8 & 0x80000000) == 0)
        {
          dyld4::PrebuiltObjC::generatePerImageFixups();
        }

        v9 = v8 & 0x7FFF;
        if (v4 <= v9)
        {
          v4 = v9;
        }
      }

      v7 += 8;
      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  if (this[59] < (v4 + 1))
  {
    dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::growTo(this + 58, (v4 + 1));
  }

  v10 = 0;
  do
  {
    dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::default_constuct_back(this + 58);
    v11 = v10++;
  }

  while (v11 != v4);
  v12 = this[2];
  if (v12)
  {
    v13 = *this;
    v14 = *this + 632 * v12;
    do
    {
      if (Diagnostics::hasError((v13 + 32)))
      {
        goto LABEL_35;
      }

      v15 = dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::operator[](this + 58, *(*v13 + 6) & 0x7FFF);
      v16 = v15;
      v17 = *(v13 + 552);
      *v15 = *(v13 + 536);
      *(v15 + 16) = v17;
      v18 = *(v13 + 568);
      v19 = *(v13 + 584);
      v20 = *(v13 + 616);
      *(v15 + 64) = *(v13 + 600);
      *(v15 + 80) = v20;
      *(v15 + 32) = v18;
      *(v15 + 48) = v19;
      v21 = *(v13 + 144);
      if (v21)
      {
        if (*(v15 + 104) >= v21)
        {
          v23 = *(v13 + 128);
          v24 = &v23[v21];
        }

        else
        {
          dyld3::OverflowSafeArray<BOOL,4294967295ull>::growTo((v15 + 96), v21);
          v22 = *(v13 + 144);
          if (!v22)
          {
            goto LABEL_23;
          }

          v23 = *(v13 + 128);
          v24 = &v23[v22];
        }

        do
        {
          v25 = *v23++;
          v34 = v25;
          dyld3::OverflowSafeArray<BOOL,4294967295ull>::push_back(v16 + 12, &v34);
        }

        while (v23 != v24);
      }

LABEL_23:
      v26 = *(v13 + 376);
      if (!v26)
      {
        goto LABEL_29;
      }

      if (v16[18] >= v26)
      {
        v28 = *(v13 + 360);
        v29 = &v28[v26];
      }

      else
      {
        dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v16 + 17, v26);
        v27 = *(v13 + 376);
        if (!v27)
        {
          goto LABEL_29;
        }

        v28 = *(v13 + 360);
        v29 = &v28[v27];
      }

      do
      {
        dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back(v16 + 17, v28++);
      }

      while (v28 != v29);
LABEL_29:
      v30 = *(v13 + 512);
      if (v30)
      {
        if (v16[23] >= v30)
        {
          v32 = *(v13 + 496);
          v33 = &v32[v30];
          do
          {
LABEL_34:
            dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back(v16 + 22, v32++);
          }

          while (v32 != v33);
          goto LABEL_35;
        }

        dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v16 + 22, v30);
        v31 = *(v13 + 512);
        if (v31)
        {
          v32 = *(v13 + 496);
          v33 = &v32[v31];
          goto LABEL_34;
        }
      }

LABEL_35:
      v13 += 632;
    }

    while (v13 != v14);
  }
}

double dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::default_constuct_back(vm_address_t *a1)
{
  v2 = a1[2];
  v3 = v2 + 1;
  if (v2 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::growTo(a1, v3);
    v2 = a1[2];
    v3 = v2 + 1;
  }

  v4 = *a1;
  a1[2] = v3;
  v5 = v4 + 216 * v2;
  *(v5 + 208) = 0;
  result = 0.0;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  return result;
}

uint64_t dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::operator[](vm_address_t *a1, vm_address_t a2)
{
  v4 = a1[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && a1[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::growTo(a1, a2 + 1);
    }

    a1[2] = v5;
  }

  return *a1 + 216 * a2;
}

void dyld4::PrebuiltObjC::make(dyld4::PrebuiltObjC *this, Diagnostics *a2, dyld4::RuntimeState *a3)
{
  v3 = *(a3 + 1);
  v4 = *(v3 + 432);
  v63 = *(v3 + 440);
  v64 = *(v3 + 448);
  if (v63)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && *(v3 + 448) != 0)
  {
    v67 = *(v3 + 416);
    v65 = *(v3 + 424);
    v62 = *(v3 + 480);
    v9 = DyldSharedCache::objcOptPtrs(*(v3 + 368));
    if (v9)
    {
      v10 = v9;
      v11 = dyld4::Loader::loadAddress(*(a3 + 3), a3);
      if (dyld3::MachOFile::pointerSize(v11) == 8)
      {
        v12 = *v10;
      }

      else
      {
        v12 = *v10;
      }

      *(this + 56) = v12 - *(*(a3 + 1) + 368);
      *(this + 456) = 1;
    }

    v13 = *(a3 + 10);
    if (v13)
    {
      v14 = *(a3 + 9);
      v15 = 8 * v13;
      v16 = v14;
      while (!*v16 || (*(*v16 + 4) & 1) != 0)
      {
        v16 += 8;
        v14 += 8;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      v61 = v4;
      v66 = this;
      dyld3::Map<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::Map(v75);
      v18 = *(a3 + 6);
      if (v18)
      {
        v19 = *(a3 + 5);
        v20 = 8 * v18;
        v21 = v19;
        do
        {
          v22 = *v21;
          v23 = dyld4::Loader::mf(*v21, a3);
          LODWORD(v96[0]) = dyld3::MachOFile::pointerSize(v23);
          v82 = 0;
          v83 = &v82;
          v84 = 0x4002000000;
          v85 = __Block_byref_object_copy__5;
          v86 = __Block_byref_object_dispose__5;
          LOBYTE(v87[0]) = 0;
          LOBYTE(v88) = 0;
          v107 = _NSConcreteStackBlock;
          v108 = 0x40000000;
          v109 = ___ZN5dyld4L12getImageInfoER11DiagnosticsRNS_12RuntimeStateEPKNS_6LoaderEPKN6mach_o6HeaderE_block_invoke;
          v110 = &unk_A3108;
          v113 = a2;
          v114 = a3;
          v111 = &v82;
          v112 = v22;
          mach_o::Header::forEachSection(v23, &v107);
          v24 = *(v83 + 40);
          v25 = *(v83 + 48);
          v26 = *(v83 + 56);
          _Block_object_dispose(&v82, 8);
          if (v26)
          {
            if ((*(v22 + 2) & 2) != 0)
            {
              v29 = mach_o::Header::preferredLoadAddress(v23);
              v30 = dyld3::MachOFile::is64(v23);
              if (!v67)
              {
                dyld4::PrebuiltObjC::make();
              }

              if (!v65)
              {
                dyld4::PrebuiltObjC::make();
              }

              if (v30)
              {
                v31 = objc::objc_headeropt_ro_t<unsigned long long>::get(v67, v62, v29);
                if (!v31)
                {
                  goto LABEL_83;
                }

                v32 = objc::objc_headeropt_ro_t<unsigned long long>::index(v67, v31);
                if (*(v65 + 4) != 8)
                {
                  dyld4::PrebuiltObjC::make();
                }
              }

              else
              {
                v33 = objc::objc_headeropt_ro_t<unsigned int>::get(v67, v62, v29);
                if (!v33)
                {
                  goto LABEL_83;
                }

                v32 = objc::objc_headeropt_ro_t<unsigned long long>::index(v67, v33);
                if (*(v65 + 4) != 4)
                {
                  dyld4::PrebuiltObjC::make();
                }
              }

              LOWORD(v82) = v32;
              v83 = v29;
              LOBYTE(v84) = 1;
              v85 = v22;
              dyld3::Map<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::insert(v75, &v82);
            }

            else
            {
              if (dyld4::Loader::matchesPath(v22, a3, "/usr/lib/libobjc.A.dylib"))
              {
                goto LABEL_83;
              }

              v82 = v22;
              v107 = mach_o::Header::preferredLoadAddress(v23);
              dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage,4294967295ull>::emplace_back<dyld4::JustInTimeLoader const*,unsigned long long,unsigned int &>(v66, &v82, &v107, v96);
              v27 = *(v66 + 2);
              if (!v27)
              {
                ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
              }

              v28 = *v66 + 632 * v27;
              *(v28 - 632) = v22;
              if ((v25 & 1) == 0)
              {
LABEL_92:
                std::__throw_bad_optional_access[abi:nn200100]();
              }

              *(v28 - 96) = v24;
              v69[0] = _NSConcreteStackBlock;
              v69[1] = 0x40000000;
              v70 = ___ZN5dyld412PrebuiltObjC4makeER11DiagnosticsRNS_12RuntimeStateE_block_invoke;
              v71 = &__block_descriptor_tmp_32;
              v74 = v96[0];
              v72 = v23;
              v73 = v28 - 632;
              ___ZN5dyld412PrebuiltObjC4makeER11DiagnosticsRNS_12RuntimeStateE_block_invoke(v69, "__objc_selrefs", (v28 - 88), (v28 - 48));
              v70(v69, "__objc_classlist", (v28 - 80), (v28 - 44));
              v70(v69, "__objc_catlist", (v28 - 72), (v28 - 40));
              v70(v69, "__objc_protolist", (v28 - 64), (v28 - 36));
              v70(v69, "__objc_protorefs", (v28 - 56), (v28 - 32));
            }
          }

          ++v21;
          ++v19;
          v20 -= 8;
        }

        while (v20);
      }

      v34 = *(v66 + 2);
      if (v34)
      {
        v35 = 0;
        v36 = *v66;
        v37 = 632 * v34;
        do
        {
          v38 = v36 + v35;
          if (!Diagnostics::hasError((v36 + v35 + 32)))
          {
            if (*(v38 + 588))
            {
              v107 = 0;
              v108 = &v107;
              v109 = 0x4802000000;
              v110 = __Block_byref_object_copy__78;
              v111 = __Block_byref_object_dispose__79;
              v39 = dyld4::Loader::analyzer(*v38, a3);
              metadata_visitor::Visitor::Visitor(&v112, v39);
              if (!Diagnostics::hasError((v38 + 32)))
              {
                v40 = *(*(a3 + 1) + 400);
                v82 = _NSConcreteStackBlock;
                v83 = 0x40000000;
                v84 = ___ZN5dyld4L19optimizeObjCClassesERNS_12RuntimeStateEPKN4objc14ClassHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS7_IPKcNSB_10BindTargetENS6_11HashCStringENS6_12EqualCStringEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke;
                v85 = &unk_A3130;
                v86 = &v107;
                v87[0] = v36 + v35;
                v87[1] = a3;
                v88 = v40;
                v89 = 1;
                v90 = v63;
                v91 = v75;
                v92 = v66 + 344;
                objc_visitor::Visitor::forEachClass((v108 + 40), &v82);
              }

              _Block_object_dispose(&v107, 8);
            }

            if (!Diagnostics::hasError((v38 + 32)))
            {
              v41 = v36 + v35;
              v42 = *(v36 + v35 + 596);
              if (v42)
              {
                if (*(v41 + 136) < v42)
                {
                  dyld3::OverflowSafeArray<BOOL,4294967295ull>::growTo((v36 + v35 + 128), v42);
                }

                v82 = 0;
                v83 = &v82;
                v84 = 0x4802000000;
                v85 = __Block_byref_object_copy__78;
                v86 = __Block_byref_object_dispose__79;
                v43 = dyld4::Loader::analyzer(*v38, a3);
                metadata_visitor::Visitor::Visitor(v87, v43);
                if (!Diagnostics::hasError((v38 + 32)))
                {
                  v107 = _NSConcreteStackBlock;
                  v108 = 0x40000000;
                  v109 = ___ZN5dyld4L21optimizeObjCProtocolsERNS_12RuntimeStateEPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke;
                  v110 = &unk_A3158;
                  v111 = &v82;
                  v112 = v36 + v35;
                  v113 = v64;
                  v114 = v75;
                  objc_visitor::Visitor::forEachProtocol((v83 + 40), &v107);
                }

                _Block_object_dispose(&v82, 8);
              }

              if (!Diagnostics::hasError((v38 + 32)))
              {
                v44 = dyld4::JustInTimeLoader::mf(*v38, a3);
                v45 = dyld3::MachOFile::pointerSize(v44);
                v103 = 0;
                v104 = &v103;
                v105 = 0x2000000000;
                v106 = 0;
                v102[0] = _NSConcreteStackBlock;
                v102[1] = 0x40000000;
                v102[2] = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke;
                v102[3] = &unk_A3180;
                v102[4] = &v103;
                mach_o::Header::forEachSection(v44, v102);
                if (*(v104 + 24) == 1)
                {
                  Diagnostics::error((v38 + 32), "Old objc section");
                }

                else if ((mach_o::Header::isArch(v44, "x86_64") || mach_o::Header::isArch(v44, "x86_64h")) && mach_o::Header::hasObjCMessageReferences(v44))
                {
                  Diagnostics::error((v38 + 32), "Cannot handle message refs");
                }

                else
                {
                  v82 = 0;
                  v83 = &v82;
                  v84 = 0x4802000000;
                  v85 = __Block_byref_object_copy__78;
                  v86 = __Block_byref_object_dispose__79;
                  v46 = dyld4::Loader::analyzer(*v38, a3);
                  metadata_visitor::Visitor::Visitor(v87, v46);
                  if (!Diagnostics::hasError((v38 + 32)))
                  {
                    v47 = v36 + v35;
                    v48 = *(v36 + v35 + 544);
                    v49 = (v48 + (*(v36 + v35 + 584) * v45));
                    v107 = _NSConcreteStackBlock;
                    v108 = 0x40000000;
                    v109 = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_2;
                    v110 = &unk_A31A8;
                    v111 = &v82;
                    v112 = v36 + v35;
                    v113 = v48;
                    v114 = v49;
                    v101[0] = _NSConcreteStackBlock;
                    v101[1] = 0x40000000;
                    v101[2] = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_3;
                    v101[3] = &unk_A31D0;
                    v101[5] = &v82;
                    v101[4] = &v107;
                    if (*(v38 + 588))
                    {
                      v97 = 0;
                      v98 = &v97;
                      v99 = 0x2000000000;
                      v100 = 0;
                      v96[0] = _NSConcreteStackBlock;
                      v96[1] = 0x40000000;
                      v96[2] = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_4;
                      v96[3] = &unk_A31F8;
                      v96[5] = &v82;
                      v96[4] = v101;
                      v96[6] = &v97;
                      objc_visitor::Visitor::forEachClassAndMetaClass((v83 + 40), v96);
                      v50 = *(v98 + 24);
                      *(v47 + 608) = v50;
                      *(v47 + 605) = v50;
                      _Block_object_dispose(&v97, 8);
                    }

                    if (*(v47 + 592))
                    {
                      v97 = 0;
                      v98 = &v97;
                      v99 = 0x2000000000;
                      v100 = 0;
                      v95[0] = _NSConcreteStackBlock;
                      v95[1] = 0x40000000;
                      v95[2] = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_5;
                      v95[3] = &unk_A3220;
                      v95[5] = &v82;
                      v95[4] = v101;
                      v95[6] = &v97;
                      objc_visitor::Visitor::forEachCategory((v83 + 40), v95);
                      v51 = *(v98 + 24);
                      v52 = v36 + v35;
                      *(v52 + 609) = v51;
                      *(v52 + 606) = v51;
                      _Block_object_dispose(&v97, 8);
                    }

                    if (*(v41 + 596))
                    {
                      v97 = 0;
                      v98 = &v97;
                      v99 = 0x2000000000;
                      v100 = 0;
                      v94[0] = _NSConcreteStackBlock;
                      v94[1] = 0x40000000;
                      v94[2] = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_6;
                      v94[3] = &unk_A3248;
                      v94[4] = v101;
                      v94[5] = &v82;
                      v94[6] = &v97;
                      objc_visitor::Visitor::forEachProtocol((v83 + 40), v94);
                      v53 = *(v98 + 24);
                      v54 = v36 + v35;
                      *(v54 + 610) = v53;
                      *(v54 + 607) = v53;
                      _Block_object_dispose(&v97, 8);
                    }

                    v93[0] = _NSConcreteStackBlock;
                    v93[1] = 0x40000000;
                    v93[2] = ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_7;
                    v93[3] = &__block_descriptor_tmp_101_2;
                    v93[4] = v36 + v35;
                    v93[5] = v61;
                    v93[6] = v66 + 40;
                    if ((*(v36 + v35 + 24) & 1) == 0)
                    {
                      goto LABEL_92;
                    }

                    dyld4::PrebuiltObjC::forEachSelectorReferenceToUnique(a3, *(v36 + v35), *(v36 + v35 + 16), v47 + 536, v93);
                  }

                  _Block_object_dispose(&v82, 8);
                }

                _Block_object_dispose(&v103, 8);
                if (!Diagnostics::hasError((v38 + 32)))
                {
                  dyld4::PrebuiltObjC::commitImage(v66, (v36 + v35));
                }
              }
            }
          }

          v35 += 632;
        }

        while (v37 != v35);
      }

      dyld4::PrebuiltObjC::generateHashTables(v66);
      v55 = *(v66 + 2);
      if (v55)
      {
        v56 = *v66;
        v57 = 632 * v55;
        do
        {
          if (!Diagnostics::hasError((v56 + 32)))
          {
            v58 = *(v56 + 600);
            if (v58)
            {
              if (*(v56 + 504) < v58)
              {
                dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo((v56 + 496), v58);
              }

              v82 = 0;
              v83 = &v82;
              v84 = 0x4802000000;
              v85 = __Block_byref_object_copy__78;
              v86 = __Block_byref_object_dispose__79;
              v59 = dyld4::Loader::analyzer(*v56, a3);
              metadata_visitor::Visitor::Visitor(v87, v59);
              if (!Diagnostics::hasError((v56 + 32)))
              {
                v107 = _NSConcreteStackBlock;
                v108 = 0x40000000;
                v109 = ___ZN5dyld4L30optimizeObjCProtocolReferencesERNS_12RuntimeStateEPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS6_8MultiMapIN13prebuilt_objc13ObjCStringKeyENSK_18ObjCObjectLocationENSK_17HashObjCStringKeyENSK_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke;
                v110 = &unk_A32B8;
                v111 = &v82;
                v112 = v56;
                v113 = v64;
                v114 = v75;
                v115 = v66 + 240;
                objc_visitor::Visitor::forEachProtocolReference((v83 + 40), &v107);
              }

              _Block_object_dispose(&v82, 8);
            }
          }

          v56 += 632;
          v57 -= 632;
        }

        while (v57);
      }

      v60 = dyld4::Loader::mf(*(a3 + 3), a3);
      dyld3::MachOFile::pointerSize(v60);
      dyld4::PrebuiltObjC::generatePerImageFixups(v66, a3);
      *(v66 + 441) = 1;
LABEL_83:
      v79 = 0;
      if (address)
      {
        vm_deallocate(mach_task_self_, address, size);
      }

      v76 = 0;
      if (v77)
      {
        vm_deallocate(mach_task_self_, v77, v78);
      }
    }
  }
}

vm_address_t dyld3::Map<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::insert(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v19, 0, sizeof(v19));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v19, v5);
      do
      {
        v18 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v19, &v18);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      do
      {
        v7 = dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v6);
        v8 = (LODWORD(v19[2]) - 1) & *v7;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v19, v8) != -1)
        {
          v9 = 1;
          do
          {
            v8 = (v19[2] - 1) & (v8 + v9++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v19, v8) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v19, v8) = v6++;
      }

      while (v6 != *(a1 + 72));
    }

    if ((a1 + 16) == v19)
    {
      v19[2] = 0;
      if (v19[3])
      {
        vm_deallocate(mach_task_self_, v19[3], size);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        vm_deallocate(mach_task_self_, v10, *(a1 + 48));
      }

      *(a1 + 16) = v19[0];
      *(a1 + 24) = *&v19[1];
      v11 = size;
      *(a1 + 40) = v19[3];
      *(a1 + 48) = v11;
    }
  }

  v12 = (*(a1 + 32) - 1) & *a2;
  v13 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12);
  if (v13 == -1)
  {
LABEL_21:
    v15 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12) = v15;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::push_back((a1 + 56), a2);
    v16 = *(a1 + 72);
    if (!v16)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 32 * v16 - 32;
  }

  else
  {
    v14 = 1;
    while (*dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v13) != *a2)
    {
      v12 = (*(a1 + 32) - 1) & (v12 + v14++);
      v13 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12);
      if (v13 == -1)
      {
        goto LABEL_21;
      }
    }

    return dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v13);
  }
}

dyld4::PrebuiltObjC::ObjCOptimizerImage *dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage,4294967295ull>::emplace_back<dyld4::JustInTimeLoader const*,unsigned long long,unsigned int &>(vm_address_t *a1, const dyld4::JustInTimeLoader **a2, uint64_t *a3, int *a4)
{
  v8 = a1[2];
  v9 = v8 + 1;
  if (v8 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage,4294967295ull>::growTo(a1, v9);
    v8 = a1[2];
    v9 = v8 + 1;
  }

  v10 = *a1;
  a1[2] = v9;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;

  return dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCOptimizerImage((v10 + 632 * v8), v11, v12, v13);
}

uint64_t ___ZN5dyld412PrebuiltObjC4makeER11DiagnosticsRNS_12RuntimeStateE_block_invoke(uint64_t a1, char *__s, void *a3, unsigned int *a4)
{
  v8 = *(a1 + 32);
  if (__s)
  {
    v9 = _platform_strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  v14 = 0;
  v15 = 0;
  result = mach_o::Header::findObjCDataSection(v8, __s, v9, &v15, &v14);
  if (result)
  {
    v11 = v14;
    v12 = *(a1 + 48);
    if (v14 % v12)
    {
      return Diagnostics::error((*(a1 + 40) + 32), "Invalid objc pointer section size");
    }

    *a3 = v15;
    v13 = v11 / v12;
  }

  else
  {
    v13 = 0;
    *a3 = 0;
  }

  *a4 = v13;
  return result;
}

uint64_t dyld4::PrebuiltObjC::serializeFixups(dyld4::PrebuiltObjC *this, const dyld4::Loader *a2, dyld4::BumpAllocator *a3)
{
  if (*(this + 441) != 1)
  {
    return 0;
  }

  if ((*(a2 + 3) & 0x80000000) == 0)
  {
    dyld4::PrebuiltObjC::serializeFixups();
  }

  v4 = dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::operator[](this + 58, *(a2 + 3) & 0x7FFF);
  if (!*v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a3 + 2) - *a3;
  dyld4::BumpAllocator::append(a3, v4, 0x60uLL);
  v7 = v5[14];
  if (v7)
  {
    if (v7 != *(v5 + 15))
    {
      dyld4::PrebuiltObjC::serializeFixups();
    }

    v8 = *(a3 + 4) - *a3 - v6;
    *(*a3 + v6 + 76) = (*(a3 + 8) - *a3 - v6);
    dyld4::BumpAllocator::zeroFill(a3, v7);
    dyld4::BumpAllocator::align(a3, 8u);
    memmove((*a3 + v6 + v8), v5[12], v5[14]);
  }

  v9 = v5[19];
  if (v9)
  {
    v10 = *(a3 + 2) - *a3;
    v11 = *a3 + v6;
    *(v11 + 80) = v10 - v6;
    *(v11 + 84) = v9;
    dyld4::BumpAllocator::zeroFill(a3, 8 * v9);
    memmove((*a3 + v10), v5[17], 8 * v5[19]);
  }

  v12 = v5[24];
  if (v12)
  {
    v13 = *(a3 + 2) - *a3;
    v14 = *a3 + v6;
    *(v14 + 88) = v13 - v6;
    *(v14 + 92) = v12;
    dyld4::BumpAllocator::zeroFill(a3, 8 * v12);
    memmove((*a3 + v13), v5[22], 8 * v5[24]);
  }

  return v6;
}

vm_address_t ___ZN5dyld4L22checkForDuplicateClassE9VMAddressPKcPKN4objc14ClassHashTableERN5dyld33MapItNSt3__14pairIS0_PKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS8_IS2_NSB_10BindTargetENS7_11HashCStringENS7_12EqualCStringEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke(uint64_t a1, uint64_t a2, unsigned __int16 a3, _BYTE *a4)
{
  v13 = a3;
  result = dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::find<unsigned short>(*(a1 + 32), (*(a1 + 32) + 16), (*(a1 + 32) + 56), 0, &v13);
  if (result != *(*(a1 + 32) + 56) + 32 * *(*(a1 + 32) + 72))
  {
    v8 = result;
    v9 = *(result + 24);
    result = dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::find<char const*>(*(a1 + 40), (*(a1 + 40) + 16), (*(a1 + 40) + 56), 0, (a1 + 48));
    if (result == *(*(a1 + 40) + 56) + 24 * *(*(a1 + 40) + 72))
    {
      if ((*(a1 + 64) & 1) == 0 || (*(v8 + 16) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v10 = (a2 - *(v8 + 8) + *(a1 + 56));
      v11 = *(a1 + 72);
      v12[0] = *(a1 + 48);
      v12[1] = v9;
      v12[2] = v10;
      result = dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::insert(v11 + 168, v12);
    }

    *a4 = 1;
  }

  return result;
}

uint64_t dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::find<unsigned short>(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned __int16 *a5)
{
  v5 = a3[2];
  if (!v5)
  {
    return *a3;
  }

  v6 = *a5;
  v7 = a2[2];
  v8 = (v7 - 1) & v6;
  if (v7 <= v8)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v9 = *a3;
  v10 = 1;
  while (1)
  {
    v11 = *(*a2 + 4 * v8);
    if (v11 == -1)
    {
      return v9 + 32 * v5;
    }

    if (v5 <= v11)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    if (*(v9 + 32 * v11) == v6)
    {
      return v9 + 32 * v11;
    }

    v8 = (v8 + v10++) & (v7 - 1);
    if (v7 <= v8)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ___ZN5dyld4L23protocolIsInSharedCacheEPKcPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEE_block_invoke(uint64_t a1, uint64_t a2, unsigned __int16 a3, _BYTE *a4)
{
  v7 = a3;
  result = dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::find<unsigned short>(*(a1 + 40), (*(a1 + 40) + 16), (*(a1 + 40) + 56), 0, &v7);
  if (result != *(*(a1 + 40) + 56) + 32 * *(*(a1 + 40) + 72))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::insert(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 8);
  if (v6 == *a1)
  {
    v7 = 2 * *(a1 + 32);
    *a1 = 2 * v6;
    size[0] = 0;
    memset(v32, 0, sizeof(v32));
    if (v7)
    {
      dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v32, v7);
      do
      {
        v35 = -1;
        dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v32, &v35);
        --v7;
      }

      while (v7);
    }

    if (*(a1 + 72))
    {
      v8 = 0;
      do
      {
        if ((*(dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v8) + 48) & 6) == 0)
        {
          v9 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v8);
          v10 = murmurHash(*v9, *(v9 + 8), 0);
          v11 = (*&v32[1] - 1) & v10;
          if (*dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v32, v11) != -1)
          {
            v12 = 1;
            do
            {
              v11 = (*&v32[1] - 1) & (v11 + v12++);
            }

            while (*dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v32, v11) != -1);
          }

          *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](v32, v11) = v8;
        }

        ++v8;
      }

      while (v8 != *(a1 + 72));
    }

    if ((a1 + 16) == v32)
    {
      *&v32[1] = 0;
      if (*(&v32[1] + 1))
      {
        vm_deallocate(mach_task_self_, *(&v32[1] + 1), size[0]);
      }
    }

    else
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        vm_deallocate(mach_task_self_, v13, *(a1 + 48));
      }

      *(a1 + 16) = *&v32[0];
      *(a1 + 24) = *(v32 + 8);
      v14 = size[0];
      *(a1 + 40) = *(&v32[1] + 1);
      *(a1 + 48) = v14;
    }
  }

  v15 = (*(a1 + 32) - 1) & murmurHash(*a2, *(a2 + 8), 0);
  v16 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15);
  if (v16 == -1)
  {
LABEL_24:
    v17 = (a1 + 56);
    v21 = *(a1 + 72);
    *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15) = v21;
    ++*(a1 + 8);
    v22 = *(a2 + 16);
    v32[0] = *a2;
    v32[1] = v22;
    *size = *(a2 + 32);
    v34 = 0;
    dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::push_back((a1 + 56), v32);
    *a3 = 0;
    v23 = *(a1 + 72);
    if (!v23)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }
  }

  else
  {
    v17 = (a1 + 56);
    v18 = 1;
    while (1)
    {
      v19 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v16);
      v20 = *(v19 + 8);
      if (v20 == *(a2 + 8) && !_platform_memcmp(*v19, *a2, v20))
      {
        break;
      }

      v15 = (*(a1 + 32) - 1) & (v15 + v18++);
      v16 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[]((a1 + 16), v15);
      if (v16 == -1)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v24 = *(dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[]((a1 + 56), v16) + 48);
      v25 = (a1 + 56);
      if ((v24 & 3) == 0)
      {
        break;
      }

      v16 = *(dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[](v25, v16) + 48) >> 3;
    }

    v26 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[](v25, v16);
    v27 = *(v26 + 48);
    if ((v27 & 7) != 0)
    {
      if ((v27 & 4) == 0)
      {
        dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::insert();
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v26 + 48) = v28;
      v29 = v28 & 3 | (8 * *(a1 + 72));
    }

    else
    {
      *(v26 + 48) = v27 | 1;
      v29 = (8 * *(a1 + 72)) | 1;
    }

    *(v26 + 48) = v29;
    v30 = *(a2 + 16);
    v32[0] = *a2;
    v32[1] = v30;
    *size = *(a2 + 32);
    v34 = 4;
    dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::push_back((a1 + 56), v32);
    *a3 = 1;
    v23 = *(a1 + 72);
    if (!v23)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }
  }

  return *v17 + 56 * v23 - 56;
}

vm_address_t dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[](vm_address_t *address, vm_address_t a2)
{
  v4 = address[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && address[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::growTo(address, a2 + 1);
    }

    address[2] = v5;
  }

  return *address + 56 * a2;
}

const char **dyld3::MapBase<char const*,dyld4::Loader::BindTarget,dyld3::HashCString,dyld3::EqualCString>::const_find<char const*>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, const char **a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  v8 = *a5;
  v9 = _platform_strlen(*a5);
  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v23, v8, v9);
  v11 = a2[2];
  v12 = v11 - 1;
  v13 = v10 & (v11 - 1);
  if (v11 <= v13)
  {
LABEL_8:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v14 = *a2;
  v15 = a3[2];
  v16 = *a3;
  v17 = 1;
  v18 = *a5;
  while (1)
  {
    v19 = *(v14 + 4 * v13);
    if (v19 == -1)
    {
      return (v16 + 24 * v15);
    }

    if (v15 <= v19)
    {
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v20 = (v16 + 24 * v19);
    if (!_platform_strcmp(*v20, v18))
    {
      return v20;
    }

    v21 = v13 + v17++;
    v13 = v21 & v12;
    if (v11 <= (v21 & v12))
    {
      goto LABEL_8;
    }
  }
}

uint64_t dyld3::MapBase<VMOffset,unsigned int,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetHash,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual>::find<VMOffset>(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  if ((*(a5 + 8) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = a2[2];
  v9 = (v8 - 1) & *a5;
  if (v8 <= v9)
  {
LABEL_9:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v10 = 1;
  while (1)
  {
    v11 = *(*a2 + 4 * v9);
    v12 = a3[2];
    if (v11 == -1)
    {
      return *a3 + 24 * v12;
    }

    if (v12 <= v11)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    if (dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual::equal(*a3 + 24 * v11, a5))
    {
      break;
    }

    v13 = a2[2];
    v9 = (v13 - 1) & (v9 + v10++);
    if (v13 <= v9)
    {
      goto LABEL_9;
    }
  }

  if (a3[2] <= v11)
  {
    ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
  }

  return *a3 + 24 * v11;
}

BOOL dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual::equal(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0 || (*(a2 + 8) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  return *a1 == *a2;
}

void *dyld3::OverflowSafeArray<BOOL,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, address[2]);
  v9 = address[4];
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

uint64_t ___ZN5dyld4L37forEachClassSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke(void *a1, int *a2)
{
  objc_visitor::Method::getNameVMAddr(a2, a1[5]);
  v5 = v4;
  objc_visitor::Method::getNameField(a2, a1[5], v10);
  metadata_visitor::ResolvedValue::vmAddress(v10);
  v7 = v6;
  objc_visitor::Method::getName(a2, a1[5]);
  if ((v5 & 1) == 0 || (v7 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = a1[6];
  return (*(a1[4] + 16))();
}

uint64_t ___ZN5dyld4L40forEachCategorySelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke(void *a1, int *a2)
{
  objc_visitor::Method::getNameVMAddr(a2, a1[5]);
  v5 = v4;
  objc_visitor::Method::getNameField(a2, a1[5], v10);
  metadata_visitor::ResolvedValue::vmAddress(v10);
  v7 = v6;
  objc_visitor::Method::getName(a2, a1[5]);
  if ((v5 & 1) == 0 || (v7 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = a1[6];
  return (*(a1[4] + 16))();
}

uint64_t ___ZN5dyld4L40forEachCategorySelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_2(uint64_t a1, objc_visitor::MethodList *this)
{
  result = objc_visitor::MethodList::numMethods(this);
  if (result)
  {
    result = objc_visitor::MethodList::usesRelativeOffsets(this);
    if ((result & 1) == 0)
    {
      result = objc_visitor::MethodList::numMethods(this);
      if (result)
      {
        v5 = result;
        for (i = 0; i != v5; ++i)
        {
          Method = objc_visitor::MethodList::getMethod(this, *(a1 + 40), i, &v8);
          result = (*(*(a1 + 32) + 16))(Method);
        }
      }
    }
  }

  return result;
}

uint64_t ___ZN5dyld4L40forEachCategorySelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_3(uint64_t a1, lsl::Allocator::Pool *a2)
{
  objc_visitor::Category::getInstanceMethods(a2, *(a1 + 40), v6);
  objc_visitor::Category::getClassMethods(a2, *(a1 + 40), &v5);
  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 32) + 16))();
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN5dyld4L12getImageInfoER11DiagnosticsRNS_12RuntimeStateEPKNS_6LoaderEPKN6mach_o6HeaderE_block_invoke(void *a1, void *a2, _BYTE *a3)
{
  if (std::string_view::starts_with[abi:nn200100](a2 + 2, "__DATA") && a2[1] == 16 && **a2 == 0x695F636A626F5F5FLL && *(*a2 + 8) == 0x6F666E696567616DLL)
  {
    if (a2[8] == 8)
    {
      v8 = a1[5];
      v9 = a1[6];
      v10 = a1[7];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = ___ZN5dyld4L12getImageInfoER11DiagnosticsRNS_12RuntimeStateEPKNS_6LoaderEPKN6mach_o6HeaderE_block_invoke_2;
      v11[3] = &unk_A30E0;
      v11[4] = a1[4];
      v11[5] = a2;
      dyld4::Loader::withLayout(v8, v9, v10, v11);
    }

    *a3 = 1;
  }
}

uint64_t ___ZN5dyld4L12getImageInfoER11DiagnosticsRNS_12RuntimeStateEPKNS_6LoaderEPKN6mach_o6HeaderE_block_invoke_2(uint64_t result, mach_o::Layout *this)
{
  v2 = *(result + 40);
  v3 = (*(this + 1) + 48 * *(v2 + 32));
  v4 = *(v2 + 56);
  if ((*(v3[4] + v4 - *v3 + 4) & 0x80) == 0)
  {
    v5 = result;
    result = mach_o::Layout::textUnslidVMAddr(this);
    v6 = *(*(v5 + 32) + 8);
    v7 = *(v6 + 56);
    *(v6 + 40) = v4 - result;
    *(v6 + 48) = 1;
    if ((v7 & 1) == 0)
    {
      *(v6 + 56) = 1;
    }
  }

  return result;
}

void *objc::objc_headeropt_ro_t<unsigned long long>::get(unsigned int *a1, uint64_t a2, char *a3)
{
  if ((*a1 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  while (1)
  {
    v5 = v3 + v4;
    if (*a1 <= (v3 + v4) >> 1)
    {
      objc::objc_headeropt_ro_t<unsigned long long>::get();
    }

    v6 = v5 >> 1;
    v7 = (a1 + a1[1] * (v5 >> 1) + 8);
    v8 = v7 + a2 - a1 + *v7;
    if (v8 == a3)
    {
      break;
    }

    if (v8 <= a3)
    {
      v3 = v6 + 1;
    }

    else
    {
      v4 = v6 - 1;
    }

    if (v3 > v4)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t objc::objc_headeropt_ro_t<unsigned long long>::index(_DWORD *a1, unint64_t a2)
{
  if (!*a1)
  {
    objc::objc_headeropt_ro_t<unsigned long long>::get();
  }

  v2 = a1 + 2;
  if ((a1 + 2) > a2 || (v3 = a1[1], v2 + (v3 * *a1) <= a2))
  {
    objc::objc_headeropt_ro_t<unsigned long long>::index();
  }

  return (a2 - v2) / v3;
}

int *objc::objc_headeropt_ro_t<unsigned int>::get(unsigned int *a1, uint64_t a2, char *a3)
{
  if ((*a1 & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  while (1)
  {
    v5 = v3 + v4;
    if (*a1 <= (v3 + v4) >> 1)
    {
      objc::objc_headeropt_ro_t<unsigned long long>::get();
    }

    v6 = v5 >> 1;
    v7 = (a1 + a1[1] * (v5 >> 1) + 8);
    v8 = v7 + a2 - a1 + *v7;
    if (v8 == a3)
    {
      break;
    }

    if (v8 <= a3)
    {
      v3 = v6 + 1;
    }

    else
    {
      v4 = v6 - 1;
    }

    if (v3 > v4)
    {
      return 0;
    }
  }

  return v7;
}

__n128 __Block_byref_object_copy__78(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

void ___ZN5dyld4L19optimizeObjCClassesERNS_12RuntimeStateEPKN4objc14ClassHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS7_IPKcNSB_10BindTargetENS6_11HashCStringENS6_12EqualCStringEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke(uint64_t a1, objc_visitor::Class *a2)
{
  if ((objc_visitor::Class::isRootClass(a2, (*(*(a1 + 32) + 8) + 40)) & 1) == 0)
  {
    objc_visitor::Class::getSuperclassField(a2, (*(*(a1 + 32) + 8) + 40), v15);
    metadata_visitor::ResolvedValue::vmAddress(v15);
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    if (!*lsl::Allocator::Pool::allocator(v15))
    {
      Name = objc_visitor::Class::getName(a2, (*(*(a1 + 32) + 8) + 40));
      v13 = *(a1 + 40);
      v14 = dyld4::JustInTimeLoader::path(*v13, *(a1 + 48));
      Diagnostics::error((v13 + 4), "Missing weak superclass of class %s in %s", Name, v14);
      return;
    }
  }

  if (objc_visitor::Class::isUnfixedBackwardDeployingStableSwift(a2, (*(*(a1 + 32) + 8) + 40)))
  {
    *(*(a1 + 40) + 604) = 1;
  }

  VMAddress = objc_visitor::Class::getVMAddress(a2);
  v7 = v6;
  NameVMAddr = objc_visitor::Class::getNameVMAddr(a2, (*(*(a1 + 32) + 8) + 40));
  v10 = v9;
  v11 = objc_visitor::Class::getName(a2, (*(*(a1 + 32) + 8) + 40));
  if ((v7 & 1) == 0 || (v10 & 1) == 0)
  {
LABEL_11:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  dyld4::PrebuiltObjC::ObjCOptimizerImage::visitClass(*(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), VMAddress, 1, NameVMAddr, 1, v11);
}

void ___ZN5dyld4L21optimizeObjCProtocolsERNS_12RuntimeStateEPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke(uint64_t a1, lsl::Allocator::Pool *a2, _BYTE *a3)
{
  objc_visitor::Protocol::getISAVMAddr(a2, *(*(a1 + 32) + 8) + 40, v13);
  if (v13[16] == 1)
  {
    Diagnostics::error((*(a1 + 40) + 32), "Protocol ISA must be null");
    *a3 = 1;
  }

  else
  {
    VMAddress = objc_visitor::Protocol::getVMAddress(a2);
    v8 = v7;
    NameVMAddr = objc_visitor::Protocol::getNameVMAddr(a2, (*(*(a1 + 32) + 8) + 40));
    v11 = v10;
    Name = objc_visitor::Protocol::getName(a2, (*(*(a1 + 32) + 8) + 40));
    if ((v8 & 1) == 0 || (v11 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    dyld4::PrebuiltObjC::ObjCOptimizerImage::visitProtocol(*(a1 + 40), *(a1 + 48), *(a1 + 56), VMAddress, 1, NameVMAddr, 1, Name);
  }
}

void *___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 24) == 6)
  {
    v3 = *(a2 + 16);
    v4 = *v3;
    v5 = *(v3 + 2);
    if (v4 == 1112498015 && v5 == 17226)
    {
      v8 = result;
      result = *a2;
      v9 = *(a2 + 8);
      switch(v9)
      {
        case 0xAuLL:
          v11 = "__protocol";
          break;
        case 0xEuLL:
          v11 = "__message_refs";
          break;
        case 0xDuLL:
          if (*result != 0x656C75646F6D5F5FLL || *(result + 5) != 0x6F666E695F656C75)
          {
            return result;
          }

LABEL_19:
          *(*(v8[4] + 8) + 24) = 1;
          *a3 = 1;
          return result;
        default:
          return result;
      }

      result = _platform_memcmp(result, v11, v9);
      if (result)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_2(void *a1, _DWORD *a2, _BYTE *a3)
{
  result = objc_visitor::Method::getNameSelRefVMAddr(a2, *(a1[4] + 8) + 40);
  v7 = a1[5];
  if ((*(v7 + 24) & 1) == 0 || (v6 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v8 = result - *(v7 + 16);
  if (v8 < a1[6] || v8 >= a1[7])
  {
    result = Diagnostics::error((v7 + 32), "Cannot handle relative method list pointing outside of __objc_selrefs");
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_3(uint64_t a1, objc_visitor::MethodList *this, _BYTE *a3)
{
  result = objc_visitor::MethodList::numMethods(this);
  if (result)
  {
    result = objc_visitor::MethodList::usesRelativeOffsets(this);
    if (result)
    {
      result = objc_visitor::MethodList::numMethods(this);
      if (result)
      {
        v7 = result;
        for (i = 0; i != v7; ++i)
        {
          Method = objc_visitor::MethodList::getMethod(this, *(*(a1 + 40) + 8) + 40, i, &v10);
          result = (*(*(a1 + 32) + 16))(Method);
        }
      }
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_4(void *a1, uint64_t a2)
{
  objc_visitor::Class::getBaseMethods(a2, (*(a1[5] + 8) + 40), &v5);
  v3 = *(a1[6] + 8);
  return (*(a1[4] + 16))();
}

uint64_t ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_5(void *a1, lsl::Allocator::Pool *a2, _BYTE *a3)
{
  objc_visitor::Category::getInstanceMethods(a2, (*(a1[5] + 8) + 40), v10);
  objc_visitor::Category::getClassMethods(a2, (*(a1[5] + 8) + 40), &v9);
  v6 = *(a1[6] + 8);
  result = (*(a1[4] + 16))();
  if ((*a3 & 1) == 0)
  {
    v8 = *(a1[6] + 8);
    return (*(a1[4] + 16))();
  }

  return result;
}

uint64_t ___ZN5dyld4L21optimizeObjCSelectorsERNS_12RuntimeStateEPKN4objc17SelectorHashTableERN5dyld33MapIN13prebuilt_objc13ObjCStringKeyENS8_20ObjCSelectorLocationENS8_17HashObjCStringKeyENS8_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_6(void *a1, lsl::Allocator::Pool *a2, _BYTE *a3)
{
  objc_visitor::Category::getClassMethods(a2, (*(a1[5] + 8) + 40), v14);
  objc_visitor::Protocol::getClassMethods(a2, (*(a1[5] + 8) + 40), v13);
  objc_visitor::Protocol::getOptionalInstanceMethods(a2, (*(a1[5] + 8) + 40), v12);
  objc_visitor::Protocol::getOptionalClassMethods(a2, (*(a1[5] + 8) + 40), &v11);
  v6 = *(a1[6] + 8);
  result = (*(a1[4] + 16))();
  if ((*a3 & 1) == 0)
  {
    v8 = *(a1[6] + 8);
    result = (*(a1[4] + 16))();
    if ((*a3 & 1) == 0)
    {
      v9 = *(a1[6] + 8);
      result = (*(a1[4] + 16))();
      if ((*a3 & 1) == 0)
      {
        v10 = *(a1[6] + 8);
        return (*(a1[4] + 16))();
      }
    }
  }

  return result;
}

void ___ZN5dyld4L30optimizeObjCProtocolReferencesERNS_12RuntimeStateEPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS6_8MultiMapIN13prebuilt_objc13ObjCStringKeyENSK_18ObjCObjectLocationENSK_17HashObjCStringKeyENSK_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke(uint64_t a1, uint64_t **a2)
{
  if (!Diagnostics::hasError((*(a1 + 40) + 32)))
  {
    metadata_visitor::Visitor::resolveRebase(*(*(a1 + 32) + 8) + 40, a2, &v22);
    v20 = v22;
    v21 = v23;
    Name = objc_visitor::Protocol::getName(&v20, (*(*(a1 + 32) + 8) + 40));
    v13 = 0;
    v14 = &v13;
    v15 = 0x3802000000;
    v16 = __Block_byref_object_copy__102;
    v17 = __Block_byref_object_dispose__103;
    v18 = 0;
    v19 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = ___ZN5dyld4L30optimizeObjCProtocolReferencesERNS_12RuntimeStateEPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS6_8MultiMapIN13prebuilt_objc13ObjCStringKeyENSK_18ObjCObjectLocationENSK_17HashObjCStringKeyENSK_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_104;
    v12[3] = &unk_A3290;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v12[4] = &v13;
    v12[5] = v6;
    objc::ObjectHashTable::forEachObject(v5, Name, v12);
    if (*(v14 + 48) == 1)
    {
      v11[0] = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(v14[5]);
      dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back((*(a1 + 40) + 496), v11);
    }

    else
    {
      v11[0] = Name;
      v11[1] = _platform_strlen(Name);
      v7 = dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::find(*(a1 + 64), v11);
      v8 = *(*(a1 + 64) + 56) + 56 * *(*(a1 + 64) + 72);
      v9 = *(a1 + 40);
      if (v7 == v8)
      {
        Diagnostics::error((v9 + 32), "Could not find protocol '%s'", Name);
      }

      else
      {
        dyld4::PrebuiltLoader::BindTargetRef::BindTargetRef(&v10, v7 + 2);
        dyld3::OverflowSafeArray<dyld4::PrebuiltLoader::BindTargetRef,4294967295ull>::push_back((v9 + 496), &v10);
      }
    }

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

uint64_t ___ZN5dyld4L30optimizeObjCProtocolReferencesERNS_12RuntimeStateEPKN4objc17ProtocolHashTableERN5dyld33MapItNSt3__14pairI9VMAddressPKNS_6LoaderEEENS_10HashUInt16ENS_11EqualUInt16EEERNS6_8MultiMapIN13prebuilt_objc13ObjCStringKeyENSK_18ObjCObjectLocationENSK_17HashObjCStringKeyENSK_18EqualObjCStringKeyEEERNS_12PrebuiltObjC18ObjCOptimizerImageE_block_invoke_104(uint64_t a1, uint64_t a2, unsigned __int16 a3, _BYTE *a4)
{
  v9 = a3;
  result = dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::find<unsigned short>(*(a1 + 40), (*(a1 + 40) + 16), (*(a1 + 40) + 56), 0, &v9);
  if (result != *(*(a1 + 40) + 56) + 32 * *(*(a1 + 40) + 72))
  {
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 40) = a2;
    *(v8 + 48) = 1;
    *a4 = 1;
  }

  return result;
}

vm_address_t dyld3::MultiMap<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::find(vm_address_t *a1, uint64_t a2)
{
  v4 = (a1[4] - 1) & murmurHash(*a2, *(a2 + 8), 0);
  v5 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](a1 + 2, v4);
  if (v5 == -1)
  {
    return a1[7] + 56 * a1[9];
  }

  for (i = 1; ; ++i)
  {
    v7 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[](a1 + 7, v5);
    v8 = *(v7 + 8);
    if (v8 == *(a2 + 8) && !_platform_memcmp(*v7, *a2, v8))
    {
      break;
    }

    v4 = (a1[4] - 1) & (v4 + i);
    v5 = *dyld3::OverflowSafeArray<void const*,4294967295ull>::operator[](a1 + 2, v4);
    if (v5 == -1)
    {
      return a1[7] + 56 * a1[9];
    }
  }

  return dyld3::OverflowSafeArray<dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::NodeEntryT,4294967295ull>::operator[](a1 + 7, v5);
}

uint64_t dyld3::MultiMapBase<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::forEachEntry(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3[2];
  if (v8)
  {
    v11 = *a3;
    v12 = *a3 + 24 * v8;
    v31 = vdupq_n_s64(1uLL);
    do
    {
      v13 = *(v11 + 16);
      if ((v13 & 7) != 0)
      {
        if (v13)
        {
          v14 = a3[2];
          if (v14 <= v13 >> 3)
          {
LABEL_22:
            dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
          }

          v15 = v13 >> 3;
          v16 = 2;
          v17 = 16;
          while (1)
          {
            v18 = *(*a3 + 24 * v15 + 16);
            if ((v18 & 3) == 0)
            {
              break;
            }

            v15 = v18 >> 3;
            v17 += 8;
            ++v16;
            if (v14 <= v18 >> 3)
            {
              goto LABEL_22;
            }
          }

          __chkstk_darwin(result, a2, a3, a4, a5, a6, a7, a8, v31.i64[0]);
          v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
          v22 = (v31.i64 - v21);
          if (v19 >= 0x200)
          {
            v23 = 512;
          }

          else
          {
            v23 = v19;
          }

          bzero(&v31 - v21, v23);
          *v22 = v11 + 8;
          v24 = a3[2];
          v25 = *(v11 + 16);
          if (v24 <= v25 >> 3)
          {
LABEL_23:
            dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
          }

          v26 = v25 >> 3;
          v27 = *a3;
          v28 = 1;
          while (1)
          {
            v29 = v27 + 24 * v26;
            v30 = *(v29 + 16);
            v22[v28] = v29 + 8;
            if ((v30 & 3) == 0)
            {
              break;
            }

            v26 = *(v29 + 16) >> 3;
            ++v28;
            if (v24 <= v26)
            {
              goto LABEL_23;
            }
          }

          v32 = v22;
          v33.i64[0] = v28 + 1;
          v33.i64[1] = v28 + 1;
          result = (*(a4 + 16))(a4, v11, &v32);
        }
      }

      else
      {
        v34 = v11 + 8;
        v32 = &v34;
        v33 = v31;
        result = (*(a4 + 16))(a4, v11, &v32);
      }

      v11 += 24;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t dyld3::MapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCSelectorLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::find<prebuilt_objc::ObjCStringKey>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a3[2])
  {
    return *a3;
  }

  v8 = murmurHash(*a5, *(a5 + 8), 0);
  v9 = a2[2];
  v10 = v9 - 1;
  v11 = v8 & (v9 - 1);
  if (v9 <= v11)
  {
LABEL_9:
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v12 = *a2;
  v13 = a3[2];
  v14 = *a3;
  v15 = 1;
  v18 = a5;
  v17 = *a5;
  v16 = *(v18 + 8);
  while (1)
  {
    v19 = *(v12 + 4 * v11);
    if (v19 == -1)
    {
      return v14 + 32 * v13;
    }

    if (v13 <= v19)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_2_cold_1();
    }

    v20 = v14 + 32 * v19;
    if (*(v20 + 8) == v16 && !_platform_memcmp(*v20, v17, v16))
    {
      return v20;
    }

    v21 = v11 + v15++;
    v11 = v21 & v10;
    if (v9 <= (v21 & v10))
    {
      goto LABEL_9;
    }
  }
}

void *dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCObject,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 40 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 40 * address[2]);
  v9 = address[4] / 0x28;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

vm_address_t dyld3::Map<VMOffset,unsigned int,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetHash,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual>::insert(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v5 = 2 * *(a1 + 32);
    *a1 = 2 * v4;
    size = 0;
    memset(v20, 0, sizeof(v20));
    if (v5)
    {
      dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo(v20, v5);
      do
      {
        v19 = -1;
        dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v20, &v19);
        --v5;
      }

      while (v5);
    }

    if (*(a1 + 72))
    {
      v6 = 0;
      while (1)
      {
        v7 = dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v6);
        if ((*(v7 + 8) & 1) == 0)
        {
          break;
        }

        v8 = (v20[2] - 1) & *v7;
        if (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v20, v8) != -1)
        {
          v9 = 1;
          do
          {
            v8 = (v20[2] - 1) & (v8 + v9++);
          }

          while (*dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v20, v8) != -1);
        }

        *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[](v20, v8) = v6++;
        if (v6 == *(a1 + 72))
        {
          goto LABEL_12;
        }
      }

LABEL_27:
      std::__throw_bad_optional_access[abi:nn200100]();
    }

LABEL_12:
    if ((a1 + 16) == v20)
    {
      v20[2] = 0;
      if (v20[3])
      {
        vm_deallocate(mach_task_self_, v20[3], size);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        vm_deallocate(mach_task_self_, v10, *(a1 + 48));
      }

      *(a1 + 16) = v20[0];
      *(a1 + 24) = *&v20[1];
      v11 = size;
      *(a1 + 40) = v20[3];
      *(a1 + 48) = v11;
    }
  }

  if ((a2->n128_u8[8] & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = (*(a1 + 32) - 1) & a2->n128_u64[0];
  v13 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12);
  if (v13 == -1)
  {
LABEL_23:
    v16 = *(a1 + 72);
    *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12) = v16;
    ++*(a1 + 8);
    dyld3::OverflowSafeArray<dyld3::MapBase<VMOffset,unsigned int,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetHash,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual>::NodeImplT<false>,4294967295ull>::push_back((a1 + 56), a2);
    v17 = *(a1 + 72);
    if (!v17)
    {
      ___ZN5dyld412RuntimeState23appendInterposingTuplesEPKNS_6LoaderEPKhj_block_invoke_66_cold_1();
    }

    return *(a1 + 56) + 24 * v17 - 24;
  }

  else
  {
    v14 = 1;
    while (1)
    {
      v15 = dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v13);
      if (dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual::equal(v15, a2))
      {
        return dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::operator[]((a1 + 56), v13);
      }

      v12 = (*(a1 + 32) - 1) & (v12 + v14++);
      v13 = *dyld3::OverflowSafeArray<unsigned int,4294967295ull>::operator[]((a1 + 16), v12);
      if (v13 == -1)
      {
        goto LABEL_23;
      }
    }
  }
}

__n128 dyld3::OverflowSafeArray<dyld3::MapBase<VMOffset,unsigned int,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetHash,dyld4::PrebuiltObjC::ObjCOptimizerImage::VMOffsetEqual>::NodeImplT<false>,4294967295ull>::push_back(vm_address_t *address, __n128 *a2)
{
  v4 = address[2];
  v5 = v4 + 1;
  if (v4 + 1 > address[1])
  {
    dyld3::OverflowSafeArray<dyld3::MapBase<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::NodeImplT<false>,4294967295ull>::growTo(address, v5);
    v4 = address[2];
    v5 = v4 + 1;
  }

  v6 = *address;
  address[2] = v5;
  v7 = (v6 + 24 * v4);
  result = *a2;
  v7[1].n128_u32[0] = a2[1].n128_u32[0];
  *v7 = result;
  return result;
}

uint64_t dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCImageFixups,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v4 = address + 3;
  v3 = address[3];
  v6 = (address + 4);
  v5 = address[4];
  v7 = 2 * address[1];
  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (vm_page_size + 216 * v7 - 1) & -vm_page_size;
  *v6 = v8;
  result = vm_allocate(mach_task_self_, v4, v8, 1006632961);
  if (result)
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v27, v6);
  }

  v10 = address[3];
  if (address[2])
  {
    v11 = 0;
    v12 = 208;
    do
    {
      v13 = (v10 + v12);
      v14 = (*address + v12);
      v15 = *(v14 - 12);
      *(v13 - 13) = *(v14 - 13);
      *(v13 - 12) = v15;
      v16 = *(v14 - 11);
      v17 = *(v14 - 10);
      v18 = *(v14 - 8);
      *(v13 - 9) = *(v14 - 9);
      *(v13 - 8) = v18;
      *(v13 - 11) = v16;
      *(v13 - 10) = v17;
      *(v13 - 7) = 0uLL;
      *(v13 - 6) = 0uLL;
      *(v13 - 10) = 0;
      *(v13 - 14) = *(v14 - 14);
      *(v13 - 13) = *(v14 - 13);
      v19 = *(v14 - 10);
      *(v13 - 11) = *(v14 - 11);
      *(v13 - 10) = v19;
      *(v14 - 10) = 0;
      *(v14 - 7) = 0uLL;
      *(v14 - 6) = 0uLL;
      *(v13 - 5) = 0;
      *(v13 - 7) = 0uLL;
      *(v13 - 9) = 0uLL;
      v20 = *(v14 - 9);
      *(v13 - 4) = *(v14 - 4);
      v21 = *(v14 - 6);
      *(v13 - 9) = v20;
      v22 = *(v14 - 5);
      *(v13 - 6) = v21;
      *(v13 - 5) = v22;
      *(v14 - 5) = 0;
      *(v14 - 7) = 0uLL;
      *(v14 - 9) = 0uLL;
      *v13 = 0;
      *(v13 - 2) = 0uLL;
      *(v13 - 1) = 0uLL;
      v23 = *(v14 - 3);
      *(v13 - 4) = *(v14 - 4);
      *(v13 - 3) = v23;
      v24 = *v14;
      *(v13 - 1) = *(v14 - 1);
      *v13 = v24;
      *v14 = 0;
      *(v14 - 2) = 0uLL;
      *(v14 - 1) = 0uLL;
      ++v11;
      v12 += 216;
    }

    while (v11 != address[2]);
    v10 = *v4;
  }

  v25 = address[4] / 0xD8;
  *address = v10;
  address[1] = v25;
  if (v3)
  {
    v26 = mach_task_self_;

    return vm_deallocate(v26, v3, v5);
  }

  return result;
}

uint64_t dyld3::Map<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::Map(uint64_t a1)
{
  *(a1 + 16) = 0u;
  v2 = (a1 + 16);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = xmmword_8BFE0;
  v3 = 32;
  dyld3::OverflowSafeArray<unsigned int,4294967295ull>::growTo((a1 + 16), 0x20uLL);
  do
  {
    v5 = -1;
    dyld3::OverflowSafeArray<unsigned int,4294967295ull>::push_back(v2, &v5);
    --v3;
  }

  while (v3);
  if (*(a1 + 64) <= 0x1FuLL)
  {
    dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::growTo((a1 + 56), 0x20uLL);
  }

  return a1;
}

uint64_t dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v4 = address + 3;
  v3 = address[3];
  v6 = (address + 4);
  v5 = address[4];
  v7 = 2 * address[1];
  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (vm_page_size + 32 * v7 - 1) & -vm_page_size;
  *v6 = v8;
  result = vm_allocate(mach_task_self_, v4, v8, 1006632961);
  if (result)
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v18, v6);
  }

  v10 = address[3];
  if (address[2])
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v10 + v11);
      v14 = (*address + v11);
      v15 = v14[1];
      *v13 = *v14;
      v13[1] = v15;
      ++v12;
      v11 += 32;
    }

    while (v12 != address[2]);
    v10 = *v4;
  }

  v16 = address[4] >> 5;
  *address = v10;
  address[1] = v16;
  if (v3)
  {
    v17 = mach_task_self_;

    return vm_deallocate(v17, v3, v5);
  }

  return result;
}

vm_address_t dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::operator[](vm_address_t *address, vm_address_t a2)
{
  v4 = address[2];
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5 && address[1] < v5)
    {
      dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::growTo(address, a2 + 1);
    }

    address[2] = v5;
  }

  return *address + 32 * a2;
}

__n128 dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::push_back(vm_address_t *address, uint64_t a2)
{
  v4 = address[2];
  v5 = v4 + 1;
  if (v4 + 1 > address[1])
  {
    dyld3::OverflowSafeArray<dyld3::MapBase<unsigned short,std::pair<VMAddress,dyld4::Loader const*>,dyld4::HashUInt16,dyld4::EqualUInt16>::NodeImplT<false>,4294967295ull>::growTo(address, v5);
    v4 = address[2];
    v5 = v4 + 1;
  }

  v6 = *address;
  address[2] = v5;
  v7 = v6 + 32 * v4;
  *v7 = *a2;
  result = *(a2 + 8);
  *(v7 + 8) = result;
  *(v7 + 24) = *(a2 + 24);
  return result;
}

uint64_t dyld3::OverflowSafeArray<dyld4::PrebuiltObjC::ObjCOptimizerImage,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v4 = address + 3;
  v3 = address[3];
  v6 = (address + 4);
  v5 = address[4];
  v7 = 2 * address[1];
  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (vm_page_size + 632 * v7 - 1) & -vm_page_size;
  *v6 = v8;
  result = vm_allocate(mach_task_self_, v4, v8, 1006632961);
  if (result)
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v15, v6);
  }

  v10 = address[3];
  if (address[2])
  {
    v11 = 0;
    v12 = 0;
    do
    {
      result = dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCOptimizerImage(v10 + v11, *address + v11);
      ++v12;
      v11 += 632;
    }

    while (v12 != address[2]);
    v10 = *v4;
  }

  v13 = address[4] / 0x278;
  *address = v10;
  address[1] = v13;
  if (v3)
  {
    v14 = mach_task_self_;

    return vm_deallocate(v14, v3, v5);
  }

  return result;
}

uint64_t dyld4::PrebuiltObjC::ObjCOptimizerImage::ObjCOptimizerImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  Diagnostics::Diagnostics((a1 + 32), (a2 + 32));
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v7;
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v8 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v8;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  v9 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = v9;
  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  v10 = *(a2 + 312);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = v10;
  *(a2 + 312) = 0;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  v11 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v11;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  v12 = *(a2 + 392);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = v12;
  *(a2 + 392) = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  v13 = *(a2 + 400);
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 400) = v13;
  v14 = *(a2 + 424);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = v14;
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = 0;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  v15 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v15;
  *(a2 + 488) = 0;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  v16 = *(a2 + 504);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = v16;
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 528) = 0;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  v17 = *(a2 + 616);
  v19 = *(a2 + 568);
  v18 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 616) = v17;
  *(a1 + 568) = v19;
  *(a1 + 584) = v18;
  v20 = *(a2 + 552);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 552) = v20;
  return a1;
}

uint64_t *dyld4::ExternallyViewableState::removeImages(uint64_t a1, uint64_t a2, lsl::Allocator *a3, uint64_t a4)
{
  v7 = mach_absolute_time();
  v8 = *(a1 + 24);
  if (v7 <= v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 24) = v9;
  v48 = a3;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(&v48, *(a4 + 8));
  v46 = 0;
  v47 = 0;
  v44 = a3;
  v45 = 0;
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(&v44, *(*(a1 + 40) + 16) - *(a4 + 8));
  v10 = *(a1 + 40);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + 8);
    v13 = &v12[3 * v11];
    do
    {
      v14 = *(a4 + 8);
      if (v14)
      {
        v15 = *a4;
        v16 = 8 * v14;
        while (*v12 != *v15)
        {
          ++v15;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_10;
          }
        }

        v17 = &v48;
      }

      else
      {
LABEL_10:
        v17 = &v44;
      }

      lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(v17, v17[2] + 1);
      v18 = v17[1];
      v19 = v17[2];
      v17[2] = v19 + 1;
      v20 = v18 + 24 * v19;
      v21 = *v12;
      *(v20 + 16) = v12[2];
      *v20 = v21;
      v12 += 3;
    }

    while (v12 != v13);
  }

  v42 = 0;
  v43 = 0;
  v40 = a3;
  v41 = 0;
  v22 = *(a1 + 48);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 8);
    v25 = &v24[3 * v23];
    do
    {
      if (v50)
      {
        v26 = v49;
        v27 = 24 * v50;
        while (*v24 != v26->imageLoadAddress)
        {
          ++v26;
          v27 -= 24;
          if (!v27)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(&v40, v42 + 1);
        v28 = v42++;
        v29 = &v41[24 * v28];
        v30 = *v24;
        *(v29 + 2) = v24[2];
        *v29 = v30;
      }

      v24 += 3;
    }

    while (v24 != v25);
  }

  dyld4::ExternallyViewableState::generateAtlas(a1, a3, v39);
  atomic_store(0, (*(a1 + 32) + 8));
  v31 = *(a1 + 40);
  *(*(a1 + 32) + 96) = 0;
  *(v31 + 16) = 0;
  *(*(a1 + 48) + 16) = 0;
  dyld4::ExternallyViewableState::activateAtlas(a1, *a1, v39);
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(*(a1 + 40), v46);
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(*(a1 + 48), v42);
  lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(*(a1 + 40), *(*(a1 + 40) + 8), v45, &v45[24 * v46]);
  lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(*(a1 + 48), *(*(a1 + 48) + 8), v41, &v41[24 * v42]);
  v33 = *(a1 + 24);
  v32 = *(a1 + 32);
  *(v32 + 4) = v46;
  *(v32 + 88) = v42;
  atomic_store(v33, (v32 + 184));
  atomic_store(*(*(a1 + 40) + 8), (*(a1 + 32) + 8));
  *(*(a1 + 32) + 96) = *(*(a1 + 48) + 8);
  result = dyld4::ExternallyViewableState::triggerNotifications(a1, 1, v50, v49, v34, v35, v36, v37);
  if (v39[1])
  {
    result = lsl::Vector<std::byte>::resize(v39, 0);
  }

  if (v41)
  {
    result = lsl::Vector<AAREncoder::File>::resize(&v40, 0);
  }

  if (v45)
  {
    result = lsl::Vector<AAREncoder::File>::resize(&v44, 0);
  }

  if (v49)
  {
    return lsl::Vector<AAREncoder::File>::resize(&v48, 0);
  }

  return result;
}

lsl::Allocator::Pool *PropertyList::Dictionary::addObjectForKey<PropertyList::Data,std::span<std::byte,18446744073709551615ul> &>(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = a1 + 48;
  v8 = *(a1 + 48);
  v9 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x18uLL);
  PropertyList::String::String(v9, v8, a2, a3);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7 - 32, *(v7 - 16) + 1);
  v10 = *(v7 - 24);
  v11 = *(v7 - 16);
  *(v7 - 16) = v11 + 1;
  *(v10 + 8 * v11) = v9;
  v12 = lsl::Allocator::aligned_alloc(v8, 8uLL, 0x30uLL);
  PropertyList::Data::Data(v12, v8, *a4, *(a4 + 8));
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(v7, *(v7 + 16) + 1);
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *(v7 + 16) = v14 + 1;
  *(v13 + 8 * v14) = v12;
  return v12;
}

uint64_t dyld4::ExternallyViewableState::fork_child(uint64_t this)
{
  v1 = *(this + 32);
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  return this;
}

__n128 dyld4::ExternallyViewableState::setRosettaSharedCacheInfo(dyld4::ExternallyViewableState *this, unint64_t a2, __n128 *a3)
{
  v3 = *(this + 4);
  v3[21].n128_u64[1] = a2;
  result = *a3;
  v3[22] = *a3;
  return result;
}

uint64_t dyld4::ExternallyViewableState::addRosettaImages(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if (v5)
  {
    *(*(result + 32) + 328) = 0;
    lsl::Vector<dyld_aot_image_info>::insert<std::__wrap_iter<dyld_aot_image_info const*>>(*(result + 56), *(*(result + 56) + 8), *a2, (*a2 + 56 * v5));
    *(v4[4] + 324) = *(v4[7] + 16);
    result = mach_absolute_time();
    v6 = v4[4];
    *(v6 + 328) = *(v4[7] + 8);
    *(v6 + 336) = result;
  }

  if (*(a3 + 8))
  {
    atomic_store(0, (v4[4] + 8));
    lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(v4[5], *(v4[5] + 8), *a3, (*a3 + 24 * *(a3 + 8)));
    *(v4[4] + 4) = *(v4[5] + 16);
    result = mach_absolute_time();
    atomic_store(result, (v4[4] + 184));
    atomic_store(*(v4[5] + 8), (v4[4] + 8));
  }

  return result;
}