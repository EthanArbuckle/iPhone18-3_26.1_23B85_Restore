@interface SBHFakeApplicationPlaceholder
- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4;
- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6;
- (void)setProgress:(double)a3;
@end

@implementation SBHFakeApplicationPlaceholder

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v4 postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self];
}

- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = [(SBHFakeApplicationPlaceholder *)self applicationBundleIdentifier:a3];
  v11 = SBHGetApplicationIconImage(v10, 0, v9, v8, v7);

  return v11;
}

- (id)icon:(id)a3 imageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6
{
  v9 = a5;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v14 = a4;
  v15 = SBHIconServicesOptionsForImageOptions(v9);
  v16 = [(SBHFakeApplicationPlaceholder *)self applicationBundleIdentifier];
  v17 = SBHGetApplicationIconImageWithTraitCollection(v16, v14, v15, v12, v11, v10);

  return v17;
}

@end