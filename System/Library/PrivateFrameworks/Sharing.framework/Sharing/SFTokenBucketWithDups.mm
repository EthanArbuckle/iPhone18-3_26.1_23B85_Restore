@interface SFTokenBucketWithDups
- (BOOL)acquireTokenForIdentifier:(unint64_t)a3;
- (SFTokenBucketWithDups)init;
- (SFTokenBucketWithDups)initWithBucket:(id)a3 dupHistoryLength:(unint64_t)a4;
- (void)dealloc;
@end

@implementation SFTokenBucketWithDups

- (SFTokenBucketWithDups)initWithBucket:(id)a3 dupHistoryLength:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SFTokenBucketWithDups;
  v8 = [(SFTokenBucketWithDups *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bucket, a3);
    v9->_maxDups = a4;
    v9->_dups = CFArrayCreateMutable(0, 0, 0);
  }

  return v9;
}

- (BOOL)acquireTokenForIdentifier:(unint64_t)a3
{
  dups = self->_dups;
  v8.length = CFArrayGetCount(dups);
  v8.location = 0;
  if (CFArrayContainsValue(dups, v8, a3))
  {
LABEL_6:
    LOBYTE(v6) = 1;
    return v6;
  }

  v6 = [(SFTokenBucket *)self->_bucket acquireToken];
  if (v6)
  {
    if (CFArrayGetCount(self->_dups) == self->_maxDups)
    {
      CFArrayRemoveValueAtIndex(self->_dups, 0);
    }

    CFArrayAppendValue(self->_dups, a3);
    goto LABEL_6;
  }

  return v6;
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