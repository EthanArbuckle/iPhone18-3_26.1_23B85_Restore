@interface WFErrorContext
- (NSString)description;
- (WFErrorContext)initWithAssociationError:(id)a3 network:(id)a4 diagnosticsResult:(id)a5;
- (WFNetworkView)provider;
- (id)_userInfoForAssociationError:(id)a3 networkName:(id)a4;
- (void)cancel;
@end

@implementation WFErrorContext

- (WFErrorContext)initWithAssociationError:(id)a3 network:(id)a4 diagnosticsResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    objc_storeStrong(&self->_network, a4);
    objc_storeStrong(&self->_result, a5);
    v11 = MEMORY[0x277CCA9B8];
    v12 = [v9 ssid];
    v13 = [(WFErrorContext *)self _userInfoForAssociationError:v8 networkName:v12];
    v14 = [v11 errorWithDomain:@"com.apple.wifikit.error" code:-1 userInfo:v13];
    error = self->_error;
    self->_error = v14;

    self->_needsDismissal = 1;
  }

  else
  {
    [WFErrorContext initWithAssociationError:? network:? diagnosticsResult:?];
    self = 0;
  }

  return self;
}

- (id)_userInfoForAssociationError:(id)a3 networkName:(id)a4
{
  v138 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 code];
  if (v8 > 16)
  {
    if (v8 > 19)
    {
      if (v8 == 20)
      {
        v61 = *MEMORY[0x277CCA7E8];
        v125[0] = v6;
        v62 = *MEMORY[0x277CCA450];
        v124[0] = v61;
        v124[1] = v62;
        v63 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"kWFLocAccessPointFullAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v111 = [v63 stringWithFormat:v13, v7];
        v125[1] = v111;
        v124[2] = *MEMORY[0x277CCA498];
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"kWFLocAccessPointFullAlertBody" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v125[2] = v19;
        v124[3] = *MEMORY[0x277CCA480];
        v64 = MEMORY[0x277CBEA60];
        [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v22 = v7;
        v39 = [v23 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v40 = [v64 arrayWithObjects:{v39, 0}];
        v125[3] = v40;
        v41 = MEMORY[0x277CBEAC0];
        v42 = v125;
        v43 = v124;
      }

      else
      {
        if (v8 != 21)
        {
          goto LABEL_25;
        }

        v35 = *MEMORY[0x277CCA7E8];
        v123[0] = v6;
        v36 = *MEMORY[0x277CCA450];
        v122[0] = v35;
        v122[1] = v36;
        v37 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"kWFLocAssociationFailureAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v111 = [v37 stringWithFormat:v13, v7];
        v123[1] = v111;
        v122[2] = *MEMORY[0x277CCA498];
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v18 localizedStringForKey:@"kWFLocAccessPointWeakAlertBody" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v123[2] = v19;
        v122[3] = *MEMORY[0x277CCA480];
        v38 = MEMORY[0x277CBEA60];
        [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v22 = v7;
        v39 = [v23 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v40 = [v38 arrayWithObjects:{v39, 0}];
        v123[3] = v40;
        v41 = MEMORY[0x277CBEAC0];
        v42 = v123;
        v43 = v122;
      }

      v57 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:4];

      v21 = v111;
      goto LABEL_36;
    }

    if (v8 == 17)
    {
      v49 = *MEMORY[0x277CCA7E8];
      v129[0] = v6;
      v50 = *MEMORY[0x277CCA450];
      v128[0] = v49;
      v128[1] = v50;
      v51 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocOtherNetworkFailedSecurityAlertFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v52 = [v51 stringWithFormat:v13, v7];
      v53 = *MEMORY[0x277CCA498];
      v129[1] = v52;
      v129[2] = &stru_2882E4AD8;
      v54 = *MEMORY[0x277CCA480];
      v128[2] = v53;
      v128[3] = v54;
      v55 = MEMORY[0x277CBEA60];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v56 = v55;
      v21 = v52;
      [v56 arrayWithObjects:{v19, 0}];
      v23 = v22 = v7;
      v129[3] = v23;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v129;
      v26 = v128;
    }

    else
    {
      if (v8 != 19)
      {
        goto LABEL_25;
      }

      v9 = *MEMORY[0x277CCA7E8];
      v131[0] = v6;
      v10 = *MEMORY[0x277CCA450];
      v130[0] = v9;
      v130[1] = v10;
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocHotspotPeerRejectedAlertMessage" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v14 = [v11 stringWithFormat:v13, v7];
      v15 = *MEMORY[0x277CCA498];
      v131[1] = v14;
      v131[2] = &stru_2882E4AD8;
      v16 = *MEMORY[0x277CCA480];
      v130[2] = v15;
      v130[3] = v16;
      v17 = MEMORY[0x277CBEA60];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v20 = v17;
      v21 = v14;
      [v20 arrayWithObjects:{v19, 0}];
      v23 = v22 = v7;
      v131[3] = v23;
      v24 = MEMORY[0x277CBEAC0];
      v25 = v131;
      v26 = v130;
    }

    goto LABEL_18;
  }

  if (v8 <= 4)
  {
    if (v8 == 1)
    {
      v44 = *MEMORY[0x277CCA7E8];
      v135 = v6;
      v45 = *MEMORY[0x277CCA450];
      v134[0] = v44;
      v134[1] = v45;
      v46 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"kWFLocAssociationPasswordFailureAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v136 = [v46 stringWithFormat:v13, v7];
      v134[2] = *MEMORY[0x277CCA480];
      v47 = MEMORY[0x277CBEA60];
      v21 = v136;
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [v47 arrayWithObjects:{v19, 0}];
      v23 = v22 = v7;
      v137 = v23;
      v24 = MEMORY[0x277CBEAC0];
      v25 = &v135;
      v26 = v134;
      v48 = 3;
LABEL_19:
      v57 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v48];
      goto LABEL_36;
    }

    if (v8 != 4)
    {
LABEL_25:
      v65 = [v6 userInfo];
      v66 = [v65 objectForKey:@"kWFAssociationPrivateMacFailureThresholdMetKey"];
      v67 = [v66 BOOLValue];

      v114 = v6;
      v110 = v7;
      if (v67)
      {
        v12 = v65;
        v68 = [MEMORY[0x277D7B9C0] issueWithType:0x8000];
        v69 = *MEMORY[0x277CCA7E8];
        v121[0] = v6;
        v70 = *MEMORY[0x277CCA450];
        v120[0] = v69;
        v120[1] = v70;
        v71 = MEMORY[0x277CCACA8];
        v113 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v113 localizedStringForKey:@"kWFLocAssociationFailureAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v19 = [v71 stringWithFormat:v18, v7];
        v121[1] = v19;
        v120[2] = *MEMORY[0x277CCA498];
        v108 = v68;
        v23 = [v68 issueRecommendation];
        v121[2] = v23;
        v120[3] = *MEMORY[0x277CCA480];
        v72 = MEMORY[0x277CBEA60];
        v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v74 = [v73 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
        v75 = [v72 arrayWithObjects:{v74, 0}];
        v121[3] = v75;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:4];

LABEL_35:
        v21 = v113;
        v6 = v114;
        v13 = v108;
        v22 = v110;
        goto LABEL_36;
      }

      v84 = [(WFErrorContext *)self result];
      if (v84)
      {
        v85 = v84;
        v86 = [(WFErrorContext *)self result];
        v87 = [v86 title];
        if (v87)
        {
          v88 = v87;
          v89 = [(WFErrorContext *)self result];
          v90 = [v89 suggestion];

          if (v90)
          {
            v12 = v65;
            v91 = *MEMORY[0x277CCA7E8];
            v119[0] = v6;
            v92 = *MEMORY[0x277CCA450];
            v118[0] = v91;
            v118[1] = v92;
            v93 = MEMORY[0x277CCACA8];
            v108 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v113 = [v108 localizedStringForKey:@"kWFLocAssociationFailureAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
            v18 = [v93 stringWithFormat:v7];
            v119[1] = v18;
            v118[2] = *MEMORY[0x277CCA498];
            v94 = MEMORY[0x277CCACA8];
            v19 = [(WFErrorContext *)self result];
            v23 = [v19 title];
            v73 = [(WFErrorContext *)self result];
            v95 = [v73 suggestion];
            v107 = [v94 stringWithFormat:@"%@\n%@", v23, v95];
            v119[2] = v107;
            v118[3] = *MEMORY[0x277CCA480];
            v96 = MEMORY[0x277CBEA60];
            v97 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v98 = [v97 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
            v99 = [v96 arrayWithObjects:{v98, 0}];
            v119[3] = v99;
            v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:4];

            goto LABEL_35;
          }
        }

        else
        {
        }
      }

      v12 = v65;
      v100 = *MEMORY[0x277CCA7E8];
      v117[0] = v6;
      v101 = *MEMORY[0x277CCA450];
      v116[0] = v100;
      v116[1] = v101;
      v102 = MEMORY[0x277CCACA8];
      v108 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v113 = [v108 localizedStringForKey:@"kWFLocAssociationFailureAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v18 = [v102 stringWithFormat:v7];
      v117[1] = v18;
      v116[2] = *MEMORY[0x277CCA480];
      v103 = MEMORY[0x277CBEA60];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v19 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v73 = [v103 arrayWithObjects:{v23, 0}];
      v117[2] = v73;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];
      goto LABEL_35;
    }

    goto LABEL_12;
  }

  if (v8 != 5)
  {
    if (v8 != 16)
    {
      goto LABEL_25;
    }

LABEL_12:
    v27 = *MEMORY[0x277CCA7E8];
    v127[0] = v6;
    v28 = *MEMORY[0x277CCA450];
    v126[0] = v27;
    v126[1] = v28;
    v29 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"kWFLocOtherNetworkFailedFindAlertFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    [v29 stringWithFormat:v13, v7];
    v30 = v22 = v7;
    v31 = *MEMORY[0x277CCA498];
    v127[1] = v30;
    v127[2] = &stru_2882E4AD8;
    v32 = *MEMORY[0x277CCA480];
    v126[2] = v31;
    v126[3] = v32;
    v33 = MEMORY[0x277CBEA60];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
    v34 = v33;
    v21 = v30;
    v23 = [v34 arrayWithObjects:{v19, 0}];
    v127[3] = v23;
    v24 = MEMORY[0x277CBEAC0];
    v25 = v127;
    v26 = v126;
LABEL_18:
    v48 = 4;
    goto LABEL_19;
  }

  v58 = [v6 userInfo];
  v59 = *MEMORY[0x277CCA7E8];
  v60 = [v58 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  v109 = v7;
  v112 = v60;
  if (MGGetBoolAnswer() && v60)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ \n [error: %ld]", v7, objc_msgSend(v60, "code")];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7, v106];
  }
  v13 = ;
  v133[0] = v6;
  v76 = *MEMORY[0x277CCA450];
  v132[0] = v59;
  v132[1] = v76;
  v115 = v6;
  v77 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v77 localizedStringForKey:@"kWFLocHotspotFailureAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v133[1] = v18;
  v132[2] = *MEMORY[0x277CCA498];
  v78 = MEMORY[0x277CCACA8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v19 localizedStringForKey:@"kWFLocHotspotFailureAlertMessage" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v79 = [v78 stringWithFormat:v23, v13];
  v133[2] = v79;
  v132[3] = *MEMORY[0x277CCA480];
  v80 = MEMORY[0x277CBEA60];
  v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v82 = [v81 localizedStringForKey:@"kWFLocGenericFailureAlertButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  v83 = [v80 arrayWithObjects:{v82, 0}];
  v133[3] = v83;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:4];

  v21 = v77;
  v6 = v115;

  v22 = v109;
  v12 = v112;
LABEL_36:

  v104 = *MEMORY[0x277D85DE8];

  return v57;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFErrorContext *)self network];
  v7 = [v6 ssid];
  v8 = [(WFErrorContext *)self error];
  v9 = [v3 stringWithFormat:@"<%@: %p network: %@ error %@>", v5, self, v7, v8];

  return v9;
}

- (void)cancel
{
  self->_needsDismissal = 0;
  v2 = [(WFErrorContext *)self completionHandler];
  v2[2]();
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)initWithAssociationError:(void *)a1 network:diagnosticsResult:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v5 = 136315138;
    v6 = "[WFErrorContext initWithAssociationError:network:diagnosticsResult:]";
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: nil network", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end