@interface AWDBiometricKitEnrollAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAmbientLux:(BOOL)lux;
- (void)setHasBioCaptureSequenceCount:(BOOL)count;
- (void)setHasCameraErr:(BOOL)err;
- (void)setHasDeviceOrientation:(BOOL)orientation;
- (void)setHasDoubleErrorCountsBinCovered:(BOOL)covered;
- (void)setHasDoubleErrorCountsFaceOutOfFOV:(BOOL)v;
- (void)setHasDoubleErrorCountsFaceTooClose:(BOOL)close;
- (void)setHasDoubleErrorCountsFaceTooFar:(BOOL)far;
- (void)setHasDoubleErrorCountsLowerFaceOccluded:(BOOL)occluded;
- (void)setHasDoubleErrorCountsMoreFrames:(BOOL)frames;
- (void)setHasDoubleErrorCountsMultipleFaces:(BOOL)faces;
- (void)setHasDoubleErrorCountsNoFace:(BOOL)face;
- (void)setHasDoubleErrorCountsOK:(BOOL)k;
- (void)setHasDoubleErrorCountsOccluded:(BOOL)occluded;
- (void)setHasDoubleErrorCountsPoseOutRange:(BOOL)range;
- (void)setHasDoubleErrorCountsUpperFaceOccluded:(BOOL)occluded;
- (void)setHasEnrollFeatureVectorError:(BOOL)error;
- (void)setHasEnrollResult:(BOOL)result;
- (void)setHasEnrollType:(BOOL)type;
- (void)setHasEnrolledIdentityCount:(BOOL)count;
- (void)setHasEnrolledTemplateCountTotal:(BOOL)total;
- (void)setHasEnrolledTemplateCountType0:(BOOL)type0;
- (void)setHasEnrolledTemplateCountType1:(BOOL)type1;
- (void)setHasFaceDistance:(BOOL)distance;
- (void)setHasFailedNoFace:(BOOL)face;
- (void)setHasFeatureGenerationError:(BOOL)error;
- (void)setHasFrameCountBin00:(BOOL)bin00;
- (void)setHasFrameCountBin01:(BOOL)bin01;
- (void)setHasFrameCountBin02:(BOOL)bin02;
- (void)setHasFrameCountBin10:(BOOL)bin10;
- (void)setHasFrameCountBin11:(BOOL)bin11;
- (void)setHasFrameCountBin12:(BOOL)bin12;
- (void)setHasFrameCountBin20:(BOOL)bin20;
- (void)setHasFrameCountBin21:(BOOL)bin21;
- (void)setHasFrameCountBin22:(BOOL)bin22;
- (void)setHasFrameErrorCountsBinCovered:(BOOL)covered;
- (void)setHasFrameErrorCountsFaceOutOfFOV:(BOOL)v;
- (void)setHasFrameErrorCountsFaceTooClose:(BOOL)close;
- (void)setHasFrameErrorCountsFaceTooFar:(BOOL)far;
- (void)setHasFrameErrorCountsLowerFaceOccluded:(BOOL)occluded;
- (void)setHasFrameErrorCountsMoreFrames:(BOOL)frames;
- (void)setHasFrameErrorCountsMultipleFaces:(BOOL)faces;
- (void)setHasFrameErrorCountsNoFace:(BOOL)face;
- (void)setHasFrameErrorCountsOK:(BOOL)k;
- (void)setHasFrameErrorCountsOccluded:(BOOL)occluded;
- (void)setHasFrameErrorCountsPoseOutRange:(BOOL)range;
- (void)setHasFrameErrorCountsUpperFaceOccluded:(BOOL)occluded;
- (void)setHasNoseAndMouthOccluded:(BOOL)occluded;
- (void)setHasOverallResult:(BOOL)result;
- (void)setHasRfcFrameIndex:(BOOL)index;
- (void)setHasRfcSetIndex:(BOOL)index;
- (void)setHasSensorTemperature:(BOOL)temperature;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDBiometricKitEnrollAttempt

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 8;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasOverallResult:(BOOL)result
{
  v3 = 0x20000000000000;
  if (!result)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasDoubleErrorCountsOK:(BOOL)k
{
  v3 = 0x10000;
  if (!k)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasDoubleErrorCountsMoreFrames:(BOOL)frames
{
  v3 = 0x2000;
  if (!frames)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasDoubleErrorCountsNoFace:(BOOL)face
{
  v3 = 0x8000;
  if (!face)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasDoubleErrorCountsFaceOutOfFOV:(BOOL)v
{
  v3 = 512;
  if (!v)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasDoubleErrorCountsMultipleFaces:(BOOL)faces
{
  v3 = 0x4000;
  if (!faces)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasDoubleErrorCountsFaceTooClose:(BOOL)close
{
  v3 = 1024;
  if (!close)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasDoubleErrorCountsFaceTooFar:(BOOL)far
{
  v3 = 2048;
  if (!far)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasDoubleErrorCountsPoseOutRange:(BOOL)range
{
  v3 = 0x40000;
  if (!range)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasDoubleErrorCountsBinCovered:(BOOL)covered
{
  v3 = 256;
  if (!covered)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasDoubleErrorCountsOccluded:(BOOL)occluded
{
  v3 = 0x20000;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasFrameErrorCountsOK:(BOOL)k
{
  v3 = 0x400000000000;
  if (!k)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsMoreFrames:(BOOL)frames
{
  v3 = 0x80000000000;
  if (!frames)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsNoFace:(BOOL)face
{
  v3 = 0x200000000000;
  if (!face)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsFaceOutOfFOV:(BOOL)v
{
  v3 = 0x8000000000;
  if (!v)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsMultipleFaces:(BOOL)faces
{
  v3 = 0x100000000000;
  if (!faces)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsFaceTooClose:(BOOL)close
{
  v3 = 0x10000000000;
  if (!close)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsFaceTooFar:(BOOL)far
{
  v3 = 0x20000000000;
  if (!far)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsPoseOutRange:(BOOL)range
{
  v3 = 0x1000000000000;
  if (!range)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsBinCovered:(BOOL)covered
{
  v3 = 0x4000000000;
  if (!covered)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsOccluded:(BOOL)occluded
{
  v3 = 0x800000000000;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin00:(BOOL)bin00
{
  v3 = 0x20000000;
  if (!bin00)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin01:(BOOL)bin01
{
  v3 = 0x40000000;
  if (!bin01)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin02:(BOOL)bin02
{
  v3 = 0x80000000;
  if (!bin02)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasFrameCountBin10:(BOOL)bin10
{
  v3 = 0x100000000;
  if (!bin10)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin11:(BOOL)bin11
{
  v3 = 0x200000000;
  if (!bin11)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin12:(BOOL)bin12
{
  v3 = 0x400000000;
  if (!bin12)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin20:(BOOL)bin20
{
  v3 = 0x800000000;
  if (!bin20)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin21:(BOOL)bin21
{
  v3 = 0x1000000000;
  if (!bin21)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasFrameCountBin22:(BOOL)bin22
{
  v3 = 0x2000000000;
  if (!bin22)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasBioCaptureSequenceCount:(BOOL)count
{
  v3 = 32;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasAmbientLux:(BOOL)lux
{
  v3 = 16;
  if (!lux)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasFeatureGenerationError:(BOOL)error
{
  v3 = 0x10000000;
  if (!error)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasEnrollFeatureVectorError:(BOOL)error
{
  v3 = 0x100000;
  if (!error)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasCameraErr:(BOOL)err
{
  v3 = 64;
  if (!err)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasEnrollResult:(BOOL)result
{
  v3 = 0x200000;
  if (!result)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasFaceDistance:(BOOL)distance
{
  v3 = 0x8000000;
  if (!distance)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasSensorTemperature:(BOOL)temperature
{
  v3 = 0x4000000000000;
  if (!temperature)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)setHasRfcSetIndex:(BOOL)index
{
  v3 = 4;
  if (!index)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasRfcFrameIndex:(BOOL)index
{
  v3 = 2;
  if (!index)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasFailedNoFace:(BOOL)face
{
  v3 = 0x8000000000000;
  if (!face)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasDeviceOrientation:(BOOL)orientation
{
  v3 = 128;
  if (!orientation)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasEnrolledIdentityCount:(BOOL)count
{
  v3 = 0x800000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasNoseAndMouthOccluded:(BOOL)occluded
{
  v3 = 0x10000000000000;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (void)setHasDoubleErrorCountsUpperFaceOccluded:(BOOL)occluded
{
  v3 = 0x80000;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasDoubleErrorCountsLowerFaceOccluded:(BOOL)occluded
{
  v3 = 4096;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasFrameErrorCountsUpperFaceOccluded:(BOOL)occluded
{
  v3 = 0x2000000000000;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasFrameErrorCountsLowerFaceOccluded:(BOOL)occluded
{
  v3 = 0x40000000000;
  if (!occluded)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasEnrollType:(BOOL)type
{
  v3 = 0x400000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasEnrolledTemplateCountType0:(BOOL)type0
{
  v3 = 0x2000000;
  if (!type0)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasEnrolledTemplateCountType1:(BOOL)type1
{
  v3 = 0x4000000;
  if (!type1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasEnrolledTemplateCountTotal:(BOOL)total
{
  v3 = 0x1000000;
  if (!total)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = AWDBiometricKitEnrollAttempt;
  v4 = [(AWDBiometricKitEnrollAttempt *)&v8 description];
  dictionaryRepresentation = [(AWDBiometricKitEnrollAttempt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v8 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 0x20000000000000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((*&has & 0x20000000000000) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x29EDBA070] numberWithBool:self->_overallResult];
  [dictionary setObject:v9 forKey:@"overallResult"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_overallTime];
  [dictionary setObject:v10 forKey:@"overallTime"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsOK];
  [dictionary setObject:v11 forKey:@"doubleErrorCountsOK"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsMoreFrames];
  [dictionary setObject:v12 forKey:@"doubleErrorCountsMoreFrames"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsNoFace];
  [dictionary setObject:v13 forKey:@"doubleErrorCountsNoFace"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsFaceOutOfFOV];
  [dictionary setObject:v14 forKey:@"doubleErrorCountsFaceOutOfFOV"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsMultipleFaces];
  [dictionary setObject:v15 forKey:@"doubleErrorCountsMultipleFaces"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsFaceTooClose];
  [dictionary setObject:v16 forKey:@"doubleErrorCountsFaceTooClose"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsFaceTooFar];
  [dictionary setObject:v17 forKey:@"doubleErrorCountsFaceTooFar"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsPoseOutRange];
  [dictionary setObject:v18 forKey:@"doubleErrorCountsPoseOutRange"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsBinCovered];
  [dictionary setObject:v19 forKey:@"doubleErrorCountsBinCovered"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsOccluded];
  [dictionary setObject:v20 forKey:@"doubleErrorCountsOccluded"];

  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_70:
  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsOK];
  [dictionary setObject:v21 forKey:@"frameErrorCountsOK"];

  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_72;
  }

LABEL_71:
  v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsMoreFrames];
  [dictionary setObject:v22 forKey:@"frameErrorCountsMoreFrames"];

  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  v23 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsNoFace];
  [dictionary setObject:v23 forKey:@"frameErrorCountsNoFace"];

  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_73:
  v24 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsFaceOutOfFOV];
  [dictionary setObject:v24 forKey:@"frameErrorCountsFaceOutOfFOV"];

  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_74:
  v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsMultipleFaces];
  [dictionary setObject:v25 forKey:@"frameErrorCountsMultipleFaces"];

  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_75:
  v26 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsFaceTooClose];
  [dictionary setObject:v26 forKey:@"frameErrorCountsFaceTooClose"];

  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

LABEL_76:
  v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsFaceTooFar];
  [dictionary setObject:v27 forKey:@"frameErrorCountsFaceTooFar"];

  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_78;
  }

LABEL_77:
  v28 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsPoseOutRange];
  [dictionary setObject:v28 forKey:@"frameErrorCountsPoseOutRange"];

  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_78:
  v29 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsBinCovered];
  [dictionary setObject:v29 forKey:@"frameErrorCountsBinCovered"];

  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_80;
  }

LABEL_79:
  v30 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsOccluded];
  [dictionary setObject:v30 forKey:@"frameErrorCountsOccluded"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

LABEL_80:
  v31 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin00];
  [dictionary setObject:v31 forKey:@"frameCountBin00"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_82;
  }

LABEL_81:
  v32 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin01];
  [dictionary setObject:v32 forKey:@"frameCountBin01"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_83;
  }

LABEL_82:
  v33 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin02];
  [dictionary setObject:v33 forKey:@"frameCountBin02"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_84;
  }

LABEL_83:
  v34 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin10];
  [dictionary setObject:v34 forKey:@"frameCountBin10"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_85;
  }

LABEL_84:
  v35 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin11];
  [dictionary setObject:v35 forKey:@"frameCountBin11"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_86;
  }

LABEL_85:
  v36 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin12];
  [dictionary setObject:v36 forKey:@"frameCountBin12"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_87;
  }

LABEL_86:
  v37 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin20];
  [dictionary setObject:v37 forKey:@"frameCountBin20"];

  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_88;
  }

LABEL_87:
  v38 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin21];
  [dictionary setObject:v38 forKey:@"frameCountBin21"];

  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_89;
  }

LABEL_88:
  v39 = [MEMORY[0x29EDBA070] numberWithInt:self->_frameCountBin22];
  [dictionary setObject:v39 forKey:@"frameCountBin22"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_90;
  }

LABEL_89:
  v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_bioCaptureSequenceCount];
  [dictionary setObject:v40 forKey:@"bioCaptureSequenceCount"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_35:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_91;
  }

LABEL_90:
  v41 = [MEMORY[0x29EDBA070] numberWithInt:self->_ambientLux];
  [dictionary setObject:v41 forKey:@"ambientLux"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_92;
  }

LABEL_91:
  v42 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_featureGenerationError];
  [dictionary setObject:v42 forKey:@"featureGenerationError"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_37:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_93;
  }

LABEL_92:
  v43 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrollFeatureVectorError];
  [dictionary setObject:v43 forKey:@"enrollFeatureVectorError"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

LABEL_93:
  v44 = [MEMORY[0x29EDBA070] numberWithInt:self->_cameraErr];
  [dictionary setObject:v44 forKey:@"cameraErr"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_95;
  }

LABEL_94:
  v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrollResult];
  [dictionary setObject:v45 forKey:@"enrollResult"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_96;
  }

LABEL_95:
  v46 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDistance];
  [dictionary setObject:v46 forKey:@"faceDistance"];

  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_41:
    if ((*&has & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_97;
  }

LABEL_96:
  v47 = [MEMORY[0x29EDBA070] numberWithInt:self->_sensorTemperature];
  [dictionary setObject:v47 forKey:@"sensorTemperature"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_42:
    if ((*&has & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_98;
  }

LABEL_97:
  v48 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_rfcSetIndex];
  [dictionary setObject:v48 forKey:@"rfcSetIndex"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_99;
  }

LABEL_98:
  v49 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_rfcFrameIndex];
  [dictionary setObject:v49 forKey:@"rfcFrameIndex"];

  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_99:
  v50 = [MEMORY[0x29EDBA070] numberWithBool:self->_failedNoFace];
  [dictionary setObject:v50 forKey:@"failedNoFace"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_101;
  }

LABEL_100:
  v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_deviceOrientation];
  [dictionary setObject:v51 forKey:@"deviceOrientation"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_102;
  }

LABEL_101:
  v52 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledIdentityCount];
  [dictionary setObject:v52 forKey:@"enrolledIdentityCount"];

  has = self->_has;
  if ((*&has & 0x10000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_103;
  }

LABEL_102:
  v53 = [MEMORY[0x29EDBA070] numberWithBool:self->_noseAndMouthOccluded];
  [dictionary setObject:v53 forKey:@"noseAndMouthOccluded"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_48:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_104;
  }

LABEL_103:
  v54 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsUpperFaceOccluded];
  [dictionary setObject:v54 forKey:@"doubleErrorCountsUpperFaceOccluded"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_105;
  }

LABEL_104:
  v55 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_doubleErrorCountsLowerFaceOccluded];
  [dictionary setObject:v55 forKey:@"doubleErrorCountsLowerFaceOccluded"];

  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

LABEL_105:
  v56 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsUpperFaceOccluded];
  [dictionary setObject:v56 forKey:@"frameErrorCountsUpperFaceOccluded"];

  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_107;
  }

LABEL_106:
  v57 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_frameErrorCountsLowerFaceOccluded];
  [dictionary setObject:v57 forKey:@"frameErrorCountsLowerFaceOccluded"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_52:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_108;
  }

LABEL_107:
  v58 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrollType];
  [dictionary setObject:v58 forKey:@"enrollType"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_109:
    v60 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledTemplateCountType1];
    [dictionary setObject:v60 forKey:@"enrolledTemplateCountType1"];

    if ((*&self->_has & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_108:
  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledTemplateCountType0];
  [dictionary setObject:v59 forKey:@"enrolledTemplateCountType0"];

  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    goto LABEL_109;
  }

LABEL_54:
  if ((*&has & 0x1000000) != 0)
  {
LABEL_55:
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_enrolledTemplateCountTotal];
    [dictionary setObject:v5 forKey:@"enrolledTemplateCountTotal"];
  }

LABEL_56:
  v6 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x20000000000000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x20000000000000) == 0)
  {
    goto LABEL_3;
  }

  overallResult = self->_overallResult;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

LABEL_61:
  overallTime = self->_overallTime;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_62:
  doubleErrorCountsOK = self->_doubleErrorCountsOK;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_63:
  doubleErrorCountsMoreFrames = self->_doubleErrorCountsMoreFrames;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

LABEL_64:
  doubleErrorCountsNoFace = self->_doubleErrorCountsNoFace;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

LABEL_65:
  doubleErrorCountsFaceOutOfFOV = self->_doubleErrorCountsFaceOutOfFOV;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

LABEL_66:
  doubleErrorCountsMultipleFaces = self->_doubleErrorCountsMultipleFaces;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_68;
  }

LABEL_67:
  doubleErrorCountsFaceTooClose = self->_doubleErrorCountsFaceTooClose;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_69;
  }

LABEL_68:
  doubleErrorCountsFaceTooFar = self->_doubleErrorCountsFaceTooFar;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_70;
  }

LABEL_69:
  doubleErrorCountsPoseOutRange = self->_doubleErrorCountsPoseOutRange;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_71;
  }

LABEL_70:
  doubleErrorCountsBinCovered = self->_doubleErrorCountsBinCovered;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_72;
  }

LABEL_71:
  doubleErrorCountsOccluded = self->_doubleErrorCountsOccluded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_72:
  frameErrorCountsOK = self->_frameErrorCountsOK;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_74;
  }

LABEL_73:
  frameErrorCountsMoreFrames = self->_frameErrorCountsMoreFrames;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_75;
  }

LABEL_74:
  frameErrorCountsNoFace = self->_frameErrorCountsNoFace;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_76;
  }

LABEL_75:
  frameErrorCountsFaceOutOfFOV = self->_frameErrorCountsFaceOutOfFOV;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

LABEL_76:
  frameErrorCountsMultipleFaces = self->_frameErrorCountsMultipleFaces;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_78;
  }

LABEL_77:
  frameErrorCountsFaceTooClose = self->_frameErrorCountsFaceTooClose;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_78:
  frameErrorCountsFaceTooFar = self->_frameErrorCountsFaceTooFar;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_80;
  }

LABEL_79:
  frameErrorCountsPoseOutRange = self->_frameErrorCountsPoseOutRange;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_81;
  }

LABEL_80:
  frameErrorCountsBinCovered = self->_frameErrorCountsBinCovered;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_82;
  }

LABEL_81:
  frameErrorCountsOccluded = self->_frameErrorCountsOccluded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_83;
  }

LABEL_82:
  frameCountBin00 = self->_frameCountBin00;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_84;
  }

LABEL_83:
  frameCountBin01 = self->_frameCountBin01;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_85;
  }

LABEL_84:
  frameCountBin02 = self->_frameCountBin02;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_86;
  }

LABEL_85:
  frameCountBin10 = self->_frameCountBin10;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_87;
  }

LABEL_86:
  frameCountBin11 = self->_frameCountBin11;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_87:
  frameCountBin12 = self->_frameCountBin12;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_89;
  }

LABEL_88:
  frameCountBin20 = self->_frameCountBin20;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_90;
  }

LABEL_89:
  frameCountBin21 = self->_frameCountBin21;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_91;
  }

LABEL_90:
  frameCountBin22 = self->_frameCountBin22;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_92;
  }

LABEL_91:
  bioCaptureSequenceCount = self->_bioCaptureSequenceCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_35:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

LABEL_92:
  ambientLux = self->_ambientLux;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_94;
  }

LABEL_93:
  featureGenerationError = self->_featureGenerationError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_37:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_95;
  }

LABEL_94:
  enrollFeatureVectorError = self->_enrollFeatureVectorError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_96;
  }

LABEL_95:
  cameraErr = self->_cameraErr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_97;
  }

LABEL_96:
  enrollResult = self->_enrollResult;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_98;
  }

LABEL_97:
  faceDistance = self->_faceDistance;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_41:
    if ((*&has & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_99;
  }

LABEL_98:
  sensorTemperature = self->_sensorTemperature;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_42:
    if ((*&has & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_100;
  }

LABEL_99:
  rfcSetIndex = self->_rfcSetIndex;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_101;
  }

LABEL_100:
  rfcFrameIndex = self->_rfcFrameIndex;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_102;
  }

LABEL_101:
  failedNoFace = self->_failedNoFace;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  deviceOrientation = self->_deviceOrientation;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_104;
  }

LABEL_103:
  enrolledIdentityCount = self->_enrolledIdentityCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_105;
  }

LABEL_104:
  noseAndMouthOccluded = self->_noseAndMouthOccluded;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_48:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_106;
  }

LABEL_105:
  doubleErrorCountsUpperFaceOccluded = self->_doubleErrorCountsUpperFaceOccluded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_107;
  }

LABEL_106:
  doubleErrorCountsLowerFaceOccluded = self->_doubleErrorCountsLowerFaceOccluded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_108;
  }

LABEL_107:
  frameErrorCountsUpperFaceOccluded = self->_frameErrorCountsUpperFaceOccluded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_109;
  }

LABEL_108:
  frameErrorCountsLowerFaceOccluded = self->_frameErrorCountsLowerFaceOccluded;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_52:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_110;
  }

LABEL_109:
  enrollType = self->_enrollType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_111;
  }

LABEL_110:
  enrolledTemplateCountType0 = self->_enrolledTemplateCountType0;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_54:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_111:
  enrolledTemplateCountType1 = self->_enrolledTemplateCountType1;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_55:
    enrolledTemplateCountTotal = self->_enrolledTemplateCountTotal;
    PBDataWriterWriteUint32Field();
  }

LABEL_56:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    toCopy[4] = self->_timestamp;
    toCopy[29] |= 8uLL;
    has = self->_has;
    if ((*&has & 0x20000000000000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x20000000000000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 230) = self->_overallResult;
  toCopy[29] |= 0x20000000000000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

LABEL_61:
  toCopy[1] = self->_overallTime;
  toCopy[29] |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(toCopy + 22) = self->_doubleErrorCountsOK;
  toCopy[29] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(toCopy + 19) = self->_doubleErrorCountsMoreFrames;
  toCopy[29] |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(toCopy + 21) = self->_doubleErrorCountsNoFace;
  toCopy[29] |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(toCopy + 15) = self->_doubleErrorCountsFaceOutOfFOV;
  toCopy[29] |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(toCopy + 20) = self->_doubleErrorCountsMultipleFaces;
  toCopy[29] |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(toCopy + 16) = self->_doubleErrorCountsFaceTooClose;
  toCopy[29] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(toCopy + 17) = self->_doubleErrorCountsFaceTooFar;
  toCopy[29] |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(toCopy + 24) = self->_doubleErrorCountsPoseOutRange;
  toCopy[29] |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(toCopy + 14) = self->_doubleErrorCountsBinCovered;
  toCopy[29] |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(toCopy + 23) = self->_doubleErrorCountsOccluded;
  toCopy[29] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(toCopy + 52) = self->_frameErrorCountsOK;
  toCopy[29] |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(toCopy + 49) = self->_frameErrorCountsMoreFrames;
  toCopy[29] |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(toCopy + 51) = self->_frameErrorCountsNoFace;
  toCopy[29] |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(toCopy + 45) = self->_frameErrorCountsFaceOutOfFOV;
  toCopy[29] |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(toCopy + 50) = self->_frameErrorCountsMultipleFaces;
  toCopy[29] |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(toCopy + 46) = self->_frameErrorCountsFaceTooClose;
  toCopy[29] |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(toCopy + 47) = self->_frameErrorCountsFaceTooFar;
  toCopy[29] |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(toCopy + 54) = self->_frameErrorCountsPoseOutRange;
  toCopy[29] |= 0x1000000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(toCopy + 44) = self->_frameErrorCountsBinCovered;
  toCopy[29] |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(toCopy + 53) = self->_frameErrorCountsOccluded;
  toCopy[29] |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(toCopy + 35) = self->_frameCountBin00;
  toCopy[29] |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(toCopy + 36) = self->_frameCountBin01;
  toCopy[29] |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(toCopy + 37) = self->_frameCountBin02;
  toCopy[29] |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(toCopy + 38) = self->_frameCountBin10;
  toCopy[29] |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(toCopy + 39) = self->_frameCountBin11;
  toCopy[29] |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(toCopy + 40) = self->_frameCountBin12;
  toCopy[29] |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(toCopy + 41) = self->_frameCountBin20;
  toCopy[29] |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(toCopy + 42) = self->_frameCountBin21;
  toCopy[29] |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(toCopy + 43) = self->_frameCountBin22;
  toCopy[29] |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(toCopy + 11) = self->_bioCaptureSequenceCount;
  toCopy[29] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_35:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(toCopy + 10) = self->_ambientLux;
  toCopy[29] |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(toCopy + 34) = self->_featureGenerationError;
  toCopy[29] |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_37:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(toCopy + 26) = self->_enrollFeatureVectorError;
  toCopy[29] |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(toCopy + 12) = self->_cameraErr;
  toCopy[29] |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(toCopy + 27) = self->_enrollResult;
  toCopy[29] |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(toCopy + 33) = self->_faceDistance;
  toCopy[29] |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_41:
    if ((*&has & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(toCopy + 56) = self->_sensorTemperature;
  toCopy[29] |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_42:
    if ((*&has & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_100;
  }

LABEL_99:
  toCopy[3] = self->_rfcSetIndex;
  toCopy[29] |= 4uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_101;
  }

LABEL_100:
  toCopy[2] = self->_rfcFrameIndex;
  toCopy[29] |= 2uLL;
  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(toCopy + 228) = self->_failedNoFace;
  toCopy[29] |= 0x8000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(toCopy + 13) = self->_deviceOrientation;
  toCopy[29] |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(toCopy + 29) = self->_enrolledIdentityCount;
  toCopy[29] |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(toCopy + 229) = self->_noseAndMouthOccluded;
  toCopy[29] |= 0x10000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_48:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(toCopy + 25) = self->_doubleErrorCountsUpperFaceOccluded;
  toCopy[29] |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(toCopy + 18) = self->_doubleErrorCountsLowerFaceOccluded;
  toCopy[29] |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(toCopy + 55) = self->_frameErrorCountsUpperFaceOccluded;
  toCopy[29] |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(toCopy + 48) = self->_frameErrorCountsLowerFaceOccluded;
  toCopy[29] |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_52:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(toCopy + 28) = self->_enrollType;
  toCopy[29] |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(toCopy + 31) = self->_enrolledTemplateCountType0;
  toCopy[29] |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_54:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_111:
  *(toCopy + 32) = self->_enrolledTemplateCountType1;
  toCopy[29] |= 0x4000000uLL;
  if ((*&self->_has & 0x1000000) != 0)
  {
LABEL_55:
    *(toCopy + 30) = self->_enrolledTemplateCountTotal;
    toCopy[29] |= 0x1000000uLL;
  }

LABEL_56:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 232) |= 8uLL;
    has = self->_has;
    if ((*&has & 0x20000000000000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_59;
    }
  }

  else if ((*&has & 0x20000000000000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 230) = self->_overallResult;
  *(v4 + 232) |= 0x20000000000000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 8) = self->_overallTime;
  *(v4 + 232) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 88) = self->_doubleErrorCountsOK;
  *(v4 + 232) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 76) = self->_doubleErrorCountsMoreFrames;
  *(v4 + 232) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 84) = self->_doubleErrorCountsNoFace;
  *(v4 + 232) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 60) = self->_doubleErrorCountsFaceOutOfFOV;
  *(v4 + 232) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 80) = self->_doubleErrorCountsMultipleFaces;
  *(v4 + 232) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 64) = self->_doubleErrorCountsFaceTooClose;
  *(v4 + 232) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 68) = self->_doubleErrorCountsFaceTooFar;
  *(v4 + 232) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 96) = self->_doubleErrorCountsPoseOutRange;
  *(v4 + 232) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 56) = self->_doubleErrorCountsBinCovered;
  *(v4 + 232) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 92) = self->_doubleErrorCountsOccluded;
  *(v4 + 232) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 208) = self->_frameErrorCountsOK;
  *(v4 + 232) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 196) = self->_frameErrorCountsMoreFrames;
  *(v4 + 232) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v4 + 204) = self->_frameErrorCountsNoFace;
  *(v4 + 232) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v4 + 180) = self->_frameErrorCountsFaceOutOfFOV;
  *(v4 + 232) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v4 + 200) = self->_frameErrorCountsMultipleFaces;
  *(v4 + 232) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v4 + 184) = self->_frameErrorCountsFaceTooClose;
  *(v4 + 232) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v4 + 188) = self->_frameErrorCountsFaceTooFar;
  *(v4 + 232) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v4 + 216) = self->_frameErrorCountsPoseOutRange;
  *(v4 + 232) |= 0x1000000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v4 + 176) = self->_frameErrorCountsBinCovered;
  *(v4 + 232) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v4 + 212) = self->_frameErrorCountsOccluded;
  *(v4 + 232) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v4 + 140) = self->_frameCountBin00;
  *(v4 + 232) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v4 + 144) = self->_frameCountBin01;
  *(v4 + 232) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v4 + 148) = self->_frameCountBin02;
  *(v4 + 232) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v4 + 152) = self->_frameCountBin10;
  *(v4 + 232) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v4 + 156) = self->_frameCountBin11;
  *(v4 + 232) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v4 + 160) = self->_frameCountBin12;
  *(v4 + 232) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v4 + 164) = self->_frameCountBin20;
  *(v4 + 232) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v4 + 168) = self->_frameCountBin21;
  *(v4 + 232) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v4 + 172) = self->_frameCountBin22;
  *(v4 + 232) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v4 + 44) = self->_bioCaptureSequenceCount;
  *(v4 + 232) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_35:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v4 + 40) = self->_ambientLux;
  *(v4 + 232) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v4 + 136) = self->_featureGenerationError;
  *(v4 + 232) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_37:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v4 + 104) = self->_enrollFeatureVectorError;
  *(v4 + 232) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v4 + 48) = self->_cameraErr;
  *(v4 + 232) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v4 + 108) = self->_enrollResult;
  *(v4 + 232) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v4 + 132) = self->_faceDistance;
  *(v4 + 232) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000000) == 0)
  {
LABEL_41:
    if ((*&has & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v4 + 224) = self->_sensorTemperature;
  *(v4 + 232) |= 0x4000000000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_42:
    if ((*&has & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(v4 + 24) = self->_rfcSetIndex;
  *(v4 + 232) |= 4uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_43:
    if ((*&has & 0x8000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(v4 + 16) = self->_rfcFrameIndex;
  *(v4 + 232) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x8000000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v4 + 228) = self->_failedNoFace;
  *(v4 + 232) |= 0x8000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v4 + 52) = self->_deviceOrientation;
  *(v4 + 232) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(v4 + 116) = self->_enrolledIdentityCount;
  *(v4 + 232) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v4 + 229) = self->_noseAndMouthOccluded;
  *(v4 + 232) |= 0x10000000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_48:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v4 + 100) = self->_doubleErrorCountsUpperFaceOccluded;
  *(v4 + 232) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v4 + 72) = self->_doubleErrorCountsLowerFaceOccluded;
  *(v4 + 232) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v4 + 220) = self->_frameErrorCountsUpperFaceOccluded;
  *(v4 + 232) |= 0x2000000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v4 + 192) = self->_frameErrorCountsLowerFaceOccluded;
  *(v4 + 232) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_52:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(v4 + 112) = self->_enrollType;
  *(v4 + 232) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_109:
    *(v4 + 128) = self->_enrolledTemplateCountType1;
    *(v4 + 232) |= 0x4000000uLL;
    if ((*&self->_has & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_108:
  *(v4 + 124) = self->_enrolledTemplateCountType0;
  *(v4 + 232) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    goto LABEL_109;
  }

LABEL_54:
  if ((*&has & 0x1000000) != 0)
  {
LABEL_55:
    *(v4 + 120) = self->_enrolledTemplateCountTotal;
    *(v4 + 232) |= 0x1000000uLL;
  }

LABEL_56:
  v6 = v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_281;
  }

  has = self->_has;
  v6 = *(equalCopy + 29);
  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x20000000000000) != 0)
  {
    if ((v6 & 0x20000000000000) == 0)
    {
      goto LABEL_281;
    }

    v7 = *(equalCopy + 230);
    if (self->_overallResult)
    {
      if ((*(equalCopy + 230) & 1) == 0)
      {
        goto LABEL_281;
      }
    }

    else if (*(equalCopy + 230))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x20000000000000) != 0)
  {
    goto LABEL_281;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_overallTime != *(equalCopy + 1))
    {
      goto LABEL_281;
    }
  }

  else if (v6)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_doubleErrorCountsOK != *(equalCopy + 22))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_doubleErrorCountsMoreFrames != *(equalCopy + 19))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_doubleErrorCountsNoFace != *(equalCopy + 21))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_doubleErrorCountsFaceOutOfFOV != *(equalCopy + 15))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_doubleErrorCountsMultipleFaces != *(equalCopy + 20))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_doubleErrorCountsFaceTooClose != *(equalCopy + 16))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_doubleErrorCountsFaceTooFar != *(equalCopy + 17))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_doubleErrorCountsPoseOutRange != *(equalCopy + 24))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_doubleErrorCountsBinCovered != *(equalCopy + 14))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_doubleErrorCountsOccluded != *(equalCopy + 23))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x400000000000) != 0)
  {
    if ((v6 & 0x400000000000) == 0 || self->_frameErrorCountsOK != *(equalCopy + 52))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x400000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v6 & 0x80000000000) == 0 || self->_frameErrorCountsMoreFrames != *(equalCopy + 49))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x80000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v6 & 0x200000000000) == 0 || self->_frameErrorCountsNoFace != *(equalCopy + 51))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x200000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v6 & 0x8000000000) == 0 || self->_frameErrorCountsFaceOutOfFOV != *(equalCopy + 45))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x8000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v6 & 0x100000000000) == 0 || self->_frameErrorCountsMultipleFaces != *(equalCopy + 50))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x100000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v6 & 0x10000000000) == 0 || self->_frameErrorCountsFaceTooClose != *(equalCopy + 46))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x10000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v6 & 0x20000000000) == 0 || self->_frameErrorCountsFaceTooFar != *(equalCopy + 47))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x20000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x1000000000000) != 0)
  {
    if ((v6 & 0x1000000000000) == 0 || self->_frameErrorCountsPoseOutRange != *(equalCopy + 54))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x1000000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v6 & 0x4000000000) == 0 || self->_frameErrorCountsBinCovered != *(equalCopy + 44))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x4000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x800000000000) != 0)
  {
    if ((v6 & 0x800000000000) == 0 || self->_frameErrorCountsOccluded != *(equalCopy + 53))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x800000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_frameCountBin00 != *(equalCopy + 35))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_frameCountBin01 != *(equalCopy + 36))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_frameCountBin02 != *(equalCopy + 37))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0 || self->_frameCountBin10 != *(equalCopy + 38))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v6 & 0x200000000) == 0 || self->_frameCountBin11 != *(equalCopy + 39))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x200000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_frameCountBin12 != *(equalCopy + 40))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v6 & 0x800000000) == 0 || self->_frameCountBin20 != *(equalCopy + 41))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x800000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v6 & 0x1000000000) == 0 || self->_frameCountBin21 != *(equalCopy + 42))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x1000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v6 & 0x2000000000) == 0 || self->_frameCountBin22 != *(equalCopy + 43))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x2000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_bioCaptureSequenceCount != *(equalCopy + 11))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_ambientLux != *(equalCopy + 10))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_featureGenerationError != *(equalCopy + 34))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_enrollFeatureVectorError != *(equalCopy + 26))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_cameraErr != *(equalCopy + 12))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_enrollResult != *(equalCopy + 27))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_faceDistance != *(equalCopy + 33))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v6 & 0x4000000000000) == 0 || self->_sensorTemperature != *(equalCopy + 56))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x4000000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_rfcSetIndex != *(equalCopy + 3))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_rfcFrameIndex != *(equalCopy + 2))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x8000000000000) != 0)
  {
    if ((v6 & 0x8000000000000) == 0)
    {
      goto LABEL_281;
    }

    v8 = *(equalCopy + 228);
    if (self->_failedNoFace)
    {
      if ((*(equalCopy + 228) & 1) == 0)
      {
        goto LABEL_281;
      }
    }

    else if (*(equalCopy + 228))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x8000000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_deviceOrientation != *(equalCopy + 13))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_enrolledIdentityCount != *(equalCopy + 29))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x10000000000000) != 0)
  {
    if ((v6 & 0x10000000000000) != 0)
    {
      v9 = *(equalCopy + 229);
      if (self->_noseAndMouthOccluded)
      {
        if ((*(equalCopy + 229) & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_241;
      }

      if ((*(equalCopy + 229) & 1) == 0)
      {
        goto LABEL_241;
      }
    }

LABEL_281:
    v11 = 0;
    goto LABEL_282;
  }

  if ((v6 & 0x10000000000000) != 0)
  {
    goto LABEL_281;
  }

LABEL_241:
  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_doubleErrorCountsUpperFaceOccluded != *(equalCopy + 25))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_doubleErrorCountsLowerFaceOccluded != *(equalCopy + 18))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x2000000000000) != 0)
  {
    if ((v6 & 0x2000000000000) == 0 || self->_frameErrorCountsUpperFaceOccluded != *(equalCopy + 55))
    {
      goto LABEL_281;
    }
  }

  else if ((v6 & 0x2000000000000) != 0)
  {
    goto LABEL_281;
  }

  v10 = *(equalCopy + 29);
  if ((*&has & 0x40000000000) != 0)
  {
    if ((v10 & 0x40000000000) == 0 || self->_frameErrorCountsLowerFaceOccluded != *(equalCopy + 48))
    {
      goto LABEL_281;
    }
  }

  else if ((v10 & 0x40000000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_enrollType != *(equalCopy + 28))
    {
      goto LABEL_281;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v10 & 0x2000000) == 0 || self->_enrolledTemplateCountType0 != *(equalCopy + 31))
    {
      goto LABEL_281;
    }
  }

  else if ((v10 & 0x2000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v10 & 0x4000000) == 0 || self->_enrolledTemplateCountType1 != *(equalCopy + 32))
    {
      goto LABEL_281;
    }
  }

  else if ((v10 & 0x4000000) != 0)
  {
    goto LABEL_281;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) == 0 || self->_enrolledTemplateCountTotal != *(equalCopy + 30))
    {
      goto LABEL_281;
    }

    v11 = 1;
  }

  else
  {
    v11 = (*(equalCopy + 29) & 0x1000000) == 0;
  }

LABEL_282:

  return v11;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v57 = 2654435761u * self->_timestamp;
    if ((*&has & 0x20000000000000) != 0)
    {
LABEL_3:
      v56 = 2654435761 * self->_overallResult;
      if (*&has)
      {
        goto LABEL_4;
      }

      goto LABEL_58;
    }
  }

  else
  {
    v57 = 0;
    if ((*&has & 0x20000000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v56 = 0;
  if (*&has)
  {
LABEL_4:
    v55 = 2654435761u * self->_overallTime;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_59;
  }

LABEL_58:
  v55 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_5:
    v54 = 2654435761 * self->_doubleErrorCountsOK;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

LABEL_59:
  v54 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v53 = 2654435761 * self->_doubleErrorCountsMoreFrames;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  v53 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_7:
    v52 = 2654435761 * self->_doubleErrorCountsNoFace;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  v52 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_8:
    v51 = 2654435761 * self->_doubleErrorCountsFaceOutOfFOV;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  v51 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    v50 = 2654435761 * self->_doubleErrorCountsMultipleFaces;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  v50 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_10:
    v49 = 2654435761 * self->_doubleErrorCountsFaceTooClose;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  v49 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_11:
    v48 = 2654435761 * self->_doubleErrorCountsFaceTooFar;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  v48 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_12:
    v47 = 2654435761 * self->_doubleErrorCountsPoseOutRange;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  v47 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_13:
    v46 = 2654435761 * self->_doubleErrorCountsBinCovered;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  v46 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_14:
    v45 = 2654435761 * self->_doubleErrorCountsOccluded;
    if ((*&has & 0x400000000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  v45 = 0;
  if ((*&has & 0x400000000000) != 0)
  {
LABEL_15:
    v44 = 2654435761 * self->_frameErrorCountsOK;
    if ((*&has & 0x80000000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  v44 = 0;
  if ((*&has & 0x80000000000) != 0)
  {
LABEL_16:
    v43 = 2654435761 * self->_frameErrorCountsMoreFrames;
    if ((*&has & 0x200000000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  v43 = 0;
  if ((*&has & 0x200000000000) != 0)
  {
LABEL_17:
    v42 = 2654435761 * self->_frameErrorCountsNoFace;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  v42 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_18:
    v41 = 2654435761 * self->_frameErrorCountsFaceOutOfFOV;
    if ((*&has & 0x100000000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  v41 = 0;
  if ((*&has & 0x100000000000) != 0)
  {
LABEL_19:
    v40 = 2654435761 * self->_frameErrorCountsMultipleFaces;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  v40 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_20:
    v39 = 2654435761 * self->_frameErrorCountsFaceTooClose;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  v39 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_21:
    v38 = 2654435761 * self->_frameErrorCountsFaceTooFar;
    if ((*&has & 0x1000000000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  v38 = 0;
  if ((*&has & 0x1000000000000) != 0)
  {
LABEL_22:
    v37 = 2654435761 * self->_frameErrorCountsPoseOutRange;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_23:
    v36 = 2654435761 * self->_frameErrorCountsBinCovered;
    if ((*&has & 0x800000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  v36 = 0;
  if ((*&has & 0x800000000000) != 0)
  {
LABEL_24:
    v35 = 2654435761 * self->_frameErrorCountsOccluded;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  v35 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_25:
    v34 = 2654435761 * self->_frameCountBin00;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  v34 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_26:
    v33 = 2654435761 * self->_frameCountBin01;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  v33 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_27:
    v32 = 2654435761 * self->_frameCountBin02;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  v32 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_28:
    v31 = 2654435761 * self->_frameCountBin10;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  v31 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_29:
    v30 = 2654435761 * self->_frameCountBin11;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  v30 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_30:
    v3 = 2654435761 * self->_frameCountBin12;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  v3 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_31:
    v4 = 2654435761 * self->_frameCountBin20;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  v4 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_32:
    v5 = 2654435761 * self->_frameCountBin21;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  v5 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_33:
    v6 = 2654435761 * self->_frameCountBin22;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  v6 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_34:
    v7 = 2654435761 * self->_bioCaptureSequenceCount;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  v7 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_35:
    v8 = 2654435761 * self->_ambientLux;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  v8 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_36:
    v9 = 2654435761 * self->_featureGenerationError;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  v9 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_37:
    v10 = 2654435761 * self->_enrollFeatureVectorError;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  v10 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_38:
    v11 = 2654435761 * self->_cameraErr;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  v11 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_39:
    v12 = 2654435761 * self->_enrollResult;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  v12 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_40:
    v13 = 2654435761 * self->_faceDistance;
    if ((*&has & 0x4000000000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  v13 = 0;
  if ((*&has & 0x4000000000000) != 0)
  {
LABEL_41:
    v14 = 2654435761 * self->_sensorTemperature;
    if ((*&has & 4) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  v14 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_42:
    v15 = 2654435761 * self->_rfcSetIndex;
    if ((*&has & 2) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  v15 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_43:
    v16 = 2654435761 * self->_rfcFrameIndex;
    if ((*&has & 0x8000000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  v16 = 0;
  if ((*&has & 0x8000000000000) != 0)
  {
LABEL_44:
    v17 = 2654435761 * self->_failedNoFace;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  v17 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_45:
    v18 = 2654435761 * self->_deviceOrientation;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  v18 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_46:
    v19 = 2654435761 * self->_enrolledIdentityCount;
    if ((*&has & 0x10000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_101;
  }

LABEL_100:
  v19 = 0;
  if ((*&has & 0x10000000000000) != 0)
  {
LABEL_47:
    v20 = 2654435761 * self->_noseAndMouthOccluded;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_102;
  }

LABEL_101:
  v20 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_48:
    v21 = 2654435761 * self->_doubleErrorCountsUpperFaceOccluded;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  v21 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_49:
    v22 = 2654435761 * self->_doubleErrorCountsLowerFaceOccluded;
    if ((*&has & 0x2000000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  v22 = 0;
  if ((*&has & 0x2000000000000) != 0)
  {
LABEL_50:
    v23 = 2654435761 * self->_frameErrorCountsUpperFaceOccluded;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  v23 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_51:
    v24 = 2654435761 * self->_frameErrorCountsLowerFaceOccluded;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  v24 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_52:
    v25 = 2654435761 * self->_enrollType;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  v25 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_53:
    v26 = 2654435761 * self->_enrolledTemplateCountType0;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_54;
    }

LABEL_108:
    v27 = 0;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_55;
    }

LABEL_109:
    v28 = 0;
    return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_107:
  v26 = 0;
  if ((*&has & 0x4000000) == 0)
  {
    goto LABEL_108;
  }

LABEL_54:
  v27 = 2654435761 * self->_enrolledTemplateCountType1;
  if ((*&has & 0x1000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_55:
  v28 = 2654435761 * self->_enrolledTemplateCountTotal;
  return v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 29);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(fromCopy + 4);
    *&self->_has |= 8uLL;
    v5 = *(fromCopy + 29);
    if ((v5 & 0x20000000000000) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_61;
    }
  }

  else if ((v5 & 0x20000000000000) == 0)
  {
    goto LABEL_3;
  }

  self->_overallResult = *(fromCopy + 230);
  *&self->_has |= 0x20000000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_overallTime = *(fromCopy + 1);
  *&self->_has |= 1uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x10000) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_doubleErrorCountsOK = *(fromCopy + 22);
  *&self->_has |= 0x10000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_doubleErrorCountsMoreFrames = *(fromCopy + 19);
  *&self->_has |= 0x2000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x8000) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_doubleErrorCountsNoFace = *(fromCopy + 21);
  *&self->_has |= 0x8000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_doubleErrorCountsFaceOutOfFOV = *(fromCopy + 15);
  *&self->_has |= 0x200uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_doubleErrorCountsMultipleFaces = *(fromCopy + 20);
  *&self->_has |= 0x4000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_doubleErrorCountsFaceTooClose = *(fromCopy + 16);
  *&self->_has |= 0x400uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_doubleErrorCountsFaceTooFar = *(fromCopy + 17);
  *&self->_has |= 0x800uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_doubleErrorCountsPoseOutRange = *(fromCopy + 24);
  *&self->_has |= 0x40000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_doubleErrorCountsBinCovered = *(fromCopy + 14);
  *&self->_has |= 0x100uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 0x400000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_doubleErrorCountsOccluded = *(fromCopy + 23);
  *&self->_has |= 0x20000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x400000000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_frameErrorCountsOK = *(fromCopy + 52);
  *&self->_has |= 0x400000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x200000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_frameErrorCountsMoreFrames = *(fromCopy + 49);
  *&self->_has |= 0x80000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x200000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_frameErrorCountsNoFace = *(fromCopy + 51);
  *&self->_has |= 0x200000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_frameErrorCountsFaceOutOfFOV = *(fromCopy + 45);
  *&self->_has |= 0x8000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_frameErrorCountsMultipleFaces = *(fromCopy + 50);
  *&self->_has |= 0x100000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_frameErrorCountsFaceTooClose = *(fromCopy + 46);
  *&self->_has |= 0x10000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_frameErrorCountsFaceTooFar = *(fromCopy + 47);
  *&self->_has |= 0x20000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x1000000000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_frameErrorCountsPoseOutRange = *(fromCopy + 54);
  *&self->_has |= 0x1000000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_frameErrorCountsBinCovered = *(fromCopy + 44);
  *&self->_has |= 0x4000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x800000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_frameErrorCountsOccluded = *(fromCopy + 53);
  *&self->_has |= 0x800000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_frameCountBin00 = *(fromCopy + 35);
  *&self->_has |= 0x20000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_frameCountBin01 = *(fromCopy + 36);
  *&self->_has |= 0x40000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_frameCountBin02 = *(fromCopy + 37);
  *&self->_has |= 0x80000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_frameCountBin10 = *(fromCopy + 38);
  *&self->_has |= 0x100000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_frameCountBin11 = *(fromCopy + 39);
  *&self->_has |= 0x200000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_frameCountBin12 = *(fromCopy + 40);
  *&self->_has |= 0x400000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_frameCountBin20 = *(fromCopy + 41);
  *&self->_has |= 0x800000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_frameCountBin21 = *(fromCopy + 42);
  *&self->_has |= 0x1000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_frameCountBin22 = *(fromCopy + 43);
  *&self->_has |= 0x2000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x20) == 0)
  {
LABEL_34:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_bioCaptureSequenceCount = *(fromCopy + 11);
  *&self->_has |= 0x20uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x10) == 0)
  {
LABEL_35:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_ambientLux = *(fromCopy + 10);
  *&self->_has |= 0x10uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_featureGenerationError = *(fromCopy + 34);
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x100000) == 0)
  {
LABEL_37:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_enrollFeatureVectorError = *(fromCopy + 26);
  *&self->_has |= 0x100000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x40) == 0)
  {
LABEL_38:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_cameraErr = *(fromCopy + 12);
  *&self->_has |= 0x40uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x200000) == 0)
  {
LABEL_39:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_enrollResult = *(fromCopy + 27);
  *&self->_has |= 0x200000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x4000000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_faceDistance = *(fromCopy + 33);
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x4000000000000) == 0)
  {
LABEL_41:
    if ((v5 & 4) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_sensorTemperature = *(fromCopy + 56);
  *&self->_has |= 0x4000000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 4) == 0)
  {
LABEL_42:
    if ((v5 & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_rfcSetIndex = *(fromCopy + 3);
  *&self->_has |= 4uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 2) == 0)
  {
LABEL_43:
    if ((v5 & 0x8000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_rfcFrameIndex = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x8000000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_failedNoFace = *(fromCopy + 228);
  *&self->_has |= 0x8000000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x80) == 0)
  {
LABEL_45:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_deviceOrientation = *(fromCopy + 13);
  *&self->_has |= 0x80uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x800000) == 0)
  {
LABEL_46:
    if ((v5 & 0x10000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_104;
  }

LABEL_103:
  self->_enrolledIdentityCount = *(fromCopy + 29);
  *&self->_has |= 0x800000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x10000000000000) == 0)
  {
LABEL_47:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_noseAndMouthOccluded = *(fromCopy + 229);
  *&self->_has |= 0x10000000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x80000) == 0)
  {
LABEL_48:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_doubleErrorCountsUpperFaceOccluded = *(fromCopy + 25);
  *&self->_has |= 0x80000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x1000) == 0)
  {
LABEL_49:
    if ((v5 & 0x2000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_doubleErrorCountsLowerFaceOccluded = *(fromCopy + 18);
  *&self->_has |= 0x1000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x2000000000000) == 0)
  {
LABEL_50:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_frameErrorCountsUpperFaceOccluded = *(fromCopy + 55);
  *&self->_has |= 0x2000000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_51:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_frameErrorCountsLowerFaceOccluded = *(fromCopy + 48);
  *&self->_has |= 0x40000000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x400000) == 0)
  {
LABEL_52:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_enrollType = *(fromCopy + 28);
  *&self->_has |= 0x400000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_53:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_111;
  }

LABEL_110:
  self->_enrolledTemplateCountType0 = *(fromCopy + 31);
  *&self->_has |= 0x2000000uLL;
  v5 = *(fromCopy + 29);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_54:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_111:
  self->_enrolledTemplateCountType1 = *(fromCopy + 32);
  *&self->_has |= 0x4000000uLL;
  if ((*(fromCopy + 29) & 0x1000000) != 0)
  {
LABEL_55:
    self->_enrolledTemplateCountTotal = *(fromCopy + 30);
    *&self->_has |= 0x1000000uLL;
  }

LABEL_56:
}

@end