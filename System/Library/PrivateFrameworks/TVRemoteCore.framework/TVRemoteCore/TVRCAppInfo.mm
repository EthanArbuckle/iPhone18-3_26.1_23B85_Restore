@interface TVRCAppInfo
+ (id)appInfoWithBundleID:(id)a3 dictionary:(id)a4;
+ (id)appInfoWithLocalizedName:(id)a3 bundleID:(id)a4 imageData:(id)a5 MRUCount:(unint64_t)a6 appGenre:(unint64_t)a7 appType:(int64_t)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTVApp;
- (TVRCAppInfo)appInfoWithMRUCount:(unint64_t)a3;
- (TVRCAppInfo)initWithCoder:(id)a3;
- (TVRCAppInfo)initWithLocalizedName:(id)a3 bundleID:(id)a4 imageData:(id)a5 MRUCount:(unint64_t)a6 appGenre:(unint64_t)a7 appType:(int64_t)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCAppInfo

- (TVRCAppInfo)initWithLocalizedName:(id)a3 bundleID:(id)a4 imageData:(id)a5 MRUCount:(unint64_t)a6 appGenre:(unint64_t)a7 appType:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = TVRCAppInfo;
  v18 = [(TVRCAppInfo *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_localizedName, a3);
    objc_storeStrong(&v19->_bundleID, a4);
    objc_storeStrong(&v19->_imageData, a5);
    v19->_MRUCount = a6;
    v19->_appGenre = a7;
    v19->_appType = a8;
  }

  return v19;
}

+ (id)appInfoWithLocalizedName:(id)a3 bundleID:(id)a4 imageData:(id)a5 MRUCount:(unint64_t)a6 appGenre:(unint64_t)a7 appType:(int64_t)a8
{
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithLocalizedName:v16 bundleID:v15 imageData:v14 MRUCount:a6 appGenre:a7 appType:a8];

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TVRCAppInfo *)self localizedName];
  v7 = [(TVRCAppInfo *)self bundleID];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCAppInfo appType](self, "appType")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TVRCAppInfo appGenre](self, "appGenre")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TVRCAppInfo MRUCount](self, "MRUCount")}];
  v11 = [v3 stringWithFormat:@"<%@ %p: name=%@ bundleID=%@; appType=%@; appGenre=%@; mruCount=%@>", v5, self, v6, v7, v8, v9, v10];;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = [v6 MRUCount];
    if (v7 != [(TVRCAppInfo *)self MRUCount])
    {
      goto LABEL_9;
    }

    v8 = [v6 localizedName];
    v9 = [(TVRCAppInfo *)self localizedName];
    v10 = [v8 isEqualToString:v9];

    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = [v6 bundleID];
    v12 = [(TVRCAppInfo *)self bundleID];
    v13 = [v11 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = [v6 imageData];
    v15 = [(TVRCAppInfo *)self imageData];
    v16 = [v14 isEqualToData:v15];

    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = [v6 appGenre];
    if (v17 == [(TVRCAppInfo *)self appGenre])
    {
      v18 = [v6 appType];
      v19 = v18 == [(TVRCAppInfo *)self appType];
    }

    else
    {
LABEL_9:
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(TVRCAppInfo *)self localizedName];
  v4 = [v3 hash];
  v5 = [(TVRCAppInfo *)self bundleID];
  v6 = [v5 hash] + v4;
  v7 = [(TVRCAppInfo *)self imageData];
  v8 = [v7 hash];
  v9 = v6 + v8 + [(TVRCAppInfo *)self MRUCount];
  v10 = [(TVRCAppInfo *)self appGenre];
  v11 = v10 + [(TVRCAppInfo *)self appType];

  return v9 + v11;
}

- (TVRCAppInfo)appInfoWithMRUCount:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(TVRCAppInfo *)self localizedName];
  v7 = [(TVRCAppInfo *)self bundleID];
  v8 = [(TVRCAppInfo *)self imageData];
  v9 = [v5 initWithLocalizedName:v6 bundleID:v7 imageData:v8 MRUCount:a3 appGenre:-[TVRCAppInfo appGenre](self appType:{"appGenre"), -[TVRCAppInfo appType](self, "appType")}];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TVRCAppInfo *)self localizedName];
  v6 = [(TVRCAppInfo *)self bundleID];
  v7 = [(TVRCAppInfo *)self imageData];
  v8 = [v4 initWithLocalizedName:v5 bundleID:v6 imageData:v7 MRUCount:-[TVRCAppInfo MRUCount](self appGenre:"MRUCount") appType:{-[TVRCAppInfo appGenre](self, "appGenre"), -[TVRCAppInfo appType](self, "appType")}];

  return v8;
}

- (TVRCAppInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TVRCAppInfo;
  v5 = [(TVRCAppInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v10;

    v5->_MRUCount = [v4 decodeIntegerForKey:@"MRUCount"];
    v5->_appGenre = [v4 decodeIntForKey:@"appGenre"];
    v5->_appType = [v4 decodeIntForKey:@"appType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(TVRCAppInfo *)self localizedName];
  [v7 encodeObject:v4 forKey:@"localizedName"];

  v5 = [(TVRCAppInfo *)self bundleID];
  [v7 encodeObject:v5 forKey:@"bundleID"];

  v6 = [(TVRCAppInfo *)self imageData];
  [v7 encodeObject:v6 forKey:@"imageData"];

  [v7 encodeInteger:-[TVRCAppInfo MRUCount](self forKey:{"MRUCount"), @"MRUCount"}];
  [v7 encodeInteger:-[TVRCAppInfo appGenre](self forKey:{"appGenre"), @"appGenre"}];
  [v7 encodeInteger:-[TVRCAppInfo appType](self forKey:{"appType"), @"appType"}];
}

+ (id)appInfoWithBundleID:(id)a3 dictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 isEqualToString:@"com.apple.TVWatchList"];
  v9 = [v6 objectForKeyedSubscript:@"LocalizedAppName"];
  v10 = [v6 objectForKeyedSubscript:@"ImageKey"];
  if (v8)
  {
    v11 = 2;
    v12 = 17;
  }

  else
  {
    v13 = [v6 objectForKeyedSubscript:@"ApplicationTypeKey"];
    v11 = [v13 integerValue];

    v14 = [v6 objectForKeyedSubscript:@"ApplicationGenreKey"];
    v12 = [v14 integerValue];
  }

  v15 = [[a1 alloc] initWithLocalizedName:v9 bundleID:v7 imageData:v10 MRUCount:0 appGenre:v12 appType:v11];

  return v15;
}

- (BOOL)isTVApp
{
  v2 = [(TVRCAppInfo *)self bundleID];
  v3 = [v2 isEqualToString:@"com.apple.TVWatchList"];

  return v3;
}

@end