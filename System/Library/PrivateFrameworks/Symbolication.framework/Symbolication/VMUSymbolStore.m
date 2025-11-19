@interface VMUSymbolStore
- (BOOL)_readContentsOfDsymFile:(id)a3 error:(id *)a4;
- (BOOL)resymbolicateWithDsymPath:(id)a3 libraryNames:(id)a4 all:(BOOL)a5 progress:(id)a6 showDebugInfo:(BOOL)a7 error:(id *)a8;
- (VMUProcessObjectGraph)graph;
- (VMUSymbolStore)initWithCoder:(id)a3;
- (VMUSymbolStore)initWithSymbolicator:(_CSTypeRef)a3 debugTimer:(id)a4;
- (_CSTypeRef)symbolicator;
- (id).cxx_construct;
- (id)_createResymbolicatedSignature;
- (id)_createSymbolicatorSignature;
- (void)_extractAddressesFromSymbolicator;
- (void)_flagSymbolOwnersForResymbolication;
- (void)_groupAddressTrackerByUuid;
- (void)addAddress:(unint64_t)a3 origin:(int)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMUSymbolStore

- (VMUSymbolStore)initWithSymbolicator:(_CSTypeRef)a3 debugTimer:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = VMUSymbolStore;
  v7 = [(VMUSymbolStore *)&v10 init];
  if (v7)
  {
    v7->_symbolicator._opaque_1 = CSRetain();
    v7->_symbolicator._opaque_2 = v8;
    objc_storeStrong(&v7->_debugTimer, a4);
    v7->_debugStore = 0;
  }

  return v7;
}

- (void)dealloc
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSRelease();
  v5.receiver = self;
  v5.super_class = VMUSymbolStore;
  [(VMUSymbolStore *)&v5 dealloc];
}

- (VMUSymbolStore)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VMUSymbolStore;
  v5 = [(VMUSymbolStore *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v6;

    v8 = v5->_signature;
    if (v8)
    {
      v5->_symbolicator._opaque_1 = MEMORY[0x1C695DC00](v8, 0);
      v5->_symbolicator._opaque_2 = v9;
      if (CSIsNull() && v5->_debugStore)
      {
        v10 = *MEMORY[0x1E69E9848];
        v11 = "VMUSymbolStore failed to create the symbolicator from signature.\n";
        v12 = 65;
LABEL_8:
        fwrite(v11, v12, 1uLL, v10);
      }
    }

    else if (v5->_debugStore)
    {
      v10 = *MEMORY[0x1E69E9848];
      v11 = "VMUSymbolStore failed to decode symbolicator signature or it is missing.\n";
      v12 = 73;
      goto LABEL_8;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_resymbolicatedSuccessfully && self->_signature)
  {
    v5 = [(VMUSymbolStore *)self _createResymbolicatedSignature];
    signature = self->_signature;
    self->_signature = v5;
  }

  v7 = self->_signature;
  if (!v7)
  {
    debugTimer = self->_debugTimer;
    if (debugTimer)
    {
      v9 = [(VMUDebugTimer *)debugTimer signpostID];
      debugTimer = self->_debugTimer;
      if (v9)
      {
        v10 = [(VMUDebugTimer *)debugTimer logHandle];
        v11 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v10, OS_SIGNPOST_INTERVAL_END, v11, "VMUSymbolStore", "", buf, 2u);
        }

        debugTimer = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)debugTimer endEvent:"VMUSymbolStore"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUSymbolStore" message:"creating symbolicator signature"];
    v12 = self->_debugTimer;
    if (v12)
    {
      v13 = [(VMUDebugTimer *)v12 logHandle];
      v14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *v22 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VMUSymbolStore", "creating symbolicator signature", v22, 2u);
      }
    }

    v15 = [(VMUSymbolStore *)self _createSymbolicatorSignature];
    v16 = self->_signature;
    self->_signature = v15;

    v17 = self->_debugTimer;
    if (v17)
    {
      v18 = [(VMUDebugTimer *)v17 signpostID];
      v17 = self->_debugTimer;
      if (v18)
      {
        v19 = [(VMUDebugTimer *)v17 logHandle];
        v20 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v19, OS_SIGNPOST_INTERVAL_END, v20, "VMUSymbolStore", "", v21, 2u);
        }

        v17 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v17 endEvent:"VMUSymbolStore"];
    v7 = self->_signature;
  }

  [v4 encodeObject:v7 forKey:@"signature"];
}

- (void)addAddress:(unint64_t)a3 origin:(int)a4
{
  v6 = a3;
  if (a3)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(&self->_addressesTracker.__table_.__bucket_list_.__ptr_, &v6);
    if (a4 <= 4 && self->_debugStore)
    {
      ++*(&self->backtraceSample + (8 * a4));
    }
  }
}

- (void)_groupAddressTrackerByUuid
{
  for (i = self->_addressesTracker.__table_.__first_node_.__next_; i; i = *i)
  {
    v9[0] = i[2];
    opaque_1 = self->_symbolicator._opaque_1;
    opaque_2 = self->_symbolicator._opaque_2;
    v10._opaque_1 = CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    _uuidStringForOwner(v10, __p);
    v9[2] = __p;
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_addressesGroupedByUuid.__table_.__bucket_list_.__ptr_, __p);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(v6 + 5, v9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (id)_createSymbolicatorSignature
{
  [(VMUSymbolStore *)self _groupAddressTrackerByUuid];
  if (self->_debugStore)
  {
    size = self->_addressesTracker.__table_.__size_;
    fprintf(*MEMORY[0x1E69E9848], "Number of addresses sent to VMUSymbolStore by client classes:\nFor backtrace sample: %zu\nFor binary sections: %zu\nFor global variables: %zu\nFor malloc stack logging: %zu\nFor hex found in node labels: %zu\nTotal unique addresses to be saved to symbolicator signature: %zu\nNumber of UUIDs in the signature: %zu\n", self->backtraceSample, self->binarySection, self->globalVariable, self->mallocStackLogging, self->hexFromLabels, size, self->_addressesGroupedByUuid.__table_.__size_);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = &unk_1C6872315;
  v16 = 0;
  v17 = 0;
  __p = 0;
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  v6 = v10[7] - v10[6];
  CSSymbolicatorCreateWithSymbolOwners();
  Signature = CSSymbolicatorCreateSignature();
  CSRelease();
  _Block_object_dispose(&v9, 8);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return Signature;
}

void __46__VMUSymbolStore__createSymbolicatorSignature__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  opaque_2 = a2._opaque_2;
  opaque_1 = a2._opaque_1;
  _uuidStringForOwner(a2, v13);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((*(a1 + 32) + 16), v13);
  if (v5)
  {
    std::unordered_set<unsigned long long>::unordered_set(v12, (v5 + 5));
    std::unordered_set<unsigned long long>::unordered_set(v10, v12);
    *&v11 = _sparsifySymbolOwner(opaque_1, opaque_2, v10);
    *(&v11 + 1) = v6;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10);
    if (CSIsNull())
    {
      if (*(*(a1 + 32) + 120) == 1)
      {
        v7 = *MEMORY[0x1E69E9848];
        Name = CSSymbolOwnerGetName();
        v9 = v13;
        if (v14 < 0)
        {
          v9 = v13[0];
        }

        fprintf(v7, "VMUSymbolStore failed to create a sparse version of symbol owner '%s' with UUID: %s \n", Name, v9);
      }
    }

    else
    {
      std::vector<_CSTypeRef>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, &v11);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v12);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

- (id)_createResymbolicatedSignature
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  if (self->_debugStore && (v10[3] & 1) == 0)
  {
    fwrite("VMUSymbolStore failed to sparsify some of resymbolicated symbol owners.\n", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  v5 = self->_symbolicator._opaque_1;
  v6 = self->_symbolicator._opaque_2;
  Signature = CSSymbolicatorCreateSignature();
  _Block_object_dispose(&v9, 8);

  return Signature;
}

void __48__VMUSymbolStore__createResymbolicatedSignature__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  opaque_2 = a2._opaque_2;
  opaque_1 = a2._opaque_1;
  _uuidStringForOwner(a2, v12);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((*(a1 + 32) + 16), v12);
  v6 = *(*(a1 + 32) + 112);
  if (v13 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v12[0];
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  v9 = [v6 objectForKeyedSubscript:v8];
  if (v9)
  {

    if (v5)
    {
      std::unordered_set<unsigned long long>::unordered_set(v11, (v5 + 5));
      std::unordered_set<unsigned long long>::unordered_set(v10, v11);
      _sparsifySymbolOwner(opaque_1, opaque_2, v10);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v10);
      if (CSIsNull())
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v11);
    }
  }

  else
  {
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

- (BOOL)resymbolicateWithDsymPath:(id)a3 libraryNames:(id)a4 all:(BOOL)a5 progress:(id)a6 showDebugInfo:(BOOL)a7 error:(id *)a8
{
  v11 = a5;
  v60[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = v16;
  self->_debugStore = a7;
  if (v14 && v16)
  {

    v17 = 0;
  }

  v18 = [MEMORY[0x1E695DF90] dictionary];
  resymbolicationUUIDs = self->_resymbolicationUUIDs;
  self->_resymbolicationUUIDs = v18;

  if (self->_signature)
  {
    opaque_1 = self->_symbolicator._opaque_1;
    opaque_2 = self->_symbolicator._opaque_2;
    if (CSSymbolicatorIsKernelSymbolicator())
    {
      WeakRetained = objc_loadWeakRetained(&self->_graph);
      v23 = [WeakRetained stackLogReader];

      if (v23)
      {
        v24 = objc_loadWeakRetained(&self->_graph);
        v25 = [v24 stackLogReader];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke;
        v52[3] = &unk_1E8277EA0;
        v52[4] = self;
        [v25 enumerateUniquingTable:v52];

        [(VMUSymbolStore *)self _groupAddressTrackerByUuid];
      }
    }

    [(VMUSymbolStore *)self _extractAddressesFromSymbolicator];
  }

  else
  {
    [(VMUSymbolStore *)self _groupAddressTrackerByUuid];
  }

  if (self->_addressesGroupedByUuid.__table_.__size_)
  {
    v26 = [MEMORY[0x1E695DF90] dictionary];
    if (v14)
    {
      if (![(VMUSymbolStore *)self _readContentsOfDsymFile:v14 error:a8])
      {
        goto LABEL_31;
      }
    }

    else if (v15)
    {
      v29 = [MEMORY[0x1E695DFD8] setWithArray:v15];
      v30 = self->_symbolicator._opaque_1;
      v31 = self->_symbolicator._opaque_2;
      v32 = v29;
      v33 = v26;
      CSSymbolicatorForeachSymbolOwnerAtTime();
      if (![(__CFString *)v33 count])
      {
        if (a8)
        {
          v44 = MEMORY[0x1E696ABC0];
          v57 = *MEMORY[0x1E696A578];
          v58 = @"No matching libraries found in this memgraph";
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *a8 = [v44 errorWithDomain:@"Memgraph Resymbolication Error" code:3 userInfo:v45];
        }

        LOBYTE(a8) = 0;
        v26 = v33;
        goto LABEL_32;
      }
    }

    else if (v11)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = self->_symbolicator._opaque_1;
      v36 = self->_symbolicator._opaque_2;
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke_3;
      v49 = &unk_1E8277EF0;
      v50 = self;
      v51 = v26;
      CSSymbolicatorForeachSymbolOwnerAtTime();

      objc_autoreleasePoolPop(v34);
    }

    if ([(__CFString *)v26 count:v46]&& ![(VMUSymbolStore *)self _getDsymPathsForUUIDs:v26 andReportProgress:v17])
    {
      if (!a8)
      {
        goto LABEL_32;
      }

      v40 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v56 = @"No dSYMs were found";
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a8 = [v40 errorWithDomain:@"Memgraph Resymbolication Error" code:4 userInfo:v41];
    }

    else
    {
      [(VMUSymbolStore *)self _flagSymbolOwnersForResymbolication];
      if ([(VMUSymbolStore *)self _refillSymbolOwnersWithDataAndReportProgress:v17])
      {
        v37 = objc_loadWeakRetained(&self->_graph);
        [v37 resymbolicatePrivateMaps];

        LOBYTE(a8) = 1;
        self->_resymbolicatedSuccessfully = 1;
LABEL_32:

        goto LABEL_33;
      }

      if (!a8)
      {
        goto LABEL_32;
      }

      v38 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v54 = @"CoreSymbolication failed to resymbolicate all symbol owners";
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *a8 = [v38 errorWithDomain:@"Memgraph Resymbolication Error" code:5 userInfo:v39];
    }

LABEL_31:
    LOBYTE(a8) = 0;
    goto LABEL_32;
  }

  if (a8)
  {
    v26 = @"Nothing to symbolicate. All addresses in the memgraph are already symbolicated.";
    if (os_variant_has_internal_content())
    {
      v26 = [@"Nothing to symbolicate. All addresses in the memgraph are already symbolicated." stringByAppendingString:{@"\n\nIf after processing this memgraph with other cli tools you still see non-symbolicated addresses for some binary images, please file a Radar to 'Symbolication | Xcode' and attach the memgraph and the non-symbolicated output of interest."}];
    }

    v27 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v60[0] = v26;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    *a8 = [v27 errorWithDomain:@"Memgraph Resymbolication Error" code:0 userInfo:v28];

    goto LABEL_31;
  }

LABEL_33:

  v42 = *MEMORY[0x1E69E9840];
  return a8;
}

void __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke_2(void *a1, unint64_t a2, unint64_t a3)
{
  Name = CSSymbolOwnerGetName();
  v7 = a1[4];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  LODWORD(v7) = [v7 containsObject:v8];

  if (v7)
  {
    v15._opaque_1 = a2;
    v15._opaque_2 = a3;
    _uuidStringForOwner(v15, __p);
    if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((a1[5] + 16), __p))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
      v10 = a1[6];
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      [v10 setObject:v9 forKeyedSubscript:v12];
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void __90__VMUSymbolStore_resymbolicateWithDsymPath_libraryNames_all_progress_showDebugInfo_error___block_invoke_3(uint64_t a1, _CSTypeRef a2)
{
  _uuidStringForOwner(a2, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((*(a1 + 32) + 16), __p))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetName()];
    v4 = *(a1 + 40);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    [v4 setObject:v3 forKeyedSubscript:v6];
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)_extractAddressesFromSymbolicator
{
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorForeachSymbolOwnerAtTime();
}

void __51__VMUSymbolStore__extractAddressesFromSymbolicator__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  _uuidStringForOwner(a2, &v5);
  v3 = *(a1 + 32);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v5;
  }

  CSSymbolOwnerForeachSymbol();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void *__51__VMUSymbolStore__extractAddressesFromSymbolicator__block_invoke_2(uint64_t a1)
{
  v5[0] = CSSymbolGetRange();
  v2 = *(a1 + 32);
  v5[2] = a1 + 40;
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v2 + 16), (a1 + 40));
  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(v3 + 5, v5);
}

- (BOOL)_readContentsOfDsymFile:(id)a3 error:(id *)a4
{
  v59[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__39;
  v51 = __Block_byref_object_dispose__40;
  v52 = 0;
  v32 = a3;
  v37 = [v32 stringByAppendingString:@"/Contents/Resources/DWARF/"];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v46 = 0;
  v34 = [v4 subpathsOfDirectoryAtPath:v37 error:&v46];
  v33 = v46;

  if (!v34 || ![v34 count])
  {
    v18 = MEMORY[0x1E696AEC0];
    if (v33)
    {
      v19 = [v33 localizedDescription];
    }

    else
    {
      v19 = &stru_1F461F9C8;
    }

    v5 = [v18 stringWithFormat:@"Failed to find the binary in the dSYM: '%@'. %@\n", v32, v19];
    if (v33)
    {
    }

    if (a4)
    {
      v20 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59[0] = v5;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
      *a4 = [v20 errorWithDomain:@"Memgraph Resymbolication Error" code:1 userInfo:v21];
    }

    goto LABEL_23;
  }

  context = objc_autoreleasePoolPush();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v34;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v6)
  {
    v7 = *v43;
LABEL_5:
    v8 = 0;
    while (1)
    {
      v9 = v5;
      if (*v43 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = [v37 stringByAppendingString:*(*(&v42 + 1) + 8 * v8)];
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v11 = v10;
      [v10 UTF8String];
      v12 = v10;
      CSSymbolicatorForeachSymbolicatorWithPath();
      v13 = v39[3];
      if (!v13)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read symbol data from the dSYM: '%@'.", v12];

        v9 = v14;
      }

      v15 = v13 == 0;

      v5 = v9;
      _Block_object_dispose(&v38, 8);

      if (v15)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v42 objects:v57 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
  if (v5)
  {
    if (a4)
    {
      v16 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v56 = v5;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a4 = [v16 errorWithDomain:@"Memgraph Resymbolication Error" code:2 userInfo:v17];
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  v25 = [(NSMutableDictionary *)self->_resymbolicationUUIDs count];
  v5 = 0;
  if (a4 && !v25)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nothing to symbolicate. This dSYM does not contain symbols for '%@' binary. For more information, please compare the UUIDs.", v48[5]];
    if (os_variant_has_internal_content())
    {
      v27 = [v26 stringByAppendingFormat:@"\n\nIf after processing this memgraph with other cli tools and verifying the UUIDs you still see non-symbolicated addresses for '%@', please file a Radar to 'Symbolication | Xcode' and attach the memgraph, the dSYM and the non-symbolicated output of interest.", v48[5]];

      v5 = v27;
    }

    else
    {
      v5 = v26;
    }

    v28 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v54 = v5;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    *a4 = [v28 errorWithDomain:@"Memgraph Resymbolication Error" code:0 userInfo:v29];
  }

  v22 = [(NSMutableDictionary *)self->_resymbolicationUUIDs count]!= 0;
LABEL_24:

  _Block_object_dispose(&v47, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void __48__VMUSymbolStore__readContentsOfDsymFile_error___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v1 = v2;
  CSSymbolicatorForeachSymbolOwnerAtTime();
}

void __48__VMUSymbolStore__readContentsOfDsymFile_error___block_invoke_2(void *a1, unint64_t a2, unint64_t a3)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetName()];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  ++*(*(a1[7] + 8) + 24);
  v15._opaque_1 = a2;
  v15._opaque_2 = a3;
  _uuidStringForOwner(v15, __p);
  if (std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>((a1[4] + 16), __p))
  {
    v9 = a1[5];
    v10 = *(a1[4] + 112);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    [v10 setObject:v9 forKeyedSubscript:v12];
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)_flagSymbolOwnersForResymbolication
{
  v3 = objc_autoreleasePoolPush();
  opaque_1 = self->_symbolicator._opaque_1;
  opaque_2 = self->_symbolicator._opaque_2;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  objc_autoreleasePoolPop(v3);
}

void __53__VMUSymbolStore__flagSymbolOwnersForResymbolication__block_invoke(uint64_t a1, _CSTypeRef a2)
{
  _uuidStringForOwner(a2, __p);
  v3 = *(*(a1 + 32) + 112);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 UTF8String];
    CSSymbolOwnerSetPathForSymbolication();
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

- (VMUProcessObjectGraph)graph
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);

  return WeakRetained;
}

- (_CSTypeRef)symbolicator
{
  opaque_2 = self->_symbolicator._opaque_2;
  opaque_1 = self->_symbolicator._opaque_1;
  result._opaque_2 = opaque_2;
  result._opaque_1 = opaque_1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end