@interface PNVisionHelper
+ (id)faceprintFromFaceprintArchive:(id)archive error:(id *)error;
- (float)distanceBetweenFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error;
- (id)faceObservationFromFace:(id)face;
@end

@implementation PNVisionHelper

+ (id)faceprintFromFaceprintArchive:(id)archive error:(id *)error
{
  v5 = MEMORY[0x1E6984520];
  archiveCopy = archive;
  v7 = [[v5 alloc] initWithState:archiveCopy error:error];

  return v7;
}

- (id)faceObservationFromFace:(id)face
{
  v17 = *MEMORY[0x1E69E9840];
  faceCopy = face;
  if ([faceCopy vuObservationID] < 1)
  {
    clusterSequenceNumber = [faceCopy clusterSequenceNumber];
  }

  else
  {
    clusterSequenceNumber = [faceCopy vuObservationID];
  }

  v5 = clusterSequenceNumber;
  if (clusterSequenceNumber < 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = faceCopy;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cannot create VNFaceObservation for an unclustered face %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    faceprintData = [faceCopy faceprintData];
    if (faceprintData)
    {
      v12 = 0;
      v7 = [objc_opt_class() faceprintFromFaceprintArchive:faceprintData error:&v12];
      v8 = v12;
      if (v7)
      {
        v9 = objc_alloc_init(MEMORY[0x1E6984518]);
        [v9 setFaceId:v5];
        [v9 setFaceTorsoprint:v7];
        faceprint = [v7 faceprint];
        [v9 setFaceprint:faceprint];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v14 = faceCopy;
          v15 = 2112;
          v16 = v8;
          _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get VNFaceTorsoprint from faceprint data for face %@, error: %@", buf, 0x16u);
        }

        v9 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = faceCopy;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed retrieving faceprint data from face %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (float)distanceBetweenFaceObservation:(id)observation andFaceObservation:(id)faceObservation error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  faceObservationCopy = faceObservation;
  faceprint = [observationCopy faceprint];
  if (faceprint && (v10 = faceprint, [faceObservationCopy faceprint], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    faceprint2 = [observationCopy faceprint];
    faceprint3 = [faceObservationCopy faceprint];
    v14 = [faceprint2 computeDistance:faceprint3 withDistanceFunction:0 error:error];

    if (v14)
    {
      [v14 floatValue];
      v16 = v15;
    }

    else
    {
      v16 = 1.0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412546;
        v19 = observationCopy;
        v20 = 2112;
        v21 = faceObservationCopy;
        _os_log_debug_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Failed to get a distance between person %@ and %@", &v18, 0x16u);
      }
    }
  }

  else
  {
    v16 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 138412546;
      v19 = observationCopy;
      v20 = 2112;
      v21 = faceObservationCopy;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed computing distance between person %@ and %@", &v18, 0x16u);
    }
  }

  return v16;
}

@end