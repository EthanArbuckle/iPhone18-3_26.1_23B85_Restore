@interface TPSDataCache
- (BOOL)expired;
- (TPSDataCache)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSDataCache

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TPSDataCache allocWithZone:zone];
  [(TPSDataCache *)v4 setCacheType:self->_cacheType];
  [(TPSDataCache *)v4 setMaxAge:self->_maxAge];
  [(TPSDataCache *)v4 setFileSize:self->_fileSize];
  [(TPSDataCache *)v4 setIdentifier:self->_identifier];
  [(TPSDataCache *)v4 setUpdatedDate:self->_updatedDate];
  [(TPSDataCache *)v4 setLastModified:self->_lastModified];
  [(TPSDataCache *)v4 setLanguageCode:self->_languageCode];
  return v4;
}

- (TPSDataCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSDataCache;
  v5 = [(TPSDataCache *)&v11 init];
  if (v5)
  {
    -[TPSDataCache setMaxAge:](v5, "setMaxAge:", [coderCopy decodeIntegerForKey:@"TPSDataCacheMaxAge"]);
    -[TPSDataCache setCacheType:](v5, "setCacheType:", [coderCopy decodeIntegerForKey:@"TPSDataCacheType"]);
    -[TPSDataCache setFileSize:](v5, "setFileSize:", [coderCopy decodeIntegerForKey:@"TPSDataCacheFileSize"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheIdentifier"];
    [(TPSDataCache *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheLastModified"];
    [(TPSDataCache *)v5 setLastModified:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheLangaugeCode"];
    [(TPSDataCache *)v5 setLanguageCode:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheUpdatedDate"];
    [(TPSDataCache *)v5 setUpdatedDate:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[TPSDataCache maxAge](self forKey:{"maxAge"), @"TPSDataCacheMaxAge"}];
  [coderCopy encodeInteger:-[TPSDataCache cacheType](self forKey:{"cacheType"), @"TPSDataCacheType"}];
  [coderCopy encodeInteger:-[TPSDataCache fileSize](self forKey:{"fileSize"), @"TPSDataCacheFileSize"}];
  identifier = [(TPSDataCache *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"TPSDataCacheIdentifier"];

  updatedDate = [(TPSDataCache *)self updatedDate];
  [coderCopy encodeObject:updatedDate forKey:@"TPSDataCacheUpdatedDate"];

  lastModified = [(TPSDataCache *)self lastModified];
  [coderCopy encodeObject:lastModified forKey:@"TPSDataCacheLastModified"];

  languageCode = [(TPSDataCache *)self languageCode];
  [coderCopy encodeObject:languageCode forKey:@"TPSDataCacheLangaugeCode"];
}

- (BOOL)expired
{
  updatedDate = [(TPSDataCache *)self updatedDate];
  v4 = [updatedDate dateByAddingTimeInterval:self->_maxAge];

  date = [MEMORY[0x1E695DF00] date];
  updatedDate2 = [(TPSDataCache *)self updatedDate];
  if (updatedDate2)
  {
    v7 = [v4 compare:date] == -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@", self];
  [v3 appendFormat:@" %@ = %@\n", @"TPSDataCacheIdentifier", self->_identifier];
  [v3 appendFormat:@" %@ = %zd\n", @"TPSDataCacheType", self->_cacheType];
  [v3 appendFormat:@" %@ = %zd\n", @"TPSDataCacheMaxAge", self->_maxAge];
  [v3 appendFormat:@" %@ = %zd\n", @"TPSDataCacheFileSize", self->_fileSize];
  [v3 appendFormat:@" %@ = %@\n", @"TPSDataCacheUpdatedDate", self->_updatedDate];
  [v3 appendFormat:@" %@ = %@\n", @"TPSDataCacheLastModified", self->_lastModified];
  [v3 appendFormat:@" %@ = %@\n", @"TPSDataCacheLangaugeCode", self->_languageCode];

  return v3;
}

@end