@interface WFAssociationContext
- (NSString)originatorDescription;
- (NSString)stateDescription;
- (WFAssociationContext)initWithNetwork:(id)a3;
- (id)description;
- (id)formattedStartDate;
- (id)networkName;
- (void)setState:(unint64_t)a3;
@end

@implementation WFAssociationContext

- (WFAssociationContext)initWithNetwork:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = WFAssociationContext;
  v6 = [(WFAssociationContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_secondaryScanCompleted = 0;
    v6->_state = 0;
    v6->_originator = 0;
    objc_storeStrong(&v6->_network, a3);
    v8 = [MEMORY[0x277CBEAA8] date];
    associationStart = v7->_associationStart;
    v7->_associationStart = v8;
  }

  return v7;
}

- (void)setState:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_state != a3)
  {
    v5 = WFLogForCategory(5uLL);
    v6 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v5)
    {
      v7 = v5;
      if (os_log_type_enabled(v7, v6))
      {
        state = self->_state;
        if (state > 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_279EBE090[state];
        }

        if (a3 > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_279EBE090[a3];
        }

        v11 = [(WFAssociationContext *)self networkName];
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_273ECD000, v7, v6, "association state changed: <%@> to <%@> for %@", &v13, 0x20u);
      }
    }

    self->_state = a3;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)originatorDescription
{
  originator = self->_originator;
  if (originator > 2)
  {
    return 0;
  }

  else
  {
    return &off_279EBE078[originator]->isa;
  }
}

- (NSString)stateDescription
{
  state = self->_state;
  if (state > 2)
  {
    return 0;
  }

  else
  {
    return &off_279EBE090[state]->isa;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFAssociationContext *)self stateDescription];
  v7 = [(WFAssociationContext *)self originatorDescription];
  v8 = [(WFAssociationContext *)self sectionNameJoined];
  v9 = [(WFAssociationContext *)self formattedStartDate];
  v10 = [(WFAssociationContext *)self networkName];
  v11 = [v3 stringWithFormat:@"<%@ : %p State:'%@' Originator='%@' Section='%@' Started='%@' Network='%@'>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (id)networkName
{
  v2 = [(WFAssociationContext *)self network];
  v3 = [v2 ssid];

  return v3;
}

- (id)formattedStartDate
{
  v2 = MEMORY[0x277CCA968];
  v3 = [(WFAssociationContext *)self associationStart];
  v4 = [v2 localizedStringFromDate:v3 dateStyle:1 timeStyle:3];

  return v4;
}

@end