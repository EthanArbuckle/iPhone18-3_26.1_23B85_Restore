@interface SMContact
- (SMContact)initWithIdentifier:(id)a3 sessionID:(id)a4 allowReadToken:(id)a5 safetyCacheKey:(id)a6 syncDate:(id)a7 sharingInvitationData:(id)a8 shareURL:(id)a9 participantID:(id)a10;
@end

@implementation SMContact

- (SMContact)initWithIdentifier:(id)a3 sessionID:(id)a4 allowReadToken:(id)a5 safetyCacheKey:(id)a6 syncDate:(id)a7 sharingInvitationData:(id)a8 shareURL:(id)a9 participantID:(id)a10
{
  v17 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v23 = a10;
  if (v17)
  {
    v30.receiver = self;
    v30.super_class = SMContact;
    v18 = [(SMContact *)&v30 init];
    p_isa = &v18->super.isa;
    if (v18)
    {
      objc_storeStrong(&v18->_identifier, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
      objc_storeStrong(p_isa + 4, a6);
      objc_storeStrong(p_isa + 5, a7);
      objc_storeStrong(p_isa + 6, a8);
      objc_storeStrong(p_isa + 7, a9);
      objc_storeStrong(p_isa + 8, a10);
    }

    self = p_isa;
    v20 = self;
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

@end