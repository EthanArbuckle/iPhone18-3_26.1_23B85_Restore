@interface PBPasteAuthority
- (BOOL)isSharingTokenValidForPasteboard:(id)a3 token:(id)a4;
- (BOOL)processSupportsFlexiGlass:(id)a3;
- (PBPasteAuthority)init;
- (const)preliminaryAccessForPasteboard:(id)a3 auditTokenInfo:(id)a4 authenticationMessage:(id)a5 sharingToken:(id)a6 dataOwner:(int64_t)a7;
- (id)tccIdentityForAuditTokenInfo:(id)a3;
- (id)tccSyncMessageOptions;
- (unint64_t)accessToPasteboard:(id)a3 auditTokenInfo:(id)a4 authenticationMessage:(id)a5 sharingToken:(id)a6 dataOwner:(int64_t)a7;
- (unint64_t)isPasteAuthenticForAuthenticationMessage:(id)a3 auditTokenInfo:(id)a4 currentTimestamp:(unint64_t)a5;
- (unint64_t)isPasteAuthorizedForAuditTokenInfo:(id)a3 pasteboard:(id)a4 currentTimestamp:(unint64_t)a5;
- (unint64_t)isPasteExemptForPasteboard:(id)a3 auditTokenInfo:(id)a4;
- (unint64_t)isPasteManageableForPasteboard:(id)a3 auditTokenInfo:(id)a4 dataOwner:(int64_t)a5;
- (unint64_t)isPasteNativeForPasteboard:(id)a3 auditTokenInfo:(id)a4;
- (unint64_t)isPasteTimelyForPasteboard:(id)a3 currentTimestamp:(unint64_t)a4;
- (unint64_t)pasteAccessFromTCCForAuditTokenInfo:(id)a3;
- (unint64_t)pasteLegibleForPasteboard:(id)a3 authenticationMessage:(id)a4 auditTokenInfo:(id)a5;
- (unint64_t)tccAuthorizationRightForAuditTokenInfo:(id)a3 encounteredError:(BOOL *)a4;
- (void)recordInteractivePasteAuthorizationPromptActivityForAuditTokenInfo:(id)a3;
@end

@implementation PBPasteAuthority

- (PBPasteAuthority)init
{
  v17.receiver = self;
  v17.super_class = PBPasteAuthority;
  v2 = [(PBPasteAuthority *)&v17 init];
  if (v2)
  {
    v16 = 0x3FF0000000000000;
    v19 = xmmword_100024200;
    v3 = objc_alloc_init(UISTransform3DGrader);
    layerGrader = v2->_layerGrader;
    v2->_layerGrader = v3;

    [(UISTransform3DGrader *)v2->_layerGrader allowRotations:&UISAllDeviceRotations count:UISAllDeviceRotationCount, v16];
    [(UISTransform3DGrader *)v2->_layerGrader allowScales:&v16 count:1 lowerMultiplier:0.85 lowerConstant:0.0 upperMultiplier:1.1 upperConstant:0.0];
    [(UISTransform3DGrader *)v2->_layerGrader allowShift:5.0];
    v5 = objc_alloc_init(UISTransform3DGrader);
    contentsGrader = v2->_contentsGrader;
    v2->_contentsGrader = v5;

    [(UISTransform3DGrader *)v2->_contentsGrader allowScales:&v19 count:2 lowerMultiplier:1.0 lowerConstant:0.0 upperMultiplier:1.0 upperConstant:0.0];
    [(UISTransform3DGrader *)v2->_contentsGrader allowTranslation:1.0];
    PBPreferencesDoubleValue();
    v8 = v7;
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v9) = info.denom;
    LODWORD(v10) = info.numer;
    v2->_copyAlienExpiryPeriod = (v8 * v9 * 1000000000.0 / v10);
    v11 = tcc_server_create();
    tccServer = v2->_tccServer;
    v2->_tccServer = v11;

    v13 = tcc_service_singleton_for_CF_name();
    tccService = v2->_tccService;
    v2->_tccService = v13;
  }

  return v2;
}

- (unint64_t)isPasteExemptForPasteboard:(id)a3 auditTokenInfo:(id)a4
{
  v5 = a4;
  if ([a3 isGeneralPasteboard])
  {
    if ([v5 isAllowedToPasteUnchecked])
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (unint64_t)isPasteTimelyForPasteboard:(id)a3 currentTimestamp:(unint64_t)a4
{
  v6 = a3;
  if ([v6 isOrWasRemote])
  {
    v7 = 4;
  }

  else
  {
    v8 = [v6 saveBootSession];
    v9 = sub_100010628();
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = [v6 saveTimestamp];
      if (v11 <= a4)
      {
        if (v11 + self->_copyAlienExpiryPeriod < a4)
        {
          v7 = 7;
        }

        else
        {
          v7 = 8;
        }
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = 5;
    }
  }

  return v7;
}

- (unint64_t)isPasteManageableForPasteboard:(id)a3 auditTokenInfo:(id)a4 dataOwner:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[MCProfileConnection sharedConnection];
  if (![v9 isPasteboardManagementEnabled])
  {
    v13 = 9;
    goto LABEL_11;
  }

  v10 = [v8 bundleID];
  v11 = [v9 dataOwnerForBundleID:v10 requestedDataOwner:a5];

  v12 = [v7 originatorDataOwner];
  if (v12 >= 2)
  {
    if (v12 == 2 && v11 <= 1 && ![v9 isManagedToUnmanagedPasteAllowed])
    {
      v13 = 11;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v11 != 2 || ([v9 isUnmanagedToManagedPasteAllowed] & 1) != 0)
  {
LABEL_10:
    v13 = 12;
    goto LABEL_11;
  }

  v13 = 10;
LABEL_11:

  return v13;
}

- (unint64_t)isPasteNativeForPasteboard:(id)a3 auditTokenInfo:(id)a4
{
  if (sub_10000FAF8(a3, a4))
  {
    return 13;
  }

  else
  {
    return 14;
  }
}

- (unint64_t)isPasteAuthenticForAuthenticationMessage:(id)a3 auditTokenInfo:(id)a4 currentTimestamp:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 originIdentifier];
  if (v9 == 0x30D8E242D30C9F99)
  {
    v13 = +[PBSecurePasteAuthenticationMessageGenerator sharedInstance];
    v14 = [v13 validateAuthenticationMessage:v7];

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 15;
    goto LABEL_14;
  }

  if (v9 != 0xC181BADB23D8497BLL)
  {
    v15 = 16;
    goto LABEL_14;
  }

  v10 = +[BKSHIDEventDeliveryManager sharedInstance];
  v11 = [v10 authenticateMessage:v7];

  if (v11 != 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [v7 versionedPID];
  if (v8)
  {
    [v8 auditToken];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  if (v12 != BSVersionedPIDForAuditToken())
  {
    v15 = 17;
    goto LABEL_14;
  }

  if ([v7 timestamp] > a5)
  {
    v15 = 18;
    goto LABEL_14;
  }

  v17 = [v7 context];
  v18 = v17;
  v15 = 20;
  if (v17 > 0x237A2046F04E760BLL)
  {
    if (v17 > 0x51A2F5DDCA075EA0)
    {
      if (v17 > 0x67510999674CD01DLL)
      {
        if (v17 == 0x67510999674CD01ELL || v17 == 0x70A52C167AE7B042)
        {
          goto LABEL_14;
        }

        v19 = 0x7EC07AF570CAADBCLL;
      }

      else
      {
        if (v17 == 0x51A2F5DDCA075EA1 || v17 == 0x5597A8D691A21829)
        {
          goto LABEL_14;
        }

        v19 = 0x5A4A97C3218CE65BLL;
      }
    }

    else if (v17 > 0x2BB12563A205EBD0)
    {
      if (v17 == 0x2BB12563A205EBD1 || v17 == 0x37CA128B814942F4)
      {
        goto LABEL_14;
      }

      v19 = 0x41683F1594B2E071;
    }

    else
    {
      if (v17 == 0x237A2046F04E760CLL || v17 == 0x25FC7F58D8DEA672)
      {
        goto LABEL_14;
      }

      v19 = 0x2602B97B3B8E05C3;
    }
  }

  else if (v17 > 0xB40F49E017F83013)
  {
    if (v17 > 0xF635B19E69CD15EBLL)
    {
      if (v17 == 0xF635B19E69CD15ECLL || v17 == 0x6B3CE0810AAF53ALL)
      {
        goto LABEL_14;
      }

      v19 = 0xC59AA8F622F26FCLL;
    }

    else
    {
      if (v17 == 0xB40F49E017F83014 || v17 == 0xC58523F7A4B7A983)
      {
        goto LABEL_14;
      }

      v19 = 0xF317E322CB2CEA02;
    }
  }

  else if (v17 > 0x9D0980DD8F0CAFCALL)
  {
    if (v17 == 0x9D0980DD8F0CAFCBLL || v17 == 0xA16D1C5A60C000E1)
    {
      goto LABEL_14;
    }

    v19 = 0xA9745AB1695ED68BLL;
  }

  else
  {
    if (v17 == 0x84E6A8CBF3F0F10CLL || v17 == 0x926FA0AD41ACE950)
    {
      goto LABEL_14;
    }

    v19 = 0x95DD33C9595B8B0ALL;
  }

  if (v17 != v19)
  {
    v20 = _PBLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v21[0]) = 134217984;
      *(v21 + 4) = v18;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Authentication message has unexpected context %llu.", v21, 0xCu);
    }

    v15 = 19;
  }

LABEL_14:

  return v15;
}

- (unint64_t)pasteLegibleForPasteboard:(id)a3 authenticationMessage:(id)a4 auditTokenInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 secureNameStatus] != 1)
  {
    if (([v8 isOrWasRemote] & 1) == 0)
    {
      v12 = [v9 timestamp];
      if (v12 < [v8 saveTimestamp])
      {
        v11 = 23;
        goto LABEL_119;
      }
    }

    v13 = [v9 context];
    v14 = 0;
    v15 = 5.0;
    v16 = -1;
    v17 = NAN;
    v18 = 0.95;
    if (v13 <= 0x237A2046F04E760BLL)
    {
      v11 = 29;
      if (v13 <= 0xB40F49E017F83013)
      {
        if (v13 <= 0x9D0980DD8F0CAFCALL)
        {
          if (v13 == 0x84E6A8CBF3F0F10CLL)
          {
            goto LABEL_119;
          }

          if (v13 != 0x926FA0AD41ACE950)
          {
            v19 = 0x95DD33C9595B8B0ALL;
            goto LABEL_51;
          }

          v28 = _AXSInvertColorsEnabled();
          v24 = 0;
          v25 = v28 == 0;
          if (v28)
          {
            v17 = 0.71;
          }

          else
          {
            v17 = NAN;
          }

          if (v28)
          {
            v21 = 0.69;
          }

          else
          {
            v21 = NAN;
          }

          if (v28)
          {
            v26 = 0.11;
          }

          else
          {
            v26 = NAN;
          }

          v18 = 0.8;
          goto LABEL_78;
        }

        if (v13 != 0x9D0980DD8F0CAFCBLL)
        {
          if (v13 == 0xA16D1C5A60C000E1)
          {
            v14 = 2;
            v17 = NAN;
          }

          else if (v13 == 0xA9745AB1695ED68BLL)
          {
            v23 = _AXSInvertColorsEnabled();
            v24 = 0;
            v25 = v23 == 0;
            if (v23)
            {
              v17 = 0.67;
            }

            else
            {
              v17 = NAN;
            }

            if (v23)
            {
              v21 = 0.52;
            }

            else
            {
              v21 = NAN;
            }

            if (v23)
            {
              v26 = 0.043;
            }

            else
            {
              v26 = NAN;
            }

LABEL_78:
            if (v25)
            {
              v29 = 2;
            }

            else
            {
              v29 = 1;
            }

LABEL_101:
            v22 = v17;
            v31 = [(PBPasteAuthority *)self processSupportsFlexiGlass:v10];
            if (v31)
            {
              v16 = -25;
            }

            else
            {
              v16 = -1;
            }

            if (v31)
            {
              v15 = 15.0;
            }

            else
            {
              v15 = 5.0;
            }

            if (v31)
            {
              v14 = v24;
            }

            else
            {
              v14 = v29;
            }

            v20 = v18;
            v17 = v26;
            goto LABEL_111;
          }

          goto LABEL_94;
        }

        goto LABEL_54;
      }

      if (v13 <= 0xF635B19E69CD15EBLL)
      {
        if (v13 == 0xB40F49E017F83014)
        {
          v14 = 0;
          v17 = NAN;
          v20 = 0.95;
          v18 = 0.19;
        }

        else
        {
          if (v13 != 0xC58523F7A4B7A983)
          {
            v20 = 0.95;
            v21 = NAN;
            v22 = NAN;
            if (v13 == 0xF317E322CB2CEA02)
            {
              goto LABEL_119;
            }

            goto LABEL_111;
          }

          v14 = 0;
          v17 = NAN;
          v20 = 0.95;
          v18 = 0.38;
        }

LABEL_97:
        v21 = NAN;
        v22 = NAN;
        goto LABEL_111;
      }

      if (v13 != 0xF635B19E69CD15ECLL)
      {
        if (v13 == 0x6B3CE0810AAF53ALL)
        {
LABEL_52:
          v11 = 30;
          goto LABEL_119;
        }

        if (v13 != 0xC59AA8F622F26FCLL)
        {
LABEL_94:
          v20 = 0.95;
          goto LABEL_97;
        }

LABEL_55:
        v27 = _AXSInvertColorsEnabled();
        if (v27)
        {
          v22 = 0.88;
        }

        else
        {
          v22 = NAN;
        }

        if (v27)
        {
          v21 = 0.72;
        }

        else
        {
          v21 = NAN;
        }

        if (v27)
        {
          v17 = 0.022;
        }

        else
        {
          v17 = NAN;
        }

        if (v27)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        v20 = 0.75;
        goto LABEL_111;
      }

      v24 = 2;
LABEL_100:
      v21 = NAN;
      v26 = NAN;
      v29 = 2;
      goto LABEL_101;
    }

    if (v13 > 0x51A2F5DDCA075EA0)
    {
      if (v13 <= 0x67510999674CD01DLL)
      {
        if (v13 == 0x51A2F5DDCA075EA1)
        {
          v11 = 33;
          goto LABEL_119;
        }

        if (v13 == 0x5597A8D691A21829)
        {
          v30 = _AXSInvertColorsEnabled();
          if (v30)
          {
            v21 = 0.55;
          }

          else
          {
            v21 = NAN;
          }

          if (v30)
          {
            v17 = 0.04;
          }

          else
          {
            v17 = NAN;
          }

          if (v30)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v20 = 0.95;
          v18 = 0.175;
          v22 = v21;
        }

        else
        {
          v20 = 0.95;
          v21 = NAN;
          v22 = NAN;
          if (v13 == 0x5A4A97C3218CE65BLL)
          {
            v11 = 31;
            goto LABEL_119;
          }
        }

        goto LABEL_111;
      }

      if (v13 == 0x67510999674CD01ELL)
      {
        goto LABEL_55;
      }

      if (v13 != 0x70A52C167AE7B042)
      {
        v19 = 0x7EC07AF570CAADBCLL;
LABEL_51:
        v20 = 0.95;
        v21 = NAN;
        v22 = NAN;
        if (v13 == v19)
        {
          goto LABEL_52;
        }

LABEL_111:
        v32 = [v9 hitTestInformationFromStartEvent];
        v33 = [v9 hitTestInformationFromEndEvent];
        [v32 cumulativeOpacity];
        if (v34 < v20 || ([v33 cumulativeOpacity], v36 = v35, objc_msgSend(v32, "cumulativeOpacity"), v36 != v37) && (objc_msgSend(v33, "cumulativeOpacity"), v38 < v18))
        {
          v11 = 24;
LABEL_118:

          goto LABEL_119;
        }

        if ([v32 hasInsecureFilter] & 1) != 0 || (objc_msgSend(v33, "hasInsecureFilter"))
        {
          v11 = 25;
          goto LABEL_118;
        }

        if ([v32 detectedOcclusion] & 1) != 0 || (objc_msgSend(v33, "detectedOcclusion"))
        {
          v11 = 26;
          goto LABEL_118;
        }

        if (v14 == 2)
        {
          [v32 backgroundAverageContrastThreshold];
          if (v44 >= 0.98)
          {
            [v33 backgroundAverageContrastThreshold];
            if (v45 >= 0.98)
            {
              goto LABEL_133;
            }
          }
        }

        else if (v14 != 1 || ([v32 backgroundAverage], v40 >= v22) && (objc_msgSend(v32, "backgroundStandardDeviation"), v41 <= v17) && (objc_msgSend(v33, "backgroundAverage"), v42 >= v21) && (objc_msgSend(v33, "backgroundStandardDeviation"), v43 <= v17))
        {
LABEL_133:
          [(UISTransform3DGrader *)self->_layerGrader allowShift:v15];
          layerGrader = self->_layerGrader;
          if (v32)
          {
            [v32 cumulativeLayerTransform];
          }

          else
          {
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            memset(buf, 0, sizeof(buf));
          }

          if (v33)
          {
            [v33 cumulativeLayerTransform];
          }

          else
          {
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
          }

          v47 = [(UISTransform3DGrader *)layerGrader gradeStartTransform3D:buf endTransform3D:&v53];
          contentsGrader = self->_contentsGrader;
          if (v32)
          {
            [v32 cumulativeContentsTransform];
          }

          else
          {
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            memset(buf, 0, sizeof(buf));
          }

          if (v33)
          {
            [v33 cumulativeContentsTransform];
          }

          else
          {
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
          }

          v49 = [(UISTransform3DGrader *)contentsGrader gradeStartTransform3D:buf endTransform3D:&v53];
          v50 = v47 & v16;
          if (v50 | v49)
          {
            v51 = v49;
            v52 = _PBLog();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v50;
              *&buf[12] = 2048;
              *&buf[14] = v51;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Authentication message button is transformed %lu, %lu.", buf, 0x16u);
            }

            v11 = 28;
          }

          else
          {
            v11 = 36;
          }

          goto LABEL_118;
        }

        v11 = 27;
        goto LABEL_118;
      }
    }

    else
    {
      if (v13 <= 0x2BB12563A205EBD0)
      {
        if (v13 != 0x237A2046F04E760CLL)
        {
          if (v13 == 0x25FC7F58D8DEA672)
          {
            v11 = 35;
            goto LABEL_119;
          }

          v20 = 0.95;
          v21 = NAN;
          v22 = NAN;
          if (v13 == 0x2602B97B3B8E05C3)
          {
            v11 = 32;
            goto LABEL_119;
          }

          goto LABEL_111;
        }

LABEL_54:
        v20 = 0.75;
        v14 = 2;
        v17 = NAN;
        goto LABEL_97;
      }

      if (v13 != 0x2BB12563A205EBD1)
      {
        if (v13 != 0x37CA128B814942F4)
        {
          v20 = 0.95;
          v21 = NAN;
          v22 = NAN;
          if (v13 == 0x41683F1594B2E071)
          {
            v11 = 34;
            goto LABEL_119;
          }

          goto LABEL_111;
        }

        v18 = 0.8;
        v24 = 2;
        v17 = NAN;
        goto LABEL_100;
      }
    }

    v14 = 2;
    v17 = NAN;
    v20 = 0.95;
    v18 = 0.175;
    goto LABEL_97;
  }

  v11 = 21;
LABEL_119:

  return v11;
}

- (BOOL)isSharingTokenValidForPasteboard:(id)a3 token:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = mach_continuous_time();
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v5 sharingToken];
  v10 = [v6 isEqual:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  if (v8 > [v5 saveTimestamp] && (v11 = PBSharingTokenTimeoutInterval, info = 0, mach_timebase_info(&info), LODWORD(v12) = info.denom, LODWORD(v13) = info.numer, v8 - (v11 * v12 * 1000000000.0 / v13) <= objc_msgSend(v5, "saveTimestamp")))
  {
    v14 = 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14;
}

- (unint64_t)pasteAccessFromTCCForAuditTokenInfo:(id)a3
{
  v8 = 0;
  v3 = [(PBPasteAuthority *)self tccAuthorizationRightForAuditTokenInfo:a3 encounteredError:&v8];
  if (v8 == 1)
  {
    v4 = _PBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "TCC encountered an error while fetching authorization status. Defaulting to 'ask'", v7, 2u);
    }

    return 5;
  }

  else
  {
    v6 = 4;
    if (v3 != 2)
    {
      v6 = 1;
    }

    if ((v3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      return 5;
    }

    else
    {
      return v6;
    }
  }
}

- (unint64_t)isPasteAuthorizedForAuditTokenInfo:(id)a3 pasteboard:(id)a4 currentTimestamp:(unint64_t)a5
{
  if (a4)
  {
    return [a4 authorizationDecisionForAuditTokenInfo:a3 timestamp:a5];
  }

  else
  {
    return 42;
  }
}

- (unint64_t)tccAuthorizationRightForAuditTokenInfo:(id)a3 encounteredError:(BOOL *)a4
{
  v5 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100007F0C;
  v15 = sub_100007F1C;
  v16 = 0;
  v6 = [(PBPasteAuthority *)self tccSyncMessageOptions];
  v7 = [(PBPasteAuthority *)self tccIdentityForAuditTokenInfo:v5];
  if (v7)
  {
    tccServer = self->_tccServer;
    tcc_server_message_get_authorization_records_by_identity();
  }

  if (v12[5])
  {
    authorization_right = tcc_authorization_record_get_authorization_right();
  }

  else
  {
    authorization_right = 1;
  }

  _Block_object_dispose(&v11, 8);
  return authorization_right;
}

- (id)tccSyncMessageOptions
{
  v2 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();

  return v2;
}

- (id)tccIdentityForAuditTokenInfo:(id)a3
{
  v4 = a3;
  v5 = [(PBPasteAuthority *)self tccSyncMessageOptions];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v6 = tcc_credential_create_for_process_with_audit_token();
  *&v11 = 0;
  *(&v11 + 1) = &v11;
  *&v12 = 0x3032000000;
  *(&v12 + 1) = sub_100007F0C;
  v13 = sub_100007F1C;
  v14 = 0;
  if (v6)
  {
    tccServer = self->_tccServer;
    tcc_server_message_get_identity_for_credential();
    v8 = *(*(&v11 + 1) + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v11, 8);

  return v9;
}

- (BOOL)processSupportsFlexiGlass:(id)a3
{
  v3 = a3;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v3 linkedOnVersion];

  LOBYTE(v3) = [v4 isVersion:v5 greaterThanOrEqualToVersion:@"19.0"];
  return v3;
}

- (void)recordInteractivePasteAuthorizationPromptActivityForAuditTokenInfo:(id)a3
{
  v4 = a3;
  v5 = [(PBPasteAuthority *)self tccSyncMessageOptions];
  v6 = [(PBPasteAuthority *)self tccIdentityForAuditTokenInfo:v4];
  v9 = 0;
  if (v6)
  {
    [(PBPasteAuthority *)self tccAuthorizationRightForAuditTokenInfo:v4 encounteredError:&v9];
    if ((v9 & 1) == 0)
    {
      tccServer = self->_tccServer;
      tccService = self->_tccService;
      tcc_server_message_set_authorization_value();
    }
  }
}

- (unint64_t)accessToPasteboard:(id)a3 auditTokenInfo:(id)a4 authenticationMessage:(id)a5 sharingToken:(id)a6 dataOwner:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(PBPasteAuthority *)self preliminaryAccessForPasteboard:v12 auditTokenInfo:v13 authenticationMessage:v14 sharingToken:v15 dataOwner:a7];
  p_var0 = &v16->var0;
  var1 = v16->var1;
  v19 = 1;
  if (var1 <= 2)
  {
    if (var1)
    {
      v20 = 0;
      if (var1 == 2)
      {
        v19 = v16->var1;
      }
    }

    else
    {
      v21 = _PBLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Logic error in PBPasteAuthority: decision map should not return undecided.", v23, 2u);
      }

      v20 = 0;
      v19 = 1;
    }
  }

  else if (var1 == 3 || var1 == 4)
  {
    v20 = 0;
    v19 = v16->var1;
  }

  else if (var1 == 5)
  {
    if ([(PBPasteAuthority *)self isSharingTokenValidForPasteboard:v12 token:v15])
    {
      v20 = @"sharingTokenAccepted";
      v19 = 4;
    }

    else
    {
      v19 = [(PBPasteAuthority *)self pasteAccessFromTCCForAuditTokenInfo:v13];
      if (v19 == 5)
      {
        v20 = 0;
      }

      else
      {
        v20 = @"TCC";
      }
    }
  }

  else
  {
    v20 = 0;
  }

  sub_100006144(*p_var0, var1, v20, v19, v14, v13);

  return v19;
}

- (const)preliminaryAccessForPasteboard:(id)a3 auditTokenInfo:(id)a4 authenticationMessage:(id)a5 sharingToken:(id)a6 dataOwner:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = sub_100008884([(PBPasteAuthority *)self isPasteExemptForPasteboard:v11 auditTokenInfo:v12]);
  if (v14)
  {
    goto LABEL_5;
  }

  v14 = sub_100008884([(PBPasteAuthority *)self isPasteManageableForPasteboard:v11 auditTokenInfo:v12 dataOwner:a7]);
  if (v14)
  {
    goto LABEL_5;
  }

  v14 = sub_100008884([(PBPasteAuthority *)self isPasteNativeForPasteboard:v11 auditTokenInfo:v12]);
  if (v14)
  {
    goto LABEL_5;
  }

  v15 = mach_continuous_time();
  v14 = sub_100008884([(PBPasteAuthority *)self isPasteTimelyForPasteboard:v11 currentTimestamp:v15]);
  if (v14)
  {
    goto LABEL_5;
  }

  if (v13)
  {
    v14 = sub_100008884([(PBPasteAuthority *)self isPasteAuthenticForAuthenticationMessage:v13 auditTokenInfo:v12 currentTimestamp:v15]);
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v14 = sub_100008884([(PBPasteAuthority *)self isPasteAuthorizedForAuditTokenInfo:v12 pasteboard:v11 currentTimestamp:v15]);
  if (v14)
  {
    goto LABEL_5;
  }

  if (!v13)
  {
    v14 = sub_100008884(37);
    goto LABEL_5;
  }

  v14 = sub_100008884([(PBPasteAuthority *)self pasteLegibleForPasteboard:v11 authenticationMessage:v13 auditTokenInfo:v12]);
  if (v14)
  {
LABEL_5:
    v16 = v14;
    goto LABEL_6;
  }

  v18 = _PBLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Logic error in PBPasteAuthority", v19, 2u);
  }

  v16 = &off_100030E68;
LABEL_6:

  return v16;
}

@end