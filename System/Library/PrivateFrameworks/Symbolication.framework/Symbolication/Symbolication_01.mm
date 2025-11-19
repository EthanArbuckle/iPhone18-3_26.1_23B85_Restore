uint64_t task_read_ptr_at(task_name_t a1, mach_vm_address_t a2, void *a3)
{
  v6 = 0;
  result = task_peek_to_end_of_region(a1, a2, 8uLL, &v6, 0);
  v5 = 0;
  if (!result && v6)
  {
    v5 = *v6;
  }

  *a3 = v5;
  return result;
}

uint64_t task_read_unsigned_at(task_name_t a1, mach_vm_address_t a2, _DWORD *a3)
{
  v6 = 0;
  result = task_peek_to_end_of_region(a1, a2, 4uLL, &v6, 0);
  v5 = 0;
  if (!result && v6)
  {
    v5 = *v6;
  }

  *a3 = v5;
  return result;
}

mach_vm_address_t task_peek_string(task_name_t a1, mach_vm_address_t a2)
{
  IsSelf_portOfCachedResult = VMUTaskIsSelf_portOfCachedResult();
  if (*IsSelf_portOfCachedResult == a1)
  {
    if (*VMUTaskIsSelf_cachedResult())
    {
      return a2;
    }
  }

  else
  {
    *IsSelf_portOfCachedResult = a1;
    mach_task_is_self(a1);
    IsSelf_cachedResult = VMUTaskIsSelf_cachedResult();
    *IsSelf_cachedResult = v6;
    if (v7)
    {
      return a2;
    }
  }

  v8 = 0;
  v9 = 1;
  v18 = 1;
  v10 = MEMORY[0x1E69E9830];
  v11 = MEMORY[0x1E69E9AC8];
LABEL_6:
  v17 = 0;
  v12 = task_peek_to_end_of_region(a1, a2, v9, &v17, &v18);
  v13 = 0;
  if (!v12)
  {
    v14 = v17;
    if (v17)
    {
      while (1)
      {
        if (v8 >= v18)
        {
          v9 = *v11 + v18;
          v18 = v9;
          if (v9 <= 0x19000)
          {
            goto LABEL_6;
          }

          return 0;
        }

        v15 = *(v14 + v8);
        if (!*(v14 + v8))
        {
          return v14;
        }

        if ((v15 & 0x80000000) != 0)
        {
          if (__maskrune(*(v14 + v8), 0x40000uLL))
          {
            goto LABEL_16;
          }
        }

        else if ((*(v10 + 4 * v15 + 60) & 0x40000) != 0)
        {
          goto LABEL_16;
        }

        if (v15 - 169 >= 2 && v15 - 9 > 1)
        {
          return 0;
        }

LABEL_16:
        ++v8;
      }
    }
  }

  return v13;
}

BOOL objectIsDeallocatingOrDeallocated(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 10) & 0xE0) != 0;
  }

  return result;
}

BOOL stringHasInlineContents(_BOOL8 result)
{
  if (result)
  {
    v1 = atomic_load((result + 8));
    return (v1 & 0x60) == 0;
  }

  return result;
}

__CFString *stringFromMappedNSCFString(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, int *a6)
{
  v11 = a1;
  v55 = a2;
  v12 = a5;
  if (a6)
  {
    *a6 = 0;
  }

  v13 = 0;
  if (!a2 || a3 - 1 < 0xF)
  {
    goto LABEL_13;
  }

  v14 = atomic_load((a2 + 8));
  v15 = atomic_load((a2 + 8));
  v16 = atomic_load((a2 + 8));
  v17 = v16 & 4;
  v18 = atomic_load((v55 + 8));
  v19 = atomic_load((v55 + 8));
  if ((v18 & 0x60) != 0 && !(v14 & 1 | ((v16 & 4) == 0)))
  {
    v13 = 0;
    v54 = 0;
    goto LABEL_13;
  }

  v20 = 32;
  if ((v18 & 0x60) == 0)
  {
    v20 = 24;
  }

  if (v20 > a3)
  {
    goto LABEL_12;
  }

  v52 = v19;
  v53 = v18 & 0x60;
  Length2 = _CFStringGetLength2();
  if (Length2 > 0x3B9ACA00)
  {
    goto LABEL_12;
  }

  v23 = (v15 >> 4) & 1;
  if (!Length2)
  {
    if (a6)
    {
      v31 = (v14 & 1) != 0 ? 11 : 3;
      *a6 = v31;
      if (v23)
      {
        *a6 = v31 | 0x10;
      }
    }

    v13 = &stru_1F461F9C8;
    goto LABEL_13;
  }

  v54 = 0;
  v24 = Length2;
  if (v53)
  {
    if (v23 && v17)
    {
      goto LABEL_12;
    }

    v51 = v23;
    v25 = *(v55 + 16);
    if (!remoteAddressIsOKtoRead(v25, v12))
    {
      goto LABEL_12;
    }

    if (v51)
    {
      v26 = 2 * v24;
    }

    else
    {
      v26 = v24 + (v17 >> 2);
    }

    v27 = [v11 memoryCache];
    v28 = [v27 peekAtAddress:v25 size:v26 returnsBuf:&v54];

    v13 = 0;
    if (v28)
    {
      goto LABEL_13;
    }

    v29 = v54;
    v30 = v24;
    if (!v54)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v51 = v23;
    if (!remoteAddressIsOKtoRead(a4, v12))
    {
      goto LABEL_12;
    }

    v30 = v24;
    v32 = (v24 << v51) + 16;
    if (v32 > a3)
    {
      v33 = [v11 memoryCache];
      v34 = [v33 peekAtAddress:a4 size:v32 returnsBuf:&v55];

      v13 = 0;
      if (v34)
      {
        goto LABEL_13;
      }

      v30 = v24;
      if (!v55)
      {
        goto LABEL_13;
      }
    }

    v35 = 8;
    if (!(v14 & 1 | (v17 == 0)))
    {
      v35 = 0;
    }

    v29 = (v55 + v35 + 16);
    v54 = v29;
  }

  if (v51)
  {
    if (!*v29)
    {
      goto LABEL_12;
    }

    v44 = 1;
    do
    {
      v45 = v44;
      if (v30 == v44)
      {
        break;
      }

      v46 = v29[v44++];
    }

    while (v29[v45]);
    if (v45 < v30)
    {
      goto LABEL_12;
    }

    v47 = v30;
    v48 = objc_alloc(MEMORY[0x1E696AEC0]);
    v43 = [v48 initWithCharactersNoCopy:v54 length:v47 freeWhenDone:0];
LABEL_63:
    v13 = v43;
    if (a6 && v43)
    {
      if (v53)
      {
        v49 = 35;
      }

      else
      {
        v49 = 3;
      }

      if (!HIDWORD(v52))
      {
        v49 |= 0x40u;
      }

      if (v14)
      {
        v49 |= 8u;
      }

      *a6 = v49;
      if (v51)
      {
        *a6 = v49 | 0x10;
      }
    }

    goto LABEL_13;
  }

  if (v17)
  {
    v29 = (v29 + 1);
    v54 = v29;
  }

  v36 = 0;
  v50 = 1;
  v37 = MEMORY[0x1E69E9830];
  while (1)
  {
    v38 = *(v29 + v36);
    v39 = *(v29 + v36);
    if (v38 < 0)
    {
      break;
    }

    if ((*(v37 + 4 * v38 + 60) & 0x40000) == 0)
    {
      goto LABEL_49;
    }

LABEL_54:
    if (v30 == ++v36)
    {
      goto LABEL_55;
    }
  }

  v40 = __maskrune(*(v29 + v36), 0x40000uLL);
  v30 = v24;
  if (v40)
  {
    goto LABEL_54;
  }

LABEL_49:
  if ((v39 - 169) >= 2 && (v39 - 9) > 1)
  {
    v50 = 0;
  }

  if (v38 - 169 < 2 || v38 - 9 <= 1)
  {
    goto LABEL_54;
  }

LABEL_55:
  if (v50)
  {
    v41 = v30;
    v42 = objc_alloc(MEMORY[0x1E696AEC0]);
    v43 = [v42 initWithBytes:v54 length:v41 encoding:4];
    goto LABEL_63;
  }

LABEL_12:
  v13 = 0;
LABEL_13:

  return v13;
}

BOOL remoteAddressIsOKtoRead(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = !v3 || [v3 containsLocation:a1];

  return v5;
}

unsigned __int8 *stringFromBytes(unsigned __int8 *a1, unint64_t a2, int *a3)
{
  if (a1)
  {
    v5 = a1;
    a1 = 0;
    if (a2)
    {
      v6 = *v5;
      v7 = v6;
      if (v6)
      {
        v9 = MEMORY[0x1E69E9830];
        if (v6 < 0)
        {
          v10 = __maskrune(v6, 0x40000uLL);
        }

        else
        {
          v10 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
        }

        v11 = 1;
        if (!v10 && (v6 - 9) >= 2)
        {
          v11 = (v6 - 169) < 2;
        }

        v12 = 1;
        if (a2 >= 2)
        {
          while (1)
          {
            v7 = v5[v12];
            if (!v5[v12])
            {
              break;
            }

            if ((v7 & 0x80000000) != 0)
            {
              if (__maskrune(v5[v12], 0x40000uLL))
              {
                goto LABEL_16;
              }
            }

            else if ((*(v9 + 4 * v7 + 60) & 0x40000) != 0)
            {
              goto LABEL_16;
            }

            if (v7 - 169 >= 2 && v7 - 9 > 1)
            {
              v24 = v12 != 1 || v11;
              if (v24)
              {
                goto LABEL_23;
              }

              goto LABEL_61;
            }

LABEL_16:
            if (a2 == ++v12)
            {
              v12 = a2;
              goto LABEL_23;
            }
          }
        }

        v13 = v12 - 1;
        v14 = v12 != 1 || v11;
        if (v14)
        {
          if (v7)
          {
LABEL_23:
            if (a2 > 0x100 || v12 < v6)
            {
              v15 = 0;
              v16 = 0;
              if (v11 && v12 > 3)
              {
                v6 = v12;
              }

              else
              {
                v6 = 0;
              }
            }

            else
            {
              v15 = 0;
              v16 = 1;
            }
          }

          else
          {
            v18 = a2 > 0x100 || v13 < v6 || v11;
            if (v11)
            {
              v19 = v12;
            }

            else
            {
              v19 = 0;
            }

            v20 = v18 == 1;
            v21 = v18 == 1 && v11;
            v22 = !v20;
            if (!v20)
            {
              v19 = v6;
            }

            v23 = v13 == v6;
            v15 = v13 == v6 || v21;
            if (v23)
            {
              v16 = 1;
            }

            else
            {
              v16 = v22;
            }

            if (!v23)
            {
              v6 = v19;
            }
          }
        }

        else
        {
LABEL_61:
          v15 = 0;
          v16 = 0;
          v6 = 0;
        }

        if (a2 < 0x11 || v6 >= 4)
        {
          a1 = 0;
          if ((v15 | v16) == 1 && v6)
          {
            if (v16)
            {
              ++v5;
            }

            a1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:v6 encoding:4 freeWhenDone:0];
            if (a3)
            {
              if (v16)
              {
                v25 = 2;
              }

              else
              {
                v25 = 1;
              }

              *a3 = v25;
            }
          }
        }

        else
        {
          a1 = 0;
        }
      }
    }

    v3 = vars8;
  }

  return a1;
}

id shortenString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v12 = 0;
    goto LABEL_38;
  }

  v2 = v1;
  if (shortenString_onceToken != -1)
  {
    shortenString_cold_1();
  }

  if ([v2 containsString:@"binary plist:  {"])
  {
    v3 = v2;
    if (!flattenPlistString_newlineCharacterSet)
    {
      v4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v5 = flattenPlistString_newlineCharacterSet;
      flattenPlistString_newlineCharacterSet = v4;

      v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v7 = [v6 invertedSet];
      v8 = flattenPlistString_nonwhitespaceCharacterSet;
      flattenPlistString_nonwhitespaceCharacterSet = v7;
    }

    v9 = [v3 length];
    v10 = [v3 rangeOfCharacterFromSet:flattenPlistString_newlineCharacterSet options:0 range:{0, v9}];
    v11 = 96;
    if (v9 < 0x60)
    {
      v11 = v9;
    }

    if (v10 <= v11)
    {
      v15 = v10;
      do
      {
        v16 = [v3 rangeOfCharacterFromSet:flattenPlistString_nonwhitespaceCharacterSet options:0 range:{v15, v9 - v15}];
        v17 = v16 - v15;
        v12 = [v3 stringByReplacingCharactersInRange:v15 withString:{v16 - v15, @" "}];

        v9 = v9 - v17 + 1;
        v18 = [v12 rangeOfString:@" =  " options:0 range:{v15, v9 - v15}];
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = [v12 rangeOfCharacterFromSet:flattenPlistString_nonwhitespaceCharacterSet options:0 range:{v18 + v19, v9 - (v18 + v19)}] - (v18 + v19 - 1);
          if (v20)
          {
            v21 = [v12 stringByReplacingCharactersInRange:? withString:?];

            v12 = v21;
          }

          v9 -= v20;
        }

        v22 = [v12 rangeOfCharacterFromSet:flattenPlistString_newlineCharacterSet options:0 range:{v15, v9 - v15}];
        v15 = v22;
        if (v9 >= 0x60)
        {
          v23 = 96;
        }

        else
        {
          v23 = v9;
        }

        v3 = v12;
      }

      while (v22 <= v23);
    }

    else
    {
      v12 = v3;
    }
  }

  else
  {
    v13 = [v2 length];
    if (v13 >= 0x60)
    {
      v14 = 96;
    }

    else
    {
      v14 = v13;
    }

    v12 = [v2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, v14}];
  }

  if ([v12 length] >= 0x61)
  {
    v24 = [v12 substringToIndex:96];
    if ([v24 UTF8String])
    {
      if (!v24)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v25 = [v12 substringToIndex:95];

      if (![v25 UTF8String])
      {
        v28 = @"<<couldn't convert to UTF8>>";
        v24 = v12;
LABEL_37:

        v12 = v28;
        goto LABEL_38;
      }

      v24 = v25;
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    v26 = [v24 length];
    if (v26 == [v12 length] - 2 && (objc_msgSend(v12, "hasSuffix:", @"\n") & 1) != 0)
    {
      v27 = @"";
    }

    else
    {
      v27 = @"...";
    }

    v28 = [v24 stringByAppendingString:v27];
    v25 = v12;
    goto LABEL_37;
  }

LABEL_38:

  return v12;
}

void __shortenString_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v1 = shortenString_newlineCharacterSet;
  shortenString_newlineCharacterSet = v0;

  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v2 = [v4 invertedSet];
  v3 = shortenString_nonwhitespaceCharacterSet;
  shortenString_nonwhitespaceCharacterSet = v2;
}

__CFString *stringFromMappedNSCFData(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7)
{
  v92 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a5;
  v14 = a7;
  Length = CFDataGetLength(a2);
  if (!Length)
  {
    v22 = @"content length 0";
    goto LABEL_123;
  }

  v16 = Length;
  if (!a6)
  {
    BytePtr = CFDataGetBytePtr(a2);
LABEL_8:
    v21 = &BytePtr[a3 - a2];
    v20 = 1;
    goto LABEL_10;
  }

  if (a6 == 2)
  {
    v17 = atomic_load(a2 + 1);
    v18 = CFDataGetBytePtr(a2);
    BytePtr = v18;
    if ((v17 & 4) == 0)
    {
      v20 = 0;
      v21 = v18;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  BytePtr = CFDataGetBytePtr(a2);
  v20 = 0;
  v21 = BytePtr;
LABEL_10:
  if (__CFADD__(v21, v16))
  {
    v23 = (v16 >> 63) + 1;
  }

  else
  {
    v23 = v16 >> 63;
  }

  v24 = v23 << 63 >> 63;
  if (v24 != v23 || v24 < 0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to read content - bad data length %llu causes range overflow", v16];
    goto LABEL_123;
  }

  v88 = v12;
  v25 = [v14 vmuVMRegionForAddress:v21];
  if (([v25 isMallocHeapRelated] & 1) == 0)
  {
    v86 = v13;
    v28 = [v25 descriptionWithOptions:VMUGetFlagsForAllVMRegionStatistics() | 0x201 maximumLength:0];
    v29 = v25;
    v30 = [v25 type];
    v31 = [v30 hasPrefix:@"__"];

    if (v31 && (CSSymbolicatorGetSymbolWithAddressAtTime(), (Name = CSSymbolGetName()) != 0))
    {
      v33 = Name;
      Range = CSSymbolGetRange();
      v12 = v88;
      if (v21 == Range)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"content length %ld  %s in VM:  %@", v16, v33, v28, v79];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"content length %ld  %s + %llu in VM:  %@", v16, v33, v21 - Range, v28];
      }
      v22 = ;
      v27 = v29;
    }

    else
    {
      v27 = v25;
      v35 = [v25 range];
      v12 = v88;
      if (v21 == v35 && ([v29 range], v16 == v36))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"content length %ld entire VM:  %@", v16, v28, v77];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"content length %ld at offset %llu in VM:  %@", v16, v21 - objc_msgSend(v29, "range"), v28];
      }
      v22 = ;
    }

    v13 = v86;

    goto LABEL_122;
  }

  v85 = v25;
  if (v13)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    v22 = 0;
    v27 = v25;
    goto LABEL_121;
  }

  v27 = v25;
  if (!remoteAddressIsOKtoRead(v21, v13))
  {
    v22 = 0;
    goto LABEL_121;
  }

  if ((v20 & 1) == 0)
  {
    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"content length %ld at %#llx", v16, v21];
    v90 = 0;
    goto LABEL_40;
  }

  v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inline content length %ld", v16];
  v90 = 0;
  v37 = v21 + v16 - [v25 range];
  if (v37 >= v38)
  {
LABEL_40:
    v39 = [v88 memoryCache];
    v40 = [v39 peekAtAddress:v21 size:v16 returnsBuf:&v90];

    if (v40 || (BytePtr = v90) == 0)
    {
      v59 = [v14 regionIdentifier];
      v60 = [v59 descriptionForRange:{v21, v16}];

      v61 = [v60 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n    "];

      v62 = [@"\n    " stringByAppendingString:v61];

      v76 = v21;
      v78 = v21 + v16;
      v63 = v83;
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -- failed to read content from %#llx-%#llx[%ld] %@\n", v83, v76, v78, v16, v62];

      goto LABEL_120;
    }

    goto LABEL_42;
  }

  v90 = BytePtr;
LABEL_42:
  if (!strncmp(BytePtr, "bplist0", 7uLL))
  {
    v64 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:BytePtr length:v16 freeWhenDone:0];
    v65 = [MEMORY[0x1E696AE40] propertyListWithData:v64 options:0 format:0 error:0];
    v66 = [v65 description];
    if (v66)
    {
      v67 = v66;
      v68 = "";
      if (v20)
      {
        v68 = "inline ";
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%sbinary plist:  %@", v68, v66];

      v63 = v83;
      goto LABEL_120;
    }
  }

  if (v16 == 1)
  {
    v41 = 5;
  }

  else
  {
    v41 = 3 * v16 + 1;
  }

  v42 = malloc_type_malloc(v41, 0xA628EFAAuLL);
  if (!v42)
  {
    v63 = v83;
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -- failed to read content due to memory allocation failure - is length reasonable?", v83];
    goto LABEL_120;
  }

  v43 = &v42[v41];
  v81 = v42;
  if (v16 < 1)
  {
    v58 = 0.0;
    v48 = v42;
LABEL_105:
    if (v48 >= v43)
    {
      goto LABEL_109;
    }

    *v48 = 0;
    if (v16 >= 128 && (v58 = v58 / v16, v58 <= 25.0))
    {
      memset(&c, 0, sizeof(c));
      CC_SHA256_Init(&c);
      v70 = 0;
      v71 = 0x100000;
      v63 = v83;
      v69 = v81;
      do
      {
        if (v16 - v70 < v71)
        {
          v71 = v16 - v70;
        }

        CC_SHA256_Update(&c, &v90[v70], v71);
        v70 += v71;
      }

      while (v70 < v16);
      CC_SHA256_Final(md, &c);
      v72 = objc_alloc_init(MEMORY[0x1E696AD60]);
      for (i = 0; i != 16; ++i)
      {
        [v72 appendFormat:@"%02x", md[i]];
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %.128s...   SHA256: %@", v83, v81, v72];
    }

    else
    {
      v69 = v81;
      v63 = v83;
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", v58, v83, v81];
    }

    free(v69);
    goto LABEL_119;
  }

  v44 = 0;
  v45 = 0;
  v84 = v43 - 4;
  v87 = v16 - 2;
  v80 = v43;
  v82 = (v43 - 2);
  v46 = 1;
  v47 = MEMORY[0x1E69E9830];
  v48 = v42;
  while (2)
  {
    v49 = 0;
    while (1)
    {
      v50 = v90[v44 + v49];
      if (v50 < 0)
      {
        break;
      }

      if ((*(v47 + 4 * v50 + 60) & 0x40000) == 0)
      {
        goto LABEL_54;
      }

LABEL_56:
      ++v49;
      v51 = v44 + v49;
      if (v44 + v49 >= v16)
      {
        if (v49 > 3)
        {
          v52 = 0;
LABEL_59:
          v53 = 0;
          if (v44 >= 1 && !v52)
          {
            v52 = 0;
            v53 = 0;
            v48 -= v51 - v44 == v90[v44 - 1];
          }

          goto LABEL_77;
        }

        goto LABEL_64;
      }
    }

    if (__maskrune(v90[v44 + v49], 0x40000uLL))
    {
      goto LABEL_56;
    }

LABEL_54:
    if (v50 - 169 < 2 || v50 - 9 <= 1)
    {
      goto LABEL_56;
    }

    if (v49 > 3)
    {
      v51 = v44 + v49;
      v52 = v90[v44 + v49] == 0;
      goto LABEL_59;
    }

LABEL_64:
    v51 = v44;
    if (v44 >= v87)
    {
LABEL_74:
      if (v51 - v44 > 7)
      {
        goto LABEL_75;
      }

      break;
    }

    v54 = 0;
    while (2)
    {
      if (!v90[v44 + v54])
      {
        v55 = v90[v44 + 1 + v54];
        if (v55 < 0)
        {
          if (!__maskrune(v90[v44 + 1 + v54], 0x40000uLL))
          {
            goto LABEL_71;
          }
        }

        else if ((*(v47 + 4 * v55 + 60) & 0x40000) == 0)
        {
LABEL_71:
          if (v55 - 169 >= 2 && v55 - 9 > 1)
          {
            break;
          }
        }

        v54 += 2;
        v51 = v44 + v54;
        if (v44 + v54 >= v87)
        {
          goto LABEL_74;
        }

        continue;
      }

      break;
    }

    if (v54 > 7)
    {
      v51 = v44 + v54;
      if (!v90[v44 + v54])
      {
        v52 = v90[v44 + 1 + v54] == 0;
LABEL_76:
        v53 = 1;
LABEL_77:
        if (v48 < &v84[v44 - v51])
        {
          *v48 = 8736;
          v48 += 2;
          if (v44 >= v51)
          {
            v56 = v44;
          }

          else
          {
            do
            {
              v56 = v44 + v53 + 1;
              *v48++ = v90[v53 + v44];
              ++v45;
              v44 = v56;
            }

            while (v56 < v51);
          }

          *v48 = 8226;
          v46 = 1;
          if (v53)
          {
            v57 = 2;
          }

          else
          {
            v57 = 1;
          }

          if (!v52)
          {
            v57 = 0;
          }

          v44 = v56 + v57;
LABEL_96:
          v48 += 2;
          if (v44 >= v16)
          {
            v58 = v45 * 100.0;
            v43 = v80;
            goto LABEL_105;
          }

          continue;
        }

        goto LABEL_109;
      }

LABEL_75:
      v52 = 0;
      goto LABEL_76;
    }

    break;
  }

  if (v46)
  {
    if (v48 >= v82)
    {
      goto LABEL_109;
    }

    *v48 = 30768;
    v48 += 2;
  }

  if (v48 < v82)
  {
    v46 = 0;
    *v48 = stringFromMappedNSCFData_hex[v90[v44] >> 4];
    v48[1] = stringFromMappedNSCFData_hex[v90[v44++] & 0xF];
    goto LABEL_96;
  }

LABEL_109:
  free(v81);
  v63 = v83;
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -- failed to read content due to insufficient buffer length", v83];
LABEL_119:
  v27 = v85;
LABEL_120:

LABEL_121:
  v12 = v88;
LABEL_122:

LABEL_123:
  v74 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t checkStringIsValidHexAddress(void *a1)
{
  v1 = a1;
  if ([v1 length] < 6)
  {
    goto LABEL_6;
  }

  if ([v1 length] > 0x12)
  {
    goto LABEL_6;
  }

  if (![v1 hasPrefix:@"0x"])
  {
    goto LABEL_6;
  }

  v2 = [v1 substringFromIndex:2];
  v3 = [v2 uppercaseString];

  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEF"];
  v5 = [v4 invertedSet];

  v6 = [v3 rangeOfCharacterFromSet:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 1;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

void invertRecursiveWithNewInvertedRoot(void *a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = a2;
  v6 = a3;
  [v6 addObject:v22];
  v7 = [v22 numChildren];
  if (v7)
  {
    v8 = [v22 pseudoNodeTopOfStackChild];
    v9 = v8;
    if (v8)
    {
      invertRecursiveWithNewInvertedRoot(v8, v5, v6);
    }

    v10 = 0;
    do
    {
      v11 = [v22 childAtIndex:v10];
      invertRecursiveWithNewInvertedRoot(v11, v5, v6);

      v10 = (v10 + 1);
    }

    while (v7 != v10);
  }

  else
  {
    v12 = v5;
    v13 = v6;
    v14 = [v13 lastObject];
    v21 = v14;
    if (v14 && (v15 = *(v14 + 40), v16 = *(v14 + 32), *(v12 + 10) += v15, *(v12 + 4) += v16, (v17 = [v13 count]) != 0))
    {
      v18 = v17 - 1;
      do
      {
        v19 = [v13 objectAtIndex:v18];
        v20 = [v19 name];
        v9 = [v12 findOrAddChildWithName:v20 address:objc_msgSend(v19 nodeSearchType:"address") isLeafNode:{1, 0}];

        *(v9 + 40) += v15;
        *(v9 + 32) += v16;

        --v18;
        v12 = v9;
      }

      while (v18 != -1);
    }

    else
    {
      v9 = v12;
    }
  }

  [v6 removeLastObject];
}

BOOL isSystemPath(const char *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!strncmp(a1, "/System/", 8uLL))
  {
    return 1;
  }

  return strncmp(a1, "/usr/", 5uLL) == 0;
}

uint64_t __printTotalNumberInStack_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) countForObject:v5];
  v8 = [*(a1 + 32) countForObject:v6];
  if (v7 <= v8)
  {
    if (v7 >= v8)
    {
      v9 = [v5 compare:v6];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __printCollapsedTops_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NSMapGet(*(a1 + 32), v5);
  v8 = NSMapGet(*(a1 + 32), v6);
  if (*v7 <= *v8)
  {
    if (*v7 >= *v8)
    {
      v9 = [v5 compare:v6];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void std::vector<RangeAndString>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<_CSTypeRef>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v11)
    {
      std::allocator<RangeAndString>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void std::allocator<RangeAndString>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,false>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v79 = a2 - 3;
  v10 = &a2[-5].n128_i8[8];
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
    if (v15 <= 2)
    {
      break;
    }

    switch(v15)
    {
      case 3uLL:
        v59 = (*a3)((v11 + 24), v11);
        v60 = (*a3)(v9, (v11 + 24));
        if (v59)
        {
          if (v60)
          {
            goto LABEL_76;
          }

          v129 = *(v11 + 2);
          v102 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v102;
          *(v11 + 5) = v129;
          if (!(*a3)(v9, (v11 + 24)))
          {
            return result;
          }

          v61 = *(v11 + 5);
          result = *(v11 + 24);
          v62 = v9[1].n128_u64[0];
          *(v11 + 24) = *v9;
          *(v11 + 5) = v62;
          *v9 = result;
LABEL_77:
          v9[1].n128_u64[0] = v61;
          return result;
        }

        if (!v60)
        {
          return result;
        }

        v68 = *(v11 + 5);
        v69 = *(v11 + 24);
        v70 = v9[1].n128_u64[0];
        *(v11 + 24) = *v9;
        *(v11 + 5) = v70;
        *v9 = v69;
        v9[1].n128_u64[0] = v68;
        goto LABEL_103;
      case 4uLL:
        v65 = (*a3)((v11 + 24), v11);
        v66 = (*a3)(v11 + 3, (v11 + 24));
        if (v65)
        {
          if (v66)
          {
            v131 = *(v11 + 2);
            v104 = *v11;
            *v11 = v11[3];
            *(v11 + 2) = *(v11 + 8);
            v11[3] = v104;
            v67 = v131;
            goto LABEL_99;
          }

          v133 = *(v11 + 2);
          v106 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          *(v11 + 24) = v106;
          *(v11 + 5) = v133;
          if ((*a3)(v11 + 3, (v11 + 24)))
          {
            v67 = *(v11 + 5);
            v73 = *(v11 + 24);
            *(v11 + 24) = v11[3];
            *(v11 + 5) = *(v11 + 8);
            v11[3] = v73;
LABEL_99:
            *(v11 + 8) = v67;
          }
        }

        else if (v66)
        {
          v71 = *(v11 + 5);
          v72 = *(v11 + 24);
          *(v11 + 24) = v11[3];
          *(v11 + 5) = *(v11 + 8);
          v11[3] = v72;
          *(v11 + 8) = v71;
          if ((*a3)((v11 + 24), v11))
          {
            v132 = *(v11 + 2);
            v105 = *v11;
            *v11 = *(v11 + 24);
            *(v11 + 2) = *(v11 + 5);
            *(v11 + 24) = v105;
            *(v11 + 5) = v132;
          }
        }

        if (!(*a3)(v9, v11 + 3))
        {
          return result;
        }

        v74 = *(v11 + 8);
        v75 = v11[3];
        v76 = v9[1].n128_u64[0];
        v11[3] = *v9;
        *(v11 + 8) = v76;
        *v9 = v75;
        v9[1].n128_u64[0] = v74;
        if (!(*a3)(v11 + 3, (v11 + 24)))
        {
          return result;
        }

        v77 = *(v11 + 5);
        v78 = *(v11 + 24);
        *(v11 + 24) = v11[3];
        *(v11 + 5) = *(v11 + 8);
        v11[3] = v78;
        *(v11 + 8) = v77;
LABEL_103:
        if ((*a3)((v11 + 24), v11))
        {
          v134 = *(v11 + 2);
          v107 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 2) = *(v11 + 5);
          result = v107;
          *(v11 + 24) = v107;
          *(v11 + 5) = v134;
        }

        return result;
      case 5uLL:

        result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,0>(v11, (v11 + 24), v11 + 3, (v11 + 72), (a2 - 24), a3).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v14 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(v11, a2, a3);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,RangeAndString*>(v11, a2, a2, a3, result);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v11 + 24 * (v15 >> 1));
    v18 = *a3;
    if (v14 >= 0xC01)
    {
      v19 = v18(v17, v11);
      v20 = (*a3)((a2 - 24), v17);
      if (v19)
      {
        if (v20)
        {
          v108 = *(a1 + 16);
          v81 = *a1;
          v21 = *v9;
          *(a1 + 16) = a2[-1].n128_u64[1];
          *a1 = v21;
          goto LABEL_27;
        }

        v114 = *(a1 + 16);
        v87 = *a1;
        v29 = *v17;
        *(a1 + 16) = v17[1].n128_u64[0];
        *a1 = v29;
        v17[1].n128_u64[0] = v114;
        *v17 = v87;
        if ((*a3)((a2 - 24), v17))
        {
          v108 = v17[1].n128_u64[0];
          v81 = *v17;
          v30 = *v9;
          v17[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v17 = v30;
LABEL_27:
          *v9 = v81;
          a2[-1].n128_u64[1] = v108;
        }
      }

      else if (v20)
      {
        v110 = v17[1].n128_u64[0];
        v83 = *v17;
        v25 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v25;
        *v9 = v83;
        a2[-1].n128_u64[1] = v110;
        if ((*a3)(v17, a1))
        {
          v111 = *(a1 + 16);
          v84 = *a1;
          v26 = *v17;
          *(a1 + 16) = v17[1].n128_u64[0];
          *a1 = v26;
          v17[1].n128_u64[0] = v111;
          *v17 = v84;
        }
      }

      v31 = a1 + 24 * v16 - 24;
      v32 = (*a3)(v31, (a1 + 24));
      v33 = (*a3)(v79, v31);
      if (v32)
      {
        if (v33)
        {
          v34 = *(a1 + 40);
          v35 = *(a1 + 24);
          v36 = a2[-2].n128_u64[0];
          *(a1 + 24) = *v79;
          *(a1 + 40) = v36;
          *v79 = v35;
          a2[-2].n128_u64[0] = v34;
        }

        else
        {
          v91 = *(a1 + 24);
          v118 = *(a1 + 40);
          v41 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v41;
          *(a1 + 24 * v16 - 8) = v118;
          *v31 = v91;
          if ((*a3)(v79, (a1 + 24 * v16 - 24)))
          {
            v119 = *(a1 + 24 * v16 - 8);
            v92 = *v31;
            v42 = *v79;
            *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
            *v31 = v42;
            *v79 = v92;
            a2[-2].n128_u64[0] = v119;
          }
        }
      }

      else if (v33)
      {
        v115 = *(a1 + 24 * v16 - 8);
        v88 = *v31;
        v37 = *v79;
        *(a1 + 24 * v16 - 8) = a2[-2].n128_u64[0];
        *v31 = v37;
        *v79 = v88;
        a2[-2].n128_u64[0] = v115;
        if ((*a3)((a1 + 24 * v16 - 24), (a1 + 24)))
        {
          v89 = *(a1 + 24);
          v116 = *(a1 + 40);
          v38 = *(a1 + 24 * v16 - 8);
          *(a1 + 24) = *v31;
          *(a1 + 40) = v38;
          *(a1 + 24 * v16 - 8) = v116;
          *v31 = v89;
        }
      }

      v43 = a1 + 24 * v16;
      v44 = (*a3)((v43 + 24), (a1 + 48));
      v45 = (*a3)((a2 - 72), (v43 + 24));
      if (v44)
      {
        if (v45)
        {
          v46 = *(a1 + 64);
          v47 = *(a1 + 48);
          v48 = a2[-4].n128_u64[1];
          *(a1 + 48) = *v10;
          *(a1 + 64) = v48;
          *v10 = v47;
          goto LABEL_47;
        }

        v95 = *(a1 + 48);
        v122 = *(a1 + 64);
        v51 = *(v43 + 40);
        *(a1 + 48) = *(v43 + 24);
        *(a1 + 64) = v51;
        *(v43 + 40) = v122;
        *(v43 + 24) = v95;
        if ((*a3)((a2 - 72), (v43 + 24)))
        {
          v123 = *(v43 + 40);
          v96 = *(v43 + 24);
          v52 = *v10;
          *(v43 + 40) = a2[-4].n128_u64[1];
          *(v43 + 24) = v52;
          *v10 = v96;
          v46 = v123;
LABEL_47:
          a2[-4].n128_u64[1] = v46;
        }
      }

      else if (v45)
      {
        v120 = *(v43 + 40);
        v93 = *(v43 + 24);
        v49 = *v10;
        *(v43 + 40) = a2[-4].n128_u64[1];
        *(v43 + 24) = v49;
        *v10 = v93;
        a2[-4].n128_u64[1] = v120;
        if ((*a3)((v43 + 24), (a1 + 48)))
        {
          v94 = *(a1 + 48);
          v121 = *(a1 + 64);
          v50 = *(v43 + 40);
          *(a1 + 48) = *(v43 + 24);
          *(a1 + 64) = v50;
          *(v43 + 40) = v121;
          *(v43 + 24) = v94;
        }
      }

      v53 = (*a3)(v17, v31);
      v54 = (*a3)((v43 + 24), v17);
      if (v53)
      {
        if (v54)
        {
          v124 = *(v31 + 16);
          v97 = *v31;
          *v31 = *(v43 + 24);
          *(v31 + 16) = *(v43 + 40);
          goto LABEL_56;
        }

        v127 = *(v31 + 16);
        v100 = *v31;
        *v31 = *v17;
        *(v31 + 16) = v17[1].n128_u64[0];
        v17[1].n128_u64[0] = v127;
        *v17 = v100;
        if ((*a3)((v43 + 24), v17))
        {
          v124 = v17[1].n128_u64[0];
          v97 = *v17;
          *v17 = *(v43 + 24);
          v17[1].n128_u64[0] = *(v43 + 40);
LABEL_56:
          *(v43 + 40) = v124;
          *(v43 + 24) = v97;
        }
      }

      else if (v54)
      {
        v125 = v17[1].n128_u64[0];
        v98 = *v17;
        *v17 = *(v43 + 24);
        v17[1].n128_u64[0] = *(v43 + 40);
        *(v43 + 40) = v125;
        *(v43 + 24) = v98;
        if ((*a3)(v17, v31))
        {
          v126 = *(v31 + 16);
          v99 = *v31;
          *v31 = *v17;
          *(v31 + 16) = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v126;
          *v17 = v99;
        }
      }

      v128 = *(a1 + 16);
      v101 = *a1;
      v55 = *v17;
      *(a1 + 16) = v17[1].n128_u64[0];
      *a1 = v55;
      v17[1].n128_u64[0] = v128;
      *v17 = v101;
      goto LABEL_58;
    }

    v22 = v18(v11, v17);
    v23 = (*a3)((a2 - 24), a1);
    if (v22)
    {
      if (v23)
      {
        v109 = v17[1].n128_u64[0];
        v82 = *v17;
        v24 = *v9;
        v17[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v17 = v24;
LABEL_36:
        *v9 = v82;
        a2[-1].n128_u64[1] = v109;
        goto LABEL_58;
      }

      v117 = v17[1].n128_u64[0];
      v90 = *v17;
      v39 = *a1;
      v17[1].n128_u64[0] = *(a1 + 16);
      *v17 = v39;
      *(a1 + 16) = v117;
      *a1 = v90;
      if ((*a3)((a2 - 24), a1))
      {
        v109 = *(a1 + 16);
        v82 = *a1;
        v40 = *v9;
        *(a1 + 16) = a2[-1].n128_u64[1];
        *a1 = v40;
        goto LABEL_36;
      }
    }

    else if (v23)
    {
      v112 = *(a1 + 16);
      v85 = *a1;
      v27 = *v9;
      *(a1 + 16) = a2[-1].n128_u64[1];
      *a1 = v27;
      *v9 = v85;
      a2[-1].n128_u64[1] = v112;
      if ((*a3)(a1, v17))
      {
        v113 = v17[1].n128_u64[0];
        v86 = *v17;
        v28 = *a1;
        v17[1].n128_u64[0] = *(a1 + 16);
        *v17 = v28;
        *(a1 + 16) = v113;
        *a1 = v86;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 24), a1) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,RangeAndString *,BOOL (*&)(RangeAndString const&,RangeAndString const&)>(a1, a2, a3);
      goto LABEL_65;
    }

    v56 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,RangeAndString *,BOOL (*&)(RangeAndString const&,RangeAndString const&)>(a1, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_63;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(a1, v56, a3);
    v11 = &v56[1].n128_i8[8];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(&v56[1].n128_i64[1], a2, a3))
    {
      a4 = -v13;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v58)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,false>(a1, v56, a3, -v13, a5 & 1);
      v11 = &v56[1].n128_i8[8];
LABEL_65:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 < 2)
  {
    return result;
  }

  if (v15 != 2)
  {
    goto LABEL_10;
  }

  if ((*a3)((a2 - 24), v11))
  {
LABEL_76:
    v130 = *(v11 + 2);
    v103 = *v11;
    v64 = *v9;
    *(v11 + 2) = v9[1].n128_u64[0];
    *v11 = v64;
    result = v103;
    *v9 = v103;
    v61 = v130;
    goto LABEL_77;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = a1[1].n128_u64[0];
      v15 = *a1;
      v16 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v16;
LABEL_9:
      *a3 = v15;
      a3[1].n128_u64[0] = v14;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    if ((*a6)(a3, a2))
    {
      v14 = a2[1].n128_u64[0];
      v15 = *a2;
      v26 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v17 = a2[1].n128_u64[0];
    v18 = *a2;
    v19 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v19;
    *a3 = v18;
    a3[1].n128_u64[0] = v17;
    if ((*a6)(a2, a1))
    {
      v20 = a1[1].n128_u64[0];
      v21 = *a1;
      v22 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v22;
      *a2 = v21;
      a2[1].n128_u64[0] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v27 = a3[1].n128_i64[0];
    v28 = *a3;
    v29 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v29;
    *a4 = v28;
    a4[1].n128_u64[0] = v27;
    if ((*a6)(a3, a2))
    {
      v30 = a2[1].n128_u64[0];
      v31 = *a2;
      v32 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v32;
      *a3 = v31;
      a3[1].n128_u64[0] = v30;
      if ((*a6)(a2, a1))
      {
        v33 = a1[1].n128_u64[0];
        v34 = *a1;
        v35 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v35;
        *a2 = v34;
        a2[1].n128_u64[0] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v37 = a4[1].n128_i64[0];
    v38 = *a4;
    v39 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v39;
    *a5 = v38;
    a5[1].n128_u64[0] = v37;
    if ((*a6)(a4, a3))
    {
      v40 = a3[1].n128_i64[0];
      v41 = *a3;
      v42 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v42;
      *a4 = v41;
      a4[1].n128_u64[0] = v40;
      if ((*a6)(a3, a2))
      {
        v43 = a2[1].n128_u64[0];
        v44 = *a2;
        v45 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v45;
        *a3 = v44;
        a3[1].n128_u64[0] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = a1[1].n128_u64[0];
          result = *a1;
          v47 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v47;
          *a2 = result;
          a2[1].n128_u64[0] = v46;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = (*a3)(&v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = (*a3)(&v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,RangeAndString *,BOOL (*&)(RangeAndString const&,RangeAndString const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 2);
  if ((*a3)(&v16, (a2 - 24)))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 24);
    }

    while (((*a3)(&v16, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 24);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v16, v7);
      v7 = (v6 + 24);
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 2);
    v18 = v9;
    v10 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v10;
    v11 = v18;
    *(v4 + 2) = v19;
    *v4 = v11;
    do
    {
      v6 = (v6 + 24);
    }

    while (!(*a3)(&v16, v6));
    do
    {
      v4 = (v4 - 24);
    }

    while (((*a3)(&v16, v4) & 1) != 0);
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 1);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 1) = v17;
  *v12 = v14;
  return v6;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,RangeAndString *,BOOL (*&)(RangeAndString const&,RangeAndString const&)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(char *, __int128 *))
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (((*a3)(a1 + v6, &v17) & 1) != 0);
  v7 = a1 + v6;
  v8 = a1 + v6 - 24;
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (((*a3)(a2, &v17) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!(*a3)(a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = (a1 + v6);
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 = (v9 + 24);
      }

      while (((*a3)(v9, &v17) & 1) != 0);
      do
      {
        v10 -= 24;
      }

      while (!(*a3)(v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 16);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 16) = v18;
  *v8 = v15;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(uint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = (a2 - 24);
      v12 = (*a3)((a1 + 24), a1);
      v13 = (*a3)(v11, (a1 + 24));
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 16);
          v15 = *a1;
          v16 = v11[1].n128_u64[0];
          *a1 = *v11;
          *(a1 + 16) = v16;
        }

        else
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v39;
          *(a1 + 40) = v38;
          if (!(*a3)(v11, (a1 + 24)))
          {
            return 1;
          }

          v14 = *(a1 + 40);
          v15 = *(a1 + 24);
          v40 = v11[1].n128_u64[0];
          *(a1 + 24) = *v11;
          *(a1 + 40) = v40;
        }

        *v11 = v15;
        v11[1].n128_u64[0] = v14;
        return 1;
      }

      if (!v13)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      v29 = v11[1].n128_u64[0];
      *(a1 + 24) = *v11;
      *(a1 + 40) = v29;
      *v11 = v28;
      v11[1].n128_u64[0] = v27;
LABEL_50:
      if ((*a3)((a1 + 24), a1))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v22 = (a2 - 24);
    v23 = (*a3)((a1 + 24), a1);
    v24 = (*a3)((a1 + 48), (a1 + 24));
    if ((v23 & 1) == 0)
    {
      if (v24)
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v35;
        *(a1 + 64) = v34;
        if ((*a3)((a1 + 24), a1))
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_47;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    *(a1 + 48) = v26;
    *(a1 + 64) = v25;
LABEL_47:
    if (!(*a3)(v22, (a1 + 48)))
    {
      return 1;
    }

    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = v22[1].n128_u64[0];
    *(a1 + 48) = *v22;
    *(a1 + 64) = v53;
    *v22 = v52;
    v22[1].n128_u64[0] = v51;
    if (!(*a3)((a1 + 48), (a1 + 24)))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*a3)((a2 - 24), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = a2[-1].n128_i64[1];
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      a2[-1].n128_u64[1] = v8;
    }

    return 1;
  }

LABEL_13:
  v17 = (a1 + 48);
  v18 = (*a3)((a1 + 24), a1);
  v19 = (*a3)((a1 + 48), (a1 + 24));
  if (v18)
  {
    if (v19)
    {
      v20 = *(a1 + 16);
      v21 = *a1;
      *a1 = *v17;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
      if (!(*a3)((a1 + 48), (a1 + 24)))
      {
        goto LABEL_33;
      }

      v20 = *(a1 + 40);
      v21 = *(a1 + 24);
      *(a1 + 24) = *v17;
      *(a1 + 40) = *(a1 + 64);
    }

    *v17 = v21;
    *(a1 + 64) = v20;
  }

  else if (v19)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v17;
    *(a1 + 40) = *(a1 + 64);
    *v17 = v31;
    *(a1 + 64) = v30;
    if ((*a3)((a1 + 24), a1))
    {
      v32 = *(a1 + 16);
      v33 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v33;
      *(a1 + 40) = v32;
    }
  }

LABEL_33:
  v43 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    if ((*a3)(v43, v17))
    {
      v59 = *v43;
      v60 = v43[1].n128_u64[0];
      v46 = v44;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (((*a3)(&v59, (v47 + 24)) & 1) == 0)
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v59;
      *(v48 + 16) = v60;
      if (++v45 == 8)
      {
        return &v43[1].n128_i8[8] == a2;
      }
    }

    v17 = v43;
    v44 += 24;
    v43 = (v43 + 24);
    if (v43 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*,RangeAndString*>(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(uint64_t, __int8 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 24 * v11);
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(v8, a4, v10, v13);
        v13 = (v13 - 24);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, v8, a5))
        {
          v15 = v14[1].n128_u64[0];
          v16 = *v14;
          v17 = v8[1].n128_u64[0];
          *v14 = *v8;
          v14[1].n128_u64[0] = v17;
          *v8 = v16;
          v8[1].n128_u64[0] = v15;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(v8, a4, v10, v8);
        }

        v14 = (v14 + 24);
      }

      while (v14 != a3);
    }

    if (v9 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v30 = v8;
      do
      {
        v31 = v7;
        v19 = 0;
        v32 = *v8;
        v33 = v8[1].n128_u64[0];
        v20 = v8;
        do
        {
          v21 = v20 + 24 * v19;
          v22 = (v21 + 24);
          v23 = (2 * v19) | 1;
          v24 = 2 * v19 + 2;
          if (v24 < v18)
          {
            v25 = (v21 + 48);
            if ((*a4)((v21 + 24), v21 + 48))
            {
              v22 = v25;
              v23 = v24;
            }
          }

          v26 = *v22;
          v20[1].n128_u64[0] = v22[1].n128_u64[0];
          *v20 = v26;
          v20 = v22;
          v19 = v23;
        }

        while (v23 <= ((v18 - 2) >> 1));
        v7 = (v31 - 24);
        if (v22 == &v31[-2].n128_i8[8])
        {
          v22[1].n128_u64[0] = v33;
          *v22 = v32;
          v8 = v30;
        }

        else
        {
          v27 = *v7;
          v22[1].n128_u64[0] = v31[-1].n128_u64[1];
          *v22 = v27;
          *v7 = v32;
          v31[-1].n128_u64[1] = v33;
          v8 = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(v30, &v22[1].n128_i64[1], a4, 0xAAAAAAAAAAAAAAABLL * ((&v22[1].n128_i64[1] - v30) >> 3));
        }
      }

      while (v18-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(uint64_t a1, unsigned int (**a2)(uint64_t, __int8 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = (a1 + 24 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && (*a2)(a1 + 24 * v12, &v13[1].n128_i8[8]))
      {
        v13 = (v13 + 24);
        v12 = v14;
      }

      if (((*a2)(v13, v7) & 1) == 0)
      {
        v20 = *v7;
        v21 = v7[1].n128_u64[0];
        do
        {
          v16 = v13;
          v17 = *v13;
          v7[1].n128_u64[0] = v13[1].n128_u64[0];
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = (a1 + 24 * v18);
          v19 = 2 * v12 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 24 * v18, &v13[1].n128_i8[8]))
            {
              v13 = (v13 + 24);
              v18 = v19;
            }
          }

          v7 = v16;
          v12 = v18;
        }

        while (!(*a2)(v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(RangeAndString const&,RangeAndString const&),RangeAndString*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v17 = v4;
    v18 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    if ((*a3)(v10, (a2 - 24)))
    {
      v15 = *v11;
      v16 = *(v11 + 2);
      do
      {
        v13 = v10;
        v14 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v14;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 24 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v15) & 1) != 0);
      result = *&v15;
      *v13 = v15;
      *(v13 + 2) = v16;
    }
  }

  return result;
}

void sub_1C67EE65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67EED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id vmuTaskMemoryCacheInitializationError(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = a1;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"VMUTaskMemoryCache initialization" code:0 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1C67F2964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C67F2E38(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1C67F2D84);
  }

  _Unwind_Resume(exc_buf);
}

unsigned __int8 *_appendToBuffer(unsigned __int8 *ptr, unsigned int *a2, unsigned int *a3, void *__src, size_t __n)
{
  v5 = __n;
  v8 = ptr;
  v9 = *a3;
  v10 = *a2;
  if (*a3 + __n > *a2)
  {
    LODWORD(v11) = 2 * v10;
    v12 = v10 + __n;
    if (v11 <= v12)
    {
      LODWORD(v11) = v12;
    }

    if (v11 <= 0x400)
    {
      v11 = 1024;
    }

    else
    {
      v11 = v11;
    }

    *a2 = v11;
    v8 = malloc_type_realloc(ptr, v11, 0x100004077774924uLL);
    v9 = *a3;
  }

  memcpy(&v8[v9], __src, v5);
  *a3 += v5;
  return v8;
}

uint64_t _nextField(uint64_t a1, unsigned int a2, _DWORD *a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (v4 + 4 <= a2)
  {
    result = *(a1 + v4);
    *a3 = v4 + 4;
  }

  else
  {
    v6 = serializerLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _nextField(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = OOBDOMAIN;
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"Out-of-bound access.";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a4 = [v14 errorWithDomain:v15 code:1 userInfo:v16];
    }

    result = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

id serializerLogHandle(void)
{
  if (serializerLogHandle(void)::onceToken != -1)
  {
    serializerLogHandle();
  }

  v1 = serializerLogHandle(void)::log;

  return v1;
}

void ___ZL19serializerLogHandlev_block_invoke()
{
  v0 = os_log_create("com.apple.Symbolication", "VMUSimpleSerializer");
  v1 = serializerLogHandle(void)::log;
  serializerLogHandle(void)::log = v0;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,unsigned int>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,unsigned int>,cstring_callbacks,cstring_callbacks,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,unsigned int>,cstring_callbacks,cstring_callbacks,true>,std::allocator<std::__hash_value_type<char const*,unsigned int>>>::__emplace_unique_key_args<char const*,char const*,unsigned int &>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_23;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (strcmp(v12[2], v2))
  {
    goto LABEL_22;
  }

  return v12;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,NSString * {__strong}>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1C67F451C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,NSString * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,NSString * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,NSString * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t compareRange(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void RangeArrayInsertRangeAtIndex(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  v8 = v7[2];
  v14 = v7;
  if (v8 >= v7[6])
  {
    v9 = (3 * v8 + 3) >> 1;
    v7[6] = v9;
    *(v7 + 2) = malloc_type_realloc(*(v7 + 2), 16 * v9, 0x1000040451B5BE8uLL);
    v7 = v14;
    v8 = v14[2];
  }

  v10 = v8 - a4;
  v11 = a4;
  if (v10)
  {
    v12 = *(v7 + 2) + 16 * a4;
    memmove((v12 + 16), v12, 16 * v10);
    v7 = v14;
    a4 = v14[2];
  }

  v13 = (*(v7 + 2) + 16 * v11);
  *v13 = a2;
  v13[1] = a3;
  v7[2] = a4 + 1;
}

void RangeArrayRemoveRangeAtIndex(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3[2];
  if (v4 > a2)
  {
    v5 = v4 - 1;
    if (v4 - 1 > a2)
    {
      v7 = v3;
      v6 = *(v3 + 2) + 16 * a2;
      memmove(v6, (v6 + 16), 16 * (v4 + ~a2));
      v3 = v7;
      v5 = v7[2] - 1;
    }

    v3[2] = v5;
  }
}

uint64_t VMUIsMetaclass(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (a3)
  {
    v9 = _classDataRWV1ofClass(v7, v8, a4);
  }

  else
  {
    v10 = _classDataRWV0ofClass(v7, v8, a4);
    if (!v10)
    {
LABEL_7:
      v11 = 0;
      goto LABEL_8;
    }

    v9 = (*(v8 + 2))(v8, *(v10 + 8), 4);
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = *v9 & 1;
LABEL_8:

  return v11;
}

uint64_t _classDataRWV0ofClass(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = _classDataRWAddressofClass(v5, v6, a3);
  if (v7)
  {
    v8 = v6[2](v6, v7, 64);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t _classDataRWV1ofClass(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = _classDataRWAddressofClass(v5, v6, a3);
  if (v7)
  {
    v8 = v6[2](v6, v7, 32);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t VMUGetNextSiblingOfClass(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (!a3)
  {
    v11 = _classDataRWV0ofClass(v7, v8, a4);
    if (v11)
    {
      v10 = (v11 + 48);
      goto LABEL_6;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v9 = _classDataRWV1ofClass(v7, v8, a4);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + 24);
LABEL_6:
  v12 = *v10;
LABEL_8:

  return v12;
}

uint64_t VMUGetFirstSubclassOfClass(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (!a3)
  {
    v11 = _classDataRWV0ofClass(v7, v8, a4);
    if (v11)
    {
      v10 = (v11 + 40);
      goto LABEL_6;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v9 = _classDataRWV1ofClass(v7, v8, a4);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = (v9 + 16);
LABEL_6:
  v12 = *v10;
LABEL_8:

  return v12;
}

id VMUGetClassNameFromClassDataRO(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6[2](v6, a3, 72);
  if (v7 && ([v5 memoryCache], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "peekStringAtAddress:", *(v7 + 24)), v8, v9))
  {
    if (*v9 == 95 && *(v9 + 1) == 84 && *(v9 + 2) == 116)
    {
      v10 = demangleSwiftClassName(v9);
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    }

    v11 = v10;
    if (*v7)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"metaclass for %@", v10];

      v11 = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id demangleSwiftClassName(const char *a1)
{
  v1 = CSDemangleSymbolName();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v1];
    free(v2);
    if (demangleSwiftClassName(char const*)::onceToken != -1)
    {
      demangleSwiftClassName();
    }

    v4 = v3;
    v5 = v4;
    if ([demangleSwiftClassName(char const*)::s_removeUUIDRegex numberOfMatchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}])
    {
      v6 = [demangleSwiftClassName(char const*)::s_removeUUIDRegex stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @"$1"}];

      v5 = v6;
    }

    if ([demangleSwiftClassName(char const*)::s_unsuffixRegex numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}])
    {
      v7 = [demangleSwiftClassName(char const*)::s_unsuffixRegex stringByReplacingMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), @"$1"}];

      v5 = v7;
    }

    if (v5 != v4)
    {
      v8 = v5;

      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id VMUGetClassNameFromClassDataExtRW(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (a3 && (v10 = (*(v8 + 2))(v8, a4 & 0xFFFFFFFFFFFFFFFELL, 48)) != 0)
  {
    v11 = *v10;
    v12 = [VMUTask ptrauthStripDataPointer:v7];
    v13 = VMUGetClassNameFromClassDataRO(v7, v9, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id VMUGetClassNameFromClassDataRW(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v10 = v8[2];
  if (a3)
  {
    v11 = v10(v8, a4, 32);
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *(v11 + 8);
    v13 = [VMUTask ptrauthStripDataPointer:v7];
    if (v13)
    {
      v14 = VMUGetClassNameFromClassDataExtRW(v7, v9, a3, v13);
LABEL_9:
      v16 = v14;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v10(v8, a4, 64);
    if (!v15)
    {
      goto LABEL_10;
    }

    v13 = *(v15 + 8);
  }

  if (v13)
  {
    v14 = VMUGetClassNameFromClassDataRO(v7, v9, v13);
    goto LABEL_9;
  }

LABEL_10:
  v16 = 0;
LABEL_11:

  return v16;
}

id VMUGetClassNameFromClassStructure(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = _classDataRWAddressofClass(v7, v8, a4);
  if (v9)
  {
    v10 = VMUGetClassNameFromClassDataRW(v7, v8, a3, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _classDataRWAddressofClass(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = (*(a2 + 16))(a2, a3 + 32, 8);
  if (v6)
  {
    v7 = *v6;
  }

  v8 = [VMUTask ptrauthStripDataPointer:v5];

  return v8 & 0x7FFFFFFFFFF8;
}

uint64_t debugSwiftSubfieldIsEnabled()
{
  if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
  {
    debugSwiftSubfieldIsEnabled_cold_1();
  }

  return debugSwiftSubfieldIsEnabled::isEnabled;
}

void __debugSwiftSubfieldIsEnabled_block_invoke()
{
  if (_debugEnvironmentVariableIsEnabled(&cfstr_SymbolicationD_2.isa, 0))
  {
    v0 = 1;
  }

  else
  {
    if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::dispatchToken != -1)
    {
      __debugSwiftSubfieldIsEnabled_block_invoke_cold_1();
    }

    v0 = _debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled;
  }

  debugSwiftSubfieldIsEnabled::isEnabled = v0 & 1;
}

uint64_t _debugEnvironmentVariableIsEnabled(NSString *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 environment];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (v6)
  {
    a2 = [v6 BOOLValue];
  }

  return a2;
}

void _debugSwiftSubfieldDumpSwiftChildInfo(int a1, const char *a2, uint64_t a3, char *a4)
{
  if (*a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = "NULL";
  }

  v9 = *(a3 + 8);
  v10 = nameOfSwiftLayoutKind(*(a3 + 12));
  v11 = v10;
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = vmu_swift_reflection_copyDemangledNameForTypeRef(a4);
    _debugSwiftAsyncPrintf(a1, "%s gave { .name = %s, .Offset = %u, .Kind = %s, .TR = { .Typeref = %p (type %s) } }\n", a2, v8, v9, v11, v12, [v13 UTF8String]);
  }

  else
  {
    _debugSwiftAsyncPrintf(a1, "%s gave { .name = %s, .Offset = %u, .Kind = %s, .TR = { .Typeref = %p (type %s) } }\n", a2, v8, v9, v10, 0, "?");
  }
}

id _createFieldInfoFromChild(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, _BYTE *a8, int a9)
{
  v65[0] = a5;
  v16 = a6;
  v17 = a7;
  if (!a4 || a4 >= 19)
  {
    if (a4)
    {
      v20 = "has invalid kind";
    }

    else
    {
      *a8 = 1;
      v20 = "has kind SWIFT_UNKNOWN";
    }

    if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
    {
      debugSwiftSubfieldIsEnabled_cold_1();
    }

    if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
    {
      if (!a5)
      {
        _debugSwiftAsyncPrintf(a9, "Bailing because field %s (type %s) %s\n", a2, "?", v20);
        if (!a4)
        {
          goto LABEL_20;
        }

        goto LABEL_69;
      }

      a3 = vmu_swift_reflection_copyDemangledNameForTypeRef(*a1);
      _debugSwiftAsyncPrintf(a9, "Bailing because field %s (type %s) %s\n", a2, [a3 UTF8String], v20);
    }

    if (!a4)
    {
LABEL_20:
      if (_logSwiftUnknownFieldsIsEnabled(void)::onceToken != -1)
      {
        _createFieldInfoFromChild();
      }

      if (_logSwiftUnknownFieldsIsEnabled(void)::isEnabled == 1)
      {
        v21 = *MEMORY[0x1E69E9848];
        if (a5)
        {
          a3 = vmu_swift_reflection_copyDemangledNameForTypeRef(*a1);
          v22 = [a3 UTF8String];
        }

        else
        {
          v22 = "?";
        }

        fprintf(v21, "Found SWIFT_UNKNOWN field %s (type %s) in class %s\n", a2, v22, [v17 UTF8String]);
        if (a5)
        {
        }
      }
    }

LABEL_69:
    v19 = 0;
    goto LABEL_70;
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = "";
  }

  v57 = v18;
  v19 = [v16 swiftFieldWithName:? offset:? kind:? typeref:?];
  if (v19)
  {
    if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
    {
      debugSwiftSubfieldIsEnabled_cold_1();
    }

    if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
    {
      _debugSwiftAsyncPrintf(a9, "Found cached field %s\n", v57);
    }

    goto LABEL_70;
  }

  if (a4 > 13)
  {
    switch(a4)
    {
      case 0xE:
        v23 = 0;
        v24 = 3;
        goto LABEL_40;
      case 0xF:
        v23 = 0;
        v24 = 4;
        goto LABEL_40;
      case 0x10:
        v23 = 0;
        v24 = 1;
LABEL_40:
        v56 = 2;
        goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (a4 != 1)
  {
    if (a4 == 13)
    {
      v23 = 0;
      v56 = 2;
      v24 = 2;
      goto LABEL_49;
    }

LABEL_48:
    v56 = 0;
    v24 = 0;
    v23 = 1;
    goto LABEL_49;
  }

  v23 = 0;
  v25 = *(a1 + 16);
  if (v25 != a5 || v25 == 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v56 = v24;
LABEL_49:
  if (_createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::dispatchEnumConfigOnceToken != -1)
  {
    _createFieldInfoFromChild();
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  vmu_swift_reflection_infoForTypeRef(*a1, &v62);
  v27 = &unk_1EC1D0000;
  if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::dispatchToken != -1)
  {
    [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
  }

  if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled == 1)
  {
    v28 = nameOfSwiftLayoutKind(v62);
    _debugSwiftAsyncPrintf(a9, "infoForTypeRef() gave { .Kind = %s, .Size = %u, .Alignment = %u, .Stride = %u, .NumFields = %u}\n", v28, HIDWORD(v62), v63, HIDWORD(v63), v64);
  }

  if (!v62)
  {
    v19 = 0;
    *a8 = 1;
    goto LABEL_70;
  }

  if (!HIDWORD(v62) || !HIDWORD(v63))
  {
    if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::dispatchToken != -1)
    {
      [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
    }

    if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled == 1)
    {
      _debugSwiftAsyncPrintf(a9, "Ignoring 0-size and/or 0-stride field\n");
    }

    goto LABEL_69;
  }

  if (!v23)
  {
    v32 = 0;
    v33 = v24;
    goto LABEL_142;
  }

  v29 = objc_opt_new();
  v30 = v29;
  v56 = 4;
  if (a4 <= 6)
  {
    if (a4 > 4)
    {
      if (a4 == 5)
      {
        v32 = v29;
        v33 = 0;
        v56 = 5;
        goto LABEL_142;
      }

      v52 = v17;
      v34 = 0;
      v49 = _createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanSinglePayloadEnums;
      if (_createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanSinglePayloadEnums)
      {
        v35 = 6;
      }

      else
      {
        v35 = 0;
      }

      v56 = v35;
      goto LABEL_94;
    }

    if (a4 == 3)
    {
      v52 = v17;
      v34 = 0;
      v49 = 0;
      v56 = 3;
LABEL_94:
      if (a4 == 6)
      {
        v34 = 1;
      }

      v51 = v34;
      if (v64)
      {
        v36 = 0;
        v53 = a9 + 1;
        v50 = a3;
        do
        {
          context = objc_autoreleasePoolPush();
          v60 = 0uLL;
          v61 = 0;
          vmu_swift_reflection_childOfTypeRef(*a1, &v60);
          if (v27[329] != -1)
          {
            [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
          }

          if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled == 1)
          {
            v58 = v60;
            v59 = v61;
            _debugSwiftSubfieldDumpSwiftChildInfo(v53, "childOfTypeRef()", &v58, *a1);
          }

          if (a4 == 6 && (_createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanSinglePayloadEnums & 1) != 0 && v64 == 2 && ((HIDWORD(v60) - 13) < 4 || HIDWORD(v60) == 2))
          {
            if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
            {
              [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
            }

            if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
            {
              _debugSwiftAsyncPrintf(a9, "Field is single-payload enum containing a pointer (with a nil representation of NULL). Treating as a struct and not varianting.\n");
            }

            v55 = objc_opt_new();

            v56 = 4;
            if (!v61)
            {
              v37 = 0;
              goto LABEL_125;
            }
          }

          else
          {
            v38 = v51;
            if (v61)
            {
              v38 = 0;
            }

            if (v38)
            {
              if (v56 != 6)
              {
                v37 = 0;
                v55 = v30;
                goto LABEL_125;
              }

              v55 = v30;
LABEL_123:
              v37 = swiftEnumDummyNoPayloadSubField;
              v56 = 6;
              goto LABEL_125;
            }

            v55 = v30;
          }

          v39 = _createFieldInfoFromChild(a1, v60, DWORD2(v60), HIDWORD(v60));
          v37 = v39;
          if (*a8)
          {
            v40 = 0;
            goto LABEL_138;
          }

          if (!v39 && v56 == 6)
          {
            goto LABEL_123;
          }

LABEL_125:
          if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
          {
            [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
          }

          if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
          {
            if (v37)
            {
              v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  scanType %s", VMUScanTypeScanDescription(objc_msgSend(v37, "scanType"))];
              v42 = [v41 UTF8String];

              v43 = "";
            }

            else
            {
              v42 = "";
              v43 = "NO-FIELD  ";
            }

            if (v56 == 6)
            {
              v44 = "possible enum payload";
            }

            else
            {
              v44 = "subfield";
            }

            v45 = nameOfSwiftLayoutKind(a4);
            _debugSwiftAsyncPrintf(v53, "%s%s %s %u of %u  %s%s, of field %s  size %u stride %u\n", v43, v45, v44, v36, v64, v60, v42, v57, HIDWORD(v62), HIDWORD(v63));
            a3 = v50;
          }

          if (v37)
          {
            [v55 addObject:v37];
          }

          v40 = 1;
LABEL_138:
          v30 = v55;

          objc_autoreleasePoolPop(context);
          v27 = &unk_1EC1D0000;
          if ((v40 & 1) == 0)
          {
            v32 = v55;
            v19 = 0;
            v17 = v52;
            goto LABEL_146;
          }

          ++v36;
        }

        while (v36 < v64);
      }

      v32 = v30;
      v17 = v52;
      goto LABEL_141;
    }

    v49 = 0;
    if (a4 == 4)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v49 = 0;
  if ((a4 - 10) < 2)
  {
LABEL_88:
    if (a4 != 7)
    {
      v52 = v17;
      v34 = 0;
      goto LABEL_94;
    }

    if ((_createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanMultiPayloadEnums & 1) == 0)
    {
      v32 = v29;
LABEL_141:
      v33 = v49;
      goto LABEL_142;
    }

    v52 = v17;
    goto LABEL_91;
  }

  if (a4 != 7)
  {
    if (a4 == 9)
    {
      v32 = v29;
      v33 = 1;
      v56 = 7;
      goto LABEL_142;
    }

LABEL_87:
    v56 = 0;
    v49 = 1;
    goto LABEL_88;
  }

  v49 = 1;
  if (_createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanMultiPayloadEnums)
  {
    v52 = v17;
    v56 = 6;
LABEL_91:
    v34 = 1;
    goto LABEL_94;
  }

  v32 = v29;
  v56 = 0;
  v33 = 1;
LABEL_142:
  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v57];
  LODWORD(v48) = HIDWORD(v63);
  if (v56 == 6)
  {
    v47 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initSwiftEnumPayloadFieldWithName:v46 type:&stru_1F461F9C8 kind:6 scan:v33 offset:a3 size:HIDWORD(v62) stride:v48 possibleEnumSubFieldArray:v32 swiftTyperef:v65];
  }

  else
  {
    v47 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:v46 type:&stru_1F461F9C8 kind:v56 scan:v33 offset:a3 size:HIDWORD(v62) stride:v48 subFieldArray:v32 swiftTyperef:v65];
  }

  v19 = v47;
  [v16 memoizeSwiftField:v47 withName:v57 offset:a3 kind:a4 typeref:v65[0]];

LABEL_146:
LABEL_70:

  return v19;
}

id determineBinaryPathForSwiftType(NSString *a1, unint64_t a2, VMUObjectIdentifier *a3, _CSTypeRef a4)
{
  v5 = a1;
  v6 = a3;
  v7 = [(NSString *)v5 rangeOfString:@"."];
  v8 = v7;
  if (!v7 || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v9 = [(NSString *)v5 substringToIndex:v7];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v10 = [(VMUObjectIdentifier *)v6 moduleNameToBinaryPathDict];
  v21 = [v10 objectForKeyedSubscript:v9];

  v11 = v17[5];
  if (!v11)
  {
    [v9 UTF8String];
    CSSymbolicatorForeachSymbolOwnerWithNameAtTime();
    v10 = v17[5];
    if (!v10)
    {
      v17[5] = &stru_1F461F9C8;

      v10 = v17[5];
    }

    v12 = [(VMUObjectIdentifier *)v6 moduleNameToBinaryPathDict];
    [v12 setObject:v10 forKeyedSubscript:v9];

    v11 = v17[5];
  }

  v13 = [v11 length];
  if (v13)
  {
    v10 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  if (!v13)
  {
LABEL_20:
    if (vmu_swift_reflection_metadataNominalTypeDescriptor(*[(VMUObjectIdentifier *)v6 swiftMirror]) && (CSSymbolicatorGetSymbolOwnerWithAddressAtTime(), (CSIsNull() & 1) == 0) && (Path = CSSymbolOwnerGetPath()) != 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void sub_1C67F7E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t VMUGetClassDataROofClass(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (!a3)
  {
    v16 = _classDataRWV0ofClass(v7, v8, a4);
    if (v16)
    {
      if ((*(v16 + 2) & 0xC008) != 0)
      {
        v12 = *(v16 + 8);
        goto LABEL_13;
      }

LABEL_11:
      v15 = _classDataRWAddressofClass(v7, v8, a4);
      goto LABEL_12;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_13;
  }

  v9 = _classDataRWV1ofClass(v7, v8, a4);
  if (!v9)
  {
    goto LABEL_10;
  }

  if ((*(v9 + 2) & 0xC008) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(v9 + 8);
  v11 = [VMUTask ptrauthStripDataPointer:v7];
  v12 = v11;
  if (v11)
  {
    v13 = (*(v8 + 2))(v8, v11 & 0xFFFFFFFFFFFFFFFELL, 48);
    if (v13)
    {
      v14 = *v13;
      v15 = [VMUTask ptrauthStripDataPointer:v7];
LABEL_12:
      v12 = v15;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_13:

  return v12;
}

id _swiftFieldsForClass(unint64_t a1, NSString *a2, libSwiftRemoteMirrorWrapper *a3, VMUClassInfoMap *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = objc_opt_new();
  if (vmu_swift_reflection_ownsAddress(a3->var0))
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    vmu_swift_reflection_infoForMetadata(a3->var0, v17);
    if (LODWORD(v17[0]) == 17)
    {
      if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
      {
        [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
      }

      if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
      {
        _debugSwiftAsyncPrintf(0, "Getting fields for class %s\n", [(NSString *)v6 UTF8String]);
      }

      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          v15 = 0uLL;
          v16 = 0;
          vmu_swift_reflection_childOfMetadata(a3->var0, &v15);
          if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::dispatchToken != -1)
          {
            [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
          }

          if (_debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled == 1)
          {
            v13 = v15;
            v14 = v16;
            _debugSwiftSubfieldDumpSwiftChildInfo(1, "childOfMetadata()", &v13, a3->var0);
          }

          LOBYTE(v13) = 0;
          v10 = _createFieldInfoFromChild(a3, v15, DWORD2(v15), HIDWORD(v15), v16, v7, v6, &v13, 1);
          if (v10)
          {
            [v8 addObject:v10];
          }

          else if (v13 == 1)
          {

            v8 = 0;
            break;
          }
        }
      }

      if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
      {
        [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
      }

      if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
      {
        _debugSwiftAsyncPrintf(0, "\n");
      }
    }

    else
    {
      if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
      {
        [VMUClassInfo initWithClosureContext:typeInfo:infoMap:swiftFieldMetadataContext:];
      }

      if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
      {
        [(NSString *)v6 UTF8String];
        _debugSwiftAsyncPrintf(0, "Failed to get info for metadata of class %s\n\n");
      }
    }

    v11 = v8;
    v8 = 0;
  }

  else
  {
    if (debugSwiftSubfieldIsEnabled::dispatchToken != -1)
    {
      debugSwiftSubfieldIsEnabled_cold_1();
    }

    if (debugSwiftSubfieldIsEnabled::isEnabled == 1)
    {
      _debugSwiftAsyncPrintf(0, "Failed to look up metadata for class %s\n\n", [(NSString *)v6 UTF8String]);
    }

    v11 = 0;
  }

  return v11;
}

void _destroyLocalIvar(objc_ivar *a1)
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      v2 = *(a1 + 1);
      if (v2)
      {
        free(v2);
        *(a1 + 1) = 0;
      }

      v3 = *(a1 + 2);
      if (v3)
      {
        free(v3);
        *(a1 + 2) = 0;
      }
    }

    if (*a1)
    {
      free(*a1);
    }

    free(a1);
  }
}

unint64_t copy_remote_layout_at(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = 0;
    v7 = MEMORY[0x1E69E9AC8];
    v8 = *MEMORY[0x1E69E9AC8] - ((*MEMORY[0x1E69E9AC8] + 0xFFFFFFFFLL) & a1);
    while (1)
    {
      v9 = v8;
      v10 = v3[2](v3, a1, v8);
      if (!v10)
      {
        if (v6)
        {
          free(v6);
        }

LABEL_9:
        a1 = 0;
        goto LABEL_11;
      }

      v5 = (v5 + v8);
      v11 = reallocf(v6, v5);
      if (!v11)
      {
        goto LABEL_9;
      }

      v6 = v11;
      strncpy(v11 + v4, v10, v8);
      if (!*(v6 + (v5 - 1)))
      {
        break;
      }

      v4 += v8;
      LODWORD(v8) = *v7;
      a1 += v9;
    }

    v12 = strlen(v6);
    a1 = reallocf(v6, v12 + 1);
  }

LABEL_11:

  return a1;
}

void sub_1C67F9420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VMUClassInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

unint64_t VMUGetClassDataExtOfClass(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  if (a3 && (v9 = _classDataRWV1ofClass(v7, v8, a4)) != 0)
  {
    v10 = *(v9 + 8);
    v11 = [VMUTask ptrauthStripDataPointer:v7];
    v12 = v11 & (v11 << 63 >> 63) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

unint64_t maskPointerToMethodList(uint64_t a1, unint64_t a2, VMUTaskMemoryScanner *a3)
{
  v5 = a3;
  v6 = v5;
  if (HIBYTE(a2))
  {
    a2 &= 0xFFFFFFFFFFFFFFuLL;
    [(VMUTaskMemoryScanner *)v5 setClassStructureFieldScanValueAtSourceAddress:a1 toCorrectedAddress:a2];
  }

  return a2;
}

void *_createLocalIvar(const char *a1, const char *a2, int a3, int a4, char a5)
{
  v10 = malloc_type_malloc(0x28uLL, 0x1050040749D65F6uLL);
  v10[1] = a1;
  v10[2] = a2;
  v11 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *v10 = v11;
  *v11 = a3;
  *(v10 + 7) = a4;
  *(v10 + 32) = a5;
  return v10;
}

void *_decodeNullTerminatedBytes(NSCoder *a1)
{
  v1 = a1;
  v4 = 0;
  [(NSCoder *)v1 decodeValueOfObjCType:"I" at:&v4 size:4];
  if (v4)
  {
    v2 = malloc_type_calloc(v4 + 1, 1uLL, 0x100004077774924uLL);
    [(NSCoder *)v1 decodeArrayOfObjCType:"c" count:v4 at:v2];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1C67FA8BC(_Unwind_Exception *a1)
{
  if (v9 != v3)
  {
  }

  _Unwind_Resume(a1);
}

id _formatIvar(VMUFieldInfo *a1, uint64_t a2)
{
  v3 = a1;
  v4 = VMUScanTypeKeywordDescription([(VMUFieldInfo *)v3 scanType]);
  if (*v4)
  {
    v5 = " ";
  }

  else
  {
    v5 = "";
  }

  v6 = [(VMUFieldInfo *)v3 isCapture];
  v7 = 0x1E696A000;
  v8 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v9 = [(VMUFieldInfo *)v3 offset];
    v10 = [(VMUFieldInfo *)v3 isByref];
    v11 = "__block ";
    if (!v10)
    {
      v11 = "";
    }

    v12 = [v8 stringWithFormat:@"%+*d: %s%s%s[capture]", a2, v9, v11, v4, v5];;
  }

  else
  {
    v13 = [(VMUFieldInfo *)v3 offset];
    v22 = [(VMUFieldInfo *)v3 typeName];
    v14 = [v22 UTF8String];
    v15 = [(VMUFieldInfo *)v3 ivarName];
    v23 = descriptionForTypeEncoding(v14, [v15 UTF8String]);
    v16 = [(VMUFieldInfo *)v3 destinationLayout];
    v17 = v13;
    if (v16)
    {
      v18 = MEMORY[0x1E696AEC0];
      v21 = [(VMUFieldInfo *)v3 destinationLayout];
      v7 = [v21 className];
      v19 = [v18 stringWithFormat:@"  [->%@]", v7];
    }

    else
    {
      v19 = &stru_1F461F9C8;
    }

    v12 = [v8 stringWithFormat:@"%*u: %s%s%@%@", a2, v17, v4, v5, v23, v19];;
    if (v16)
    {
    }
  }

  return v12;
}

void sub_1C67FB3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void _processExtendedLayout(unint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (a1 < 0x1000)
  {
    v3[2](v3, 2, 0, (a1 >> 8) & 0xF);
    v10[2](v10, 1, 1, a1 >> 4);
    v10[2](v10, 4, 0, a1 & 0xF);
    goto LABEL_18;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = (a1 + 1);
    do
    {
      v6 = v4 >> 4;
      if (v4 >> 4 <= 3)
      {
        if (v6 == 2)
        {
          v7 = 0;
          v8 = 1;
          goto LABEL_16;
        }

        if (v6 == 3)
        {
          v7 = 0;
          v8 = 2;
          goto LABEL_16;
        }
      }

      else
      {
        switch(v6)
        {
          case 4u:
            v8 = 1;
            v7 = 1;
            goto LABEL_16;
          case 5u:
            v7 = 0;
            v8 = 4;
            goto LABEL_16;
          case 6u:
            v7 = 0;
            v8 = 8;
LABEL_16:
            v10[2](v10, v8, v7, (v4 & 0xF) + 1);
            break;
        }
      }

      v9 = *v5++;
      v4 = v9;
    }

    while (v9);
  }

LABEL_18:
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67FCC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, char a41)
{
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v42 - 256), 8);

  _Unwind_Resume(a1);
}

void sub_1C67FD168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C67FD8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C67FDA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1C67FE858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  _Block_object_dispose((v18 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_1C67FF5A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZL22demangleSwiftClassNamePKc_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\((.+) in _([0-9A-Z]+)\\)" options:0 error:0];
  v1 = demangleSwiftClassName(char const*)::s_removeUUIDRegex;
  demangleSwiftClassName(char const*)::s_removeUUIDRegex = v0;

  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+) with unmangled suffix (.+)" options:0 error:0];
  v3 = demangleSwiftClassName(char const*)::s_unsuffixRegex;
  demangleSwiftClassName(char const*)::s_unsuffixRegex = v2;
}

uint64_t ___ZL49_debugRemoteMirrorOutputForSwiftSubfieldIsEnabledv_block_invoke()
{
  result = _debugEnvironmentVariableIsEnabled(&cfstr_SymbolicationD_3.isa, 0);
  _debugRemoteMirrorOutputForSwiftSubfieldIsEnabled(void)::isEnabled = result;
  return result;
}

const char *nameOfSwiftLayoutKind(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return "SWIFT_UNKNOWN";
  }

  else
  {
    return off_1E8278C60[a1 - 1];
  }
}

void ___ZL25_createFieldInfoFromChildP27libSwiftRemoteMirrorWrapperPKcj17swift_layout_kindyP15VMUClassInfoMapjP8NSStringPbj_block_invoke()
{
  _createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanSinglePayloadEnums = _debugEnvironmentVariableIsEnabled(&cfstr_DtPreciselySca.isa, 1);
  _createFieldInfoFromChild(libSwiftRemoteMirrorWrapper *,char const*,unsigned int,swift_layout_kind,unsigned long long,VMUClassInfoMap *,unsigned int,NSString *,BOOL *,unsigned int)::preciselyScanMultiPayloadEnums = _debugEnvironmentVariableIsEnabled(&cfstr_DtDoNotPrecise.isa, 0) ^ 1;
  v0 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"Dummy no payload field" type:0 scan:0 offset:0 size:0];
  v1 = swiftEnumDummyNoPayloadSubField;
  swiftEnumDummyNoPayloadSubField = v0;
}

uint64_t ___ZL31_logSwiftUnknownFieldsIsEnabledv_block_invoke()
{
  result = _debugEnvironmentVariableIsEnabled(&cfstr_SymbolicationL.isa, 0);
  _logSwiftUnknownFieldsIsEnabled(void)::isEnabled = result;
  return result;
}

void ___ZL31determineBinaryPathForSwiftTypeP8NSStringyP19VMUObjectIdentifier10_CSTypeRef_block_invoke(uint64_t a1)
{
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

uint64_t _classDataExtV1ofClass(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = VMUGetClassDataExtOfClass(v5, v6, 1, a3);
  if (v7)
  {
    v8 = (*(v6 + 2))(v6, v7 & 0xFFFFFFFFFFFFFFFELL, 48);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1C6801150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VMUMarkObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (s_markingDisabled & 1) == 0 && (*MEMORY[0x1E69E5908] & v1) == 0)
  {
    v3 = v1;
    if (_retainCount_onceToken != -1)
    {
      VMUMarkObject_cold_1();
    }

    if ([v3 _retainCount_retainCountSelector] == -1)
    {

      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSClassFromString(&cfstr_Nsmallocblock.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v5 = objc_getAssociatedObject(v3, "__VMUAssociatedObjectsObjcAbandonedMarkerKey");

    if (!v5)
    {
      v6 = objc_opt_new();
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      v8 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___addEntryToMarkingRegion_block_invoke;
      v9[3] = &unk_1E8278E08;
      v9[4] = &v10;
      v9[5] = v2;
      v9[6] = &v8;
      _singleThreadedMarking(v9);
      v7 = *(v11 + 6);
      _Block_object_dispose(&v10, 8);
      [v6 setEntryIndex:v7];
      [v6 setRegion:v8];
      objc_setAssociatedObject(v3, "__VMUAssociatedObjectsObjcAbandonedMarkerKey", v6, 0x301);
    }
  }

LABEL_4:
}

void sub_1C68019B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VMUEnumerateMarkedObjects(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (s_markingDisabled)
  {
    v3 = 0;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    if (v1)
    {
      v4 = objc_opt_new();
    }

    else
    {
      v4 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___VMUEnumerateMarkedObjects_block_invoke;
    v16[3] = &unk_1E8278DC0;
    v18 = &v19;
    v5 = v4;
    v17 = v5;
    _singleThreadedMarking(v16);
    if (v2)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
      if (v7)
      {
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v2[2](v2, *(*(&v12 + 1) + 8 * i));
          }

          v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
        }

        while (v7);
      }
    }

    v3 = *(v20 + 6);

    _Block_object_dispose(&v19, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1C6801B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _singleThreadedMarking(void *a1)
{
  v1 = a1;
  if (_singleThreadedMarking_onceToken != -1)
  {
    v8 = v1;
    _singleThreadedMarking_cold_1();
    v1 = v8;
  }

  if ((s_markingDisabled & 1) == 0)
  {
    v7 = v1;
    v2 = _singleThreadedMarking_s_markingLock;
    v3 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v2, v3))
    {
      v4 = *MEMORY[0x1E69E9848];
      v5 = getprogname();
      v6 = getpid();
      fprintf(v4, "%s[%d]: warning: memory marking timeout encountered - marked objects may be incorrect from this point forward\n", v5, v6);
      s_markingDisabled = 1;
    }

    else if ((s_markingDisabled & 1) == 0)
    {
      v7[2]();
    }

    dispatch_semaphore_signal(_singleThreadedMarking_s_markingLock);
    v1 = v7;
  }
}

uint64_t ___removeEntryFromMarkingRegion_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 >= *(v2 + 20))
  {
    ___removeEntryFromMarkingRegion_block_invoke_cold_1();
  }

  *(v2 + *(v2 + 12) + 8 * v1) = 0;
  v3 = *(v2 + 28) - 1;
  *(v2 + 28) = v3;
  if (!v3)
  {
    v4 = s_currentMarkingContext;
    if (s_currentMarkingContext == v2)
    {
      if (!*(v2 + 32))
      {
        return result;
      }

      s_currentMarkingContext = *(v2 + 32);
    }

    else
    {
      for (i = *(s_currentMarkingContext + 32); i != v2; i = *(i + 32))
      {
        v4 = i;
      }

      *(v4 + 32) = *(v2 + 32);
    }

    v6 = *MEMORY[0x1E69E9A60];
    v7 = *MEMORY[0x1E69E9AC8];

    return mach_vm_deallocate(v6, v2, v7);
  }

  return result;
}

SEL ___retainCount_block_invoke()
{
  result = NSSelectorFromString(&cfstr_Retaincount.isa);
  _retainCount_retainCountSelector = result;
  return result;
}

void *___addEntryToMarkingRegion_block_invoke(void *result)
{
  v1 = result;
  v2 = s_currentMarkingContext;
  if (s_currentMarkingContext && *(s_currentMarkingContext + 28) != *(s_currentMarkingContext + 20))
  {
    v7 = *(s_currentMarkingContext + 12);
    v8 = *(s_currentMarkingContext + 24);
  }

  else
  {
    address = 0;
    v3 = MEMORY[0x1E69E9AC8];
    result = vm_allocate(*MEMORY[0x1E69E9A60], &address, *MEMORY[0x1E69E9AC8], 167772161);
    if (result)
    {
      s_currentMarkingContext = 0;
      v4 = *MEMORY[0x1E69E9848];
      v5 = getprogname();
      v6 = getpid();
      result = fprintf(v4, "%s[%d]: error: memory marking region could not be allocated\n", v5, v6);
      s_markingDisabled = 1;
      return result;
    }

    v8 = 0;
    v9 = address;
    v10 = (*v3 + 0x7FFFFFFD8) >> 3;
    *address = 0x1DE67829AD1A2FBBLL;
    *(v9 + 8) = 0x2800000001;
    *(v9 + 16) = 8;
    *(v9 + 20) = v10;
    *(v9 + 24) = 0;
    *(v9 + 32) = v2;
    s_currentMarkingContext = v9;
    v7 = 40;
    v2 = v9;
  }

  v11 = v2 + v7;
  *(*(v1[4] + 8) + 24) = v8;
  v12 = v2[5];
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v1[4] + 8);
      v15 = *(v14 + 24);
      if (!*&v11[8 * v15])
      {
        break;
      }

      v16 = v15 + 1 == v12 ? 0 : v15 + 1;
      *(v14 + 24) = v16;
      v12 = v2[5];
    }
  }

  v2[6] = *(*(v1[4] + 8) + 24);
  v17 = *(*(v1[4] + 8) + 24);
  if (*&v11[8 * v17])
  {
    ___addEntryToMarkingRegion_block_invoke_cold_1();
  }

  v18 = v1[6];
  *&v11[8 * v17] = v1[5];
  ++v2[7];
  if (v18)
  {
    *v18 = v2;
  }

  return result;
}

char *___singleThreadedMarking_block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = _singleThreadedMarking_s_markingLock;
  _singleThreadedMarking_s_markingLock = v0;

  result = getenv("NSZombieEnabled");
  if (result)
  {
    v3 = result;
    if ((*result | 0x20) == 0x79)
    {
      v4 = *MEMORY[0x1E69E9848];
      v5 = getprogname();
      v6 = getpid();
      result = fprintf(v4, "%s[%d]: notice: memory marking disabled due to presence of NSZombieEnabled=%s environment variable\n", v5, v6, v3);
      s_markingDisabled = 1;
    }
  }

  return result;
}

id VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(int a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a1)
  {
    VMUExclaveRegionTypeDescriptionForTagShareProtAndPager(a2);
  }

  else
  {
    VMURegionTypeDescriptionForTagShareProtAndPager(a2, a3, a4, a5);
  }
  v5 = ;

  return v5;
}

id VMUExclaveRegionTypeDescriptionForTagShareProtAndPager(uint64_t a1)
{
  if (a1 + 5) <= 0x18u && ((0x1FFFEFFu >> (a1 + 5)))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:off_1E8279168[(a1 + 5)]];
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Exclave memory tag %hhu", a1];
  }

  return v1;
}

id dispositionDescription(__int16 a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"  PRESENT"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"  FICTITIOUS"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 appendString:@"  REF"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 appendString:@"  DIRTY"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 appendString:@"  PAGED_OUT"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 appendString:@"  COPIED"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 appendString:@"  SPECULATIVE"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 appendString:@"  EXTERNAL"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 appendString:@"  CS_VALIDATED"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 appendString:@"  CS_TAINTED"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  [v3 appendString:@"  CS_NX"];
  if ((a1 & 0x800) != 0)
  {
LABEL_13:
    [v3 appendString:@"  REUSABLE"];
  }

LABEL_14:

  return v3;
}

id ownedPhysFootprintAdjustmentForMemgraph(void *a1, _DWORD *a2, unint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if ([v7 count] != *a2)
  {
    ownedPhysFootprintAdjustmentForMemgraph_cold_1();
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = [v7 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v50;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v50 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      if ([v13 isOwnedUnmappedMemory])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (!v10)
        {
          goto LABEL_10;
        }

        goto LABEL_4;
      }
    }

    v14 = v13;

    if (v14)
    {
      v40 = a2;
      v41 = v14;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v42 = v7;
      v15 = v7;
      v16 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (!v16)
      {
        v43 = 0;
        goto LABEL_37;
      }

      v17 = v16;
      v43 = 0;
      v18 = *v46;
      v19 = &OBJC_IVAR___VMUVMRegion_range;
      v20 = &OBJC_IVAR___VMUVMRegion_user_tag;
      v21 = &OBJC_IVAR___VMUVMRegion_purgeable;
      v44 = a3;
      while (1)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          if (!VMURangeContainsRange(a3, a4, *&v23[*v19], *&v23[*v19 + 8]))
          {
            v24 = v23;
            v25 = v24;
            if (*&v24[*v20] == 87 || *&v24[*v21] == 3)
            {

              continue;
            }

            v26 = a4;
            v27 = v19;
            v28 = v15;
            v29 = v20;
            v30 = v21;
            v31 = *(v24 + 20);

            if (v31)
            {
              v21 = v30;
              if (!*(v25 + *v30))
              {
                v20 = v29;
                if (!*(v25 + 49))
                {
                  v15 = v28;
                  if ((*(v25 + 132) & 2) == 0)
                  {
                    v32 = v25[20] - v25[27];
                    v25[23] = v32;
                    v33 = v25[20];
                    v34 = v25[23];
                    v35 = v25[27];
                    v36 = v33 - v35 - v32;
                    if (v33 < v35 + v34)
                    {
                      v36 = 0;
                    }

                    v43 += v34 + v36;
                  }

                  goto LABEL_31;
                }

LABEL_30:
                v15 = v28;
LABEL_31:
                v19 = v27;
                a4 = v26;
                a3 = v44;
                continue;
              }
            }

            else
            {
              v21 = v30;
            }

            v20 = v29;
            goto LABEL_30;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (!v17)
        {
LABEL_37:

          v14 = v41;
          adjustOwnedMemoryRegionFootprint(v41, v43);
          if (v14[23] + v14[22])
          {
            v37 = 0;
          }

          else
          {
            --*v40;
            v14 = v41;
            v37 = v14;
          }

          v7 = v42;
          goto LABEL_41;
        }
      }
    }
  }

  else
  {
LABEL_10:

    v14 = 0;
  }

  v37 = 0;
LABEL_41:

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

char *VMUMallocRangeTypeString(int a1)
{
  if ((a1 - 1) >= 7)
  {
    VMUMallocRangeTypeString_cold_1(a1);
  }

  return off_1E8279230[a1 - 1];
}

void sub_1C6804960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void addMallocRegionPageStatistics(void *a1, void *a2)
{
  v3 = a1;
  if (v3 && a2 && *(v3 + 50) != 3)
  {
    v4 = a2[3];
    a2[2] += v3[2];
    a2[3] = v4 + v3[20];
    v5 = a2[5];
    a2[4] += v3[21];
    a2[5] = v5 + v3[22];
    a2[6] += v3[23];
  }
}

void appendMallocZoneTextLine(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = a1;
  [v25 appendFormat:@"%-*s", a3, a4];
  [v25 appendFormat:@" %10s", a5];
  if ((a2 & 4) != 0)
  {
    [v25 appendFormat:@" %10s", a6];
  }

  if ((a2 & 8) != 0)
  {
    [v25 appendFormat:@" %10s", a7];
  }

  v20 = v25;
  if ((a2 & 0x800) != 0)
  {
    [v25 appendFormat:@" %10s", a8];
    v20 = v25;
  }

  if ((a2 & 0x400000) != 0)
  {
    [v20 appendFormat:@" %10s", a9];
    [v25 appendFormat:@" %10s %10s %10s %7s", a10, a11, a12, a13];
  }

  else
  {
    [v20 appendFormat:@" %10s %10s %10s %7s", a10, a11, a12, a13];
    [v25 appendFormat:@" %7s", a14, v21, v22, v23];
  }

  [v25 appendString:@"\n"];
}

void appendMallocZoneStatsLine(void *a1, int a2, unsigned int a3, char a4, unsigned int a5, uint64_t a6, unint64_t *a7)
{
  v26 = a1;
  context = objc_autoreleasePoolPush();
  v21 = pageCountString(a7[2], a3, a4);
  v20 = pageCountString(a7[3], a3, a4);
  v19 = pageCountString(a7[6], a3, a4);
  v10 = pageCountString(a7[5], a3, a4);
  v11 = pageCountString(a7[5] + a7[6], a3, a4);
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%10qu", a7[1]];
  v13 = [v12 UTF8String];
  v14 = memorySizeString(*a7);
  v15 = memorySizeString(a7[9]);
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%3llu%%", a7[8]];
  v17 = [v16 UTF8String];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%7llu", a7[7]];
  appendMallocZoneTextLine(v26, a2, a5, a6, v21, v20, v19, v10, v11, v13, v14, v15, v17, [v18 UTF8String]);

  objc_autoreleasePoolPop(context);
}

void __listKernelCoreRegions_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  *(v4 + 8) = *a2;
  *(v4 + 6) = *(a2 + 32);
  *(v4 + 7) = *(a2 + 36);
  v4[50] = 2;
  *(v4 + 13) = 3;
  [*(a1 + 32) addObject:v4];
}

void __listKernelCoreRegions_block_invoke_2(uint64_t a1)
{
  Range = CSRegionGetRange();
  v5 = 0;
  findRegionForAddress(*(a1 + 32), Range, &v5);
  v3 = v5;
  if (v5)
  {
    *(v5 + 132) |= 2u;
    if (!v3[4])
    {
      v4 = v3;
      objc_storeStrong(v3 + 5, VMUunusedButDirtySharedLibDataPath);
      v3 = v4;
    }
  }
}

void __listKernelCoreRegions_block_invoke_3(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = a2;
  v27 = a2;
  if ([*(a1 + 32) count])
  {
    v12 = 0;
    v13 = a4 - a3;
    if (a6)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    v15 = MEMORY[0x1E69E9AC8];
    v32 = a5;
    v30 = v10;
    v31 = a3;
    v29 = v13;
    v28 = v14;
    do
    {
      v16 = [*(a1 + 32) objectAtIndexedSubscript:v12];
      if (VMURangeIntersectsRange(a3, v13, *(v16 + 8), *(v16 + 16)))
      {
        *(v16 + 104) = 1;
        objc_storeStrong((v16 + 32), v10);
        *(v16 + 28) = 3;
        *(v16 + 24) = v14;
        if (a5)
        {
          *(v16 + 144) = a5;
          v17 = *(v16 + 40);
          *(v16 + 40) = @"zalloc (no zone)";
        }

        v18 = *(v16 + 16) >> *MEMORY[0x1E69E9AC0];
        if (v18 >= 2)
        {
          v19 = v18 - 1;
          v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18 - 1];
          v21 = v16;
          v22 = v19;
          do
          {
            v23 = [v21 breakAtLength:*v15];
            if (v23)
            {
              [v20 addObject:v23];
              v24 = v23;

              v21 = v24;
            }

            --v22;
          }

          while (v22);
          v25 = *(a1 + 32);
          v26 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v12 + 1, v19}];
          [v25 insertObjects:v20 atIndexes:v26];

          v12 += v19;
          a5 = v32;
          v10 = v30;
          a3 = v31;
          v13 = v29;
          v14 = v28;
        }
      }

      ++v12;
    }

    while (v12 < [*(a1 + 32) count]);
  }
}

__CFString *getSanitizedPathForSymbolOwner(uint64_t a1, uint64_t a2, int a3)
{
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
    v6 = [v5 stringByResolvingSymlinksInPath];

    if ((a3 & 0x1040000) != 0x1000000)
    {
      v7 = VMUSanitizePath(v6);

      v6 = v7;
    }
  }

  else
  {
    v6 = &stru_1F461F9C8;
  }

  return v6;
}

void ___markRegionsForMallocZones_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 56) + 56) splitOutRange:*(*(*(a1 + 40) + 8) + 32) fromRegionIndex:*(*(*(a1 + 40) + 8) + 40) regions:*(*(a1 + 56) + 48) newZoneName:**(a1 + 56) reason:{*(a1 + 32), a2}];
  if (v3)
  {
    v4 = v3;
    objc_storeStrong(v3 + 5, *(a1 + 32));
    v3 = v4;
    *(v4 + 37) = *(*(*(a1 + 48) + 8) + 24);
  }

  *(*(*(a1 + 40) + 8) + 32) = xmmword_1C6858410;
}

void ___getRegionMallocStatistics_block_invoke(uint64_t a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___getRegionMallocStatistics_block_invoke_2;
  v7[3] = &unk_1E8279120;
  v10 = v14;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v11 = v6;
  v13 = *(a1 + 56);
  v9 = *(a1 + 32);
  v12 = a2;
  VMUTask_foreach_malloc_zone(v4, v7);

  _Block_object_dispose(v14, 8);
}

uint64_t ___getRegionMallocStatistics_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void, void, void, void, void), void *a4)
{
  v8 = a4;
  ++*(*(*(a1 + 48) + 8) + 24);
  v9 = malloc_type_calloc(1uLL, 0x50uLL, 0x10000404247E4FDuLL);
  NSMapInsertKnownAbsent(*(a1 + 32), v8, v9);
  v10 = *(a1 + 56);
  v11 = *(v10 + 56);
  *(v10 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v10 + 56) = 0;

  objc_storeStrong((*(a1 + 56) + 64), a4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___getRegionMallocStatistics_block_invoke_3;
  aBlock[3] = &unk_1E82790F8;
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v23 = v9;
  v24 = v12;
  v21 = v8;
  v22 = v13;
  v25 = *(a1 + 72);
  v14 = v8;
  v15 = _Block_copy(aBlock);
  v16 = *(a1 + 56);
  v17 = *(v16 + 72);
  *(v16 + 72) = v15;

  v18 = VMUCallMallocEnumeratorWithAttributeGraphWorkaround([*(a1 + 40) taskPort], *(a1 + 56), 7, a2, *(a1 + 64), _mallocEnumerationHandler, a3, v14);
  return v18;
}

void ___getRegionMallocStatistics_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 == 1)
  {
    v8 = *(*(a1 + 56) + 56);
    if (*(v8 + 37) == -1 || !*(v8 + 5))
    {
      *(v8 + 37) = *(*(*(a1 + 40) + 8) + 24);
      v10 = v8;
      objc_storeStrong(v8 + 5, *(a1 + 32));
      v8 = v10;
      if (*(a1 + 64) == 1)
      {
        v9 = [v10 description];
        printf("Setting region name in %s based on enumeration for  %s\n", "_getRegionMallocStatistics_block_invoke_3", [v9 UTF8String]);

        v8 = v10;
      }
    }

    if (*(v8 + 37) == *(*(*(a1 + 40) + 8) + 24))
    {
      if (a4)
      {
        ++*(v8 + 17);
      }

      *(v8 + 36) |= a4;
    }
  }

  else
  {
    if (a5)
    {
      ___getRegionMallocStatistics_block_invoke_3_cold_1();
    }

    if (a4)
    {
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = a3;
      **(a1 + 48) = vaddq_s64(**(a1 + 48), v7);
    }
  }
}

BOOL _copy_remote_mangled_symbol_value(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, void *a6)
{
  v8 = _map_remote_mangled_symbol_value(a1, a2, a3, a4, a5);
  if (v8)
  {
    memcpy(a6, v8, a5);
  }

  else
  {
    bzero(a6, a5);
  }

  return v8 != 0;
}

uint64_t _map_remote_mangled_symbol_value(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  CSSymbolOwnerGetSymbolWithMangledName();
  Range = CSSymbolGetRange();
  if (Range)
  {
    v8 = v6[2](v6, Range, a5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id createRemoteAddressToLocalAddressAndSizeMap()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:259 capacity:0];

  return v0;
}

id createRemoteStringToLengthMap()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:1282 capacity:0];

  return v0;
}

void printFigSubclassInfo(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if ((printFigSubclassInfo_printedHeader & 1) == 0)
  {
    if (getenv("DT_PRINT_FIG_SUBCLASSES"))
    {
      printFigSubclassInfo_printIt = 1;
      v7 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "%-36s  %-60s  %s\n", "CFType", "Fig Subclass", "FigBaseClass symbol name");
      fprintf(*v7, "%-36s  %-60s  %s\n", "======", "============", "========================");
    }

    printFigSubclassInfo_printedHeader = 1;
  }

  if (printFigSubclassInfo_printIt == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "%-36s  %-60s  %s\n", [v8 UTF8String], objc_msgSend(v5, "UTF8String"), objc_msgSend(v6, "UTF8String"));
  }
}

uint64_t closureContextMayHaveGenericCaptures(uint64_t a1, void *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  result = [a2 copyRange:a1 to:{24, v6}];
  if (result)
  {
    LODWORD(v5[1]) = 0;
    v5[0] = 0;
    v4 = [a2 copyRange:v7 to:{12, v5}];
    result = 0;
    if (v4)
    {
      return *(v5 + 4) != 0;
    }
  }

  return result;
}

void sub_1C680ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C680F884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C680FC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __destructor_8_sb16_s24_s32_w56_w64_w72(va);
  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w16_sb16_s24_s32_t40w16_w56_w64_w72(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = _Block_copy(*(a2 + 16));
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;

  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  *(a1 + 40) = *(a2 + 40);
  WeakRetained = objc_loadWeakRetained((a2 + 56));
  objc_storeWeak((a1 + 56), WeakRetained);
  v6 = objc_loadWeakRetained((a2 + 64));
  objc_storeWeak((a1 + 64), v6);
  v7 = objc_loadWeakRetained((a2 + 72));
  objc_storeWeak((a1 + 72), v7);
}

uint64_t _query_data_layout_function(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      *a4 = 0;
      return 1;
    }

    if (a2 == 4)
    {
      v9 = *(a1 + 41) == 0;
      v10 = 4096;
      if (v9)
      {
        v10 = 0x100000000;
      }

      *a4 = v10;
      return 1;
    }

    if (a2 != 5)
    {
      return result;
    }

    v8 = *(a1 + 41) ^ 1;
  }

  else
  {
    if (a2 >= 2)
    {
      if (a2 != 2)
      {
        return result;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 72));
      *a4 = [VMUTask ptrauthStripFunctionPointer:?];

      return 1;
    }

    v8 = 8;
  }

  *a4 = v8;
  return 1;
}

void _free_bytes_function(int a1, void *a2)
{
  if (shouldCopyMemoryForRemoteMirror_onceToken != -1)
  {
    _free_bytes_function_cold_1();
  }

  if (shouldCopyMemoryForRemoteMirror_result == 1)
  {

    free(a2);
  }
}

void *_read_bytes_function(uint64_t a1, void *key, size_t a3, void *a4)
{
  v25 = 0;
  *v26 = 0;
  ++*(a1 + 48);
  if (a4)
  {
    *a4 = 0;
  }

  v7 = NSMapGet(*(a1 + 24), key);
  if (!v7)
  {
LABEL_8:
    v11 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v13 = WeakRetained;
    if (v11 != 1)
    {
      v20 = [WeakRetained memoryCache];
      [v20 mapAddress:key size:a3 returnedAddress:v26 returnedSize:&v25];

      v21 = *(a1 + 44);
      if (*v26)
      {
        if ((v21 & 0xFFFFFFFE) == 2)
        {
          fprintf(*MEMORY[0x1E69E9848], "%#llx[%llu] --> %#llx[%llu]  READ_BYTES CACHE MISS (UNVALIDATED)\n");
        }
      }

      else if ((v21 - 1) <= 2)
      {
        fprintf(*MEMORY[0x1E69E9848], "%#llx[%llu] FAIL! READ_BYTES (UNVALIDATED) COULD NOT MAP\n");
      }

      goto LABEL_32;
    }

    v14 = [WeakRetained validateAddressRangeForSwiftRemoteMirror:key allowUnusedSplitLibs:{a3, 1}];

    if (!v14)
    {
      if ((*(a1 + 44) - 1) <= 2)
      {
        fprintf(*MEMORY[0x1E69E9848], "%#llx[%llu] FAIL! READ_BYTES REGION NOT FOUND\n");
      }

      goto LABEL_32;
    }

    [*v14 range];
    v15 = objc_loadWeakRetained((a1 + 64));
    v16 = [v15 memoryCache];
    [v16 mapAddress:key size:a3 returnedAddress:v26 returnedSize:&v25];

    v17 = *(a1 + 44);
    if (*v26)
    {
      if ((v17 & 0xFFFFFFFE) == 2)
      {
        v18 = *MEMORY[0x1E69E9848];
        v19 = [*v14 description];
        [v19 UTF8String];
        fprintf(v18, "%#llx[%llu] --> %#llx[%llu] in %s  READ_BYTES CACHE MISS (VALIDATED)  -------------\n");
LABEL_31:
      }
    }

    else if ((v17 - 1) <= 2)
    {
      v23 = *MEMORY[0x1E69E9848];
      v19 = [*v14 description];
      [v19 UTF8String];
      fprintf(v23, "%#llx[%llu] FAIL! READ_BYTES COULD NOT MAP, ALTHOUGH FOUND REGION %s\n");
      goto LABEL_31;
    }

LABEL_32:
    if (!v7)
    {
      v7 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
      NSMapInsert(*(a1 + 24), key, v7);
    }

    v24 = *v26;
    *v7 = *v26;
    v7[1] = v25;
    return getMemoryForRemoteMirror(v24, a3);
  }

  VMUClearCrashReporterInfo();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v25 = v9;
    *v26 = v8;
    v10 = *(a1 + 44);
    if (v9 < a3)
    {
      if ((v10 - 1) <= 2)
      {
        fprintf(*MEMORY[0x1E69E9848], "%#llx[%llu] --> %#llx[%llu]  FAIL! READ_BYTES CACHE HIT, BUT NEED TO MAP MORE\n", key, a3, v8, v9);
      }

      goto LABEL_8;
    }

    if (v10 == 3)
    {
      fprintf(*MEMORY[0x1E69E9848], "%#llx[%llu] --> %#llx[%llu]  READ_BYTES CACHE HIT\n", key, a3, v8, v9);
    }

    return getMemoryForRemoteMirror(v8, a3);
  }

  else
  {
    if ((*(a1 + 44) - 1) <= 2)
    {
      fprintf(*MEMORY[0x1E69E9848], "%#llx[%llu] --> 0x0[0]  NOT FOUND  READ_BYTES CACHE HIT\n", key, a3);
    }

    return 0;
  }
}

size_t _get_string_length(uint64_t a1, const void *a2)
{
  __n = 0;
  __s1 = 0;
  ++*(a1 + 52);
  v4 = NSMapGet(*(a1 + 32), a2);
  if (v4)
  {
    if (v4 == 0xFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    if (*(a1 + 44) == 3)
    {
      fprintf(*MEMORY[0x1E69E9848], "%#llx --> %llu  STRING_LENGTH CACHE HIT\n", a2, v5);
    }

    return v5;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = [WeakRetained validateAddressRangeForSwiftRemoteMirror:a2 allowUnusedSplitLibs:{0, 1}];

  if (v7)
  {
    v8 = [*v7 range];
    v10 = v9 - a2;
    v11 = objc_loadWeakRetained((a1 + 64));
    v12 = [v11 memoryCache];
    [v12 mapAddress:a2 size:v10 + v8 returnedAddress:&__s1 returnedSize:&__n];

    v13 = __s1;
    if (__s1)
    {
      v5 = __n;
      v14 = strnlen(__s1, __n);
      v15 = *(a1 + 44);
      if (v14 == v5)
      {
        if ((v15 - 1) <= 2)
        {
          fprintf(*MEMORY[0x1E69E9848], "%#llx  FAIL! STRING_LENGTH DID NOT FIND NULL TERMINATOR IN %llu BYTES FOR STRING LENGTH OF %.*s\n", a2, v5, v5, v13);
        }
      }

      else
      {
        v18 = v14;
        if ((v15 & 0xFFFFFFFE) == 2)
        {
          fprintf(*MEMORY[0x1E69E9848], "%#llx --> %llu  STRING_LENGTH CACHE MISS OF %s\n", a2, v14, v13);
        }

        v5 = v18;
      }

      goto LABEL_20;
    }

    if ((*(a1 + 44) - 1) <= 2)
    {
      v16 = *MEMORY[0x1E69E9848];
      v17 = [*v7 description];
      fprintf(v16, "%#llx FAIL! STRING_LENGTH COULD NOT MAP, ALTHOUGH FOUND REGION %s\n", a2, [v17 UTF8String]);
    }
  }

  else if ((*(a1 + 44) - 1) <= 2)
  {
    fprintf(*MEMORY[0x1E69E9848], "%#llx  FAIL! NO VM REGION FOR STRING LENGTH\n", a2);
  }

  v5 = 0;
LABEL_20:
  if (!NSMapGet(*(a1 + 24), a2))
  {
    v19 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v20 = __n;
    *v19 = __s1;
    v19[1] = v20;
    NSMapInsert(*(a1 + 24), a2, v19);
  }

  if (v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  NSMapInsert(*(a1 + 32), a2, v21);
  return v5;
}

uint64_t _get_symbol_address(id *a1, const char *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v34 = 0;
  v35 = 0;
  v33 = &unk_1C6872315;
  if (isatty(0))
  {
    v6 = isatty(2) != 0;
  }

  else
  {
    v6 = 0;
  }

  if (!strncmp(a2, "objc", 4uLL) || !strncmp(a2, "_objc", 5uLL))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    [WeakRetained libobjcSymbolOwner];
LABEL_15:

    goto LABEL_16;
  }

  if (!strncmp(a2, "swift", 5uLL) || !strncmp(a2, "_swift_debug", 0xCuLL))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v8 = [WeakRetained vmuTask];
    if (![v8 isExclaveCore])
    {
LABEL_13:
      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      goto LABEL_14;
    }

LABEL_12:
    CSSymbolicatorGetSymbolOwner();
LABEL_14:

    goto LABEL_15;
  }

  if (!strncmp(a2, "_swift_concurrency", 0x12uLL))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v8 = [WeakRetained vmuTask];
    if (![v8 isExclaveCore])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_16:
  if (CSIsNull())
  {
    v9 = v31[4];
    v10 = v31[5];
  }

  else
  {
    SymbolWithName = CSSymbolOwnerGetSymbolWithName();
    v12 = v31;
    v31[4] = SymbolWithName;
    v12[5] = v13;
  }

  if (CSIsNull())
  {
    CSSymbolicatorForeachSymbolOwnerAtTime();
    v14 = v31[4];
    v15 = v31[5];
    if (CSIsNull())
    {
      SymbolWithNameAtTime = CSSymbolicatorGetSymbolWithNameAtTime();
      v17 = v31;
      v31[4] = SymbolWithNameAtTime;
      v17[5] = v18;
      if ((CSIsNull() & 1) == 0)
      {
        v19 = v31[4];
        v20 = v31[5];
        CSSymbolGetSymbolOwner();
        Name = CSSymbolOwnerGetName();
        v22 = v31[4];
        v23 = v31[5];
        if (!(CSIsNull() & 1 | !v6))
        {
          fprintf(*MEMORY[0x1E69E9848], "Symbolication.framework _get_symbol_owner found requested symbol %s in unexpected non-Swift library %s\n", a2, Name);
        }
      }
    }
  }

  v24 = v31[4];
  v25 = v31[5];
  if (CSIsNull())
  {
    if (v6)
    {
      fprintf(*MEMORY[0x1E69E9848], "Symbolication.framework _get_symbol_owner did not find requested symbol %s\n", a2);
    }

    Range = 0;
  }

  else
  {
    v27 = v31[4];
    v28 = v31[5];
    Range = CSSymbolGetRange();
  }

  _Block_object_dispose(&v30, 8);
  return Range;
}

void sub_1C68107DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_sb16_s24_s32_w56_w64_w72(id *a1)
{
  objc_destroyWeak(a1 + 7);
  objc_destroyWeak(a1 + 8);

  objc_destroyWeak(a1 + 9);
}

void *getMemoryForRemoteMirror(const void *a1, size_t size)
{
  if (shouldCopyMemoryForRemoteMirror_onceToken != -1)
  {
    _free_bytes_function_cold_1();
  }

  if (shouldCopyMemoryForRemoteMirror_result != 1 || !a1)
  {
    return a1;
  }

  v4 = malloc_type_calloc(1uLL, size, 0x7CB3E7DuLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, size);
}

uint64_t ___get_symbol_address_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  result = CSIsNull();
  if (result)
  {
    Name = CSSymbolOwnerGetName();
    result = strncmp(Name, "libswift", 8uLL);
    if (!result)
    {
      v7 = *(a1 + 40);
      SymbolWithName = CSSymbolOwnerGetSymbolWithName();
      v9 = *(*(a1 + 32) + 8);
      *(v9 + 32) = SymbolWithName;
      *(v9 + 40) = v10;
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 32);
      v13 = *(v11 + 40);
      result = CSIsNull();
      if ((result & 1) == 0 && *(a1 + 48) == 1)
      {
        return fprintf(*MEMORY[0x1E69E9848], "Symbolication.framework _get_symbol_owner found requested symbol %s in unexpected Swift library %s\n", *(a1 + 40), Name);
      }
    }
  }

  return result;
}

uint64_t btref_decode_unslide(void *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0xC000003E) != 0)
  {
    return 0;
  }

  v16 = v5;
  v17 = v6;
  v10 = 12 - __clz(a2);
  if (!(a2 >> 20))
  {
    v10 = 0;
  }

  v15 = *(a4 + 8 * v10 + 88) + a2;
  [a1 peekAtAddress:? size:? returnsBuf:?];
  v11 = *(v15 + 4);
  result = v11 & 0xF;
  if ((v11 & 0xF) != 0)
  {
    v12 = (v15 + 12);
    v13 = v11 & 0xF;
    do
    {
      v14 = *v12++;
      *a3++ = v14 + a5;
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_1C68158B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id descriptionForCallstackFrames(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v4;
  v19 = v3;
  if (*(a1 + 24))
  {
    v6 = [v4 stringByAppendingString:v3];

    v7 = [v6 stringByAppendingString:@"\n"];

    if (*(a1 + 40))
    {
      v8 = 0;
      do
      {
        v9 = *(*(a1 + 24) + 8 * v8);
        CSSymbolicatorGetSymbolWithAddressAtTime();
        CSSymbolGetSymbolOwner();
        v10 = *(*(a1 + 24) + 8 * v8);
        CSSymbolicatorGetSectionWithAddressAtTime();
        Name = CSSymbolGetName();
        if (Name)
        {
          v12 = Name;
        }

        else
        {
          v12 = "symbol name not found";
        }

        v13 = *(*(a1 + 24) + 8 * v8);
        v14 = CSSymbolOwnerGetName();
        v15 = CSRegionGetName();
        v5 = [v7 stringByAppendingFormat:@"\t[%3d] %#08.8qx  {%s.%s + %#qx} %s\n", v8, v13, v14, v15, *(*(a1 + 24) + 8 * v8) - CSRegionGetRange(), v12];

        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = [v5 stringByAppendingFormat:@"\t\tframe pointer %#llx\n", *(v16 + 8 * v8)];

          v5 = v17;
        }

        ++v8;
        v7 = v5;
      }

      while (v8 < *(a1 + 40));
    }

    else
    {
      v5 = v7;
    }
  }

  return v5;
}

__CFString *VMUPlatformNameForPlatform(uint64_t a1)
{
  if ((a1 - 1) >= 0x18)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown-%u", a1];
  }

  else
  {
    v2 = off_1E8279728[(a1 - 1)];
  }

  return v2;
}

__CFString *VMUPlatformNameForTask()
{
  v0 = CSPlatformForTask();

  return VMUPlatformNameForPlatform(v0);
}

BOOL VMUProcessIsAnalyzable(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return !kill(result, 0) || !getuid() && getpgid(v1) > 0;
  }

  return result;
}

uint64_t pidFromHint(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 length])
  {
    v5 = 0;
    goto LABEL_41;
  }

  v3 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v4 = [v3 invertedSet];

  if ([v2 rangeOfCharacterFromSet:v4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v2 integerValue];
    goto LABEL_40;
  }

  v33 = v4;
  v37 = v2;
  context = objc_autoreleasePoolPush();
  v6 = getpid();
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = +[VMUProcInfo getProcessIds];
  v7 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v39;
  do
  {
    v11 = 0;
    v12 = v9;
    do
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v38 + 1) + 8 * v11);
      v14 = objc_autoreleasePoolPush();
      v15 = [v13 integerValue];
      if (v6 == v15)
      {
        v9 = v12;
        goto LABEL_22;
      }

      v9 = [[VMUProcInfo alloc] initWithPid:v15];

      v16 = [(VMUProcInfo *)v9 procTableName];
      v17 = [(VMUProcInfo *)v9 name];
      if (([v17 isEqualToString:v37] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v37))
      {
        haveSufficientAccessToProcess = _haveSufficientAccessToProcess(v15);
        v19 = v35;
        if (!haveSufficientAccessToProcess)
        {
          goto LABEL_21;
        }
      }

      else
      {
        [v17 rangeOfString:v37];
        if (!v20)
        {
          [v16 rangeOfString:v37];
          if (!v21)
          {
            goto LABEL_21;
          }
        }

        v22 = _haveSufficientAccessToProcess(v15);
        v19 = v34;
        if (!v22)
        {
          goto LABEL_21;
        }
      }

      [v19 addObject:v9];
LABEL_21:

      v12 = v9;
LABEL_22:
      objc_autoreleasePoolPop(v14);
      ++v11;
    }

    while (v8 != v11);
    v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v8);
LABEL_26:

  v23 = [v35 count];
  v2 = v37;
  if (!v23)
  {
    v25 = [v34 count];
    if (v25)
    {
      if (v25 == 1)
      {
        v24 = [v34 lastObject];

        v5 = [(VMUProcInfo *)v24 pid];
        v26 = *MEMORY[0x1E69E9848];
        v27 = [(VMUProcInfo *)v24 name];
        fprintf(v26, "Found process %d (%s) from partial name %s\n", v5, [v27 UTF8String], objc_msgSend(v37, "UTF8String"));

LABEL_32:
        v9 = v24;
        goto LABEL_39;
      }

      if (isatty(0) && isatty(2))
      {
        v28 = MEMORY[0x1E69E9848];
        fprintf(*MEMORY[0x1E69E9848], "You have access to multiple processes that match the partial name %s:\n", [v37 UTF8String]);
        v29 = v34;
        goto LABEL_34;
      }
    }

    v5 = 0;
    goto LABEL_39;
  }

  if (v23 == 1)
  {
    v24 = [v35 lastObject];

    v5 = [(VMUProcInfo *)v24 pid];
    goto LABEL_32;
  }

  v28 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "You have access to multiple processes named %s:\n", [v37 UTF8String]);
  v29 = v35;
LABEL_34:
  v5 = choosePid(v29);
  fputc(10, *v28);
LABEL_39:

  objc_autoreleasePoolPop(context);
  v4 = v33;
LABEL_40:

LABEL_41:
  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL _haveSufficientAccessToProcess(_BOOL8 a1)
{
  if (!VMUProcessIsAnalyzable(a1))
  {
    return 0;
  }

  v1 = MEMORY[0x1E69E9A60];
  v2 = *MEMORY[0x1E69E9A60];
  v3 = task_read_for_pid();
  v4 = v3 == 0;
  if (!v3)
  {
    mach_port_deallocate(*v1, 0);
  }

  return v4;
}

uint64_t choosePid(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    for (i = 0; i < v2; v3 = ++i)
    {
      v6 = [v1 objectAtIndexedSubscript:v3];

      if (i > 0x19)
      {
        __strlcpy_chk();
      }

      else
      {
        snprintf(__str, 3uLL, "%c)", i + 97);
      }

      v7 = *MEMORY[0x1E69E9848];
      v8 = [v6 pid];
      v9 = [v6 userAppName];
      fprintf(v7, "    %s %5d %s\n", __str, v8, [v9 UTF8String]);

      v4 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  if (isatty(0) && isatty(2))
  {
    v26 = v2;
    v10 = "Which process? (letter or PID) ";
    v11 = MEMORY[0x1E69E9850];
    while (1)
    {
      fwrite(v10, 0x1FuLL, 1uLL, *MEMORY[0x1E69E9848]);
      for (j = *v11; !fgets(__str, 8, j); clearerr(j))
      {
        if (!ferror(j) || *__error() != 4)
        {
          exit(0);
        }
      }

      if (__str[0] >= 97 && __str[1] == 10 && (__str[0] - 97) < v26)
      {
        v14 = [v1 objectAtIndexedSubscript:?];
        v15 = [v14 pid];

        if (v15)
        {
          break;
        }
      }

      v31 = 0;
      if (sscanf(__str, "%d", &v31) == 1)
      {
        v16 = v10;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v1;
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v18)
        {
          v19 = v18;
          LODWORD(v15) = 0;
          v20 = *v28;
          do
          {
            v21 = 0;
            v22 = v6;
            do
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v6 = *(*(&v27 + 1) + 8 * v21);

              v23 = [v6 pid];
              if (v23 == v31)
              {
                v15 = v31;
              }

              else
              {
                v15 = v15;
              }

              ++v21;
              v22 = v6;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v19);
        }

        else
        {
          v15 = 0;
        }

        v6 = 0;
        v10 = v16;
        if (v15)
        {
          break;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

id psName(uint64_t a1)
{
  v1 = [[VMUProcInfo alloc] initWithPid:a1];
  v2 = [(VMUProcInfo *)v1 userAppName];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 lastPathComponent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _CRGetOSVersionDictionary()
{
  if (_CRGetOSVersionDictionary_onceToken != -1)
  {
    _CRGetOSVersionDictionary_cold_1();
  }

  return _CRGetOSVersionDictionary__osVersionDict;
}

CFStringRef _CRCopyProcessNameForPID(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = buffer;
  bzero(buffer, 0x401uLL);
  v3 = proc_name(a1, buffer, 0x400u);
  if (v3 < 0 || (buffer[v3] = 0, (v3 - 15) <= 0xFFFFFFF1))
  {
    v2 = buffer;
    v4 = proc_pidpath(a1, buffer, 0x400u);
    if ((v4 & 0x80000000) == 0)
    {
      buffer[v4] = 0;
      v5 = strrchr(buffer, 47);
      if (v5)
      {
        v2 = v5 + 1;
      }
    }
  }

  result = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _CRCopyExecutablePathForPID(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x401uLL);
  v2 = proc_pidpath(a1, buffer, 0x400u);
  if ((v2 & 0x80000000) == 0)
  {
    buffer[v2] = 0;
  }

  result = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _CRCopyExecutablePathAndNameForPIDDetectingInconsistencies(int a1, CFStringRef *a2, _BYTE *a3, CFStringRef *a4, _BYTE *a5)
{
  v5 = a5;
  v20 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *a5 = 0;
  v10 = buffer;
  bzero(buffer, 0x401uLL);
  v11 = proc_pidpath(a1, buffer, 0x400u);
  if ((v11 & 0x80000000) == 0)
  {
    buffer[v11] = 0;
  }

  v12 = strrchr(buffer, 47);
  if (v12)
  {
    v10 = v12 + 1;
  }

  bzero(__s1, 0x401uLL);
  v13 = proc_name(a1, __s1, 0x400u);
  if (v13 < 0)
  {
    goto LABEL_9;
  }

  __s1[v13] = 0;
  if ((v13 - 15) > 0xFFFFFFF1)
  {
    v14 = strcmp(__s1, v10);
    v5 = a3;
    v10 = __s1;
    if (!v14)
    {
      v10 = __s1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v13 || strncmp(__s1, v10, 0xFuLL))
  {
LABEL_9:
    *a3 = 1;
LABEL_11:
    *v5 = 1;
  }

LABEL_12:
  v15 = *MEMORY[0x1E695E480];
  *a2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], buffer, 0x8000100u);
  result = CFStringCreateWithCString(v15, v10, 0x8000100u);
  *a4 = result;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *VMUCreateRootNodeMarkingMap(void *a1)
{
  v1 = a1;
  v2 = [v1 nodeNamespaceSize];
  v3 = malloc_type_calloc(1uLL, ((v2 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v3 = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VMUCreateRootNodeMarkingMap_block_invoke;
  v5[3] = &__block_descriptor_40_e25_v44__0I8___Qb60b4__12_B36l;
  v5[4] = v3;
  [v1 enumerateObjectsWithBlock:v5];

  return v3;
}

BOOL __VMUCreateRootNodeMarkingMap_block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = VMUGraphNodeIsRoot(a3);
  if (result)
  {
    v6 = *(a1 + 32);
    if (*v6 > a2)
    {
      *(v6 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
    }
  }

  return result;
}

void VMUWithRootNodeMarkingMap(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = VMUCreateRootNodeMarkingMap(v5);
    v3[2](v3, v4);
    if (v4)
    {
      free(v4);
    }
  }
}

uint64_t VMULiteZoneIndex(void *a1)
{
  v1 = a1;
  if ([v1 zoneCount])
  {
    v2 = 0;
    v3 = 0xFFFFFFFFLL;
    do
    {
      v4 = [v1 zoneNameForIndex:v2];
      if ([v4 hasPrefix:@"MallocStackLoggingLiteZone"])
      {
        if ([v4 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"])
        {
          v3 = v3;
        }

        else
        {
          v3 = v2;
        }
      }

      v2 = (v2 + 1);
    }

    while (v2 < [v1 zoneCount]);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

void VMUEnumerateVMAnnotatedMallocObjectsWithBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    v6 = [v3 nodeCount];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __VMUEnumerateVMAnnotatedMallocObjectsWithBlock_block_invoke;
    v7[3] = &unk_1E8279878;
    v10 = v15;
    v12 = v6;
    v8 = v3;
    v9 = v5;
    v11 = v13;
    [v8 enumerateRegionsWithBlock:v7];

    _Block_object_dispose(v13, 8);
    _Block_object_dispose(v15, 8);
  }
}

void sub_1C6819344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void __VMUEnumerateVMAnnotatedMallocObjectsWithBlock_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v8 = *(v6 + 8);
  v7 = v6 + 8;
  if (*(v8 + 24) < *(a1 + 64))
  {
    while (1)
    {
      v18 = 0uLL;
      v19 = 0;
      v9 = *(a1 + 32);
      if (v9)
      {
        [v9 nodeDetails:*(*v7 + 24)];
        if (((*(&v18 + 1) >> 60) | 4) == 5 && *(&v18 + 1) != 0x1000000000000000)
        {
          if (v18 - v5[1] >= v5[2])
          {
            goto LABEL_10;
          }

          v11 = *(a1 + 40);
          v12 = *(*(*(a1 + 48) + 8) + 24);
          v13 = *(v11 + 16);
          v16 = v18;
          v17 = v19;
          v13(v11, v12, &v16);
          if (*a3 == 1)
          {
            break;
          }
        }
      }

      ++*(*(*(a1 + 48) + 8) + 24);
      v14 = *(a1 + 48);
      v15 = *(v14 + 8);
      v7 = v14 + 8;
      if (*(v15 + 24) >= *(a1 + 64))
      {
        goto LABEL_10;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_10:
}

void sub_1C681CDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C681D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C681EF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C681FE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *VMUScanTypeScanDescription(unsigned int a1)
{
  if (a1 > 8)
  {
    return "";
  }

  else
  {
    return off_1E8279B10[a1];
  }
}

const char *VMUScanTypeKeywordDescription(int a1)
{
  if ((a1 - 2) > 6)
  {
    return "";
  }

  else
  {
    return off_1E8279B58[a1 - 2];
  }
}

const char *VMUScanTypeAsString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_1E8279B90[a1];
  }
}

__CFString *isSafeToLoadLibrary(uint64_t a1)
{
  *task_info_out = 0u;
  v8 = 0u;
  task_info_outCnt = 8;
  v6 = 0;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt) || (getpid(), csops_audittoken()))
  {
    v2 = @"Unable to verify csops flags";
  }

  else
  {
    v4 = v6;
    if ((v6 & 4) != 0)
    {
      v2 = 0;
    }

    else if (_dyld_shared_cache_real_path())
    {
      if ((v4 & 0x2000) != 0)
      {
        v2 = 0;
      }

      else
      {
        v2 = @"unexpected configuration. leaks is expected to either run with library validation or to be debuggable";
      }
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%s", @"failed to resolve canonical path for % in dyld shared cache.", a1];
    }
  }

  return v2;
}

uint64_t get_local_zone_count()
{
  v0 = *MEMORY[0x1E69E9A60];
  malloc_get_all_zones();
  return 0;
}

void task_foreach_malloc_zone(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VMUTask alloc] initWithTask:a1];
  VMUTask_foreach_malloc_zone(v4, v3);
}

uint64_t VMUEnumerateMallocBlocksInZone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, id, uint64_t, uint64_t, uint64_t, void (*)(int a1, void *aBlock, uint64_t a3, uint64_t a4, uint64_t a5)), void *a6, void *a7)
{
  v13 = a7;
  if ((a2 & 3) != 0)
  {
    if ([a6 hasPrefix:@"AttributeGraph_0x"])
    {
      a2 = a2 | 0x100;
    }

    else
    {
      a2 = a2;
    }
  }

  v14 = (*a5)(a1, v13, a2, a3, a4, vmuEnumerateMallocBlocksInZoneRecorderAdapter);

  return v14;
}

void vmuEnumerateMallocBlocksInZoneRecorderAdapter(int a1, void *aBlock, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = _Block_copy(aBlock);
  v8[2](v8, a3, a4, a5);
}

void task_enumerate_malloc_blocks(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __task_enumerate_malloc_blocks_block_invoke;
  v4[3] = &__block_descriptor_56_e82_i32__0Q8__malloc_introspection_t_________________________________I_16__NSString_24l;
  v5 = a1;
  v6 = a3;
  v4[4] = a2;
  v4[5] = a4;
  task_foreach_malloc_zone(a1, v4);
}

uint64_t __task_enumerate_malloc_blocks_block_invoke(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(task_name_t a1, mach_vm_address_t a2, mach_vm_size_t a3, mach_vm_address_t *a4), uint64_t), void *a4)
{
  v4 = a3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if ((v7 & 3) != 0)
  {
    v10 = [a4 hasPrefix:@"AttributeGraph_0x"];
    v4 = a3;
    if (v10)
    {
      v7 = v7 | 0x100;
    }

    else
    {
      v7 = v7;
    }
  }

  v11 = *v4;

  return v11(v6, v9, v7, a2, task_peek_natural_size, v8);
}

id task_get_malloc_ptrs_by_zone(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __task_get_malloc_ptrs_by_zone_block_invoke;
  v10[3] = &unk_1E8279C00;
  v11 = v3;
  v13 = a1;
  v5 = v4;
  v12 = v5;
  v6 = v3;
  task_foreach_malloc_zone(a1, v10);
  v7 = v12;
  v8 = v5;

  return v5;
}

uint64_t __task_get_malloc_ptrs_by_zone_block_invoke(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, VMURangeArray *, uint64_t, uint64_t, uint64_t (*)(task_name_t a1, mach_vm_address_t a2, mach_vm_size_t a3, mach_vm_address_t *a4), uint64_t (*)(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int a5)), void *a4)
{
  v7 = a4;
  if (!*(a1 + 32) || ((v8 = objc_alloc_init(VMUNonOverlappingRangeArray), v9 = *(a1 + 48), ![v7 hasPrefix:@"AttributeGraph_0x"]) ? (v10 = 6) : (v10 = 262), v11 = (*a3)(v9, &v8->super, v10, a2, task_peek_natural_size, nonOverlappingRecorder), -[VMUNonOverlappingRangeArray sortAndMergeRanges](v8, "sortAndMergeRanges"), objc_msgSend(*(a1 + 32), "setObject:forKey:", v8, v7), v8, !v11))
  {
    v12 = objc_alloc_init(VMURangeArray);
    v13 = *(a1 + 48);
    if ([v7 hasPrefix:@"AttributeGraph_0x"])
    {
      v14 = 257;
    }

    else
    {
      v14 = 1;
    }

    v11 = (*a3)(v13, v12, v14, a2, task_peek_natural_size, ptrsRecorder);
    [*(a1 + 40) setObject:v12 forKey:v7];
  }

  return v11;
}

uint64_t nonOverlappingRecorder(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (a5)
  {
    v5 = a5;
    do
    {
      --v5;
      v8 = *a4;
      v9 = a4[1];
      a4 += 2;
      result = [a2 addOrExtendRange:{v8, v9}];
    }

    while (v5);
  }

  return result;
}

uint64_t ptrsRecorder(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (a5)
  {
    v5 = a5;
    do
    {
      --v5;
      v8 = *a4;
      v9 = a4[1];
      a4 += 2;
      result = [a2 addRange:{v8, v9}];
    }

    while (v5);
  }

  return result;
}

id task_get_malloc_ptrs(uint64_t a1)
{
  v2 = objc_opt_new();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __task_enumerate_malloc_blocks_block_invoke;
  v4[3] = &__block_descriptor_56_e82_i32__0Q8__malloc_introspection_t_________________________________I_16__NSString_24l;
  v5 = a1;
  v6 = 1;
  v4[4] = v2;
  v4[5] = ptrsRecorder;
  task_foreach_malloc_zone(a1, v4);

  return v2;
}

uint64_t __remoteZoneIntrospection_block_invoke_2(uint64_t a1, int a2)
{
  [remoteZoneIntrospection_previouslySeenTasksAndZonesLock lock];
  if ([*(a1 + 32) isCore])
  {
    [*(a1 + 32) coreFilePath];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "taskPort")];
  }
  v4 = ;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v4, *(a1 + 40)];
  v6 = [remoteZoneIntrospection_previouslySeenTasksAndZones containsObject:v5];
  if ((v6 & 1) == 0 && a2)
  {
    [remoteZoneIntrospection_previouslySeenTasksAndZones addObject:v5];
  }

  [remoteZoneIntrospection_previouslySeenTasksAndZonesLock unlock];

  return v6 ^ 1u;
}

void __remoteZoneIntrospection_block_invoke_5(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  if ((*(a1[5] + 16))())
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
    v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Can't examine target process's malloc zone %@, so memory analysis will be incomplete or incorrect.\n", a1[4]];
    [v12 appendFormat:@"Reason: %@\n\n", v11];
    fputs([v12 UTF8String], *MEMORY[0x1E69E9848]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __remoteZoneIntrospection_block_invoke_5_cold_1(v12);
    }
  }

  *(*(a1[6] + 8) + 24) = 1;
  *(*(a1[7] + 8) + 24) = 0;
}

void *__remoteZoneIntrospection_block_invoke_89()
{
  v0 = "/System/Library/PrivateFrameworks/libmalloc_exclaves_introspector.framework/libmalloc_exclaves_introspector";
  if (os_variant_has_internal_content())
  {
    v1 = getenv("SYMBOLICATION_EXCLAVES_INTROSPECTOR_FRAMEWORK_PATH");
    if (v1)
    {
      v0 = v1;
    }
  }

  result = dlopen(v0, 133);
  if (result)
  {
    result = dlsym(result, "xzm_malloc_zone_introspect");
    remoteZoneIntrospection_exclaveIntrospectionDetails = result;
    if (result)
    {
      remoteZoneIntrospection_getExclaveIntrospectionSucceeded = 1;
    }
  }

  return result;
}

void _warnIfIntrospectionSymbolOwnersDiffer(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v11 = a1;
  if ((CSIsNull() & 1) == 0)
  {
    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
    if (CFUUIDBytes)
    {
      v6 = CFUUIDCreateFromUUIDBytes(0, *CFUUIDBytes);
      v7 = v6;
      if (a4 && v6)
      {
        if (!CFEqual(v6, a4))
        {
          Name = CSSymbolOwnerGetName();
          v9 = [v11 memoryCache];
          v10 = [v9 isDriverKit];

          if ((v10 & 1) == 0)
          {
            NSLog(&cfstr_SInTargetProce.isa, Name);
          }
        }
      }

      else if (!v6)
      {
        goto LABEL_10;
      }

      CFRelease(v7);
    }
  }

LABEL_10:
}

uint64_t VMUOAHRuntimeLocation()
{
  if (findOahFuncs_onceToken != -1)
  {
    VMUOAHRuntimeLocation_cold_1();
  }

  return oahRuntimeLocation;
}

id VMURegisterNameForIndex(uint64_t a1)
{
  if (a1 > 0x22)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown register index %u>", a1];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:VMURegisterNameForIndex_regNames[a1]];
  }
  v1 = ;

  return v1;
}

void *__findOahFuncs_block_invoke()
{
  result = dlopen("/usr/lib/liboah.dylib", 1);
  if (result)
  {
    v1 = result;
    oahFuncs = dlsym(result, "oah_get_x86_thread_state");
    result = dlsym(v1, "oah_get_runtime_location");
    qword_1EC1D0CB8 = result;
    if (result)
    {
      result = (result)();
      oahRuntimeLocation = result;
    }
  }

  return result;
}

uint64_t _compareSizeCount(int a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  if (v11 <= 0)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v14 = a2;
      }

      else
      {
        v14 = a3;
      }

      if (v14 > 0)
      {
        goto LABEL_5;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v12 = [v9 compare:v10];
        goto LABEL_6;
      }
    }

    v12 = 1;
    goto LABEL_6;
  }

LABEL_5:
  v12 = -1;
LABEL_6:

  return v12;
}

void sub_1C68276C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1C6828218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C6828340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C682843C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::hash<VMUFieldInfo * {__strong}>,std::equal_to<VMUFieldInfo * {__strong}>,true>,std::__unordered_map_equal<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::equal_to<VMUFieldInfo * {__strong}>,std::hash<VMUFieldInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUFieldInfo * {__strong},std::pair<VMUFieldInfo * {__strong},unsigned int>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  v13 = v11[2];
  if (v13 != *a2 && ([v13 isEqual:?] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_1C6828D54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUClassInfo * {__strong},std::pair<VMUClassInfo * {__strong},unsigned int>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1C6828FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned int>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::find<VMUClassInfo * {__strong}>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *&v2 <= v3 ? v3 % *&v2 : *a2;
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,unsigned int &>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUClassInfo * {__strong},VMUClassInfo * {__strong}&,unsigned int &>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1C6829758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::hash<VMUFieldInfo * {__strong}>,std::equal_to<VMUFieldInfo * {__strong}>,true>,std::__unordered_map_equal<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::equal_to<VMUFieldInfo * {__strong}>,std::hash<VMUFieldInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>>>::__emplace_unique_key_args<VMUFieldInfo * {__strong},std::piecewise_construct_t const&,std::tuple<VMUFieldInfo * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  v13 = v11[2];
  if (v13 != *a2 && ([v13 isEqual:?] & 1) == 0)
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_1C6829A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::hash<VMUFieldInfo * {__strong}>,std::equal_to<VMUFieldInfo * {__strong}>,true>,std::__unordered_map_equal<VMUFieldInfo * {__strong},std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>,std::equal_to<VMUFieldInfo * {__strong}>,std::hash<VMUFieldInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUFieldInfo * {__strong},unsigned int>>>::find<VMUFieldInfo * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        v13 = v11[2];
        if (v13 == *a2 || ([v13 isEqual:?] & 1) != 0)
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::find<SwiftFieldKey>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](&v14, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 24) ^ *(a2 + 28) ^ *(a2 + 32);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 24) ^ *(a2 + 28) ^ *(a2 + 32);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (SwiftFieldKey::operator==(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL SwiftFieldKey::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return !memcmp(a1, a2, v3) && *(v7 + 6) == *(v6 + 6) && *(v7 + 7) == *(v6 + 7) && v7[4] == v6[4];
}

void *std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::__emplace_unique_key_args<SwiftFieldKey,std::piecewise_construct_t const&,std::tuple<SwiftFieldKey const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](v15, a2) ^ *(a2 + 24);
  v5 = *(a2 + 28) ^ *(a2 + 32);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<SwiftFieldKey const&>,std::tuple<>>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!SwiftFieldKey::operator==(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1C6829FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SwiftFieldKey,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C682A0BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SwiftFieldKey,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SwiftFieldKey,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1C682A22C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::__unordered_map_hasher<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::hash<VMUClassInfo * {__strong}>,std::equal_to<VMUClassInfo * {__strong}>,true>,std::__unordered_map_equal<VMUClassInfo * {__strong},std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>,std::equal_to<VMUClassInfo * {__strong}>,std::hash<VMUClassInfo * {__strong}>,true>,std::allocator<std::__hash_value_type<VMUClassInfo * {__strong},unsigned int>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<SwiftFieldKey,unsigned int>,std::__unordered_map_hasher<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::hash<SwiftFieldKey>,std::equal_to<SwiftFieldKey>,true>,std::__unordered_map_equal<SwiftFieldKey,std::__hash_value_type<SwiftFieldKey,unsigned int>,std::equal_to<SwiftFieldKey>,std::hash<SwiftFieldKey>,true>,std::allocator<std::__hash_value_type<SwiftFieldKey,unsigned int>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id descriptionForTypeEncoding(unsigned __int8 *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __descriptionForTypeEncoding_block_invoke;
  v4[3] = &unk_1E827A0F8;
  v4[4] = &v5;
  v4[5] = a2;
  _parse_type(a1, 1, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1C682A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _parse_type(unsigned __int8 *a1, int a2, void *a3)
{
  v41 = a3;
  if (a2)
  {
    v5 = [MEMORY[0x1E696AD60] string];
    if (!a1)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v5 = 0;
    if (!a1)
    {
      goto LABEL_158;
    }
  }

  v6 = *a1;
  if (!*a1)
  {
    v8 = 0;
LABEL_156:
    v38 = v41[2];
    goto LABEL_157;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  while (1)
  {
    if (v6 > 0x50u)
    {
      switch(v6)
      {
        case '[':
          if (!v8 && a2)
          {
            v8 = [MEMORY[0x1E696AD60] string];
          }

          v10 = a1 + 1;
          v11 = a1[1];
          if ((v11 - 48) > 9)
          {
            v12 = 0;
            v13 = a1 + 1;
            if (a2)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v12 = 0;
            v13 = a1 + 1;
            do
            {
              v12 = 10 * v12 + (v11 - 48);
              v14 = *++v13;
              LOBYTE(v11) = v14;
            }

            while ((v14 - 48) < 0xA);
            if (a2)
            {
LABEL_22:
              [v8 appendFormat:@"[%.*s]", v13 - v10, v10];
            }
          }

          a1 = v13 - 1;
          v9 *= v12;
          break;
        case '\\':
        case '_':
        case 'a':
        case 'e':
        case 'g':
        case 'h':
        case 'j':
        case 'k':
        case 'm':
        case 'n':
        case 'o':
        case 'p':
        case 't':
        case 'u':
        case 'w':
        case 'x':
        case 'y':
        case 'z':
          goto LABEL_78;
        case ']':
          goto LABEL_105;
        case '^':
          ++v7;
          goto LABEL_105;
        case 'b':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"bitfield:";
          goto LABEL_104;
        case 'c':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"char";
          goto LABEL_104;
        case 'd':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"double";
          goto LABEL_104;
        case 'f':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"float";
          goto LABEL_104;
        case 'i':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"int32_t";
          goto LABEL_104;
        case 'l':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"long";
          goto LABEL_104;
        case 'q':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"int64_t";
          goto LABEL_104;
        case 'r':
          if (!a2)
          {
            goto LABEL_105;
          }

          v23 = v5;
          v24 = @"const ";
          goto LABEL_84;
        case 's':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"short";
          goto LABEL_104;
        case 'v':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"void";
          goto LABEL_104;
        case '{':
          goto LABEL_39;
        default:
          if (v6 != 81)
          {
            if (v6 != 83)
            {
              goto LABEL_78;
            }

            if (a2)
            {
              v15 = v5;
              v16 = @"ushort";
              goto LABEL_104;
            }

            goto LABEL_105;
          }

          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"uint64_t";
          goto LABEL_104;
      }

      goto LABEL_105;
    }

    if (v6 <= 0x3Fu)
    {
      break;
    }

    if (v6 > 0x42u)
    {
      switch(v6)
      {
        case 'C':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"unsigned char";
          break;
        case 'I':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"uint32_t";
          break;
        case 'L':
          if (!a2)
          {
            goto LABEL_105;
          }

          v15 = v5;
          v16 = @"ulong";
          break;
        default:
          goto LABEL_78;
      }

LABEL_104:
      [v15 appendString:v16];
      v26 = *a1;
      goto LABEL_105;
    }

    if (v6 == 64)
    {
      v25 = a1[1];
      if (v25 == 34)
      {
        v29 = 0;
        v31 = a1[2];
        a1 += 2;
        v30 = v31;
        v32 = a1;
        v33 = v31;
        if (v31)
        {
          do
          {
            if (v33 == 34)
            {
              break;
            }

            v34 = *++a1;
            v33 = v34;
            v29 = (v29 + 1);
          }

          while (v34);
        }

        if (a2)
        {
          v35 = v30 == 60;
          v36 = "";
          v37 = "id ";
          if (!v35)
          {
            v37 = "";
            v36 = "*";
          }

          [v5 appendFormat:@"%s%.*s%s", v37, v29, v32, v36];
        }
      }

      else if (v25 == 63)
      {
        if (a2)
        {
          [v5 appendString:@"id?"];
        }

        ++a1;
      }

      else if (a2)
      {
        [v5 appendString:@"id"];
      }

      goto LABEL_105;
    }

    if (v6 != 65)
    {
      if (!a2)
      {
        goto LABEL_105;
      }

      v15 = v5;
      v16 = @"BOOL";
      goto LABEL_104;
    }

    if (a2)
    {
      v23 = v5;
      v24 = @"_Atomic ";
      goto LABEL_84;
    }

LABEL_105:
    v27 = *++a1;
    v6 = v27;
    if (!v27)
    {
      for (; v7; --v7)
      {
        if (a2)
        {
          [v5 appendString:@"*"];
        }
      }

      goto LABEL_156;
    }
  }

  if (v6 > 0x29u)
  {
    switch(v6)
    {
      case '*':
        if (!a2)
        {
          goto LABEL_105;
        }

        v15 = v5;
        v16 = @"char*";
        break;
      case ':':
        if (!a2)
        {
          goto LABEL_105;
        }

        v15 = v5;
        v16 = @"SEL";
        goto LABEL_104;
      case '?':
        if (!a2)
        {
          goto LABEL_105;
        }

        v15 = v5;
        v16 = @"?";
        break;
      default:
        goto LABEL_78;
    }

    goto LABEL_104;
  }

  if (v6 == 35)
  {
    if (!a2)
    {
      goto LABEL_105;
    }

    v15 = v5;
    v16 = @"Class";
    goto LABEL_104;
  }

  if (v6 == 37)
  {
    if (a2)
    {
      v23 = v5;
      v24 = @"atomic ";
LABEL_84:
      [v23 appendString:v24];
      goto LABEL_105;
    }

    goto LABEL_105;
  }

  if (v6 != 40)
  {
LABEL_78:
    if (a2)
    {
      [v5 appendFormat:@"%c", v6];
    }

    goto LABEL_105;
  }

LABEL_39:
  v17 = a1 + 1;
  v18 = 1;
  ++a1;
  while (2)
  {
    v19 = *a1;
    v20 = 1;
    if (v19 > 0x7A)
    {
      if (v19 == 123)
      {
        goto LABEL_48;
      }

      if (v19 == 125)
      {
        goto LABEL_47;
      }

LABEL_49:
      ++a1;
      continue;
    }

    break;
  }

  if (v19 != 40)
  {
    if (v19 != 41)
    {
      if (!*a1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

LABEL_47:
    v20 = -1;
  }

LABEL_48:
  v18 += v20;
  if (v18)
  {
    goto LABEL_49;
  }

LABEL_50:
  v21 = 0;
  for (i = v17; ; ++i)
  {
    if (!*i)
    {
      goto LABEL_155;
    }

    if (*i == 61)
    {
      if (!*a1)
      {
        goto LABEL_155;
      }

LABEL_111:
      if (a2)
      {
        v28 = "struct";
        if (v6 == 40)
        {
          v28 = "union";
        }

        if (*v17 == 63)
        {
          [v5 appendFormat:@"<unnamed %s>", v28, v39, v40];
        }

        else
        {
          [v5 appendFormat:@"%s %.*s", v28, v21, v17];
        }
      }

      goto LABEL_105;
    }

    if (i >= a1)
    {
      break;
    }

    v21 = (v21 + 1);
  }

  if (*a1 && *i)
  {
    goto LABEL_111;
  }

LABEL_155:
  v38 = v41[2];
LABEL_157:
  v38();

LABEL_158:
}