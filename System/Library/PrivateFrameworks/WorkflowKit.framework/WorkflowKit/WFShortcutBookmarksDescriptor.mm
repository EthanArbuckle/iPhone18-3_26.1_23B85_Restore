@interface WFShortcutBookmarksDescriptor
- (WFShortcutBookmarksDescriptor)initWithCoder:(id)coder;
- (WFShortcutBookmarksDescriptor)initWithWorkflowID:(id)d path:(id)path bookmarkData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFShortcutBookmarksDescriptor

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFShortcutBookmarksDescriptor;
  coderCopy = coder;
  [(WFShortcutBookmarksDescriptor *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFShortcutBookmarksDescriptor *)self path:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"path"];

  bookmarkData = [(WFShortcutBookmarksDescriptor *)self bookmarkData];
  [coderCopy encodeObject:bookmarkData forKey:@"bookmarkData"];
}

- (WFShortcutBookmarksDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFShortcutBookmarksDescriptor;
  v5 = [(WFShortcutBookmarksDescriptor *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmarkData"];
    bookmarkData = v5->_bookmarkData;
    v5->_bookmarkData = v8;

    v10 = v5;
  }

  return v5;
}

- (WFShortcutBookmarksDescriptor)initWithWorkflowID:(id)d path:(id)path bookmarkData:(id)data
{
  pathCopy = path;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = WFShortcutBookmarksDescriptor;
  v11 = [(WFShortcutBookmarksDescriptor *)&v15 initWithIdentifier:d objectType:7];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_path, path);
    objc_storeStrong(&v12->_bookmarkData, data);
    v13 = v12;
  }

  return v12;
}

@end