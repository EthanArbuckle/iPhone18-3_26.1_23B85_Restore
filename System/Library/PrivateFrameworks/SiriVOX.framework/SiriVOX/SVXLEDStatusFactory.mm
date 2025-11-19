@interface SVXLEDStatusFactory
- (SVXLEDStatusFactory)init;
- (id)createCommandForStatus:(id)a3;
- (id)createStatusForColor:(id)a3;
@end

@implementation SVXLEDStatusFactory

- (id)createStatusForColor:(id)a3
{
  targetLEDSupplier = self->_targetLEDSupplier;
  v4 = a3;
  v5 = [(SVXTargetLEDSupplier *)targetLEDSupplier get];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"individual %d %@", v5, v4];

  return v6;
}

- (id)createCommandForStatus:(id)a3
{
  if (a3)
  {
    v4 = [(NSDictionary *)self->_statusLEDCommands objectForKeyedSubscript:?];
    if (v4)
    {
      v5 = [(SVXLEDStatusFactory *)self createStatusForColor:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SVXLEDStatusFactory)init
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SVXLEDStatusFactory;
  v2 = [(SVXLEDStatusFactory *)&v10 init];
  if (v2)
  {
    v3 = *MEMORY[0x277D48CF0];
    v11[0] = *MEMORY[0x277D48CE8];
    v11[1] = v3;
    v12[0] = @"0 190 0";
    v12[1] = @"190 0 0";
    v11[2] = *MEMORY[0x277D48CF8];
    v12[2] = @"190 190 0";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    statusLEDCommands = v2->_statusLEDCommands;
    v2->_statusLEDCommands = v4;

    v6 = objc_alloc_init(SVXTargetLEDSupplier);
    targetLEDSupplier = v2->_targetLEDSupplier;
    v2->_targetLEDSupplier = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

@end