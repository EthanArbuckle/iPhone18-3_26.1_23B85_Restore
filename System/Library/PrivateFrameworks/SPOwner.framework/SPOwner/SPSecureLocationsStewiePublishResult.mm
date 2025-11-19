@interface SPSecureLocationsStewiePublishResult
- (SPSecureLocationsStewiePublishResult)init;
- (SPSecureLocationsStewiePublishResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSecureLocationsStewiePublishResult

- (SPSecureLocationsStewiePublishResult)init
{
  v6.receiver = self;
  v6.super_class = SPSecureLocationsStewiePublishResult;
  v2 = [(SPSecureLocationsStewiePublishResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    lastPublished = v2->_lastPublished;
    v2->_lastPublished = 0;

    v3->_nextAllowedPublish = 0.0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SPSecureLocationsStewiePublishResult);
  v5 = [(SPSecureLocationsStewiePublishResult *)self lastPublished];
  [(SPSecureLocationsStewiePublishResult *)v4 setLastPublished:v5];

  [(SPSecureLocationsStewiePublishResult *)self nextAllowedPublish];
  [(SPSecureLocationsStewiePublishResult *)v4 setNextAllowedPublish:?];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  lastPublished = self->_lastPublished;
  v5 = a3;
  [v5 encodeObject:lastPublished forKey:@"lastPublished"];
  [v5 encodeDouble:@"nextAllowedPublish" forKey:self->_nextAllowedPublish];
}

- (SPSecureLocationsStewiePublishResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPublished"];
  lastPublished = self->_lastPublished;
  self->_lastPublished = v5;

  [v4 decodeDoubleForKey:@"nextAllowedPublish"];
  v8 = v7;

  self->_nextAllowedPublish = v8;
  return self;
}

@end