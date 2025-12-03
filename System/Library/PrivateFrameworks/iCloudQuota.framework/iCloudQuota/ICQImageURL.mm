@interface ICQImageURL
- (ICQImageURL)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQImageURL

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ICQImageURL;
  v5 = [(ICQImageURL *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"1x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
      [(ICQImageURL *)v5 setURL1x:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"2x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
      [(ICQImageURL *)v5 setURL2x:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"3x"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
      [(ICQImageURL *)v5 setURL3x:v11];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQImageURL);
  [(ICQImageURL *)v4 setURL1x:self->_URL1x];
  [(ICQImageURL *)v4 setURL2x:self->_URL2x];
  [(ICQImageURL *)v4 setURL3x:self->_URL3x];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  URL1x = self->_URL1x;
  coderCopy = coder;
  [coderCopy encodeObject:URL1x forKey:@"URL1x"];
  [coderCopy encodeObject:self->_URL2x forKey:@"URL2x"];
  [coderCopy encodeObject:self->_URL3x forKey:@"URL3x"];
}

- (ICQImageURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICQImageURL;
  v5 = [(ICQImageURL *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL1x"];
    URL1x = v5->_URL1x;
    v5->_URL1x = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL2x"];
    URL2x = v5->_URL2x;
    v5->_URL2x = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL3x"];
    URL3x = v5->_URL3x;
    v5->_URL3x = v10;
  }

  return v5;
}

@end