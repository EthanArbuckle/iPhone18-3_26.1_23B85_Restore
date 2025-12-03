@interface SFTokenBucketWithDups
- (BOOL)acquireTokenForIdentifier:(unint64_t)identifier;
- (SFTokenBucketWithDups)init;
- (SFTokenBucketWithDups)initWithBucket:(id)bucket dupHistoryLength:(unint64_t)length;
- (void)dealloc;
@end

@implementation SFTokenBucketWithDups

- (SFTokenBucketWithDups)initWithBucket:(id)bucket dupHistoryLength:(unint64_t)length
{
  bucketCopy = bucket;
  v11.receiver = self;
  v11.super_class = SFTokenBucketWithDups;
  v8 = [(SFTokenBucketWithDups *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bucket, bucket);
    v9->_maxDups = length;
    v9->_dups = CFArrayCreateMutable(0, 0, 0);
  }

  return v9;
}

- (BOOL)acquireTokenForIdentifier:(unint64_t)identifier
{
  dups = self->_dups;
  v8.length = CFArrayGetCount(dups);
  v8.location = 0;
  if (CFArrayContainsValue(dups, v8, identifier))
  {
LABEL_6:
    LOBYTE(acquireToken) = 1;
    return acquireToken;
  }

  acquireToken = [(SFTokenBucket *)self->_bucket acquireToken];
  if (acquireToken)
  {
    if (CFArrayGetCount(self->_dups) == self->_maxDups)
    {
      CFArrayRemoveValueAtIndex(self->_dups, 0);
    }

    CFArrayAppendValue(self->_dups, identifier);
    goto LABEL_6;
  }

  return acquireToken;
}

- (SFTokenBucketWithDups)init
{
  v2 = NSUnimplemented_();
  [(SFTokenBucketWithDups *)v2 dealloc];
  return result;
}

- (void)dealloc
{
  dups = self->_dups;
  if (dups)
  {
    CFRelease(dups);
    self->_dups = 0;
  }

  v4.receiver = self;
  v4.super_class = SFTokenBucketWithDups;
  [(SFTokenBucketWithDups *)&v4 dealloc];
}

@end