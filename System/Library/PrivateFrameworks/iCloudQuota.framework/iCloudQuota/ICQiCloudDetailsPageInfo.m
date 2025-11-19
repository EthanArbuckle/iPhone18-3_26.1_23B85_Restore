@interface ICQiCloudDetailsPageInfo
- (ICQLink)icqLink;
- (ICQiCloudDetailsPageInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQiCloudDetailsPageInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQiCloudDetailsPageInfo);
  [(ICQiCloudDetailsPageInfo *)v4 setActionType:self->_actionType];
  [(ICQiCloudDetailsPageInfo *)v4 setActionURL:self->_actionURL];
  return v4;
}

- (ICQLink)icqLink
{
  v3 = [ICQLink alloc];
  v4 = [(ICQiCloudDetailsPageInfo *)self actionType];
  v5 = [(ICQiCloudDetailsPageInfo *)self actionURL];
  v6 = [(ICQLink *)v3 initWithActionString:v4 url:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  actionType = self->_actionType;
  v5 = a3;
  [v5 encodeObject:actionType forKey:@"actionType"];
  [v5 encodeObject:self->_actionURL forKey:@"actionURL"];
}

- (ICQiCloudDetailsPageInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICQiCloudDetailsPageInfo;
  v5 = [(ICQiCloudDetailsPageInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
    actionType = v5->_actionType;
    v5->_actionType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v8;
  }

  return v5;
}

@end