@interface PGMemoryMusicEnergyQuestion
- (PGMemoryMusicEnergyQuestion)initWithMemory:(id)a3 song:(id)a4 localFactoryScore:(double)a5;
@end

@implementation PGMemoryMusicEnergyQuestion

- (PGMemoryMusicEnergyQuestion)initWithMemory:(id)a3 song:(id)a4 localFactoryScore:(double)a5
{
  v30[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = PGMemoryMusicEnergyQuestion;
  v10 = [(PGMemoryMusicEnergyQuestion *)&v28 init];
  if (v10)
  {
    v11 = [v8 uuid];
    entityIdentifier = v10->_entityIdentifier;
    v10->_entityIdentifier = v11;

    v10->_state = 0;
    v10->_localFactoryScore = a5;
    v29[0] = *MEMORY[0x277D3C950];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "category")}];
    v30[0] = v13;
    v29[1] = *MEMORY[0x277D3C958];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "subcategory")}];
    v30[1] = v14;
    v29[2] = *MEMORY[0x277D3C970];
    v15 = [v9 playbackStoreID];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"Unknown";
    }

    v30[2] = v17;
    v29[3] = *MEMORY[0x277D3C978];
    v18 = [v9 title];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = @"Unknown";
    }

    v30[3] = v20;
    v29[4] = *MEMORY[0x277D3C960];
    v21 = [v9 artist];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = @"Unknown";
    }

    v30[4] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

@end