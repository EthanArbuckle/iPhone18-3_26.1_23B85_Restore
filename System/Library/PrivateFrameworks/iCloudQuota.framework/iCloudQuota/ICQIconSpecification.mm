@interface ICQIconSpecification
- (ICQIconSpecification)initWithCoder:(id)a3;
- (ICQIconSpecification)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQIconSpecification

- (ICQIconSpecification)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICQIconSpecification;
  v5 = [(ICQIconSpecification *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleId"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 objectForKeyedSubscript:@"assetId"];
    assetID = v5->_assetID;
    v5->_assetID = v8;

    v10 = [v4 objectForKeyedSubscript:@"sfSymbolId"];
    sfSymbolId = v5->_sfSymbolId;
    v5->_sfSymbolId = v10;

    v12 = [v4 objectForKeyedSubscript:@"sfSymbolColor"];
    sfSymbolColor = v5->_sfSymbolColor;
    v5->_sfSymbolColor = v12;

    v14 = [ICQImageURL alloc];
    v15 = [v4 objectForKeyedSubscript:@"urls"];
    v16 = [(ICQImageURL *)v14 initFromDictionary:v15];
    imageURL = v5->_imageURL;
    v5->_imageURL = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICQIconSpecification *)self bundleID];
  [v4 encodeObject:v5 forKey:@"bundleId"];

  v6 = [(ICQIconSpecification *)self assetID];
  [v4 encodeObject:v6 forKey:@"assetId"];

  v7 = [(ICQIconSpecification *)self imageURL];
  [v4 encodeObject:v7 forKey:@"urls"];

  v8 = [(ICQIconSpecification *)self sfSymbolId];
  [v4 encodeObject:v8 forKey:@"sfSymbolId"];

  v9 = [(ICQIconSpecification *)self sfSymbolColor];
  [v4 encodeObject:v9 forKey:@"sfSymbolColor"];
}

- (ICQIconSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICQIconSpecification;
  v5 = [(ICQIconSpecification *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetId"];
    assetID = v5->_assetID;
    v5->_assetID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urls"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolId"];
    sfSymbolId = v5->_sfSymbolId;
    v5->_sfSymbolId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolColor"];
    sfSymbolColor = v5->_sfSymbolColor;
    v5->_sfSymbolColor = v14;
  }

  return v5;
}

@end