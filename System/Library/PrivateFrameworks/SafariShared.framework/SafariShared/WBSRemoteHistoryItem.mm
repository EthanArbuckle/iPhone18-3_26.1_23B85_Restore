@interface WBSRemoteHistoryItem
- (WBSRemoteHistoryItem)initWithCoder:(id)coder;
- (WBSRemoteHistoryItem)initWithURL:(id)l title:(id)title lastVisitTime:(id)time;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSRemoteHistoryItem

- (WBSRemoteHistoryItem)initWithURL:(id)l title:(id)title lastVisitTime:(id)time
{
  lCopy = l;
  titleCopy = title;
  timeCopy = time;
  v18.receiver = self;
  v18.super_class = WBSRemoteHistoryItem;
  v12 = [(WBSRemoteHistoryItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_lastVisitTime, time);
    v16 = v13;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p url = %@; title = %@; lastVisitTime = %@>", v5, self, self->_url, self->_title, self->_lastVisitTime];;

  return v6;
}

- (WBSRemoteHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastVisitTime"];

  v8 = [(WBSRemoteHistoryItem *)self initWithURL:v5 title:v6 lastVisitTime:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_lastVisitTime forKey:@"lastVisitTime"];
}

@end