@interface ICCloudAddReferral
+ (id)referralWithAlbumAdamID:(int64_t)d;
+ (id)referralWithPlaylistGlobalID:(id)d;
- (ICCloudAddReferral)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICCloudAddReferral

- (ICCloudAddReferral)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICCloudAddReferral;
  v5 = [(ICCloudAddReferral *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playlistGlobalID"];
    playlistGlobalID = v5->_playlistGlobalID;
    v5->_playlistGlobalID = v6;

    v5->_albumAdamID = [coderCopy decodeInt64ForKey:@"albumAdamID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  playlistGlobalID = self->_playlistGlobalID;
  coderCopy = coder;
  [coderCopy encodeObject:playlistGlobalID forKey:@"playlistGlobalID"];
  [coderCopy encodeInt64:self->_albumAdamID forKey:@"albumAdamID"];
}

+ (id)referralWithAlbumAdamID:(int64_t)d
{
  v4 = objc_alloc_init(ICCloudAddReferral);
  v4->_albumAdamID = d;

  return v4;
}

+ (id)referralWithPlaylistGlobalID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(ICCloudAddReferral);
  v5 = [dCopy copy];

  playlistGlobalID = v4->_playlistGlobalID;
  v4->_playlistGlobalID = v5;

  return v4;
}

@end