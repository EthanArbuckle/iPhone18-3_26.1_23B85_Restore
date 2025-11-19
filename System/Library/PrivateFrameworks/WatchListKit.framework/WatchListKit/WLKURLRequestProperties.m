@interface WLKURLRequestProperties
+ (WLKURLRequestProperties)requestPropertiesWithEndpoint:(id)a3 queryParameters:(id)a4 httpMethod:(id)a5 httpBody:(id)a6 headers:(id)a7 caller:(id)a8 timeout:(id)a9 apiVersion:(id)a10 options:(int64_t)a11 clientProtocolVersion:(id)a12;
+ (WLKURLRequestProperties)requestPropertiesWithServerRoute:(id)a3 queryParameters:(id)a4 httpMethod:(id)a5 httpBody:(id)a6 headers:(id)a7 caller:(id)a8 timeout:(id)a9 options:(int64_t)a10 clientProtocolVersion:(id)a11;
- (BOOL)isEqual:(id)a3;
- (id)URLRequestWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation WLKURLRequestProperties

- (id)shortDescription
{
  endpoint = self->_endpoint;
  if (!endpoint)
  {
    endpoint = self->_routeName;
  }

  return endpoint;
}

+ (WLKURLRequestProperties)requestPropertiesWithServerRoute:(id)a3 queryParameters:(id)a4 httpMethod:(id)a5 httpBody:(id)a6 headers:(id)a7 caller:(id)a8 timeout:(id)a9 options:(int64_t)a10 clientProtocolVersion:(id)a11
{
  v16 = a5;
  v17 = a11;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = a3;
  v24 = objc_alloc_init(WLKURLRequestProperties);
  [(WLKURLRequestProperties *)v24 setRouteName:v23];

  [(WLKURLRequestProperties *)v24 setQueryParameters:v22];
  if (![(__CFString *)v16 length])
  {

    v16 = @"GET";
  }

  [(WLKURLRequestProperties *)v24 setHttpMethod:v16];
  [(WLKURLRequestProperties *)v24 setHttpBody:v21];

  [(WLKURLRequestProperties *)v24 setHeaders:v20];
  [(WLKURLRequestProperties *)v24 setCaller:v19];

  [(WLKURLRequestProperties *)v24 setTimeout:v18];
  [(WLKURLRequestProperties *)v24 setOptions:a10];
  [(WLKURLRequestProperties *)v24 setClientProtocolVersion:v17];

  return v24;
}

+ (WLKURLRequestProperties)requestPropertiesWithEndpoint:(id)a3 queryParameters:(id)a4 httpMethod:(id)a5 httpBody:(id)a6 headers:(id)a7 caller:(id)a8 timeout:(id)a9 apiVersion:(id)a10 options:(int64_t)a11 clientProtocolVersion:(id)a12
{
  v17 = a5;
  v30 = a10;
  v18 = a12;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a4;
  v24 = a3;
  v25 = objc_alloc_init(WLKURLRequestProperties);
  [(WLKURLRequestProperties *)v25 setEndpoint:v24];

  [(WLKURLRequestProperties *)v25 setQueryParameters:v23];
  if (![(__CFString *)v17 length])
  {

    v17 = @"GET";
  }

  [(WLKURLRequestProperties *)v25 setHttpMethod:v17, v30];
  [(WLKURLRequestProperties *)v25 setHttpBody:v22];

  [(WLKURLRequestProperties *)v25 setHeaders:v21];
  [(WLKURLRequestProperties *)v25 setCaller:v20];
  [(WLKURLRequestProperties *)v25 setTimeout:v19];

  [(WLKURLRequestProperties *)v25 setClientProtocolVersion:v18];
  v26 = [v20 isEqualToString:@"tvjs"];

  if (v26)
  {
    [(WLKURLRequestProperties *)v25 setClientProtocolVersion:&unk_288222A28];
  }

  if (v31)
  {
    v27 = v31;
  }

  else
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:WLKCurrentAPIVersion()];
  }

  v28 = v27;
  [(WLKURLRequestProperties *)v25 setApiVersion:v27];
  [(WLKURLRequestProperties *)v25 setOptions:a11];

  return v25;
}

- (id)URLRequestWithConfiguration:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  endpoint = self->_endpoint;
  routeName = self->_routeName;
  if (endpoint)
  {
    v7 = routeName == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 && (endpoint || routeName == 0))
  {
    [WLKURLRequestProperties URLRequestWithConfiguration:];
  }

  v9 = [(NSDictionary *)self->_queryParameters mutableCopy];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = [(WLKURLRequestProperties *)self clientProtocolVersion];

  if (v10)
  {
    v11 = [(WLKURLRequestProperties *)self clientProtocolVersion];
    [v9 setObject:v11 forKeyedSubscript:@"v"];
  }

  if ((self->_options & 0x100000) == 0 && [(NSString *)self->_caller length])
  {
    [v9 setObject:self->_caller forKeyedSubscript:@"caller"];
  }

  options = self->_options;
  if (!self->_endpoint)
  {
    v18 = self->_routeName;
    if (!v18)
    {
      goto LABEL_23;
    }

    v17 = [MEMORY[0x277CBEBC0] wlk_URLWithServerConfig:v4 routeName:v18 queryParameters:v9 suppressParameterEncoding:(options >> 1) & 1];
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_21:
    timeout = self->_timeout;
    if (timeout)
    {
      [(NSNumber *)timeout doubleValue];
    }

    else
    {
      v20 = 30.0;
    }

    v22 = [MEMORY[0x277CBABA0] wlk_requestWithURL:v17 httpMethod:self->_httpMethod httpBody:self->_httpBody httpHeaders:self->_headers cachePolicy:0 timeout:v20];
    goto LABEL_28;
  }

  v13 = (options >> 1) & 1;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"/uts/v%@/", self->_apiVersion];
  v27[0] = self->_endpoint;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v16 = [v14 wlk_stringByAppendingPathComponents:v15];

  v17 = [MEMORY[0x277CBEBC0] wlk_URLWithServerConfig:v4 endpoint:v16 relativeToBaseURL:1 queryParameters:v9 suppressParameterEncoding:v13 ignoreUserLocation:{-[WLKURLRequestProperties ignoreUserLocation](self, "ignoreUserLocation")}];

  if (v17)
  {
    goto LABEL_21;
  }

LABEL_23:
  v21 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = self;
    _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "%@: unable to resolve URL", buf, 0xCu);
  }

  v17 = 0;
  v22 = 0;
LABEL_28:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WLKURLRequestProperties);
  v5 = [(NSString *)self->_endpoint copy];
  endpoint = v4->_endpoint;
  v4->_endpoint = v5;

  v7 = [(NSString *)self->_routeName copy];
  routeName = v4->_routeName;
  v4->_routeName = v7;

  v9 = v4->_endpoint;
  v10 = v4->_routeName;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      [WLKURLRequestProperties copyWithZone:];
    }
  }

  v13 = [(NSString *)self->_httpMethod copy];
  httpMethod = v4->_httpMethod;
  v4->_httpMethod = v13;

  v15 = [(NSDictionary *)self->_queryParameters copy];
  queryParameters = v4->_queryParameters;
  v4->_queryParameters = v15;

  v17 = [(NSDictionary *)self->_headers copy];
  headers = v4->_headers;
  v4->_headers = v17;

  v19 = [(NSString *)self->_caller copy];
  caller = v4->_caller;
  v4->_caller = v19;

  v21 = [(NSNumber *)self->_timeout copy];
  timeout = v4->_timeout;
  v4->_timeout = v21;

  v23 = [(NSNumber *)self->_apiVersion copy];
  apiVersion = v4->_apiVersion;
  v4->_apiVersion = v23;

  v4->_options = self->_options;
  return v4;
}

- (unint64_t)hash
{
  v3 = [(WLKURLRequestProperties *)self endpoint];
  v4 = [v3 hash];

  v5 = [(WLKURLRequestProperties *)self routeName];
  v6 = [v5 hash] ^ v4;

  v7 = [(WLKURLRequestProperties *)self httpMethod];
  v8 = [v7 hash];

  v9 = [(WLKURLRequestProperties *)self httpBody];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(WLKURLRequestProperties *)self queryParameters];
  v12 = [v11 hash];

  v13 = [(WLKURLRequestProperties *)self headers];
  v14 = v12 ^ [v13 hash];

  v15 = [(WLKURLRequestProperties *)self caller];
  v16 = v10 ^ v14 ^ [v15 hash];

  v17 = [(WLKURLRequestProperties *)self timeout];
  v18 = [v17 hash];

  v19 = [(WLKURLRequestProperties *)self apiVersion];
  v20 = v18 ^ [v19 hash];

  return v16 ^ v20 ^ [(WLKURLRequestProperties *)self options];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(WLKURLRequestProperties *)self endpoint];
    v8 = [(WLKURLRequestProperties *)v6 endpoint];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [v9 isEqual:v10];
      }
    }

    v14 = [(WLKURLRequestProperties *)self routeName];
    v15 = [(WLKURLRequestProperties *)v6 routeName];
    v16 = v14;
    v17 = v15;
    v18 = v17;
    if (v16 == v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0;
      if (v16 && v17)
      {
        v19 = [v16 isEqual:v17];
      }
    }

    v20 = v12 & v19;
    v21 = [(WLKURLRequestProperties *)self httpMethod];
    v22 = [(WLKURLRequestProperties *)v6 httpMethod];
    v23 = v21;
    v24 = v22;
    v25 = v24;
    if (v23 == v24)
    {
      v26 = 1;
    }

    else
    {
      v26 = 0;
      if (v23 && v24)
      {
        v26 = [v23 isEqual:v24];
      }
    }

    v27 = v20 & v26;
    v28 = [(WLKURLRequestProperties *)self httpBody];
    v29 = [(WLKURLRequestProperties *)v6 httpBody];
    v30 = v28;
    v31 = v29;
    v32 = v31;
    if (v30 == v31)
    {
      v33 = 1;
    }

    else
    {
      v33 = 0;
      if (v30 && v31)
      {
        v33 = [v30 isEqual:v31];
      }
    }

    v34 = v27 & v33;
    v35 = [(WLKURLRequestProperties *)self queryParameters];
    v36 = [(WLKURLRequestProperties *)v6 queryParameters];
    v37 = v35;
    v38 = v36;
    v39 = v38;
    if (v37 == v38)
    {
      v40 = 1;
    }

    else
    {
      v40 = 0;
      if (v37 && v38)
      {
        v40 = [v37 isEqual:v38];
      }
    }

    v41 = v34 & v40;
    v42 = [(WLKURLRequestProperties *)self headers];
    v43 = [(WLKURLRequestProperties *)v6 headers];
    v44 = v42;
    v45 = v43;
    v46 = v45;
    if (v44 == v45)
    {
      v47 = 1;
    }

    else
    {
      v47 = 0;
      if (v44 && v45)
      {
        v47 = [v44 isEqual:v45];
      }
    }

    v48 = v41 & v47;
    v49 = [(WLKURLRequestProperties *)self caller];
    v50 = [(WLKURLRequestProperties *)v6 caller];
    v51 = v49;
    v52 = v50;
    v53 = v52;
    if (v51 == v52)
    {
      v54 = 1;
    }

    else
    {
      v54 = 0;
      if (v51 && v52)
      {
        v54 = [v51 isEqual:v52];
      }
    }

    v55 = v48 & v54;
    v56 = [(WLKURLRequestProperties *)self timeout];
    v57 = [(WLKURLRequestProperties *)v6 timeout];
    v58 = v56;
    v59 = v57;
    v60 = v59;
    if (v58 == v59)
    {
      v61 = 1;
    }

    else
    {
      v61 = 0;
      if (v58 && v59)
      {
        v61 = [v58 isEqual:v59];
      }
    }

    v62 = v55 & v61;
    v63 = [(WLKURLRequestProperties *)self apiVersion];
    v64 = [(WLKURLRequestProperties *)v6 apiVersion];
    v65 = v63;
    v66 = v64;
    v67 = v66;
    if (v65 == v66)
    {
      v68 = 1;
    }

    else
    {
      v68 = 0;
      if (v65 && v66)
      {
        v68 = [v65 isEqual:v66];
      }
    }

    v69 = v62 & v68;
    v70 = [(WLKURLRequestProperties *)self options];
    if (v70 == [(WLKURLRequestProperties *)v6 options])
    {
      v13 = v69;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WLKURLRequestProperties;
  v4 = [(WLKURLRequestProperties *)&v8 description];
  v5 = [(WLKURLRequestProperties *)self shortDescription];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end