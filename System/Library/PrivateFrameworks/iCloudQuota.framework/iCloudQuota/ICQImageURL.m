@interface ICQImageURL
- (ICQImageURL)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQImageURL

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICQImageURL;
  v5 = [(ICQImageURL *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"1x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
      [(ICQImageURL *)v5 setURL1x:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"2x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
      [(ICQImageURL *)v5 setURL2x:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"3x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
      [(ICQImageURL *)v5 setURL3x:v11];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQImageURL);
  [(ICQImageURL *)v4 setURL1x:self->_URL1x];
  [(ICQImageURL *)v4 setURL2x:self->_URL2x];
  [(ICQImageURL *)v4 setURL3x:self->_URL3x];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  URL1x = self->_URL1x;
  v5 = a3;
  [v5 encodeObject:URL1x forKey:@"URL1x"];
  [v5 encodeObject:self->_URL2x forKey:@"URL2x"];
  [v5 encodeObject:self->_URL3x forKey:@"URL3x"];
}

- (ICQImageURL)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICQImageURL;
  v5 = [(ICQImageURL *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL1x"];
    URL1x = v5->_URL1x;
    v5->_URL1x = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL2x"];
    URL2x = v5->_URL2x;
    v5->_URL2x = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL3x"];
    URL3x = v5->_URL3x;
    v5->_URL3x = v10;
  }

  return v5;
}

@end