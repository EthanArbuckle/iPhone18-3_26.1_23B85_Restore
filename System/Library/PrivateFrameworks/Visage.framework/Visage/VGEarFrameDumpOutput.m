@interface VGEarFrameDumpOutput
- (VGEarFrameDumpOutput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGEarFrameDumpOutput

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  leftEarEnrolledPoses = self->_leftEarEnrolledPoses;
  v5 = NSStringFromSelector(sel_leftEarEnrolledPoses);
  [v12 encodeObject:leftEarEnrolledPoses forKey:v5];

  rightEarEnrolledPoses = self->_rightEarEnrolledPoses;
  v7 = NSStringFromSelector(sel_rightEarEnrolledPoses);
  [v12 encodeObject:rightEarEnrolledPoses forKey:v7];

  leftEarEnrolledYawToBoundingBox = self->_leftEarEnrolledYawToBoundingBox;
  v9 = NSStringFromSelector(sel_leftEarEnrolledYawToBoundingBox);
  [v12 encodeObject:leftEarEnrolledYawToBoundingBox forKey:v9];

  rightEarEnrolledYawToBoundingBox = self->_rightEarEnrolledYawToBoundingBox;
  v11 = NSStringFromSelector(sel_rightEarEnrolledYawToBoundingBox);
  [v12 encodeObject:rightEarEnrolledYawToBoundingBox forKey:v11];
}

- (VGEarFrameDumpOutput)initWithCoder:(id)a3
{
  v37[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = VGEarFrameDumpOutput;
  v5 = [(VGEarFrameDumpOutput *)&v33 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = NSStringFromSelector(sel_leftEarEnrolledPoses);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    leftEarEnrolledPoses = v5->_leftEarEnrolledPoses;
    v5->_leftEarEnrolledPoses = v10;

    v12 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = NSStringFromSelector(sel_rightEarEnrolledPoses);
    v16 = [v4 decodeObjectOfClasses:v14 forKey:v15];
    rightEarEnrolledPoses = v5->_rightEarEnrolledPoses;
    v5->_rightEarEnrolledPoses = v16;

    v18 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v35[3] = objc_opt_class();
    v35[4] = objc_opt_class();
    v35[5] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:6];
    v20 = [v18 setWithArray:v19];
    v21 = NSStringFromSelector(sel_leftEarEnrolledYawToBoundingBox);
    v22 = [v4 decodeObjectOfClasses:v20 forKey:v21];
    leftEarEnrolledYawToBoundingBox = v5->_leftEarEnrolledYawToBoundingBox;
    v5->_leftEarEnrolledYawToBoundingBox = v22;

    v24 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v34[2] = objc_opt_class();
    v34[3] = objc_opt_class();
    v34[4] = objc_opt_class();
    v34[5] = objc_opt_class();
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
    v26 = [v24 setWithArray:v25];
    v27 = NSStringFromSelector(sel_rightEarEnrolledYawToBoundingBox);
    v28 = [v4 decodeObjectOfClasses:v26 forKey:v27];
    rightEarEnrolledYawToBoundingBox = v5->_rightEarEnrolledYawToBoundingBox;
    v5->_rightEarEnrolledYawToBoundingBox = v28;

    v30 = v5;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

@end