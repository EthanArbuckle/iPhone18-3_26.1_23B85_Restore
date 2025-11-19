@interface PVFace
+ (PVFace)faceWithFace:(id)a3 copyPropertiesOption:(int64_t)a4;
- (BOOL)setCenterAndSizeFromNormalizedFaceRect:(CGRect)a3;
- (CGRect)absoluteFaceRect;
- (CGRect)absoluteFaceRectForImageSize:(CGSize)a3;
- (CGRect)normalizedFaceRect;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_copyPropertiesFrom:(id)a3 copyPropertiesOption:(int64_t)a4;
- (void)setCoordinatesAndFeaturesFromFace:(id)a3;
@end

@implementation PVFace

- (CGRect)absoluteFaceRectForImageSize:(CGSize)a3
{
  width = a3.width;
  if (a3.width <= a3.height)
  {
    width = a3.height;
  }

  v4 = self->_size * width;
  v5 = -(v4 * 0.5 - self->_centerX * a3.width);
  v6 = a3.height - self->_centerY * a3.height - v4 * 0.5;
  v7 = v4;
  result.size.height = v7;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)absoluteFaceRect
{
  sourceWidth = self->_sourceWidth;
  sourceHeight = self->_sourceHeight;
  if (sourceWidth <= sourceHeight)
  {
    v4 = self->_sourceHeight;
  }

  else
  {
    v4 = self->_sourceWidth;
  }

  v5 = self->_size * v4;
  v6 = -(v5 * 0.5 - self->_centerX * sourceWidth);
  v7 = sourceHeight - self->_centerY * sourceHeight - v5 * 0.5;
  v8 = v5;
  result.size.height = v8;
  result.size.width = v5;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)normalizedFaceRect
{
  size = self->_size;
  sourceWidth = self->_sourceWidth;
  sourceHeight = self->_sourceHeight;
  if (sourceWidth <= sourceHeight)
  {
    v5 = self->_sourceHeight;
  }

  else
  {
    v5 = self->_sourceWidth;
  }

  v6 = size * v5;
  v7 = v6 / sourceWidth;
  v8 = v6 / sourceHeight;
  v9 = 1.0;
  if (size <= 1.0)
  {
    v9 = self->_size;
  }

  v10 = self->_centerX - v7 * 0.5;
  v11 = self->_centerY - v8 * 0.5;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = v9;
  result.size.height = v12;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (BOOL)setCenterAndSizeFromNormalizedFaceRect:(CGRect)a3
{
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  PVFaceGetCenterAndSizeForNormalizedRect(self->_sourceWidth, self->_sourceHeight, &v8, &v7, &v6, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v4 = v7;
  self->_centerX = v8;
  self->_centerY = v4;
  self->_size = v6;
  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = PVFace;
  v4 = [(PVObject *)&v7 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@"  clusterSequenceNumber  : %ld\n", self->_clusterSequenceNumber];
  [v5 appendFormat:@"  personLocalIdentifier  : %@\n", self->_personLocalIdentifier];
  [v5 appendFormat:@"  nameSource             : %ld\n", self->_nameSource];
  [v5 appendFormat:@"  trainingType           : %ld\n", self->_trainingType];
  [v5 appendFormat:@"  manual                 : %d\n", self->_manual];
  [v5 appendFormat:@"  hidden                 : %d\n", self->_hidden];
  [v5 appendFormat:@"  isInTrash              : %d\n", self->_isInTrash];
  [v5 appendFormat:@"  isTooSmall             : %d\n", self->_isTooSmall];
  [v5 appendFormat:@"  faceprint              : %p\n", self->_faceprint];
  [v5 appendFormat:@"  adjustmentVersion      : %@\n", self->_adjustmentVersion];
  [v5 appendFormat:@"  sourceWidth            : %ld\n", self->_sourceWidth];
  [v5 appendFormat:@"  sourceHeight           : %ld\n", self->_sourceHeight];
  [v5 appendFormat:@"  centerX                : %f\n", *&self->_centerX];
  [v5 appendFormat:@"  centerY                : %f\n", *&self->_centerY];
  [v5 appendFormat:@"  size                   : %f\n", *&self->_size];
  [v5 appendFormat:@"  leftEyeX               : %f\n", *&self->_leftEyeX];
  [v5 appendFormat:@"  leftEyeY               : %f\n", *&self->_leftEyeY];
  [v5 appendFormat:@"  rightEyeX              : %f\n", *&self->_rightEyeX];
  [v5 appendFormat:@"  rightEyeY              : %f\n", *&self->_rightEyeY];
  [v5 appendFormat:@"  mouthX                 : %f\n", *&self->_mouthX];
  [v5 appendFormat:@"  mouthY                 : %f\n", *&self->_mouthY];
  [v5 appendFormat:@"  hasSmile               : %d\n", self->_hasSmile];
  [v5 appendFormat:@"  blurScore              : %f\n", *&self->_blurScore];
  [v5 appendFormat:@"  isLeftEyeClosed        : %d\n", self->_isLeftEyeClosed];
  [v5 appendFormat:@"  isRightEyeClosed       : %d\n", self->_isRightEyeClosed];
  [v5 appendFormat:@"  poseYaw                : %f\n", *&self->_poseYaw];
  [v5 appendFormat:@"  faceAlgorithmVersion   : %lu\n", self->_faceAlgorithmVersion];
  [v5 appendFormat:@"  qualityMeasure         : %ld\n", self->_qualityMeasure];
  [v5 appendFormat:@"  groupingIdentifier     : %@\n", self->_groupingIdentifier];

  return v5;
}

- (void)setCoordinatesAndFeaturesFromFace:(id)a3
{
  v4 = a3;
  self->_sourceWidth = [v4 sourceWidth];
  self->_sourceHeight = [v4 sourceHeight];
  [v4 centerX];
  self->_centerX = v5;
  [v4 centerY];
  self->_centerY = v6;
  [v4 size];
  self->_size = v7;
  [v4 leftEyeX];
  self->_leftEyeX = v8;
  [v4 leftEyeY];
  self->_leftEyeY = v9;
  [v4 rightEyeX];
  self->_rightEyeX = v10;
  [v4 rightEyeY];
  self->_rightEyeY = v11;
  [v4 mouthX];
  self->_mouthX = v12;
  [v4 mouthY];
  self->_mouthY = v13;
  self->_hasSmile = [v4 hasSmile];
  [v4 blurScore];
  self->_blurScore = v14;
  self->_isLeftEyeClosed = [v4 isLeftEyeClosed];
  self->_isRightEyeClosed = [v4 isRightEyeClosed];
  [v4 poseYaw];
  self->_poseYaw = v15;
  self->_faceAlgorithmVersion = [v4 faceAlgorithmVersion];
  self->_qualityMeasure = [v4 qualityMeasure];
  self->_isTooSmall = [v4 isTooSmall];
  v16 = [v4 groupingIdentifier];
  groupingIdentifier = self->_groupingIdentifier;
  self->_groupingIdentifier = v16;

  self->_ageType = [v4 ageType];
  self->_sexType = [v4 sexType];
  self->_eyesState = [v4 eyesState];
  self->_smileType = [v4 smileType];
  self->_facialHairType = [v4 facialHairType];
  self->_hairColorType = [v4 hairColorType];
  self->_baldType = [v4 baldType];
  self->_glassesType = [v4 glassesType];
  self->_eyeMakeupType = [v4 eyeMakeupType];
  self->_lipMakeupType = [v4 lipMakeupType];
  [v4 roll];
  self->_roll = v18;
  [v4 quality];
  v20 = v19;

  self->_quality = v20;
}

- (void)_copyPropertiesFrom:(id)a3 copyPropertiesOption:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v25 = v6;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      [(PVFace *)self setCoordinatesAndFeaturesFromFace:v6];
      self->_isTooSmall = [v25 isTooSmall];
      self->_hidden = [v25 hidden];
      self->_isInTrash = [v25 isInTrash];
      self->_manual = [v25 manual];
      v17 = [v25 adjustmentVersion];
      adjustmentVersion = self->_adjustmentVersion;
      self->_adjustmentVersion = v17;

      v7 = v25;
    }

    else if (a4 != 3)
    {
      goto LABEL_11;
    }

    self->_nameSource = [v7 nameSource];
    self->_trainingType = [v25 trainingType];
    v19 = [v25 personLocalIdentifier];
    personLocalIdentifier = self->_personLocalIdentifier;
    self->_personLocalIdentifier = v19;

    self->_clusterSequenceNumber = [v25 clusterSequenceNumber];
    v21 = [v25 faceprint];
    faceprint = self->_faceprint;
    self->_faceprint = v21;

    v23 = [v25 groupingIdentifier];
    groupingIdentifier = self->_groupingIdentifier;
    self->_groupingIdentifier = v23;

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v8 = [v6 personLocalIdentifier];
      v9 = self->_personLocalIdentifier;
      self->_personLocalIdentifier = v8;

      self->_sourceWidth = [v25 sourceWidth];
      self->_sourceHeight = [v25 sourceHeight];
      [v25 centerX];
      self->_centerX = v10;
      [v25 centerY];
      self->_centerY = v11;
      [v25 size];
      self->_size = v12;
      self->_qualityMeasure = [v25 qualityMeasure];
      self->_clusterSequenceNumber = [v25 clusterSequenceNumber];
      self->_isTooSmall = [v25 isTooSmall];
      self->_hidden = [v25 hidden];
      self->_isInTrash = [v25 isInTrash];
      self->_manual = [v25 manual];
    }
  }

  else
  {
    v13 = [v6 personLocalIdentifier];
    v14 = self->_personLocalIdentifier;
    self->_personLocalIdentifier = v13;

    [(PVFace *)self setCoordinatesAndFeaturesFromFace:v25];
    self->_isTooSmall = [v25 isTooSmall];
    self->_hidden = [v25 hidden];
    self->_isInTrash = [v25 isInTrash];
    self->_manual = [v25 manual];
    v15 = [v25 adjustmentVersion];
    v16 = self->_adjustmentVersion;
    self->_adjustmentVersion = v15;

    self->_nameSource = [v25 nameSource];
    self->_trainingType = [v25 trainingType];
    self->_clusterSequenceNumber = [v25 clusterSequenceNumber];
  }

LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PVFace;
  v4 = [(PVObject *)&v6 copyWithZone:a3];
  [v4 _copyPropertiesFrom:self copyPropertiesOption:0];
  return v4;
}

+ (PVFace)faceWithFace:(id)a3 copyPropertiesOption:(int64_t)a4
{
  v5 = a3;
  v6 = [PVFace alloc];
  v7 = [v5 localIdentifier];
  v8 = [(PVObject *)v6 initWithLocalIdentifier:v7];

  [(PVFace *)v8 _copyPropertiesFrom:v5 copyPropertiesOption:a4];

  return v8;
}

@end