@interface ICQIconSpecification
- (ICQIconSpecification)initWithCoder:(id)coder;
- (ICQIconSpecification)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQIconSpecification

- (ICQIconSpecification)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = ICQIconSpecification;
  v5 = [(ICQIconSpecification *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetId"];
    assetID = v5->_assetID;
    v5->_assetID = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sfSymbolId"];
    sfSymbolId = v5->_sfSymbolId;
    v5->_sfSymbolId = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sfSymbolColor"];
    sfSymbolColor = v5->_sfSymbolColor;
    v5->_sfSymbolColor = v12;

    v14 = [ICQImageURL alloc];
    v15 = [dictionaryCopy objectForKeyedSubscript:@"urls"];
    v16 = [(ICQImageURL *)v14 initFromDictionary:v15];
    imageURL = v5->_imageURL;
    v5->_imageURL = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ICQIconSpecification *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleId"];

  assetID = [(ICQIconSpecification *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetId"];

  imageURL = [(ICQIconSpecification *)self imageURL];
  [coderCopy encodeObject:imageURL forKey:@"urls"];

  sfSymbolId = [(ICQIconSpecification *)self sfSymbolId];
  [coderCopy encodeObject:sfSymbolId forKey:@"sfSymbolId"];

  sfSymbolColor = [(ICQIconSpecification *)self sfSymbolColor];
  [coderCopy encodeObject:sfSymbolColor forKey:@"sfSymbolColor"];
}

- (ICQIconSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ICQIconSpecification;
  v5 = [(ICQIconSpecification *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetId"];
    assetID = v5->_assetID;
    v5->_assetID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urls"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolId"];
    sfSymbolId = v5->_sfSymbolId;
    v5->_sfSymbolId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sfSymbolColor"];
    sfSymbolColor = v5->_sfSymbolColor;
    v5->_sfSymbolColor = v14;
  }

  return v5;
}

@end