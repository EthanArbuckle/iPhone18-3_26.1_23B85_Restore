@interface PoliciesRoamingMO
- (BOOL)setBSSto:(id)sto orBssid:(id)bssid onContainer:(id)container withError:(id *)error;
- (BOOL)setRoamto:(id)roamto withError:(id *)error;
@end

@implementation PoliciesRoamingMO

- (BOOL)setBSSto:(id)sto orBssid:(id)bssid onContainer:(id)container withError:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  stoCopy = sto;
  bssidCopy = bssid;
  containerCopy = container;
  v33.receiver = self;
  v33.super_class = PoliciesRoamingMO;
  v34 = 0;
  v13 = [(PoliciesMO *)&v33 setRelationOn:@"bss" to:stoCopy withError:&v34];
  v14 = v34;
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    entity = [(PoliciesRoamingMO *)self entity];
    [entity name];
    errorCopy = error;
    v17 = bssidCopy;
    v18 = v13;
    v20 = v19 = containerCopy;
    *buf = 136447234;
    v36 = "[PoliciesRoamingMO setBSSto:orBssid:onContainer:withError:]";
    v37 = 1024;
    v38 = 26;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = stoCopy;
    v43 = 2112;
    v44 = v14;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to set %@.bss to %@: %@", buf, 0x30u);

    containerCopy = v19;
    v13 = v18;
    bssidCopy = v17;
    error = errorCopy;
  }

  if ([v14 code] != 9036)
  {
LABEL_8:
    v21 = stoCopy;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v32 = v14;
  v21 = [containerCopy bssForBssid:bssidCopy prefetchProperties:0 withError:&v32];
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
    v40 = bssidCopy;
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
    if (!error)
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
    v40 = bssidCopy;
    v41 = 2112;
    v42 = v22;
    v24 = "%{public}s::%d:After the previous Exception we re-fetched the BSSMo for %@ and still run into %@";
LABEL_13:
    _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_FAULT, v24, buf, 0x26u);
  }

LABEL_14:

  v14 = v22;
  if (error)
  {
LABEL_15:
    v26 = v14;
    *error = v14;
  }

LABEL_16:

  v27 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)setRoamto:(id)roamto withError:(id *)error
{
  v5.receiver = self;
  v5.super_class = PoliciesRoamingMO;
  return [(PoliciesMO *)&v5 setRelationOn:@"roam" to:roamto withError:error];
}

@end