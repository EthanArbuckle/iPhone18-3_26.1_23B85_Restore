@interface VLLocalizationCrowdsourcingDetails
- (VLLocalizationCrowdsourcingDetails)initWithCoder:(id)coder;
- (VLLocalizationCrowdsourcingDetails)initWithStats:(void *)stats resultTransform:(double *)transform;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VLLocalizationCrowdsourcingDetails

- (VLLocalizationCrowdsourcingDetails)initWithStats:(void *)stats resultTransform:(double *)transform
{
  statsCopy = stats;
  v12.receiver = self;
  v12.super_class = VLLocalizationCrowdsourcingDetails;
  v8 = [(VLLocalizationCrowdsourcingDetails *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_statistics, stats);
    v9->_resultPoseRotation[0][0] = *transform;
    v9->_resultPoseRotation[0][1] = transform[4];
    v9->_resultPoseRotation[0][2] = transform[8];
    v9->_resultPoseRotation[1][0] = transform[1];
    v9->_resultPoseRotation[1][1] = transform[5];
    v9->_resultPoseRotation[1][2] = transform[9];
    v9->_resultPoseRotation[2][0] = transform[2];
    v9->_resultPoseRotation[2][1] = transform[6];
    v9->_resultPoseRotation[2][2] = transform[10];
    v9->_resultPoseTranslation[0] = transform[12];
    v9->_resultPoseTranslation[1] = transform[13];
    v9->_resultPoseTranslation[2] = transform[14];
    v10 = v9;
  }

  return v9;
}

- (VLLocalizationCrowdsourcingDetails)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statistics"];
  if (!v5)
  {
    goto LABEL_9;
  }

  v22.receiver = self;
  v22.super_class = VLLocalizationCrowdsourcingDetails;
  self = [(VLLocalizationCrowdsourcingDetails *)&v22 init];
  if (!self)
  {
    goto LABEL_9;
  }

  v21 = 0;
  v6 = [coderCopy decodeBytesForKey:@"resultPoseRotation" returnedLength:&v21];
  if (v21 != 72)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA050];
    v25 = *MEMORY[0x277CBEE28];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"resultPoseRotation"];
    v26[0] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v26;
    v17 = &v25;
LABEL_8:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = [v12 errorWithDomain:v13 code:4864 userInfo:v18];
    [coderCopy failWithError:v19];

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v7 = *v6;
  self->_resultPoseRotation[0][0] = **v6;
  self->_resultPoseRotation[0][1] = v7[1];
  self->_resultPoseRotation[0][2] = v7[2];
  v8 = *(v6 + 8);
  self->_resultPoseRotation[1][0] = *v8;
  self->_resultPoseRotation[1][1] = v8[1];
  self->_resultPoseRotation[1][2] = v8[2];
  v9 = *(v6 + 16);
  self->_resultPoseRotation[2][0] = *v9;
  self->_resultPoseRotation[2][1] = v9[1];
  self->_resultPoseRotation[2][2] = v9[2];
  v21 = 0;
  v10 = [coderCopy decodeBytesForKey:@"resultPoseTranslation" returnedLength:&v21];
  if (v21 != 24)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA050];
    v23 = *MEMORY[0x277CBEE28];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"resultPoseTranslation"];
    v24 = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v24;
    v17 = &v23;
    goto LABEL_8;
  }

  self->_resultPoseTranslation[0] = *v10;
  self->_resultPoseTranslation[1] = v10[1];
  self->_resultPoseTranslation[2] = v10[2];
  objc_storeStrong(&self->_statistics, v5);
  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  statistics = self->_statistics;
  coderCopy = coder;
  [coderCopy encodeObject:statistics forKey:@"statistics"];
  [coderCopy encodeBytes:self->_resultPoseRotation length:72 forKey:@"resultPoseRotation"];
  [coderCopy encodeBytes:self->_resultPoseTranslation length:24 forKey:@"resultPoseTranslation"];
}

@end