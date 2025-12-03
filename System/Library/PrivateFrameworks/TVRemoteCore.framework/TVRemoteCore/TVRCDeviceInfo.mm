@interface TVRCDeviceInfo
- (BOOL)containsID:(id)d;
- (id)description;
- (void)_populateValidIdentifiers:(id)identifiers;
@end

@implementation TVRCDeviceInfo

- (BOOL)containsID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  v6 = self->_mediaRemoteID && ([dCopy isEqualToString:?] & 1) != 0 || self->_airplayID && objc_msgSend(v5, "isEqualToString:");

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

- (void)_populateValidIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [identifiersCopy objectForKey:@"MediaRemoteID"];
  mediaRemoteID = self->_mediaRemoteID;
  self->_mediaRemoteID = v5;

  v7 = [identifiersCopy objectForKey:@"AirplayID"];

  airplayID = self->_airplayID;
  self->_airplayID = v7;
}

@end