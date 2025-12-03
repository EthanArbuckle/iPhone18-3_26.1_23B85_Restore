@interface PLNetworkEnergyModel
- (PLNetworkEnergyModel)initWithLinkType:(unsigned __int8)type;
- (double)computeLevel1TimeWithBytes:(double)bytes;
- (double)getEnergy;
- (id)description;
- (void)updateAllLevelTimesWithLevel1Time:(double)time withUpdateDuration:(double)duration;
- (void)updateWithBytes:(double)bytes withDuration:(double)duration;
@end

@implementation PLNetworkEnergyModel

- (PLNetworkEnergyModel)initWithLinkType:(unsigned __int8)type
{
  v23[4] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PLNetworkEnergyModel;
  v4 = [(PLNetworkEnergyModel *)&v19 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
    *(v4 + 9) = 0;
    *(v4 + 28) = 0;
    v4[8] = type;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
    v6 = *(v4 + 7);
    *(v4 + 7) = &stru_1F38DE2A8;

    linkDuration = v5->_linkDuration;
    v5->_linkDuration = &unk_1F38E35A8;

    linkCost = v5->_linkCost;
    v5->_linkCost = &unk_1F38E3620;

    v23[0] = &unk_1F38E3638;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:0.000002];
    v22[0] = v9;
    v22[1] = &unk_1F38E3248;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v23[1] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:0.000005];
    v21[0] = v11;
    v21[1] = &unk_1F38E3668;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v23[2] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:0.000001];
    v20[0] = v13;
    v20[1] = &unk_1F38E3668;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v23[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    linkLevel1Parameters = v5->_linkLevel1Parameters;
    v5->_linkLevel1Parameters = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(PLNetworkEnergyModel *)self powerlevel1Duration];
  v5 = v4;
  [(PLNetworkEnergyModel *)self powerlevel2Duration];
  v7 = v6;
  [(PLNetworkEnergyModel *)self powerlevel3Duration];
  v9 = v8;
  linkType = [(PLNetworkEnergyModel *)self linkType];
  [(PLNetworkEnergyModel *)self overallBytes];
  v12 = v11;
  [(PLNetworkEnergyModel *)self overallDuration];
  v14 = v13;
  [(PLNetworkEnergyModel *)self getEnergy];
  v16 = v15;
  taskUUID = [(PLNetworkEnergyModel *)self taskUUID];
  v18 = [v3 stringWithFormat:@"powerlevel1Duration=%f, powerlevel2Duration=%f, powerlevel3Duration=%f, linkType=%d, overallBytes=%f, overallDuration=%f TotalEnergy=%f, taskID=%@", v5, v7, v9, linkType, v12, v14, v16, taskUUID];

  return v18;
}

- (void)updateWithBytes:(double)bytes withDuration:(double)duration
{
  [(PLNetworkEnergyModel *)self setUpdateCount:[(PLNetworkEnergyModel *)self updateCount]+ 1];
  [(PLNetworkEnergyModel *)self overallDuration];
  [(PLNetworkEnergyModel *)self setOverallDuration:v7 + duration];
  [(PLNetworkEnergyModel *)self overallBytes];
  [(PLNetworkEnergyModel *)self setOverallBytes:v8 + bytes];
  [(PLNetworkEnergyModel *)self computeLevel1TimeWithBytes:bytes];

  [PLNetworkEnergyModel updateAllLevelTimesWithLevel1Time:"updateAllLevelTimesWithLevel1Time:withUpdateDuration:" withUpdateDuration:?];
}

- (double)getEnergy
{
  [(PLNetworkEnergyModel *)self powerlevel1Duration];
  v4 = v3;
  linkCost = [(PLNetworkEnergyModel *)self linkCost];
  v6 = [linkCost objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 doubleValue];
  v9 = v8;
  [(PLNetworkEnergyModel *)self powerlevel2Duration];
  v11 = v10;
  linkCost2 = [(PLNetworkEnergyModel *)self linkCost];
  v13 = [linkCost2 objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v14 = [v13 objectAtIndexedSubscript:1];
  [v14 doubleValue];
  v16 = v11 * v15 + v4 * v9;
  [(PLNetworkEnergyModel *)self powerlevel3Duration];
  v18 = v17;
  linkCost3 = [(PLNetworkEnergyModel *)self linkCost];
  v20 = [linkCost3 objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v21 = [v20 objectAtIndexedSubscript:2];
  [v21 doubleValue];
  v23 = (v16 + v18 * v22) / 3600.0;

  return v23;
}

- (double)computeLevel1TimeWithBytes:(double)bytes
{
  linkLevel1Parameters = [(PLNetworkEnergyModel *)self linkLevel1Parameters];
  v6 = [linkLevel1Parameters objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 doubleValue];
  v9 = v8;
  linkLevel1Parameters2 = [(PLNetworkEnergyModel *)self linkLevel1Parameters];
  v11 = [linkLevel1Parameters2 objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v12 = [v11 objectAtIndexedSubscript:1];
  [v12 doubleValue];
  v14 = v13 + bytes * v9;

  return v14;
}

- (void)updateAllLevelTimesWithLevel1Time:(double)time withUpdateDuration:(double)duration
{
  linkDuration = [(PLNetworkEnergyModel *)self linkDuration];
  v8 = [linkDuration objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v9 = [v8 objectAtIndexedSubscript:1];
  [v9 doubleValue];
  v11 = v10;

  linkDuration2 = [(PLNetworkEnergyModel *)self linkDuration];
  v13 = [linkDuration2 objectAtIndexedSubscript:{-[PLNetworkEnergyModel linkType](self, "linkType")}];
  v14 = [v13 objectAtIndexedSubscript:2];
  [v14 doubleValue];
  v16 = v15;

  if (duration >= time)
  {
    durationCopy = time;
  }

  else
  {
    durationCopy = duration;
  }

  [(PLNetworkEnergyModel *)self powerlevel1Duration];
  [(PLNetworkEnergyModel *)self setPowerlevel1Duration:durationCopy + v18];
  v19 = duration - time;
  v20 = fmax(v19, 0.0);
  if (v11 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v11;
  }

  [(PLNetworkEnergyModel *)self powerlevel2Duration];
  [(PLNetworkEnergyModel *)self setPowerlevel2Duration:v21 + v22];
  v23 = fmax(v19 - v11, 0.0);
  if (v16 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v16;
  }

  [(PLNetworkEnergyModel *)self powerlevel3Duration];
  v26 = v24 + v25;

  [(PLNetworkEnergyModel *)self setPowerlevel3Duration:v26];
}

@end