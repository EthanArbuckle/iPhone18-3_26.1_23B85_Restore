@interface BRCProblemReport
- (BOOL)shouldResetAfterFixingState;
- (BRCProblemReport)init;
- (BRCProblemReport)initWithCoder:(id)a3;
- (BRCProblemReport)initWithProblemReport:(id)a3;
- (NSSet)effectedRecordNames;
- (NSString)effectiveProblemMessage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)_effectiveProblemType;
- (int)_priorityForProblemType:(int)a3;
- (int)_zoneStateForProblemType:(int)a3;
- (void)_addProblem:(id)a3;
- (void)effectiveProblemMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCProblemReport

- (BRCProblemReport)init
{
  v6.receiver = self;
  v6.super_class = BRCProblemReport;
  v2 = [(BRCProblemReport *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    problems = v2->_problems;
    v2->_problems = v3;

    v2->_state = 0;
  }

  return v2;
}

- (BRCProblemReport)initWithProblemReport:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BRCProblemReport;
  v5 = [(BRCProblemReport *)&v9 init];
  if (v5)
  {
    v6 = [*(v4 + 1) mutableCopy];
    problems = v5->_problems;
    v5->_problems = v6;

    v5->_state = *(v4 + 5);
    v5->_needsSyncUp = *(v4 + 16);
    objc_storeStrong(&v5->_pendingRequestID, *(v4 + 3));
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithProblemReport:self];
}

- (BRCProblemReport)initWithCoder:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BRCProblemReport;
  v5 = [(BRCProblemReport *)&v16 init];
  if (v5)
  {
    v5->_state = [v4 decodeInt32ForKey:@"state"];
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v8 mutableCopy];

    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"problems"];
    problems = v5->_problems;
    v5->_problems = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingRequestID"];
    pendingRequestID = v5->_pendingRequestID;
    v5->_pendingRequestID = v12;

    v5->_needsSyncUp = [v4 decodeBoolForKey:@"needsSync"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInt32:state forKey:@"state"];
  [v5 encodeObject:self->_problems forKey:@"problems"];
  [v5 encodeObject:self->_pendingRequestID forKey:@"pendingRequestID"];
  [v5 encodeBool:self->_needsSyncUp forKey:@"needsSync"];
}

- (int)_zoneStateForProblemType:(int)a3
{
  if (a3 > 0x13)
  {
    return 0;
  }

  else
  {
    return dword_2241AC050[a3];
  }
}

- (int)_priorityForProblemType:(int)a3
{
  if (a3 > 0x13)
  {
    return -99;
  }

  else
  {
    return dword_2241AC0A0[a3];
  }
}

- (int)_effectiveProblemType
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(NSMutableDictionary *)self->_problems allKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    v8 = -100;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = -[BRCProblemReport _priorityForProblemType:](self, "_priorityForProblemType:", [v10 intValue]);
        if (v11 > v8)
        {
          v12 = v11;
          v6 = [v10 intValue];
          v8 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSString)effectiveProblemMessage
{
  v2 = @"dead parent";
  switch([(BRCProblemReport *)self _effectiveProblemType])
  {
    case 1:
      break;
    case 2:
      v2 = @"missing root";
      break;
    case 3:
      v2 = @"live children";
      break;
    case 4:
      v2 = @"missing content";
      break;
    case 5:
      v2 = @"cant save (missing structure?)";
      break;
    case 6:
      v2 = @"simulated (partial)";
      break;
    case 7:
      v2 = @"simulated (broken)";
      break;
    case 8:
      v2 = @"item parented to a document";
      break;
    case 9:
      v2 = @"package with corrupt indices";
      break;
    case 0xA:
      v2 = @"share without root record";
      break;
    case 0xB:
      v2 = @"cant save (missing parent)";
      break;
    case 0xC:
      v2 = @"pcs decryption";
      break;
    case 0xD:
      v2 = @"root record missing shareID but share exists";
      break;
    case 0xE:
      v2 = @"sync down stuck";
      break;
    case 0xF:
      v2 = @"sync up stuck";
      break;
    case 0x10:
      v2 = @"upload stuck";
      break;
    case 0x11:
      v2 = @"download stuck";
      break;
    case 0x12:
      v2 = @"apply stuck";
      break;
    case 0x13:
      v3 = MEMORY[0x277CCACA8];
      v4 = [BRCUserDefaults defaultsForMangledID:0];
      v5 = [v4 healthZoneMaxNumberOfResets];
      v6 = [BRCUserDefaults defaultsForMangledID:0];
      [v6 healthZoneTimeIntervalForMaxNumberOfResets];
      v2 = [v3 stringWithFormat:@"zone resetted more than %lu times in %f seconds", v5, v7];

      break;
    default:
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(BRCProblemReport *)v8 effectiveProblemMessage];
      }

      v2 = @"unknown";
      break;
  }

  return v2;
}

- (NSSet)effectedRecordNames
{
  problems = self->_problems;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{-[BRCProblemReport _effectiveProblemType](self, "_effectiveProblemType")}];
  v4 = [(NSMutableDictionary *)problems objectForKeyedSubscript:v3];
  v5 = [v4 effectedRecordNames];

  return v5;
}

- (void)_addProblem:(id)a3
{
  v10 = a3;
  v4 = -[BRCProblemReport _zoneStateForProblemType:](self, "_zoneStateForProblemType:", [v10 type]);
  if (v4 > self->_state)
  {
    self->_state = v4;
    self->_needsSyncUp = 1;
  }

  problems = self->_problems;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "type")}];
  v7 = [(NSMutableDictionary *)problems objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 mergeWithProblem:v10];
  }

  else
  {
    v8 = self->_problems;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "type")}];
    [(NSMutableDictionary *)v8 setObject:v10 forKeyedSubscript:v9];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BRCProblemReport *)self effectiveProblemMessage];
  v5 = [(BRCProblemReport *)self needsSyncUp];
  v6 = [(BRCProblemReport *)self _zoneStateForProblemType:[(BRCProblemReport *)self _effectiveProblemType]];
  if (v6 > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_2785064E0[v6];
  }

  if (v5)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  pendingRequestID = self->_pendingRequestID;
  v10 = [(BRCProblemReport *)self effectedRecordNames];
  v11 = [v3 stringWithFormat:@"problem{msg:%@, needs-sync:%@, zone-state:%@, pending-request:%@, records:%@}", v4, v8, v7, pendingRequestID, v10];

  return v11;
}

- (BOOL)shouldResetAfterFixingState
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSMutableDictionary *)self->_problems allKeys];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [BRCUserDefaults defaultsForMangledID:0];
        v8 = [v7 healthErrorsForReset];
        LOBYTE(v6) = [v8 containsObject:v6];

        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)effectiveProblemMessage
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown effective problem type%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end