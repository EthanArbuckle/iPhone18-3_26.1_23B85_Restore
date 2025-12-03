@interface ICQTipIcon
- (ICQTipIcon)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICQTipIcon

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQTipIcon);
  [(ICQTipIcon *)v4 setType:self->_type];
  return v4;
}

- (ICQTipIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICQTipIcon;
  v5 = [(ICQTipIcon *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;
  }

  return v5;
}

@end