@interface WBSRemoteHistoryItem
- (WBSRemoteHistoryItem)initWithCoder:(id)a3;
- (WBSRemoteHistoryItem)initWithURL:(id)a3 title:(id)a4 lastVisitTime:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSRemoteHistoryItem

- (WBSRemoteHistoryItem)initWithURL:(id)a3 title:(id)a4 lastVisitTime:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = WBSRemoteHistoryItem;
  v12 = [(WBSRemoteHistoryItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_lastVisitTime, a5);
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

- (WBSRemoteHistoryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastVisitTime"];

  v8 = [(WBSRemoteHistoryItem *)self initWithURL:v5 title:v6 lastVisitTime:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_lastVisitTime forKey:@"lastVisitTime"];
}

@end