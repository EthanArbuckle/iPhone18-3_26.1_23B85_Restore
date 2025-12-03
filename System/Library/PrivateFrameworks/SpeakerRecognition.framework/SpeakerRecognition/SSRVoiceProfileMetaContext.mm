@interface SSRVoiceProfileMetaContext
- (SSRVoiceProfileMetaContext)initWithPersonaId:(id)id languageCode:(id)code productCategory:(id)category version:(id)version;
- (SSRVoiceProfileMetaContext)initWithSharedSiriId:(id)id languageCode:(id)code productCategory:(id)category version:(id)version;
- (SSRVoiceProfileMetaContext)initWithVoiceProfile:(id)profile;
- (id)description;
@end

@implementation SSRVoiceProfileMetaContext

- (id)description
{
  v2 = *&self->_sharedSiriId;
  userName = self->_userName;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"[siriSharedUserId: %@, personaId: %@, language: %@, product: %@, version: %@, homeId: %@, name: %@, pitch:%@ Hz]", self->_sharedSiriId, self->_personaId, self->_languageCode, self->_productCategory, self->_version, self->_homeId, userName, self->_pitch];
}

- (SSRVoiceProfileMetaContext)initWithPersonaId:(id)id languageCode:(id)code productCategory:(id)category version:(id)version
{
  idCopy = id;
  codeCopy = code;
  categoryCopy = category;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileMetaContext;
  v15 = [(SSRVoiceProfileMetaContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_personaId, id);
    objc_storeStrong(&v16->_languageCode, code);
    objc_storeStrong(&v16->_productCategory, category);
    objc_storeStrong(&v16->_version, version);
  }

  return v16;
}

- (SSRVoiceProfileMetaContext)initWithSharedSiriId:(id)id languageCode:(id)code productCategory:(id)category version:(id)version
{
  idCopy = id;
  codeCopy = code;
  categoryCopy = category;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileMetaContext;
  v15 = [(SSRVoiceProfileMetaContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sharedSiriId, id);
    objc_storeStrong(&v16->_languageCode, code);
    objc_storeStrong(&v16->_productCategory, category);
    objc_storeStrong(&v16->_version, version);
  }

  return v16;
}

- (SSRVoiceProfileMetaContext)initWithVoiceProfile:(id)profile
{
  v29 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (profileCopy)
  {
    v26.receiver = self;
    v26.super_class = SSRVoiceProfileMetaContext;
    v5 = [(SSRVoiceProfileMetaContext *)&v26 init];
    if (v5)
    {
      appDomain = [profileCopy appDomain];
      appDomain = v5->_appDomain;
      v5->_appDomain = appDomain;

      profileID = [profileCopy profileID];
      profileId = v5->_profileId;
      v5->_profileId = profileID;

      siriProfileId = [profileCopy siriProfileId];
      sharedSiriId = v5->_sharedSiriId;
      v5->_sharedSiriId = siriProfileId;

      personaID = [profileCopy personaID];
      personaId = v5->_personaId;
      v5->_personaId = personaID;

      locale = [profileCopy locale];
      languageCode = v5->_languageCode;
      v5->_languageCode = locale;

      userName = [profileCopy userName];
      userName = v5->_userName;
      v5->_userName = userName;

      dateAdded = [profileCopy dateAdded];
      dateAdded = v5->_dateAdded;
      v5->_dateAdded = dateAdded;

      profilePitch = [profileCopy profilePitch];
      pitch = v5->_pitch;
      v5->_pitch = profilePitch;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v23 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[SSRVoiceProfileMetaContext initWithVoiceProfile:]";
      _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s ERR: voiceProfile is nil - Bailing out", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end