@interface WLKURLRequestProperties
+ (WLKURLRequestProperties)requestPropertiesWithEndpoint:(id)endpoint queryParameters:(id)parameters httpMethod:(id)method httpBody:(id)body headers:(id)headers caller:(id)caller timeout:(id)timeout apiVersion:(id)self0 options:(int64_t)self1 clientProtocolVersion:(id)self2;
+ (WLKURLRequestProperties)requestPropertiesWithServerRoute:(id)route queryParameters:(id)parameters httpMethod:(id)method httpBody:(id)body headers:(id)headers caller:(id)caller timeout:(id)timeout options:(int64_t)self0 clientProtocolVersion:(id)self1;
- (BOOL)isEqual:(id)equal;
- (id)URLRequestWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (WLKURLRequestProperties)requestPropertiesWithServerRoute:(id)route queryParameters:(id)parameters httpMethod:(id)method httpBody:(id)body headers:(id)headers caller:(id)caller timeout:(id)timeout options:(int64_t)self0 clientProtocolVersion:(id)self1
{
  methodCopy = method;
  versionCopy = version;
  timeoutCopy = timeout;
  callerCopy = caller;
  headersCopy = headers;
  bodyCopy = body;
  parametersCopy = parameters;
  routeCopy = route;
  v24 = objc_alloc_init(WLKURLRequestProperties);
  [(WLKURLRequestProperties *)v24 setRouteName:routeCopy];

  [(WLKURLRequestProperties *)v24 setQueryParameters:parametersCopy];
  if (![(__CFString *)methodCopy length])
  {

    methodCopy = @"GET";
  }

  [(WLKURLRequestProperties *)v24 setHttpMethod:methodCopy];
  [(WLKURLRequestProperties *)v24 setHttpBody:bodyCopy];

  [(WLKURLRequestProperties *)v24 setHeaders:headersCopy];
  [(WLKURLRequestProperties *)v24 setCaller:callerCopy];

  [(WLKURLRequestProperties *)v24 setTimeout:timeoutCopy];
  [(WLKURLRequestProperties *)v24 setOptions:options];
  [(WLKURLRequestProperties *)v24 setClientProtocolVersion:versionCopy];

  return v24;
}

+ (WLKURLRequestProperties)requestPropertiesWithEndpoint:(id)endpoint queryParameters:(id)parameters httpMethod:(id)method httpBody:(id)body headers:(id)headers caller:(id)caller timeout:(id)timeout apiVersion:(id)self0 options:(int64_t)self1 clientProtocolVersion:(id)self2
{
  methodCopy = method;
  versionCopy = version;
  protocolVersionCopy = protocolVersion;
  timeoutCopy = timeout;
  callerCopy = caller;
  headersCopy = headers;
  bodyCopy = body;
  parametersCopy = parameters;
  endpointCopy = endpoint;
  v25 = objc_alloc_init(WLKURLRequestProperties);
  [(WLKURLRequestProperties *)v25 setEndpoint:endpointCopy];

  [(WLKURLRequestProperties *)v25 setQueryParameters:parametersCopy];
  if (![(__CFString *)methodCopy length])
  {

    methodCopy = @"GET";
  }

  [(WLKURLRequestProperties *)v25 setHttpMethod:methodCopy, versionCopy];
  [(WLKURLRequestProperties *)v25 setHttpBody:bodyCopy];

  [(WLKURLRequestProperties *)v25 setHeaders:headersCopy];
  [(WLKURLRequestProperties *)v25 setCaller:callerCopy];
  [(WLKURLRequestProperties *)v25 setTimeout:timeoutCopy];

  [(WLKURLRequestProperties *)v25 setClientProtocolVersion:protocolVersionCopy];
  v26 = [callerCopy isEqualToString:@"tvjs"];

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
  [(WLKURLRequestProperties *)v25 setOptions:options];

  return v25;
}

- (id)URLRequestWithConfiguration:(id)configuration
{
  v27[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
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

  dictionary = [(NSDictionary *)self->_queryParameters mutableCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  clientProtocolVersion = [(WLKURLRequestProperties *)self clientProtocolVersion];

  if (clientProtocolVersion)
  {
    clientProtocolVersion2 = [(WLKURLRequestProperties *)self clientProtocolVersion];
    [dictionary setObject:clientProtocolVersion2 forKeyedSubscript:@"v"];
  }

  if ((self->_options & 0x100000) == 0 && [(NSString *)self->_caller length])
  {
    [dictionary setObject:self->_caller forKeyedSubscript:@"caller"];
  }

  options = self->_options;
  if (!self->_endpoint)
  {
    v18 = self->_routeName;
    if (!v18)
    {
      goto LABEL_23;
    }

    v17 = [MEMORY[0x277CBEBC0] wlk_URLWithServerConfig:configurationCopy routeName:v18 queryParameters:dictionary suppressParameterEncoding:(options >> 1) & 1];
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

  v17 = [MEMORY[0x277CBEBC0] wlk_URLWithServerConfig:configurationCopy endpoint:v16 relativeToBaseURL:1 queryParameters:dictionary suppressParameterEncoding:v13 ignoreUserLocation:{-[WLKURLRequestProperties ignoreUserLocation](self, "ignoreUserLocation")}];

  if (v17)
  {
    goto LABEL_21;
  }

LABEL_23:
  v21 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_272A0F000, v21, OS_LOG_TYPE_DEFAULT, "%@: unable to resolve URL", buf, 0xCu);
  }

  v17 = 0;
  v22 = 0;
LABEL_28:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
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
  endpoint = [(WLKURLRequestProperties *)self endpoint];
  v4 = [endpoint hash];

  routeName = [(WLKURLRequestProperties *)self routeName];
  v6 = [routeName hash] ^ v4;

  httpMethod = [(WLKURLRequestProperties *)self httpMethod];
  v8 = [httpMethod hash];

  httpBody = [(WLKURLRequestProperties *)self httpBody];
  v10 = v6 ^ v8 ^ [httpBody hash];

  queryParameters = [(WLKURLRequestProperties *)self queryParameters];
  v12 = [queryParameters hash];

  headers = [(WLKURLRequestProperties *)self headers];
  v14 = v12 ^ [headers hash];

  caller = [(WLKURLRequestProperties *)self caller];
  v16 = v10 ^ v14 ^ [caller hash];

  timeout = [(WLKURLRequestProperties *)self timeout];
  v18 = [timeout hash];

  apiVersion = [(WLKURLRequestProperties *)self apiVersion];
  v20 = v18 ^ [apiVersion hash];

  return v16 ^ v20 ^ [(WLKURLRequestProperties *)self options];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    endpoint = [(WLKURLRequestProperties *)self endpoint];
    endpoint2 = [(WLKURLRequestProperties *)v6 endpoint];
    v9 = endpoint;
    v10 = endpoint2;
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

    routeName = [(WLKURLRequestProperties *)self routeName];
    routeName2 = [(WLKURLRequestProperties *)v6 routeName];
    v16 = routeName;
    v17 = routeName2;
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
    httpMethod = [(WLKURLRequestProperties *)self httpMethod];
    httpMethod2 = [(WLKURLRequestProperties *)v6 httpMethod];
    v23 = httpMethod;
    v24 = httpMethod2;
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
    httpBody = [(WLKURLRequestProperties *)self httpBody];
    httpBody2 = [(WLKURLRequestProperties *)v6 httpBody];
    v30 = httpBody;
    v31 = httpBody2;
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
    queryParameters = [(WLKURLRequestProperties *)self queryParameters];
    queryParameters2 = [(WLKURLRequestProperties *)v6 queryParameters];
    v37 = queryParameters;
    v38 = queryParameters2;
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
    headers = [(WLKURLRequestProperties *)self headers];
    headers2 = [(WLKURLRequestProperties *)v6 headers];
    v44 = headers;
    v45 = headers2;
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
    caller = [(WLKURLRequestProperties *)self caller];
    caller2 = [(WLKURLRequestProperties *)v6 caller];
    v51 = caller;
    v52 = caller2;
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
    timeout = [(WLKURLRequestProperties *)self timeout];
    timeout2 = [(WLKURLRequestProperties *)v6 timeout];
    v58 = timeout;
    v59 = timeout2;
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
    apiVersion = [(WLKURLRequestProperties *)self apiVersion];
    apiVersion2 = [(WLKURLRequestProperties *)v6 apiVersion];
    v65 = apiVersion;
    v66 = apiVersion2;
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
    options = [(WLKURLRequestProperties *)self options];
    if (options == [(WLKURLRequestProperties *)v6 options])
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
  shortDescription = [(WLKURLRequestProperties *)self shortDescription];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, shortDescription];

  return v6;
}

@end