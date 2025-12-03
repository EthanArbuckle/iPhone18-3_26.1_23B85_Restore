@interface TGIE5AdapterConfigurationObjC
- (BOOL)isEqual:(id)equal;
- (TGIE5AdapterConfiguration)adapterConfiguration;
- (TGIE5AdapterConfigurationObjC)initWithAdapterType:(id)type symbolName:(id)name mutableWeightsFilePath:(id)path;
- (unint64_t)hash;
@end

@implementation TGIE5AdapterConfigurationObjC

- (TGIE5AdapterConfigurationObjC)initWithAdapterType:(id)type symbolName:(id)name mutableWeightsFilePath:(id)path
{
  v25[3] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = TGIE5AdapterConfigurationObjC;
  v11 = [(TGIE5AdapterConfigurationObjC *)&v23 init];
  if (v11)
  {
    v12 = [typeCopy copy];
    adapterType = v11->_adapterType;
    v11->_adapterType = v12;

    v14 = [nameCopy copy];
    symbolName = v11->_symbolName;
    v11->_symbolName = v14;

    v16 = [(__CFString *)pathCopy copy];
    mutableWeightsFilePath = v11->_mutableWeightsFilePath;
    v11->_mutableWeightsFilePath = v16;

    v24[0] = @"adapterType";
    v24[1] = @"symbolName";
    v25[0] = typeCopy;
    v25[1] = nameCopy;
    v24[2] = @"mutableWeightsFilePath";
    if (pathCopy)
    {
      v18 = pathCopy;
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
  adapterType = [v1 adapterType];
  std::string::basic_string[abi:ne200100]<0>(retstr, [adapterType UTF8String]);
  symbolName = [v2 symbolName];
  std::string::basic_string[abi:ne200100]<0>(retstr[1].var0.var0.var0.var0, [symbolName UTF8String]);
  mutableWeightsFilePath = [v2 mutableWeightsFilePath];
  uTF8String = [mutableWeightsFilePath UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&retstr[2], &uTF8String);

  uTF8String = &v8;
  std::vector<TGIE5Function>::__destroy_vector::operator()[abi:ne200100](&uTF8String);
  return result;
}

- (unint64_t)hash
{
  adapterType = [(TGIE5AdapterConfigurationObjC *)self adapterType];
  v4 = [adapterType hash];

  symbolName = [(TGIE5AdapterConfigurationObjC *)self symbolName];
  v6 = [symbolName hash];

  mutableWeightsFilePath = [(TGIE5AdapterConfigurationObjC *)self mutableWeightsFilePath];
  v8 = [mutableWeightsFilePath hash];

  return v6 ^ v4 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    adapterType = [(TGIE5AdapterConfigurationObjC *)self adapterType];
    adapterType2 = [v5 adapterType];
    if ([adapterType isEqual:adapterType2])
    {
      symbolName = [(TGIE5AdapterConfigurationObjC *)self symbolName];
      symbolName2 = [v5 symbolName];
      if ([symbolName isEqual:symbolName2])
      {
        mutableWeightsFilePath = [(TGIE5AdapterConfigurationObjC *)self mutableWeightsFilePath];
        mutableWeightsFilePath2 = [v5 mutableWeightsFilePath];
        v12 = [mutableWeightsFilePath isEqual:mutableWeightsFilePath2];
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