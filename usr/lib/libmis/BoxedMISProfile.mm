@interface BoxedMISProfile
+ (id)fromSQLStatement:(sqlite3_stmt *)a3 withMap:(id)a4;
- (BoxedMISProfile)initWithUUID:(id)a3 withTeamID:(id)a4 withName:(id)a5 withExpiry:(id)a6 isUniversal:(unsigned __int8)a7 isAppleInternal:(unsigned __int8)a8 isLocal:(unsigned __int8)a9 isBeta:(unsigned __int8)a10;
@end

@implementation BoxedMISProfile

- (BoxedMISProfile)initWithUUID:(id)a3 withTeamID:(id)a4 withName:(id)a5 withExpiry:(id)a6 isUniversal:(unsigned __int8)a7 isAppleInternal:(unsigned __int8)a8 isLocal:(unsigned __int8)a9 isBeta:(unsigned __int8)a10
{
  v17 = a3;
  v18 = a4;
  v24 = a5;
  v19 = a6;
  v25.receiver = self;
  v25.super_class = BoxedMISProfile;
  v20 = [(BoxedMISProfile *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->UUID, a3);
    objc_storeStrong(&v21->TeamID, a4);
    objc_storeStrong(&v21->Name, a5);
    objc_storeStrong(&v21->Expires, a6);
    v21->ProvisionsAllDevices = a7;
    v21->AppleInternal = a8;
    v21->Local = a9;
    v21->Beta = a10;
    v22 = v21;
  }

  return v21;
}

+ (id)fromSQLStatement:(sqlite3_stmt *)a3 withMap:(id)a4
{
  v5 = a4;
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"profile_uuid");
  v10 = objc_msgSend_intValue(v7, v8, v9);
  v11 = sub_1B9DD19D0(a3, v10);

  v13 = objc_msgSend_objectForKeyedSubscript_(v5, v12, @"profile_team_id");
  v16 = objc_msgSend_intValue(v13, v14, v15);
  v17 = sub_1B9DD19D0(a3, v16);

  v19 = objc_msgSend_objectForKeyedSubscript_(v5, v18, @"profile_name");
  v22 = objc_msgSend_intValue(v19, v20, v21);
  v23 = sub_1B9DD19D0(a3, v22);

  v25 = objc_msgSend_objectForKeyedSubscript_(v5, v24, @"profile_expires");
  v28 = objc_msgSend_intValue(v25, v26, v27);
  v29 = sqlite3_column_int64(a3, v28);
  v32 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v30, v31, v29);

  v34 = objc_msgSend_objectForKeyedSubscript_(v5, v33, @"profile_is_for_all_devices");
  v37 = objc_msgSend_intValue(v34, v35, v36);
  v38 = sqlite3_column_int(a3, v37) != 0;

  v40 = objc_msgSend_objectForKeyedSubscript_(v5, v39, @"profile_is_apple_internal");
  v43 = objc_msgSend_intValue(v40, v41, v42);
  v44 = sqlite3_column_int(a3, v43) != 0;

  v46 = objc_msgSend_objectForKeyedSubscript_(v5, v45, @"profile_is_local");
  v49 = objc_msgSend_intValue(v46, v47, v48);
  v50 = sqlite3_column_int(a3, v49) != 0;

  v52 = objc_msgSend_objectForKeyedSubscript_(v5, v51, @"profile_is_beta");

  v55 = objc_msgSend_intValue(v52, v53, v54);
  LOBYTE(a3) = sqlite3_column_int(a3, v55) != 0;

  v56 = [BoxedMISProfile alloc];
  HIBYTE(v60) = a3;
  LOBYTE(v60) = v50;
  isBeta = objc_msgSend_initWithUUID_withTeamID_withName_withExpiry_isUniversal_isAppleInternal_isLocal_isBeta_(v56, v57, v11, v17, v23, v32, v38, v44, v60);

  return isBeta;
}

@end