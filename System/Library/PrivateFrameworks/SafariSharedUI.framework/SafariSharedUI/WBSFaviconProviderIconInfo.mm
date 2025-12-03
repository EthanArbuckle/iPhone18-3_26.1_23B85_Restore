@interface WBSFaviconProviderIconInfo
- (CGSize)size;
- (WBSFaviconProviderIconInfo)initWithPageURLString:(id)string iconURLString:(id)lString UUIDString:(id)dString dateAdded:(id)added size:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions isRejectedResource:(BOOL)resource;
@end

@implementation WBSFaviconProviderIconInfo

- (WBSFaviconProviderIconInfo)initWithPageURLString:(id)string iconURLString:(id)lString UUIDString:(id)dString dateAdded:(id)added size:(CGSize)size hasGeneratedResolutions:(BOOL)resolutions isRejectedResource:(BOOL)resource
{
  height = size.height;
  width = size.width;
  stringCopy = string;
  lStringCopy = lString;
  dStringCopy = dString;
  addedCopy = added;
  v30.receiver = self;
  v30.super_class = WBSFaviconProviderIconInfo;
  v21 = [(WBSFaviconProviderIconInfo *)&v30 init];
  if (v21)
  {
    v22 = [stringCopy copy];
    pageURLString = v21->_pageURLString;
    v21->_pageURLString = v22;

    v24 = [lStringCopy copy];
    iconURLString = v21->_iconURLString;
    v21->_iconURLString = v24;

    v26 = [dStringCopy copy];
    UUIDString = v21->_UUIDString;
    v21->_UUIDString = v26;

    objc_storeStrong(&v21->_dateAdded, added);
    v21->_size.width = width;
    v21->_size.height = height;
    v21->_hasGeneratedResolutions = resolutions;
    v21->_isRejectedResource = resource;
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