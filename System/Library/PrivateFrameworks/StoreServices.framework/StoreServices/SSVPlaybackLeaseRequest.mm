@interface SSVPlaybackLeaseRequest
+ (id)_requestWithType:(int64_t)type;
- (id)_copyBodyDictionaryWithFairPlaySession:(void *)session;
- (id)_copyWithLeaseType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_applyValuesToCopy:(id)copy;
- (void)setHTTPHeaderFields:(id)fields;
- (void)setParameterValues:(id)values;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
- (void)setValue:(id)value forParameter:(id)parameter;
@end

@implementation SSVPlaybackLeaseRequest

- (void)setHTTPHeaderFields:(id)fields
{
  if (self->_httpHeaderFields != fields)
  {
    v5 = [fields mutableCopy];
    httpHeaderFields = self->_httpHeaderFields;
    self->_httpHeaderFields = v5;
  }
}

- (void)setParameterValues:(id)values
{
  if (self->_parameters != values)
  {
    v5 = [values mutableCopy];
    parameters = self->_parameters;
    self->_parameters = v5;
  }
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  v7 = valueCopy;
  v8 = fieldCopy;
  httpHeaderFields = self->_httpHeaderFields;
  if (valueCopy)
  {
    if (!httpHeaderFields)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_httpHeaderFields;
      self->_httpHeaderFields = v10;

      v7 = valueCopy;
      httpHeaderFields = self->_httpHeaderFields;
    }

    [(NSMutableDictionary *)httpHeaderFields setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)httpHeaderFields removeObjectForKey:v8];
  }
}

- (void)setValue:(id)value forParameter:(id)parameter
{
  valueCopy = value;
  parameterCopy = parameter;
  v7 = valueCopy;
  v8 = parameterCopy;
  parameters = self->_parameters;
  if (valueCopy)
  {
    if (!parameters)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_parameters;
      self->_parameters = v10;

      v7 = valueCopy;
      parameters = self->_parameters;
    }

    [(NSMutableDictionary *)parameters setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)parameters removeObjectForKey:v8];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v4[7] = self->_leaseType;
  [(SSVPlaybackLeaseRequest *)self _applyValuesToCopy:v4];
  return v4;
}

+ (id)_requestWithType:(int64_t)type
{
  if (type == 1)
  {
    v4 = off_1E84AB5E0;
    goto LABEL_5;
  }

  if (!type)
  {
    v4 = off_1E84AB608;
LABEL_5:
    v5 = objc_alloc_init(*v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v5[7] = type;

  return v5;
}

- (id)_copyWithLeaseType:(int64_t)type
{
  v4 = [objc_opt_class() _requestWithType:type];
  [(SSVPlaybackLeaseRequest *)self _applyValuesToCopy:v4];
  return v4;
}

- (id)_copyBodyDictionaryWithFairPlaySession:(void *)session
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _actionParameterValue = [(SSVPlaybackLeaseRequest *)self _actionParameterValue];
  if (_actionParameterValue)
  {
    [v4 setObject:_actionParameterValue forKey:@"action"];
  }

  v6 = +[SSDevice currentDevice];
  uniqueDeviceIdentifier = [v6 uniqueDeviceIdentifier];

  if (uniqueDeviceIdentifier)
  {
    [v4 setObject:uniqueDeviceIdentifier forKey:@"guid"];
  }

  if (self->_parameters)
  {
    [v4 addEntriesFromDictionary:?];
  }

  return v4;
}

- (void)_applyValuesToCopy:(id)copy
{
  kdChannelIdentifier = self->_kdChannelIdentifier;
  copyCopy = copy;
  [copyCopy setKDChannelIdentifier:kdChannelIdentifier];
  [copyCopy _setKDMovieIdentifier:self->_kdMovieIdentifier];
  [copyCopy setParameterValues:self->_parameters];
  [copyCopy setStartsLeaseSession:self->_startsLeaseSession];
  [copyCopy setHTTPHeaderFields:self->_httpHeaderFields];
  [copyCopy _setActionType:self->_actionType];
  [copyCopy _setCertificateData:self->_certificateData];
  [copyCopy _setURL:self->_url];
}

@end