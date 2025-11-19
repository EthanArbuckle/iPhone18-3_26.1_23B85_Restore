@interface OKEmitterCell
+ (id)supportedSettings;
- (OKEmitterCell)initWithSettings:(id)a3;
- (id)settingColor;
- (void)dealloc;
- (void)parentLoaded:(id)a3;
- (void)setSettingColor:(id)a3;
- (void)setSettingContents:(id)a3;
@end

@implementation OKEmitterCell

- (OKEmitterCell)initWithSettings:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKEmitterCell;
  v4 = [(OKEmitterCell *)&v6 init];
  if (v4)
  {
    [OKSettings applySettings:a3 toObject:v4 withResolution:0];
  }

  return v4;
}

- (void)dealloc
{
  contentURL = self->_contentURL;
  if (contentURL)
  {

    self->_contentURL = 0;
  }

  v4.receiver = self;
  v4.super_class = OKEmitterCell;
  [(OKEmitterCell *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v73[34] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v72[0] = @"alphaRange";
  v70 = @"type";
  v71 = &unk_287AEFF60;
  v73[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v72[1] = @"alphaSpeed";
  v68 = @"type";
  v69 = &unk_287AEFF60;
  v73[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v72[2] = @"birthRate";
  v66 = @"type";
  v67 = &unk_287AEFF60;
  v73[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v72[3] = @"blueRange";
  v64 = @"type";
  v65 = &unk_287AEFF60;
  v73[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v72[4] = @"blueSpeed";
  v62 = @"type";
  v63 = &unk_287AEFF60;
  v73[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v72[5] = @"color";
  v60 = @"type";
  v61 = &unk_287AEFF78;
  v73[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v72[6] = @"contents";
  v58 = @"type";
  v59 = &unk_287AEFF90;
  v73[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v72[7] = @"contentsRect";
  v56 = @"type";
  v57 = &unk_287AEFFA8;
  v73[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v72[8] = @"emissionLatitude";
  v54 = @"type";
  v55 = &unk_287AEFFC0;
  v73[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v72[9] = @"emissionLongitude";
  v52 = @"type";
  v53 = &unk_287AEFFC0;
  v73[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v72[10] = @"emissionRange";
  v50 = @"type";
  v51 = &unk_287AEFFC0;
  v73[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v72[11] = @"emitterCells";
  v48[0] = @"type";
  v48[1] = @"subType";
  v49[0] = &unk_287AEFFD8;
  v49[1] = &unk_287AEFFF0;
  v73[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v72[12] = @"enabled";
  v46 = @"type";
  v47 = &unk_287AF0008;
  v73[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v72[13] = @"greenRange";
  v44 = @"type";
  v45 = &unk_287AEFF60;
  v73[13] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v72[14] = @"greenSpeed";
  v42 = @"type";
  v43 = &unk_287AEFF60;
  v73[14] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v72[15] = @"lifetime";
  v40 = @"type";
  v41 = &unk_287AEFF60;
  v73[15] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v72[16] = @"lifetimeRange";
  v38 = @"type";
  v39 = &unk_287AEFF60;
  v73[16] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v72[17] = @"magnificationFilter";
  v36 = @"type";
  v37 = &unk_287AF0020;
  v73[17] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v72[18] = @"minificationFilter";
  v34 = @"type";
  v35 = &unk_287AF0020;
  v73[18] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v72[19] = @"minificationFilterBias";
  v32 = @"type";
  v33 = &unk_287AEFF60;
  v73[19] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v72[20] = @"name";
  v30 = @"type";
  v31 = &unk_287AF0020;
  v73[20] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v72[21] = @"redRange";
  v28 = @"type";
  v29 = &unk_287AEFF60;
  v73[21] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v72[22] = @"redSpeed";
  v26 = @"type";
  v27 = &unk_287AEFF60;
  v73[22] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v72[23] = @"scale";
  v24 = @"type";
  v25 = &unk_287AEFFC0;
  v73[23] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v72[24] = @"scaleRange";
  v22 = @"type";
  v23 = &unk_287AEFFC0;
  v73[24] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v72[25] = @"scaleSpeed";
  v20 = @"type";
  v21 = &unk_287AEFFC0;
  v73[25] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v72[26] = @"spin";
  v18 = @"type";
  v19 = &unk_287AEFFC0;
  v73[26] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v72[27] = @"spinRange";
  v16 = @"type";
  v17 = &unk_287AEFFC0;
  v73[27] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v72[28] = @"style";
  v14 = @"type";
  v15 = &unk_287AF0038;
  v73[28] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v72[29] = @"velocity";
  v12 = @"type";
  v13 = &unk_287AEFFC0;
  v73[29] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v72[30] = @"velocityRange";
  v10 = @"type";
  v11 = &unk_287AEFFC0;
  v73[30] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v72[31] = @"xAcceleration";
  v8 = @"type";
  v9 = &unk_287AEFFC0;
  v73[31] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v72[32] = @"yAcceleration";
  v6 = @"type";
  v7 = &unk_287AEFFC0;
  v73[32] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v72[33] = @"zAcceleration";
  v4 = @"type";
  v5 = &unk_287AEFFC0;
  v73[33] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v73, v72, 34)}];
  return v2;
}

- (void)parentLoaded:(id)a3
{
  contentURL = self->_contentURL;
  if (contentURL)
  {
    v5 = [a3 mediaItemForURL:contentURL];
    v6 = [objc_msgSend(MEMORY[0x277D755B8] imageWithContentsOfFile:{objc_msgSend(objc_msgSend(v5, "resourceURL"), "relativePath")), "CGImage"}];

    [(OKEmitterCell *)self setContents:v6];
  }
}

- (id)settingColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(OKEmitterCell *)self color];

  return [v2 colorWithCGColor:v3];
}

- (void)setSettingColor:(id)a3
{
  v4 = [a3 CGColor];

  [(OKEmitterCell *)self setColor:v4];
}

- (void)setSettingContents:(id)a3
{
  contentURL = self->_contentURL;
  if (contentURL)
  {

    self->_contentURL = 0;
  }

  self->_contentURL = a3;
}

@end