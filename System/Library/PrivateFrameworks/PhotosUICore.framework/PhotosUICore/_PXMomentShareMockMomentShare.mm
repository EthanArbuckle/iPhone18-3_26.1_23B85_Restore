@interface _PXMomentShareMockMomentShare
+ (_PXMomentShareMockMomentShare)momentShareWithStatus:(unsigned __int16)status photosCount:(unint64_t)count videosCount:(unint64_t)videosCount uploadedPhotosCount:(unint64_t)photosCount uploadedVideosCount:(unint64_t)uploadedVideosCount;
- (NSString)uuid;
- (_PXMomentShareMockMomentShare)initWithStatus:(unsigned __int16)status assetCount:(unint64_t)count photosCount:(unint64_t)photosCount videosCount:(unint64_t)videosCount uploadedPhotosCount:(unint64_t)uploadedPhotosCount uploadedVideosCount:(unint64_t)uploadedVideosCount shareURL:(id)l expiryDate:(id)self0 localizedTitle:(id)self1 startDate:(id)self2 endDate:(id)self3;
- (id)localizedDateDescriptionWithOptions:(unint64_t)options;
- (int64_t)aggregateMediaType;
- (int64_t)px_momentShareType;
@end

@implementation _PXMomentShareMockMomentShare

- (id)localizedDateDescriptionWithOptions:(unint64_t)options
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatusMock.m" lineNumber:507 description:@"not implemented yet"];

  abort();
}

- (int64_t)px_momentShareType
{
  status = [(_PXMomentShareMockMomentShare *)self status];
  if ((status - 2) < 2)
  {
    return 1;
  }

  if (!status)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_PXMomentShareMockMomentShare px_momentShareType]"];
    [currentHandler handleFailureInFunction:v5 file:@"PXMomentShareStatusMock.m" lineNumber:494 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

- (int64_t)aggregateMediaType
{
  photosCount = [(_PXMomentShareMockMomentShare *)self photosCount];
  videosCount = [(_PXMomentShareMockMomentShare *)self videosCount];
  result = [(_PXMomentShareMockMomentShare *)self assetCount];
  if (result)
  {
    if (videosCount || photosCount != result)
    {
      if (videosCount == result && photosCount == 0)
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

- (_PXMomentShareMockMomentShare)initWithStatus:(unsigned __int16)status assetCount:(unint64_t)count photosCount:(unint64_t)photosCount videosCount:(unint64_t)videosCount uploadedPhotosCount:(unint64_t)uploadedPhotosCount uploadedVideosCount:(unint64_t)uploadedVideosCount shareURL:(id)l expiryDate:(id)self0 localizedTitle:(id)self1 startDate:(id)self2 endDate:(id)self3
{
  lCopy = l;
  dateCopy = date;
  titleCopy = title;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v33.receiver = self;
  v33.super_class = _PXMomentShareMockMomentShare;
  v23 = [(_PXMomentShareMockMomentShare *)&v33 init];
  v24 = v23;
  if (v23)
  {
    v23->_status = status;
    v23->_assetCount = count;
    v23->_photosCount = photosCount;
    v23->_videosCount = videosCount;
    v23->_cloudPhotoCount = uploadedPhotosCount;
    v23->_cloudVideoCount = uploadedVideosCount;
    v25 = lCopy;
    if (!lCopy)
    {
      v25 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F1741150];
    }

    objc_storeStrong(&v24->_shareURL, v25);
    if (!lCopy)
    {
    }

    distantFuture = dateCopy;
    if (!dateCopy)
    {
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    }

    objc_storeStrong(&v24->_expiryDate, distantFuture);
    if (!dateCopy)
    {
    }

    if (titleCopy)
    {
      v27 = titleCopy;
    }

    else
    {
      v27 = &stru_1F1741150;
    }

    objc_storeStrong(&v24->_localizedTitle, v27);
    distantPast = startDateCopy;
    if (!startDateCopy)
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
    }

    objc_storeStrong(&v24->_startDate, distantPast);
    if (!startDateCopy)
    {
    }

    date = endDateCopy;
    if (!endDateCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    objc_storeStrong(&v24->_endDate, date);
    if (!endDateCopy)
    {
    }

    v24->_estimatedAssetCount = count;
    v24->_px_highlightKind = -1;
  }

  return v24;
}

+ (_PXMomentShareMockMomentShare)momentShareWithStatus:(unsigned __int16)status photosCount:(unint64_t)count videosCount:(unint64_t)videosCount uploadedPhotosCount:(unint64_t)photosCount uploadedVideosCount:(unint64_t)uploadedVideosCount
{
  v7 = [[_PXMomentShareMockMomentShare alloc] initWithStatus:status assetCount:videosCount + count photosCount:count videosCount:videosCount uploadedPhotosCount:photosCount uploadedVideosCount:uploadedVideosCount shareURL:0 expiryDate:0 localizedTitle:0 startDate:0 endDate:0];

  return v7;
}

@end