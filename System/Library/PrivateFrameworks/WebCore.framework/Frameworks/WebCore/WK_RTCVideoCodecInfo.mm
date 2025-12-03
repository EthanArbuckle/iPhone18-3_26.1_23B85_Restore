@interface WK_RTCVideoCodecInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCodecInfo:(id)info;
- (SdpVideoFormat)nativeSdpVideoFormat;
- (WK_RTCVideoCodecInfo)initWithCoder:(id)coder;
- (WK_RTCVideoCodecInfo)initWithName:(id)name parameters:(id)parameters;
- (WK_RTCVideoCodecInfo)initWithNativeSdpVideoFormat:(SdpVideoFormat *)format;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WK_RTCVideoCodecInfo

- (WK_RTCVideoCodecInfo)initWithNativeSdpVideoFormat:(SdpVideoFormat *)format
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  var0 = format[1].var0.var0.var1.var0;
  if (var0 != &format[1].var0.var0.var1.var1)
  {
    do
    {
      v7 = [MEMORY[0x277CCACA8] rtcStringForStdString:var0 + 56];
      v8 = [MEMORY[0x277CCACA8] rtcStringForStdString:var0 + 32];
      [dictionary setObject:v7 forKey:v8];

      v9 = *(var0 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = v9->var0.var0.var1.var0;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(var0 + 2);
          v11 = v10->var0.var0.var1.var0 == var0;
          var0 = v10;
        }

        while (!v11);
      }

      var0 = v10;
    }

    while (v10 != &format[1].var0.var0.var1.var1);
  }

  v12 = [MEMORY[0x277CCACA8] rtcStringForStdString:format];
  v13 = [(WK_RTCVideoCodecInfo *)self initWithName:v12 parameters:dictionary];

  return v13;
}

- (SdpVideoFormat)nativeSdpVideoFormat
{
  v49 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = 0;
  v35 = v1;
  v44 = v45;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  parameters = [v1 parameters];
  obj = [parameters allKeys];

  v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (!v3)
  {
    goto LABEL_52;
  }

  v34 = *v41;
  do
  {
    for (i = 0; i != v3; ++i)
    {
LABEL_15:
      if (*v41 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v40 + 1) + 8 * i);
      [MEMORY[0x277CCACA8] rtcStdStringForString:v7];
      v8 = MEMORY[0x277CCACA8];
      parameters2 = [v35 parameters];
      v10 = [parameters2 objectForKeyedSubscript:v7];
      [v8 rtcStdStringForString:v10];

      v11 = v45[0];
      if (!v45[0])
      {
LABEL_43:
        operator new();
      }

      if ((v39 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v39 & 0x80u) == 0)
      {
        v13 = v39;
      }

      else
      {
        v13 = __p[1];
      }

      while (1)
      {
        while (1)
        {
          v14 = v11;
          v17 = *(v11 + 32);
          v15 = v11 + 32;
          v16 = v17;
          v18 = *(v15 + 23);
          v19 = (v18 >= 0 ? v15 : v16);
          v20 = v18 >= 0 ? *(v15 + 23) : *(v15 + 8);
          v21 = v20 >= v13 ? v13 : v20;
          v22 = memcmp(v12, v19, v21);
          if (v22)
          {
            break;
          }

          if (v13 >= v20)
          {
            goto LABEL_38;
          }

LABEL_24:
          v11 = *v14;
          if (!*v14)
          {
            goto LABEL_43;
          }
        }

        if (v22 < 0)
        {
          goto LABEL_24;
        }

LABEL_38:
        v23 = memcmp(v19, v12, v21);
        if (v23)
        {
          if ((v23 & 0x80000000) == 0)
          {
            break;
          }

          goto LABEL_42;
        }

        if (v20 >= v13)
        {
          break;
        }

LABEL_42:
        v11 = *(v14 + 8);
        if (!v11)
        {
          goto LABEL_43;
        }
      }

      v24 = (v14 + 56);
      if ((v14 + 56) != v36)
      {
        if (*(v14 + 79) < 0)
        {
          if (v37 >= 0)
          {
            v5 = v36;
          }

          else
          {
            v5 = v36[0];
          }

          if (v37 >= 0)
          {
            v6 = HIBYTE(v37);
          }

          else
          {
            v6 = v36[1];
          }

          std::string::__assign_no_alias<false>(v24, v5, v6);
        }

        else
        {
          if ((v37 & 0x8000000000000000) == 0)
          {
            *&v24->__r_.__value_.__l.__data_ = *v36;
            *(v14 + 72) = v37;
            goto LABEL_13;
          }

          std::string::__assign_no_alias<true>(v24, v36[0], v36[1]);
        }
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }

LABEL_13:
      if ((v39 & 0x80000000) == 0)
      {
        if (++i == v3)
        {
          break;
        }

        goto LABEL_15;
      }

      operator delete(__p[0]);
    }

    v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  }

  while (v3);
LABEL_52:

  v25 = MEMORY[0x277CCACA8];
  name = [v35 name];
  [v25 rtcStdStringForString:name];
  if (SHIBYTE(v47) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, v46[0], v46[1]);
  }

  else
  {
    *retstr->var0.var0.var0.var0 = *v46;
    *(&retstr->var0.var0.var1 + 2) = v47;
  }

  retstr[1].var0.var0.var1.var1 = 0;
  retstr[1].var0.var0.var1.var0 = &retstr[1].var0.var0.var0.var0[8];
  *(&retstr[1].var0.var0.var1 + 2) = 0;
  v27 = v44;
  if (v44 != v45)
  {
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(&retstr[1], &retstr[1].var0.var0.var1.var1, v27 + 4);
      v29 = v27[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v27[2];
          v31 = *v30 == v27;
          v27 = v30;
        }

        while (!v31);
      }

      v27 = v30;
    }

    while (v30 != v45);
  }

  retstr[2].var0.var0.var1.var0 = 0;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v44, v45[0]);
  return result;
}

- (WK_RTCVideoCodecInfo)initWithName:(id)name parameters:(id)parameters
{
  nameCopy = name;
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = WK_RTCVideoCodecInfo;
  v9 = [(WK_RTCVideoCodecInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    if (parametersCopy)
    {
      v11 = parametersCopy;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v10->_parameters, v11);
  }

  return v10;
}

- (BOOL)isEqualToCodecInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    name = [(WK_RTCVideoCodecInfo *)self name];
    name2 = [infoCopy name];
    if ([name isEqualToString:name2])
    {
      parameters = [(WK_RTCVideoCodecInfo *)self parameters];
      parameters2 = [infoCopy parameters];
      v9 = [parameters isEqualToDictionary:parameters2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {

    return 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(WK_RTCVideoCodecInfo *)self isEqualToCodecInfo:v5];

      return v6;
    }

    else
    {

      return 0;
    }
  }
}

- (unint64_t)hash
{
  name = [(WK_RTCVideoCodecInfo *)self name];
  v4 = [name hash];
  parameters = [(WK_RTCVideoCodecInfo *)self parameters];
  v6 = [parameters hash];

  return v6 ^ v4;
}

- (WK_RTCVideoCodecInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"name"];
  v6 = [coderCopy decodeObjectForKey:@"parameters"];

  v7 = [(WK_RTCVideoCodecInfo *)self initWithName:v5 parameters:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
}

@end