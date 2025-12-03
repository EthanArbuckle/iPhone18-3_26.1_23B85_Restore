@interface PVFaceprint
+ (id)faceprintWithFaceprintData:(id)data faceprintVersion:(int64_t)version;
- (BOOL)getDistance:(float *)distance toOtherFaceprint:(id)faceprint error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setPropertiesFrom:(id)from;
@end

@implementation PVFaceprint

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v7.receiver = self;
  v7.super_class = PVFaceprint;
  v4 = [(PVObject *)&v7 description];
  v5 = [v3 stringWithString:v4];

  [v5 appendFormat:@"  faceprintVersion       : %ld\n", self->_faceprintVersion];
  [v5 appendFormat:@"  faceprintData          : <%p> [length: %ld]\n", self->_faceprintData, -[NSData length](self->_faceprintData, "length")];

  return v5;
}

- (BOOL)getDistance:(float *)distance toOtherFaceprint:(id)faceprint error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  faceprintCopy = faceprint;
  v9 = faceprintCopy;
  if (error)
  {
    if (faceprintCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Cannot get distance between faceprints. Missing faceprint.";
    faceprintData = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v23 = v22;
    v24 = -1010;
LABEL_15:
    [v23 errorForPhotoVisionErrorCode:v24 userInfo:faceprintData];
    *error = v20 = 0;
    goto LABEL_22;
  }

  v30 = 0;
  error = &v30;
  if (!faceprintCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  faceprintVersion = [(PVFaceprint *)self faceprintVersion];
  if (faceprintVersion != [v9 faceprintVersion])
  {
    v25 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"Cannot get distance between faceprints with mismatched versions.";
    faceprintData = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v23 = v25;
    v24 = -1011;
    goto LABEL_15;
  }

  faceprintData = [(PVFaceprint *)self faceprintData];
  faceprintData2 = [v9 faceprintData];
  v13 = faceprintData2;
  if (faceprintData && faceprintData2)
  {
    v29 = 0;
    v14 = [PVUtils faceprintFromFaceprintArchive:faceprintData error:&v29];
    v15 = v29;
    if (v14)
    {
      v28 = v15;
      v16 = [PVUtils faceprintFromFaceprintArchive:v13 error:&v28];
      v17 = v28;

      if (v16)
      {
        v18 = [v14 computeDistance:v16 withDistanceFunction:0 error:error];
        v19 = v18;
        v20 = v18 != 0;
        if (distance && v18)
        {
          [v18 floatValue];
          *distance = v21;
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] errorForPhotoVisionErrorCode:-1010 localizedDescription:@"Cannot get distance between faceprints. Missing faceprint." underlyingError:v17];
        *error = v20 = 0;
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] errorForPhotoVisionErrorCode:-1010 localizedDescription:@"Cannot get distance between faceprints. Missing faceprint." underlyingError:v15];
      *error = v20 = 0;
      v17 = v15;
    }
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Cannot get distance between faceprints. Missing faceprint data.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v26 errorForPhotoVisionErrorCode:-1010 userInfo:v17];
    *error = v20 = 0;
  }

LABEL_22:
  return v20;
}

- (void)_setPropertiesFrom:(id)from
{
  fromCopy = from;
  self->_faceprintVersion = [fromCopy faceprintVersion];
  faceprintData = [fromCopy faceprintData];

  v5 = [faceprintData copy];
  faceprintData = self->_faceprintData;
  self->_faceprintData = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PVFaceprint;
  v4 = [(PVObject *)&v6 copyWithZone:zone];
  [v4 _setPropertiesFrom:self];
  return v4;
}

+ (id)faceprintWithFaceprintData:(id)data faceprintVersion:(int64_t)version
{
  if (data)
  {
    dataCopy = data;
    v7 = [[self alloc] initWithLocalIdentifier:0];
    [v7 setFaceprintData:dataCopy];

    [v7 setFaceprintVersion:version];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end