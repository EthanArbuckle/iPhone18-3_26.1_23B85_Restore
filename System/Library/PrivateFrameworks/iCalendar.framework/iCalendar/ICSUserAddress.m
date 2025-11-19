@interface ICSUserAddress
+ (id)ICSStringFromCalendarUser:(int)a3;
+ (id)ICSStringFromParticipationStatus:(int)a3;
+ (id)ICSStringFromRole:(int)a3;
+ (id)ICSStringFromScheduleAgent:(int)a3;
+ (id)ICSStringFromScheduleForceSend:(int)a3;
+ (id)ICSStringFromScheduleStatus:(int)a3;
+ (int)calendarUserFromICSString:(id)a3;
+ (int)participationStatusFromICSString:(id)a3;
+ (int)roleFromICSString:(id)a3;
+ (int)scheduleAgentFromICSString:(id)a3;
+ (int)scheduleForceSendFromICSString:(id)a3;
+ (int)scheduleStatusFromICSString:(id)a3;
- (BOOL)hasEmailAddress;
- (BOOL)hasPhoneNumber;
- (BOOL)isEmailAddress;
- (BOOL)isHTTPAddress;
- (BOOL)isHTTPSAddress;
- (BOOL)isPhoneNumber;
- (BOOL)rsvp;
- (BOOL)shouldObscureParameter:(id)a3;
- (BOOL)x_apple_self_invited;
- (ICSUserAddress)initWithEmailAddress:(id)a3;
- (ICSUserAddress)initWithPhoneNumber:(id)a3;
- (ICSUserAddress)initWithURL:(id)a3;
- (NSString)cn;
- (NSString)email;
- (id)displayName;
- (id)emailAddress;
- (id)phoneNumber;
- (id)sanitizeAddressString:(id)a3;
- (int)cutype;
- (int)partstat;
- (int)role;
- (int)scheduleAgentWithDefaultValue:(int)a3;
- (int)scheduleforcesend;
- (int)schedulestatus;
- (void)fixAddress;
- (void)setAlternateTimeProposal:(id)a3;
- (void)setCn:(id)a3;
- (void)setCutype:(int)a3;
- (void)setEmail:(id)a3;
- (void)setLikenessDataString:(id)a3;
- (void)setPartstat:(int)a3;
- (void)setRole:(int)a3;
- (void)setRsvp:(BOOL)a3;
- (void)setScheduleagent:(int)a3;
- (void)setScheduleforcesend:(int)a3;
- (void)setSchedulestatus:(int)a3;
- (void)setURL:(id)a3;
- (void)setX_apple_inviterName:(id)a3;
- (void)setX_apple_self_invited:(BOOL)a3;
- (void)setX_apple_telephone:(id)a3;
@end

@implementation ICSUserAddress

- (void)fixAddress
{
  v3 = [(ICSProperty *)self value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = +[ICSUserAddress URLForNoMail];
    [(ICSProperty *)self setValue:v5 type:5021];
  }

  v6 = [(ICSProperty *)self parameterValueForName:@"RSVP"];

  if (v6)
  {
    v7 = [(ICSProperty *)self parameterValueForName:@"RSVP"];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"RSVP"];
    }
  }

  v9 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-FORCE-SEND"];

  if (v9)
  {
    v10 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-FORCE-SEND"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if ((v11 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-FORCE-SEND"];
    }
  }

  v12 = [(ICSProperty *)self parameterValueForName:@"CN"];

  if (v12)
  {
    v13 = [(ICSUserAddress *)self cn];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"CN"];
    }
  }

  v15 = [(ICSProperty *)self parameterValueForName:@"CUTYPE"];

  if (v15)
  {
    v16 = [(ICSProperty *)self parameterValueForName:@"CUTYPE"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"CUTYPE"];
    }
  }

  v18 = [(ICSProperty *)self parameterValueForName:@"PARTSTAT"];

  if (v18)
  {
    v19 = [(ICSProperty *)self parameterValueForName:@"PARTSTAT"];
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if ((v20 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"PARTSTAT"];
    }
  }

  v21 = [(ICSProperty *)self parameterValueForName:@"X-CALENDARSERVER-DTSTAMP"];

  if (v21)
  {
    v22 = [(ICSProperty *)self parameterValueForName:@"X-CALENDARSERVER-DTSTAMP"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"X-CALENDARSERVER-DTSTAMP"];
    }
  }

  v24 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-STATUS"];

  if (v24)
  {
    v25 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-STATUS"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if ((v26 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-STATUS"];
    }
  }

  v27 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-AGENT"];

  if (v27)
  {
    v28 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-AGENT"];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-AGENT"];
    }
  }

  v30 = [(ICSProperty *)self parameterValueForName:@"ROLE"];

  if (v30)
  {
    v31 = [(ICSProperty *)self parameterValueForName:@"ROLE"];
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();

    if ((v32 & 1) == 0)
    {
      [(ICSProperty *)self removeParameterValueForName:@"ROLE"];
    }
  }

  v33 = [(ICSProperty *)self parameterValueForName:@"RELTYPE"];

  if (v33)
  {
    v34 = [(ICSProperty *)self parameterValueForName:@"RELTYPE"];
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();

    if ((v35 & 1) == 0)
    {

      [(ICSProperty *)self removeParameterValueForName:@"RELTYPE"];
    }
  }
}

+ (int)calendarUserFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INDIVIDUAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GROUP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RESOURCE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ROOM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)participationStatusFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NEEDS-ACTION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ACCEPTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DECLINED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TENTATIVE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DELEGATED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"COMPLETED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"IN-PROCESS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"X-UNINVITED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"X-UNDELIVERABLE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)scheduleStatusFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"1.0"])
  {
    v4 = 1;
  }

  else if ([v3 hasPrefix:@"1.1"])
  {
    v4 = 2;
  }

  else if ([v3 hasPrefix:@"1.2"])
  {
    v4 = 3;
  }

  else if ([v3 hasPrefix:@"2.0"])
  {
    v4 = 4;
  }

  else if ([v3 hasPrefix:@"2.3"])
  {
    v4 = 5;
  }

  else if ([v3 hasPrefix:@"3.7"])
  {
    v4 = 6;
  }

  else if ([v3 hasPrefix:@"3.8"])
  {
    v4 = 7;
  }

  else if ([v3 hasPrefix:@"5.1"])
  {
    v4 = 8;
  }

  else if ([v3 hasPrefix:@"5.2"])
  {
    v4 = 9;
  }

  else if ([v3 hasPrefix:@"5.3"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)scheduleAgentFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CLIENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)scheduleForceSendFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"REQUEST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REPLY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)roleFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CHAIR"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OPT-PARTICIPANT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NON-PARTICIPANT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"REQ-PARTICIPANT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NON-PARTICIPANT-CHAIR"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ICSStringFromCalendarUser:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_27A64C018[a3 - 1];
  }
}

+ (id)ICSStringFromParticipationStatus:(int)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_27A64C040[a3 - 1];
  }
}

+ (id)ICSStringFromScheduleAgent:(int)a3
{
  v3 = @"NONE";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"CLIENT";
  }

  else
  {
    return v3;
  }
}

+ (id)ICSStringFromScheduleStatus:(int)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_27A64C088[a3 - 1];
  }
}

+ (id)ICSStringFromScheduleForceSend:(int)a3
{
  v3 = @"REPLY";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"REQUEST";
  }

  else
  {
    return v3;
  }
}

+ (id)ICSStringFromRole:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_27A64C0D8[a3 - 1];
  }
}

- (ICSUserAddress)initWithURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[ICSUserAddress URLForNoMail];
  }

  v7.receiver = self;
  v7.super_class = ICSUserAddress;
  v5 = [(ICSProperty *)&v7 initWithValue:v4 type:5021];

  return v5;
}

- (id)sanitizeAddressString:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (sanitizeAddressString__onceToken != -1)
  {
    [ICSUserAddress sanitizeAddressString:];
  }

  v5 = v4;
  v6 = [v5 lowercaseString];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = sanitizeAddressString__invalidIndexPrefixes;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v9 = v5;
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v6 hasPrefix:{v13, v17}])
        {
          v14 = [v5 substringFromIndex:{objc_msgSend(v13, "length") >> 1}];

          v9 = [(ICSUserAddress *)self sanitizeAddressString:v14];

          goto LABEL_13;
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v9 = v5;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

void __40__ICSUserAddress_sanitizeAddressString___block_invoke()
{
  v0 = sanitizeAddressString__invalidIndexPrefixes;
  sanitizeAddressString__invalidIndexPrefixes = &unk_288428308;
}

- (ICSUserAddress)initWithEmailAddress:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if (([v4 hasPrefix:@"/"] & 1) != 0 || (objc_msgSend(v4, "rangeOfString:", @":"), v5))
    {
      v6 = [(ICSUserAddress *)self sanitizeAddressString:v4];
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6 encodingInvalidCharacters:0];
    }

    else
    {
      [v4 rangeOfString:@"@"];
      if (!v10)
      {
        v7 = +[ICSUserAddress URLForNoMail];
        goto LABEL_7;
      }

      v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [v4 stringByTrimmingCharactersInSet:v11];

      v12 = MEMORY[0x277CCAB50];
      v13 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      v14 = [v13 bitmapRepresentation];
      v15 = [v12 characterSetWithBitmapRepresentation:v14];

      v16 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v15];
      v17 = MEMORY[0x277CBEBC0];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", v16];
      v7 = [v17 URLWithString:v18 encodingInvalidCharacters:0];
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_7:
  v8 = [(ICSUserAddress *)self initWithURL:v7];

  return v8;
}

- (ICSUserAddress)initWithPhoneNumber:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([v4 rangeOfString:@"tel:" options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [v4 stringByTrimmingCharactersInSet:v5];

      if ([v6 hasPrefix:@"+"])
      {
        v7 = MEMORY[0x277CCAB50];
        v8 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
        v9 = [v8 bitmapRepresentation];
        v10 = [v7 characterSetWithBitmapRepresentation:v9];

        v11 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v10];
        v12 = MEMORY[0x277CBEBC0];
        v13 = [@"tel:" stringByAppendingString:v11];
        v14 = [v12 URLWithString:v13 encodingInvalidCharacters:0];

LABEL_9:
        goto LABEL_10;
      }

      v15 = +[ICSUserAddress URLForNoMail];
    }

    else
    {
      v6 = [(ICSUserAddress *)self sanitizeAddressString:v4];
      v15 = [MEMORY[0x277CBEBC0] URLWithString:v6 encodingInvalidCharacters:0];
    }

    v14 = v15;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:
  v16 = [(ICSUserAddress *)self initWithURL:v14];

  return v16;
}

- (BOOL)hasEmailAddress
{
  if ([(ICSUserAddress *)self isEmailAddress])
  {
    return 1;
  }

  v4 = [(ICSUserAddress *)self email];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)isEmailAddress
{
  v3 = [(ICSProperty *)self value];
  v4 = [v3 scheme];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ICSProperty *)self value];
  v6 = [v5 scheme];
  v7 = [v6 caseInsensitiveCompare:@"mailto"] == 0;

  return v7;
}

- (BOOL)isHTTPAddress
{
  v3 = [(ICSProperty *)self value];
  v4 = [v3 scheme];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ICSProperty *)self value];
  v6 = [v5 scheme];
  v7 = [v6 caseInsensitiveCompare:@"http"] == 0;

  return v7;
}

- (BOOL)isHTTPSAddress
{
  v3 = [(ICSProperty *)self value];
  v4 = [v3 scheme];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ICSProperty *)self value];
  v6 = [v5 scheme];
  v7 = [v6 caseInsensitiveCompare:@"https"] == 0;

  return v7;
}

- (BOOL)hasPhoneNumber
{
  if ([(ICSUserAddress *)self isPhoneNumber])
  {
    return 1;
  }

  v4 = [(ICSUserAddress *)self x_apple_telephone];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)isPhoneNumber
{
  v2 = [(ICSProperty *)self value];
  v3 = [v2 scheme];

  if (v3)
  {
    v4 = [v3 caseInsensitiveCompare:@"tel"] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)emailAddress
{
  if ([(ICSUserAddress *)self isEmailAddress])
  {
    v3 = [(ICSProperty *)self value];
    v4 = [v3 resourceSpecifier];
  }

  else
  {
    v5 = [(ICSUserAddress *)self email];

    if (v5)
    {
      v4 = [(ICSUserAddress *)self email];
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = [v4 stringByRemovingPercentEscapes];

  return v6;
}

- (id)phoneNumber
{
  if ([(ICSUserAddress *)self isPhoneNumber])
  {
    v3 = [(ICSProperty *)self value];
    v4 = [v3 resourceSpecifier];
  }

  else
  {
    v5 = [(ICSUserAddress *)self x_apple_telephone];

    if (v5)
    {
      v4 = [(ICSUserAddress *)self x_apple_telephone];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)displayName
{
  v3 = [(ICSUserAddress *)self cn];
  if ([v3 length])
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if ([(ICSUserAddress *)self isEmailAddress])
  {
    v4 = [(ICSUserAddress *)self emailAddress];
    goto LABEL_5;
  }

  if ([(ICSUserAddress *)self isHTTPAddress]|| [(ICSUserAddress *)self isHTTPSAddress])
  {
    v7 = [(ICSProperty *)self value];
    v8 = [v7 resourceSpecifier];
    v5 = [v8 lastPathComponent];
  }

  else
  {
    v7 = [(ICSProperty *)self value];
    v5 = [v7 absoluteString];
  }

LABEL_6:

  return v5;
}

- (void)setCn:(id)a3
{
  v6 = a3;
  if ([v6 rangeOfString:@""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v6;
  }

  else
  {
    v5 = [v6 stringByReplacingOccurrencesOfString:@" withString:@"'" options:2 range:{0, objc_msgSend(v6, "length"")}];

    v4 = v5;
  }

  v7 = v4;
  [(ICSProperty *)self setParameterValue:v4 forName:@"CN"];
}

- (NSString)cn
{
  v2 = [(ICSProperty *)self parameterValueForName:@"CN"];
  if ([v2 rangeOfString:@"\\""] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"\ withString:@" options:2 range:{0, objc_msgSend(v2, "length")}];

    v2 = v3;
  }

  return v2;
}

- (void)setCutype:(int)a3
{
  if (a3)
  {
    v4 = [ICSCalendarUserParameter calendarUserTypeParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"CUTYPE"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"CUTYPE"];
  }
}

- (int)cutype
{
  v3 = [(ICSProperty *)self parameterValueForName:@"CUTYPE"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"CUTYPE"];
  v5 = [v4 longValue];

  return v5;
}

- (void)setPartstat:(int)a3
{
  if (a3)
  {
    v4 = [ICSParticipationStatusParameter participationStatusParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"PARTSTAT"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"PARTSTAT"];
  }
}

- (int)partstat
{
  v3 = [(ICSProperty *)self parameterValueForName:@"PARTSTAT"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"PARTSTAT"];
  v5 = [v4 longValue];

  return v5;
}

- (void)setSchedulestatus:(int)a3
{
  if (a3)
  {
    v4 = [ICSScheduleStatusParameter scheduleStatusParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"SCHEDULE-STATUS"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-STATUS"];
  }
}

- (int)schedulestatus
{
  v3 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-STATUS"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-STATUS"];
  v5 = [v4 longValue];

  return v5;
}

- (void)setScheduleagent:(int)a3
{
  if (a3)
  {
    v4 = [ICSScheduleAgentParameter scheduleAgentParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"SCHEDULE-AGENT"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-AGENT"];
  }
}

- (int)scheduleAgentWithDefaultValue:(int)a3
{
  v5 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-AGENT"];

  if (v5)
  {
    v6 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-AGENT"];
    a3 = [v6 longValue];
  }

  return a3;
}

- (void)setScheduleforcesend:(int)a3
{
  if (a3)
  {
    v4 = [ICSScheduleForceSendParameter scheduleForceSendParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"SCHEDULE-FORCE-SEND"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-FORCE-SEND"];
  }
}

- (int)scheduleforcesend
{
  v3 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-FORCE-SEND"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-FORCE-SEND"];
  v5 = [v4 longValue];

  return v5;
}

- (void)setRole:(int)a3
{
  if (a3)
  {
    v4 = [ICSRoleParameter roleParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"ROLE"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"ROLE"];
  }
}

- (int)role
{
  v3 = [(ICSProperty *)self parameterValueForName:@"ROLE"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"ROLE"];
  v5 = [v4 longValue];

  return v5;
}

- (void)setRsvp:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSProperty *)self setParameterValue:v4 forName:@"RSVP"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"RSVP"];
  }
}

- (BOOL)rsvp
{
  v3 = [(ICSProperty *)self parameterValueForName:@"RSVP"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"RSVP"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setX_apple_self_invited:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSProperty *)self setParameterValue:v4 forName:@"X-APPLE-SELF-INVITED"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-SELF-INVITED"];
  }
}

- (BOOL)x_apple_self_invited
{
  v3 = [(ICSProperty *)self parameterValueForName:@"X-APPLE-SELF-INVITED"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"X-APPLE-SELF-INVITED"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setEmail:(id)a3
{
  if (a3)
  {
    [(ICSProperty *)self setParameterValue:a3 forName:@"EMAIL"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"EMAIL"];
  }
}

- (NSString)email
{
  v3 = [(ICSProperty *)self parameterValueForName:@"EMAIL"];
  if (!v3)
  {
    v3 = [(ICSProperty *)self parameterValueForName:@"X-CALENDARSERVER-EMAIL"];
  }

  return v3;
}

- (void)setX_apple_telephone:(id)a3
{
  if (a3)
  {
    [(ICSProperty *)self setParameterValue:a3 forName:@"X-APPLE-TELEPHONE"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-TELEPHONE"];
  }
}

- (void)setLikenessDataString:(id)a3
{
  if (a3)
  {
    [(ICSProperty *)self setParameterValue:a3 forName:@"TO-ALL-LIKENESS-DATA"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"TO-ALL-LIKENESS-DATA"];
  }
}

- (void)setX_apple_inviterName:(id)a3
{
  if (a3)
  {
    [(ICSProperty *)self setParameterValue:a3 forName:@"X-APPLE-INVITER-NAME"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-INVITER-NAME"];
  }
}

- (void)setAlternateTimeProposal:(id)a3
{
  if (a3)
  {
    [(ICSProperty *)self setParameterValue:a3 forName:@"TO-ALL-PROPOSED-NEW-TIME"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"TO-ALL-PROPOSED-NEW-TIME"];
  }
}

- (BOOL)shouldObscureParameter:(id)a3
{
  v7 = MEMORY[0x277CBEB98];
  v3 = a3;
  v4 = [v7 setWithObjects:{@"CUTYPE", @"PARTSTAT", @"ROLE", @"RSVP", @"SCHEDULE-FORCE-SEND", @"SCHEDULE-STATUS", @"SCHEDULE-AGENT", @"X-CALENDARSERVER-DTSTAMP", @"TO-ALL-PROPOSED-NEW-TIME", 0}];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (void)setURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[ICSUserAddress URLForNoMail];
  }

  v5 = v4;
  [(ICSProperty *)self setValue:v4 type:5021];
}

@end