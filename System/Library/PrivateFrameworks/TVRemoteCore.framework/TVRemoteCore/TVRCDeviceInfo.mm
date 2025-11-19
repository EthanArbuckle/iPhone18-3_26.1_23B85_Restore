@interface TVRCDeviceInfo
- (BOOL)containsID:(id)a3;
- (id)description;
- (void)_populateValidIdentifiers:(id)a3;
@end

@implementation TVRCDeviceInfo

- (BOOL)containsID:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_mediaRemoteID && ([v4 isEqualToString:?] & 1) != 0 || self->_airplayID && objc_msgSend(v5, "isEqualToString:");

  return v6;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_mediaRemoteID)
  {
    [v3 appendFormat:@"; mediaRemoteID=%@", self->_mediaRemoteID];
  }

  if (self->_airplayID)
  {
    [v4 appendFormat:@"; airplayID=%@", self->_airplayID];
  }

  if (self->_idsID)
  {
    [v4 appendFormat:@"; idsID=%@", self->_idsID];
  }

  [v4 appendString:@">"];
  v5 = [v4 copy];

  return v5;
}

- (void)_populateValidIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"MediaRemoteID"];
  mediaRemoteID = self->_mediaRemoteID;
  self->_mediaRemoteID = v5;

  v7 = [v4 objectForKey:@"AirplayID"];

  airplayID = self->_airplayID;
  self->_airplayID = v7;
}

@end