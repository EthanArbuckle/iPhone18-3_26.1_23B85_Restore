@interface WFAssociationContext
- (NSString)originatorDescription;
- (NSString)stateDescription;
- (WFAssociationContext)initWithNetwork:(id)network;
- (id)description;
- (id)formattedStartDate;
- (id)networkName;
- (void)setState:(unint64_t)state;
@end

@implementation WFAssociationContext

- (WFAssociationContext)initWithNetwork:(id)network
{
  networkCopy = network;
  v11.receiver = self;
  v11.super_class = WFAssociationContext;
  v6 = [(WFAssociationContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_secondaryScanCompleted = 0;
    v6->_state = 0;
    v6->_originator = 0;
    objc_storeStrong(&v6->_network, network);
    date = [MEMORY[0x277CBEAA8] date];
    associationStart = v7->_associationStart;
    v7->_associationStart = date;
  }

  return v7;
}

- (void)setState:(unint64_t)state
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
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

        if (state > 2)
        {
          v10 = 0;
        }

        else
        {
          v10 = off_279EBE090[state];
        }

        networkName = [(WFAssociationContext *)self networkName];
        v13 = 138412802;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = networkName;
        _os_log_impl(&dword_273ECD000, v7, v6, "association state changed: <%@> to <%@> for %@", &v13, 0x20u);
      }
    }

    self->_state = state;
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
  stateDescription = [(WFAssociationContext *)self stateDescription];
  originatorDescription = [(WFAssociationContext *)self originatorDescription];
  sectionNameJoined = [(WFAssociationContext *)self sectionNameJoined];
  formattedStartDate = [(WFAssociationContext *)self formattedStartDate];
  networkName = [(WFAssociationContext *)self networkName];
  v11 = [v3 stringWithFormat:@"<%@ : %p State:'%@' Originator='%@' Section='%@' Started='%@' Network='%@'>", v5, self, stateDescription, originatorDescription, sectionNameJoined, formattedStartDate, networkName];

  return v11;
}

- (id)networkName
{
  network = [(WFAssociationContext *)self network];
  ssid = [network ssid];

  return ssid;
}

- (id)formattedStartDate
{
  v2 = MEMORY[0x277CCA968];
  associationStart = [(WFAssociationContext *)self associationStart];
  v4 = [v2 localizedStringFromDate:associationStart dateStyle:1 timeStyle:3];

  return v4;
}

@end