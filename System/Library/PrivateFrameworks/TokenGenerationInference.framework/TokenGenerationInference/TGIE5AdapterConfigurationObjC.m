@interface TGIE5AdapterConfigurationObjC
- (BOOL)isEqual:(id)a3;
- (TGIE5AdapterConfiguration)adapterConfiguration;
- (TGIE5AdapterConfigurationObjC)initWithAdapterType:(id)a3 symbolName:(id)a4 mutableWeightsFilePath:(id)a5;
- (unint64_t)hash;
@end

@implementation TGIE5AdapterConfigurationObjC

- (TGIE5AdapterConfigurationObjC)initWithAdapterType:(id)a3 symbolName:(id)a4 mutableWeightsFilePath:(id)a5
{
  v25[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = TGIE5AdapterConfigurationObjC;
  v11 = [(TGIE5AdapterConfigurationObjC *)&v23 init];
  if (v11)
  {
    v12 = [v8 copy];
    adapterType = v11->_adapterType;
    v11->_adapterType = v12;

    v14 = [v9 copy];
    symbolName = v11->_symbolName;
    v11->_symbolName = v14;

    v16 = [(__CFString *)v10 copy];
    mutableWeightsFilePath = v11->_mutableWeightsFilePath;
    v11->_mutableWeightsFilePath = v16;

    v24[0] = @"adapterType";
    v24[1] = @"symbolName";
    v25[0] = v8;
    v25[1] = v9;
    v24[2] = @"mutableWeightsFilePath";
    if (v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = @"nil";
    }

    v25[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v20 = [v19 description];
    description = v11->_description;
    v11->_description = v20;
  }

  return v11;
}

- (TGIE5AdapterConfiguration)adapterConfiguration
{
  v2 = v1;
  v4 = [v1 adapterType];
  std::string::basic_string[abi:ne200100]<0>(retstr, [v4 UTF8String]);
  v5 = [v2 symbolName];
  std::string::basic_string[abi:ne200100]<0>(retstr[1].var0.var0.var0.var0, [v5 UTF8String]);
  v6 = [v2 mutableWeightsFilePath];
  v9 = [v6 UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&retstr[2], &v9);

  v9 = &v8;
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](&v9);
  return result;
}

- (unint64_t)hash
{
  v3 = [(TGIE5AdapterConfigurationObjC *)self adapterType];
  v4 = [v3 hash];

  v5 = [(TGIE5AdapterConfigurationObjC *)self symbolName];
  v6 = [v5 hash];

  v7 = [(TGIE5AdapterConfigurationObjC *)self mutableWeightsFilePath];
  v8 = [v7 hash];

  return v6 ^ v4 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TGIE5AdapterConfigurationObjC *)self adapterType];
    v7 = [v5 adapterType];
    if ([v6 isEqual:v7])
    {
      v8 = [(TGIE5AdapterConfigurationObjC *)self symbolName];
      v9 = [v5 symbolName];
      if ([v8 isEqual:v9])
      {
        v10 = [(TGIE5AdapterConfigurationObjC *)self mutableWeightsFilePath];
        v11 = [v5 mutableWeightsFilePath];
        v12 = [v10 isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end