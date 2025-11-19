@interface TGIE5ModelConfigurationObjC
- (BOOL)isEqual:(id)a3;
- (TGIE5ModelConfiguration)modelConfiguration;
- (TGIE5ModelConfigurationObjC)initWithModelType:(int64_t)a3 modelBundlePath:(id)a4 e5Functions:(id)a5 adapterConfigurations:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TGIE5ModelConfigurationObjC

- (TGIE5ModelConfigurationObjC)initWithModelType:(int64_t)a3 modelBundlePath:(id)a4 e5Functions:(id)a5 adapterConfigurations:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = TGIE5ModelConfigurationObjC;
  v13 = [(TGIE5ModelConfigurationObjC *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_modelType = a3;
    v15 = [v10 copy];
    modelBundlePath = v14->_modelBundlePath;
    v14->_modelBundlePath = v15;

    v17 = [v12 copy];
    adapterConfigurations = v14->_adapterConfigurations;
    v14->_adapterConfigurations = v17;

    v19 = [v11 copy];
    e5Functions = v14->_e5Functions;
    v14->_e5Functions = v19;

    *&v14->_useEnergyEfficientMode = 0;
    v14->_ignoreUnknownTokens = 0;
    assetIdentifier = v14->_assetIdentifier;
    v14->_assetIdentifier = &stru_283453FD0;
  }

  return v14;
}

- (TGIE5ModelConfiguration)modelConfiguration
{
  v2 = v1;
  v56 = *MEMORY[0x277D85DE8];
  v4 = [v1 modelType] - 1;
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [v2 adapterConfigurations];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v7)
  {
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        if (v10)
        {
          [v10 adapterConfiguration];
        }

        else
        {
          v46 = 0;
          *v44 = 0u;
          *__p = 0u;
          *v42 = 0u;
          *v43 = 0u;
        }

        std::vector<TGIE5AdapterConfiguration>::push_back[abi:ne200100](&v51, v42);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v44[1]) < 0)
        {
          operator delete(v43[1]);
        }

        if (SHIBYTE(v43[0]) < 0)
        {
          operator delete(v42[0]);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [v2 e5Functions];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v54 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v35 + 1) + 8 * j);
        if (v15)
        {
          [v15 e5Function];
        }

        else
        {
          *v44 = 0u;
          *__p = 0u;
          *v42 = 0u;
          *v43 = 0u;
        }

        v16 = v40;
        if (v40 >= v41)
        {
          v19 = std::vector<TGIE5Function>::__emplace_back_slow_path<TGIE5Function>(&v39, v42);
        }

        else
        {
          v17 = *v42;
          *(v40 + 16) = v43[0];
          *v16 = v17;
          v42[1] = 0;
          v43[0] = 0;
          v42[0] = 0;
          *(v16 + 24) = v43[1];
          *(v16 + 32) = 0;
          *(v16 + 56) = 0;
          if (LOBYTE(__p[1]) == 1)
          {
            v18 = *v44;
            *(v16 + 48) = __p[0];
            *(v16 + 32) = v18;
            v44[1] = 0;
            __p[0] = 0;
            v44[0] = 0;
            *(v16 + 56) = 1;
          }

          v19 = v16 + 64;
        }

        v40 = v19;
        if (LOBYTE(__p[1]) == 1 && SHIBYTE(__p[0]) < 0)
        {
          operator delete(v44[0]);
        }

        if (SHIBYTE(v43[0]) < 0)
        {
          operator delete(v42[0]);
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v35 objects:v54 count:16];
    }

    while (v12);
  }

  *v42 = 0u;
  *v43 = 0u;
  LODWORD(v44[0]) = 1065353216;
  v20 = [v2 baseModel];
  v21 = v20 == 0;

  if (!v21)
  {
    v22 = [v2 baseModel];
    v23 = v22;
    if (v22)
    {
      [v22 sharedConstants];
    }

    else
    {
      v34 = 0;
      memset(v33, 0, sizeof(v33));
    }

    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__move_assign(v42, v33);
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v33);
  }

  v24 = [v2 modelBundlePath];
  v25 = v24;
  v31 = [v24 UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v32.__pn_, &v31);
  std::__fs::filesystem::__canonical(v33, &v32, 0);
  if (SHIBYTE(v32.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__pn_.__r_.__value_.__l.__data_);
  }

  retstr->var0 = v5;
  *retstr->var1.var0.var0.var0.var0 = *v33;
  *(&retstr->var1.var0.var0.var1 + 2) = *&v33[16];
  memset(v33, 0, 24);
  *&retstr[1].var0 = 0;
  retstr[1].var1.var0.var0.var1.var0 = 0;
  retstr[1].var1.var0.var0.var1.var1 = 0;
  std::vector<TGIE5AdapterConfiguration>::__init_with_size[abi:ne200100]<TGIE5AdapterConfiguration*,TGIE5AdapterConfiguration*>(&retstr[1], v51, v52, 0x8E38E38E38E38E39 * ((v52 - v51) >> 3));
  *(&retstr[1].var1.var0.var0.var1 + 2) = 0;
  *&retstr[2].var0 = 0;
  retstr[2].var1.var0.var0.var1.var0 = 0;
  std::vector<TGIE5Function>::__init_with_size[abi:ne200100]<TGIE5Function*,TGIE5Function*>((&retstr[1].var1.var0.var0.var1 + 1), v39, v40, (v40 - v39) >> 6);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::MemoryObject>>>>::__hash_table(&retstr[2].var1.var0.var0.var1.var1, v42);
  *(&retstr[3].var1.var0.var0.var1 + 2) = 0;
  *&retstr[4].var0 = 0;
  retstr[4].var1.var0.var0.var1.var0 = 0;
  retstr[4].var1.var0.var0.var0.var0[8] = [v2 useModelCatalogE5CompilerCache];
  retstr[4].var1.var0.var0.var0.var0[9] = [v2 ignoreUnknownTokens];
  v26 = [v2 serializeModelIOPath];
  v27 = v26 == 0;

  if (!v27)
  {
    v28 = [v2 serializeModelIOPath];
    v29 = v28;
    v32.__pn_.__r_.__value_.__r.__words[0] = [v28 UTF8String];
    std::__fs::filesystem::path::assign[abi:ne200100]<char const*>((&retstr[3].var1.var0.var0.var1 + 1), &v32);
  }

  if ((v33[23] & 0x80000000) != 0)
  {
    operator delete(*v33);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v42);
  v42[0] = &v39;
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](v42);
  v42[0] = &v51;
  std::vector<TGIE5AdapterConfiguration>::__destroy_vector::operator()[abi:ne200100](v42);
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TGIE5ModelConfigurationObjC alloc];
  v5 = [(TGIE5ModelConfigurationObjC *)self modelType];
  v6 = [(TGIE5ModelConfigurationObjC *)self modelBundlePath];
  v7 = [(TGIE5ModelConfigurationObjC *)self e5Functions];
  v8 = [(TGIE5ModelConfigurationObjC *)self adapterConfigurations];
  v9 = [(TGIE5ModelConfigurationObjC *)v4 initWithModelType:v5 modelBundlePath:v6 e5Functions:v7 adapterConfigurations:v8];

  v10 = [(TGIE5ModelConfigurationObjC *)self serializeModelIOPath];
  [(TGIE5ModelConfigurationObjC *)v9 setSerializeModelIOPath:v10];

  v11 = [(TGIE5ModelConfigurationObjC *)self baseModel];
  [(TGIE5ModelConfigurationObjC *)v9 setBaseModel:v11];

  [(TGIE5ModelConfigurationObjC *)v9 setUseEnergyEfficientMode:[(TGIE5ModelConfigurationObjC *)self useEnergyEfficientMode]];
  [(TGIE5ModelConfigurationObjC *)v9 setUseModelCatalogE5CompilerCache:[(TGIE5ModelConfigurationObjC *)self useModelCatalogE5CompilerCache]];
  [(TGIE5ModelConfigurationObjC *)v9 setIgnoreUnknownTokens:[(TGIE5ModelConfigurationObjC *)self ignoreUnknownTokens]];
  v12 = [(TGIE5ModelConfigurationObjC *)self assetIdentifier];
  [(TGIE5ModelConfigurationObjC *)v9 setAssetIdentifier:v12];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TGIMutableE5ModelConfigurationObjC alloc];
  v5 = [(TGIE5ModelConfigurationObjC *)self modelType];
  v6 = [(TGIE5ModelConfigurationObjC *)self modelBundlePath];
  v7 = [(TGIE5ModelConfigurationObjC *)self e5Functions];
  v8 = [(TGIE5ModelConfigurationObjC *)self adapterConfigurations];
  v9 = [(TGIE5ModelConfigurationObjC *)v4 initWithModelType:v5 modelBundlePath:v6 e5Functions:v7 adapterConfigurations:v8];

  v10 = [(TGIE5ModelConfigurationObjC *)self serializeModelIOPath];
  [(TGIE5ModelConfigurationObjC *)v9 setSerializeModelIOPath:v10];

  v11 = [(TGIE5ModelConfigurationObjC *)self baseModel];
  [(TGIE5ModelConfigurationObjC *)v9 setBaseModel:v11];

  [(TGIE5ModelConfigurationObjC *)v9 setUseEnergyEfficientMode:[(TGIE5ModelConfigurationObjC *)self useEnergyEfficientMode]];
  [(TGIE5ModelConfigurationObjC *)v9 setUseModelCatalogE5CompilerCache:[(TGIE5ModelConfigurationObjC *)self useModelCatalogE5CompilerCache]];
  [(TGIE5ModelConfigurationObjC *)v9 setIgnoreUnknownTokens:[(TGIE5ModelConfigurationObjC *)self ignoreUnknownTokens]];
  v12 = [(TGIE5ModelConfigurationObjC *)self assetIdentifier];
  [(TGIE5ModelConfigurationObjC *)v9 setAssetIdentifier:v12];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(TGIE5ModelConfigurationObjC *)self modelType];
  v4 = [(TGIE5ModelConfigurationObjC *)self modelBundlePath];
  v5 = [v4 hash];

  v6 = [(TGIE5ModelConfigurationObjC *)self adapterConfigurations];
  v7 = [v6 hash];

  v8 = [(TGIE5ModelConfigurationObjC *)self useEnergyEfficientMode];
  v9 = [(TGIE5ModelConfigurationObjC *)self baseModel];
  v10 = [v9 hash];

  v11 = [(TGIE5ModelConfigurationObjC *)self serializeModelIOPath];
  v12 = [v11 hash];

  v13 = [(TGIE5ModelConfigurationObjC *)self useModelCatalogE5CompilerCache];
  v14 = [(TGIE5ModelConfigurationObjC *)self ignoreUnknownTokens];
  v15 = [(TGIE5ModelConfigurationObjC *)self assetIdentifier];
  v16 = [v15 hash];

  return v5 ^ v3 ^ v7 ^ v8 ^ v10 ^ v12 ^ v13 ^ v14 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TGIE5ModelConfigurationObjC *)self modelType];
    if (v6 == [v5 modelType])
    {
      v7 = [(TGIE5ModelConfigurationObjC *)self modelBundlePath];
      v8 = [v5 modelBundlePath];
      if ([v7 isEqual:v8])
      {
        v9 = [(TGIE5ModelConfigurationObjC *)self adapterConfigurations];
        v10 = [v5 adapterConfigurations];
        if (TGIIsEqualAllowingNil(v9, v10))
        {
          v11 = [(TGIE5ModelConfigurationObjC *)self e5Functions];
          v12 = [v5 e5Functions];
          if ([v11 isEqual:v12])
          {
            v23 = [(TGIE5ModelConfigurationObjC *)self baseModel];
            v22 = [v5 baseModel];
            if (TGIIsEqualAllowingNil(v23, v22))
            {
              v21 = [(TGIE5ModelConfigurationObjC *)self serializeModelIOPath];
              v20 = [v5 serializeModelIOPath];
              if (TGIIsEqualAllowingNil(v21, v20) && (v13 = -[TGIE5ModelConfigurationObjC useEnergyEfficientMode](self, "useEnergyEfficientMode", v20), v13 == [v5 useEnergyEfficientMode]) && (v14 = -[TGIE5ModelConfigurationObjC useModelCatalogE5CompilerCache](self, "useModelCatalogE5CompilerCache"), v14 == objc_msgSend(v5, "useModelCatalogE5CompilerCache")) && (v15 = -[TGIE5ModelConfigurationObjC ignoreUnknownTokens](self, "ignoreUnknownTokens"), v15 == objc_msgSend(v5, "ignoreUnknownTokens")))
              {
                v18 = [(TGIE5ModelConfigurationObjC *)self assetIdentifier];
                v19 = [v5 assetIdentifier];
                v16 = v18 == v19;
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

  return v16;
}

- (id)description
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14[0] = @"modelType";
  v3 = TGIE5ModelTypeObjcToString([(TGIE5ModelConfigurationObjC *)self modelType]);
  v15[0] = v3;
  v14[1] = @"modelBundlePath";
  v4 = [(TGIE5ModelConfigurationObjC *)self modelBundlePath];
  v15[1] = v4;
  v14[2] = @"e5Functions";
  v5 = [(TGIE5ModelConfigurationObjC *)self e5Functions];
  v15[2] = v5;
  v14[3] = @"adapterConfigurations";
  v6 = [(TGIE5ModelConfigurationObjC *)self adapterConfigurations];
  v15[3] = v6;
  v14[4] = @"useEnergyEfficientMode";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[TGIE5ModelConfigurationObjC useEnergyEfficientMode](self, "useEnergyEfficientMode")}];
  v15[4] = v7;
  v14[5] = @"useModelCatalogE5CompilerCache";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[TGIE5ModelConfigurationObjC useModelCatalogE5CompilerCache](self, "useModelCatalogE5CompilerCache")}];
  v15[5] = v8;
  v14[6] = @"ignoreUnknownTokens";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[TGIE5ModelConfigurationObjC ignoreUnknownTokens](self, "ignoreUnknownTokens")}];
  v15[6] = v9;
  v14[7] = @"assetIdentifier";
  v10 = [(TGIE5ModelConfigurationObjC *)self assetIdentifier];
  v15[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];
  v12 = [v11 description];

  return v12;
}

@end