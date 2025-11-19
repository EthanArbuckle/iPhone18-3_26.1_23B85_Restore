@interface CSDMessagingAVConferenceInviteData
- (BOOL)isEqual:(id)a3;
- (CSDMessagingAVConferenceInviteData)initWithFaceTimeInviteDictionary:(id)a3;
- (CSDMessagingAVConferenceInviteData)initWithRelayInviteDictionary:(id)a3;
- (NSDictionary)faceTimeInviteDictionary;
- (NSDictionary)relayInviteDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingAVConferenceInviteData

- (CSDMessagingAVConferenceInviteData)initWithRelayInviteDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingAVConferenceInviteData *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:AVConferenceInviteDataMediaBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setMediaBlob:v6];

    v7 = [v4 objectForKeyedSubscript:AVConferenceInviteDataCallInfoBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setCallInfoBlob:v7];
  }

  return v5;
}

- (CSDMessagingAVConferenceInviteData)initWithFaceTimeInviteDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingAVConferenceInviteData *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:AVConferenceInviteDataSKEBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setSKEBlob:v6];

    v7 = [v4 objectForKeyedSubscript:AVConferenceInviteDataMediaBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setMediaBlob:v7];

    v8 = [v4 objectForKeyedSubscript:AVConferenceInviteDataCallInfoBlob];
    [(CSDMessagingAVConferenceInviteData *)v5 setCallInfoBlob:v8];
  }

  return v5;
}

- (NSDictionary)relayInviteDictionary
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v4 = [(CSDMessagingAVConferenceInviteData *)self mediaBlob];
  [v3 setObject:v4 forKeyedSubscript:AVConferenceInviteDataMediaBlob];

  v5 = [(CSDMessagingAVConferenceInviteData *)self callInfoBlob];
  [v3 setObject:v5 forKeyedSubscript:AVConferenceInviteDataCallInfoBlob];

  return v3;
}

- (NSDictionary)faceTimeInviteDictionary
{
  v3 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v4 = [(CSDMessagingAVConferenceInviteData *)self sKEBlob];
  [v3 setObject:v4 forKeyedSubscript:AVConferenceInviteDataSKEBlob];

  v5 = [(CSDMessagingAVConferenceInviteData *)self mediaBlob];
  [v3 setObject:v5 forKeyedSubscript:AVConferenceInviteDataMediaBlob];

  v6 = [(CSDMessagingAVConferenceInviteData *)self callInfoBlob];
  [v3 setObject:v6 forKeyedSubscript:AVConferenceInviteDataCallInfoBlob];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingAVConferenceInviteData;
  v3 = [(CSDMessagingAVConferenceInviteData *)&v7 description];
  v4 = [(CSDMessagingAVConferenceInviteData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sKEBlob)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_mediaBlob)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_callInfoBlob)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sKEBlob)
  {
    [v4 setSKEBlob:?];
    v4 = v5;
  }

  if (self->_mediaBlob)
  {
    [v5 setMediaBlob:?];
    v4 = v5;
  }

  if (self->_callInfoBlob)
  {
    [v5 setCallInfoBlob:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_sKEBlob copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_mediaBlob copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_callInfoBlob copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sKEBlob = self->_sKEBlob, !(sKEBlob | v4[3])) || -[NSData isEqual:](sKEBlob, "isEqual:")) && ((mediaBlob = self->_mediaBlob, !(mediaBlob | v4[2])) || -[NSData isEqual:](mediaBlob, "isEqual:")))
  {
    callInfoBlob = self->_callInfoBlob;
    if (callInfoBlob | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(CSDMessagingAVConferenceInviteData *)self setSKEBlob:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(CSDMessagingAVConferenceInviteData *)self setMediaBlob:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(CSDMessagingAVConferenceInviteData *)self setCallInfoBlob:?];
    v4 = v5;
  }
}

@end