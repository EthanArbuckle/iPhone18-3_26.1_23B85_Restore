@interface ICQTipIcon
- (ICQTipIcon)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICQTipIcon

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQTipIcon);
  [(ICQTipIcon *)v4 setType:self->_type];
  return v4;
}

- (ICQTipIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICQTipIcon;
  v5 = [(ICQTipIcon *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;
  }

  return v5;
}

@end