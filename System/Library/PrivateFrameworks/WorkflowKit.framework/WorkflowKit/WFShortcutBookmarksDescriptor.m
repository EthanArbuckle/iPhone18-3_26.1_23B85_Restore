@interface WFShortcutBookmarksDescriptor
- (WFShortcutBookmarksDescriptor)initWithCoder:(id)a3;
- (WFShortcutBookmarksDescriptor)initWithWorkflowID:(id)a3 path:(id)a4 bookmarkData:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFShortcutBookmarksDescriptor

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFShortcutBookmarksDescriptor;
  v4 = a3;
  [(WFShortcutBookmarksDescriptor *)&v7 encodeWithCoder:v4];
  v5 = [(WFShortcutBookmarksDescriptor *)self path:v7.receiver];
  [v4 encodeObject:v5 forKey:@"path"];

  v6 = [(WFShortcutBookmarksDescriptor *)self bookmarkData];
  [v4 encodeObject:v6 forKey:@"bookmarkData"];
}

- (WFShortcutBookmarksDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFShortcutBookmarksDescriptor;
  v5 = [(WFShortcutBookmarksDescriptor *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];
    bookmarkData = v5->_bookmarkData;
    v5->_bookmarkData = v8;

    v10 = v5;
  }

  return v5;
}

- (WFShortcutBookmarksDescriptor)initWithWorkflowID:(id)a3 path:(id)a4 bookmarkData:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = WFShortcutBookmarksDescriptor;
  v11 = [(WFShortcutBookmarksDescriptor *)&v15 initWithIdentifier:a3 objectType:7];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_path, a4);
    objc_storeStrong(&v12->_bookmarkData, a5);
    v13 = v12;
  }

  return v12;
}

@end