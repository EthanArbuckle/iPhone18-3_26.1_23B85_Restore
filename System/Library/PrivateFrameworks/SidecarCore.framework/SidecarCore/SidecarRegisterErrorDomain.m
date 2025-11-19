@interface SidecarRegisterErrorDomain
@end

@implementation SidecarRegisterErrorDomain

__CFString *__SidecarRegisterErrorDomain_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if ([v5 isEqualToString:*MEMORY[0x277CCA450]])
  {
    if ([v6 code] == -999)
    {
      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      if (v8)
      {
        v9 = [v8 code];
        v17 = SidecarLocalizedString(@"A miscellaneous error occurred (%ld).", v10, v11, v12, v13, v14, v15, v16, v9);

        goto LABEL_117;
      }
    }

    v19 = [v6 code];
    if (v19 > -302)
    {
      if (v19 > -106)
      {
        if (v19 <= -103)
        {
          if (v19 == -105)
          {
            v27 = @"SidecarErrorServiceExistingSession";
          }

          else if (v19 == -104)
          {
            v27 = @"SidecarErrorServiceRestricted";
          }

          else
          {
            v27 = @"SidecarErrorServiceNotSupported";
          }

          goto LABEL_115;
        }

        switch(v19)
        {
          case -102:
            v27 = @"SidecarErrorServiceNotConnected";
            goto LABEL_115;
          case -101:
            v27 = @"SidecarErrorServiceDisconnected";
            goto LABEL_115;
          case -100:
            v27 = @"SidecarErrorServiceAlreadyInUse";
            goto LABEL_115;
        }

        goto LABEL_114;
      }

      if (v19 > -203)
      {
        switch(v19)
        {
          case -202:
            v27 = @"SidecarErrorDeviceLocked";
            goto LABEL_115;
          case -201:
            v27 = @"SidecarErrorDeviceTimedOut";
            goto LABEL_115;
          case -200:
            v27 = @"SidecarErrorDeviceNotFound";
            goto LABEL_115;
        }

        goto LABEL_114;
      }

      if (v19 == -301)
      {
        v27 = @"SidecarErrorAccountNoD2DEncryption";
        goto LABEL_115;
      }

      if (v19 != -203)
      {
        goto LABEL_114;
      }

      v28 = @"SidecarErrorDeviceWiFiNotEnabled";
    }

    else if (v19 <= -453)
    {
      if (v19 <= -456)
      {
        if (v19 == -457)
        {
          v28 = @"SidecarErrorDisplayRealityDeviceWiFiNotEnabled";
        }

        else
        {
          if (v19 != -456)
          {
            goto LABEL_114;
          }

          v28 = @"SidecarErrorDisplayAWDLRetrograde";
        }
      }

      else
      {
        if (v19 == -455)
        {
          v27 = @"SidecarErrorDisplayAWDLDegraded";
          goto LABEL_115;
        }

        if (v19 != -454)
        {
          v27 = @"SidecarErrorDisplayAirPlayBusy";
          goto LABEL_115;
        }

        v28 = @"SidecarErrorDisplayDeviceWiFiNotEnabled";
      }
    }

    else if (v19 > -403)
    {
      switch(v19)
      {
        case -402:
          v27 = @"SidecarErrorDisplayHostSoftwareNotSupported";
          goto LABEL_115;
        case -303:
          v28 = @"SidecarErrorHostWiFiNotEnabled";
          break;
        case -302:
          v28 = @"SidecarErrorHostIsHotSpot";
          break;
        default:
          goto LABEL_114;
      }
    }

    else
    {
      switch(v19)
      {
        case -452:
          v28 = @"SidecarErrorDisplayHostWiFiNotEnabled";
          break;
        case -451:
          v28 = @"SidecarErrorDisplayHostIsHotSpot";
          break;
        case -403:
          v27 = @"SidecarErrorDisplayDeviceSoftwareNotSupported";
LABEL_115:
          v29 = SidecarLocalizedString(v27, v20, v21, v22, v23, v24, v25, v26, v31);
          goto LABEL_116;
        default:
LABEL_114:
          v31 = v19;
          v27 = @"A miscellaneous error occurred (%ld).";
          goto LABEL_115;
      }
    }

    v29 = SidecarLocalizedWirelessString(v28, v20, v21, v22, v23, v24, v25, v26, v31);
LABEL_116:
    v17 = v29;
    goto LABEL_117;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCA068]])
  {
    v18 = [v6 code];
    v17 = 0;
    if (v18 <= -403)
    {
      if (v18 > -501)
      {
        if (v18 > -454)
        {
          if (v18 > -452)
          {
            if (v18 == -451)
            {
              v17 = @"SidecarErrorDisplayHostIsHotSpot";
            }

            else if (v18 == -403)
            {
              v17 = @"SidecarErrorDisplayDeviceSoftwareNotSupported";
            }
          }

          else if (v18 == -453)
          {
            v17 = @"SidecarErrorDisplayAirPlayBusy";
          }

          else
          {
            v17 = @"SidecarErrorDisplayHostWiFiNotEnabled";
          }
        }

        else if (v18 > -456)
        {
          if (v18 == -455)
          {
            v17 = @"SidecarErrorDisplayAWDLDegraded";
          }

          else
          {
            v17 = @"SidecarErrorDisplayDeviceWiFiNotEnabled";
          }
        }

        else if (v18 == -500)
        {
          v17 = @"SidecarErrorVirtualDisplayBusy";
        }

        else if (v18 == -456)
        {
          v17 = @"SidecarErrorDisplayAWDLRetrograde";
        }
      }

      else if (v18 > -1001)
      {
        if (v18 > -503)
        {
          if (v18 == -502)
          {
            v17 = @"SidecarErrorVirtualDisplayInvalid";
          }

          else
          {
            v17 = @"SidecarErrorVirtualDisplayFailed";
          }
        }

        else if (v18 == -1000)
        {
          v17 = @"SidecarErrorEntitlementMissing";
        }

        else if (v18 == -999)
        {
          v17 = @"SidecarErrorGenericError";
        }
      }

      else if (v18 > -1011)
      {
        if (v18 == -1010)
        {
          v17 = @"SidecarErrorProtocolError";
        }

        else if (v18 == -1001)
        {
          v17 = @"SidecarErrorInvalidArgument";
        }
      }

      else if (v18 == -1020)
      {
        v17 = @"SidecarErrorSessionNotFound";
      }

      else if (v18 == -1011)
      {
        v17 = @"SidecarErrorEncodingFailed";
      }
    }

    else if (v18 <= -203)
    {
      if (v18 > -302)
      {
        if (v18 > -205)
        {
          if (v18 == -204)
          {
            v17 = @"SidecarErrorDeviceUSBConnect";
          }

          else
          {
            v17 = @"SidecarErrorDeviceWiFiNotEnabled";
          }
        }

        else if (v18 == -301)
        {
          v17 = @"SidecarErrorAccountNoD2DEncryption";
        }

        else if (v18 == -205)
        {
          v17 = @"SidecarErrorDeviceUSBDisconnect";
        }
      }

      else if (v18 > -304)
      {
        if (v18 == -303)
        {
          v17 = @"SidecarErrorHostWiFiNotEnabled";
        }

        else
        {
          v17 = @"SidecarErrorHostIsHotSpot";
        }
      }

      else if (v18 == -402)
      {
        v17 = @"SidecarErrorDisplayHostSoftwareNotSupported";
      }

      else if (v18 == -401)
      {
        v17 = @"SidecarErrorDisplayVideoStreamInterrupted";
      }
    }

    else if (v18 <= -105)
    {
      if (v18 > -201)
      {
        if (v18 == -200)
        {
          v17 = @"SidecarErrorDeviceNotFound";
        }

        else if (v18 == -105)
        {
          v17 = @"SidecarErrorServiceExistingSession";
        }
      }

      else if (v18 == -202)
      {
        v17 = @"SidecarErrorDeviceLocked";
      }

      else
      {
        v17 = @"SidecarErrorDeviceTimedOut";
      }
    }

    else if (v18 <= -103)
    {
      if (v18 == -104)
      {
        v17 = @"SidecarErrorServiceRestricted";
      }

      else
      {
        v17 = @"SidecarErrorServiceNotSupported";
      }
    }

    else
    {
      switch(v18)
      {
        case -102:
          v17 = @"SidecarErrorServiceNotConnected";
          break;
        case -101:
          v17 = @"SidecarErrorServiceDisconnected";
          break;
        case -100:
          v17 = @"SidecarErrorServiceAlreadyInUse";
          break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_117:

  return v17;
}

@end