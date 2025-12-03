@interface TFAppLockup
- (TFAppLockup)initWithTitle:(id)title subtitles:(id)subtitles iconArtwork:(id)artwork iconNeedsMask:(BOOL)mask;
@end

@implementation TFAppLockup

- (TFAppLockup)initWithTitle:(id)title subtitles:(id)subtitles iconArtwork:(id)artwork iconNeedsMask:(BOOL)mask
{
  titleCopy = title;
  subtitlesCopy = subtitles;
  artworkCopy = artwork;
  v19.receiver = self;
  v19.super_class = TFAppLockup;
  v13 = [(TFAppLockup *)&v19 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [subtitlesCopy copy];
    subtitles = v13->_subtitles;
    v13->_subtitles = v16;

    objc_storeStrong(&v13->_iconArtwork, artwork);
    v13->_iconNeedsMask = mask;
  }

  return v13;
}

@end