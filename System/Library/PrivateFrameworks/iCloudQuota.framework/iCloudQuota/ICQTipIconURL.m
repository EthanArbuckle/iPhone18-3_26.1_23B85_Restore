@interface ICQTipIconURL
- (ICQTipIconURL)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICQTipIconURL

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQTipIconURL);
  [(ICQTipIconURL *)v4 setImageURL:self->_imageURL];
  return v4;
}

- (ICQTipIconURL)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICQTipIconURL;
  v5 = [(ICQTipIconURL *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;
  }

  return v5;
}

@end