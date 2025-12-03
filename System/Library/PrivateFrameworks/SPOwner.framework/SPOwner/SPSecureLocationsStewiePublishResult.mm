@interface SPSecureLocationsStewiePublishResult
- (SPSecureLocationsStewiePublishResult)init;
- (SPSecureLocationsStewiePublishResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SPSecureLocationsStewiePublishResult);
  lastPublished = [(SPSecureLocationsStewiePublishResult *)self lastPublished];
  [(SPSecureLocationsStewiePublishResult *)v4 setLastPublished:lastPublished];

  [(SPSecureLocationsStewiePublishResult *)self nextAllowedPublish];
  [(SPSecureLocationsStewiePublishResult *)v4 setNextAllowedPublish:?];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  lastPublished = self->_lastPublished;
  coderCopy = coder;
  [coderCopy encodeObject:lastPublished forKey:@"lastPublished"];
  [coderCopy encodeDouble:@"nextAllowedPublish" forKey:self->_nextAllowedPublish];
}

- (SPSecureLocationsStewiePublishResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastPublished"];
  lastPublished = self->_lastPublished;
  self->_lastPublished = v5;

  [coderCopy decodeDoubleForKey:@"nextAllowedPublish"];
  v8 = v7;

  self->_nextAllowedPublish = v8;
  return self;
}

@end