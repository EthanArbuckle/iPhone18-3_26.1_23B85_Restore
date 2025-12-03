@interface ICCertificateCacheEntry
- (BOOL)isExpired;
- (ICCertificateCacheEntry)initWithData:(id)data expirationDate:(id)date;
@end

@implementation ICCertificateCacheEntry

- (BOOL)isExpired
{
  expirationDate = [(ICCertificateCacheEntry *)self expirationDate];
  if (expirationDate)
  {
    expirationDate2 = [(ICCertificateCacheEntry *)self expirationDate];
    [expirationDate2 timeIntervalSinceNow];
    v6 = v5 < 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ICCertificateCacheEntry)initWithData:(id)data expirationDate:(id)date
{
  dataCopy = data;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = ICCertificateCacheEntry;
  v9 = [(ICCertificateCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_expirationDate, date);
  }

  return v10;
}

@end