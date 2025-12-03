@interface DownloadHandlerSession
- (BOOL)blocksOtherDownloads;
- (BOOL)canBePaused;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsPowerAssertion;
- (DownloadHandlerSession)init;
- (DownloadHandlerSession)initWithSessionProperties:(id)properties;
- (float)percentComplete;
- (id)copyWithZone:(_NSZone *)zone;
- (id)valueForSessionProperty:(id)property;
- (int64_t)sessionState;
- (void)dealloc;
- (void)setBlocksOtherDownloads:(BOOL)downloads;
- (void)setCanBePaused:(BOOL)paused;
- (void)setNeedsPowerAssertion:(BOOL)assertion;
- (void)setPercentComplete:(float)complete;
- (void)setSessionPropertyValues:(id)values;
- (void)setSessionState:(int64_t)state;
- (void)setStatusDescription:(id)description;
- (void)setValue:(id)value forSessionProperty:(id)property;
@end

@implementation DownloadHandlerSession

- (DownloadHandlerSession)init
{
  v6.receiver = self;
  v6.super_class = DownloadHandlerSession;
  v2 = [(DownloadHandlerSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(DownloadHandlerSession *)v2 setCanBePaused:1];
    v4 = CFUUIDCreate(0);
    v3->_sessionID = *&CFUUIDGetUUIDBytes(v4);
    CFRelease(v4);
  }

  return v3;
}

- (DownloadHandlerSession)initWithSessionProperties:(id)properties
{
  v4 = [(DownloadHandlerSession *)self init];
  if (v4)
  {
    v4->_sessionProperties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadHandlerSession;
  [(DownloadHandlerSession *)&v3 dealloc];
}

- (BOOL)blocksOtherDownloads
{
  v2 = [(NSMutableDictionary *)self->_propertyValues objectForKey:@"blocks"];

  return [v2 BOOLValue];
}

- (BOOL)canBePaused
{
  v2 = [(NSMutableDictionary *)self->_propertyValues objectForKey:@"pausable"];

  return [v2 BOOLValue];
}

- (BOOL)needsPowerAssertion
{
  v2 = [(NSMutableDictionary *)self->_propertyValues objectForKey:@"needspowerassert"];

  return [v2 BOOLValue];
}

- (float)percentComplete
{
  v2 = [(NSMutableDictionary *)self->_propertyValues objectForKey:@"percent"];

  [v2 floatValue];
  return result;
}

- (int64_t)sessionState
{
  v2 = [(NSMutableDictionary *)self->_propertyValues objectForKey:@"state"];

  return [v2 integerValue];
}

- (void)setBlocksOtherDownloads:(BOOL)downloads
{
  v4 = [NSNumber numberWithBool:downloads];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"blocks"];
}

- (void)setCanBePaused:(BOOL)paused
{
  v4 = [NSNumber numberWithBool:paused];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"pausable"];
}

- (void)setNeedsPowerAssertion:(BOOL)assertion
{
  v4 = [NSNumber numberWithBool:assertion];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"needspowerassert"];
}

- (void)setPercentComplete:(float)complete
{
  v4 = [NSNumber numberWithFloat:?];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"percent"];
}

- (void)setSessionPropertyValues:(id)values
{
  propertyValues = self->_propertyValues;
  if (!propertyValues)
  {
    propertyValues = objc_alloc_init(NSMutableDictionary);
    self->_propertyValues = propertyValues;
  }

  [(NSMutableDictionary *)propertyValues addEntriesFromDictionary:values];
}

- (void)setSessionState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"state"];
}

- (void)setStatusDescription:(id)description
{
  v4 = [description copy];
  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"status"];
}

- (void)setValue:(id)value forSessionProperty:(id)property
{
  propertyValues = self->_propertyValues;
  if (!propertyValues)
  {
    propertyValues = objc_alloc_init(NSMutableDictionary);
    self->_propertyValues = propertyValues;
  }

  [(NSMutableDictionary *)propertyValues setObject:value forKey:property];
}

- (id)valueForSessionProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_propertyValues objectForKey:property];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  sessionID = [(DownloadHandlerSession *)self sessionID];
  return sessionID == [equal sessionID];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 1) = self->_activeHandlerIdentifier;
  *(v5 + 4) = self->_sessionID;

  *(v5 + 2) = [(NSError *)self->_error copyWithZone:zone];
  *(v5 + 3) = [(NSMutableDictionary *)self->_propertyValues mutableCopyWithZone:zone];

  *(v5 + 5) = [(DownloadSessionProperties *)self->_sessionProperties copyWithZone:zone];
  *(v5 + 6) = [(NSURLCredential *)self->_urlCredential copyWithZone:zone];
  return v5;
}

@end