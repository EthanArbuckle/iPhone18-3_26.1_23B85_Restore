uint64_t mach_msg_destroy_port(uint64_t name, int a2)
{
  if ((name - 1) > 0xFFFFFFFD)
  {
    return name;
  }

  v2 = name;
  if (a2 > 19)
  {
    if (a2 == 20)
    {
      v8 = mach_task_self_;
      if (_kernelrpc_mach_port_insert_right_trap(mach_task_self_, name, name, 0x14u) == 268435459)
      {
        LODWORD(v12) = 1;
        HIDWORD(v12) = v2;
        v13 = 0x14000000000000;
        v14 = 0x100000000;
        v15 = v2;
        reply_port = mig_get_reply_port();
        *&v11.msgh_bits = 0x3480001513;
        *&v11.msgh_remote_port = __PAIR64__(reply_port, v8);
        *&v11.msgh_voucher_port = 0xC8E00000000;
        v10 = mach_msg2_internal(&v11, 0x200000003, 0x3480001513, __PAIR64__(reply_port, v8), 0xC8E00000000, ((reply_port << 32) | 1), &stru_20.segname[4], 0);
        if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
        {
          if (v10)
          {
            mig_dealloc_reply_port(v11.msgh_local_port);
          }

          else if (v11.msgh_id != 3314 || (v11.msgh_bits & 0x80000000) != 0 || v11.msgh_size != 36 || v11.msgh_remote_port || v13)
          {
            mach_msg_destroy(&v11);
          }
        }
      }

      v3 = mach_task_self_;
      goto LABEL_37;
    }

    if (a2 == 21)
    {
      v4 = mach_task_self_;
      v14 = 0;
      v12 = 0x100000000;
      v13 = name | 0x1500000000;
      v5 = mig_get_reply_port();
      *&v11.msgh_bits = 0x2800001513;
      *&v11.msgh_remote_port = __PAIR64__(v5, v4);
      *&v11.msgh_voucher_port = 0xC8F00000000;
      v6 = mach_msg2_internal(&v11, 0x200000003, 0x2800001513, __PAIR64__(v5, v4), 0xC8F00000000, (v5 << 32), &stru_20.segname[8], 0);
      if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
      {
        if (v6)
        {
          mig_dealloc_reply_port(v11.msgh_local_port);
        }

        else if (v11.msgh_id == 3315 && (v11.msgh_bits & 0x80000000) != 0 && v12 == 1 && v11.msgh_size == 40 && !v11.msgh_remote_port && !HIBYTE(HIDWORD(v13)))
        {
          v2 = HIDWORD(v12);
        }

        else
        {
          mach_msg_destroy(&v11);
        }
      }

      return mach_port_deallocate(mach_task_self_, v2);
    }
  }

  else
  {
    if ((a2 - 17) < 2)
    {
      v3 = mach_task_self_;
LABEL_37:

      return mach_port_deallocate(v3, v2);
    }

    if (a2 == 16)
    {
      v7 = mach_task_self_;

      return mach_port_mod_refs(v7, v2, 1u, -1);
    }
  }

  return name;
}

mach_port_t mig_get_reply_port(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 16);
  name = result;
  if (!result)
  {
    v2.reserved[1] = 0;
    *&v2.flags = xmmword_8E298;
    result = mach_port_construct(mach_task_self_, &v2, 0, &name);
    if (result)
    {
      qword_A82F8 = "mach_port_construct for mig_get_reply_port failed";
      qword_A8328 = result;
      __break(1u);
    }

    else
    {
      result = name;
      *(StatusReg + 16) = name;
    }
  }

  return result;
}

double dyld4::RuntimeLocks::RuntimeLocks(dyld4::RuntimeLocks *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void (*dyld4::start(dyld4::KernelArgs *,void *,void *)::$_1::operator()(uint64_t a1))(dyld4 *this, int a2, const char *const *a3, const char *const *a4, const char *const *a5)
{
  lsl::Allocator::setBestFit(*a1, 1);
  v2 = lsl::Allocator::aligned_alloc(*a1, 0x10uLL, 0x2F0uLL);
  dyld4::ProcessConfig::ProcessConfig(v2, **(a1 + 8), &dyld4::sSyscallDelegate, *a1);
  v3 = lsl::Allocator::aligned_alloc(*a1, 8uLL, 0x498uLL);
  v4 = dyld4::RuntimeState::RuntimeState(v3, v2, *(a1 + 24), *a1);
  *v4 = off_A25B8;
  **(a1 + 16) = v4;
  v5 = lsl::MemoryManager::memoryManager(v4);
  lsl::MemoryManager::setProtectedStack(v5, (**(a1 + 16) + 1128));
  v6 = *(a1 + 16);
  *(*v6 + 77) = **(a1 + 32);
  dyld4::ExternallyViewableState::setRuntimeState(*(*v6 + 77), *v6);
  result = dyld4::prepare(**(a1 + 16), **(a1 + 48), v7);
  **(a1 + 40) = result;
  return result;
}

dyld4::ProcessConfig::Process *dyld4::ProcessConfig::Process::Process(dyld4::ProcessConfig::Process *this, const dyld4::KernelArgs *a2, dyld4::SyscallDelegate *a3, lsl::Allocator::Pool **a4)
{
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  dyld4::SyscallDelegate::DyldCommPage::DyldCommPage((this + 144));
  v8 = *a2;
  v9 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v8;
  *(this + 38) = v9;
  v10 = (a2 + 8 * v9 + 24);
  *(this + 20) = a2 + 16;
  *(this + 21) = v10;
    ;
  }

  *(this + 22) = v10;
  *(this + 50) = dyld4::SyscallDelegate::getpid();
  *(this + 18) = dyld4::SyscallDelegate::dyldCommPageFlags(a3);
  *(this + 204) = dyld4::SyscallDelegate::isTranslated(a3, v12, v13, v14, v15, v16, v17, v18);
  *(this + 4) = dyld4::ProcessConfig::Process::getMainFileID(this);
  *(this + 5) = v19;
  *(this + 16) = dyld4::ProcessConfig::Process::getDyldFileID(this);
  *(this + 17) = v20;
  *(this + 3) = xmmword_8C010;
  *(this + 3) = dyld4::ProcessConfig::Process::getMainUnrealPath(this, a3, a4);
  *(this + 2) = dyld4::ProcessConfig::Process::getMainPath(this, a3, a4);
  v21 = *(this + 3);
  v22 = strrchr(v21, 47);
  if (v22)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = v21;
  }

  *(this + 23) = v23;
  *(this + 14) = dyld4::ProcessConfig::Process::getDyldPath(this, a3, a4);
  if (*(this + 50) == 1)
  {
    *(this + 18) = *(this + 36);
  }

  *(this + 15) = &dword_0;
  dyld4::ProcessConfig::Process::getMainPlatform(this, &v35);
  *(this + 12) = v35;
  *(this + 26) = v36;
  *(this + 205) = 0;
  *(this + 24) = dyld4::ProcessConfig::Process::getMainArchs(this, a3);
  *(this + 206) = (*(this + 18) & 0x200000) == 0;
  *(this + 207) = _simple_getenv(*(this + 22), "dyld_hw_tpro") != 0;
  *(this + 208) = _simple_getenv(*(this + 22), "dyld_hw_tpro_pagers") != 0;
  *(this + 209) = dyld4::ProcessConfig::Process::defaultTproStack(this);
  *(this + 211) = _simple_getenv(*(this + 22), "has_sec_transition") != 0;
  *(this + 210) = 0;
  *(this + 53) = 2;
  if (!dyld4::SyscallDelegate::internalInstall(a3))
  {
    goto LABEL_23;
  }

  if ((*(this + 144) & 0x80) != 0)
  {
LABEL_25:
    v26 = 0;
    goto LABEL_26;
  }

  v24 = _simple_getenv(*(this + 21), "DYLD_PAGEIN_LINKING");
  if (!v24)
  {
    goto LABEL_23;
  }

  v25 = *v24;
  if (v25 > 0x31)
  {
    if (v25 == 50)
    {
      if (v24[1])
      {
        goto LABEL_23;
      }

      v27 = 2;
    }

    else
    {
      if (v25 != 51 || v24[1])
      {
        goto LABEL_23;
      }

      v27 = 3;
    }

    *(this + 53) = v27;
    goto LABEL_24;
  }

  if (v25 == 48)
  {
    v26 = *(v24 + 1);
    if (!v24[1])
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v25 != 49 || v24[1])
  {
LABEL_23:
    if (*(this + 53) <= 1)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (!dyld4::SyscallDelegate::sandboxBlockedPageInLinking(a3))
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v26 = 1;
LABEL_26:
  *(this + 53) = v26;
LABEL_27:
  v28 = *(this + 2);
  if (!_platform_strcmp(v28, "/usr/libexec/adid"))
  {
    *(this + 53) = 0;
  }

  if (!_platform_strcmp(v28, "/usr/libexec/fairplaydeviceidentityd"))
  {
    *(this + 53) = 0;
  }

  if (!_platform_strcmp(v28, "/System/Library/PrivateFrameworks/CoreADI.framework/Versions/A/adid"))
  {
    *(this + 53) = 0;
  }

  if (!_platform_strncmp(v28, "/usr/sbin/fairplayd", 0x13uLL))
  {
    *(this + 53) = 0;
  }

  if (*(this + 206) == 1 && *(this + 12) == &mach_o::PlatformInfo_iOS::singleton && !*(this + 26))
  {
    v29 = 0;
    v30 = *(this + 23);
    v31 = *(this + 16);
    while (_platform_strcmp(v30, dyld4::dataConstApps_iOS14_5_arm64[v29]))
    {
      if (++v29 == 37)
      {
        goto LABEL_43;
      }
    }

    if (v31 >> 8 < 0xE0F)
    {
LABEL_53:
      *(this + 206) = 0;
      return this;
    }

LABEL_43:
    v32 = 0;
    while (_platform_strcmp(v30, dyld4::dataConstApps_iOS14_5_Intune_arm64[v32]))
    {
      if (++v32 == 137)
      {
        goto LABEL_48;
      }
    }

    if (v31 >> 8 < 0xE0F)
    {
      goto LABEL_53;
    }

LABEL_48:
    v33 = 0;
    while (_platform_strcmp(v30, dyld4::dataConstApps_iOS15_0[v33]))
    {
      if (++v33 == 30)
      {
        return this;
      }
    }

    if (HIWORD(v31) <= 0xEu)
    {
      goto LABEL_53;
    }
  }

  return this;
}

char *dyld4::ProcessConfig::Process::getDyldPath(fsid_t *this, dyld4::SyscallDelegate *a2, lsl::Allocator::Pool **a3)
{
  v3 = this[16];
  if (*&v3 && (v4 = this[17]) != 0 && dyld4::SyscallDelegate::fsgetpath(a2, __s, 0x400uLL, v3, v4) != -1)
  {
    return lsl::Allocator::strdup(a3, __s);
  }

  else
  {
    return "/usr/lib/dyld";
  }
}

uint64_t ***dyld4::ProcessConfig::Process::getMainArchs(dyld4::ProcessConfig::Process *this, dyld4::SyscallDelegate *a2)
{
  v4 = dyld3::MachOFile::archName(*this);
  if (_platform_strcmp(v4, "arm64"))
  {
    v5 = _simple_getenv(*(this + 22), "ptrauth_disabled");
    v6 = v5 && *v5 == 49 && v5[1] == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = dyld3::MachOFile::archName(*this);

  return dyld4::SyscallDelegate::getGradedArchs(a2, v7, v6, 0);
}

uint64_t ***mach_o::GradedArchitectures::currentLoad(mach_o::GradedArchitectures *this, int a2)
{
  v2 = &mach_o::GradedArchitectures::load_arm64e_osBinaryOnly;
  if (this)
  {
    v2 = &mach_o::GradedArchitectures::load_arm64e_keysOff_osBinaryOnly;
  }

  v3 = &mach_o::GradedArchitectures::load_arm64e;
  if (this)
  {
    v3 = &mach_o::GradedArchitectures::load_arm64e_keysOff;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t mach_o::PlatformInfo::yearForMajorVersion(uint64_t a1, unsigned int a2, _WORD *a3, BOOL *a4)
{
  if (*(a1 + 59) == 1)
  {
    if (a2 < 0x1A0000)
    {
      v6 = (*(a1 + 52) + HIWORD(a2));
      if (v6 >= 0x7EA)
      {
        LOWORD(v6) = 2026;
      }
    }

    else
    {
      v6 = HIWORD(a2) + 1999;
    }
  }

  else
  {
    LOWORD(v6) = *(a1 + 52) + HIWORD(a2);
  }

  *a3 = v6;
  v7 = BYTE1(a2);
  result = (*(*a1 + 8))(a1, HIWORD(a2));
  *a4 = v7 >= result;
  if (v7 >= result)
  {
    ++*a3;
  }

  return result;
}

vm_address_t *sandbox_operation_fixup(vm_address_t **a1)
{
  result = *a1;
  if (result)
  {
    result = _platform_strcmp(result, "iokit-open");
    if (!result)
    {
      result = sandbox_warn("sandbox operation %s is obsolete; replace with %s", v3, v4, v5, v6, v7, v8, v9, "iokit-open");
      *a1 = "iokit-open-user-client";
    }
  }

  return result;
}

uint64_t sandbox_check_common(void *a1, int a2, unsigned int *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v23 = a3;
  *a1 = &v18;
  if ((a2 & 0x40000000) != 0)
  {
    a1[5] |= 1uLL;
    if ((a2 & 0x20000000) == 0)
    {
LABEL_3:
      if ((a2 & 0x10000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a2 & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  a1[5] |= 2uLL;
  if ((a2 & 0x10000000) == 0)
  {
LABEL_4:
    if ((a2 & 0x8000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  a1[5] |= 8uLL;
  if ((a2 & 0x8000000) == 0)
  {
LABEL_5:
    if ((a2 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  a1[5] |= 0x10uLL;
  if ((a2 & 0x4000000) == 0)
  {
LABEL_6:
    if ((a2 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  a1[5] |= 0x20uLL;
  if ((a2 & 0x2000000) != 0)
  {
LABEL_7:
    a1[5] |= 0x40uLL;
  }

LABEL_8:
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v8 = a2 & 0x81FFFFFF;
  v18 = 0;
  v9 = 240;
  switch(v8)
  {
    case 0:
      a1[3] = 0;
      a1[4] = 0;
      goto LABEL_35;
    case 1:
      goto LABEL_33;
    case 2:
      v8 = 6;
      goto LABEL_33;
    case 3:
      v8 = 7;
      goto LABEL_33;
    case 4:
      v8 = 25;
      goto LABEL_33;
    case 5:
      v8 = 27;
      goto LABEL_33;
    case 6:
      v8 = 28;
      goto LABEL_33;
    case 7:
      v8 = 33;
      goto LABEL_33;
    case 8:
      v8 = 34;
      goto LABEL_33;
    case 9:
      v14 = v23;
      v23 += 2;
      v21 = *v14;
      v23 = v14 + 4;
      v22 = v14[2];
      a1[3] = 35;
      a1[4] = &v21;
      goto LABEL_35;
    case 10:
      goto LABEL_31;
    case 11:
      v10 = v23;
      v23 += 2;
      v11 = *v10;
      v23 = v10 + 4;
      v12 = *(v10 + 1);
      a1[3] = 241;
      LODWORD(v20) = *v11;
      v19 = *v12;
      v13 = &v19;
      goto LABEL_34;
    case 12:
      v8 = 50;
      goto LABEL_33;
    case 13:
      v8 = 19;
      goto LABEL_33;
    case 14:
      v9 = 65;
      goto LABEL_31;
    case 15:
      v8 = 45;
      goto LABEL_33;
    case 16:
      v9 = 75;
      goto LABEL_31;
    case 17:
      v8 = 5;
LABEL_33:
      a1[3] = v8;
      v16 = v23;
      v23 += 2;
      v13 = *v16;
      goto LABEL_34;
    case 18:
      v9 = 52;
LABEL_31:
      a1[3] = v9;
      v15 = v23;
      v23 += 2;
      v13 = *v15;
LABEL_34:
      a1[4] = v13;
LABEL_35:
      if (__sandbox_ms("Sandbox", &dword_0 + 2, a1, a4, a5, a6, a7, a8))
      {
        goto LABEL_36;
      }

      result = v18 != 0;
      break;
    default:
      *__error() = 22;
LABEL_36:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

uint64_t __sandbox_ms(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS___mac_syscall, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

dyld4::ProcessConfig::Security *dyld4::ProcessConfig::Security::Security(dyld4::ProcessConfig::Security *this, const char ***a2, dyld4::SyscallDelegate *a3)
{
  v6 = dyld4::SyscallDelegate::internalInstall(a3);
  *(this + 1) = v6;
  *this = v6;
  if (v6)
  {
    v7 = _simple_getenv(a2[21], "DYLD_SKIP_MAIN") != 0;
  }

  else
  {
    v7 = 0;
  }

  *(this + 27) = v7;
  *(this + 28) = _simple_getenv(a2[21], "DYLD_JUST_BUILD_CLOSURE") != 0;
  *(this + 16) = dyld4::SyscallDelegate::inLockdownMode(a3);
  if (*(a2 + 50) == 1 && *(this + 1) == 1)
  {
    v8 = _simple_getenv(a2[22], "dyld_flags");
    if (v8)
    {
      if (*v8 == 48)
      {
        v8 += 2 * (v8[1] == 120);
      }

      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v8[v9];
        v12 = v11 - 48;
        if ((v11 - 48) >= 0xA)
        {
          if ((v11 - 65) > 5)
          {
            if ((v11 - 97) > 5)
            {
              break;
            }

            v12 = v11 - 87;
          }

          else
          {
            v12 = v11 - 55;
          }
        }

        v10 = 16 * v10 + v12;
        ++v9;
      }

      while (v9 != 16);
      *(a2 + 36) = v10;
    }
  }

  AMFI = dyld4::ProcessConfig::Security::getAMFI(this, a2, a3);
  *(this + 17) = AMFI & 1;
  v14 = *&vshl_u16((*&vdup_n_s16(AMFI) & 0xFF00FF00FF00FFLL), 0xFFFDFFFEFFFFFFFCLL) & 0xFF01FF01FF01FF01;
  *(this + 18) = vuzp1_s8(v14, v14).u32[0];
  *(this + 22) = (AMFI & 0x20) != 0;
  *(this + 23) = (AMFI & 0x40) != 0;
  *(this + 24) = (AMFI & 0x80) != 0;
  *(this + 25) = BYTE1(AMFI) & 1;
  *(this + 26) = (AMFI & 0x200) != 0;
  *(this + 1) = 0;
  *(this + 1) = 0;
  v15 = a2[1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = ___ZN5dyld413ProcessConfig8SecurityC2ERNS0_7ProcessERNS_15SyscallDelegateE_block_invoke;
  v18[3] = &__block_descriptor_tmp_37_0;
  v18[4] = this;
  mach_o::Header::forDyldEnv(v15, v18);
  v16 = mach_o::Platform::value((a2 + 12));
  if (v16 <= 0xA && ((1 << v16) & 0x442) != 0 && (*(this + 18) & 1) == 0 && (*(this + 19) & 1) == 0 && (*(this + 20) & 1) == 0)
  {
    dyld4::ProcessConfig::Security::pruneEnvVars(v16, a2);
  }

  return this;
}

void *dyld3::kdebug_trace_dyld_duration_start(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = a4;
  v13 = a2;
  if (!kdebug_is_enabled(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  add = atomic_fetch_add(&dyld3::trace_pair_id, 1uLL);
  if (a3)
  {
    v21 = kdebug_trace_string(a1, 0, a3, v15, v16, v17, v18, v19);
    if (v21 == -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v21;
    }
  }

  v22 = (add + 1);
  if (a5)
  {
    v23 = kdebug_trace_string(a1, 0, a5, v15, v16, v17, v18, v19);
    if (v23 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v23;
    }
  }

  if (a7)
  {
    v24 = kdebug_trace_string(a1, 0, a7, v15, v16, v17, v18, v19);
    if (v24 == -1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v24;
    }

    kdebug_trace((a1 | 1), v22, v13, v11, v28, v25, v26, v27);
    if (v28)
    {
      kdebug_trace_string(a1, v28, 0, v29, v30, v31, v32, v33);
    }

    if (!a5)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  kdebug_trace((a1 | 1), v22, v13, v11, a6, v17, v18, v19);
  if (a5)
  {
LABEL_20:
    if (v11)
    {
      kdebug_trace_string(a1, v11, 0, v29, v30, v31, v32, v33);
    }
  }

LABEL_22:
  if (a3 && v13)
  {
    kdebug_trace_string(a1, v13, 0, v29, v30, v31, v32, v33);
  }

  return v22;
}

int close(int a1)
{
  result = mac_syscall(SYS_close, a1);
  if (v1)
  {
    return cerror(result);
  }

  return result;
}

uint64_t lsl::Allocator::owned(lsl::Allocator *this, unint64_t a2, uint64_t a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3[4];
    if (v4 <= (a2 & 0xFFFFFFFFFFFFFFLL) && (a2 & 0xFFFFFFFFFFFFFFLL) + a3 <= v3[5] + v4)
    {
      break;
    }

    v3 = v3[2];
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t dyld4::ExternallyViewableState::triggerNotifications(dyld4::ExternallyViewableState *this, uint64_t a2, uint64_t a3, const dyld_image_info *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32 = 520552496;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  dyld3::ScopedTimer::startTimer(&v32, a2, a3, a4, a5, a6, a7, a8);
  (*(*(this + 4) + 16))(a2, a3, a4);
  v12 = dyld4::RemoteNotificationResponder::RemoteNotificationResponder(v31, *(*(this + 4) + 200));
  if (dyld4::RemoteNotificationResponder::active(v12))
  {
    v13 = dyld4::RemoteNotificationResponder::blockOnSynchronousEvent(v31, 0);
    __chkstk_darwin(v13);
    memset(v22, 0, sizeof(v22));
    v14 = __stackAllocatorInternal(v22);
    v27 = v14;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v23 = v14;
    v24 = 0;
    v15 = a3;
    v26 = 0;
    v25 = 0;
    lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v27, a3);
    lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v23, a3);
    if (a3)
    {
      p_imageFilePath = &a4->imageFilePath;
      do
      {
        lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v27, v29 + 1);
        v17 = *(p_imageFilePath - 1);
        v18 = v29++;
        v28[v18] = v17;
        lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v23, v25 + 1);
        v19 = *p_imageFilePath;
        p_imageFilePath += 3;
        v20 = v25++;
        v24[v20] = v19;
        --v15;
      }

      while (v15);
    }

    dyld4::RemoteNotificationResponder::notifyMonitorOfImageListChanges(v31, a2 == 1, a3, v28, v24, *(this + 3));
    if (v24)
    {
      lsl::Vector<char const*>::resize(&v23, 0);
    }

    if (v28)
    {
      lsl::Vector<char const*>::resize(&v27, 0);
    }

    lsl::Allocator::~Allocator(v14);
  }

  dyld4::RemoteNotificationResponder::~RemoteNotificationResponder(v31);
  return dyld3::ScopedTimer::endTimer(&v32);
}

dyld4::ProcessConfig::Process *dyld4::ProcessConfig::Process::getMainFileID(const char ***this)
{
  result = _simple_getenv(this[22], "executable_file");
  if (result)
  {
    return dyld4::ProcessConfig::Process::fileIDFromFileHexStrings(result, result);
  }

  return result;
}

uint64_t dyld4::ProcessConfig::Process::fileIDFromFileHexStrings(dyld4::ProcessConfig::Process *this, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 == 48)
  {
    a2 += 2 * (a2[1] == 120);
  }

  v2 = 0;
  result = 0;
  do
  {
    v4 = a2[v2];
    v5 = v4 - 48;
    if ((v4 - 48) >= 0xA)
    {
      if ((v4 - 65) > 5)
      {
        if ((v4 - 97) > 5)
        {
          break;
        }

        v5 = v4 - 87;
      }

      else
      {
        v5 = v4 - 55;
      }
    }

    result = 16 * result + v5;
    ++v2;
  }

  while (v2 != 16);
  v6 = &a2[v2];
  v7 = &a2[v2];
  v9 = *(v7 + 1);
  v8 = v7 + 1;
  if (v9 == 48)
  {
    v8 += 2 * (v6[2] == 120);
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v8[v10];
    v13 = v12 - 48;
    if ((v12 - 48) >= 0xA)
    {
      if ((v12 - 65) > 5)
      {
        if ((v12 - 97) > 5)
        {
          return result;
        }

        v13 = v12 - 87;
      }

      else
      {
        v13 = v12 - 55;
      }
    }

    v11 = 16 * v11 + v13;
    ++v10;
  }

  while (v10 != 16);
  return result;
}

uint64_t anonymous namespace::quickSort<PropertyList::String **>(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + ((4 * (((a2 - v3) >> 3) + ((a2 - v3) >> 63))) & 0xFFFFFFFFFFFFFFF8));
      v5 = a2;
      v6 = v3;
      while (2)
      {
        v7 = *(v4 + 16);
        while (1)
        {
          v8 = *v6;
          if ((_platform_strcmp(*(*v6 + 16), v7) & 0x80000000) == 0)
          {
            break;
          }

          v6 += 8;
          if (v6 == v5)
          {
            goto LABEL_13;
          }
        }

        do
        {
          if (--v5 == v6)
          {
            v5 = v6;
            goto LABEL_13;
          }

          v9 = *v5;
        }

        while ((_platform_strcmp(*(*v5 + 16), v7) & 0x80000000) == 0);
        *v6 = v9;
        v6 += 8;
        *v5 = v8;
        if (v5 != v6)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v10 = v5;
      if (v5 != a2)
      {
        v10 = a2;
        v11 = v5;
        while (2)
        {
          v12 = *(v4 + 16);
          while (1)
          {
            v13 = *v11;
            if (_platform_strcmp(v12, *(*v11 + 16)) < 0)
            {
              break;
            }

            if (++v11 == v10)
            {
              goto LABEL_24;
            }
          }

          do
          {
            v10 -= 8;
            if (v10 == v11)
            {
              v10 = v11;
              goto LABEL_24;
            }

            v14 = *v10;
          }

          while (_platform_strcmp(v12, *(*v10 + 16)) < 0);
          *v11++ = v14;
          *v10 = v13;
          if (v10 != v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:
      v3 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t lsl::Vector<unsigned long long>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 8 * a2);
    if (result)
    {
LABEL_12:
      *(v3 + 24) = a2;
      return result;
    }

    result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 8 * a2);
    v4 = result;
    v5 = *(v3 + 8);
    if (*(v3 + 16))
    {
      v6 = 0;
      v7 = result;
      do
      {
        *v7++ = *(v5 + 8 * v6++);
      }

      while (*(v3 + 16) > v6);
    }

    else if (!v5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    result = lsl::Allocator::free(*v3, v5);
    v8 = *(v3 + 16);
LABEL_9:
    if (v8 >= a2)
    {
      v8 = a2;
    }

    *(v3 + 8) = v4;
    *(v3 + 16) = v8;
    goto LABEL_12;
  }

  return result;
}

uint64_t PropertyList::String::emit(const char **this, unsigned __int8 a2, ByteStream *a3)
{
  v5 = _platform_strlen(this[2]);
  result = PropertyList::String::emitUnicode(this, 0, v5, a3);
  if ((result & 1) == 0)
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v7 = *(a3 + 1);
    v8 = *(a3 + 2);
    *(a3 + 2) = v8 + 1;
    if (v5 > 0xE)
    {
      *(v7 + v8) = 95;
      v9[0] = &off_A4150;
      v9[1] = 0xFFFFFFFFFFFFFFELL;
      v9[2] = v5;
      PropertyList::Integer::emit(v9, 0, a3);
    }

    else
    {
      *(v7 + v8) = v5 | 0x50;
    }

    return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<ByteStream>>(v9, this[2], &this[2][v5], a3);
  }

  return result;
}

uint64_t PropertyList::String::emitUnicode(PropertyList::String *this, unsigned __int8 a2, unint64_t a3, ByteStream *a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  while ((*(*(this + 2) + v7) & 0x80000000) == 0)
  {
    if (a3 == ++v7)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v37 = *a4;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  do
  {
    v13 = *(this + 2);
    v14 = (v13 + v11);
    v15 = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      v16 = v10 + 1;
LABEL_18:
      lsl::Vector<unsigned short>::reserve(&v37, v16);
      v9 = v38;
      v20 = v39;
      v10 = ++v39;
      v38[v20] = v15;
      goto LABEL_19;
    }

    if ((v15 & 0xE0) == 0xC0)
    {
      v12 = v12 + 1;
      if (v12 >= a3)
      {
        goto LABEL_29;
      }

      v17 = *(v13 + v12);
      if ((v17 & 0xC0) != 0x80)
      {
        goto LABEL_29;
      }

      v16 = v10 + 1;
      LOWORD(v15) = v17 & 0x3F | ((v15 & 0x1F) << 6);
      goto LABEL_18;
    }

    if ((v15 & 0xF0) == 0xE0)
    {
      v12 = v12 + 2;
      if (v12 >= a3 || (v18 = v14[1], (v18 & 0xC0) != 0x80) || (v19 = *(v13 + v12), (v19 & 0xC0) != 0x80))
      {
LABEL_29:
        v8 = 0;
        if (!v9)
        {
          return v8;
        }

        goto LABEL_37;
      }

      LOWORD(v15) = (v15 << 12) | ((v18 & 0x3F) << 6) | v19 & 0x3F;
      v16 = v10 + 1;
      goto LABEL_18;
    }

    if ((v15 & 0xF8) == 0xF0)
    {
      v21 = v12 + 3;
      if (v21 >= a3)
      {
        goto LABEL_29;
      }

      v8 = 0;
      v22 = v14[1];
      if ((v22 & 0xC0) != 0x80)
      {
        goto LABEL_36;
      }

      v23 = v14[2];
      if ((v23 & 0xC0) != 0x80)
      {
        goto LABEL_36;
      }

      v24 = *(v13 + v21);
      if ((v24 & 0xC0) != 0x80)
      {
        goto LABEL_36;
      }

      v25 = (((((v22 & 0x3F) << 12) | (v15 << 18) | (((v23 >> 4) & 3) << 10)) + 983040) >> 10) & 0x3FF | 0xD800;
      LOWORD(v15) = v24 & 0x3F | ((v23 & 0xF) << 6) | 0xDC00;
      lsl::Vector<unsigned short>::reserve(&v37, v10 + 1);
      v26 = v39++;
      v38[v26] = v25;
      v16 = v26 + 2;
      LODWORD(v12) = v21;
      goto LABEL_18;
    }

LABEL_19:
    LODWORD(v12) = v12 + 1;
    v11 = v12;
  }

  while (v12 < a3);
  if (v10 > 0xE)
  {
    lsl::Vector<std::byte>::reserve(a4, *(a4 + 2) + 1);
    v30 = *(a4 + 1);
    v31 = *(a4 + 2);
    *(a4 + 2) = v31 + 1;
    *(v30 + v31) = 111;
    v36[0] = &off_A4150;
    v36[1] = 0xFFFFFFFFFFFFFFELL;
    v36[2] = v39;
    PropertyList::Integer::emit(v36, 0, a4);
  }

  else
  {
    v27 = v10 | 0x60;
    lsl::Vector<std::byte>::reserve(a4, *(a4 + 2) + 1);
    v28 = *(a4 + 1);
    v29 = *(a4 + 2);
    *(a4 + 2) = v29 + 1;
    *(v28 + v29) = v27;
  }

  v32 = v38;
  if (v39)
  {
    v33 = 2 * v39;
    do
    {
      v34 = *v32++;
      ByteStream::push_back<unsigned short>(a4, v34);
      v33 -= 2;
    }

    while (v33);
    v8 = 1;
    v9 = v38;
LABEL_36:
    if (!v9)
    {
      return v8;
    }

LABEL_37:
    lsl::Vector<unsigned short>::resize(&v37, 0);
    return v8;
  }

  v8 = 1;
  if (v38)
  {
    goto LABEL_37;
  }

  return v8;
}

uint64_t PropertyList::String::deallocate(uint64_t this, void *a2)
{
  if ((*(this + 8) & 0x8000000000000000) == 0)
  {
    v2 = this;
    this = lsl::Allocator::freeObject(*(this + 16), a2);
    *(v2 + 16) = 0;
  }

  return this;
}

char *PropertyList::Integer::emit(PropertyList::Integer *this, unsigned __int8 a2, ByteStream *a3)
{
  v4 = *(this + 2);
  v5 = 1;
  while (v4 << (v4 >> 60 == 0) >> (8 * (v5 & 0x1F)))
  {
    v6 = v5;
    v5 *= 2;
    if (v6 >= 4)
    {
      v5 = 8;
      break;
    }
  }

  lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  *(a3 + 2) = v8 + 1;
  *(v7 + v8) = __clz(__rbit32(v5)) | 0x10;

  return ByteStream::push_back(a3, v5, v4);
}

char *anonymous namespace::quickSort<PropertyList::Integer **>(char *result, char *a2)
{
  if (result != a2)
  {
    do
    {
      v3 = *(*&result[(4 * (((a2 - result) >> 3) + ((a2 - result) >> 63))) & 0xFFFFFFFFFFFFFFF8] + 16);
      v4 = a2;
      v5 = result;
      while (2)
      {
        while (1)
        {
          v6 = *v5;
          if (*(*v5 + 16) >= v3)
          {
            break;
          }

          if (++v5 == v4)
          {
            goto LABEL_11;
          }
        }

        do
        {
          if (--v4 == v5)
          {
            v4 = v5;
            goto LABEL_11;
          }
        }

        while (*(*v4 + 16) >= v3);
        *v5++ = *v4;
        *v4 = v6;
        if (v4 != v5)
        {
          continue;
        }

        break;
      }

LABEL_11:
      v7 = v4;
      if (v4 != a2)
      {
        v7 = a2;
        v8 = v4;
        while (2)
        {
          v9 = v8;
          while (1)
          {
            v10 = *v9;
            if (v3 < *(*v9 + 16))
            {
              break;
            }

            if (++v9 == v7)
            {
              goto LABEL_22;
            }
          }

          do
          {
            if (--v7 == v9)
            {
              v7 = v9;
              goto LABEL_22;
            }
          }

          while (v3 < *(*v7 + 16));
          *v9 = *v7;
          v8 = v9 + 1;
          *v7 = v10;
          if (v7 != v9 + 1)
          {
            continue;
          }

          break;
        }

        v7 = v9 + 1;
      }

LABEL_22:
      result = v7;
    }

    while (v7 != a2);
  }

  return result;
}

char *PropertyList::Data::emit(PropertyList::Data *this, unsigned __int8 a2, ByteStream *a3)
{
  v5 = *(this + 4);
  lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  *(a3 + 2) = v8 + 1;
  if (v5 > 0xE)
  {
    *(v7 + v8) = 79;
  }

  else
  {
    *(v7 + v8) = v5 | 0x40;
  }

  return std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<ByteStream>>(&v10, *(this + 3), (*(this + 3) + *(this + 4)), a3);
}

char *anonymous namespace::emitUnsignedPlistEncodedInteger(unint64_t this, uint64_t a2, ByteStream *a3)
{
  v5 = 1;
  while (this >> (8 * (v5 & 0x1F)))
  {
    v6 = v5;
    v5 *= 2;
    if (v6 >= 4)
    {
      v5 = 8;
      break;
    }
  }

  lsl::Vector<std::byte>::reserve(a2, *(a2 + 16) + 1);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(a2 + 16) = v8 + 1;
  *(v7 + v8) = __clz(__rbit32(v5)) | 0x10;

  return ByteStream::push_back(a2, v5, this);
}

uint64_t PropertyList::Array::emit(PropertyList::Array *this, int a2, ByteStream *a3)
{
  v6 = *(this + 4);
  if (v6 >= 0xF)
  {
    lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v10 = *(a3 + 1);
    v11 = *(a3 + 2);
    *(a3 + 2) = v11 + 1;
    *(v10 + v11) = -81;
  }

  else
  {
    result = lsl::Vector<std::byte>::reserve(a3, *(a3 + 2) + 1);
    v8 = *(a3 + 1);
    v9 = *(a3 + 2);
    *(a3 + 2) = v9 + 1;
    *(v8 + v9) = v6 | 0xA0;
    if (!v6)
    {
      return result;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    result = ByteStream::push_back(a3, a2, *(*(*(this + 3) + 8 * i) + 8) & 0x7FFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t dyld4::ExternallyViewableState::activateAtlas(dyld4::ExternallyViewableState *this, lsl::Allocator *a2, ByteStream *a3)
{
  _X0 = *(a3 + 1);
  v7 = *(a3 + 2);
  v8 = *(this + 4);
  _X20 = *(v8 + 304);
  v10 = _X20;
  do
  {
    _X5 = *(v8 + 312);
    __asm { CASP            X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v10;
    v10 = _X4;
  }

  while (!_ZF);
  if (!_X20 || !lsl::Allocator::owned(a2, _X20, 8))
  {
    goto LABEL_9;
  }

  v18 = lsl::Allocator::size(_X20, v17);
  v19 = *(a3 + 2);
  if (v18 >= v19)
  {
    goto LABEL_11;
  }

  if (!lsl::Allocator::realloc(a2, _X20, v19))
  {
    lsl::Allocator::free(a2, _X20);
LABEL_9:
    _X20 = lsl::Allocator::malloc(a2, *(a3 + 2));
  }

  v19 = *(a3 + 2);
LABEL_11:
  if (v19)
  {
    memmove(_X20, *(a3 + 1), v19);
    v20 = *(a3 + 2);
  }

  v21 = *(this + 4);
  result = *(v21 + 304);
  do
  {
    _X3 = *(v21 + 312);
    __asm { CASP            X2, X3, X20, X21, [X8] }

    _ZF = _X2 == result;
    result = _X2;
  }

  while (!_ZF);
  atomic_store(*(this + 3), (*(this + 4) + 184));
  return result;
}

uint64_t proc_set_dyld_all_image_info(void *a1, void *a2)
{
  v4 = getpid();

  return __proc_info(&dword_C + 3, v4, 0, 0, a1, a2, v5, v6);
}

uint64_t __proc_info(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = mac_syscall(SYS_proc_info, a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t kdebug_trace_string(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!kdebug_is_enabled(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (a2 != -1 && (a2 || a3))
  {

    return __kdebug_trace_string(a1, a2, a3, v11, v12, v13, v14, v15);
  }

  else
  {
    v17 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (!v17)
    {
      v17 = &errno;
    }

    *v17 = 22;
    return -1;
  }
}

dyld4::ProcessConfig *dyld4::ProcessConfig::ProcessConfig(dyld4::ProcessConfig *this, const dyld4::KernelArgs *a2, dyld4::SyscallDelegate *a3, lsl::Allocator::Pool **a4)
{
  dyld4::ProcessConfig::Process::Process((this + 16), a2, a3, a4);
  dyld4::ProcessConfig::Security::Security((this + 288), this + 2, a3);
  dyld4::ProcessConfig::Logging::Logging((this + 320), this + 2, (this + 288), a3);
  dyld4::ProcessConfig::DyldCache::DyldCache((this + 368), (this + 16), (this + 288), (this + 320), a3, a4, this);
  dyld4::ProcessConfig::PathOverrides::PathOverrides((this + 592), (this + 16), (this + 288), (this + 320), (this + 368), a3, a4);
  if (dyld4::ProcessConfig::PathOverrides::dontUsePrebuiltForApp((this + 592)))
  {
    *(this + 576) = 1;
  }

  dyld4::ProcessConfig::Process::evaluateFunctionVariantFlags(this + 2, this);
  if (mach_o::Header::hasFunctionVariantFixups(*(this + 17)))
  {
    if (mach_o::Header::preferredLoadAddress(*(this + 17)))
    {
      dyld4::ProcessConfig::ProcessConfig();
    }

    Slide = mach_o::Header::getSlide(*(this + 17));
    mach_o::Image::Image(__src, *(this + 17));
    v8 = v14;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = ___ZN5dyld413ProcessConfigC2EPKNS_10KernelArgsERNS_15SyscallDelegateERN3lsl9AllocatorE_block_invoke;
    v10[3] = &__block_descriptor_tmp_0;
    v10[4] = this;
    v10[5] = v13;
    memmove(v11, __src, 0x1B0uLL);
    v11[54] = Slide;
    mach_o::FunctionVariantFixups::forEachFixup(v8, v10);
  }

  return this;
}

uint64_t dyld4::SyscallDelegate::isTranslated(dyld4::SyscallDelegate *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = 0;
  v8 = rosetta_dyld_is_translated(&v10, a2, a3, a4, a5, a6, a7, a8) == 0;
  return v8 & v10;
}

dyld4::ProcessConfig::Process *dyld4::ProcessConfig::Process::getDyldFileID(const char ***this)
{
  result = _simple_getenv(this[22], "dyld_file");
  if (result)
  {
    return dyld4::ProcessConfig::Process::fileIDFromFileHexStrings(result, result);
  }

  return result;
}

char *dyld4::ProcessConfig::Process::getMainUnrealPath(const char ***this, dyld4::SyscallDelegate *a2, lsl::Allocator::Pool **a3)
{
  v6 = _simple_getenv(this[22], "executable_path");
  if (!v6)
  {
    v6 = *this[20];
  }

  v7 = *v6;
  if (v7 != 47)
  {
    if (v7 == 46)
    {
      v6 += 2 * (v6[1] == 47);
    }

    if (dyld4::SyscallDelegate::getCWD(a2, __dst))
    {
      strlcat(__dst, "/", 0x400uLL);
      strlcat(__dst, v6, 0x400uLL);
      return lsl::Allocator::strdup(a3, __dst);
    }
  }

  return v6;
}

char *dyld4::ProcessConfig::Process::getMainPath(dyld4::ProcessConfig::Process *this, dyld4::SyscallDelegate *a2, lsl::Allocator::Pool **a3)
{
  v6 = *(this + 4);
  if (v6)
  {
    v7 = *(this + 5);
    if (v7)
    {
      if (dyld4::SyscallDelegate::fsgetpath(a2, __s, 0x400uLL, v6, v7) != -1)
      {
        return lsl::Allocator::strdup(a3, __s);
      }
    }
  }

  if (dyld4::SyscallDelegate::realpath(a2, *(this + 3), __s))
  {
    return lsl::Allocator::strdup(a3, __s);
  }

  else
  {
    return *(this + 3);
  }
}

char *__cdecl strrchr(char *__s, int __c)
{
  result = 0;
  v4 = __s;
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (__c == v6)
    {
      result = __s;
    }

    __s = v4;
  }

  while (v5);
  return result;
}

uint64_t dyld4::ProcessConfig::Process::getMainPlatform@<X0>(dyld4::ProcessConfig::Process *this@<X0>, _DWORD *a2@<X8>)
{
  mach_o::Header::platformAndVersions(*(this + 1), &v24);
  v4 = v26;
  *(this + 16) = v27;
  v5 = v25;
  *(this + 18) = v4;
  v6 = v24;
  *a2 = v24;
  a2[2] = v5;
  if (v6 != &mach_o::PlatformInfo_macOS::singleton || v5 != 0)
  {
    goto LABEL_24;
  }

  v8 = _simple_getenv(*(this + 21), "DYLD_FORCE_PLATFORM");
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  if (!mach_o::Header::allowsAlternatePlatform(*(this + 1)))
  {
    goto LABEL_24;
  }

  v10 = *v9;
  if (v10 == 54)
  {
    v12 = &mach_o::Platform::macCatalyst;
    goto LABEL_13;
  }

  if (v10 == 50)
  {
    v11 = dyld3::MachOFile::archName(*this);
    if (!_platform_strcmp(v11, "arm64"))
    {
      v12 = &mach_o::Platform::iOS;
LABEL_13:
      *a2 = *v12;
      a2[2] = *(v12 + 2);
    }
  }

  v13 = &dword_8C028;
  v14 = 2240;
  while (*(v13 - 1) != *(this + 16))
  {
    v13 += 10;
    v14 -= 40;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  *(this + 16) = *v13;
LABEL_19:
  v15 = &dword_8C028;
  v16 = 2240;
  while (*(v15 - 1) != *(this + 18))
  {
    v15 += 10;
    v16 -= 40;
    if (!v16)
    {
      goto LABEL_24;
    }
  }

  *(this + 18) = *v15;
LABEL_24:
  v17 = mach_o::Platform::basePlatform(a2, &v22);
  v18 = v22;
  *(this + 10) = v22;
  v19 = v23;
  *(this + 22) = v23;
  v22 = v18;
  v23 = v19;
  VersionSetEquivalent = dyld4::ProcessConfig::Process::findVersionSetEquivalent(v17, &v22, *(this + 16));
  *(this + 17) = VersionSetEquivalent;
  v22 = *(this + 10);
  v23 = *(this + 22);
  result = dyld4::ProcessConfig::Process::findVersionSetEquivalent(VersionSetEquivalent, &v22, *(this + 18));
  *(this + 19) = result;
  return result;
}

uint64_t dyld4::ProcessConfig::Process::findVersionSetEquivalent(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v5 = 0;
  v6 = 0;
  v7 = &dyld3::sVersionMap;
  v8 = 2240;
  do
  {
    mach_o::Platform::basePlatform(a2, &v19);
    v9 = v19;
    *a2 = v19;
    v10 = v20;
    a2[2] = v20;
    if (v9 == &mach_o::PlatformInfo_macOS::singleton && v10 == 0)
    {
      v14 = 1;
      goto LABEL_20;
    }

    if (v9 == &mach_o::PlatformInfo_iOS::singleton && v10 == 0)
    {
      v14 = 2;
      goto LABEL_20;
    }

    if (v9 == &mach_o::PlatformInfo_watchOS::singleton && v10 == 0)
    {
      v14 = 3;
      goto LABEL_20;
    }

    if (v9 == &mach_o::PlatformInfo_tvOS::singleton && !v10)
    {
      v14 = 4;
LABEL_20:
      v15 = v7[v14];
      goto LABEL_21;
    }

    if (v9 == &mach_o::PlatformInfo_bridgeOS::singleton && !v10)
    {
      v14 = 5;
      goto LABEL_20;
    }

    v15 = -1;
    if (v9 == &mach_o::PlatformInfo_visionOS::singleton && !v10)
    {
      v14 = 7;
      goto LABEL_20;
    }

LABEL_21:
    if (v15 > a3)
    {
      goto LABEL_30;
    }

    v16 = *v7;
    v7 += 10;
    v5 = v16;
    v6 = v15;
    v8 -= 40;
  }

  while (v8);
  v6 = v15;
LABEL_30:
  if (v15 == -1 && v6 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

const char *dyld4::ProcessConfig::Process::defaultTproStack(dyld4::ProcessConfig::Process *this)
{
  result = _simple_getenv(*(this + 22), "dyld_hw_tpro");
  if (result)
  {
    mach_o::Header::platformAndVersions(*(this + 1), &v8);
    v6 = 0;
    v3 = v8;
    v4 = v9;
    v5 = v10;
    mach_o::Policy::Policy(v7, &v6, &v3, 0, 0, 0, 0);
    return mach_o::Policy::useProtectedStack(v7);
  }

  return result;
}

uint64_t mach_o::Platform::epoch(void (****a1)(void, void, unsigned __int16 *, char *), unsigned int a2)
{
  v2 = *a1;
  v3 = 5;
  if (v2)
  {
    v7 = 0;
    v6 = 0;
    (**v2)(v2, a2, &v7, &v6);
    if (v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = 5;
    }

    return v4 + 10 * v7;
  }

  return v3;
}

uint64_t mach_o::Policy::Policy(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, char a6, char a7)
{
  *a1 = mach_o::Platform::epoch(a3, *(a3 + 16));
  *(a1 + 4) = mach_o::Platform::epoch(a3, *(a3 + 20));
  *(a1 + 8) = *a2;
  *(a1 + 16) = *a3;
  *(a1 + 24) = *(a3 + 8);
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 53) = a6;
  *(a1 + 54) = a7;
  return a1;
}

uint64_t sandbox_check(int a1, vm_address_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v28 = a2;
  sandbox_operation_fixup(&v28);
  v17[0] = 0;
  v18 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17[1] = a1;
  *&v18 = v28;
  v27 = &a9;
  return sandbox_check_common(v17, a3, &a9, v11, v12, v13, v14, v15);
}

char *std::__copy_impl::operator()[abi:nn200100]<std::byte *,std::byte *,std::back_insert_iterator<ByteStream>>(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      lsl::Vector<std::byte>::reserve(a4, *(a4 + 16) + 1);
      v8 = *(a4 + 8);
      v9 = *(a4 + 16);
      *(a4 + 16) = v9 + 1;
      *(v8 + v9) = v7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

int sysctlbyname(const char *a1, void *a2, size_t *a3, void *a4, size_t a5)
{
  v14 = 0x300000000;
  v12 = 56;
  v10 = _platform_strlen(a1);
  result = __sysctl(&v14, 2u, v13, &v12, a1, v10);
  if ((result & 0x80000000) == 0)
  {
    return __sysctl(v13, v12 >> 2, a2, a3, a4, a5);
  }

  return result;
}

int __sysctl(int *a1, u_int a2, void *a3, size_t *a4, void *a5, size_t a6)
{
  result = mac_syscall(SYS_sysctl, a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return cerror_nocancel(result);
  }

  return result;
}

char *___ZNK6mach_o6Header10forDyldEnvEU13block_pointerFvPKcRbE_block_invoke(char *result, const char *a2)
{
  if (*a2 == 39)
  {
    v3 = result;
    v4 = *(a2 + 2);
    result = _platform_strncmp(&a2[v4], "DYLD_", 5uLL);
    if (!result)
    {
      result = _platform_strchr(&a2[v4], 61);
      if (result)
      {
        v5 = *(*(v3 + 4) + 16);

        return v5();
      }
    }
  }

  return result;
}

dyld4::ProcessConfig::Logging *dyld4::ProcessConfig::Logging::Logging(dyld4::ProcessConfig::Logging *this, const char ***a2, const dyld4::ProcessConfig::Security *a3, dyld4::SyscallDelegate *a4)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (*(a3 + 18) != 1)
  {
    *(this + 1) = 0;
    goto LABEL_19;
  }

  v8 = _simple_getenv(a2[21], "DYLD_PRINT_SEGMENTS") != 0;
  v9 = *(a3 + 18);
  *(this + 1) = v8;
  if ((v9 & 1) == 0)
  {
LABEL_19:
    *this = 0;
    goto LABEL_20;
  }

  v10 = _simple_getenv(a2[21], "DYLD_PRINT_LIBRARIES") != 0;
  v11 = *(a3 + 18);
  *this = v10;
  if ((v11 & 1) == 0)
  {
LABEL_20:
    *(this + 2) = 0;
    goto LABEL_21;
  }

  v12 = _simple_getenv(a2[21], "DYLD_PRINT_BINDINGS") != 0;
  v13 = *(a3 + 18);
  *(this + 2) = v12;
  if ((v13 & 1) == 0)
  {
LABEL_21:
    *(this + 3) = 0;
    goto LABEL_22;
  }

  v14 = _simple_getenv(a2[21], "DYLD_PRINT_INITIALIZERS") != 0;
  v15 = *(a3 + 18);
  *(this + 3) = v14;
  if ((v15 & 1) == 0)
  {
LABEL_22:
    *(this + 4) = 0;
    goto LABEL_23;
  }

  v16 = _simple_getenv(a2[21], "DYLD_PRINT_APIS") != 0;
  v17 = *(a3 + 18);
  *(this + 4) = v16;
  if ((v17 & 1) == 0)
  {
LABEL_23:
    *(this + 5) = 0;
    goto LABEL_24;
  }

  v18 = _simple_getenv(a2[21], "DYLD_PRINT_NOTIFICATIONS") != 0;
  v19 = *(a3 + 18);
  *(this + 5) = v18;
  if ((v19 & 1) == 0)
  {
LABEL_24:
    *(this + 6) = 0;
    goto LABEL_25;
  }

  v20 = _simple_getenv(a2[21], "DYLD_PRINT_INTERPOSING") != 0;
  v21 = *(a3 + 18);
  *(this + 6) = v20;
  if ((v21 & 1) == 0)
  {
LABEL_25:
    *(this + 7) = 0;
    goto LABEL_26;
  }

  v22 = _simple_getenv(a2[21], "DYLD_PRINT_LOADERS") != 0;
  v23 = *(a3 + 18);
  *(this + 7) = v22;
  if ((v23 & 1) == 0)
  {
LABEL_26:
    *(this + 8) = 0;
    goto LABEL_27;
  }

  v24 = _simple_getenv(a2[21], "DYLD_PRINT_SEARCHING") != 0;
  v25 = *(a3 + 18);
  *(this + 8) = v24;
  if ((v25 & 1) == 0)
  {
LABEL_27:
    *(this + 9) = 0;
    goto LABEL_28;
  }

  v26 = _simple_getenv(a2[21], "DYLD_PRINT_FUNCTION_VARIANTS") != 0;
  v27 = *(a3 + 18);
  *(this + 9) = v26;
  if ((v27 & 1) == 0)
  {
LABEL_28:
    *(this + 10) = 0;
    goto LABEL_29;
  }

  v28 = _simple_getenv(a2[21], "DYLD_PRINT_ENV") != 0;
  v29 = *(a3 + 18);
  *(this + 10) = v28;
  if ((v29 & 1) == 0)
  {
LABEL_29:
    *(this + 10) = 0;
    *(this + 4) = 2;
    goto LABEL_30;
  }

  v30 = _simple_getenv(a2[21], "DYLD_PRINT_TO_STDERR") != 0;
  v31 = *(a3 + 18);
  *(this + 20) = v30;
  *(this + 4) = 2;
  *(this + 21) = 0;
  if ((v31 & 1) != 0 && *(a3 + 20) == 1)
  {
    v32 = _simple_getenv(a2[21], "DYLD_PRINT_TO_FILE");
    if (v32)
    {
      v33 = dyld4::SyscallDelegate::openLogFile(a4, v32);
      if (v33 != -1)
      {
        *(this + 21) = 1;
        *(this + 4) = v33;
      }
    }
  }

LABEL_30:
  if (*(a3 + 18) == 1)
  {
    v34 = _simple_getenv(a2[21], "DYLD_PRINT_LINKS_WITH");
    if (v34)
    {
      v35 = v34;
      v36 = _platform_strlen(v34);
      *(this + 3) = v35;
      *(this + 4) = v36;
    }
  }

  *(this + 11) = 0;
  if (*(a3 + 1) == 1)
  {
    *(this + 11) = 1;
    v37 = _simple_getenv(a2[21], "DYLD_PRINT_BAD_ROOTS");
    if (v37)
    {
      v38 = v37;
      v39 = _platform_strlen(v37);
      if (v39 == 3)
      {
        if (*v38 == 27745 && v38[2] == 108)
        {
          v40 = 1;
          goto LABEL_45;
        }
      }

      else if (v39 == 4 && *v38 == 1701736302)
      {
        v40 = 0;
LABEL_45:
        *(this + 11) = v40;
        *(this + 12) = v40;
      }
    }
  }

  return this;
}

dyld4::ProcessConfig::DyldCache *dyld4::ProcessConfig::DyldCache::DyldCache(dyld4::ProcessConfig::DyldCache *this, dyld4::ProcessConfig::Process *a2, const dyld4::ProcessConfig::Security *a3, const dyld4::ProcessConfig::Logging *a4, dyld4::SyscallDelegate *a5, lsl::Allocator *a6, const dyld4::ProcessConfig *a7)
{
  v44 = a6;
  bzero(this + 8, 0x10uLL);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 38) = 0;
  v13 = *(a2 + 18);
  dyld4::CacheFinder::CacheFinder(v64, a2, a4, a5);
  if (*(a2 + 50) == 1)
  {
    if (*(a3 + 1) == 1)
    {
      v14 = ((*(a2 + 18) | v13) >> 2) & 1;
      LOBYTE(v13) = ((*(a2 + 18) & 4) == 0) & *(a2 + 18);
    }

    else
    {
      LOBYTE(v14) = 0;
      LOBYTE(v13) = 1;
    }
  }

  else
  {
    v14 = (v13 >> 2) & 1;
  }

  v15 = _simple_getenv(*(a2 + 21), "DYLD_SHARED_REGION");
  v50 = v64[0];
  v16 = *(a2 + 53) >= 2 && !dyld4::SyscallDelegate::sandboxBlockedPageInLinking(a5);
  v17 = 0;
  v60 = v16;
  if (*(a3 + 20) == 1 && v15)
  {
    v17 = _platform_strcmp(v15, "private") == 0;
  }

  v51 = v17;
  v53 = *(a4 + 1);
  v52 = dyld4::PrebuiltLoader::hiddenFromFlat(a5);
  v54 = 0;
  v55 = *(a2 + 206);
  v56 = _simple_getenv(*(a2 + 22), "dyld_hw_tpro_pagers") != 0;
  v57 = v13 & 1;
  v58 = v14;
  v59 = *(a2 + 204);
  v61 = *(a2 + 12);
  v62 = *(a2 + 26);
  v63 = a7;
  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 208) = 1;
  *(this + 84) = 0;
  *(this + 170) = v17;
  *(this + 40) = 0u;
  v18 = (this + 40);
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *(this + 20) = 0;
  v45 = 0;
  v46 = 0;
  v48 = 0;
  v47 = 0;
  bzero(&v49, 0x10uLL);
  DyldCache = dyld4::SyscallDelegate::getDyldCache(a5, &v50, &v45, v19, v20, v21, v22, v23);
  v32 = v45;
  if (v45)
  {
    *(this + 171) = *(a3 + 26);
    *(this + 8) = v49;
    *this = v32;
    v33 = HIBYTE(v48);
    *(this + 168) = HIBYTE(v48);
    *(this + 169) = *(v32 + 221) & 1;
    *(this + 172) = (*(a3 + 1) | v33 | *(a3 + 25)) & 1;
    *(this + 3) = v46;
    dyld4::ProcessConfig::DyldCache::setPlatformOSVersion(this, a2);
    *(this + 4) = DyldSharedCache::unslidLoadAddress(*this);
    *(this + 6) = DyldSharedCache::objcHeaderInfoRO(*this);
    *(this + 7) = DyldSharedCache::objcHeaderInfoRW(*this);
    *(this + 8) = DyldSharedCache::objcSelectorHashTable(*this);
    *(this + 9) = DyldSharedCache::objcClassHashTable(*this);
    *(this + 10) = DyldSharedCache::objcProtocolHashTable(*this);
    *(this + 13) = DyldSharedCache::swiftOpt(*this);
    *(this + 41) = DyldSharedCache::imagesCount(*this);
    *(this + 14) = 0;
    v34 = *(this + 6);
    v35 = *this;
    if (v34)
    {
      *(this + 14) = v34 - v35 + *(this + 4);
    }

    *(this + 15) = 0;
    v36 = DyldSharedCache::patchTable(v35);
    v37 = *(*this + 152);
    *(this + 16) = v36;
    *(this + 17) = v37;
    v38 = lsl::MemoryManager::memoryManager(v36);
    lsl::MemoryManager::setDyldCacheAddr(v38, *this);
    if ((v55 & 1) == 0)
    {
      v39 = *this;
      *__s = _NSConcreteStackBlock;
      v67 = 0x40000000;
      v68 = ___ZNK5dyld413ProcessConfig9DyldCache21makeDataConstWritableERKNS0_7LoggingERKNS_15SyscallDelegateEb_block_invoke;
      v69 = &__block_descriptor_tmp_82;
      v70 = this;
      v71 = a4;
      v73 = 19;
      v72 = a5;
      DyldSharedCache::forEachCache(v39, __s);
    }

    if ((*(this + 168) & 1) == 0)
    {
      *(this + 208) = 0;
    }

    if (FileIdTuple::operator BOOL(&v49))
    {
      DyldCache = FileIdTuple::getPath(&v49, __s);
      if (DyldCache)
      {
        DyldCache = lsl::Allocator::strdup(v44, __s);
        *v18 = DyldCache;
      }

      goto LABEL_27;
    }

    v43 = "dyld shared region dynamic config data was not set\n";
LABEL_34:
    dyld4::halt(v43, 0);
  }

  if (v48 == 1)
  {
    DyldCache = dyld4::console("dyld cache '%s' not loaded: %s\n", v25, *v18, v47, v44);
  }

  if (v15)
  {
    DyldCache = _platform_strcmp(v15, "private");
    if (!DyldCache && (v48 & 1) == 0)
    {
      v43 = "dyld private shared cache could not be found\n";
      goto LABEL_34;
    }
  }

LABEL_27:
  v40 = v65;
  if (v65 != -1)
  {
    DyldCache = dyld4::SyscallDelegate::getpath(a5, v65, __s);
    if (DyldCache)
    {
      v41 = lsl::Allocator::strdup(v44, __s);
      DyldCache = _platform_strlen(v41);
      *(this + 11) = v41;
      *(this + 12) = DyldCache;
    }
  }

  if (*(a2 + 50) == 1)
  {
    dyld4::ProcessConfig::DyldCache::setupDyldCommPage(DyldCache, a2, a3, a5);
  }

  dyld4::CacheFinder::~CacheFinder(v64, v40, v26, v27, v28, v29, v30, v31);
  return this;
}

dyld4::CacheFinder *dyld4::CacheFinder::CacheFinder(dyld4::CacheFinder *this, const char ***a2, const dyld4::ProcessConfig::Logging *a3, dyld4::SyscallDelegate *a4)
{
  *this = -1;
  *(this + 1) = a4;
  *(this + 4) = 5;
  v7 = (this + 16);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(this + 20) = v8;
  *(this + 36) = v8;
  *(this + 52) = 0;
  *(this + 14) = -1;
  v9 = _simple_getenv(a2[21], "DYLD_SHARED_CACHE_DIR");
  if (v9)
  {
    v10 = dyld4::SyscallDelegate::open(*(this + 1), v9, 0, 0);
    *this = v10;
    if (v10 == -1)
    {
      return this;
    }
  }

  if ((a2[18] & 8) != 0)
  {
    goto LABEL_27;
  }

  v11 = *(a2 + 38);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v11;
  v26 = *(a2 + 10);
  v27 = a2[22];
  LODWORD(v28) = -1;
  HIDWORD(v28) = mach_o::Platform::value((a2 + 12));
  v12 = ignite(&v25, v7);
  if (v12)
  {
    v14 = v12;
    if (*(a2 + 50) == 1)
    {
      dyld4::console("ignite() returned %d\n", v13, v12, v25, v26, v27, v28);
      if (v14 <= 84)
      {
        if (v14 == 8)
        {
          v16 = "ignition disabled\n";
        }

        else
        {
          if (v14 != 19)
          {
            goto LABEL_23;
          }

          v16 = "no shared cache available\n";
        }

        goto LABEL_22;
      }

      switch(v14)
      {
        case 'Y':
          v16 = "ignition partially disabled\n";
LABEL_22:
          dyld4::console(v16, v15, v24);
          break;
        case 'U':
          v23 = "no shared cache in cryptex";
LABEL_47:
          dyld4::halt(v23, 0);
        case 'Z':
          v23 = "ignition failed";
          goto LABEL_47;
      }
    }

    else if (v12 == 85 && *(a3 + 1) == 1)
    {
      dyld4::console("ignite() returned %d\n", v13, 85);
    }
  }

  else
  {
    v17 = *(this + 6);
    if ((v17 & 0x80000000) == 0)
    {
      if (*this == -1)
      {
        *this = v17;
        *(this + 52) = 1;
      }

      else
      {
        dyld4::SyscallDelegate::close(*(this + 1), v17);
      }
    }

    v18 = *(this + 8);
    if ((v18 & 0x80000000) == 0)
    {
      *(this + 14) = v18;
    }
  }

LABEL_23:
  if (*(this + 52) != 1)
  {
LABEL_27:
    if (*this != -1)
    {
      return this;
    }

    goto LABEL_35;
  }

  if (a2[12] != &mach_o::PlatformInfo_driverKit::singleton)
  {
    if ((a2[18] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_32;
  }

  v19 = 16;
  if (!*(a2 + 26))
  {
    v19 = 32;
  }

  if ((v19 & a2[18]) != 0)
  {
LABEL_32:
    if (*this != -1)
    {
      dyld4::SyscallDelegate::close(*(this + 1), *this);
    }

    *this = -1;
    *(this + 52) = 0;
LABEL_35:
    if (*(a2 + 26))
    {
      v20 = 0;
    }

    else
    {
      v20 = a2[12] == &mach_o::PlatformInfo_driverKit::singleton;
    }

    if (v20)
    {
      v21 = "/System/DriverKit/System/Library/dyld/";
    }

    else
    {
      v21 = "/System/Library/Caches/com.apple.dyld/";
    }

    *this = dyld4::SyscallDelegate::open(*(this + 1), v21, 0, 0);
  }

  return this;
}

uint64_t ignite(unsigned int *a1, _DWORD *a2)
{
  v192 = 0xFFFFFFFFLL;
  memset(v191, 0, sizeof(v191));
  LODWORD(v191[0]) = 1;
  v190 = 0;
  bzero(v189, 0x800uLL);
  v188 = 2048;
  v194 = 1;
  v193 = 2;
  if (getpid() == 1)
  {
    v11 = _open_as(0x20000, &v194 + 1);
    if (v11)
    {
      v160 = v11;
      v161 = boot_get();
      ignition_halt((*v161)[1], v160, (*v161)[2], "failed to reserve stdin descriptor: %s: %d", v162, v163, v164, v165, "/dev/null");
    }

    v12 = _open_as(131073, &v194);
    if (v12)
    {
      v166 = v12;
      v167 = boot_get();
      ignition_halt((*v167)[1], v166, (*v167)[2], "failed to reserve stdout descriptor: %s: %d", v168, v169, v170, v171, "/dev/null");
    }

    v13 = _open_as(131074, &v193);
    if (v13)
    {
      v172 = v13;
      v173 = boot_get();
      ignition_halt((*v173)[1], v172, (*v173)[2], "failed to reserve stderr descriptor: %s: %d", v174, v175, v176, v177, "/dev/null");
    }
  }

  if (*a1)
  {
    if (*a1 != 1)
    {
      dyld_halt("unsupported parameter struct version: 0x%x", v4, v5, v6, v7, v8, v9, v10, *a1);
    }

    HIDWORD(v192) = a1[9];
  }

  v14 = a1[1];
  LODWORD(v191[0]) = 1;
  DWORD1(v191[0]) = v14;
  *(v191 + 8) = *(a1 + 2);
  *(&v191[1] + 1) = *(a1 + 3);
  LODWORD(v192) = a1[8];
  log_init(v191);
  dlog(-1, "%s\n", v15, v16, v17, v18, v19, v20, __darwin_version_string[0]);
  v21 = sysctlbyname("kern.bootargs", v189, &v188, 0, 0);
  v22 = __error();
  if (v21 < 0)
  {
    if (!*v22)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v23, v24, v25, v26, v27, v28, v29, "ret");
    }
  }

  else
  {
    *v22 = 0;
  }

  v37 = *__error();
  if (v37 > 11)
  {
    if (v37 != 22)
    {
      if (v37 != 12)
      {
        goto LABEL_32;
      }

      v38 = getpid();
      v187 = *__error();
      dlog(-1, "libignition: %d: boot-arg buff not large enough: actual = %lu, expected >= %lu: %d\n", v39, v40, v41, v42, v43, v44, v38);
    }

    goto LABEL_18;
  }

  if ((v37 - 1) < 2)
  {
LABEL_18:
    v189[0] = 0;
    goto LABEL_19;
  }

  if (v37)
  {
LABEL_32:
    v178 = boot_get();
    v179 = (*v178)[1];
    v180 = (*v178)[2];
    v181 = *__error();
    v182 = __error();
    ignition_halt(v179, v181, v180, "failed to read boot args: %d", v183, v184, v185, v186, *v182);
  }

LABEL_19:
  v45 = arguments_init(v189, v30, v31, v32, v33, v34, v35, v36);
  v53 = arguments(v45, v46, v47, v48, v49, v50, v51, v52);
  arguments_dump(v53);
  v54 = configuration_init(v191, v189);
  v62 = configuration(v54, v55, v56, v57, v58, v59, v60, v61);
  configuration_dump(v62);
  if (getpid() == 1)
  {
    v63 = getpid();
    dlog(-1, "libignition: %d: %s   :\n", v64, v65, v66, v67, v68, v69, v63);
    v70 = getpid();
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v71, v72, v73, v74, v75, v76, v70);
    v77 = getpid();
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v78, v79, v80, v81, v82, v83, v77);
    v84 = getpid();
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v85, v86, v87, v88, v89, v90, v84);
    v91 = getpid();
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v92, v93, v94, v95, v96, v97, v91);
  }

  v98 = boot_select_spec(v62);
  boot_dump_spec(v98);
  v106 = boot_init(v98, v99, v100, v101, v102, v103, v104, v105);
  v190 = v106;
  v119 = boot_boot(v106, v107, v108, v109, v110, v111, v112, v113);
  if (v119)
  {
    v120 = getpid();
    dlog(-1, "libignition: %d: ignition boot failed: %d\n", v121, v122, v123, v124, v125, v126, v120);
  }

  else
  {
    boot_set_payload(v106, &_boot_root_preboot, a2, v114, v115, v116, v117, v118);
    boot_set_payload(v106, &_boot_root_dylib_cache, a2, v127, v128, v129, v130, v131);
    boot_set_payload(v106, &_boot_root_xart, a2, v132, v133, v134, v135, v136);
    boot_set_payload(v106, &_boot_root_cryptex_app, a2, v137, v138, v139, v140, v141);
    boot_set_payload(v106, &_boot_root_cryptex_os, a2, v142, v143, v144, v145, v146);
    boot_set_payload(v106, &_boot_root_preboot_groupdir, a2, v147, v148, v149, v150, v151);
  }

  if (getpid() == 1)
  {
    close(0);
    close(1);
    close(2);
  }

  boot_destroy(&v190, v152, v153, v154, v155, v156, v157, v158);
  log_destroy();
  return v119;
}

uint64_t log_init(uint64_t a1)
{
  __g = a1;
  dword_AC074 = *(a1 + 32);
  result = _open_console();
  dword_AC070 = result;
  qword_AC078 = *(a1 + 16);
  return result;
}

int *__error(void)
{
  v0 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (v0)
  {
    return v0;
  }

  else
  {
    return &errno;
  }
}

size_t arguments_init(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (_args)
  {
    dyld_halt("arguments already initialized", a2, a3, a4, a5, a6, a7, a8, *&v12[0]);
  }

  if (dyld_parse_boot_arg_int(a1, "ignition_level", &v13))
  {
    __args = v13;
  }

  if (dyld_parse_boot_arg_cstr(a1, "ignition_force_dylib_root", v12, 0x40uLL))
  {
    if (_platform_strcmp(v12, "none"))
    {
      if (_platform_strcmp(v12, "cryptex"))
      {
        if (_platform_strcmp(v12, "livefs"))
        {
          if (_platform_strcmp(v12, "rootfs"))
          {
            goto LABEL_14;
          }

          v9 = 3;
        }

        else
        {
          v9 = 2;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    qword_A8138 = v9;
  }

LABEL_14:
  if (!dyld_parse_boot_arg_cstr(a1, "ignition_live_app_graft", v12, 0x40uLL))
  {
    goto LABEL_22;
  }

  if (_platform_strcmp(v12, "skip"))
  {
    if (_platform_strcmp(v12, "optional"))
    {
      if (_platform_strcmp(v12, "require"))
      {
        goto LABEL_22;
      }

      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  qword_A8140 = v10;
LABEL_22:
  result = dyld_parse_boot_arg_cstr(a1, "ignition_halt_after", v12, 0x40uLL);
  if (result)
  {
    result = strlcpy(byte_A8150, v12, 0x40uLL);
    qword_A8148 = byte_A8150;
  }

  _args = &__args;
  return result;
}

BOOL configuration_init(uint64_t a1, char *a2)
{
  v63 = 0;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  *__source = 0u;
  bzero(v58, 0x400uLL);
  ignition_test_BRA(1);
  __config = a1;
  v4 = &loc_1B78;
  *(&__config + v4) = getpid() == 1;
  _derive_proc_name(a1, byte_AC288);
  qword_AC280 = byte_AC288;
  if (*(&__config + v4) != 1)
  {
    goto LABEL_60;
  }

  v91 = 0;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  *__s1 = 0u;
  v74 = 256;
  v73 = -1431699456;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 132;
  v5 = sysctlbyname("security.mac.img4.ignition_blob", &v65, &v64, 0, 0);
  v6 = __error();
  if (v5 < 0)
  {
    if (!*v6)
    {
      goto LABEL_75;
    }
  }

  else
  {
    *v6 = 0;
  }

  v14 = *__error();
  if (v14 == 2)
  {
    v15 = getpid();
    dlog(-1, "libignition: %d: ignition blob not available\n", v16, v17, v18, v19, v20, v21, v15);
  }

  else
  {
    if (v14)
    {
      v50 = *__error();
      v57 = *__error();
      v55 = "failed to query ignition blob: %d";
      goto LABEL_83;
    }

    xmmword_ADD78 = v71;
    unk_ADD88 = v72;
    dword_ADD98 = v73;
    xmmword_ADD38 = v67;
    unk_ADD48 = v68;
    xmmword_ADD58 = v69;
    unk_ADD68 = v70;
    xmmword_ADD18 = v65;
    unk_ADD28 = v66;
    qword_ADDA0 = &xmmword_ADD18;
    qword_ADD08 = &unk_ADD2A;
  }

  __s1[0] = 0;
  v74 = 256;
  v22 = sysctlbyname("hw.osenvironment", __s1, &v74, 0, 0);
  v23 = __error();
  if (v22 < 0)
  {
    if (!*v23)
    {
      goto LABEL_75;
    }
  }

  else
  {
    *v23 = 0;
  }

  v24 = *__error();
  if ((v24 - 1) >= 2 && v24 != 22)
  {
    if (v24)
    {
      v50 = *__error();
      v57 = *__error();
      v55 = "failed to read os environment: %d";
      goto LABEL_83;
    }

    if (_platform_strcmp(__s1, &unk_91735))
    {
      strlcpy(algn_AC3C0, __s1, 0x40uLL);
      qword_AC388 = algn_AC3C0;
      v25 = &qword_AC390;
      if (_platform_strcmp(__s1, "kcgen"))
      {
        if (_platform_strcmp(__s1, "fvunlock"))
        {
          if (_platform_strcmp(__s1, "recoveryos"))
          {
            if (_platform_strcmp(__s1, "diagnostics"))
            {
              if (_platform_strcmp(__s1, "migration"))
              {
                if (_platform_strcmp(__s1, "eacs"))
                {
                  goto LABEL_28;
                }

                v25 = &qword_AC3B8;
              }

              else
              {
                v25 = &qword_AC3B0;
              }
            }

            else
            {
              v25 = &qword_AC3A8;
            }
          }

          else
          {
            v25 = &qword_AC3A0;
          }
        }

        else
        {
          v25 = &qword_AC398;
        }
      }

      *v25 = qword_AC388;
    }
  }

LABEL_28:
  __s1[0] = 0;
  v74 = 256;
  v26 = sysctlbyname("hw.target", __s1, &v74, 0, 0);
  v27 = __error();
  if (v26 < 0)
  {
    if (!*v27)
    {
      goto LABEL_75;
    }
  }

  else
  {
    *v27 = 0;
  }

  v32 = *__error();
  if (v32 != 2)
  {
    if (v32 == 1)
    {
      v33 = "unknownap";
      goto LABEL_39;
    }

    if (v32)
    {
      v50 = *__error();
      v57 = *__error();
      v55 = "failed to query hardware target: %d";
      goto LABEL_83;
    }

    if (v74 >= 0x40)
    {
      ignition_halt(&dword_4 + 2, 0, 0x40uLL, "hardware target string too long: actual = %lu, expected < %lu", v28, v29, v30, v31, v74);
    }

    if (v74 >= 2)
    {
      dyld_tolower_cstr(__s1, byte_ADDB0, v74);
      goto LABEL_40;
    }
  }

  v33 = "x86legacyap";
LABEL_39:
  strlcpy(byte_ADDB0, v33, 0x40uLL);
LABEL_40:
  qword_ADDA8 = byte_ADDB0;
  v34 = fsctl("/", 0x40084A6AuLL, &v91, 0);
  v35 = __error();
  if (v34 < 0)
  {
    if (*v35)
    {
      goto LABEL_43;
    }

LABEL_75:
    dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v7, v8, v9, v10, v11, v12, v13, "ret");
  }

  *v35 = 0;
LABEL_43:
  v36 = *__error();
  if (v36 != 25 && v36 != 1)
  {
    if (!v36)
    {
      qword_AD478 = v91;
      goto LABEL_47;
    }

    v50 = *__error();
    v57 = *__error();
    v55 = "failed to query root device status: %d";
LABEL_83:
    ignition_halt(&dword_4 + 2, v50, 0x40uLL, v55, v51, v52, v53, v54, v57);
  }

LABEL_47:
  if (statfs64("/", &stru_AD488))
  {
    v50 = *__error();
    v57 = *__error();
    v55 = "statfs failed: %d";
    goto LABEL_83;
  }

  qword_ADD00 = &stru_AD488;
  v37 = *(a1 + 16);
  if (v37)
  {
    if (_simple_getenv(v37, "XPC_USERSPACE_REBOOTED"))
    {
      byte_ADDF2 = 1;
    }

    v38 = _simple_getenv(*(a1 + 16), "XPC_USERSPACE_PIVOTEDROOT");
    if (v38)
    {
      strlcpy(byte_AD070, v38, 0x400uLL);
      qword_AD068 = byte_AD070;
    }
  }

  v39 = *(a1 + 4);
  if (v39 >= 1)
  {
    v40 = *(a1 + 8);
    do
    {
      v41 = *v40;
      if (**v40 == 45)
      {
        v41 = *v40 + 1;
      }

      if (*v41 == 115)
      {
        byte_ADDF1 = 1;
      }

      ++v40;
      --v39;
    }

    while (v39);
  }

LABEL_60:
  if (dyld_parse_boot_arg_cstr(a2, "rd", __source, 0x40uLL))
  {
    strlcpy(byte_AC410, __source, 0x40uLL);
    qword_AC400 = byte_AC410;
    if (!_platform_strcmp(__source, "md0"))
    {
      qword_AC408 = byte_AC410;
    }
  }

  if (dyld_parse_boot_arg_cstr(a2, "arp0", v58, 0x400uLL))
  {
    strlcpy(byte_AC458, v58, 0x400uLL);
    qword_AC450 = byte_AC458;
  }

  if (dyld_parse_boot_arg_cstr(a2, "rp", v58, 0x400uLL))
  {
    strlcpy(byte_AC860, v58, 0x400uLL);
    qword_AC858 = byte_AC860;
  }

  if (dyld_parse_boot_arg_cstr(a2, "rp0", v58, 0x400uLL))
  {
    strlcpy(byte_ACC68, v58, 0x400uLL);
    qword_ACC60 = byte_ACC68;
  }

  if (dyld_parse_boot_arg_int(a2, "rootdmg-ramdisk", &v63))
  {
    if (HIDWORD(v63))
    {
      dyld_halt("value not representable as uint32_t", v42, v43, v44, v45, v46, v47, v48, v56);
    }

    dword_AD470 = v63;
  }

  result = dyld_parse_boot_arg_int(a2, "restore", 0);
  if (result)
  {
    byte_AD474 = 1;
  }

  dword_AD480 = MEMORY[0xFFFFF4084];
  _config = &__config;
  return result;
}

int *closefd_optional(int *result, const char *a2)
{
  if ((*result & 0x80000000) == 0)
  {
    v3 = result;
    result = close(*result);
    if (result)
    {
      v4 = boot_get();
      v5 = (*v4)[1];
      v6 = (*v4)[2];
      v7 = *__error();
      v12 = *__error();
      ignition_halt(v5, v7, v6, "failed to close %s [optional]: fd = %d: %d", v8, v9, v10, v11, a2);
    }

    *v3 = -1;
  }

  return result;
}

uint64_t stage_fire(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = arguments(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*v10 >= *(a1 + 40))
  {
    v20 = getpid();
    v52 = *a1;
    v55 = *(a1 + 8);
    dlog(-1, "libignition: %d: %12s: %s\n", v21, v22, v23, v24, v25, v26, v20);
    v27 = (*(a1 + 48))(a1, v10, a2);
    if (v27)
    {
      v11 = v27;
      v28 = getpid();
      v53 = *a1;
      dlog(-1, "libignition: %d: %12s: ignition failed: %d\n", v29, v30, v31, v32, v33, v34, v28);
    }

    else
    {
      if ((*(a1 + 32) & 0x8000000000000000) == 0 && !(*(a1 + 56))(a1, a2))
      {
        dyld_halt("stage did not set payload: %s", v44, v45, v46, v47, v48, v49, v50, *a1);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = ~(*(a1 + 32) >> 63) & 0x59;
    v12 = getpid();
    v13 = *v10;
    v54 = *v10;
    v56 = *(a1 + 40);
    v51 = *a1;
    dlog(-1, "libignition: %d: %12s: ignition level insufficient: actual = %llu, required >= %llu\n", v14, v15, v16, v17, v18, v19, v12);
  }

  v35 = v10[3];
  if (v35 && !_platform_strcmp(v35, *a1))
  {
    dyld_halt("halting after %s ignition stage; if you did not intend to do this, clear the ignition_halt_after boot-arg", v36, v37, v38, v39, v40, v41, v42, *a1);
  }

  return v11;
}

uint64_t stage_next(void *a1)
{
  v1 = a1[1];
  if (v1 >= *(*a1 + 64))
  {
    return 0;
  }

  v2 = *(*a1 + 8 * v1);
  a1[1] = v1 + 1;
  return v2;
}

int dup(int a1)
{
  result = mac_syscall(SYS_dup, a1);
  if (v1)
  {
    return cerror_nocancel(result);
  }

  return result;
}

uint64_t _graft_select_fire(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v6 = a3[4];
  dylib_root = boot_get_dylib_root(a3);
  bzero(&v78, 0x400uLL);
  memset(&v77, 0, sizeof(v77));
  if (dylib_root < 0)
  {
    v31 = getpid();
    v70 = *a1;
    dlog(-1, "libignition: %d: %12s: cryptex graft point not present; not using fallback\n", v32, v33, v34, v35, v36, v37, v31);
    return 0;
  }

  ignition_get_shared_cache_directory(&v78, v8, v9, v10, v11, v12, v13, v14);
  if (v79[0] == 47)
  {
    dyld_halt("bogus shared cache path: %s", v15, v16, v17, v18, v19, v20, v21, &v78);
  }

  v22 = fstatat64(dylib_root, v79, &v77, 0);
  v23 = __error();
  if (v22 < 0)
  {
    if (!*v23)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v24, v25, v26, v27, v28, v29, v30, "ret");
    }
  }

  else
  {
    *v23 = 0;
  }

  v38 = *__error();
  if (v38 != 2)
  {
    if (v38)
    {
      v46 = getpid();
      v72 = *a1;
      v75 = *__error();
      v69 = v46;
      v45 = "libignition: %d: %12s: failed to stat dylib cache directory: %d\n";
      goto LABEL_13;
    }

    if ((v77.st_mode & 0xF000) == 0x4000)
    {
      v69 = getpid();
      v71 = *a1;
      v45 = "libignition: %d: %12s: dylib cache directory present; not overriding\n";
LABEL_13:
      v6 = -1;
      dlog(-1, v45, v39, v40, v41, v42, v43, v44, v69);
    }
  }

  v47 = *(a2 + 8);
  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v6 = a3[12];
      if (v6 < 0)
      {
        return 0;
      }

      goto LABEL_25;
    }

    if (v47 == 3)
    {
      v6 = a3[4];
      if (v6 < 0)
      {
        return 0;
      }

      goto LABEL_25;
    }
  }

  else if (v47)
  {
    if (v47 == 1)
    {
      v6 = a3[8];
      if (v6 < 0)
      {
        return 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v48 = getpid();
    v73 = *a1;
    dlog(-1, "libignition: %d: %12s: not forcing root fallback\n", v49, v50, v51, v52, v53, v54, v48);
  }

  if ((v6 & 0x80000000) == 0)
  {
LABEL_25:
    v76 = -1;
    v55 = getpid();
    v74 = *a1;
    dlog(-1, "libignition: %d: %12s: overriding os cryptex root: %s\n", v56, v57, v58, v59, v60, v61, v55);
    v76 = dupfd(v6, "fallback root");
    boot_set_dylib_root(a3, &v76, v62, v63, v64, v65, v66, v67);
  }

  return 0;
}

char *ignition_get_shared_cache_directory(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*configuration(a1, a2, a3, a4, a5, a6, a7, a8) + 36) == 10)
  {
    v9 = "/System/DriverKit/System/Library/dyld/";
  }

  else
  {
    v9 = "/System/Library/Caches/com.apple.dyld/";
  }

  strlcpy(a1, v9, 0x400uLL);
  return a1;
}

int fcntl(int a1, int a2, ...)
{
  va_start(va, a2);
  v4 = va_arg(va, void *);
  switch(a2)
  {
    case '*':
    case '+':
    case ',':
    case '1':
    case '2':
    case '4':
    case '8':
    case '9':
    case ';':
    case '=':
    case 'A':
    case 'B':
    case 'G':
    case 'H':
    case 'K':
    case 'N':
    case 'S':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case 'a':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'l':
    case 'o':
    case 'q':
      goto LABEL_2;
    case '-':
    case '.':
    case '/':
    case '0':
    case '3':
    case '5':
    case '6':
    case '7':
    case ':':
    case '<':
    case '>':
    case '?':
    case '@':
    case 'C':
    case 'D':
    case 'E':
    case 'F':
    case 'I':
    case 'J':
    case 'L':
    case 'M':
    case 'O':
    case 'P':
    case 'Q':
    case 'R':
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case '_':
    case 'j':
    case 'k':
    case 'm':
    case 'n':
    case 'p':
      goto LABEL_5;
    default:
      if ((a2 - 7) < 4)
      {
LABEL_2:
        v2 = v4;
      }

      else
      {
LABEL_5:
        v2 = v4;
      }

      return __fcntl(a1, a2, v2);
  }
}

uint64_t realpathfd(int a1, uint64_t a2, const char *a3)
{
  if (fcntl(a1, 50, a2) == -1)
  {
    v6 = boot_get();
    v7 = (*v6)[1];
    v8 = (*v6)[2];
    v9 = *__error();
    v14 = *__error();
    ignition_halt(v7, v9, v8, "failed to realpath %s: %d: %d", v10, v11, v12, v13, a3);
  }

  return a2;
}

int __fcntl(int a1, int a2, void *a3)
{
  result = mac_syscall(SYS_fcntl, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

const char *_dylib_cache_payload_check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 32) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x8000000000000000) != 0)
  {
    dyld_halt("invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return &v8[a2];
}

uint64_t ___ZNK6mach_o6Header33findFairPlayEncryptionLoadCommandEv_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 44 || *a2 == 33)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t amfi_check_dyld_policy_self(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = a1;
  v11[1] = &v10;
  result = __sandbox_ms("AMFI", &stru_20.maxprot + 2, v11, a4, a5, a6, a7, a8);
  if (result)
  {
    result = *__error();
  }

  *a2 = v10;
  return result;
}

unint64_t dyld4::SyscallDelegate::amfiFlags(dyld4::SyscallDelegate *this, int a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = 0;
  v8 = 2;
  if (!a2)
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = v8 | 4;
  }

  else
  {
    v9 = v8;
  }

  if (amfi_check_dyld_policy_self(v9, &v11, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

BOOL dyld_parse_boot_arg_cstr(char *a1, const char *a2, char *a3, size_t a4)
{
  while (1)
  {
    _platform_memset(v28, 170, 0x400uLL);
    v8 = _platform_strchr(a1, 32);
    if (v8)
    {
      v16 = v8;
      v17 = v8 - a1;
      if (v17 < 0)
      {
        dyld_halt("value not representable as size_t", v9, v10, v11, v12, v13, v14, v15, v28[0]);
      }

      v18 = v16 + 1;
    }

    else
    {
      v17 = _platform_strlen(a1);
      v18 = 0;
    }

    v19 = (v17 + 1) < 0x400;
    if ((v17 + 1) > 0x3FF)
    {
      break;
    }

    strlcpy(v28, a1, v17 + 1);
    v20 = _platform_strchr(v28, 61);
    if (v20)
    {
      *v20 = 0;
      v22 = v20[1];
      v21 = v20 + 1;
      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = LOBYTE(v28[0]) == 45;
    }

    if (v24)
    {
      v25 = v28 + 1;
    }

    else
    {
      v25 = v28;
    }

    if (!_platform_strcmp(v25, a2))
    {
      if (a3)
      {
        if (v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = &unk_91735;
        }

        strlcpy(a3, v26, a4);
      }

      return v19;
    }

    a1 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v19;
}

BOOL dyld_parse_boot_arg_int(char *a1, const char *a2, unint64_t *a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18 = v4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v5 = dyld_parse_boot_arg_cstr(a1, a2, &v18, 0x18uLL);
  if (!v5)
  {
    return v5;
  }

  v6 = strstr(&v18, "0x") == &v18;
  if (!a3)
  {
    return v5;
  }

  v7 = (&v18 | (2 * v6));
  v8 = _platform_strlen(v7);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v21 = 0;
  while (1)
  {
    strcpy(__dst, "00");
    if (v8 == 1)
    {
      v14 = v7[v11];
      __dst[0] = v7[v11];
      __dst[1] = 48;
      v10 += 4;
      v12 = 1;
    }

    else
    {
      if (!v8)
      {
        v12 = 0;
        v13 = 0;
        v10 += 8;
        goto LABEL_14;
      }

      strlcpy(__dst, &v7[v11], 3uLL);
      v14 = __dst[0];
      v12 = 2;
    }

    v13 = v14 - 48;
    if ((v14 - 48) >= 0xA)
    {
      if ((v14 - 97) > 5)
      {
        if ((v14 - 65) > 5)
        {
          goto LABEL_21;
        }

        v13 = v14 - 55;
      }

      else
      {
        v13 = v14 - 87;
      }
    }

LABEL_14:
    v15 = __dst[1] - 48;
    if (v15 >= 0xA)
    {
      break;
    }

LABEL_19:
    *(&v21 + v9) = v15 | (16 * v13);
    v8 -= v12;
    v11 += v12;
    if (++v9 == 8)
    {
      v16 = bswap64(v21) >> v10;
      goto LABEL_22;
    }
  }

  if (__dst[1] - 97 <= 5)
  {
    LOBYTE(v15) = __dst[1] - 87;
    goto LABEL_19;
  }

  if (__dst[1] - 65 <= 5)
  {
    LOBYTE(v15) = __dst[1] - 55;
    goto LABEL_19;
  }

LABEL_21:
  v16 = 0;
LABEL_22:
  *a3 = v16;
  return v5;
}

char *__cdecl _platform_strchr(char *__s, int __c)
{
  v2 = vdupq_n_s8(__c);
  v3 = __s & 0xF;
  v4 = __s & 0xFFFFFFFFFFFFFFF0;
  v5 = *&algn_1F850[-v3];
  for (i = vorrq_s8(vbicq_s8(*v4, vceqq_s8(*v4, v2)), v5); ; i = vbicq_s8(v7, v5))
  {
    v5.i8[0] = vminvq_u8(i);
    if (!v5.i32[0])
    {
      break;
    }

    v7 = *(v4 + 16);
    v4 += 16;
    v5 = vceqq_s8(v7, v2);
  }

  v8 = vorrq_s8(vcgtq_u8(i, veorq_s8(v5, v5)), xmmword_1F840);
  v8.i8[0] = vminvq_u8(v8);
  result = (v4 + v8.u32[0]);
  if (__c != *result)
  {
    return 0;
  }

  return result;
}

ssize_t arguments_dump(uint64_t *a1)
{
  result = getpid();
  if (result <= 1)
  {
    v3 = getpid();
    dlog(-1, "libignition: %d: %s   :\n", v4, v5, v6, v7, v8, v9, v3);
    v10 = getpid();
    v32 = *a1;
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v11, v12, v13, v14, v15, v16, v10);
    v17 = getpid();
    v33 = a1[1];
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v18, v19, v20, v21, v22, v23, v17);
    v24 = getpid();
    if (a1[3])
    {
      v31 = a1[3];
    }

    return dlog(-1, "libignition: %d:   %s : %s\n", v25, v26, v27, v28, v29, v30, v24);
  }

  return result;
}

uint64_t arguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _args;
  if (!_args)
  {
    dyld_halt("arguments not initialized", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return result;
}

char *_derive_proc_name(uint64_t a1, char *a2)
{
  v4 = _simple_getenv(*(a1 + 24), "executable_path");
  if (v4)
  {
    v5 = v4;
LABEL_5:
    v6 = strrchr(v5, 47);
    goto LABEL_6;
  }

  if (*(a1 + 4))
  {
    v5 = **(a1 + 8);
    goto LABEL_5;
  }

  v6 = 0;
  v5 = "unknown proc";
LABEL_6:
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v5;
  }

  strlcpy(a2, v7, 0xFFuLL);
  return a2;
}

ssize_t configuration_dump(uint64_t a1)
{
  result = getpid();
  if (result <= 1)
  {
    v3 = *(a1 + 6800);
    if (v3)
    {
      v4 = *v3;
    }

    v5 = *(a1 + 6952);
    if (v5)
    {
      v6 = *(v5 + 46);
      if (_platform_strcmp((v5 + 50), &unk_91735))
      {
        v7 = *(a1 + 6952) + 50;
      }
    }

    v8 = getpid();
    dlog(-1, "libignition: %d: %s   :\n", v9, v10, v11, v12, v13, v14, v8);
    v15 = getpid();
    if (*(a1 + 8))
    {
      v22 = *(a1 + 8);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v16, v17, v18, v19, v20, v21, v15);
    v23 = getpid();
    if (*(a1 + 272))
    {
      v30 = *(a1 + 272);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v24, v25, v26, v27, v28, v29, v23);
    v31 = getpid();
    if (*(a1 + 392))
    {
      v38 = *(a1 + 392);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v32, v33, v34, v35, v36, v37, v31);
    v39 = getpid();
    if (*(a1 + 472))
    {
      v46 = *(a1 + 472);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v40, v41, v42, v43, v44, v45, v39);
    v47 = getpid();
    if (*(a1 + 1504))
    {
      v54 = *(a1 + 1504);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v48, v49, v50, v51, v52, v53, v47);
    v55 = getpid();
    if (*(a1 + 3568))
    {
      v62 = *(a1 + 3568);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v56, v57, v58, v59, v60, v61, v55);
    v63 = getpid();
    v148 = *(a1 + 4600);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v64, v65, v66, v67, v68, v69, v63);
    v70 = getpid();
    v149 = *(a1 + 4604);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v71, v72, v73, v74, v75, v76, v70);
    v77 = getpid();
    v150 = *(a1 + 4608);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v78, v79, v80, v81, v82, v83, v77);
    v84 = getpid();
    v151 = *(a1 + 4616);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v85, v86, v87, v88, v89, v90, v84);
    v91 = getpid();
    v152 = *(*(a1 + 6792) + 64);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v92, v93, v94, v95, v96, v97, v91);
    v98 = getpid();
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v99, v100, v101, v102, v103, v104, v98);
    v105 = getpid();
    if (*(a1 + 6960))
    {
      v112 = *(a1 + 6960);
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v106, v107, v108, v109, v110, v111, v105);
    v113 = getpid();
    v153 = *(a1 + 7032);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v114, v115, v116, v117, v118, v119, v113);
    v120 = getpid();
    v154 = *(a1 + 7033);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v121, v122, v123, v124, v125, v126, v120);
    v127 = getpid();
    v155 = *(a1 + 7034);
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v128, v129, v130, v131, v132, v133, v127);
    v134 = getpid();
    dlog(-1, "libignition: %d:   %s : 0x%llx\n", v135, v136, v137, v138, v139, v140, v134);
    v141 = getpid();
    return dlog(-1, "libignition: %d:   %s : %s\n", v142, v143, v144, v145, v146, v147, v141);
  }

  return result;
}

ssize_t boot_dump_spec(uint64_t *a1)
{
  result = getpid();
  if (result == 1)
  {
    v3 = getpid();
    dlog(-1, "libignition: %d: %s   :\n", v4, v5, v6, v7, v8, v9, v3);
    v10 = getpid();
    if (*a1)
    {
      v17 = *a1;
    }

    dlog(-1, "libignition: %d:   %s : %s\n", v11, v12, v13, v14, v15, v16, v10);
    v18 = getpid();
    v25 = a1[11];
    return dlog(-1, "libignition: %d:   %s : 0x%llx\n", v19, v20, v21, v22, v23, v24, v18);
  }

  return result;
}

char **boot_select_spec(uint64_t a1)
{
  v2 = a1 + 4096;
  ignition_test_BRA(2);
  if (*(v2 + 2936) != 1)
  {
    return &_boot_spec_post_initproc;
  }

  if (*(a1 + 400))
  {
    return &_boot_spec_remote_ramdisk;
  }

  if (*(a1 + 4600) || *(a1 + 472) || *(a1 + 1504) || *(a1 + 2536))
  {
    return &_boot_spec_remote_nerd;
  }

  if (*(v2 + 508))
  {
    return &_boot_spec_remote_ramdisk;
  }

  if (*(a1 + 280) || *(a1 + 288) || *(a1 + 296))
  {
    return &_boot_spec_remote_dmg;
  }

  result = &_boot_spec_local;
  if (!*(a1 + 304))
  {
    if (*(a1 + 312))
    {
      return &_boot_spec_remote_dmg;
    }

    result = &_boot_spec_remote_dmg;
    if (!*(a1 + 320) && (*(a1 + 4608) & 1) == 0)
    {
      return &_boot_spec_local;
    }
  }

  return result;
}

uint64_t configuration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _config;
  if (!_config)
  {
    dyld_halt("configuration not initialized", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return result;
}

uint64_t boot_boot(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  arguments(a1, a2, a3, a4, a5, a6, a7, a8);
  v30[0] = *a1 + 24;
  v30[1] = 0;
  v31 = open("/", 537919488);
  if (v31 < 0)
  {
    v22 = *(__boot[0] + &dword_8);
    v23 = *(__boot[0] + &dword_8 + 8);
    v24 = *__error();
    v29 = *__error();
    ignition_halt(v22, v24, v23, "failed to open root directory: %s: %d", v25, v26, v27, v28, "/");
  }

  boot_set_root(a1, &_boot_root_fs, &v31, v9, v10, v11, v12, v13);
  result = stage_next(v30);
  if (!result)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  while (1)
  {
    a1[1] = result;
    result = stage_fire(result, a1, v16, v17, v18, v19, v20, v21);
    if (result)
    {
      break;
    }

    result = stage_next(v30);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 0x6B)
  {
LABEL_10:
    dyld_halt("error not set to valid posix code: %d", v15, v16, v17, v18, v19, v20, v21, result);
  }

  return result;
}

char ***boot_init(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  for (i = 0; i != 9; ++i)
  {
    v9 = *(__roots[i] + 2);
    if (v9 < 0)
    {
      dyld_halt("invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, *(__roots[i] + 2));
    }

    *(__boot + v9) = -1;
  }

  __boot[0] = a1;
  return __boot;
}

int open(const char *a1, int a2, ...)
{
  va_start(va, a2);
  v4 = va_arg(va, void);
  if ((a2 & 0x200) != 0)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return __open(a1, a2, v2);
}

int __open(const char *a1, int a2, void *a3)
{
  result = mac_syscall(SYS_open, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t boot_set_root(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if (v8 < 0)
  {
    dyld_halt("invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, *(a2 + 16));
  }

  closefd_optional((a1 + v8), "old root");
  result = xferfd(a3);
  *(a1 + v8) = result;
  return result;
}

uint64_t xferfd(_DWORD *a1)
{
  v1 = *a1;
  *a1 = -1;
  return v1;
}

uint64_t _hello_fire(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = configuration(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = getpid();
  v11 = *a1;
  v19 = *(v9 + 8);
  getpid();
  dlog(-1, "libignition: %d: %12s: hello from %s.%d\n", v12, v13, v14, v15, v16, v17, v10);
  return 0;
}

const char *_graft_fetch_fire(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = -1;
  v5 = openat(*(a3 + 16), "System/Cryptexes/OS", 0x100000);
  v51 = v5;
  v6 = __error();
  if (v5 < 0)
  {
    if (!*v6)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v7, v8, v9, v10, v11, v12, v13, "cnl");
    }
  }

  else
  {
    *v6 = 0;
  }

  v14 = *__error();
  if (v14 == 2)
  {
    v20 = getpid();
    v48 = *a1;
    dlog(-1, "libignition: %d: %12s: no os cryptex available; continuing\n", v21, v22, v23, v24, v25, v26, v20);
    goto LABEL_8;
  }

  if (!v14)
  {
    v50 = dupfd(v5, "os cryptex canonical directory");
LABEL_8:
    boot_set_root(a3, &_boot_root_canonical_os, &v51, v15, v16, v17, v18, v19);
    boot_set_root(a3, &_boot_root_cryptex_os, &v50, v27, v28, v29, v30, v31);
    v32 = 0;
    goto LABEL_10;
  }

  v32 = *__error();
  v33 = getpid();
  v49 = *a1;
  dlog(-1, "libignition: %d: %12s: failed to open os cryptex canonical directory: %d\n", v34, v35, v36, v37, v38, v39, v33);
LABEL_10:
  closefd_optional(&v51, "os cryptex canonical directory");
  closefd_optional(&v50, "os cryptex canonical directory [dup]");
  if (v32 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v40, v41, v42, v43, v44, v45, v46, v32);
  }

  return v32;
}

int __openat(int a1, const char *a2, int a3)
{
  result = mac_syscall(SYS_openat, a1, a2, a3);
  if (v3)
  {
    return cerror(result);
  }

  return result;
}

uint64_t dupfd(int a1, const char *a2)
{
  result = dup(a1);
  if (a1 < 0)
  {
    v5 = boot_get();
    v6 = (*v5)[1];
    v7 = (*v5)[2];
    v8 = *__error();
    v13 = *__error();
    ignition_halt(v6, v8, v7, "failed to dup %s: fd = %d: %d", v9, v10, v11, v12, a2);
  }

  return result;
}

BOOL dyld4::SyscallDelegate::inLockdownMode(dyld4::SyscallDelegate *this)
{
  v4 = 0;
  v3 = 4;
  return !sysctlbyname("security.mac.lockdown_mode_state", &v4, &v3, 0, 0) && v4 == 1;
}

void mach_o::Header::forDyldEnv(mach_o::Error *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header10forDyldEnvEU13block_pointerFvPKcRbE_block_invoke;
  v2[3] = &unk_A5238;
  v2[4] = a2;
  mach_o::Header::forEachLoadCommand(a1, v2, &v3);
  mach_o::Error::~Error(&v3);
}

uint64_t _open_console()
{
  v0 = dword_AC070;
  if (dword_AC070 < 0 && getpid() == 1)
  {
    v0 = open("/dev/console", 131073);
    dword_AC070 = v0;
  }

  return v0;
}

ssize_t vdlog(int a1, char *a2, const char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!__g)
  {
    dyld_halt("logging not yet initialized", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  result = getpid();
  if (result <= 1)
  {
    if (a1 < 0)
    {
      a1 = dword_AC074;
      if (dword_AC074 < 0)
      {
        a1 = _open_console();
      }
    }

    return _simple_vdprintf(a1, a2, a3);
  }

  return result;
}

uint64_t _dylib_cache_fire(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  dylib_root = boot_get_dylib_root(a3);
  bzero(&v79, 0x400uLL);
  if (*a2 < 3 || dylib_root < 0)
  {
    dylib_root = *(a3 + 16);
    v14 = 19;
  }

  else
  {
    v14 = 85;
  }

  ignition_get_shared_cache_directory(&v79, v7, v8, v9, v10, v11, v12, v13);
  if (v80[0] == 47)
  {
    dyld_halt("bogus shared cache path: %s", v15, v16, v17, v18, v19, v20, v21, &v79);
  }

  v22 = getpid();
  v77 = *a2;
  v73 = *a1;
  dlog(-1, "libignition: %d: %12s: finding shared cache on %s: ignition level = %llu, search root fd = %d, subpath = %s\n", v23, v24, v25, v26, v27, v28, v22);
  v29 = openat(dylib_root, v80, 0x100000);
  v78 = v29;
  v30 = __error();
  if (v29 < 0)
  {
    if (!*v30)
    {
      dyld_halt("errno unset, wrong return value being checked?: %s = %lld", v31, v32, v33, v34, v35, v36, v37, "dycash");
    }
  }

  else
  {
    *v30 = 0;
  }

  v38 = *__error();
  if (v38 == 2)
  {
    v51 = getpid();
    v75 = *a1;
    dlog(-1, "libignition: %d: %12s: shared cache not found: root = %s, path = %s\n", v52, v53, v54, v55, v56, v57, v51);
    goto LABEL_13;
  }

  if (!v38)
  {
    realpathfd(v29, &v79, "dylib cache path");
    v39 = getpid();
    v74 = *a1;
    dlog(-1, "libignition: %d: %12s: opened shared cache directory: %s\n", v40, v41, v42, v43, v44, v45, v39);
    boot_set_root(a3, &_boot_root_dylib_cache, &v78, v46, v47, v48, v49, v50);
    v14 = 0;
LABEL_13:
    closefd_optional(&v78, "shared cache directory");
    return v14;
  }

  v14 = *__error();
  v58 = getpid();
  v76 = *a1;
  dlog(-1, "libignition: %d: %12s: failed to open shared cache: %s: %d\n", v59, v60, v61, v62, v63, v64, v58);
  closefd_optional(&v78, "shared cache directory");
  if (v14 >= 0x6B)
  {
    dyld_halt("error not set to valid posix code: %d", v65, v66, v67, v68, v69, v70, v71, v14);
  }

  return v14;
}

uint64_t boot_set_payload(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 >= 6u)
  {
    dyld_halt("unsupported payload version: actual = %u, expected <= %u", a2, a3, a4, a5, a6, a7, a8, *a3);
  }

  if (*a3 >= *(a2 + 8))
  {
    v8 = *(a2 + 16);
    if (v8 < 0)
    {
      dyld_halt("invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, *(a2 + 16));
    }

    v9 = *(a2 + 24);
    if (v9 < 0)
    {
      dyld_halt("invalid offset: %lld", a2, a3, a4, a5, a6, a7, a8, *(a2 + 24));
    }

    v11 = dupfd_optional(*(result + v8), "boot root");
    result = xferfd(&v11);
    *(a3 + v9) = result;
  }

  return result;
}

uint64_t dupfd_optional(int a1, const char *a2)
{
  if (a1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dupfd(a1, a2);
  }
}

__n128 dyld3::Array<_dyld_objc_notify_mapped_info>::push_back(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2 >= a1[1])
  {
    ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
  }

  v3 = *a1;
  a1[2] = v2 + 1;
  v4 = (v3 + 32 * v2);
  result = *a2;
  v6 = *(a2 + 16);
  *v4 = *a2;
  v4[1] = v6;
  return result;
}

void ___ZNK5dyld46Loader21makeSegmentsReadWriteERNS_12RuntimeStateE_block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 40) & 0x10) != 0)
  {
    v3 = a1[4];
    v4 = *(a2 + 24);
    v5 = (a1[5] + *(a2 + 16));
    dyld4::SyscallDelegate::mprotect(*(a1[6] + 8), v5, v4, 3);
    v6 = a1[6];
    if (*(*(v6 + 1) + 321) == 1)
    {
      v7 = &v5[v4];
      v8 = dyld4::Loader::path(v3, v6);
      v9 = strrchr(v8, 47);
      if (v9)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = v8;
      }

      dyld4::RuntimeState::log(v6, "mprotect 0x%012lX->0x%012lX to read-write (%s)\n", v5, v7, v10);
    }
  }
}

uint64_t dyld4::ReadOnlyCallback<void (*)(unsigned int,_dyld_objc_notify_mapped_info const*,void({block_pointer})(unsigned int))>::operator()<unsigned int &,_dyld_objc_notify_mapped_info const*&,void({block_pointer}&)(unsigned int)>(lsl::MemoryManager *a1, unsigned int *a2, void *a3, void *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  v16 = *(v15 + 6);
  if (v16 && lsl::ProtectedStack::onStackInCurrentFrame(v16, v8, v9, v10, v11, v12, v13, v14, v33[0]))
  {
    v23 = *(v15 + 6);
    v33[1] = 0x40000000;
    v33[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPK29_dyld_objc_notify_mapped_infoU13block_pointerFvjEEEclIJRjRS6_RS8_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke;
    v33[3] = &__block_descriptor_tmp_208;
    v33[4] = a1;
    v33[5] = a2;
    v33[6] = a3;
    v33[7] = a4;
    return lsl::ProtectedStack::withNestedRegularStack(v23, v33, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
  }

  if (*(v15 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    JUMPOUT(0x20C84);
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v29 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v29 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v30 = MEMORY[0xFFFFFC0D8];
          if (v30 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            (*a1)(*a2, *a3, *a4);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v31 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v31 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v32 = MEMORY[0xFFFFFC0D0];
                  if (v32 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
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
  v25 = *a1;
  v26 = *a2;
  v27 = *a3;
  v28 = *a4;

  return v25(v26, v27, v28);
}

const void *dyld4::APIs::_dyld_get_shared_cache_range(dyld4::APIs *this, unint64_t *a2)
{
  v4 = *(this + 1);
  if (*(v4 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_shared_cache_range(%p)", a2);
    v4 = *(this + 1);
  }

  *a2 = 0;
  v5 = *(v4 + 368);
  if (v5)
  {
    v6 = DyldSharedCache::mappedSize(*(v4 + 368));
    *a2 = v6;
    v4 = *(this + 1);
  }

  else
  {
    v6 = 0;
  }

  if (*(v4 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, " => %p,0x%lX\n", v5, v6);
  }

  return v5;
}

uint64_t dyld4::APIs::_dyld_for_objc_header_opt_ro(dyld4::APIs *this)
{
  v1 = *(this + 1);
  if (!*(v1 + 368))
  {
    if (*(v1 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_for_objc_header_opt_ro(): no dyld shared cache\n");
    }

    return 0;
  }

  v2 = *(v1 + 416);
  v3 = *(v1 + 324);
  if (!v2)
  {
    if (v3)
    {
      dyld4::RuntimeState::log(this, "_dyld_for_objc_header_opt_ro(): no objC RO header\n");
    }

    return 0;
  }

  if (v3)
  {
    dyld4::RuntimeState::log(this, "_dyld_for_objc_header_opt_ro() => 0x%llx\n", v2);
  }

  return v2;
}

uint64_t dyld4::APIs::_dyld_for_objc_header_opt_rw(dyld4::APIs *this)
{
  v1 = *(this + 1);
  if (!*(v1 + 368))
  {
    if (*(v1 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_for_objc_header_opt_rw(): no dyld shared cache\n");
    }

    return 0;
  }

  v2 = *(v1 + 424);
  v3 = *(v1 + 324);
  if (!v2)
  {
    if (v3)
    {
      dyld4::RuntimeState::log(this, "_dyld_for_objc_header_opt_rw(): no objC RW header\n");
    }

    return 0;
  }

  if (v3)
  {
    dyld4::RuntimeState::log(this, "_dyld_for_objc_header_opt_rw() => 0x%llx\n", v2);
  }

  return v2;
}

uint64_t dyld4::Loader::getSectionLocations(dyld4::Loader *this)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::getSectionLocations();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::getSectionLocations(this);
  }

  else
  {

    return dyld4::JustInTimeLoader::getSectionLocations(this);
  }
}

uint64_t dyld4::APIs::_dyld_lookup_section_info(void *a1, mach_o::Header *a2, dyld4::Loader *this, uint64_t a4)
{
  if (a4 > 20)
  {
    return 0;
  }

  v19[49] = v4;
  v19[50] = v5;
  if (this)
  {
    v11 = a1[1];
    v12 = *(v11 + 368);
    if (v12)
    {
      v13 = DyldSharedCache::mappedSize(*(v11 + 368)) + v12;
      v14 = v12 > this || v13 >= this;
      if (!v14 && !a1[119])
      {
        return (*(*a1 + 888))(a1, a2, 0, a4);
      }
    }

    if (*this != 1815378276 || *dyld4::Loader::getSectionLocations(this) != 1)
    {
      return (*(*a1 + 888))(a1, a2, 0, a4);
    }

    SectionLocations = dyld4::Loader::getSectionLocations(this);
    v16 = *(SectionLocations + 8 * a4 + 8);
    if (v16)
    {
      v17 = (SectionLocations + 8 * a4);
LABEL_17:
      v18 = v17[22];
      return a2 + v16;
    }
  }

  else
  {
    v19[0] = 1;
    dyld4::JustInTimeLoader::parseSectionLocations(a2, v19);
    v16 = v19[a4 + 1];
    if (v16)
    {
      v17 = &v19[a4];
      goto LABEL_17;
    }
  }

  return 0;
}

uint64_t dyld4::APIs::_dyld_register_for_bulk_image_loads(uint64_t **this, const void *a2)
{
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_register_for_bulk_image_loads(%p)\n", a2);
  }

  v4 = this[14];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 0x40000000;
  v33[2] = ___ZN5dyld44APIs35_dyld_register_for_bulk_image_loadsENS_16ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEE_block_invoke;
  v33[3] = &__block_descriptor_tmp_112;
  v33[4] = this;
  v33[5] = a2;
  dyld4::RuntimeLocks::withLoadersReadLock(v4, v33);
  ImageContaining = dyld4::APIs::findImageContaining(this, a2);
  v6 = this[14];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v28 = ___ZN5dyld44APIs35_dyld_register_for_bulk_image_loadsENS_16ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEE_block_invoke_2;
  v29 = &__block_descriptor_tmp_113;
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

uint64_t ___ZN5dyld44APIs35_dyld_register_for_bulk_image_loadsENS_16ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 6);
  v28 = v10;
  v11 = 8 * v10;
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8, v26);
  v12 = (v11 + 15) & 0xFFFFFFFF0;
  v13 = &v26 - v12;
  if (v11 >= 0x200)
  {
    v14 = 512;
  }

  else
  {
    v14 = 8 * v10;
  }

  bzero(&v26 - v12, v14);
  __chkstk_darwin(v15, v16, v17, v18, v19, v20, v21, v22, v26);
  v23 = &v26 - v12;
  bzero(v23, v14);
  if (v10)
  {
    v24 = 0;
    do
    {
      *&v13[v24] = dyld4::Loader::loadAddress(*(*(v9 + 5) + v24), v9);
      *&v23[v24] = dyld4::Loader::path(*(*(v9 + 5) + v24), v9);
      v24 += 8;
    }

    while (v11 != v24);
  }

  if (*(*(v9 + 1) + 325))
  {
    dyld4::RuntimeState::log(v9, "add bulk notifier %p called with %d images\n", *(a1 + 40), v10);
  }

  v26 = v23;
  v27 = v13;
  return dyld4::ReadOnlyCallback<void (*)(unsigned int,mach_header const**,char const**)>::operator()<unsigned int &,mach_header const**,char const**>((a1 + 40), &v28, &v27, &v26);
}

uint64_t dyld4::ReadOnlyCallback<void (*)(unsigned int,mach_header const**,char const**)>::operator()<unsigned int &,mach_header const**,char const**>(lsl::MemoryManager *a1, unsigned int *a2, void *a3, void *a4)
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
      v32[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEclIJRjS7_SA_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke;
      v32[3] = &__block_descriptor_tmp_238;
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

uint64_t dyld4::RuntimeState::addNotifyBulkLoadImage(void *a1, uint64_t a2, uint64_t a3)
{
  result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 102), a1[104] + 1);
  v7 = a1[103];
  v8 = a1[104];
  a1[104] = v8 + 1;
  *(v7 + 8 * v8) = a3;
  if (a2)
  {
    if ((*(a2 + 4) & 0x20) == 0)
    {
      result = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve((a1 + 132), a1[134] + 1);
      v9 = a1[133];
      v10 = a1[134];
      a1[134] = v10 + 1;
      *(v9 + 8 * v10) = a2;
    }
  }

  return result;
}

uint64_t ___ZNK5dyld46Loader25findAndRunAllInitializersERNS_12RuntimeStateE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = (v9 + a2);
  if (*(*(v10 + 1) + 323) == 1)
  {
    v12 = dyld4::Loader::path(*(a1 + 32), v10);
    dyld4::RuntimeState::log(v10, "running initializer %p in %s\n", v11, v12);
    v9 = *(a1 + 40);
  }

  v48 = v11;
  v39 = 520552448;
  v40 = v9;
  v41 = 0;
  v42 = v11;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  started = dyld3::ScopedTimer::startTimer(&v39, a2, a3, a4, a5, a6, a7, a8);
  v14 = *(a1 + 48);
  v22 = lsl::MemoryManager::memoryManager(started);
  result = *(v22 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v15, v16, v17, v18, v19, v20, v21, v37);
    if (result)
    {
      v30 = *(v22 + 6);
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 0x40000000;
      v49[2] = ___ZN3lsl13MemoryManager26withReadOnlyMemoryInternalIZZNK5dyld46Loader25findAndRunAllInitializersERNS2_12RuntimeStateEEUb_E3__0EEvT__block_invoke;
      v49[3] = &__block_descriptor_tmp_218;
      v49[4] = &v48;
      v49[5] = v14;
      lsl::ProtectedStack::withNestedRegularStack(v30, v49, v24, v25, v26, v27, v28, v29, v38);
      return dyld3::ScopedTimer::endTimer(&v39);
    }
  }

  if (*(v22 + 33) != 1)
  {
    lsl::MemoryManager::lockGuard(v22, v49);
    v31 = *(v22 + 3) - 1;
    *(v22 + 3) = v31;
    if (!v31)
    {
      lsl::MemoryManager::writeProtect(v22, 1);
    }

    lsl::Lock::unlock(v49[0]);
    (v11)(*(*(v14 + 1) + 168), *(*(v14 + 1) + 176), *(*(v14 + 1) + 184), *(*(v14 + 1) + 192), v14 + 120);
    lsl::MemoryManager::lockGuard(v22, v49);
    v32 = *(v22 + 3);
    if (!v32)
    {
      lsl::MemoryManager::writeProtect(v22, 0);
      v32 = *(v22 + 3);
    }

    *(v22 + 3) = v32 + 1;
    lsl::Lock::unlock(v49[0]);
    return dyld3::ScopedTimer::endTimer(&v39);
  }

  if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
  {
    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
    {
      (v11)(*(*(v14 + 1) + 168), *(*(v14 + 1) + 176), *(*(v14 + 1) + 184), *(*(v14 + 1) + 192), v14 + 120);
      return dyld3::ScopedTimer::endTimer(&v39);
    }

    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v33 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v33 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v34 = MEMORY[0xFFFFFC0D8];
          if (v34 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (v11)(*(*(v14 + 1) + 168), *(*(v14 + 1) + 176), *(*(v14 + 1) + 184), *(*(v14 + 1) + 192), v14 + 120);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v35 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v35 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v36 = MEMORY[0xFFFFFC0D0];
                  if (v36 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return dyld3::ScopedTimer::endTimer(&v39);
                  }
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

uint64_t ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke_4(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  if (*(a2 + 44) == 22)
  {
    v4 = result;
    if ((a2[5] & 2) != 0)
    {
      v7 = a2[3];
      v23 = a2[1];
      v26 = *a2;
      v20 = a2[2];
      result = Diagnostics::error(*(result + 56), "initializer offsets section %.*s/%.*s must be in read-only segment");
      goto LABEL_6;
    }

    v5 = a2[8];
    if ((v5 & 3) != 0)
    {
      v6 = a2[3];
      v22 = a2[1];
      v25 = *a2;
      v19 = a2[2];
      result = Diagnostics::error(*(result + 56), "initializer offsets section %.*s/%.*s has bad size");
LABEL_6:
      *a3 = 1;
      return result;
    }

    v8 = a2[7];
    if ((v8 & 3) != 0)
    {
      v9 = a2[3];
      v24 = a2[1];
      v27 = *a2;
      v21 = a2[2];
      result = Diagnostics::error(*(result + 56), "initializer offsets section %.*s/%.*s is not 4-byte aligned");
      goto LABEL_6;
    }

    if (v5 >= 1)
    {
      v10 = (*(result + 48) + v8);
      v11 = (v10 + v5);
      while (1)
      {
        v12 = *(*(v4 + 40) + 8);
        v13 = *(v12 + 80);
        if (!v13)
        {
          break;
        }

        v14 = *(v4 + 64) + *v10;
        v15 = *(v12 + 64);
        v16 = 24 * v13;
        v17 = (v15 + 8);
        while (*(v17 - 1) > v14 || *v17 <= v14)
        {
          v17 += 3;
          v16 -= 24;
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        result = (*(*(v4 + 32) + 16))();
        if (++v10 >= v11)
        {
          return result;
        }
      }

LABEL_20:
      v18 = *v10;
      result = Diagnostics::error(*(v4 + 56), "initializer 0x%08X is not an offset to an executable segment");
      goto LABEL_6;
    }
  }

  return result;
}

void dyld4::APIs::runAllInitializersForMain(dyld4::APIs *this)
{
  v2 = *(this + 1);
  if (*(v2 + 289) != 1 || *(v2 + 228) != 3)
  {
    dyld4::SyscallDelegate::disablePageInLinking(v2);
  }

  if ((*(this + 1113) & 1) == 0)
  {
    dyld4::Loader::beginInitializers(*(this + 12), this);
    dyld4::Loader::runInitializers(*(this + 12), this);
    *(this + 1113) = 1;
  }

  dyld4::ExternallyViewableState::setLibSystemInitialized(*(this + 77));
  dyld4::RuntimeState::notifyObjCInit(this, *(this + 12));
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(this + 5) + 8 * v4);
      if ((*(v6 + 2) & 0x2000) != 0)
      {
        v7 = *(*(this + 5) + 8 * v4);
        dyld4::Loader::beginInitializers(v6, this);
        dyld4::RuntimeState::notifyObjCInit(this, v7);
        dyld4::Loader::runInitializers(v7, this);
        v3 = *(this + 6);
      }

      v4 = v5;
      v8 = v3 == v5++;
    }

    while (!v8);
    if (v3)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = *(*(this + 5) + 8 * v9);
        dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(v11, this);
        v12 = dyld4::Loader::analyzer(v11, this);
        if (dyld3::MachOFile::isMainExecutable(v12))
        {
          break;
        }

        v9 = v10;
        v8 = *(this + 6) == v10++;
      }

      while (!v8);
    }
  }
}

void dyld4::Loader::makeSegmentsReadOnly(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  Address = dyld4::Loader::loadAddress(this, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld46Loader20makeSegmentsReadOnlyERNS_12RuntimeStateE_block_invoke;
  v5[3] = &__block_descriptor_tmp_126;
  v5[4] = this;
  v5[5] = dyld3::MachOLoaded::getSlide(Address);
  v5[6] = a2;
  mach_o::Header::forEachSegment(Address, v5);
}

void ___ZNK5dyld46Loader20makeSegmentsReadOnlyERNS_12RuntimeStateE_block_invoke(void *a1, uint64_t a2)
{
  if ((*(a2 + 40) & 0x10) != 0)
  {
    v3 = a1[4];
    v4 = *(a2 + 24);
    v5 = (a1[5] + *(a2 + 16));
    dyld4::SyscallDelegate::mprotect(*(a1[6] + 8), v5, v4, 1);
    v6 = a1[6];
    if (*(*(v6 + 1) + 321) == 1)
    {
      v7 = &v5[v4];
      v8 = dyld4::Loader::path(v3, v6);
      v9 = strrchr(v8, 47);
      if (v9)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = v8;
      }

      dyld4::RuntimeState::log(v6, "mprotect 0x%012lX->0x%012lX to read-only (%s)\n", v5, v7, v10);
    }
  }
}

void dyld4::PrebuiltLoaderSet::logDuplicateObjCClasses(dyld4::PrebuiltLoaderSet *this, dyld4::Loader **a2)
{
  if (this)
  {
    v3 = *(this + 11);
    if (v3)
    {
      if ((*(this + 52) & 1) != 0 && *(a2[1] + 323) == 1)
      {
        v5 = dyld4::Loader::loadAddress(a2[3], a2);
        v14[0] = 0;
        v14[1] = v14;
        v14[2] = 0x8802000000;
        v14[3] = __Block_byref_object_copy__75;
        v14[4] = __Block_byref_object_dispose__76;
        dyld3::Map<void const*,BOOL,dyld4::HashPointer,dyld4::EqualPointer>::Map(v15);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 0x40000000;
        v13[2] = ___ZNK5dyld417PrebuiltLoaderSet23logDuplicateObjCClassesERNS_12RuntimeStateE_block_invoke;
        v13[3] = &unk_A1F18;
        v13[4] = v14;
        dyld3::MachOAnalyzer::forEachObjCDuplicateClassToIgnore(v5, v13);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 0x40000000;
        v12[2] = ___ZNK5dyld417PrebuiltLoaderSet23logDuplicateObjCClassesERNS_12RuntimeStateE_block_invoke_2;
        v12[3] = &unk_A1F40;
        v12[4] = v14;
        v12[5] = a2;
        prebuilt_objc::forEachClass((this + v3), v12, v6, v7, v8, v9, v10, v11);
        _Block_object_dispose(v14, 8);
        v18 = 0;
        if (address)
        {
          vm_deallocate(mach_task_self_, address, size);
        }

        v15[4] = 0;
        if (v16)
        {
          vm_deallocate(mach_task_self_, v16, v17);
        }
      }
    }
  }
}

void dyld3::MachOAnalyzer::forEachInitializer(mach_o::Error *a1, Diagnostics *a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x6802000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20[3] = v20;
  v20[4] = 1;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke;
  v14[3] = &unk_A3D50;
  v14[4] = &v15;
  mach_o::Header::forEachSegment(a1, v14);
  if (v16[10])
  {
    Address = mach_o::Header::preferredLoadAddress(a1);
    Slide = dyld3::MachOLoaded::getSlide(a1);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke_2;
    v13[3] = &unk_A3D78;
    v13[4] = a4;
    v13[5] = &v15;
    v13[6] = Address;
    v13[7] = a2;
    dyld3::MachOFile::forEachLoadCommand(a1, a2, v13);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke_3;
    v11[3] = &unk_A3DA0;
    v12 = dyld3::MachOFile::pointerSize(a1);
    v11[6] = a1;
    v11[7] = a3;
    v11[4] = a4;
    v11[5] = &v15;
    v11[8] = a2;
    v11[9] = Address;
    dyld3::MachOFile::forEachInitializerPointerSection(a1, a2, v11);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke_4;
    v10[3] = &unk_A3DC8;
    v10[6] = Slide;
    v10[7] = a2;
    v10[8] = Address;
    v10[4] = a4;
    v10[5] = &v15;
    dyld3::MachOFile::forEachSection(a1, v10);
  }

  else
  {
    Diagnostics::error(a2, "no exeutable segments");
  }

  _Block_object_dispose(&v15, 8);
  v21 = 0;
  if (v22)
  {
    vm_deallocate(mach_task_self_, v22, v23);
  }
}

BOOL dyld3::MachOFile::isArch(dyld3::MachOFile *this, const char *a2)
{
  v5 = *(this + 4);
  v3 = mach_o::Architecture::name(&v5);
  return _platform_strcmp(a2, v3) == 0;
}

void dyld4::Loader::findAndRunAllInitializers(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  Diagnostics::Diagnostics(v8);
  Address = dyld4::Loader::loadAddress(this, a2);
  dyld3::MachOAnalyzer::makeVMAddrConverter(Address, 1, v7);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK5dyld46Loader25findAndRunAllInitializersERNS_12RuntimeStateE_block_invoke;
  v6[3] = &__block_descriptor_tmp_114;
  v6[4] = this;
  v6[5] = Address;
  v6[6] = a2;
  dyld3::MachOAnalyzer::forEachInitializer(Address, v8, v7, v6);
  if (!dyld3::MachOFile::isArch(Address, "arm64e"))
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = ___ZNK5dyld46Loader25findAndRunAllInitializersERNS_12RuntimeStateE_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_117;
    v5[4] = this;
    v5[5] = Address;
    v5[6] = a2;
    dyld3::MachOAnalyzer::forEachTerminator(Address, v8, v7, v5);
  }

  Diagnostics::~Diagnostics(v8);
}

void lsl::Allocator::aligned_alloc()
{
  __assert_rtn("aligned_alloc", "Allocator.cpp", 771, "std::popcount(alignment) == 1");
}

{
  __assert_rtn("aligned_alloc", "Allocator.cpp", 801, "result");
}

void dyld4::ExternallyViewableState::setDyldState(dyld4::ExternallyViewableState *this, char a2)
{
  *(this + 16) = a2;
  if (*(this + 1))
  {
    __chkstk_darwin();
    memset(v4, 0, sizeof(v4));
    v3 = __stackAllocatorInternal(v4);
    dyld4::ExternallyViewableState::generateAtlas(this, v3, v5);
    dyld4::ExternallyViewableState::activateAtlas(this, *this, v5);
    if (v5[1])
    {
      lsl::Vector<std::byte>::resize(v5, 0);
    }

    lsl::Allocator::~Allocator(v3);
  }
}

uint64_t dyld4::ExternallyViewableState::generateCompactInfo@<X0>(dyld4::ExternallyViewableState *this@<X0>, lsl::Allocator *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = dyld4::Atlas::ProcessSnapshot::ProcessSnapshot(v34, a2, (*(this + 1) + 592), 1);
  dyld4::Atlas::ProcessSnapshot::setInitialImageCount(v7, 2);
  dyld4::Atlas::ProcessSnapshot::setDyldState(v34, *(this + 16));
  v8 = mach_o::Platform::value((*(*(this + 1) + 8) + 112));
  dyld4::Atlas::ProcessSnapshot::setPlatform(v34, v8);
  v9 = *(this + 1);
  v10 = *(v9 + 8);
  v11 = *(v10 + 368);
  if (v11)
  {
    v12 = DyldSharedCache::dynamicRegion(*(v10 + 368));
    v13 = DyldSharedCache::DynamicRegion::cachePath(v12);
    dyld4::FileManager::fileRecordForPath((v9 + 592), a2, v13, v33);
    v14 = dyld4::Atlas::ProcessSnapshot::identityMapper(v34);
    dyld4::Atlas::SharedCache::SharedCache(&v23, a2, v33, v14, v11, 0);
    dyld4::Atlas::ProcessSnapshot::addSharedCache(v34, &v23);
    if (v30)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v30, v15);
    }

    if (v28 && v29 == 1)
    {
      dyld4::Atlas::Mapper::unmap(v26, v28, v27);
    }

    dyld4::FileRecord::~FileRecord(v24);
    dyld4::FileRecord::~FileRecord(v33);
  }

  v16 = mach_o::Header::isMachO(&dword_0, 0x1CuLL);
  if (dyld3::MachOFile::inDyldCache(v16))
  {
    dyld4::Atlas::ProcessSnapshot::addSharedCacheImage(v34, &dword_0);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
    if ((mach_o::Header::getUuid(v16, v32) & 1) == 0)
    {
      dyld4::halt("dyld must have a UUID");
    }

    v31 = *v32;
    dyld4::FileManager::fileRecordForPath((*(this + 1) + 592), a2, *(*(*(this + 1) + 8) + 128), v33);
    v17 = dyld4::Atlas::ProcessSnapshot::identityMapper(v34);
    dyld4::Atlas::Image::Image(&v23, a2, v33, v17, &dword_0, &v31);
    dyld4::Atlas::ProcessSnapshot::addImage(v34, &v23);
    v18 = v28;
    if (v28 && v29 == 1)
    {
      dyld4::Atlas::Mapper::unmap(v26, v28, v27);
    }

    if (v25)
    {
      lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v25, v18);
    }

    dyld4::FileRecord::~FileRecord(v24);
    dyld4::FileRecord::~FileRecord(v33);
  }

  dyld4::Atlas::ProcessSnapshot::addImages(v34, *(this + 1), *(this + 1) + 32);
  dyld4::Atlas::ProcessSnapshot::serialize(v34, a3);
  if (v39)
  {
    lsl::SharedPtr<dyld4::Atlas::Mapper>::Ctrl::decrementRefCount(v39, v19);
  }

  lsl::UniquePtr<dyld4::Atlas::SharedCache>::~UniquePtr(&v38, v19);
  if (v37)
  {
    lsl::Bitmap::~Bitmap(v37, v20);
    lsl::Allocator::freeObject(v37, v21);
  }

  result = v35;
  if (v35)
  {
    return lsl::BTree<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>,false>::NodeCore<31u,15u>::deallocate(v35, v36);
  }

  return result;
}

void dyld4::ExternallyViewableState::generateAtlas(const dyld4::RuntimeState **this@<X0>, lsl::Allocator *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  AAREncoder::AAREncoder(v42, a2);
  dyld4::ExternallyViewableState::generateCompactInfo(this, a2, &v39);
  if (v41)
  {
    AAREncoder::addFile(v42, "process.cinfo", 0xDuLL, v40, v41);
  }

  PropertyList::PropertyList(v36, a2);
  v5 = PropertyList::rootDictionary(v36);
  v6 = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(v5, "imgs", 4uLL);
  v7 = *(this[1] + 1);
  v8 = *(v7 + 368);
  v29 = v5;
  v9 = dyld4::ExternallyViewableState::gatherAtlasProcessInfo(this, *(v7 + 16), v8, v5);
  if (v8)
  {
    v10 = *(v8 + 18);
    v28 = v8 + *(v8 + 17);
  }

  v11 = this[1];
  v12 = *(v11 + 6);
  if (v12)
  {
    v13 = *(v11 + 5);
    v14 = 8 * v12;
    v15 = v13;
    do
    {
      v16 = *v15;
      Address = dyld4::Loader::loadAddress(*v15, this[1]);
      if (v9 && (*(v16 + 2) & 2) != 0)
      {
        PropertyList::Bitmap::setBit(v9, *(v16 + 3) & 0x7FFF);
      }

      else
      {
        v18 = dyld4::Loader::path(v16, this[1]);
        if (v18)
        {
          v19 = v18;
          v20 = PropertyList::Array::addObject<PropertyList::Dictionary>(v6);
          dyld4::ExternallyViewableState::atlasAddImage(v20, v20, Address, v19);
        }
      }

      ++v15;
      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  v21 = PropertyList::Array::addObject<PropertyList::Dictionary>(v6);
  dyld4::ExternallyViewableState::atlasAddImage(v21, v21, &dword_0, *(*(this[1] + 1) + 128));
  v22 = this[4];
  v23 = *(v22 + 81);
  if (v23)
  {
    v24 = *(v22 + 41);
    v25 = PropertyList::Dictionary::addObjectForKey<PropertyList::Array>(v29, "aots", 4uLL);
    v26 = &v24[7 * v23];
    do
    {
      v27 = PropertyList::Array::addObject<PropertyList::Dictionary>(v25);
      v31 = *v24;
      PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v27, "xadr", 4uLL, &v31);
      v31 = v24[1];
      PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v27, "aadr", 4uLL, &v31);
      PropertyList::Dictionary::addObjectForKey<PropertyList::Integer,unsigned long long>(v27, "asze", 4uLL, v24 + 2);
      v31 = (v24 + 3);
      v32 = &stru_20;
      PropertyList::Dictionary::addObjectForKey<PropertyList::Data,std::span<std::byte,18446744073709551615ul> &>(v27, "ikey", 4uLL, &v31);
      v24 += 7;
    }

    while (v24 != v26);
  }

  v31 = a2;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  PropertyList::encode(v36, &v31);
  AAREncoder::addFile(v42, "process.plist", 0xDuLL, v32, v33);
  AAREncoder::encode(v42, &v43);
  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  lsl::Vector<std::byte>::insert<std::byte*>(a3, 0, v44, &v44[v45]);
  if (v32)
  {
    lsl::Vector<std::byte>::resize(&v31, 0);
  }

  v36[1] = &off_A41D0;
  if (v38[1])
  {
    lsl::Vector<char const*>::resize(v38, 0);
  }

  if (v37[1])
  {
    lsl::Vector<char const*>::resize(v37, 0);
  }

  if (v40)
  {
    lsl::Vector<std::byte>::resize(&v39, 0);
  }

  AAREncoder::~AAREncoder(v42);
  if (v44)
  {
    lsl::Vector<std::byte>::resize(&v43, 0);
  }
}

uint64_t dyld4::Atlas::ProcessSnapshot::addImages(uint64_t result, dyld4::RuntimeState *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(a3 + 8);
    v7 = 8 * v3;
    v8 = v6;
    do
    {
      if (*(v5 + 64) && (*(*v8 + 2) & 2) != 0)
      {
        result = lsl::Bitmap::setBit(*(v5 + 56), *(*v8 + 3) & 0x7FFF);
      }

      else
      {
        v9 = *v5;
        v10 = lsl::Allocator::aligned_alloc(*v5, 8uLL, 0xC0uLL);
        v11 = dyld4::Atlas::Image::Image(v10, a2, v9, (v5 + 72), *v8);
        lsl::OrderedSet<lsl::UniquePtr<dyld4::Atlas::Image>,std::less<lsl::UniquePtr<dyld4::Atlas::Image>>>::insert(v5 + 16, &v11, v12);
        result = lsl::UniquePtr<dyld4::Atlas::Image>::~UniquePtr(&v11);
      }

      ++v8;
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t dyld4::Atlas::Image::Image(uint64_t a1, dyld4::RuntimeState *a2, lsl::Allocator::Pool **a3, atomic_uint **a4, dyld4::Loader *this)
{
  *(a1 + 8) = 0u;
  v9 = (a1 + 8);
  *a1 = a3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x1FFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 82) = 1;
  v10 = *a4;
  *(a1 + 88) = *a4;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  *(a1 + 121) = 0uLL;
  Address = dyld4::Loader::loadAddress(this, a2);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = Address;
  *(a1 + 183) = 0;
  dyld4::Loader::fileID(this, &v18);
  if (!v18.i64[0] || !v18.i64[1])
  {
LABEL_10:
    v15 = dyld4::Loader::path(this, a2);
    dyld4::FileManager::fileRecordForPath((a2 + 592), a3, v15, v19);
    dyld4::FileRecord::operator=(v9, v19);
    dyld4::FileRecord::~FileRecord(v19);
    return a1;
  }

  dyld4::Loader::fileID(this, v17);
  dyld4::FileManager::fileRecordForFileID((a2 + 592), v17[0].i64, v19);
  dyld4::FileRecord::operator=(v9, v19);
  dyld4::FileRecord::~FileRecord(v19);
  v12 = dyld4::FileRecord::volume(v9);
  if (!*v12)
  {
    v13 = 1;
    while (v13 != 16)
    {
      if (v12[v13++])
      {
        if ((v13 - 2) < 0xF)
        {
          return a1;
        }

        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  return a1;
}

double dyld4::Loader::fileID@<D0>(dyld4::Loader *this@<X0>, int8x16_t *a2@<X8>)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::fileID();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::fileID(this, a2);
  }

  else
  {

    *&result = dyld4::JustInTimeLoader::fileID(this, a2).n128_u64[0];
  }

  return result;
}

double dyld4::PrebuiltLoader::fileID@<D0>(dyld4::PrebuiltLoader *this@<X0>, int8x16_t *a2@<X8>)
{
  if (this && *(this + 21))
  {
    v3 = this + *(this + 21);
    v4 = *(v3 + 3);
    v5 = v3[52];
    v6 = vextq_s8(*(v3 + 8), *(v3 + 8), 8uLL);
    *a2 = v6;
    a2[1].i64[0] = v4;
    a2[1].i8[8] = v5;
  }

  else
  {
    v6.i64[0] = 0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *v6.i64;
}

uint64_t dyld4::RuntimeState::notifyObjCInit(uint64_t this, const dyld4::Loader *a2)
{
  if ((*(a2 + 2) & 8) != 0)
  {
    v2 = this;
    if (*(this + 704))
    {
      Address = dyld4::Loader::loadAddress(a2, this);
      v5 = dyld4::Loader::path(a2, v2);
      v38 = 520552480;
      v39 = Address;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      dyld3::ScopedTimer::startTimer(&v38, v6, v7, v8, v9, v10, v11, v12);
      if (*(v2[1] + 325) == 1)
      {
        dyld4::RuntimeState::log(v2, "objc-init-notifier called with mh=%p, path=%s\n", Address, v5);
      }

      v37[0] = Address;
      v37[1] = v5;
      v37[2] = a2;
      DoesObjCFixups = dyld4::Loader::dyldDoesObjCFixups(a2);
      v37[3] = DoesObjCFixups;
      v21 = lsl::MemoryManager::memoryManager(DoesObjCFixups);
      this = *(v21 + 6);
      if (this)
      {
        this = lsl::ProtectedStack::onStackInCurrentFrame(this, v14, v15, v16, v17, v18, v19, v20, v35);
        if (this)
        {
          v28 = *(v21 + 6);
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 0x40000000;
          v46[2] = ___ZN3lsl13MemoryManager26withReadOnlyMemoryInternalIZN5dyld412RuntimeState14notifyObjCInitEPKNS2_6LoaderEE3__0EEvT__block_invoke;
          v46[3] = &__block_descriptor_tmp_209;
          v46[4] = v2;
          v46[5] = v37;
          lsl::ProtectedStack::withNestedRegularStack(v28, v46, v22, v23, v24, v25, v26, v27, v36);
          return dyld3::ScopedTimer::endTimer(&v38);
        }
      }

      if (*(v21 + 33) != 1)
      {
        lsl::MemoryManager::lockGuard(v21, v46);
        v29 = *(v21 + 3) - 1;
        *(v21 + 3) = v29;
        if (!v29)
        {
          lsl::MemoryManager::writeProtect(v21, 1);
        }

        lsl::Lock::unlock(v46[0]);
        v46[0] = v37;
        dyld4::ReadOnlyCallback<void (*)(_dyld_objc_notify_mapped_info const*)>::operator()<_dyld_objc_notify_mapped_info*>((v2 + 88), v46);
        lsl::MemoryManager::lockGuard(v21, v46);
        v30 = *(v21 + 3);
        if (!v30)
        {
          lsl::MemoryManager::writeProtect(v21, 0);
          v30 = *(v21 + 3);
        }

        *(v21 + 3) = v30 + 1;
        lsl::Lock::unlock(v46[0]);
        return dyld3::ScopedTimer::endTimer(&v38);
      }

      if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
        {
          v46[0] = v37;
          dyld4::ReadOnlyCallback<void (*)(_dyld_objc_notify_mapped_info const*)>::operator()<_dyld_objc_notify_mapped_info*>((v2 + 88), v46);
          return dyld3::ScopedTimer::endTimer(&v38);
        }

        if (MEMORY[0xFFFFFC10C])
        {
          if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
          {
            v31 = MEMORY[0xFFFFFC10C];
            __dmb(0xAu);
            if ((v31 & 0xFE) == 2)
            {
              this = MEMORY[0xFFFFFC0D8];
              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
              __isb(0xFu);
              v32 = MEMORY[0xFFFFFC0D8];
              if (v32 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                v46[0] = v37;
                this = dyld4::ReadOnlyCallback<void (*)(_dyld_objc_notify_mapped_info const*)>::operator()<_dyld_objc_notify_mapped_info*>((v2 + 88), v46);
                if (MEMORY[0xFFFFFC10C])
                {
                  if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                  {
                    v33 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v33 & 0xFE) == 2)
                    {
                      this = MEMORY[0xFFFFFC0D0];
                      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                      __isb(0xFu);
                      v34 = MEMORY[0xFFFFFC0D0];
                      if (v34 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                      {
                        return dyld3::ScopedTimer::endTimer(&v38);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      __break(1u);
    }
  }

  return this;
}

unint64_t dyld4::Loader::beginInitializers(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::beginInitializers();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::beginInitializers(this, a2);
  }

  else
  {

    return dyld4::JustInTimeLoader::beginInitializers(this, a2);
  }
}

void dyld4::Loader::runInitializers(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::runInitializers();
  }

  if (*(this + 2))
  {

    dyld4::PrebuiltLoader::runInitializers(this, a2);
  }

  else
  {

    dyld4::JustInTimeLoader::runInitializers(this, a2);
  }
}

void dyld4::PrebuiltLoader::runInitializers(dyld4::PrebuiltLoader *this, dyld4::RuntimeState *a2)
{
  if (*(this + 22))
  {
    dyld4::Loader::findAndRunAllInitializers(this, a2);
  }

  v4 = *(this + 3);
  v5 = 960;
  if (v4 < 0)
  {
    v5 = 984;
  }

  *(*(a2 + v5) + (v4 & 0x7FFF)) = 9;
}

uint64_t dyld4::PrebuiltLoader::beginInitializers(dyld4::PrebuiltLoader *this, dyld4::RuntimeState *a2)
{
  v2 = *(this + 3);
  v3 = 960;
  if (v2 < 0)
  {
    v3 = 984;
  }

  v4 = *(a2 + v3);
  v5 = v2 & 0x7FFF;
  v6 = *(v4 + v5);
  if ((v6 - 8) < 2)
  {
    return 1;
  }

  if (v6 != 6)
  {
    dyld4::PrebuiltLoader::beginInitializers();
  }

  result = 0;
  *(v4 + v5) = 8;
  return result;
}

uint64_t dyld4::ReadOnlyCallback<void (*)(_dyld_objc_notify_mapped_info const*)>::operator()<_dyld_objc_notify_mapped_info*>(lsl::MemoryManager *a1, void *a2)
{
  v11 = lsl::MemoryManager::memoryManager(a1);
  result = v11[6];
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v26[0]);
    if (result)
    {
      v19 = v11[6];
      v26[1] = 0x40000000;
      v26[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK29_dyld_objc_notify_mapped_infoEEclIJPS4_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESI__block_invoke;
      v26[3] = &__block_descriptor_tmp_210;
      v26[4] = a1;
      v26[5] = a2;
      return lsl::ProtectedStack::withNestedRegularStack(v19, v26, v13, v14, v15, v16, v17, v18, _NSConcreteStackBlock);
    }
  }

  if (*(v11 + 33) != 1)
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
            result = (*a1)(*a2);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v24 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v24 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v25 = MEMORY[0xFFFFFC0D0];
                  if (v25 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
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
  v20 = *a1;
  v21 = *a2;

  return v20(v21);
}

uint64_t dyld3::MachOAnalyzer::makeVMAddrConverter@<X0>(dyld3::MachOAnalyzer *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = mach_o::Header::preferredLoadAddress(this);
  *(a3 + 8) = dyld3::MachOLoaded::getSlide(this);
  result = dyld3::MachOFile::hasChainedFixups(this);
  if (result)
  {
    result = dyld3::MachOAnalyzer::chainedPointerFormat(this);
  }

  *(a3 + 16) = result;
  *(a3 + 18) = a2;
  return result;
}

double ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 47) & 4) != 0)
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(a2 + 24) + *(a2 + 16);
    v5.n128_u64[0] = *(a2 + 16);
    v5.n128_u64[1] = v3;
    v6 = *(a2 + 36);
    *&result = dyld3::OverflowSafeArray<dyld3::SegmentRanges::SegmentRange,4294967295ull>::push_back((v2 + 64), &v5).n128_u64[0];
  }

  return result;
}

__n128 dyld3::OverflowSafeArray<dyld3::SegmentRanges::SegmentRange,4294967295ull>::push_back(vm_address_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = v4 + 1;
  if (v4 + 1 > a1[1])
  {
    dyld3::OverflowSafeArray<dyld3::SegmentRanges::SegmentRange,4294967295ull>::growTo(a1, v5);
    v4 = a1[2];
    v5 = v4 + 1;
  }

  v6 = *a1;
  a1[2] = v5;
  v7 = (v6 + 24 * v4);
  result = *a2;
  v7[1].n128_u64[0] = a2[1].n128_u64[0];
  *v7 = result;
  return result;
}

uint64_t ___ZNK5dyld313MachOAnalyzer18forEachInitializerER11DiagnosticsRKNS0_15VMAddrConverterEU13block_pointerFvjEPKv_block_invoke_2(uint64_t result, uint64_t a2)
{
  if (*a2 == 26)
  {
    v8 = *(*(result + 40) + 8);
    v9 = *(v8 + 80);
    if (v9)
    {
      v4 = *(a2 + 8);
      v10 = *(v8 + 64);
      v11 = 24 * v9;
      for (i = (v10 + 8); *(i - 1) > v4 || *i <= v4; i += 3)
      {
        v11 -= 24;
        if (!v11)
        {
          return Diagnostics::error(*(result + 56), "-init does not point within __TEXT segment");
        }
      }

      return (*(*(result + 32) + 16))(*(result + 32), (v4 - *(result + 48)));
    }

    return Diagnostics::error(*(result + 56), "-init does not point within __TEXT segment");
  }

  if (*a2 == 17)
  {
    v2 = *(*(result + 40) + 8);
    v3 = *(v2 + 80);
    if (v3)
    {
      v4 = *(a2 + 8);
      v5 = *(v2 + 64);
      v6 = 24 * v3;
      for (j = (v5 + 8); *(j - 1) > v4 || *j <= v4; j += 3)
      {
        v6 -= 24;
        if (!v6)
        {
          return Diagnostics::error(*(result + 56), "-init does not point within __TEXT segment");
        }
      }

      return (*(*(result + 32) + 16))(*(result + 32), (v4 - *(result + 48)));
    }

    return Diagnostics::error(*(result + 56), "-init does not point within __TEXT segment");
  }

  return result;
}

void dyld3::MachOFile::forEachInitializerPointerSection(mach_o::Header *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -17958193)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld39MachOFile32forEachInitializerPointerSectionER11DiagnosticsU13block_pointerFvjjRbE_block_invoke;
  v5[3] = &unk_A3718;
  v6 = v4;
  v5[4] = a3;
  v5[5] = a2;
  v5[6] = mach_o::Header::preferredLoadAddress(a1);
  mach_o::Header::forEachSection(a1, v5);
}

uint64_t dyld3::MachOFile::pointerSize(dyld3::MachOFile *this)
{
  if (*this == -17958193)
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

uint64_t ___ZNK5dyld39MachOFile32forEachInitializerPointerSectionER11DiagnosticsU13block_pointerFvjjRbE_block_invoke(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  if (*(a2 + 44) == 9)
  {
    v4 = *(result + 56);
    if (a2[8] % v4)
    {
      v5 = a2[3];
      v13 = a2[1];
      v15 = *a2;
      v11 = a2[2];
      result = Diagnostics::error(*(result + 40), "initializer section %.*s/%.*s has bad size");
LABEL_6:
      *a3 = 1;
      return result;
    }

    v6 = a2[7];
    if (v6 % v4)
    {
      v7 = a2[3];
      v14 = a2[1];
      v16 = *a2;
      v12 = a2[2];
      result = Diagnostics::error(*(result + 40), "initializer section %.*s/%.*s is not pointer aligned");
      goto LABEL_6;
    }

    v8 = (v6 - *(result + 48));
    v9 = *(*(result + 32) + 16);
    v10 = *(result + 32);

    return v9(v10, v8);
  }

  return result;
}

void dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  v11 = lsl::MemoryManager::memoryManager(this);
  *&v33 = a2;
  *(&v33 + 1) = this;
  v12 = *(v11 + 6);
  if (v12 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v12))
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
            v15 = *(v11 + 6);
            v31[1] = 0x40000000;
            v31[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZNK5dyld46Loader38runInitializersBottomUpPlusUpwardLinksERNS2_12RuntimeStateEE3__0EEvT__block_invoke;
            v31[3] = &__block_descriptor_tmp_219;
            v32 = v33;
            lsl::ProtectedStack::withNestedProtectedStack(v15, v31, v5, v6, v7, v8, v9, v10, _NSConcreteStackBlock);
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

LABEL_31:
    __break(1u);
    return;
  }

  if (*(v11 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(dyld4::RuntimeState &)const::$_0::operator()(&v33, v4, v5, v6, v7, v8, v9, v10);
      return;
    }

    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_31;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    v18 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v18 & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
    __isb(0xFu);
    v19 = MEMORY[0xFFFFFC0D0];
    if (v19 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_31;
    }

    dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(dyld4::RuntimeState &)const::$_0::operator()(&v33, 0xFFFFFC0D0, v5, v6, v7, v8, v9, v10);
    if (!MEMORY[0xFFFFFC10C])
    {
      goto LABEL_31;
    }

    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    v20 = MEMORY[0xFFFFFC10C];
    __dmb(0xAu);
    if ((v20 & 0xFE) != 2)
    {
      goto LABEL_31;
    }

    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
    __isb(0xFu);
    v21 = MEMORY[0xFFFFFC0D8];
    if (v21 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
    {
      goto LABEL_31;
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v11, v31);
    v22 = *(v11 + 3);
    if (!v22)
    {
      lsl::MemoryManager::writeProtect(v11, 0);
      v22 = *(v11 + 3);
    }

    *(v11 + 3) = v22 + 1;
    lsl::Lock::unlock(v31[0]);
    dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(dyld4::RuntimeState &)const::$_0::operator()(&v33, v23, v24, v25, v26, v27, v28, v29);
    lsl::MemoryManager::lockGuard(v11, v31);
    v30 = *(v11 + 3) - 1;
    *(v11 + 3) = v30;
    if (!v30)
    {
      lsl::MemoryManager::writeProtect(v11, 1);
    }

    lsl::Lock::unlock(v31[0]);
  }
}

void dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(dyld4::RuntimeState &)const::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*a1 + 80) + *(*a1 + 48);
  __chkstk_darwin(a1[1], *a1, a3, a4, a5, a6, a7, a8, v41[0]);
  v44[0] = v41 - v11;
  v44[1] = v10;
  v45 = 0;
  __chkstk_darwin(v12, v13, v14, v15, v16, v17, v18, v19, v41[0]);
  v43[0] = v41 - ((v20 + 23) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = v21;
  v43[2] = 0;
  dyld4::Loader::runInitializersBottomUp(v22, v23, v44, v43);
  v24 = *(*a1 + 80) + *(*a1 + 48);
  __chkstk_darwin(v25, v26, v27, v28, v29, v30, v31, v32, v41[0]);
  v41[0] = v41 - v34;
  v41[1] = v33;
  v42 = 0;
  if (v45)
  {
    v35 = v44[0];
    v36 = 8 * v45;
    do
    {
      v37 = *v35++;
      dyld4::Loader::runInitializersBottomUp(v37, *a1, v41, v43);
      v36 -= 8;
    }

    while (v36);
    if (v42)
    {
      v45 = 0;
      v38 = v41[0];
      v39 = 8 * v42;
      do
      {
        v40 = *v38++;
        dyld4::Loader::runInitializersBottomUp(v40, *a1, v44, v43);
        v39 -= 8;
      }

      while (v39);
    }
  }
}

void dyld4::Loader::runInitializersBottomUp(dyld4::Loader *a1, dyld4::RuntimeState *a2, uint64_t *a3, uint64_t *a4)
{
  isDelayInit = dyld4::Loader::isDelayInit(a1, a2);
  v9 = isDelayInit;
  if (!isDelayInit)
  {
    if (dyld4::Loader::beginInitializers(a1, a2))
    {
      return;
    }

    goto LABEL_8;
  }

  v10 = a4[2];
  if (!v10)
  {
LABEL_6:
    v21 = a1;
    dyld3::Array<dyld4::Loader const*>::push_back(a4, &v21);
LABEL_8:
    v13 = dyld4::Loader::dependentCount(a1);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v20 = 0;
        v16 = dyld4::Loader::dependent(a1, a2, i, &v20);
        v21 = v16;
        if (v16)
        {
          if ((v20 & 4) != 0)
          {
            v17 = a3[2];
            if (v17)
            {
              v18 = *a3;
              v19 = 8 * v17;
              while (*v18 != v16)
              {
                ++v18;
                v19 -= 8;
                if (!v19)
                {
                  goto LABEL_17;
                }
              }
            }

            else
            {
LABEL_17:
              dyld3::Array<dyld4::Loader const*>::push_back(a3, &v21);
            }
          }

          else
          {
            dyld4::Loader::runInitializersBottomUp();
          }
        }
      }
    }

    if ((v9 & 1) == 0)
    {
      dyld4::RuntimeState::notifyObjCInit(a2, a1);
      dyld4::Loader::runInitializers(a1, a2);
    }

    return;
  }

  v11 = *a4;
  v12 = 8 * v10;
  while (*v11 != a1)
  {
    ++v11;
    v12 -= 8;
    if (!v12)
    {
      goto LABEL_6;
    }
  }
}

uint64_t dyld4::Loader::isDelayInit(dyld4::Loader *this, dyld4::RuntimeState *a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::isDelayInit();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::isDelayInit(this, a2);
  }

  else
  {

    return dyld4::JustInTimeLoader::isDelayInit(this, a2);
  }
}

BOOL dyld4::PrebuiltLoader::isDelayInit(dyld4::PrebuiltLoader *this, dyld4::RuntimeState *a2)
{
  v2 = *(this + 3);
  v3 = 960;
  if (v2 < 0)
  {
    v3 = 984;
  }

  return *(*(a2 + v3) + (v2 & 0x7FFF)) == 7;
}

uint64_t dyld4::Loader::dependent(dyld4::JustInTimeLoader *a1, dyld4::RuntimeState *a2, unsigned int a3, char *a4)
{
  if (*a1 != 1815378276)
  {
    dyld4::Loader::dependent();
  }

  if (*(a1 + 2))
  {

    return dyld4::PrebuiltLoader::dependent(a1, a2, a3, a4);
  }

  else
  {

    return dyld4::JustInTimeLoader::dependent(a1, a2, a3, a4);
  }
}

uint64_t dyld4::PrebuiltLoader::dependent(_WORD *a1, dyld4::RuntimeState *a2, unsigned int a3, char *a4)
{
  if (a1[24] <= a3)
  {
    dyld4::PrebuiltLoader::dependent();
  }

  if (a4)
  {
    if (a1[18])
    {
      v6 = a1 + a1[18] + a3;
    }

    else
    {
      v6 = &mach_o::LinkedDylibAttributes::regular;
    }

    *a4 = *v6;
  }

  v10 = *(&a1[a3] + a1[17]);
  if (v10 == 0x7FFF)
  {
    return 0;
  }

  result = dyld4::Loader::LoaderRef::loader(&v10, a2);
  if ((a1[2] & 2) != 0 && (*(result + 44) & 4) == 0 && *(*(a2 + 1) + 221) == 1)
  {
    v8 = *(result + 60);
    if (v8 != 0xFFFF)
    {
      v9 = v8 & 0x7FFF;
      return dyld4::Loader::LoaderRef::loader(&v9, a2);
    }
  }

  return result;
}

uint64_t dyld4::Loader::dependentCount(dyld4::Loader *this)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::dependentCount();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::dependentCount(this);
  }

  else
  {

    return dyld4::JustInTimeLoader::dependentCount(this);
  }
}

uint64_t *dyld3::Array<dyld4::Loader const*>::push_back(uint64_t *result, uint64_t *a2)
{
  v2 = result[2];
  if (v2 >= result[1])
  {
    ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
  }

  v3 = *a2;
  v4 = *result;
  result[2] = v2 + 1;
  *(v4 + 8 * v2) = v3;
  return result;
}

BOOL dyld4::APIs::dyld_has_inserted_or_interposing_libraries(dyld4::APIs *this)
{
  v1 = *(this + 1);
  if (*(this + 24))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 740) != 0;
  }

  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_has_inserted_or_interposing_libraries() => %d\n", v2);
  }

  return v2;
}

void dyld4::APIs::dlopen_from(dyld4::RuntimeLocks **this, dyld4::Loader *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = a3;
  v53 = a2;
  v52 = a3;
  v43 = 520617984;
  v44 = 0;
  v45 = a2;
  v46 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  dyld3::ScopedTimer::startTimer(&v43, a2, a3, a4, a5, a6, a7, a8);
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dlopen(%s, 0x%08X)\n", a2, v9);
  }

  dyld4::APIs::clearErrorString(this);
  v12 = v52;
  v42 = BYTE1(v52) & 1;
  if (!v53)
  {
    goto LABEL_47;
  }

  v13 = this[119];
  if (v13)
  {
    v58[0] = 0;
    if (dyld4::ProcessConfig::DyldCache::indexOfPath(this[1] + 46, v53, v58))
    {
      if (*(v13 + 3) <= LOWORD(v58[0]))
      {
        dyld4::RuntimeState::findPrebuiltLoader();
      }

      v14 = *(v13 + 4 * LOWORD(v58[0]) + *(v13 + 4));
      if (dyld4::PrebuiltLoader::isInitialized((v13 + v14), this))
      {
        v16 = dyld4::handleFromLoader(v13 + v14, v42);
        if (*(this[1] + 324) == 1)
        {
          v17 = dyld4::Loader::leafName(v53, v15);
          dyld4::RuntimeState::log(this, "      dlopen(%s) => %p\n", v17, v16);
        }

        *(&v48 + 1) = v16;
        *&v49 = 0;
LABEL_47:
        dyld3::ScopedTimer::endTimer(&v43);
        return;
      }
    }

    v12 = v52;
  }

  v18 = this[14];
  if ((v12 & 0x10) == 0)
  {
    dyld4::RuntimeLocks::takeDlopenLockBeforeFork(this[14]);
  }

  v40 = 0;
  ImageContaining = dyld4::APIs::findImageContaining(this, a4);
  v39 = 0;
  v19 = lsl::MemoryManager::memoryManager(ImageContaining);
  *&v54 = this;
  *(&v54 + 1) = &ImageContaining;
  *&v55 = &v52;
  *(&v55 + 1) = &v39;
  *&v56 = &v53;
  *(&v56 + 1) = &v40;
  v57 = &v42;
  v20 = *(v19 + 6);
  if (v20 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v20))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v27 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v27 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v28 = MEMORY[0xFFFFFC0D0];
          if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v29 = *(v19 + 6);
            *v58 = _NSConcreteStackBlock;
            v59 = 0x40000000;
            v60 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld44APIs11dlopen_fromEPKciPvE3__0EEvT__block_invoke;
            v61 = &__block_descriptor_tmp_217;
            v62 = v54;
            v63 = v55;
            v64 = v56;
            v65 = v57;
            lsl::ProtectedStack::withNestedProtectedStack(v29, v58, v21, v22, v23, v24, v25, v26, v38);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v30 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v30 & 0xFE) == 2)
                {
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v31 = MEMORY[0xFFFFFC0D8];
                  if (v31 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    goto LABEL_45;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    if (*(v19 + 33) != 1)
    {
      lsl::MemoryManager::lockGuard(v19, v58);
      v36 = *(v19 + 3);
      if (!v36)
      {
        lsl::MemoryManager::writeProtect(v19, 0);
        v36 = *(v19 + 3);
      }

      *(v19 + 3) = v36 + 1;
      lsl::Lock::unlock(*v58);
      dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator()(&v54);
      lsl::MemoryManager::lockGuard(v19, v58);
      v37 = *(v19 + 3) - 1;
      *(v19 + 3) = v37;
      if (!v37)
      {
        lsl::MemoryManager::writeProtect(v19, 1);
      }

      lsl::Lock::unlock(*v58);
      goto LABEL_45;
    }

    if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
      {
        dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator()(&v54);
        goto LABEL_45;
      }

      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v32 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v32 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v33 = MEMORY[0xFFFFFC0D0];
            if (v33 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator()(&v54);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v34 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v34 & 0xFE) == 2)
                  {
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v35 = MEMORY[0xFFFFFC0D8];
                    if (v35 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
LABEL_45:
                      *(&v48 + 1) = v40;
                      *&v49 = 0;
                      if ((v12 & 0x10) == 0)
                      {
                        dyld4::RuntimeLocks::releaseDlopenLockInForkParent(v18);
                      }

                      goto LABEL_47;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
}

uint64_t dyld4::LibSystemHelpersWrapper::pthread_getspecific(dyld4::LibSystemHelpersWrapper *this, uint64_t a2)
{
  v30 = a2;
  v11 = lsl::MemoryManager::memoryManager(this);
  v12 = *(v11 + 6);
  if (v12 && lsl::ProtectedStack::onStackInCurrentFrame(v12, v4, v5, v6, v7, v8, v9, v10, v28))
  {
    v19 = *(v11 + 6);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 0x40000000;
    v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper19pthread_getspecificEmEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES7__block_invoke;
    v31[3] = &__block_descriptor_tmp_198_0;
    v31[4] = this;
    v31[5] = &v30;
    return lsl::ProtectedStack::withNestedRegularStack(v19, v31, v13, v14, v15, v16, v17, v18, v29);
  }

  if (*(v11 + 33) == 1)
  {
    if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
    {
      if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
      {
        goto LABEL_8;
      }

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
              v25 = (*(**this + 56))(*this, a2);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v26 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v26 & 0xFE) == 2)
                  {
                    v20 = v25;
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                    __isb(0xFu);
                    v27 = MEMORY[0xFFFFFC0D0];
                    if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      return v20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
    JUMPOUT(0x24C6CLL);
  }

LABEL_8:
  v21 = *(**this + 56);

  return v21();
}

uint64_t dyld4::APIs::clearErrorString(uint64_t this)
{
  v1 = *(this + 1096);
  if (v1 != -1)
  {
    v2 = this;
    if (*(this + 1114) == 1)
    {
      this = dyld4::LibSystemHelpersWrapper::pthread_getspecific((this + 160), v1);
      if (this)
      {
        v3 = this;
        this = dyld4::LibSystemHelpersWrapper::malloc_size((v2 + 160), this);
        if (this)
        {
          *v3 = 0;
        }

        else
        {
          v4 = *(v2 + 1096);

          return dyld4::LibSystemHelpersWrapper::pthread_setspecific((v2 + 160), v4, 0);
        }
      }
    }
  }

  return this;
}

DyldSharedCache *dyld4::ProcessConfig::DyldCache::indexOfPath(DyldSharedCache **this, const char *a2, unsigned int *a3)
{
  result = *this;
  if (result)
  {
    return DyldSharedCache::hasImagePath(result, a2, a3);
  }

  return result;
}

BOOL dyld4::PrebuiltLoader::isInitialized(dyld4::PrebuiltLoader *this, const dyld4::RuntimeState *a2)
{
  v2 = *(this + 3);
  v3 = 960;
  if (v2 < 0)
  {
    v3 = 984;
  }

  return *(*(a2 + v3) + (v2 & 0x7FFF)) == 9;
}

unint64_t dyld4::handleFromLoader(unint64_t this, const dyld4::Loader *a2)
{
  if (this)
  {
    dyld4::handleFromLoader();
  }

  if (this ^ &dword_0 | a2)
  {
    return this ^ &dword_0 | a2;
  }

  else
  {
    return 0;
  }
}

const void *dyld4::APIs::_dyld_get_swift_prespecialized_data(dyld4::APIs *this)
{
  v1 = *(this + 1);
  if (*(v1 + 161))
  {
    return 0;
  }

  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_swift_prespecialized_data()\n");
    v1 = *(this + 1);
  }

  v3 = *(v1 + 368);
  if (!v3)
  {
    return 0;
  }

  v4 = DyldSharedCache::swiftOpt(v3);
  if (!v4)
  {
    return 0;
  }

  if (*v4 < 2u)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 1);
  v7 = (*(v6 + 368) + v5);
  if (*(v6 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_swift_prespecialized_data() => %p\n", v7);
  }

  return v7;
}

char *dyld4::APIs::_dyld_find_pointer_hash_table_entry(dyld4::APIs *this, unsigned int *a2, DyldSharedCache *a3, unint64_t a4, const void **a5)
{
  v5 = a5;
  v6 = a4;
  v10 = *(this + 1);
  if (*(v10 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_find_pointer_hash_table_entry(%p, %p, %lu, %p)\n", a2, a3, a4, a5);
    v10 = *(this + 1);
  }

  v11 = *(v10 + 368);
  if (!v11)
  {
    return 0;
  }

  v12 = DyldSharedCache::swiftOpt(v11);
  if (!v12 || *v12 < 3u)
  {
    return 0;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v12 + 40 + v13);
    if (!v14)
    {
LABEL_10:
      if (*(*(this + 1) + 324) == 1)
      {
        dyld4::RuntimeState::log(this, "_dyld_find_pointer_hash_table_entry() invalid table pointer %p\n");
      }

      return 0;
    }

    v15 = (*(*(this + 1) + 368) + v14);
    if (v15 == a2)
    {
      break;
    }

    v13 += 8;
    if (v13 == 64)
    {
      goto LABEL_10;
    }
  }

  if (!*(v12 + 32))
  {
    return 0;
  }

  v16 = *(this + 1);
  if (v6 >= 0x40)
  {
    if (*(v16 + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "_dyld_find_pointer_hash_table_entry() exceeded key pointers limit: %lu\n");
    }

    return 0;
  }

  v17 = *(v16 + 368);
  v18 = v17 + DyldSharedCache::mappedSize(v17);
  v19 = *(this + 1);
  if (v17 > a3 || v18 <= a3)
  {
    if (*(v19 + 324) != 1)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v21 = *(v19 + 368);
  v31[0] = a3 - v21;
  v22 = 1;
  if (v6)
  {
    while (1)
    {
      v23 = *v5;
      if (*v5 < v17 || v23 >= v18)
      {
        break;
      }

      v31[v22] = &v23[-v21];
      ++v5;
      ++v22;
      if (!--v6)
      {
        goto LABEL_28;
      }
    }

    if (*(v19 + 324) != 1)
    {
      return 0;
    }

    v28 = *v5;
LABEL_34:
    dyld4::RuntimeState::log(this, "_dyld_find_pointer_hash_table_entry() key %p not in shared cache\n");
    return 0;
  }

LABEL_28:
  v29 = v31;
  v30 = v22;
  Potential = SwiftHashTable::getPotentialTarget<PointerHashTableBuilderKey,PointerHashTableOnDiskKey>(v15, &v29);
  v26 = 0;
  if (Potential != v15[4])
  {
    v26 = v17 + (*(v15 + Potential + 8) & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_find_pointer_hash_table_entry() => %p\n", v26);
  }

  return v26;
}

uint64_t SwiftHashTable::hash<PointerHashTableBuilderKey>(uint64_t a1, objc **a2)
{
  v4 = objc::lookup8((a2 + 1), &dword_4, *(a1 + 24));
  v5 = objc::lookup8(*a2, (8 * *(a2 + 2)), *(a1 + 24));
  v6 = *(a1 + 8);
  if (v6 == 64)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 ^ v4) >> v6;
  }

  return v7 ^ *(a1 + 4 * *(a1 + ((v5 ^ v4) & *(a1 + 12)) + 1056) + 32);
}

uint64_t SwiftHashTable::getIndex<PointerHashTableBuilderKey,PointerHashTableOnDiskKey>(unsigned int *a1, objc **a2)
{
  v4 = SwiftHashTable::hash<PointerHashTableBuilderKey>(a1, a2);
  if (*a1 <= v4)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v5 = v4;
  v6 = *(a1 + a1[5] + v4 + 1056);
  if (v6 != SwiftHashTable::checkbyte<PointerHashTableBuilderKey>(a1, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  if (v7 <= v5)
  {
    dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
  }

  v8 = *(&a1[v5 + 264] + a1[5] + v7);
  if (v8 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (SwiftHashTable::equal<PointerHashTableBuilderKey,PointerHashTableOnDiskKey>(a1, (a1 + v8), a2))
  {
    return v5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t SwiftHashTable::getPotentialTarget<PointerHashTableBuilderKey,PointerHashTableOnDiskKey>(unsigned int *a1, objc **a2)
{
  v3 = SwiftHashTable::getIndex<PointerHashTableBuilderKey,PointerHashTableOnDiskKey>(a1, a2);
  if (v3 == -1)
  {
    v5 = a1 + 4;
  }

  else
  {
    v4 = *a1;
    if (v4 <= v3)
    {
      dyld3::MultiMapBase<prebuilt_objc::ObjCStringKey,prebuilt_objc::ObjCObjectLocation,prebuilt_objc::HashObjCStringKey,prebuilt_objc::EqualObjCStringKey>::forEachEntry<prebuilt_objc::ObjCStringKey>();
    }

    v5 = (&a1[v3 + 264] + a1[5] + v4);
  }

  return *v5;
}

void dyld4::ExternallyViewableState::notifyMonitorOfMainCalled(dyld4::ExternallyViewableState *this)
{
  dyld4::RemoteNotificationResponder::RemoteNotificationResponder(v1, *(*(this + 4) + 200));
  if (dyld4::RemoteNotificationResponder::active(v1))
  {
    dyld4::RemoteNotificationResponder::notifyMonitorOfMainCalled(v1);
  }

  dyld4::RemoteNotificationResponder::~RemoteNotificationResponder(v1);
}

uint64_t dyld3::kdebug_trace_dyld_region(dyld3 *this, uint64_t a2, int a3, void *a4, void **a5, unsigned __int8 (*a6)[16], fsobj_id a7, fsid a8, const void *a9)
{
  v15 = 4 * this;
  v16 = ((4 * (this & 0x3FFF)) | 0x1F050000u);
  v17 = kdebug_trace_string(v16, 0, a4, a4, a5, a6, *&a7, *&a8);
  kdebug_trace(v16, *a5, a5[1], *&a8, (a7.fid_objno | *&a7 & 0xFFFFFFFF00000000), v18, v19, v20);
  kdebug_trace(((v15 + 4) & 0xFFFC | 0x1F050000u), a6, v17, (a3 | (a2 << 32)), 0, v21, v22, v23);

  return kdebug_trace_string(v16, v17, 0, v24, v25, v26, v27, v28);
}

char *DyldSharedCache::findLaunchLoaderSetWithCDHash(DyldSharedCache *this, const char *__s)
{
  if (!__s || _platform_strlen(__s) > 0x7F)
  {
    return 0;
  }

  strcpy(__dst, "/cdhash/");
  strlcat(__dst, __s, 0x8CuLL);
  return DyldSharedCache::findLaunchLoaderSet(this, __dst);
}

size_t _platform_strlcat(const char *a1, char *__s, size_t a3)
{
  v6 = _platform_strlen(__s);
  v7 = _platform_strnlen(a1, a3);
  v8 = a3 - v7;
  if (a3 == v7)
  {
    return v6 + a3;
  }

  v10 = v7;
  if (v6 >= v8)
  {
    memmove(&a1[v7], __s, v8 - 1);
    a1[a3 - 1] = 0;
  }

  else
  {
    memmove(&a1[v7], __s, v6 + 1);
  }

  return v10 + v6;
}

void dyld4::RuntimeState::allocateProcessArrays(dyld4::RuntimeState *this, unint64_t a2)
{
  *(this + 123) = lsl::Allocator::malloc(*(this + 2), a2);
  *(this + 124) = lsl::Allocator::malloc(*(this + 2), 8 * a2);
  bzero(*(this + 123), a2);
  v4 = *(this + 124);

  bzero(v4, 8 * a2);
}

uint64_t dyld4::PrebuiltLoaderSet::isValid(dyld4::PrebuiltLoaderSet *this, dyld4::RuntimeState *a2)
{
  if (!dyld4::PrebuiltLoaderSet::validHeader(this, a2))
  {
LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + v5);
    v20 = v6;
    v7 = *(a2 + 1);
    v8 = *(v7 + 368);
    if (!v8)
    {
      if (*(v7 + 327) == 1)
      {
        dyld4::console("not using PrebuiltLoaderSet %p because process does not have a dyld cache\n", v4, *&v6, this);
      }

      goto LABEL_17;
    }

    v17 = 0uLL;
    *&v10 = DyldSharedCache::getUUID(v8, &v17).n128_u64[0];
    if (v20 != v17.n128_u64[0] || *(&v20 + 1) != v17.n128_u64[1])
    {
      if (*(*(a2 + 1) + 327) == 1)
      {
        dyld4::console("not using PrebuiltLoaderSet %p because cache UUID does not match\n", v9, v10, this);
      }

      goto LABEL_17;
    }
  }

  v17.n128_u64[0] = 0;
  v17.n128_u64[1] = &v17;
  v18 = 0x2000000000;
  v19 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = ___ZNK5dyld417PrebuiltLoaderSet7isValidERNS_12RuntimeStateE_block_invoke;
  v16[3] = &unk_A1EF0;
  v16[5] = this;
  v16[6] = a2;
  v16[4] = &v17;
  dyld4::PrebuiltLoaderSet::forEachMustBeMissingPath(this, v16);
  v12 = 0;
  if ((*(v17.n128_u64[1] + 24) & 1) == 0)
  {
    if (*(this + 3))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v14 |= !dyld4::PrebuiltLoader::isValid((this + *(this + 4 * v13++ + *(this + 4))), a2);
      }

      while (v13 < *(this + 3));
      v12 = v14 ^ 1;
    }

    else
    {
      v12 = 1;
    }
  }

  _Block_object_dispose(&v17, 8);
  return v12 & 1;
}

BOOL dyld4::PrebuiltLoader::recordedCdHashIs(dyld4::PrebuiltLoader *this, const unsigned __int8 *a2)
{
  result = 0;
  if (this && *(this + 21))
  {
    v4 = this + *(this + 21);
    if (v4[53] == 1)
    {
      v5 = *(v4 + 4);
      v6 = *(v4 + 5);
      v7 = *(v4 + 12);
      return v5 == *a2 && v6 == *(a2 + 1) && v7 == *(a2 + 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL dyld4::PrebuiltLoader::isValid(dyld4::PrebuiltLoader *this, const dyld4::RuntimeState *a2)
{
  v2 = __chkstk_darwin(this);
  v4 = v2[3];
  v5 = v4;
  v6 = 960;
  if (v4 < 0)
  {
    v6 = 984;
  }

  v7 = *(*(v3 + v6) + (v4 & 0x7FFF));
  if ((v7 - 2) < 8)
  {
    return 1;
  }

  if (v7 == 255)
  {
    return 0;
  }

  v10 = v3;
  v11 = v2;
  v12 = *(*(v3 + 1) + 576);
  if (!v7)
  {
    dyld4::PrebuiltLoader::recursiveMarkBeingValidated(v2, v3, v12 != 1);
    v5 = v11[3];
  }

  v42[0] = &v46;
  v42[1] = 1024;
  address = 0;
  size = 0;
  v43 = 0;
  if (v5 < 0)
  {
    v13 = *(v10 + 122);
    v14 = *(v13 + 12);
    if (v14)
    {
      for (i = 0; i < v14; ++i)
      {
        v41 = v13 + *(v13 + *(v13 + 16) + 4 * i);
        v16 = *(v41 + 6);
        if (v16 >= 0)
        {
          v17 = 960;
        }

        else
        {
          v17 = 984;
        }

        if (*(*(v10 + v17) + (v16 & 0x7FFF)) == 1)
        {
          dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v42, &v41);
          v14 = *(v13 + 12);
        }
      }
    }
  }

  if (v12)
  {
    v18 = *(v10 + 119);
    v19 = *(v18 + 12);
    if (v19)
    {
      for (j = 0; j < v19; ++j)
      {
        v41 = v18 + *(v18 + *(v18 + 16) + 4 * j);
        v21 = *(v41 + 6);
        if (v21 >= 0)
        {
          v22 = 960;
        }

        else
        {
          v22 = 984;
        }

        if (*(*(v10 + v22) + (v21 & 0x7FFF)) == 1)
        {
          dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(v42, &v41);
          v19 = *(v18 + 12);
        }
      }
    }
  }

  if (v43)
  {
    v23 = v42[0];
    v24 = 8 * v43;
    do
    {
      v25 = *v23++;
      dyld4::PrebuiltLoader::invalidateInIsolation(v25, v10);
      v24 -= 8;
    }

    while (v24);
  }

  while (v43)
  {
    v26 = 0;
    v27 = v42[0];
    v28 = 8 * v43;
    do
    {
      v29 = (*v27)[3];
      if (v29 >= 0)
      {
        v30 = 960;
      }

      else
      {
        v30 = 984;
      }

      v31 = *(v10 + v30);
      v32 = v29 & 0x7FFF;
      if (*(v31 + v32) == 1)
      {
        dyld4::PrebuiltLoader::invalidateShallow(*v27, v10);
        v26 |= *(v31 + v32) != 1;
      }

      ++v27;
      v28 -= 8;
    }

    while (v28);
    if ((v26 & 1) == 0)
    {
      if (v43)
      {
        v33 = v42[0];
        v34 = 8 * v43;
        do
        {
          v35 = *(*v33 + 6);
          if (v35 >= 0)
          {
            v36 = 960;
          }

          else
          {
            v36 = 984;
          }

          v37 = *(v10 + v36);
          v38 = v35 & 0x7FFF;
          if (*(v37 + v38) == 1)
          {
            *(v37 + v38) = 2;
          }

          v33 += 8;
          v34 -= 8;
        }

        while (v34);
      }

      break;
    }
  }

  v39 = v11[3];
  v40 = 960;
  if (v39 < 0)
  {
    v40 = 984;
  }

  v8 = *(*(v10 + v40) + (v39 & 0x7FFF)) != 255;
  v43 = 0;
  if (address)
  {
    vm_deallocate(mach_task_self_, address, size);
  }

  return v8;
}

size_t dyld4::PrebuiltLoaderSet::forEachMustBeMissingPath(size_t result, uint64_t a2)
{
  v3 = result;
  v6 = 0;
  v4 = (result + *(result + 36));
  v5 = -1;
  do
  {
    if (++v5 >= *(v3 + 32))
    {
      break;
    }

    (*(a2 + 16))(a2, v4, &v6);
    result = _platform_strlen(v4);
    v4 += result + 1;
  }

  while ((v6 & 1) == 0);
  return result;
}

BOOL dyld4::RuntimeState::allowNonOsProgramsToSaveUpdatedClosures(dyld4::RuntimeState *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 112);
  return v2 == &mach_o::PlatformInfo_iOS::singleton && !*(v1 + 120) || v2 == &mach_o::PlatformInfo_tvOS::singleton && !*(v1 + 120) || v2 == &mach_o::PlatformInfo_watchOS::singleton && !*(v1 + 120) || v2 == &mach_o::PlatformInfo_visionOS::singleton && !*(v1 + 120) || dyld4::ProcessConfig::Process::appleParam((v1 + 16), "executable_cdhash") != 0;
}

void dyld4::RuntimeState::buildAppPrebuiltLoaderSetPath(dyld4::RuntimeState *this, int a2)
{
  v4 = dyld4::ProcessConfig::Process::environ((*(this + 1) + 16), "DYLD_CLOSURE_DIR");
  v5 = *(this + 1);
  if (*(v5 + 289) == 1 && v4 != 0)
  {
    strlcpy(__dst, v4, 0x400uLL);
    if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "using DYLD_CLOSURE_DIR to find loaders\n");
    }

    goto LABEL_16;
  }

  v7 = dyld4::ProcessConfig::Process::environ((v5 + 16), "HOME");
  v8 = *(this + 1);
  if (!v7)
  {
    if (*(v8 + 327) != 1)
    {
      return;
    }

    v13 = "did not look for saved PrebuiltLoaderSet because $DYLD_CLOSURE_DIR and $HOME are not set\n";
    goto LABEL_41;
  }

  isMaybeContainerized = dyld4::SyscallDelegate::isMaybeContainerized(v8, v7);
  v10 = *(this + 1);
  if (!isMaybeContainerized)
  {
    if (*(v10 + 289) == 1)
    {
      v14 = dyld4::ProcessConfig::Process::environ((v10 + 16), "DYLD_USE_CLOSURES");
      v15 = *(this + 1);
      if (v14)
      {
        if (dyld4::SyscallDelegate::realpathdir(v15, v7, __dst))
        {
          strlcat(__dst, "/Library/Caches/com.apple.dyld/", 0x400uLL);
          strlcat(__dst, *(*(this + 1) + 200), 0x400uLL);
          strlcat(__dst, "/", 0x400uLL);
          if (!a2 || dyld4::SyscallDelegate::dirExists(*(this + 1), __dst, v16) || dyld4::SyscallDelegate::mkdirs(*(this + 1), __dst))
          {
            v17 = dyld4::ProcessConfig::Process::appleParam((*(this + 1) + 16), "executable_cdhash");
            if (v17)
            {
              strlcat(__dst, v17, 0x400uLL);
              strlcat(__dst, "-", 0x400uLL);
            }

            v18 = *(*(this + 1) + 32);
            v19 = _platform_strlen(v18);
            v21 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](__source, v18, v19);
            v23 = __source;
            v22 = 8;
            do
            {
              dyld4::Loader::appendHexByte(v21, &v23, v20);
              v21 >>= 8;
              --v22;
            }

            while (v22);
            *v23 = 0;
            v12 = __source;
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        goto LABEL_32;
      }

      if (*(v15 + 327) != 1)
      {
        return;
      }

      v13 = "did not look for saved PrebuiltLoaderSet because DYLD_USE_CLOSURES is not set\n";
    }

    else
    {
      if (*(v10 + 327) != 1)
      {
        return;
      }

      v13 = "did not look for saved PrebuiltLoaderSet because $HOME is not containerized and this is not an internal install\n";
    }

LABEL_41:

    dyld4::RuntimeState::log(this, v13);
    return;
  }

  if (!dyld4::SyscallDelegate::realpathdir(v10, v7, __dst))
  {
LABEL_32:
    if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "did not look for saved PrebuiltLoaderSet because $HOME failed realpath\n");
    }

    return;
  }

  strlcat(__dst, "/Library/Caches/com.apple.dyld/", 0x400uLL);
  if (dyld4::SyscallDelegate::isContainerized(*(this + 1), __dst))
  {
    if (!a2 || dyld4::SyscallDelegate::dirExists(*(this + 1), __dst, v11) || dyld4::SyscallDelegate::mkdirs(*(this + 1), __dst))
    {
      v12 = *(*(this + 1) + 200);
LABEL_31:
      strlcat(__dst, v12, 0x400uLL);
      strlcat(__dst, ".dyld4", 0x400uLL);
LABEL_16:
      *(this + 121) = lsl::Allocator::strdup(*(this + 2), __dst);
      return;
    }

LABEL_44:
    if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "failed to make directory for PrebuiltLoaderSet\n");
    }

    return;
  }

  if (*(*(this + 1) + 327) == 1)
  {
    dyld4::RuntimeState::log(this, "did not look for saved PrebuiltLoaderSet because $HOME is not containerized\n");
  }
}

const char *_platform_strstr(const char *a1, char *__s)
{
  v2 = a1;
  v3 = __s + 1;
  v4 = *__s;
  if (!*__s)
  {
    return a1;
  }

  v5 = _platform_strlen(__s + 1);
  while (1)
  {
    v6 = *v2;
    if (!*v2)
    {
      break;
    }

    v7 = v2++;
    if (v6 == v4 && !_platform_strncmp(v2, v3, v5))
    {
      return v7;
    }
  }

  return 0;
}

_WORD *dyld4::PrebuiltLoader::recursiveMarkBeingValidated(_WORD *this, const dyld4::RuntimeState *a2, _BOOL4 a3)
{
  v3 = this[3];
  v4 = 960;
  if (v3 < 0)
  {
    v4 = 984;
  }

  v5 = *(a2 + v4);
  v6 = v3 & 0x7FFF;
  if (!*(v5 + v6))
  {
    v7 = a3;
    v9 = this;
    if (!a3 || (this[2] & 2) == 0)
    {
      *(v5 + v6) = 1;
      if (this[24])
      {
        v10 = 0;
        v11 = 0;
        do
        {
          this = dyld4::PrebuiltLoader::dependent(v9, a2, v11, 0);
          if (this)
          {
            v12 = this;
            if ((this[2] & 1) == 0)
            {
              dyld4::PrebuiltLoader::recursiveMarkBeingValidated();
            }

            this = dyld4::PrebuiltLoader::recursiveMarkBeingValidated(this, a2, v7);
            v13 = v12[3];
            if (v13 >= 0)
            {
              v14 = 960;
            }

            else
            {
              v14 = 984;
            }

            v10 |= *(*(a2 + v14) + (v13 & 0x7FFF)) == 255;
          }

          ++v11;
        }

        while (v11 < v9[24]);
        if (v10)
        {
          v15 = v9[3];
          v16 = 960;
          if (v15 < 0)
          {
            v16 = 984;
          }

          *(*(a2 + v16) + (v15 & 0x7FFF)) = -1;
        }
      }
    }
  }

  return this;
}

uint64_t dyld3::stat(dyld3 *this, stat *a2, stat *a3)
{
  v3 = a2;
  v4 = this;
  while (1)
  {
    result = stat_with_subsystem(this, a2);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      return 0xFFFFFFFFLL;
    }

    this = v4;
    a2 = v3;
  }

  return result;
}

uint64_t dyld3::open(dyld3 *this, const char *a2, uint64_t a3)
{
  v4 = a2;
  do
  {
    if ((v4 & 0x200) != 0)
    {
      v6 = open(this, v4, a3);
    }

    else
    {
      v6 = open_with_subsystem(this, v4);
    }

    v7 = v6;
  }

  while (v6 == -1 && (*__error() == 35 || *__error() == 4));
  return v7;
}

uint64_t dyld4::SyscallDelegate::fileExists(int a1, dyld3 *this, uint64_t a3, int *a4)
{
  if (dyld3::stat(this, &v11, a3))
  {
    if (a4)
    {
      v6 = __error();
      result = 0;
      v8 = *v6;
LABEL_9:
      *a4 = v8;
      return result;
    }

    return 0;
  }

  if ((v11.st_mode & 0xF000) != 0x8000)
  {
    if (a4)
    {
      result = 0;
      v8 = 666;
      goto LABEL_9;
    }

    return 0;
  }

  result = 1;
  if (a3)
  {
    tv_sec = v11.st_mtimespec.tv_sec;
    st_dev = v11.st_dev;
    *a3 = v11.st_ino;
    *(a3 + 8) = st_dev;
    *(a3 + 16) = tv_sec;
    *(a3 + 24) = 1;
  }

  return result;
}

vm_address_t *dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back(vm_address_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4 + 1;
  if (v4 + 1 > result[1])
  {
    result = dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::growTo(result, v5);
    v4 = v3[2];
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *v3;
  v3[2] = v5;
  *(v7 + 8 * v4) = v6;
  return result;
}

uint64_t open_with_subsystem(const char *a1, int a2)
{
  if ((a2 & 0x200) != 0)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = open(a1, a2);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = __error();
      v6 = subsystem_root_path;
      if (*v5 == 2 && subsystem_root_path != 0)
      {
        while (1)
        {
          next_subsystem_root_path = extract_next_subsystem_root_path(__dst, v6);
          if (strlcat(__dst, a1, 0x400uLL) > 0x3FF)
          {
            break;
          }

          v4 = open(__dst, a2);
          if ((v4 & 0x80000000) == 0)
          {
            return v4;
          }

          __error();
          if (!next_subsystem_root_path)
          {
            return v4;
          }

          v6 = next_subsystem_root_path;
        }

        *__error() = 63;
      }
    }
  }

  return v4;
}

uint64_t stat_with_subsystem(const char *a1, stat *a2)
{
  v4 = stat64(a1, a2);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = __error();
    v6 = subsystem_root_path;
    if (*v5 == 2 && subsystem_root_path != 0)
    {
      while (1)
      {
        next_subsystem_root_path = extract_next_subsystem_root_path(__dst, v6);
        if (strlcat(__dst, a1, 0x400uLL) > 0x3FF)
        {
          break;
        }

        v4 = stat64(__dst, a2);
        if ((v4 & 0x80000000) == 0)
        {
          return v4;
        }

        __error();
        if (!next_subsystem_root_path)
        {
          return v4;
        }

        v6 = next_subsystem_root_path;
      }

      *__error() = 63;
    }
  }

  return v4;
}

void dyld4::PrebuiltLoader::invalidateInIsolation(dyld4::PrebuiltLoader *this, const dyld4::RuntimeState *a2)
{
  v2 = *(this + 3);
  v3 = 960;
  if (v2 < 0)
  {
    v3 = 984;
  }

  v4 = *(a2 + v3);
  v5 = v2 & 0x7FFF;
  if (*(v4 + v5) <= 1u)
  {
    v8 = *(this + 2);
    if ((v8 & 2) != 0)
    {
      v15 = *(a2 + 1);
      if (!*(v15 + 368))
      {
        *(v4 + v5) = -1;
        return;
      }

      if ((*(this + 22) & 2) != 0)
      {
        if ((*(v15 + 536) & 1) == 0)
        {
          if (*(this + 16))
          {
            v16 = (this + *(this + 16));
          }

          else
          {
            v16 = 0;
          }

          if (!dyld4::ProcessConfig::DyldCache::isAlwaysOverridablePath(v16, a2))
          {
            return;
          }

          v15 = *(a2 + 1);
          v8 = *(this + 2);
        }

        *&v36 = 0;
        *(&v36 + 1) = &v36;
        *&v37 = 0x2000000000;
        BYTE8(v37) = 0;
        v35 = 0;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 0x40000000;
        v34[2] = ___ZNK5dyld414PrebuiltLoader21invalidateInIsolationERKNS_12RuntimeStateE_block_invoke;
        v34[3] = &unk_A1D68;
        v34[5] = this;
        v34[6] = a2;
        v34[4] = &v36;
        if ((v8 & 2) != 0 || (v17 = *(this + 3) & 0x7FFF, *(a2 + 48) <= v17))
        {
          if (*(this + 16))
          {
            v18 = (this + *(this + 16));
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = *(*(a2 + 47) + 8 * v17);
        }

        v32 = *(v15 + 112);
        v33 = *(v15 + 120);
        dyld4::ProcessConfig::PathOverrides::forEachPathVariant(v15 + 592, v18, &v32, 0, 1, &v35, v34);
        if (*(*(&v36 + 1) + 24) == 1)
        {
          if (*(*(a2 + 1) + 327) == 1)
          {
            v28 = dyld4::Loader::leafName(this, a2);
            dyld4::console("PrebuiltLoader %p '%s' not used because a file was found that overrides it\n", v29, this, v28);
          }

          *(v4 + v5) = -1;
        }

        _Block_object_dispose(&v36, 8);
      }
    }

    else
    {
      if (*(this + 21))
      {
        v9 = this + *(this + 21);
        if (v9[52] == 1)
        {
          v11 = *(v9 + 1);
          v10 = *(v9 + 2);
          v12 = *(v9 + 3);
          v36 = 0u;
          v37 = 0u;
          v13 = *(a2 + 1);
          if (*(a2 + 48) <= v5)
          {
            if (*(this + 16))
            {
              v14 = (this + *(this + 16));
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = *(*(a2 + 47) + 8 * v5);
          }

          if (dyld4::SyscallDelegate::fileExists(v13, v14, &v36, 0))
          {
            if (*(&v36 + 1) == v11 && BYTE8(v37) == 1 && v36 == v10 && v37 == v12)
            {
              return;
            }

            *(v4 + v5) = -1;
            if ((*(*(a2 + 1) + 327) & 1) == 0)
            {
              return;
            }

            v31 = "PrebuiltLoader %p not used because file inode/mtime does not match\n";
          }

          else
          {
            *(v4 + v5) = -1;
            if (*(*(a2 + 1) + 327) != 1)
            {
              return;
            }

            v31 = "PrebuiltLoader %p not used because file missing\n";
          }

          dyld4::console(v31, v30, this);
          return;
        }
      }

      if (*(a2 + 48) <= v5)
      {
        if (*(this + 16))
        {
          v19 = (this + *(this + 16));
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = *(*(a2 + 47) + 8 * v5);
      }

      v20 = *(a2 + 1);
      if (_platform_strcmp(v19, v20[4]))
      {
        v21 = dyld4::SyscallDelegate::open(v20, v19, 0, 0);
        if (v21 == -1)
        {
          *(v4 + v5) = -1;
          if (*(*(a2 + 1) + 327) == 1)
          {
            dyld4::console("PrebuiltLoader %p not used because file '%s' cannot be opened\n", v22, this, v19);
          }
        }

        else
        {
          v23 = v21;
          Diagnostics::Diagnostics(&v36);
          if (*(this + 21))
          {
            v24 = this + *(this + 21);
          }

          else
          {
            v24 = 0;
          }

          v26 = dyld4::Loader::validateFile(&v36, a2, v23, v19, this + 20, v24);
          v27 = *(a2 + 1);
          if (v26 == -1)
          {
            *(v4 + v5) = -1;
            if (*(v27 + 327) == 1)
            {
              dyld4::console("PrebuiltLoader %p not used because file '%s' cdHash changed\n", v25, this, v19);
              v27 = *(a2 + 1);
            }
          }

          dyld4::SyscallDelegate::close(v27, v23);
          Diagnostics::~Diagnostics(&v36);
        }
      }
    }
  }
}

uint64_t ___ZNK5dyld417PrebuiltLoaderSet7isValidERNS_12RuntimeStateE_block_invoke(void *a1, dyld3 *a2, _BYTE *a3)
{
  v6 = a1[5];
  result = dyld4::SyscallDelegate::fileExists(*(a1[6] + 8), a2, 0, 0);
  if (result)
  {
    if (*(*(a1[6] + 8) + 327) == 1)
    {
      result = dyld4::console("not using PrebuiltLoaderSet %p because existence of file '%s' invalids the PrebuiltLoaderSet\n", v8, v6, a2);
    }

    *(*(a1[4] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

BOOL dyld4::SyscallDelegate::realpathdir(dyld4::SyscallDelegate *this, dyld3 *a2, char *a3)
{
  v4 = dyld3::open(a2, 0x100000, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = fcntl(v4, 50, a3) == 0;
  close(v5);
  return v6;
}

_WORD *dyld4::PrebuiltLoader::invalidateShallow(_WORD *this, const dyld4::RuntimeState *a2)
{
  if (this[24])
  {
    v3 = this;
    v4 = 0;
    do
    {
      this = dyld4::PrebuiltLoader::dependent(v3, a2, v4, 0);
      if (this && (this[2] & 1) != 0)
      {
        v5 = this[3];
        v6 = v5 >= 0 ? 960 : 984;
        if (*(*(a2 + v6) + (v5 & 0x7FFF)) == 255)
        {
          v7 = v3[3];
          if (v7 >= 0)
          {
            v8 = 960;
          }

          else
          {
            v8 = 984;
          }

          *(*(a2 + v8) + (v7 & 0x7FFF)) = -1;
        }
      }

      ++v4;
    }

    while (v4 < v3[24]);
  }

  return this;
}

uint64_t dyld4::PrebuiltLoaderSet::objcSelectorMap(dyld4::PrebuiltLoaderSet *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

int stat64(const char *a1, stat *a2)
{
  v9 = mac_syscall(SYS_stat64, a1, a2, v3, v4, v5, v6, v7, v8);
  if (v2)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

uint64_t dyld4::PrebuiltLoaderSet::objcClassMap(dyld4::PrebuiltLoaderSet *this)
{
  v1 = *(this + 11);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

void dyld4::RuntimeState::loadAppPrebuiltLoaderSet(dyld4::RuntimeState *this)
{
  if (dyld4::SyscallDelegate::fileExists(*(this + 1), *(this + 121), 0, 0))
  {
    v20 = &v22;
    v21 = xmmword_8C8F0;
    if (dyld4::RuntimeState::buildBootToken(this, &v20))
    {
      if (dyld4::RuntimeState::fileAlreadyHasBootToken(this, v2, &v20))
      {
        Diagnostics::Diagnostics(v19);
        Only = dyld4::SyscallDelegate::mapFileReadOnly(*(this + 1), v19, *(this + 121), 0, 0, 0, 0, 0);
        *(this + 122) = Only;
        if (Only)
        {
          dyld4::RuntimeState::allocateProcessArrays(this, *(Only + 3));
          **(this + 124) = *(*(this + 1) + 16);
          if (*(this + 122))
          {
            v11 = 520552504;
            v12 = 0u;
            v13 = 0u;
            v14 = 0u;
            v15 = 0u;
            v16 = 0u;
            v17 = 0u;
            v18 = 0;
            dyld3::ScopedTimer::startTimer(&v11, v4, v5, v6, v7, v8, v9, v10);
            if ((dyld4::PrebuiltLoaderSet::isValid(*(this + 122), this) & 1) == 0)
            {
              dyld4::SyscallDelegate::unmapFile(*(this + 1), *(this + 122), *(*(this + 122) + 8));
              *(this + 122) = 0;
            }

            dyld3::ScopedTimer::endTimer(&v11);
          }
        }

        Diagnostics::~Diagnostics(v19);
      }

      else if (*(*(this + 1) + 327) == 1)
      {
        dyld4::RuntimeState::log(this, "existing PrebuiltLoaderSet file not used because boot-token differs\n");
      }
    }

    else if (*(*(this + 1) + 327) == 1)
    {
      dyld4::RuntimeState::log(this, "did not look for saved PrebuiltLoaderSet because main executable is not codesigned\n");
    }
  }
}

uint64_t dyld4::PrebuiltLoaderSet::objcProtocolMap(dyld4::PrebuiltLoaderSet *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

uint64_t dyld4::PrebuiltLoaderSet::swiftForeignTypeProtocolTable(dyld4::PrebuiltLoaderSet *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return this + v1;
  }

  else
  {
    return 0;
  }
}

const char *dyld4::RuntimeState::buildBootToken(uint64_t a1, uint64_t *a2)
{
  result = dyld4::ProcessConfig::Process::appleParam((*(a1 + 8) + 16), "executable_boothash");
  if (!result)
  {
    return result;
  }

  LOBYTE(v5) = *result;
  if (!*result)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = (result + 1);
  v8 = 1;
  do
  {
    v9 = v5 - 48;
    if ((v5 - 48) < 0xAu)
    {
      goto LABEL_7;
    }

    if ((v5 - 65) <= 5u)
    {
      v9 = v5 - 55;
LABEL_7:
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if ((v5 - 97) > 5u)
    {
      return 0;
    }

    v9 = v5 - 87;
    if ((v8 & 1) == 0)
    {
LABEL_11:
      v11 = v6 + 1;
      v10 = v23[v6] | v9;
      goto LABEL_12;
    }

LABEL_8:
    v10 = 16 * v9;
    v11 = v6;
LABEL_12:
    v23[v6] = v10;
    v12 = *v7++;
    v5 = v12;
    if (!v12)
    {
      break;
    }

    v8 ^= 1u;
    v6 = v11;
  }

  while (v11 < 0x81);
  if (v5)
  {
    return 0;
  }

  if (v11)
  {
    v13 = v23;
    do
    {
      dyld3::Array<unsigned char>::push_back(a2, v13++);
      --v11;
    }

    while (v11);
  }

LABEL_19:
  *v21 = 0;
  v22 = 0;
  if (mach_o::Header::getUuid(&dword_0, v21))
  {
    v14 = v21;
    v15 = 16;
    do
    {
      dyld3::Array<unsigned char>::push_back(a2, v14++);
      --v15;
    }

    while (v15);
  }

  v16 = *(*(a1 + 8) + 40);
  v17 = _platform_strlen(v16);
  v18 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v20, v16, v17);
  v19 = 8;
  do
  {
    v20 = v18;
    dyld3::Array<unsigned char>::push_back(a2, &v20);
    v18 >>= 8;
    --v19;
  }

  while (v19);
  return (&dword_0 + 1);
}

uint64_t *dyld3::Array<unsigned char>::push_back(uint64_t *result, char *a2)
{
  v2 = result[2];
  if (v2 >= result[1])
  {
    ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
  }

  v3 = *a2;
  v4 = *result;
  result[2] = v2 + 1;
  *(v4 + v2) = v3;
  return result;
}

void dyld4::RuntimeState::setMainLoader(dyld4::RuntimeState *this, const dyld4::Loader *a2)
{
  *(this + 3) = a2;
  v11 = dyld4::Loader::analyzer(a2, this);
  v12 = *(this + 1);
  if (*(v12 + 320) == 1)
  {
    dyld4::Loader::logLoad(a2, this, *(v12 + 32));
    v12 = *(this + 1);
  }

  if (*(v12 + 321) == 1)
  {
    dyld4::RuntimeState::log(this, "Kernel mapped %s\n", *(v12 + 32));
    *&v29.st_dev = 0;
    v29.st_ino = &v29;
    *&v29.st_uid = 0x2000000000;
    v29.st_rdev = 0;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 0x40000000;
    v31[2] = ___ZN5dyld412RuntimeState13setMainLoaderEPKNS_6LoaderE_block_invoke;
    v31[3] = &unk_A0CC8;
    v31[4] = &v29;
    v31[5] = this;
    v31[6] = dyld3::MachOLoaded::getSlide(v11);
    v31[7] = v11;
    mach_o::Header::forEachSegment(v11, v31);
    _Block_object_dispose(&v29, 8);
    v12 = *(this + 1);
  }

  if (*(v12 + 220) == 1)
  {
    v30 = 0;
    if (!rosetta_dyld_get_runtime_info(&v30, v4, v5, v6, v7, v8, v9, v10))
    {
      v14 = v30;
      if (v30[2])
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = (v14[1] + v15);
          v18 = *v17;
          v19 = v17[1];
          v20 = (v14[3] + v15);
          v21 = *(v20 + 2);
          v32 = *v20;
          v33 = v21;
          v22 = dyld3::stat(v19, &v29, v13);
          if (!v22)
          {
            st_dev = v29.st_dev;
            v25 = v18;
            dyld3::kdebug_trace_dyld_image(v22, v19, &v32 + 1, v29.st_ino, st_dev, v25, *(*&v18 + 8), v23, v28);
          }

          ++v16;
          v14 = v30;
          v15 += 24;
        }

        while (v16 < v30[2]);
      }

      dyld4::ExternallyViewableState::setRosettaSharedCacheInfo(*(this + 77), v14[6], (v14 + 7));
      v26 = v30[4];
      *&v29.st_dev = v30[5];
      v29.st_ino = v26;
      v27 = *v30;
      *&v32 = v30[1];
      *(&v32 + 1) = v27;
      dyld4::ExternallyViewableState::addRosettaImages(*(this + 77), &v29, &v32);
    }
  }
}

uint64_t lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 8 * a2);
    if (result)
    {
LABEL_12:
      *(v3 + 24) = a2;
      return result;
    }

    result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 8 * a2);
    v4 = result;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = *(v3 + 8);
      v8 = v7;
      v9 = result;
      do
      {
        *v9++ = *v8;
        *v8++ = 0;
        ++v7;
        --v6;
      }

      while (v6);
    }

    else if (!v5)
    {
      v10 = 0;
      goto LABEL_9;
    }

    result = lsl::Allocator::free(*v3, v5);
    v10 = *(v3 + 16);
LABEL_9:
    if (v10 >= a2)
    {
      v10 = a2;
    }

    *(v3 + 8) = v4;
    *(v3 + 16) = v10;
    goto LABEL_12;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

void mach_o::Header::valid(mach_o::Header *this@<X0>, unint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  if (a2 <= 0x1B)
  {
    mach_o::Error::Error(a3, "file is too small (length=%llu)", a2);
    return;
  }

  if (*this >> 1 == 2138504551)
  {
    mach_o::Header::validStructureLoadCommands(this, a2, a3);
    if (!*a3)
    {
      mach_o::Error::~Error(a3);
      mach_o::Header::validSemanticsPlatform(this, a3);
      if (!*a3)
      {
        mach_o::Error::~Error(a3);
        mach_o::Architecture::Architecture(&v7, this);
        mach_o::Header::platformAndVersions(this, v6);
        mach_o::Policy::Policy(v8, &v7, v6, *(this + 3), 0, 0, 0);
        mach_o::Header::validSemanticsUUID(this, v8, a3);
        if (!*a3)
        {
          mach_o::Error::~Error(a3);
          mach_o::Header::validSemanticsInstallName(this, a3);
          if (!*a3)
          {
            mach_o::Error::~Error(a3);
            mach_o::Header::validSemanticsLinkedDylibs(this, v8, a3);
            if (!*a3)
            {
              mach_o::Error::~Error(a3);
              mach_o::Header::validSemanticsRPath(this, v8, a3);
              if (!*a3)
              {
                mach_o::Error::~Error(a3);
                mach_o::Header::validSemanticsSegments(this, v8, a2, a3);
                if (!*a3)
                {
                  mach_o::Error::~Error(a3);
                  mach_o::Header::validSemanticsLinkerOptions(this, a3);
                  if (!*a3)
                  {
                    mach_o::Error::~Error(a3);
                    if (*(this + 3) == 2)
                    {
                      mach_o::Header::validSemanticsMain(this, v8, a3);
                      if (*a3)
                      {
                        return;
                      }

                      mach_o::Error::~Error(a3);
                    }

                    *a3 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {

    mach_o::Error::Error(a3, "not a mach-o file (start is no MH_MAGIC[_64])");
  }
}

void dyld4::RuntimeState::notifyDebuggerLoad(dyld4::RuntimeState *this, const dyld4::Loader *a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v4 = __stackAllocatorInternal(v12, 344);
  v8 = v4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v8, 1uLL);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v8, v10 + 1);
  v5 = v10++;
  v6 = v10;
  *(v9 + 8 * v5) = a2;
  v7[0] = v9;
  v7[1] = v6;
  dyld4::RuntimeState::notifyDebuggerLoad(this, v7);
  if (v9)
  {
    lsl::Vector<char const*>::resize(&v8, 0);
  }

  lsl::Allocator::~Allocator(v4);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t dyld4::Loader::validateFile(Diagnostics *a1, uint64_t a2, int a3, const char *a4, unsigned int *a5, uint64_t a6)
{
  if (dyld4::SyscallDelegate::fstat(*(a2 + 8), a3, &v29))
  {
    v12 = *__error();
    if (v12 == 2)
    {
      Diagnostics::error(a1, "no such file");
    }

    else if (v12 == 1 && dyld4::SyscallDelegate::sandboxBlockedStat(*(a2 + 8), a4))
    {
      Diagnostics::error(a1, "file system sandbox blocked stat(%s)");
    }

    else
    {
      Diagnostics::error(a1, "stat(%s) failed with errno=%d");
    }

    return -1;
  }

  if (*(a6 + 52) == 1)
  {
    if (v29.st_ino == *(a6 + 16))
    {
      if (v29.st_mtimespec.tv_sec == *(a6 + 24))
      {
        result = *a6;
        if (v29.st_size >= *a6)
        {
          return result;
        }

        Diagnostics::error(a1, "file too small for slice offset '%s'");
      }

      else
      {
        Diagnostics::error(a1, "file mtime changed from 0x%llX to 0x%lX since Loader was built for '%s'");
      }
    }

    else
    {
      Diagnostics::error(a1, "file inode changed from 0x%llX to 0x%llX since Loader was built for '%s'");
    }

    return -1;
  }

  if (!a5[1])
  {
    return -1;
  }

  v14 = dyld4::SyscallDelegate::mmap(*(a2 + 8), 0, v29.st_size, 1, 2, a3, 0);
  if (v14 == -1)
  {
    Diagnostics::error(a1, "could not mmap() '%s'");
    return -1;
  }

  v15 = v14;
  v27 = 0;
  v28 = 0;
  v16 = *(a2 + 8);
  v23 = *(v16 + 112);
  LODWORD(v24) = *(v16 + 120);
  v21 = *(v16 + 289);
  v17 = dyld3::MachOFile::compatibleSlice(a1, &v28, &v27, v14, v29.st_size, a4, &v23, 0, *(v16 + 208));
  if (v17)
  {
    v18 = v17;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v20 = *a5;
    v19 = a5[1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 0x40000000;
    v22[2] = ___ZN5dyld46Loader12validateFileER11DiagnosticsRKNS_12RuntimeStateEiPKcRKNS0_19CodeSignatureInFileERKNS0_18FileValidationInfoE_block_invoke;
    v22[3] = &unk_A1500;
    v22[4] = &v23;
    v22[5] = a6;
    dyld3::MachOFile::forEachCDHashOfCodeSignature(v17, (&v17->magic + v20), v19, v22);
    if (*(v24 + 24) == 1)
    {
      v28 = v18 - v15;
    }

    else
    {
      v28 = -1;
      Diagnostics::error(a1, "file cdHash not as expected '%s'", a4);
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v28 = -1;
  }

  dyld4::SyscallDelegate::unmapFile(*(a2 + 8), v15, *a6);
  return v28;
}

BOOL dyld4::SyscallDelegate::getFileAttribute(int a1, char *path, char *name, uint64_t a4)
{
  v5 = getxattr(path, name, *a4, *(a4 + 8), 0, 0);
  if (v5 != -1)
  {
    if (*(a4 + 8) < v5)
    {
      dyld4::SyscallDelegate::getFileAttribute();
    }

    *(a4 + 16) = v5;
  }

  return v5 != -1;
}

lsl::Allocator::Pool *dyld4::JustInTimeLoader::makeLaunchLoader(dyld4::JustInTimeLoader *this, Diagnostics *a2, dyld4::RuntimeState *a3)
{
  mach_o::Header::valid(*(*(a2 + 1) + 24), *(*(a2 + 1) + 72), v9);
  if (*&v9[0])
  {
    v5 = mach_o::Error::message(v9);
    Diagnostics::error(this, "%s", v5);
    mach_o::Error::~Error(v9);
    return 0;
  }

  else
  {
    mach_o::Error::~Error(v9);
    memset(v9, 0, sizeof(v9));
    v8 = dyld4::Loader::getOnDiskBinarySliceOffset(a2, *(*(a2 + 1) + 16), *(*(a2 + 1) + 32), v7);
    dyld4::SyscallDelegate::fileExists(*(a2 + 1), *(*(a2 + 1) + 32), v9, 0);
    return dyld4::JustInTimeLoader::make(a2, *(*(a2 + 1) + 16), *(*(a2 + 1) + 32), v9, v8, 1, 0, 0, 0);
  }
}

BOOL dyld4::RuntimeState::fileAlreadyHasBootToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __s2 = &v7;
  *__n = xmmword_8C8F0;
  result = dyld4::SyscallDelegate::getFileAttribute(*(a1 + 8), *(a1 + 968), "com.apple.dyld", &__s2);
  if (result)
  {
    return __n[1] == *(a3 + 16) && _platform_memcmp(*a3, __s2, __n[1]) == 0;
  }

  return result;
}

void dyld4::RuntimeState::notifyDebuggerLoad(const dyld4::RuntimeState *a1, uint64_t a2)
{
  memset(v25, 0, sizeof(v25));
  v20 = __stackAllocatorInternal(v25, 272);
  v4 = 40 * *(a2 + 8);
  __chkstk_darwin(v20);
  bzero(&v19 - ((v4 + 351) & 0xFFFFFFFFFFFFFFF0), v4 + 336);
  v19 = __stackAllocatorInternal((&v19 - ((v4 + 351) & 0xFFFFFFFFFFFFFFF0)), v4 + 336);
  v22 = v19;
  v23 = 0uLL;
  v24 = 0;
  lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::reserveExact(&v22, *(a2 + 8));
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      if (*v6 != *(a1 + 3))
      {
        if ((*(v8 + 2) & 2) != 0)
        {
          v9 = 0;
          v10 = 0;
        }

        else
        {
          dyld4::Loader::fileID(*v6, &v21);
          v10 = v21.i64[1];
          v9 = v21.i64[0];
        }

        v11 = dyld4::Loader::path(v8, a1);
        Address = dyld4::Loader::loadAddress(v8, a1);
        v13 = (*(v8 + 4) >> 1) & 1;
        lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::reserve(&v22, v23.i64[1] + 1);
        v14 = v23.i64[1]++;
        v15 = v23.i64[0] + 40 * v14;
        *v15 = v10;
        *(v15 + 8) = v9;
        *(v15 + 16) = v11;
        *(v15 + 24) = Address;
        *(v15 + 32) = v13;
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  v16 = v20;
  if (v23.i64[1])
  {
    v17 = *(a1 + 77);
    v18 = *(a1 + 2);
    v21 = v23;
    dyld4::ExternallyViewableState::addImages(v17, v18, v20, &v21);
  }

  if (v23.i64[0])
  {
    lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::resize(&v22, 0);
  }

  lsl::Allocator::~Allocator(v19);
  lsl::Allocator::~Allocator(v16);
}

void mach_o::Header::validStructureLoadCommands(mach_o::Header *this@<X0>, unint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  if (*this == -17958193)
  {
    v4 = 32;
  }

  else
  {
    v4 = 28;
  }

  if ((v4 + *(this + 5)) <= a2)
  {
    v5 = *(this + 3);
    if (v5 > 0xC || ((1 << v5) & 0x1BE6) == 0)
    {
      v7 = *(this + 3);
      mach_o::Error::Error(a3, "unknown filetype %d");
    }

    else
    {
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2000000000;
      v16 = 1;
      v9 = 0;
      v10 = &v9;
      v11 = 0x3002000000;
      v12 = __Block_byref_object_copy__19;
      v13 = __Block_byref_object_dispose__20;
      v14 = 0;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZNK6mach_o6Header26validStructureLoadCommandsEy_block_invoke;
      v8[3] = &unk_A4F80;
      v8[4] = &v9;
      v8[5] = v15;
      mach_o::Header::forEachLoadCommand(this, v8, a3);
      if (!*a3)
      {
        mach_o::Error::~Error(a3);
        if (v10[5])
        {
          mach_o::Error::Error(a3, v10 + 5);
        }

        else
        {
          *a3 = 0;
        }
      }

      _Block_object_dispose(&v9, 8);
      mach_o::Error::~Error(&v14);
      _Block_object_dispose(v15, 8);
    }
  }

  else
  {
    mach_o::Error::Error(a3, "load commands length (%llu) exceeds length of file (%llu)");
  }
}

uint64_t lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 40 * a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 40 * a2);
      v4 = result;
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          v8 = result + v6;
          v9 = (*(v3 + 8) + v6);
          v10 = *v9;
          v11 = v9[1];
          *(v8 + 32) = *(v9 + 4);
          *v8 = v10;
          *(v8 + 16) = v11;
          v5 = *(v3 + 16);
          v6 += 40;
        }
      }

      v12 = *(v3 + 8);
      if (v12)
      {
        result = lsl::Allocator::free(*v3, v12);
        v5 = *(v3 + 16);
      }

      if (v5 >= a2)
      {
        v5 = a2;
      }

      *(v3 + 8) = v4;
      *(v3 + 16) = v5;
    }

    *(v3 + 24) = a2;
  }

  return result;
}