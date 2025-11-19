@interface SURollbackSuggestionInfo
- (SURollbackSuggestionInfo)init;
- (SURollbackSuggestionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SURollbackSuggestionInfo

- (SURollbackSuggestionInfo)init
{
  v7.receiver = self;
  v7.super_class = SURollbackSuggestionInfo;
  v2 = [(SURollbackSuggestionInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    clientIdentifier = v2->_clientIdentifier;
    v2->_clientIdentifier = 0;

    responsibleProcessesInfo = v3->_responsibleProcessesInfo;
    v3->_responsibleProcessesInfo = 0;

    v3->_suggestionReason = 0;
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  clientIdentifier = self->_clientIdentifier;
  responsibleProcessesInfo = self->_responsibleProcessesInfo;
  v5 = SUStringFromRollbackSuggestionReasonType(self->_suggestionReason);
  v6 = [v2 stringWithFormat:@"\n        ClientIdentifier: %@\n        responsibleProcessesInfo: %@\n        Suggestion Reason: %@\n", clientIdentifier, responsibleProcessesInfo, v5];

  return v6;
}

- (SURollbackSuggestionInfo)initWithCoder:(id)a3
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SURollbackSuggestionInfo;
  v5 = [(SURollbackSuggestionInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientIdentifier"];
    [(SURollbackSuggestionInfo *)v5 setClientIdentifier:v6];

    v7 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"responsibleProcessesInfo"];
    [(SURollbackSuggestionInfo *)v5 setResponsibleProcessesInfo:v10];

    -[SURollbackSuggestionInfo setSuggestionReason:](v5, "setSuggestionReason:", [v4 decodeIntForKey:@"RollbackSuggestionReason"]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SURollbackSuggestionInfo *)self clientIdentifier];
  [v6 encodeObject:v4 forKey:@"ClientIdentifier"];

  v5 = [(SURollbackSuggestionInfo *)self responsibleProcessesInfo];
  [v6 encodeObject:v5 forKey:@"responsibleProcessesInfo"];

  [v6 encodeInteger:-[SURollbackSuggestionInfo suggestionReason](self forKey:{"suggestionReason"), @"RollbackSuggestionReason"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SURollbackSuggestionInfo);
  v5 = [(SURollbackSuggestionInfo *)self clientIdentifier];
  [(SURollbackSuggestionInfo *)v4 setClientIdentifier:v5];

  v6 = [(SURollbackSuggestionInfo *)self responsibleProcessesInfo];
  [(SURollbackSuggestionInfo *)v4 setResponsibleProcessesInfo:v6];

  [(SURollbackSuggestionInfo *)v4 setSuggestionReason:[(SURollbackSuggestionInfo *)self suggestionReason]];
  return v4;
}

@end