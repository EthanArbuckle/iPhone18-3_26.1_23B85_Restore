@interface CSDMessagingAVConferenceInviteData
- (BOOL)isEqual:(id)equal;
- (CSDMessagingAVConferenceInviteData)initWithFaceTimeInviteDictionary:(id)dictionary;
- (CSDMessagingAVConferenceInviteData)initWithRelayInviteDictionary:(id)dictionary;
- (NSDictionary)faceTimeInviteDictionary;
- (NSDictionary)relayInviteDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingAVConferenceInviteData

- (CSDMessagingAVConferenceInviteData)initWithRelayInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(CSDMessagingAVConferenceInviteData *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:AVConferenceInviteDataMediaBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setMediaBlob:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:AVConferenceInviteDataCallInfoBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setCallInfoBlob:v7];
  }

  return v5;
}

- (CSDMessagingAVConferenceInviteData)initWithFaceTimeInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(CSDMessagingAVConferenceInviteData *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:AVConferenceInviteDataSKEBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setSKEBlob:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:AVConferenceInviteDataMediaBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setMediaBlob:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:AVConferenceInviteDataCallInfoBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setCallInfoBlob:v8];
  }

  return v5;
}

- (NSDictionary)relayInviteDictionary
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:2];
  mediaBlob = [(CSDMessagingAVConferenceInviteData *)self mediaBlob];
  [v3 setObject:mediaBlob forKeyedSubscript:AVConferenceInviteDataMediaBlob];

  callInfoBlob = [(CSDMessagingAVConferenceInviteData *)self callInfoBlob];
  [v3 setObject:callInfoBlob forKeyedSubscript:AVConferenceInviteDataCallInfoBlob];

  return v3;
}

- (NSDictionary)faceTimeInviteDictionary
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:2];
  sKEBlob = [(CSDMessagingAVConferenceInviteData *)self sKEBlob];
  [v3 setObject:sKEBlob forKeyedSubscript:AVConferenceInviteDataSKEBlob];

  mediaBlob = [(CSDMessagingAVConferenceInviteData *)self mediaBlob];
  [v3 setObject:mediaBlob forKeyedSubscript:AVConferenceInviteDataMediaBlob];

  callInfoBlob = [(CSDMessagingAVConferenceInviteData *)self callInfoBlob];
  [v3 setObject:callInfoBlob forKeyedSubscript:AVConferenceInviteDataCallInfoBlob];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingAVConferenceInviteData;
  v3 = [(CSDMessagingAVConferenceInviteData *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingAVConferenceInviteData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  sKEBlob = self->_sKEBlob;
  if (sKEBlob)
  {
    [v3 setObject:sKEBlob forKey:@"SKEBlob"];
  }

  mediaBlob = self->_mediaBlob;
  if (mediaBlob)
  {
    [v4 setObject:mediaBlob forKey:@"mediaBlob"];
  }

  callInfoBlob = self->_callInfoBlob;
  if (callInfoBlob)
  {
    [v4 setObject:callInfoBlob forKey:@"callInfoBlob"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sKEBlob)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_mediaBlob)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_callInfoBlob)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sKEBlob)
  {
    [toCopy setSKEBlob:?];
    toCopy = v5;
  }

  if (self->_mediaBlob)
  {
    [v5 setMediaBlob:?];
    toCopy = v5;
  }

  if (self->_callInfoBlob)
  {
    [v5 setCallInfoBlob:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_sKEBlob copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_mediaBlob copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_callInfoBlob copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sKEBlob = self->_sKEBlob, !(sKEBlob | equalCopy[3])) || -[NSData isEqual:](sKEBlob, "isEqual:")) && ((mediaBlob = self->_mediaBlob, !(mediaBlob | equalCopy[2])) || -[NSData isEqual:](mediaBlob, "isEqual:")))
  {
    callInfoBlob = self->_callInfoBlob;
    if (callInfoBlob | equalCopy[1])
    {
      v8 = [(NSData *)callInfoBlob isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_sKEBlob hash];
  v4 = [(NSData *)self->_mediaBlob hash]^ v3;
  return v4 ^ [(NSData *)self->_callInfoBlob hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(CSDMessagingAVConferenceInviteData *)self setSKEBlob:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(CSDMessagingAVConferenceInviteData *)self setMediaBlob:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(CSDMessagingAVConferenceInviteData *)self setCallInfoBlob:?];
    fromCopy = v5;
  }
}

@end