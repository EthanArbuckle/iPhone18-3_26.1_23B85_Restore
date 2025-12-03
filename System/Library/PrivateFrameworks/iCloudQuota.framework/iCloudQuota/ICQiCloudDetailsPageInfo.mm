@interface ICQiCloudDetailsPageInfo
- (ICQLink)icqLink;
- (ICQiCloudDetailsPageInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQiCloudDetailsPageInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQiCloudDetailsPageInfo);
  [(ICQiCloudDetailsPageInfo *)v4 setActionType:self->_actionType];
  [(ICQiCloudDetailsPageInfo *)v4 setActionURL:self->_actionURL];
  return v4;
}

- (ICQLink)icqLink
{
  v3 = [ICQLink alloc];
  actionType = [(ICQiCloudDetailsPageInfo *)self actionType];
  actionURL = [(ICQiCloudDetailsPageInfo *)self actionURL];
  v6 = [(ICQLink *)v3 initWithActionString:actionType url:actionURL];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  actionType = self->_actionType;
  coderCopy = coder;
  [coderCopy encodeObject:actionType forKey:@"actionType"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
}

- (ICQiCloudDetailsPageInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICQiCloudDetailsPageInfo;
  v5 = [(ICQiCloudDetailsPageInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionType"];
    actionType = v5->_actionType;
    v5->_actionType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v8;
  }

  return v5;
}

@end