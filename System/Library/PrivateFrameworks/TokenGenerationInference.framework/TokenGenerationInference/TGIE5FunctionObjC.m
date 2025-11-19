@interface TGIE5FunctionObjC
- (BOOL)isEqual:(id)a3;
- (TGIE5Function)e5Function;
- (TGIE5FunctionObjC)initWithName:(id)a3 queryLength:(int64_t)a4 contextSize:(int64_t)a5 adapterType:(id)a6;
- (unint64_t)hash;
@end

@implementation TGIE5FunctionObjC

- (TGIE5FunctionObjC)initWithName:(id)a3 queryLength:(int64_t)a4 contextSize:(int64_t)a5 adapterType:(id)a6
{
  v27[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v25.receiver = self;
  v25.super_class = TGIE5FunctionObjC;
  v12 = [(TGIE5FunctionObjC *)&v25 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_queryLength = a4;
    v12->_contextSize = a5;
    v15 = [(__CFString *)v11 copy];
    adapterType = v12->_adapterType;
    v12->_adapterType = v15;

    v27[0] = v10;
    v26[0] = @"name";
    v26[1] = @"queryLength";
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v27[1] = v17;
    v26[2] = @"contextSize";
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v19 = v18;
    v26[3] = @"adapterType";
    v20 = @"nil";
    if (v11)
    {
      v20 = v11;
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
  v4 = [v1 adapterType];

  if (v4)
  {
    v5 = [v2 adapterType];
    v8 = [v5 UTF8String];
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&__p, &v8);
  }

  v6 = [v2 name];
  std::string::basic_string[abi:ne200100]<0>(retstr, [v6 UTF8String]);
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
  v3 = [(TGIE5FunctionObjC *)self name];
  v4 = [v3 hash];

  v5 = [(TGIE5FunctionObjC *)self queryLength];
  v6 = [(TGIE5FunctionObjC *)self contextSize];
  v7 = [(TGIE5FunctionObjC *)self adapterType];
  v8 = v6 ^ [v7 hash];

  return v5 ^ v4 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TGIE5FunctionObjC *)self name];
    v7 = [v5 name];
    if ([v6 isEqual:v7] && (v8 = -[TGIE5FunctionObjC queryLength](self, "queryLength"), v8 == objc_msgSend(v5, "queryLength")) && (v9 = -[TGIE5FunctionObjC contextSize](self, "contextSize"), v9 == objc_msgSend(v5, "contextSize")))
    {
      v10 = [(TGIE5FunctionObjC *)self adapterType];
      v11 = [v5 adapterType];
      v12 = v10;
      v13 = v11;
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