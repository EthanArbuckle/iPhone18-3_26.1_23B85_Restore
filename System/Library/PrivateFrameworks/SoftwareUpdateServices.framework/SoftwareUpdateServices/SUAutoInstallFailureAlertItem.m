@interface SUAutoInstallFailureAlertItem
- (SUAutoInstallFailureAlertItem)initWithError:(id)a3 buildNumber:(id)a4;
- (id)_okButton;
- (id)_radarButton;
- (id)buttons;
@end

@implementation SUAutoInstallFailureAlertItem

- (SUAutoInstallFailureAlertItem)initWithError:(id)a3 buildNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v71.receiver = self;
  v71.super_class = SUAutoInstallFailureAlertItem;
  v9 = [(SUBaseAlertItem *)&v71 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a3);
    objc_storeStrong(&v10->_buildNumber, a4);
    v11 = v7;
    v69 = v8;
    v12 = v8;
    v65 = MGGetBoolAnswer();
    v13 = MGCopyAnswer();
    if (!v13)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
      v13 = [v14 localizedStringForKey:@"DEVICE" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    }

    v66 = v13;
    v70 = v7;
    v68 = v12;
    if (v12)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
    }

    else
    {
      v16 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
      v15 = [v16 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v19 = [v18 localizedStringForKey:@"AUTO_SU_FAILED_HEADER" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    v67 = v15;
    v20 = [v17 stringWithFormat:v19, v15];
    v21 = v20;

    v22 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
    v23 = [v22 localizedStringForKey:@"AUTO_SU_FAILED_BODY_DEFAULT" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
    v24 = v23;

    v25 = v11;
    if (!v11)
    {
      v27 = v66;
      v39 = v15;
LABEL_31:

      v51 = v20;
      v52 = v23;
      title = v10->_title;
      v10->_title = v51;
      v54 = v51;

      message = v10->_message;
      v10->_message = v52;

      v8 = v69;
      v7 = v70;
      goto LABEL_32;
    }

    v26 = [v11 code];
    v27 = v66;
    switch(v26)
    {
      case 47:
        v43 = MEMORY[0x277CCACA8];
        v30 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
        if (v65)
        {
          v44 = @"AUTO_SU_FAILED_BODY_KEYBAG_COMMIT";
LABEL_28:
          v49 = [v30 localizedStringForKey:v44 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
          v23 = [v43 stringWithFormat:v49];
          v50 = v23;

          goto LABEL_29;
        }

        break;
      case 24:
        v40 = MEMORY[0x277CCACA8];
        v30 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
        v41 = [v30 localizedStringForKey:@"AUTO_SU_FAILED_BODY_UNPLUGGED" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
        v23 = [v40 stringWithFormat:v41, v66];
        v42 = v23;

        goto LABEL_29;
      case 20:
        v28 = [v25 userInfo];

        if (!v28)
        {
          v39 = v15;
          goto LABEL_31;
        }

        v29 = [v25 userInfo];
        v30 = [v29 objectForKey:@"SUInstallationConstraintsUnmet"];

        if (v30)
        {
          v31 = [v30 longValue];
          v32 = v66;
          v33 = MGGetBoolAnswer();
          if (v31)
          {
            if ((v31 & 2) != 0)
            {
              v35 = MEMORY[0x277CCACA8];
              v37 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
              v57 = [v37 localizedStringForKey:@"UNMET_CONSTRAINT_NO_NETWORK" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
              v64 = v32;
LABEL_38:
              v58 = v35;
LABEL_39:
              v23 = [v58 stringWithFormat:v57, v64];
              v39 = v67;
LABEL_40:

              v59 = v23;
              goto LABEL_30;
            }

            if ((v31 & 4) == 0)
            {
              v34 = v33;
              if (v31)
              {
                v60 = MEMORY[0x277CCACA8];
                v37 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
                if (!v34)
                {
                  goto LABEL_47;
                }

                v61 = @"UNMET_CONSTRAINT_LOW_BATTERY";
              }

              else
              {
                if ((v31 & 8) == 0)
                {
                  if ((v31 & 0x10) == 0)
                  {
                    v35 = MEMORY[0x277CCACA8];
                    v36 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
                    v37 = v36;
                    if ((v31 & 0x20) != 0)
                    {
                      v62 = v35;
                      v39 = v67;
                      if (v34)
                      {
                        v63 = @"UNMET_CONSTRAINT_DEVICE_LOCKED";
                      }

                      else
                      {
                        v63 = @"AUTO_SU_FAILED_BODY_DEFAULT";
                      }

                      v57 = [v36 localizedStringForKey:v63 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
                      v23 = [v62 stringWithFormat:v57];
                      goto LABEL_40;
                    }

                    v38 = @"AUTO_SU_FAILED_BODY_DEFAULT";
                    goto LABEL_37;
                  }

                  v60 = MEMORY[0x277CCACA8];
                  v37 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
                  if (v34)
                  {
                    v61 = @"UNMET_CONSTRAINT_KEYBAG_MISSING";
                    goto LABEL_48;
                  }

LABEL_47:
                  v61 = @"AUTO_SU_FAILED_BODY_DEFAULT";
                  goto LABEL_48;
                }

                v60 = MEMORY[0x277CCACA8];
                v37 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
                if (!v34)
                {
                  goto LABEL_47;
                }

                v61 = @"UNMET_CONSTRAINT_ICLOUD_RESTORE";
              }

LABEL_48:
              v57 = [v37 localizedStringForKey:v61 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
              v58 = v60;
              goto LABEL_39;
            }

            v35 = MEMORY[0x277CCACA8];
            v36 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
            v37 = v36;
            v38 = @"UNMET_CONSTRAINT_INSUFFICIENT_SPACE";
          }

          else
          {
            v35 = MEMORY[0x277CCACA8];
            v36 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
            v37 = v36;
            v38 = @"AUTO_SU_FAILED_BODY_DEFAULT";
          }

LABEL_37:
          v57 = [v36 localizedStringForKey:v38 value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
          goto LABEL_38;
        }

LABEL_29:
        v39 = v67;
LABEL_30:

        goto LABEL_31;
      default:
        v43 = MEMORY[0x277CCACA8];
        v45 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
        v30 = v45;
        if (v65)
        {
          v46 = [v45 localizedStringForKey:@"AUTO_SU_FAILED_BODY_ERROR_CODE_AND_STRING" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
          v47 = [v43 stringWithFormat:v46, objc_msgSend(v25, "code"), v25];

          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Internal Only]\n%@", v47];
          v48 = v23;
          v30 = v47;
          goto LABEL_29;
        }

        break;
    }

    v44 = @"AUTO_SU_FAILED_BODY_DEFAULT";
    goto LABEL_28;
  }

LABEL_32:

  return v10;
}

- (id)buttons
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(SUAutoInstallFailureAlertItem *)self _okButton];
  [v3 addObject:v4];

  MGGetBoolAnswer();
  v5 = [v3 copy];

  return v5;
}

- (id)_okButton
{
  v2 = [SUAlertButtonDefinition alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v4 = [v3 localizedStringForKey:@"OK_BUTTON" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v5 = [(SUAlertButtonDefinition *)v2 initWithLabel:v4 presentationStyle:0 isPreferredButton:0 handler:&__block_literal_global_12];

  return v5;
}

- (id)_radarButton
{
  v3 = self->_buildNumber;
  v4 = self->_error;
  v5 = [SUAlertButtonDefinition alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateServices.framework"];
  v7 = [v6 localizedStringForKey:@"FILE_A_RADAR" value:&stru_287B45B60 table:@"SoftwareUpdateServices"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__SUAutoInstallFailureAlertItem__radarButton__block_invoke;
  v12[3] = &unk_279CAA7C0;
  v13 = v4;
  v14 = v3;
  v8 = v3;
  v9 = v4;
  v10 = [(SUAlertButtonDefinition *)v5 initWithLabel:v7 presentationStyle:2 isPreferredButton:0 handler:v12];

  return v10;
}

void __45__SUAutoInstallFailureAlertItem__radarButton__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"About to file a radar about this install failure!", a2, a3, a4, a5, a6, a7, a8, v14);
  v15 = objc_alloc_init(SUTapToRadar);
  v9 = MEMORY[0x277CCACA8];
  v10 = +[SUUtility currentHWModelStr];
  v11 = +[SUUtility currentProductBuild];
  v12 = [v9 stringWithFormat:@"%@/%@: Auto Installation Failed", v10, v11];
  [(SUTapToRadar *)v15 setTitle:v12];

  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v13 appendFormat:@"\nAuto installation failed with error:\n\n%@", *(a1 + 32)];
  if (*(a1 + 40))
  {
    [v13 appendFormat:@"\n\nTarget update: %@", *(a1 + 40)];
  }

  [(SUTapToRadar *)v15 setMessage:v13];
  [(SUTapToRadar *)v15 setClassification:7];
  [(SUTapToRadar *)v15 setReproducibility:6];
  [(SUTapToRadar *)v15 file];
}

@end