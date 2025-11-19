@interface WiFiUsageWatchdogDetails
- (WiFiUsageWatchdogDetails)initWithInterfaceName:(id)a3 andConnectedBss:(id)a4;
- (id)reportedReasonString;
- (id)reportedSubreasonString;
- (int)reportedReason;
- (int)reportedSubreason;
@end

@implementation WiFiUsageWatchdogDetails

- (WiFiUsageWatchdogDetails)initWithInterfaceName:(id)a3 andConnectedBss:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = WiFiUsageWatchdogDetails;
    v8 = [(WiFiUsageWatchdogDetails *)&v12 init];
    [(WiFiUsageWatchdogDetails *)v8 setInterfaceName:v6];
    [(WiFiUsageWatchdogDetails *)v8 setConnectedBss:v7];
    v9 = [MEMORY[0x277CBEAA8] date];
    [(WiFiUsageWatchdogDetails *)v8 setCreatedAt:v9];

    self = v8;
    v10 = self;
  }

  else
  {
    NSLog(&cfstr_SNullInterface.isa, "[WiFiUsageWatchdogDetails initWithInterfaceName:andConnectedBss:]");
    v10 = 0;
  }

  return v10;
}

- (int)reportedReason
{
  result = self->_availableReason;
  if (!result)
  {
    return self->_unavailableReason;
  }

  return result;
}

- (int)reportedSubreason
{
  result = self->_availableSubreason;
  if (!result)
  {
    return self->_unavailableSubreason;
  }

  return result;
}

- (id)reportedReasonString
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v3 = [(WiFiUsageWatchdogDetails *)self availableReasonString];
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    Apple80211Open();
    [(WiFiUsageWatchdogDetails *)self availableReason];
    if (LOBYTE(v12[0]))
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v12];
    }

    else
    {
      if (![(WiFiUsageWatchdogDetails *)self availableSubreason])
      {
LABEL_6:
        if (!v4)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v5 = [(WiFiUsageWatchdogDetails *)self unavailableReasonString];
    }

    v6 = v5;

    v4 = v6;
    goto LABEL_6;
  }

LABEL_7:
  if ([v4 length])
  {
    goto LABEL_12;
  }

LABEL_8:
  [(WiFiUsageWatchdogDetails *)self unavailableReason];
  if (LOBYTE(v12[0]))
  {
LABEL_9:
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v12];
LABEL_10:
    v8 = v7;

    v4 = v8;
    goto LABEL_11;
  }

  if ([(WiFiUsageWatchdogDetails *)self unavailableSubreason])
  {
    if (LOBYTE(v12[0]))
    {
      goto LABEL_9;
    }

    if ([(WiFiUsageWatchdogDetails *)self availableReason])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=0x%x:0x%x", -[WiFiUsageWatchdogDetails availableReason](self, "availableReason"), -[WiFiUsageWatchdogDetails availableSubreason](self, "availableSubreason")];
      goto LABEL_10;
    }
  }

LABEL_11:
  if (v4)
  {
LABEL_12:
    if ([v4 length])
    {
      goto LABEL_15;
    }
  }

  if ([(WiFiUsageWatchdogDetails *)self availableReason])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=0x%x:0x%x", -[WiFiUsageWatchdogDetails unavailableReason](self, "unavailableReason"), -[WiFiUsageWatchdogDetails unavailableSubreason](self, "unavailableSubreason")];

    v4 = v9;
  }

LABEL_15:
  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)reportedSubreasonString
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  Apple80211Open();
  [(WiFiUsageWatchdogDetails *)self availableSubreason];
  v3 = [(WiFiUsageWatchdogDetails *)self unavailableReasonString];

  if (!v3 || (-[WiFiUsageWatchdogDetails unavailableReasonString](self, "unavailableReasonString"), v4 = objc_claimAutoreleasedReturnValue(), (v3 = v4) == 0) || ![v4 length])
  {
    [(WiFiUsageWatchdogDetails *)self unavailableReason];
    if (LOBYTE(v10[0]))
    {
      v5 = MEMORY[0x277CCACA8];
      goto LABEL_6;
    }

    if ([(WiFiUsageWatchdogDetails *)self unavailableSubreason])
    {
      if (!LOBYTE(v10[0]))
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown=0x%x:0x%x", -[WiFiUsageWatchdogDetails unavailableReason](self, "unavailableReason"), -[WiFiUsageWatchdogDetails unavailableSubreason](self, "unavailableSubreason")];
        goto LABEL_7;
      }

      v5 = MEMORY[0x277CCACA8];
LABEL_6:
      v6 = [[v5 alloc] initWithCString:v10];
LABEL_7:
      v7 = v6;

      v3 = v7;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

@end