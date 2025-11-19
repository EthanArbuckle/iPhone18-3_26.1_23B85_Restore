@interface _VLStatistics
- (_VLStatistics)initWithCoder:(id)a3;
- (_VLStatistics)initWithStats:(id *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _VLStatistics

- (_VLStatistics)initWithStats:(id *)a3
{
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = _VLStatistics;
    v4 = [(_VLStatistics *)&v8 init];
    v5 = v4;
    if (v4)
    {
      memcpy(&v4->_stats, a3, sizeof(v4->_stats));
      v6 = v5;
    }

    return v5;
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 0;
      _os_log_fault_impl(&dword_27103D000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Assertion failed: stats != ((void*)0)", buf, 2u);
    }

    __break(1u);
  }

  return result;
}

- (_VLStatistics)initWithCoder:(id)a3
{
  v152[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v108 = 0;
  v5 = [v4 decodeBytesForKey:@"statistics" returnedLength:&v108];
  if (v108 != 504)
  {
    v31 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA050];
    v151 = *MEMORY[0x277CBEE28];
    v152[0] = @"statistics bytes were not the expected length";
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:&v151 count:1];
    v34 = [v31 errorWithDomain:v32 code:4864 userInfo:v33];
    [v4 failWithError:v34];

LABEL_18:
LABEL_22:

    self = 0;
    goto LABEL_23;
  }

  memcpy(__dst, v5, 0x1F8uLL);
  memset(__dst, 0, 40);
  __dst[4] = 0uLL;
  *(&__dst[6] + 8) = 0u;
  *(&__dst[7] + 8) = 0u;
  __dst[12] = 0uLL;
  *(&__dst[16] + 8) = 0u;
  *(&__dst[13] + 8) = 0u;
  *(&__dst[14] + 8) = 0u;
  *(&__dst[15] + 8) = 0u;
  *(&__dst[17] + 1) = 0;
  memcpy(&self->_stats, __dst, sizeof(self->_stats));
  v106.receiver = self;
  v106.super_class = _VLStatistics;
  self = [(_VLStatistics *)&v106 init];
  if (self)
  {
    *&__dst[0] = 0;
    v6 = [v4 decodeBytesForKey:@"points3D" returnedLength:__dst];
    if (*&__dst[0] == 8 * ((3 * self->_stats.num_inliers) & ~((3 * self->_stats.num_inliers) >> 31)))
    {
      v7 = malloc_type_malloc(*&__dst[0], 0x100004000313F17uLL);
      self->_stats.points3d = v7;
      memcpy(v7, v6, *&__dst[0]);
      *&__dst[0] = 0;
      v8 = [v4 decodeBytesForKey:@"points2D" returnedLength:__dst];
      if (*&__dst[0] == 4 * ((2 * self->_stats.num_inliers) & ~((2 * self->_stats.num_inliers) >> 31)))
      {
        v9 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
        self->_stats.points2d = v9;
        memcpy(v9, v8, *&__dst[0]);
        *&__dst[0] = 0;
        v10 = [v4 decodeBytesForKey:@"inlierIndices" returnedLength:__dst];
        if (*&__dst[0] != 4 * (self->_stats.num_inliers & ~(self->_stats.num_inliers >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v145 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"inlierIndices"];
          v146 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v146;
          v48 = &v145;
          goto LABEL_66;
        }

        v11 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
        self->_stats.inlier_indices = v11;
        memcpy(v11, v10, *&__dst[0]);
        *&__dst[0] = 0;
        v12 = [v4 decodeBytesForKey:@"slam_pt3s_inlier_idx" returnedLength:__dst];
        if (*&__dst[0] != 2 * (self->_stats.num_inliers & ~(self->_stats.num_inliers >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v143 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"slam_pt3s_inlier_idx"];
          v144 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v144;
          v48 = &v143;
          goto LABEL_66;
        }

        v13 = malloc_type_malloc(*&__dst[0], 0x1000040BDFB0063uLL);
        self->_stats.slam_pt3s_inlier_idx = v13;
        memcpy(v13, v12, *&__dst[0]);
        *&__dst[0] = 0;
        v14 = [v4 decodeBytesForKey:@"solverConf" returnedLength:__dst];
        if (*&__dst[0] != 4 * (self->_stats.num_confs & ~(self->_stats.num_confs >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v141 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"solverConf"];
          v142 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v142;
          v48 = &v141;
          goto LABEL_66;
        }

        v15 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
        self->_stats.solver_conf = v15;
        memcpy(v15, v14, *&__dst[0]);
        *&__dst[0] = 0;
        v16 = [v4 decodeBytesForKey:@"fusedConf" returnedLength:__dst];
        if (*&__dst[0] != 4 * (self->_stats.num_confs & ~(self->_stats.num_confs >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v139 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"fusedConf"];
          v140 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v140;
          v48 = &v139;
          goto LABEL_66;
        }

        v17 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
        self->_stats.fused_conf = v17;
        memcpy(v17, v16, *&__dst[0]);
        *&__dst[0] = 0;
        v18 = [v4 decodeBytesForKey:@"tiles" returnedLength:__dst];
        if (*&__dst[0] != 16 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v137 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"tiles"];
          v138 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v138;
          v48 = &v137;
          goto LABEL_66;
        }

        v19 = malloc_type_malloc(*&__dst[0], 0x1000040451B5BE8uLL);
        self->_stats.tile = v19;
        memcpy(v19, v18, *&__dst[0]);
        if (self->_stats.num_slam_pt3s < 1)
        {
          goto LABEL_47;
        }

        *&__dst[0] = 0;
        v20 = [v4 decodeBytesForKey:@"SLAMTracks" returnedLength:__dst];
        if (*&__dst[0] != 4 * ((3 * self->_stats.num_slam_pt3s) & ~((3 * self->_stats.num_slam_pt3s) >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v135 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"SLAMTracks"];
          v136 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v136;
          v48 = &v135;
          goto LABEL_66;
        }

        v21 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
        self->_stats.slam_pt3s = v21;
        memcpy(v21, v20, *&__dst[0]);
        *&__dst[0] = 0;
        v22 = [v4 decodeBytesForKey:@"SLAMTrackDescriptors" returnedLength:__dst];
        if (*&__dst[0] != ((self->_stats.desc_dim * self->_stats.num_slam_pt3s) & ~((self->_stats.desc_dim * self->_stats.num_slam_pt3s) >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v133 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"SLAMTrackDescriptors"];
          v134 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v134;
          v48 = &v133;
          goto LABEL_66;
        }

        v23 = malloc_type_malloc(*&__dst[0], 0x100004077774924uLL);
        self->_stats.slam_pt3_desc = v23;
        memcpy(v23, v22, *&__dst[0]);
        *&__dst[0] = 0;
        v24 = [v4 decodeBytesForKey:@"SLAMTrackObservations" returnedLength:__dst];
        if (*&__dst[0] != 2 * (self->_stats.num_slam_pt3s & ~(self->_stats.num_slam_pt3s >> 31)))
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v131 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"SLAMTrackObservations"];
          v132 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v132;
          v48 = &v131;
          goto LABEL_66;
        }

        v25 = malloc_type_malloc(*&__dst[0], 0x1000040BDFB0063uLL);
        self->_stats.slam_tracks_len = v25;
        memcpy(v25, v24, *&__dst[0]);
        num_slam_pt3s = self->_stats.num_slam_pt3s;
        if (num_slam_pt3s < 1)
        {
          v29 = 0;
          goto LABEL_44;
        }

        v27 = num_slam_pt3s & ~(num_slam_pt3s >> 31);
        slam_tracks_len = self->_stats.slam_tracks_len;
        if (num_slam_pt3s < 4)
        {
          v29 = 0;
          v30 = 0;
          goto LABEL_42;
        }

        if (num_slam_pt3s >= 16)
        {
          v49 = 0uLL;
          v30 = v27 & 0x7FFFFFF0;
          v50 = 0uLL;
          v51 = (slam_tracks_len + 8);
          v52 = v30;
          v53 = 0uLL;
          v54 = 0uLL;
          v55 = 0uLL;
          v56 = 0uLL;
          v57 = 0uLL;
          v58 = 0uLL;
          do
          {
            v59 = *v51[-2].i8;
            v60 = vmovl_s16(*v59.i8);
            v61 = vmovl_high_s16(v59);
            v62 = vmovl_s16(*v51);
            v63 = vmovl_high_s16(*v51->i8);
            v54 = vaddw_high_s32(v54, v61);
            v53 = vaddw_s32(v53, *v61.i8);
            v50 = vaddw_high_s32(v50, v60);
            v49 = vaddw_s32(v49, *v60.i8);
            v58 = vaddw_high_s32(v58, v63);
            v57 = vaddw_s32(v57, *v63.i8);
            v56 = vaddw_high_s32(v56, v62);
            v55 = vaddw_s32(v55, *v62.i8);
            v51 += 4;
            v52 -= 16;
          }

          while (v52);
          v29 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v55, v49), vaddq_s64(v57, v53)), vaddq_s64(vaddq_s64(v56, v50), vaddq_s64(v58, v54))));
          if (v30 == v27)
          {
            goto LABEL_44;
          }

          if ((v27 & 0xC) == 0)
          {
LABEL_42:
            v71 = v27 - v30;
            v72 = &slam_tracks_len[v30];
            do
            {
              v73 = *v72++;
              v29 += v73;
              --v71;
            }

            while (v71);
            goto LABEL_44;
          }
        }

        else
        {
          v29 = 0;
          v30 = 0;
        }

        v64 = v30;
        v30 = v27 & 0x7FFFFFFC;
        v65 = 0uLL;
        v66 = v29;
        v67 = &slam_tracks_len[v64];
        v68 = v64 - v30;
        do
        {
          v69 = *v67++;
          v70 = vmovl_s16(v69);
          v65 = vaddw_high_s32(v65, v70);
          v66 = vaddw_s32(v66, *v70.i8);
          v68 += 4;
        }

        while (v68);
        v29 = vaddvq_s64(vaddq_s64(v66, v65));
        if (v30 != v27)
        {
          goto LABEL_42;
        }

LABEL_44:
        *&__dst[0] = 0;
        v74 = [v4 decodeBytesForKey:@"SLAMTrackPositions" returnedLength:__dst];
        if (*&__dst[0] == 8 * v29)
        {
          v75 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
          self->_stats.slam_tracks = v75;
          memcpy(v75, v74, *&__dst[0]);
          *&__dst[0] = 0;
          v76 = [v4 decodeBytesForKey:@"SLAMTrackImageIndices" returnedLength:__dst];
          if (*&__dst[0] == 2 * v29)
          {
            v77 = malloc_type_malloc(*&__dst[0], 0x1000040BDFB0063uLL);
            self->_stats.slam_tracks_img_idx = v77;
            memcpy(v77, v76, *&__dst[0]);
LABEL_47:
            if (self->_stats.num_frames < 1)
            {
              goto LABEL_23;
            }

            *&__dst[0] = 0;
            v78 = [v4 decodeBytesForKey:@"inlierNumber" returnedLength:__dst];
            if (*&__dst[0] == 2 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)))
            {
              v79 = malloc_type_malloc(*&__dst[0], 0x1000040BDFB0063uLL);
              self->_stats.inlier_number = v79;
              memcpy(v79, v78, *&__dst[0]);
              *&__dst[0] = 0;
              v80 = [v4 decodeBytesForKey:@"VIOStatus" returnedLength:__dst];
              if (*&__dst[0] == 4 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)))
              {
                v81 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
                self->_stats.vio_status = v81;
                memcpy(v81, v80, *&__dst[0]);
                *&__dst[0] = 0;
                v82 = [v4 decodeBytesForKey:@"VIOPoses" returnedLength:__dst];
                if (*&__dst[0] == 4 * ((12 * self->_stats.num_frames) & ~((12 * self->_stats.num_frames) >> 31)))
                {
                  v83 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
                  self->_stats.vio_poses = v83;
                  memcpy(v83, v82, *&__dst[0]);
                  *&__dst[0] = 0;
                  v84 = [v4 decodeBytesForKey:@"CalibrationMatrices" returnedLength:__dst];
                  if (*&__dst[0] == 4 * ((9 * self->_stats.num_frames) & ~((9 * self->_stats.num_frames) >> 31)))
                  {
                    v85 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
                    self->_stats.K = v85;
                    memcpy(v85, v84, *&__dst[0]);
                    *&__dst[0] = 0;
                    v86 = [v4 decodeBytesForKey:@"Distortion" returnedLength:__dst];
                    if (*&__dst[0] == 4 * ((2 * self->_stats.num_frames) & ~((2 * self->_stats.num_frames) >> 31)))
                    {
                      v87 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
                      self->_stats.distortion = v87;
                      memcpy(v87, v86, *&__dst[0]);
                      *&__dst[0] = 0;
                      v88 = [v4 decodeBytesForKey:@"slam_timestamps" returnedLength:__dst];
                      if (*&__dst[0] == 8 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)))
                      {
                        v89 = malloc_type_malloc(*&__dst[0], 0x100004000313F17uLL);
                        self->_stats.slam_time_stamps = v89;
                        memcpy(v89, v88, *&__dst[0]);
                        *&__dst[0] = 0;
                        v90 = [v4 decodeBytesForKey:@"slam_poses" returnedLength:__dst];
                        if (*&__dst[0] == 4 * ((12 * self->_stats.num_frames) & ~((12 * self->_stats.num_frames) >> 31)))
                        {
                          v91 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
                          self->_stats.slam_poses = v91;
                          memcpy(v91, v90, *&__dst[0]);
                          *&__dst[0] = 0;
                          v92 = [v4 decodeBytesForKey:@"result_poses" returnedLength:__dst];
                          if (*&__dst[0] == 248 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)))
                          {
                            v93 = malloc_type_malloc(*&__dst[0], 0x10000409B83B951uLL);
                            self->_stats.result_poses = v93;
                            memcpy(v93, v92, *&__dst[0]);
                            *&__dst[0] = 0;
                            v94 = [v4 decodeBytesForKey:@"result_status" returnedLength:__dst];
                            if (*&__dst[0] == 4 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)))
                            {
                              v95 = malloc_type_malloc(*&__dst[0], 0x100004052888210uLL);
                              self->_stats.result_status = v95;
                              memcpy(v95, v94, *&__dst[0]);
                              goto LABEL_23;
                            }

                            v98 = MEMORY[0x277CCA9B8];
                            v99 = *MEMORY[0x277CCA050];
                            v109 = *MEMORY[0x277CBEE28];
                            v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"result_status"];
                            v110 = v100;
                            v101 = MEMORY[0x277CBEAC0];
                            v102 = &v110;
                            v103 = &v109;
                          }

                          else
                          {
                            v98 = MEMORY[0x277CCA9B8];
                            v99 = *MEMORY[0x277CCA050];
                            v111 = *MEMORY[0x277CBEE28];
                            v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"result_poses"];
                            v112 = v100;
                            v101 = MEMORY[0x277CBEAC0];
                            v102 = &v112;
                            v103 = &v111;
                          }
                        }

                        else
                        {
                          v98 = MEMORY[0x277CCA9B8];
                          v99 = *MEMORY[0x277CCA050];
                          v113 = *MEMORY[0x277CBEE28];
                          v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"slam_poses"];
                          v114 = v100;
                          v101 = MEMORY[0x277CBEAC0];
                          v102 = &v114;
                          v103 = &v113;
                        }

                        v104 = [v101 dictionaryWithObjects:v102 forKeys:v103 count:1];
                        v105 = [v98 errorWithDomain:v99 code:4864 userInfo:v104];
                        [v4 failWithError:v105];

                        goto LABEL_22;
                      }

                      v44 = MEMORY[0x277CCA9B8];
                      v45 = *MEMORY[0x277CCA050];
                      v115 = *MEMORY[0x277CBEE28];
                      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"slam_timestamps"];
                      v116 = v33;
                      v46 = MEMORY[0x277CBEAC0];
                      v47 = &v116;
                      v48 = &v115;
                    }

                    else
                    {
                      v44 = MEMORY[0x277CCA9B8];
                      v45 = *MEMORY[0x277CCA050];
                      v117 = *MEMORY[0x277CBEE28];
                      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"Distortion"];
                      v118 = v33;
                      v46 = MEMORY[0x277CBEAC0];
                      v47 = &v118;
                      v48 = &v117;
                    }
                  }

                  else
                  {
                    v44 = MEMORY[0x277CCA9B8];
                    v45 = *MEMORY[0x277CCA050];
                    v119 = *MEMORY[0x277CBEE28];
                    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"CalibrationMatrices"];
                    v120 = v33;
                    v46 = MEMORY[0x277CBEAC0];
                    v47 = &v120;
                    v48 = &v119;
                  }
                }

                else
                {
                  v44 = MEMORY[0x277CCA9B8];
                  v45 = *MEMORY[0x277CCA050];
                  v121 = *MEMORY[0x277CBEE28];
                  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"VIOPoses"];
                  v122 = v33;
                  v46 = MEMORY[0x277CBEAC0];
                  v47 = &v122;
                  v48 = &v121;
                }
              }

              else
              {
                v44 = MEMORY[0x277CCA9B8];
                v45 = *MEMORY[0x277CCA050];
                v123 = *MEMORY[0x277CBEE28];
                v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"VIOStatus"];
                v124 = v33;
                v46 = MEMORY[0x277CBEAC0];
                v47 = &v124;
                v48 = &v123;
              }
            }

            else
            {
              v44 = MEMORY[0x277CCA9B8];
              v45 = *MEMORY[0x277CCA050];
              v125 = *MEMORY[0x277CBEE28];
              v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"inlierNumber"];
              v126 = v33;
              v46 = MEMORY[0x277CBEAC0];
              v47 = &v126;
              v48 = &v125;
            }

            goto LABEL_66;
          }

          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v127 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"SLAMTrackImageIndices"];
          v128 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v128;
          v48 = &v127;
        }

        else
        {
          v44 = MEMORY[0x277CCA9B8];
          v45 = *MEMORY[0x277CCA050];
          v129 = *MEMORY[0x277CBEE28];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"SLAMTrackPositions"];
          v130 = v33;
          v46 = MEMORY[0x277CBEAC0];
          v47 = &v130;
          v48 = &v129;
        }

LABEL_66:
        v96 = [v46 dictionaryWithObjects:v47 forKeys:v48 count:1];
        v97 = [v44 errorWithDomain:v45 code:4864 userInfo:v96];
        [v4 failWithError:v97];

        goto LABEL_18;
      }

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA050];
      v147 = *MEMORY[0x277CBEE28];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"points2D"];
      v148 = v37;
      v38 = MEMORY[0x277CBEAC0];
      v39 = &v148;
      v40 = &v147;
    }

    else
    {
      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA050];
      v149 = *MEMORY[0x277CBEE28];
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ bytes were not the expected length", @"points3D"];
      v150 = v37;
      v38 = MEMORY[0x277CBEAC0];
      v39 = &v150;
      v40 = &v149;
    }

    v41 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
    v42 = [v35 errorWithDomain:v36 code:4864 userInfo:v41];
    [v4 failWithError:v42];

    goto LABEL_22;
  }

LABEL_23:

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  num_inliers = self->_stats.num_inliers;
  if (num_inliers >= 1)
  {
    [v4 encodeBytes:self->_stats.points3d length:24 * num_inliers forKey:@"points3D"];
    [v5 encodeBytes:self->_stats.points2d length:4 * ((2 * self->_stats.num_inliers) & ~((2 * self->_stats.num_inliers) >> 31)) forKey:@"points2D"];
    [v5 encodeBytes:self->_stats.inlier_indices length:4 * (self->_stats.num_inliers & ~(self->_stats.num_inliers >> 31)) forKey:@"inlierIndices"];
    [v5 encodeBytes:self->_stats.slam_pt3s_inlier_idx length:2 * (self->_stats.num_inliers & ~(self->_stats.num_inliers >> 31)) forKey:@"slam_pt3s_inlier_idx"];
  }

  num_confs = self->_stats.num_confs;
  if (num_confs >= 1)
  {
    [v5 encodeBytes:self->_stats.solver_conf length:4 * num_confs forKey:@"solverConf"];
    [v5 encodeBytes:self->_stats.fused_conf length:4 * (self->_stats.num_confs & ~(self->_stats.num_confs >> 31)) forKey:@"fusedConf"];
  }

  num_frames = self->_stats.num_frames;
  if (num_frames >= 1)
  {
    [v5 encodeBytes:self->_stats.tile length:16 * num_frames forKey:@"tiles"];
    [v5 encodeBytes:self->_stats.inlier_number length:2 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)) forKey:@"inlierNumber"];
    [v5 encodeBytes:self->_stats.slam_time_stamps length:8 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)) forKey:@"slam_timestamps"];
  }

  num_slam_pt3s = self->_stats.num_slam_pt3s;
  if (num_slam_pt3s >= 1)
  {
    [v5 encodeBytes:self->_stats.slam_pt3s length:12 * num_slam_pt3s forKey:@"SLAMTracks"];
    v10 = self->_stats.desc_dim * self->_stats.num_slam_pt3s;
    [v5 encodeBytes:self->_stats.slam_pt3_desc length:v10 & ~(v10 >> 31) forKey:@"SLAMTrackDescriptors"];
    [v5 encodeBytes:self->_stats.slam_tracks_len length:2 * (self->_stats.num_slam_pt3s & ~(self->_stats.num_slam_pt3s >> 31)) forKey:@"SLAMTrackObservations"];
    v11 = self->_stats.num_slam_pt3s;
    if (v11 < 1)
    {
      v14 = 0;
LABEL_23:
      [v5 encodeBytes:self->_stats.slam_tracks length:8 * v14 forKey:@"SLAMTrackPositions"];
      [v5 encodeBytes:self->_stats.slam_tracks_img_idx length:2 * v14 forKey:@"SLAMTrackImageIndices"];
      goto LABEL_24;
    }

    v12 = v11 & ~(v11 >> 31);
    slam_tracks_len = self->_stats.slam_tracks_len;
    if (v11 < 4)
    {
      v14 = 0;
      v15 = 0;
LABEL_21:
      v38 = v12 - v15;
      v39 = &slam_tracks_len[v15];
      do
      {
        v40 = *v39++;
        v14 += v40;
        --v38;
      }

      while (v38);
      goto LABEL_23;
    }

    if (v11 >= 16)
    {
      v16 = 0uLL;
      v15 = v12 & 0x7FFFFFF0;
      v17 = 0uLL;
      v18 = (slam_tracks_len + 8);
      v19 = v15;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      do
      {
        v26 = *v18[-2].i8;
        v27 = vmovl_s16(*v26.i8);
        v28 = vmovl_high_s16(v26);
        v29 = vmovl_s16(*v18);
        v30 = vmovl_high_s16(*v18->i8);
        v21 = vaddw_high_s32(v21, v28);
        v20 = vaddw_s32(v20, *v28.i8);
        v17 = vaddw_high_s32(v17, v27);
        v16 = vaddw_s32(v16, *v27.i8);
        v25 = vaddw_high_s32(v25, v30);
        v24 = vaddw_s32(v24, *v30.i8);
        v23 = vaddw_high_s32(v23, v29);
        v22 = vaddw_s32(v22, *v29.i8);
        v18 += 4;
        v19 -= 16;
      }

      while (v19);
      v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v22, v16), vaddq_s64(v24, v20)), vaddq_s64(vaddq_s64(v23, v17), vaddq_s64(v25, v21))));
      if (v15 == v12)
      {
        goto LABEL_23;
      }

      if ((v12 & 0xC) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v31 = v15;
    v15 = v12 & 0x7FFFFFFC;
    v32 = 0uLL;
    v33 = v14;
    v34 = &slam_tracks_len[v31];
    v35 = v31 - v15;
    do
    {
      v36 = *v34++;
      v37 = vmovl_s16(v36);
      v32 = vaddw_high_s32(v32, v37);
      v33 = vaddw_s32(v33, *v37.i8);
      v35 += 4;
    }

    while (v35);
    v14 = vaddvq_s64(vaddq_s64(v33, v32));
    if (v15 == v12)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v41 = self->_stats.num_frames;
  if (v41 >= 1)
  {
    [v5 encodeBytes:self->_stats.vio_status length:4 * v41 forKey:@"VIOStatus"];
    [v5 encodeBytes:self->_stats.vio_poses length:4 * ((12 * self->_stats.num_frames) & ~((12 * self->_stats.num_frames) >> 31)) forKey:@"VIOPoses"];
    [v5 encodeBytes:self->_stats.K length:4 * ((9 * self->_stats.num_frames) & ~((9 * self->_stats.num_frames) >> 31)) forKey:@"CalibrationMatrices"];
    [v5 encodeBytes:self->_stats.distortion length:4 * ((2 * self->_stats.num_frames) & ~((2 * self->_stats.num_frames) >> 31)) forKey:@"Distortion"];
    [v5 encodeBytes:self->_stats.slam_poses length:4 * ((12 * self->_stats.num_frames) & ~((12 * self->_stats.num_frames) >> 31)) forKey:@"slam_poses"];
    [v5 encodeBytes:self->_stats.result_poses length:248 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)) forKey:@"result_poses"];
    [v5 encodeBytes:self->_stats.result_status length:4 * (self->_stats.num_frames & ~(self->_stats.num_frames >> 31)) forKey:@"result_status"];
  }

  memcpy(v42, &self->_stats, 0x1F8uLL);
  memset(v42, 0, 40);
  v42[4] = 0uLL;
  *(&v42[6] + 8) = 0u;
  *(&v42[7] + 8) = 0u;
  v42[12] = 0uLL;
  *(&v42[16] + 8) = 0u;
  *(&v42[13] + 8) = 0u;
  *(&v42[14] + 8) = 0u;
  *(&v42[15] + 8) = 0u;
  *(&v42[17] + 1) = 0;
  [v5 encodeBytes:v42 length:504 forKey:@"statistics"];
}

- (void)dealloc
{
  vl_stats_free(&self->_stats);
  v3.receiver = self;
  v3.super_class = _VLStatistics;
  [(_VLStatistics *)&v3 dealloc];
}

@end