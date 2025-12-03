@interface PLSimpleAlbum
- (NSString)localizedTitle;
- (PLSimpleAlbum)initWithTitle:(id)title assets:(id)assets;
- (int64_t)_countOfAssetType:(signed __int16)type;
- (unint64_t)assetsCount;
@end

@implementation PLSimpleAlbum

- (unint64_t)assetsCount
{
  assets = [(PLSimpleAlbum *)self assets];
  v3 = [assets count];

  return v3;
}

- (NSString)localizedTitle
{
  title = [(PLSimpleAlbum *)self title];
  v3 = PLLocalizedFrameworkString();

  return v3;
}

- (int64_t)_countOfAssetType:(signed __int16)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  assets = self->_assets;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PLSimpleAlbum__countOfAssetType___block_invoke;
  v6[3] = &unk_1E75701F8;
  typeCopy = type;
  v6[4] = &v8;
  [(NSOrderedSet *)assets enumerateObjectsUsingBlock:v6];
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __35__PLSimpleAlbum__countOfAssetType___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 kind];
  if (*(a1 + 40) == result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (PLSimpleAlbum)initWithTitle:(id)title assets:(id)assets
{
  titleCopy = title;
  assetsCopy = assets;
  v14.receiver = self;
  v14.super_class = PLSimpleAlbum;
  v8 = [(PLSimpleAlbum *)&v14 init];
  if (v8)
  {
    v9 = [assetsCopy copy];
    assets = v8->_assets;
    v8->_assets = v9;

    v11 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v11;
  }

  return v8;
}

@end