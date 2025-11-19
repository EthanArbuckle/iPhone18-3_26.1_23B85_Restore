@interface PVComputeGuidedFilter
- (BOOL)applyFilterToInput:(id)a3 output:(id)a4;
- (BOOL)runCPUPathOnInput:(void *)a3 guide:(void *)a4 output:(void *)a5 radius:(int)a6 epsilon:(float)a7;
- (PVComputeGuidedFilter)initWithGuide:(id)a3 radius:(int)a4 epsilon:(float)a5;
- (void)processStage1Float32Input:(float *)a3 inputRowBytes:(unint64_t)a4 guide:(float *)a5 guideRowBytes:(unint64_t)a6 output:(float *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11;
- (void)processStage1UInt8Input:(char *)a3 inputRowBytes:(unint64_t)a4 guide:(char *)a5 guideRowBytes:(unint64_t)a6 output:(float *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11;
- (void)processStage5Float32Guide:(float *)a3 guideRowBytes:(unint64_t)a4 stats:(float *)a5 statsRowBytes:(unint64_t)a6 output:(float *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11;
- (void)processStage5UInt6Guide:(char *)a3 guideRowBytes:(unint64_t)a4 stats:(float *)a5 statsRowBytes:(unint64_t)a6 output:(char *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11;
@end

@implementation PVComputeGuidedFilter

- (PVComputeGuidedFilter)initWithGuide:(id)a3 radius:(int)a4 epsilon:(float)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PVComputeGuidedFilter;
  v10 = [(PVComputeGuidedFilter *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_guide, a3);
    v11->_radius = a4;
    v11->_epsilon = a5;
  }

  return v11;
}

- (BOOL)applyFilterToInput:(id)a3 output:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cvPixelBuffer];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v8);
  if (PixelFormatType == 1278226488)
  {
    v10 = 1;
  }

  else
  {
    v10 = 7;
    if (PixelFormatType != 1278226534 && PixelFormatType != 1717855600)
    {
      NSLog(&cfstr_ErrorInputPixe.isa);
      v10 = 0;
    }
  }

  HGCVBitmap::create(v8, v10, 0, &v23);
  v11 = [(PVImageBuffer *)self->_guide cvPixelBuffer];
  v12 = CVPixelBufferGetPixelFormatType(v11);
  if (v12 == 1278226488)
  {
    v13 = 1;
  }

  else
  {
    v13 = 7;
    if (v12 != 1278226534 && v12 != 1717855600)
    {
      NSLog(&cfstr_ErrorGuidePixe.isa);
      v13 = 0;
    }
  }

  if (v13 != v10)
  {
    NSLog(&cfstr_ErrorGuidePixe_0.isa);
  }

  HGCVBitmap::create(v11, v13, 0, &v22);
  v14 = [v7 cvPixelBuffer];
  v15 = CVPixelBufferGetPixelFormatType(v14);
  if (v15 == 1278226488)
  {
    v16 = 1;
  }

  else
  {
    v16 = 7;
    if (v15 != 1278226534 && v15 != 1717855600)
    {
      NSLog(&cfstr_ErrorGuidePixe.isa);
      v16 = 0;
    }
  }

  if (v16 != v10)
  {
    NSLog(&cfstr_ErrorOutputPix.isa);
  }

  HGCVBitmap::create(v14, v16, 0, &v21);
  radius = self->_radius;
  if (radius >= -1)
  {
    v18 = (radius + 1) & 1;
  }

  else
  {
    v18 = -((radius + 1) & 1);
  }

  HGCVBitmap::lock(v23, 1uLL);
  HGCVBitmap::lock(v22, 1uLL);
  HGCVBitmap::lock(v21, 0);
  *&v19 = self->_epsilon;
  [(PVComputeGuidedFilter *)self runCPUPathOnInput:v23 guide:v22 output:v21 radius:(v18 + radius) epsilon:v19];
  HGCVBitmap::unlock(v23, 1uLL);
  HGCVBitmap::unlock(v22, 1uLL);
  HGCVBitmap::unlock(v21, 0);
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  return 1;
}

- (BOOL)runCPUPathOnInput:(void *)a3 guide:(void *)a4 output:(void *)a5 radius:(int)a6 epsilon:(float)a7
{
  v156 = *(a3 + 7);
  v155 = *(a3 + 5);
  v10 = v156 - v155;
  v11 = *(a3 + 8) - *(a3 + 6);
  v12 = *(a3 + 10);
  v148 = *(a5 + 10);
  v13 = *(a3 + 8);
  v152 = *(a4 + 8);
  v153 = *(a4 + 10);
  v147 = *(a5 + 8);
  v14 = 16 * (v156 - v155);
  v15 = HGMemory::allocate((v14 * v11), 0, a3);
  v17 = HGMemory::allocate((v14 * v11), 0, v16);
  v18 = *(a3 + 4);
  if (v18 == 1)
  {
    LODWORD(v146) = a6;
    [(PVComputeGuidedFilter *)self processStage1UInt8Input:v12 inputRowBytes:v13 guide:v153 guideRowBytes:v152 output:v17 outputRowBytes:v14 width:__PAIR64__(v11 height:v10) radius:v146];
  }

  else if (v18 == 7)
  {
    LODWORD(v146) = a6;
    [(PVComputeGuidedFilter *)self processStage1Float32Input:v12 inputRowBytes:v13 guide:v153 guideRowBytes:v152 output:v17 outputRowBytes:v14 width:__PAIR64__(v11 height:v10) radius:v146];
  }

  v19 = (2 * a6) | 1;
  memcpy(v15, v17, v14);
  v21 = (a6 + 1);
  if (a6 <= 0)
  {
    v23 = v155;
    v22 = v156;
  }

  else
  {
    v23 = v155;
    v22 = v156;
    v24 = &v17[16 * v156 + 8 + -16 * v155];
    v25 = 1;
    do
    {
      v26 = v15 + 2;
      v27 = v24;
      v28 = v10;
      if (v10 >= 1)
      {
        do
        {
          v29 = *(v26 - 1);
          *(v26 - 2) = *(v26 - 2) + (*(v27 - 2) + *(v27 - 2));
          *(v26 - 1) = v29 + (*(v27 - 1) + *(v27 - 1));
          v30 = v26[1];
          *v26 = *v26 + (*v27 + *v27);
          v26[1] = v30 + (v27[1] + v27[1]);
          v27 += 4;
          v26 += 4;
          --v28;
        }

        while (v28);
      }

      ++v25;
      v24 += v14;
    }

    while (v25 != v21);
    v31 = 0;
    v32 = &v17[v14 * a6 + 8];
    v33 = (v32 + v14);
    v34 = v15 + 3;
    v35 = v15 + 16 * v156 - 16 * v155 + 8;
    do
    {
      v36 = v35;
      v37 = v34;
      v20 = v33;
      v38 = v32;
      v39 = v10;
      if (v10 >= 1)
      {
        do
        {
          *(v36 - 2) = (*(v37 - 3) + *(v20 - 8)) - *(v38 - 2);
          *(v36 - 1) = (*(v37 - 2) + *(v20 - 4)) - *(v38 - 1);
          *v36 = (*(v37 - 1) + *v20) - *v38;
          v40 = *v37;
          v37 += 4;
          v41 = v38[1];
          v38 += 4;
          v36[1] = (v40 + *(v20 + 4)) - v41;
          v20 += 16;
          v36 += 4;
          --v39;
        }

        while (v39);
      }

      ++v31;
      v32 += 16 * v155 - 16 * v156;
      v33 = (v33 + v14);
      v34 = (v34 + v14);
      v35 += v14;
    }

    while (v31 != a6);
  }

  v42 = 2 * a6;
  if (v19 < v11)
  {
    v43 = v19;
    v44 = &v17[v14 + v14 * v42];
    v45 = v15 + v14 * a6 + 8;
    v46 = v15 + v14 * v21 + 8;
    v47 = v17;
    do
    {
      if (v10 >= 1)
      {
        v48 = 0;
        do
        {
          v20 = &v47[v48];
          v49 = (v46 + v48);
          *(v49 - 2) = (*(v45 + v48 - 8) + *&v44[v48]) - *&v47[v48];
          *(v49 - 1) = (*(v45 + v48 - 4) + *&v44[v48 + 4]) - *&v47[v48 + 4];
          *v49 = (*(v45 + v48) + *&v44[v48 + 8]) - *&v47[v48 + 8];
          v49[1] = (*(v45 + v48 + 4) + *&v44[v48 + 12]) - *&v47[v48 + 12];
          v48 += 16;
        }

        while (16 * v10 != v48);
      }

      ++v43;
      v44 += v14;
      v45 += v14;
      v46 += v14;
      v47 += v14;
    }

    while (v43 < v11);
  }

  v50 = v11 - a6;
  v51 = v11 - a6 - 1;
  v52 = ~v42;
  v150 = 2 * a6;
  v151 = v11 + ~v42;
  if (a6 >= 1)
  {
    v53 = v50;
    v54 = &v17[v14 * v151 + 8];
    v55 = &v17[v14 * (v11 - 2) + 8];
    v20 = 16 * v23 - 16 * v22;
    v56 = v15 + v14 * v51 + 8;
    v57 = v15 + v14 * v50 + 8;
    do
    {
      v58 = v57;
      v59 = v56;
      v60 = v55;
      v61 = v54;
      v62 = v10;
      if (v10 >= 1)
      {
        do
        {
          *(v58 - 2) = (*(v59 - 2) + *(v60 - 2)) - *(v61 - 2);
          *(v58 - 1) = (*(v59 - 1) + *(v60 - 1)) - *(v61 - 1);
          *v58 = (*v59 + *v60) - *v61;
          v63 = v61[1];
          v61 += 4;
          v58[1] = (v59[1] + v60[1]) - v63;
          v60 += 4;
          v59 += 4;
          v58 += 4;
          --v62;
        }

        while (v62);
      }

      ++v53;
      v54 += v14;
      v55 += v20;
      v56 += v14;
      v57 += v14;
    }

    while (v53 < v11);
  }

  if (v11 >= 1)
  {
    v64 = 0;
    v65 = 1.0 / (v19 * v19);
    do
    {
      if (v10 >= 1)
      {
        v66 = (v15 + v14 * v64);
        v67 = v156 - v155;
        do
        {
          v68 = vmul_n_f32(*v66, v65);
          v66[1] = vsub_f32(vmul_n_f32(v66[1], v65), vmul_n_f32(v68, v68.f32[0]));
          v66 += 2;
          --v67;
        }

        while (v67);
      }

      ++v64;
    }

    while (v64 != v11);
    v69 = 0;
    do
    {
      if (v10 >= 1)
      {
        v70 = (v15 + v14 * v69);
        v71 = v156 - v155;
        do
        {
          v72 = v70[3] / (v70[2] + a7);
          v73 = (v65 * v70[1]) - ((v65 * *v70) * v72);
          *v70 = v72;
          v70[1] = v73;
          v70 += 4;
          --v71;
        }

        while (v71);
      }

      ++v69;
    }

    while (v69 != v11);
    v74 = 0;
    v20 = (v21 + a6);
    v75 = v10 + v52;
    v76 = &v15[4 * a6];
    v77 = (v15 + 4);
    v78 = &v15[4 * v21 + 2];
    v79 = &v15[4 * v150 + 4];
    v80 = 16 * v75;
    v81 = v15;
    do
    {
      v82 = (v15 + v14 * v74);
      v83 = *v82;
      if (a6 < 1)
      {
        v82[1] = v83;
      }

      else
      {
        v84 = v21 - 1;
        v85 = v77;
        do
        {
          v86 = *v85;
          v85 += 2;
          v83 = vadd_f32(v83, vadd_f32(v86, v86));
          --v84;
        }

        while (v84);
        v82[1] = v83;
        v87 = v76;
        v88 = v21 - 1;
        v89 = v81;
        do
        {
          v90 = *v87;
          v87 -= 2;
          v83 = vsub_f32(vadd_f32(v83, v89[2 * v21]), v90);
          v89[3] = v83;
          v89 += 2;
          --v88;
        }

        while (v88);
      }

      if (v20 < v10)
      {
        v91 = 0;
        v92 = v19;
        do
        {
          v83 = vsub_f32(vadd_f32(v83, *(v79 + v91 * 4)), *&v81[v91]);
          *(v78 + v91 * 4) = v83;
          ++v92;
          v91 += 4;
        }

        while (v92 < v10);
      }

      v93 = v80;
      v94 = 4 * (v10 - 2);
      v95 = (16 * (v10 - a6)) | 8;
      v96 = v10 - a6;
      if (a6 >= 1)
      {
        do
        {
          v83 = vsub_f32(vadd_f32(v83, *&v81[v94]), *(v81 + v93));
          *(v81 + v95) = v83;
          ++v96;
          v95 += 16;
          v94 -= 4;
          v93 += 16;
        }

        while (v96 < v10);
      }

      ++v74;
      v77 = (v77 + v14);
      v81 = (v81 + v14);
      v76 = (v76 + v14);
      v78 += v14;
      v79 += v14;
    }

    while (v74 != v11);
  }

  if (v10 >= 1)
  {
    v97 = v10;
    v98 = v15 + 2;
    do
    {
      *(v98 - 1) = *v98;
      v98 += 2;
      --v97;
    }

    while (v97);
  }

  v99 = 16 * v155;
  v100 = v11 - a6;
  if (a6 >= 1)
  {
    v101 = &v15[4 * v156 + 2 + -4 * v155];
    v102 = 1;
    do
    {
      v103 = v15;
      v104 = v101;
      v105 = v10;
      if (v10 >= 1)
      {
        do
        {
          v106 = v103[1];
          *v103 = *v103 + (*v104 + *v104);
          v103[1] = v106 + (v104[1] + v104[1]);
          v104 += 4;
          v103 += 4;
          --v105;
        }

        while (v105);
      }

      ++v102;
      v101 += v14;
    }

    while (v102 != v21);
    v107 = 0;
    v108 = v15 + 3;
    v109 = v14 * a6;
    v20 = &v15[v14 / 4 + 3] + v109;
    v110 = (v15 + v109 + 12);
    do
    {
      v111 = v110;
      v112 = v20;
      v113 = v108;
      v114 = v10;
      if (v10 >= 1)
      {
        do
        {
          v115 = *(v113 - 2);
          v116 = &v113[v14 / 4];
          *(v116 - 3) = (*(v113 - 3) + *(v112 - 1)) - *(v111 - 1);
          v117 = *v112;
          v112 += 4;
          v118 = v115 + v117;
          v119 = *v111;
          v111 += 4;
          *(v116 - 2) = v118 - v119;
          v113 += 4;
          --v114;
        }

        while (v114);
      }

      ++v107;
      v108 = (v108 + v14);
      v20 += v14;
      v110 = (v110 + v99 - 16 * v156);
    }

    while (v107 != a6);
  }

  if (v19 < v11)
  {
    v120 = v19;
    v121 = &v15[v14 / 4] + v14 * v150;
    v122 = v15 + v14 * v21;
    v123 = v15 + v14 * a6 + 4;
    v124 = v15;
    do
    {
      if (v10 >= 1)
      {
        v125 = 0;
        do
        {
          v20 = &v124[v125];
          v126 = &v122[v125 * 4];
          *v126 = (*(v123 + v125 * 4 - 4) + *&v121[v125 * 4 + 8]) - v124[v125 + 2];
          v126[1] = (*(v123 + v125 * 4) + *&v121[v125 * 4 + 12]) - v124[v125 + 3];
          v125 += 4;
        }

        while (4 * v10 != v125);
      }

      ++v120;
      v121 += v14;
      v122 += v14;
      v123 += v14;
      v124 = (v124 + v14);
    }

    while (v120 < v11);
  }

  if (a6 >= 1)
  {
    v127 = v51;
    v128 = v100;
    v129 = v15 + v14 * (v11 - 2) + 12;
    v130 = v99 - 16 * v156;
    v131 = v15 + v14 * v100 + 4;
    v132 = v15 + v14 * v127 + 4;
    v133 = v15 + v14 * v151 + 12;
    do
    {
      v134 = v133;
      v135 = v132;
      v136 = v131;
      v137 = v129;
      v20 = v10;
      if (v10 >= 1)
      {
        do
        {
          *(v136 - 1) = (*(v135 - 1) + *(v137 - 1)) - *(v134 - 1);
          v138 = *v135;
          v135 += 4;
          v139 = v138;
          v140 = *v137;
          v137 += 4;
          v141 = v139 + v140;
          v142 = *v134;
          v134 += 4;
          *v136 = v141 - v142;
          v136 += 4;
          --v20;
        }

        while (v20);
      }

      ++v128;
      v129 += v130;
      v131 += v14;
      v132 += v14;
      v133 += v14;
    }

    while (v128 < v11);
  }

  v143 = *(a5 + 4);
  if (v143 == 1)
  {
    LODWORD(v146) = a6;
    [(PVComputeGuidedFilter *)self processStage5UInt6Guide:v153 guideRowBytes:v152 stats:v15 statsRowBytes:v14 output:v148 outputRowBytes:v147 width:__PAIR64__(v11 height:v10) radius:v146];
  }

  else if (v143 == 7)
  {
    LODWORD(v146) = a6;
    [(PVComputeGuidedFilter *)self processStage5Float32Guide:v153 guideRowBytes:v152 stats:v15 statsRowBytes:v14 output:v148 outputRowBytes:v147 width:__PAIR64__(v11 height:v10) radius:v146];
  }

  HGMemory::release(v15, v20);
  HGMemory::release(v17, v144);
  return 1;
}

- (void)processStage1Float32Input:(float *)a3 inputRowBytes:(unint64_t)a4 guide:(float *)a5 guideRowBytes:(unint64_t)a6 output:(float *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11
{
  if (a10 >= 1)
  {
    v11 = 0;
    v12 = (a11 + 1);
    v75 = v12 + a11;
    v13 = &a3[a11];
    v14 = a3 + 1;
    v15 = &a5[a11];
    v16 = a5 + 1;
    v74 = v12 - 1;
    v17 = &a3[v12];
    v18 = a7 + 7;
    v19 = 1 - v12;
    v20 = &a7[4 * v12 + 2];
    v21 = (8 * ((2 * a11) >> 1)) | 4;
    v22 = &a7[4 * (a9 - a11) + 2];
    v23 = a3;
    v24 = a5;
    v25 = &a5[v12];
    do
    {
      v26 = *(a5 + v11 * a6);
      v27 = (a7 + v11 * a8);
      v28 = *(a3 + v11 * a4);
      v29 = v26 * v26;
      v30 = v26 * v28;
      if (a11 < 1)
      {
        *v27 = v26;
        v27[1] = v28;
        v27[2] = v29;
        v27[3] = v30;
      }

      else
      {
        v31 = v74;
        v32 = v16;
        v33 = v14;
        do
        {
          v34 = *v32++;
          v35 = v34;
          v36 = *v33++;
          v26 = v26 + (v35 + v35);
          v28 = v28 + (v36 + v36);
          v29 = v29 + ((v35 * v35) + (v35 * v35));
          v30 = v30 + ((v35 * v36) + (v35 * v36));
          --v31;
        }

        while (v31);
        *v27 = v26;
        v27[1] = v28;
        v27[2] = v29;
        v27[3] = v30;
        v37 = 0;
        v38 = v25;
        v39 = v18;
        v40 = v17;
        do
        {
          v41 = *v38++;
          v42 = v41;
          v43 = *v40++;
          v44 = v26 + v42;
          v45 = v29 + (v42 * v42);
          v46 = v30 + (v42 * v43);
          v47 = v15[v37];
          v48 = v13[v37];
          v26 = v44 - v47;
          v28 = (v28 + v43) - v48;
          v29 = v45 - (v47 * v47);
          v30 = v46 - (v47 * v48);
          *(v39 - 3) = v26;
          *(v39 - 2) = v28;
          *(v39 - 1) = v29;
          *v39 = v30;
          --v37;
          v39 += 4;
        }

        while (v19 != v37);
      }

      v49 = v20;
      v50 = v23;
      v51 = v24;
      v52 = (~(2 * a11) + a9);
      if (v75 < a9)
      {
        do
        {
          v53 = *(v51 + v21);
          v54 = *(v50 + v21);
          v55 = v26 + v53;
          v56 = v29 + (v53 * v53);
          v57 = v30 + (v53 * v54);
          v58 = *v51++;
          v59 = v58;
          v60 = *v50++;
          v26 = v55 - v59;
          v28 = (v28 + v54) - v60;
          v29 = v56 - (v59 * v59);
          v30 = v57 - (v59 * v60);
          *(v49 - 2) = v26;
          *(v49 - 1) = v28;
          *v49 = v29;
          v49[1] = v30;
          v49 += 4;
          --v52;
        }

        while (v52);
      }

      v61 = v22;
      v62 = a9 - 2;
      v63 = ~(2 * a11) + a9;
      v64 = a9 - a11;
      if (a11 >= 1)
      {
        do
        {
          v65 = v24[v62];
          v66 = v23[v62];
          v67 = v26 + v65;
          v68 = v28 + v66;
          v69 = v29 + (v65 * v65);
          v70 = v65 * v66;
          v71 = v24[v63];
          v72 = v30 + v70;
          v73 = v23[v63];
          v26 = v67 - v71;
          v28 = v68 - v73;
          v29 = v69 - (v71 * v71);
          v30 = v72 - (v71 * v73);
          *(v61 - 2) = v26;
          *(v61 - 1) = v28;
          ++v64;
          *v61 = v29;
          v61[1] = v30;
          v61 += 4;
          ++v63;
          --v62;
        }

        while (v64 < a9);
      }

      ++v11;
      v14 = (v14 + a4);
      v16 = (v16 + a6);
      v13 = (v13 + a4);
      v15 = (v15 + a6);
      v17 = (v17 + a4);
      v18 = (v18 + a8);
      v25 = (v25 + a6);
      v24 = (v24 + a6);
      v23 = (v23 + a4);
      v20 = (v20 + a8);
      v22 = (v22 + a8);
    }

    while (v11 != a10);
  }
}

- (void)processStage5Float32Guide:(float *)a3 guideRowBytes:(unint64_t)a4 stats:(float *)a5 statsRowBytes:(unint64_t)a6 output:(float *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11
{
  if (a10 >= 1)
  {
    for (i = 0; i != a10; ++i)
    {
      if (a9 >= 1)
      {
        v13 = (a5 + i * a6);
        v14 = a9;
        v15 = a3;
        v16 = a7;
        do
        {
          v17 = *v13;
          v18 = v13[1];
          v13 += 4;
          v19 = *v15++;
          v12 = 1.0 / (((2 * a11) | 1) * ((2 * a11) | 1u));
          *v16++ = (v12 * v18) + ((v12 * v17) * v19);
          --v14;
        }

        while (v14);
      }

      a7 = (a7 + a8);
      a3 = (a3 + a4);
    }
  }
}

- (void)processStage1UInt8Input:(char *)a3 inputRowBytes:(unint64_t)a4 guide:(char *)a5 guideRowBytes:(unint64_t)a6 output:(float *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11
{
  if (a10 >= 1)
  {
    v15 = 0;
    v16 = &a3[a11];
    v17 = (a11 + 1);
    v18 = &a5[a11];
    v82 = v17 + a11;
    v19 = a3 + 1;
    v20 = a5 + 1;
    v81 = v17 - 1;
    v21 = a7 + 7;
    v22 = -v17;
    v23 = &a7[4 * v17 + 2];
    v24 = (2 * a11) | 1;
    v25 = &a7[4 * (a9 - a11) + 2];
    v26 = a3;
    v27 = a5;
    v28 = &a3[v17];
    v29 = &a5[v17];
    do
    {
      v30 = (a7 + v15 * a8);
      LOBYTE(v11) = a5[v15 * a6];
      LOBYTE(v12) = a3[v15 * a4];
      v11 = LODWORD(v11) / 255.0;
      v31 = LODWORD(v12) / 255.0;
      v32 = v11 * v11;
      v12 = v11 * v31;
      if (a11 < 1)
      {
        *v30 = v11;
        v30[1] = v31;
        v30[2] = v32;
        v30[3] = v12;
      }

      else
      {
        v33 = v81;
        v34 = v20;
        v35 = v19;
        do
        {
          v36 = *v34++;
          v37 = v36;
          v38 = *v35++;
          v39 = v37 / 255.0;
          v40 = v38 / 255.0;
          v11 = v11 + (v39 + v39);
          v31 = v31 + (v40 + v40);
          v32 = v32 + ((v39 * v39) + (v39 * v39));
          v12 = v12 + ((v39 * v40) + (v39 * v40));
          --v33;
        }

        while (v33);
        *v30 = v11;
        v30[1] = v31;
        v30[2] = v32;
        v30[3] = v12;
        v41 = -1;
        v42 = v29;
        v43 = v21;
        v44 = v28;
        do
        {
          v45 = *v42++;
          v46 = v45;
          v47 = *v44++;
          v48 = v46 / 255.0;
          *&v49 = v47 / 255.0;
          v50 = v11 + v48;
          v51 = v31 + *&v49;
          v52 = v32 + (v48 * v48);
          v53 = v48 * *&v49;
          LOBYTE(v49) = v18[v41 + 1];
          *&v54 = v49;
          v55 = v12 + v53;
          v56 = *&v54 / 255.0;
          LOBYTE(v54) = v16[v41 + 1];
          v14 = v54 / 255.0;
          v11 = v50 - v56;
          v31 = v51 - v14;
          v32 = v52 - (v56 * v56);
          v13 = v56 * v14;
          v12 = v55 - v13;
          *(v43 - 3) = v11;
          *(v43 - 2) = v31;
          *(v43 - 1) = v32;
          *v43 = v12;
          --v41;
          v43 += 4;
        }

        while (v22 != v41);
      }

      v57 = v23;
      v58 = v26;
      v59 = v27;
      v60 = (~(2 * a11) + a9);
      if (v82 < a9)
      {
        do
        {
          LOBYTE(v13) = v59[v24];
          v61 = LODWORD(v13) / 255.0;
          LOBYTE(v14) = v58[v24];
          *&v62 = LODWORD(v14) / 255.0;
          v63 = v11 + v61;
          v64 = v31 + *&v62;
          v65 = v32 + (v61 * v61);
          *&v66 = v61 * *&v62;
          v67 = v12 + *&v66;
          LOBYTE(v66) = *v59;
          v68 = v66 / 255.0;
          LOBYTE(v62) = *v58;
          v14 = v62 / 255.0;
          v11 = v63 - v68;
          v31 = v64 - v14;
          v32 = v65 - (v68 * v68);
          v13 = v68 * v14;
          v12 = v67 - v13;
          *(v57 - 2) = v11;
          *(v57 - 1) = v31;
          *v57 = v32;
          v57[1] = v12;
          v57 += 4;
          ++v59;
          ++v58;
          --v60;
        }

        while (v60);
      }

      v69 = v25;
      v70 = a9 - a11;
      v71 = a9 - 2;
      v72 = ~(2 * a11) + a9;
      if (a11 >= 1)
      {
        do
        {
          LOBYTE(v13) = v27[v71];
          v73 = LODWORD(v13) / 255.0;
          LOBYTE(v14) = v26[v71];
          *&v74 = LODWORD(v14) / 255.0;
          v75 = v11 + v73;
          v76 = v31 + *&v74;
          v77 = v32 + (v73 * v73);
          *&v78 = v73 * *&v74;
          v79 = v12 + *&v78;
          LOBYTE(v78) = v27[v72];
          LOBYTE(v74) = v26[v72];
          v80 = v78 / 255.0;
          v14 = v74 / 255.0;
          v11 = v75 - v80;
          v31 = v76 - v14;
          v32 = v77 - (v80 * v80);
          v13 = v80 * v14;
          v12 = v79 - v13;
          *(v69 - 2) = v11;
          *(v69 - 1) = v31;
          ++v70;
          *v69 = v32;
          v69[1] = v12;
          v69 += 4;
          --v71;
          ++v72;
        }

        while (v70 < a9);
      }

      ++v15;
      v19 += a4;
      v20 += a6;
      v16 += a4;
      v18 += a6;
      v28 += a4;
      v21 = (v21 + a8);
      v29 += a6;
      v27 += a6;
      v26 += a4;
      v23 = (v23 + a8);
      v25 = (v25 + a8);
    }

    while (v15 != a10);
  }
}

- (void)processStage5UInt6Guide:(char *)a3 guideRowBytes:(unint64_t)a4 stats:(float *)a5 statsRowBytes:(unint64_t)a6 output:(char *)a7 outputRowBytes:(unint64_t)a8 width:(int)a9 height:(int)a10 radius:(int)a11
{
  if (a10 >= 1)
  {
    for (i = 0; i != a10; ++i)
    {
      if (a9 >= 1)
      {
        v13 = (a5 + i * a6);
        v14 = a9;
        v15 = a3;
        v16 = a7;
        do
        {
          v17 = *v15++;
          v18 = *v13;
          v19 = v13[1];
          v13 += 4;
          v12 = 1.0 / (((2 * a11) | 1) * ((2 * a11) | 1u));
          *v16++ = fmin(fmax((((v12 * v19) + ((v12 * v18) * (v17 / 255.0))) * 255.0), 0.0), 255.0);
          --v14;
        }

        while (v14);
      }

      a7 += a8;
      a3 += a4;
    }
  }
}

@end