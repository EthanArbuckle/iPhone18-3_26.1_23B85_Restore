@interface PBPasteAuthority
- (BOOL)isSharingTokenValidForPasteboard:(id)pasteboard token:(id)token;
- (BOOL)processSupportsFlexiGlass:(id)glass;
- (PBPasteAuthority)init;
- (const)preliminaryAccessForPasteboard:(id)pasteboard auditTokenInfo:(id)info authenticationMessage:(id)message sharingToken:(id)token dataOwner:(int64_t)owner;
- (id)tccIdentityForAuditTokenInfo:(id)info;
- (id)tccSyncMessageOptions;
- (unint64_t)accessToPasteboard:(id)pasteboard auditTokenInfo:(id)info authenticationMessage:(id)message sharingToken:(id)token dataOwner:(int64_t)owner;
- (unint64_t)isPasteAuthenticForAuthenticationMessage:(id)message auditTokenInfo:(id)info currentTimestamp:(unint64_t)timestamp;
- (unint64_t)isPasteAuthorizedForAuditTokenInfo:(id)info pasteboard:(id)pasteboard currentTimestamp:(unint64_t)timestamp;
- (unint64_t)isPasteExemptForPasteboard:(id)pasteboard auditTokenInfo:(id)info;
- (unint64_t)isPasteManageableForPasteboard:(id)pasteboard auditTokenInfo:(id)info dataOwner:(int64_t)owner;
- (unint64_t)isPasteNativeForPasteboard:(id)pasteboard auditTokenInfo:(id)info;
- (unint64_t)isPasteTimelyForPasteboard:(id)pasteboard currentTimestamp:(unint64_t)timestamp;
- (unint64_t)pasteAccessFromTCCForAuditTokenInfo:(id)info;
- (unint64_t)pasteLegibleForPasteboard:(id)pasteboard authenticationMessage:(id)message auditTokenInfo:(id)info;
- (unint64_t)tccAuthorizationRightForAuditTokenInfo:(id)info encounteredError:(BOOL *)error;
- (void)recordInteractivePasteAuthorizationPromptActivityForAuditTokenInfo:(id)info;
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

- (unint64_t)isPasteExemptForPasteboard:(id)pasteboard auditTokenInfo:(id)info
{
  infoCopy = info;
  if ([pasteboard isGeneralPasteboard])
  {
    if ([infoCopy isAllowedToPasteUnchecked])
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

- (unint64_t)isPasteTimelyForPasteboard:(id)pasteboard currentTimestamp:(unint64_t)timestamp
{
  pasteboardCopy = pasteboard;
  if ([pasteboardCopy isOrWasRemote])
  {
    v7 = 4;
  }

  else
  {
    saveBootSession = [pasteboardCopy saveBootSession];
    v9 = sub_100010628();
    v10 = [saveBootSession isEqual:v9];

    if (v10)
    {
      saveTimestamp = [pasteboardCopy saveTimestamp];
      if (saveTimestamp <= timestamp)
      {
        if (saveTimestamp + self->_copyAlienExpiryPeriod < timestamp)
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

- (unint64_t)isPasteManageableForPasteboard:(id)pasteboard auditTokenInfo:(id)info dataOwner:(int64_t)owner
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  v9 = +[MCProfileConnection sharedConnection];
  if (![v9 isPasteboardManagementEnabled])
  {
    v13 = 9;
    goto LABEL_11;
  }

  bundleID = [infoCopy bundleID];
  v11 = [v9 dataOwnerForBundleID:bundleID requestedDataOwner:owner];

  originatorDataOwner = [pasteboardCopy originatorDataOwner];
  if (originatorDataOwner >= 2)
  {
    if (originatorDataOwner == 2 && v11 <= 1 && ![v9 isManagedToUnmanagedPasteAllowed])
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

- (unint64_t)isPasteNativeForPasteboard:(id)pasteboard auditTokenInfo:(id)info
{
  if (sub_10000FAF8(pasteboard, info))
  {
    return 13;
  }

  else
  {
    return 14;
  }
}

- (unint64_t)isPasteAuthenticForAuthenticationMessage:(id)message auditTokenInfo:(id)info currentTimestamp:(unint64_t)timestamp
{
  messageCopy = message;
  infoCopy = info;
  originIdentifier = [messageCopy originIdentifier];
  if (originIdentifier == 0x30D8E242D30C9F99)
  {
    v13 = +[PBSecurePasteAuthenticationMessageGenerator sharedInstance];
    v14 = [v13 validateAuthenticationMessage:messageCopy];

    if (v14)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 15;
    goto LABEL_14;
  }

  if (originIdentifier != 0xC181BADB23D8497BLL)
  {
    v15 = 16;
    goto LABEL_14;
  }

  v10 = +[BKSHIDEventDeliveryManager sharedInstance];
  v11 = [v10 authenticateMessage:messageCopy];

  if (v11 != 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  versionedPID = [messageCopy versionedPID];
  if (infoCopy)
  {
    [infoCopy auditToken];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  if (versionedPID != BSVersionedPIDForAuditToken())
  {
    v15 = 17;
    goto LABEL_14;
  }

  if ([messageCopy timestamp] > timestamp)
  {
    v15 = 18;
    goto LABEL_14;
  }

  context = [messageCopy context];
  v18 = context;
  v15 = 20;
  if (context > 0x237A2046F04E760BLL)
  {
    if (context > 0x51A2F5DDCA075EA0)
    {
      if (context > 0x67510999674CD01DLL)
      {
        if (context == 0x67510999674CD01ELL || context == 0x70A52C167AE7B042)
        {
          goto LABEL_14;
        }

        v19 = 0x7EC07AF570CAADBCLL;
      }

      else
      {
        if (context == 0x51A2F5DDCA075EA1 || context == 0x5597A8D691A21829)
        {
          goto LABEL_14;
        }

        v19 = 0x5A4A97C3218CE65BLL;
      }
    }

    else if (context > 0x2BB12563A205EBD0)
    {
      if (context == 0x2BB12563A205EBD1 || context == 0x37CA128B814942F4)
      {
        goto LABEL_14;
      }

      v19 = 0x41683F1594B2E071;
    }

    else
    {
      if (context == 0x237A2046F04E760CLL || context == 0x25FC7F58D8DEA672)
      {
        goto LABEL_14;
      }

      v19 = 0x2602B97B3B8E05C3;
    }
  }

  else if (context > 0xB40F49E017F83013)
  {
    if (context > 0xF635B19E69CD15EBLL)
    {
      if (context == 0xF635B19E69CD15ECLL || context == 0x6B3CE0810AAF53ALL)
      {
        goto LABEL_14;
      }

      v19 = 0xC59AA8F622F26FCLL;
    }

    else
    {
      if (context == 0xB40F49E017F83014 || context == 0xC58523F7A4B7A983)
      {
        goto LABEL_14;
      }

      v19 = 0xF317E322CB2CEA02;
    }
  }

  else if (context > 0x9D0980DD8F0CAFCALL)
  {
    if (context == 0x9D0980DD8F0CAFCBLL || context == 0xA16D1C5A60C000E1)
    {
      goto LABEL_14;
    }

    v19 = 0xA9745AB1695ED68BLL;
  }

  else
  {
    if (context == 0x84E6A8CBF3F0F10CLL || context == 0x926FA0AD41ACE950)
    {
      goto LABEL_14;
    }

    v19 = 0x95DD33C9595B8B0ALL;
  }

  if (context != v19)
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

- (unint64_t)pasteLegibleForPasteboard:(id)pasteboard authenticationMessage:(id)message auditTokenInfo:(id)info
{
  pasteboardCopy = pasteboard;
  messageCopy = message;
  infoCopy = info;
  if ([messageCopy secureNameStatus] != 1)
  {
    if (([pasteboardCopy isOrWasRemote] & 1) == 0)
    {
      timestamp = [messageCopy timestamp];
      if (timestamp < [pasteboardCopy saveTimestamp])
      {
        v11 = 23;
        goto LABEL_119;
      }
    }

    context = [messageCopy context];
    v14 = 0;
    v15 = 5.0;
    v16 = -1;
    v17 = NAN;
    v18 = 0.95;
    if (context <= 0x237A2046F04E760BLL)
    {
      v11 = 29;
      if (context <= 0xB40F49E017F83013)
      {
        if (context <= 0x9D0980DD8F0CAFCALL)
        {
          if (context == 0x84E6A8CBF3F0F10CLL)
          {
            goto LABEL_119;
          }

          if (context != 0x926FA0AD41ACE950)
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

        if (context != 0x9D0980DD8F0CAFCBLL)
        {
          if (context == 0xA16D1C5A60C000E1)
          {
            v14 = 2;
            v17 = NAN;
          }

          else if (context == 0xA9745AB1695ED68BLL)
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
            v31 = [(PBPasteAuthority *)self processSupportsFlexiGlass:infoCopy];
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

      if (context <= 0xF635B19E69CD15EBLL)
      {
        if (context == 0xB40F49E017F83014)
        {
          v14 = 0;
          v17 = NAN;
          v20 = 0.95;
          v18 = 0.19;
        }

        else
        {
          if (context != 0xC58523F7A4B7A983)
          {
            v20 = 0.95;
            v21 = NAN;
            v22 = NAN;
            if (context == 0xF317E322CB2CEA02)
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

      if (context != 0xF635B19E69CD15ECLL)
      {
        if (context == 0x6B3CE0810AAF53ALL)
        {
LABEL_52:
          v11 = 30;
          goto LABEL_119;
        }

        if (context != 0xC59AA8F622F26FCLL)
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

    if (context > 0x51A2F5DDCA075EA0)
    {
      if (context <= 0x67510999674CD01DLL)
      {
        if (context == 0x51A2F5DDCA075EA1)
        {
          v11 = 33;
          goto LABEL_119;
        }

        if (context == 0x5597A8D691A21829)
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
          if (context == 0x5A4A97C3218CE65BLL)
          {
            v11 = 31;
            goto LABEL_119;
          }
        }

        goto LABEL_111;
      }

      if (context == 0x67510999674CD01ELL)
      {
        goto LABEL_55;
      }

      if (context != 0x70A52C167AE7B042)
      {
        v19 = 0x7EC07AF570CAADBCLL;
LABEL_51:
        v20 = 0.95;
        v21 = NAN;
        v22 = NAN;
        if (context == v19)
        {
          goto LABEL_52;
        }

LABEL_111:
        hitTestInformationFromStartEvent = [messageCopy hitTestInformationFromStartEvent];
        hitTestInformationFromEndEvent = [messageCopy hitTestInformationFromEndEvent];
        [hitTestInformationFromStartEvent cumulativeOpacity];
        if (v34 < v20 || ([hitTestInformationFromEndEvent cumulativeOpacity], v36 = v35, objc_msgSend(hitTestInformationFromStartEvent, "cumulativeOpacity"), v36 != v37) && (objc_msgSend(hitTestInformationFromEndEvent, "cumulativeOpacity"), v38 < v18))
        {
          v11 = 24;
LABEL_118:

          goto LABEL_119;
        }

        if ([hitTestInformationFromStartEvent hasInsecureFilter] & 1) != 0 || (objc_msgSend(hitTestInformationFromEndEvent, "hasInsecureFilter"))
        {
          v11 = 25;
          goto LABEL_118;
        }

        if ([hitTestInformationFromStartEvent detectedOcclusion] & 1) != 0 || (objc_msgSend(hitTestInformationFromEndEvent, "detectedOcclusion"))
        {
          v11 = 26;
          goto LABEL_118;
        }

        if (v14 == 2)
        {
          [hitTestInformationFromStartEvent backgroundAverageContrastThreshold];
          if (v44 >= 0.98)
          {
            [hitTestInformationFromEndEvent backgroundAverageContrastThreshold];
            if (v45 >= 0.98)
            {
              goto LABEL_133;
            }
          }
        }

        else if (v14 != 1 || ([hitTestInformationFromStartEvent backgroundAverage], v40 >= v22) && (objc_msgSend(hitTestInformationFromStartEvent, "backgroundStandardDeviation"), v41 <= v17) && (objc_msgSend(hitTestInformationFromEndEvent, "backgroundAverage"), v42 >= v21) && (objc_msgSend(hitTestInformationFromEndEvent, "backgroundStandardDeviation"), v43 <= v17))
        {
LABEL_133:
          [(UISTransform3DGrader *)self->_layerGrader allowShift:v15];
          layerGrader = self->_layerGrader;
          if (hitTestInformationFromStartEvent)
          {
            [hitTestInformationFromStartEvent cumulativeLayerTransform];
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

          if (hitTestInformationFromEndEvent)
          {
            [hitTestInformationFromEndEvent cumulativeLayerTransform];
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
          if (hitTestInformationFromStartEvent)
          {
            [hitTestInformationFromStartEvent cumulativeContentsTransform];
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

          if (hitTestInformationFromEndEvent)
          {
            [hitTestInformationFromEndEvent cumulativeContentsTransform];
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
      if (context <= 0x2BB12563A205EBD0)
      {
        if (context != 0x237A2046F04E760CLL)
        {
          if (context == 0x25FC7F58D8DEA672)
          {
            v11 = 35;
            goto LABEL_119;
          }

          v20 = 0.95;
          v21 = NAN;
          v22 = NAN;
          if (context == 0x2602B97B3B8E05C3)
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

      if (context != 0x2BB12563A205EBD1)
      {
        if (context != 0x37CA128B814942F4)
        {
          v20 = 0.95;
          v21 = NAN;
          v22 = NAN;
          if (context == 0x41683F1594B2E071)
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

- (BOOL)isSharingTokenValidForPasteboard:(id)pasteboard token:(id)token
{
  pasteboardCopy = pasteboard;
  tokenCopy = token;
  v7 = mach_continuous_time();
  if (!tokenCopy)
  {
    goto LABEL_5;
  }

  v8 = v7;
  sharingToken = [pasteboardCopy sharingToken];
  v10 = [tokenCopy isEqual:sharingToken];

  if (!v10)
  {
    goto LABEL_5;
  }

  if (v8 > [pasteboardCopy saveTimestamp] && (v11 = PBSharingTokenTimeoutInterval, info = 0, mach_timebase_info(&info), LODWORD(v12) = info.denom, LODWORD(v13) = info.numer, v8 - (v11 * v12 * 1000000000.0 / v13) <= objc_msgSend(pasteboardCopy, "saveTimestamp")))
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

- (unint64_t)pasteAccessFromTCCForAuditTokenInfo:(id)info
{
  v8 = 0;
  v3 = [(PBPasteAuthority *)self tccAuthorizationRightForAuditTokenInfo:info encounteredError:&v8];
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

- (unint64_t)isPasteAuthorizedForAuditTokenInfo:(id)info pasteboard:(id)pasteboard currentTimestamp:(unint64_t)timestamp
{
  if (pasteboard)
  {
    return [pasteboard authorizationDecisionForAuditTokenInfo:info timestamp:timestamp];
  }

  else
  {
    return 42;
  }
}

- (unint64_t)tccAuthorizationRightForAuditTokenInfo:(id)info encounteredError:(BOOL *)error
{
  infoCopy = info;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100007F0C;
  v15 = sub_100007F1C;
  v16 = 0;
  tccSyncMessageOptions = [(PBPasteAuthority *)self tccSyncMessageOptions];
  v7 = [(PBPasteAuthority *)self tccIdentityForAuditTokenInfo:infoCopy];
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

- (id)tccIdentityForAuditTokenInfo:(id)info
{
  infoCopy = info;
  tccSyncMessageOptions = [(PBPasteAuthority *)self tccSyncMessageOptions];
  if (infoCopy)
  {
    [infoCopy auditToken];
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

- (BOOL)processSupportsFlexiGlass:(id)glass
{
  glassCopy = glass;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  linkedOnVersion = [glassCopy linkedOnVersion];

  LOBYTE(glassCopy) = [v4 isVersion:linkedOnVersion greaterThanOrEqualToVersion:@"19.0"];
  return glassCopy;
}

- (void)recordInteractivePasteAuthorizationPromptActivityForAuditTokenInfo:(id)info
{
  infoCopy = info;
  tccSyncMessageOptions = [(PBPasteAuthority *)self tccSyncMessageOptions];
  v6 = [(PBPasteAuthority *)self tccIdentityForAuditTokenInfo:infoCopy];
  v9 = 0;
  if (v6)
  {
    [(PBPasteAuthority *)self tccAuthorizationRightForAuditTokenInfo:infoCopy encounteredError:&v9];
    if ((v9 & 1) == 0)
    {
      tccServer = self->_tccServer;
      tccService = self->_tccService;
      tcc_server_message_set_authorization_value();
    }
  }
}

- (unint64_t)accessToPasteboard:(id)pasteboard auditTokenInfo:(id)info authenticationMessage:(id)message sharingToken:(id)token dataOwner:(int64_t)owner
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  messageCopy = message;
  tokenCopy = token;
  v16 = [(PBPasteAuthority *)self preliminaryAccessForPasteboard:pasteboardCopy auditTokenInfo:infoCopy authenticationMessage:messageCopy sharingToken:tokenCopy dataOwner:owner];
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
    if ([(PBPasteAuthority *)self isSharingTokenValidForPasteboard:pasteboardCopy token:tokenCopy])
    {
      v20 = @"sharingTokenAccepted";
      v19 = 4;
    }

    else
    {
      v19 = [(PBPasteAuthority *)self pasteAccessFromTCCForAuditTokenInfo:infoCopy];
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

  sub_100006144(*p_var0, var1, v20, v19, messageCopy, infoCopy);

  return v19;
}

- (const)preliminaryAccessForPasteboard:(id)pasteboard auditTokenInfo:(id)info authenticationMessage:(id)message sharingToken:(id)token dataOwner:(int64_t)owner
{
  pasteboardCopy = pasteboard;
  infoCopy = info;
  messageCopy = message;
  v14 = sub_100008884([(PBPasteAuthority *)self isPasteExemptForPasteboard:pasteboardCopy auditTokenInfo:infoCopy]);
  if (v14)
  {
    goto LABEL_5;
  }

  v14 = sub_100008884([(PBPasteAuthority *)self isPasteManageableForPasteboard:pasteboardCopy auditTokenInfo:infoCopy dataOwner:owner]);
  if (v14)
  {
    goto LABEL_5;
  }

  v14 = sub_100008884([(PBPasteAuthority *)self isPasteNativeForPasteboard:pasteboardCopy auditTokenInfo:infoCopy]);
  if (v14)
  {
    goto LABEL_5;
  }

  v15 = mach_continuous_time();
  v14 = sub_100008884([(PBPasteAuthority *)self isPasteTimelyForPasteboard:pasteboardCopy currentTimestamp:v15]);
  if (v14)
  {
    goto LABEL_5;
  }

  if (messageCopy)
  {
    v14 = sub_100008884([(PBPasteAuthority *)self isPasteAuthenticForAuthenticationMessage:messageCopy auditTokenInfo:infoCopy currentTimestamp:v15]);
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v14 = sub_100008884([(PBPasteAuthority *)self isPasteAuthorizedForAuditTokenInfo:infoCopy pasteboard:pasteboardCopy currentTimestamp:v15]);
  if (v14)
  {
    goto LABEL_5;
  }

  if (!messageCopy)
  {
    v14 = sub_100008884(37);
    goto LABEL_5;
  }

  v14 = sub_100008884([(PBPasteAuthority *)self pasteLegibleForPasteboard:pasteboardCopy authenticationMessage:messageCopy auditTokenInfo:infoCopy]);
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