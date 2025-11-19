void mach_o::Header::validSemanticsUUID(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, mach_o::Error *a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK6mach_o6Header18validSemanticsUUIDERKNS_6PolicyE_block_invoke;
  v7[3] = &unk_1EEE9C628;
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
  v6[3] = &unk_1EEE9C650;
  v6[4] = &v11;
  v6[5] = &v7;
  mach_o::Header::forEachLoadCommand(this, v6, v15);
  mach_o::Error::~Error(v15);
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
  v6 = mach_o::Policy::enforceNoDuplicateDylibs(a2);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZNK6mach_o6Header26validSemanticsLinkedDylibsERKNS_6PolicyE_block_invoke;
  v14[3] = &unk_1EEE9C678;
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
    v9 = v8 ? strlen(v8) : 0;
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

void mach_o::Header::validSemanticsRPath(mach_o::Header *this@<X0>, const mach_o::Policy *a2@<X1>, void *a3@<X8>)
{
  v5 = mach_o::Policy::enforceNoDuplicateDylibs(a2);
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
    v7[3] = &unk_1EEE9C6A0;
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
  v68 = 0;
  v69 = 0;
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
  v43[3] = &unk_1EEE9C6C8;
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
    v14 = mach_o::Policy::enforceNoDuplicateDylibs(a2);
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
              if (!memcmp(v22, *(v18 - 1), v21))
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
  if (v68)
  {
    MEMORY[0x1865C8D90](mach_task_self_, v68, v69);
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
  v4[3] = &unk_1EEE9C718;
  v4[4] = &v5;
  mach_o::Header::forEachLoadCommand(this, v4, v11);
  mach_o::Error::~Error(v11);
  mach_o::Error::Error(a2, v6 + 5);
  _Block_object_dispose(&v5, 8);
  mach_o::Error::~Error(&v10);
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
    v9[3] = &unk_1EEE9C6F0;
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

uint64_t ___ZNK6mach_o6Header18validSemanticsUUIDERKNS_6PolicyE_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 27)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

uint64_t mach_o::Header::hasSection(mach_o::Error *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK6mach_o6Header10hasSectionE7CStringS1_b_block_invoke;
  v8[3] = &unk_1EEE9C9D0;
  v9 = a6;
  v8[6] = a5;
  v8[7] = a2;
  v8[8] = a3;
  v8[4] = &v10;
  v8[5] = a4;
  mach_o::Header::forEachSection(a1, v8);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
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
            if (!strcmp(v12, *(*(a1 + 56) + 8 * v13)))
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

void mach_o::Header::forEachRPath(mach_o::Error *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o6Header12forEachRPathEU13block_pointerFvPKcRbE_block_invoke;
  v2[3] = &unk_1EEE9C9F8;
  v2[4] = a2;
  mach_o::Header::forEachLoadCommand(a1, v2, v3);
  mach_o::Error::~Error(v3);
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
        if (!strcmp(__s1, *(*(a1 + 48) + 8 * v9)) && *(a1 + 56) == 1)
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

double __Block_byref_object_copy__63(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  return result;
}

void *__Block_byref_object_dispose__64(void *result)
{
  result[7] = 0;
  if (result[8])
  {
    v1 = result[9];
    JUMPOUT(0x1865C8D90);
  }

  return result;
}

void ___ZNK6mach_o6Header22validSemanticsSegmentsERKNS_6PolicyEy_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 72);
  if (*a2 == 1)
  {
    v7 = (a2 + 8);
    if (!strcmp((a2 + 8), "__TEXT"))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 48) + 8) + 56);
    }

    else if (!strcmp((a2 + 8), "__LINKEDIT"))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
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
    if (!strcmp((a2 + 8), "__TEXT"))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 48) + 8) + 56);
    }

    else if (!strcmp((a2 + 8), "__LINKEDIT"))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
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
  v13 = strlen(v7);
  v18 = v7;
  v19 = v13;
  dyld3::OverflowSafeArray<mach_o::Header::validSemanticsSegments(mach_o::Policy const&,unsigned long long)::SegRange,4294967295ull>::push_back((v8 + 40), &v14);
LABEL_14:
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    *a3 = 1;
  }
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

  if ((v13 == 8 || v13 == 6 || v13 == 2 && (*(result + 24) & 4) != 0) && mach_o::Policy::enforceTextSegmentPermissions(this) && !strcmp((a4 + 8), "__TEXT") && *(a4 + 60) != 5)
  {
    v18 = "__TEXT segment permissions is not 'r-x'";
    goto LABEL_55;
  }

  result = mach_o::Policy::enforceReadOnlyLinkedit(this);
  if (result)
  {
    result = strcmp((a4 + 8), "__LINKEDIT");
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

  result = mach_o::Policy::enforceNoDuplicateDylibs(this);
  if (!result)
  {
    goto LABEL_25;
  }

  if (!strcmp((a4 + 8), "__DATA") && *(a4 + 60) != 3)
  {
    v18 = "__DATA segment permissions is not 'rw-'";
    goto LABEL_55;
  }

  result = strcmp((a4 + 8), "__DATA_CONST");
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
      dyld3::OverflowSafeArray<char,4294967295ull>::resize(v17, a1 + 4, v10);
    }

    memcpy(a1[3], *a1, 48 * a1[2]);
    v11 = a1[4] / 0x30;
    *a1 = a1[3];
    a1[1] = v11;
    if (v6)
    {
      MEMORY[0x1865C8D90](mach_task_self_, v6, v7);
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

uint64_t mach_o::Header::validSegment<segment_command,section>@<X0>(mach_o::Policy *this@<X1>, uint64_t result@<X0>, unint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 36);
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
    v14 = *(a4 + 28);
    if (v8 > v14)
    {
      if (v14 || *(a4 + 44))
      {
        return mach_o::Error::Error(a5, "segment '%s' filesize exceeds vmsize");
      }

LABEL_36:
      *a5 = 0;
      return result;
    }
  }

  if (*(a4 + 44) >= 8u)
  {
    return mach_o::Error::Error(a5, "%s segment permissions has invalid bits set (0x%08X)");
  }

  if ((v13 == 8 || v13 == 6 || v13 == 2 && (*(result + 24) & 4) != 0) && mach_o::Policy::enforceTextSegmentPermissions(this) && !strcmp((a4 + 8), "__TEXT") && *(a4 + 44) != 5)
  {
    v18 = "__TEXT segment permissions is not 'r-x'";
    goto LABEL_53;
  }

  result = mach_o::Policy::enforceReadOnlyLinkedit(this);
  if (result)
  {
    result = strcmp((a4 + 8), "__LINKEDIT");
    if (!result && *(a4 + 44) != 1)
    {
      v18 = "__LINKEDIT segment permissions is not 'r--'";
      goto LABEL_53;
    }
  }

  if (*(v12 + 3) == 9)
  {
    goto LABEL_25;
  }

  result = mach_o::Policy::enforceNoDuplicateDylibs(this);
  if (!result)
  {
    goto LABEL_25;
  }

  if (!strcmp((a4 + 8), "__DATA") && *(a4 + 44) != 3)
  {
    v18 = "__DATA segment permissions is not 'rw-'";
    goto LABEL_53;
  }

  result = strcmp((a4 + 8), "__DATA_CONST");
  if (!result)
  {
    if (*(a4 + 44) == 3)
    {
      if ((*(a4 + 52) & 0x10) == 0)
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
LABEL_53:

    return mach_o::Error::Error(a5, v18);
  }

LABEL_25:
  if (__CFADD__(*(a4 + 24), *(a4 + 28)))
  {
    return mach_o::Error::Error(a5, "'%s' segment vm range wraps");
  }

  if (*(v12 + 3) == 9)
  {
    goto LABEL_36;
  }

  v15 = *(a4 + 48);
  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = a4 + 68 * v15 + 56;
  v17 = a4 + 56;
  while (1)
  {
    if (*(v17 + 32) < *(a4 + 24))
    {
      v20 = *(v17 + 32);
      return mach_o::Error::Error(a5, "section '%s' start address 0x%lX is before containing segment's address 0x%0lX");
    }

    result = mach_o::Policy::enforceSectionsInSegment(this);
    if (result)
    {
      if (*(v17 + 36) + *(v17 + 32) > (*(a4 + 28) + *(a4 + 24)))
      {
        break;
      }
    }

    v17 += 68;
    if (v17 >= v16)
    {
      goto LABEL_36;
    }
  }

  v21 = (*(v17 + 36) + *(v17 + 32));
  return mach_o::Error::Error(a5, "section '%s' end address 0x%lX is beyond containing segment's end address 0x%0lX");
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
          dyld3::OverflowSafeArray<char,4294967295ull>::resize(v15, (a1 + 32), v12);
        }

        memcpy(*(a1 + 24), *a1, 48 * *(a1 + 16));
        v13 = *(a1 + 32) / 0x30uLL;
        *a1 = *(a1 + 24);
        *(a1 + 8) = v13;
        if (v8)
        {
          MEMORY[0x1865C8D90](mach_task_self_, v8, v9);
        }
      }
    }

    *(a1 + 16) = v5;
  }

  return *a1 + 48 * a2;
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

uint64_t mach_o::Header::entryAddrFromThreadCmd(mach_o::Header *this, const thread_command *a2, unint64_t *a3)
{
  result = 0;
  cmd = a2[1].cmd;
  v6 = *(this + 1);
  if (v6 <= 16777222)
  {
    if (v6 == 7)
    {
      if (cmd == 1)
      {
        cmdsize = a2[7].cmd;
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 != 12)
      {
        return result;
      }

      if (cmd == 1)
      {
        cmdsize = a2[9].cmdsize;
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (v6 == 16777223)
  {
    if (cmd == 4)
    {
      cmdsize = a2[18];
      goto LABEL_18;
    }

    return 0;
  }

  if (v6 == 16777228 || v6 == 33554444)
  {
    if (cmd == 6)
    {
      cmdsize = a2[34];
LABEL_18:
      *a3 = cmdsize;
      return 1;
    }

    return 0;
  }

  return result;
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
    v8[3] = &unk_1EEE9D620;
    v8[4] = &v10;
    v8[5] = v5;
    v9 = *(a2 + 2);
    mach_o::PlatformAndVersions::unzip(&v14, v8);
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return v6 & 1;
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
        v9 += strlen(v9) + 1;
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

uint64_t ___ZNK6mach_o6Header14hasLoadCommandEj_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZNK6mach_o6Header26forEachPlatformLoadCommandEU13block_pointerFvNS_8PlatformENS_9Version32ES2_E_block_invoke(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 48);
  v5 = *a2;
  if (*a2 <= 46)
  {
    if (v5 == 36)
    {
      v10 = a2[2];
      v11 = a2[3];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      v7 = *(result + 32);
      v14 = &mach_o::PlatformInfo_macOS::singleton;
      v15 = 0;
      goto LABEL_23;
    }

    if (v5 != 37)
    {
      return result;
    }

    v7 = *(result + 32);
    if ((*(v4 + 4) | 0x1000000) == 0x1000007)
    {
      v8 = &mach_o::Platform::iOS_simulator;
    }

    else
    {
      v8 = &mach_o::Platform::iOS;
    }
  }

  else
  {
    if (v5 == 47)
    {
      v7 = *(result + 32);
      if (*(v4 + 4) == 16777223)
      {
        v9 = &mach_o::Platform::tvOS_simulator;
      }

      else
      {
        v9 = &mach_o::Platform::tvOS;
      }

      v14 = *v9;
      v15 = *(v9 + 2);
      v10 = a2[2];
      v12 = a2[3];
      v13 = *(v7 + 16);
      goto LABEL_24;
    }

    if (v5 != 48)
    {
      if (v5 != 50)
      {
        return result;
      }

      v6 = *(result + 32);
      mach_o::Platform::Platform(&v14, a2[2]);
      result = (*(v6 + 16))(v6, &v14, a2[3], a2[4]);
      goto LABEL_25;
    }

    v7 = *(result + 32);
    if ((*(v4 + 4) | 0x1000000) == 0x1000007)
    {
      v8 = &mach_o::Platform::watchOS_simulator;
    }

    else
    {
      v8 = &mach_o::Platform::watchOS;
    }
  }

  v14 = *v8;
  v15 = *(v8 + 2);
  v10 = a2[2];
  v12 = a2[3];
LABEL_23:
  v13 = *(v7 + 16);
LABEL_24:
  result = v13(v7, &v14, v10, v12);
LABEL_25:
  *(*(*(v3 + 40) + 8) + 24) = 1;
  return result;
}

uint64_t ___ZNK6mach_o6Header16builtForPlatformENS_8PlatformEb_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *a2 == *(result + 40) && *(a2 + 8) == *(result + 48);
  *(*(*(result + 32) + 8) + 24) |= v2;
  return result;
}

uint64_t __copy_helper_block_8_40c22_ZTSN6mach_o8PlatformE(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t mach_o::Header::getUuid(mach_o::Header *this, unsigned __int8 *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK6mach_o6Header7getUuidEPh_block_invoke;
  v6[3] = &unk_1EEE9C7B8;
  v6[4] = &v7;
  v6[5] = a2;
  mach_o::Header::forEachLoadCommand(this, v6, v11);
  mach_o::Error::~Error(v11);
  v3 = v8;
  if (v8[3])
  {
    v4 = 1;
  }

  else
  {
    bzero(a2, 0x10uLL);
    v4 = *(v3 + 24);
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

__n128 ___ZNK6mach_o6Header7getUuidEPh_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 27)
  {
    result = *(a2 + 8);
    **(a1 + 40) = result;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::sourceVersion(mach_o::Error *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header13sourceVersionERNS_9Version64E_block_invoke;
  v4[3] = &unk_1EEE9C7E0;
  v4[4] = &v5;
  v4[5] = a2;
  mach_o::Header::forEachLoadCommand(a1, v4, v9);
  mach_o::Error::~Error(v9);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header13sourceVersionERNS_9Version64E_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 42)
  {
    **(result + 40) = *(a2 + 8);
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::linkedDylibLoadPath(mach_o::Header *this, int a2)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header19linkedDylibLoadPathEj_block_invoke;
  v4[3] = &unk_1EEE9C808;
  v5 = a2;
  v4[4] = v10;
  v4[5] = &v6;
  mach_o::Header::forEachLoadCommand(this, v4, v12);
  mach_o::Error::~Error(v12);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header19linkedDylibLoadPathEj_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 + 2147483624) <= 0xB && ((1 << (*a2 - 24)) & 0x881) != 0 || *a2 == 12)
  {
    v4 = *(*(result + 32) + 8);
    v5 = *(v4 + 24);
    if (v5 == *(result + 48))
    {
      *(*(*(result + 40) + 8) + 24) = a2 + a2[2];
      v4 = *(*(result + 32) + 8);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
  }

  return result;
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
  v4[3] = &unk_1EEE9C830;
  v4[4] = &v5;
  v4[5] = a2;
  mach_o::Header::forEachLinkedDylib(this, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
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
    v12[3] = &unk_1EEE9C858;
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
          if (!strncmp(v10, "/System/ExclaveKit/usr/lib/system/", 0x22uLL))
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
          if (!strncmp(v11, "/usr/lib/system/", 0x10uLL))
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
        if (!strncmp(v6, "/System/DriverKit/usr/lib/system/", 0x21uLL))
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

uint64_t mach_o::Header::hasCodeSignature(mach_o::Header *this, unsigned int *a2, unsigned int *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK6mach_o6Header16hasCodeSignatureERjS1__block_invoke;
  v9[3] = &unk_1EEE9C880;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = &v10;
  mach_o::Header::forEachLoadCommand(this, v9, &v6);
  mach_o::Error::~Error(&v6);
  if (*(this + 1) == 16777223 && (mach_o::Header::platformAndVersions(this, &v6), v6 == &mach_o::PlatformInfo_macOS::singleton) && !v7 && v8 >> 8 < 0xA09)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v4 & 1;
}

uint64_t ___ZNK6mach_o6Header16hasCodeSignatureERjS1__block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 29)
  {
    v3 = *(result + 48);
    **(result + 40) = a2[2];
    *v3 = a2[3];
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::hasSplitSegInfo(mach_o::Header *this, BOOL *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o6Header15hasSplitSegInfoERb_block_invoke;
  v4[3] = &unk_1EEE9C8A8;
  v4[4] = &v5;
  v4[5] = a2;
  mach_o::Header::forEachLoadCommand(this, v4, v9);
  mach_o::Error::~Error(v9);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK6mach_o6Header15hasSplitSegInfoERb_block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 30)
  {
    **(result + 40) = a2[3] == 0;
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t mach_o::Header::zerofillExpansionAmount(mach_o::Header *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header23zerofillExpansionAmountEv_block_invoke;
  v3[3] = &unk_1EEE9C9A8;
  v3[4] = v4;
  v3[5] = &v5;
  mach_o::Header::forEachLoadCommand(this, v3, v9);
  mach_o::Error::~Error(v9);
  v1 = v6[3];
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(&v5, 8);
  return v1;
}

const char *mach_o::Header::libOrdinalName(mach_o::Header *this, int a2)
{
  v2 = a2 + 3;
  if ((a2 + 3) >= 4)
  {
    v5 = a2 - 1;
    if (a2 >= 1 && mach_o::Header::linkedDylibCount(this, 0) >= a2)
    {
      Path = mach_o::Header::linkedDylibLoadPath(this, v5);
      v4 = Path;
      if (Path)
      {
        strlen(Path);
      }
    }

    else
    {
      return "<invalid-lib-ordinal>";
    }
  }

  else
  {
    v3 = qword_180110780[v2];
    return off_1EEE9CA18[v2];
  }

  return v4;
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
      v9 = &qword_1EEE9C8D0;
      v10 = 96;
      while (*v9 != a4 || memcmp(*(v9 - 1), a3, a4))
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

mach_o::Header *mach_o::Header::computeLinkEditBias(mach_o::Header *this, int a2)
{
  v2 = this;
  if (a2)
  {
    return (this + mach_o::Header::zerofillExpansionAmount(this));
  }

  return v2;
}

uint64_t ___ZNK6mach_o6Header23zerofillExpansionAmountEv_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    result = strcmp((a2 + 8), "__TEXT");
    if (result)
    {
      result = strcmp((a2 + 8), "__LINKEDIT");
      if (result)
      {
        return result;
      }

      v6 = *(a2 + 24);
      v7 = *(v5 + 40);
      v8 = *(*(*(v5 + 32) + 8) + 24);
      v9 = *(a2 + 32);
      goto LABEL_9;
    }

    v10 = *(a2 + 24);
  }

  else
  {
    if (*a2 != 25)
    {
      return result;
    }

    result = strcmp((a2 + 8), "__TEXT");
    if (result)
    {
      result = strcmp((a2 + 8), "__LINKEDIT");
      if (result)
      {
        return result;
      }

      v6 = *(a2 + 24);
      v7 = *(v5 + 40);
      v8 = *(*(*(v5 + 32) + 8) + 24);
      v9 = *(a2 + 40);
LABEL_9:
      *(*(v7 + 8) + 24) = v6 - v9 - v8;
      *a3 = 1;
      return result;
    }

    v10 = *(a2 + 24);
  }

  *(*(*(v5 + 32) + 8) + 24) = v10;
  return result;
}

uint64_t ___ZNK6mach_o6Header10hasSectionE7CStringS1_b_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = *(a2 + 8);
  if (v4 == *(result + 48))
  {
    v6 = result;
    result = memcmp(*a2, *(result + 40), v4);
    if (!result)
    {
      if (*(v6 + 72) == 1 && (v7 = *(v6 + 64), *(a2 + 24) >= v7) && (result = std::string_view::compare[abi:nn200100]((a2 + 16), 0, v7, *(v6 + 56), *(v6 + 64)), !result) || (v8 = *(a2 + 24), v8 == *(v6 + 64)) && (result = memcmp(*(a2 + 16), *(v6 + 56), v8), !result))
      {
        *(*(*(v6 + 32) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }

  return result;
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

uint64_t mach_o::warning(uint64_t this, const void *a2, const char *a3, ...)
{
  va_start(va, a3);
  if (mach_o::sHandler)
  {
    return mach_o::sHandler(this, a2, va);
  }

  return this;
}

uint64_t mach_o::Platform::Platform(uint64_t this, int a2)
{
  v2 = 0;
  *this = 0;
  *(this + 8) = 0;
  while (1)
  {
    v3 = (&mach_o::PlatformInfo::knownPlatformInfos)[v2];
    v4 = *(v3 + 12);
    if (!v4)
    {
      mach_o::Platform::Platform();
    }

    if (v4 == a2)
    {
      break;
    }

    if (++v2 == 31)
    {
      *(this + 8) = a2;
      return this;
    }
  }

  *this = v3;
  return this;
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

uint64_t mach_o::Platform::isSimulator(mach_o::Platform *this)
{
  v1 = *this;
  if (*this)
  {
    LOBYTE(v1) = *(v1 + 54);
  }

  return v1 & 1;
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

const char *mach_o::Platform::libSystemDir(mach_o::Platform *this)
{
  v1 = *this;
  if (*this == &mach_o::PlatformInfo_sepOS::singleton || v1 == &mach_o::PlatformInfo_firmware::singleton)
  {
    if (!*(this + 2))
    {
      return &unk_1801109D5;
    }
  }

  else if (!v1)
  {
    return "/usr/lib/system/";
  }

  if (*(v1 + 55) & 1) != 0 || (*(v1 + 57))
  {
    return &unk_1801109D5;
  }

  if (v1 != &mach_o::PlatformInfo_driverKit::singleton || *(this + 2))
  {
    if (*(v1 + 56))
    {
      return "/System/ExclaveKit/usr/lib/system/";
    }

    return "/usr/lib/system/";
  }

  return "/System/DriverKit/usr/lib/system/";
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

void mach_o::PlatformAndVersions::zip(uint64_t *a1@<X0>, uint64_t *a2@<X1>, mach_o::Error *a3@<X8>)
{
  if (!*a1 && !*(a1 + 2))
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    goto LABEL_30;
  }

  if (*a2)
  {
    v15 = 0;
  }

  else
  {
    mach_o::Error::Error(&v15, "unknown platform");
    if (v15)
    {
      mach_o::Error::Error(a3, "can't zip with invalid platform");
      mach_o::Error::~Error(&v15);
      return;
    }
  }

  mach_o::Error::~Error(&v15);
  v6 = *a1;
  v7 = *a2;
  if (*a1 == *a2)
  {
    v8 = *(a1 + 2);
    if (v8 == *(a2 + 2))
    {
      *a1 = v7;
      *(a1 + 2) = v8;
LABEL_30:
      v11 = *(a2 + 1);
LABEL_31:
      *(a1 + 1) = v11;
LABEL_32:
      *a3 = 0;
      return;
    }
  }

  if (v6 == &mach_o::PlatformInfo_macOS::singleton && v7 == &mach_o::PlatformInfo_macCatalyst::singleton && !*(a1 + 2))
  {
    if (!*(a2 + 2))
    {
      *a1 = &mach_o::PlatformInfo_zippered::singleton;
LABEL_41:
      v14 = a2[2];
      *(a1 + 2) = 0;
      a1[3] = v14;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (v7 == &mach_o::PlatformInfo_macOS::singleton && v6 == &mach_o::PlatformInfo_macCatalyst::singleton && !*(a2 + 2))
  {
    if (*(a1 + 2))
    {
      goto LABEL_34;
    }

    v11 = *(a2 + 1);
    v12 = a1[2];
    *a1 = &mach_o::PlatformInfo_zippered::singleton;
LABEL_45:
    *(&v11 + 1) = v12;
    goto LABEL_31;
  }

  if (v6 == &mach_o::PlatformInfo_zippered::singleton)
  {
    if (!*(a1 + 2))
    {
      v13 = *(a2 + 2);
      if (v7 == &mach_o::PlatformInfo_macCatalyst::singleton && !v13)
      {
        *a1 = &mach_o::PlatformInfo_zippered::singleton;
        goto LABEL_41;
      }

      if (v7 == &mach_o::PlatformInfo_macOS::singleton && !v13)
      {
        v11 = *(a2 + 1);
        v12 = a1[3];
        *a1 = &mach_o::PlatformInfo_zippered::singleton;
        *(a1 + 2) = 0;
        goto LABEL_45;
      }
    }
  }

  else if (!v6)
  {
    if (*(a1 + 2))
    {
      v9 = "future";
    }

    else
    {
      v9 = "unknown";
    }

    if (v7)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (*(a2 + 2))
    {
      v10 = "future";
    }

    else
    {
      v10 = "unknown";
    }

    goto LABEL_36;
  }

LABEL_34:
  v9 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_35:
  v10 = *(v7 + 16);
LABEL_36:
  mach_o::Error::Error(a3, "incompatible platforms: %s - %s", v9, v10);
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

uint64_t mach_o::PlatformInfo_macOS::yearForVersion(uint64_t a1, unsigned int a2, _WORD *a3, BOOL *a4)
{
  if (a2 >= 0xB0000)
  {
    return mach_o::PlatformInfo::yearForMajorVersion(a1, a2, a3, a4);
  }

  v4 = (a2 + 16121856) >> 8;
  *a3 = v4 + 2004;
  *a4 = (a2 & 0xFC) != 0;
  if ((a2 & 0xFC) != 0)
  {
    *a3 = v4 + 2003;
  }

  return a1;
}

uint64_t mach_o::PlatformInfo_macOS::minorVersionForSpring(mach_o::PlatformInfo_macOS *this, unsigned int a2)
{
  if (a2 < 0xE)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t mach_o::PlatformInfo_bridgeOS::minorVersionForSpring(mach_o::PlatformInfo_bridgeOS *this, unsigned int a2)
{
  if (a2 < 9)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t mach_o::PlatformInfo_visionOS::minorVersionForSpring(mach_o::PlatformInfo_visionOS *this, int a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  else
  {
    return 4;
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

void *mach_o::FunctionStarts::FunctionStarts(void *this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = a2;
  this[1] = &a2[a3];
  return this;
}

double mach_o::CompactUnwind::CompactUnwind(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  result = *a2;
  *a1 = *a2;
  a1[1] = a3;
  a1[2] = a4;
  return result;
}

uint64_t mach_o::Symbol::makeRegularExport@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 33) = a4;
  if (a7)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  *(a9 + 34) = v9;
  *(a9 + 16) = a3;
  if (a5)
  {
    *(a9 + 36) = 1;
    if (!a6)
    {
LABEL_6:
      if (!a8)
      {
        return result;
      }

LABEL_10:
      *(a9 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_6;
  }

  *(a9 + 37) = 1;
  if (a8)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t mach_o::Symbol::makeRegularHidden@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 34) = 2;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeRegularLocal@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeRegularWasPrivateExtern@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 34) = 1;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeWeakDefExport@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 34) = 260;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeWeakDefAutoHide@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 34) = 259;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeWeakDefHidden@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 34) = 258;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeWeakDefWasPrivateExtern@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 33) = a4;
  *(a8 + 34) = 257;
  *(a8 + 16) = a3;
  if (a5)
  {
    *(a8 + 36) = 1;
    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        return result;
      }

LABEL_7:
      *(a8 + 39) = 1;
      return result;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  *(a8 + 37) = 1;
  if (a7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeAltEntry@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 32) = 1;
  *(a9 + 33) = a4;
  *(a9 + 34) = a5;
  *(a9 + 35) = a8;
  *(a9 + 16) = a3;
  if (a6)
  {
    *(a9 + 36) = 1;
  }

  if (!a7)
  {
    if (!a10)
    {
      return result;
    }

LABEL_7:
    *(a9 + 39) = 1;
    return result;
  }

  *(a9 + 37) = 1;
  if (a10)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mach_o::Symbol::makeDynamicResolver@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 24) = a4;
  *(a7 + 32) = 0;
  *(a7 + 32) = 2;
  *(a7 + 34) = a6;
  *(a7 + 33) = a3;
  *(a7 + 16) = a5;
  return result;
}

uint64_t mach_o::Symbol::makeFunctionVariantExport@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 32) = 8;
  *(a6 + 34) = 4;
  *(a6 + 33) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t mach_o::Symbol::makeThreadLocalExport@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
  *(a8 + 32) = 5;
  *(a8 + 34) = 4;
  *(a8 + 33) = a4;
  *(a8 + 16) = a3;
  *(a8 + 35) = a7;
  if (!a5)
  {
    if (!a6)
    {
      return result;
    }

LABEL_5:
    *(a8 + 37) = 1;
    return result;
  }

  *(a8 + 36) = 1;
  if (a6)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t mach_o::Symbol::makeAbsolute@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 32) = 3;
  *(a7 + 34) = a5;
  *(a7 + 16) = a3;
  *(a7 + 33) = a6;
  if (a4)
  {
    *(a7 + 36) = 1;
  }

  return result;
}

uint64_t mach_o::Symbol::makeReExport@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0;
  *(a6 + 32) = 4;
  *(a6 + 34) = a5;
  *(a6 + 16) = a3;
  return result;
}

uint64_t mach_o::Symbol::makeUndefined@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 32) = 7;
  *(a5 + 34) = 4;
  *(a5 + 16) = a3;
  *(a5 + 38) = a4;
  return result;
}

uint64_t mach_o::Symbol::makeTentativeDef@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 32) = 6;
  *(a7 + 34) = 4;
  *(a7 + 33) = a4;
  *(a7 + 16) = a3;
  if (!a5)
  {
    if (!a6)
    {
      return result;
    }

LABEL_5:
    *(a7 + 37) = 1;
    return result;
  }

  *(a7 + 36) = 1;
  if (a6)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t mach_o::Symbol::makeHiddenTentativeDef@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 32) = 6;
  *(a7 + 34) = 2;
  *(a7 + 33) = a4;
  *(a7 + 16) = a3;
  if (!a5)
  {
    if (!a6)
    {
      return result;
    }

LABEL_5:
    *(a7 + 37) = 1;
    return result;
  }

  *(a7 + 36) = 1;
  if (a6)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t mach_o::Symbol::implOffset(mach_o::Symbol *this)
{
  if (*(this + 32) - 3 <= 1)
  {
    mach_o::Symbol::implOffset();
  }

  return *(this + 2);
}

BOOL mach_o::Symbol::isDynamicResolver(mach_o::Symbol *this, unint64_t *a2)
{
  v2 = *(this + 32);
  if (v2 == 2)
  {
    *a2 = *(this + 3);
  }

  return v2 == 2;
}

BOOL mach_o::Symbol::isReExport(mach_o::Symbol *this, int *a2, const char **a3)
{
  v3 = *(this + 32);
  if (v3 == 4)
  {
    *a2 = *(this + 2);
    v4 = *(this + 3);
    if (!v4)
    {
      v4 = *this;
    }

    *a3 = v4;
  }

  return v3 == 4;
}

BOOL mach_o::Symbol::isAbsolute(mach_o::Symbol *this, unint64_t *a2)
{
  v2 = *(this + 32);
  if (v2 == 3)
  {
    *a2 = *(this + 2);
  }

  return v2 == 3;
}

void mach_o::GenericTrie::recurseTrie(uint64_t a1@<X0>, const unsigned __int8 **a2@<X1>, void *a3@<X2>, BOOL *a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, mach_o::Error *a7@<X8>)
{
  v30 = a2;
  v9 = *(a1 + 8);
  if (v9 <= a2)
  {

    mach_o::Error::Error(a7, "malformed trie, node past end");
  }

  else
  {
    LODWORD(v12) = a4;
    v29 = 0;
    v15 = mach_o::read_uleb128(&v30, v9, &v29, a4);
    if (v29 == 1)
    {
LABEL_3:
      mach_o::Error::Error(a7, "malformed uleb128", v27);
    }

    else
    {
      v16 = v30 + v15;
      if (v30 + v15 <= *(a1 + 8))
      {
        if (!v15)
        {
          goto LABEL_33;
        }

        if (a6)
        {
          (*(a6 + 16))(a6, *a3);
        }

        if (*a5 != 1)
        {
LABEL_33:
          v18 = *v16;
          v17 = v18;
          v28 = (v16 + 1);
          if (v18)
          {
            v19 = 0;
            v12 = v12;
            v27 = v12;
            while ((*a5 & 1) == 0)
            {
              v20 = v28;
              while (*v20)
              {
                dyld3::OverflowSafeArray<char,4294967295ull>::resize(a3, v12 + 1);
                v21 = v28;
                v28 = (v28 + 1);
                v22 = *v21;
                if (a3[2] <= v12)
                {
                  dyld3::OverflowSafeArray<char,4294967295ull>::resize(a3, v12 + 1);
                }

                *(*a3 + v12) = v22;
                v20 = v28;
                ++v12;
                if (v28 > *(a1 + 8))
                {
                  mach_o::Error::Error(a7, "malformed trie node, child node name extends beyond trie data", v27);
                  return;
                }
              }

              dyld3::OverflowSafeArray<char,4294967295ull>::resize(a3, v12 + 1);
              v24 = v28;
              v28 = (v28 + 1);
              v25 = *v24;
              if (a3[2] <= v12)
              {
                dyld3::OverflowSafeArray<char,4294967295ull>::resize(a3, v12 + 1);
              }

              *(*a3 + v12) = v25;
              v26 = mach_o::read_uleb128(&v28, *(a1 + 8), &v29, v23);
              if (v29 == 1)
              {
                goto LABEL_3;
              }

              if (!v26)
              {
                mach_o::Error::Error(a7, "malformed trie, childNodeOffset==0", v27);
                return;
              }

              mach_o::GenericTrie::recurseTrie(a1, *a1 + v26, a3, v12, a5, a6);
              if (*a7)
              {
                return;
              }

              mach_o::Error::~Error(a7);
              ++v19;
              v12 = v27;
              if (v19 >= v17)
              {
                break;
              }
            }
          }
        }

        *a7 = 0;
      }

      else
      {
        mach_o::Error::Error(a7, "malformed trie, terminalSize extends beyond trie data");
      }
    }
  }
}

void mach_o::GenericTrie::forEachEntry(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = *v1;
  if (*v1 != v1[1])
  {
    v11 = 0;
    v7[0] = &v12;
    v7[1] = 4096;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = ___ZNK6mach_o11GenericTrie12forEachEntryEU13block_pointerFvRKNS0_5EntryERbE_block_invoke;
    v5[3] = &unk_1EEE9CAF0;
    v5[4] = v3;
    mach_o::GenericTrie::recurseTrie(v1, v4, v7, 0, &v11, v5, v6);
    mach_o::Error::~Error(v6);
    v8 = 0;
    if (v9)
    {
      MEMORY[0x1865C8D90](mach_task_self_, v9, v10);
    }
  }
}

uint64_t ___ZNK6mach_o11GenericTrie12forEachEntryEU13block_pointerFvRKNS0_5EntryERbE_block_invoke(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = __s;
  v11[1] = strlen(__s);
  v11[2] = a3;
  v11[3] = a4;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v11, a5, v9);
}

mach_o::Error *mach_o::ExportsTrie::terminalPayloadToSymbol@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X3>, mach_o::Error *a4@<X8>)
{
  v41 = 0;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v40 = v7;
  v9 = mach_o::read_uleb128(&v40, (v7 + v8), &v41, a3);
  if (v41 == 1)
  {
    return mach_o::Error::Error(a4, "malformed uleb128");
  }

  v12 = v9;
  if (v9 < 0x40)
  {
    v13 = mach_o::read_uleb128(&v40, (v7 + v8), &v41, v10);
    if (v41 != 1)
    {
      v15 = v13;
      if ((v12 & 3) == 1)
      {
        v17 = *a1;
        if (v17)
        {
          v18 = strlen(v17);
        }

        else
        {
          v18 = 0;
        }

        result = mach_o::Symbol::makeThreadLocalExport(v17, v18, v15, 0, 0, 0, (v12 & 4) != 0, &v37);
        goto LABEL_27;
      }

      if ((v12 & 3) == 2)
      {
        if (*a1)
        {
          v16 = strlen(*a1);
        }

        else
        {
          v16 = 0;
        }

        result = mach_o::Symbol::makeAbsolute(*a1, v16, v15, 0, 4, 0, &v37);
LABEL_27:
        v25 = v38;
        *a2 = v37;
        *(a2 + 16) = v25;
        *(a2 + 32) = v39;
LABEL_28:
        *a4 = 0;
        return result;
      }

      if ((v12 & 8) != 0)
      {
        v20 = *a1;
        v21 = v40;
        if (*v40)
        {
          v22 = (v40 + 1);
          do
          {
            v40 = v22;
            v23 = *v22;
            v22 = (v22 + 1);
          }

          while (v23);
          v24 = (v22 - 1);
        }

        else
        {
          v24 = v40;
          v21 = v20;
        }

        v40 = (v24 + 1);
        if (v20)
        {
          v30 = strlen(v20);
        }

        else
        {
          v30 = 0;
        }

        result = mach_o::Symbol::makeReExport(v20, v30, v15, v21, 4, &v37);
        v31 = v38;
        *a2 = v37;
        *(a2 + 16) = v31;
        *(a2 + 32) = v39;
        if ((v12 & 4) != 0)
        {
          *(a2 + 35) = 1;
        }

        goto LABEL_28;
      }

      if (v12 >= 0x20)
      {
        v26 = mach_o::read_uleb128(&v40, (v7 + v8), &v41, v14);
        if (v41 != 1)
        {
          v27 = v26;
          v28 = *a1;
          if (v28)
          {
            v29 = strlen(v28);
          }

          else
          {
            v29 = 0;
          }

          result = mach_o::Symbol::makeFunctionVariantExport(v28, v29, 0, v15, v27, &v37);
          goto LABEL_27;
        }
      }

      else
      {
        if (v12 < 0x10)
        {
          if (v12 >= 4)
          {
            if (*a1)
            {
              v36 = strlen(*a1);
            }

            else
            {
              v36 = 0;
            }

            result = mach_o::Symbol::makeWeakDefExport(*a1, v36, v15, 0, 0, 0, 0, &v37);
          }

          else
          {
            if (*a1)
            {
              v19 = strlen(*a1);
            }

            else
            {
              v19 = 0;
            }

            result = mach_o::Symbol::makeRegularExport(*a1, v19, v15, 0, 0, 0, 0, 0, &v37);
          }

          goto LABEL_27;
        }

        v32 = mach_o::read_uleb128(&v40, (v7 + v8), &v41, v14);
        if (v41 != 1)
        {
          v33 = v32;
          v34 = *a1;
          if (v34)
          {
            v35 = strlen(v34);
          }

          else
          {
            v35 = 0;
          }

          result = mach_o::Symbol::makeDynamicResolver(v34, v35, 1, v15, v33, 4, &v37);
          goto LABEL_27;
        }
      }
    }

    return mach_o::Error::Error(a4, "malformed uleb128");
  }

  return mach_o::Error::Error(a4, "unknown exports flag bits");
}

void ___ZNK6mach_o11ExportsTrie21forEachExportedSymbolEU13block_pointerFvRKNS_6SymbolERbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v7 = &unk_1801109D5;
  v8 = 0u;
  v9 = 0u;
  mach_o::ExportsTrie::terminalPayloadToSymbol(a2, &v7, a4, &v6);
  v5 = v6;
  mach_o::Error::~Error(&v6);
  if (!v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void mach_o::ExportsTrie::valid(mach_o::ExportsTrie *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v5 = v4;
  v6 = v3;
  v7 = *v1;
  if (*v1 == v1[1])
  {
    *v3 = 0;
  }

  else
  {
    v18[0] = &v22;
    v18[1] = 4096;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3002000000;
    v14 = __Block_byref_object_copy__3;
    v15 = __Block_byref_object_dispose__3;
    v16 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZNK6mach_o11ExportsTrie5validEyy_block_invoke;
    v9[3] = &unk_1EEE9CB40;
    v9[4] = &v11;
    v9[5] = v1;
    v9[6] = v5;
    v9[7] = v2;
    mach_o::GenericTrie::recurseTrie(v1, v7, v18, 0, &v17, v9, &v10);
    if (v10)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v12 + 5;
    }

    mach_o::Error::Error(v6, v8);
    mach_o::Error::~Error(&v10);
    _Block_object_dispose(&v11, 8);
    mach_o::Error::~Error(&v16);
    v19 = 0;
    if (v20)
    {
      MEMORY[0x1865C8D90](mach_task_self_, v20, v21);
    }
  }
}

void ___ZNK6mach_o11ExportsTrie5validEyy_block_invoke(void *a1, char *__s, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v18[0] = __s;
  v18[1] = strlen(__s);
  v18[2] = a3;
  v18[3] = a4;
  v15 = &unk_1801109D5;
  v16 = 0u;
  v17 = 0u;
  mach_o::ExportsTrie::terminalPayloadToSymbol(v18, &v15, v9, &v14);
  if (v14)
  {
    mach_o::Error::operator=((*(a1[4] + 8) + 40), &v14);
    *a5 = 1;
    mach_o::Error::~Error(&v14);
  }

  else
  {
    mach_o::Error::~Error(&v14);
    v14 = 0;
    v13 = 0;
    v12 = 0;
    if (!mach_o::Symbol::isAbsolute(&v15, &v14) && !mach_o::Symbol::isReExport(&v15, &v13, &v12))
    {
      v10 = mach_o::Symbol::implOffset(&v15);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v10 = a1[6] - v10;
      }

      if (v10 > a1[7])
      {
        mach_o::Error::Error(&v11, "vmOffset too large for %s", v15);
        mach_o::Error::operator=((*(a1[4] + 8) + 40), &v11);
        mach_o::Error::~Error(&v11);
        *a5 = 1;
      }
    }
  }
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

BOOL mach_o::Policy::enforceHasUUID(mach_o::Policy *this)
{
  v1 = *(this + 12);
  if (v1 == 1)
  {
    return 0;
  }

  if (v1 == 2)
  {
    v2 = &mach_o::Platform::Epoch::fall2025;
  }

  else
  {
    v2 = &mach_o::Platform::Epoch::fall2021;
  }

  return *(this + 1) >= *v2;
}

void *mach_o::ChainedFixups::ChainedFixups(void *this, const dyld_chained_fixups_header *a2, uint64_t a3)
{
  *this = a2;
  this[1] = 0;
  this[2] = a3;
  return this;
}

void mach_o::ChainedFixups::forEachBindTarget(mach_o::Error *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZNK6mach_o13ChainedFixups17forEachBindTargetEU13block_pointerFvRKNS_5Fixup10BindTargetERbE_block_invoke;
  v2[3] = &unk_1EEE9CB68;
  v2[4] = a2;
  mach_o::ChainedFixups::forEachBindTarget(a1, v2, v3);
  mach_o::Error::~Error(v3);
}

mach_o::Error *mach_o::ChainedFixups::forEachBindTarget@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 8);
  v6 = *(result + 2);
  if (v6 >= v5)
  {
    v8 = v4[3];
    v9 = v6 - v8;
    if (v6 < v8)
    {
      v7 = "malformed import table, symbols_offset too large";
      goto LABEL_5;
    }

    v11 = result;
    v12 = v4 + v8;
    v29 = 0;
    v13 = v4[5];
    switch(v13)
    {
      case 3u:
        if (v4[4])
        {
          v23 = 0;
          v24 = (v4 + v5 + 8);
          while (1)
          {
            v25 = *(v24 - 1);
            if (HIDWORD(v25) > v9)
            {
              return mach_o::Error::Error(a3, "malformed import table, imports[%d].name_offset (%d) out of range");
            }

            if (*(v24 - 1) <= 0xFFF0u)
            {
              v26 = *(v24 - 1);
            }

            else
            {
              v26 = v25;
            }

            v27 = *v24;
            v24 += 2;
            result = (*(a2 + 16))(a2, v26, &v12[HIDWORD(v25)], v27, (v25 >> 16) & 1, &v29);
            if (++v23 >= *(*v11 + 16) || (v29 & 1) != 0)
            {
              goto LABEL_37;
            }
          }
        }

        break;
      case 2u:
        if (v4[4])
        {
          v18 = 0;
          v19 = (v4 + v5 + 4);
          while (1)
          {
            v20 = *(v19 - 1);
            if (v9 < v20 >> 9)
            {
              return mach_o::Error::Error(a3, "malformed import table, imports[%d].name_offset (%d) out of range");
            }

            if (*(v19 - 1) <= 0xF0u)
            {
              v21 = *(v19 - 1);
            }

            else
            {
              v21 = v20;
            }

            v22 = *v19;
            v19 += 2;
            result = (*(a2 + 16))(a2, v21, &v12[v20 >> 9], v22, (v20 >> 8) & 1, &v29);
            if (++v18 >= *(*v11 + 16) || (v29 & 1) != 0)
            {
              goto LABEL_37;
            }
          }
        }

        break;
      case 1u:
        if (v4[4])
        {
          v14 = 0;
          v15 = v4 + v5;
          while (1)
          {
            v16 = *&v15[4 * v14];
            if (v9 < v16 >> 9)
            {
              return mach_o::Error::Error(a3, "malformed import table, imports[%d].name_offset (%d) out of range");
            }

            if (*&v15[4 * v14] <= 0xF0u)
            {
              v17 = *&v15[4 * v14];
            }

            else
            {
              v17 = v16;
            }

            result = (*(a2 + 16))(a2, v17, &v12[v16 >> 9], 0, (v16 >> 8) & 1, &v29);
            if (++v14 >= *(*v11 + 16) || (v29 & 1) != 0)
            {
              goto LABEL_37;
            }
          }
        }

        break;
      default:
        v28 = v4[5];
        return mach_o::Error::Error(a3, "unknown imports format %d");
    }

LABEL_37:
    *a3 = 0;
    return result;
  }

  v7 = "malformed import table, imports_offset too large";
LABEL_5:

  return mach_o::Error::Error(a3, v7);
}

uint64_t ___ZNK6mach_o13ChainedFixups17forEachBindTargetEU13block_pointerFvRKNS_5Fixup10BindTargetERbE_block_invoke(uint64_t a1, int a2, char *__s, uint64_t a4, char a5, uint64_t a6)
{
  if (__s)
  {
    v12 = strlen(__s);
  }

  else
  {
    v12 = 0;
  }

  v14[0] = __s;
  v14[1] = v12;
  v15 = a2;
  v16 = a5;
  v17 = a4;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), v14, a6, a4);
}

_UNKNOWN **mach_o::ChainedFixups::PointerFormat::make(mach_o::ChainedFixups::PointerFormat *this)
{
  if ((this - 2) > 0xC)
  {
    return &mach_o::p1;
  }

  else
  {
    return off_1EEE9CB88[(this - 2)];
  }
}

mach_o::Error *mach_o::ChainedFixups::validLinkedit@<X0>(unsigned int **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v6 = *a1;
  if (**a1)
  {
    v58 = **a1;
    return mach_o::Error::Error(a5, "chained fixups, unknown header version (%d)");
  }

  v9 = v6[1];
  v10 = a1[2];
  if (v10 <= v9)
  {
    v12 = "chained fixups, starts_offset exceeds LC_DYLD_CHAINED_FIXUPS size";
    goto LABEL_7;
  }

  v11 = v6[2];
  if (v10 < v11)
  {
    v12 = "chained fixups, imports_offset exceeds LC_DYLD_CHAINED_FIXUPS size";
LABEL_7:

    return mach_o::Error::Error(a5, v12);
  }

  v13 = v6[5] - 1;
  if (v13 >= 3)
  {
    v60 = v6[5];
    return mach_o::Error::Error(a5, "chained fixups, unknown imports_format (%d)");
  }

  v14 = v6[4] * dword_1801107BC[v13];
  v51 = __CFADD__(v11, v14);
  v15 = v11 + v14;
  if (v51 || v15 > v6[3])
  {
    v12 = "chained fixups, imports array overlaps symbols";
    goto LABEL_7;
  }

  if (v6[6])
  {
    v59 = v6[6];
    return mach_o::Error::Error(a5, "chained fixups, symbols_format unknown (%d)");
  }

  v19 = v6 + v9;
  v20 = *(v6 + v9);
  if (a4 != v20)
  {
    if (a4 < v20)
    {
      v12 = "chained fixups, seg_count exceeds number of segments";
      goto LABEL_7;
    }

    v44 = a3 + 56 * a4;
    if (*(v44 - 16) != 5 || ((v45 = *(v44 - 24), v46 = *v45, v47 = *(v45 + 4), v46 == 1413701471) ? (v48 = v47 == 70) : (v48 = 0), !v48))
    {
      v12 = "chained fixups, seg_count does not match number of segments";
      goto LABEL_7;
    }
  }

  if (!v20)
  {
    LOWORD(v31) = 0;
    v22 = 0;
LABEL_61:
    v49 = mach_o::ChainedFixups::PointerFormat::make(v31);
    result = (*(*v49 + 10))(v49, 0);
    v50 = (*a1)[4];
    if (v50)
    {
      v51 = v50 >= result;
    }

    else
    {
      v51 = 0;
    }

    if (v51)
    {
      v61 = (*a1)[4];
      return mach_o::Error::Error(a5, "chained fixups, imports_count (%d) exceeds max of %d");
    }

    else
    {
      if (!v22)
      {
        goto LABEL_82;
      }

      v52 = a3 + 56 * a4;
      if (*(v52 - 16) == 10)
      {
        v53 = *(v52 - 24);
        v54 = 0x5F5F4C494E4B4544;
        v55 = bswap64(*v53);
        if (v55 == 0x5F5F4C494E4B4544 && (v55 = bswap32(*(v53 + 8)) >> 16, v54 = 18772, v55 == 18772))
        {
          v56 = 0;
        }

        else
        {
          v56 = v55 < v54 ? -1 : 1;
        }

        v48 = v56 == 0;
        v57 = -2;
        if (!v48)
        {
          v57 = -1;
        }
      }

      else
      {
        v57 = -1;
      }

      if (*(a3 + 56 * v57 + 56 * a4) + a2 + *(a3 + 56 * v57 + 56 * a4 + 8) > v22)
      {
        return mach_o::Error::Error(a5, "chained fixups, max_valid_pointer (0x%x) too small for image last vm address 0x%llx");
      }

      else
      {
LABEL_82:
        *a5 = 0;
      }
    }

    return result;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v6 + v11;
  v26 = v6 + v9 + 24;
  while (1)
  {
    v27 = *&v19[4 * v21 + 4];
    if (v27)
    {
      break;
    }

    v31 = v23;
LABEL_50:
    ++v21;
    v23 = v31;
    if (v21 == v20)
    {
      goto LABEL_61;
    }
  }

  v28 = &v19[v27];
  v29 = *&v19[v27];
  if (v25 - &v19[v27] < v29)
  {
    return mach_o::Error::Error(a5, "chained fixups, dyld_chained_starts_in_segment for segment #%d overruns imports table");
  }

  v30 = *(v28 + 2);
  if (v30 != 4096 && v30 != 0x4000)
  {
    return mach_o::Error::Error(a5, "chained fixups, page_size not 4KB or 16KB in segment #%d");
  }

  v31 = *(v28 + 3);
  if (v31 >= 0xF)
  {
    return mach_o::Error::Error(a5, "chained fixups, unknown pointer_format in segment #%d");
  }

  if (v24)
  {
    if (v31 != v23)
    {
      v62 = *(v28 + 3);
      return mach_o::Error::Error(a5, "chained fixups, pointer_format not same for all segments %d and %d");
    }

    v31 = v23;
  }

  v32 = *(v28 + 4);
  if (v32)
  {
    if (v22)
    {
      if (v22 != v32)
      {
        v12 = "chained fixups, different max_valid_pointer values seen in different segments";
        goto LABEL_7;
      }
    }

    else
    {
      v22 = *(v28 + 4);
    }
  }

  v33 = *(v28 + 10);
  if (2 * v33 + 22 > v29)
  {
    v12 = "chained fixups, page_start array overflows size";
    goto LABEL_7;
  }

  if (!*(v28 + 10))
  {
LABEL_49:
    v24 = 1;
    goto LABEL_50;
  }

  v34 = 0;
  v35 = (v29 - 22) >> 1;
  v36 = v28 + 22;
  v37 = v26 + v27;
  while (1)
  {
    v38 = *&v36[2 * v34];
    if (v38 == 0xFFFF)
    {
      goto LABEL_40;
    }

    if ((v38 & 0x8000) != 0)
    {
      break;
    }

    if (v38 > v30)
    {
      return mach_o::Error::Error(a5, "chained fixups, in segment #%d page_start[%d]=0x%04X exceeds page size");
    }

LABEL_40:
    if (++v34 == v33)
    {
      goto LABEL_49;
    }
  }

  v39 = 0;
  v40 = v38 & 0x7FFF;
  v41 = (v37 + 2 * v40);
  while (1)
  {
    if (v40 > v35)
    {
      return mach_o::Error::Error(a5, "chain overflow index out of range %d (max=%d) in segment #%d");
    }

    v42 = *(v41 - 1) & 0x7FFF;
    if (v42 > v30)
    {
      return mach_o::Error::Error(a5, "chained fixups, in segment #%d overflow page_start[%d]=0x%04X exceeds page size");
    }

    if (v39 && v42 <= v39)
    {
      break;
    }

    ++v40;
    v43 = *v41++;
    v39 = v42;
    if (v43 < 0)
    {
      goto LABEL_40;
    }
  }

  v63 = *(v41 - 1) & 0x7FFF;
  return mach_o::Error::Error(a5, "chained fixups, in segment #%d overflow page_start[%d]=0x%04X is before previous at 0x%04X\n");
}

mach_o::Error *mach_o::ChainedFixups::valid@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, mach_o::Error *a6@<X8>)
{
  if (a5)
  {
    if (**(result + 1) >= 0xFu)
    {
      return mach_o::Error::Error(a6, "chained fixups, unknown pointer_format (%d)", **(result + 1));
    }

    else
    {
      *a6 = 0;
    }
  }

  else
  {

    return mach_o::ChainedFixups::validLinkedit(result, a2, a3, a4, a6);
  }

  return result;
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE::writeChainEntry(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  if (*(a1 + 22) != 1)
  {
    v3 = *a1;
    v4 = a2 - *a1;
    if (!a2)
    {
      v4 = 0;
    }

    v5 = *v3;
    v6 = (v4 / 8) << 52;
    if (*(a1 + 16) == 1)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFLL | v6 | 0x8000000000000000;
      *v3 = v7;
      v8 = v7 & 0xFFF7FFFFFFFFFFFFLL | (((*(a1 + 18) & 3) != 0) << 51);
      *v3 = v8;
      v9 = v8 & 0xFFFBFFFFFFFFFFFFLL | (((*(a1 + 18) & 4) != 0) << 50);
      *v3 = v9;
      v10 = v9 & 0xFFFC0003FFFFFFFFLL | (*(a1 + 20) << 34);
      *v3 = v10;
      v11 = *(a1 + 24);
      *v3 = v10 & 0xFFFFFFFC00000000 | v11 & 0x3FFFFFFFFLL;
      if (8 * ((v4 / 8) & 0x7FF) == v4)
      {
        v12 = v11 & 0x3FFFFFFFFLL;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = v6 & 0x7FF0000000000000;
      v14 = v6 & 0x7FF0000000000000 | v5 & 0x3FFFFFFFFFFLL;
      *v3 = v14;
      v15 = *(a1 + 24);
      *v3 = (v15 >> 22) & 0x3FC00000000 | v14 & 0xFFF00003FFFFFFFFLL;
      v16 = *(a1 + 24);
      *v3 = v13 & 0xFFFFFC0000000000 | (v15 >> 22) & 0xFFFFFFFC00000000 | v16 & 0x3FFFFFFFFLL;
      if (8 * ((v4 / 8) & 0x7FF) == v4)
      {
        v12 = v16 & 0x3FFFFFFFFLL | v15 & 0xFF00000000000000;
LABEL_12:
        if (v12 == *(a1 + 24))
        {
          *a3 = 0;
        }

        else
        {
          v18 = *(a1 + 8);
          v22 = v18[4];
          v24 = *a1 - v18[3];
          v20 = v18[5];
          mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
        }

        return;
      }
    }

    v17 = *(a1 + 8);
    v21 = v17[4];
    v23 = *a1 - v17[3];
    v19 = v17[5];
    mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
    return;
  }

  mach_o::Error::Error(a3, "shared cache fixup formate does not support binds");
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED *this, void *a2)
{
  v2 = (*a2 >> 51) & 0xFFFLL;
  if (v2)
  {
    return a2 + (*(*this + 136))(this) * v2;
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a3 + 8 * (*a1 >> 28));
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v6 = HIDWORD(v4);
    *a4 = a1;
    *(a4 + 8) = a2;
    v8 = *(a4 + 18) & 0xF8;
    *(a4 + 16) = 1;
    v7 = (v4 >> 46) & 4 | (v4 >> 49) & 3 | v8;
  }

  else
  {
    LOWORD(v6) = 0;
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = 0;
    LOBYTE(v7) = *(a4 + 18) & 0xF8;
  }

  *(a4 + 18) = v7;
  *(a4 + 20) = v6;
  *(a4 + 22) = 0;
  *(a4 + 24) = v5 + (v4 & 0xFFFFFFF);
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SEGMENTED::writeChainEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, mach_o::Error *a6@<X8>)
{
  v7 = *a2;
  if (a3)
  {
    v8 = a3 - *a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 22) == 1)
  {
    v9 = "firmware format does not support binds";
LABEL_12:

    return mach_o::Error::Error(a6, v9);
  }

  if (!a5)
  {
LABEL_11:
    v9 = "target vm address not in any segment";
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  v14 = *(a2 + 24);
  v15 = 8 * a5;
  while (1)
  {
    v16 = *(a4 + 8 * v12);
    v17 = v14 - *v16;
    if (v14 >= *v16 && v16[1] + *v16 >= v14)
    {
      break;
    }

    v13 += 0x10000000;
    ++v12;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  v19 = *v7;
  if (*(a2 + 16) == 1)
  {
    *v7 = v19 | 0x8000000000000000;
    v20 = v8 / (*(*a1 + 136))(a1);
    v21 = *v7 & 0x8007FFFFFFFFFFFFLL | ((v20 & 0xFFF) << 51);
    *v7 = v21;
    v22 = v21 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
    *v7 = v22;
    v23 = v22 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
    *v7 = v23;
    v24 = v23 & 0xFFFF000000000000 | (*(a2 + 20) << 32) | v13 | v17 & 0xFFFFFFF;
  }

  else
  {
    *v7 = v19 & 0x7FFFFFFFFFFFFFFFLL;
    v20 = v8 / (*(*a1 + 136))(a1);
    v24 = v17 & 0xFFFFFFF | v13 | ((v20 & 0xFFF) << 51) | *v7 & 0x8000000000000000;
  }

  *v7 = v24;
  v25 = v20 & 0xFFF;
  result = (*(*a1 + 136))(a1);
  if (v8 == result * v25)
  {
    if (v12 == *v7 >> 28 && (*v7 & 0xFFFFFFF) == v17)
    {
      *a6 = 0;
    }

    else
    {
      v27 = *(a2 + 8);
      v32 = v27[4];
      v33 = *a2 - v27[3];
      v30 = v27[5];
      return mach_o::Error::Error(a6, "segIndex (%d) and segOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v26 = *(a2 + 8);
    v29 = v26[4];
    v31 = *a2 - v26[3];
    v28 = v26[5];
    return mach_o::Error::Error(a6, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_Generic_arm64e::bindMaxEmbeddableAddend(mach_o::PointerFormat_Generic_arm64e *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0x3FFFFLL;
  }
}

uint64_t mach_o::PointerFormat_Generic_arm64e::bindMinEmbeddableAddend(mach_o::PointerFormat_Generic_arm64e *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294705153;
  }
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE *this, void *a2)
{
  v2 = (*a2 >> 52) & 0x7FFLL;
  if (v2)
  {
    return a2 + (*(*this + 136))(this) * v2;
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_ARM64E_SHARED_CACHE::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = v3 & 0x3FFFFFFFFLL;
    v4 = v3 >> 34;
    *a3 = a1;
    *(a3 + 8) = a2;
    v6 = *(a3 + 18) & 0xF8;
    *(a3 + 16) = 1;
    LODWORD(v3) = HIWORD(v3) & 4 | (v3 >> 50) & 2 | v6;
  }

  else
  {
    LOWORD(v4) = 0;
    v5 = v3 & 0x3FFFFFFFFLL | ((v3 >> 34) << 56);
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    LOBYTE(v3) = *(a3 + 18) & 0xF8;
  }

  *(a3 + 18) = v3;
  *(a3 + 20) = v4;
  *(a3 + 22) = 0;
  *(a3 + 24) = v5;
}

uint64_t mach_o::PointerFormat_Generic_arm64e::maxRebaseTargetOffset(mach_o::PointerFormat_Generic_arm64e *this, int a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0x7FFFFFFFFFFLL;
  }
}

uint64_t mach_o::PointerFormat_Generic_arm64e::nextLocation(mach_o::PointerFormat_Generic_arm64e *this, void *a2)
{
  v2 = (*a2 >> 51) & 0x7FFLL;
  if (v2)
  {
    return a2 + (*(*this + 136))(this) * v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mach_o::PointerFormat_Generic_arm64e::parseChainEntry@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  if ((*a2 & 0x4000000000000000) != 0)
  {
    result = (*(*result + 128))(result);
    v8 = *a2;
    if (result == 24)
    {
      v12 = *a2 & 0xFFFFFF;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_8:
        *a5 = a2;
        *(a5 + 8) = a3;
        *(a5 + 16) = 0;
        *(a5 + 18) &= 0xF8u;
        *(a5 + 20) = 0x10000;
        *(a5 + 24) = v12;
        *(a5 + 28) = HIDWORD(v8) & 0x7FFFF;
        return result;
      }
    }

    else
    {
      LODWORD(v12) = *a2;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

    v13 = (v8 >> 49) & 3;
    v14 = HIDWORD(v8);
    *a5 = a2;
    *(a5 + 8) = a3;
    v15 = *(a5 + 18) & 0xF8;
    *(a5 + 22) = 1;
    *(a5 + 24) = v12;
    *(a5 + 28) = 0;
    *(a5 + 16) = 1;
LABEL_12:
    *(a5 + 18) = (v8 >> 46) & 4 | v13 | v15;
    *(a5 + 20) = v14;
    return result;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    v13 = (v8 >> 49) & 3;
    v14 = HIDWORD(v8);
    *a5 = a2;
    *(a5 + 8) = a3;
    v15 = *(a5 + 18) & 0xF8;
    *(a5 + 22) = 0;
    *(a5 + 24) = v8;
    *(a5 + 16) = 1;
    goto LABEL_12;
  }

  result = (*(*result + 144))(result);
  v10 = *a2 & 0x7FFFFFFFFFFLL;
  if (result)
  {
    v10 -= a4;
  }

  v11 = (*a2 << 13) & 0xFF00000000000000 | v10;
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = 0;
  *(a5 + 18) &= 0xF8u;
  *(a5 + 20) = 0;
  *(a5 + 24) = v11;
  return result;
}

mach_o::Error *mach_o::PointerFormat_Generic_arm64e::writeChainEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v8 = *a2;
  if (a3)
  {
    v9 = a3 - *a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 22) != 1)
  {
    if (*(a2 + 16) == 1)
    {
      *v8 = *v8 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v22 = (*(*a1 + 136))(a1);
      v23 = *v8 & 0xC007FFFFFFFFFFFFLL | (((v9 / v22) & 0x7FF) << 51);
      *v8 = v23;
      v24 = v23 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
      *v8 = v24;
      v25 = v24 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
      *v8 = v25;
      v26 = v25 & 0xFFFF0000FFFFFFFFLL | (*(a2 + 20) << 32);
      *v8 = v26;
      *v8 = v26 & 0xFFFFFFFF00000000 | *(a2 + 24);
      v27 = (v9 / v22) & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 != result * v27)
      {
        goto LABEL_40;
      }

      if (*v8 == *(a2 + 24))
      {
        goto LABEL_39;
      }
    }

    else
    {
      v36 = *(a2 + 24);
      *v8 &= 0x3FFFFFFFFFFFFFFFuLL;
      *(&v37 + 1) = v9 / (*(*a1 + 136))(a1);
      *&v37 = v36;
      *v8 = *v8 & 0xC00007FFFFFFFFFFLL | ((((v37 >> 13) >> 43) & 0x7FFFF) << 43);
      if ((*(*a1 + 144))(a1))
      {
        v38 = a4;
      }

      else
      {
        v38 = 0;
      }

      v39 = (*v8 >> 51) & 0x7FF;
      *v8 = *v8 & 0xFFFFF80000000000 | (v38 + v36) & 0x7FFFFFFFFFFLL;
      if (v9 != (*(*a1 + 136))(a1) * v39)
      {
        goto LABEL_40;
      }

      v40 = *v8 & 0x7FFFFFFFFFFLL;
      result = (*(*a1 + 144))(a1);
      if (result)
      {
        v41 = a4;
      }

      else
      {
        v41 = 0;
      }

      if (v40 == v41 + (v36 & 0xFFFFFFFFFFFFFFLL))
      {
        goto LABEL_39;
      }

      v42 = (*(*a1 + 144))(a1);
      v43 = *(a2 + 24);
      if (v42)
      {
        v44 = *(a2 + 8);
        v69 = v44[4];
        v75 = *a2 - v44[3];
        v63 = v44[5];
        return mach_o::Error::Error(a5, "vmAddress (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
      }
    }

    v59 = *(a2 + 8);
    v72 = v59[4];
    v78 = *a2 - v59[3];
    v66 = v59[5];
    return mach_o::Error::Error(a5, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
  }

  v10 = (*(*a1 + 128))(a1);
  v11 = *(a2 + 16);
  v12 = *a2;
  v13 = **a2;
  if (v10 != 24)
  {
    if (*(a2 + 16))
    {
      *v12 = v13 | 0xC000000000000000;
      v28 = (*(*a1 + 136))(a1);
      v29 = *v12 & 0xC007FFFFFFFFFFFFLL | (((v9 / v28) & 0x7FF) << 51);
      *v12 = v29;
      v30 = v29 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
      *v12 = v30;
      v31 = v30 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
      *v12 = v31;
      v32 = v31 & 0xFFFF00000000FFFFLL | (*(a2 + 20) << 32);
      *v12 = v32;
      *v12 = v32 & 0xFFFFFFFF00000000 | *(a2 + 24);
      v33 = (v9 / v28) & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 == result * v33)
      {
        v21 = *v12;
        goto LABEL_16;
      }

LABEL_40:
      v57 = *(a2 + 8);
      v70 = v57[4];
      v76 = *a2 - v57[3];
      v64 = v57[5];
      return mach_o::Error::Error(a5, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
    }

    *v12 = v13 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
    v52 = v9 / (*(*a1 + 136))(a1);
    v53 = *v12 & 0xC007FFFFFFFFFFFFLL | ((v52 & 0x7FF) << 51);
    *v12 = v53;
    v54 = *(a2 + 28) & 0x7FFFF;
    v55 = v53 & 0xFFF800000000FFFFLL | (v54 << 32);
    *v12 = v55;
    *v12 = v55 & 0xFFFFFFFF00000000 | *(a2 + 24);
    if (v54 == *(a2 + 28))
    {
      v56 = v52 & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 != result * v56)
      {
        goto LABEL_40;
      }

      v51 = *v12;
      goto LABEL_38;
    }

LABEL_41:
    v58 = *(a2 + 8);
    v71 = v58[4];
    v77 = *a2 - v58[3];
    v65 = v58[5];
    return mach_o::Error::Error(a5, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
  }

  if (!*(a2 + 16))
  {
    *v12 = v13 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
    v45 = v9 / (*(*a1 + 136))(a1);
    v46 = *v12 & 0xC007FFFFFFFFFFFFLL | ((v45 & 0x7FF) << 51);
    *v12 = v46;
    v47 = *(a2 + 28);
    v48 = v46 & 0xFFF8000000FFFFFFLL | ((*&v47 & 0x7FFFFLL) << 32);
    *v12 = v48;
    *v12 = v48 & 0xFFFFFFFF00000000 | *(a2 + 24) & 0xFFFFFFLL;
    if ((v47 & 0x7FFFFu) >= 0x40000)
    {
      v49 = -262144;
    }

    else
    {
      v49 = 0;
    }

    if ((v49 & 0xFFFFFFFFFFFC0000 | *&v47 & 0x3FFFFLL) == *(a2 + 28))
    {
      v50 = v45 & 0x7FF;
      result = (*(*a1 + 136))(a1);
      if (v9 != result * v50)
      {
        goto LABEL_40;
      }

      v51 = *v12 & 0xFFFFFF;
LABEL_38:
      if (v51 == *(a2 + 24))
      {
        goto LABEL_39;
      }

      return mach_o::ChainedFixups::PointerFormat::badBindOrdinal(a2, a5);
    }

    goto LABEL_41;
  }

  *v12 = v13 | 0xC000000000000000;
  v14 = (*(*a1 + 136))(a1);
  v15 = *v12 & 0xC007FFFFFFFFFFFFLL | (((v9 / v14) & 0x7FF) << 51);
  *v12 = v15;
  v16 = v15 & 0xFFF9FFFFFFFFFFFFLL | ((*(a2 + 18) & 3) << 49);
  *v12 = v16;
  v17 = v16 & 0xFFFEFFFFFFFFFFFFLL | (((*(a2 + 18) & 4) != 0) << 48);
  *v12 = v17;
  v18 = v17 & 0xFFFF000000FFFFFFLL | (*(a2 + 20) << 32);
  *v12 = v18;
  *v12 = v18 & 0xFFFFFFFF00000000 | *(a2 + 24) & 0xFFFFFFLL;
  v19 = (v9 / v14) & 0x7FF;
  result = (*(*a1 + 136))(a1);
  if (v9 != result * v19)
  {
    goto LABEL_40;
  }

  v21 = *v12 & 0xFFFFFF;
LABEL_16:
  if (v21 == *(a2 + 24))
  {
    if (*(a2 + 28))
    {
      v34 = *(a2 + 8);
      v68 = v34[4];
      v74 = *a2 - v34[3];
      v61 = *(a2 + 28);
      v62 = v34[5];
      return mach_o::Error::Error(a5, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
    }

LABEL_39:
    *a5 = 0;
    return result;
  }

  v60 = *(a2 + 8);
  v73 = v60[4];
  v79 = *a2 - v60[3];
  v67 = v60[5];
  return mach_o::Error::Error(a5, "bind ordinal (%u) too large in fixup at %.*s+0x%0lX");
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_64::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_64 *this, void *a2)
{
  if (((*a2 >> 51) & 0xFFF) != 0)
  {
    return a2 + 4 * ((*a2 >> 51) & 0xFFF);
  }

  else
  {
    return 0;
  }
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_64::parseChainEntry@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  if (*a2 < 0)
  {
    *a5 = a2;
    *(a5 + 8) = a3;
    *(a5 + 16) = 0;
    *(a5 + 18) &= 0xF8u;
    *(a5 + 20) = 0x10000;
    *(a5 + 24) = v8 & 0xFFFFFF;
    *(a5 + 28) = BYTE3(v8);
  }

  else
  {
    result = (*(*result + 128))(result);
    v10 = *a2 & 0xFFFFFFFFFLL;
    if (result)
    {
      v10 -= a4;
    }

    v11 = (*a2 << 20) & 0xFF00000000000000 | v10;
    *a5 = a2;
    *(a5 + 8) = a3;
    *(a5 + 16) = 0;
    *(a5 + 18) &= 0xF8u;
    *(a5 + 20) = 0;
    *(a5 + 24) = v11;
  }

  return result;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_64::writeChainEntry@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  v7 = *a2;
  if (a3)
  {
    v8 = a3 - *a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 22) == 1)
  {
    v9 = *v7 | ((v8 / 4) << 51) | 0x8000000000000000;
    *v7 = v9;
    v10 = *(a2 + 28);
    v11 = v9 & 0xFFF8000000FFFFFFLL | (v10 << 24);
    *v7 = v11;
    v12 = *(a2 + 24) & 0xFFFFFF;
    *v7 = v11 & 0xFFFFFFFFFF000000 | v12;
    if (*(a2 + 28) != v10)
    {
      v21 = *(a2 + 8);
      v32 = v21[4];
      v37 = *a2 - v21[3];
      v27 = v21[5];
      return mach_o::Error::Error(a5, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
    }

    if (4 * ((v8 / 4) & 0xFFF) == v8)
    {
      if (v12 != *(a2 + 24))
      {
        v13 = *(a2 + 8);
        v30 = v13[4];
        v35 = *a2 - v13[3];
        v25 = v13[5];
        return mach_o::Error::Error(a5, "bind ordinal (%u) too large in fixup at %.*s+0x%0lX");
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = (*(*result + 128))(result);
  v15 = *a2;
  v16 = *(a2 + 24);
  if (result)
  {
    v17 = v16 & 0xFFFFFFFFFFFFFFLL;
    v18 = v8 + 3;
    if (v8 >= 0)
    {
      v18 = v8;
    }

    *v15 = (v18 << 49) & 0x7FF8000000000000 | (v16 >> 20) & 0x7FF80FF000000000 | (v17 + a4) & 0xFFFFFFFFFLL;
    if ((v18 & 0x3FFC) == v8)
    {
      if ((v17 + a4) >> 36)
      {
        v19 = *(a2 + 24) + a4;
        v20 = *(a2 + 8);
        v31 = v20[4];
        v36 = *a2 - v20[3];
        v26 = v20[5];
        return mach_o::Error::Error(a5, "vmAddress (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v22 = v8 + 3;
  if (v8 >= 0)
  {
    v22 = v8;
  }

  *v15 = (v22 << 49) & 0x7FF8000000000000 | (v16 >> 20) & 0x7FF80FF000000000 | v16 & 0xFFFFFFFFFLL;
  if ((v22 & 0x3FFC) != v8)
  {
LABEL_21:
    v23 = *(a2 + 8);
    v33 = v23[4];
    v38 = *a2 - v23[3];
    v28 = v23[5];
    return mach_o::Error::Error(a5, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  if (v16 == *(a2 + 24))
  {
LABEL_20:
    *a5 = 0;
    return result;
  }

  v24 = *(a2 + 8);
  v34 = v24[4];
  v39 = *a2 - v24[3];
  v29 = v24[5];
  return mach_o::Error::Error(a5, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
}

unsigned int *mach_o::PointerFormat_DYLD_CHAINED_PTR_32::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_32 *this, unsigned int *a2)
{
  v2 = (*a2 >> 26) & 0x1F;
  if (v2)
  {
    return &a2[v2];
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_32::parseChainEntry(unsigned int *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) != 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    *(a3 + 18) &= 0xF8u;
    *(a3 + 24) = v3 & 0xFFFFF;
    *(a3 + 28) = (v3 >> 20) & 0x3F;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    *(a3 + 18) &= 0xF8u;
    *(a3 + 24) = v3 & 0x3FFFFFF;
  }

  *(a3 + 20) = 0;
  *(a3 + 22) = v4;
  *(a3 + 23) = 0;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_32::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, mach_o::Error *a4@<X8>)
{
  v4 = *a1;
  v5 = a2 - *a1;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = *v4;
  v7 = (v5 / 4) << 26;
  if (*(a1 + 22) == 1)
  {
    v8 = v6 & 0x3FFFFFF | v7 | 0x80000000;
    *v4 = v8;
    v9 = *(a1 + 28);
    v10 = v8 & 0xFC0FFFFF | ((v9 & 0x3F) << 20);
    *v4 = v10;
    v11 = *(a1 + 24);
    *v4 = v10 & 0xFFF00000 | v11 & 0xFFFFF;
    if (4 * ((v5 / 4) & 0x1F) == v5)
    {
      if ((v9 & 0x3F) == *(a1 + 28))
      {
        if ((v11 & 0xFFFFF) != *(a1 + 24))
        {
          v12 = *(a1 + 8);
          v24 = v12[4];
          v28 = *a1 - v12[3];
          v20 = v12[5];
          return mach_o::Error::Error(a4, "bind ordinal (%u) too large in fixup at %.*s+0x%0lX");
        }

        goto LABEL_10;
      }

      v17 = *(a1 + 8);
      v26 = v17[4];
      v30 = *a1 - v17[3];
      v22 = v17[5];
      return mach_o::Error::Error(a4, "addend (%lld) cannot fit in fixup at %.*s+0x%0lX");
    }

LABEL_11:
    v16 = *(a1 + 8);
    v25 = v16[4];
    v29 = *a1 - v16[3];
    v21 = v16[5];
    return mach_o::Error::Error(a4, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  v14 = v7 & 0x7C000000;
  *v4 = v14 & 0xFC000000 | v6 & 0x3FFFFFF;
  v15 = *(a1 + 24) + a3;
  *v4 = v14 & 0xFC000000 | v15 & 0x3FFFFFF;
  if (4 * ((v5 / 4) & 0x1F) != v5)
  {
    goto LABEL_11;
  }

  if (!(v15 >> 26))
  {
LABEL_10:
    *a4 = 0;
    return result;
  }

  v18 = *(a1 + 8);
  v27 = v18[4];
  v31 = *a1 - v18[3];
  v19 = *(a1 + 24);
  v23 = v18[5];
  return mach_o::Error::Error(a4, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE *this, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >> 30)
  {
    return a2 + ((v2 >> 28) & 0xC);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE::parseChainEntry(_DWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1 & 0x3FFFFFFF;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 18) &= 0xF8u;
  *(a3 + 20) = 0;
  *(a3 + 24) = v3;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_32_CACHE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v3 = *a1;
  v4 = a2 - *a1;
  if (!a2)
  {
    v4 = 0;
  }

  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 3;
  }

  *v3 = *v3 & 0x3FFFFFFF | ((v5 >> 2) << 30);
  v6 = *(a1 + 24);
  *v3 = v6 & 0x3FFFFFFF | ((v5 >> 2) << 30);
  if ((v5 & 0xC) == v4)
  {
    if ((v6 & 0x3FFFFFFF) == *(a1 + 24))
    {
      *a3 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
      v13 = v9[4];
      v15 = *a1 - v9[3];
      v11 = v9[5];
      return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v12 = v7[4];
    v14 = *a1 - v7[3];
    v10 = v7[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE *this, unsigned int *a2)
{
  v2 = *a2;
  if (v2 >> 26)
  {
    return a2 + ((v2 >> 24) & 0xFC);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE::parseChainEntry(_DWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = (*a1 & 0x3FFFFFF) - a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 18) &= 0xF8u;
  *(a4 + 20) = 0;
  *(a4 + 24) = v4;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_32_FIRMWARE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v3 = *a1;
  v4 = a2 - *a1;
  if (!a2)
  {
    v4 = 0;
  }

  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 3;
  }

  *v3 = *v3 & 0x3FFFFFF | ((v5 >> 2) << 26);
  v6 = *(a1 + 24);
  *v3 = v6 & 0x3FFFFFF | ((v5 >> 2) << 26);
  if ((v5 & 0xFC) == v4)
  {
    if ((v6 & 0x3FFFFFF) == *(a1 + 24))
    {
      *a3 = 0;
    }

    else
    {
      v9 = *(a1 + 8);
      v13 = v9[4];
      v15 = *a1 - v9[3];
      v11 = v9[5];
      return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v7 = *(a1 + 8);
    v12 = v7[4];
    v14 = *a1 - v7[3];
    v10 = v7[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE *this, void *a2)
{
  if (((*a2 >> 51) & 0xFFF) != 0)
  {
    return a2 + 4 * ((*a2 >> 51) & 0xFFF);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = HIDWORD(v3);
    *a3 = a1;
    *(a3 + 8) = a2;
    v6 = *(a3 + 18) & 0xF8;
    *(a3 + 16) = 1;
    v5 = (v3 >> 46) & 4 | (v3 >> 49) & 3 | v6;
  }

  else
  {
    LOWORD(v4) = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    LOBYTE(v5) = *(a3 + 18) & 0xF8;
  }

  *(a3 + 18) = v5;
  *(a3 + 20) = v4;
  *(a3 + 22) = 0;
  *(a3 + 24) = v3 & 0x3FFFFFFF;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_64_KERNEL_CACHE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v4 = *a1;
  v5 = a2 - *a1;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = *v4 & 0x7FFFFFFFFFFFFLL | (*(a1 + 16) << 63) | (((v5 / 4) & 0xFFF) << 51);
  *v4 = v6;
  v7 = v6 & 0xFFF9FFFFFFFFFFFFLL | ((*(a1 + 18) & 3) << 49);
  *v4 = v7;
  v8 = v7 & 0xFFFEFFFFFFFFFFFFLL | (((*(a1 + 18) & 4) != 0) << 48);
  *v4 = v8;
  v9 = v8 & 0xFFFF00003FFFFFFFLL | (*(a1 + 20) << 32);
  *v4 = v9;
  v10 = *(a1 + 24);
  *v4 = v9 & 0xFFFFFFFF00000000 | v10 & 0x3FFFFFFF;
  if ((v3 & 0x3FFC) == v5)
  {
    if ((v10 & 0x3FFFFFFF) == *(a1 + 24))
    {
      *a3 = 0;
    }

    else
    {
      v13 = *(a1 + 8);
      v17 = v13[4];
      v19 = *a1 - v13[3];
      v15 = v13[5];
      return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v16 = v11[4];
    v18 = *a1 - v11[3];
    v14 = v11[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE::nextLocation(mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE *this, void *a2)
{
  if ((*a2 & 0x7FF8000000000000) != 0)
  {
    return a2 + ((*a2 >> 51) & 0xFFFLL);
  }

  else
  {
    return 0;
  }
}

void mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE::parseChainEntry(unint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = HIDWORD(v3);
    *a3 = a1;
    *(a3 + 8) = a2;
    v6 = *(a3 + 18) & 0xF8;
    *(a3 + 16) = 1;
    v5 = (v3 >> 46) & 4 | (v3 >> 49) & 3 | v6;
  }

  else
  {
    LOWORD(v4) = 0;
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    LOBYTE(v5) = *(a3 + 18) & 0xF8;
  }

  *(a3 + 18) = v5;
  *(a3 + 20) = v4;
  *(a3 + 22) = 0;
  *(a3 + 24) = v3 & 0x3FFFFFFF;
}

mach_o::Error *mach_o::PointerFormat_DYLD_CHAINED_PTR_X86_64_KERNEL_CACHE::writeChainEntry@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, mach_o::Error *a3@<X8>)
{
  v3 = *a1;
  v4 = a2 - *a1;
  if (!a2)
  {
    v4 = 0;
  }

  *v3 = *v3 & 0x3FFFFFFF | ((v4 & 0xFFF) << 51);
  v5 = *(a1 + 24) & 0x3FFFFFFFLL;
  *v3 = v5 | ((v4 & 0xFFF) << 51);
  if (v4 >= 0x1000)
  {
    v6 = *(a1 + 8);
    v11 = v6[4];
    v13 = *a1 - v6[3];
    v9 = v6[5];
    return mach_o::Error::Error(a3, "distance between fixups (%ld) is not encodable in chain for fixup at %.*s+0x%0lX");
  }

  else if (v5 == *(a1 + 24))
  {
    *a3 = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    v12 = v8[4];
    v14 = *a1 - v8[3];
    v10 = v8[5];
    return mach_o::Error::Error(a3, "vmOffset (0x%0llX) cannot fit in fixup at %.*s+0x%0lX");
  }

  return result;
}

uint64_t mach_o::BindOpcodes::BindOpcodes(uint64_t this, const unsigned __int8 *a2, uint64_t a3, int a4)
{
  *this = &unk_1EEE9EB08;
  *(this + 8) = a2;
  *(this + 16) = &a2[a3];
  if (a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  *(this + 24) = v4;
  return this;
}

void mach_o::BindOpcodes::valid(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, void *a7@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3002000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK6mach_o11BindOpcodes5validENSt3__14spanIKNS_13MappedSegmentELm18446744073709551615EEEjbb_block_invoke;
  v9[3] = &unk_1EEE9CBF8;
  v9[4] = &v14;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  mach_o::BindOpcodes::forEachBind(a1, v9, &__block_literal_global_5, &v13);
  if (v13)
  {
    v8 = &v13;
  }

  else
  {
    v8 = v15 + 5;
  }

  mach_o::Error::Error(a7, v8);
  mach_o::Error::~Error(&v13);
  _Block_object_dispose(&v14, 8);
  mach_o::Error::~Error(&v19);
}

uint64_t mach_o::BindOpcodes::forEachBind@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, mach_o::Error *a4@<X8>)
{
  v8 = *a1;
  v42 = *(a1 + 8);
  v40 = (*v8)();
  *v41 = 0;
  result = (*(*a1 + 8))(a1);
  v38 = 0;
  v39 = 0;
  v11 = 0;
  v37 = 0;
  v12 = 0;
  v13 = (result & 0x100000000uLL) >> 32;
  if ((result & 0x100000000) != 0)
  {
    v14 = result;
  }

  else
  {
    v14 = 0;
  }

  v36 = a3;
  v15 = 1;
  while (2)
  {
    v16 = v41[0];
    if (v41[0])
    {
      return mach_o::Error::Error(a4, "malformed uleb128");
    }

    v17 = v42;
    v18 = *(a1 + 16);
    if (v42 < v18)
    {
      v20 = v42 + 1;
      v19 = *v42;
      v42 = (v42 + 1);
      v21 = v19 & 0xF;
      switch(v19 >> 4)
      {
        case 0:
          result = (**a1)(a1);
          if ((result & 1) == 0)
          {
            v41[1] = 1;
          }

          goto LABEL_36;
        case 1:
          LOBYTE(v13) = 1;
          v14 = v19 & 0xF;
          goto LABEL_36;
        case 2:
          result = mach_o::read_uleb128(&v42, v18, v41, v10);
          v14 = result;
          goto LABEL_29;
        case 3:
          v30 = *&v19 | 0xFFFFFFF0;
          if (v21)
          {
            v14 = v30;
          }

          else
          {
            v14 = 0;
          }

LABEL_29:
          LOBYTE(v13) = 1;
          goto LABEL_36;
        case 4:
          if (*v20)
          {
            v23 = (v17 + 2);
            do
            {
              v42 = v23;
              v24 = *v23;
              v23 = (v23 + 1);
            }

            while (v24);
            v17 = (v23 - 2);
          }

          v37 = v19 & 1;
          v42 = (v17 + 2);
          if (v21 >= 8)
          {
            result = (*(v36 + 16))(v36, v20);
          }

          v15 = 1;
          v12 = v20;
          goto LABEL_36;
        case 5:
          v40 = v19 & 0xF;
          goto LABEL_36;
        case 6:
          result = mach_o::read_sleb128(&v42, v18, v41, v10);
          v39 = result;
          v15 = 1;
          goto LABEL_36;
        case 7:
          result = mach_o::read_uleb128(&v42, v18, v41, v10);
          v11 = result;
          LOBYTE(v38) = v21;
          BYTE4(v38) = 1;
          goto LABEL_36;
        case 8:
          result = mach_o::read_uleb128(&v42, v18, v41, v10);
          v11 += result;
          goto LABEL_36;
        case 9:
          LOBYTE(v34) = v15;
          LOBYTE(v33) = v37 & 1;
          result = (*(a2 + 16))(a2, "BIND_OPCODE_DO_BIND", v40, BYTE4(v38) & 1, v38, v11, v13 & 1, v14, v12, v33, v39, v34, &v41[1]);
          v15 = 0;
          v22 = *(a1 + 24);
          goto LABEL_24;
        case 10:
          LOBYTE(v34) = v15;
          LOBYTE(v33) = v37 & 1;
          (*(a2 + 16))(a2, "BIND_OPCODE_DO_BIND_ADD_ADDR_ULEB", v40, BYTE4(v38) & 1, v38, v11, v13 & 1, v14, v12, v33, v39, v34, &v41[1]);
          result = mach_o::read_uleb128(&v42, *(a1 + 16), v41, v31);
          v15 = 0;
          v11 += result + *(a1 + 24);
          goto LABEL_36;
        case 11:
          LOBYTE(v34) = v15;
          LOBYTE(v33) = v37 & 1;
          result = (*(a2 + 16))(a2, "BIND_OPCODE_DO_BIND_ADD_ADDR_IMM_SCALED", v40, BYTE4(v38) & 1, v38, v11, v13 & 1, v14, v12, v33, v39, v34, &v41[1]);
          v15 = 0;
          v22 = *(a1 + 24) + *(a1 + 24) * v21;
LABEL_24:
          v11 += v22;
          goto LABEL_36;
        case 12:
          v25 = mach_o::read_uleb128(&v42, v18, v41, v10);
          result = mach_o::read_uleb128(&v42, *(a1 + 16), v41, v26);
          if (v25)
          {
            v27 = result;
            v35 = a4;
            v28 = 1;
            do
            {
              LOBYTE(v34) = v15;
              LOBYTE(v33) = v37 & 1;
              result = (*(a2 + 16))(a2, "BIND_OPCODE_DO_BIND_ULEB_TIMES_SKIPPING_ULEB", v40, BYTE4(v38) & 1, v38, v11, v13 & 1, v14, v12, v33, v39, v34, &v41[1]);
              v15 = 0;
              v11 += v27 + *(a1 + 24);
              if (v41[1])
              {
                break;
              }

              v29 = v28++;
            }

            while (v25 > v29);
            a4 = v35;
          }

LABEL_36:
          if ((v41[1] & 1) == 0)
          {
            continue;
          }

          v16 = v41[0];
          break;
        case 13:
          return mach_o::Error::Error(a4, "old arm64e bind opcodes not supported", v32);
        default:
          return mach_o::Error::Error(a4, "unknown bind opcode 0x%02X");
      }
    }

    break;
  }

  if (v16)
  {
    return mach_o::Error::Error(a4, "malformed uleb128");
  }

  *a4 = 0;
  return result;
}

void ___ZNK6mach_o11BindOpcodes5validENSt3__14spanIKNS_13MappedSegmentELm18446744073709551615EEEjbb_block_invoke(uint64_t a1, uint64_t a2, int a3, char a4, unsigned int a5, unint64_t a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13)
{
  if ((a4 & 1) == 0)
  {
    mach_o::Error::Error(&v25, "%s missing preceding BIND_OPCODE_SET_SEGMENT_AND_OFFSET_ULEB");
    goto LABEL_7;
  }

  if (*(a1 + 56) <= a5)
  {
    mach_o::Error::Error(&v25, "%s segment index %d too large");
    goto LABEL_7;
  }

  v16 = (*(a1 + 48) + 56 * a5);
  if (v16[1] - *(*(a1 + 40) + 24) < a6)
  {
    v24 = v16[4];
    v21 = v16[5];
    mach_o::Error::Error(&v25, "%s segment offset 0x%08llX beyond segment '%.*s' size (0x%08llX)");
LABEL_7:
    mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v25);
    mach_o::Error::~Error(&v25);
    *a13 = 1;
    goto LABEL_8;
  }

  if (!a9)
  {
    mach_o::Error::Error(&v25, "%s missing preceding BIND_OPCODE_SET_SYMBOL_TRAILING_FLAGS_IMM");
    goto LABEL_7;
  }

  if ((a7 & 1) == 0)
  {
    mach_o::Error::Error(&v25, "%s missing preceding BIND_OPCODE_SET_DYLIB_ORDINAL");
    goto LABEL_7;
  }

  if (a8 < 1)
  {
    if (a8 <= -4)
    {
      mach_o::Error::Error(&v25, "%s has unknown library special ordinal (%d)");
      goto LABEL_7;
    }
  }

  else if (*(a1 + 64) < a8)
  {
    mach_o::Error::Error(&v25, "%s has library ordinal too large (%d) max (%d)");
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      mach_o::Error::Error(&v25, "%s unknown bind type %d");
      goto LABEL_18;
    }

    v18 = *(a1 + 48) + 56 * a5;
    if ((*(v18 + 49) & 1) == 0 && *(a1 + 68) == 1)
    {
      v19 = *(v18 + 40);
      v22 = *(v18 + 32);
      mach_o::Error::Error(&v25, "%s pointer bind is in non-writable segment '%.*s'");
      goto LABEL_18;
    }

    if (*(v18 + 50) == 1 && *(a1 + 68) == 1)
    {
      v20 = *(v18 + 40);
      v23 = *(v18 + 32);
      mach_o::Error::Error(&v25, "%s pointer bind is in executable segment '%.*s'");
      goto LABEL_18;
    }
  }

  else
  {
    if ((*(a1 + 69) & 1) == 0)
    {
      mach_o::Error::Error(&v25, "%s text binds not supported for architecture");
      goto LABEL_18;
    }

    v17 = *(a1 + 48) + 56 * a5;
    if (*(v17 + 49) == 1)
    {
      mach_o::Error::Error(&v25, "%s text bind is in writable segment");
LABEL_18:
      mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v25);
      mach_o::Error::~Error(&v25);
      *a13 = 1;
      return;
    }

    if ((*(v17 + 50) & 1) == 0)
    {
      mach_o::Error::Error(&v25, "%s text bind is in non-executable segment");
      goto LABEL_18;
    }
  }
}

void mach_o::BindOpcodes::forEachBindTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v5[3] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o11BindOpcodes17forEachBindTargetEU13block_pointerFvRKNS_5Fixup10BindTargetERbEU13block_pointerFvPKcE_block_invoke;
  v3[3] = &unk_1EEE9CC40;
  v3[4] = a2;
  v3[5] = v5;
  mach_o::BindOpcodes::forEachBind(a1, v3, a3, v4);
  mach_o::Error::~Error(v4);
  _Block_object_dispose(v5, 8);
}

uint64_t ___ZNK6mach_o11BindOpcodes17forEachBindTargetEU13block_pointerFvRKNS_5Fixup10BindTargetERbEU13block_pointerFvPKcE_block_invoke(uint64_t result, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, char *__s, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (*(*(*(result + 40) + 8) + 24) != __s)
  {
    v14 = result;
    if (__s)
    {
      v15 = strlen(__s);
    }

    else
    {
      v15 = 0;
    }

    v16[0] = __s;
    v16[1] = v15;
    v17 = a8;
    v18 = a10;
    v19 = a11;
    result = (*(*(v14 + 32) + 16))(*(v14 + 32), v16, a13, a4);
    *(*(*(v14 + 40) + 8) + 24) = __s;
  }

  return result;
}

uint64_t mach_o::RebaseOpcodes::RebaseOpcodes(uint64_t this, const unsigned __int8 *a2, uint64_t a3, int a4)
{
  *this = a2;
  *(this + 8) = &a2[a3];
  if (a4)
  {
    v4 = 8;
  }

  else
  {
    v4 = 4;
  }

  *(this + 16) = v4;
  return this;
}

void mach_o::RebaseOpcodes::valid(mach_o::Error *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3002000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK6mach_o13RebaseOpcodes5validENSt3__14spanIKNS_13MappedSegmentELm18446744073709551615EEEbb_block_invoke;
  v8[3] = &unk_1EEE9CC68;
  v8[4] = &v12;
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v9 = a5;
  v10 = a4;
  mach_o::RebaseOpcodes::forEachRebase(a1, v8, a4, &v11);
  if (v11)
  {
    v7 = &v11;
  }

  else
  {
    v7 = v13 + 5;
  }

  mach_o::Error::Error(a6, v7);
  mach_o::Error::~Error(&v11);
  _Block_object_dispose(&v12, 8);
  mach_o::Error::~Error(&v17);
}

mach_o::Error *mach_o::RebaseOpcodes::forEachRebase@<X0>(mach_o::Error *result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X3>, mach_o::Error *a4@<X8>)
{
  v5 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v30 = *result;
  *v29 = 0;
  do
  {
    v11 = v29[0];
    if (v29[0])
    {
      return mach_o::Error::Error(a4, "malformed uleb128");
    }

    v12 = *(v5 + 1);
    if (v30 >= v12)
    {
      goto LABEL_45;
    }

    v14 = *v30;
    v13 = v30 + 1;
    v15 = *v30 & 0xF;
    v30 = (v30 + 1);
    v16 = v14 >> 4;
    if (v16 <= 3)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          result = mach_o::read_uleb128(&v30, v12, v29, a3);
          v10 = result;
          v9 = 1;
          v8 = v15;
        }

        else
        {
          if (v16 != 3)
          {
            return mach_o::Error::Error(a4, "unknown rebase opcode 0x%02X");
          }

          result = mach_o::read_uleb128(&v30, v12, v29, a3);
          v10 = (v10 + result);
        }
      }

      else if (v16)
      {
        if (v15 - 1 >= 3)
        {
          v7 = 0;
        }

        else
        {
          v7 = v15;
        }
      }

      else if (v12 - v13 >= 16)
      {
        v27 = v12 - *v5;
        return mach_o::Error::Error(a4, "rebase opcodes terminated early at offset %d of %d");
      }
    }

    else if (v16 <= 5)
    {
      if (v16 == 4)
      {
        v10 = (v10 + *(v5 + 4) * v15);
      }

      else
      {
        if (v16 != 5)
        {
          return mach_o::Error::Error(a4, "unknown rebase opcode 0x%02X");
        }

        if (v15)
        {
          v21 = 1;
          do
          {
            result = (*(a2 + 16))(a2, "REBASE_OPCODE_DO_REBASE_IMM_TIMES", v7, v9 & 1, v8, v10, &v29[1]);
            v10 = (v10 + *(v5 + 4));
            if (v29[1])
            {
              break;
            }
          }

          while (v21++ < v15);
        }
      }
    }

    else
    {
      switch(v16)
      {
        case 6:
          result = mach_o::read_uleb128(&v30, v12, v29, a3);
          if ((v29[0] & 1) == 0)
          {
            v24 = result;
            if (result)
            {
              v25 = 1;
              do
              {
                result = (*(a2 + 16))(a2, "REBASE_OPCODE_DO_REBASE_ADD_ADDR_ULEB", v7, v9 & 1, v8, v10, &v29[1]);
                v10 = (v10 + *(v5 + 4));
                if (v29[1])
                {
                  break;
                }

                v26 = v25++;
              }

              while (v24 > v26);
            }
          }

          break;
        case 7:
          (*(a2 + 16))(a2, "REBASE_OPCODE_DO_REBASE_ADD_ADDR_ULEB", v7, v9 & 1, v8, v10, &v29[1]);
          result = mach_o::read_uleb128(&v30, *(v5 + 1), v29, v23);
          v10 = (v10 + *(v5 + 4) + result);
          break;
        case 8:
          result = mach_o::read_uleb128(&v30, v12, v29, a3);
          if ((v29[0] & 1) == 0)
          {
            v17 = result;
            v28 = a4;
            result = mach_o::read_uleb128(&v30, *(v5 + 1), v29, a3);
            if ((v29[0] & 1) == 0 && v17)
            {
              v18 = result;
              v19 = 1;
              do
              {
                result = (*(a2 + 16))(a2, "REBASE_OPCODE_DO_REBASE_ULEB_TIMES_SKIPPING_ULEB", v7, v9 & 1, v8, v10, &v29[1]);
                v10 = (v18 + v10 + *(v5 + 4));
                if (v29[1])
                {
                  break;
                }

                v20 = v19++;
              }

              while (v17 > v20);
            }

            a4 = v28;
          }

          break;
        default:
          return mach_o::Error::Error(a4, "unknown rebase opcode 0x%02X");
      }
    }
  }

  while ((v29[1] & 1) == 0);
  v11 = v29[0];
LABEL_45:
  if (v11)
  {
    return mach_o::Error::Error(a4, "malformed uleb128");
  }

  *a4 = 0;
  return result;
}

void ___ZNK6mach_o13RebaseOpcodes5validENSt3__14spanIKNS_13MappedSegmentELm18446744073709551615EEEbb_block_invoke(uint64_t a1, uint64_t a2, int a3, char a4, unsigned int a5, unint64_t a6, _BYTE *a7)
{
  if ((a4 & 1) == 0)
  {
    mach_o::Error::Error(&v20, "%s missing preceding REBASE_OPCODE_SET_SEGMENT_AND_OFFSET_ULEB");
    goto LABEL_7;
  }

  if (*(a1 + 56) <= a5)
  {
    mach_o::Error::Error(&v20, "%s segment index %d too large");
    goto LABEL_7;
  }

  v9 = *(a1 + 48) + 56 * a5;
  if (*(v9 + 8) - *(*(a1 + 40) + 16) < a6)
  {
    v19 = *(v9 + 32);
    v14 = *(v9 + 40);
    mach_o::Error::Error(&v20, "%s segment offset 0x%08llX beyond segment '%.*s' size (0x%08llX)");
LABEL_7:
    mach_o::Error::operator=((*(*(a1 + 32) + 8) + 40), &v20);
    mach_o::Error::~Error(&v20);
    *a7 = 1;
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      mach_o::Error::Error(&v20, "%s unknown rebase type");
      goto LABEL_7;
    }

    if ((*(v9 + 49) & 1) == 0 && *(a1 + 64) == 1)
    {
      v11 = *(v9 + 40);
      v16 = *(v9 + 32);
      mach_o::Error::Error(&v20, "%s pointer rebase is in non-writable segment '%.*s'");
      goto LABEL_7;
    }

    if (*(v9 + 50) == 1 && *(a1 + 64) == 1)
    {
      v12 = *(v9 + 40);
      v17 = *(v9 + 32);
      mach_o::Error::Error(&v20, "%s pointer rebase is in executable segment '%.*s'");
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a1 + 65) & 1) == 0)
    {
      mach_o::Error::Error(&v20, "%s text rebase not supported for architecture");
      goto LABEL_7;
    }

    if (*(v9 + 49) == 1)
    {
      v10 = *(v9 + 40);
      v15 = *(v9 + 32);
      mach_o::Error::Error(&v20, "%s text rebase is in writable segment '%.*s'");
      goto LABEL_7;
    }

    if ((*(v9 + 50) & 1) == 0)
    {
      v13 = *(v9 + 40);
      v18 = *(v9 + 32);
      mach_o::Error::Error(&v20, "%s text rebase is in non-executable segment '%.*s'");
      goto LABEL_7;
    }
  }
}

uint64_t mach_o::NListSymbolTable::NListSymbolTable(uint64_t this, unsigned int a2, const nlist *a3, int a4, const char *a5, int a6, int a7, int a8, unsigned int a9)
{
  *this = a2;
  *(this + 8) = a5;
  *(this + 16) = a3;
  *(this + 24) = 0;
  *(this + 32) = a6;
  *(this + 36) = a4;
  *(this + 40) = a7;
  *(this + 44) = a8;
  *(this + 48) = a9;
  return this;
}

uint64_t mach_o::NListSymbolTable::NListSymbolTable(uint64_t this, uint64_t a2, const nlist_64 *a3, int a4, const char *a5, int a6, int a7, int a8, unsigned int a9)
{
  *this = a2;
  *(this + 8) = a5;
  *(this + 16) = 0;
  *(this + 24) = a3;
  *(this + 32) = a6;
  *(this + 36) = a4;
  *(this + 40) = a7;
  *(this + 44) = a8;
  *(this + 48) = a9;
  return this;
}

uint64_t mach_o::NListSymbolTable::symbolFromNList@<X0>(uint64_t this@<X0>, const char *__s@<X1>, unint64_t a3@<X2>, unsigned int a4@<W3>, char a5@<W4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v11 = (a4 >> 1) & 7;
  if (v11 > 4)
  {
    v15 = this;
    if (v11 != 5)
    {
      if (v11 != 7)
      {
        goto LABEL_19;
      }

      if ((a4 & 1) == 0)
      {
        if ((a6 & 0x200) != 0)
        {
          if ((a4 & 0x10) != 0)
          {
            if (__s)
            {
              v30 = strlen(__s);
            }

            else
            {
              v30 = 0;
            }

            return mach_o::Symbol::makeAltEntry(__s, v30, a3 - *v15, a5, 1, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 & 0x80) != 0, a7, 0);
          }

          else
          {
            if (__s)
            {
              v24 = strlen(__s);
            }

            else
            {
              v24 = 0;
            }

            return mach_o::Symbol::makeAltEntry(__s, v24, a3 - *v15, a5, 0, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 & 0x80) != 0, a7, 0);
          }
        }

        else if ((a4 & 0x10) != 0)
        {
          if ((a6 & 0x80) != 0)
          {
            if (__s)
            {
              v38 = strlen(__s);
            }

            else
            {
              v38 = 0;
            }

            v45 = a3 - *v15;

            return mach_o::Symbol::makeWeakDefWasPrivateExtern(__s, v38, v45, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
          }

          else
          {
            if (__s)
            {
              v28 = strlen(__s);
            }

            else
            {
              v28 = 0;
            }

            v43 = a3 - *v15;

            return mach_o::Symbol::makeRegularWasPrivateExtern(__s, v28, v43, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
          }
        }

        else
        {
          if (__s)
          {
            v17 = strlen(__s);
          }

          else
          {
            v17 = 0;
          }

          v39 = a3 - *v15;

          return mach_o::Symbol::makeRegularLocal(__s, v17, v39, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
        }
      }

      if ((a4 & 0x10) != 0)
      {
        if ((a6 & 0x200) != 0)
        {
          if (__s)
          {
            v31 = strlen(__s);
          }

          else
          {
            v31 = 0;
          }

          return mach_o::Symbol::makeAltEntry(__s, v31, a3 - *v15, a5, 2, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 & 0x80) != 0, a7, 0);
        }

        if ((a6 & 0x80) != 0)
        {
          if (__s)
          {
            v37 = strlen(__s);
          }

          else
          {
            v37 = 0;
          }

          v44 = a3 - *v15;

          return mach_o::Symbol::makeWeakDefHidden(__s, v37, v44, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
        }

        if ((a6 & 0x100) == 0)
        {
          if (__s)
          {
            v25 = strlen(__s);
          }

          else
          {
            v25 = 0;
          }

          v46 = a3 - *v15;

          return mach_o::Symbol::makeRegularHidden(__s, v25, v46, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
        }

        if (__s)
        {
          v40 = strlen(__s);
        }

        else
        {
          v40 = 0;
        }

        v47 = a3 - *v15;
        v48 = a7;
        v49 = __s;
        v50 = a5;
        v51 = 2;
      }

      else
      {
        if ((a6 & 0x200) != 0)
        {
          if (__s)
          {
            v29 = strlen(__s);
          }

          else
          {
            v29 = 0;
          }

          return mach_o::Symbol::makeAltEntry(__s, v29, a3 - *v15, a5, 4, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 & 0x80) != 0, a7, 0);
        }

        if ((~a6 & 0xC0) == 0)
        {
          if (__s)
          {
            v21 = strlen(__s);
          }

          else
          {
            v21 = 0;
          }

          v42 = a3 - *v15;

          return mach_o::Symbol::makeWeakDefAutoHide(__s, v21, v42, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
        }

        if ((a6 & 0x80) != 0)
        {
          if (__s)
          {
            v41 = strlen(__s);
          }

          else
          {
            v41 = 0;
          }

          v52 = a3 - *v15;

          return mach_o::Symbol::makeWeakDefExport(__s, v41, v52, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 3) & 1, a7);
        }

        if ((a6 & 0x100) == 0)
        {
          if (__s)
          {
            v36 = strlen(__s);
          }

          else
          {
            v36 = 0;
          }

          v53 = a3 - *v15;

          return mach_o::Symbol::makeRegularExport(__s, v36, v53, a5, (a6 >> 5) & 1, (a6 >> 10) & 1, (a6 >> 4) & 1, (a6 >> 3) & 1, a7);
        }

        if (__s)
        {
          v40 = strlen(__s);
        }

        else
        {
          v40 = 0;
        }

        v47 = a3 - *v15;
        v48 = a7;
        v49 = __s;
        v50 = a5;
        v51 = 4;
      }

      return mach_o::Symbol::makeDynamicResolver(v49, v40, v50, 0, v47, v51, v48);
    }

    v19 = __s;
    if (*(this + 32) > a3)
    {
      v19 = (*(this + 8) + a3);
    }

    if (a4)
    {
      if ((a4 & 0x10) != 0)
      {
        if (__s)
        {
          v20 = strlen(__s);
        }

        else
        {
          v20 = 0;
        }

        v32 = a7;
        v33 = __s;
        v34 = v19;
        v35 = 2;
      }

      else
      {
        if (__s)
        {
          v20 = strlen(__s);
        }

        else
        {
          v20 = 0;
        }

        v32 = a7;
        v33 = __s;
        v34 = v19;
        v35 = 4;
      }
    }

    else if ((a4 & 0x10) != 0)
    {
      if (__s)
      {
        v20 = strlen(__s);
      }

      else
      {
        v20 = 0;
      }

      v32 = a7;
      v33 = __s;
      v34 = v19;
      v35 = 1;
    }

    else
    {
      if (__s)
      {
        v20 = strlen(__s);
      }

      else
      {
        v20 = 0;
      }

      v32 = a7;
      v33 = __s;
      v34 = v19;
      v35 = 0;
    }

    return mach_o::Symbol::makeReExport(v33, v20, 0, v34, v35, v32);
  }

  else
  {
    if (v11)
    {
      if (v11 == 1)
      {
        if ((a4 & 0x10) != 0)
        {
          v12 = 2;
        }

        else
        {
          v12 = 4;
        }

        if (a4)
        {
          v13 = v12;
        }

        else
        {
          v13 = (a4 & 0x10) != 0;
        }

        if (__s)
        {
          v14 = strlen(__s);
        }

        else
        {
          v14 = 0;
        }

        return mach_o::Symbol::makeAbsolute(__s, v14, a3, (a6 >> 5) & 1, v13, 0, a7);
      }

LABEL_19:
      *a7 = &unk_1801109D5;
      *(a7 + 8) = 0u;
      *(a7 + 24) = 0u;
      return this;
    }

    if (a3)
    {
      if ((a4 & 0x10) != 0)
      {
        if (__s)
        {
          v23 = strlen(__s);
        }

        else
        {
          v23 = 0;
        }

        return mach_o::Symbol::makeHiddenTentativeDef(__s, v23, a3, BYTE1(a6) & 0xF, (a6 >> 5) & 1, (a6 >> 10) & 1, a7);
      }

      else
      {
        if (__s)
        {
          v18 = strlen(__s);
        }

        else
        {
          v18 = 0;
        }

        return mach_o::Symbol::makeTentativeDef(__s, v18, a3, BYTE1(a6) & 0xF, (a6 >> 5) & 1, (a6 >> 10) & 1, a7);
      }
    }

    else
    {
      if (__s)
      {
        v22 = strlen(__s);
      }

      else
      {
        v22 = 0;
      }

      v26 = (BYTE1(a6) + 2);
      if (v26 >= 3)
      {
        v27 = a6 >> 8;
      }

      else
      {
        v27 = v26 - 2;
      }

      return mach_o::Symbol::makeUndefined(__s, v22, v27, (a6 & 0x40) != 0, a7);
    }
  }
}

uint64_t mach_o::NListSymbolTable::forEachExportedSymbol(_DWORD *a1, uint64_t a2)
{
  v3 = a1[10];
  v2 = a1[11];
  if (!*(a1 + 5))
  {
    if (a1[12])
    {
      v2 = 0;
    }

    else
    {
      v2 = a1[9];
      if (v2)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 0x40000000;
        v8[2] = ___ZNK6mach_o16NListSymbolTable21forEachExportedSymbolEU13block_pointerFvRKNS_6SymbolEjRbE_block_invoke;
        v8[3] = &unk_1EEE9CC90;
        v8[4] = a2;
        v8[5] = a1;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 0x40000000;
        v9[2] = ___ZNK6mach_o16NListSymbolTable13forEachSymbolEU13block_pointerFvPKcyhhtjRbE_block_invoke;
        v9[3] = &unk_1EEE9CCE0;
        v9[4] = v8;
        v4 = v9;
        v5 = 0;
        return mach_o::NListSymbolTable::forEachSymbol(a1, v5, v2, v4);
      }
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK6mach_o16NListSymbolTable21forEachExportedSymbolEU13block_pointerFvRKNS_6SymbolEjRbE_block_invoke_2;
  v7[3] = &unk_1EEE9CCB8;
  v7[4] = a2;
  v7[5] = a1;
  v4 = v7;
  v5 = v3;
  return mach_o::NListSymbolTable::forEachSymbol(a1, v5, v2, v4);
}

uint64_t ___ZNK6mach_o16NListSymbolTable21forEachExportedSymbolEU13block_pointerFvRKNS_6SymbolEjRbE_block_invoke(uint64_t result, const char *a2, unint64_t a3, unsigned int a4, char a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v11 = (~a4 & 0xA) == 0 || (a4 & 0xE) == 2;
    if (a4 <= 0x1F && v11)
    {
      v16 = v8;
      v17 = v9;
      v14 = *(result + 32);
      mach_o::NListSymbolTable::symbolFromNList(*(result + 40), a2, a3, a4, a5, a6, v15);
      return (*(v14 + 16))(v14, v15, a7, a8);
    }
  }

  return result;
}

uint64_t mach_o::NListSymbolTable::forEachSymbol(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v16 = 0;
  if (a3)
  {
    v7 = 1;
    v8 = a3;
    while (1)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = (v9 + 16 * a2);
        v11 = *v10;
        if (v11 > *(a1 + 32))
        {
          goto LABEL_9;
        }

        v12 = *(a1 + 8);
        v13 = *(v10 + 1);
      }

      else
      {
        v10 = (*(a1 + 16) + 12 * a2);
        v11 = *v10;
        if (v11 > *(a1 + 32))
        {
          goto LABEL_9;
        }

        v12 = *(a1 + 8);
        v13 = v10[2];
      }

      (*(a4 + 16))(a4, v12 + v11, v13, *(v10 + 4), *(v10 + 5), *(v10 + 3), a2, &v16);
LABEL_9:
      v14 = v16;
      if (v7 < v8)
      {
        a2 = (a2 + 1);
        ++v7;
        if ((v16 & 1) == 0)
        {
          continue;
        }
      }

      return v14 & 1;
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t ___ZNK6mach_o16NListSymbolTable21forEachExportedSymbolEU13block_pointerFvRKNS_6SymbolEjRbE_block_invoke_2(uint64_t result, const char *a2, unint64_t a3, unsigned int a4, char a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v11 = (~a4 & 0xA) == 0 || (a4 & 0xE) == 2;
    if (a4 <= 0x1F && v11)
    {
      v16 = v8;
      v17 = v9;
      v14 = *(result + 32);
      mach_o::NListSymbolTable::symbolFromNList(*(result + 40), a2, a3, a4, a5, a6, v15);
      return (*(v14 + 16))(v14, v15, a7, a8);
    }
  }

  return result;
}

uint64_t mach_o::DebugNoteFileInfo::dump(const char **this)
{
  fprintf(__stdoutp, "scrDir:      %s\n", this[1]);
  fprintf(__stdoutp, "scrName:     %s\n", this[3]);
  fprintf(__stdoutp, "objPath:     %s\n", this[5]);
  fprintf(__stdoutp, "objModTime:  0x%08X\n", *this);
  fprintf(__stdoutp, "objSubType:  0X%02X\n", *(this + 4));
  if (this[8])
  {
    v2 = this[7];
  }

  else
  {
    v2 = "N/A";
  }

  fprintf(__stdoutp, "libPath:     %s\n", v2);
  if (this[10])
  {
    v3 = this[9];
  }

  else
  {
    v3 = "N/A";
  }

  return fprintf(__stdoutp, "origlibPath: %s\n", v3);
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

void mach_o::Universal::valid(mach_o::Universal *this@<X0>, unint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  v4 = *this;
  if ((*this | 0x1000000) != 0xBFBAFECA)
  {
    v6 = "file does not start with FAT_MAGIC";
    goto LABEL_7;
  }

  v5 = 28;
  if (v4 == -1078264118)
  {
    v5 = 40;
  }

  if (v5 > a2)
  {
    v6 = "fat file too short";
LABEL_7:

    mach_o::Error::Error(a3, v6);
    return;
  }

  v7 = bswap32(*(this + 1));
  if (v7 >= 0x11)
  {
    mach_o::Error::Error(a3, "fat file has too many slices (%d)", v7);
    return;
  }

  v8 = 32 * v7;
  v9 = 20 * v7 + 20;
  if (v4 == -1078264118)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if ((v10 + 8) > a2)
  {
    v6 = "slice headers extend beyond end of file";
    goto LABEL_7;
  }

  memset(v36, 0, sizeof(v36));
  v30 = 0;
  v31 = &v30;
  v32 = 0x3002000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  v35 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v29[3] = v5;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2000000000;
  v28[3] = v36;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = v37;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 1;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = ___ZNK6mach_o9Universal5validEy_block_invoke;
  v19[3] = &unk_1EEE9CD08;
  v19[4] = &v24;
  v19[5] = &v30;
  v19[6] = v29;
  v19[7] = &v20;
  v19[10] = a2;
  v19[11] = v36;
  v19[8] = v28;
  v19[9] = this;
  mach_o::Universal::forEachSlice(this, v19);
  if (v31[5])
  {
    mach_o::Error::Error(a3, v31 + 5);
  }

  else
  {
    if ((v21[3] & 1) == 0)
    {
      v11 = v25[3];
      v12 = v11 - v37;
      if (v11 != v37)
      {
        v13 = 0;
        v14 = v12 >> 4;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        while (2)
        {
          v15 = v14;
          v16 = v13;
          v17 = &v38;
          v18 = &v37[16 * v13];
          do
          {
            if (v16 && *(v17 - 1) < v18[1] && *v17 > *v18)
            {
              mach_o::Error::Error(a3, "overlapping slices");
              goto LABEL_31;
            }

            v17 += 2;
            --v16;
            --v15;
          }

          while (v15);
          if (++v13 != v14)
          {
            continue;
          }

          break;
        }
      }
    }

    *a3 = 0;
  }

LABEL_31:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);
  mach_o::Error::~Error(&v35);
}

uint64_t mach_o::Universal::forEachSlice(uint64_t result, uint64_t a2)
{
  v21 = 0;
  v3 = *(result + 4);
  v4 = bswap32(v3);
  if (*result == -1078264118)
  {
    if (v3)
    {
      v15 = (result + 24);
      v16 = 1;
      do
      {
        mach_o::Architecture::Architecture(&v20, (v15 - 2));
        v17 = bswap64(*(v15 - 1));
        v18 = bswap64(*v15);
        v19 = v20;
        result = (*(a2 + 16))(a2, &v19, v17, v18, &v21);
        if (v16 >= v4)
        {
          break;
        }

        v15 += 4;
        ++v16;
      }

      while ((v21 & 1) == 0);
    }
  }

  else if (*result == -1095041334)
  {
    v5 = result + 8;
    if (v3)
    {
      v6 = (result + 20);
      v7 = 1;
      do
      {
        mach_o::Architecture::Architecture(&v20, (v6 - 3));
        v8 = *(v6 - 1);
        v9 = *v6;
        if (mach_o::Architecture::operator==(&v20, mach_o::Architecture::arm64e_old))
        {
          v10 = 16777228;
          v20 = 0x800000020100000CLL;
          v11 = -2147483646;
        }

        else
        {
          v10 = v20;
          v11 = HIDWORD(v20);
        }

        v19 = __PAIR64__(v11, v10);
        (*(a2 + 16))(a2, &v19, bswap32(v8), bswap32(v9), &v21);
        if (v7 >= v4)
        {
          break;
        }

        v6 += 5;
        ++v7;
      }

      while ((v21 & 1) == 0);
    }

    v12 = (v5 + 20 * v4);
    mach_o::Architecture::Architecture(&v20, v12);
    result = mach_o::Architecture::operator==(&v20, mach_o::Architecture::arm64);
    if (result)
    {
      v13 = bswap32(v12->offset);
      v14 = bswap32(v12->size);
      v19 = v20;
      return (*(a2 + 16))(a2, &v19, v13, v14, &v21);
    }
  }

  return result;
}

void ___ZNK6mach_o9Universal5validEy_block_invoke(void *a1, mach_o::Architecture *this, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  v8 = a1[9];
  v9 = a4 + a3;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v11 + 2;
  *v11 = a3;
  v11[1] = a4 + a3;
  if (__CFADD__(a3, a4) || a3 + a4 > a1[10])
  {
    mach_o::Architecture::name(this);
    mach_o::Error::Error(&v18, "%s slice extends beyond end of file");
LABEL_14:
    mach_o::Error::operator=((*(a1[5] + 8) + 40), &v18);
    mach_o::Error::~Error(&v18);
    *a5 = 1;
  }

  else
  {
    if (*(*(a1[6] + 8) + 24) > a3)
    {
      *(*(a1[7] + 8) + 24) = 0;
    }

    for (i = a1[11]; ; i += 2)
    {
      v15 = *(a1[8] + 8);
      v16 = *(v15 + 24);
      if (i >= v16)
      {
        break;
      }

      if (mach_o::Architecture::operator==(this, i))
      {
        mach_o::Architecture::name(this);
        mach_o::Error::Error(&v18, "duplicate %s slices");
        goto LABEL_14;
      }
    }

    *(v15 + 24) = v16 + 1;
    *v16 = *this;
    v17 = *this;
    mach_o::Universal::validSlice(v8, &v17, a3, a4, &v18);
    mach_o::Error::operator=((*(a1[5] + 8) + 40), &v18);
    mach_o::Error::~Error(&v18);
    if (*(*(a1[5] + 8) + 40))
    {
      *a5 = 1;
    }

    *(*(a1[6] + 8) + 24) = v9;
  }
}

mach_o::Header *mach_o::Universal::validSlice@<X0>(uint64_t a1@<X0>, mach_o::Architecture *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, mach_o::Error *a5@<X8>)
{
  result = mach_o::Header::isMachO((a1 + a3), a4);
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  if (mach_o::Header::uses16KPages(result))
  {
    isObjectFile = mach_o::Header::isObjectFile(v9);
    v11 = 0x3FFFLL;
    if (isObjectFile)
    {
      v11 = 4095;
    }
  }

  else
  {
    v11 = 4095;
  }

  if ((v11 & a3) == 0)
  {
    mach_o::Header::arch(v9, &v14);
    result = mach_o::Architecture::operator==(&v14, a2);
    if ((result & 1) == 0)
    {
      v12 = mach_o::Architecture::name(&v14);
      v13 = mach_o::Architecture::name(a2);
      return mach_o::Error::Error(a5, "cpu type/subtype in slice (%s) does not match fat header (%s)", v12, v13);
    }

LABEL_12:
    *a5 = 0;
    return result;
  }

  return mach_o::Error::Error(a5, "slice is not page aligned");
}

uint64_t mach_o::Universal::forEachSlice(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o9Universal12forEachSliceEU13block_pointerFvNS0_5SliceERbE_block_invoke;
  v3[3] = &unk_1EEE9CD30;
  v3[4] = a2;
  v3[5] = a1;
  return mach_o::Universal::forEachSlice(a1, v3);
}

uint64_t ___ZNK6mach_o9Universal12forEachSliceEU13block_pointerFvNS0_5SliceERbE_block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v8 = *a2;
  v9 = v5 + a3;
  v10 = a4;
  return (*(v4 + 16))();
}

uint64_t mach_o::Universal::bestSlice(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  memset(v17, 0, 384);
  memset(v16, 0, sizeof(v16));
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZNK6mach_o9Universal9bestSliceERKNS_19GradedArchitecturesEbRNS0_5SliceE_block_invoke;
  v10[3] = &unk_1EEE9CD58;
  v10[4] = &v11;
  v10[5] = v16;
  v10[6] = v17;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = ___ZNK6mach_o9Universal12forEachSliceEU13block_pointerFvNS0_5SliceERbE_block_invoke;
  v15[3] = &unk_1EEE9CD30;
  v15[4] = v10;
  v15[5] = a1;
  mach_o::Universal::forEachSlice(a1, v15);
  LODWORD(v15[0]) = 0;
  hasCompatibleSlice = mach_o::GradedArchitectures::hasCompatibleSlice(a2, v16, *(v12 + 6), a3, v15);
  if (hasCompatibleSlice)
  {
    v8 = &v17[3 * LODWORD(v15[0])];
    *a4 = *v8;
    *(a4 + 16) = v8[2];
  }

  _Block_object_dispose(&v11, 8);
  return hasCompatibleSlice;
}

__n128 ___ZNK6mach_o9Universal9bestSliceERKNS_19GradedArchitecturesEbRNS0_5SliceE_block_invoke(void *a1, void *a2)
{
  *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = *a2;
  v2 = (a1[6] + 24 * *(*(a1[4] + 8) + 24));
  result = *a2;
  v2[1].n128_u64[0] = a2[2];
  *v2 = result;
  ++*(*(a1[4] + 8) + 24);
  return result;
}

uint64_t mach_o::read_uleb128(const unsigned __int8 ***this, const unsigned __int8 **a2, unsigned __int8 *a3, BOOL *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *this;
  v7 = (a2 - *this);
  *a3 = 0;
  v8 = 10;
  if (v7 < 0xA)
  {
    v8 = v7;
  }

  v9 = (v6 + v8);
  while (v7 && v4 <= 0x3F)
  {
    v10 = *v6;
    v6 = (v6 + 1);
    v5 |= (v10 & 0x7F) << v4;
    v4 += 7;
    --v7;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_9;
    }
  }

  *a3 = 1;
  v6 = v9;
LABEL_9:
  if (v7)
  {
    v11 = v6;
  }

  else
  {
    v11 = a2;
  }

  *this = v11;
  return v5;
}

uint64_t mach_o::read_sleb128(const unsigned __int8 ***this, const unsigned __int8 **a2, unsigned __int8 *a3, BOOL *a4)
{
  *a3 = 0;
  v4 = *this;
  if (*this == a2)
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
LABEL_7:
    *a3 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -7 * v4 - a2 + 8 * a2;
    while (1)
    {
      v8 = (v4 + 1);
      *this = (v4 + 1);
      v9 = *v4;
      v6 |= (v9 & 0x7F) << v5;
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v4 = (v4 + 1);
      if (v8 == a2)
      {
        goto LABEL_7;
      }
    }

    v7 = v5 + 7;
  }

  v10 = v7 < 64;
  v11 = -1 << v7;
  if ((v10 & (v9 >> 6)) == 0)
  {
    v11 = 0;
  }

  return v11 | v6;
}

mach_o::Image *mach_o::Image::Image(mach_o::Image *this, mach_o::Header *a2, unint64_t a3, int a4)
{
  v5 = a2;
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 24) = a4;
  *(this + 25) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  if ((a4 - 1) >= 2)
  {
    v7 = 0;
    if (a4 == 3)
    {
      v7 = mach_o::Image::inferIfZerofillExpanded(this);
      *(this + 25) = v7;
      v5 = *this;
    }
  }

  else
  {
    v7 = 1;
    *(this + 25) = 1;
  }

  *(this + 2) = mach_o::Header::computeLinkEditBias(v5, v7);
  mach_o::Header::validStructureLoadCommands(*this, a3, v11);
  v8 = v11[0];
  mach_o::Error::~Error(v11);
  if (!v8)
  {
    mach_o::Image::makeExportsTrie(this);
    mach_o::Image::makeSymbolTable(this);
    mach_o::Image::makeRebaseOpcodes(this);
    mach_o::Image::makeBindOpcodes(this);
    mach_o::Image::makeLazyBindOpcodes(this);
    mach_o::Image::makeWeakBindOpcodes(this);
    mach_o::Image::makeChainedFixups(this);
    mach_o::Image::makeFunctionStarts(this);
    v9 = *this;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZN6mach_o5Image17makeCompactUnwindEv_block_invoke;
    v11[3] = &__block_descriptor_tmp_73;
    v11[4] = this;
    mach_o::Header::forEachSection(v9, v11);
    mach_o::Image::makeSplitSegInfo(this);
    mach_o::Image::makeFunctionVariants(this);
    mach_o::Image::makeFunctionVariantFixups(this);
  }

  return this;
}

BOOL mach_o::Image::inferIfZerofillExpanded(mach_o::Header **this)
{
  if (mach_o::Header::isPreload(*this) || mach_o::Header::isFileSet(*this) || !mach_o::Header::hasZerofillExpansion(*this))
  {
    return 0;
  }

  *v7 = 0;
  if (!mach_o::Header::hasCodeSignature(*this, &v7[1], v7) || this[1] <= v7[1] || (v2 = *this, v3 = *(*this + v7[1]), v4 = v3 != -1072898310) && (v5 = mach_o::Header::zerofillExpansionAmount(v2), *(v2 + v5 + v7[1]) != -1072898310))
  {
    __assert_rtn("inferIfZerofillExpanded", "Image.cpp", 157, "false && handle unsigned");
  }

  return v4;
}

void mach_o::Image::makeExportsTrie(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image15makeExportsTrieEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_61;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeSymbolTable(mach_o::Header **this)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v2 = *this;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZN6mach_o5Image15makeSymbolTableEv_block_invoke;
  v10[3] = &unk_1EEE9CEE0;
  v10[4] = &v16;
  v10[5] = &v12;
  mach_o::Header::forEachLoadCommand(v2, v10, v11);
  mach_o::Error::~Error(v11);
  if (v17[3])
  {
    v3 = v13[3];
    if (v3)
    {
      v4 = v3[3];
      v5 = v3[5];
      v6 = v3[7];
    }

    else
    {
      v6 = 0;
      v5 = 0;
      v4 = 0;
    }

    v7 = mach_o::Header::is64(*this);
    Address = mach_o::Header::preferredLoadAddress(*this);
    if (v7)
    {
      v9 = mach_o::NListSymbolTable::NListSymbolTable((this + 18), Address, (this[2] + *(v17[3] + 8)), *(v17[3] + 12), this[2] + *(v17[3] + 16), *(v17[3] + 20), v4, v5, v6);
    }

    else
    {
      v9 = mach_o::NListSymbolTable::NListSymbolTable((this + 18), Address, (this[2] + *(v17[3] + 8)), *(v17[3] + 12), this[2] + *(v17[3] + 16), *(v17[3] + 20), v4, v5, v6);
    }

    this[5] = v9;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void mach_o::Image::makeRebaseOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image17makeRebaseOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_63;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeBindOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image15makeBindOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_64;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeLazyBindOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image19makeLazyBindOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_65;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeWeakBindOpcodes(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image19makeWeakBindOpcodesEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_66_0;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeChainedFixups(mach_o::Header **this)
{
  v2 = *this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_67;
  v5[4] = this;
  mach_o::Header::forEachLoadCommand(v2, v5, v6);
  mach_o::Error::~Error(v6);
  if ((mach_o::Header::isPreload(*this) || mach_o::Header::isStaticExecutable(*this)) && !this[10])
  {
    v3 = *this;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke_2;
    v4[3] = &__block_descriptor_tmp_70;
    v4[4] = this;
    mach_o::Header::forEachSection(v3, v4);
  }
}

void mach_o::Image::makeFunctionStarts(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image18makeFunctionStartsEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_71;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeSplitSegInfo(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image16makeSplitSegInfoEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_74;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeFunctionVariants(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image20makeFunctionVariantsEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_75_0;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

void mach_o::Image::makeFunctionVariantFixups(mach_o::Error **this)
{
  v1 = *this;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = ___ZN6mach_o5Image25makeFunctionVariantFixupsEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_76_0;
  v2[4] = this;
  mach_o::Header::forEachLoadCommand(v1, v2, v3);
  mach_o::Error::~Error(v3);
}

mach_o::Image *mach_o::Image::Image(mach_o::Image *this, mach_header *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 12) = 258;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 2) = mach_o::Header::computeLinkEditBias(a2, 1);
  mach_o::Image::makeExportsTrie(this);
  mach_o::Image::makeSymbolTable(this);
  mach_o::Image::makeRebaseOpcodes(this);
  mach_o::Image::makeBindOpcodes(this);
  mach_o::Image::makeLazyBindOpcodes(this);
  mach_o::Image::makeWeakBindOpcodes(this);
  mach_o::Image::makeChainedFixups(this);
  mach_o::Image::makeFunctionStarts(this);
  v3 = *this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN6mach_o5Image17makeCompactUnwindEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_73;
  v5[4] = this;
  mach_o::Header::forEachSection(v3, v5);
  mach_o::Image::makeSplitSegInfo(this);
  mach_o::Image::makeFunctionVariants(this);
  mach_o::Image::makeFunctionVariantFixups(this);
  return this;
}

void mach_o::Image::validate(mach_o::Image *this@<X0>, mach_o::Error *a2@<X8>)
{
  mach_o::Header::valid(*this, *(this + 1), a2);
  if (!*a2)
  {
    mach_o::Error::~Error(a2);
    mach_o::Header::arch(*this, &v5);
    mach_o::Header::platformAndVersions(*this, v4);
    mach_o::Policy::Policy(v6, &v5, v4, *(*this + 12), 0, 0, 0);
    if (gImageValidateInitializers == 1)
    {
      mach_o::Image::validInitializers(this, a2);
      if (*a2)
      {
        return;
      }

      mach_o::Error::~Error(a2);
    }

    mach_o::Image::validLinkedit(this, v6, a2);
    if (!*a2)
    {
      mach_o::Error::~Error(a2);
      *a2 = 0;
    }
  }
}

void mach_o::Image::validInitializers(mach_o::Header **this@<X0>, mach_o::Error *a2@<X8>)
{
  if (mach_o::Header::isObjectFile(*this))
  {
    *a2 = 0;
  }

  else
  {
    Address = mach_o::Header::preferredLoadAddress(*this);
    Slide = mach_o::Header::getSlide(*this);
    v23 = 0;
    v24 = &v23;
    v25 = 0x3002000000;
    v26 = __Block_byref_object_copy__7;
    v27 = __Block_byref_object_dispose__7;
    v28 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x10002000000;
    v19 = __Block_byref_object_copy__42;
    v20 = __Block_byref_object_dispose__43;
    v21[24] = v21;
    v22 = xmmword_1801107E0;
    v7 = *this;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke;
    v15[3] = &unk_1EEE9CE20;
    v15[4] = &v16;
    mach_o::Header::forEachSegment(v7, v15);
    if (v17[31])
    {
      v8 = *this;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 0x40000000;
      v14[2] = ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke_2;
      v14[3] = &unk_1EEE9CE48;
      v14[4] = &v16;
      v14[5] = &v23;
      mach_o::Header::forEachLoadCommandSafe(v8, v14);
      v9 = *this;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke_3;
      v13[3] = &unk_1EEE9CE70;
      v13[4] = &v23;
      v13[5] = &v16;
      v13[6] = this;
      v13[7] = Address;
      mach_o::Header::forEachSection(v9, v13);
      v10 = v24 + 5;
      if (v24[5])
      {
        goto LABEL_6;
      }

      v11 = *this;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke_4;
      v12[3] = &unk_1EEE9CE98;
      v12[4] = &v23;
      v12[5] = &v16;
      v12[6] = Slide;
      v12[7] = Address;
      mach_o::Header::forEachSection(v11, v12);
      v10 = v24 + 5;
      if (v24[5])
      {
LABEL_6:
        mach_o::Error::Error(a2, v10);
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      mach_o::Error::Error(a2, "no executable segments");
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v23, 8);
    mach_o::Error::~Error(&v28);
  }
}

void mach_o::Image::validLinkedit(dyld3::MachOFile **this@<X0>, const mach_o::Policy *a2@<X1>, mach_o::Error *a3@<X8>)
{
  mach_o::Image::validStructureLinkedit(this, a2, a3);
  if (!*a3)
  {
    mach_o::Error::~Error(a3);
    v6 = mach_o::Image::segmentCount(this);
    v7 = MEMORY[0x1EEE9AC00](v6);
    v10 = (&v35 - v9 + 32);
    do
    {
      *v10 = 0;
      v10[1] = 0;
      v10 += 7;
      v8 -= 56;
    }

    while (v8);
    v36 = &v35 - v9;
    if (v7)
    {
      v11 = 0;
      v12 = 0x4000;
      v13 = &v35 - v9;
      v14 = v7;
      do
      {
        mach_o::Image::segment(this, v11, v37);
        v15 = v37[1];
        *v13 = v37[0];
        *(v13 + 1) = v15;
        *(v13 + 2) = *v38;
        *(v13 + 47) = *&v38[15];
        if (*(v13 + 5) != 10 || ((v16 = *(v13 + 4), v17 = *v16, v18 = *(v16 + 4), v17 == 0x44454B4E494C5F5FLL) ? (v19 = v18 == 21577) : (v19 = 0), !v19))
        {
          if (v12 <= *(v13 + 1) + *v13)
          {
            v12 = *(v13 + 1) + *v13;
          }
        }

        ++v11;
        v13 += 56;
      }

      while (v14 != v11);
    }

    else
    {
      v14 = 0;
    }

    v20 = this[4];
    if (v20)
    {
      mach_o::Header::preferredLoadAddress(*this);
      mach_o::ExportsTrie::valid(v20);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    if (this[5])
    {
      mach_o::NListSymbolTable::valid(a3);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    v21 = this[6];
    if (v21)
    {
      HaveTextFixups = mach_o::Header::mayHaveTextFixups(*this);
      v23 = mach_o::Policy::enforceTextSegmentPermissions(a2);
      mach_o::RebaseOpcodes::valid(v21, v36, v14, HaveTextFixups, v23, a3);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    v24 = this[7];
    if (v24)
    {
      v25 = mach_o::Header::linkedDylibCount(*this, 0);
      v26 = mach_o::Header::mayHaveTextFixups(*this);
      v27 = mach_o::Policy::enforceTextSegmentPermissions(a2);
      mach_o::BindOpcodes::valid(v24, v36, v14, v25, v26, v27, a3);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    v28 = this[8];
    if (v28)
    {
      v29 = mach_o::Header::linkedDylibCount(*this, 0);
      v30 = mach_o::Header::mayHaveTextFixups(*this);
      v31 = mach_o::Policy::enforceTextSegmentPermissions(a2);
      mach_o::BindOpcodes::valid(v28, v36, v14, v29, v30, v31, a3);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    v32 = this[10];
    if (v32)
    {
      Address = mach_o::Header::preferredLoadAddress(*this);
      mach_o::ChainedFixups::valid(v32, Address, v36, v14, 0, a3);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    v34 = this[14];
    if (v34)
    {
      mach_o::FunctionVariants::valid(v34, a3);
      if (*a3)
      {
        return;
      }

      mach_o::Error::~Error(a3);
    }

    *a3 = 0;
  }
}

void mach_o::Image::validStructureLinkedit(dyld3::MachOFile **this@<X0>, const mach_o::Policy *a2@<X1>, mach_o::Error *a3@<X8>)
{
  v6 = dyld3::MachOFile::pointerSize(*this);
  v85 = 0;
  v86 = &v85;
  v87 = 0x2000000000;
  v88 = v89;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2000000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2000000000;
  v80 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2000000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2000000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2000000000;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2000000000;
  v64 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3002000000;
  v54 = __Block_byref_object_copy__7;
  v55 = __Block_byref_object_dispose__7;
  v56 = 0;
  v7 = *this;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 0x40000000;
  v48[2] = ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke;
  v48[3] = &unk_1EEE9CD80;
  v48[4] = &v81;
  v48[5] = &v51;
  v49 = v6;
  v48[6] = &v85;
  v48[7] = &v73;
  v48[8] = &v77;
  v48[9] = &v69;
  v48[10] = &v65;
  v48[11] = &v61;
  v48[12] = &v57;
  mach_o::Header::forEachLoadCommand(v7, v48, v50);
  mach_o::Error::~Error(v50);
  if (v52[5])
  {
    mach_o::Error::Error(a3, v52 + 5);
  }

  else
  {
    if (*(v74 + 24) == 1 && *(v82 + 6) != *(v78 + 6))
    {
      mach_o::Error::Error(a3, "symbol count from symbol table and dynamic symbol table differ");
      goto LABEL_60;
    }

    if (*(v62 + 24) == 1 && mach_o::Policy::enforceOneFixupEncoding(a2))
    {
      if (*(v70 + 24) == 1)
      {
        mach_o::Error::Error(a3, "malformed mach-o contains LC_DYLD_INFO_ONLY and local relocations");
        goto LABEL_60;
      }

      if (*(v66 + 24) == 1)
      {
        mach_o::Error::Error(a3, "malformed mach-o contains LC_DYLD_INFO_ONLY and external relocations");
        goto LABEL_60;
      }
    }

    if (*(v58 + 24) == 1)
    {
      if (*(v70 + 24) == 1)
      {
        mach_o::Error::Error(a3, "malformed mach-o contains LC_DYLD_CHAINED_FIXUPS and local relocations");
        goto LABEL_60;
      }

      if (*(v66 + 24) == 1)
      {
        mach_o::Error::Error(a3, "malformed mach-o contains LC_DYLD_CHAINED_FIXUPS and external relocations");
        goto LABEL_60;
      }

      if ((v62[3] & 1) == 1)
      {
        mach_o::Error::Error(a3, "malformed mach-o contains LC_DYLD_INFO and LC_DYLD_CHAINED_FIXUPS");
        goto LABEL_60;
      }
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2000000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 0;
    if (mach_o::Header::isObjectFile(*this) || mach_o::Header::isPreload(*this))
    {
      v8 = *this;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 0x40000000;
      v39[2] = ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke_2;
      v39[3] = &unk_1EEE9CDA8;
      v39[4] = &v44;
      mach_o::Header::forEachSection(v8, v39);
      v41[3] = this[1];
      if (!v45[3])
      {
        v9 = *this;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 0x40000000;
        v38[2] = ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke_3;
        v38[3] = &unk_1EEE9CDD0;
        v38[4] = &v44;
        mach_o::Header::forEachLoadCommandSafe(v9, v38);
      }
    }

    else
    {
      v10 = *this;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 0x40000000;
      v36[2] = ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke_4;
      v36[3] = &unk_1EEE9CDF8;
      v36[4] = &v44;
      v36[5] = &v40;
      mach_o::Header::forEachLoadCommand(v10, v36, v37);
      mach_o::Error::~Error(v37);
      if (!v45[3] || !v41[3])
      {
        mach_o::Error::Error(a3, "bad or unknown fileoffset/size for LINKEDIT");
        goto LABEL_59;
      }
    }

    v11 = v86[3] - v89;
    if (v11)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      if (v12 != 1)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = v12 + ~v13;
          if (!v15)
          {
            break;
          }

          v16 = 0;
          v17 = 1;
          v18 = 1;
          do
          {
            v19 = &v89[24 * v16];
            v20 = &v89[24 * v17];
            if (*(v19 + 3) > *(v20 + 3))
            {
              v18 = 0;
              v21 = *(v19 + 2);
              v22 = *v19;
              v23 = *(v20 + 2);
              *v19 = *v20;
              *(v19 + 2) = v23;
              *v20 = v22;
              *(v20 + 2) = v21;
            }

            v16 = v17++;
          }

          while (v15 > v16);
          v13 = ++v14;
        }

        while (!(v18 & 1 | (v12 - 1 <= v14)));
      }

      if (v12 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v12;
      }

      v25 = v90;
      if (v45[3] <= v90)
      {
        v27 = v89;
        while (1)
        {
          v28 = *(v27 + 2);
          v29 = __CFADD__(v25, v28);
          v30 = v25 + v28;
          if (v29 || v30 > v41[3])
          {
            v33 = *v27;
            mach_o::Error::Error(a3, "LINKEDIT content '%s' extends beyond end of segment");
            goto LABEL_59;
          }

          if (((*(v27 + 2) - 1) & v25) != 0)
          {
            if (!strcmp(*v27, "code signature"))
            {
              if (mach_o::Policy::enforceTextSegmentPermissions(a2))
              {
                mach_o::Error::Error(a3, "mis-aligned code signature");
                goto LABEL_59;
              }
            }

            else if (mach_o::Policy::enforceLinkeditContentAlignment(a2))
            {
              v34 = *v27;
              mach_o::Error::Error(a3, "mis-aligned LINKEDIT content '%s'");
              goto LABEL_59;
            }
          }

          if (!--v24)
          {
            goto LABEL_42;
          }

          v26 = (v27 + 24);
          v31 = *(v27 + 2) + *(v27 + 3);
          v25 = *(v27 + 9);
          v27 += 24;
          if (v31 > v25)
          {
            v32 = *(v26 - 3);
            goto LABEL_54;
          }
        }
      }

      v26 = v89;
LABEL_54:
      v35 = *v26;
      mach_o::Error::Error(a3, "LINKEDIT overlap of %s and %s");
    }

    else if (mach_o::Header::isObjectFile(*this) || mach_o::Header::isFileSet(*this))
    {
LABEL_42:
      *a3 = 0;
    }

    else
    {
      mach_o::Error::Error(a3, "malformed mach-o has no LINKEDIT information");
    }

LABEL_59:
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }

LABEL_60:
  _Block_object_dispose(&v51, 8);
  mach_o::Error::~Error(&v56);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(&v85, 8);
}

uint64_t mach_o::Image::segmentCount(mach_o::Error **this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v1 = *this;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK6mach_o5Image12segmentCountEv_block_invoke;
  v4[3] = &unk_1EEE9D068;
  v4[4] = &v6;
  mach_o::Header::forEachLoadCommand(v1, v4, v5);
  mach_o::Error::~Error(v5);
  v2 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void mach_o::Image::segment(mach_o::Error **this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x6002000000;
  v16 = __Block_byref_object_copy__78;
  v18 = 0;
  v19 = 0;
  v17 = __Block_byref_object_dispose__79;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v10[3] = 0;
  v4 = *this;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK6mach_o5Image7segmentEj_block_invoke;
  v7[3] = &unk_1EEE9D090;
  v7[4] = v10;
  v7[5] = v11;
  v8 = a2;
  v7[6] = &v13;
  v7[7] = this;
  mach_o::Header::forEachLoadCommand(v4, v7, v9);
  mach_o::Error::~Error(v9);
  v5 = v14;
  v6 = *(v14 + 7);
  *a3 = *(v14 + 5);
  *(a3 + 16) = v6;
  *(a3 + 32) = *(v5 + 9);
  *(a3 + 48) = v5[11];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
}

void ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke(uint64_t a1, int *a2, _BYTE *a3)
{
  v5 = *a2;
  if (*a2 > 28)
  {
    if (v5 > 37)
    {
      switch(v5)
      {
        case '&':
          v7 = a2[3];
          if (!v7)
          {
            return;
          }

          v8 = *(a1 + 104);
          v9 = a2 + 2;
          v10 = "function starts";
          goto LABEL_66;
        case ')':
          v7 = a2[3];
          if (!v7)
          {
            return;
          }

          v8 = *(a1 + 104);
          v9 = a2 + 2;
          v10 = "data in code";
          goto LABEL_66;
        case '6':
          v7 = a2[3];
          if (v7)
          {
            v8 = *(a1 + 104);
            v9 = a2 + 2;
            v10 = "atom info";
LABEL_66:
            v50 = *v9;
            v51 = *(*(a1 + 48) + 8);
            v52 = *(v51 + 24);
            *(v51 + 24) = v52 + 24;
            *v52 = v10;
            *(v52 + 8) = v8;
            *(v52 + 12) = v50;
            *(v52 + 16) = v7;
            return;
          }

          break;
      }

      return;
    }

    if (v5 == 29)
    {
      v7 = a2[3];
      if (!v7)
      {
        return;
      }

      v8 = *(a1 + 104);
      v9 = a2 + 2;
      v10 = "code signature";
      goto LABEL_66;
    }

    if (v5 == 30)
    {
      v7 = a2[3];
      if (!v7)
      {
        return;
      }

      v8 = *(a1 + 104);
      v9 = a2 + 2;
      v10 = "shared cache info";
      goto LABEL_66;
    }

    if (v5 != 34)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 > -2147483597)
  {
    if (v5 == -2147483596)
    {
      *(*(*(a1 + 96) + 8) + 24) = 1;
      v7 = a2[3];
      if (!v7)
      {
        return;
      }

      v8 = *(a1 + 104);
      v9 = a2 + 2;
      v10 = "chained fixups";
      goto LABEL_66;
    }

    if (v5 == 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = a2[3];
      v31 = *(*(*(a1 + 32) + 8) + 24);
      if (v31)
      {
        if (v31 >= 0x10000001)
        {
          mach_o::Error::Error(&v53, "malformed mach-o image: symbol table too large");
          mach_o::Error::operator=((*(*(a1 + 40) + 8) + 40), &v53);
          mach_o::Error::~Error(&v53);
          *a3 = 1;
          v31 = *(*(*(a1 + 32) + 8) + 24);
        }

        v32 = *(a1 + 104);
        if (v32 == 8)
        {
          v33 = 16;
        }

        else
        {
          v33 = 12;
        }

        v34 = v33 * v31;
        v35 = a2[2];
        v36 = *(*(a1 + 48) + 8);
        v37 = *(v36 + 24);
        *(v36 + 24) = v37 + 24;
        *v37 = "symbol table";
        *(v37 + 8) = v32;
        *(v37 + 12) = v35;
        *(v37 + 16) = v34;
      }

      v7 = a2[5];
      if (v7)
      {
        v9 = a2 + 4;
        v8 = 1;
        v10 = "symbol table strings";
        goto LABEL_66;
      }

      return;
    }

    if (v5 != 11)
    {
      return;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (a2[15] < 0x10000001)
    {
      if (a2[2])
      {
        mach_o::Error::Error(&v53, "malformed mach-o image: indirect symbol table ilocalsym != 0");
      }

      else
      {
        v38 = a2[4];
        if (v38 == a2[3])
        {
          if (a2[6] == a2[5] + v38)
          {
            goto LABEL_60;
          }

          mach_o::Error::Error(&v53, "malformed mach-o image: indirect symbol table iundefsym != iextdefsym+nextdefsym");
        }

        else
        {
          mach_o::Error::Error(&v53, "malformed mach-o image: indirect symbol table iextdefsym != nlocalsym");
        }
      }
    }

    else
    {
      mach_o::Error::Error(&v53, "malformed mach-o image: indirect symbol table too large");
    }

    mach_o::Error::operator=((*(*(a1 + 40) + 8) + 40), &v53);
    mach_o::Error::~Error(&v53);
    *a3 = 1;
LABEL_60:
    *(*(*(a1 + 64) + 8) + 24) = a2[7] + a2[6];
    v39 = a2[19];
    if (v39)
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v40 = *(a1 + 104);
      v41 = a2[18];
      v42 = *(*(a1 + 48) + 8);
      v43 = *(v42 + 24);
      *(v42 + 24) = v43 + 24;
      *v43 = "local relocations";
      *(v43 + 8) = v40;
      *(v43 + 12) = v41;
      *(v43 + 16) = 8 * v39;
    }

    v44 = a2[17];
    if (v44)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v45 = *(a1 + 104);
      v46 = a2[16];
      v47 = *(*(a1 + 48) + 8);
      v48 = *(v47 + 24);
      *(v47 + 24) = v48 + 24;
      *v48 = "external relocations";
      *(v48 + 8) = v45;
      *(v48 + 12) = v46;
      *(v48 + 16) = 8 * v44;
    }

    v49 = a2[15];
    if (v49)
    {
      v9 = a2 + 14;
      v7 = 4 * v49;
      v8 = 4;
      v10 = "indirect symbol table";
      goto LABEL_66;
    }

    return;
  }

  if (v5 == -2147483614)
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
LABEL_23:
    v11 = a2[3];
    if (v11)
    {
      v12 = *(a1 + 104);
      v13 = a2[2];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 24);
      *(v14 + 24) = v15 + 24;
      *v15 = "rebase opcodes";
      *(v15 + 8) = v12;
      *(v15 + 12) = v13;
      *(v15 + 16) = v11;
    }

    v16 = a2[5];
    if (v16)
    {
      v17 = *(a1 + 104);
      v18 = a2[4];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 24);
      *(v19 + 24) = v20 + 24;
      *v20 = "bind opcodes";
      *(v20 + 8) = v17;
      *(v20 + 12) = v18;
      *(v20 + 16) = v16;
    }

    v21 = a2[7];
    if (v21)
    {
      v22 = *(a1 + 104);
      v23 = a2[6];
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 24);
      *(v24 + 24) = v25 + 24;
      *v25 = "weak bind opcodes";
      *(v25 + 8) = v22;
      *(v25 + 12) = v23;
      *(v25 + 16) = v21;
    }

    v26 = a2[9];
    if (v26)
    {
      v27 = *(a1 + 104);
      v28 = a2[8];
      v29 = *(*(a1 + 48) + 8);
      v30 = *(v29 + 24);
      *(v29 + 24) = v30 + 24;
      *v30 = "lazy bind opcodes";
      *(v30 + 8) = v27;
      *(v30 + 12) = v28;
      *(v30 + 16) = v26;
    }

    v7 = a2[11];
    if (v7)
    {
      v8 = *(a1 + 104);
      v9 = a2 + 10;
      goto LABEL_33;
    }

    return;
  }

  if (v5 == -2147483597)
  {
    v7 = a2[3];
    if (v7)
    {
      v8 = *(a1 + 104);
      v9 = a2 + 2;
LABEL_33:
      v10 = "exports trie";
      goto LABEL_66;
    }
  }
}

uint64_t ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke_2(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (v2 != 1 && v2 != 18)
  {
    v4 = *(a2 + 64) + *(a2 + 72);
    v5 = *(*(result + 32) + 8);
    if (v4 > *(v5 + 24))
    {
      *(v5 + 24) = v4;
    }
  }

  return result;
}

uint64_t ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke_3(uint64_t result, _DWORD *a2)
{
  if (*a2 == 2)
  {
    *(*(*(result + 32) + 8) + 24) = a2[2];
  }

  return result;
}

uint64_t ___ZNK6mach_o5Image22validStructureLinkeditERKNS_6PolicyE_block_invoke_4(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  if (*a2 == 1)
  {
    result = strcmp((a2 + 8), "__LINKEDIT");
    if (result)
    {
      return result;
    }

    v8 = *(a2 + 32);
    v9 = *(a2 + 36);
    *(*(*(v5 + 32) + 8) + 24) = v8;
    v7 = (v9 + v8);
    goto LABEL_7;
  }

  if (*a2 == 25)
  {
    result = strcmp((a2 + 8), "__LINKEDIT");
    if (!result)
    {
      v6 = *(a2 + 40);
      *(*(*(v5 + 32) + 8) + 24) = v6;
      v7 = *(a2 + 48) + v6;
LABEL_7:
      *(*(*(v5 + 40) + 8) + 24) = v7;
      *a3 = 1;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  v3 = *(a2 + 72);
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 72) = v3;
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  v8 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v8;
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  result = *(a2 + 200);
  v10 = *(a2 + 216);
  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  *(a1 + 200) = result;
  return result;
}

double ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 47) & 4) != 0)
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(a2 + 24) + *(a2 + 16);
    v5.n128_u64[0] = *(a2 + 16);
    v5.n128_u64[1] = v3;
    v6 = *(a2 + 36);
    *&result = dyld3::Array<mach_o::SegmentRanges::SegmentRange>::push_back((v2 + 232), &v5).n128_u64[0];
  }

  return result;
}

__n128 dyld3::Array<mach_o::SegmentRanges::SegmentRange>::push_back(uint64_t *a1, __n128 *a2)
{
  v2 = a1[2];
  if (v2 >= a1[1])
  {
    dyld3::Array<mach_o::SegmentRanges::SegmentRange>::push_back();
  }

  v3 = *a1;
  a1[2] = v2 + 1;
  v4 = (v3 + 24 * v2);
  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  return result;
}

void ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke_2(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  if (*a2 != 26)
  {
    if (*a2 != 17)
    {
      return;
    }

    v5 = a2[2];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 248);
    if (v7)
    {
      v8 = *(v6 + 232);
      v9 = 24 * v7;
      v10 = (v8 + 8);
      while (*(v10 - 1) > v5 || *v10 <= v5)
      {
        v10 += 3;
        v9 -= 24;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      return;
    }

LABEL_8:
    v17 = a2[2];
    mach_o::Error::Error(&v19, "LC_ROUTINES initializer 0x%08llX is not an offset to an executable segment");
LABEL_15:
    mach_o::Error::operator=((*(*(a1 + 40) + 8) + 40), &v19);
    mach_o::Error::~Error(&v19);
    *a3 = 1;
    return;
  }

  v11 = *(a2 + 1);
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 248);
  if (!v13)
  {
LABEL_14:
    v18 = *(a2 + 1);
    mach_o::Error::Error(&v19, "LC_ROUTINES _64 initializer 0x%08llX is not an offset to an executable segment");
    goto LABEL_15;
  }

  v14 = *(v12 + 232);
  v15 = 24 * v13;
  v16 = (v14 + 8);
  while (*(v16 - 1) > v11 || *v16 <= v11)
  {
    v16 += 3;
    v15 -= 24;
    if (!v15)
    {
      goto LABEL_14;
    }
  }
}

void ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke_3(void *a1, uint64_t *a2, _BYTE *a3)
{
  v3 = *(a2 + 44);
  if ((v3 - 9) > 1)
  {
    return;
  }

  v7 = a1[6];
  v8 = a2[8];
  if (v8 % dyld3::MachOFile::pointerSize(*v7))
  {
    v9 = a2[3];
    v10 = *a2;
    v52 = *a2;
    v54 = a2[8];
    v48 = a2[2];
    v50 = a2[1];
    mach_o::Error::Error(&v56, "section %.*s/%.*s size (%llu) is not a multiple of pointer-size");
LABEL_6:
    mach_o::Error::operator=((*(a1[4] + 8) + 40), &v56);
    mach_o::Error::~Error(&v56);
    *a3 = 1;
    return;
  }

  v11 = a2[7];
  if (v11 % dyld3::MachOFile::pointerSize(*v7))
  {
    v12 = a2[3];
    v13 = *a2;
    v53 = *a2;
    v55 = a2[7];
    v49 = a2[2];
    v51 = a2[1];
    mach_o::Error::Error(&v56, "section %.*s/%.*s address (0x%llX) is not pointer aligned");
    goto LABEL_6;
  }

  v14 = *v7;
  v15 = *(a2 + 18);
  if (mach_o::Header::inDyldCache(*v7))
  {
    v16 = a2[7];
    v17 = (mach_o::Header::getSlide(*v7) + v16);
  }

  else
  {
    v17 = v14 + v15;
  }

  if (gImageAssumeContentRebased != 1)
  {
    v28 = mach_o::Header::is64(*v7);
    v29 = a2[8];
    v30 = &v17[v29];
    if (v28)
    {
      if (v29 < 1)
      {
        goto LABEL_46;
      }

      v31 = *(a1[5] + 8);
      v32 = *(v31 + 232);
      v33 = *(v31 + 248);
      v34 = (v32 + 8);
      v35 = v17;
      while (v33)
      {
        v36 = *v35 - a1[7] + a1[7];
        v37 = v34;
        v38 = 24 * v33;
        while (*(v37 - 1) > v36 || *v37 <= v36)
        {
          v37 += 3;
          v38 -= 24;
          if (!v38)
          {
            goto LABEL_44;
          }
        }

        v35 += 8;
        if (v35 >= v30)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      if (v29 < 1)
      {
        goto LABEL_46;
      }

      v40 = *(a1[5] + 8);
      v41 = *(v40 + 232);
      v42 = *(v40 + 248);
      v43 = (v41 + 8);
      v44 = v17;
      while (v42)
      {
        v45 = a1[7] + ((*v44 - a1[7]) & 0x3FFFFFF);
        v46 = v43;
        v47 = 24 * v42;
        while (*(v46 - 1) > v45 || *v46 <= v45)
        {
          v46 += 3;
          v47 -= 24;
          if (!v47)
          {
            goto LABEL_44;
          }
        }

        v44 += 4;
        if (v44 >= v30)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_44:
    mach_o::Error::Error(&v56, "initializer %lu/%llu is not in an executable segment");
LABEL_45:
    mach_o::Error::operator=((*(a1[4] + 8) + 40), &v56);
    mach_o::Error::~Error(&v56);
    goto LABEL_46;
  }

  v18 = a2[8];
  if (v18 >= 1)
  {
    v19 = &v17[v18];
    v20 = *(a1[5] + 8);
    v21 = *(v20 + 232);
    v22 = *(v20 + 248);
    v23 = (v21 + 8);
    v24 = v17;
    while (v22)
    {
      v25 = *v24;
      v26 = v23;
      v27 = 24 * v22;
      while (*(v26 - 1) > v25 || *v26 <= v25)
      {
        v26 += 3;
        v27 -= 24;
        if (!v27)
        {
          v17 = v24;
          goto LABEL_33;
        }
      }

      if (++v24 >= v19)
      {
        goto LABEL_46;
      }
    }

LABEL_33:
    v39 = *v17;
    mach_o::Error::Error(&v56, "initializer 0x%08lX is not in an executable segment");
    goto LABEL_45;
  }

LABEL_46:
  if (v3 == 10 && mach_o::Header::isDyldManaged(*v7) && mach_o::Header::isArch(*v7, "arm6e"))
  {
    mach_o::Error::Error(&v56, "terminators section %.*s/%.*s not supported for arm64e", a2[3], a2[2], a2[1], *a2);
    mach_o::Error::operator=((*(a1[4] + 8) + 40), &v56);
    mach_o::Error::~Error(&v56);
  }
}

void ___ZNK6mach_o5Image17validInitializersERKNS_6PolicyE_block_invoke_4(void *a1, uint64_t *a2, _BYTE *a3)
{
  if (*(a2 + 44) == 22)
  {
    v31[3] = v3;
    v31[4] = v4;
    if ((a2[5] & 2) != 0)
    {
      v9 = a2[3];
      v26 = a2[1];
      v29 = *a2;
      v23 = a2[2];
      mach_o::Error::Error(v31, "initializer offsets section %.*s/%.*s must be in read-only segment");
      goto LABEL_6;
    }

    v7 = a2[8];
    if ((v7 & 3) != 0)
    {
      v8 = a2[3];
      v25 = a2[1];
      v28 = *a2;
      v22 = a2[2];
      mach_o::Error::Error(v31, "initializer offsets section %.*s/%.*s has bad size");
LABEL_6:
      mach_o::Error::operator=((*(a1[4] + 8) + 40), v31);
      mach_o::Error::~Error(v31);
      *a3 = 1;
      return;
    }

    v10 = a2[7];
    if ((v10 & 3) != 0)
    {
      v11 = a2[3];
      v27 = a2[1];
      v30 = *a2;
      v24 = a2[2];
      mach_o::Error::Error(v31, "initializer offsets section %.*s/%.*s is not 4-byte aligned");
      goto LABEL_6;
    }

    if (v7 >= 1)
    {
      v12 = (a1[6] + v10);
      v13 = (v12 + v7);
      v14 = *(a1[5] + 8);
      v15 = *(v14 + 232);
      v16 = *(v14 + 248);
      v17 = (v15 + 8);
      while (v16)
      {
        v18 = a1[7] + *v12;
        v19 = v17;
        v20 = 24 * v16;
        while (*(v19 - 1) > v18 || *v19 <= v18)
        {
          v19 += 3;
          v20 -= 24;
          if (!v20)
          {
            goto LABEL_20;
          }
        }

        if (++v12 >= v13)
        {
          return;
        }
      }

LABEL_20:
      v21 = *v12;
      mach_o::Error::Error(v31, "initializer 0x%08X is not an offset to an executable segment");
      goto LABEL_6;
    }
  }
}

void *___ZN6mach_o5Image15makeExportsTrieEv_block_invoke(void *result, int *a2)
{
  v2 = result[4];
  v3 = *a2;
  if (*a2 == -2147483614 || v3 == 34)
  {
    v4 = a2[10];
    if (!v4)
    {
      return result;
    }

    v5 = 11;
    goto LABEL_8;
  }

  if (v3 == -2147483597)
  {
    v4 = a2[2];
    if (v4)
    {
      v5 = 3;
LABEL_8:
      result = mach_o::FunctionStarts::FunctionStarts(v2 + 16, (v2[2] + v4), a2[v5]);
      v2[4] = result;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image15makeSymbolTableEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v2 = 32;
  }

  else
  {
    if (*a2 != 11)
    {
      return result;
    }

    v2 = 40;
  }

  *(*(*(result + v2) + 8) + 24) = a2;
  return result;
}

uint64_t ___ZN6mach_o5Image17makeRebaseOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[3];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[2];
      v6 = mach_o::Header::is64(*v3);
      result = mach_o::RebaseOpcodes::RebaseOpcodes(v3 + 200, (v4 + v5), v2, v6);
      *(v3 + 48) = v3 + 200;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image15makeBindOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[5];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[4];
      v6 = mach_o::Header::is64(*v3);
      result = mach_o::BindOpcodes::BindOpcodes(v3 + 224, (v4 + v5), v2, v6);
      *(v3 + 56) = v3 + 224;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image19makeLazyBindOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[9];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[8];
      v6 = mach_o::Header::is64(*v3);
      result = mach_o::BindOpcodes::BindOpcodes(v3 + 256, (v4 + v5), v2, v6);
      *(v3 + 256) = &unk_1EEE9EB48;
      *(v3 + 64) = v3 + 256;
    }
  }

  return result;
}

uint64_t ___ZN6mach_o5Image19makeWeakBindOpcodesEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if ((*a2 | 0x80000000) == 0x80000022)
  {
    v2 = a2[7];
    if (v2)
    {
      v3 = *(result + 32);
      v4 = *(v3 + 16);
      v5 = a2[6];
      v6 = mach_o::Header::is64(*v3);
      result = mach_o::BindOpcodes::BindOpcodes(v3 + 288, (v4 + v5), v2, v6);
      *(v3 + 72) = v3 + 288;
    }
  }

  return result;
}

void *___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == -2147483596)
  {
    v4 = a2[3];
    if (v4)
    {
      v5 = result[4];
      result = mach_o::ChainedFixups::ChainedFixups(v5 + 40, (v5[2] + a2[2]), v4);
      v5[10] = result;
      *a3 = 1;
    }
  }

  return result;
}

void *___ZN6mach_o5Image17makeChainedFixupsEv_block_invoke_2(void *result, uint64_t a2)
{
  if (*(a2 + 8) == 14)
  {
    v2 = **a2 == 0x5F6E696168635F5FLL && *(*a2 + 6) == 0x7370757869665F6ELL;
    v3 = !v2;
    if (!v3 && *(a2 + 24) == 6)
    {
      v5 = *(a2 + 16);
      v6 = *v5;
      v7 = *(v5 + 2);
      if (v6 == 1163157343 && v7 == 21592)
      {
        v9 = result[4];
        result = mach_o::ChainedFixups::ChainedFixups(v9 + 40, (*v9 + *(a2 + 72)), *(a2 + 64));
        v9[10] = result;
      }
    }
  }

  return result;
}

void *___ZN6mach_o5Image18makeFunctionStartsEv_block_invoke(void *result, _DWORD *a2)
{
  if (*a2 == 38)
  {
    v2 = a2[3];
    if (v2)
    {
      v3 = result[4];
      result = mach_o::FunctionStarts::FunctionStarts(v3 + 43, (v3[2] + a2[2]), v2);
      v3[11] = result;
    }
  }

  return result;
}

void ___ZN6mach_o5Image17makeCompactUnwindEv_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == 13)
  {
    v11[7] = v3;
    v11[8] = v4;
    if (**a2 == 0x646E69776E755F5FLL && *(*a2 + 5) == 0x6F666E695F646E69)
    {
      v8 = *(a1 + 32);
      if (std::string_view::starts_with[abi:nn200100]((a2 + 16), "__TEXT"))
      {
        v9 = *v8;
        v10 = *(a2 + 72);
        mach_o::Header::arch(*v8, v11);
        mach_o::CompactUnwind::CompactUnwind((v8 + 360), v11, v9 + v10, *(a2 + 64));
        *(v8 + 96) = v8 + 360;
        *a3 = 1;
      }
    }
  }
}

void *___ZN6mach_o5Image16makeSplitSegInfoEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 30)
  {
    v4 = result[4];
    result = mach_o::FunctionStarts::FunctionStarts(v4 + 48, (v4[2] + a2[2]), a2[3]);
    v4[13] = result;
    *a3 = 1;
  }

  return result;
}

void *___ZN6mach_o5Image20makeFunctionVariantsEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 55)
  {
    v4 = result[4];
    result = mach_o::FunctionVariants::FunctionVariants(v4 + 50, v4[2] + a2[2], a2[3]);
    v4[14] = result;
    *a3 = 1;
  }

  return result;
}

void *___ZN6mach_o5Image25makeFunctionVariantFixupsEv_block_invoke(void *result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 56)
  {
    v4 = result[4];
    result = mach_o::FunctionVariantFixups::FunctionVariantFixups(v4 + 52, v4[2] + a2[2], a2[3]);
    v4[15] = result;
    *a3 = 1;
  }

  return result;
}

uint64_t ___ZNK6mach_o5Image12segmentCountEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 25 || *a2 == 1)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

__n128 __Block_byref_object_copy__78(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

size_t ___ZNK6mach_o5Image7segmentEj_block_invoke(size_t result, uint64_t a2, _BYTE *a3)
{
  v5 = result;
  v6 = *(result + 56);
  if (*a2 == 1)
  {
    v7 = (a2 + 8);
    result = strcmp((a2 + 8), "__TEXT");
    if (!result)
    {
      *(*(*(v5 + 32) + 8) + 24) = *(a2 + 24);
    }

    v8 = v5 + 40;
    v9 = *(*(v5 + 40) + 8);
    v10 = *(v9 + 24);
    if (v10 != *(v5 + 64))
    {
      goto LABEL_18;
    }

    v15 = *(a2 + 24);
    v12 = v5 + 48;
    *(*(*(v5 + 48) + 8) + 40) = v15 - *(*(*(v5 + 32) + 8) + 24);
    v16 = *v6;
    if (*(v6 + 25) == 1)
    {
      *(*(*(v5 + 48) + 8) + 64) = v16 + v15 - *(*(*(v5 + 32) + 8) + 24);
      v14 = *(a2 + 32);
    }

    else
    {
      v14 = *(a2 + 32);
      *(*(*v12 + 8) + 64) = v16 + v14;
    }

    v17 = *(a2 + 28);
    v18 = 44;
    goto LABEL_17;
  }

  if (*a2 != 25)
  {
    return result;
  }

  v7 = (a2 + 8);
  result = strcmp((a2 + 8), "__TEXT");
  if (!result)
  {
    *(*(*(v5 + 32) + 8) + 24) = *(a2 + 24);
  }

  v8 = v5 + 40;
  v9 = *(*(v5 + 40) + 8);
  v10 = *(v9 + 24);
  if (v10 == *(v5 + 64))
  {
    v11 = *(a2 + 24);
    v12 = v5 + 48;
    *(*(*(v5 + 48) + 8) + 40) = v11 - *(*(*(v5 + 32) + 8) + 24);
    v13 = *v6;
    if (*(v6 + 25) == 1)
    {
      *(*(*(v5 + 48) + 8) + 64) = v13 + v11 - *(*(*(v5 + 32) + 8) + 24);
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = *(a2 + 40);
      *(*(*v12 + 8) + 64) = v13 + v14;
    }

    v17 = *(a2 + 32);
    v18 = 60;
LABEL_17:
    *(*(*v12 + 8) + 48) = v17;
    *(*(*v12 + 8) + 56) = v14;
    result = strlen(v7);
    v19 = *(*v12 + 8);
    v20 = *(a2 + v18);
    *(v19 + 72) = v7;
    *(v19 + 80) = result;
    *(*(*v12 + 8) + 88) = v20 & 1;
    *(*(*v12 + 8) + 89) = (v20 & 2) != 0;
    *(*(*v12 + 8) + 90) = (v20 & 4) != 0;
    *a3 = 1;
    v9 = *(*v8 + 8);
    v10 = *(v9 + 24);
  }

LABEL_18:
  *(v9 + 24) = v10 + 1;
  return result;
}

mach_o::Error *mach_o::FunctionVariantsRuntimeTable::valid@<X0>(mach_o::Error *this@<X0>, uint64_t a2@<X1>, mach_o::Error *a3@<X8>)
{
  if ((*this - 1) >= 4)
  {
    v5 = *this;
    return mach_o::Error::Error(a3, "unknown FunctionVariantsRuntimeTable::Kind (%d)");
  }

  else
  {
    v3 = *(this + 1);
    if (8 * v3 == a2 - 12 || 8 * v3 + 8 == a2)
    {
      if (*(this + 8 * (v3 - 1) + 12))
      {

        return mach_o::Error::Error(a3, "last entry in FunctionVariantsRuntimeTable entries is not 'default'");
      }

      else
      {
        *a3 = 0;
      }
    }

    else
    {
      return mach_o::Error::Error(a3, "invalid FunctionVariantsRuntimeTable length %lu for count=%u");
    }
  }

  return this;
}

void *mach_o::FunctionVariants::FunctionVariants(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void mach_o::FunctionVariants::valid(mach_o::FunctionVariants *this@<X0>, mach_o::Error *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3 >= 4 && (v5 = *this) != 0)
  {
    v6 = *v5;
    if (4 * v6 + 4 >= v3)
    {
      v17 = *v5;
      mach_o::Error::Error(a2, "FunctionVariants tableCount=%u is too large for size=%lu");
    }

    else if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = v5[i + 1];
        if (v3 < v8)
        {
          v18 = v5[i + 1];
          mach_o::Error::Error(a2, "tableOffsets[%d]=0x%08X which is > total size 0x%08lX");
          return;
        }

        if (v3 < v8 + 8 * *(v5 + v8 + 4) + 8)
        {
          mach_o::Error::Error(a2, "entry %d extends to 0x%08X which beyond total size 0x%08lX");
          return;
        }
      }

      v9 = 0;
      while (1)
      {
        v10 = *(this + 1);
        if (v10 >= 4 && (v11 = *this) != 0 && v9 < *v11)
        {
          v12 = v11[v9 + 1];
          v13 = v11 + v12;
          v14 = v10 <= v12 ? 0 : v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = (v6 - 1);
        v16 = &v5[v9];
        if (v9 < v15)
        {
          LODWORD(v10) = v16[2];
        }

        mach_o::FunctionVariantsRuntimeTable::valid(v14, v10 - v16[1], a2);
        if (*a2)
        {
          break;
        }

        mach_o::Error::~Error(a2);
        ++v9;
        v6 = *v5;
        if (v9 >= v6)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      *a2 = 0;
    }
  }

  else
  {

    mach_o::Error::Error(a2, "FunctionVariants is too small");
  }
}

void *mach_o::FunctionVariantFixups::FunctionVariantFixups(void *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3 >> 3;
  return result;
}

void Diagnostics::error()
{
  __assert_rtn("error", "Diagnostics.cpp", 147, "kr == KERN_SUCCESS");
}

{
  __assert_rtn("error", "Diagnostics.cpp", 153, "(actualSize + 1) == expectedSize");
}

{
  __assert_rtn("error", "Diagnostics.cpp", 152, "actualSize >= 0");
}

{
  __assert_rtn("error", "Diagnostics.cpp", 140, "expectedSize >= 0");
}

void Diagnostics::appendError()
{
  __assert_rtn("appendError", "Diagnostics.cpp", 219, "kr == KERN_SUCCESS");
}

{
  __assert_rtn("appendError", "Diagnostics.cpp", 237, "(actualSize + 1) == expectedSize");
}

{
  __assert_rtn("appendError", "Diagnostics.cpp", 236, "actualSize >= 0");
}

{
  __assert_rtn("appendError", "Diagnostics.cpp", 209, "expectedSize >= 0");
}

void dyld3::OverflowSafeArray<char,4294967295ull>::resize(char *a1, void *a2, int a3)
{
  snprintf(a1, 0x100uLL, "OverflowSafeArray failed to allocate %llu bytes, vm_allocate returned: %d\n", *a2, a3);
  qword_1EA79C5B8 = a1;
  __assert_rtn("growTo", "Array.h", 196, "0");
}

void dyld4::Atlas::Process::teardownNotifications()
{
  __assert_rtn("teardownNotifications", "ProcessAtlas.cpp", 1389, "dispatch_get_current_queue() == _queue");
}

{
  __assert_rtn("teardownNotifications", "ProcessAtlas.cpp", 1390, "_state == Connected");
}

{
  __assert_rtn("teardownNotifications", "ProcessAtlas.cpp", 1399, "handle != 0");
}

{
  __assert_rtn("teardownNotifications", "ProcessAtlas.cpp", 1410, "handle != 0");
}

void dyld4::Atlas::Process::setupNotifications()
{
  __assert_rtn("setupNotifications", "ProcessAtlas.cpp", 1348, "dispatch_get_current_queue() == _queue");
}

{
  __assert_rtn("setupNotifications", "ProcessAtlas.cpp", 1350, "_state == Disconnected");
}

{
  __assert_rtn("setupNotifications", "ProcessAtlas.cpp", 1349, "kr != NULL");
}

void lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::insert()
{
  __assert_rtn("insert", "BTree.h", 148, "index != capacity()");
}

{
  __assert_rtn("insert", "BTree.h", 147, "size() != capacity()");
}

void lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::splitChild()
{
  __assert_rtn("splitChild", "BTree.h", 166, "size() < capacity() && There must be room in this node for an additional child");
}

{
  __assert_rtn("splitChild", "BTree.h", 167, "children()[index]->full() && The child being split must be full");
}

{
  __assert_rtn("splitChild", "BTree.h", 201, "!newChild->full() && !child->full() && After split the child nodes should be full");
}

{
  __assert_rtn("splitChild", "BTree.h", 165, "!leaf() && Leaf nodes do not have children to split");
}

void lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::erase()
{
  __assert_rtn("erase", "BTree.h", 157, "leaf()");
}

{
  __assert_rtn("erase", "BTree.h", 158, "size() > index");
}

void lsl::BTree<int,std::less<int>,false>::const_iterator::rebalanceFromErasure()
{
  __assert_rtn("rebalanceFromErasure", "BTree.h", 617, "_depth == _btree->_depth && rebalanceFromErasure only works on iterators to leaf nodes");
}

{
  __assert_rtn("rebalanceFromErasure", "BTree.h", 658, "_indexes[0] == 0");
}

void lsl::BTree<int,std::less<int>,false>::NodeCore<62u,20u>::merge()
{
  __assert_rtn("merge", "BTree.h", 254, "index < size() && A node must have a successor node to merge with");
}

{
  __assert_rtn("merge", "BTree.h", 253, "!leaf() && A leaf node does not have children to merge");
}