@interface SSVPlaybackLeaseRequest
+ (id)_requestWithType:(int64_t)a3;
- (id)_copyBodyDictionaryWithFairPlaySession:(void *)a3;
- (id)_copyWithLeaseType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_applyValuesToCopy:(id)a3;
- (void)setHTTPHeaderFields:(id)a3;
- (void)setParameterValues:(id)a3;
- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4;
- (void)setValue:(id)a3 forParameter:(id)a4;
@end

@implementation SSVPlaybackLeaseRequest

- (void)setHTTPHeaderFields:(id)a3
{
  if (self->_httpHeaderFields != a3)
  {
    v5 = [a3 mutableCopy];
    httpHeaderFields = self->_httpHeaderFields;
    self->_httpHeaderFields = v5;
  }
}

- (void)setParameterValues:(id)a3
{
  if (self->_parameters != a3)
  {
    v5 = [a3 mutableCopy];
    parameters = self->_parameters;
    self->_parameters = v5;
  }
}

- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  httpHeaderFields = self->_httpHeaderFields;
  if (v12)
  {
    if (!httpHeaderFields)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_httpHeaderFields;
      self->_httpHeaderFields = v10;

      v7 = v12;
      httpHeaderFields = self->_httpHeaderFields;
    }

    [(NSMutableDictionary *)httpHeaderFields setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)httpHeaderFields removeObjectForKey:v8];
  }
}

- (void)setValue:(id)a3 forParameter:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  parameters = self->_parameters;
  if (v12)
  {
    if (!parameters)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_parameters;
      self->_parameters = v10;

      v7 = v12;
      parameters = self->_parameters;
    }

    [(NSMutableDictionary *)parameters setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)parameters removeObjectForKey:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v4[7] = self->_leaseType;
  [(SSVPlaybackLeaseRequest *)self _applyValuesToCopy:v4];
  return v4;
}

+ (id)_requestWithType:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = off_1E84AB5E0;
    goto LABEL_5;
  }

  if (!a3)
  {
    v4 = off_1E84AB608;
LABEL_5:
    v5 = objc_alloc_init(*v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v5[7] = a3;

  return v5;
}

- (id)_copyWithLeaseType:(int64_t)a3
{
  v4 = [objc_opt_class() _requestWithType:a3];
  [(SSVPlaybackLeaseRequest *)self _applyValuesToCopy:v4];
  return v4;
}

- (id)_copyBodyDictionaryWithFairPlaySession:(void *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(SSVPlaybackLeaseRequest *)self _actionParameterValue];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"action"];
  }

  v6 = +[SSDevice currentDevice];
  v7 = [v6 uniqueDeviceIdentifier];

  if (v7)
  {
    [v4 setObject:v7 forKey:@"guid"];
  }

  if (self->_parameters)
  {
    [v4 addEntriesFromDictionary:?];
  }

  return v4;
}

- (void)_applyValuesToCopy:(id)a3
{
  kdChannelIdentifier = self->_kdChannelIdentifier;
  v5 = a3;
  [v5 setKDChannelIdentifier:kdChannelIdentifier];
  [v5 _setKDMovieIdentifier:self->_kdMovieIdentifier];
  [v5 setParameterValues:self->_parameters];
  [v5 setStartsLeaseSession:self->_startsLeaseSession];
  [v5 setHTTPHeaderFields:self->_httpHeaderFields];
  [v5 _setActionType:self->_actionType];
  [v5 _setCertificateData:self->_certificateData];
  [v5 _setURL:self->_url];
}

@end