@interface TPSDataCache
- (BOOL)expired;
- (TPSDataCache)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSDataCache

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TPSDataCache allocWithZone:a3];
  [(TPSDataCache *)v4 setCacheType:self->_cacheType];
  [(TPSDataCache *)v4 setMaxAge:self->_maxAge];
  [(TPSDataCache *)v4 setFileSize:self->_fileSize];
  [(TPSDataCache *)v4 setIdentifier:self->_identifier];
  [(TPSDataCache *)v4 setUpdatedDate:self->_updatedDate];
  [(TPSDataCache *)v4 setLastModified:self->_lastModified];
  [(TPSDataCache *)v4 setLanguageCode:self->_languageCode];
  return v4;
}

- (TPSDataCache)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSDataCache;
  v5 = [(TPSDataCache *)&v11 init];
  if (v5)
  {
    -[TPSDataCache setMaxAge:](v5, "setMaxAge:", [v4 decodeIntegerForKey:@"TPSDataCacheMaxAge"]);
    -[TPSDataCache setCacheType:](v5, "setCacheType:", [v4 decodeIntegerForKey:@"TPSDataCacheType"]);
    -[TPSDataCache setFileSize:](v5, "setFileSize:", [v4 decodeIntegerForKey:@"TPSDataCacheFileSize"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheIdentifier"];
    [(TPSDataCache *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheLastModified"];
    [(TPSDataCache *)v5 setLastModified:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheLangaugeCode"];
    [(TPSDataCache *)v5 setLanguageCode:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TPSDataCacheUpdatedDate"];
    [(TPSDataCache *)v5 setUpdatedDate:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[TPSDataCache maxAge](self forKey:{"maxAge"), @"TPSDataCacheMaxAge"}];
  [v4 encodeInteger:-[TPSDataCache cacheType](self forKey:{"cacheType"), @"TPSDataCacheType"}];
  [v4 encodeInteger:-[TPSDataCache fileSize](self forKey:{"fileSize"), @"TPSDataCacheFileSize"}];
  v5 = [(TPSDataCache *)self identifier];
  [v4 encodeObject:v5 forKey:@"TPSDataCacheIdentifier"];

  v6 = [(TPSDataCache *)self updatedDate];
  [v4 encodeObject:v6 forKey:@"TPSDataCacheUpdatedDate"];

  v7 = [(TPSDataCache *)self lastModified];
  [v4 encodeObject:v7 forKey:@"TPSDataCacheLastModified"];

  v8 = [(TPSDataCache *)self languageCode];
  [v4 encodeObject:v8 forKey:@"TPSDataCacheLangaugeCode"];
}

- (BOOL)expired
{
  v3 = [(TPSDataCache *)self updatedDate];
  v4 = [v3 dateByAddingTimeInterval:self->_maxAge];

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(TPSDataCache *)self updatedDate];
  if (v6)
  {
    v7 = [v4 compare:v5] == -1;
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