@interface DownloadHandlerSession
- (BOOL)blocksOtherDownloads;
- (BOOL)canBePaused;
- (BOOL)isEqual:(id)a3;
- (BOOL)needsPowerAssertion;
- (DownloadHandlerSession)init;
- (DownloadHandlerSession)initWithSessionProperties:(id)a3;
- (float)percentComplete;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueForSessionProperty:(id)a3;
- (int64_t)sessionState;
- (void)dealloc;
- (void)setBlocksOtherDownloads:(BOOL)a3;
- (void)setCanBePaused:(BOOL)a3;
- (void)setNeedsPowerAssertion:(BOOL)a3;
- (void)setPercentComplete:(float)a3;
- (void)setSessionPropertyValues:(id)a3;
- (void)setSessionState:(int64_t)a3;
- (void)setStatusDescription:(id)a3;
- (void)setValue:(id)a3 forSessionProperty:(id)a4;
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

- (DownloadHandlerSession)initWithSessionProperties:(id)a3
{
  v4 = [(DownloadHandlerSession *)self init];
  if (v4)
  {
    v4->_sessionProperties = [a3 copy];
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

- (void)setBlocksOtherDownloads:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"blocks"];
}

- (void)setCanBePaused:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"pausable"];
}

- (void)setNeedsPowerAssertion:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"needspowerassert"];
}

- (void)setPercentComplete:(float)a3
{
  v4 = [NSNumber numberWithFloat:?];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"percent"];
}

- (void)setSessionPropertyValues:(id)a3
{
  propertyValues = self->_propertyValues;
  if (!propertyValues)
  {
    propertyValues = objc_alloc_init(NSMutableDictionary);
    self->_propertyValues = propertyValues;
  }

  [(NSMutableDictionary *)propertyValues addEntriesFromDictionary:a3];
}

- (void)setSessionState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];

  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"state"];
}

- (void)setStatusDescription:(id)a3
{
  v4 = [a3 copy];
  [(DownloadHandlerSession *)self setValue:v4 forSessionProperty:@"status"];
}

- (void)setValue:(id)a3 forSessionProperty:(id)a4
{
  propertyValues = self->_propertyValues;
  if (!propertyValues)
  {
    propertyValues = objc_alloc_init(NSMutableDictionary);
    self->_propertyValues = propertyValues;
  }

  [(NSMutableDictionary *)propertyValues setObject:a3 forKey:a4];
}

- (id)valueForSessionProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_propertyValues objectForKey:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [(DownloadHandlerSession *)self sessionID];
  return v7 == [a3 sessionID];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 1) = self->_activeHandlerIdentifier;
  *(v5 + 4) = self->_sessionID;

  *(v5 + 2) = [(NSError *)self->_error copyWithZone:a3];
  *(v5 + 3) = [(NSMutableDictionary *)self->_propertyValues mutableCopyWithZone:a3];

  *(v5 + 5) = [(DownloadSessionProperties *)self->_sessionProperties copyWithZone:a3];
  *(v5 + 6) = [(NSURLCredential *)self->_urlCredential copyWithZone:a3];
  return v5;
}

@end