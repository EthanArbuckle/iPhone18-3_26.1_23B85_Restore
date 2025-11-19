@interface WBSRemoteHistoryVisit
- (WBSRemoteHistoryVisit)initWithCoder:(id)a3;
- (WBSRemoteHistoryVisit)initWithURL:(id)a3 date:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSRemoteHistoryVisit

- (WBSRemoteHistoryVisit)initWithURL:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSRemoteHistoryVisit;
  v9 = [(WBSRemoteHistoryVisit *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_date, a4);
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

- (WBSRemoteHistoryVisit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];

  v7 = [(WBSRemoteHistoryVisit *)self initWithURL:v5 date:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_date forKey:@"date"];
}

@end