@interface WBSHistoryServiceURLRepresentation
- (BOOL)isEqual:(id)equal;
- (WBSHistoryServiceURLRepresentation)initWithCoder:(id)coder;
- (WBSHistoryServiceURLRepresentation)initWithURLHash:(id)hash salt:(id)salt;
- (WBSHistoryServiceURLRepresentation)initWithURLString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSHistoryServiceURLRepresentation

- (WBSHistoryServiceURLRepresentation)initWithURLString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceURLRepresentation;
  v5 = [(WBSHistoryServiceURLRepresentation *)&v10 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = v5;
  }

  return v5;
}

- (WBSHistoryServiceURLRepresentation)initWithURLHash:(id)hash salt:(id)salt
{
  hashCopy = hash;
  saltCopy = salt;
  v15.receiver = self;
  v15.super_class = WBSHistoryServiceURLRepresentation;
  v8 = [(WBSHistoryServiceURLRepresentation *)&v15 init];
  if (v8)
  {
    v9 = [hashCopy copy];
    urlHash = v8->_urlHash;
    v8->_urlHash = v9;

    v11 = [saltCopy copy];
    urlSalt = v8->_urlSalt;
    v8->_urlSalt = v11;

    v13 = v8;
  }

  return v8;
}

- (WBSHistoryServiceURLRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WBSHistoryServiceURLRepresentation;
  v5 = [(WBSHistoryServiceURLRepresentation *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlHash"];
    urlHash = v5->_urlHash;
    v5->_urlHash = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlSalt"];
    urlSalt = v5->_urlSalt;
    v5->_urlSalt = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  urlString = self->_urlString;
  coderCopy = coder;
  [coderCopy encodeObject:urlString forKey:@"urlString"];
  [coderCopy encodeObject:self->_urlHash forKey:@"urlHash"];
  [coderCopy encodeObject:self->_urlSalt forKey:@"urlSalt"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  urlString = self->_urlString;
  v5 = [objc_opt_class() allocWithZone:zone];
  if (urlString)
  {
    v6 = self->_urlString;

    return [v5 initWithURLString:v6];
  }

  else
  {
    urlHash = self->_urlHash;
    urlSalt = self->_urlSalt;

    return [v5 initWithURLHash:urlHash salt:urlSalt];
  }
}

- (id)description
{
  urlString = self->_urlString;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (urlString)
  {
    [v4 stringWithFormat:@"<%@: %p; urlString = %@>", v6, self, self->_urlString, v10];
  }

  else
  {
    [v4 stringWithFormat:@"<%@: %p; urlHash = %@; urlSalt = %@>", v6, self, self->_urlHash, self->_urlSalt];
  }
  v8 = ;

  return v8;
}

- (unint64_t)hash
{
  urlString = self->_urlString;
  if (urlString)
  {

    return [(NSString *)urlString hash];
  }

  else
  {
    v5 = [(NSData *)self->_urlSalt hash];
    return [(NSData *)self->_urlHash hash]^ v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      urlString = self->_urlString;
      if (!urlString || (urlSalt = v5->_urlString) == 0)
      {
        if (![(NSData *)self->_urlHash isEqual:v5->_urlHash])
        {
          v8 = 0;
          goto LABEL_11;
        }

        urlString = self->_urlSalt;
        urlSalt = v5->_urlSalt;
      }

      v8 = [(NSData *)urlString isEqual:urlSalt];
LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

@end