@interface ICQiCloudPlusFeature
- (ICQiCloudPlusFeature)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQiCloudPlusFeature

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQiCloudPlusFeature);
  [(ICQiCloudPlusFeature *)v4 setLabel:self->_label];
  [(ICQiCloudPlusFeature *)v4 setSublabel:self->_sublabel];
  [(ICQiCloudPlusFeature *)v4 setIconURL:self->_iconURL];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  label = self->_label;
  coderCopy = coder;
  [coderCopy encodeObject:label forKey:@"label"];
  [coderCopy encodeObject:self->_sublabel forKey:@"sublabel"];
  [coderCopy encodeObject:self->_iconURL forKey:@"iconURL"];
}

- (ICQiCloudPlusFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ICQiCloudPlusFeature;
  v5 = [(ICQiCloudPlusFeature *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sublabel"];
    sublabel = v5->_sublabel;
    v5->_sublabel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v10;
  }

  return v5;
}

@end