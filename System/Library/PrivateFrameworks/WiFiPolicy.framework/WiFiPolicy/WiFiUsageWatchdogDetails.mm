@interface WiFiUsageWatchdogDetails
- (WiFiUsageWatchdogDetails)initWithInterfaceName:(id)name andConnectedBss:(id)bss;
- (id)reportedReasonString;
- (id)reportedSubreasonString;
- (int)reportedReason;
- (int)reportedSubreason;
@end

@implementation WiFiUsageWatchdogDetails

- (WiFiUsageWatchdogDetails)initWithInterfaceName:(id)name andConnectedBss:(id)bss
{
  nameCopy = name;
  bssCopy = bss;
  if (nameCopy)
  {
    v12.receiver = self;
    v12.super_class = WiFiUsageWatchdogDetails;
    v8 = [(WiFiUsageWatchdogDetails *)&v12 init];
    [(WiFiUsageWatchdogDetails *)v8 setInterfaceName:nameCopy];
    [(WiFiUsageWatchdogDetails *)v8 setConnectedBss:bssCopy];
    date = [MEMORY[0x277CBEAA8] date];
    [(WiFiUsageWatchdogDetails *)v8 setCreatedAt:date];

    self = v8;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_SNullInterface.isa, "[WiFiUsageWatchdogDetails initWithInterfaceName:andConnectedBss:]");
    selfCopy = 0;
  }

  return selfCopy;
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
  availableReasonString = [(WiFiUsageWatchdogDetails *)self availableReasonString];
  v4 = availableReasonString;
  if (!availableReasonString || ![availableReasonString length])
  {
    Apple80211Open();
    [(WiFiUsageWatchdogDetails *)self availableReason];
    if (LOBYTE(v12[0]))
    {
      unavailableReasonString = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v12];
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

      unavailableReasonString = [(WiFiUsageWatchdogDetails *)self unavailableReasonString];
    }

    v6 = unavailableReasonString;

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
  unavailableReasonString = [(WiFiUsageWatchdogDetails *)self unavailableReasonString];

  if (!unavailableReasonString || (-[WiFiUsageWatchdogDetails unavailableReasonString](self, "unavailableReasonString"), v4 = objc_claimAutoreleasedReturnValue(), (unavailableReasonString = v4) == 0) || ![v4 length])
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

      unavailableReasonString = v7;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return unavailableReasonString;
}

@end