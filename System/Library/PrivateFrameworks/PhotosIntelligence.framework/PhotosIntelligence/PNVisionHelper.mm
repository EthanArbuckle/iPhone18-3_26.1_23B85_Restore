@interface PNVisionHelper
+ (id)faceprintFromFaceprintArchive:(id)a3 error:(id *)a4;
- (float)distanceBetweenFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5;
- (id)faceObservationFromFace:(id)a3;
@end

@implementation PNVisionHelper

+ (id)faceprintFromFaceprintArchive:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E6984520];
  v6 = a3;
  v7 = [[v5 alloc] initWithState:v6 error:a4];

  return v7;
}

- (id)faceObservationFromFace:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 vuObservationID] < 1)
  {
    v4 = [v3 clusterSequenceNumber];
  }

  else
  {
    v4 = [v3 vuObservationID];
  }

  v5 = v4;
  if (v4 < 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cannot create VNFaceObservation for an unclustered face %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v6 = [v3 faceprintData];
    if (v6)
    {
      v12 = 0;
      v7 = [objc_opt_class() faceprintFromFaceprintArchive:v6 error:&v12];
      v8 = v12;
      if (v7)
      {
        v9 = objc_alloc_init(MEMORY[0x1E6984518]);
        [v9 setFaceId:v5];
        [v9 setFaceTorsoprint:v7];
        v10 = [v7 faceprint];
        [v9 setFaceprint:v10];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v14 = v3;
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
        v14 = v3;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed retrieving faceprint data from face %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (float)distanceBetweenFaceObservation:(id)a3 andFaceObservation:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 faceprint];
  if (v9 && (v10 = v9, [v8 faceprint], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [v7 faceprint];
    v13 = [v8 faceprint];
    v14 = [v12 computeDistance:v13 withDistanceFunction:0 error:a5];

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
        v19 = v7;
        v20 = 2112;
        v21 = v8;
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
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed computing distance between person %@ and %@", &v18, 0x16u);
    }
  }

  return v16;
}

@end