@interface ICCertificateCacheEntry
- (BOOL)isExpired;
- (ICCertificateCacheEntry)initWithData:(id)a3 expirationDate:(id)a4;
@end

@implementation ICCertificateCacheEntry

- (BOOL)isExpired
{
  v3 = [(ICCertificateCacheEntry *)self expirationDate];
  if (v3)
  {
    v4 = [(ICCertificateCacheEntry *)self expirationDate];
    [v4 timeIntervalSinceNow];
    v6 = v5 < 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ICCertificateCacheEntry)initWithData:(id)a3 expirationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCertificateCacheEntry;
  v9 = [(ICCertificateCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_expirationDate, a4);
  }

  return v10;
}

@end