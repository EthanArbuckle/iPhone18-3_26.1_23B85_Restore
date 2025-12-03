@interface TGIE5FunctionObjC
- (BOOL)isEqual:(id)equal;
- (TGIE5Function)e5Function;
- (TGIE5FunctionObjC)initWithName:(id)name queryLength:(int64_t)length contextSize:(int64_t)size adapterType:(id)type;
- (unint64_t)hash;
@end

@implementation TGIE5FunctionObjC

- (TGIE5FunctionObjC)initWithName:(id)name queryLength:(int64_t)length contextSize:(int64_t)size adapterType:(id)type
{
  v27[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  typeCopy = type;
  v25.receiver = self;
  v25.super_class = TGIE5FunctionObjC;
  v12 = [(TGIE5FunctionObjC *)&v25 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_queryLength = length;
    v12->_contextSize = size;
    v15 = [(__CFString *)typeCopy copy];
    adapterType = v12->_adapterType;
    v12->_adapterType = v15;

    v27[0] = nameCopy;
    v26[0] = @"name";
    v26[1] = @"queryLength";
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:length];
    v27[1] = v17;
    v26[2] = @"contextSize";
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:size];
    v19 = v18;
    v26[3] = @"adapterType";
    v20 = @"nil";
    if (typeCopy)
    {
      v20 = typeCopy;
    }

    v27[2] = v18;
    v27[3] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
    v22 = [v21 description];
    description = v12->_description;
    v12->_description = v22;
  }

  return v12;
}

- (TGIE5Function)e5Function
{
  v2 = v1;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v10 = 0;
  adapterType = [v1 adapterType];

  if (adapterType)
  {
    adapterType2 = [v2 adapterType];
    uTF8String = [adapterType2 UTF8String];
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&__p, &uTF8String);
  }

  name = [v2 name];
  std::string::basic_string[abi:ne200100]<0>(retstr, [name UTF8String]);
  *retstr[1].var0.var0.var0.var0 = [v2 queryLength];
  HIDWORD(retstr[1].var0.var0.var1.var0) = [v2 contextSize];
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&retstr[1].var0.var0.var1.var1, &__p);

  if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return result;
}

- (unint64_t)hash
{
  name = [(TGIE5FunctionObjC *)self name];
  v4 = [name hash];

  queryLength = [(TGIE5FunctionObjC *)self queryLength];
  contextSize = [(TGIE5FunctionObjC *)self contextSize];
  adapterType = [(TGIE5FunctionObjC *)self adapterType];
  v8 = contextSize ^ [adapterType hash];

  return queryLength ^ v4 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(TGIE5FunctionObjC *)self name];
    name2 = [v5 name];
    if ([name isEqual:name2] && (v8 = -[TGIE5FunctionObjC queryLength](self, "queryLength"), v8 == objc_msgSend(v5, "queryLength")) && (v9 = -[TGIE5FunctionObjC contextSize](self, "contextSize"), v9 == objc_msgSend(v5, "contextSize")))
    {
      adapterType = [(TGIE5FunctionObjC *)self adapterType];
      adapterType2 = [v5 adapterType];
      v12 = adapterType;
      v13 = adapterType2;
      v14 = v13;
      if (v12 | v13)
      {
        if (!v12 || v13)
        {
          v15 = [v12 isEqual:v13];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end