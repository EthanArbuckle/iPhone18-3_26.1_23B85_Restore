@interface SMContact
- (SMContact)initWithIdentifier:(id)identifier sessionID:(id)d allowReadToken:(id)token safetyCacheKey:(id)key syncDate:(id)date sharingInvitationData:(id)data shareURL:(id)l participantID:(id)self0;
@end

@implementation SMContact

- (SMContact)initWithIdentifier:(id)identifier sessionID:(id)d allowReadToken:(id)token safetyCacheKey:(id)key syncDate:(id)date sharingInvitationData:(id)data shareURL:(id)l participantID:(id)self0
{
  identifierCopy = identifier;
  dCopy = d;
  tokenCopy = token;
  keyCopy = key;
  dateCopy = date;
  dataCopy = data;
  lCopy = l;
  iDCopy = iD;
  if (identifierCopy)
  {
    v30.receiver = self;
    v30.super_class = SMContact;
    v18 = [(SMContact *)&v30 init];
    p_isa = &v18->super.isa;
    if (v18)
    {
      objc_storeStrong(&v18->_identifier, identifier);
      objc_storeStrong(p_isa + 2, d);
      objc_storeStrong(p_isa + 3, token);
      objc_storeStrong(p_isa + 4, key);
      objc_storeStrong(p_isa + 5, date);
      objc_storeStrong(p_isa + 6, data);
      objc_storeStrong(p_isa + 7, l);
      objc_storeStrong(p_isa + 8, iD);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end