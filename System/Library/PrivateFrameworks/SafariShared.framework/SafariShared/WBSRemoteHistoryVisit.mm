@interface WBSRemoteHistoryVisit
- (WBSRemoteHistoryVisit)initWithCoder:(id)coder;
- (WBSRemoteHistoryVisit)initWithURL:(id)l date:(id)date;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSRemoteHistoryVisit

- (WBSRemoteHistoryVisit)initWithURL:(id)l date:(id)date
{
  lCopy = l;
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = WBSRemoteHistoryVisit;
  v9 = [(WBSRemoteHistoryVisit *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_date, date);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p url = %@; date = %@>", v5, self, self->_url, self->_date];;

  return v6;
}

- (WBSRemoteHistoryVisit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v7 = [(WBSRemoteHistoryVisit *)self initWithURL:v5 date:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  url = self->_url;
  coderCopy = coder;
  [coderCopy encodeObject:url forKey:@"url"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

@end