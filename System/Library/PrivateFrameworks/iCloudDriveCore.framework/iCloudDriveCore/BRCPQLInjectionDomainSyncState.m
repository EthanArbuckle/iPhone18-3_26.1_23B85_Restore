@interface BRCPQLInjectionDomainSyncState
+ (id)_getPQLInjectionWithDesiredSyncStates:(unint64_t)a3;
- (BRCPQLInjectionDomainSyncState)initWithDesiredSyncStates:(unint64_t)a3;
@end

@implementation BRCPQLInjectionDomainSyncState

- (BRCPQLInjectionDomainSyncState)initWithDesiredSyncStates:(unint64_t)a3
{
  v4 = [objc_opt_class() _getPQLInjectionWithDesiredSyncStates:a3];
  v7.receiver = self;
  v7.super_class = BRCPQLInjectionDomainSyncState;
  v5 = [(BRCPQLInjectionBase *)&v7 initWithActualInjection:v4];

  return v5;
}

+ (id)_getPQLInjectionWithDesiredSyncStates:(unint64_t)a3
{
  if ((a3 & 0xA) == 0)
  {
    v9 = [MEMORY[0x277D82C18] rawInjection:"1" length:1];
    goto LABEL_15;
  }

  v3 = a3;
  if ((a3 & 8) != 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(item_localsyncupstate = 3 AND NOT EXISTS (SELECT 1 FROM client_uploads WHERE throttle_id = ci.rowid AND throttle_state IN (%d, %d, %d, %d, %d, %d)))", 32, 33, 34, 35, 36, 37];
    if ((v3 & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v6 = 0;
    v7 = v4 != 0;
    goto LABEL_10;
  }

  v4 = 0;
  if ((a3 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(item_localsyncupstate = 4 AND NOT EXISTS (SELECT 1 FROM client_sync_up WHERE throttle_id = ci.rowid AND throttle_state IN (%d, %d)))", 51, 52];
  v6 = v5;
  v7 = v4 != 0;
  if (!v4 || !v5)
  {
LABEL_10:
    if (v7)
    {
      v10 = v4;
    }

    else
    {
      v10 = v6;
    }

    v8 = v10;
    goto LABEL_14;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ OR %@)", v4, v5];
LABEL_14:
  v11 = v8;
  v9 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v8 length:{"UTF8String"), objc_msgSend(v8, "lengthOfBytesUsingEncoding:", 4)}];

LABEL_15:

  return v9;
}

@end