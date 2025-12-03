@interface TVRCAppInfo
+ (id)appInfoWithBundleID:(id)d dictionary:(id)dictionary;
+ (id)appInfoWithLocalizedName:(id)name bundleID:(id)d imageData:(id)data MRUCount:(unint64_t)count appGenre:(unint64_t)genre appType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTVApp;
- (TVRCAppInfo)appInfoWithMRUCount:(unint64_t)count;
- (TVRCAppInfo)initWithCoder:(id)coder;
- (TVRCAppInfo)initWithLocalizedName:(id)name bundleID:(id)d imageData:(id)data MRUCount:(unint64_t)count appGenre:(unint64_t)genre appType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCAppInfo

- (TVRCAppInfo)initWithLocalizedName:(id)name bundleID:(id)d imageData:(id)data MRUCount:(unint64_t)count appGenre:(unint64_t)genre appType:(int64_t)type
{
  nameCopy = name;
  dCopy = d;
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = TVRCAppInfo;
  v18 = [(TVRCAppInfo *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_localizedName, name);
    objc_storeStrong(&v19->_bundleID, d);
    objc_storeStrong(&v19->_imageData, data);
    v19->_MRUCount = count;
    v19->_appGenre = genre;
    v19->_appType = type;
  }

  return v19;
}

+ (id)appInfoWithLocalizedName:(id)name bundleID:(id)d imageData:(id)data MRUCount:(unint64_t)count appGenre:(unint64_t)genre appType:(int64_t)type
{
  dataCopy = data;
  dCopy = d;
  nameCopy = name;
  v17 = [[self alloc] initWithLocalizedName:nameCopy bundleID:dCopy imageData:dataCopy MRUCount:count appGenre:genre appType:type];

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localizedName = [(TVRCAppInfo *)self localizedName];
  bundleID = [(TVRCAppInfo *)self bundleID];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCAppInfo appType](self, "appType")}];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TVRCAppInfo appGenre](self, "appGenre")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TVRCAppInfo MRUCount](self, "MRUCount")}];
  v11 = [v3 stringWithFormat:@"<%@ %p: name=%@ bundleID=%@; appType=%@; appGenre=%@; mruCount=%@>", v5, self, localizedName, bundleID, v8, v9, v10];;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    mRUCount = [v6 MRUCount];
    if (mRUCount != [(TVRCAppInfo *)self MRUCount])
    {
      goto LABEL_9;
    }

    localizedName = [v6 localizedName];
    localizedName2 = [(TVRCAppInfo *)self localizedName];
    v10 = [localizedName isEqualToString:localizedName2];

    if (!v10)
    {
      goto LABEL_9;
    }

    bundleID = [v6 bundleID];
    bundleID2 = [(TVRCAppInfo *)self bundleID];
    v13 = [bundleID isEqualToString:bundleID2];

    if (!v13)
    {
      goto LABEL_9;
    }

    imageData = [v6 imageData];
    imageData2 = [(TVRCAppInfo *)self imageData];
    v16 = [imageData isEqualToData:imageData2];

    if (!v16)
    {
      goto LABEL_9;
    }

    appGenre = [v6 appGenre];
    if (appGenre == [(TVRCAppInfo *)self appGenre])
    {
      appType = [v6 appType];
      v19 = appType == [(TVRCAppInfo *)self appType];
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
  localizedName = [(TVRCAppInfo *)self localizedName];
  v4 = [localizedName hash];
  bundleID = [(TVRCAppInfo *)self bundleID];
  v6 = [bundleID hash] + v4;
  imageData = [(TVRCAppInfo *)self imageData];
  v8 = [imageData hash];
  v9 = v6 + v8 + [(TVRCAppInfo *)self MRUCount];
  appGenre = [(TVRCAppInfo *)self appGenre];
  v11 = appGenre + [(TVRCAppInfo *)self appType];

  return v9 + v11;
}

- (TVRCAppInfo)appInfoWithMRUCount:(unint64_t)count
{
  v5 = objc_alloc(objc_opt_class());
  localizedName = [(TVRCAppInfo *)self localizedName];
  bundleID = [(TVRCAppInfo *)self bundleID];
  imageData = [(TVRCAppInfo *)self imageData];
  v9 = [v5 initWithLocalizedName:localizedName bundleID:bundleID imageData:imageData MRUCount:count appGenre:-[TVRCAppInfo appGenre](self appType:{"appGenre"), -[TVRCAppInfo appType](self, "appType")}];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  localizedName = [(TVRCAppInfo *)self localizedName];
  bundleID = [(TVRCAppInfo *)self bundleID];
  imageData = [(TVRCAppInfo *)self imageData];
  v8 = [v4 initWithLocalizedName:localizedName bundleID:bundleID imageData:imageData MRUCount:-[TVRCAppInfo MRUCount](self appGenre:"MRUCount") appType:{-[TVRCAppInfo appGenre](self, "appGenre"), -[TVRCAppInfo appType](self, "appType")}];

  return v8;
}

- (TVRCAppInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TVRCAppInfo;
  v5 = [(TVRCAppInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v10;

    v5->_MRUCount = [coderCopy decodeIntegerForKey:@"MRUCount"];
    v5->_appGenre = [coderCopy decodeIntForKey:@"appGenre"];
    v5->_appType = [coderCopy decodeIntForKey:@"appType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedName = [(TVRCAppInfo *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  bundleID = [(TVRCAppInfo *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  imageData = [(TVRCAppInfo *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"imageData"];

  [coderCopy encodeInteger:-[TVRCAppInfo MRUCount](self forKey:{"MRUCount"), @"MRUCount"}];
  [coderCopy encodeInteger:-[TVRCAppInfo appGenre](self forKey:{"appGenre"), @"appGenre"}];
  [coderCopy encodeInteger:-[TVRCAppInfo appType](self forKey:{"appType"), @"appType"}];
}

+ (id)appInfoWithBundleID:(id)d dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v8 = [dCopy isEqualToString:@"com.apple.TVWatchList"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"LocalizedAppName"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"ImageKey"];
  if (v8)
  {
    integerValue = 2;
    integerValue2 = 17;
  }

  else
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"ApplicationTypeKey"];
    integerValue = [v13 integerValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"ApplicationGenreKey"];
    integerValue2 = [v14 integerValue];
  }

  v15 = [[self alloc] initWithLocalizedName:v9 bundleID:dCopy imageData:v10 MRUCount:0 appGenre:integerValue2 appType:integerValue];

  return v15;
}

- (BOOL)isTVApp
{
  bundleID = [(TVRCAppInfo *)self bundleID];
  v3 = [bundleID isEqualToString:@"com.apple.TVWatchList"];

  return v3;
}

@end