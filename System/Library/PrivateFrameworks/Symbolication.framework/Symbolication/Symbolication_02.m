void __descriptionForTypeEncoding_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v16 = a4;
  v9 = a5;
  if (a6)
  {
    NSLog(&cfstr_ErrorForIvarS.isa, a6, *(a1 + 40));
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = *(a1 + 40);
    v12 = &stru_1F461F9C8;
    if (v9)
    {
      v12 = v9;
    }

    v13 = [v10 initWithFormat:@"%@ %s%@", v16, *(a1 + 40), v12];
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

unint64_t typeEncodingDescribesReferencedAllocation(unsigned __int8 *a1)
{
  if (a1)
  {
    LODWORD(v1) = *a1;
    if (*a1)
    {
      if (v1 != 114 && v1 != 65 || (LODWORD(v1) = a1[1]) != 0)
      {
        v2 = v1 - 64;
        v3 = v2 > 0x31;
        v1 = 0x1EFFFFFFFFFFEuLL >> v2;
        if (v3)
        {
          LOBYTE(v1) = 1;
        }
      }
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

id descriptionForTypeOfReferencedAllocation(char *a1, _DWORD *a2)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = a1;
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_10;
  }

  if (v3 == 114 || (v5 = *a1, v3 == 65))
  {
    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_10;
    }
  }

  v6 = v5 - 64;
  v7 = v6 > 0x31;
  v8 = (1 << v6) & 0x2100000000001;
  if (!v7 && v8 != 0)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (v3 == 114 || v3 == 65)
  {
    v2 = a1 + 1;
  }

  v12 = objc_opt_new();
  *a2 = 16;
  if (*v2 == 94)
  {
    do
    {
      v13 = v2;
      v14 = *++v2;
      if (v14 != 94)
      {
        break;
      }

      [v12 appendString:@"[]"];
      v13 = v2;
    }

    while (*v2 == 94);
  }

  else
  {
    v13 = v2;
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v13 length:strlen(v13) encoding:4 freeWhenDone:0];
  v16 = *v13;
  if (v16 <= 0x50)
  {
    if (*v13 <= 0x29u)
    {
      if (v16 == 35)
      {
        v17 = @"Class";
        goto LABEL_105;
      }

      if (v16 != 40)
      {
        goto LABEL_104;
      }

      goto LABEL_30;
    }

    if (v16 != 42)
    {
      if (v16 == 58)
      {
        v17 = @"SEL";
        goto LABEL_105;
      }

LABEL_104:
      v17 = 0;
      goto LABEL_105;
    }

LABEL_86:
    v17 = @"char[]";
    goto LABEL_105;
  }

  if (*v13 <= 0x5Du)
  {
    if (v16 != 81 && v16 != 91)
    {
      goto LABEL_104;
    }

LABEL_30:
    [v12 setString:&stru_1F461F9C8];
LABEL_31:
    v17 = @"malloc";
    goto LABEL_105;
  }

  if (v16 == 123)
  {
    if (!strncmp(v13, "{vector<", 8uLL) || !strncmp(v13, "{shared_ptr<", 0xCuLL) || !strncmp(v13, "{unique_ptr<", 0xCuLL))
    {
      v21 = strchr(v13, 44);
      if (v21 || (v21 = strchr(v13, 62)) != 0)
      {
        v22 = [v15 substringWithRange:{1, &v21[~v13]}];
        v17 = [v22 stringByAppendingString:@">"];
      }

      else
      {
        v17 = [v15 substringWithRange:{1, &strchr(v13, 60)[~v13]}];
      }

      *a2 = 2;
      goto LABEL_105;
    }

    if (strncmp(v13, "{unordered_map<", 0x10uLL))
    {
      goto LABEL_52;
    }

    v25 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v15];
    [v25 setScanLocation:1];
    v34 = 0;
    v26 = [v25 scanUpToString:@" intoString:{", &v34}];
    v27 = v34;
    if (v26)
    {
      [v25 setScanLocation:{objc_msgSend(v25, "scanLocation") + 1}];
      v33 = 0;
      v28 = [v25 scanUpToString:@" intoString:{", &v33}];
      v29 = v33;
      if (v28)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@>", v27, v29];
LABEL_89:
        v31 = @"unordered_map";
        if (v30)
        {
          v31 = v30;
        }

        v17 = v31;
        *a2 = 2;

        goto LABEL_105;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = 0;
    goto LABEL_89;
  }

  if (v16 != 94)
  {
    goto LABEL_104;
  }

  v18 = v13[1];
  if (!v13[1])
  {
    goto LABEL_104;
  }

  v19 = v13[2];
  if (v13[2])
  {
    if (v18 == 64)
    {
      if (v19 == 34)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13 + 3];
        if ([v23 hasSuffix:@""])
        {
          v24 = [v23 substringToIndex:{objc_msgSend(v23, "length") - 1}];

          v23 = v24;
        }

        if ([v23 length])
        {
          v17 = [v23 stringByAppendingString:@"*[]"];
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_105;
      }

      goto LABEL_104;
    }

    if (v18 != 123)
    {
      goto LABEL_104;
    }

    if (v19 != 63)
    {
      v20 = strchr(v13, 61);
      if (v20 || (v20 = strchr(v13, 125)) != 0)
      {
        v17 = [v15 substringWithRange:{2, v20 - v13 - 2}];
        if ([(__CFString *)v17 length])
        {
          if ([(__CFString *)v17 isEqualToString:@"__CFString"])
          {

            v17 = @"CFString";
            goto LABEL_105;
          }

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"struct %@", v17];

          v17 = v32;
        }

        if (v17)
        {
          goto LABEL_105;
        }
      }
    }

LABEL_52:
    [v12 setString:&stru_1F461F9C8];
    v17 = @"struct";
    goto LABEL_105;
  }

  if (v13[1] > 0x52u)
  {
    if (v13[1] <= 0x68u)
    {
      if (v13[1] <= 0x63u)
      {
        if (v18 == 83)
        {
          v17 = @"ushort[]";
          goto LABEL_105;
        }

        if (v18 != 99)
        {
          goto LABEL_104;
        }

        goto LABEL_86;
      }

      if (v18 == 100)
      {
        v17 = @"double[]";
        goto LABEL_105;
      }

      if (v18 != 102)
      {
        goto LABEL_104;
      }

      v17 = @"float[]";
    }

    else
    {
      if (v13[1] > 0x70u)
      {
        if (v18 == 113)
        {
          v17 = @"int64_t[]";
          goto LABEL_105;
        }

        if (v18 == 115)
        {
          v17 = @"short[]";
          goto LABEL_105;
        }

        if (v18 != 118)
        {
          goto LABEL_104;
        }

        goto LABEL_31;
      }

      if (v18 == 105)
      {
        v17 = @"int32_t[]";
        goto LABEL_105;
      }

      if (v18 != 108)
      {
        goto LABEL_104;
      }

      v17 = @"long[]";
    }
  }

  else if (v13[1] <= 0x41u)
  {
    if (v13[1] > 0x39u)
    {
      if (v18 == 58)
      {
        v17 = @"SEL[]";
        goto LABEL_105;
      }

      if (v18 != 64)
      {
        goto LABEL_104;
      }

      v17 = @"id[]";
    }

    else
    {
      if (v18 == 35)
      {
        v17 = @"Class[]";
        goto LABEL_105;
      }

      if (v18 != 42)
      {
        goto LABEL_104;
      }

      v17 = @"char*[]";
    }
  }

  else if (v13[1] <= 0x48u)
  {
    if (v18 == 66)
    {
      v17 = @"BOOL[]";
      goto LABEL_105;
    }

    if (v18 != 67)
    {
      goto LABEL_104;
    }

    v17 = @"uchar[]";
  }

  else
  {
    if (v18 == 73)
    {
      v17 = @"uint32_t[]";
      goto LABEL_105;
    }

    if (v18 == 76)
    {
      v17 = @"ulong[]";
      goto LABEL_105;
    }

    if (v18 != 81)
    {
      goto LABEL_104;
    }

    v17 = @"uint64_t[]";
  }

LABEL_105:
  v10 = [(__CFString *)v17 stringByAppendingString:v12];

LABEL_11:

  return v10;
}

id descriptionOfValueAtAddressWithTypeEncoding(uint64_t a1, unsigned __int8 *a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (a1 && a2)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__8;
    v21 = __Block_byref_object_dispose__8;
    v22 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __descriptionOfValueAtAddressWithTypeEncoding_block_invoke;
    v11[3] = &unk_1E827A120;
    v13 = &v17;
    v14 = a1;
    v12 = v7;
    v15 = a2;
    v16 = a3;
    _parse_type(a2, 0, v11);
    v9 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  return v9;
}

void sub_1C682B60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __descriptionOfValueAtAddressWithTypeEncoding_block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    goto LABEL_121;
  }

  if (a2 <= 82)
  {
    if (a2 <= 65)
    {
      if (a2 <= 57)
      {
        if (a2 != 35)
        {
          if (a2 != 40)
          {
            if (a2 != 42)
            {
              goto LABEL_113;
            }

            goto LABEL_76;
          }

          printf("    UNION TYPE ENCODING: %s\n", *(a1 + 56));
          goto LABEL_113;
        }

        v59 = [*(a1 + 32) objectIdentifier];
        v60 = [(__CFString *)v59 classInfoForMemory:*(a1 + 48) length:1024];
        v61 = [(__CFString *)v60 className];
LABEL_104:
        v62 = *(*(a1 + 40) + 8);
        v63 = *(v62 + 40);
        *(v62 + 40) = v61;

        goto LABEL_121;
      }

      if ((a2 - 63) < 2)
      {
LABEL_76:
        v30 = **(a1 + 48);
        if (v30)
        {
          v31 = [*(a1 + 32) objectIdentifier];
          v32 = [v31 taggedPointerMask];

          if ((v32 & v30) != 0)
          {
            v33 = [*(a1 + 32) objectIdentifier];
            v34 = [v33 labelForTaggedPointer:v30];
            v35 = *(*(a1 + 40) + 8);
            v36 = *(v35 + 40);
            *(v35 + 40) = v34;

            if (*(*(*(a1 + 40) + 8) + 40))
            {
              v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tagged pointer %@", *(*(*(a1 + 40) + 8) + 40)];
              v38 = *(*(a1 + 40) + 8);
              v39 = *(v38 + 40);
              *(v38 + 40) = v37;
            }
          }

          if (!*(*(*(a1 + 40) + 8) + 40))
          {
            v40 = [*(a1 + 32) objectIdentifier];
            v41 = [v40 classInfoForObjectWithRange:{v30, 1024}];

            v42 = [v41 className];

            v43 = MEMORY[0x1E696AEC0];
            if (v42)
            {
              v44 = [v41 className];
              v45 = [v43 stringWithFormat:@"<%@ %p>", v44, v30];
              v46 = *(*(a1 + 40) + 8);
              v47 = *(v46 + 40);
              *(v46 + 40) = v45;
            }

            else
            {
              v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v30];
              v70 = *(*(a1 + 40) + 8);
              v44 = *(v70 + 40);
              *(v70 + 40) = v69;
            }

            v71 = [*(a1 + 32) objectIdentifier];
            v72 = [v71 labelForMallocBlock:{v30, 1024}];

            if (v72)
            {
              v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", *(*(*(a1 + 40) + 8) + 40), v72];
              v74 = *(*(a1 + 40) + 8);
              v75 = *(v74 + 40);
              *(v74 + 40) = v73;
            }
          }

          goto LABEL_121;
        }

        goto LABEL_95;
      }

      if (a2 != 58)
      {
LABEL_113:
        v67 = *(*(a1 + 40) + 8);
        v55 = *(v67 + 40);
        *(v67 + 40) = 0;
        goto LABEL_120;
      }

      v56 = task_peek_string([*(a1 + 32) task], **(a1 + 48));
      if (!v56)
      {
        goto LABEL_121;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"@selector(%s)", v56, v81, v82, v83];
      goto LABEL_118;
    }

    if (a2 <= 72)
    {
      if (a2 == 66)
      {
        if (**(a1 + 48))
        {
          v64 = "YES";
        }

        else
        {
          v64 = "NO";
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v64, v81, v82, v83];
      }

      else
      {
        if (a2 != 67)
        {
          goto LABEL_113;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%u %c", **(a1 + 48), **(a1 + 48), v82, v83];
      }

      goto LABEL_118;
    }

    if (a2 != 73)
    {
      if (a2 == 76)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", **(a1 + 48), v81, v82, v83];
      }

      else
      {
        if (a2 != 81)
        {
          goto LABEL_113;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", **(a1 + 48), v81, v82, v83];
      }

      goto LABEL_118;
    }

    v57 = MEMORY[0x1E696AEC0];
    v58 = **(a1 + 48);
    goto LABEL_115;
  }

  if (a2 <= 104)
  {
    if (a2 > 98)
    {
      if (a2 == 99)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%d %c", **(a1 + 48), **(a1 + 48), v82, v83];
      }

      else
      {
        if (a2 == 100)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = **(a1 + 48);
        }

        else
        {
          if (a2 != 102)
          {
            goto LABEL_113;
          }

          v13 = MEMORY[0x1E696AEC0];
          v14 = **(a1 + 48);
        }

        [v13 stringWithFormat:@"%g", *&v14, v81, v82, v83];
      }

      goto LABEL_118;
    }

    if (a2 != 83)
    {
      if (a2 != 94)
      {
        goto LABEL_113;
      }

      v48 = **(a1 + 48);
      if (!v48)
      {
LABEL_95:
        v54 = *(*(a1 + 40) + 8);
        v55 = *(v54 + 40);
        *(v54 + 40) = @"0x0";
LABEL_120:

        goto LABEL_121;
      }

      v49 = [*(a1 + 32) objectIdentifier];
      [v49 symbolForAddress:v48];

      if (CSIsNull())
      {
        goto LABEL_121;
      }

      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p %s", v48, CSSymbolGetName()];
      v51 = *(*(a1 + 40) + 8);
      v52 = *(v51 + 40);
      *(v51 + 40) = v50;

      CSSymbolGetSymbolOwner();
      if (CSIsNull())
      {
        goto LABEL_121;
      }

      v53 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@" (in %s)", CSSymbolOwnerGetName()];
LABEL_119:
      v68 = *(*(a1 + 40) + 8);
      v55 = *(v68 + 40);
      *(v68 + 40) = v53;
      goto LABEL_120;
    }

    v57 = MEMORY[0x1E696AEC0];
    v58 = **(a1 + 48);
LABEL_115:
    [v57 stringWithFormat:@"%u", v58, v81, v82, v83];
    goto LABEL_118;
  }

  if (a2 <= 112)
  {
    if (a2 != 105)
    {
      if (a2 != 108)
      {
        goto LABEL_113;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", **(a1 + 48), v81, v82, v83];
      goto LABEL_118;
    }

    v65 = MEMORY[0x1E696AEC0];
    v66 = **(a1 + 48);
    goto LABEL_117;
  }

  if (a2 == 113)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", **(a1 + 48), v81, v82, v83];
    v53 = LABEL_118:;
    goto LABEL_119;
  }

  if (a2 == 115)
  {
    v65 = MEMORY[0x1E696AEC0];
    v66 = **(a1 + 48);
LABEL_117:
    [v65 stringWithFormat:@"%d", v66, v81, v82, v83];
    goto LABEL_118;
  }

  if (a2 != 123)
  {
    goto LABEL_113;
  }

  v15 = *(a1 + 56);
  if (!strncmp(v15, "{CGRect=", 8uLL))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"x:%g y:%g w:%g h:%g", **(a1 + 48), *(*(a1 + 48) + 8), *(*(a1 + 48) + 16), *(*(a1 + 48) + 24)];
    goto LABEL_118;
  }

  v16 = strncmp(v15, "{_NSRange=", 0xAuLL);
  v17 = *(a1 + 48);
  if (!v16)
  {
    if (*v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = @"NSNotFound";
    }

    else
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *v17];
    }

    if (*(v17 + 8) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v60 = @"NSNotFound";
    }

    else
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(v17 + 8)];
    }

    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{ location:%@  length:%@ }", v59, v60];
    goto LABEL_104;
  }

  v84 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
  v18 = strchr(*(a1 + 56), 61);
  if (!v18)
  {
LABEL_138:
    v79 = *(a1 + 56);
    if (strncmp(v79, "{RefCounts<swift::", 0x12uLL))
    {
      printf("    FAILED STRUCTURE TYPE ENCODING: %s\n", v79);
    }

    v80 = *(*(a1 + 40) + 8);
    v78 = *(v80 + 40);
    *(v80 + 40) = 0;
    goto LABEL_141;
  }

  v20 = v18 + 1;
  for (i = v18[1]; i == 34; i = *v20)
  {
    v21 = v20 + 1;
    v22 = strchr(v21, 34);
    if (!v22 || (v23 = v22, v24 = v22[1], !memchr("LiIcCqQsSfdB@*?#:^", v24, 0x13uLL)))
    {
      i = *v21;
      break;
    }

    v25 = 0;
    v26 = v24;
    if (v24 > 0x52u)
    {
      if (v24 <= 0x65u)
      {
        if (v24 > 0x62u)
        {
          if (v24 == 99)
          {
            goto LABEL_57;
          }

          if (v24 != 100)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v24 == 83)
          {
            goto LABEL_67;
          }

          if (v24 != 94)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        if (v24 <= 0x6Bu)
        {
          if (v24 != 102 && v24 != 105)
          {
            goto LABEL_68;
          }

          goto LABEL_66;
        }

        if (v24 != 108 && v24 != 113)
        {
          if (v24 == 115)
          {
LABEL_67:
            v25 = 2;
          }

LABEL_68:
          v85 = v26;
          v27 = v25;
          v28 = descriptionOfValueAtAddressWithTypeEncoding(v17, &v85, *(a1 + 64), *(a1 + 32));
          goto LABEL_69;
        }
      }
    }

    else if (v24 <= 0x41u)
    {
      if (v24 > 0x39u)
      {
        if (v24 != 58 && v24 != 64)
        {
          goto LABEL_68;
        }
      }

      else if (v24 != 35 && v24 != 42)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v24 <= 0x4Bu)
      {
        if (v24 - 66 < 2)
        {
LABEL_57:
          v25 = 1;
          goto LABEL_68;
        }

        if (v24 != 73)
        {
          goto LABEL_68;
        }

LABEL_66:
        v25 = 4;
        goto LABEL_68;
      }

      if (v24 != 76 && v24 != 81)
      {
        goto LABEL_68;
      }
    }

    if (!HIDWORD(v17))
    {
      v27 = 8;
      v28 = &stru_1F461F9C8;
      goto LABEL_69;
    }

    v25 = 8;
    v27 = 8;
    v28 = &stru_1F461F9C8;
    if ((v17 & 7) == 0)
    {
      goto LABEL_68;
    }

LABEL_69:
    [v84 appendFormat:@" %.*s:%@ ", v23 - v21, v21, v28];
    v20 = v23 + 2;
    if (v26 == 94)
    {
      if (*v20 == 123)
      {
        v29 = strchr(v23 + 2, 125);
        if (!v29)
        {

          goto LABEL_138;
        }

        v20 = v29 + 1;
      }

      else
      {
        v20 = v23 + 3;
      }
    }

    v17 += v27;
  }

  if (i != 125)
  {
    goto LABEL_138;
  }

  [v84 appendString:@"}"];
  v76 = *(*(a1 + 40) + 8);
  v77 = v84;
  v78 = *(v76 + 40);
  *(v76 + 40) = v77;
LABEL_141:

LABEL_121:
}

uint64_t pointerScanSizeForTypeEncoding(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = a2;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = a2;
    if ((a2 & 0x80000000) != 0 || ((v5 = 0, a2 < 8) ? (v6 = a3) : (v6 = 0), a2 >= 4 && (v6 & 1) == 0))
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __pointerScanSizeForTypeEncoding_block_invoke;
      v9[3] = &unk_1E827A148;
      v9[4] = &v11;
      v9[5] = a4;
      v10 = a3;
      _parse_type(a1, 0, v9);
      v7 = *(v12 + 6);
      if (v7 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v7;
      }
    }

    _Block_object_dispose(&v11, 8);
    return v5;
  }

  return v4;
}

uint64_t __pointerScanSizeForTypeEncoding_block_invoke(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    v6 = *(result + 40);
    if (v6)
    {
      *v6 = a2;
    }

    v7 = 0;
    if (a2 > 93)
    {
      if (a2 <= 101)
      {
        if (a2 > 98)
        {
          if (a2 == 99)
          {
            if (*(result + 48))
            {
              v9 = -8;
            }

            else
            {
              v9 = -4;
            }

            v7 = v9 & a3;
          }

          else if (a2 != 100)
          {
            return result;
          }

          goto LABEL_50;
        }

        if (a2 != 94)
        {
          if (a2 != 98)
          {
            return result;
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (a2 <= 107)
        {
          if (a2 != 102)
          {
            if (a2 != 105)
            {
              return result;
            }

LABEL_40:
            if (*(result + 48))
            {
              v7 = 0;
            }

            else
            {
              v7 = 4 * a3;
            }
          }

LABEL_50:
          *(*(*(result + 32) + 8) + 24) = v7;
          return result;
        }

        if (a2 == 115)
        {
          goto LABEL_50;
        }

        if (a2 == 113)
        {
LABEL_43:
          if (*(result + 48))
          {
            v7 = 8 * a3;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_50;
        }

        if (a2 != 108)
        {
          return result;
        }
      }
    }

    else if (a2 <= 65)
    {
      if (a2 > 57)
      {
        if (a2 != 58 && a2 != 64)
        {
          return result;
        }
      }

      else if (a2 != 35 && a2 != 42)
      {
        return result;
      }
    }

    else
    {
      if (a2 <= 75)
      {
        if ((a2 - 66) >= 2)
        {
          if (a2 != 73)
          {
            return result;
          }

          goto LABEL_40;
        }

        goto LABEL_50;
      }

      if (a2 != 76)
      {
        if (a2 != 81)
        {
          if (a2 != 83)
          {
            return result;
          }

          goto LABEL_50;
        }

        goto LABEL_43;
      }
    }

    if (*(result + 48))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v7 = a3 << v8;
    goto LABEL_50;
  }

  return result;
}

uint64_t getStructureLayoutDescription(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  CSSymbolOwnerGetSymbolWithName();
  if (CSIsNull())
  {
    v5 = 0;
  }

  else
  {
    Range = CSSymbolGetRange();
    v5 = v4[2](v4, Range, v7);
  }

  return v5;
}

const char *VMUVMRegionShareModeName(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "   ";
  }

  else
  {
    return off_1E827A1A8[(a1 - 1)];
  }
}

uint64_t VMUPurgeableDisplayCharacter(unsigned int a1)
{
  v1 = 0x5845564Eu >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

uint64_t __maxAttributesWidth_block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ %@ %@  ", @"MTE", @"TPRO", @"JIT"];
  v1 = [&stru_1F461F9C8 stringByAppendingString:v0];
  kVMUVMRegionCurrentClassVersion_block_invoke_allPossibleAttributesWidth = [v1 length];

  v2 = kVMUVMRegionCurrentClassVersion_block_invoke_allPossibleAttributesWidth;
  result = [@" ATTRIBUTES " length];
  if (v2 <= result)
  {
    v4 = result;
  }

  else
  {
    v4 = v2;
  }

  maxAttributesWidth_maxAttributesWidthVar = v4;
  return result;
}

uint64_t VMUSortIndexForLibraryPath(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 length])
  {
    goto LABEL_56;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [v1 UTF8String];
  if ((_isApplicationUI__tried & 1) == 0)
  {
    if (!regcomp(&_isApplicationUI__localPreg, "/(AppKit|UIKit(Core))\\.framework|/libswiftAppKit.dylib", 5))
    {
      _isApplicationUI__createdSuccessfully = 1;
    }

    _isApplicationUI__tried = 1;
  }

  if (_isApplicationUI__createdSuccessfully == 1 && !regexec(&_isApplicationUI__localPreg, v3, 0, 0, 0))
  {
    v4 = 1;
    goto LABEL_46;
  }

  if ((_isFoundation__tried & 1) == 0)
  {
    if (!regcomp(&_isFoundation__localPreg, "/Foundation.framework|/libswiftFoundation.dylib", 5))
    {
      _isFoundation__createdSuccessfully = 1;
    }

    _isFoundation__tried = 1;
  }

  if (_isFoundation__createdSuccessfully == 1 && !regexec(&_isFoundation__localPreg, v3, 0, 0, 0))
  {
    v4 = 2;
    goto LABEL_46;
  }

  if ((_isCoreFoundation__tried & 1) == 0)
  {
    if (!regcomp(&_isCoreFoundation__localPreg, "/CoreFoundation.framework", 5))
    {
      _isCoreFoundation__createdSuccessfully = 1;
    }

    _isCoreFoundation__tried = 1;
  }

  if (_isCoreFoundation__createdSuccessfully == 1 && !regexec(&_isCoreFoundation__localPreg, v3, 0, 0, 0))
  {
    v4 = 3;
    goto LABEL_46;
  }

  if ((_isDatabase__tried & 1) == 0)
  {
    if (!regcomp(&_isDatabase__localPreg, "/CoreData\\.framework/|/libsql[^/]*\\.dylib|/libswiftCoreData.dylib", 5))
    {
      _isDatabase__createdSuccessfully = 1;
    }

    _isDatabase__tried = 1;
  }

  if (_isDatabase__createdSuccessfully == 1 && !regexec(&_isDatabase__localPreg, v3, 0, 0, 0))
  {
    v4 = 4;
    goto LABEL_46;
  }

  if (!_isWeb(v3))
  {
    if (_isNetworkIO(v3))
    {
      v4 = 6;
      goto LABEL_46;
    }

    if (_isGraphics(v3))
    {
      v4 = 7;
      goto LABEL_46;
    }

    if (_isAudio(v3))
    {
      v4 = 8;
      goto LABEL_46;
    }

    if (_isSecurity(v3))
    {
      v4 = 9;
      goto LABEL_46;
    }

    if (_isLanguage(v3))
    {
      v4 = 10;
      goto LABEL_46;
    }

    if (_isSystem(v3))
    {
      v4 = 11;
      goto LABEL_46;
    }

    if (_isFramework(v3))
    {
      v4 = 12;
      goto LABEL_46;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [&unk_1F4638B18 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 12;
LABEL_49:
      v9 = 0;
      v4 = (v8 + 1);
      v12 = v8 + v6;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(&unk_1F4638B18);
        }

        if ([v1 hasPrefix:*(*(&v13 + 1) + 8 * v9)])
        {
          goto LABEL_46;
        }

        ++v9;
        v4 = (v4 + 1);
        if (v6 == v9)
        {
          v6 = [&unk_1F4638B18 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v8 = v12;
          if (v6)
          {
            goto LABEL_49;
          }

          break;
        }
      }
    }

    objc_autoreleasePoolPop(v2);
LABEL_56:
    v4 = 0;
    goto LABEL_57;
  }

  v4 = 5;
LABEL_46:
  objc_autoreleasePoolPop(v2);
LABEL_57:

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL _isWeb(char *a1)
{
  if ((_isWeb__tried & 1) == 0)
  {
    if (!regcomp(&_isWeb__localPreg, "/(Web(Kit|Core)|JavaScriptCore)\\.framework/", 5))
    {
      _isWeb__createdSuccessfully = 1;
    }

    _isWeb__tried = 1;
  }

  return _isWeb__createdSuccessfully == 1 && regexec(&_isWeb__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isNetworkIO(char *a1)
{
  if ((_isNetworkIO__tried & 1) == 0)
  {
    if (!regcomp(&_isNetworkIO__localPreg, "/(CFNetwork|IO)\\.framework/", 5))
    {
      _isNetworkIO__createdSuccessfully = 1;
    }

    _isNetworkIO__tried = 1;
  }

  return _isNetworkIO__createdSuccessfully == 1 && regexec(&_isNetworkIO__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isGraphics(char *a1)
{
  if ((_isGraphics__tried & 1) == 0)
  {
    if (!regcomp(&_isGraphics__localPreg, "/(Core(Text|UI|Graphics|Video|Image|Media(IOServices)?|PDF)|ATS|ColorSync|ImageIO|Metal(Kit)?|OpenGL|Quartz(Core)?|QTKit|VideoToolbox|OpenCL|QD|IOSurface)\\.framework|/libswiftCore(Graphics|Image).dylib", 5))
    {
      _isGraphics__createdSuccessfully = 1;
    }

    _isGraphics__tried = 1;
  }

  return _isGraphics__createdSuccessfully == 1 && regexec(&_isGraphics__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isAudio(char *a1)
{
  if ((_isAudio__tried & 1) == 0)
  {
    if (!regcomp(&_isAudio__localPreg, "/(Speech[^/]*\\.framework|[^/]*(A|a)udio[^/]*\\.(framework|component|bundle|kext)|AppleHDA.kext)/", 5))
    {
      _isAudio__createdSuccessfully = 1;
    }

    _isAudio__tried = 1;
  }

  return _isAudio__createdSuccessfully == 1 && regexec(&_isAudio__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isSecurity(char *a1)
{
  if ((_isSecurity__tried & 1) == 0)
  {
    if (!regcomp(&_isSecurity__localPreg, "/(Security(Foundation|Interface|HI)?|Kerberos(Helper)?|TrustEvaluationAgent)\\.framework/|/lib(crypto|ssl|sasl2)[^/]*\\.dylib|/sasl2/", 5))
    {
      _isSecurity__createdSuccessfully = 1;
    }

    _isSecurity__tried = 1;
  }

  return _isSecurity__createdSuccessfully == 1 && regexec(&_isSecurity__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isLanguage(char *a1)
{
  if ((_isLanguage__tried & 1) == 0)
  {
    if (!regcomp(&_isLanguage__localPreg, "/(JavaVM|Ruby|Python|Tcl|Tk)\\.framework/|/ruby/|/lib(tcl|tk|python|perl|swiftCore|swiftObjectiveC|c\\+\\+abi)[^/]*\\.dylib", 5))
    {
      _isLanguage__createdSuccessfully = 1;
    }

    _isLanguage__tried = 1;
  }

  return _isLanguage__createdSuccessfully == 1 && regexec(&_isLanguage__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isSystem(char *a1)
{
  if ((_isSystem__tried & 1) == 0)
  {
    if (!regcomp(&_isSystem__localPreg, "/usr/lib/((lib[^/]*\\.dylib)|dyld|system)|/libswift(Darwin|Dispatch).dylib", 5))
    {
      _isSystem__createdSuccessfully = 1;
    }

    _isSystem__tried = 1;
  }

  return _isSystem__createdSuccessfully == 1 && regexec(&_isSystem__localPreg, a1, 0, 0, 0) == 0;
}

BOOL _isFramework(char *a1)
{
  if ((_isFramework__tried & 1) == 0)
  {
    if (!regcomp(&_isFramework__localPreg, "/System/Library/(Private)?Frameworks/[^/]*\\.framework/", 5))
    {
      _isFramework__createdSuccessfully = 1;
    }

    _isFramework__tried = 1;
  }

  return _isFramework__createdSuccessfully == 1 && regexec(&_isFramework__localPreg, a1, 0, 0, 0) == 0;
}

void sub_1C6830E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __destructor_8_s8_s16_s24_sb48(va);
  _Unwind_Resume(a1);
}

id visit(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v4 = 0;
  }

  for (i = *(*(a1 + 32) + 4 * a2); i != -1; i = *(*(a1 + 40) + 4 * i))
  {
    v6 = visit(a1, i);
    if (!v6)
    {
      v11 = 0;
      goto LABEL_19;
    }

    v7 = v6;
    if (v4)
    {
      [v4 addObject:v6];
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  (*(a1 + 56))(&v14, *(a1 + 16), sel_nodeDetails_, a2);
  if (v15 >> 60 == 5 || v15 >> 60 == 2)
  {
    v9 = *(a1 + 8);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
    v12 = [v9 objectForKey:v10];

    if (!v12)
    {
      v12 = [*(a1 + 24) nonSubmapRegionContainingAddress:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  (*(a1 + 64))(*(a1 + 16), sel_stackIDForNode_, a2);
  v11 = (*(*(a1 + 48) + 16))(*(a1 + 48));

LABEL_19:

  return v11;
}

void __destructor_8_s8_s16_s24_sb48(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void sub_1C6832064(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C6834630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1C6834EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 192), 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

id VMUDirectedGraphErrorWithExtraUserInfo(unsigned int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12 arguments:&a9];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_new();
  [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v11)
  {
    [v14 addEntriesFromDictionary:v11];
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VMUDirectedGraphDomain" code:a1 userInfo:v14];

  return v15;
}

void sub_1C6835D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t nsfilehandle_write(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E695DEF0];
  v8 = a1;
  v9 = [v7 dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v10 = [v8 writeData:v9 error:a4];

  return v10;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __VMUCompressedBuffer_block_invoke(void *a1, uint64_t a2, int a3, void *a4)
{
  v7 = MEMORY[0x1E695DF88];
  v8 = a4;
  obj = [v7 dataWithLength:a2 + 16];
  v9 = v8[2](v8, [obj mutableBytes] + 16);

  if (v9)
  {
    [obj setLength:v9 + 16];
    v10 = obj;
    v11 = [obj mutableBytes];
    v12 = a1[6];
    v13 = a3 | (*(*(a1[4] + 8) + 24) << 16);
    *v11 = 16;
    v11[1] = v9;
    v11[2] = v12;
    v11[3] = v13;
    objc_storeStrong((*(a1[5] + 8) + 40), obj);
  }

  else
  {
    [obj setLength:0];
  }
}

uint64_t __VMUCompressedBuffer_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 56) = a2;
  *(*(*(a1 + 32) + 8) + 64) = v3;
  v4 = deflate((*(*(a1 + 32) + 8) + 32), 4);
  deflateEnd((*(*(a1 + 32) + 8) + 32));
  v5 = *(*(a1 + 32) + 8);
  if (v4 == 1)
  {
    return *(v5 + 72);
  }

  NSLog(&cfstr_UnableToCompre.isa, v4, *(v5 + 80));
  return 0;
}

uint8_t *__VMUCompressedBuffer_block_invoke_3(void *a1, uint8_t *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  memset(&v9, 0, sizeof(v9));
  if (compression_stream_init(&v9, COMPRESSION_STREAM_ENCODE, COMPRESSION_LZFSE) == COMPRESSION_STATUS_ERROR)
  {
    NSLog(&cfstr_UnableToInitia_0.isa);
    return 0;
  }

  v9.src_ptr = v3;
  v9.src_size = v4;
  v9.dst_ptr = a2;
  v9.dst_size = v5;
  v6 = compression_stream_process(&v9, 1);
  switch(v6)
  {
    case COMPRESSION_STATUS_ERROR:
      NSLog(&cfstr_ErrorCompressi.isa);
      return 0;
    case COMPRESSION_STATUS_OK:
      NSLog(&cfstr_ErrorCompressi_0.isa);
      return 0;
    case COMPRESSION_STATUS_END:
      if (v9.dst_ptr > a2)
      {
        v7 = (v9.dst_ptr - a2);
      }

      else
      {
        v7 = 0;
      }

      break;
    default:
      v7 = 0;
      break;
  }

  compression_stream_destroy(&v9);
  return v7;
}

const char *VMUGraphNodeTypeDescription(unsigned int a1)
{
  if (a1 > 5)
  {
    return "";
  }

  else
  {
    return off_1E827A888[a1];
  }
}

void sub_1C683B818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_1C683C240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1C683DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C683EB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t *sortNodesInMap(unint64_t *result, void *__base, size_t __nel)
{
  if (__nel >= 2)
  {
    __compar[5] = v3;
    __compar[6] = v4;
    v5 = result[2];
    if (v5 < *result)
    {
      goto LABEL_7;
    }

    v6 = result + 4;
    v7 = 2;
    do
    {
      v8 = v7;
      if (__nel == v7)
      {
        break;
      }

      v9 = *v6;
      v6 += 2;
      ++v7;
      v10 = v9 >= v5;
      v5 = v9;
    }

    while (v10);
    if (v8 < __nel)
    {
LABEL_7:
      __compar[0] = MEMORY[0x1E69E9820];
      __compar[1] = 3221225472;
      __compar[2] = __sortNodesInMap_block_invoke;
      __compar[3] = &__block_descriptor_40_e15_i24__0r_v8r_v16l;
      __compar[4] = result;
      return mergesort_b(__base, __nel, 4uLL, __compar);
    }
  }

  return result;
}

void sub_1C683EFE8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

id _subgraphWithPaths(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1;
  v21 = [v7 copy];
  v8 = [v7 edgeNamespaceSize];
  v9 = malloc_type_calloc(1uLL, ((v8 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v9 = v8;
  v10 = 4 * [v7 nodeNamespaceSize];
  v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
  __pattern4 = -1;
  memset_pattern4(v11, &__pattern4, v10);
  v12 = 4 * [v7 nodeNamespaceSize];
  v13 = malloc_type_malloc(v12, 0x100004052888210uLL);
  __pattern4 = -1;
  memset_pattern4(v13, &__pattern4, v12);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___subgraphWithPaths_block_invoke_2;
  v22[3] = &unk_1E827A868;
  v14 = v7;
  v23 = v14;
  v24 = v11;
  v25 = v13;
  v26 = a3;
  v27 = v9;
  v28 = a4;
  [v14 breadthFirstSearch:a2 nodeVisitBlock:&__block_literal_global_187 edgeVisitBlock:v22];
  v15 = *v9;
  v16 = (*v9 + 7);
  if (v16 >= 8)
  {
    v17 = v9 + 1;
    v18 = v16 >> 3;
    do
    {
      *v17 = ~*v17;
      ++v17;
      --v18;
    }

    while (v18);
  }

  v19 = v15 & 7;
  if (v19)
  {
    *(v9 + (v16 >> 3) + 3) ^= -1 << v19;
  }

  [v21 removeMarkedEdges:v9];
  if (v11)
  {
    free(v11);
  }

  if (v13)
  {
    free(v13);
  }

  free(v9);

  return v21;
}

void sub_1C683F50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __sortNodesInMap_block_invoke(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16 * *a2);
  v5 = *(v3 + 16 * *a3);
  v6 = v4 >= v5;
  v7 = v4 > v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ___subgraphWithPaths_block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (((a3 + 1) & 0xFE) != 0)
  {
    return 2;
  }

  else
  {
    return (a3 + 1);
  }
}

BOOL ___subgraphWithPaths_block_invoke_2(uint64_t a1, uint64_t a2, int a3, unsigned int a4, _BYTE *a5)
{
  if (*a5)
  {
    return 0;
  }

  v8 = a2;
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 referenceInfoWithName:a2];
    LOBYTE(v10) = v20;
  }

  result = VMUIsOwningReference(v10);
  if (result)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *(v11 + 4 * a4) = a3;
    v13 = a4;
    *(v12 + 4 * a4) = v8;
    v14 = *(a1 + 56);
    if (*v14 <= a4)
    {
      return 1;
    }

    else
    {
      result = 1;
      if ((*(v14 + (a4 >> 3) + 4) >> (a4 & 7)))
      {
        do
        {
          v15 = *(a1 + 64);
          v16 = *(*(a1 + 48) + 4 * v13);
          if (*v15 > v16)
          {
            v17 = v15 + (v16 >> 3);
            v18 = v17[4];
            v19 = 1 << (v16 & 7);
            if ((v19 & v18) != 0)
            {
              return *(a1 + 72) == 0;
            }

            v17[4] = v18 | v19;
            v11 = *(a1 + 40);
          }

          v13 = *(v11 + 4 * v13);
        }

        while (v13 != -1);
        return *(a1 + 72) == 0;
      }
    }
  }

  return result;
}

void sub_1C683F848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C683FC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 200), 8);
  _Block_object_dispose((v15 - 168), 8);
  _Block_object_dispose((v15 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1C6840284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6840554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t shouldGetLabelForObject(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 1;
  if (v3 && a2)
  {
    v6 = [v3 className];
    v5 = 1;
    [v6 rangeOfString:@"String" options:1];
    if (!v7)
    {
      if ([v6 isEqualToString:@"NSPathStore2"])
      {
        v5 = 1;
      }

      else
      {
        v5 = [v4 isDerivedFromStackBacktrace];
      }
    }
  }

  return v5;
}

uint64_t totalSizeOfRanges(NSMapTable *a1)
{
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, a1);
  value = 0;
  key = 0;
  v1 = 0;
  if (NSNextMapEnumeratorPair(&enumerator, &key, &value))
  {
    v1 = 0;
    do
    {
      v1 += value;
    }

    while (NSNextMapEnumeratorPair(&enumerator, &key, &value));
  }

  NSEndMapTableEnumeration(&enumerator);
  return v1;
}

id sub_1C68465A8(void *a1, int a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = sub_1C684F8F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v12 = MEMORY[0x1EEE9AC00](v5, v8, v9, v10, v11);
  v13 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14, v15, v16, v17);
  v19 = &v45 - v18;
  sub_1C684F8E0();
  [a1 createSymbolicatorWithFlags:0 andNotification:0];
  if (CSIsNull())
  {
    (*(v6 + 8))(v19, v5);

LABEL_14:
    type metadata accessor for VMUAttributeGraphRegionIdentifier();
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_15;
  }

  LODWORD(v46) = a2;
  v47 = v5;
  if ([a1 isExclaveCore])
  {
    CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  if (CSIsNull() & 1) != 0 || (CSSymbolOwnerGetSymbolWithMangledName(), (CSIsNull()) || (Range = CSSymbolGetRange()) == 0)
  {
    CSRelease();

    (*(v6 + 8))(v19, v47);
    goto LABEL_14;
  }

  if (v21 < 8)
  {
    v22 = sub_1C684F8D0();
    v23 = sub_1C684F930();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v47;
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C679D000, v22, v23, "VMUAttributeGraphRegionIdentifier.init() failed - symbol _AGGraphVMRegionBaseAddress exists but is smaller than expected", v26, 2u);
      MEMORY[0x1C695F780](v26, -1, -1);
    }

    CSRelease();
    (*(v6 + 8))(v19, v25);
    goto LABEL_14;
  }

  aBlock[0] = 0;
  v29 = Range;
  v30 = [a1 memoryCache];
  v31 = [v30 readPointerAt:v29 value:aBlock];

  if (v31)
  {
    v32 = sub_1C684F8D0();
    v33 = sub_1C684F930();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v31;
      _os_log_impl(&dword_1C679D000, v32, v33, "VMUAttributeGraphRegionIdentifier.init() failed to read _AGGraphVMRegionBaseAddress with the error %d", v34, 8u);
      MEMORY[0x1C695F780](v34, -1, -1);
    }

    CSRelease();
    (*(v6 + 8))(v19, v47);
    goto LABEL_14;
  }

  v35 = OBJC_IVAR___VMUAttributeGraphRegionIdentifier_attributeGraphVMRegionBaseAddress;
  *&v2[OBJC_IVAR___VMUAttributeGraphRegionIdentifier_attributeGraphVMRegionBaseAddress] = aBlock[0];
  CSRelease();
  if (v46)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = MEMORY[0x1E69E7CD0];
    v37 = v47;
    (*(v6 + 16))(v13, v19, v47);
    v38 = *(v6 + 80);
    v46 = v35;
    v39 = (v38 + 32) & ~v38;
    v40 = swift_allocObject();
    *(v40 + 16) = a1;
    *(v40 + 24) = v36;
    (*(v6 + 32))(v40 + v39, v13, v37);
    aBlock[4] = sub_1C68471D0;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C68484B8;
    aBlock[3] = &block_descriptor;
    v41 = _Block_copy(aBlock);
    v42 = a1;

    VMUTask_foreach_malloc_zone(v42, v41);
    _Block_release(v41);

    v43 = *&v2[v46];
    swift_beginAccess();
    sub_1C6847284(v43);
    swift_endAccess();
    (*(v6 + 8))(v19, v47);
    *&v2[OBJC_IVAR___VMUAttributeGraphRegionIdentifier_oldAttributeGraphVMRegionBaseAddresses] = *(v36 + 16);
  }

  else
  {
    (*(v6 + 8))(v19, v47);
    *&v2[OBJC_IVAR___VMUAttributeGraphRegionIdentifier_oldAttributeGraphVMRegionBaseAddresses] = MEMORY[0x1E69E7CD0];
  }

  v48.receiver = v2;
  v48.super_class = VMUAttributeGraphRegionIdentifier;
  v44 = objc_msgSendSuper2(&v48, sel_init);

  result = v44;
LABEL_15:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6846B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a4)
  {
    return 0;
  }

  if ((sub_1C684F920() & 1) == 0)
  {
    return 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 5;
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a5;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a6;
  v21[4] = sub_1C6847A94;
  v21[5] = v13;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C6848464;
  v21[3] = &block_descriptor_13;
  v14 = _Block_copy(v21);

  v15 = a5;

  withPeekFunctionForVMUTask(v15, v14);
  _Block_release(v14);
  swift_beginAccess();
  if (*(v12 + 16))
  {

    v16 = sub_1C684F8D0();
    v17 = sub_1C684F930();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = *(v12 + 16);

      _os_log_impl(&dword_1C679D000, v16, v17, "VMUAttributeGraphRegionIdentifier.init() - failed to enumerate AttributeGraph malloc zone with the error %d", v18, 8u);
      MEMORY[0x1C695F780](v18, -1, -1);
    }

    else
    {
    }
  }

  v20 = *(v12 + 16);

  return v20;
}

uint64_t sub_1C6846DE4(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t (**a5)(uint64_t, id, uint64_t, uint64_t, uint64_t, void (*)(int a1, void *aBlock, uint64_t a3, uint64_t a4, uint64_t a5)), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a8 + 16;
  v13 = [a3 taskPort];
  v14 = sub_1C684F900();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C6847AA8;
  *(v16 + 24) = v15;
  v19[4] = sub_1C6847AB0;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1C6848430;
  v19[3] = &block_descriptor_22;
  v17 = _Block_copy(v19);

  LODWORD(a5) = VMUEnumerateMallocBlocksInZone(v13, 2048, a4, a1, a5, v14, v17);
  _Block_release(v17);

  swift_beginAccess();
  *(a2 + 16) = a5;
}

uint64_t sub_1C6846F60(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if ((result & 0x800) != 0)
  {
    v3 = a2;
    if (a2)
    {
      if (a3)
      {
        v4 = a3;
        swift_beginAccess();
        v5 = 16 * v4;
        do
        {
          v6 = *v3;
          v3 += 2;
          sub_1C6847AB8(&v7, v6);
          v5 -= 16;
        }

        while (v5);
        return swift_endAccess();
      }
    }
  }

  return result;
}

BOOL sub_1C684700C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___VMUAttributeGraphRegionIdentifier_oldAttributeGraphVMRegionBaseAddresses);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = *(v2 + 40);
  v5 = sub_1C684F9C0();
  v6 = -1 << *(v2 + 32);
  v7 = v5 & ~v6;
  if (((*(v2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(v2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(v2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void __swiftcall VMUAttributeGraphRegionIdentifier.init()(VMUAttributeGraphRegionIdentifier *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for VMUAttributeGraphRegionIdentifier()
{
  result = qword_1EC1CFC10;
  if (!qword_1EC1CFC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1CFC10);
  }

  return result;
}

uint64_t sub_1C68471D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(sub_1C684F8F0() - 8) + 80);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);

  return sub_1C6846B98(a1, a2, a3, a4, v10, v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C6847284(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_1C684F9C0();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C6847374();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_1C68478C8(v7);
  result = v13;
  *v1 = v14;
  return result;
}

void *sub_1C6847374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0910, &qword_1C68584B0);
  v2 = *v0;
  v3 = sub_1C684F950();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C68474B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0910, &qword_1C68584B0);
  result = sub_1C684F960();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1C684F9C0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C68476A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0910, &qword_1C68584B0);
  result = sub_1C684F960();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1C684F9C0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1C68478C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C684F940();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1C684F9C0() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C6847AB8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1C684F9C0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1C6847B98(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C6847B98(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C68476A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C6847374();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C68474B4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1C684F9C0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C684F9A0();
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C6847CC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6847CE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C6847D24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t __copy_assignment_8_8_pa0_65378_0_pa0_34562_8_pa0_19484_16_pa0_61410_24_pa0_57512_32_pa0_14389_40_pa0_43219_48_pa0_63934_56_pa0_3758_64_pa0_6027_72_pa0_18472_80_pa0_3398_88_pa0_16233_96_pa0_55737_104_pa0_53179_112_pa0_8858_120_t128w4(uint64_t result, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  *result = *a2;
  v3 = a2[1];
  if (v3)
  {
    v4 = a2[1];
  }

  *(result + 8) = v3;
  v5 = a2[2];
  if (v5)
  {
    v6 = a2[2];
  }

  *(result + 16) = v5;
  v7 = a2[3];
  if (v7)
  {
    v8 = a2[3];
  }

  *(result + 24) = v7;
  v9 = a2[4];
  if (v9)
  {
    v10 = a2[4];
  }

  *(result + 32) = v9;
  v11 = a2[5];
  if (v11)
  {
    v12 = a2[5];
  }

  *(result + 40) = v11;
  v13 = a2[6];
  if (v13)
  {
    v14 = a2[6];
  }

  *(result + 48) = v13;
  v15 = a2[7];
  if (v15)
  {
    v16 = a2[7];
  }

  *(result + 56) = v15;
  v17 = a2[8];
  if (v17)
  {
    v18 = a2[8];
  }

  *(result + 64) = v17;
  v19 = a2[9];
  if (v19)
  {
    v20 = a2[9];
  }

  *(result + 72) = v19;
  v21 = a2[10];
  if (v21)
  {
    v22 = a2[10];
  }

  *(result + 80) = v21;
  v23 = a2[11];
  if (v23)
  {
    v24 = a2[11];
  }

  *(result + 88) = v23;
  v25 = a2[12];
  if (v25)
  {
    v26 = a2[12];
  }

  *(result + 96) = v25;
  v27 = a2[13];
  if (v27)
  {
    v28 = a2[13];
  }

  *(result + 104) = v27;
  v29 = a2[14];
  if (v29)
  {
    v30 = a2[14];
  }

  *(result + 112) = v29;
  v31 = a2[15];
  if (v31)
  {
    v32 = a2[15];
  }

  *(result + 120) = v31;
  *(result + 128) = *(a2 + 32);
  return result;
}

uint64_t sub_1C6848120(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C684817C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1C6848248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C68482A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6848348(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6848368(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_1C68483A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C6848464(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1C68484B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_1C684F910();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = v7(a2, a3, v8, v10);

  return v11;
}

id sub_1C6848548(void *a1)
{
  v3 = OBJC_IVAR___VMUAttributeGraphTypeIdentifier_attributeGraphSwiftMetadataToClassInfo;
  *&v1[v3] = sub_1C6849A98(MEMORY[0x1E69E7CC0]);
  result = [a1 vmuTask];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result isExclaveCore];
  [a1 symbolicator];
  if (v6)
  {
    CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  if ((CSIsNull() & 1) != 0 || (Path = CSSymbolOwnerGetPath()) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v8 = Path;
  v9 = isSafeToLoadLibrary(Path);
  if (!v9)
  {
    v12 = dlopen(v8, 1);
    if (!v12 || (v13 = dlsym(v12, "AGMallocZoneGetCurrentSwiftMetadata")) == 0)
    {

      goto LABEL_11;
    }

    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C6849B94(MEMORY[0x1E69E7CC0]);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *(v17 + 24) = 1793;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    *(v17 + 48) = v16;
    aBlock[4] = sub_1C6849C70;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C68484B8;
    aBlock[3] = &block_descriptor_0;
    v18 = _Block_copy(aBlock);
    v19 = v5;

    VMUTask_foreach_malloc_zone(v19, v18);
    _Block_release(v18);

    swift_beginAccess();
    if (*(v16 + 16))
    {
      swift_beginAccess();
      *&v1[OBJC_IVAR___VMUAttributeGraphTypeIdentifier_swiftValueInAttributeGraphAddressesToTypeMetadata] = *(v15 + 16);
      swift_unknownObjectUnownedInit();
      v21.receiver = v1;
      v21.super_class = VMUAttributeGraphTypeIdentifier;

      v20 = objc_msgSendSuper2(&v21, sel_init);

      return v20;
    }

    goto LABEL_10;
  }

  v10 = v9;

LABEL_11:
  v11 = *&v1[v3];

  type metadata accessor for VMUAttributeGraphTypeIdentifier();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C684887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a4)
  {
    return 0;
  }

  if (sub_1C684F920())
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 5;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a5;
    *(v18 + 32) = a6;
    *(v18 + 40) = a1;
    *(v18 + 48) = a2;
    *(v18 + 56) = a3;
    *(v18 + 64) = a4;
    *(v18 + 72) = a7;
    *(v18 + 80) = a8;
    aBlock[4] = sub_1C6849CBC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6848464;
    aBlock[3] = &block_descriptor_16;
    v19 = _Block_copy(aBlock);

    v20 = a5;

    withPeekFunctionForVMUTask(v20, v19);
    _Block_release(v19);
    swift_beginAccess();
    v21 = *(v17 + 16);
    swift_beginAccess();
    *(a9 + 16) = v21 == 0;

    return v21;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1C6848A68(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t, id, uint64_t, uint64_t, uint64_t, void (*)(int a1, void *aBlock, uint64_t a3, uint64_t a4, uint64_t a5)), int a7, int a8, uint64_t a9, uint64_t a10)
{
  v15 = [a3 taskPort];
  v16 = sub_1C684F900();
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a9;
  v17[4] = a10 + 16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1C6849CF4;
  *(v18 + 24) = v17;
  v21[4] = sub_1C6849D00;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C6848430;
  v21[3] = &block_descriptor_25;
  v19 = _Block_copy(v21);

  LODWORD(a6) = VMUEnumerateMallocBlocksInZone(v15, a4, a5, a1, a6, v16, v19);
  _Block_release(v19);

  swift_beginAccess();
  *(a2 + 16) = a6;
}

uint64_t sub_1C6848BF8(uint64_t result, uint64_t *a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t *a6)
{
  if ((result & 0x400) != 0 && a3 == 1)
  {
    if (a4)
    {
      result = a5(a4);
      if (a2)
      {
        v8 = result;
        v9 = *a2;
        swift_beginAccess();
        v10 = *a6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *a6;
        *a6 = 0x8000000000000000;
        sub_1C6849584(v8, v9, isUniquelyReferenced_nonNull_native);
        *a6 = v12;
        return swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

VMUMutableClassInfo *sub_1C6848D1C(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___VMUAttributeGraphTypeIdentifier_attributeGraphSwiftMetadataToClassInfo;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_1C6849008(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    if (v8)
    {
      v9 = v8;
    }
  }

  else
  {
    swift_endAccess();
    v10 = objc_opt_self();
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = [(VMUClassInfo *)v10 swiftValueWithMetadata:a1 objectIdentifier:Strong];

    swift_beginAccess();
    if (v8)
    {
      v12 = v8;
      v13 = *(v2 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v2 + v4);
      *(v2 + v4) = 0x8000000000000000;
      v15 = v8;
    }

    else
    {
      v16 = *(v2 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v2 + v4);
      *(v2 + v4) = 0x8000000000000000;
      v15 = 0;
    }

    sub_1C68496A8(v15, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + v4) = v18;
    swift_endAccess();
  }

  return v8;
}

void __swiftcall VMUAttributeGraphTypeIdentifier.init()(VMUAttributeGraphTypeIdentifier *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for VMUAttributeGraphTypeIdentifier()
{
  result = qword_1EC1CFC08;
  if (!qword_1EC1CFC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1CFC08);
  }

  return result;
}

unint64_t sub_1C6849008(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C684F9C0();

  return sub_1C684904C(a1, v4);
}

unint64_t sub_1C684904C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1C68490B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0958, &qword_1C6858570);
  result = sub_1C684F980();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1C684F9C0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C684931C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0950, &qword_1C6858568);
  result = sub_1C684F980();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_1C684F9C0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1C6849584(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C6849008(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1C68497F0();
    result = v17;
    goto LABEL_8;
  }

  sub_1C68490B8(v14, a3 & 1);
  v18 = *v4;
  result = sub_1C6849008(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1C684F9B0();
  __break(1u);
  return result;
}

void sub_1C68496A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1C6849008(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1C684931C(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1C6849008(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_1C684F9B0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1C684993C();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    *(v20[6] + 8 * v9) = a2;
    *(v20[7] + 8 * v9) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

void *sub_1C68497F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0958, &qword_1C6858570);
  v2 = *v0;
  v3 = sub_1C684F970();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C684993C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0950, &qword_1C6858568);
  v2 = *v0;
  v3 = sub_1C684F970();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1C6849A98(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0950, &qword_1C6858568);
  v3 = sub_1C684F990();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1C6849008(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1C6849008(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6849B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1D0958, &qword_1C6858570);
    v3 = sub_1C684F990();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C6849008(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C6849D00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C6849D34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6849D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C6849DD8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6849DF0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_DWORD *vmu_create_backtrace_uniquing_table(unsigned int a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x108uLL, 0x1080040AD5D41FBuLL);
  v5 = v4;
  if ((a2 & 2) != 0)
  {
    v6 = 24;
  }

  else
  {
    v6 = 16;
  }

  v4[10] = v6;
  if (a1)
  {
    if (a1 <= 0x400)
    {
      v7 = 1024;
    }

    else
    {
      v7 = a1;
    }

    v8 = (v6 * v7);
    v9 = *MEMORY[0x1E69E9AC8];
    v10 = (((v8 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) / *MEMORY[0x1E69E9AC8]);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9AC8];
    v10 = 512;
  }

  v11 = (v9 * v10 / v6) & 0xFFFFFFFFFFFFFFELL;
  *(v4 + 1) = v10;
  *(v4 + 2) = v11;
  *(v4 + 3) = v9 * v10;
  if (v11 >= 0xFFFFFFFF)
  {
    vmu_create_backtrace_uniquing_table_cold_2();
  }

  address = 0;
  if (mach_vm_allocate(*MEMORY[0x1E69E9A60], &address, v9 * v10, 167772161))
  {
    vmu_create_backtrace_uniquing_table_cold_1();
  }

  *v5 = address;
  *(v5 + 4) = 0;
  v5[14] = ((a2 & 6) == 0) | a2;
  v5[11] = 10;
  v12 = *(v5 + 2);
  if (v12 >= 0x401)
  {
    v13 = 10;
    do
    {
      v12 >>= 2;
      v13 += 3;
    }

    while (v12 > 0x400);
    v5[11] = v13;
  }

  pthread_rwlock_init((v5 + 16), 0);
  return v5;
}

char *vmu_create_backtrace_uniquing_table_from_archive(unint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x108uLL, 0x1080040AD5D41FBuLL);
  *(v6 + 14) = a2;
  if ((a2 & 2) != 0)
  {
    v7 = 24;
  }

  else
  {
    v7 = 16;
  }

  *(v6 + 10) = v7;
  *v6 = a3;
  v8 = (a1 / v7) & 0xFFFFFFFFFFFFFFELL;
  *(v6 + 2) = v8;
  *(v6 + 3) = a1;
  if (v8 >= 0xFFFFFFFF)
  {
    vmu_create_backtrace_uniquing_table_from_archive_cold_1();
  }

  v9 = v6;
  *(v6 + 1) = 0;
  *(v6 + 4) = 0;
  *(v6 + 11) = 0;
  pthread_rwlock_init((v6 + 64), 0);
  return v9;
}

void vmu_destroy_backtrace_uniquing_table(uint64_t a1)
{
  if (*(a1 + 8))
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *a1, *(a1 + 24));
  }

  else
  {
    free(*a1);
  }

  pthread_rwlock_destroy((a1 + 64));

  free(a1);
}

uint64_t vmu_context_for_uniqued_stack(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return *a1 + *(a1 + 40) * a2 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t vmu_enter_stack_in_backtrace_uniquing_table(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  address[512] = *MEMORY[0x1E69E9840];
  if (*(v5 + 8))
  {
    v9 = v8;
    v10 = v7;
    v11 = v6;
    v12 = v5;
    v36 = 0;
    pthread_rwlock_wrlock((v5 + 64));
    v13 = _enter_frames_in_table_while_locked(v12, &v36, v10, v9);
    pthread_rwlock_unlock((v12 + 64));
    if (v13)
    {
      result = 1;
    }

    else
    {
      v34 = v11;
      v35 = v9;
      while (1)
      {
        v15 = 4 * *(v12 + 8);
        v16 = *(v12 + 44);
        pthread_rwlock_wrlock((v12 + 64));
        v17 = *(v12 + 16);
        v18 = *MEMORY[0x1E69E9AC8] * v15;
        v19 = v18 / *(v12 + 40);
        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (HIDWORD(v19))
        {
          fprintf(*MEMORY[0x1E69E9848], "can't expand backtrace uniquing table from %llu nodes to %llu nodes (exceeds maximum %u)\n");
          goto LABEL_34;
        }

        v21 = *v12;
        v22 = *(v12 + 24);
        address[0] = 0;
        if (mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v18, 167772161))
        {
          vmu_create_backtrace_uniquing_table_cold_1();
        }

        v23 = address[0];
        if (!address[0])
        {
          break;
        }

        *v12 = address[0];
        *(v12 + 8) = v15;
        *(v12 + 16) = v20;
        *(v12 + 24) = v18;
        *(v12 + 32) = v17;
        *(v12 + 44) = v16 + 3;
        v24 = *(v12 + 56);
        if (v24)
        {
          *(v12 + 48) = 0;
        }

        else if ((v24 & 4) != 0)
        {
          if (mach_vm_copy(*MEMORY[0x1E69E9A60], v21, v22, v23))
          {
            printf("(VMUBacktraceUniquing) expandUniquingTable(): VMCopyFailed");
          }
        }

        else if ((v24 & 2) != 0)
        {
          *(v12 + 48) = 0;
          if (v17)
          {
            for (i = 0; i != v17; ++i)
            {
              v26 = *(v12 + 40);
              v27 = v21 + i * v26;
              v28 = *(v27 + 16);
              if (v28)
              {
                v29 = *(v27 + 8);
                if (v29 == -1)
                {
                  v31 = 0;
                }

                else
                {
                  v30 = 0;
                  do
                  {
                    address[v30] = *v27;
                    v31 = v30 + 1;
                    v27 = v21 + (v29 * v26);
                    v29 = *(v27 + 8);
                    ++v30;
                  }

                  while (v29 != -1);
                }

                address[v31] = *v27;
                v37 = 0;
                if (_enter_frames_in_table_while_locked(v12, &v37, address, v31 + 1))
                {
                  *(*v12 + v37 * *(v12 + 40) + 16) = v28;
                }

                else
                {
                  fwrite("unable to reinsert node when expanding backtrace uniquing table - bad hashing function?\n", 0x58uLL, 1uLL, *MEMORY[0x1E69E9848]);
                }
              }
            }
          }
        }

        if (mach_vm_deallocate(*MEMORY[0x1E69E9A60], v21, v22))
        {
          printf("(VMUBacktraceUniquing) expandUniquingTable(): mach_vm_deallocate failed. [%p]\n", *v12);
        }

        pthread_rwlock_unlock((v12 + 64));
        pthread_rwlock_wrlock((v12 + 64));
        v32 = _enter_frames_in_table_while_locked(v12, &v36, v10, v35);
        pthread_rwlock_unlock((v12 + 64));
        if (v32)
        {
          result = 1;
          goto LABEL_35;
        }
      }

      fprintf(*MEMORY[0x1E69E9848], "failed to expand uniquing table to %llu bytes\n");
LABEL_34:
      pthread_rwlock_unlock((v12 + 64));
      result = 0;
      v36 = -1;
LABEL_35:
      v11 = v34;
    }

    *v11 = v36;
  }

  else
  {
    result = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t vmu_remove_stack_from_backtrace_uniquing_table(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFF)
  {
    vmu_remove_stack_from_backtrace_uniquing_table_cold_3();
  }

  pthread_rwlock_wrlock((a1 + 64));
  v4 = *(a1 + 52);
  v5 = a2;
  while (1)
  {
    v6 = *(a1 + 40);
    v7 = (*a1 + (v6 * v5));
    v9 = v7[2];
    v8 = v7[3];
    if (!*v7 && v9 == 0)
    {
      break;
    }

    if (v8 != -1)
    {
      v11 = v8 - 1;
      v7[3] = v11;
      if (!v11)
      {
        bzero(v7, v6);
        --*(a1 + 48);
        if (v5 == a2)
        {
          --*(a1 + 52);
        }
      }
    }

    v5 = v9;
    if (v9 == -1)
    {
      goto LABEL_14;
    }
  }

  if (v8)
  {
    vmu_remove_stack_from_backtrace_uniquing_table_cold_1();
  }

LABEL_14:
  if ((v4 - *(a1 + 52)) >= 2)
  {
    vmu_remove_stack_from_backtrace_uniquing_table_cold_2();
  }

  return pthread_rwlock_unlock((a1 + 64));
}

uint64_t vmu_stack_frames_for_uniqued_stack(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  if (a2 >= 0xFFFFFFFF)
  {
    vmu_stack_frames_for_uniqued_stack_cold_1();
  }

  v6 = a2;
  pthread_rwlock_rdlock((a1 + 64));
  if (a4)
  {
    v8 = 0;
    v9 = *(a1 + 40);
    v10 = v6;
    while (1)
    {
      if (*(a1 + 24) <= (v9 + v9 * v10))
      {
        fprintf(*MEMORY[0x1E69E9848], "(VMUBacktraceUniquing): Invalid parent node %#x\n");
        goto LABEL_15;
      }

      v11 = (*a1 + (v9 * v10));
      v12 = *v11;
      v10 = *(v11 + 2);
      if (!v12 && v10 == 0)
      {
        break;
      }

      *(a3 + 8 * v8) = v12;
      v14 = v8++;
      if (a4 - 1 == v14 || v10 == -1)
      {
        goto LABEL_15;
      }
    }

    fprintf(*MEMORY[0x1E69E9848], "(VMUBacktraceUniquing): Invalid PC 0x%llx at frame %u for stackID %llu\n");
  }

  else
  {
    v8 = 0;
  }

LABEL_15:
  pthread_rwlock_unlock((a1 + 64));
  return v8;
}

uint64_t vmu_enumerate_backtrace_uniquing_table(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = *(result + 56);
    do
    {
      v8 = v6 + v5 * *(v4 + 40);
      if (*v8 || *(v8 + 8))
      {
        if ((v7 & 2) != 0)
        {
          v9 = *(v8 + 16);
        }

        result = (*(a2 + 16))(a2);
        v2 = *(v4 + 16);
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return result;
}

uint64_t vmu_print_backtrace_uniquing_table(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = *result;
    v5 = *(result + 56);
    v6 = MEMORY[0x1E69E9848];
    do
    {
      v7 = v4 + v3 * *(v2 + 40);
      v8 = *(v7 + 8);
      if (*v7)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (!v9)
      {
        fprintf(*v6, "%8llu  address %#llx  parent %u", v3, *v7, v8);
        if ((v5 & 2) != 0)
        {
          fprintf(*v6, "  context %#llx", *(v7 + 16));
        }

        result = fputc(10, *v6);
        v1 = *(v2 + 16);
      }

      ++v3;
    }

    while (v3 < v1);
  }

  return result;
}

uint64_t _enter_frames_in_table_while_locked(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = (v4 - v5) / ((2 * v6) | 1uLL);
  v8 = a4;
  v9 = -1;
  while (1)
  {
    v10 = v9;
    if (v8 < 1)
    {
      break;
    }

    if (v6)
    {
      --v8;
      v11 = *(a3 + 8 * v8);
      v9 = ((16 * v9) ^ (v11 >> 2)) % (v4 - v5 - 1) + v5;
      v12 = (v6 - 1) * v7 + 1;
      v13 = v6;
      while (1)
      {
        v14 = *a1 + *(a1 + 40) * v9;
        if (!*v14 && !*(v14 + 8))
        {
          break;
        }

        if (*v14 == v11 && *(v14 + 8) == v10)
        {
          v19 = *(v14 + 12);
          v18 = (v14 + 12);
          v17 = v19;
          if (v19 == -1)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v15 = v9 + v12;
        if (v4 <= v15)
        {
          v16 = v5 - v4;
        }

        else
        {
          v16 = 0;
        }

        v12 -= v7;
        v9 = v15 + v16;
        if (!--v13)
        {
          return 0;
        }
      }

      *v14 = v11;
      *(v14 + 8) = v10;
      *(v14 + 12) = 1;
      ++*(a1 + 48);
      if (v8)
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 52);
      v18 = (a1 + 52);
LABEL_18:
      *v18 = v17 + 1;
LABEL_19:
      if (v13 >= 1)
      {
        continue;
      }
    }

    return 0;
  }

  *a2 = v9;
  return 1;
}

void _createFieldInfoFromChild()
{
  dispatch_once(&_createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::dispatchEnumConfigOnceToken, &__block_literal_global_498);
}

{
  dispatch_once(&_logSwiftUnknownFieldsIsEnabled(void)::onceToken, &__block_literal_global_520);
}

void __remoteZoneIntrospection_block_invoke_5_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}