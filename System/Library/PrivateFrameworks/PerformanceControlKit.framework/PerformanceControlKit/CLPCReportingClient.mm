@interface CLPCReportingClient
- (BOOL)enableStats:(id)stats error:(id *)error;
- (BOOL)setTGSortingMetric:(unint64_t)metric error:(id *)error;
- (__n128)buildSchemas:error:;
- (id).cxx_construct;
- (id)buildSchemas:(void *)schemas error:;
- (id)clearSchemas;
- (id)convertSampleList:(uint64_t)list error:;
- (id)enabledStats;
- (id)init:(id *)init;
- (id)readDeltaStats:(id *)stats;
- (id)readStats:(id *)stats;
- (id)supportedStats;
- (uint64_t)buildSchemas:error:;
- (uint64_t)decodeTGRawData:(char)data delta:(void *)delta error:;
- (uint64_t)ensureStatsEnabled:(uint64_t)result;
- (unint64_t)schemaIDForStatID:(unint64_t)d error:(id *)error;
- (void)buildSchemas:error:;
- (void)clearSchemas;
- (void)convertSampleList:error:;
@end

@implementation CLPCReportingClient

- (id)clearSchemas
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    std::array<CLPCReportingRows * {__strong},11ul>::fill[abi:ne200100](result + 35, &v2);
    return [(CLPCReportingClient *)&v2 clearSchemas];
  }

  return result;
}

- (void)clearSchemas
{
  array = [MEMORY[0x277CBEA60] array];
  v4 = *(a2 + 368);
  *(a2 + 368) = array;

  v5 = (a2 + 376);
  v6 = 440;
  do
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::clear(v5);
    v5 += 5;
    v6 -= 40;
  }

  while (v6);
  return result;
}

- (id)init:(id *)init
{
  v117[9] = *MEMORY[0x277D85DE8];
  v108.receiver = self;
  v108.super_class = CLPCReportingClient;
  v109 = 0;
  v4 = [(CLPCUserClient *)&v108 init:?];
  v109 = v4;
  if (v4)
  {
    v5 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(v4[4], @"CFBundleIdentifierKernel", *MEMORY[0x277CBECE8], 0);
    if (CFProperty && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [CFProperty dataUsingEncoding:4];
      if (v7)
      {
        v88 = v7;
        v8 = IORegistryEntryCreateCFProperty(v109[4], @"#cpu-num-clusters", v5, 0);
        v87 = v8;
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          unsignedIntValue = [v8 unsignedIntValue];
          v109[10] = unsignedIntValue;
          v10 = IORegistryEntryCreateCFProperty(v109[4], @"#cpu-num-cores", v5, 0);
          v86 = v10;
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            unsignedIntValue2 = [v10 unsignedIntValue];
            v109[13] = unsignedIntValue2;
            v81 = clpc::user::iokit::RegistryEntry::createProperty((v109 + 2), @"#ane-num-clusters");
            if (v81 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              unsignedIntValue3 = [v81 unsignedIntValue];
              v109[11] = unsignedIntValue3;
              for (v109[12] = 1; ; ++v109[12])
              {
                v13 = v109;
                v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"#pkg-power-zone-target-%u", v109[12]];
                v15 = IORegistryEntryCreateCFProperty(v13[4], v14, v5, 0);
                LOBYTE(v13) = v15 == 0;

                if (v13)
                {
                  break;
                }
              }

              memcpy(__dst, "emit", sizeof(__dst));
              std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__assign_unique<std::pair<unsigned long long const,CLPCReportingStatID> const*>(v109 + 9, __dst, v116);
              v17 = v109;
              if (v109[10])
              {
                v18 = 0;
                do
                {
                  v19 = 48;
                  if (v18 > 9)
                  {
                    v19 = 87;
                  }

                  v20 = v19 + v18;
                  v21 = (v19 + v18) | 0x4C506300;
                  v117[0] = v21;
                  *&__dst[0] = v117;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 9, v117)[3] = 0x400000001;
                  v117[0] = v21;
                  *&__dst[0] = v117;
                  *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v109 + 14, v117) + 6) = v18;
                  v22 = v20 | 0x43436300;
                  v117[0] = v22;
                  *&__dst[0] = v117;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v109 + 9, v117)[3] = 0x600000000;
                  v117[0] = v22;
                  *&__dst[0] = v117;
                  *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v109 + 14, v117) + 6) = v18++;
                  v17 = v109;
                }

                while (v18 < v109[10]);
              }

              if (v17[11])
              {
                v23 = 0;
                do
                {
                  if (v23 <= 9)
                  {
                    v24 = 48;
                  }

                  else
                  {
                    v24 = 87;
                  }

                  v25 = (v24 + v23) | 0x414C6300;
                  v117[0] = v25;
                  *&__dst[0] = v117;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 9, v117)[3] = 0x400000003;
                  v117[0] = v25;
                  *&__dst[0] = v117;
                  *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v109 + 14, v117) + 6) = v23++;
                  v17 = v109;
                }

                while (v23 < v109[11]);
              }

              v26 = CCDigestCreate();
              v82 = [(io_registry_entry_t *)v109 reportingObfuscationData:init];
              if (v26 && v82 && [v82 length] > 0x1F)
              {
                memset(v106, 0, sizeof(v106));
                v107 = 1065353216;
                memset(v104, 0, sizeof(v104));
                v105 = 1065353216;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(v106, *(v109 + 12));
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(v104, vcvtps_u32_f32(*(v109 + 17) / 1.0));
                for (i = *(v109 + 11); i; i = *i)
                {
                  LODWORD(v117[0]) = i[2];
                  v28 = v82;
                  v29 = v88;
                  memset(__dst, 0, 64);
                  v30 = v28;
                  [v28 bytes];
                  CCDigestUpdate();
                  v31 = v29;
                  [v29 bytes];
                  [v29 length];
                  CCDigestUpdate();
                  CCDigestUpdate();
                  v32 = v28;
                  [v28 bytes];
                  CCDigestUpdate();
                  CCDigestFinal();
                  CCDigestReset();
                  v33 = LODWORD(__dst[0]);

                  v34 = i[3];
                  v117[0] = v33;
                  *&__dst[0] = v117;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v106, v117)[3] = v34;
                  v35 = std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::find<unsigned long long>(v109 + 14, i + 2);
                  if (v35)
                  {
                    v36 = *(v35 + 6);
                    v117[0] = v33;
                    *&__dst[0] = v117;
                    *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v104, v117) + 6) = v36;
                  }
                }

                v37 = 0;
                v102 = 0uLL;
                v103 = 0;
                memset(v100, 0, sizeof(v100));
                v101 = 1065353216;
                __p = 0;
                v98 = 0;
                v99 = 0;
                do
                {
                  if (v37 > 0x22)
                  {
                    v38 = 0;
                  }

                  else
                  {
                    v38 = *&aEnon[8 * v37];
                  }

                  *&__dst[0] = v38;
                  DWORD2(__dst[0]) = v37;
                  std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](&__p, __dst);
                  ++v37;
                }

                while (v37 != 35);
                *&__dst[0] = 0x534D43504F574552;
                DWORD2(__dst[0]) = -1;
                std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](&__p, __dst);
                *&__dst[0] = 0x424C4B44534C4F54;
                DWORD2(__dst[0]) = -1;
                std::vector<std::pair<unsigned long,int>>::push_back[abi:ne200100](&__p, __dst);
                std::random_device::random_device[abi:ne200100](&v96);
                v39 = MEMORY[0x25F8B1000](&v96);
                LODWORD(__dst[0]) = v39;
                for (j = 1; j != 624; ++j)
                {
                  v39 = j + 1812433253 * (v39 ^ (v39 >> 30));
                  *(__dst + j) = v39;
                }

                v116[260] = 0;
                std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<unsigned long,int> *>,std::__wrap_iter<std::pair<unsigned long,int> *>,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &>(__p, v98, __dst);
                v42 = __p;
                v41 = v98;
                obj = v98;
                while (v42 != v41)
                {
                  v43 = v42[2];
                  v94 = *v42;
                  v44 = v82;
                  v45 = v88;
                  memset(v117, 0, 64);
                  v46 = v44;
                  [v44 bytes];
                  CCDigestUpdate();
                  v47 = v45;
                  [v45 bytes];
                  [v45 length];
                  CCDigestUpdate();
                  CCDigestUpdate();
                  v48 = v44;
                  [v44 bytes];
                  CCDigestUpdate();
                  CCDigestFinal();
                  CCDigestReset();
                  v49 = LODWORD(v117[0]);

                  v50 = v102;
                  v117[0] = v49;
                  std::vector<unsigned long long>::push_back[abi:ne200100](&v102, v117);
                  v94 = v49;
                  v117[0] = &v94;
                  v51 = (*(&v50 + 1) - v50) >> 3;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v100, &v94)[3] = v51;
                  if (v43 <= 0x22u)
                  {
                    v94 = *&aEnon_0[8 * (v43 & 0x3F)];
                    v117[0] = &v94;
                    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v100, &v94)[3] = v51;
                    v94 = qword_25E3CC988[v43 & 0x3F];
                    v117[0] = &v94;
                    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v100, &v94)[3] = v51;
                  }

                  v42 += 4;
                  v41 = obj;
                }

                v52 = v109 + 48;
                v53 = *(v109 + 24);
                if (v53)
                {
                  *(v109 + 25) = v53;
                  operator delete(v53);
                  *v52 = 0;
                  v52[1] = 0;
                  v52[2] = 0;
                }

                *v52 = v102;
                v52[2] = v103;
                v102 = 0uLL;
                v103 = 0;
                std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v109 + 18), v106);
                std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v109 + 28), v104);
                std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v109 + 38), v100);
                CCDigestDestroy();
                clpc::user::ioreport::ChannelList::fromProvider((v109 + 2), v117);
                if (v117[1])
                {
                  v54 = v109;
                  ChannelCount = IOReportGetChannelCount();
                  if (ChannelCount < 0)
                  {
                    v56 = 2;
                  }

                  else
                  {
                    v56 = ChannelCount;
                  }

                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>((v54 + 54), vcvtps_u32_f32(v56 / v54[62]));
                  v114[0] = &unk_287018808;
                  v114[1] = &v109;
                  v114[3] = v114;
                  clpc::user::ioreport::ChannelList::iterate(v117, v114);
                  std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v114);
                  v57 = v109;
                  clpc::user::iokit::Service::firstMatching("AGXAccelerator", 0, &v94);
                  v58 = (v57 + 204);
                  if (*(v57 + 832) == 1)
                  {
                    clpc::user::iokit::Service::~Service(v58);
                  }

                  v59 = v95;
                  *v58 = &unk_287018598;
                  *(v58 + 3) = HIDWORD(v95);
                  v95 = 0;
                  *(v58 + 2) = v59;
                  v58[16] = 1;
                  clpc::user::iokit::Service::~Service(&v94);
                  if (v109[208])
                  {
                    clpc::user::ioreport::ChannelList::fromProvider((v109 + 204), &v94);
                    if (v95 == 1)
                    {
                      v113[0] = &unk_287018898;
                      v113[1] = &v109;
                      v113[3] = v113;
                      clpc::user::ioreport::ChannelList::iterate(&v94, v113);
                      std::__function::__value_func<void ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v113);
                      if (v95)
                      {
                      }
                    }
                  }

                  for (k = 0; k != 40; ++k)
                  {
                    {
                      goto LABEL_78;
                    }
                  }

                  v111[0] = &unk_28701A3D8;
                  v111[1] = &unk_28701A420;
                  v112[0] = &unk_28701A588;
                  v112[1] = &unk_28701A5B0;
                  v111[2] = &unk_28701A438;
                  v111[3] = &unk_28701A468;
                  v112[2] = &unk_28701A5D8;
                  v112[3] = &unk_28701A600;
                  v111[4] = &unk_28701A480;
                  v111[5] = &unk_28701A498;
                  v112[4] = &unk_28701A628;
                  v112[5] = &unk_28701A650;
                  v111[6] = &unk_28701A4B0;
                  v111[7] = &unk_28701A4C8;
                  v112[6] = &unk_28701A678;
                  v112[7] = &unk_28701A6A0;
                  v111[8] = &unk_28701A4E0;
                  v111[9] = &unk_28701A4F8;
                  v112[8] = &unk_28701A6C8;
                  v112[9] = &unk_28701A6F0;
                  v111[10] = &unk_28701A510;
                  v112[10] = &unk_28701A718;
                  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:11];
                  v62 = *(v109 + 128);
                  *(v109 + 128) = v61;

                  v92 = 0u;
                  v93 = 0u;
                  v90 = 0u;
                  v91 = 0u;
                  obja = *(v109 + 128);
                  v63 = [obja countByEnumeratingWithState:&v90 objects:v110 count:16];
                  if (v63)
                  {
                    v85 = *v91;
                    do
                    {
                      for (m = 0; m != v63; ++m)
                      {
                        if (*v91 != v85)
                        {
                          objc_enumerationMutation(obja);
                        }

                        v65 = *(*(&v90 + 1) + 8 * m);
                        v66 = [*(v109 + 128) objectForKeyedSubscript:v65];
                        v67 = [v66 objectForKeyedSubscript:@"name"];
                        v68 = v109;
                        unsignedLongLongValue = [v65 unsignedLongLongValue];
                        v94 = &unsignedLongLongValue;
                        v69 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,NSString * {__strong}>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID&&>,std::tuple<>>(v68 + 110, &unsignedLongLongValue);
                        v70 = v69[3];
                        v69[3] = v67;

                        v71 = [v66 objectForKeyedSubscript:@"type"];
                        unsignedLongLongValue2 = [v71 unsignedLongLongValue];
                        v73 = v109;
                        unsignedLongLongValue = [v65 unsignedLongLongValue];
                        v94 = &unsignedLongLongValue;
                        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v73 + 120, &unsignedLongLongValue)[3] = unsignedLongLongValue2;

                        v74 = [v66 objectForKeyedSubscript:@"format"];
                        unsignedLongLongValue3 = [v74 unsignedLongLongValue];
                        v76 = v109;
                        unsignedLongLongValue = [v65 unsignedLongLongValue];
                        v94 = &unsignedLongLongValue;
                        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v76 + 115, &unsignedLongLongValue)[3] = unsignedLongLongValue3;

                        v10 = v86;
                      }

                      v63 = [obja countByEnumeratingWithState:&v90 objects:v110 count:16];
                    }

                    while (v63);
                  }

                  v109[14] = 0;
                  *(v109 + 8) = 0;
                  *(v109 + 1192) = 0;
                  *(v109 + 150) = 0x900000000;
                  *(v109 + 33) = *(v109 + 32);
                  v77 = (v109 + 2);
                  if (*(v109 + 4) != 0x10000)
                  {
                    v78 = *(v109 + 3);
                    *(v109 + 3) = 0;
                    *(v77 + 3) = 0x10000;
                    if (v78)
                    {
                      MEMORY[0x25F8B1020](v78, 0x1000C8077774924);
                    }
                  }

                  v16 = v109;
                }

                else
                {
LABEL_78:
                  v16 = 0;
                }

                if (LOBYTE(v117[1]) == 1)
                {
                }

                std::random_device::~random_device(&v96);
                if (__p)
                {
                  v98 = __p;
                  operator delete(__p);
                }

                std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(v100);
                if (v102)
                {
                  *(&v102 + 1) = v102;
                  operator delete(v102);
                }

                std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(v104);
                std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(v106);
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v7 = v88;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v79 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unint64_t)schemaIDForStatID:(unint64_t)d error:(id *)error
{
  result = HIDWORD(d);
  if (HIDWORD(d) >= 0xB)
  {
    return 0;
  }

  return result;
}

- (id)supportedStats
{
  v3 = objc_opt_new();
  v4 = v3;
  next = self->available_stat_ids.__table_.__first_node_.__next_;
  if (next)
  {
    [(CLPCReportingClient *)v3 supportedStats];
  }

  return v4;
}

- (id)enabledStats
{
  v3 = objc_opt_new();
  v4 = v3;
  begin = self->configured_stat_ids.__begin_;
  end = self->configured_stat_ids.__end_;
  if (begin != end)
  {
    [(CLPCReportingClient *)v3 enabledStats];
  }

  return v4;
}

- (BOOL)enableStats:(id)stats error:(id *)error
{
  v67[4] = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  p_configured_stat_ids = &self->configured_stat_ids;
  self->configured_stat_ids.__end_ = self->configured_stat_ids.__begin_;
  channels = self->reporting_channels.channels;
  self->reporting_channels.channels = 0;

  v64 = 0;
  v65 = 0;
  v63 = &unk_2870185D8;
  subscribed_channels = self->reporting_subscription.subscribed_channels;
  self->reporting_subscription.subscription = 0;
  self->reporting_subscription.subscribed_channels = 0;

  v64 = 0;
  clpc::user::ioreport::Subscription::~Subscription(&v63);
  v54 = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  [(CLPCReportingStatSelection *)statsCopy selectedStats];
  for (i = v65; i; i = *i)
  {
    *&v48 = *(i + 2);
    if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&self->available_stat_ids.__table_.__bucket_list_.__ptr_, &v48))
    {
      std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v54, &v48);
    }

    if (DWORD1(v48) <= 0xA && DWORD1(v48) - 8 <= 2)
    {
      std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v51, &v48);
    }
  }

  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v63);
  v63 = 1;
  if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&self->available_stat_ids.__table_.__bucket_list_.__ptr_, &v63))
  {
    v63 = 1;
    std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v54, &v63);
  }

  v12 = BYTE8(v52);
  if (*(&v52 + 1))
  {
    v63 = 2;
    std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v51, &v63);
    v12 = 1;
  }

  self->thread_group_stats_requested = v12;
  [statsCopy deselectAll];
  v48 = 0u;
  v49 = 0u;
  v50 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(&v48, (*(&v55 + 1) + (4 * self->num_cpu_clusters)));
  v13 = v55;
  if (!v55)
  {
LABEL_22:
    v41 = statsCopy;
    clpc::user::ioreport::ChannelList::fromProvider(&self->super.clpc, &obj);
    if (v47)
    {
      v45 = 0;
      v60[0] = &unk_287018918;
      v60[1] = &v48;
      v60[2] = &v45;
      v60[3] = v60;
      v63 = MEMORY[0x277D85DD0];
      v64 = 3321888768;
      v65 = ___ZN4clpc4user8ioreport11ChannelList6filterENSt3__18functionIFbNS1_7ChannelEEEE_block_invoke;
      v66 = &__block_descriptor_64_ea8_32c55_ZTSNSt3__18functionIFbN4clpc4user8ioreport7ChannelEEEE_e25_i16__0____CFDictionary__8l;
      std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](v67, v60);
      IOReportPrune();
      std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v67);
      std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v60);
      if (self->agx_service.__engaged_)
      {
        clpc::user::ioreport::ChannelList::fromProvider(&self->agx_service, &v43);
        v42 = 0;
        v59[0] = &unk_2870189A8;
        v59[1] = &v48;
        v59[2] = &v42;
        v59[3] = v59;
        v17 = v43;
        v63 = MEMORY[0x277D85DD0];
        v64 = 3321888768;
        v65 = ___ZN4clpc4user8ioreport11ChannelList6filterENSt3__18functionIFbNS1_7ChannelEEEE_block_invoke;
        v66 = &__block_descriptor_64_ea8_32c55_ZTSNSt3__18functionIFbN4clpc4user8ioreport7ChannelEEEE_e25_i16__0____CFDictionary__8l;
        std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::__value_func[abi:ne200100](v67, v59);
        IOReportPrune();
        std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v67);
        std::__function::__value_func<BOOL ()(clpc::user::ioreport::Channel)>::~__value_func[abi:ne200100](v59);
        if (v42)
        {
          v45 += v42;
          v18 = v17;
          IOReportMergeChannels();
        }

        if (v44 == 1)
        {
        }
      }

      if (*(&v49 + 1) == v45)
      {
        clpc::user::ioreport::ChannelList::subscribe(&obj, &v63);
        v19 = v66;
        if (v66)
        {
          std::vector<CLPCReportingStatID>::reserve(&self->configured_stat_ids.__begin_, *(&v55 + 1));
          v20 = 0;
          v21 = statsCopy + 8;
          do
          {
            if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&v54, &v43) || std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>(&v51, &v43))
            {
              end = self->configured_stat_ids.__end_;
              cap = self->configured_stat_ids.__cap_;
              if (end >= cap)
              {
                begin = p_configured_stat_ids->__begin_;
                v26 = end - p_configured_stat_ids->__begin_;
                v27 = v26 >> 3;
                v28 = (v26 >> 3) + 1;
                if (v28 >> 61)
                {
                  std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
                }

                v29 = cap - begin;
                if (v29 >> 2 > v28)
                {
                  v28 = v29 >> 2;
                }

                v30 = v29 >= 0x7FFFFFFFFFFFFFF8;
                v31 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v30)
                {
                  v31 = v28;
                }

                if (v31)
                {
                  std::allocator<CLPCReportingStatID>::allocate_at_least[abi:ne200100](&self->configured_stat_ids, v31);
                }

                *(8 * v27) = v43;
                v24 = (8 * v27 + 8);
                memcpy(0, begin, v26);
                v32 = p_configured_stat_ids->__begin_;
                p_configured_stat_ids->__begin_ = 0;
                self->configured_stat_ids.__end_ = v24;
                self->configured_stat_ids.__cap_ = 0;
                if (v32)
                {
                  operator delete(v32);
                }

                statsCopy = v41;
              }

              else
              {
                *end = v43;
                v24 = end + 1;
              }

              self->configured_stat_ids.__end_ = v24;
              if (statsCopy)
              {
                v33 = 0;
                {
                  if (++v33 == 40)
                  {
                    goto LABEL_51;
                  }
                }

                v21[v33] = 1;
              }
            }

LABEL_51:
            ++v20;
          }

          while (v20 != 40);
          objc_storeStrong(&self->reporting_channels.channels, obj);
          v34 = v65;
          *(v40 + 8) = v64;
          objc_storeStrong(v39, v34);
          v64 = 0;
        }

        else if (error)
        {
          v57 = *MEMORY[0x277CCA068];
          v58 = @"Failed to subscribe to AppleCLPC IOReporting channels.";
          v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870212 userInfo:v38];
        }

        if (v66 == 1)
        {
          clpc::user::ioreport::Subscription::~Subscription(&v63);
        }

        goto LABEL_58;
      }
    }

    else if (error)
    {
      v61 = *MEMORY[0x277CCA068];
      v62 = @"Failed to list AppleCLPC IOReporting channels.";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870212 userInfo:v35];
    }

    v19 = 0;
LABEL_58:
    if (v47 == 1)
    {
    }

    goto LABEL_60;
  }

  while (1)
  {
    next = self->channel_to_stat_map.__table_.__first_node_.__next_;
    if (!next)
    {
      break;
    }

    v15 = 0;
    v16 = v13[2];
    do
    {
      if (next[3] == v16)
      {
        std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(&v48, next + 2);
        ++v15;
      }

      next = *next;
    }

    while (next);
    if (!v15)
    {
      break;
    }

    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  v19 = 0;
LABEL_60:
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v48);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v51);
  std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v54);

  v36 = *MEMORY[0x277D85DE8];
  return v19;
}

- (uint64_t)ensureStatsEnabled:(uint64_t)result
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (*(result + 264) == *(result + 256))
    {
      if (a2)
      {
        v5 = *MEMORY[0x277CCA068];
        v6[0] = @"No stats enabled.";
        v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
        *a2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v3];
      }

      result = 0;
    }

    else
    {
      result = 1;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)buildSchemas:(void *)schemas error:
{
  v24[14] = *MEMORY[0x277D85DE8];
  v20[0] = result;
  if (result)
  {
    v3 = result;
    [(CLPCReportingClient *)result clearSchemas];
    v19 = v20;
    memset(v24, 0, 11);
    memset(v23, 0, 11);
    v5 = v3[32];
    v4 = v3[33];
    if (v5 == v4)
    {
LABEL_11:
      v9 = 0;
      while (1)
      {
        v10 = qword_25E3CC088[v9];
        if (v23[v10] == 1 && ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v19, v10, 1, 1, 1uLL, 0, 0, @"Time") & 1) == 0)
        {
          break;
        }

        if (++v9 == 4)
        {
          v11 = 0;
          while (1)
          {
            v12 = qword_25E3CC070[v11];
            if (v23[v12] == 1 && ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v19, v12, 1, 2, 0, 1, 0, @"ID") & 1) == 0)
            {
              goto LABEL_30;
            }

            if (++v11 == 3)
            {
              v13 = 0;
              while (1)
              {
                v14 = qword_25E3CC0A8[v13];
                if (v23[v14] == 1 && (([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v19, qword_25E3CC0A8[v13], 1, 1, 1uLL, 0, 0, @"Time") & 1) == 0 || ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v19, v14, 1, 1, 2uLL, 0, 0, @"Group ID") & 1) == 0))
                {
                  goto LABEL_30;
                }

                if (++v13 == 3)
                {
                  if ([CLPCReportingClient buildSchemas:error:]::$_12::operator()(&v19, 10, 1, 2, 0, 1, 0, @"ID"))
                  {
                    v15 = 0;
                    while (1)
                    {
                      v16 = qword_25E3CC088[v15];
                      if (v23[v16] == 1)
                      {
                        [(CLPCReportingSchema *)*(v20[0] + 280 + 8 * v16) finalizeColumns];
                      }

                      *(v24 + v16) = 1;
                      if (++v15 == 4)
                      {
                        LOBYTE(v21) = 1;
                        operator new();
                      }
                    }
                  }

                  goto LABEL_30;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v6 = *v5;
        v7 = HIDWORD(*v5);
        if (v7 >= 0xB)
        {
          break;
        }

        if (v7)
        {
          v23[v7] = 1;
          if (v7 <= 7 && ((1 << v7) & 0x8E) != 0)
          {
            v21 = 0;
            v22 = v6;
            v20[1] = 0;
            v24[5] = 0;
            operator new();
          }
        }

        if (++v5 == v4)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_30:
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)buildSchemas:error:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)convertSampleList:(uint64_t)list error:
{
  v12 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (list)
  {
    v1 = 0;
    v9 = 0;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    while (1)
    {
      v2 = *(listCopy + 280 + v1);
      if (v2 && [*(v2 + 24) count])
      {
        array = [MEMORY[0x277CBEB18] array];
        v4 = *(v7 + v1);
        *(v7 + v1) = array;
      }

      v1 += 8;
      if (v1 == 88)
      {
        v11 = 0;
        operator new();
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return 0;
}

- (void)convertSampleList:error:
{
  v17 = a5;
  columns = [*(**self + 280 + 8 * a2) columns];
  v10 = [columns count];

  if (v10 > a4)
  {
    v11 = *(self + 8);
    while ([*(v11 + 8 * a2) count] <= a3)
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10];
      v13 = 1;
      do
      {
        [v12 addObject:&unk_28701A528];
      }

      while (v10 > v13++);
      [*(v11 + 8 * a2) addObject:v12];
    }

    if (v17)
    {
      null = [*(v11 + 8 * a2) objectAtIndexedSubscript:a3];
      [null setObject:v17 atIndexedSubscript:a4];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      v16 = [*(v11 + 8 * a2) objectAtIndexedSubscript:a3];
      [v16 setObject:null atIndexedSubscript:a4];
    }
  }
}

- (id)readStats:(id *)stats
{
  v24[3] = *MEMORY[0x277D85DE8];
  if ([(CLPCReportingClient *)self ensureStatsEnabled:stats]&& (v20[0] = 0, subscription = self->reporting_subscription.subscription, subscribed_channels = self->reporting_subscription.subscribed_channels, (Samples = IOReportCreateSamples()) != 0))
  {
    if (self->thread_group_stats_requested)
    {
      if (self->previous_timestamp)
      {
        v23[0] = @"format";
        v23[1] = @"group_ids";
        v24[0] = @"shared_report";
        v24[1] = @"all";
        v23[2] = @"last_request_time";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v24[2] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      }

      else
      {
        v9 = &unk_28701A740;
      }

      clpc::user::iokit::CLPC::performRPC(&self->super.clpc, @"getThreadGroup", v9, v20);
      v12 = v20[0];
      if (stats && !v20[0])
      {
        v21 = *MEMORY[0x277CCA068];
        v22 = @"Unable to query thread groups.";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *stats = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v13];

        v12 = v20[0];
      }

      v11 = v12;
      [(CLPCReportingClient *)self decodeTGRawData:v11 delta:0 error:stats];
    }

    else
    {
      v11 = 0;
    }

    v14 = Samples;
    v19 = v14;
    v15 = [(CLPCReportingClient *)&self->super.super.isa buildSchemas:stats error:?];

    if (v15)
    {
      v18 = v14;
      v10 = [CLPCReportingClient convertSampleList:? error:?];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (uint64_t)decodeTGRawData:(char)data delta:(void *)delta error:
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v73 = v5;
  if (self)
  {
    v97 = 0;
    v98 = 0;
    v95 = 0;
    v96 = &v97;
    __src = 0;
    v94 = 0;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = [v5 objectForKeyedSubscript:@"shared_reports"];
    v6 = [obj countByEnumeratingWithState:&v89 objects:v104 count:16];
    if (v6)
    {
      v7 = *v90;
      selfCopy = self;
      v76 = *v90;
      do
      {
        v8 = 0;
        v77 = v6;
        do
        {
          if (*v90 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v89 + 1) + 8 * v8);
          if ([v9 length] >= 0x49)
          {
            v86 = 0u;
            v87 = 0u;
            v88 = 1065353216;
            v83 = 0u;
            v84 = 0u;
            v85 = 1065353216;
            memset(v103, 0, 41);
            v101 = 0u;
            v102 = 0u;
            [v9 getBytes:&v101 length:73];
            v10 = *(&v103[1] + 9);
            v11 = *(&v103[2] + 1);
            v12 = [v9 length];
            v13 = 16 * v11;
            v14 = 16 * v11 + *(&v103[2] + 5);
            self = selfCopy;
            if (v12 >= v14)
            {
              v82[0] = &v101 + 1;
              v15 = std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v96, (&v101 + 1));
              v16 = *(&v103[1] + 9);
              v18 = v103[0];
              v17 = v103[1];
              v19 = v101;
              *(v15 + 7) = v102;
              *(v15 + 9) = v18;
              *(v15 + 11) = v17;
              *(v15 + 97) = v16;
              *(v15 + 5) = v19;
              v20 = *(v103 + 9);
              __p[0] = 0x900000000;
              v82[0] = __p;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v86, __p)[3] = v20;
              v21 = *(&v103[1] + 1);
              __p[0] = 0x900000001;
              v82[0] = __p;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v86, __p)[3] = v21;
              std::vector<clpc::shared::rpc::ThreadGroupReportingCPUCluster>::vector[abi:ne200100](v82, *(&v103[1] + 9));
              std::vector<clpc::shared::rpc::ThreadGroupReportingANECluster>::vector[abi:ne200100](__p, *(&v103[2] + 1));
              [v9 getBytes:v82[0] range:{*(&v103[1] + 13), 40 * v10}];
              self = selfCopy;
              [v9 getBytes:__p[0] range:{*(&v103[2] + 5), v13}];
              if (*(&v103[1] + 9))
              {
                v22 = 0;
                v23 = 0;
                do
                {
                  v80 = 0xA00000000;
                  v100 = &v80;
                  v24 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v83, &v80);
                  std::vector<unsigned long long>::push_back[abi:ne200100](v24 + 3, v82[0] + v22);
                  v80 = 0xA00000002;
                  v100 = &v80;
                  v25 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v83, &v80);
                  std::vector<unsigned long long>::push_back[abi:ne200100](v25 + 3, v82[0] + v22 + 24);
                  v80 = 0xA00000003;
                  v100 = &v80;
                  v26 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v83, &v80);
                  std::vector<unsigned long long>::push_back[abi:ne200100](v26 + 3, v82[0] + v22 + 32);
                  v80 = 0xA00000001;
                  v100 = &v80;
                  v27 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(&v83, &v80);
                  v100 = (*(v82[0] + v22 + 16) + *(v82[0] + v22 + 8));
                  std::vector<unsigned long long>::push_back[abi:ne200100](v27 + 3, &v100);
                  ++v23;
                  v22 += 40;
                }

                while (v23 < *(&v103[1] + 9));
              }

              if (*(&v103[2] + 1))
              {
                v28 = 0;
                v29 = 0;
                do
                {
                  v30 = *(__p[0] + v28 + 8);
                  v80 = 0x900000003;
                  v100 = &v80;
                  v31 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v86, &v80);
                  v31[3] += v30;
                  v32 = *(__p[0] + v28);
                  v80 = 0x900000002;
                  v100 = &v80;
                  v33 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v86, &v80);
                  v33[3] += v32;
                  ++v29;
                  v28 += 16;
                }

                while (v29 < *(&v103[2] + 1));
              }

              if (data)
              {
                if (std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>((selfCopy + 1032), (&v101 + 1)) && std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::find<CLPCReportingStatID>((selfCopy + 1072), (&v101 + 1)))
                {
                  if (![CLPCReportingClient computeTGDiff:selfCopy cluster_acc:&v86 tg_id:&v83 error:*(&v101 + 1)])
                  {
                  }
                }

                else
                {
                  v100 = (&v101 + 1);
                  v36 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1032), (&v101 + 1));
                  if (v36 + 3 != &v86)
                  {
                    *(v36 + 14) = v88;
                    std::__hash_table<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,void *> *>>(v36 + 3, v87, 0);
                  }

                  v100 = (&v101 + 1);
                  v37 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1072), (&v101 + 1));
                  if (v37 + 3 != &v83)
                  {
                    *(v37 + 14) = v85;
                    std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,void *> *>>(v37 + 3, v84, 0);
                  }
                }
              }

              else
              {
                v100 = (&v101 + 1);
                v34 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1032), (&v101 + 1));
                if (v34 + 3 != &v86)
                {
                  *(v34 + 14) = v88;
                  std::__hash_table<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,unsigned long long>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,unsigned long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,unsigned long long>,void *> *>>(v34 + 3, v87, 0);
                }

                v100 = (&v101 + 1);
                v35 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1072), (&v101 + 1));
                if (v35 + 3 != &v83)
                {
                  *(v35 + 14) = v85;
                  std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,void *> *>>(v35 + 3, v84, 0);
                }
              }

              v100 = (&v101 + 1);
              v38 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1112), (&v101 + 1));
              std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::__move_assign((v38 + 3), &v86);
              v100 = (&v101 + 1);
              v39 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1152), (&v101 + 1));
              std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__move_assign((v39 + 3), &v83);
              v40 = *(&v101 + 1);
              v41 = *(selfCopy + 1200);
              if (HIDWORD(v41) <= 0xA && (v41 & 0xFFFFFFFF00000000) == 0xA00000000)
              {
                v100 = (&v101 + 1);
                v42 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,std::vector<unsigned long long>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1152), (&v101 + 1));
                v100 = (selfCopy + 1200);
                v43 = std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::__emplace_unique_key_args<CLPCReportingStatID,std::piecewise_construct_t const&,std::tuple<CLPCReportingStatID const&>,std::tuple<>>(v42 + 3, (selfCopy + 1200));
                v44 = *(selfCopy + 40);
                if (v44)
                {
                  v45 = 0;
                  v46 = v43[3];
                  do
                  {
                    v47 = *v46++;
                    v45 += v47;
                    --v44;
                  }

                  while (v44);
                }

                else
                {
                  v45 = 0;
                }
              }

              else
              {
                v100 = (&v101 + 1);
                v48 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<CLPCReportingStatID,unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((selfCopy + 1112), (&v101 + 1));
                v100 = (selfCopy + 1200);
                v45 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v48 + 3, (selfCopy + 1200))[3];
              }

              v49 = v94;
              if (v94 >= v95)
              {
                v51 = __src;
                v52 = v94 - __src;
                v53 = (v94 - __src) >> 4;
                v54 = v53 + 1;
                if ((v53 + 1) >> 60)
                {
                  std::vector<std::pair<unsigned long,int>>::__throw_length_error[abi:ne200100]();
                }

                v55 = v95 - __src;
                if ((v95 - __src) >> 3 > v54)
                {
                  v54 = v55 >> 3;
                }

                v56 = v55 >= 0x7FFFFFFFFFFFFFF0;
                v57 = 0xFFFFFFFFFFFFFFFLL;
                if (!v56)
                {
                  v57 = v54;
                }

                if (v57)
                {
                  std::allocator<clpc::shared::rpc::ThreadGroupReportingANECluster>::allocate_at_least[abi:ne200100](&__src, v57);
                }

                v58 = (16 * v53);
                *v58 = v40;
                v58[1] = v45;
                v50 = (16 * v53 + 16);
                memcpy(0, v51, v52);
                v59 = __src;
                __src = 0;
                v94 = v50;
                v95 = 0;
                if (v59)
                {
                  operator delete(v59);
                }

                self = selfCopy;
              }

              else
              {
                *v94 = v40;
                *(v49 + 1) = v45;
                v50 = (v49 + 16);
              }

              v94 = v50;
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v82[0])
              {
                v82[1] = v82[0];
                operator delete(v82[0]);
              }
            }

            std::__hash_table<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::__unordered_map_hasher<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,true>,std::__unordered_map_equal<CLPCReportingStatID,std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>,std::equal_to<CLPCReportingStatID>,std::hash<CLPCReportingStatID>,true>,std::allocator<std::__hash_value_type<CLPCReportingStatID,std::vector<unsigned long long>>>>::~__hash_table(&v83);
            std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::~__hash_table(&v86);
            v7 = v76;
            v6 = v77;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v89 objects:v104 count:16];
      }

      while (v6);
    }

    v60 = 126 - 2 * __clz((v94 - __src) >> 4);
    if (v94 == __src)
    {
      v61 = 0;
    }

    else
    {
      v61 = v60;
    }

    std::__introsort<std::_ClassicAlgPolicy,[CLPCReportingClient decodeTGRawData:delta:error:]::$_10 &,std::pair<unsigned long long,unsigned long long> *,false>(__src, v94, v61, 1);
    v62 = __src;
    v63 = *(self + 56);
    if ((v94 - __src) >> 4 >= v63)
    {
      v64 = *(self + 56);
    }

    else
    {
      v64 = (v94 - __src) >> 4;
    }

    if (v63)
    {
      v65 = v64;
    }

    else
    {
      v65 = (v94 - __src) >> 4;
    }

    if (v65 < (v94 - __src) >> 4)
    {
      v66 = 16 * v65;
      do
      {
        std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::__erase_unique<unsigned long long>(&v96, &v62[v66]);
        ++v65;
        v62 = __src;
        v66 += 16;
      }

      while (v65 < (v94 - __src) >> 4);
    }

    v67 = self + 1008;
    std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::destroy(self + 1000, *(self + 1008));
    v68 = v97;
    *(self + 1000) = v96;
    *(self + 1008) = v68;
    v69 = v98;
    *(self + 1016) = v98;
    if (v69)
    {
      v68[2] = v67;
      v96 = &v97;
      v97 = 0;
      v98 = 0;
      v68 = 0;
    }

    else
    {
      *(self + 1000) = v67;
    }

    v99 = 1;
    if (__src)
    {
      v94 = __src;
      operator delete(__src);
      v68 = v97;
    }

    std::__tree<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,clpc::shared::rpc::ThreadGroupReporting>>>::destroy(&v96, v68);
    v70 = v99;
  }

  else
  {
    v70 = 0;
  }

  v71 = *MEMORY[0x277D85DE8];
  return v70;
}

- (id)readDeltaStats:(id *)stats
{
  v32[3] = *MEMORY[0x277D85DE8];
  if ([(CLPCReportingClient *)self ensureStatsEnabled:stats]&& (v28[0] = 0, subscription = self->reporting_subscription.subscription, subscribed_channels = self->reporting_subscription.subscribed_channels, (v7 = IOReportCreateSamples()) != 0))
  {
    if (self->thread_group_stats_requested)
    {
      if (self->previous_timestamp)
      {
        v31[0] = @"format";
        v31[1] = @"group_ids";
        v32[0] = @"shared_report";
        v32[1] = @"all";
        v31[2] = @"last_request_time";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
        v32[2] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
      }

      else
      {
        v9 = &unk_28701A790;
      }

      v12 = [&unk_28701A768 objectForKeyedSubscript:@"method"];
      clpc::user::iokit::CLPC::performRPC(&self->super.clpc, v12, v9, v28);

      v13 = v28[0];
      if (stats && !v28[0])
      {
        v29 = *MEMORY[0x277CCA068];
        v30 = @"Unable to query thread groups.";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *stats = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870199 userInfo:v14];

        v13 = v28[0];
      }

      v11 = v13;
      if (self->prev_report_acc.__table_.__size_)
      {
        v15 = 1;
      }

      else
      {
        v15 = self->prev_report_cluster_acc.__table_.__size_ != 0;
      }

      [(CLPCReportingClient *)self decodeTGRawData:v11 delta:v15 error:stats];
    }

    else
    {
      v11 = 0;
    }

    v16 = v7;
    v27 = v16;
    v17 = [(CLPCReportingClient *)&self->super.super.isa buildSchemas:stats error:?];

    if (v17)
    {
      samples = self->prev_sample_list.samples;
      if (samples)
      {
        v19 = samples;
        v28[0] = 0;
        SamplesDelta = IOReportCreateSamplesDelta();
        if (v28[0])
        {
          *stats = v28[0];
        }

        if (SamplesDelta)
        {
          objc_storeStrong(&self->prev_sample_list.samples, v7);
          v25 = SamplesDelta;
          v21 = SamplesDelta;
          v10 = [CLPCReportingClient convertSampleList:? error:?];
        }

        else
        {
          v22 = v16;
          v10 = 0;
          v21 = self->prev_sample_list.samples;
          self->prev_sample_list.samples = v22;
        }
      }

      else
      {
        objc_storeStrong(&self->prev_sample_list.samples, v7);
        v26 = v16;
        v10 = [CLPCReportingClient convertSampleList:? error:?];
        v21 = v26;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)setTGSortingMetric:(unint64_t)metric error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = HIDWORD(metric) < 0xB && HIDWORD(metric) == 9;
  v5 = v4;
  if (v4)
  {
    self->tg_sorting_metric = metric;
  }

  else if (error)
  {
    v10 = *MEMORY[0x277CCA068];
    v11[0] = @"Invalid stat ID provided to sort TG stats by.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"CLPCErrorDomain" code:-536870206 userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 46) = 1065353216;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 32) = 0;
  *(self + 45) = 0;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 280) = 0u;
  v2 = self + 408;
  v3 = 440;
  do
  {
    *(v2 - 2) = 0uLL;
    *(v2 - 1) = 0uLL;
    *v2 = 1065353216;
    v2 += 10;
    v3 -= 40;
  }

  while (v3);
  *(self + 816) = 0;
  *(self + 832) = 0;
  *(self + 105) = 0;
  *(self + 107) = 0;
  *(self + 108) = 0;
  *(self + 109) = 0;
  *(self + 106) = &unk_2870185D8;
  *(self + 55) = 0u;
  *(self + 56) = 0u;
  *(self + 228) = 1065353216;
  *(self + 920) = 0u;
  *(self + 936) = 0u;
  *(self + 238) = 1065353216;
  *(self + 60) = 0u;
  *(self + 61) = 0u;
  *(self + 248) = 1065353216;
  *(self + 127) = 0;
  *(self + 126) = 0;
  *(self + 125) = self + 1008;
  *(self + 1032) = 0u;
  *(self + 1048) = 0u;
  *(self + 266) = 1065353216;
  *(self + 67) = 0u;
  *(self + 68) = 0u;
  *(self + 276) = 1065353216;
  *(self + 1112) = 0u;
  *(self + 1128) = 0u;
  *(self + 286) = 1065353216;
  *(self + 72) = 0u;
  *(self + 73) = 0u;
  *(self + 296) = 1065353216;
  return self;
}

- (__n128)buildSchemas:error:
{
  *a2 = &unk_287018748;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (void)buildSchemas:error:
{
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v13 = &unk_2870186A0;
  v14 = v3;
  ChannelID = IOReportChannelGetChannelID();
  v5 = **(self + 8);
  v15 = ChannelID;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CLPCReportingStatID>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CLPCReportingStatID>>>::find<unsigned long long>((v5 + 72), &v15);
  if (v6 && v6[3] == **(self + 16))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", ChannelID, v13, v14];
    v8 = *(self + 24);
    v9 = *v8;
    *v8 = v7;

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ChannelID];
    v11 = *(self + 32);
    v12 = *v11;
    *v11 = v10;
  }

  clpc::user::ioreport::Sample::~Sample(&v13);
}

@end