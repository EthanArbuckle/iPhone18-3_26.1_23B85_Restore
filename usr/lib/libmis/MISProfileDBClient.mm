@interface MISProfileDBClient
- (BOOL)isCDHashBanned:(id)banned;
- (BOOL)isRejectedWithProfileUUID:(id)d withCDHash:(id)hash;
- (id)auxiliarySignatureWithTeamID:(id)d;
- (id)deviceUDID;
- (id)diagnostics;
- (id)teamIDWithProfileUUID:(id)d;
@end

@implementation MISProfileDBClient

- (id)teamIDWithProfileUUID:(id)d
{
  v4 = sub_1B9DD2998();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = MISProfileDBClient.teamID(withProfileUUID:)(v8).value._object;

  if (object)
  {
    v10 = sub_1B9DD2968();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)auxiliarySignatureWithTeamID:(id)d
{
  v4 = sub_1B9DD2998();
  v6 = v5;
  selfCopy = self;
  v8 = MISProfileDBClient.auxiliarySignature(withTeamID:)(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_1B9DD2778();
    sub_1B9D9D520(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (id)deviceUDID
{
  v2 = *(&self->super.isa + OBJC_IVAR___MISProfileDBClient_db);
  selfCopy = self;
  readSetting_ = [v2 readSetting_];
  if (readSetting_)
  {
    v5 = readSetting_;
    sub_1B9DD2998();

    v6 = sub_1B9DD2968();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)isCDHashBanned:(id)banned
{
  bannedCopy = banned;
  selfCopy = self;
  v6 = sub_1B9DD2798();
  v8 = v7;

  LOBYTE(bannedCopy) = MISProfileDBClient.isCDHashBanned(_:)(v6, v8);
  sub_1B9D9D534(v6, v8);

  return bannedCopy & 1;
}

- (BOOL)isRejectedWithProfileUUID:(id)d withCDHash:(id)hash
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  hashCopy = hash;
  selfCopy = self;
  v11 = sub_1B9DD2798();
  v13 = v12;

  LOBYTE(v6) = MISProfileDBClient.isRejected(withProfileUUID:withCDHash:)(v6, v8, v11, v13);
  sub_1B9D9D534(v11, v13);

  return v6 & 1;
}

- (id)diagnostics
{
  selfCopy = self;
  MISProfileDBClient.diagnostics()();

  v3 = sub_1B9DD2948();

  return v3;
}

@end