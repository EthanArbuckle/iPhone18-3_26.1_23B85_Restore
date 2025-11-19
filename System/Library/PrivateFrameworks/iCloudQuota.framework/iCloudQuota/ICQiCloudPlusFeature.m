@interface ICQiCloudPlusFeature
- (ICQiCloudPlusFeature)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQiCloudPlusFeature

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQiCloudPlusFeature);
  [(ICQiCloudPlusFeature *)v4 setLabel:self->_label];
  [(ICQiCloudPlusFeature *)v4 setSublabel:self->_sublabel];
  [(ICQiCloudPlusFeature *)v4 setIconURL:self->_iconURL];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"label"];
  [v5 encodeObject:self->_sublabel forKey:@"sublabel"];
  [v5 encodeObject:self->_iconURL forKey:@"iconURL"];
}

- (ICQiCloudPlusFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICQiCloudPlusFeature;
  v5 = [(ICQiCloudPlusFeature *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sublabel"];
    sublabel = v5->_sublabel;
    v5->_sublabel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v10;
  }

  return v5;
}

@end