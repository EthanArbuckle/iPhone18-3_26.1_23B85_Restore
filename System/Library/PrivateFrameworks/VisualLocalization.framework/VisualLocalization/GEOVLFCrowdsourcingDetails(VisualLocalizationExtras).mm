@interface GEOVLFCrowdsourcingDetails(VisualLocalizationExtras)
+ (id)_vl_createWithVLCrowdsourcingDetails:()VisualLocalizationExtras;
@end

@implementation GEOVLFCrowdsourcingDetails(VisualLocalizationExtras)

+ (id)_vl_createWithVLCrowdsourcingDetails:()VisualLocalizationExtras
{
  v4 = a3;
  v5 = [v4 statistics];
  v6 = [v5 stats];

  if (v6 && (![v4 slamTracksCount] || objc_msgSend(v4, "slamOrigin")) && (!objc_msgSend(v4, "slamTracksCount") || objc_msgSend(v4, "slamTracks")) && (!objc_msgSend(v4, "slamTracksCount") || objc_msgSend(v4, "slamTrackDescriptors")) && (!objc_msgSend(v4, "slamTracksCount") || objc_msgSend(v4, "slamTrackObservations")) && (!objc_msgSend(v4, "slamTracksCount") || objc_msgSend(v4, "slamTrackImageIndices")) && (!objc_msgSend(v4, "slamTracksCount") || objc_msgSend(v4, "slamTracks2D")) && (!objc_msgSend(v4, "frameCount") || objc_msgSend(v4, "perFrameVioStatusCodes")) && (!objc_msgSend(v4, "frameCount") || objc_msgSend(v4, "perFrameVioPoses")) && (!objc_msgSend(v4, "frameCount") || objc_msgSend(v4, "perFrameCalibrationMatrices")) && (!objc_msgSend(v4, "frameCount") || objc_msgSend(v4, "perFrameDistortion")) && objc_msgSend(v4, "resultPoseRotation") && objc_msgSend(v4, "resultPoseTranslation") && (!objc_msgSend(v4, "inliersCount") || objc_msgSend(v4, "points2D")) && (!objc_msgSend(v4, "inliersCount") || objc_msgSend(v4, "points3D")))
  {
    v7 = objc_alloc_init(a1);
    if (v7)
    {
      [v7 addSlamOrigin:{*objc_msgSend(v4, "slamOrigin")}];
      [v7 addSlamOrigin:{*(objc_msgSend(v4, "slamOrigin") + 8)}];
      [v7 addSlamOrigin:{*(objc_msgSend(v4, "slamOrigin") + 16)}];
      [v7 addSlamOrigin:{*(objc_msgSend(v4, "slamOrigin") + 24)}];
      [v7 addSlamOrigin:{*(objc_msgSend(v4, "slamOrigin") + 32)}];
      v102 = v7;
      [v7 addSlamOrigin:{*(objc_msgSend(v4, "slamOrigin") + 40)}];
      if ([v4 slamTracksCount])
      {
        v8 = 0;
        v9 = 0;
        do
        {
          v10 = objc_alloc_init(MEMORY[0x277D0EE08]);
          v11 = ([v4 slamTracks] + 12 * v9);
          v12 = objc_alloc_init(MEMORY[0x277D0EE00]);
          LODWORD(v13) = *v11;
          [v12 setX:v13];
          LODWORD(v14) = v11[1];
          [v12 setY:v14];
          LODWORD(v15) = v11[2];
          [v12 setZ:v15];
          [v10 setPosition:v12];

          v16 = [v4 slamTrackDescriptors];
          v17 = [v4 descriptorDimension];
          if ([v4 descriptorDimension])
          {
            v18 = 0;
            v19 = v16 + v17 * v9;
            do
            {
              [v10 addDescriptors:*(v19 + v18++)];
            }

            while (v18 < [v4 descriptorDimension]);
          }

          v20 = [v4 slamTrackObservations];
          v21 = *(v20 + 2 * v9);
          if (*(v20 + 2 * v9))
          {
            v22 = 2 * v8;
            v23 = *(v20 + 2 * v9);
            do
            {
              [v10 addObservationImageIndices:{*(objc_msgSend(v4, "slamTrackImageIndices") + v22)}];
              v24 = objc_alloc_init(MEMORY[0x277D0EDE0]);
              LODWORD(v25) = *([v4 slamTracks2D] + 4 * v22);
              [v24 setX:v25];
              LODWORD(v26) = *([v4 slamTracks2D] + 4 * v22 + 4);
              [v24 setY:v26];
              [v10 addImagePositions:v24];

              v22 += 2;
              --v23;
            }

            while (v23);
          }

          v8 += v21;
          [v102 addSlamTracks:v10];

          ++v9;
        }

        while (v9 < [v4 slamTracksCount]);
      }

      if ([v4 frameCount])
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 88;
        v31 = 32;
        v32 = 44;
        do
        {
          v33 = objc_alloc_init(MEMORY[0x277D0EDD0]);
          [v33 setVioStatus:{*(objc_msgSend(v4, "perFrameVioStatusCodes") + v28)}];
          LODWORD(v34) = *([v4 perFrameVioPoses] + v32 - 44);
          [v33 addVioPose:v34];
          LODWORD(v35) = *([v4 perFrameVioPoses] + v32 - 40);
          [v33 addVioPose:v35];
          LODWORD(v36) = *([v4 perFrameVioPoses] + v32 - 36);
          [v33 addVioPose:v36];
          LODWORD(v37) = *([v4 perFrameVioPoses] + v32 - 32);
          [v33 addVioPose:v37];
          LODWORD(v38) = *([v4 perFrameVioPoses] + v32 - 28);
          [v33 addVioPose:v38];
          LODWORD(v39) = *([v4 perFrameVioPoses] + v32 - 24);
          [v33 addVioPose:v39];
          LODWORD(v40) = *([v4 perFrameVioPoses] + v32 - 20);
          [v33 addVioPose:v40];
          LODWORD(v41) = *([v4 perFrameVioPoses] + v32 - 16);
          [v33 addVioPose:v41];
          LODWORD(v42) = *([v4 perFrameVioPoses] + v32 - 12);
          [v33 addVioPose:v42];
          LODWORD(v43) = *([v4 perFrameVioPoses] + v32 - 8);
          [v33 addVioPose:v43];
          LODWORD(v44) = *([v4 perFrameVioPoses] + v32 - 4);
          [v33 addVioPose:v44];
          LODWORD(v45) = *([v4 perFrameVioPoses] + v32);
          [v33 addVioPose:v45];
          LODWORD(v46) = *([v4 perFrameCalibrationMatrices] + v31 - 32);
          [v33 addCalibrationMatrix:v46];
          LODWORD(v47) = *([v4 perFrameCalibrationMatrices] + v31 - 28);
          [v33 addCalibrationMatrix:v47];
          LODWORD(v48) = *([v4 perFrameCalibrationMatrices] + v31 - 24);
          [v33 addCalibrationMatrix:v48];
          LODWORD(v49) = *([v4 perFrameCalibrationMatrices] + v31 - 20);
          [v33 addCalibrationMatrix:v49];
          LODWORD(v50) = *([v4 perFrameCalibrationMatrices] + v31 - 16);
          [v33 addCalibrationMatrix:v50];
          LODWORD(v51) = *([v4 perFrameCalibrationMatrices] + v31 - 12);
          [v33 addCalibrationMatrix:v51];
          LODWORD(v52) = *([v4 perFrameCalibrationMatrices] + v31 - 8);
          [v33 addCalibrationMatrix:v52];
          LODWORD(v53) = *([v4 perFrameCalibrationMatrices] + v31 - 4);
          [v33 addCalibrationMatrix:v53];
          LODWORD(v54) = *([v4 perFrameCalibrationMatrices] + v31);
          [v33 addCalibrationMatrix:v54];
          LODWORD(v55) = *([v4 perFrameDistortion] + v27);
          [v33 setRadialDistortion1:v55];
          LODWORD(v56) = *([v4 perFrameDistortion] + v27 + 4);
          [v33 setRadialDistortion2:v56];
          v58 = *(v6 + 248);
          if (v58)
          {
            [v33 setTimestamp:*(v58 + 8 * v29)];
          }

          v59 = *(v6 + 240);
          if (v59)
          {
            LODWORD(v57) = *(v59 + v32 - 44);
            [v33 addSlamPose:v57];
            LODWORD(v60) = *(*(v6 + 240) + v32 - 40);
            [v33 addSlamPose:v60];
            LODWORD(v61) = *(*(v6 + 240) + v32 - 36);
            [v33 addSlamPose:v61];
            LODWORD(v62) = *(*(v6 + 240) + v32 - 32);
            [v33 addSlamPose:v62];
            LODWORD(v63) = *(*(v6 + 240) + v32 - 28);
            [v33 addSlamPose:v63];
            LODWORD(v64) = *(*(v6 + 240) + v32 - 24);
            [v33 addSlamPose:v64];
            LODWORD(v65) = *(*(v6 + 240) + v32 - 20);
            [v33 addSlamPose:v65];
            LODWORD(v66) = *(*(v6 + 240) + v32 - 16);
            [v33 addSlamPose:v66];
            LODWORD(v67) = *(*(v6 + 240) + v32 - 12);
            [v33 addSlamPose:v67];
            LODWORD(v68) = *(*(v6 + 240) + v32 - 8);
            [v33 addSlamPose:v68];
            LODWORD(v69) = *(*(v6 + 240) + v32 - 4);
            [v33 addSlamPose:v69];
            LODWORD(v70) = *(*(v6 + 240) + v32);
            [v33 addSlamPose:v70];
          }

          v71 = *(v6 + 104);
          if (v71)
          {
            v72 = (v71 + 4 * v28);
            v73 = v72[1];
            v74 = v72[2];
            v75 = v72[3];
            v76 = objc_alloc_init(MEMORY[0x277D0EE20]);
            [v76 setXCoordinate:v73];
            [v76 setYCoordinate:v74];
            [v76 setUncertainty:v75];
            [v33 setTileId:v76];
          }

          v77 = *(v6 + 120);
          if (v77)
          {
            v78 = (v77 + v30);
            v79 = *(v78 - 10);
            v80 = *(v78 - 9);
            v81 = *(v78 - 8);
            v82 = *(v78 - 7);
            v83 = *(v78 - 6);
            v84 = *(v78 - 5);
            v85 = *(v78 - 4);
            v86 = *(v78 - 3);
            v99 = *(v78 - 2);
            v100 = *(v78 - 1);
            v101 = *v78;
            [v33 addResultPoseRotation:*(v78 - 11)];
            [v33 addResultPoseRotation:v79];
            [v33 addResultPoseRotation:v80];
            [v33 addResultPoseRotation:v81];
            [v33 addResultPoseRotation:v82];
            [v33 addResultPoseRotation:v83];
            [v33 addResultPoseRotation:v84];
            [v33 addResultPoseRotation:v85];
            [v33 addResultPoseRotation:v86];
            [v33 setResultTranslationX:v99];
            [v33 setResultTranslationY:v100];
            [v33 setResultTranslationZ:v101];
          }

          v87 = *(v6 + 128);
          if (v87)
          {
            [v33 setResultStatus:*(v87 + v28)];
          }

          [v102 addFrameDetails:v33];

          ++v29;
          v28 += 4;
          v30 += 248;
          v27 += 8;
          v31 += 36;
          v32 += 48;
        }

        while (v29 < [v4 frameCount]);
      }

      v7 = v102;
      [v102 addResultPoseRotation:{*objc_msgSend(v4, "resultPoseRotation")}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 8)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 16)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 24)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 32)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 40)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 48)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 56)}];
      [v102 addResultPoseRotation:{*(objc_msgSend(v4, "resultPoseRotation") + 64)}];
      [v102 setResultTranslationX:{*objc_msgSend(v4, "resultPoseTranslation")}];
      [v102 setResultTranslationY:{*(objc_msgSend(v4, "resultPoseTranslation") + 8)}];
      [v102 setResultTranslationZ:{*(objc_msgSend(v4, "resultPoseTranslation") + 16)}];
      if ([v4 inliersCount])
      {
        v88 = 0;
        v89 = 0;
        v90 = 0;
        do
        {
          LODWORD(v91) = *([v4 points2D] + v88);
          [v102 addInlierPoints2D:v91];
          LODWORD(v92) = *([v4 points2D] + v88 + 4);
          [v102 addInlierPoints2D:v92];
          v93 = *([v4 points3D] + v89);
          [v102 addInlierPoints3D:v93];
          v94 = *([v4 points3D] + v89 + 8);
          [v102 addInlierPoints3D:v94];
          v95 = *([v4 points3D] + v89 + 16);
          [v102 addInlierPoints3D:v95];
          v96 = *(v6 + 32);
          if (v96)
          {
            [v102 addSlamPtsInlierIdx:*(v96 + 2 * v90)];
          }

          ++v90;
          v89 += 24;
          v88 += 8;
        }

        while (v90 < [v4 inliersCount]);
      }

      [v102 setStartFrameIdx:*(v6 + 296) & ~(*(v6 + 296) >> 31)];
      v97 = v102;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end