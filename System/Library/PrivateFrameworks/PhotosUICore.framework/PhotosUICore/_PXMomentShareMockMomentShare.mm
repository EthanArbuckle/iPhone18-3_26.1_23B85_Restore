@interface _PXMomentShareMockMomentShare
+ (_PXMomentShareMockMomentShare)momentShareWithStatus:(unsigned __int16)a3 photosCount:(unint64_t)a4 videosCount:(unint64_t)a5 uploadedPhotosCount:(unint64_t)a6 uploadedVideosCount:(unint64_t)a7;
- (NSString)uuid;
- (_PXMomentShareMockMomentShare)initWithStatus:(unsigned __int16)a3 assetCount:(unint64_t)a4 photosCount:(unint64_t)a5 videosCount:(unint64_t)a6 uploadedPhotosCount:(unint64_t)a7 uploadedVideosCount:(unint64_t)a8 shareURL:(id)a9 expiryDate:(id)a10 localizedTitle:(id)a11 startDate:(id)a12 endDate:(id)a13;
- (id)localizedDateDescriptionWithOptions:(unint64_t)a3;
- (int64_t)aggregateMediaType;
- (int64_t)px_momentShareType;
@end

@implementation _PXMomentShareMockMomentShare

- (id)localizedDateDescriptionWithOptions:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusMock.m" lineNumber:507 description:@"not implemented yet"];

  abort();
}

- (int64_t)px_momentShareType
{
  v2 = [(_PXMomentShareMockMomentShare *)self status];
  if ((v2 - 2) < 2)
  {
    return 1;
  }

  if (!v2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_PXMomentShareMockMomentShare px_momentShareType]"];
    [v4 handleFailureInFunction:v5 file:@"PXMomentShareStatusMock.m" lineNumber:494 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (int64_t)aggregateMediaType
{
  v3 = [(_PXMomentShareMockMomentShare *)self photosCount];
  v4 = [(_PXMomentShareMockMomentShare *)self videosCount];
  result = [(_PXMomentShareMockMomentShare *)self assetCount];
  if (result)
  {
    if (v4 || v3 != result)
    {
      if (v4 == result && v3 == 0)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (NSString)uuid
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@-%p", v5, self];

  return v6;
}

- (_PXMomentShareMockMomentShare)initWithStatus:(unsigned __int16)a3 assetCount:(unint64_t)a4 photosCount:(unint64_t)a5 videosCount:(unint64_t)a6 uploadedPhotosCount:(unint64_t)a7 uploadedVideosCount:(unint64_t)a8 shareURL:(id)a9 expiryDate:(id)a10 localizedTitle:(id)a11 startDate:(id)a12 endDate:(id)a13
{
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v33.receiver = self;
  v33.super_class = _PXMomentShareMockMomentShare;
  v23 = [(_PXMomentShareMockMomentShare *)&v33 init];
  v24 = v23;
  if (v23)
  {
    v23->_status = a3;
    v23->_assetCount = a4;
    v23->_photosCount = a5;
    v23->_videosCount = a6;
    v23->_cloudPhotoCount = a7;
    v23->_cloudVideoCount = a8;
    v25 = v18;
    if (!v18)
    {
      v25 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F1741150];
    }

    objc_storeStrong(&v24->_shareURL, v25);
    if (!v18)
    {
    }

    v26 = v19;
    if (!v19)
    {
      v26 = [MEMORY[0x1E695DF00] distantFuture];
    }

    objc_storeStrong(&v24->_expiryDate, v26);
    if (!v19)
    {
    }

    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = &stru_1F1741150;
    }

    objc_storeStrong(&v24->_localizedTitle, v27);
    v28 = v21;
    if (!v21)
    {
      v28 = [MEMORY[0x1E695DF00] distantPast];
    }

    objc_storeStrong(&v24->_startDate, v28);
    if (!v21)
    {
    }

    v29 = v22;
    if (!v22)
    {
      v29 = [MEMORY[0x1E695DF00] date];
    }

    objc_storeStrong(&v24->_endDate, v29);
    if (!v22)
    {
    }

    v24->_estimatedAssetCount = a4;
    v24->_px_highlightKind = -1;
  }

  return v24;
}

+ (_PXMomentShareMockMomentShare)momentShareWithStatus:(unsigned __int16)a3 photosCount:(unint64_t)a4 videosCount:(unint64_t)a5 uploadedPhotosCount:(unint64_t)a6 uploadedVideosCount:(unint64_t)a7
{
  v7 = [[_PXMomentShareMockMomentShare alloc] initWithStatus:a3 assetCount:a5 + a4 photosCount:a4 videosCount:a5 uploadedPhotosCount:a6 uploadedVideosCount:a7 shareURL:0 expiryDate:0 localizedTitle:0 startDate:0 endDate:0];

  return v7;
}

@end