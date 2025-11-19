@interface PVFaceprint
+ (id)faceprintWithFaceprintData:(id)a3 faceprintVersion:(int64_t)a4;
- (BOOL)getDistance:(float *)a3 toOtherFaceprint:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_setPropertiesFrom:(id)a3;
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

- (BOOL)getDistance:(float *)a3 toOtherFaceprint:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Cannot get distance between faceprints. Missing faceprint.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v23 = v22;
    v24 = -1010;
LABEL_15:
    [v23 errorForPhotoVisionErrorCode:v24 userInfo:v11];
    *a5 = v20 = 0;
    goto LABEL_22;
  }

  v30 = 0;
  a5 = &v30;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v10 = [(PVFaceprint *)self faceprintVersion];
  if (v10 != [v9 faceprintVersion])
  {
    v25 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = @"Cannot get distance between faceprints with mismatched versions.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v23 = v25;
    v24 = -1011;
    goto LABEL_15;
  }

  v11 = [(PVFaceprint *)self faceprintData];
  v12 = [v9 faceprintData];
  v13 = v12;
  if (v11 && v12)
  {
    v29 = 0;
    v14 = [PVUtils faceprintFromFaceprintArchive:v11 error:&v29];
    v15 = v29;
    if (v14)
    {
      v28 = v15;
      v16 = [PVUtils faceprintFromFaceprintArchive:v13 error:&v28];
      v17 = v28;

      if (v16)
      {
        v18 = [v14 computeDistance:v16 withDistanceFunction:0 error:a5];
        v19 = v18;
        v20 = v18 != 0;
        if (a3 && v18)
        {
          [v18 floatValue];
          *a3 = v21;
        }
      }

      else
      {
        [MEMORY[0x277CCA9B8] errorForPhotoVisionErrorCode:-1010 localizedDescription:@"Cannot get distance between faceprints. Missing faceprint." underlyingError:v17];
        *a5 = v20 = 0;
      }
    }

    else
    {
      [MEMORY[0x277CCA9B8] errorForPhotoVisionErrorCode:-1010 localizedDescription:@"Cannot get distance between faceprints. Missing faceprint." underlyingError:v15];
      *a5 = v20 = 0;
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
    *a5 = v20 = 0;
  }

LABEL_22:
  return v20;
}

- (void)_setPropertiesFrom:(id)a3
{
  v4 = a3;
  self->_faceprintVersion = [v4 faceprintVersion];
  v7 = [v4 faceprintData];

  v5 = [v7 copy];
  faceprintData = self->_faceprintData;
  self->_faceprintData = v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PVFaceprint;
  v4 = [(PVObject *)&v6 copyWithZone:a3];
  [v4 _setPropertiesFrom:self];
  return v4;
}

+ (id)faceprintWithFaceprintData:(id)a3 faceprintVersion:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [[a1 alloc] initWithLocalIdentifier:0];
    [v7 setFaceprintData:v6];

    [v7 setFaceprintVersion:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end