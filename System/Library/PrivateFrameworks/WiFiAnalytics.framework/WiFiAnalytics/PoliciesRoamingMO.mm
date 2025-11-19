@interface PoliciesRoamingMO
- (BOOL)setBSSto:(id)a3 orBssid:(id)a4 onContainer:(id)a5 withError:(id *)a6;
- (BOOL)setRoamto:(id)a3 withError:(id *)a4;
@end

@implementation PoliciesRoamingMO

- (BOOL)setBSSto:(id)a3 orBssid:(id)a4 onContainer:(id)a5 withError:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33.receiver = self;
  v33.super_class = PoliciesRoamingMO;
  v34 = 0;
  v13 = [(PoliciesMO *)&v33 setRelationOn:@"bss" to:v10 withError:&v34];
  v14 = v34;
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = [(PoliciesRoamingMO *)self entity];
    [v16 name];
    v29 = a6;
    v17 = v11;
    v18 = v13;
    v20 = v19 = v12;
    *buf = 136447234;
    v36 = "[PoliciesRoamingMO setBSSto:orBssid:onContainer:withError:]";
    v37 = 1024;
    v38 = 26;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to set %@.bss to %@: %@", buf, 0x30u);

    v12 = v19;
    v13 = v18;
    v11 = v17;
    a6 = v29;
  }

  if ([v14 code] != 9036)
  {
LABEL_8:
    v21 = v10;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v32 = v14;
  v21 = [v12 bssForBssid:v11 prefetchProperties:0 withError:&v32];
  v22 = v32;

  if (v22)
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    *buf = 136446978;
    v36 = "[PoliciesRoamingMO setBSSto:orBssid:onContainer:withError:]";
    v37 = 1024;
    v38 = 30;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v22;
    v24 = "%{public}s::%d:After the previous Exception we tried to re-fetch the BSSMo for %@ and run into %@";
    goto LABEL_13;
  }

  v30.receiver = self;
  v30.super_class = PoliciesRoamingMO;
  v31 = 0;
  v13 = [(PoliciesMO *)&v30 setRelationOn:@"bss" to:v21 withError:&v31];
  v25 = v31;
  if (!v25)
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v22 = v25;
  v23 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446978;
    v36 = "[PoliciesRoamingMO setBSSto:orBssid:onContainer:withError:]";
    v37 = 1024;
    v38 = 34;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v22;
    v24 = "%{public}s::%d:After the previous Exception we re-fetched the BSSMo for %@ and still run into %@";
LABEL_13:
    _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0x26u);
  }

LABEL_14:

  v14 = v22;
  if (a6)
  {
LABEL_15:
    v26 = v14;
    *a6 = v14;
  }

LABEL_16:

  v27 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)setRoamto:(id)a3 withError:(id *)a4
{
  v5.receiver = self;
  v5.super_class = PoliciesRoamingMO;
  return [(PoliciesMO *)&v5 setRelationOn:@"roam" to:a3 withError:a4];
}

@end