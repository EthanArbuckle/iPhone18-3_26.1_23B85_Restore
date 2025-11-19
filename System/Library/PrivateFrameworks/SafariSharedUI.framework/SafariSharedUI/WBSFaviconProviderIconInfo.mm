@interface WBSFaviconProviderIconInfo
- (CGSize)size;
- (WBSFaviconProviderIconInfo)initWithPageURLString:(id)a3 iconURLString:(id)a4 UUIDString:(id)a5 dateAdded:(id)a6 size:(CGSize)a7 hasGeneratedResolutions:(BOOL)a8 isRejectedResource:(BOOL)a9;
@end

@implementation WBSFaviconProviderIconInfo

- (WBSFaviconProviderIconInfo)initWithPageURLString:(id)a3 iconURLString:(id)a4 UUIDString:(id)a5 dateAdded:(id)a6 size:(CGSize)a7 hasGeneratedResolutions:(BOOL)a8 isRejectedResource:(BOOL)a9
{
  height = a7.height;
  width = a7.width;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v30.receiver = self;
  v30.super_class = WBSFaviconProviderIconInfo;
  v21 = [(WBSFaviconProviderIconInfo *)&v30 init];
  if (v21)
  {
    v22 = [v17 copy];
    pageURLString = v21->_pageURLString;
    v21->_pageURLString = v22;

    v24 = [v18 copy];
    iconURLString = v21->_iconURLString;
    v21->_iconURLString = v24;

    v26 = [v19 copy];
    UUIDString = v21->_UUIDString;
    v21->_UUIDString = v26;

    objc_storeStrong(&v21->_dateAdded, a6);
    v21->_size.width = width;
    v21->_size.height = height;
    v21->_hasGeneratedResolutions = a8;
    v21->_isRejectedResource = a9;
    v28 = v21;
  }

  return v21;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end