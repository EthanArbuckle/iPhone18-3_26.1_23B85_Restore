@interface CXCallFailureContext
- (id)endedReasonUserInfoForCall:(id)call;
@end

@implementation CXCallFailureContext

- (id)endedReasonUserInfoForCall:(id)call
{
  callCopy = call;
  v5 = +[NSMutableDictionary dictionary];
  title = [(CXCallFailureContext *)self title];
  [v5 setObject:title forKeyedSubscript:TUCallRemoteUnavailableTitle];

  message = [(CXCallFailureContext *)self message];
  v8 = [message length];

  if (v8)
  {
    message2 = [(CXCallFailureContext *)self message];
    displayName = [callCopy displayName];
    v11 = [message2 stringByReplacingOccurrencesOfString:@"<display_name>" withString:displayName];

    [v5 setObject:v11 forKeyedSubscript:TUCallRemoteUnavailableMessage];
  }

  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  if ([(CXCallFailureContext *)self hasCellularSettingsRemediation])
  {
    v14 = TUBundle();
    v15 = [v14 localizedStringForKey:@"CELLULAR_SETTINGS" value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v12 addObject:v15];

    v16 = [NSURL URLWithString:@"prefs:root=MOBILE_DATA_SETTINGS_ID"];
    [v13 addObject:v16];
  }

  if ([(CXCallFailureContext *)self hasWiFiSettingsRemediation])
  {
    v17 = +[FTDeviceSupport sharedInstance];
    supportsWLAN = [v17 supportsWLAN];
    v19 = TUBundle();
    v20 = v19;
    if (supportsWLAN)
    {
      v21 = @"WLAN_SETTINGS";
    }

    else
    {
      v21 = @"WIFI_SETTINGS";
    }

    v22 = [v19 localizedStringForKey:v21 value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v12 addObject:v22];

    v23 = [NSURL URLWithString:@"prefs:root=WIFI"];
    [v13 addObject:v23];
  }

  if ([(CXCallFailureContext *)self hasDateAndTimeSettingsRemediation])
  {
    v24 = TUBundle();
    v25 = [v24 localizedStringForKey:@"SETTINGS" value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v12 addObject:v25];

    v26 = [NSURL URLWithString:@"prefs:root=General&path=DATE_AND_TIME"];
    [v13 addObject:v26];
  }

  if ([(CXCallFailureContext *)self hasLocationSettingsRemediation])
  {
    if ([callCopy isVideo])
    {
      +[IMService facetimeService];
    }

    else
    {
      +[IMService callService];
    }
    v27 = ;
    if (qword_1006ACEE0 != -1)
    {
      sub_10047CE30();
    }

    v28 = off_1006ACED8(v27);
    v29 = TUBundle();
    v30 = [v29 localizedStringForKey:@"SETTINGS" value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v12 addObject:v30];

    uniqueID = [v28 uniqueID];
    v32 = [NSString stringWithFormat:@"prefs:root=FACETIME&path=LOCATION&guid=%@", uniqueID];
    v33 = [NSURL URLWithString:v32];
    [v13 addObject:v33];
  }

  if ([v12 count])
  {
    v34 = [v12 objectAtIndexedSubscript:0];
    [v5 setObject:v34 forKeyedSubscript:TUCallRemoteUnavailableAlternateButton];

    v35 = [v13 objectAtIndexedSubscript:0];
    [v5 setObject:v35 forKeyedSubscript:TUCallRemoteUnavailableAlternateButtonURL];

    if ([v12 count] >= 2)
    {
      v36 = [v12 objectAtIndexedSubscript:1];
      [v5 setObject:v36 forKeyedSubscript:TUCallRemoteUnavailableOtherButton];

      v37 = [v13 objectAtIndexedSubscript:1];
      [v5 setObject:v37 forKeyedSubscript:TUCallRemoteUnavailableOtherButtonURL];
    }
  }

  if ([v5 count])
  {
    v38 = [v5 copy];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end