@interface SBHFakeApplicationPlaceholder
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (void)setProgress:(double)progress;
@end

@implementation SBHFakeApplicationPlaceholder

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self];
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = [(SBHFakeApplicationPlaceholder *)self applicationBundleIdentifier:icon];
  v11 = SBHGetApplicationIconImage(v10, 0, v9, v8, v7);

  return v11;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  infoCopy = info;
  v15 = SBHIconServicesOptionsForImageOptions(collectionCopy);
  applicationBundleIdentifier = [(SBHFakeApplicationPlaceholder *)self applicationBundleIdentifier];
  v17 = SBHGetApplicationIconImageWithTraitCollection(applicationBundleIdentifier, infoCopy, v15, v12, v11, v10);

  return v17;
}

@end