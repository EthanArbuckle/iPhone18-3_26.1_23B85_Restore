@interface ICSUserAddress
+ (id)ICSStringFromCalendarUser:(int)user;
+ (id)ICSStringFromParticipationStatus:(int)status;
+ (id)ICSStringFromRole:(int)role;
+ (id)ICSStringFromScheduleAgent:(int)agent;
+ (id)ICSStringFromScheduleForceSend:(int)send;
+ (id)ICSStringFromScheduleStatus:(int)status;
+ (int)calendarUserFromICSString:(id)string;
+ (int)participationStatusFromICSString:(id)string;
+ (int)roleFromICSString:(id)string;
+ (int)scheduleAgentFromICSString:(id)string;
+ (int)scheduleForceSendFromICSString:(id)string;
+ (int)scheduleStatusFromICSString:(id)string;
- (BOOL)hasEmailAddress;
- (BOOL)hasPhoneNumber;
- (BOOL)isEmailAddress;
- (BOOL)isHTTPAddress;
- (BOOL)isHTTPSAddress;
- (BOOL)isPhoneNumber;
- (BOOL)rsvp;
- (BOOL)shouldObscureParameter:(id)parameter;
- (BOOL)x_apple_self_invited;
- (ICSUserAddress)initWithEmailAddress:(id)address;
- (ICSUserAddress)initWithPhoneNumber:(id)number;
- (ICSUserAddress)initWithURL:(id)l;
- (NSString)cn;
- (NSString)email;
- (id)displayName;
- (id)emailAddress;
- (id)phoneNumber;
- (id)sanitizeAddressString:(id)string;
- (int)cutype;
- (int)partstat;
- (int)role;
- (int)scheduleAgentWithDefaultValue:(int)value;
- (int)scheduleforcesend;
- (int)schedulestatus;
- (void)fixAddress;
- (void)setAlternateTimeProposal:(id)proposal;
- (void)setCn:(id)cn;
- (void)setCutype:(int)cutype;
- (void)setEmail:(id)email;
- (void)setLikenessDataString:(id)string;
- (void)setPartstat:(int)partstat;
- (void)setRole:(int)role;
- (void)setRsvp:(BOOL)rsvp;
- (void)setScheduleagent:(int)scheduleagent;
- (void)setScheduleforcesend:(int)scheduleforcesend;
- (void)setSchedulestatus:(int)schedulestatus;
- (void)setURL:(id)l;
- (void)setX_apple_inviterName:(id)name;
- (void)setX_apple_self_invited:(BOOL)x_apple_self_invited;
- (void)setX_apple_telephone:(id)x_apple_telephone;
@end

@implementation ICSUserAddress

- (void)fixAddress
{
  value = [(ICSProperty *)self value];
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

+ (int)calendarUserFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"INDIVIDUAL"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"GROUP"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"RESOURCE"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"ROOM"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)participationStatusFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"NEEDS-ACTION"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"ACCEPTED"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"DECLINED"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"TENTATIVE"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"DELEGATED"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"IN-PROCESS"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"X-UNINVITED"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"X-UNDELIVERABLE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)scheduleStatusFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"1.0"])
  {
    v4 = 1;
  }

  else if ([stringCopy hasPrefix:@"1.1"])
  {
    v4 = 2;
  }

  else if ([stringCopy hasPrefix:@"1.2"])
  {
    v4 = 3;
  }

  else if ([stringCopy hasPrefix:@"2.0"])
  {
    v4 = 4;
  }

  else if ([stringCopy hasPrefix:@"2.3"])
  {
    v4 = 5;
  }

  else if ([stringCopy hasPrefix:@"3.7"])
  {
    v4 = 6;
  }

  else if ([stringCopy hasPrefix:@"3.8"])
  {
    v4 = 7;
  }

  else if ([stringCopy hasPrefix:@"5.1"])
  {
    v4 = 8;
  }

  else if ([stringCopy hasPrefix:@"5.2"])
  {
    v4 = 9;
  }

  else if ([stringCopy hasPrefix:@"5.3"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)scheduleAgentFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"CLIENT"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"NONE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)scheduleForceSendFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"REQUEST"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"REPLY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)roleFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"CHAIR"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"OPT-PARTICIPANT"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"NON-PARTICIPANT"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"REQ-PARTICIPANT"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"NON-PARTICIPANT-CHAIR"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)ICSStringFromCalendarUser:(int)user
{
  if ((user - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_27A64C018[user - 1];
  }
}

+ (id)ICSStringFromParticipationStatus:(int)status
{
  if ((status - 1) > 8)
  {
    return 0;
  }

  else
  {
    return off_27A64C040[status - 1];
  }
}

+ (id)ICSStringFromScheduleAgent:(int)agent
{
  v3 = @"NONE";
  if (agent != 2)
  {
    v3 = 0;
  }

  if (agent == 1)
  {
    return @"CLIENT";
  }

  else
  {
    return v3;
  }
}

+ (id)ICSStringFromScheduleStatus:(int)status
{
  if ((status - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_27A64C088[status - 1];
  }
}

+ (id)ICSStringFromScheduleForceSend:(int)send
{
  v3 = @"REPLY";
  if (send != 2)
  {
    v3 = 0;
  }

  if (send == 1)
  {
    return @"REQUEST";
  }

  else
  {
    return v3;
  }
}

+ (id)ICSStringFromRole:(int)role
{
  if ((role - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_27A64C0D8[role - 1];
  }
}

- (ICSUserAddress)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    lCopy = +[ICSUserAddress URLForNoMail];
  }

  v7.receiver = self;
  v7.super_class = ICSUserAddress;
  v5 = [(ICSProperty *)&v7 initWithValue:lCopy type:5021];

  return v5;
}

- (id)sanitizeAddressString:(id)string
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (sanitizeAddressString__onceToken != -1)
  {
    [ICSUserAddress sanitizeAddressString:];
  }

  v5 = stringCopy;
  lowercaseString = [v5 lowercaseString];
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
        if ([lowercaseString hasPrefix:{v13, v17}])
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

- (ICSUserAddress)initWithEmailAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    if (([addressCopy hasPrefix:@"/"] & 1) != 0 || (objc_msgSend(addressCopy, "rangeOfString:", @":"), v5))
    {
      v6 = [(ICSUserAddress *)self sanitizeAddressString:addressCopy];
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6 encodingInvalidCharacters:0];
    }

    else
    {
      [addressCopy rangeOfString:@"@"];
      if (!v10)
      {
        v7 = +[ICSUserAddress URLForNoMail];
        goto LABEL_7;
      }

      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [addressCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      v12 = MEMORY[0x277CCAB50];
      uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
      bitmapRepresentation = [uRLPathAllowedCharacterSet bitmapRepresentation];
      v15 = [v12 characterSetWithBitmapRepresentation:bitmapRepresentation];

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

- (ICSUserAddress)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy length])
  {
    if ([numberCopy rangeOfString:@"tel:" options:9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [numberCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v6 hasPrefix:@"+"])
      {
        v7 = MEMORY[0x277CCAB50];
        uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
        bitmapRepresentation = [uRLPathAllowedCharacterSet bitmapRepresentation];
        v10 = [v7 characterSetWithBitmapRepresentation:bitmapRepresentation];

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
      v6 = [(ICSUserAddress *)self sanitizeAddressString:numberCopy];
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

  email = [(ICSUserAddress *)self email];
  v3 = email != 0;

  return v3;
}

- (BOOL)isEmailAddress
{
  value = [(ICSProperty *)self value];
  scheme = [value scheme];

  if (!scheme)
  {
    return 0;
  }

  value2 = [(ICSProperty *)self value];
  scheme2 = [value2 scheme];
  v7 = [scheme2 caseInsensitiveCompare:@"mailto"] == 0;

  return v7;
}

- (BOOL)isHTTPAddress
{
  value = [(ICSProperty *)self value];
  scheme = [value scheme];

  if (!scheme)
  {
    return 0;
  }

  value2 = [(ICSProperty *)self value];
  scheme2 = [value2 scheme];
  v7 = [scheme2 caseInsensitiveCompare:@"http"] == 0;

  return v7;
}

- (BOOL)isHTTPSAddress
{
  value = [(ICSProperty *)self value];
  scheme = [value scheme];

  if (!scheme)
  {
    return 0;
  }

  value2 = [(ICSProperty *)self value];
  scheme2 = [value2 scheme];
  v7 = [scheme2 caseInsensitiveCompare:@"https"] == 0;

  return v7;
}

- (BOOL)hasPhoneNumber
{
  if ([(ICSUserAddress *)self isPhoneNumber])
  {
    return 1;
  }

  x_apple_telephone = [(ICSUserAddress *)self x_apple_telephone];
  v3 = x_apple_telephone != 0;

  return v3;
}

- (BOOL)isPhoneNumber
{
  value = [(ICSProperty *)self value];
  scheme = [value scheme];

  if (scheme)
  {
    v4 = [scheme caseInsensitiveCompare:@"tel"] == 0;
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
    value = [(ICSProperty *)self value];
    resourceSpecifier = [value resourceSpecifier];
  }

  else
  {
    email = [(ICSUserAddress *)self email];

    if (email)
    {
      resourceSpecifier = [(ICSUserAddress *)self email];
    }

    else
    {
      resourceSpecifier = 0;
    }
  }

  stringByRemovingPercentEscapes = [resourceSpecifier stringByRemovingPercentEscapes];

  return stringByRemovingPercentEscapes;
}

- (id)phoneNumber
{
  if ([(ICSUserAddress *)self isPhoneNumber])
  {
    value = [(ICSProperty *)self value];
    resourceSpecifier = [value resourceSpecifier];
  }

  else
  {
    x_apple_telephone = [(ICSUserAddress *)self x_apple_telephone];

    if (x_apple_telephone)
    {
      resourceSpecifier = [(ICSUserAddress *)self x_apple_telephone];
    }

    else
    {
      resourceSpecifier = 0;
    }
  }

  return resourceSpecifier;
}

- (id)displayName
{
  v3 = [(ICSUserAddress *)self cn];
  if ([v3 length])
  {
    emailAddress = v3;
LABEL_5:
    lastPathComponent = emailAddress;
    goto LABEL_6;
  }

  if ([(ICSUserAddress *)self isEmailAddress])
  {
    emailAddress = [(ICSUserAddress *)self emailAddress];
    goto LABEL_5;
  }

  if ([(ICSUserAddress *)self isHTTPAddress]|| [(ICSUserAddress *)self isHTTPSAddress])
  {
    value = [(ICSProperty *)self value];
    resourceSpecifier = [value resourceSpecifier];
    lastPathComponent = [resourceSpecifier lastPathComponent];
  }

  else
  {
    value = [(ICSProperty *)self value];
    lastPathComponent = [value absoluteString];
  }

LABEL_6:

  return lastPathComponent;
}

- (void)setCn:(id)cn
{
  cnCopy = cn;
  if ([cnCopy rangeOfString:@""] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = cnCopy;
  }

  else
  {
    v5 = [cnCopy stringByReplacingOccurrencesOfString:@" withString:@"'" options:2 range:{0, objc_msgSend(cnCopy, "length"")}];

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

- (void)setCutype:(int)cutype
{
  if (cutype)
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
  longValue = [v4 longValue];

  return longValue;
}

- (void)setPartstat:(int)partstat
{
  if (partstat)
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
  longValue = [v4 longValue];

  return longValue;
}

- (void)setSchedulestatus:(int)schedulestatus
{
  if (schedulestatus)
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
  longValue = [v4 longValue];

  return longValue;
}

- (void)setScheduleagent:(int)scheduleagent
{
  if (scheduleagent)
  {
    v4 = [ICSScheduleAgentParameter scheduleAgentParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"SCHEDULE-AGENT"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"SCHEDULE-AGENT"];
  }
}

- (int)scheduleAgentWithDefaultValue:(int)value
{
  v5 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-AGENT"];

  if (v5)
  {
    v6 = [(ICSProperty *)self parameterValueForName:@"SCHEDULE-AGENT"];
    value = [v6 longValue];
  }

  return value;
}

- (void)setScheduleforcesend:(int)scheduleforcesend
{
  if (scheduleforcesend)
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
  longValue = [v4 longValue];

  return longValue;
}

- (void)setRole:(int)role
{
  if (role)
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
  longValue = [v4 longValue];

  return longValue;
}

- (void)setRsvp:(BOOL)rsvp
{
  if (rsvp)
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
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setX_apple_self_invited:(BOOL)x_apple_self_invited
{
  if (x_apple_self_invited)
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
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setEmail:(id)email
{
  if (email)
  {
    [(ICSProperty *)self setParameterValue:email forName:@"EMAIL"];
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

- (void)setX_apple_telephone:(id)x_apple_telephone
{
  if (x_apple_telephone)
  {
    [(ICSProperty *)self setParameterValue:x_apple_telephone forName:@"X-APPLE-TELEPHONE"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-TELEPHONE"];
  }
}

- (void)setLikenessDataString:(id)string
{
  if (string)
  {
    [(ICSProperty *)self setParameterValue:string forName:@"TO-ALL-LIKENESS-DATA"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"TO-ALL-LIKENESS-DATA"];
  }
}

- (void)setX_apple_inviterName:(id)name
{
  if (name)
  {
    [(ICSProperty *)self setParameterValue:name forName:@"X-APPLE-INVITER-NAME"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-INVITER-NAME"];
  }
}

- (void)setAlternateTimeProposal:(id)proposal
{
  if (proposal)
  {
    [(ICSProperty *)self setParameterValue:proposal forName:@"TO-ALL-PROPOSED-NEW-TIME"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"TO-ALL-PROPOSED-NEW-TIME"];
  }
}

- (BOOL)shouldObscureParameter:(id)parameter
{
  v7 = MEMORY[0x277CBEB98];
  parameterCopy = parameter;
  v4 = [v7 setWithObjects:{@"CUTYPE", @"PARTSTAT", @"ROLE", @"RSVP", @"SCHEDULE-FORCE-SEND", @"SCHEDULE-STATUS", @"SCHEDULE-AGENT", @"X-CALENDARSERVER-DTSTAMP", @"TO-ALL-PROPOSED-NEW-TIME", 0}];
  v5 = [v4 containsObject:parameterCopy];

  return v5 ^ 1;
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    lCopy = +[ICSUserAddress URLForNoMail];
  }

  v5 = lCopy;
  [(ICSProperty *)self setValue:lCopy type:5021];
}

@end