void ___ZNK6mach_o6Header26validStructureLoadCommandsEy_block_invoke(uint64_t a1, mach_o *this, _BYTE *a3)
{
  v5 = *this;
  if (*this > -2147483597)
  {
    switch(v5)
    {
      case 1:
        if (68 * *(this + 12) + 56 == *(this + 1))
        {
          goto LABEL_57;
        }

        v15 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_SEGMENT size does not match number of sections");
        goto LABEL_56;
      case 2:
        if (*(this + 1) == 24)
        {
          goto LABEL_57;
        }

        v19 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_SYMTAB size wrong");
        goto LABEL_56;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 22:
      case 23:
      case 24:
      case 26:
      case 28:
      case 29:
      case 31:
      case 32:
      case 35:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 45:
      case 46:
      case 49:
      case 51:
      case 52:
      case 53:
        goto LABEL_26;
      case 11:
        if (*(this + 1) == 80)
        {
          goto LABEL_57;
        }

        v21 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_DYSYMTAB size wrong");
        goto LABEL_56;
      case 12:
      case 13:
      case 19:
      case 20:
      case 21:
        goto LABEL_13;
      case 25:
        if (80 * *(this + 16) + 72 == *(this + 1))
        {
          goto LABEL_57;
        }

        v20 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_SEGMENT_64 size does not match number of sections");
        goto LABEL_56;
      case 27:
        if (*(this + 1) == 24)
        {
          goto LABEL_57;
        }

        v17 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_UUID size wrong");
        goto LABEL_56;
      case 30:
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v16 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_SEGMENT_SPLIT_INFO size wrong");
        goto LABEL_56;
      case 33:
        if (*(this + 1) == 20)
        {
          goto LABEL_57;
        }

        v24 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_ENCRYPTION_INFO size wrong");
        goto LABEL_56;
      case 34:
        goto LABEL_19;
      case 36:
      case 37:
      case 47:
      case 48:
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v6 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_VERSION_MIN_* size wrong");
        goto LABEL_56;
      case 38:
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v25 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_FUNCTION_STARTS size wrong");
        goto LABEL_56;
      case 44:
        if (*(this + 1) == 24)
        {
          goto LABEL_57;
        }

        v14 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_ENCRYPTION_INFO_64 size wrong");
        goto LABEL_56;
      case 50:
        if (8 * *(this + 5) + 24 == *(this + 1))
        {
          goto LABEL_57;
        }

        v22 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_BUILD_VERSION size wrong");
        goto LABEL_56;
      case 54:
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v18 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_ATOM_INFO size wrong");
        goto LABEL_56;
      case 55:
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v23 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_FUNCTION_VARIANTS size wrong");
        goto LABEL_56;
      case 56:
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v26 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_FUNCTION_VARIANT_FIXUPS size wrong");
        goto LABEL_56;
      default:
        if (v5 != -2147483596)
        {
          if (v5 != -2147483595)
          {
            goto LABEL_26;
          }

          v12 = *(*(*(a1 + 40) + 8) + 24);
          v9 = *(this + 6);
          goto LABEL_14;
        }

        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v27 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_DYLD_CHAINED_FIXUPS size wrong");
        break;
    }

    goto LABEL_56;
  }

  if (v5 <= -2147483615)
  {
    if (v5 == -2147483624 || v5 == -2147483620)
    {
LABEL_13:
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v9 = *(this + 2);
LABEL_14:
      mach_o::stringOverflow(this, v9, &v29);
      goto LABEL_56;
    }

    v7 = -2147483617;
  }

  else
  {
    if (v5 > -2147483609)
    {
      if (v5 == -2147483608)
      {
        if (*(this + 1) == 24)
        {
          goto LABEL_57;
        }

        v13 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_MAIN size wrong");
        goto LABEL_56;
      }

      if (v5 == -2147483597)
      {
        if (*(this + 1) == 16)
        {
          goto LABEL_57;
        }

        v10 = *(*(*(a1 + 40) + 8) + 24);
        mach_o::Error::Error(&v29, "load command #%d LC_DYLD_EXPORTS_TRIE size wrong");
        goto LABEL_56;
      }

      goto LABEL_26;
    }

    if (v5 == -2147483614)
    {
LABEL_19:
      if (*(this + 1) == 48)
      {
        goto LABEL_57;
      }

      v11 = *(*(*(a1 + 40) + 8) + 24);
      mach_o::Error::Error(&v29, "load command #%d LC_DYLD_INFO_ONLY size wrong");
      goto LABEL_56;
    }

    v7 = -2147483613;
  }

  if (v5 == v7)
  {
    goto LABEL_13;
  }

LABEL_26:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  v28 = *(*(*(a1 + 40) + 8) + 24);
  mach_o::Error::Error(&v29, "load command #%d unknown required load command 0x%08X");
LABEL_56:
  mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v29);
  mach_o::Error::~Error(&v29);
LABEL_57:
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

BOOL mach_o::GradedArchitectures::isCompatible(uint64_t a1, _DWORD *a2, int a3)
{
  if (*(a1 + 12) == 1 && a3 == 0)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = 0;
  do
  {
    result = mach_o::Architecture::operator==(a2, *(*a1 + 8 * v6));
    if (result)
    {
      break;
    }

    ++v6;
  }

  while (v6 < *(a1 + 8));
  return result;
}

ssize_t getxattr(const char *path, const char *name, void *value, size_t size, u_int32_t position, int options)
{
  result = mac_syscall(SYS_getxattr, path, name, value, size, position, options);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t *lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (result[3] >= a2)
  {
    if (a2)
    {
      result[2] = a2;
      result[3] = a2;
      v4 = *result;
      v5 = v3[1];

      return lsl::Allocator::realloc(v4, v5, 40 * a2);
    }

    else
    {
      v7 = result + 1;
      v6 = result[1];
      if (v6)
      {
        result = lsl::Allocator::free(*result, v6);
      }

      *v7 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }
  }

  else
  {
    result = lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

mach_o::Error *mach_o::stringOverflow@<X0>(mach_o::Error *this@<X0>, unsigned int a2@<W2>, mach_o::Error *a3@<X8>)
{
  v4 = *(this + 1);
  if (v4 <= a2)
  {
    return mach_o::Error::Error(a3, "load command #%d string offset (%u) outside its size (%u)");
  }

  v5 = this + v4 - 1;
  while (v5 >= this + a2)
  {
    if (!*v5--)
    {
      *a3 = 0;
      return this;
    }
  }

  return mach_o::Error::Error(a3, "load command #%d string extends beyond end of load command");
}

dyld3::MachOAnalyzer *dyld4::SyscallDelegate::mapFileReadOnly(int a1, Diagnostics *a2, dyld3 *this, int *a4, off_t *a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  if (dyld3::stat(this, &v44, this) == -1)
  {
    v22 = *__error();
    if (v22 == 2)
    {
      Diagnostics::error(a2, "no such file");
    }

    else if (v22 == 1 && (v23 = getpid(), sandbox_check(v23, "file-read-metadata", 1073741825, v24, v25, v26, v27, v28, this) >= 1))
    {
      Diagnostics::error(a2, "file system sandbox blocked stat()", v40);
    }

    else
    {
      v29 = *__error();
      Diagnostics::error(a2, "stat() failed with errno=%d");
    }

    return 0;
  }

  if (!v44.st_size)
  {
    return 0;
  }

  v15 = dyld3::open(this, 0, 0);
  if (v15 < 0)
  {
    if (*__error() == 1 && (v30 = getpid(), sandbox_check(v30, "file-read-data", 1073741825, v31, v32, v33, v34, v35, this) >= 1))
    {
      Diagnostics::error(a2, "file system sandbox blocked open()", v41);
    }

    else
    {
      Diagnostics::error(a2, "open() failed with errno=%d");
    }

    return 0;
  }

  v16 = v15;
  v17 = mmap(0, v44.st_size, 1, 2, v15, 0);
  if (v17 == -1)
  {
    st_size = v44.st_size;
    v38 = __error();
    Diagnostics::error(a2, "mmap(size=0x%0lX) failed with errno=%d", st_size, *v38);
    close(v16);
    return 0;
  }

  v18 = v17;
  if (a4)
  {
    *a4 = v16;
  }

  if (a5)
  {
    *a5 = v44.st_size;
  }

  if (a6)
  {
    tv_sec = v44.st_mtimespec.tv_sec;
    st_dev = v44.st_dev;
    *a6 = v44.st_ino;
    *(a6 + 8) = st_dev;
    *(a6 + 16) = tv_sec;
    *(a6 + 24) = 1;
  }

  if (a8)
  {
    fcntl(v16, 50, a8);
  }

  if (a7)
  {
    *a7 = 0;
    if (dyld3::MachOFile::hasMachOMagic(v18))
    {
      if (*(v18 + 1) == 16777228 && (*(v18 + 2) & 0xFFFFFF) == 2 && dyld3::MachOAnalyzer::isOSBinary(v18, v16, 0))
      {
        *a7 = 1;
      }
    }

    else
    {
      v39 = dyld3::FatFile::isFatFile(v18, v21);
      if (v39)
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 0x40000000;
        v42[2] = ___ZNK5dyld415SyscallDelegate15mapFileReadOnlyER11DiagnosticsPKcPiPmPNS_6FileIDEPbPc_block_invoke;
        v42[3] = &__block_descriptor_tmp_18_1;
        v43 = v16;
        v42[4] = v18;
        v42[5] = a7;
        dyld3::FatFile::forEachSlice(v39, a2, v44.st_size, v42);
      }
    }
  }

  if (!a4)
  {
    close(v16);
  }

  return v18;
}

mach_header *dyld3::MachOFile::compatibleSlice(Diagnostics *a1, void *a2, unint64_t *a3, mach_header *a4, unint64_t a5, const char *a6, mach_o::Platform *a7, int a8, uint64_t a9)
{
  v13 = a4;
  v17 = mach_o::Universal::isUniversal(a4, a5);
  if (v17)
  {
    v18 = v17;
    mach_o::Universal::valid(v17, a5, v31);
    if (*v31)
    {
      v19 = mach_o::Error::message(v31);
      Diagnostics::error(a1, "%s", v19);
      mach_o::Error::~Error(v31);
      return 0;
    }

    mach_o::Error::~Error(v31);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (!mach_o::Universal::bestSlice(v18, a9, a8, &v23))
    {
      LOBYTE(v26) = 0;
      *v31 = _NSConcreteStackBlock;
      v32 = 0x40000000;
      v33 = ___ZN5dyld3L12getArchNamesERKN6mach_o19GradedArchitecturesEbPc_block_invoke;
      v34 = &__block_descriptor_tmp_118;
      v35 = &v26;
      mach_o::GradedArchitectures::forEachArch(a9, a8, v31);
      mach_o::Universal::archNames(v18, v31);
      Diagnostics::error(a1, "fat file, but missing compatible architecture (have '%s', need '%s')");
      return 0;
    }

    v20 = v24;
    *a3 = v25;
    *a2 = v20 - v13;
    v13 = v20;
  }

  else
  {
    *a3 = a5;
    *a2 = 0;
    v20 = v13;
  }

  if (!mach_o::Header::isMachO(v20, *a3))
  {
    Diagnostics::error(a1, "slice is not valid mach-o file");
    return 0;
  }

  mach_o::Header::arch(v13, v31);
  if (!mach_o::GradedArchitectures::isCompatible(a9, v31, a8))
  {
    v31[0] = 0;
    v26 = _NSConcreteStackBlock;
    v27 = 0x40000000;
    v28 = ___ZN5dyld3L12getArchNamesERKN6mach_o19GradedArchitecturesEbPc_block_invoke;
    v29 = &__block_descriptor_tmp_118;
    v30 = v31;
    mach_o::GradedArchitectures::forEachArch(a9, a8, &v26);
    mach_o::Header::archName(v13);
    Diagnostics::error(a1, "mach-o file, but is an incompatible architecture (have '%s', need '%s')");
    return 0;
  }

  *v31 = *a7;
  LODWORD(v32) = *(a7 + 2);
  if (a6)
  {
    v21 = _platform_strlen(a6);
  }

  else
  {
    v21 = 0;
  }

  if ((mach_o::Header::loadableIntoProcess(v13, v31, a6, v21) & 1) == 0)
  {
    mach_o::Header::platformAndVersions(v13, v31);
    v26 = *v31;
    LODWORD(v27) = v32;
    mach_o::Platform::name(&v26);
    mach_o::Platform::name(a7);
    Diagnostics::error(a1, "mach-o file (%s), but incompatible platform (have '%s', need '%s')");
    return 0;
  }

  return v13;
}

void dyld4::ProcessConfig::PathOverrides::forEachInsertedDylib(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v5[0] = 0;
  v2 = *(a1 + 96);
  if (v2 && *v2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 0x40000000;
    v3[2] = ___ZNK5dyld413ProcessConfig13PathOverrides20forEachInsertedDylibEU13block_pointerFvPKcRbE_block_invoke;
    v3[3] = &unk_A0450;
    v3[4] = a2;
    v3[5] = v4;
    dyld4::ProcessConfig::PathOverrides::forEachInColonList(v2, 0, v5, v3);
  }

  _Block_object_dispose(v4, 8);
}

void *mach_o::Error::operator=(void *result, void *a2)
{
  *result = *a2;
  *a2 = 0;
  return result;
}

void dyld4::RuntimeState::loadInsertedLibraries(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v22 = 0x3002000000;
  v20 = 0;
  v21 = &v20;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v19[0] = 0;
  v19[1] = a3;
  v17 = 0u;
  v8 = *(a1 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = ___ZN5dyld412RuntimeState21loadInsertedLibrariesERN5dyld317OverflowSafeArrayIPNS_6LoaderELy4294967295EEEPKS3__block_invoke;
  v11[3] = &unk_A0CA0;
  v12 = 257;
  v13 = 0;
  v14 = 257;
  v15 = 0;
  v16 = v19;
  v18 = a2;
  v11[4] = &v20;
  v11[5] = a1;
  dyld4::ProcessConfig::PathOverrides::forEachInsertedDylib(v8 + 592, v11);
  if (v21[5])
  {
    mach_o::Error::Error(a4, v21 + 5);
  }

  else
  {
    if (*(a2 + 16) != 1)
    {
      lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase(a1 + 32, *(a1 + 40));
      lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(a1 + 32, *(a1 + 48) + 1);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *(a1 + 48) = v10 + 1;
      *(v9 + 8 * v10) = a3;
    }

    *a4 = 0;
  }

  _Block_object_dispose(&v20, 8);
  mach_o::Error::~Error(&v25);
}

void mach_o::Header::validSemanticsPlatform(mach_o::Header *this@<X0>, mach_o::Error *a2@<X8>)
{
  if (*(this + 3) == 12)
  {
    *a2 = 0;
    return;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x4802000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v19 = 0;
  *&v4 = 0x1000000010000;
  *(&v4 + 1) = 0x1000000010000;
  v20 = v4;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3002000000;
  v10 = __Block_byref_object_copy__19;
  v11 = __Block_byref_object_dispose__20;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header22validSemanticsPlatformEv_block_invoke;
  v6[3] = &unk_A4F58;
  v6[4] = &v7;
  v6[5] = &v13;
  mach_o::Header::forEachPlatformLoadCommand(this, v6);
  if (!v8[5])
  {
    if (mach_o::Platform::empty((v14 + 5)) && gHeaderAllowEmptyPlatform == 1)
    {
      goto LABEL_9;
    }

    v5 = *(this + 3);
    if (v5 == 2)
    {
      if ((mach_o::Header::hasLoadCommand(this, 14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v5 == 5)
    {
LABEL_9:
      *a2 = 0;
      goto LABEL_12;
    }

    mach_o::Platform::valid((v14 + 5), a2);
    goto LABEL_12;
  }

  mach_o::Error::Error(a2, v8 + 5);
LABEL_12:
  _Block_object_dispose(&v7, 8);
  mach_o::Error::~Error(&v12);
  _Block_object_dispose(&v13, 8);
}

BOOL mach_o::Architecture::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v5 = *a1 != 16777228 || v2 == v3;
  return ((v3 ^ v2) & 0xFFFFFF) == 0 && v5;
}

double dyld4::ExternallyViewableState::setSharedCacheAddress(dyld4::ExternallyViewableState *this, unint64_t a2, DyldSharedCache *a3)
{
  v3 = *(this + 4);
  v3[9].n128_u64[1] = a2;
  v3[11].n128_u64[0] = a3;
  if (a3)
  {
    *&result = DyldSharedCache::getUUID(a3, v3 + 10).n128_u64[0];
  }

  return result;
}

void ___ZNK6mach_o6Header22validSemanticsPlatformEv_block_invoke(uint64_t a1, mach_o::Platform *this, int a3, int a4)
{
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    mach_o::Platform::valid(this, &v10);
    if (v10)
    {
      mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v10);
      v8 = &v10;
    }

    else
    {
      mach_o::Error::~Error(&v10);
      v9 = *(*(a1 + 40) + 8);
      v10 = *this;
      v11 = *(this + 2);
      v12 = a3;
      v13 = a4;
      v14 = 0x1000000010000;
      mach_o::PlatformAndVersions::zip((v9 + 40), &v10, &v15);
      mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v15);
      v8 = &v15;
    }

    mach_o::Error::~Error(v8);
  }
}

int8x8_t mach_o::Architecture::Architecture(int8x8_t *this, const mach_header *a2)
{
  result = *&a2->cputype;
  *this = result;
  if ((a2->magic | 0x1000000) == 0xCFFAEDFE)
  {
    result = vrev32_s8(result);
    *this = result;
  }

  return result;
}

void dyld4::Loader::loadDependents(uint64_t a1, Diagnostics *a2, dyld4::RuntimeState *a3, __int128 *a4)
{
  if (*a1 != 1815378276)
  {
    dyld4::Loader::loadDependents();
  }

  if (*(a1 + 4))
  {

    dyld4::PrebuiltLoader::loadDependents(a1, a2, a3, a4);
  }

  else
  {

    dyld4::JustInTimeLoader::loadDependents(a1, a2, a3, a4);
  }
}

uint64_t mach_o::Header::loadableIntoProcess(mach_o::Header *a1, mach_o::Platform *a2, const void *a3, size_t a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  if (mach_o::Header::builtForPlatform(a1, &v11, 0))
  {
    return 1;
  }

  if (mach_o::Platform::isSimulator(a2))
  {
    v11 = &mach_o::PlatformInfo_macOS::singleton;
    v12 = 0;
    if (mach_o::Header::builtForPlatform(a1, &v11, 0))
    {
      v9 = &qword_A5300;
      v10 = 96;
      while (*v9 != a4 || _platform_memcmp(*(v9 - 1), a3, a4))
      {
        v9 += 2;
        v10 -= 16;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      return 1;
    }
  }

LABEL_9:
  if (*(a1 + 3) == 2 && *a2 == &mach_o::PlatformInfo_macOS::singleton && !*(a2 + 2))
  {
    mach_o::Header::platformAndVersions(a1, &v11);
    if (v11 == &mach_o::PlatformInfo_macCatalyst::singleton && !v12)
    {
      return 1;
    }
  }

  if (*a2 == &mach_o::PlatformInfo_iOS::singleton && !*(a2 + 2))
  {
    mach_o::Header::platformAndVersions(a1, &v11);
    if (v11 == &mach_o::PlatformInfo_visionOS::singleton && !v12)
    {
      return 1;
    }
  }

  if (*a2 == &mach_o::PlatformInfo_iOS_simulator::singleton && !*(a2 + 2))
  {
    mach_o::Header::platformAndVersions(a1, &v11);
    if (v11 == &mach_o::PlatformInfo_visionOS_simulator::singleton && !v12)
    {
      return 1;
    }
  }

  if (*a2 == &mach_o::PlatformInfo_macCatalyst::singleton && !*(a2 + 2))
  {
    mach_o::Header::platformAndVersions(a1, &v11);
    if (v11 == &mach_o::PlatformInfo_macOS::singleton && !v12)
    {
      return 1;
    }
  }

  return 0;
}

mach_o::Error *mach_o::Platform::valid@<X0>(mach_o::Error *this@<X0>, mach_o::Error *a2@<X8>)
{
  if (!*this)
  {
    return mach_o::Error::Error(a2, "unknown platform");
  }

  *a2 = 0;
  return this;
}

void dyld4::PrebuiltLoader::loadDependents(uint64_t a1, Diagnostics *a2, dyld4::RuntimeState *a3, uint64_t a4)
{
  v8 = *(a1 + 6);
  v9 = 960;
  if (v8 < 0)
  {
    v9 = 984;
  }

  v10 = *(a3 + v9);
  v11 = v8 & 0x7FFF;
  dyld4::PrebuiltLoader::map(a1, a2, a3, a4, 0);
  if (*(v10 + v11) <= 3u)
  {
    v25[1] = v25;
    *(v10 + v11) = 4;
    v13 = *(a1 + 48);
    __chkstk_darwin(v12);
    v16 = (v25 - v15);
    if (v14 >= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = v14;
    }

    bzero(v25 - v15, v17);
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v19 = dyld4::PrebuiltLoader::dependent(a1, a3, i, 0);
        v16[i] = v19;
        if (v19)
        {
          dyld4::PrebuiltLoader::map(v19, a2, a3, v20, 1);
        }

        else if (*(*(a3 + 1) + 328) == 1)
        {
          Address = dyld4::PrebuiltLoader::loadAddress(a1, a3);
          Path = mach_o::Header::linkedDylibLoadPath(Address, i);
          dyld4::RuntimeState::log(a3, "find path %s\n", Path);
          dyld4::RuntimeState::log(a3, "  not found: weak-linked and pre-built-as-missing dylib\n");
        }
      }
    }

    v29[0] = *(a4 + 16);
    v29[1] = a1;
    v23 = *(a4 + 16);
    v26 = *a4;
    v27 = v23;
    v24 = *(a4 + 32);
    BYTE11(v26) = *(a1 + 5) & 1;
    v28 = v24;
    *&v27 = v29;
    if (v13)
    {
      do
      {
        if (*v16)
        {
          dyld4::PrebuiltLoader::loadDependents(*v16, a2, a3, &v26);
        }

        ++v16;
        --v13;
      }

      while (v13);
    }

    *(v10 + v11) = 5;
  }
}

void dyld4::PrebuiltLoader::map(uint64_t a1, Diagnostics *a2, dyld4::RuntimeState *this, uint64_t a4, int a5)
{
  v5 = *(a1 + 6);
  v6 = 960;
  if (v5 < 0)
  {
    v6 = 984;
  }

  v7 = *(this + v6);
  v8 = v5 & 0x7FFF;
  if (*(v7 + v8) <= 2u)
  {
    v12 = *(this + 1);
    if (*(v12 + 328) == 1 && a5 != 0)
    {
      if ((*(a1 + 4) & 2) != 0 || *(this + 48) <= v8)
      {
        if (*(a1 + 32))
        {
          v14 = (a1 + *(a1 + 32));
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = *(*(this + 47) + 8 * v8);
      }

      dyld4::RuntimeState::log(this, "find path %s\n", v14);
      dyld4::RuntimeState::log(this, "  found: prebuilt-loader-dylib matching path\n");
      v12 = *(this + 1);
    }

    if (*(v12 + 327) == 1)
    {
      if ((*(a1 + 4) & 2) != 0 || (v15 = *(a1 + 6) & 0x7FFF, *(this + 48) <= v15))
      {
        if (*(a1 + 32))
        {
          v16 = (a1 + *(a1 + 32));
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = *(*(this + 47) + 8 * v15);
      }

      dyld4::RuntimeState::log(this, "using PrebuiltLoader %p for %s\n", a1, v16);
    }

    if ((*(a1 + 4) & 2) != 0)
    {
      *(v7 + v8) = 3;
      v19 = *(this + 1);
      if (v19[321] == 1)
      {
        dyld4::Loader::logSegmentsFromSharedCache(a1, this);
        v19 = *(this + 1);
      }

      if (v19[320] == 1)
      {
        if ((*(a1 + 4) & 2) != 0 || (v20 = *(a1 + 6) & 0x7FFF, *(this + 48) <= v20))
        {
          if (*(a1 + 32))
          {
            v21 = (a1 + *(a1 + 32));
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = *(*(this + 47) + 8 * v20);
        }

        dyld4::Loader::logLoad(a1, this, v21);
        v19 = *(this + 1);
      }

      if (v19[221] == 1 && (*(a1 + 44) & 8) != 0)
      {
        *(this + 1111) = 1;
      }
    }

    else if (*(this + 3) == a1)
    {
      if (*(v7 + v8) <= 2u)
      {
        *(v7 + v8) = 3;
      }

      dyld4::PrebuiltLoader::setLoadAddress(a1, this, *(*(this + 1) + 16));
    }

    else
    {
      v17 = *(a1 + 6) & 0x7FFF;
      if (*(this + 48) <= v17)
      {
        if (*(a1 + 32))
        {
          v18 = (a1 + *(a1 + 32));
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = *(*(this + 47) + 8 * v17);
      }

      Only = dyld4::SyscallDelegate::openFileReadOnly(*(this + 1), a2, v18);
      if (Only == -1)
      {
        return;
      }

      v23 = Only;
      v24 = *(a1 + 76);
      v25 = *(a1 + 44) >> 4;
      v35[0] = a1 + *(a1 + 46);
      v35[1] = v25;
      v35[2] = v25;
      v26 = *(a1 + 42) ? a1 + *(a1 + 42) : 0;
      BYTE1(v34) = 1;
      LOBYTE(v34) = (*(a1 + 4) & 0x20) != 0;
      v27 = dyld4::Loader::mapSegments(a2, this, v18, Only, v24, (a1 + 80), 1, v35, v34, v26);
      dyld4::SyscallDelegate::close(*(this + 1), v23);
      if (Diagnostics::hasError(a2))
      {
        return;
      }

      dyld4::PrebuiltLoader::setLoadAddress(a1, this, v27);
      *(v7 + v8) = 3;
      if (*(*(this + 1) + 320) == 1)
      {
        if ((*(a1 + 4) & 2) != 0 || (v28 = *(a1 + 6) & 0x7FFF, *(this + 48) <= v28))
        {
          if (*(a1 + 32))
          {
            v29 = (a1 + *(a1 + 32));
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = *(*(this + 47) + 8 * v28);
        }

        dyld4::Loader::logLoad(a1, this, v29);
      }
    }

    if (*(*(this + 1) + 740) && (v30 = *(this + 6)) != 0)
    {
      v31 = *(this + 5);
      v32 = 8 * v30;
      v33 = v31;
      while (*v33 != a1)
      {
        ++v33;
        ++v31;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
LABEL_64:
      dyld4::RuntimeState::add(this, a1);
    }
  }
}

uint64_t mach_o::Header::builtForPlatform(mach_o::Header *a1, uint64_t *a2, char a3)
{
  mach_o::Header::platformAndVersions(a1, &v14);
  v5 = *a2;
  if (v14 == *a2)
  {
    v6 = v15 == *(a2 + 2);
    if (v15 == *(a2 + 2))
    {
      return v6 & 1;
    }
  }

  else
  {
    v6 = 0;
  }

  if ((a3 & 1) == 0)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1174405120;
    v8[2] = ___ZNK6mach_o6Header16builtForPlatformENS_8PlatformEb_block_invoke;
    v8[3] = &unk_A5110;
    v8[4] = &v10;
    v8[5] = v5;
    v9 = *(a2 + 2);
    mach_o::PlatformAndVersions::unzip(&v14, v8);
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return v6 & 1;
}

uint64_t lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserveExact(result, v2);
  }

  return result;
}

mach_o::Header *dyld3::MachOFile::forEachCDHashOfCodeSignature(mach_o::Header *a1, _DWORD *a2, unint64_t a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld39MachOFile28forEachCDHashOfCodeSignatureEPKvmU13block_pointerFvPKhE_block_invoke;
  v5[3] = &unk_A37E0;
  v5[4] = a4;
  return dyld3::MachOFile::forEachCodeDirectoryBlob(a1, a2, a3, v5);
}

unint64_t dyld4::RuntimeState::add(dyld4::RuntimeState *this, const dyld4::Loader *a2)
{
  result = lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve(this + 32, *(this + 6) + 1);
  v5 = *(this + 5);
  v6 = *(this + 6);
  *(this + 6) = v6 + 1;
  *(v5 + 8 * v6) = a2;
  v7 = this + 104;
  if (!*(this + 13) || !*(this + 12))
  {
    if ((~*(a2 + 2) & 3) != 0)
    {
      v8 = dyld4::Loader::mf(a2, this);
      result = dyld3::MachOFile::isDylib(v8);
      if (!result)
      {
        return result;
      }

      result = mach_o::Header::installName(v8);
    }

    else
    {
      result = dyld4::Loader::path(a2, this);
    }

    v9 = result;
    if (result)
    {
      v10 = *(this + 1);
      if (*(v10 + 112) == &mach_o::PlatformInfo_driverKit::singleton && !*(v10 + 120))
      {
        result = _platform_strcmp(result, "/System/DriverKit/usr/lib/system/libdyld.dylib");
        if (result)
        {
          v11 = "/System/DriverKit/usr/lib/libSystem.dylib";
          goto LABEL_21;
        }

LABEL_23:
        *v7 = a2;
        return result;
      }

      if (*(v10 + 289) == 1 && mach_o::Platform::isExclaveKit((v10 + 112)))
      {
        result = _platform_strlen(v9);
        if (result < 0x13)
        {
          return result;
        }

        result = _platform_strcmp(v9 + 18, "/usr/lib/system/libdyld.dylib");
        if (!result)
        {
          goto LABEL_23;
        }

        result = _platform_strcmp(v9, "/usr/lib/system/libdyld.dylib");
        if (!result)
        {
          goto LABEL_23;
        }

        result = _platform_strcmp(v9 + 18, "/usr/lib/libSystem.dylib");
        if (!result)
        {
          goto LABEL_22;
        }
      }

      else
      {
        result = _platform_strcmp(v9, "/usr/lib/system/libdyld.dylib");
        if (!result)
        {
          goto LABEL_23;
        }
      }

      v11 = "/usr/lib/libSystem.B.dylib";
LABEL_21:
      result = _platform_strcmp(v9, v11);
      if (result)
      {
        return result;
      }

LABEL_22:
      v7 = this + 96;
      goto LABEL_23;
    }
  }

  return result;
}

void mach_o::Header::validSemanticsUUID(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, mach_o::Error *a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK6mach_o6Header18validSemanticsUUIDERKNS_6PolicyE_block_invoke;
  v7[3] = &unk_A4FA8;
  v7[4] = &v8;
  mach_o::Header::forEachLoadCommand(this, v7, v12);
  mach_o::Error::~Error(v12);
  v6 = *(v9 + 6);
  if (v6 < 2)
  {
    if (v6 || !mach_o::Policy::enforceHasUUID(a2) || mach_o::Header::hasSection(this, "__TEXT", 6, "__playground", 12, 0) && (mach_o::Header::platformAndVersions(this, v12), (mach_o::Platform::isSimulator(v12) & 1) != 0))
    {
      *a3 = 0;
    }

    else
    {
      mach_o::Error::Error(a3, "missing LC_UUID load command");
    }
  }

  else
  {
    mach_o::Error::Error(a3, "too many LC_UUID load commands");
  }

  _Block_object_dispose(&v8, 8);
}

mach_o::Header *dyld3::MachOFile::forEachCodeDirectoryBlob(mach_o::Header *result, _DWORD *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 0xC)
  {
    v25 = v4;
    v26 = v5;
    if (*a2 == -1072898310)
    {
      v7 = a2[2];
      v8 = bswap32(v7);
      if (v8 <= (a3 - 12) >> 3)
      {
        v11 = result;
        v23 = &mach_o::PlatformInfo_watchOS::singleton;
        v24 = 0;
        result = mach_o::Header::builtForPlatform(result, &v23, 0);
        v12 = dyld3::hash_rank;
        if (result)
        {
          v12 = dyld3::hash_rank_watchOS_dylibs;
        }

        v21 = v12;
        if (v7)
        {
          v13 = 0;
          if (*(v11 + 3) == 2)
          {
            v14 = result;
          }

          else
          {
            v14 = 0;
          }

          v22 = v14;
          v15 = a2 + 4;
          do
          {
            v16 = *(v15 - 1);
            if (v16)
            {
              v17 = (v16 - 0x100000) > 0x5000000;
            }

            else
            {
              v17 = 0;
            }

            if (!v17)
            {
              v18 = bswap32(*v15);
              if (a3 - 88 >= v18)
              {
                v19 = (a2 + v18);
                if (a3 - v18 >= bswap32(*(a2 + v18 + 4)))
                {
                  if (v22)
                  {
                    result = (*(a4 + 16))(a4, v19);
                  }

                  else if (*v19 == 34397946)
                  {
                    if (!v13 || (v20 = (v21)(v19), result = (v21)(v13), v20 > result))
                    {
                      v13 = v19;
                    }
                  }
                }
              }
            }

            v15 += 2;
            --v8;
          }

          while (v8);
          if (v13)
          {
            return (*(a4 + 16))(a4, v13);
          }
        }
      }
    }
  }

  return result;
}

uint64_t dyld4::PrebuiltLoader::setLoadAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 6);
  if ((v4 & 0x80000000) == 0)
  {
    dyld4::PrebuiltLoader::setLoadAddress();
  }

  return dyld4::RuntimeState::setAppLoadAddress(a2, v4 & 0x7FFF, a3);
}

uint64_t ___ZNK6mach_o6Header18validSemanticsUUIDERKNS_6PolicyE_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 27)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

uint64_t mach_o::PlatformAndVersions::unzip(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (*a1 == &mach_o::PlatformInfo_zippered::singleton && v4 == 0)
  {
    v7 = &mach_o::PlatformInfo_macOS::singleton;
    v8 = 0;
    *&v9 = *(a1 + 16);
    *(&v9 + 1) = 0x1000000010000;
    (*(a2 + 16))(a2, &v7);
    v7 = &mach_o::PlatformInfo_macCatalyst::singleton;
    v8 = 0;
    *&v9 = *(a1 + 24);
    *(&v9 + 1) = 0x1000000010000;
  }

  else
  {
    v7 = *a1;
    v8 = v4;
    v9 = *(a1 + 16);
  }

  return (*(a2 + 16))(a2, &v7);
}

void mach_o::Header::validSemanticsInstallName(mach_o::Header *this@<X0>, mach_o::Error *a2@<X8>)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header25validSemanticsInstallNameERKNS_6PolicyE_block_invoke;
  v6[3] = &unk_A4FD0;
  v6[4] = &v11;
  v6[5] = &v7;
  mach_o::Header::forEachLoadCommand(this, v6, &v15);
  mach_o::Error::~Error(&v15);
  if (v8[6] < 2)
  {
    v5 = *(this + 3);
    if (v5 == 9 || v5 == 6)
    {
      if (!v12[3])
      {
        mach_o::Error::Error(a2, "MH_DYLIB is missing LC_ID_DYLIB");
        goto LABEL_10;
      }
    }

    else if (v12[3])
    {
      mach_o::Error::Error(a2, "found LC_ID_DYLIB found in non-MH_DYLIB");
      goto LABEL_10;
    }

    *a2 = 0;
    goto LABEL_10;
  }

  mach_o::Error::Error(a2, "multiple LC_ID_DYLIB found");
LABEL_10:
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

uint64_t ___ZNK6mach_o6Header16builtForPlatformENS_8PlatformEb_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *a2 == *(result + 40) && *(a2 + 8) == *(result + 48);
  *(*(*(result + 32) + 8) + 24) |= v2;
  return result;
}

uint64_t ___ZNK5dyld39MachOFile28forEachCDHashOfCodeSignatureEPKvmU13block_pointerFvPKhE_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = bswap32(*(a2 + 4));
  v5 = *(a2 + 37);
  if ((v5 - 2) < 2)
  {
    v6 = ccsha256_di();
  }

  else
  {
    if (v5 == 1)
    {
      v12 = ccsha1_di();
      v13 = (((v12[1] + v12[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
      v14 = __chkstk_darwin(v12);
      v16 = (&v17 - v15);
      ccdigest_init(v14, (&v17 - v15));
      ccdigest_update(v12, v16, v4, a2);
      (v12[7])(v12, v16, &v19);
      cc_clear(v12[1] + v12[2] + 12, v16);
      return (*(*(v3 + 32) + 16))();
    }

    if (v5 != 4)
    {
      return result;
    }

    v6 = ccsha384_di();
  }

  v7 = v6;
  v8 = (((v6[1] + v6[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v6);
  v11 = (&v17 - v10);
  ccdigest_init(v9, (&v17 - v10));
  ccdigest_update(v7, v11, v4, a2);
  (v7[7])(v7, v11, &v17);
  cc_clear(v7[1] + v7[2] + 12, v11);
  v20 = v18;
  v19 = v17;
  return (*(*(v3 + 32) + 16))();
}

uint64_t dyld4::RuntimeState::setAppLoadAddress(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 976);
  if (!v3)
  {
    dyld4::RuntimeState::setAppLoadAddress();
  }

  if (*(v3 + 12) <= a2)
  {
    dyld4::RuntimeState::setAppLoadAddress();
  }

  *(*(result + 992) + 8 * a2) = a3;
  return result;
}

uint64_t ___ZNK6mach_o6Header25validSemanticsInstallNameERKNS_6PolicyE_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 13)
  {
    *(*(*(result + 32) + 8) + 24) = a2 + a2[2];
    ++*(*(*(result + 40) + 8) + 24);
  }

  return result;
}

void mach_o::Header::validSemanticsLinkedDylibs(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, mach_o::Error *a3@<X8>)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3002000000;
  v24 = __Block_byref_object_copy__19;
  v25 = __Block_byref_object_dispose__20;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  memset(v29, 0, 512);
  v6 = mach_o::Policy::useProtectedStack(a2);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZNK6mach_o6Header26validSemanticsLinkedDylibsERKNS_6PolicyE_block_invoke;
  v14[3] = &unk_A4FF8;
  v15 = v6;
  hasWarningHandler = mach_o::hasWarningHandler(v6);
  v14[6] = this;
  v14[7] = v29;
  v14[4] = &v17;
  v14[5] = &v21;
  mach_o::Header::forEachLoadCommand(this, v14, v12);
  mach_o::Error::~Error(v12);
  if (v22[5])
  {
    mach_o::Error::Error(a3, v22 + 5);
  }

  else
  {
    v7 = *(this + 3);
    if (v7 != 8 && v7 != 6 && (v7 != 2 || (*(this + 24) & 4) == 0))
    {
      goto LABEL_9;
    }

    if (!mach_o::Policy::enforceHasLinkedDylibs(a2) || *(v18 + 6))
    {
      goto LABEL_9;
    }

    v12[0] = 0;
    v27 = 0x10000;
    v28 = 0x10000;
    v8 = mach_o::Header::getDylibInstallName(this, v12, &v28, &v27) ? v12[0] : 0;
    v9 = v8 ? _platform_strlen(v8) : 0;
    v13[0] = v8;
    v13[1] = v9;
    mach_o::Header::platformAndVersions(this, v12);
    v10 = mach_o::Platform::libSystemDir(v12);
    if (v9 < v11 || std::string_view::compare[abi:nn200100](v13, 0, v11, v10, v11))
    {
      mach_o::Error::Error(a3, "missing LC_LOAD_DYLIB (must link with at least libSystem.dylib)");
    }

    else
    {
LABEL_9:
      *a3 = 0;
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  mach_o::Error::~Error(&v26);
}

uint64_t dyld4::Loader::mf(dyld4::Loader *this, const dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::mf();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::mf(this, a2);
  }

  else
  {

    return dyld4::JustInTimeLoader::mf(this, a2);
  }
}

uint64_t ccdigest_init(uint64_t a1, void *a2)
{
  v5 = timingsafe_enable_if_supported();
  memmove(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return cc_disable_dit_with_sb(&v5);
}

void ___ZNK6mach_o6Header26validSemanticsLinkedDylibsERKNS_6PolicyE_block_invoke(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  if ((*a2 + 2147483624) <= 0xB && ((1 << (*a2 - 24)) & 0x881) != 0 || *a2 == 12)
  {
    v15[9] = v3;
    v15[10] = v4;
    v8 = *(*(a1 + 32) + 8);
    LODWORD(v9) = *(v8 + 24);
    if (v9 <= 255)
    {
      v11 = *(a1 + 48);
      if ((*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1)
      {
        v12 = a2 + a2[2];
        if (v9 <= 0)
        {
          v9 = v9;
        }

        else
        {
          v13 = 0;
          do
          {
            if (!_platform_strcmp(v12, *(*(a1 + 56) + 8 * v13)))
            {
              if (*(a1 + 64) == 1)
              {
                mach_o::Error::Error(v15, "duplicate linked dylib '%s'", v12);
                mach_o::Error::operator=((*(*(a1 + 40) + 8) + 40), v15);
                mach_o::Error::~Error(v15);
                *a3 = 1;
              }

              else
              {
                mach_o::warning(v11, "duplicate linked dylib are deprecated ('%s')", v14, v12);
              }
            }

            ++v13;
            v9 = *(*(*(a1 + 32) + 8) + 24);
          }

          while (v13 < v9);
        }

        *(*(a1 + 56) + 8 * v9) = v12;
        v8 = *(*(a1 + 32) + 8);
        LODWORD(v9) = *(v8 + 24);
      }
    }

    *(v8 + 24) = v9 + 1;
  }
}

unint64_t timingsafe_enable_if_supported()
{
  v0 = MEMORY[0xFFFFFC010];
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v1 = (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) >> 24) & 1;
    __asm { MSR             DIT, #1 }

    if ((v0 & 0x200000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    __dsb(0xFu);
    __isb(0xFu);
    return v1;
  }

  v1 = 0;
  if ((MEMORY[0xFFFFFC010] & 0x200000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sb();
  return v1;
}

_DWORD *mach_o::Universal::isUniversal(_DWORD *result, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  if ((*result & 0xFEFFFFFF) != 0xBEBAFECA)
  {
    return 0;
  }

  return result;
}

void mach_o::Header::validSemanticsRPath(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, void *a3@<X8>)
{
  v5 = mach_o::Policy::useProtectedStack(a2);
  v6 = v5;
  if (v5 || mach_o::hasWarningHandler(v5))
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3002000000;
    v14 = __Block_byref_object_copy__19;
    v15 = __Block_byref_object_dispose__20;
    v16 = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v10 = 0;
    memset(v17, 0, sizeof(v17));
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___ZNK6mach_o6Header19validSemanticsRPathERKNS_6PolicyE_block_invoke;
    v7[3] = &unk_A5020;
    v7[5] = &v11;
    v7[6] = v17;
    v8 = v6;
    v7[4] = v9;
    mach_o::Header::forEachRPath(this, v7);
    mach_o::Error::Error(a3, v12 + 5);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v11, 8);
    mach_o::Error::~Error(&v16);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t ccdigest_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

void mach_o::Header::forEachRPath(mach_o::Error *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header12forEachRPathEU13block_pointerFvPKcRbE_block_invoke;
  v2[3] = &unk_A55B8;
  v2[4] = a2;
  mach_o::Header::forEachLoadCommand(a1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

uint64_t ___ZNK6mach_o6Header12forEachRPathEU13block_pointerFvPKcRbE_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == -2147483620)
  {
    v2 = a2[2];
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

uint64_t mach_o::Platform::isExclaveKit(mach_o::Platform *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 56);
  }

  return v1 & 1;
}

void ___ZNK6mach_o6Header19validSemanticsRPathERKNS_6PolicyE_block_invoke(uint64_t a1, char *__s1, _BYTE *a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  LODWORD(v5) = *(v4 + 24);
  if (v5 <= 63)
  {
    if (v5 <= 0)
    {
      v5 = v5;
    }

    else
    {
      v9 = 0;
      do
      {
        if (!_platform_strcmp(__s1, *(*(a1 + 48) + 8 * v9)) && *(a1 + 56) == 1)
        {
          mach_o::Error::Error(&v10, "duplicate LC_RPATH '%s'", __s1);
          mach_o::Error::operator=((*(*(a1 + 40) + 8) + 40), &v10);
          mach_o::Error::~Error(&v10);
          *a3 = 1;
          v3 = *(a1 + 32);
        }

        ++v9;
        v5 = *(*(v3 + 8) + 24);
      }

      while (v9 < v5);
    }

    *(*(a1 + 48) + 8 * v5) = __s1;
    v4 = *(*(a1 + 32) + 8);
    LODWORD(v5) = *(v4 + 24);
  }

  *(v4 + 24) = v5 + 1;
}

unint64_t *dyld4::RuntimeState::PermanentRanges::make(lsl::Allocator::Pool ***a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __chkstk_darwin(a1);
  v28 = 0;
  v29 = &v28;
  v30 = 0x5002000000;
  v31 = __Block_byref_object_copy__46;
  v6 = 8 * v5;
  v32 = __Block_byref_object_dispose__47;
  v33 = &v24[-1] - v7;
  v34 = 8 * v5;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (v5)
  {
    v8 = *v4;
    do
    {
      v9 = *v8++;
      Address = dyld4::Loader::loadAddress(v9, a1);
      Slide = dyld3::MachOLoaded::getSlide(Address);
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2000000000;
      v27[3] = 0;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2000000000;
      v26 = 0;
      v12 = dyld4::Loader::loadAddress(v9, a1);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 0x40000000;
      v24[2] = ___ZN5dyld412RuntimeState15PermanentRanges4makeERS0_RKN5dyld35ArrayIPKNS_6LoaderEEE_block_invoke;
      v24[3] = &unk_A0D10;
      v24[4] = v27;
      v24[5] = v25;
      v24[7] = Slide;
      v24[6] = &v28;
      v24[8] = v9;
      mach_o::Header::forEachSegment(v12, v24);
      _Block_object_dispose(v25, 8);
      _Block_object_dispose(v27, 8);
      v6 -= 8;
    }

    while (v6);
    v13 = *(v29 + 14);
  }

  else
  {
    v13 = 0;
  }

  v14 = lsl::Allocator::malloc(a1[2], (32 * v13) | 0x10);
  atomic_store(0, v14);
  v14[1] = v13;
  if (v13)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v29;
      v18 = v16 + 1;
      if (v29[7] <= v16)
      {
        if (v29[6] <= v16)
        {
          dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::growTo(v29 + 5, v16 + 1);
        }

        v17[7] = v18;
      }

      v19 = (v17[5] + v15 * 8);
      v20 = &v14[v15 + 2];
      v21 = v19[1];
      *v20 = *v19;
      *(v20 + 1) = v21;
      v15 += 4;
      v16 = v18;
    }

    while (v13 != v18);
  }

  _Block_object_dispose(&v28, 8);
  v35 = 0;
  if (v36)
  {
    vm_deallocate(mach_task_self_, v36, v37);
  }

  return v14;
}

unint64_t *ccdigest_update_internal(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *(v9 + v8))
  {
    *(v9 + v8) = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memmove(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

void *mach_o::Error::Error(void *result, void *a2)
{
  *result = 0;
  *result = *a2;
  *a2 = 0;
  return result;
}

unint64_t *dyld4::RuntimeState::addPermanentRanges(uint64_t a1, uint64_t a2)
{
  result = dyld4::RuntimeState::PermanentRanges::make(a1, a2);
  v4 = *(a1 + 1008);
  if (v4)
  {
    for (i = atomic_load_explicit(v4, memory_order_acquire); i; i = atomic_load_explicit(i, memory_order_acquire))
    {
      v4 = i;
    }

    atomic_store(result, v4);
  }

  else
  {
    *(a1 + 1008) = result;
  }

  return result;
}

void mach_o::Header::validSemanticsSegments(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, uint64_t a3@<X2>, mach_o::Error *a4@<X8>)
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x5002000000;
  v63 = __Block_byref_object_copy__63;
  v64 = __Block_byref_object_dispose__64;
  v65 = &v71;
  v66 = 12;
  v67 = 0;
  address = 0;
  size = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3002000000;
  v57 = __Block_byref_object_copy__19;
  v58 = __Block_byref_object_dispose__20;
  v59 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2000000000;
  v49 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 0x40000000;
  v43[2] = ___ZNK6mach_o6Header22validSemanticsSegmentsERKNS_6PolicyEy_block_invoke;
  v43[3] = &unk_A5048;
  v43[4] = &v50;
  v43[5] = &v44;
  v43[6] = &v60;
  v43[7] = v48;
  v43[8] = &v54;
  v43[9] = this;
  v43[10] = a2;
  v43[11] = a3;
  mach_o::Header::forEachLoadCommand(this, v43, &v70);
  mach_o::Error::~Error(&v70);
  if (v55[5])
  {
    mach_o::Error::Error(a4, v55 + 5);
    goto LABEL_71;
  }

  v7 = *(this + 3);
  if (v7 != 8 && v7 != 6)
  {
    if (v7 != 2)
    {
      goto LABEL_21;
    }

    if ((*(this + 24) & 4) == 0)
    {
      goto LABEL_24;
    }
  }

  if (*(v51 + 24) != 1)
  {
    v8 = "missing __TEXT segment";
    goto LABEL_19;
  }

  if ((*(this + 6) & 0x80000000) == 0 && *(dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::operator[]((v61 + 5), v45[3]) + 16))
  {
    v8 = "__TEXT segment fileoffset is not zero";
LABEL_19:
    v13 = a4;
    goto LABEL_70;
  }

  if (*this == -17958193)
  {
    v9 = 32;
  }

  else
  {
    v9 = 28;
  }

  v10 = (v9 + *(this + 5));
  v11 = dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::operator[]((v61 + 5), v45[3]);
  if (*(v11 + 24) - *(v11 + 16) < v10)
  {
    v8 = "load commands do not fit in __TEXT segment filesize";
    goto LABEL_19;
  }

  v12 = dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::operator[]((v61 + 5), v45[3]);
  if (v12[1] - *v12 < v10)
  {
    v8 = "load commands do not fit in __TEXT segment vmsize";
    goto LABEL_19;
  }

  v7 = *(this + 3);
LABEL_21:
  if (v7 == 8 || v7 == 6)
  {
    goto LABEL_26;
  }

  if (v7 == 2)
  {
LABEL_24:
    if ((*(this + 24) & 4) == 0)
    {
      goto LABEL_25;
    }

LABEL_26:
    v42 = a4;
    v14 = mach_o::Policy::useProtectedStack(a2);
    goto LABEL_27;
  }

LABEL_25:
  v42 = a4;
  v14 = 0;
LABEL_27:
  v15 = v61[7];
  if (v15)
  {
    v16 = 0;
    v17 = v61[5];
    v18 = v17 + 5;
    v19 = 48 * v15;
    v40 = v17 + 5;
    v41 = &v17[6 * v15];
    v39 = 48 * v15;
    while (2)
    {
      v20 = v16;
      do
      {
        if (v20)
        {
          if (*(v18 - 5) < v17[1] && *(v18 - 4) > *v17)
          {
            v35 = v17[4];
            v37 = v35;
            v38 = *(v18 - 1);
            v8 = "vm range of segment '%s' overlaps segment '%s'";
            goto LABEL_69;
          }

          if ((*(this + 6) & 0x80000000) == 0 && *(v18 - 3) < v17[3] && *(v18 - 2) > v17[2])
          {
            v36 = v17[4];
            v37 = v36;
            v38 = *(v18 - 1);
            v8 = "file range of segment '%s' overlaps segment '%s'";
            goto LABEL_69;
          }

          if (v14)
          {
            v21 = v17[5];
            if (v21 == *v18)
            {
              v22 = v17[4];
              if (!_platform_memcmp(v22, *(v18 - 1), v21))
              {
                v37 = v22;
                v8 = "duplicate segment name '%s'";
                goto LABEL_69;
              }
            }
          }
        }

        v18 += 6;
        v20 -= 48;
        v19 -= 48;
      }

      while (v19);
      v17 += 6;
      v16 += 48;
      v18 = v40;
      v19 = v39;
      if (v17 != v41)
      {
        continue;
      }

      break;
    }
  }

  if (!mach_o::Policy::enforceSegmentOrderMatchesLoadCmds(a2) || (*(this + 6) & 0x80000000) != 0 || (v23 = v61, v61[7] < 3))
  {
LABEL_65:
    *v42 = 0;
    goto LABEL_71;
  }

  v24 = 1;
  while (1)
  {
    v25 = dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::operator[]((v23 + 5), v24 - 1);
    v26 = dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::operator[]((v61 + 5), v24);
    v27 = v26[2];
    if (v27 < v25[2] && v27 != v26[3])
    {
      v37 = v25[4];
      v8 = "segment '%s' file offset out of order";
      goto LABEL_69;
    }

    v29 = v26;
    if (*v26 < *v25)
    {
      v30 = *(this + 3) == 12 && v26[5] == 14;
      if (!v30 || ((v31 = v26[4], v32 = *v31, v33 = *(v31 + 6), v32 == 0x4E494C4552505F5FLL) ? (v34 = v33 == 0x4F464E495F4B4E49) : (v34 = 0), !v34))
      {
        mach_o::Architecture::Architecture(&v70, this);
        if (!mach_o::Architecture::usesx86_64Instructions(&v70) || *(this + 3) != 2 || !mach_o::Header::hasLoadCommand(this, 14) || (*(this + 6) & 0x200000) != 0)
        {
          break;
        }
      }
    }

    ++v24;
    v23 = v61;
    if (v61[7] - 1 <= v24)
    {
      goto LABEL_65;
    }
  }

  v37 = v29[4];
  v8 = "segment '%s' vm address out of order";
LABEL_69:
  v13 = v42;
LABEL_70:
  mach_o::Error::Error(v13, v8, v37, v38);
LABEL_71:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  mach_o::Error::~Error(&v59);
  _Block_object_dispose(&v60, 8);
  v67 = 0;
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }
}

void ___ZN5dyld412RuntimeState15PermanentRanges4makeERS0_RKN5dyld35ArrayIPKNS_6LoaderEEE_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[7] + *(a2 + 16);
  v5 = v4 + *(a2 + 24);
  v6 = *(a2 + 47);
  if (v4 == *(*(a1[4] + 8) + 24) && v6 == *(*(a1[5] + 8) + 24) && (v7 = *(a1[6] + 8), (v8 = *(v7 + 56)) != 0))
  {
    *(*(v7 + 40) + 32 * v8 - 24) = v5;
  }

  else if (*(a2 + 47))
  {
    v9[0] = a1[7] + *(a2 + 16);
    v9[1] = v5;
    v9[2] = a1[8];
    v9[3] = v6;
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::push_back((*(a1[6] + 8) + 40), v9);
    LOBYTE(v6) = *(a2 + 47);
  }

  *(*(a1[4] + 8) + 24) = v5;
  *(*(a1[5] + 8) + 24) = v6;
}

int32x4_t *AccelerateCrypto_SHA256_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    v3 = a3 + 4;
    _Q1 = vrev32q_s8(v5);
    v9 = *result;
    _Q2 = vrev32q_s8(v6);
    _Q17 = result[1];
    _Q3 = vrev32q_s8(v7);
    _Q18 = *result;
    _Q4 = vaddq_s32(vrev32q_s8(v4), K256);
    _Q5 = vaddq_s32(_Q1, xmmword_81B30);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_81B40);
    _Q7 = vaddq_s32(_Q3, xmmword_81B50);
    v19 = &xmmword_81B60;
    v20 = 3;
    do
    {
      _Q20 = _Q18;
      v22 = *v19;
      __asm { SHA256SU0       V0.4S, V1.4S }

      v28 = v19[1];
      __asm { SHA256H         Q18, Q19, V4.4S }

      v30 = v19[2];
      __asm { SHA256SU1       V0.4S, V2.4S, V3.4S }

      v32 = v19[3];
      __asm { SHA256H2        Q19, Q20, V4.4S }

      v19 += 4;
      _Q4 = vaddq_s32(_Q0, v22);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V1.4S, V2.4S
        SHA256H         Q18, Q19, V5.4S
        SHA256SU1       V1.4S, V3.4S, V0.4S
        SHA256H2        Q19, Q20, V5.4S
      }

      _Q5 = vaddq_s32(_Q1, v28);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V2.4S, V3.4S
        SHA256H         Q18, Q19, V6.4S
        SHA256SU1       V2.4S, V0.4S, V1.4S
        SHA256H2        Q19, Q20, V6.4S
      }

      _Q6 = vaddq_s32(_Q2, v30);
      --v20;
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V3.4S, V0.4S
        SHA256H         Q18, Q19, V7.4S
        SHA256SU1       V3.4S, V1.4S, V2.4S
        SHA256H2        Q19, Q20, V7.4S
      }

      _Q7 = vaddq_s32(_Q3, v32);
    }

    while (!(_NF ^ _VF | _ZF));
    v44 = a2 <= 1;
    v45 = a2 - 1;
    if (!v44)
    {
      v46 = (v19 - 16);
      do
      {
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V4.4S }

        v49 = v3[1];
        v50 = v3[2];
        __asm { SHA256H2        Q19, Q20, V4.4S }

        v52 = v3[3];
        _Q4 = vaddq_s32(vrev32q_s8(*v3), *v46);
        _Q20 = _Q18;
        v3 += 4;
        __asm { SHA256H         Q18, Q19, V5.4S }

        _Q1 = vrev32q_s8(v49);
        __asm { SHA256H2        Q19, Q20, V5.4S }

        _Q5 = vaddq_s32(_Q1, v46[1]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V6.4S }

        _Q2 = vrev32q_s8(v50);
        __asm { SHA256H2        Q19, Q20, V6.4S }

        _Q6 = vaddq_s32(_Q2, v46[2]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V7.4S }

        _Q3 = vrev32q_s8(v52);
        __asm { SHA256H2        Q19, Q20, V7.4S }

        _Q7 = vaddq_s32(_Q3, v46[3]);
        v9 = vaddq_s32(v9, _Q18);
        _Q17 = vaddq_s32(_Q17, _Q19);
        _Q20 = v9;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[4]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[5]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[6]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[7]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[8]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[9]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[10]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[11]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[12]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[13]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[14]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[15]);
        v44 = v45-- <= 1;
      }

      while (!v44);
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V4.4S
      SHA256H2        Q19, Q20, V4.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V5.4S
      SHA256H2        Q19, Q20, V5.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V6.4S
      SHA256H2        Q19, Q20, V6.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V7.4S
      SHA256H2        Q19, Q20, V7.4S
    }

    *result = vaddq_s32(v9, _Q18);
    result[1] = vaddq_s32(_Q17, _Q19);
  }

  return result;
}

void ___ZNK6mach_o6Header22validSemanticsSegmentsERKNS_6PolicyEy_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 72);
  if (*a2 == 1)
  {
    v7 = (a2 + 8);
    if (_platform_strcmp((a2 + 8), "__TEXT"))
    {
      if (!_platform_strcmp((a2 + 8), "__LINKEDIT"))
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 48) + 8) + 56);
    }

    mach_o::Header::validSegment<segment_command,section>(*(a1 + 80), v6, *(a1 + 88), a2, &v14);
    mach_o::Error::operator=((*(*(a1 + 64) + 8) + 40), &v14);
    mach_o::Error::~Error(&v14);
    v8 = *(*(a1 + 48) + 8);
    v12 = (*(a2 + 28) + *(a2 + 24));
    v14 = *(a2 + 24);
    v15 = v12;
    v10 = *(a2 + 32);
    v11 = (*(a2 + 36) + v10);
  }

  else
  {
    if (*a2 != 25)
    {
      goto LABEL_14;
    }

    v7 = (a2 + 8);
    if (_platform_strcmp((a2 + 8), "__TEXT"))
    {
      if (!_platform_strcmp((a2 + 8), "__LINKEDIT"))
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 48) + 8) + 56);
    }

    mach_o::Header::validSegment<segment_command_64,section_64>(*(a1 + 80), v6, *(a1 + 88), a2, &v14);
    mach_o::Error::operator=((*(*(a1 + 64) + 8) + 40), &v14);
    mach_o::Error::~Error(&v14);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(a2 + 32) + *(a2 + 24);
    v14 = *(a2 + 24);
    v15 = v9;
    v10 = *(a2 + 40);
    v11 = *(a2 + 48) + v10;
  }

  v16 = v10;
  v17 = v11;
  v13 = _platform_strlen(v7);
  v18 = v7;
  v19 = v13;
  dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::push_back((v8 + 40), &v14);
LABEL_14:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    *a3 = 1;
  }
}

__n128 dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::push_back(vm_address_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld4::RuntimeState::PermanentRanges::Range,4294967295ull>::growTo(a1, v5);
    v4 = a1[2];
    v5 = v4 + 1;
  }

  v6 = *a1;
  a1[2] = v5;
  v7 = (v6 + 32 * v4);
  result = *a2;
  v9 = *(a2 + 16);
  *v7 = *a2;
  v7[1] = v9;
  return result;
}

uint64_t ccdigest_final_64be(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = (v7 + v6 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  memmove(v10, a2, v7 + v6 + 12);
  v11 = v10 + v7;
  v12 = v10 + v7 + 8;
  v13 = (v12 + v6);
  v14 = *(v12 + v6);
  *v10 += (8 * v14);
  *(v12 + v6) = v14 + 1;
  *(v12 + v14) = 0x80;
  v15 = *(v12 + v6);
  if (v15 < 0x39)
  {
    if (v15 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v15 <= 0x3F)
    {
      do
      {
        *v13 = v15 + 1;
        *(v12 + v15) = 0;
        v15 = *v13;
      }

      while (v15 < 0x40);
    }

    (*(a1 + 48))(v10 + 1, 1);
    v15 = 0;
    v11 = v10 + *(a1 + 8);
    v12 = (v11 + 8);
    v13 = &v11[*(a1 + 16) + 8];
    *v13 = 0;
  }

  do
  {
    *v13 = v15 + 1;
    *(v12 + v15) = 0;
    v15 = *v13;
  }

  while (v15 < 0x38);
LABEL_9:
  *(v11 + 8) = bswap64(*v10);
  (*(a1 + 48))(v10 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      *(a3 + v16) = bswap32(*(v10 + v17 + 2));
      v17 = v18++;
      v16 += 4;
    }

    while (v17 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
}

uint64_t mach_o::Header::validSegment<segment_command_64,section_64>@<X0>(mach_o::Policy *this@<X1>, uint64_t result@<X0>, unint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v7 = *(a4 + 40);
  v8 = *(a4 + 48);
  v9 = __CFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9 || v10 > a3)
  {
    return mach_o::Error::Error(a5, "segment '%s' load command content extends beyond end of file");
  }

  v12 = result;
  v13 = *(result + 12);
  if (v13 != 1)
  {
    v14 = *(a4 + 32);
    if (v8 > v14)
    {
      if (v14 || *(a4 + 60))
      {
        return mach_o::Error::Error(a5, "segment '%s' filesize exceeds vmsize");
      }

LABEL_37:
      *a5 = 0;
      return result;
    }
  }

  if (*(a4 + 60) >= 8u)
  {
    return mach_o::Error::Error(a5, "%s segment permissions has invalid bits set (0x%08X)");
  }

  if ((v13 == 8 || v13 == 6 || v13 == 2 && (*(result + 24) & 4) != 0) && mach_o::Policy::enforceTextSegmentPermissions(this) && !_platform_strcmp((a4 + 8), "__TEXT") && *(a4 + 60) != 5)
  {
    v18 = "__TEXT segment permissions is not 'r-x'";
    goto LABEL_55;
  }

  result = mach_o::Policy::enforceReadOnlyLinkedit(this);
  if (result)
  {
    result = _platform_strcmp((a4 + 8), "__LINKEDIT");
    if (!result && *(a4 + 60) != 1)
    {
      v18 = "__LINKEDIT segment permissions is not 'r--'";
      goto LABEL_55;
    }
  }

  if (*(v12 + 3) == 9)
  {
    goto LABEL_25;
  }

  result = mach_o::Policy::useProtectedStack(this);
  if (!result)
  {
    goto LABEL_25;
  }

  if (!_platform_strcmp((a4 + 8), "__DATA") && *(a4 + 60) != 3)
  {
    v18 = "__DATA segment permissions is not 'rw-'";
    goto LABEL_55;
  }

  result = _platform_strcmp((a4 + 8), "__DATA_CONST");
  if (!result)
  {
    if (*(a4 + 60) == 3)
    {
      if ((*(a4 + 68) & 0x10) == 0)
      {
        if ((v22 = 0, v19 = *(v12 + 3), v19 != 9) && v19 != 6 || (result = mach_o::Header::hasSplitSegInfo(v12, &v22), !result) || v22)
        {
          if ((*(v12 + 6) & 0x80000000) == 0)
          {
            if (*(v12 + 3) != 2 || (result = mach_o::Header::hasLoadCommand(v12, 14), result))
            {
              result = mach_o::Policy::enforceDataConstSegmentPermissions(this);
              if (result)
              {
                return mach_o::Error::Error(a5, "__DATA_CONST segment missing SG_READ_ONLY flag");
              }
            }
          }
        }
      }

      goto LABEL_25;
    }

    v18 = "__DATA_CONST segment permissions is not 'rw-'";
LABEL_55:

    return mach_o::Error::Error(a5, v18);
  }

LABEL_25:
  if (__CFADD__(*(a4 + 24), *(a4 + 32)))
  {
    return mach_o::Error::Error(a5, "'%s' segment vm range wraps");
  }

  if (*(v12 + 3) == 9)
  {
    goto LABEL_37;
  }

  v15 = *(a4 + 64);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = a4 + 80 * v15 + 72;
  v17 = a4 + 72;
  while (1)
  {
    if ((*(v17 + 40) & 0x8000000000000000) != 0)
    {
      return mach_o::Error::Error(a5, "section '%s' size too large 0x%lX");
    }

    if (*(v17 + 32) < *(a4 + 24))
    {
      v20 = *(v17 + 32);
      return mach_o::Error::Error(a5, "section '%s' start address 0x%lX is before containing segment's address 0x%0lX");
    }

    result = mach_o::Policy::enforceSectionsInSegment(this);
    if (result)
    {
      if (*(v17 + 40) + *(v17 + 32) > *(a4 + 32) + *(a4 + 24))
      {
        break;
      }
    }

    v17 += 80;
    if (v17 >= v16)
    {
      goto LABEL_37;
    }
  }

  v21 = *(v17 + 40) + *(v17 + 32);
  return mach_o::Error::Error(a5, "section '%s' end address 0x%lX is beyond containing segment's end address 0x%0lX");
}

void dyld4::RuntimeState::buildInterposingTables(dyld4::RuntimeState *this)
{
  if (*(*(this + 1) + 311) == 1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x5002000000;
    v20 = __Block_byref_object_copy__83;
    v21 = __Block_byref_object_dispose__84;
    v22 = &v31;
    v23 = 8;
    v24 = 0;
    address = 0;
    size = 0;
    v2 = *(this + 6);
    if (v2)
    {
      v3 = *(this + 5);
      v4 = 8 * v2;
      v5 = v3;
      do
      {
        v6 = *v5;
        v7 = dyld4::Loader::analyzer(*v5, this);
        if ((*(v6 + 2) & 2) == 0)
        {
          v8 = v7;
          if (dyld3::MachOFile::isDylib(v7))
          {
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 0x40000000;
            v16[2] = ___ZN5dyld412RuntimeState22buildInterposingTablesEv_block_invoke;
            v16[3] = &unk_A0E80;
            v16[4] = &v27;
            v16[5] = &v17;
            v16[6] = v6;
            mach_o::Header::forEachInterposingSection(v8, v16);
          }
        }

        ++v5;
        ++v3;
        v4 -= 8;
      }

      while (v4);
      v9 = *(v28 + 6);
      if (v9)
      {
        lsl::Vector<dyld4::InterposeTupleAll>::reserve(this + 176, v9);
        lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(this + 208, *(v28 + 6));
        v10 = v18[7];
        if (v10)
        {
          v11 = v18[5];
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            v14 = dyld4::Loader::analyzer(v13, this);
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 0x40000000;
            v15[2] = ___ZN5dyld412RuntimeState22buildInterposingTablesEv_block_invoke_2;
            v15[3] = &__block_descriptor_tmp_86;
            v15[4] = this;
            v15[5] = v14;
            v15[6] = v13;
            mach_o::Header::forEachInterposingSection(v14, v15);
            v12 -= 8;
          }

          while (v12);
        }
      }
    }

    _Block_object_dispose(&v17, 8);
    v24 = 0;
    if (address)
    {
      vm_deallocate(mach_task_self_, address, size);
    }

    _Block_object_dispose(&v27, 8);
  }
}

errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n)
{
  if (!__s)
  {
    return 22;
  }

  if (__n >= __smax)
  {
    v4 = __smax;
  }

  else
  {
    v4 = __n;
  }

  if (__n <= __smax)
  {
    v5 = 0;
  }

  else
  {
    v5 = 84;
  }

  _platform_memset(__s, __c, v4);
  return v5;
}

BOOL mach_o::Policy::enforceReadOnlyLinkedit(mach_o::Policy *this)
{
  if (*(this + 12) == 2)
  {
    v1 = &mach_o::Platform::Epoch::fall2025;
  }

  else
  {
    v1 = &mach_o::Platform::Epoch::fall2015;
  }

  return *(this + 1) >= *v1;
}

void dyld4::APIs::_dyld_for_each_objc_protocol(dyld4::RuntimeState *this, char *a2, uint64_t a3)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_objc_protocol(%s)\n", a2);
  }

  if (!*(this + 122))
  {
    goto LABEL_5;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZN5dyld44APIs28_dyld_for_each_objc_protocolEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke;
  v9[3] = &unk_A2508;
  v9[5] = this;
  v9[6] = a3;
  v9[4] = &v10;
  prebuilt_objc::forEachProtocol(this, this + 65, a2, v9);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = *(*(this + 1) + 448);
    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZN5dyld44APIs28_dyld_for_each_objc_protocolEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke_2;
      v8[3] = &__block_descriptor_tmp_139;
      v8[4] = this;
      v8[5] = a3;
      objc::ObjectHashTable::forEachObject(v7, a2, v8);
    }
  }
}

uint64_t ___ZN5dyld46Loader12validateFileER11DiagnosticsRKNS_12RuntimeStateEiPKcRKNS0_19CodeSignatureInFileERKNS0_18FileValidationInfoE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (*a2 == v3 && *(a2 + 8) == v4 && *(a2 + 16) == v5)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

__n128 dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::push_back(vm_address_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2] + 1;
  if (v5 > v4)
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = 2 * v4;
    if (v8 > v5)
    {
      v5 = v8;
    }

    v9 = (vm_page_size + 48 * v5 - 1) & -vm_page_size;
    a1[4] = v9;
    v10 = vm_allocate(mach_task_self_, a1 + 3, v9, 1006632961);
    if (v10)
    {
      dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::push_back(v17, a1 + 4, v10);
    }

    memmove(a1[3], *a1, 48 * a1[2]);
    v11 = a1[4] / 0x30;
    *a1 = a1[3];
    a1[1] = v11;
    if (v6)
    {
      vm_deallocate(mach_task_self_, v6, v7);
    }
  }

  v12 = *a1;
  v13 = a1[2];
  a1[2] = (v13 + 1);
  v14 = &v12[48 * v13];
  result = *a2;
  v16 = *(a2 + 32);
  *(v14 + 1) = *(a2 + 16);
  *(v14 + 2) = v16;
  *v14 = result;
  return result;
}

uint64_t ___ZN5dyld44APIs28_dyld_for_each_objc_protocolEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  result = objc::objc_headeropt_rw_t<unsigned long>::isLoaded(*(*(v7 + 8) + 424), a3);
  if (result)
  {
    v12 = 0;
    v11 = *(*(v7 + 8) + 368) + a2;
    v10 = 1;
    v9 = &v12;
    result = dyld4::ReadOnlyCallback<void({block_pointer})(void *,BOOL,BOOL *)>::operator()<unsigned char *,BOOL,BOOL *>((a1 + 40), &v11, &v10, &v9);
    if (v12 == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t dyld4::DyldCacheDataConstLazyScopedWriter::DyldCacheDataConstLazyScopedWriter(uint64_t this, dyld4::RuntimeState *a2)
{
  *this = a2;
  *(this + 8) = 0;
  return this;
}

uint64_t dyld4::JustInTimeLoader::handleStrongWeakDefOverrides(uint64_t this, dyld4::RuntimeState *a2, dyld4::DyldCacheDataConstLazyScopedWriter *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN5dyld416JustInTimeLoader28handleStrongWeakDefOverridesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke;
  v5[3] = &__block_descriptor_tmp_18_0;
  v5[4] = this;
  v5[5] = a2;
  v3 = *(this + 24);
  if (v3)
  {
    if ((*(v3 + 4) & 0x800) != 0)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = ___ZN5dyld416JustInTimeLoader28handleStrongWeakDefOverridesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke_2;
      v4[3] = &unk_A1B40;
      v4[5] = v3;
      v4[6] = this;
      v4[4] = v5;
      return dyld3::MachOFile::forEachTreatAsWeakDef(v4);
    }
  }

  return this;
}

void dyld4::Loader::applyFixups(uint64_t a1)
{
  if (*a1 != 1815378276)
  {
    dyld4::Loader::applyFixups();
  }

  if (*(a1 + 4))
  {

    dyld4::PrebuiltLoader::applyFixups(a1);
  }

  else
  {

    dyld4::JustInTimeLoader::applyFixups(a1);
  }
}

uint64_t dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::operator[](uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = a2 + 1;
  if (v4 <= a2 && v4 != v5)
  {
    if (v4 <= v5)
    {
      v7 = *(a1 + 8);
      if (v7 < v5)
      {
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v10 = 2 * v7;
        if (v10 <= v5)
        {
          v10 = a2 + 1;
        }

        v11 = (vm_page_size + 48 * v10 - 1) & -vm_page_size;
        *(a1 + 32) = v11;
        v12 = vm_allocate(mach_task_self_, (a1 + 24), v11, 1006632961);
        if (v12)
        {
          dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::push_back(v15, (a1 + 32), v12);
        }

        memmove(*(a1 + 24), *a1, 48 * *(a1 + 16));
        v13 = *(a1 + 32) / 0x30uLL;
        *a1 = *(a1 + 24);
        *(a1 + 8) = v13;
        if (v8)
        {
          vm_deallocate(mach_task_self_, v8, v9);
        }
      }
    }

    *(a1 + 16) = v5;
  }

  return *a1 + 48 * a2;
}

uint64_t mach_o::Header::getEntry(mach_o::Header *this, unint64_t *a2, BOOL *a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK6mach_o6Header8getEntryERyRb_block_invoke;
  v5[3] = &unk_A5260;
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = &v6;
  v5[5] = this;
  mach_o::Header::forEachLoadCommand(this, v5, &v10);
  mach_o::Error::~Error(&v10);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZNK6mach_o6Header8getEntryERyRb_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  if (*a2 == 5)
  {
    v6 = *(result + 40);
    v9 = 0;
    result = mach_o::Header::entryAddrFromThreadCmd(v6, a2, &v9);
    if (result)
    {
      v7 = v9;
      result = mach_o::Header::preferredLoadAddress(v6);
      v8 = *(v4 + 56);
      **(v4 + 48) = v7 - result;
      *v8 = 1;
      *(*(*(v4 + 32) + 8) + 24) = 1;
    }

    *a3 = 1;
  }

  else if (*a2 == -2147483608)
  {
    v5 = *(result + 56);
    **(result + 48) = *(a2 + 8);
    *v5 = 0;
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void dyld4::PrebuiltLoader::applyFixups(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  dyld4::Loader::applyFixupsCheckCachePatching(v1, v2, v7);
  v8 = *(v6 + 3);
  v9 = 960;
  if (v8 < 0)
  {
    v9 = 984;
  }

  v10 = *(v3 + v9);
  v11 = v8 & 0x7FFF;
  if ((*(v6 + 3) & 0x8000) != 0 || (*(v6 + 2) & 2) == 0)
  {
    v34 = *(v3 + v9);
    v35 = v5;
    v33 = v8 & 0x7FFF;
    v42[0] = &v47;
    v42[1] = 512;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v12 = *(v6 + 13);
    if (v12)
    {
      v13 = (v6 + *(v6 + 25));
      v14 = 8 * v12;
      do
      {
        v46[0] = dyld4::PrebuiltLoader::BindTargetRef::value(v13, v3);
        v15 = *(v3 + 1);
        if (*(v15 + 329) == 1 && *v13 >> 62 == 2)
        {
          dyld4::Loader::leafName(v6, v3);
          dyld4::RuntimeState::log(v3, "<%s/bind#%llu(variant-table#%d)> -> %p\n");
        }

        else if (*(v15 + 322) == 1)
        {
          v16 = *v13;
          dyld4::Loader::leafName(v6, v3);
          if (v16 >> 62 == 1)
          {
            dyld4::RuntimeState::log(v3, "<%s/bind#%llu> -> %p\n");
          }

          else
          {
            if (*v13 >> 62 == 1)
            {
              dyld4::PrebuiltLoader::BindTargetRef::value();
            }

            LOWORD(v38[0]) = *v13;
            v17 = dyld4::Loader::LoaderRef::loader(v38, v3);
            dyld4::Loader::leafName(v17, v3);
            if ((*v13 & 0x2000000000000000) != 0)
            {
              v18 = (*v13 >> 24) | 0xFFFFC000000000;
            }

            else
            {
              v18 = (*v13 >> 24) & 0x3FFFFFFFFFLL;
            }

            dyld4::RuntimeState::log(v3, "<%s/bind#%llu> -> %p (%s+0x%08llX)\n");
          }
        }

        dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v42, v46);
        ++v13;
        v14 -= 8;
      }

      while (v14);
    }

    if (!Diagnostics::hasError(v5))
    {
      v38[0] = v46;
      v38[1] = 32;
      address = 0;
      size = 0;
      v39 = 0;
      v19 = *(v6 + 24);
      if (v19)
      {
        v20 = (v6 + *(v6 + 23));
        v21 = 8 * v19;
        do
        {
          if (*v20 >> 62 != 1 && *v20 == 0x7FFFLL)
          {
            if (*(*(v3 + 1) + 322) == 1)
            {
              v24 = dyld4::Loader::leafName(v6, v3);
              dyld4::RuntimeState::log(v3, "<%s/bind#%llu> -> missing-weak-bind\n", v24, v39);
            }

            v36[0] = -1;
            dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v38, v36);
          }

          else
          {
            v36[0] = dyld4::PrebuiltLoader::BindTargetRef::value(v20, v3);
            if (*(*(v3 + 1) + 322) == 1)
            {
              v23 = *v20;
              dyld4::Loader::leafName(v6, v3);
              if (v23 >> 62 == 1)
              {
                dyld4::RuntimeState::log(v3, "<%s/bind#%llu> -> %p\n");
              }

              else
              {
                if (*v20 >> 62 == 1)
                {
                  dyld4::PrebuiltLoader::BindTargetRef::value();
                }

                v37 = *v20;
                v25 = dyld4::Loader::LoaderRef::loader(&v37, v3);
                dyld4::Loader::leafName(v25, v3);
                if ((*v20 & 0x2000000000000000) != 0)
                {
                  v26 = (*v20 >> 24) | 0xFFFFC000000000;
                }

                else
                {
                  v26 = (*v20 >> 24) & 0x3FFFFFFFFFLL;
                }

                dyld4::RuntimeState::log(v3, "<%s/bind#%llu> -> %p (%s+0x%08llX)\n");
              }
            }

            dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v38, v36);
          }

          ++v20;
          v21 -= 8;
        }

        while (v21);
      }

      if (!Diagnostics::hasError(v35))
      {
        if (!v6 || !*(v6 + 21) || (v27 = v6 + *(v6 + 21), v27[52] != 1) || (v28 = *v27, *v27 == -1))
        {
          v29 = dyld4::Loader::analyzer(v6, v3);
          if ((*(v6 + 2) & 2) != 0 || (v31 = *(v6 + 3) & 0x7FFF, *(v3 + 48) <= v31))
          {
            if (*(v6 + 16))
            {
              v32 = (v6 + *(v6 + 16));
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = *(*(v3 + 47) + 8 * v31);
          }

          v28 = dyld4::Loader::getOnDiskBinarySliceOffset(v3, v29, v32, v30);
        }

        memset(v36, 0, sizeof(v36));
        dyld4::Loader::applyFixupsGeneric(v6, v35, v3, v28, v42, v38, 1, v36);
        dyld4::Loader::applyFunctionVariantFixups(v6, v35, v3);
        dyld4::PrebuiltLoader::applyObjCFixups(v6, v3);
        if (dyld4::Loader::hasConstantSegmentsToProtect(v6))
        {
          dyld4::Loader::makeSegmentsReadOnly(v6, v3);
        }

        *(v34 + v33) = 6;
      }

      v39 = 0;
      if (address)
      {
        vm_deallocate(mach_task_self_, address, size);
      }
    }

    v43 = 0;
    if (v44)
    {
      vm_deallocate(mach_task_self_, v44, v45);
    }
  }

  else
  {
    dyld4::Loader::applyFunctionVariantFixups(v6, v5, v3);
    *(v10 + v11) = 6;
  }
}

BOOL mach_o::Policy::enforceSegmentOrderMatchesLoadCmds(mach_o::Policy *this)
{
  if (*(this + 12) == 2)
  {
    v1 = &mach_o::Platform::Epoch::fall2025;
  }

  else
  {
    v1 = &mach_o::Platform::Epoch::fall2019;
  }

  return *(this + 1) >= *v1;
}

void dyld4::BumpAllocator::~BumpAllocator(vm_address_t *this)
{
  if (*this)
  {
    vm_deallocate(mach_task_self_, *this, this[1]);
    this[1] = 0;
    this[2] = 0;
    *this = 0;
  }
}

void mach_o::Header::validSemanticsLinkerOptions(mach_o::Header *this@<X0>, void *a2@<X8>)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3002000000;
  v8 = __Block_byref_object_copy__19;
  v9 = __Block_byref_object_dispose__20;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header27validSemanticsLinkerOptionsERKNS_6PolicyE_block_invoke;
  v4[3] = &unk_A5098;
  v4[4] = &v5;
  mach_o::Header::forEachLoadCommand(this, v4, &v11);
  mach_o::Error::~Error(&v11);
  mach_o::Error::Error(a2, v6 + 5);
  _Block_object_dispose(&v5, 8);
  mach_o::Error::~Error(&v10);
}

void ___ZNK6mach_o6Header27validSemanticsLinkerOptionsERKNS_6PolicyE_block_invoke(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 45)
  {
    v10[7] = v3;
    v10[8] = v4;
    v5 = a2[2];
    if (v5)
    {
      v8 = a2 + a2[1];
      v9 = (a2 + 3);
      while (1)
      {
        v9 += _platform_strlen(v9) + 1;
        if (v9 > v8)
        {
          break;
        }

        if (!--v5)
        {
          return;
        }
      }

      mach_o::Error::Error(v10, "malformed LC_LINKER_OPTION command");
      mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), v10);
      mach_o::Error::~Error(v10);
      *a3 = 1;
    }
  }
}

void dyld4::Loader::applyFixupsCheckCachePatching(dyld4::Loader *this, dyld4::RuntimeState *a2, dyld4::DyldCacheDataConstLazyScopedWriter *a3)
{
  if ((*(this + 2) & 2) != 0 && ((*(a2 + 1110) & 1) != 0 || *(a2 + 1111) == 1))
  {
    v6 = *(a2 + 6);
    if (v6)
    {
      v7 = *(a2 + 5);
      v8 = 8 * v6;
      v9 = v7;
      do
      {
        v10 = *v9++;
        dyld4::Loader::applyCachePatchesTo(v10, a2, this, a3);
        ++v7;
        v8 -= 8;
      }

      while (v8);
    }
  }
}

void mach_o::Header::validSemanticsMain(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, mach_o::Error *a3@<X8>)
{
  if ((*(this + 6) & 0x80000000) == 0 || !mach_o::Policy::enforceMainFlagsCorrect(a2))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3002000000;
    v22 = __Block_byref_object_copy__19;
    v23 = __Block_byref_object_dispose__20;
    v24 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v18[3] = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZNK6mach_o6Header18validSemanticsMainERKNS_6PolicyE_block_invoke;
    v9[3] = &unk_A5070;
    v9[7] = v18;
    v9[8] = this;
    v9[4] = &v14;
    v9[5] = &v19;
    v9[6] = &v10;
    mach_o::Header::forEachLoadCommand(this, v9, &v7);
    mach_o::Error::~Error(&v7);
    if (v20[5])
    {
      mach_o::Error::Error(a3, v20 + 5);
    }

    else if (v15[3] && v11[3])
    {
      mach_o::Error::Error(a3, "can't have LC_MAIN and LC_UNIXTHREAD load commands");
    }

    else
    {
      v7 = &mach_o::PlatformInfo_driverKit::singleton;
      v8 = 0;
      v5 = mach_o::Header::builtForPlatform(this, &v7, 0);
      v6 = v15[3];
      if (v5)
      {
        if (v6 || v11[3])
        {
          mach_o::Error::Error(a3, "LC_MAIN not allowed for driverkit");
          goto LABEL_19;
        }
      }

      else if (!v6 && !v11[3])
      {
        mach_o::Error::Error(a3, "missing LC_MAIN or LC_UNIXTHREAD in main executable");
        goto LABEL_19;
      }

      *a3 = 0;
    }

LABEL_19:
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(&v19, 8);
    mach_o::Error::~Error(&v24);
    return;
  }

  mach_o::Error::Error(a3, "MH_EXECUTE has MH_DYLIB_IN_CACHE bit set");
}

void *dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(vm_address_t *address, vm_address_t a2)
{
  v3 = address[3];
  v5 = (address + 4);
  v4 = address[4];
  v6 = 2 * address[1];
  if (v6 <= a2)
  {
    v6 = a2;
  }

  v7 = (vm_page_size + 8 * v6 - 1) & -vm_page_size;
  *v5 = v7;
  if (vm_allocate(mach_task_self_, address + 3, v7, 1006632961))
  {
    dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(v11, v5);
  }

  result = memmove(address[3], *address, 8 * address[2]);
  v9 = address[4] >> 3;
  *address = address[3];
  address[1] = v9;
  if (v3)
  {
    v10 = mach_task_self_;

    return vm_deallocate(v10, v3, v4);
  }

  return result;
}

void ___ZNK6mach_o6Header18validSemanticsMainERKNS_6PolicyE_block_invoke(void *a1, _DWORD *a2)
{
  if (*a2 == 5)
  {
    v5 = a1[8];
    v6 = *(a1[6] + 8);
    if (*(v6 + 24))
    {
      mach_o::Error::Error(&v7, "multiple LC_UNIXTHREAD load commands");
      mach_o::Error::operator=((*(a1[5] + 8) + 40), &v7);
      mach_o::Error::~Error(&v7);
      v6 = *(a1[6] + 8);
    }

    *(v6 + 24) = a2;
    if ((mach_o::Header::entryAddrFromThreadCmd(v5, *(*(a1[6] + 8) + 24), (*(a1[7] + 8) + 24)) & 1) == 0)
    {
      mach_o::Error::Error(&v7, "invalid LC_UNIXTHREAD");
      mach_o::Error::operator=((*(a1[5] + 8) + 40), &v7);
      mach_o::Error::~Error(&v7);
    }
  }

  else if (*a2 == -2147483608)
  {
    v4 = *(a1[4] + 8);
    if (*(v4 + 24))
    {
      mach_o::Error::Error(&v7, "multiple LC_MAIN load commands");
      mach_o::Error::operator=((*(a1[5] + 8) + 40), &v7);
      mach_o::Error::~Error(&v7);
      v4 = *(a1[4] + 8);
    }

    *(v4 + 24) = a2;
  }
}

uint64_t dyld4::Loader::getOnDiskBinarySliceOffset(dyld4::Loader *this, dyld4::RuntimeState *a2, const dyld3::MachOFile *a3, const char *a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3802000000;
  v18 = __Block_byref_object_copy__188;
  v19 = __Block_byref_object_dispose__189;
  Diagnostics::Diagnostics(v20);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = *(this + 1);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZN5dyld46Loader26getOnDiskBinarySliceOffsetERNS_12RuntimeStateEPKN5dyld39MachOFileEPKc_block_invoke;
  v10[3] = &unk_A1A20;
  v10[5] = &v11;
  v10[6] = a2;
  v10[4] = &v15;
  dyld4::SyscallDelegate::withReadOnlyMappedFile(v7, (v16 + 5), a3, 0, v10);
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  Diagnostics::~Diagnostics(v20);
  return v8;
}

dyld3::MachOAnalyzer *dyld4::SyscallDelegate::withReadOnlyMappedFile(int a1, Diagnostics *a2, dyld3 *a3, int a4, uint64_t a5)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  v9 = -1;
  if (a4)
  {
    v6 = &v10;
  }

  else
  {
    v6 = 0;
  }

  result = dyld4::SyscallDelegate::mapFileReadOnly(a1, a2, a3, &v9, &v12, v11, v6, v13);
  if (result)
  {
    v8 = result;
    (*(a5 + 16))(a5, result, v12, v10, v11, v13, v9);
    munmap(v8, v12);
    return close(v9);
  }

  return result;
}

void ___ZN5dyld46Loader26getOnDiskBinarySliceOffsetERNS_12RuntimeStateEPKN5dyld39MachOFileEPKc_block_invoke(uint64_t a1, dyld3::FatFile *this, unint64_t a3)
{
  v6 = dyld3::FatFile::isFatFile(this, this);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = ___ZN5dyld46Loader26getOnDiskBinarySliceOffsetERNS_12RuntimeStateEPKN5dyld39MachOFileEPKc_block_invoke_2;
    v8[3] = &unk_A19F8;
    v9 = *(a1 + 40);
    v10 = this;
    dyld3::FatFile::forEachSlice(v6, (v7 + 40), a3, v8);
  }
}

_DWORD *dyld3::FatFile::isFatFile(_DWORD *this, const void *a2)
{
  if ((*this | 0x1000000) != 0xBFBAFECA)
  {
    return 0;
  }

  return this;
}

void dyld4::Loader::applyFixupsGeneric(dyld4::Loader *a1, Diagnostics *a2, dyld4::RuntimeState *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Address = dyld4::Loader::loadAddress(a1, a3);
  Slide = dyld3::MachOLoaded::getSlide(Address);
  if (dyld3::MachOFile::hasChainedFixups(Address))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    if (!*(*(a3 + 1) + 228) || !dyld3::MachOFile::hasChainedFixupsLoadCommand(Address) || *(a5 + 16) >> 5 > 0xC34uLL || (*(a1 + 2) & 0x4000) != 0 || (dyld4::Loader::setUpPageInLinking(a1, a2, a3, Slide, a4, a5), hasError = Diagnostics::hasError(a2), Diagnostics::clearError(a2), hasError))
    {
      if (dyld3::MachOFile::hasChainedFixupsLoadCommand(Address))
      {
        mach_o::Image::Image(__src, Address);
        v18 = mach_o::Header::preferredLoadAddress(__src[0]);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 0x40000000;
        v31[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke;
        v31[3] = &__block_descriptor_tmp_94_0;
        memmove(v32, __src, 0x1B0uLL);
        v32[54] = v18;
        v32[55] = a2;
        v32[56] = a5;
        v32[57] = a3;
        mach_o::Image::withSegments(__src, v31);
      }

      else
      {
        v19 = dyld3::MachOAnalyzer::chainStartsOffset(Address);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 0x40000000;
        v26[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_4;
        v26[3] = &__block_descriptor_tmp_97;
        v26[4] = Address;
        v26[5] = a2;
        v26[6] = Slide;
        v26[7] = a5;
        v26[8] = a3;
        dyld3::MachOAnalyzer::withChainStarts(Address, a2, v19, v26);
      }

      v25 = 0;
      __src[0] = 0;
      if (dyld4::Loader::overridesDylibInCache(a1, __src, &v25))
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 0x40000000;
        v24[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_6;
        v24[3] = &unk_A1618;
        v24[4] = &v27;
        mach_o::Header::forEachSegment(Address, v24);
      }
    }

    v25 = 0;
    __src[0] = 0;
    if (dyld4::Loader::overridesDylibInCache(a1, __src, &v25))
    {
      v20 = (*(v28 + 6) + 3 * vm_page_size);
      *(v28 + 6) = v20;
      dyld4::RuntimeState::increaseJetsamLimit(a3, v20);
    }

    _Block_object_dispose(&v27, 8);
  }

  else if (dyld3::MachOFile::hasOpcodeFixups(Address))
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 0x40000000;
    v23[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_7;
    v23[3] = &__block_descriptor_tmp_101_1;
    v23[4] = Address;
    v23[5] = Slide;
    v23[6] = a3;
    dyld3::MachOAnalyzer::forEachRebaseLocation_Opcodes(Address, a2, v23);
    if (!Diagnostics::hasError(a2))
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 0x40000000;
      v22[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_8;
      v22[3] = &__block_descriptor_tmp_104;
      v22[4] = a1;
      v22[5] = Address;
      v22[6] = a5;
      v22[7] = a8;
      v22[8] = a3;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 0x40000000;
      v21[2] = ___ZNK5dyld46Loader18applyFixupsGenericER11DiagnosticsRNS_12RuntimeStateEyRKN5dyld35ArrayIPKvEESB_bRKNS6_INS0_21MissingFlatLazySymbolEEE_block_invoke_9;
      v21[3] = &__block_descriptor_tmp_107_0;
      v21[4] = a1;
      v21[5] = Address;
      v21[6] = a6;
      v21[7] = a3;
      dyld3::MachOAnalyzer::forEachBindLocation_Opcodes(Address, a2, v22, v21);
    }
  }
}

lsl::Allocator::Pool *dyld4::JustInTimeLoader::make(uint64_t a1, mach_o::Header *this, const char *a3, __int128 *a4, uint64_t a5, char a6, char a7, int a8, __int16 a9)
{
  v47 = 1;
  v16 = mach_o::Header::linkedDylibCount(this, &v47);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 1;
  }

  v18 = 8 * v17 + 472;
  v19 = v16;
  if (v47)
  {
    v20 = 0;
  }

  else
  {
    v20 = v16;
  }

  v40 = a3;
  v21 = _platform_strlen(a3);
  v22 = lsl::Allocator::malloc(*(a1 + 16), v21 + v20 + v18 + 1);
  memset(v53, 0, sizeof(v53));
  dyld4::Loader::InitialOptions::InitialOptions(&v41);
  LOBYTE(v41) = DyldSharedCache::inDyldCache(*(*(a1 + 8) + 368), this, v23);
  BYTE1(v41) = dyld3::MachOFile::hasObjC(this);
  BYTE2(v41) = mach_o::Header::hasPlusLoadMethod(this);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 0x40000000;
  v48[2] = ___ZN5dyld4L12hasDataConstEPKN6mach_o6HeaderE_block_invoke;
  v48[3] = &unk_A1D40;
  v48[4] = &v49;
  mach_o::Header::forEachSegment(this, v48);
  v24 = *(v50 + 24);
  _Block_object_dispose(&v49, 8);
  hasConstObjCSection = 0;
  BYTE3(v41) = v24;
  BYTE4(v41) = a6 | a8;
  BYTE5(v41) = a7;
  if (BYTE1(v41) == 1)
  {
    hasConstObjCSection = dyld3::MachOFile::hasConstObjCSection(this);
  }

  BYTE6(v41) = hasConstObjCSection;
  HIBYTE(v41) = dyld3::MachOFile::enforceFormat(this, 16) ^ 1;
  Uuid = mach_o::Header::getUuid(this, v53);
  hasWeakDefs = dyld3::MachOFile::hasWeakDefs(this);
  hasThreadLocalVariables = mach_o::Header::hasThreadLocalVariables(this);
  if (dyld3::MachOFile::isDylib(this))
  {
    v26 = mach_o::Header::installName(this);
    v27 = _platform_strncmp(v26, "/usr/lib/system/lib", 0x13uLL) == 0;
  }

  else
  {
    v27 = 0;
  }

  v45 = v27;
  hasFunctionVariantFixups = mach_o::Header::hasFunctionVariantFixups(this);
  dyld4::Loader::Loader(v22, &v41, 0, 0, 0, 0);
  *(v22 + 4) = this;
  *(v22 + 6) = 0;
  v28 = *a4;
  v29 = a4[1];
  *(v22 + 7) = xmmword_8C9A0;
  *(v22 + 72) = v29;
  *(v22 + 56) = v28;
  *(v22 + 11) = 0;
  *(v22 + 12) = 0;
  *(v22 + 13) = 0;
  *(v22 + 58) = 0;
  if (v47)
  {
    v30 = 0;
  }

  else
  {
    v30 = v19;
  }

  *(v22 + 5) = *(v22 + 5) & 0xFFFFFFFFFFF00000 | (v30 + v18);
  isDylib = dyld3::MachOFile::isDylib(this);
  v32 = 0;
  if (isDylib)
  {
    v33 = mach_o::Header::installName(this);
    v32 = (_platform_strcmp(v33, v40) != 0) << 20;
  }

  *(v22 + 5) = *(v22 + 5) & 0xFFFFFFFF4FFFFFLL | v32 | (v47 << 23);
  *(v22 + 6) = a5;
  if (Uuid == 1)
  {
    *(v22 + 8) = *v53;
  }

  else
  {
    bzero(v22 + 8, 0x10uLL);
  }

  *(v22 + 6) = *(this + 2);
  dyld4::JustInTimeLoader::parseSectionLocations(this, v22 + 120);
  if ((dyld3::MachOFile::hasExportTrie(this, v22 + 28, v22 + 29) & 1) == 0)
  {
    *(v22 + 14) = 0;
  }

  *(v22 + 11) = 0;
  *(v22 + 13) = 0;
  v34 = 0x400000;
  if (!a8)
  {
    v34 = 0;
  }

  v35 = v34 & 0xFFFFFF8000FFFFFFLL | ((a9 & 0x7FFF) << 24) | (v19 << 39) | *(v22 + 5) & 0xFF80000000BFFFFFLL;
  *(v22 + 5) = v35;
  if (v19)
  {
    v36 = 0;
    v37 = v22 + 464;
    do
    {
      *(v22 + v36 + 58) = 0;
      if (!v47)
      {
        *dyld4::JustInTimeLoader::dependentAttrs(v22, v36) = mach_o::LinkedDylibAttributes::regular;
      }

      ++v36;
      v37 += 8;
    }

    while (v19 != v36);
    LOWORD(v35) = *(v22 + 20);
  }

  strlcpy(v22 + v35, v40, 0x400uLL);
  *(v22 + 5) &= ~0x80000000000000uLL;
  dyld4::RuntimeState::add(a1, v22);
  if (a8)
  {
    if (v41 == 1)
    {
      *(a1 + 1111) = v41;
    }

    else
    {
      *(a1 + 1110) = 1;
    }
  }

  if (*(*(a1 + 8) + 327) == 1)
  {
    dyld4::RuntimeState::log(a1, "using JustInTimeLoader %p for %s\n", v22, v40);
  }

  return v22;
}

uint64_t mach_o::Header::linkedDylibCount(mach_o::Header *this, BOOL *a2)
{
  if (a2)
  {
    *a2 = 1;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header16linkedDylibCountEPb_block_invoke;
  v4[3] = &unk_A51E8;
  v4[4] = &v5;
  v4[5] = a2;
  mach_o::Header::forEachLinkedDylib(this, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void dyld4::Loader::setUpPageInLinking(dyld4::Loader *a1, Diagnostics *a2, dyld4::RuntimeState *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 + 1);
  v13 = dyld4::Loader::path(a1, a3);
  v14 = dyld4::SyscallDelegate::open(v12, v13, 0, 0);
  if (v14 == -1)
  {
    v18 = dyld4::Loader::path(a1, a3);
    v19 = __error();
    Diagnostics::error(a2, "open(%s, O_RDONLY) failed with errno=%d", v18, *v19);
  }

  else
  {
    v15 = v14;
    v16 = *(a3 + 1);
    v17 = v16[57] >= 2 && (*(a3 + 1114) & 1) == 0 && !dyld4::SyscallDelegate::sandboxBlockedPageInLinking(v16);
    v20 = dyld4::Loader::loadAddress(a1, a3);
    v21 = *(*(a3 + 1) + 224);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2000000000;
    v38 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2000000000;
    v36 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x5002000000;
    v31[3] = __Block_byref_object_copy__2;
    v31[4] = __Block_byref_object_dispose__2;
    v31[5] = &v40;
    v31[6] = 8;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x5002000000;
    v27[3] = __Block_byref_object_copy__2;
    v27[4] = __Block_byref_object_dispose__2;
    v27[5] = &v39;
    v27[6] = 8;
    v28 = 0;
    address = 0;
    size = 0;
    v22 = dyld3::MachOAnalyzer::chainStartsOffset(v20);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 0x40000000;
    v23[2] = ___ZNK5dyld46Loader18setUpPageInLinkingER11DiagnosticsRNS_12RuntimeStateEmyRKN5dyld35ArrayIPKvEE_block_invoke;
    v23[3] = &unk_A1550;
    v23[8] = a1;
    v23[9] = v20;
    v23[4] = v37;
    v23[5] = v35;
    v23[6] = v31;
    v24 = v15;
    v23[10] = a2;
    v23[11] = a5;
    v25 = v17;
    v26 = v21;
    v23[7] = v27;
    v23[12] = a4;
    v23[13] = a3;
    v23[14] = a6;
    dyld3::MachOAnalyzer::withChainStarts(v20, a2, v22, v23);
    dyld4::SyscallDelegate::close(*(a3 + 1), v15);
    _Block_object_dispose(v27, 8);
    v28 = 0;
    if (address)
    {
      vm_deallocate(mach_task_self_, address, size);
    }

    _Block_object_dispose(v31, 8);
    v32 = 0;
    if (v33)
    {
      vm_deallocate(mach_task_self_, v33, v34);
    }

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
  }
}

void mach_o::Header::forEachLinkedDylib(mach_o::Error *a1, uint64_t a2)
{
  if (*(a1 + 3) != 7)
  {
    v25 = v2;
    v26 = v3;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = ___ZNK6mach_o6Header18forEachLinkedDylibEU13block_pointerFvPKcNS_21LinkedDylibAttributesENS_9Version32ES4_bRbE_block_invoke;
    v12[3] = &unk_A5210;
    v12[4] = a2;
    v12[5] = &v17;
    v12[6] = &v13;
    mach_o::Header::forEachLoadCommand(a1, v12, &v21);
    mach_o::Error::~Error(&v21);
    if (*(v18 + 6) || (v14[3] & 1) != 0)
    {
      goto LABEL_20;
    }

    mach_o::Header::platformAndVersions(a1, &v21);
    if (v21 != &mach_o::PlatformInfo_driverKit::singleton || v22)
    {
      mach_o::Header::platformAndVersions(a1, &v21);
      isExclaveKit = mach_o::Platform::isExclaveKit(&v21);
      v9 = *(a1 + 3);
      if (isExclaveKit)
      {
        if (v9 == 6)
        {
          v10 = mach_o::Header::installName(a1);
          if (!_platform_strncmp(v10, "/System/ExclaveKit/usr/lib/system/", 0x22uLL))
          {
            goto LABEL_20;
          }
        }

        v7 = "/System/ExclaveKit/usr/lib/libSystem.dylib";
      }

      else
      {
        if (v9 == 6)
        {
          v11 = mach_o::Header::installName(a1);
          if (!_platform_strncmp(v11, "/usr/lib/system/", 0x10uLL))
          {
            goto LABEL_20;
          }
        }

        v7 = "/usr/lib/libSystem.B.dylib";
      }
    }

    else
    {
      if (*(a1 + 3) == 6)
      {
        v21 = 0;
        v23 = 0x10000;
        v24 = 0x10000;
        v6 = mach_o::Header::getDylibInstallName(a1, &v21, &v24, &v23) ? v21 : 0;
        if (!_platform_strncmp(v6, "/System/DriverKit/usr/lib/system/", 0x21uLL))
        {
          goto LABEL_20;
        }
      }

      v7 = "/System/DriverKit/usr/lib/libSystem.B.dylib";
    }

    (*(a2 + 16))(a2, v7, 0, 0x10000, 0x10000, 1, v14 + 3);
LABEL_20:
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }
}

const void **lsl::ProtectedStack::getRange(const void **this, const void **a2, const void **a3)
{
  v3 = this[1];
  if (v3)
  {
    v4 = this[1];
  }

  *a2 = v3;
  if (*this)
  {
    v5 = *this;
  }

  *a3 = *this;
  return this;
}

uint64_t ___ZNK6mach_o6Header18forEachLinkedDylibEU13block_pointerFvPKcNS_21LinkedDylibAttributesENS_9Version32ES4_bRbE_block_invoke(uint64_t result, mach_o::Header *this, _BYTE *a3)
{
  if ((*this + 2147483624) <= 0xB && ((1 << (*this - 24)) & 0x881) != 0 || *this == 12)
  {
    v7 = result;
    v8 = *(this + 2);
    v9 = *(result + 32);
    CommandToDylibKind = mach_o::Header::loadCommandToDylibKind(this, this);
    result = (*(v9 + 16))(v9, this + v8, CommandToDylibKind, *(this + 5), *(this + 4), 0, a3);
    ++*(*(*(v7 + 40) + 8) + 24);
    if (*a3 == 1)
    {
      *(*(*(v7 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t dyld3::MachOAnalyzer::chainedFixupsHeader(dyld3::MachOAnalyzer *this)
{
  Diagnostics::Diagnostics(v7);
  dyld3::MachOLoaded::getLinkEditPointers(this, v7, &v4);
  LinkEditContent = 0;
  if (!Diagnostics::hasError(v7) && v5)
  {
    LinkEditContent = dyld3::MachOLoaded::getLinkEditContent(this, &v6, *(v5 + 8));
  }

  Diagnostics::~Diagnostics(v7);
  return LinkEditContent;
}

uint64_t mach_o::Header::loadCommandToDylibKind(mach_o::Header *this, const dylib_command *a2)
{
  if (*(this + 3) == 443815936 && *(this + 2) == 28)
  {
    return *(this + 6);
  }

  v3 = *this;
  if (*this > -2147483614)
  {
    if (v3 == -2147483613)
    {
      return 4;
    }

    else
    {
      if (v3 != 12)
      {
        goto LABEL_13;
      }

      return 0;
    }
  }

  else
  {
    if (v3 != -2147483624)
    {
      if (v3 == -2147483617)
      {
        return 2;
      }

LABEL_13:
      mach_o::Header::loadCommandToDylibKind();
    }

    return 1;
  }
}

void dyld4::APIs::_dyld_images_for_addresses(dyld4::RuntimeState *this, unsigned int a2, char **a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_images_for_addresses(%d, %p, %p)\n", a2, a3, a4);
  }

  v18 = 0;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (a2)
  {
    v8 = 0;
    for (i = a2; i; --i)
    {
      v10 = *v5;
      bzero(v4, 0x20uLL);
      v11 = v18;
      if (v18)
      {
        v12 = v18 > v10;
      }

      else
      {
        v12 = 1;
      }

      if (!v12 && v8 >= v10)
      {
        goto LABEL_14;
      }

      if ((dyld4::APIs::findImageMappedAt(this, v10, &v18, &v17, &v16, &v15, &v14, 0, 0) & 1) == 0)
      {
        v18 = 0;
        goto LABEL_16;
      }

      v11 = v18;
      v8 = v18 + v14;
      if (v18)
      {
LABEL_14:
        v4[2] = v10 - v11;
        v4[3] = v11;
        mach_o::Header::getUuid(v11, v4);
      }

LABEL_16:
      ++v5;
      v4 += 4;
    }
  }
}

uint64_t dyld3::MachOAnalyzer::chainStartsOffset(dyld3::MachOAnalyzer *this)
{
  result = dyld3::MachOAnalyzer::chainedFixupsHeader(this);
  if (result)
  {
    return result - this + *(result + 4);
  }

  return result;
}

uint64_t ___ZNK6mach_o6Header16linkedDylibCountEPb_block_invoke(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *v3 = 0;
  }

  ++*(*(*(result + 32) + 8) + 24);
  return result;
}

void ___ZNK5dyld46Loader18setUpPageInLinkingER11DiagnosticsRNS_12RuntimeStateEmyRKN5dyld35ArrayIPKvEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5dyld46Loader18setUpPageInLinkingER11DiagnosticsRNS_12RuntimeStateEmyRKN5dyld35ArrayIPKvEE_block_invoke_2;
  v9[3] = &unk_A1528;
  v5 = *(a1 + 80);
  v13 = a2;
  v14 = v5;
  v16 = *(a1 + 120);
  v15 = *(a1 + 88);
  v17 = *(a1 + 124);
  v18 = *(a1 + 125);
  v6 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = &v19;
  mach_o::Header::forEachSegment(v3, v9);
  if (v20[3])
  {
    v7 = *(*(a1 + 48) + 8);
    if (*(v7 + 56) && dyld4::setUpPageInLinkingRegions(*(a1 + 104), v4, *(a1 + 96), *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 104) + 8) + 228) == 1, (v7 + 40), *(a1 + 112)))
    {
      dyld4::setUpPageInLinkingRegions(*(a1 + 104), v4, *(a1 + 96), *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), 1, (*(*(a1 + 48) + 8) + 40), *(a1 + 112));
    }

    v8 = *(*(a1 + 56) + 8);
    if (*(v8 + 56))
    {
      dyld4::setUpPageInLinkingRegions(*(a1 + 104), v4, *(a1 + 96), *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), 1, (v8 + 40), *(a1 + 112));
    }
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t cerror_nocancel(int a1)
{
  errno = a1;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v1)
  {
    *v1 = a1;
  }

  return -1;
}

void ___ZNK5dyld46Loader18setUpPageInLinkingER11DiagnosticsRNS_12RuntimeStateEmyRKN5dyld35ArrayIPKvEE_block_invoke_2(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  v5 = *(a2 + 22);
  v6 = *(a1 + 72);
  if (*v6 > v5)
  {
    v7 = v6[v5 + 1];
    if (v7)
    {
      v29 = v3;
      v30 = v4;
      v11 = (v6 + v7);
      v12 = *(*(a1 + 32) + 8);
      v13 = v11[3];
      if (*(v12 + 24))
      {
        if (*(v12 + 24) != v13)
        {
          Diagnostics::error(*(a1 + 80), "pointer_format is different in different segments");
          *a3 = 1;
        }
      }

      else
      {
        *(v12 + 24) = v13;
      }

      v14 = *(*(a1 + 40) + 8);
      v15 = v11[2];
      if (*(v14 + 24))
      {
        if (*(v14 + 24) != v15)
        {
          Diagnostics::error(*(a1 + 80), "page_size is different in different segments");
          *a3 = 1;
        }
      }

      else
      {
        *(v14 + 24) = v15;
      }

      v16 = *(a1 + 88) + *(a2 + 8);
      v17 = *(a1 + 96) + *(a2 + 2);
      v18 = *(a2 + 47);
      v22 = *(a1 + 104);
      v23 = v18;
      v24 = v16;
      v25 = v17;
      v19 = v11[10];
      v26 = v11[10] * *(*(*(a1 + 40) + 8) + 24);
      v27 = *a2;
      v28 = v11;
      if (*(a1 + 108) == 1 && ((v20 = *(a2 + 10), (v20 & 0x10) != 0) || v19 >= 2) && (v21 = *(*(a1 + 48) + 8), *(v21 + 56) <= 4uLL))
      {
        if (v20 & 0x10) != 0 && (*(a1 + 109))
        {
          v23 = v18 | 0x200;
        }
      }

      else
      {
        v21 = *(*(a1 + 56) + 8);
      }

      dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::push_back((v21 + 40), &v22);
      *(*(*(a1 + 64) + 8) + 24) = v11;
    }
  }
}

__n128 dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::push_back(vm_address_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld4::PageInLinkingRange,4294967295ull>::growTo(a1, v5);
    v4 = a1[2];
    v5 = v4 + 1;
  }

  v6 = *a1;
  a1[2] = v5;
  v7 = v6 + 56 * v4;
  result = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = result;
  return result;
}

void *dyld4::Loader::InitialOptions::InitialOptions(void *this)
{
  *(this + 5) = 0;
  *this = 0;
  return this;
}

uint64_t dyld4::setUpPageInLinkingRegions(const dyld4::RuntimeState *a1, dyld4::Loader *a2, uint64_t a3, int a4, __int16 a5, int a6, void *a7, uint64_t a8)
{
  v9 = a7;
  LODWORD(v68) = a6;
  v11 = a4;
  v70 = a2;
  v13 = a7[2];
  v14 = 4 * v13 + 4;
  v71 = a1;
  if (v13)
  {
    v15 = (*a7 + 48);
    v16 = 56 * v13;
    do
    {
      v17 = *v15;
      v15 += 7;
      v14 = (v14 + *v17 + 3) & 0xFFFFFFFC;
      v16 -= 56;
    }

    while (v16);
  }

  v18 = (v14 + 47) & 0xFFFFFFF8;
  v19 = *(a8 + 16);
  if (a4 == 3)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  __chkstk_darwin(a1);
  v22 = &v67 - v21;
  v69 = v23;
  bzero(&v67 - v21, v23);
  *v22 = 7;
  *(v22 + 2) = a5;
  *(v22 + 3) = v11;
  *(v22 + 2) = v18;
  *(v22 + 3) = v19;
  *(v22 + 4) = 40;
  *(v22 + 5) = v14;
  *(v22 + 3) = a3;
  *(v22 + 4) = dyld4::Loader::loadAddress(v70, v71);
  v24 = memmove(&v22[v18], *a8, (v19 << v20));
  v25 = v9[2];
  v26 = &v22[*(v22 + 4)];
  *v26 = v25;
  if (v25)
  {
    v27 = 0;
    v67 = v9;
    v28 = *v9;
    v29 = 4 * v25 + 4;
    v30 = v26 + 4;
    v31 = (v28 + 3);
    v32 = 56 * v25;
    v33 = 56 * v25;
    do
    {
      v30[v27] = v29;
      v34 = *v31;
      v31 += 7;
      v35 = *v34;
      v36 = memmove(&v22[*(v22 + 4) + v29], v34, *v34);
      ++v27;
      v29 += v35;
      v33 -= 56;
    }

    while (v33);
    __chkstk_darwin(v36);
    v42 = (&v67 - (v41 & 0xFFFFFFFFFFFFFFE0 | 0x10));
    v43 = 0;
    v44 = v42;
    v9 = v67;
    do
    {
      if (v25 == v43)
      {
        ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
      }

      ++v43;
      v45 = v28[1];
      *&v44->mwlr_fd = *v28;
      *&v44->mwlr_address = v45;
      ++v44;
      v28 = (v28 + 56);
      v32 -= 56;
    }

    while (v32);
  }

  else
  {
    __chkstk_darwin(v24);
    v42 = &v66;
    LODWORD(v43) = 0;
  }

  v46 = v71;
  if (v68)
  {
    v47 = v69;
    return dyld4::dyld_map_with_linking_np(v22, v47, v37, v38, v39, v40);
  }

  v68 = v42;
  v48 = *(v71 + 1);
  if ((*(v48 + 322) & 1) != 0 || *(v48 + 321) == 1)
  {
    v49 = dyld4::Loader::path(v70, v71);
    dyld4::RuntimeState::log(v46, "Setting up kernel page-in linking for %s\n", v49);
    v50 = v9[2];
    if (v50)
    {
      v51 = (*v9 + 24);
      v52 = 56 * v50;
      do
      {
        v54 = v51[1];
        v53 = v51[2];
        v55 = *(v51 - 5);
        v56 = *(v51 - 1);
        v57 = *v51 + v56;
        v65 = *(v51 - 2);
        v66 = *v51 >> 10;
        if ((v55 & 4) != 0)
        {
          v58 = 120;
        }

        else
        {
          v58 = 46;
        }

        v64 = v58;
        if ((v55 & 2) != 0)
        {
          v59 = 119;
        }

        else
        {
          v59 = 46;
        }

        if (v55)
        {
          v60 = 114;
        }

        else
        {
          v60 = 46;
        }

        dyld4::RuntimeState::log(v46, "%14.*s (%c%c%c) 0x%012llX->0x%012llX (fileOffset=0x%0llX, size=%lluKB)\n", v53, v54, v60, v59, v64, v56, v57, v65, v66);
        v51 += 7;
        v52 -= 56;
      }

      while (v52);
    }
  }

  v47 = v69;
  result = __map_with_linking_np(v68, v43, v22, v69);
  if (result)
  {
    v62 = *(v46 + 1);
    if ((*(v62 + 322) & 1) != 0 || *(v62 + 321) == 1)
    {
      v63 = dyld4::Loader::path(v70, v46);
      dyld4::RuntimeState::log(v46, "__map_with_linking_np(%s) failed, falling back to linking in-process\n", v63);
    }

    return dyld4::dyld_map_with_linking_np(v22, v47, v37, v38, v39, v40);
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_get_image_uuid(dyld4::APIs *this, mach_header *a2, unsigned __int8 *a3)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_image_uuid(%p, %p)\n", a2, a3);
  }

  result = dyld3::MachOFile::hasMachOMagic(a2);
  if (result)
  {

    return mach_o::Header::getUuid(a2, a3);
  }

  return result;
}

int __map_with_linking_np(const mwl_region regions[], uint32_t regionCount, const mwl_info_hdr *blob, uint32_t blobSize)
{
  result = mac_syscall(SYS_map_with_linking_np, regions, regionCount, blob, blobSize);
  if (v4)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t dyld3::MachOFile::hasObjC(dyld3::MachOFile *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK5dyld39MachOFile7hasObjCEv_block_invoke;
  v3[3] = &unk_A3588;
  v3[4] = &v4;
  v3[5] = this;
  mach_o::Header::forEachSection(this, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void prebuilt_objc::forEachProtocol(dyld4::RuntimeState *a1, void *a2, const char *a3, uint64_t a4)
{
  v5 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN13prebuilt_objc15forEachProtocolEPN5dyld412RuntimeStateERKN5dyld312MultiMapViewINS_19ObjCStringKeyOnDiskENS_24ObjCObjectOnDiskLocationENS_23HashObjCStringKeyOnDiskENS_24EqualObjCStringKeyOnDiskEEEPKcU13block_pointerFvRKNS3_5ArrayIPKNS0_14PrebuiltLoader13BindTargetRefEEEE_block_invoke;
  v4[3] = &unk_A2D18;
  v4[4] = a4;
  dyld3::MultiMapBase<prebuilt_objc::ObjCStringKeyOnDisk,prebuilt_objc::ObjCObjectOnDiskLocation,prebuilt_objc::HashObjCStringKeyOnDisk,prebuilt_objc::EqualObjCStringKeyOnDisk>::forEachEntry<char const*>(a2, a2, a2 + 3, a1, &v5, v4);
}

uint64_t ___ZNK5dyld39MachOFile7hasObjCEv_block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(result + 40);
  if (a2[1] == 16 && **a2 == 0x695F636A626F5F5FLL && *(*a2 + 8) == 0x6F666E696567616DLL)
  {
    result = std::string_view::starts_with[abi:nn200100](a2 + 2, "__DATA");
    if (result)
    {
      *(*(*(v5 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  if (*(v6 + 4) == 7 && a2[1] == 12)
  {
    v9 = **a2 == 0x5F6567616D695F5FLL && *(*a2 + 8) == 1868983913;
    v10 = !v9;
    if (!v10 && a2[3] == 6)
    {
      v12 = a2[2];
      v13 = *v12;
      v14 = *(v12 + 2);
      if (v13 == 1112498015 && v14 == 17226)
      {
        *(*(*(v5 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t dyld4::dyld_map_with_linking_np(dyld4 *this, const mwl_region *a2, unsigned int a3, const mwl_info_hdr *a4, unsigned int a5, unsigned int *a6)
{
  if (*this != 7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  if (*(this + 3) == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if ((v8 << v9) + v7 > a2)
  {
    fprintf(__stderrp, "bind table extends past blob, blobSize=%d, offset=%d, count=%d\n", a2, v7, v8);
    return 0xFFFFFFFFLL;
  }

  v10 = *(this + 4);
  if (*(this + 5) + v10 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = this + v10;
  v13 = *(this + v10);
  if (v13)
  {
    v14 = 0;
    v15 = v12 + 4;
    v41 = v12 + 4;
    v42 = v12;
    while (1)
    {
      v16 = *&v15[4 * v14];
      if (v16)
      {
        v17 = &v12[v16];
        if (*&v12[v16 + 20])
        {
          break;
        }
      }

LABEL_41:
      if (++v14 >= v13)
      {
        return 0;
      }
    }

    v18 = 0;
    v43 = v14;
    v44 = *(v17 + 1) + *(this + 4);
    while (1)
    {
      v19 = *(this + 4);
      v20 = this + v19;
      v21 = *(this + v19);
      if (!v21)
      {
LABEL_43:
        dyld4::dyld_map_with_linking_np();
      }

      v22 = *(this + 2);
      v23 = v44 + (v18 * v22);
      v24 = v19 + 4;
      while (1)
      {
        v25 = &v20[*(this + v24)];
        v26 = *(v25 + 1) + *(this + 4);
        if (v26 <= v23 && v26 + *(v25 + 10) * *(v25 + 2) > v23)
        {
          break;
        }

        v24 += 4;
        if (!--v21)
        {
          goto LABEL_43;
        }
      }

      v27 = *(this + 3);
      v28 = (v23 - v26) / *(v25 + 2);
      if (v27 > 5)
      {
        if (v27 == 6)
        {
          v35 = v44 + (v18 * v22);
          v36 = this;
          v37 = v25;
          v38 = 1;
LABEL_35:
          dyld4::fixupPage64(v35, v36, v37, v28, v38);
          goto LABEL_36;
        }

        if (v27 != 9 && v27 != 12)
        {
          goto LABEL_36;
        }

        v31 = v44 + (v18 * v22);
        v32 = this;
        v33 = v25;
        v34 = 1;
      }

      else
      {
        if (v27 != 1)
        {
          if (v27 != 2)
          {
            if (v27 == 3)
            {
              v29 = *&v25[2 * v28 + 22];
              if (v29 != 0xFFFF)
              {
                v30 = *(this + 2);
                if ((v29 & 0x8000) != 0)
                {
                  v39 = v29 & 0x7FFF;
                  do
                  {
                    v40 = *&v25[2 * v39 + 22];
                    dyld4::fixupChain32((v23 + (v40 & 0x7FFF)), this, v25, (this + v30), (v23 + v22), a6);
                    ++v39;
                  }

                  while ((v40 & 0x8000) == 0);
                }

                else
                {
                  dyld4::fixupChain32((v23 + v29), this, v25, (this + v30), (v23 + v22), a6);
                }
              }
            }

            goto LABEL_36;
          }

          v35 = v44 + (v18 * v22);
          v36 = this;
          v37 = v25;
          v38 = 0;
          goto LABEL_35;
        }

        v31 = v44 + (v18 * v22);
        v32 = this;
        v33 = v25;
        v34 = 0;
      }

      dyld4::fixupPageAuth64(v31, v32, v33, v28, v34);
LABEL_36:
      if (++v18 >= *(v17 + 10))
      {
        v12 = v42;
        v14 = v43;
        v13 = *v42;
        v15 = v41;
        goto LABEL_41;
      }
    }
  }

  return 0;
}

uint64_t dyld4::APIs::dyld_get_base_platform(dyld4::APIs *this, unsigned int a2)
{
  mach_o::Platform::Platform(v7, a2);
  mach_o::Platform::basePlatform(v7, v8);
  v4 = mach_o::Platform::value(v8);
  v5 = v4;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_base_platform(%d) => %d\n", a2, v4);
  }

  return v5;
}

uint64_t dyld4::Loader::overridesDylibInCache(uint64_t a1, void *a2, _WORD *a3)
{
  if (*a1 != 1815378276)
  {
    dyld4::Loader::overridesDylibInCache();
  }

  if (*(a1 + 4))
  {

    return dyld4::PrebuiltLoader::overridesDylibInCache(a1, a2, a3);
  }

  else
  {

    return dyld4::JustInTimeLoader::overridesDylibInCache(a1, a2, a3);
  }
}

unint64_t dyld4::fixupPageAuth64(unint64_t this, _DWORD *a2, const mwl_info_hdr *a3, const dyld_chained_starts_in_segment *a4, int a5)
{
  v5 = *(&a3->mwli_chains_size + a4 + 1);
  if (v5 == 0xFFFF)
  {
    return this;
  }

  v7 = a2 + a2[2];
  v8 = (this + v5);
  v9 = this + *(a2 + 2);
  v10 = 6;
  if (a5)
  {
    v10 = 8;
  }

  v11 = *&a2[v10];
  while (1)
  {
    if (v8 >= v9)
    {
      return fprintf(__stderrp, "fixup chain entry (%p) off end of page starting at %p\n");
    }

    v12 = *v8;
    if ((*v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if ((v12 & 0x4000000000000000) != 0)
    {
      if ((v12 & 0xFFFFFF) >= a2[3])
      {
        v17 = __stderrp;
        v18 = a2[3];
        return fprintf(v17, "out of range bind ordinal %u (max %u)");
      }

      v15 = HIDWORD(v12) | 0xFFFFFFFFFFFC0000;
      if ((v12 & 0x4000000000000) == 0)
      {
        v15 = HIDWORD(v12) & 0x7FFFF;
      }

      this = *&v7[8 * (v12 & 0xFFFFFF)] + v15;
    }

    else
    {
      this = (v12 & 0x7FFFFFFFFFFLL) + v11 + (v12 >> 43 << 56);
    }

LABEL_18:
    v16 = (v12 >> 51) & 0x7FF;
    *v8 = this;
    v8 += v16;
    if (!v16)
    {
      return this;
    }
  }

  if ((v12 & 0x4000000000000000) == 0)
  {
    v13 = HIWORD(v12) & 1;
    v14 = *(a2 + 4) + v12;
LABEL_17:
    this = signPointer(v14, v8, v13, WORD2(v12), (v12 >> 49) & 3);
    goto LABEL_18;
  }

  if ((v12 & 0xFFFFFF) < a2[3])
  {
    v13 = HIWORD(v12) & 1;
    v14 = *&v7[8 * (v12 & 0xFFFFFF)];
    goto LABEL_17;
  }

  v17 = __stderrp;
  v19 = a2[3];
  return fprintf(v17, "out of range bind ordinal %u (max %u)");
}

uint64_t Diagnostics::clearError(uint64_t this)
{
  v1 = this;
  if (*this)
  {
    this = vm_deallocate(mach_task_self_, *this, *(this + 8));
  }

  *v1 = 0;
  v1[1] = 0;
  return this;
}

uint64_t mach_o::Header::hasPlusLoadMethod(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header17hasPlusLoadMethodEv_block_invoke;
  v3[3] = &unk_A5360;
  v3[4] = &v4;
  mach_o::Header::forEachSection(this, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t dyld4::PrebuiltLoader::overridesDylibInCache(uint64_t a1, void *a2, _WORD *a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 8) != 0)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = a1 + v4;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
    *a3 = *(a1 + 60);
  }

  return (v3 >> 3) & 1;
}

uint64_t signPointer(uint64_t result, void *a2, BOOL a3, unsigned __int16 a4, int a5)
{
  if (result)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        return result;
      }

      if (a5 == 3)
      {
        return result;
      }
    }

    else
    {
      if (!a5)
      {
        return result;
      }

      if (a5 == 1)
      {
        return result;
      }
    }

    signPointer();
  }

  return result;
}

_WORD *dyld4::Loader::applyFunctionVariantFixups(_WORD *this, Diagnostics *a2, const dyld4::RuntimeState *a3)
{
  if ((this[2] & 0x4002) == 0x4000)
  {
    v5 = this;
    Address = dyld4::Loader::loadAddress(this, a3);
    this = mach_o::Image::Image(v8, Address);
    if (v9)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 0x40000000;
      v7[2] = ___ZNK5dyld46Loader26applyFunctionVariantFixupsER11DiagnosticsRKNS_12RuntimeStateE_block_invoke;
      v7[3] = &__block_descriptor_tmp_111_0;
      v7[4] = v5;
      v7[5] = a2;
      v7[6] = a3;
      v7[7] = Address;
      v7[8] = mach_o::Header::getSlide(Address);
      return mach_o::FunctionVariantFixups::forEachFixup(v9, v7);
    }
  }

  return this;
}

BOOL ___ZNK6mach_o6Header17hasPlusLoadMethodEv_block_invoke(uint64_t a1, uint64_t **a2, _BYTE *a3)
{
  result = std::string_view::starts_with[abi:nn200100](a2 + 2, "__DATA");
  if (result && a2[1] == &dword_10)
  {
    v8 = *a2;
    v9 = **a2 == 0x6E5F636A626F5F5FLL && (*a2)[1] == 0x7473696C736C636CLL;
    if (v9 || ((v11 = *v8, v10 = v8[1], v11 == 0x6E5F636A626F5F5FLL) ? (v12 = v10 == 0x7473696C7461636CLL) : (v12 = 0), v12))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_find_unwind_sections(dyld4::RuntimeState *this, char *a2, dyld3::MachOLoaded **a3)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_find_unwind_sections(%p, %p)\n", a2, a3);
  }

  v19 = 0;
  v20 = 0;
  ImageMappedAt = dyld4::APIs::findImageMappedAt(this, a2, &v20, 0, 0, 0, 0, 0, &v19);
  if (ImageMappedAt)
  {
    v8 = v19;
    v7 = v20;
    *a3 = v20;
    *(a3 + 1) = 0u;
    *(a3 + 3) = 0u;
    if (!v8)
    {
      goto LABEL_13;
    }

    if (*(v8 + 2))
    {
      goto LABEL_13;
    }

    v9 = *(v8 + 13);
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = *(v8 + 13);
    LOBYTE(v18) = 0;
    UnwindSections = dyld4::PseudoDylib::findUnwindSections(v9, a2, &v18, a3);
    if (UnwindSections)
    {
      v12 = UnwindSections;
      if (*(*(this + 1) + 324) == 1)
      {
        dyld4::RuntimeState::log(this, "_dyld_pseudodylib_find_unwind_sections(%p, %p) returned error: %s", a2, a3, UnwindSections);
      }

      dyld4::PseudoDylib::disposeString(v10, v12);
    }

    if ((v18 & 1) == 0)
    {
      v7 = v20;
LABEL_13:
      v18 = 0;
      SectionContent = dyld3::MachOLoaded::findSectionContent(v7, "__TEXT", "__eh_frame", &v18);
      if (SectionContent)
      {
        v14 = v18;
        a3[1] = SectionContent;
        a3[2] = v14;
      }

      v15 = dyld3::MachOLoaded::findSectionContent(v20, "__TEXT", "__unwind_info", &v18);
      if (v15)
      {
        v16 = v18;
        a3[3] = v15;
        a3[4] = v16;
      }
    }
  }

  return ImageMappedAt;
}

void dyld4::PrebuiltLoader::applyObjCFixups(dyld4::PrebuiltLoader *this, dyld4::RuntimeState *a2)
{
  if (this)
  {
    v3 = *(this + 14);
    if (v3)
    {
      v5 = this + v3;
      Address = dyld4::PrebuiltLoader::loadAddress(this, a2);
      v35 = Address;
      v36[0] = Address;
      v7 = dyld4::PrebuiltLoader::loadAddress(this, a2);
      v8 = dyld3::MachOFile::pointerSize(v7);
      v9 = Address + *v5;
      *(v9 + 1) |= 0x80u;
      if (*(*(a2 + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(a2, "fixup: *0x%012lX = 0x%012lX <objc-info preoptimized>\n", v9, *v9);
      }

      dyld3::MachOAnalyzer::makeVMAddrConverter(Address, 1, v34);
      v10 = mach_o::Header::preferredLoadAddress(Address);
      v11 = v10;
      v33 = v10;
      v12 = *(v5 + 19);
      if (v12)
      {
        v13 = *(*(a2 + 122) + 56) + *(*(a2 + 1) + 368);
        v14 = *(v5 + 15);
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 0x40000000;
        v28[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke;
        v28[3] = &unk_A1D90;
        v28[6] = v14;
        v28[7] = v14;
        v28[4] = &v29;
        v28[5] = &v5[v12];
        v28[8] = v10;
        v28[9] = Address;
        v28[10] = v13;
        v28[11] = a2;
        *v26 = v28;
        dyld3::MachOAnalyzer::forEachObjCProtocol(Address, *(v5 + 4), v14, v34, v26);
        _Block_object_dispose(&v29, 8);
      }

      v15 = *(v5 + 21);
      if (v15)
      {
        v16 = *(*(a2 + 1) + 432);
        v17 = &v5[*(v5 + 20)];
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 0x40000000;
        v27[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_2;
        v27[3] = &unk_A1DB8;
        v27[6] = v15;
        v27[7] = v15;
        v27[4] = &v29;
        v27[5] = v17;
        v27[8] = v16;
        v27[9] = a2;
        v27[10] = Address;
        dyld4::PrebuiltObjC::forEachSelectorReferenceToUnique(a2, this, v11, v5, v27);
        _Block_object_dispose(&v29, 8);
      }

      v18 = *(v5 + 23);
      if (v18)
      {
        v19 = &v5[*(v5 + 22)];
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        metadata_visitor::Visitor::Visitor(v26, Address);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 0x40000000;
        v25[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_3;
        v25[3] = &unk_A1DE0;
        v25[6] = v18;
        v25[7] = v18;
        v25[4] = &v29;
        v25[5] = v19;
        v25[8] = a2;
        objc_visitor::Visitor::forEachProtocolReference(v26, v25);
        _Block_object_dispose(&v29, 8);
      }

      if (v5[68] == 1)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 0x40000000;
        v24[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_4;
        v24[3] = &__block_descriptor_tmp_46;
        v24[4] = v11;
        v24[5] = Address;
        v24[6] = a2;
        v29 = v24;
        dyld3::MachOAnalyzer::forEachObjCClass(Address, *(v5 + 2), *(v5 + 13), v34, &v29);
      }

      if (v5[69] == 1)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 0x40000000;
        v22[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_5;
        v22[3] = &__block_descriptor_tmp_47;
        v22[4] = &v33;
        v22[5] = v36;
        v22[6] = &v35;
        v22[7] = a2;
        v23 = v8;
        v29 = v22;
        dyld3::MachOAnalyzer::forEachObjCClass(Address, *(v5 + 2), *(v5 + 13), v34, &v29);
      }

      if (v5[70] == 1)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 0x40000000;
        v21[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_6;
        v21[3] = &__block_descriptor_tmp_49_0;
        v21[4] = &v33;
        v21[5] = v36;
        v21[6] = &v35;
        v21[7] = a2;
        v29 = v21;
        dyld3::MachOAnalyzer::forEachObjCCategory(v36[0], *(v5 + 3), *(v5 + 14), v34, &v29);
      }

      if (v5[71] == 1)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 0x40000000;
        v20[2] = ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_7;
        v20[3] = &__block_descriptor_tmp_50;
        v20[4] = &v33;
        v20[5] = v36;
        v20[6] = &v35;
        v20[7] = a2;
        v29 = v20;
        dyld3::MachOAnalyzer::forEachObjCProtocol(v36[0], *(v5 + 4), *(v5 + 15), v34, &v29);
      }
    }
  }
}

uint64_t ___ZN5dyld4L12hasDataConstEPKN6mach_o6HeaderE_block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 0x10) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t dyld3::MachOFile::hasConstObjCSection(dyld3::MachOFile *this)
{
  if (dyld3::MachOFile::hasSection(this, "__DATA_CONST", "__objc_selrefs") & 1) != 0 || (dyld3::MachOFile::hasSection(this, "__DATA_CONST", "__objc_classrefs") & 1) != 0 || (dyld3::MachOFile::hasSection(this, "__DATA_CONST", "__objc_protorefs"))
  {
    return 1;
  }

  return dyld3::MachOFile::hasSection(this, "__DATA_CONST", "__objc_superrefs");
}

uint64_t dyld3::MachOFile::hasSection(dyld3::MachOFile *this, const char *a2, const char *a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld39MachOFile10hasSectionEPKcS2__block_invoke;
  v5[3] = &unk_A35B0;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = &v6;
  mach_o::Header::forEachSection(this, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

size_t ___ZNK5dyld39MachOFile10hasSectionEPKcS2__block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a2 + 24);
  v7 = a1[5];
  result = _platform_strlen(v7);
  if (v6 == result)
  {
    result = _platform_memcmp(*(a2 + 16), v7, v6);
    if (!result)
    {
      v9 = *(a2 + 8);
      v10 = a1[6];
      result = _platform_strlen(v10);
      if (v9 == result)
      {
        result = _platform_memcmp(*a2, v10, v9);
        if (!result)
        {
          *(*(a1[4] + 8) + 24) = 1;
          *a3 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t dyld4::SyscallDelegate::openFileReadOnly(dyld4::SyscallDelegate *this, Diagnostics *a2, const char *a3)
{
  v3 = a3;
  v5 = open(a3, 0, 0);
  if (v5 == -1)
  {
    v6 = *__error();
    if (v6 == 2)
    {
      Diagnostics::error(a2, "no such file");
    }

    else if (v6 == 1 && (v7 = getpid(), sandbox_check(v7, "file-read-data", 1073741825, v8, v9, v10, v11, v12, v3) >= 1))
    {
      Diagnostics::error(a2, "file system sandbox blocked open(%s, O_RDONLY)");
    }

    else
    {
      Diagnostics::error(a2, "open(%s, O_RDONLY) failed with errno=%d");
    }
  }

  return v5;
}

vm_address_t dyld4::Loader::mapSegments(Diagnostics *a1, uint64_t a2, const char *a3, dyld4::RuntimeState *a4, uint64_t a5, unsigned int *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = a7;
  v13 = a5;
  v72 = 520552456;
  v73 = 0;
  v74 = a3;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0;
  dyld3::ScopedTimer::startTimer(&v72, a2, a3, a4, a5, a6, a7, a8);
  v18 = dyld4::Loader::validateFile(a1, a2, a4, a3, a6, a10);
  if (Diagnostics::hasError(a1))
  {
    goto LABEL_13;
  }

  if (v11)
  {
    if (a6[1])
    {
      dyld4::getUuidFromFd(a2, a4, v18, v81, v19);
      if (!dyld4::SyscallDelegate::registerSignature(*(a2 + 8), a1, a3, v81, a4, v18, *a6, a6[1]))
      {
        goto LABEL_13;
      }
    }
  }

  v81[0] = 0;
  *v69 = v18;
  v70 = 512;
  v71 = v81;
  if (dyld4::SyscallDelegate::fcntl(*(a2 + 8), a4, 98, v69) == -1)
  {
    dyld4::getUuidFromFd(a2, a4, v18, &v82, v20);
    Diagnostics::error(a1, "code signature in <%s> '%s' not valid for use in process: %s");
    goto LABEL_13;
  }

  v68 = 0;
  if (*(*(a2 + 8) + 220) == 1)
  {
    if (rosetta_dyld_get_aot_size(a4, a3, &v68, v81, &stru_3C8.reloff, v21, v22, v23))
    {
      v68 = 0;
      v81[0] = 0;
    }

    else
    {
      v13 += v68;
    }
  }

  address = 0;
  if (vm_allocate(mach_task_self_, &address, v13, 1))
  {
    Diagnostics::error(a1, "vm_allocate(size=0x%0llX) failed with result=%d");
    goto LABEL_13;
  }

  if (*(*(a2 + 8) + 321) == 1)
  {
    if (v18)
    {
      dyld4::RuntimeState::log(a2, "Mapping %s (slice offset=0x%llX)\n");
    }

    else
    {
      dyld4::RuntimeState::log(a2, "Mapping %s\n");
    }
  }

  v63 = v18;
  v26 = a8[2];
  if (!v26)
  {
LABEL_45:
    v64[0] = 0;
    v66 = 0;
    v45 = address;
    if (mach_o::Header::isFairPlayEncrypted(address, v64, &v66))
    {
      v48 = *(a2 + 8);
      v49 = address;
      v50 = v64[0];
      v51 = v66;
      mach_o::Header::arch(v45, &v82);
      v52 = v82;
      mach_o::Header::arch(v45, v69);
      if (dyld4::SyscallDelegate::mremap_encrypted(v48, (v49 + v50), v51, &dword_0 + 1, v52, v69[1], v53, v54))
      {
        Diagnostics::error(a1, "could not register fairplay decryption, mremap_encrypted() => %d");
        goto LABEL_48;
      }
    }

    if (*(*(a2 + 8) + 220) == 1 && v68 != 0)
    {
      v56 = v13 - v68 + address;
      if (!rosetta_dyld_map_aot(a3, address, v56, &v83, &v84, &v85, v46, v47))
      {
        v82 = address;
        *v69 = &v82;
        v70 = 1;
        *v64 = 0;
        v65 = 0;
        dyld4::ExternallyViewableState::addRosettaImages(*(a2 + 616), v69, v64);
        if (*(*(a2 + 8) + 321) == 1)
        {
          dyld4::RuntimeState::log(a2, "%14s (r.x) 0x%012llX->0x%012llX\n", "ROSETTA", v56, v68 + v56);
        }
      }
    }

    v24 = address;
    goto LABEL_14;
  }

  v27 = 0;
  v62 = *(*(a2 + 8) + 224);
  v28 = (*a8 + 12);
  v29 = 16 * v26;
  while (1)
  {
    v30 = *(v28 - 3);
    if ((v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_44;
    }

    v31 = *v28;
    if (!v31)
    {
      goto LABEL_44;
    }

    if ((v30 & 0x7FFFFFFFFFFFFFFLL) == 0 && v27 != 0)
    {
      goto LABEL_44;
    }

    v33 = ((v30 < 0) & v62) != 0 ? 524306 : 18;
    v34 = dyld4::SyscallDelegate::mmap(*(a2 + 8), (address + (v30 & 0x7FFFFFFFFFFFFFFLL)), v31, (v30 >> 59) & 7, v33, a4, v63 + *(v28 - 1));
    v35 = __error();
    if (v34 == -1)
    {
      break;
    }

    if (!v27 && !dyld3::MachOFile::isMachO(v34, a1, *v28))
    {
      goto LABEL_48;
    }

    if (*(*(a2 + 8) + 321) == 1)
    {
      v61 = v34 + ((vm_page_size + *v28 - 1) & -vm_page_size);
      v36 = v13;
      v37 = address;
      dyld3::MachOLoaded::segmentName(address, v27);
      v60 = v38;
      v39 = v37;
      v13 = v36;
      v40 = dyld3::MachOLoaded::segmentName(v39, v27);
      v41 = *(v28 - 3) >> 59;
      if ((v41 & 4) != 0)
      {
        v42 = 120;
      }

      else
      {
        v42 = 46;
      }

      v43 = 119;
      if ((v41 & 2) == 0)
      {
        v43 = 46;
      }

      v44 = 114;
      if ((*(v28 - 3) & 0x800000000000000) == 0)
      {
        v44 = 46;
      }

      dyld4::RuntimeState::log(a2, "%14.*s (%c%c%c) 0x%012lX->0x%012lX\n", v60, v40, v44, v43, v42, v34, v61);
    }

    ++v27;
LABEL_44:
    v28 += 4;
    v29 -= 16;
    if (!v29)
    {
      goto LABEL_45;
    }
  }

  if (*v35 == 1)
  {
    if (dyld4::SyscallDelegate::sandboxBlockedMmap(*(a2 + 8), a3))
    {
      Diagnostics::error(a1, "file system sandbox blocked mmap() of '%s'");
    }

    else
    {
      Diagnostics::error(a1, "code signing blocked mmap() of '%s'");
    }
  }

  else
  {
    v59 = *v35;
    v57 = (*(v28 - 3) & 0x7FFFFFFFFFFFFFFLL) + address;
    v58 = *v28;
    Diagnostics::error(a1, "mmap(addr=0x%0llX, size=0x%08X) failed with errno=%d for %s");
  }

LABEL_48:
  vm_deallocate(mach_task_self_, address, v13);
LABEL_13:
  v24 = 0;
LABEL_14:
  dyld3::ScopedTimer::endTimer(&v72);
  return v24;
}

uint64_t dyld3::MachOFile::enforceFormat(mach_o::Header *a1, int a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  mach_o::Header::platformAndVersions(a1, v7);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld39MachOFile13enforceFormatENS0_9MalformedE_block_invoke;
  v5[3] = &unk_A38B8;
  v6 = a2;
  v5[4] = &v8;
  mach_o::PlatformAndVersions::unzip(v7, v5);
  v3 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t ___ZNK5dyld39MachOFile13enforceFormatENS0_9MalformedE_block_invoke(uint64_t result, mach_o::Platform *this)
{
  v3 = result;
  v4 = *this;
  if (*this == &mach_o::PlatformInfo_macOS::singleton && !*(this + 2))
  {
    v5 = *(result + 40);
    if (v5 <= 8)
    {
      if (v5 > 3)
      {
LABEL_5:
        v6 = *(this + 5);
        v7 = 659199;
        goto LABEL_61;
      }

      if (v5 >= 2)
      {
        if (v5 == 2)
        {
          goto LABEL_5;
        }

        if (v5 != 3)
        {
          return result;
        }
      }

      if (*(this + 5) >> 9 < 0x507u)
      {
        return result;
      }

      goto LABEL_65;
    }

    if (v5 > 0x10)
    {
      return result;
    }

    if (((1 << v5) & 0xDC00) == 0)
    {
      if (((1 << v5) & 0x12000) == 0)
      {
        if (v5 != 9)
        {
          return result;
        }

        v6 = *(this + 5);
        v7 = 659455;
LABEL_61:
        if (v6 <= v7)
        {
          return result;
        }

        goto LABEL_65;
      }

      goto LABEL_59;
    }

    goto LABEL_64;
  }

  if ((v4 != &mach_o::PlatformInfo_iOS::singleton || *(this + 2)) && (v4 != &mach_o::PlatformInfo_tvOS::singleton || *(this + 2)) && (v4 != &mach_o::PlatformInfo_macCatalyst::singleton || *(this + 2)))
  {
    if (v4 == &mach_o::PlatformInfo_watchOS::singleton && !*(this + 2))
    {
      v9 = *(result + 40);
      if (v9 > 0x10)
      {
        return result;
      }

      v10 = 1 << v9;
      if ((v10 & 0xDF16) != 0)
      {
        if (*(this + 5) < 0x90000u)
        {
          return result;
        }

        goto LABEL_65;
      }

      if ((v10 & 0xE9) != 0)
      {
LABEL_65:
        v11 = *(*(result + 32) + 8);
        goto LABEL_66;
      }

      v6 = *(this + 5);
      v12 = 589823;
      goto LABEL_60;
    }

    if (v4 == &mach_o::PlatformInfo_driverKit::singleton && !*(this + 2))
    {
      goto LABEL_65;
    }

    if ((v4 != &mach_o::PlatformInfo_visionOS::singleton || *(this + 2)) && (v4 != &mach_o::PlatformInfo_visionOS_simulator::singleton || *(this + 2)))
    {
      result = mach_o::Platform::isKernelKit(this);
      if (!result)
      {
        result = mach_o::Platform::empty(this);
        v11 = *(*(v3 + 32) + 8);
        if (!result)
        {
LABEL_66:
          *(v11 + 24) = 1;
          return result;
        }

LABEL_40:
        *(v11 + 24) = 0;
        return result;
      }
    }

    else
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      if (*(result + 40) != 16 || *(this + 5) >> 17)
      {
        return result;
      }
    }

    v11 = *(*(v3 + 32) + 8);
    goto LABEL_40;
  }

  v8 = *(result + 40);
  if (v8 > 7)
  {
    if (v8 <= 0x10)
    {
      if (((1 << v8) & 0xDC00) != 0)
      {
        if (*(this + 5) < 0x100000u)
        {
          return result;
        }

        goto LABEL_65;
      }

      if (((1 << v8) & 0x12000) != 0)
      {
        v6 = *(this + 5);
        v7 = 1114111;
        goto LABEL_61;
      }

      if (v8 == 9)
      {
LABEL_59:
        v6 = *(this + 5);
        v12 = 851967;
LABEL_60:
        v7 = v12 | 0x10000;
        goto LABEL_61;
      }
    }

    if (v8 != 8)
    {
      return result;
    }

LABEL_64:
    if (*(this + 5) < 0xD0000u)
    {
      return result;
    }

    goto LABEL_65;
  }

  if (v8 > 3)
  {
    if ((v8 - 5) < 3)
    {
      goto LABEL_65;
    }

    if (v8 != 4)
    {
      return result;
    }

    goto LABEL_64;
  }

  if ((v8 - 1) < 2)
  {
    goto LABEL_64;
  }

  if (!v8 || v8 == 3)
  {
    goto LABEL_65;
  }

  return result;
}

uint64_t dyld4::getUuidFromFd(dyld4::SyscallDelegate **this, dyld4::RuntimeState *a2, off_t a3, unsigned __int8 *a4, char *a5)
{
  v7 = a2;
  *a4 = 0x64697575206F6ELL;
  result = dyld4::SyscallDelegate::pread(this[1], a2, __buf, 0x1CuLL, a3);
  if (result == 28)
  {
    result = dyld3::MachOFile::hasMachOMagic(__buf);
    if (result)
    {
      v10 = v16 + 32;
      __chkstk_darwin(result);
      v12 = &__buf[-((v11 + 47) & 0x1FFFFFFF0) - 4];
      result = dyld4::SyscallDelegate::pread(this[1], v7, v12, v10, a3);
      if (result == v10)
      {
        *v17 = 0;
        v18 = 0;
        result = mach_o::Header::getUuid(v12, v17);
        if (result)
        {
          return dyld4::Loader::uuidToStr(v17, a4, v13);
        }
      }
    }
  }

  return result;
}

uint64_t ___ZN13prebuilt_objc15forEachProtocolEPN5dyld412RuntimeStateERKN5dyld312MultiMapViewINS_19ObjCStringKeyOnDiskENS_24ObjCObjectOnDiskLocationENS_23HashObjCStringKeyOnDiskENS_24EqualObjCStringKeyOnDiskEEEPKcU13block_pointerFvRKNS3_5ArrayIPKNS0_14PrebuiltLoader13BindTargetRefEEEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 16))
  {
    __chkstk_darwin(result, a2, a3, a4, a5, a6, a7, a8, v18[0]);
    v12 = v18 - ((v11 + 23) & 0xFFFFFFFFFFFFFFF0);
    v13 = v9[2];
    v18[0] = v12;
    v18[1] = v13;
    if (v13)
    {
      v14 = 0;
      v15 = *v9;
      v16 = 8 * v13;
      do
      {
        if (v13 == v14)
        {
          ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
        }

        v17 = v14 + 1;
        *&v12[8 * v14] = *(v15 + 8 * v14);
        ++v14;
        v16 -= 8;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v18[2] = v17;
    return (*(*(v8 + 32) + 16))(*(v8 + 32), v18, v10);
  }

  return result;
}

uint64_t dyld3::MachOAnalyzer::chainedPointerFormat(dyld3::MachOAnalyzer *this)
{
  v2 = dyld3::MachOAnalyzer::chainedFixupsHeader(this);
  if (v2)
  {

    return dyld3::MachOFile::chainedPointerFormat(v2, v3);
  }

  else
  {
    if (*(this + 1) != 16777228 || dyld3::MachOFile::maskedCpuSubtype(this) != 2)
    {
      dyld3::MachOAnalyzer::chainedPointerFormat();
    }

    return 1;
  }
}

uint64_t ___ZN5dyld44APIs28_dyld_for_each_objc_protocolEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 40);
    v5 = *a2;
    v6 = 8 * v2 - 8;
    do
    {
      v7 = *v5++;
      v11 = dyld4::PrebuiltLoader::BindTargetRef::value(v7, v4);
      v10 = 1;
      v9 = *(*(v3 + 32) + 8) + 24;
      result = dyld4::ReadOnlyCallback<void({block_pointer})(void *,BOOL,BOOL *)>::operator()<void *,BOOL,BOOL *>((v3 + 48), &v11, &v10, &v9);
      if (*(*(*(v3 + 32) + 8) + 24))
      {
        break;
      }

      v8 = v6;
      v6 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t dyld4::ReadOnlyCallback<void({block_pointer})(void *,BOOL,BOOL *)>::operator()<void *,BOOL,BOOL *>(lsl::MemoryManager *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  result = v15[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v35[0]);
    if (result)
    {
      v23 = v15[6];
      v35[1] = 0x40000000;
      v35[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIU13block_pointerFvPvbPbEEclIJS4_bS5_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESG__block_invoke;
      v35[3] = &__block_descriptor_tmp_240;
      v35[4] = a1;
      v35[5] = a2;
      v35[6] = a3;
      v35[7] = a4;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v35, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
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
            v30 = *a2;
            v31 = *a3;
            v32 = *a4;
            result = (*(*a1 + 16))();
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v33 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v33 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v34 = MEMORY[0xFFFFFC0D0];
                  if (v34 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
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
  v24 = *a2;
  v25 = *a3;
  v26 = *a4;
  v27 = *(*a1 + 16);

  return v27();
}

ssize_t pread(int __fd, void *__buf, size_t __nbyte, off_t a4)
{
  result = mac_syscall(SYS_pread, __fd, __buf, __nbyte, a4);
  if (v4)
  {
    return cerror(result);
  }

  return result;
}

uint64_t dyld3::MachOFile::chainedPointerFormat(dyld3::MachOFile *this, const dyld_chained_fixups_header *a2)
{
  v2 = (this + *(this + 1));
  v3 = *v2;
  if (!v3)
  {
    return 0;
  }

  v4 = v2 + 1;
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6)
    {
      v7 = v2 + v5;
      if (*(v7 + 10))
      {
        break;
      }
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return *(v7 + 3);
}

uint64_t dyld3::MachOAnalyzer::forEachObjCProtocol(dyld3::MachOFile *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = dyld3::MachOFile::pointerSize(a1);
  result = dyld3::MachOLoaded::getSlide(a1);
  v12 = result;
  v13 = (a1 + a2);
  if (v10 == 8)
  {
    v29 = 0;
    if (a3)
    {
      v14 = a3 - 1;
      do
      {
        v15 = v14;
        v16 = *v13++;
        v17 = (dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v16) + v12);
        v22 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, *v17);
        v23 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[1]);
        v24 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[2]);
        v25 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[3]);
        v26 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[4]);
        v27 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[5]);
        v28 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v17[6]);
        result = (*(*a5 + 16))();
        if (v29)
        {
          break;
        }

        v14 = v15 - 1;
      }

      while (v15);
    }
  }

  else
  {
    v29 = 0;
    if (a3)
    {
      v18 = a3 - 1;
      do
      {
        v19 = v18;
        v20 = *v13;
        v13 = (v13 + 4);
        v21 = (dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v20) + v12);
        v22 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, *v21);
        v23 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[1]);
        v24 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[2]);
        v25 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[3]);
        v26 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[4]);
        v27 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[5]);
        v28 = dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(a4, v21[6]);
        result = (*(*a5 + 16))();
        if (v29)
        {
          break;
        }

        v18 = v19 - 1;
      }

      while (v19);
    }
  }

  return result;
}

unsigned __int8 *dyld4::Loader::uuidToStr(unsigned __int8 *this, unsigned __int8 *a2, char *a3)
{
  v3 = *this;
  v4 = (v3 >> 4) | 0x30;
  if (v3 >= 0xA0)
  {
    LOBYTE(v4) = (*this >> 4) + 55;
  }

  *a2 = v4;
  if ((v3 & 0xF) >= 0xA)
  {
    v5 = (v3 & 0xF) + 55;
  }

  else
  {
    v5 = v3 & 0xF | 0x30;
  }

  a2[1] = v5;
  v6 = this[1];
  v7 = (v6 >> 4) | 0x30;
  if (v6 >= 0xA0)
  {
    LOBYTE(v7) = (this[1] >> 4) + 55;
  }

  a2[2] = v7;
  if ((v6 & 0xF) >= 0xA)
  {
    v8 = (v6 & 0xF) + 55;
  }

  else
  {
    v8 = v6 & 0xF | 0x30;
  }

  a2[3] = v8;
  v9 = this[2];
  v10 = (v9 >> 4) | 0x30;
  if (v9 >= 0xA0)
  {
    LOBYTE(v10) = (this[2] >> 4) + 55;
  }

  a2[4] = v10;
  if ((v9 & 0xF) >= 0xA)
  {
    v11 = (v9 & 0xF) + 55;
  }

  else
  {
    v11 = v9 & 0xF | 0x30;
  }

  a2[5] = v11;
  v12 = this[3];
  v13 = (v12 >> 4) | 0x30;
  if (v12 >= 0xA0)
  {
    LOBYTE(v13) = (this[3] >> 4) + 55;
  }

  a2[6] = v13;
  if ((v12 & 0xF) >= 0xA)
  {
    v14 = (v12 & 0xF) + 55;
  }

  else
  {
    v14 = v12 & 0xF | 0x30;
  }

  a2[7] = v14;
  a2[8] = 45;
  v15 = this[4];
  v16 = (v15 >> 4) | 0x30;
  if (v15 >= 0xA0)
  {
    LOBYTE(v16) = (this[4] >> 4) + 55;
  }

  a2[9] = v16;
  if ((v15 & 0xF) >= 0xA)
  {
    v17 = (v15 & 0xF) + 55;
  }

  else
  {
    v17 = v15 & 0xF | 0x30;
  }

  a2[10] = v17;
  v18 = this[5];
  v19 = (v18 >> 4) | 0x30;
  if (v18 >= 0xA0)
  {
    LOBYTE(v19) = (this[5] >> 4) + 55;
  }

  a2[11] = v19;
  if ((v18 & 0xF) >= 0xA)
  {
    v20 = (v18 & 0xF) + 55;
  }

  else
  {
    v20 = v18 & 0xF | 0x30;
  }

  a2[12] = v20;
  a2[13] = 45;
  v21 = this[6];
  v22 = (v21 >> 4) | 0x30;
  if (v21 >= 0xA0)
  {
    LOBYTE(v22) = (this[6] >> 4) + 55;
  }

  a2[14] = v22;
  if ((v21 & 0xF) >= 0xA)
  {
    v23 = (v21 & 0xF) + 55;
  }

  else
  {
    v23 = v21 & 0xF | 0x30;
  }

  a2[15] = v23;
  v24 = this[7];
  v25 = (v24 >> 4) | 0x30;
  if (v24 >= 0xA0)
  {
    LOBYTE(v25) = (this[7] >> 4) + 55;
  }

  a2[16] = v25;
  if ((v24 & 0xF) >= 0xA)
  {
    v26 = (v24 & 0xF) + 55;
  }

  else
  {
    v26 = v24 & 0xF | 0x30;
  }

  a2[17] = v26;
  a2[18] = 45;
  v27 = this[8];
  v28 = (v27 >> 4) | 0x30;
  if (v27 >= 0xA0)
  {
    LOBYTE(v28) = (this[8] >> 4) + 55;
  }

  a2[19] = v28;
  if ((v27 & 0xF) >= 0xA)
  {
    v29 = (v27 & 0xF) + 55;
  }

  else
  {
    v29 = v27 & 0xF | 0x30;
  }

  a2[20] = v29;
  v30 = this[9];
  v31 = (v30 >> 4) | 0x30;
  if (v30 >= 0xA0)
  {
    LOBYTE(v31) = (this[9] >> 4) + 55;
  }

  a2[21] = v31;
  if ((v30 & 0xF) >= 0xA)
  {
    v32 = (v30 & 0xF) + 55;
  }

  else
  {
    v32 = v30 & 0xF | 0x30;
  }

  a2[22] = v32;
  a2[23] = 45;
  v33 = this[10];
  v34 = (v33 >> 4) | 0x30;
  if (v33 >= 0xA0)
  {
    LOBYTE(v34) = (this[10] >> 4) + 55;
  }

  a2[24] = v34;
  if ((v33 & 0xF) >= 0xA)
  {
    v35 = (v33 & 0xF) + 55;
  }

  else
  {
    v35 = v33 & 0xF | 0x30;
  }

  a2[25] = v35;
  v36 = this[11];
  v37 = (v36 >> 4) | 0x30;
  if (v36 >= 0xA0)
  {
    LOBYTE(v37) = (this[11] >> 4) + 55;
  }

  a2[26] = v37;
  if ((v36 & 0xF) >= 0xA)
  {
    v38 = (v36 & 0xF) + 55;
  }

  else
  {
    v38 = v36 & 0xF | 0x30;
  }

  a2[27] = v38;
  v39 = this[12];
  v40 = (v39 >> 4) | 0x30;
  if (v39 >= 0xA0)
  {
    LOBYTE(v40) = (this[12] >> 4) + 55;
  }

  a2[28] = v40;
  if ((v39 & 0xF) >= 0xA)
  {
    v41 = (v39 & 0xF) + 55;
  }

  else
  {
    v41 = v39 & 0xF | 0x30;
  }

  a2[29] = v41;
  v42 = this[13];
  v43 = (v42 >> 4) | 0x30;
  if (v42 >= 0xA0)
  {
    LOBYTE(v43) = (this[13] >> 4) + 55;
  }

  a2[30] = v43;
  if ((v42 & 0xF) >= 0xA)
  {
    v44 = (v42 & 0xF) + 55;
  }

  else
  {
    v44 = v42 & 0xF | 0x30;
  }

  a2[31] = v44;
  v45 = this[14];
  v46 = (v45 >> 4) | 0x30;
  if (v45 >= 0xA0)
  {
    LOBYTE(v46) = (this[14] >> 4) + 55;
  }

  a2[32] = v46;
  if ((v45 & 0xF) >= 0xA)
  {
    v47 = (v45 & 0xF) + 55;
  }

  else
  {
    v47 = v45 & 0xF | 0x30;
  }

  a2[33] = v47;
  v48 = this[15];
  v49 = (v48 >> 4) | 0x30;
  if (v48 >= 0xA0)
  {
    LOBYTE(v49) = (this[15] >> 4) + 55;
  }

  a2[34] = v49;
  v50 = v48 & 0xF | 0x30;
  if ((v48 & 0xF) >= 0xA)
  {
    v50 = (v48 & 0xF) + 55;
  }

  a2[35] = v50;
  a2[36] = 0;
  return this;
}

uint64_t dyld4::Loader::Loader(uint64_t this, const dyld4::Loader::InitialOptions *a2, __int16 a3, int a4, __int16 a5, int a6)
{
  *this = 1815378276;
  v6 = *(this + 4) & 0xFFFE | a3;
  *(this + 4) = v6;
  v7 = v6 & 0xFFFD | (2 * (*a2 & 1));
  *(this + 4) = v7;
  v8 = v7 & 0xFFFB | (4 * (*(a2 + 1) & 1));
  *(this + 4) = v8;
  v9 = v8 & 0xFFF7 | (8 * (*(a2 + 2) & 1));
  *(this + 4) = v9;
  v10 = v9 & 0xFFEF | (16 * (*(a2 + 3) & 1));
  *(this + 4) = v10;
  v11 = v10 & 0xFFDF | (32 * (*(a2 + 4) & 1));
  *(this + 4) = v11;
  v12 = v11 & 0xFFBF | ((*(a2 + 5) & 1) << 6);
  *(this + 4) = v12;
  v13 = v12 & 0xFF7F | ((*(a2 + 6) & 1) << 7);
  *(this + 4) = v13;
  v14 = v13 & 0xFCFF | (*(a2 + 7) << 8);
  if (a6)
  {
    v15 = 512;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 | v15;
  *(this + 4) = v16;
  v17 = v16 & 0xFBFF | (*(a2 + 8) << 10);
  *(this + 4) = v17;
  v18 = v17 & 0xF7FF | (*(a2 + 9) << 11);
  *(this + 4) = v18;
  v19 = v18 & 0xEFFF | (*(a2 + 10) << 12);
  *(this + 4) = v19;
  v20 = v19 & 0xDFFF | (*(a2 + 11) << 13);
  *(this + 4) = v20;
  *(this + 4) = v20 & 0x3FFF | (*(a2 + 12) << 14);
  if (a4)
  {
    v21 = 0x8000;
  }

  else
  {
    v21 = 0;
  }

  *(this + 6) = v21 | a5;
  *(this + 24) = 0;
  return this;
}

uint64_t dyld4::SyscallDelegate::registerSignature(dyld4::SyscallDelegate *this, Diagnostics *a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v16 = 520552464;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  dyld3::ScopedTimer::startTimer(&v16, a2, a3, a4, a5, a6, a7, a8);
  v24[0] = a6;
  v24[1] = v9;
  v24[2] = v8;
  if (fcntl(v11, 97, v24) == -1)
  {
    v13 = *__error();
    if (v13 == 85 || v13 == 1)
    {
      Diagnostics::error(a2, "code signature invalid in <%s> '%s' (errno=%d) sliceOffset=0x%08llX, codeBlobOffset=0x%08X, codeBlobSize=0x%08X");
    }

    else
    {
      Diagnostics::error(a2, "fcntl(fd, F_ADDFILESIGS_RETURN) failed with errno=%d in <%s> '%s', sliceOffset=0x%08llX, codeBlobOffset=0x%08X, codeBlobSize=0x%08X");
    }

    goto LABEL_9;
  }

  if (v24[0] < v9)
  {
    Diagnostics::error(a2, "code signature does not cover entire file up to signature in <%s> '%s' (signed 0x%08llX, expected 0x%08X) for '%s'");
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = 1;
LABEL_10:
  dyld3::ScopedTimer::endTimer(&v16);
  return v14;
}

void dyld4::JustInTimeLoader::parseSectionLocations(mach_o::Header *a1, uint64_t a2)
{
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 264) = 0u;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN5dyld416JustInTimeLoader21parseSectionLocationsEPKN6mach_o6HeaderERNS_16SectionLocationsE_block_invoke;
  v5[3] = &__block_descriptor_tmp_45_0;
  v5[4] = mach_o::Header::preferredLoadAddress(a1);
  v5[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN5dyld416JustInTimeLoader21parseSectionLocationsEPKN6mach_o6HeaderERNS_16SectionLocationsE_block_invoke_2;
  v4[3] = &unk_A1C18;
  v4[4] = v5;
  mach_o::Header::forEachSection(a1, v4);
}

uint64_t dyld3::MachOAnalyzer::VMAddrConverter::convertToVMAddr(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7 = a2;
  if (*(a1 + 18) == 1)
  {
    if (a2)
    {
      return a2 - *(a1 + 8);
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if (*(a1 + 16) && v2)
    {
      v6 = 0;
      if (mach_o::ChainedFixupPointerOnDisk::isRebase(&v7, v4, *a1, &v6))
      {
        return v6 + *a1;
      }

      else
      {
        return v7;
      }
    }
  }

  return v2;
}

uint64_t ___ZN5dyld416JustInTimeLoader21parseSectionLocationsEPKN6mach_o6HeaderERNS_16SectionLocationsE_block_invoke_2(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 24) == 6 && ((v4 = *(a2 + 16), v5 = *v4, v6 = *(v4 + 2), v5 == 1163157343) ? (v7 = v6 == 21592) : (v7 = 0), v7))
  {
    v17 = *a2;
    v16 = *(a2 + 8);
    if (v16 == 14)
    {
      result = _platform_memcmp(*a2, "__swift5_proto", 0xEuLL);
      if (!result)
      {
        goto LABEL_76;
      }

      if (*v17 == 0x3574666977735F5FLL && *(v17 + 6) == 0x73657079745F3574)
      {
        goto LABEL_76;
      }
    }

    else if (v16 == 16)
    {
      result = _platform_memcmp(*a2, "__swift5_replace", 0x10uLL);
      if (!result)
      {
        goto LABEL_76;
      }

      if (*v17 == 0x3574666977735F5FLL && v17[1] == 0x3263616C7065725FLL)
      {
        goto LABEL_76;
      }

      if (*v17 == 0x3574666977735F5FLL && v17[1] == 0x73636E756663615FLL)
      {
        goto LABEL_76;
      }
    }

    else if (v16 == 15 && *v17 == 0x3574666977735F5FLL && *(v17 + 7) == 0x736F746F72705F35)
    {
      goto LABEL_76;
    }
  }

  else
  {
    result = std::string_view::starts_with[abi:nn200100]((a2 + 16), "__DATA");
    if (!result)
    {
      return result;
    }

    v8 = *a2;
    v9 = *(a2 + 8);
    if (v9 > 14)
    {
      if (v9 == 15)
      {
        if (_platform_memcmp(*a2, "__objc_stublist", 0xFuLL))
        {
          result = _platform_memcmp(v8, "__objc_catlist2", 0xFuLL);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_76;
      }

      if (v9 == 16)
      {
        v11 = *v8 == 0x695F636A626F5F5FLL && v8[1] == 0x6F666E696567616DLL;
        if (v11 || !_platform_memcmp(*a2, "__objc_classrefs", *(a2 + 8)))
        {
          goto LABEL_76;
        }

        if (*v8 == 0x735F636A626F5F5FLL && v8[1] == 0x7366657272657075)
        {
          goto LABEL_76;
        }

        if (*v8 == 0x705F636A626F5F5FLL && v8[1] == 0x736665726F746F72)
        {
          goto LABEL_76;
        }

        if (*v8 == 0x635F636A626F5F5FLL && v8[1] == 0x7473696C7373616CLL)
        {
          goto LABEL_76;
        }

        if (!_platform_memcmp(v8, "__objc_nlclslist", 0x10uLL))
        {
          goto LABEL_76;
        }

        result = _platform_memcmp(v8, "__objc_nlcatlist", 0x10uLL);
        if (!result)
        {
          goto LABEL_76;
        }

        if (*v8 == 0x705F636A626F5F5FLL && v8[1] == 0x7473696C6F746F72)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v9 == 13)
      {
        result = _platform_memcmp(*a2, "__objc_rawisa", 0xDuLL);
        if (result)
        {
          return result;
        }

        goto LABEL_76;
      }

      if (v9 == 14)
      {
        if (!_platform_memcmp(*a2, "__objc_selrefs", 0xEuLL) || (*v8 == 0x6D5F636A626F5F5FLL ? (v10 = *(v8 + 6) == 0x7366657267736D5FLL) : (v10 = 0), v10 || !_platform_memcmp(v8, "__objc_catlist", 0xEuLL) || (result = _platform_memcmp(v8, "__objc_fork_ok", 0xEuLL), !result)))
        {
LABEL_76:
          v22 = *(*(v3 + 32) + 16);

          return v22();
        }
      }
    }
  }

  return result;
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (a1[7] <= v3)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  if (*(a1[5] + v3) == 1)
  {
    v5 = (a1[9] + a2 - a1[8]);
    v6 = mach_o::ChainedFixupPointerOnDisk::Arm64e::signPointer(a1[10], v5, &dword_0 + 1, 225, 2);
    v7 = a1[11];
    if (*(*(v7 + 1) + 322) == 1)
    {
      dyld4::RuntimeState::log(v7, "fixup: *0x%012lX = 0x%012lX <objc-protocol>\n", v5, v6);
    }

    *v5 = v6;
  }
}

void dyld4::PrebuiltObjC::forEachSelectorReferenceToUnique(const dyld4::RuntimeState *a1, dyld4::Loader *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Diagnostics::Diagnostics(v12);
  v10 = dyld4::Loader::analyzer(a2, a1);
  metadata_visitor::Visitor::Visitor(v11, v10);
  if (Diagnostics::hasError(v12))
  {
    dyld4::PrebuiltObjC::forEachSelectorReferenceToUnique();
  }

  dyld4::forEachSelectorReferenceToUnique(v11, a3, a4, a5);
  dyld4::forEachClassSelectorReferenceToUnique(v11, a3, a4, a5);
  dyld4::forEachCategorySelectorReferenceToUnique(v11, a3, a4, a5);
  dyld4::forEachProtocolSelectorReferenceToUnique(v11, a3, a4, a5);
  Diagnostics::~Diagnostics(v12);
}

BOOL dyld3::MachOFile::isMachO(dyld3::MachOFile *this, Diagnostics *a2, unint64_t a3)
{
  if (a3 <= 0x1B)
  {
    Diagnostics::error(a2, "MachO header exceeds file length");
    return 0;
  }

  v5 = *this;
  if (*this >> 1 != 2138504551)
  {
    if ((v5 & 0xFEFFFFFF) != 0xCEFAEDFE)
    {
      Diagnostics::error(a2, "file does not start with MH_MAGIC[_64]");
    }

    return 0;
  }

  v6 = v5 == -17958193;
  v7 = 28;
  if (v6)
  {
    v7 = 32;
  }

  if (v7 + *(this + 5) > a3)
  {
    Diagnostics::error(a2, "load commands exceed length of first segment");
    return 0;
  }

  dyld3::MachOFile::forEachLoadCommand(this, a2, &__block_literal_global_2);

  return Diagnostics::noError(a2);
}

uint64_t ___ZN5dyld416JustInTimeLoader21parseSectionLocationsEPKN6mach_o6HeaderERNS_16SectionLocationsE_block_invoke(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 40) + 8 * a2;
  *(v3 + 8) = *(a3 + 56) - *(result + 32);
  *(v3 + 176) = *(a3 + 64);
  return result;
}

metadata_visitor::Visitor *metadata_visitor::Visitor::Visitor(metadata_visitor::Visitor *this, const dyld3::MachOAnalyzer *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = mach_o::Header::preferredLoadAddress(a2);
  *(this + 24) = 1;
  *this = dyld3::MachOFile::pointerSize(a2);
  return this;
}

uint64_t dyld3::MachOFile::hasExportTrie(dyld3::MachOFile *this, unsigned int *a2, unsigned int *a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = ___ZNK5dyld39MachOFile13hasExportTrieERjS1__block_invoke;
  v15[3] = &unk_A3790;
  v15[4] = &v24;
  v15[5] = &v20;
  v15[6] = &v16;
  mach_o::Header::forEachSegment(this, v15);
  Diagnostics::Diagnostics(v14);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK5dyld39MachOFile13hasExportTrieERjS1__block_invoke_2;
  v9[3] = &unk_A37B8;
  v9[4] = &v10;
  v9[5] = a3;
  dyld3::MachOFile::forEachLoadCommand(this, v14, v9);
  if (Diagnostics::hasError(v14) || (v6 = *(v11 + 6), v6 == -1))
  {
    v7 = 0;
  }

  else
  {
    *a2 = *(v21 + 6) + v6 - (*(v17 + 6) + *(v25 + 6));
    v7 = 1;
  }

  _Block_object_dispose(&v10, 8);
  Diagnostics::~Diagnostics(v14);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v7;
}

void objc_visitor::Visitor::findSection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 8);
  v10 = 0;
  v11 = &v10;
  v12 = 0x5002000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v16 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK12objc_visitor7Visitor11findSectionENSt3__14spanIPKcLm18446744073709551615EEES4__block_invoke;
  v9[3] = &unk_A3480;
  v9[6] = a2;
  v9[7] = a3;
  v9[8] = a4;
  v9[4] = &v10;
  v9[5] = a1;
  mach_o::Header::forEachSection(v6, v9);
  v7 = v11;
  v8 = *(v11 + 7);
  *a5 = *(v11 + 5);
  *(a5 + 16) = v8;
  *(a5 + 32) = v7[9];
  _Block_object_dispose(&v10, 8);
}

void *___ZNK5dyld39MachOFile13hasExportTrieERjS1__block_invoke(void *result, uint64_t **a2, _BYTE *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 == (&dword_8 + 2))
  {
    v8 = *v3;
    v9 = *(v3 + 4);
    if (v8 == 0x44454B4E494C5F5FLL && v9 == 21577)
    {
      *(*(result[5] + 8) + 24) = a2[2];
      *(*(result[6] + 8) + 24) = *(a2 + 8);
      *a3 = 1;
    }
  }

  else if (v4 == (&dword_4 + 2))
  {
    v5 = *v3;
    v6 = *(v3 + 2);
    if (v5 == 1163157343 && v6 == 21592)
    {
      *(*(result[4] + 8) + 24) = a2[2];
    }
  }

  return result;
}

size_t ___ZNK6mach_o6Header14forEachSectionEU13block_pointerFvRKNS0_11SegmentInfoERKNS0_11SectionInfoERbE_block_invoke(size_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    v14 = *(a2 + 48);
    result = _platform_strnlen((a2 + 8), 0x10uLL);
    v15 = *(a2 + 24);
    v35 = *(a2 + 32);
    v37 = *(a2 + 52);
    v7 = *(*(v5 + 40) + 8);
    v8 = *(v7 + 24);
    v39 = *(a2 + 40);
    v41 = *(a2 + 44);
    if ((*a3 & 1) != 0 || !v14)
    {
      goto LABEL_15;
    }

    v16 = a2 + 68 * v14 + 56;
    v17 = a2 + 56;
    v18 = a2 + 72;
    do
    {
      _platform_strnlen(v17, 0x10uLL);
      _platform_strnlen((v17 + 16), 0x10uLL);
      v23 = *(*(*(v5 + 40) + 8) + 24);
      v25 = *(a2 + 40);
      v27 = *(v17 + 56);
      v29 = *(v17 + 44);
      v19 = *(v17 + 32);
      v32 = *(v17 + 40);
      v20 = *(v17 + 48);
      v21 = *(v17 + 60);
      result = (*(*(v5 + 32) + 16))();
      if (*a3)
      {
        break;
      }

      v17 += 68;
      v18 += 68;
    }

    while (v17 < v16);
    goto LABEL_14;
  }

  if (*a2 != 25)
  {
    return result;
  }

  v6 = *(a2 + 64);
  result = _platform_strnlen((a2 + 8), 0x10uLL);
  v33 = *(a2 + 24);
  v34 = vmovn_s64(*(a2 + 40));
  v36 = *(a2 + 68);
  v7 = *(*(v5 + 40) + 8);
  v8 = *(v7 + 24);
  v38 = *(a2 + 56);
  v40 = *(a2 + 60);
  if ((*a3 & 1) == 0 && v6)
  {
    v9 = a2 + 80 * v6 + 72;
    v10 = a2 + 72;
    v11 = a2 + 88;
    do
    {
      _platform_strnlen(v10, 0x10uLL);
      _platform_strnlen((v10 + 16), 0x10uLL);
      v22 = *(*(*(v5 + 40) + 8) + 24);
      v24 = *(a2 + 56);
      v26 = *(v10 + 64);
      v28 = *(v10 + 52);
      v30 = *(v10 + 32);
      v31 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 68);
      result = (*(*(v5 + 32) + 16))();
      if (*a3)
      {
        break;
      }

      v10 += 80;
      v11 += 80;
    }

    while (v10 < v9);
LABEL_14:
    v7 = *(*(v5 + 40) + 8);
    v8 = *(v7 + 24);
  }

LABEL_15:
  *(v7 + 24) = v8 + 1;
  return result;
}

void objc_visitor::Visitor::forEachSelectorReference(unsigned int *a1, uint64_t a2)
{
  objc_visitor::Visitor::findSection(a1, objc_visitor::Visitor::findObjCDataSection(char const*)const::objcDataSegments, 3, "__objc_selrefs", v11);
  if (v13 == 1)
  {
    v4 = v12;
    v5 = *a1;
    v6 = v12 / v5;
    if (v12 % v5)
    {
      objc_visitor::Visitor::forEachSelectorReference();
    }

    v7 = lsl::Allocator::Pool::allocator(v11);
    if (v4 >= v5)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        metadata_visitor::Visitor::getField(a1, (v8 + v9 * *a1), v10);
        (*(a2 + 16))(a2, v10);
        ++v9;
      }

      while (v6 != v9);
    }
  }
}

{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK12objc_visitor7Visitor24forEachSelectorReferenceEU13block_pointerFv9VMAddressS1_PKcE_block_invoke;
  v2[3] = &unk_A34F8;
  v2[4] = a2;
  v2[5] = a1;
  objc_visitor::Visitor::forEachSelectorReference(a1, v2);
}

uint64_t ___ZNK5dyld39MachOFile13hasExportTrieERjS1__block_invoke_2(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = 11;
  v4 = 10;
  if (*a2 != -2147483614 && v2 != 34)
  {
    if (v2 != -2147483597)
    {
      return result;
    }

    v3 = 3;
    v4 = 2;
  }

  v5 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2[v4];
  *v5 = a2[v3];
  return result;
}

void dyld4::Loader::applyCachePatches(dyld4::Loader *this, dyld4::RuntimeState *a2, dyld4::DyldCacheDataConstLazyScopedWriter *a3)
{
  v20 = 0;
  v19 = 0;
  if (dyld4::Loader::overridesDylibInCache(this, &v19, &v20) && v19)
  {
    v6 = *(*(a2 + 1) + 368);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = v19;
    v7 = dyld4::RuntimeState::patchedDataConstPageCount(a2);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZNK5dyld46Loader17applyCachePatchesERNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterE_block_invoke;
    v9[3] = &unk_A19D0;
    v9[6] = this;
    v9[7] = a2;
    v10 = v20;
    v9[8] = v6;
    v9[9] = a3;
    v9[4] = &v11;
    v9[5] = &v15;
    DyldSharedCache::forEachPatchableExport(v6, v20, v9);
    if (*v12[3] != -1)
    {
      dyld4::Loader::applyCachePatches();
    }

    v8 = dyld4::RuntimeState::patchedDataConstPageCount(a2);
    dyld4::RuntimeState::increaseJetsamLimit(a2, ((v8 - v7) * vm_page_size));
    if (*(v16 + 24) == 1)
    {
      dyld4::RuntimeState::setVMAccountingSuspending(a2, 0);
    }

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }
}

void dyld4::RuntimeState::doSingletonPatching(dyld4::RuntimeState *this, dyld4::DyldCacheDataConstLazyScopedWriter *a2)
{
  if (*(this + 44) != *(this + 50))
  {
    dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(a2);
    dyld4::RuntimeState::setDyldPatchedObjCClasses(this);
    v3 = *(this + 50);
    for (i = *(this + 44); v3 < i; *(this + 50) = v3)
    {
      v5 = *(this + 43) + 16 * v3;
      v7 = *v5;
      v6 = *(v5 + 8);
      if (*v6)
      {
        v8 = *v6;
      }

      v9 = v6[1];
      *v7 = *v6;
      v7[1] = v9;
      if (*(*(this + 1) + 322) == 1)
      {
        dyld4::RuntimeState::log(this, "cache singleton fixup: *0x%012lX = 0x%012lX\n", v7, v6);
        v3 = *(this + 50);
        i = *(this + 44);
      }

      ++v3;
    }
  }
}

uint64_t dyld4::JustInTimeLoader::dependentAttrs(dyld4::JustInTimeLoader *this, unsigned int a2)
{
  v2 = *(this + 5);
  v3 = (v2 >> 39);
  if (v3 <= a2)
  {
    dyld4::JustInTimeLoader::dependentAttrs();
  }

  if ((v2 & 0x800000) != 0)
  {
    dyld4::JustInTimeLoader::dependentAttrs();
  }

  return this + 8 * v3 + a2 + 464;
}

void dyld4::forEachSelectorReferenceToUnique(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 48))
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___ZN5dyld4L32forEachSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke;
    v4[3] = &unk_A2F50;
    v4[4] = a4;
    v4[5] = a2;
    objc_visitor::Visitor::forEachSelectorReference(a1, v4);
  }
}

void dyld4::DyldCacheDataConstLazyScopedWriter::~DyldCacheDataConstLazyScopedWriter(dyld4::DyldCacheDataConstLazyScopedWriter *this)
{
  if (*(this + 8) == 1)
  {
    dyld4::ProcessConfig::DyldCache::makeDataConstWritable((*(*this + 8) + 368), *(*this + 8) + 320, *(*this + 8), 0);
  }
}

void dyld4::Loader::adjustFunctionVariantsInDyldCache(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  v2 = *(*(this + 1) + 368);
  if (v2)
  {
    dyld4::DyldCacheDataConstLazyScopedWriter::DyldCacheDataConstLazyScopedWriter(v8, this);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v7[3] = 0;
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2000000000;
    v6 = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___ZN5dyld46Loader33adjustFunctionVariantsInDyldCacheERNS_12RuntimeStateE_block_invoke;
    v4[3] = &unk_A18F0;
    v4[4] = v7;
    v4[5] = v5;
    v4[6] = this;
    v4[7] = v8;
    DyldSharedCache::forEachFunctionVariantPatchLocation(v2, v4);
    _Block_object_dispose(v5, 8);
    _Block_object_dispose(v7, 8);
    dyld4::DyldCacheDataConstLazyScopedWriter::~DyldCacheDataConstLazyScopedWriter(v8);
  }
}

double ___ZNK12objc_visitor7Visitor11findSectionENSt3__14spanIPKcLm18446744073709551615EEES4__block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = a1[7];
  if (v4)
  {
    v8 = a1[5];
    v9 = a1[6];
    v10 = 8 * v4;
    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    while (1)
    {
      v13 = *v9;
      if (v11 == _platform_strlen(*v9) && !_platform_memcmp(v12, v13, v11))
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (!v10)
      {
        return result;
      }
    }

    v15 = *(a3 + 8);
    v16 = a1[8];
    if (v15 == _platform_strlen(v16) && !_platform_memcmp(*a3, v16, v15))
    {
      v17 = *(a3 + 56);
      Slide = dyld3::MachOLoaded::getSlide(*(v8 + 8));
      metadata_visitor::ResolvedValue::ResolvedValue(&v21, Slide + v17, *(a3 + 56), 1);
      v19 = *(a1[4] + 8);
      v20 = *(a3 + 64);
      result = *&v21;
      *(v19 + 40) = v21;
      *(v19 + 56) = v22;
      *(v19 + 64) = v20;
      *(v19 + 72) = 1;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t DyldSharedCache::forEachFunctionVariantPatchLocation(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4 >= 0x211)
  {
    v16 = v2;
    v17 = v3;
    v5 = result - *(result + v4);
    v6 = *(result + 520);
    v7 = v6 + v5;
    v8 = *(v6 + v5 + 4);
    if (((32 * v8) | 8uLL) <= *(result + 528))
    {
      v15 = 0;
      if (v8)
      {
        v10 = 0;
        v11 = v5 + v6 + 24;
        do
        {
          FileIdTuple::FileIdTuple(v14, *(v11 - 8) + v5, 4 * *(v11 + 14));
          dyld3::MachOFile::PointerMetaData::PointerMetaData(&v13);
          v13 = v13 & 0xF0000000 | (((*(v11 + 8) >> 12) & 1) << 24) & 0xF1FF0000 | (*(v11 + 8) >> 14 << 25) & 0xF7FF0000 | (((*(v11 + 8) >> 13) & 1) << 27) | HIWORD(*(v11 + 8));
          v12 = *v11 + v5;
          result = (*(a2 + 16))(a2, *(v11 - 16) + v5);
          if (v15 == 1)
          {
            break;
          }

          v11 += 32;
          ++v10;
        }

        while (v10 < *(v7 + 4));
      }
    }
  }

  return result;
}

void *metadata_visitor::ResolvedValue::ResolvedValue(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t metadata_visitor::Visitor::getField@<X0>(uint64_t this@<X0>, char *a2@<X2>, void *a3@<X8>)
{
  if ((*(this + 24) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v4 = &a2[*(this + 16) - *(this + 8)];
  *a3 = a2;
  a3[1] = v4;
  a3[2] = 1;
  return this;
}

uint64_t dyld4::ProcessConfig::Process::selectFromFunctionVariants(dyld4::ProcessConfig::Process *this, const mach_o::FunctionVariants *a2, unsigned int a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = mach_o::FunctionVariants::entry(a2, a3);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK5dyld413ProcessConfig7Process26selectFromFunctionVariantsERKN6mach_o16FunctionVariantsEj_block_invoke;
  v8[3] = &unk_A0288;
  v8[5] = &v9;
  v8[6] = this;
  v8[4] = &v13;
  mach_o::FunctionVariantsRuntimeTable::forEachVariant(v5, v8);
  v6 = v14[3];
  if (v6 && *(v10 + 24) == 1)
  {
    v6 = dyld4::ProcessConfig::Process::selectFromFunctionVariants(this, a2, v6);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void ___ZN5dyld46Loader33adjustFunctionVariantsInDyldCacheERNS_12RuntimeStateE_block_invoke(uint64_t a1, char **a2, const mach_o::Header *a3, mach_o::FunctionVariants *a4, dyld4::RuntimeState *a5, unsigned int a6)
{
  v9 = a3;
  v12 = *(a1 + 48);
  if (*(v12 + 1110) != 1)
  {
    goto LABEL_6;
  }

  if (*(*(*(a1 + 32) + 8) + 24) != a5)
  {
    *(*(*(a1 + 40) + 8) + 24) = dyld4::Loader::overriddenCacheHeader(v12, a5, a3);
    *(*(*(a1 + 32) + 8) + 24) = a5;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v12 = *(a1 + 48);
LABEL_6:
    v13 = dyld4::ProcessConfig::Process::selectFromFunctionVariants((*(v12 + 8) + 16), a4, a6);
    v14 = a5 + v13;
    if ((v9 & 0x1000000) != 0)
    {
      v14 = signPointer(a5 + v13, a2, (v9 & 0x8000000) != 0, v9, (v9 >> 25) & 3);
    }

    if (*a2 == v14)
    {
      v15 = *(a1 + 48);
      if (*(*(v15 + 1) + 329) == 1)
      {
        v16 = mach_o::Header::installName(a5);
        v17 = strrchr(v16, 47);
        if (v17)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = v16;
        }

        dyld4::RuntimeState::log(v15, "dyld cache function variant already using: *%p = %p <%s/function-variant-table#%u>\n", a2, v14, v18, a6);
      }
    }

    else
    {
      dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(*(a1 + 56));
      v19 = *(a1 + 48);
      v20 = *(v19 + 1);
      if ((*(v20 + 322) & 1) != 0 || *(v20 + 329) == 1)
      {
        v21 = mach_o::Header::installName(a5);
        v22 = strrchr(v21, 47);
        if (v22)
        {
          v23 = v22 + 1;
        }

        else
        {
          v23 = v21;
        }

        dyld4::RuntimeState::log(v19, "dyld cache function variant patching:      *%p = %p <%s/function-variant-table#%u>\n", a2, v14, v23, a6);
      }

      *a2 = v14;
    }
  }
}

uint64_t ___ZNK12objc_visitor7Visitor24forEachSelectorReferenceEU13block_pointerFv9VMAddressS1_PKcE_block_invoke(uint64_t a1, uint64_t **a2)
{
  metadata_visitor::Visitor::resolveRebase(*(a1 + 40), a2, v5);
  metadata_visitor::ResolvedValue::vmAddress(a2);
  metadata_visitor::ResolvedValue::vmAddress(v5);
  lsl::Allocator::Pool::allocator(v5);
  return (*(*(a1 + 32) + 16))();
}

void mach_o::Header::forEachInterposingSection(mach_o::Error *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header25forEachInterposingSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke;
  v2[3] = &unk_A5568;
  v2[4] = a2;
  mach_o::Header::forEachSection(a1, v2);
}

uint64_t mach_o::FunctionVariantsRuntimeTable::forEachVariant(unsigned int *a1, uint64_t a2)
{
  v12 = 0;
  if (!a1[1])
  {
    return 8;
  }

  v4 = 0;
  v5 = a1 + 2;
  v6 = a1 + 3;
  do
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*(v6 + v7++))
      {
        v8 = v7;
      }
    }

    while (v7 != 4);
    (*(a2 + 16))(a2, *a1, v5[2 * v4] & 0x7FFFFFFF, v5[2 * v4] >> 31, &v5[2 * v4 + 1], v8, &v12);
    v10 = a1[1];
    if (v12)
    {
      break;
    }

    ++v4;
    v6 += 2;
  }

  while (v4 < v10);
  return (8 * v10 + 8);
}

uint64_t metadata_visitor::Visitor::resolveRebase@<X0>(uint64_t this@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v3 = **a2;
  if (v3)
  {
    if ((*(this + 24) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    v4 = v3 - *(this + 8) + *(this + 16);
    *a3 = v3;
    a3[1] = v4;
    a3[2] = 1;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return this;
}

uint64_t ___ZNK6mach_o6Header25forEachInterposingSectionEU13block_pointerFvRKNS0_11SectionInfoERbE_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 44) == 13 || *(a2 + 8) == 11 && (**a2 == 0x707265746E695F5FLL ? (v5 = *(*a2 + 3) == 0x65736F707265746ELL) : (v5 = 0), v5 && (std::string_view::starts_with[abi:nn200100]((a2 + 16), "__DATA") || (result = std::string_view::starts_with[abi:nn200100]((a2 + 16), "__AUTH"), result))))
  {
    v4 = *(*(v3 + 32) + 16);

    return v4();
  }

  return result;
}

uint64_t ___ZN5dyld4L32forEachSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a3 & 1) == 0 || (a5 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

char *mach_o::FunctionVariants::entry(mach_o::FunctionVariants *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (v2 < 4)
  {
    return 0;
  }

  v3 = *this;
  if (!*this || *v3 <= a2)
  {
    return 0;
  }

  v4 = v3[a2 + 1];
  v5 = v3 + v4;
  if (v2 <= v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void *___ZNK5dyld413ProcessConfig7Process26selectFromFunctionVariantsERKN6mach_o16FunctionVariantsEj_block_invoke(void *result, int a2, unsigned int a3, char a4, char *a5, uint64_t a6, _BYTE *a7)
{
  v7 = result[6];
  switch(a2)
  {
    case 3:
      v12 = v7 + 32;
      v9 = v7[32];
      v8 = v12[1];
      if (!a6)
      {
        goto LABEL_17;
      }

      break;
    case 2:
      v11 = v7 + 30;
      v9 = v7[30];
      v8 = v11[1];
      if (!a6)
      {
        goto LABEL_17;
      }

      break;
    case 1:
      v10 = v7 + 28;
      v9 = v7[28];
      v8 = v10[1];
      if (!a6)
      {
        goto LABEL_17;
      }

      break;
    default:
      v9 = 0;
      v8 = 0;
      *(*(result[4] + 8) + 24) = 0;
      *a7 = 1;
      if (!a6)
      {
LABEL_17:
        *(*(result[4] + 8) + 24) = a3;
        *(*(result[5] + 8) + 24) = a4;
        *a7 = 1;
        return result;
      }

      break;
  }

  v13 = 1;
  do
  {
    v14 = *a5++;
    v15 = ((2 * v8) << ~v14) | (v9 >> v14);
    v16 = v8 >> v14;
    if ((v14 & 0x40) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v13 &= v17;
    --a6;
  }

  while (a6);
  if (v13)
  {
    goto LABEL_17;
  }

  return result;
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (*(a1 + 56) <= v3)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v6 = (*(a1 + 40) + 8 * v3);
  v7 = *v6;
  if (*v6 >> 62 == 1)
  {
    v8 = (v7 >> 8) | 0xC0000000000000;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = (v7 >> 8) & 0x3FFFFFFFFFFFFFLL;
    }

    v9 = (*(a1 + 64) + (v8 | (v7 << 56)));
  }

  else
  {
    v9 = dyld4::PrebuiltLoader::BindTargetRef::value(v6, *(a1 + 72));
  }

  v10 = *(a1 + 72);
  v11 = (*(a1 + 80) + a2);
  if (*(*(v10 + 1) + 322) == 1)
  {
    dyld4::RuntimeState::log(v10, "fixup: *0x%012lX = 0x%012lX <objc-selector '%s'>\n", v11, v9, v9);
  }

  *v11 = v9;
}

void dyld4::forEachClassSelectorReferenceToUnique(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN5dyld4L37forEachClassSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke;
  v6[3] = &unk_A2F78;
  v6[5] = a1;
  v6[6] = a2;
  v6[4] = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = &___ZN5dyld4L37forEachClassSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_2;
  v5[3] = &unk_A2FA0;
  v5[4] = v6;
  v5[5] = a1;
  if (*(a3 + 72) == 1)
  {
    if (*(a3 + 52))
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = ___ZN5dyld4L37forEachClassSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_3;
      v4[3] = &unk_A2FC8;
      v4[4] = v5;
      v4[5] = a1;
      objc_visitor::Visitor::forEachClassAndMetaClass(a1, v4);
    }
  }
}

uint64_t ___ZNK5dyld413ProcessConfig9DyldCache21makeDataConstWritableERKNS0_7LoggingERKNS_15SyscallDelegateEb_block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK5dyld413ProcessConfig9DyldCache21makeDataConstWritableERKNS0_7LoggingERKNS_15SyscallDelegateEb_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_80;
  v4 = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  return DyldSharedCache::forEachRegion(a2, v3);
}

void dyld4::forEachCategorySelectorReferenceToUnique(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN5dyld4L40forEachCategorySelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke;
  v6[3] = &unk_A2FF0;
  v6[5] = a1;
  v6[6] = a2;
  v6[4] = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN5dyld4L40forEachCategorySelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_2;
  v5[3] = &unk_A3018;
  v5[4] = v6;
  v5[5] = a1;
  if (*(a3 + 73) == 1)
  {
    if (*(a3 + 56))
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = ___ZN5dyld4L40forEachCategorySelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_3;
      v4[3] = &unk_A3040;
      v4[4] = v5;
      v4[5] = a1;
      objc_visitor::Visitor::forEachCategory(a1, v4);
    }
  }
}

ssize_t ___ZNK5dyld413ProcessConfig9DyldCache21makeDataConstWritableERKNS0_7LoggingERKNS_15SyscallDelegateEb_block_invoke_2(ssize_t result, const char *a2, uint64_t a3, vm_size_t size, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x40) == 0 && (a7 & 4) != 0)
  {
    v8 = result;
    v9 = *(*(result + 32) + 24) + a3;
    if (*(*(result + 40) + 1) == 1)
    {
      dyld4::console("marking shared cache range 0x%x permissions: 0x%09lX -> 0x%09lX\n", a2, *(result + 56), *(*(result + 32) + 24) + a3, v9 + size);
    }

    result = dyld4::SyscallDelegate::vm_protect(*(v8 + 48), mach_task_self_, v9, size, 0, *(v8 + 56));
    if (result)
    {
      if (*(*(v8 + 40) + 1) == 1)
      {
        return dyld4::console("failed to mprotect shared cache due to: %d\n", v10, result);
      }
    }
  }

  return result;
}

kern_return_t vm_protect(vm_map_t target_task, vm_address_t address, vm_size_t size, BOOLean_t set_maximum, vm_prot_t new_protection)
{
  v10 = _kernelrpc_mach_vm_protect_trap(target_task, address, size, set_maximum, new_protection);
  if (v10 == 268435459)
  {
    v16 = 0x100000000;
    v17 = address;
    v18 = size;
    v19 = set_maximum;
    v20 = new_protection;
    reply_port = mig_get_reply_port();
    *&v15.msgh_bits = 0x3800001513;
    *&v15.msgh_remote_port = __PAIR64__(reply_port, target_task);
    *&v15.msgh_voucher_port = 0x12C200000000;
    v12 = mach_msg2_internal(&v15, 0x200000003, 0x3800001513, __PAIR64__(reply_port, target_task), 0x12C200000000, (reply_port << 32), &stru_20.segname[4], 0);
    v10 = v12;
    if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
    {
      if (v12)
      {
        mig_dealloc_reply_port(v15.msgh_local_port);
        return v10;
      }

      if (v15.msgh_id == 71)
      {
        v10 = -308;
      }

      else if (v15.msgh_id == 4902)
      {
        v10 = -300;
        if ((v15.msgh_bits & 0x80000000) == 0 && v15.msgh_size == 36 && !v15.msgh_remote_port)
        {
          v10 = v17;
          if (!v17)
          {
            return v10;
          }
        }
      }

      else
      {
        v10 = -301;
      }

      mach_msg_destroy(&v15);
    }
  }

  return v10;
}

void dyld4::forEachProtocolSelectorReferenceToUnique(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZN5dyld4L40forEachProtocolSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke;
  v6[3] = &unk_A3068;
  v6[5] = a1;
  v6[6] = a2;
  v6[4] = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN5dyld4L40forEachProtocolSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_2;
  v5[3] = &unk_A3090;
  v5[4] = v6;
  v5[5] = a1;
  if (*(a3 + 74) == 1)
  {
    if (*(a3 + 60))
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 0x40000000;
      v4[2] = ___ZN5dyld4L40forEachProtocolSelectorReferenceToUniqueERN12objc_visitor7VisitorEyRKNS_14ObjCBinaryInfoEU13block_pointerFvyyPKcE_block_invoke_3;
      v4[3] = &unk_A30B8;
      v4[4] = v5;
      v4[5] = a1;
      objc_visitor::Visitor::forEachProtocol(a1, v4);
    }
  }
}

void dyld4::JustInTimeLoader::loadDependents(uint64_t a1, Diagnostics *a2, dyld4::RuntimeState *a3, __int128 *a4)
{
  if ((*(a1 + 42) & 1) == 0)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v8 = *(a1 + 32);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 0x40000000;
    v21[2] = ___ZN5dyld416JustInTimeLoader14loadDependentsER11DiagnosticsRNS_12RuntimeStateERKNS_6Loader11LoadOptionsE_block_invoke;
    v21[3] = &unk_A1AF8;
    v21[4] = &v22;
    v21[5] = a1;
    v21[6] = a3;
    v21[7] = a4;
    v21[8] = a2;
    mach_o::Header::forEachLinkedDylib(v8, v21);
    *(a1 + 40) |= 0x10000uLL;
    if (!Diagnostics::hasError(a2))
    {
      v20[0] = *(a4 + 2);
      v20[1] = a1;
      v9 = a4[1];
      v10 = *(a4 + 4);
      v16 = *a4;
      v18 = *(&v9 + 1);
      v19 = v10;
      v17 = v20;
      v11 = v23;
      *(v23 + 6) = 0;
      v12 = *(a1 + 40);
      if ((v12 & 0x7FFF8000000000) != 0)
      {
        v13 = 0;
        do
        {
          v14 = *(a1 + 464 + 8 * v13);
          if (v14)
          {
            dyld4::Loader::loadDependents(v14, a2, a3, &v16);
            v11 = v23;
          }

          v13 = *(v11 + 6) + 1;
          *(v11 + 6) = v13;
          v12 = *(a1 + 40);
        }

        while (v13 < (v12 >> 39));
      }

      if ((v12 & 0x400000) != 0)
      {
        *(a1 + 88) = dyld4::JustInTimeLoader::makePatchTable(a1, a3, (v12 >> 24) & 0x7FFF);
        *(a1 + 96) = 0;
        if (*(*(a3 + 1) + 221) == 1)
        {
          v15 = dyld4::Loader::indexOfUnzipperedTwin(a3, (*(a1 + 43) & 0x7FFF));
          if (v15 != 0xFFFF)
          {
            *(a1 + 96) = dyld4::JustInTimeLoader::makePatchTable(a1, a3, v15);
          }
        }
      }
    }

    _Block_object_dispose(&v22, 8);
  }
}

_BYTE *dyld4::DyldCacheDataConstLazyScopedWriter::makeWriteable(_BYTE *this)
{
  if ((this[8] & 1) == 0)
  {
    v1 = *(*this + 8);
    if (*(v1 + 222) == 1 && (*(v1 + 224) & 1) == 0)
    {
      if (*(v1 + 368))
      {
        this[8] = 1;
        return dyld4::ProcessConfig::DyldCache::makeDataConstWritable((v1 + 368), v1 + 320, v1, 1);
      }
    }
  }

  return this;
}

void objc_visitor::Visitor::forEachProtocolReference(unsigned int *a1, uint64_t a2)
{
  objc_visitor::Visitor::findSection(a1, objc_visitor::Visitor::findObjCDataSection(char const*)const::objcDataSegments, 3, "__objc_protorefs", v11);
  if (v13 == 1)
  {
    v4 = v12;
    v5 = *a1;
    v6 = v12 / v5;
    if (v12 % v5)
    {
      objc_visitor::Visitor::forEachProtocolReference();
    }

    v7 = lsl::Allocator::Pool::allocator(v11);
    if (v4 >= v5)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        metadata_visitor::Visitor::getField(a1, (v8 + v9 * *a1), v10);
        (*(a2 + 16))(a2, v10);
        ++v9;
      }

      while (v6 != v9);
    }
  }
}

void ___ZN5dyld416JustInTimeLoader14loadDependentsER11DiagnosticsRNS_12RuntimeStateERKNS_6Loader11LoadOptionsE_block_invoke(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = *(a1 + 40);
  v11 = a3 & 0xF7;
  if ((~a3 & 0xA) != 0)
  {
    v11 = a3;
  }

  v12 = v11 & 0xFE;
  if ((v11 & 1) == 0)
  {
    v12 = v11;
  }

  if ((v11 & 2) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if ((*(v10 + 42) & 0x80) == 0)
  {
    *dyld4::JustInTimeLoader::dependentAttrs(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24)) = v13;
  }

  if ((*(v10 + 4) & 2) != 0 && (v13 & 1) != 0 && (v14 = *(*(a1 + 48) + 8), v15 = *(v14 + 368), *v44 = 0, v15) && (dyld4::ProcessConfig::DyldCache::indexOfPath((v14 + 368), a2, v44) & 1) == 0)
  {
    v36 = *(a1 + 48);
    if (*(*(v36 + 1) + 327) == 1)
    {
      if (*(v10 + 40))
      {
        v37 = (v10 + *(v10 + 40));
      }

      else
      {
        v37 = 0;
      }

      dyld4::RuntimeState::log(v36, "Skipping shared cache weak-linked dylib '%s' from '%s'\n", a2, v37);
    }

    v34 = v10 + 8 * *(*(*(a1 + 32) + 8) + 24);
    v35 = 0;
  }

  else
  {
    if (*a2 != 47)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 48);
    v17 = *(v16 + 48);
    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = *(v16 + 40);
    v19 = 8 * v17;
    v20 = v18;
    while (1)
    {
      v21 = *v20;
      if (dyld4::Loader::matchesPath(*v20, *(a1 + 48), a2))
      {
        break;
      }

      ++v20;
      ++v18;
      v19 -= 8;
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (!v21)
    {
LABEL_21:
      v43[0] = *(*(a1 + 56) + 16);
      v43[1] = v10;
      Diagnostics::Diagnostics(v42);
      v22 = *(a1 + 56);
      v23 = *v22;
      v24 = v22[1];
      v41 = *(v22 + 4);
      v39 = v23;
      v40 = v24;
      BYTE11(v39) = *(v10 + 5) & 1;
      *&v40 = v43;
      BYTE2(v39) = v13 & 1;
      v25 = *(v22 + 3);
      if (v25)
      {
        v26 = *(*(a1 + 48) + 8);
        *v44 = *(v26 + 112);
        v45 = *(v26 + 120);
        Loader = (*(v25 + 16))(v25, v42, v44, a2, &v39);
      }

      else
      {
        Loader = dyld4::Loader::getLoader(v42, *(a1 + 48), a2, &v39);
      }

      v21 = Loader;
      if (Diagnostics::hasError(v42))
      {
        dyld4::Loader::getUuidStr(v10, v44, v28);
        Diagnostics::Diagnostics(v38);
        dyld4::Loader::tooNewErrorAddendum(v10, v38, *(a1 + 48));
        v29 = *(a1 + 64);
        if (*(v10 + 40))
        {
          v30 = (v10 + *(v10 + 40));
        }

        else
        {
          v30 = 0;
        }

        v31 = Diagnostics::errorMessage(v38);
        v32 = Diagnostics::errorMessage(v42);
        Diagnostics::error(v29, "Library not loaded: %s\n  Referenced from: <%s> %s%s\n  Reason: %s", a2, v44, v30, v31, v32);
        if (**(a1 + 56) == 1)
        {
          if (*(v10 + 40))
          {
            v33 = (v10 + *(v10 + 40));
          }

          else
          {
            v33 = 0;
          }

          dyld4::RuntimeState::setLaunchMissingDylib(*(a1 + 48), a2, v33);
        }

        *a7 = 1;
        Diagnostics::~Diagnostics(v38);
      }

      Diagnostics::~Diagnostics(v42);
    }

    v34 = v10 + 8 * *(*(*(a1 + 32) + 8) + 24);
    v35 = v21;
  }

  *(v34 + 464) = v35;
  ++*(*(*(a1 + 32) + 8) + 24);
}

uint64_t dyld4::ProcessConfig::DyldCache::makeDataConstWritable(char **a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld413ProcessConfig9DyldCache21makeDataConstWritableERKNS0_7LoggingERKNS_15SyscallDelegateEb_block_invoke;
  v7[3] = &__block_descriptor_tmp_82;
  v7[4] = a1;
  v7[5] = a2;
  if (a4)
  {
    v5 = 19;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5;
  v7[6] = a3;
  return DyldSharedCache::forEachCache(v4, v7);
}

void ___ZNK5dyld414PrebuiltLoader15applyObjCFixupsERNS_12RuntimeStateE_block_invoke_3(void *a1, lsl::Allocator::Pool *this)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (a1[7] <= v3)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v6 = (a1[5] + 8 * v3);
  v7 = *v6;
  v8 = a1[8];
  if (*v6 >> 62 == 1)
  {
    v9 = (v7 >> 8) | 0xC0000000000000;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = (v7 >> 8) & 0x3FFFFFFFFFFFFFLL;
    }

    v10 = ((v9 | (v7 << 56)) + *(*(v8 + 1) + 368));
  }

  else
  {
    v10 = dyld4::PrebuiltLoader::BindTargetRef::value(v6, v8);
  }

  v11 = lsl::Allocator::Pool::allocator(this);
  v12 = a1[8];
  if (*(*(v12 + 1) + 322) == 1)
  {
    dyld4::RuntimeState::log(v12, "fixup: *0x%012lX = 0x%012lX <objc-protocol>\n", v11, v10);
  }

  *v11 = v10;
}

uint64_t dyld4::PrebuiltLoaderSet::forEachCachePatch(uint64_t result, uint64_t a2)
{
  if (*(result + 20))
  {
    v3 = result;
    v4 = 0;
    v5 = result + *(result + 24);
    do
    {
      result = (*(a2 + 16))(a2, v5);
      ++v4;
      v5 += 16;
    }

    while (v4 < *(v3 + 20));
  }

  return result;
}

BOOL dyld4::JustInTimeLoader::matchesPath(dyld4::JustInTimeLoader *this, const dyld4::RuntimeState *a2, char *__s1)
{
  v5 = *(this + 5);
  if (v5)
  {
    v6 = this + *(this + 5);
  }

  else
  {
    v6 = 0;
  }

  if (!_platform_strcmp(__s1, v6))
  {
    return 1;
  }

  if ((v5 & 0x100000) != 0)
  {
    v7 = mach_o::Header::installName(*(this + 4));
    if (!_platform_strcmp(__s1, v7))
    {
      return 1;
    }
  }

  v10 = *(this + 13);
  v9 = (this + 104);
  v8 = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = dyld4::PseudoDylib::loadableAtPath(v8, __s1);
  if (v11 == __s1 || v11 == 0)
  {
    return v11 != 0;
  }

  dyld4::PseudoDylib::disposeString(*v9, v11);
  return 1;
}

BOOL dyld4::Loader::matchesPath(dyld4::Loader *this, const dyld4::RuntimeState *a2, char *a3)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::matchesPath();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::matchesPath(this, a2, a3);
  }

  else
  {

    return dyld4::JustInTimeLoader::matchesPath(this, a2, a3);
  }
}

uint64_t mach_o::Header::findSectionContent(mach_o::Error *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3802000000;
  v14 = __Block_byref_object_copy__294;
  v16 = 0;
  v17 = 0;
  v15 = __Block_byref_object_dispose__295;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK6mach_o6Header18findSectionContentE7CStringS1_b_block_invoke;
  v9[3] = &unk_A54C8;
  v9[6] = a2;
  v9[7] = a3;
  v9[8] = a4;
  v9[9] = a5;
  v10 = a6;
  v9[4] = &v11;
  v9[5] = a1;
  mach_o::Header::forEachSection(a1, v9);
  v6 = v12[5];
  v7 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t ___ZNK6mach_o6Header18findSectionContentE7CStringS1_b_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 24);
  if (v4 == *(result + 56))
  {
    v6 = result;
    v7 = *(result + 40);
    result = _platform_memcmp(*(a2 + 16), *(result + 48), v4);
    if (!result)
    {
      v8 = *(a2 + 8);
      if (v8 == *(v6 + 72))
      {
        result = _platform_memcmp(*a2, *(v6 + 64), v8);
        if (!result)
        {
          if (*(v6 + 80) == 1)
          {
            v9 = *(a2 + 56);
            result = mach_o::Header::preferredLoadAddress(v7);
            v10 = v9 - result;
          }

          else
          {
            v10 = *(a2 + 72);
          }

          *a3 = 1;
          v11 = *(a2 + 64);
          v12 = *(*(v6 + 32) + 8);
          *(v12 + 40) = v7 + v10;
          *(v12 + 48) = v11;
        }
      }
    }
  }

  return result;
}

dyld4::Loader *dyld4::Loader::getLoader(Diagnostics *a1, DyldSharedCache ***a2, const char *a3, uint64_t a4)
{
  v5 = a3;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2000000000;
  v66 = 0;
  v8 = a2[1];
  if (v8[46])
  {
    v9 = *(v8 + 536) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if (*(v8 + 328) == 1)
  {
    dyld4::RuntimeState::log(a2, "find path %s\n", a3);
  }

  v10 = _platform_strncmp(v5, "@rpath/", 7uLL);
  v11 = *v5;
  if (v11 == 47)
  {
    v13 = 1;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  else if (v11 == 46 && ((v12 = v5[1], v12 == 47) || v12 == 46 && v5[2] == 47))
  {
    v13 = 0;
    if (!v10)
    {
LABEL_26:
      v53 = v13;
      v54 = a1;
      v55 = a4;
      v24 = 0;
      v67 = a2 + 4;
      v68 = (a2 + 8);
      while (1)
      {
        v25 = (&v67)[v24];
        v26 = v25[2];
        if (v26)
        {
          break;
        }

LABEL_31:
        if (++v24 == 2)
        {
          goto LABEL_32;
        }
      }

      v27 = v25[1];
      v28 = 8 * v26;
      v29 = v27;
      while (1)
      {
        v23 = *v29;
        if (dyld4::Loader::matchesPath(*v29, a2, v5))
        {
          break;
        }

        ++v29;
        ++v27;
        v28 -= 8;
        if (!v28)
        {
          goto LABEL_31;
        }
      }

      if (*(a2[1] + 328) == 1)
      {
        v37 = dyld4::Loader::path(v23, a2);
        dyld4::RuntimeState::log(a2, "  found: already-loaded-by-rpath: %s\n", v37);
      }

      goto LABEL_74;
    }
  }

  else
  {
    v13 = v11 == 64;
    if (!v10)
    {
      goto LABEL_26;
    }
  }

  if ((*(a4 + 1) & 1) != 0 || v11 == 47 || v11 == 64 || _platform_strchr(v5, 47))
  {
LABEL_33:
    v30 = dyld4::ProcessConfig::canonicalDylibPathInCache(a2[1], v5);
    if (v30)
    {
      v31 = v30;
      if (_platform_strcmp(v30, v5))
      {
        if (*(a2[1] + 328) == 1)
        {
          dyld4::RuntimeState::log(a2, "  switch to canonical cache path: %s\n", v31);
        }

        v5 = v31;
      }
    }

    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2000000000;
    v62 = 0;
    v32 = dyld4::ProcessConfig::DyldCache::indexOfPath(a2[1] + 46, v5, &v62);
    isOverridablePath = 0;
    if (v32)
    {
      isOverridablePath = dyld4::ProcessConfig::DyldCache::isOverridablePath((a2[1] + 46), v5);
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 0x40000000;
    v57[2] = ___ZN5dyld46Loader9getLoaderER11DiagnosticsRNS_12RuntimeStateEPKcRKNS0_11LoadOptionsE_block_invoke;
    v57[3] = &unk_A1488;
    v58 = v9 & 1;
    v59 = v32;
    v60 = isOverridablePath;
    v57[6] = v5;
    v57[7] = a2;
    v57[8] = a4;
    v57[9] = a1;
    v57[4] = &v63;
    v57[5] = v61;
    dyld4::Loader::forEachPath(isOverridablePath, a2, v5, a4, v57);
    if (!v64[3])
    {
      v34 = a2[1];
      if ((v13 | v34[307]))
      {
        if (((*(a4 + 1) & 1) != 0 || _platform_strchr(v5, 47)) && *v5 != 64 && dyld4::SyscallDelegate::realpath(v34, v5, &v67))
        {
          v35 = _platform_strlen(&v67);
          if (_platform_strncmp(v5, &v67, v35))
          {
            if (*(a2[1] + 328) == 1)
            {
              dyld4::RuntimeState::log(a2, "  switch to realpath: %s\n", &v67);
            }

            Loader = dyld4::Loader::getLoader(a1, a2, &v67, a4);
            v64[3] = Loader;
          }
        }
      }

      else
      {
        v55 = a4;
        v38 = a1;
        v39 = 0;
        v67 = a2 + 4;
        v68 = (a2 + 8);
        do
        {
          v40 = (&v67)[v39];
          v41 = v40[2];
          if (v41)
          {
            v42 = v40[1];
            v43 = 8 * v41;
            v44 = v42;
            while (1)
            {
              v45 = *v44;
              if (dyld4::Loader::matchesPath(*v44, a2, v5))
              {
                break;
              }

              ++v44;
              ++v42;
              v43 -= 8;
              if (!v43)
              {
                goto LABEL_61;
              }
            }

            if (*(a2[1] + 328) == 1)
            {
              v46 = dyld4::Loader::path(v45, a2);
              dyld4::RuntimeState::log(a2, "  found existing image by install name: %s\n", v46);
            }

            v64[3] = v45;
            Diagnostics::clearError(v38);
          }

LABEL_61:
          ++v39;
        }

        while (v39 != 2);
        a1 = v38;
        a4 = v55;
      }
    }

    v47 = v64;
    if (*(a2[1] + 328) == 1 && !v64[3])
    {
      dyld4::RuntimeState::log(a2, "  not found: %s\n", v5);
      v47 = v64;
    }

    if (!v47[3])
    {
      if (*v5 != 64 || (*(a2[1] + 305) & 1) != 0 || (Diagnostics::appendError(a1, ", (security policy does not allow @ path expansion)"), !v64[3]))
      {
        if ((*(a4 + 2) & 1) != 0 || *(a4 + 5) == 1)
        {
          Diagnostics::clearError(a1);
        }

        else if (Diagnostics::noError(a1) && !_platform_strncmp(v5, "@rpath/", 7uLL))
        {
          v67 = 0;
          v68 = &v67;
          v69 = 0x2000000000;
          v70 = 0;
          v49 = *(a4 + 16);
          if (v49)
          {
            while ((v68[3] & 1) == 0)
            {
              v50 = dyld4::Loader::mf(v49[1], a2);
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 0x40000000;
              v56[2] = ___ZN5dyld46Loader9getLoaderER11DiagnosticsRNS_12RuntimeStateEPKcRKNS0_11LoadOptionsE_block_invoke_2;
              v56[3] = &unk_A14B0;
              v56[4] = &v67;
              mach_o::Header::forEachRPath(v50, v56);
              v49 = *v49;
              if (!v49)
              {
                if ((v68[3] & 1) == 0)
                {
                  goto LABEL_85;
                }

                break;
              }
            }

            Diagnostics::error(a1, "no LC_RPATH's used.  They may be invalid, eg, not start with '@loader_path' or '@executable_path'");
          }

          else
          {
LABEL_85:
            Diagnostics::error(a1, "no LC_RPATH's found");
          }

          _Block_object_dispose(&v67, 8);
        }
      }
    }

    v23 = v64[3];
    _Block_object_dispose(v61, 8);
  }

  else
  {
    v53 = v13;
    v54 = a1;
    v55 = a4;
    v14 = _platform_strlen(v5);
    v52 = &v52;
    v15 = __chkstk_darwin(v14);
    v16 = &v52 - ((v15 + 23) & 0xFFFFFFFFFFFFFFF0);
    strlcpy(v16, "@rpath/", v15 + 8);
    strlcat(v16, v5, v14 + 8);
    v17 = 0;
    v67 = a2 + 4;
    v68 = (a2 + 8);
    while (1)
    {
      v18 = (&v67)[v17];
      v19 = v18[2];
      if (v19)
      {
        break;
      }

LABEL_23:
      if (++v17 == 2)
      {
LABEL_32:
        a1 = v54;
        a4 = v55;
        v13 = v53;
        goto LABEL_33;
      }
    }

    v20 = v18[1];
    v21 = 8 * v19;
    v22 = v20;
    while (1)
    {
      v23 = *v22;
      if (dyld4::Loader::matchesPath(*v22, a2, v16))
      {
        break;
      }

      ++v22;
      ++v20;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    if (*(a2[1] + 328) == 1)
    {
      v51 = dyld4::Loader::path(v23, a2);
      dyld4::RuntimeState::log(a2, "  found: already-loaded-by-rpath: %s\n", v51);
    }
  }

LABEL_74:
  _Block_object_dispose(&v63, 8);
  return v23;
}

uint64_t dyld4::RuntimeState::partitionDelayLoads(dyld4::Loader ***a1, dyld4::Loader **a2, uint64_t a3, dyld4::Loader **a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v11 = 8 * a3;
  if (a3)
  {
    v12 = 8 * a3;
    v13 = a2;
    do
    {
      v14 = *v13++;
      dyld4::Loader::setDelayInit(v14, a1, 1);
      v12 -= 8;
    }

    while (v12);
  }

  if (a5)
  {
    v15 = 8 * a5;
    do
    {
      v16 = *a4++;
      v64 = 0;
      v65 = v16;
      v66 = mach_o::LinkedDylibAttributes::regular;
      dyld4::RuntimeState::recursiveMarkNonDelayed(a1, v16, &v64, &v64);
      v15 -= 8;
    }

    while (v15);
  }

  if (a1[24] && a3 && (*(a1[1] + 311) & 1) != 0)
  {
    v17 = v11;
    v18 = v9;
    do
    {
      v19 = *v18;
      v20 = dyld4::Loader::mf(*v18, a1);
      if ((*(v19 + 2) & 2) == 0)
      {
        v21 = v20;
        if (dyld3::MachOFile::isDylib(v20))
        {
          if (mach_o::Header::hasInterposingTuples(v21))
          {
            if (*(a1[1] + 320) == 1)
            {
              v22 = dyld4::Loader::leafName(v19, a1);
              dyld4::RuntimeState::log(a1, "has interposing tuples so cannot be delayed: %s\n", v22);
            }

            v64 = 0;
            v65 = v19;
            v66 = mach_o::LinkedDylibAttributes::regular;
            dyld4::RuntimeState::recursiveMarkNonDelayed(a1, v19, &v64, &v64);
          }
        }
      }

      ++v18;
      v17 -= 8;
    }

    while (v17);
  }

  v24 = a1[9];
  v23 = a1[10];
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    v27 = a1[9];
    while (1)
    {
      v28 = *v24;
      if ((dyld4::Loader::isDelayInit(*v24, a1) & 1) == 0)
      {
        break;
      }

      ++v24;
      ++v27;
      v26 -= 8;
      if (!v26)
      {
        v29 = v25;
        goto LABEL_39;
      }
    }

    v64 = v28;
    lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve((a1 + 4), a1[6] + 1);
    v30 = a1[5];
    v31 = a1[6];
    a1[6] = (v31 + 1);
    v30[v31] = v64;
    if (*(a1[1] + 320) == 1)
    {
      v32 = dyld4::Loader::leafName(v28, a1);
      dyld4::RuntimeState::log(a1, "move delayed to loaded: %s\n", v32);
    }

    if (a6)
    {
      lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(a6, *(a6 + 16) + 1);
      v33 = *(a6 + 8);
      v34 = *(a6 + 16);
      *(a6 + 16) = v34 + 1;
      *(v33 + 8 * v34) = v28;
    }
  }

  v29 = v25;
  if (v24 != v25)
  {
    v35 = v24 + 1;
    if (v24 + 1 == v25)
    {
      v29 = v24;
    }

    else
    {
      v36 = v24 + 1;
      v29 = v24;
      do
      {
        v37 = *v36;
        if (dyld4::Loader::isDelayInit(*v36, a1))
        {
          *v29++ = *v36;
          *v36 = 0;
        }

        else
        {
          v64 = v37;
          lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve((a1 + 4), a1[6] + 1);
          v38 = a1[5];
          v39 = a1[6];
          a1[6] = (v39 + 1);
          v38[v39] = v64;
          if (*(a1[1] + 320) == 1)
          {
            v40 = dyld4::Loader::leafName(v37, a1);
            dyld4::RuntimeState::log(a1, "move delayed to loaded: %s\n", v40);
          }

          if (a6)
          {
            lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(a6, *(a6 + 16) + 1);
            v41 = *(a6 + 8);
            v42 = *(a6 + 16);
            *(a6 + 16) = v42 + 1;
            *(v41 + 8 * v42) = v37;
          }
        }

        ++v36;
        ++v35;
      }

      while (v36 != v25);
    }
  }

LABEL_39:
  lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase((a1 + 8), v29, &a1[9][a1[10]]);
  v44 = a1[5];
  v43 = a1[6];
  v45 = &v44[v43];
  if (v43)
  {
    v46 = 8 * v43;
    v47 = a1[5];
    while (1)
    {
      v48 = *v44;
      if (dyld4::Loader::isDelayInit(*v44, a1))
      {
        break;
      }

      ++v44;
      ++v47;
      v46 -= 8;
      if (!v46)
      {
        v49 = v45;
        goto LABEL_56;
      }
    }

    v64 = v48;
    lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve((a1 + 8), a1[10] + 1);
    v50 = a1[9];
    v51 = a1[10];
    a1[10] = (v51 + 1);
    v50[v51] = v64;
    if (*(a1[1] + 320) == 1)
    {
      v52 = dyld4::Loader::leafName(v48, a1);
      dyld4::RuntimeState::log(a1, "move loaded to delayed: %s\n", v52);
    }
  }

  v49 = v45;
  if (v44 != v45)
  {
    v53 = v44 + 1;
    if (v44 + 1 == v45)
    {
      v49 = v44;
    }

    else
    {
      v54 = v44 + 1;
      v49 = v44;
      do
      {
        v55 = *v54;
        if (dyld4::Loader::isDelayInit(*v54, a1))
        {
          v64 = v55;
          lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserve((a1 + 8), a1[10] + 1);
          v56 = a1[9];
          v57 = a1[10];
          a1[10] = (v57 + 1);
          v56[v57] = v64;
          if (*(a1[1] + 320) == 1)
          {
            v58 = dyld4::Loader::leafName(v55, a1);
            dyld4::RuntimeState::log(a1, "move loaded to delayed: %s\n", v58);
          }
        }

        else
        {
          *v49++ = *v54;
          *v54 = 0;
        }

        ++v54;
        ++v53;
      }

      while (v54 != v45);
    }
  }

LABEL_56:
  result = lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase((a1 + 4), v49, &a1[5][a1[6]]);
  if (a6 && a3)
  {
    do
    {
      v60 = *v9;
      result = dyld4::Loader::isDelayInit(*v9, a1);
      if ((result & 1) == 0)
      {
        result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(a6, *(a6 + 16) + 1);
        v61 = *(a6 + 8);
        v62 = *(a6 + 16);
        *(a6 + 16) = v62 + 1;
        *(v61 + 8 * v62) = v60;
      }

      ++v9;
      v11 -= 8;
    }

    while (v11);
  }

  return result;
}

uint64_t dyld4::Loader::setDelayInit(dyld4::Loader *this, dyld4::RuntimeState *a2, int a3)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::setDelayInit();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::setDelayInit(this, a2, a3);
  }

  else
  {

    return dyld4::JustInTimeLoader::setDelayInit(this, a2, a3);
  }
}

uint64_t dyld4::PrebuiltLoader::setDelayInit(uint64_t this, dyld4::RuntimeState *a2, int a3)
{
  v3 = *(this + 6);
  v4 = 960;
  if (v3 < 0)
  {
    v4 = 984;
  }

  v5 = *(a2 + v4);
  v6 = v3 & 0x7FFF;
  v7 = *(v5 + v6);
  if (a3)
  {
    if (v7 != 6)
    {
      return this;
    }

    v8 = 7;
  }

  else
  {
    if (v7 != 7)
    {
      return this;
    }

    v8 = 6;
  }

  *(v5 + v6) = v8;
  return this;
}

uint64_t DyldSharedCache::getIndexedImagePath(DyldSharedCache *this, int a2)
{
  v2 = 24;
  if (*(this + 4) > 0x1C3u)
  {
    v2 = 448;
  }

  return this + *(this + 32 * a2 + *(this + v2) + 24);
}

uint64_t dyld4::RuntimeState::recursiveMarkNonDelayed(uint64_t a1, dyld4::Loader *a2, uint64_t *a3, char **a4)
{
  result = dyld4::Loader::isDelayInit(a2, a1);
  if (result)
  {
    dyld4::Loader::setDelayInit(a2, a1, 0);
    v9 = *(a1 + 8);
    v10 = *(v9 + 352);
    if (v10)
    {
      v11 = *(v9 + 344);
      v12 = dyld4::Loader::leafName(a2, a1);
      if (v10 == _platform_strlen(v12) && !_platform_memcmp(v11, v12, v10))
      {
        if (*(a1 + 1113) == 1)
        {
          strcpy(__dst, "no longer delayed(");
        }

        else
        {
          strcpy(__dst, "not delayed at launch(");
        }

        v13 = dyld4::Loader::leafName(a2, a1);
        strlcat(__dst, v13, 0x40uLL);
        strlcat(__dst, ")", 0x40uLL);
        dyld4::RuntimeState::printLinkageChain(a1, a3, __dst);
      }
    }

    result = dyld4::Loader::dependentCount(a2);
    if (result)
    {
      v14 = result;
      for (i = 0; i != v14; ++i)
      {
        v22 = 0;
        result = dyld4::Loader::dependent(a2, a1, i, &v22);
        if (result && (v22 & 8) == 0)
        {
          *__dst = 0;
          *&__dst[8] = result;
          __dst[16] = v22;
          *a4 = __dst;
          result = dyld4::RuntimeState::recursiveMarkNonDelayed(a1, result, a3, __dst);
          *a4 = 0;
        }
      }
    }

    v16 = *(a1 + 928);
    if (v16)
    {
      v17 = (*(a1 + 920) + 8);
      v18 = 16 * v16;
      do
      {
        if (*(v17 - 1) == a2)
        {
          if (*(*(a1 + 8) + 320) == 1)
          {
            v19 = dyld4::Loader::leafName(*v17, a1);
            v20 = dyld4::Loader::leafName(a2, a1);
            dyld4::RuntimeState::log(a1, "%s has weak-def (or flat lookup) symbol used by %s, so cannot be delayed\n", v19, v20);
          }

          *__dst = 0;
          *&__dst[8] = *v17;
          v21 = *&__dst[8];
          __dst[16] = mach_o::LinkedDylibAttributes::regular;
          *a4 = __dst;
          result = dyld4::RuntimeState::recursiveMarkNonDelayed(a1, v21, a3, __dst);
          *a4 = 0;
        }

        v17 += 2;
        v18 -= 16;
      }

      while (v18);
    }
  }

  return result;
}