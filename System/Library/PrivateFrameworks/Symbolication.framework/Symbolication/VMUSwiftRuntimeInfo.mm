@interface VMUSwiftRuntimeInfo
- (VMUSwiftRuntimeInfo)initWithSwiftCore:(_CSTypeRef)a3 memoryReader:(id)a4 task:(id)a5;
@end

@implementation VMUSwiftRuntimeInfo

- (VMUSwiftRuntimeInfo)initWithSwiftCore:(_CSTypeRef)a3 memoryReader:(id)a4 task:(id)a5
{
  opaque_2 = a3._opaque_2;
  opaque_1 = a3._opaque_1;
  v68[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v65.receiver = self;
  v65.super_class = VMUSwiftRuntimeInfo;
  v11 = [(VMUSwiftRuntimeInfo *)&v65 init];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [v10 isExclaveCore];
  v13 = v9;
  v14 = CSIsNull();
  v15 = v14;
  if ((v12 | v14))
  {

    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    CSSymbolOwnerGetSymbolWithMangledName();
    if ((CSIsNull() & 1) != 0 || (Range = CSSymbolGetRange(), (v17 = (*(v13 + 2))(v13, Range, 2)) == 0) || !*v17)
    {

LABEL_12:
      v18 = 0;
      goto LABEL_13;
    }
  }

  if (!_copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferenceMarkerMask", opaque_1, opaque_2, 8uLL, v11 + 8))
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x3010000000;
    v63 = 0;
    v64 = 0;
    v62 = &unk_1C6872315;
    CSSymbolOwnerForeachSection();
    v21 = v60[4];
    v22 = v60[5];
    if (CSIsNull())
    {
      v23 = *MEMORY[0x1E69E9848];
      CSSymbolOwnerGetPath();
      fprintf(v23, "NO __DATA_DIRTY,__objc_imageinfo section in %s\n");
LABEL_16:
      _Block_object_dispose(&v59, 8);
      goto LABEL_12;
    }

    if ([v10 isExclave])
    {
      v24 = 7;
    }

    else
    {
      v25 = v60[4];
      v26 = v60[5];
      v27 = CSRegionGetRange();
      if (v27)
      {
        v28 = (*(v13 + 2))(v13, v27, 8);
        if (!v28)
        {
          v58 = *MEMORY[0x1E69E9848];
          CSSymbolOwnerGetPath();
          fprintf(v58, "Unable to read __DATA __objc_imageinfo from %s\n");
          goto LABEL_16;
        }

        v24 = *(v28 + 5);
      }

      else
      {
        v24 = 0;
      }
    }

    v29 = [v10 isExclaveCore];
    v30 = 0x8000000000000001;
    if (v29)
    {
      v30 = 0;
    }

    *(v11 + 1) = v30;
    *(v11 + 2) = v29 ^ 1u;
    v31 = [v10 isExclaveCore];
    v32 = -8;
    if (v31)
    {
      v32 = -1;
    }

    *(v11 + 3) = v32;
    if (v24 <= 4)
    {
      v33 = 0;
      v11[32] = 0;
      *(v11 + 40) = xmmword_1C68583E0;
      *(v11 + 7) = 0;
      v11[64] = 0;
      v39 = 65;
    }

    else
    {
      v33 = 1;
      v11[32] = 1;
      __asm { FMOV            V0.2D, #-2.0 }

      *(v11 + 40) = _Q0;
      *(v11 + 7) = 0x3FFFFFFFFFFFFFFFLL;
      *(v11 + 32) = 768;
      if (v24 < 7)
      {
LABEL_32:
        _Block_object_dispose(&v59, 8);
        goto LABEL_33;
      }

      v39 = 96;
    }

    v11[v39] = v33;
    goto LABEL_32;
  }

  _copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferenceMarkerValue", opaque_1, opaque_2, 8uLL, v11 + 16);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferencePointerMask", opaque_1, opaque_2, 8uLL, v11 + 24);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_nativeWeakReferencePointerIsSideTable", opaque_1, opaque_2, 1uLL, v11 + 32);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_refcountIsSideTableMarkerMask", opaque_1, opaque_2, 8uLL, v11 + 40);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_refcountIsSideTableMarkerValue", opaque_1, opaque_2, 8uLL, v11 + 48);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_sideTablePointerMask", opaque_1, opaque_2, 8uLL, v11 + 56);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_sideTablePointerRightShift", opaque_1, opaque_2, 1uLL, v11 + 64);
  _copy_remote_mangled_symbol_value(v13, "_swift_debug_sideTablePointerLeftShift", opaque_1, opaque_2, 1uLL, v11 + 65);
  v11[96] = 1;
LABEL_33:
  Path = CSSymbolOwnerGetPath();
  if (Path)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
    v42 = VMUSanitizePath(v41);

    v43 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:@"Swift weak reference storage" binaryPath:v42 type:16];
    [v43 setDefaultScanType:4];
    v44 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"_owner" type:@"^@" scan:4 offset:0 size:8];
    v45 = [v43 mutableCopy];
    v46 = *(v11 + 9);
    *(v11 + 9) = v45;

    v47 = *(v11 + 9);
    v68[0] = v44;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:1];
    [v47 addFields:v48];

    v49 = [(VMUFieldInfo *)v44 mutableCopy];
    [v49 setScanType:0];
    v50 = [v43 mutableCopy];
    v51 = *(v11 + 10);
    *(v11 + 10) = v50;

    v52 = *(v11 + 10);
    v67 = v49;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
    [v52 addFields:v53];

    v54 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:@"Swift unowned reference storage" binaryPath:v42 type:16];
    v55 = *(v11 + 11);
    *(v11 + 11) = v54;

    [*(v11 + 11) setDefaultScanType:4];
    v56 = *(v11 + 11);
    v66 = v44;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    [v56 addFields:v57];
  }

  v18 = v11;
LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

char *__59__VMUSwiftRuntimeInfo_initWithSwiftCore_memoryReader_task___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Name = CSRegionGetName();
  result = strstr(Name, " __objc_imageinfo");
  if (result)
  {
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;
  }

  return result;
}

@end