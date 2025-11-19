@interface SSRVoiceProfileMetaContext
- (SSRVoiceProfileMetaContext)initWithPersonaId:(id)a3 languageCode:(id)a4 productCategory:(id)a5 version:(id)a6;
- (SSRVoiceProfileMetaContext)initWithSharedSiriId:(id)a3 languageCode:(id)a4 productCategory:(id)a5 version:(id)a6;
- (SSRVoiceProfileMetaContext)initWithVoiceProfile:(id)a3;
- (id)description;
@end

@implementation SSRVoiceProfileMetaContext

- (id)description
{
  v2 = *&self->_sharedSiriId;
  userName = self->_userName;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"[siriSharedUserId: %@, personaId: %@, language: %@, product: %@, version: %@, homeId: %@, name: %@, pitch:%@ Hz]", self->_sharedSiriId, self->_personaId, self->_languageCode, self->_productCategory, self->_version, self->_homeId, userName, self->_pitch];
}

- (SSRVoiceProfileMetaContext)initWithPersonaId:(id)a3 languageCode:(id)a4 productCategory:(id)a5 version:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileMetaContext;
  v15 = [(SSRVoiceProfileMetaContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_personaId, a3);
    objc_storeStrong(&v16->_languageCode, a4);
    objc_storeStrong(&v16->_productCategory, a5);
    objc_storeStrong(&v16->_version, a6);
  }

  return v16;
}

- (SSRVoiceProfileMetaContext)initWithSharedSiriId:(id)a3 languageCode:(id)a4 productCategory:(id)a5 version:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileMetaContext;
  v15 = [(SSRVoiceProfileMetaContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sharedSiriId, a3);
    objc_storeStrong(&v16->_languageCode, a4);
    objc_storeStrong(&v16->_productCategory, a5);
    objc_storeStrong(&v16->_version, a6);
  }

  return v16;
}

- (SSRVoiceProfileMetaContext)initWithVoiceProfile:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v26.receiver = self;
    v26.super_class = SSRVoiceProfileMetaContext;
    v5 = [(SSRVoiceProfileMetaContext *)&v26 init];
    if (v5)
    {
      v6 = [v4 appDomain];
      appDomain = v5->_appDomain;
      v5->_appDomain = v6;

      v8 = [v4 profileID];
      profileId = v5->_profileId;
      v5->_profileId = v8;

      v10 = [v4 siriProfileId];
      sharedSiriId = v5->_sharedSiriId;
      v5->_sharedSiriId = v10;

      v12 = [v4 personaID];
      personaId = v5->_personaId;
      v5->_personaId = v12;

      v14 = [v4 locale];
      languageCode = v5->_languageCode;
      v5->_languageCode = v14;

      v16 = [v4 userName];
      userName = v5->_userName;
      v5->_userName = v16;

      v18 = [v4 dateAdded];
      dateAdded = v5->_dateAdded;
      v5->_dateAdded = v18;

      v20 = [v4 profilePitch];
      pitch = v5->_pitch;
      v5->_pitch = v20;
    }

    self = v5;
    v22 = self;
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

    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

@end