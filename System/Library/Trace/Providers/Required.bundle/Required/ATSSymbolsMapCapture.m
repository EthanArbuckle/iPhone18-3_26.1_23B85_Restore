@interface ATSSymbolsMapCapture
- (ATSSymbolsMapCapture)initWithLogger:(id)a3;
- (void)addChunksToFile:(ktrace_file *)a3;
- (void)encodeLiveKernelMap:(ktrace_file *)a3;
- (void)encodeSharedCachesUsingCS:(ktrace_file *)a3;
- (void)encodeSharedCachesUsingDyldIntrospection:(ktrace_file *)a3;
@end

@implementation ATSSymbolsMapCapture

- (ATSSymbolsMapCapture)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATSSymbolsMapCapture;
  v6 = [(ATSSymbolsMapCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (void)encodeLiveKernelMap:(ktrace_file *)a3
{
  CSSymbolicatorCreateWithMachKernel();
  if ((CSIsNull() & 1) == 0)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x9012000000;
    v39 = sub_19E0;
    v40 = sub_19EC;
    v41 = "";
    v42 = 0;
    v43 = 0;
    v44 = xmmword_AE20;
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    v48 = 1;
    v49 = 256;
    v50 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x4812000000;
    v30 = sub_19F4;
    v31 = sub_1A18;
    v32 = "";
    v34 = 0;
    v35 = 0;
    __p = 0;
    CSSymbolicatorForeachSymbolOwnerAtTime();
    CSSymbolicatorGetAOutSymbolOwner();
    if ((CSIsNull() & 1) != 0 || (CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes()) == 0)
    {
      v6 = 0;
    }

    else
    {
      memset(out, 0, 37);
      uuid_unparse(CFUUIDBytes, out);
      v5 = strlen(out);
      v6 = sub_5684(v37 + 6, out, v5);
    }

    CSRelease();
    v7 = v28[7] - v28[6];
    if (v7)
    {
      v8 = v28[6];
    }

    else
    {
      v8 = &flatbuffers::data<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>,std::allocator<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>>>(std::vector<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>> const&)::t;
    }

    v9 = sub_1F30(v37 + 12, v8, v7 >> 2);
    v10 = sub_5684(v37 + 6, "kernel_task", 0xBuLL);
    v11 = v37;
    sub_39B0((v37 + 6));
    *(v11 + 118) = 1;
    v12 = *(v11 + 20);
    v13 = *(v11 + 24);
    v14 = *(v11 + 22);
    sub_39E0((v11 + 6), 6, 0, -1);
    sub_39E0((v11 + 6), 8, 0, -1);
    sub_3D2C(v11 + 12, 4, v10);
    sub_3D2C(v11 + 12, 10, v6);
    v15 = sub_3EC0((v11 + 6), v12 - v13 + v14);
    v16 = v37;
    sub_39B0((v37 + 6));
    *(v16 + 118) = 1;
    v17 = *(v16 + 20);
    v18 = *(v16 + 24);
    LODWORD(v11) = *(v16 + 22);
    sub_3D2C(v16 + 12, 10, 0);
    sub_3D2C(v16 + 12, 8, v9);
    sub_3D2C(v16 + 12, 6, v15);
    sub_5594((v16 + 6), 4, 1, 0);
    *out = sub_3EC0((v16 + 6), v17 - v18 + v11);
    v19 = sub_1F30(v37 + 12, out, 1);
    v20 = v37;
    sub_39B0((v37 + 6));
    *(v20 + 118) = 1;
    LODWORD(v11) = *(v20 + 20);
    v21 = *(v20 + 24);
    LODWORD(v16) = *(v20 + 22);
    sub_3D2C(v20 + 12, 6, 0);
    sub_3D2C(v20 + 12, 4, v19);
    v22 = sub_3EC0((v20 + 6), v11 - v21 + v16);
    sub_5CE8((v37 + 6), v22, "SYMB", 0);
    sub_1FB4((v37 + 6));
    v23 = *(v37 + 22);
    v24 = (*(v37 + 20) - *(v37 + 24));
    if (!ktrace_file_append_chunk())
    {
      v25 = __error();
      v26 = [NSString stringWithFormat:@"Failed to append kernel map chunk. Error: %s", strerror(*v25), _NSConcreteStackBlock, 3221225472, sub_1A30, &unk_104E0, &v36, &v27];
      [(KTProviderLogger *)self->_logger failWithReason:v26];
    }

    _Block_object_dispose(&v27, 8);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v36, 8);
    sub_3288(&v42);
  }
}

- (void)encodeSharedCachesUsingDyldIntrospection:(ktrace_file *)a3
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x9012000000;
  v31 = sub_19E0;
  v32 = sub_19EC;
  v33 = "";
  v34 = 0;
  v35 = 0;
  v36 = xmmword_AE20;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = 1;
  v41 = 256;
  v42 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = sub_2354;
  v23 = sub_2378;
  v24 = "";
  v26 = 0;
  v27 = 0;
  __p = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x5812000000;
  v16[3] = sub_2390;
  v16[4] = sub_239C;
  v16[5] = "";
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  dyld_for_each_installed_shared_cache();
  v4 = v20[6];
  v5 = v20[7];
  if (v4 != v5)
  {
    v6 = sub_1F30(v29 + 12, v4, (v5 - v4) >> 2);
    v7 = v29;
    sub_39B0((v29 + 6));
    *(v7 + 118) = 1;
    v8 = *(v7 + 20);
    v9 = *(v7 + 24);
    v10 = *(v7 + 22);
    sub_3D2C(v7 + 12, 6, 0);
    sub_3D2C(v7 + 12, 4, v6);
    v11 = sub_3EC0((v7 + 6), v8 - v9 + v10);
    sub_5CE8((v29 + 6), v11, "SYMB", 0);
    sub_1FB4((v29 + 6));
    v12 = *(v29 + 22);
    v13 = (*(v29 + 20) - *(v29 + 24));
    if (!ktrace_file_append_chunk())
    {
      v14 = __error();
      v15 = [NSString stringWithFormat:@"Failed to append kernel map chunk. Error: %s", strerror(*v14), _NSConcreteStackBlock, 3221225472, sub_23A4, &unk_10508, v16, &v28, &v19];
      [(KTProviderLogger *)self->_logger failWithReason:v15];
    }
  }

  _Block_object_dispose(v16, 8);
  sub_7CDC(v17);
  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v28, 8);
  sub_3288(&v34);
}

- (void)encodeSharedCachesUsingCS:(ktrace_file *)a3
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x9012000000;
  v28 = sub_19E0;
  v29 = sub_19EC;
  v30 = "";
  v31 = 0;
  v32 = 0;
  v33 = xmmword_AE20;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 1;
  v38 = 256;
  v39 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = sub_2354;
  v20 = sub_2378;
  v21 = "";
  v23 = 0;
  v24 = 0;
  __p = 0;
  CSSymbolicatorForeachSharedCache();
  v4 = v17[6];
  v5 = v17[7];
  if (v4 != v5)
  {
    v6 = sub_1F30(v26 + 12, v4, (v5 - v4) >> 2);
    v7 = v26;
    sub_39B0((v26 + 6));
    *(v7 + 118) = 1;
    v8 = *(v7 + 20);
    v9 = *(v7 + 24);
    v10 = *(v7 + 22);
    sub_3D2C(v7 + 12, 6, 0);
    sub_3D2C(v7 + 12, 4, v6);
    v11 = sub_3EC0((v7 + 6), v8 - v9 + v10);
    sub_5CE8((v26 + 6), v11, "SYMB", 0);
    sub_1FB4((v26 + 6));
    v12 = *(v26 + 22);
    v13 = (*(v26 + 20) - *(v26 + 24));
    if (!ktrace_file_append_chunk())
    {
      v14 = __error();
      v15 = [NSString stringWithFormat:@"Failed to append kernel map chunk. Error: %s", strerror(*v14), _NSConcreteStackBlock, 3221225472, sub_2B14, &unk_104E0, &v25, &v16];
      [(KTProviderLogger *)self->_logger failWithReason:v15];
    }
  }

  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v25, 8);
  sub_3288(&v31);
}

- (void)addChunksToFile:(ktrace_file *)a3
{
  [(ATSSymbolsMapCapture *)self encodeSharedCachesUsingDyldIntrospection:?];

  [(ATSSymbolsMapCapture *)self encodeLiveKernelMap:a3];
}

@end