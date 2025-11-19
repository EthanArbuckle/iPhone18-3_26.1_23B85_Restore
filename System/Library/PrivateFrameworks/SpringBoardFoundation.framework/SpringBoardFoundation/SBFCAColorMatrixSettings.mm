@interface SBFCAColorMatrixSettings
+ (BOOL)ignoresKey:(id)a3;
+ (id)settingsControllerModule;
- (CAColorMatrix)colorMatrix;
- (id)drillDownSummary;
- (void)setColorMatrix:(CAColorMatrix *)a3;
- (void)setControlFirstThreeRowsTogether:(BOOL)a3;
- (void)setDefaultValues;
- (void)setMx1:(double)a3;
- (void)setMx2:(double)a3;
- (void)setMx3:(double)a3;
- (void)setMx4:(double)a3;
- (void)setMx5:(double)a3;
@end

@implementation SBFCAColorMatrixSettings

- (CAColorMatrix)colorMatrix
{
  [(SBFCAColorMatrixSettings *)self m11];
  *&v5 = v5;
  retstr->var0 = *&v5;
  [(SBFCAColorMatrixSettings *)self m12];
  *&v6 = v6;
  retstr->var1 = *&v6;
  [(SBFCAColorMatrixSettings *)self m13];
  *&v7 = v7;
  retstr->var2 = *&v7;
  [(SBFCAColorMatrixSettings *)self m14];
  *&v8 = v8;
  retstr->var3 = *&v8;
  [(SBFCAColorMatrixSettings *)self m15];
  *&v9 = v9;
  retstr->var4 = *&v9;
  [(SBFCAColorMatrixSettings *)self m21];
  *&v10 = v10;
  retstr->var5 = *&v10;
  [(SBFCAColorMatrixSettings *)self m22];
  *&v11 = v11;
  retstr->var6 = *&v11;
  [(SBFCAColorMatrixSettings *)self m23];
  *&v12 = v12;
  retstr->var7 = *&v12;
  [(SBFCAColorMatrixSettings *)self m24];
  *&v13 = v13;
  retstr->var8 = *&v13;
  [(SBFCAColorMatrixSettings *)self m25];
  *&v14 = v14;
  retstr->var9 = *&v14;
  [(SBFCAColorMatrixSettings *)self m31];
  *&v15 = v15;
  retstr->var10 = *&v15;
  [(SBFCAColorMatrixSettings *)self m32];
  *&v16 = v16;
  retstr->var11 = *&v16;
  [(SBFCAColorMatrixSettings *)self m33];
  *&v17 = v17;
  retstr->var12 = *&v17;
  [(SBFCAColorMatrixSettings *)self m34];
  *&v18 = v18;
  retstr->var13 = *&v18;
  [(SBFCAColorMatrixSettings *)self m35];
  *&v19 = v19;
  retstr->var14 = *&v19;
  [(SBFCAColorMatrixSettings *)self m41];
  *&v20 = v20;
  retstr->var15 = *&v20;
  [(SBFCAColorMatrixSettings *)self m42];
  *&v21 = v21;
  retstr->var16 = *&v21;
  [(SBFCAColorMatrixSettings *)self m43];
  *&v22 = v22;
  retstr->var17 = *&v22;
  [(SBFCAColorMatrixSettings *)self m44];
  *&v23 = v23;
  retstr->var18 = *&v23;
  result = [(SBFCAColorMatrixSettings *)self m45];
  *&v25 = v25;
  retstr->var19 = *&v25;
  return result;
}

- (void)setDefaultValues
{
  v2 = *(MEMORY[0x1E6979280] + 48);
  v4[2] = *(MEMORY[0x1E6979280] + 32);
  v4[3] = v2;
  v4[4] = *(MEMORY[0x1E6979280] + 64);
  v3 = *(MEMORY[0x1E6979280] + 16);
  v4[0] = *MEMORY[0x1E6979280];
  v4[1] = v3;
  [(SBFCAColorMatrixSettings *)self setColorMatrix:v4];
}

+ (id)settingsControllerModule
{
  v154[51] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.controlFirstThreeRowsTogether == YES"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.controlFirstThreeRowsTogether == NO"];
  v152 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Control first 3 rows together" valueKeyPath:@"controlFirstThreeRowsTogether"];
  v154[0] = v152;
  v151 = [MEMORY[0x1E69C6620] rowWithTitle:@"M11" valueKeyPath:@"m11"];
  v150 = [v151 precision:3];
  v149 = [v150 condition:v3];
  v154[1] = v149;
  v148 = [MEMORY[0x1E69C6620] rowWithTitle:@"M12" valueKeyPath:@"m12"];
  v147 = [v148 precision:3];
  v146 = [v147 condition:v3];
  v154[2] = v146;
  v145 = [MEMORY[0x1E69C6620] rowWithTitle:@"M13" valueKeyPath:@"m13"];
  v144 = [v145 precision:3];
  v143 = [v144 condition:v3];
  v154[3] = v143;
  v142 = [MEMORY[0x1E69C6620] rowWithTitle:@"M14" valueKeyPath:@"m14"];
  v141 = [v142 precision:3];
  v140 = [v141 condition:v3];
  v154[4] = v140;
  v139 = [MEMORY[0x1E69C6620] rowWithTitle:@"M15" valueKeyPath:@"m15"];
  v138 = [v139 precision:3];
  v137 = [v138 condition:v3];
  v154[5] = v137;
  v136 = [MEMORY[0x1E69C6620] rowWithTitle:@"M21" valueKeyPath:@"m21"];
  v135 = [v136 precision:3];
  v134 = [v135 condition:v3];
  v154[6] = v134;
  v133 = [MEMORY[0x1E69C6620] rowWithTitle:@"M22" valueKeyPath:@"m22"];
  v132 = [v133 precision:3];
  v131 = [v132 condition:v3];
  v154[7] = v131;
  v130 = [MEMORY[0x1E69C6620] rowWithTitle:@"M23" valueKeyPath:@"m23"];
  v129 = [v130 precision:3];
  v128 = [v129 condition:v3];
  v154[8] = v128;
  v127 = [MEMORY[0x1E69C6620] rowWithTitle:@"M24" valueKeyPath:@"m24"];
  v126 = [v127 precision:3];
  v125 = [v126 condition:v3];
  v154[9] = v125;
  v124 = [MEMORY[0x1E69C6620] rowWithTitle:@"M25" valueKeyPath:@"m25"];
  v123 = [v124 precision:3];
  v122 = [v123 condition:v3];
  v154[10] = v122;
  v121 = [MEMORY[0x1E69C6620] rowWithTitle:@"M31" valueKeyPath:@"m31"];
  v120 = [v121 precision:3];
  v119 = [v120 condition:v3];
  v154[11] = v119;
  v118 = [MEMORY[0x1E69C6620] rowWithTitle:@"M32" valueKeyPath:@"m32"];
  v117 = [v118 precision:3];
  v116 = [v117 condition:v3];
  v154[12] = v116;
  v115 = [MEMORY[0x1E69C6620] rowWithTitle:@"M33" valueKeyPath:@"m33"];
  v114 = [v115 precision:3];
  v113 = [v114 condition:v3];
  v154[13] = v113;
  v112 = [MEMORY[0x1E69C6620] rowWithTitle:@"M34" valueKeyPath:@"m34"];
  v111 = [v112 precision:3];
  v110 = [v111 condition:v3];
  v154[14] = v110;
  v109 = [MEMORY[0x1E69C6620] rowWithTitle:@"M35" valueKeyPath:@"m35"];
  v108 = [v109 precision:3];
  v107 = [v108 condition:v3];
  v154[15] = v107;
  v106 = [MEMORY[0x1E69C6620] rowWithTitle:@"Mx1" valueKeyPath:@"mx1"];
  v105 = [v106 precision:3];
  v104 = [v105 condition:v2];
  v154[16] = v104;
  v103 = [MEMORY[0x1E69C6620] rowWithTitle:@"Mx2" valueKeyPath:@"mx2"];
  v102 = [v103 precision:3];
  v101 = [v102 condition:v2];
  v154[17] = v101;
  v100 = [MEMORY[0x1E69C6620] rowWithTitle:@"Mx3" valueKeyPath:@"mx3"];
  v99 = [v100 precision:3];
  v98 = [v99 condition:v2];
  v154[18] = v98;
  v97 = [MEMORY[0x1E69C6620] rowWithTitle:@"Mx4" valueKeyPath:@"mx4"];
  v96 = [v97 precision:3];
  v95 = [v96 condition:v2];
  v154[19] = v95;
  v94 = [MEMORY[0x1E69C6620] rowWithTitle:@"Mx5" valueKeyPath:@"mx5"];
  v93 = [v94 precision:3];
  v92 = [v93 condition:v2];
  v154[20] = v92;
  v91 = [MEMORY[0x1E69C6620] rowWithTitle:@"M41" valueKeyPath:@"m41"];
  v90 = [v91 precision:3];
  v154[21] = v90;
  v89 = [MEMORY[0x1E69C6620] rowWithTitle:@"M42" valueKeyPath:@"m42"];
  v88 = [v89 precision:3];
  v154[22] = v88;
  v87 = [MEMORY[0x1E69C6620] rowWithTitle:@"M43" valueKeyPath:@"m43"];
  v86 = [v87 precision:3];
  v154[23] = v86;
  v85 = [MEMORY[0x1E69C6620] rowWithTitle:@"M44" valueKeyPath:@"m44"];
  v84 = [v85 precision:3];
  v154[24] = v84;
  v83 = [MEMORY[0x1E69C6620] rowWithTitle:@"M45" valueKeyPath:@"m45"];
  v82 = [v83 precision:3];
  v154[25] = v82;
  v80 = [MEMORY[0x1E69C6698] rowWithTitle:@"M11" valueKeyPath:@"m11"];
  v79 = [v80 minValue:-1.0 maxValue:1.0];
  v78 = [v79 condition:v3];
  v154[26] = v78;
  v77 = [MEMORY[0x1E69C6698] rowWithTitle:@"M12" valueKeyPath:@"m12"];
  v76 = [v77 minValue:-1.0 maxValue:1.0];
  v75 = [v76 condition:v3];
  v154[27] = v75;
  v74 = [MEMORY[0x1E69C6698] rowWithTitle:@"M13" valueKeyPath:@"m13"];
  v73 = [v74 minValue:-1.0 maxValue:1.0];
  v72 = [v73 condition:v3];
  v154[28] = v72;
  v71 = [MEMORY[0x1E69C6698] rowWithTitle:@"M14" valueKeyPath:@"m14"];
  v69 = [v71 minValue:-1.0 maxValue:1.0];
  v68 = [v69 condition:v3];
  v154[29] = v68;
  v67 = [MEMORY[0x1E69C6698] rowWithTitle:@"M15" valueKeyPath:@"m15"];
  v66 = [v67 minValue:-1.0 maxValue:1.0];
  v65 = [v66 condition:v3];
  v154[30] = v65;
  v64 = [MEMORY[0x1E69C6698] rowWithTitle:@"M21" valueKeyPath:@"m21"];
  v63 = [v64 minValue:-1.0 maxValue:1.0];
  v62 = [v63 condition:v3];
  v154[31] = v62;
  v61 = [MEMORY[0x1E69C6698] rowWithTitle:@"M22" valueKeyPath:@"m22"];
  v60 = [v61 minValue:-1.0 maxValue:1.0];
  v59 = [v60 condition:v3];
  v154[32] = v59;
  v58 = [MEMORY[0x1E69C6698] rowWithTitle:@"M23" valueKeyPath:@"m23"];
  v57 = [v58 minValue:-1.0 maxValue:1.0];
  v55 = [v57 condition:v3];
  v154[33] = v55;
  v54 = [MEMORY[0x1E69C6698] rowWithTitle:@"M24" valueKeyPath:@"m24"];
  v53 = [v54 minValue:-1.0 maxValue:1.0];
  v52 = [v53 condition:v3];
  v154[34] = v52;
  v51 = [MEMORY[0x1E69C6698] rowWithTitle:@"M25" valueKeyPath:@"m25"];
  v50 = [v51 minValue:-1.0 maxValue:1.0];
  v49 = [v50 condition:v3];
  v154[35] = v49;
  v48 = [MEMORY[0x1E69C6698] rowWithTitle:@"M31" valueKeyPath:@"m31"];
  v47 = [v48 minValue:-1.0 maxValue:1.0];
  v46 = [v47 condition:v3];
  v154[36] = v46;
  v45 = [MEMORY[0x1E69C6698] rowWithTitle:@"M32" valueKeyPath:@"m32"];
  v44 = [v45 minValue:-1.0 maxValue:1.0];
  v43 = [v44 condition:v3];
  v154[37] = v43;
  v42 = [MEMORY[0x1E69C6698] rowWithTitle:@"M33" valueKeyPath:@"m33"];
  v41 = [v42 minValue:-1.0 maxValue:1.0];
  v40 = [v41 condition:v3];
  v154[38] = v40;
  v39 = [MEMORY[0x1E69C6698] rowWithTitle:@"M34" valueKeyPath:@"m34"];
  v38 = [v39 minValue:-1.0 maxValue:1.0];
  v81 = v3;
  v37 = [v38 condition:v3];
  v154[39] = v37;
  v36 = [MEMORY[0x1E69C6698] rowWithTitle:@"M35" valueKeyPath:@"m35"];
  v35 = [v36 minValue:-1.0 maxValue:1.0];
  v34 = [v35 condition:v3];
  v154[40] = v34;
  v33 = [MEMORY[0x1E69C6698] rowWithTitle:@"Mx1" valueKeyPath:@"mx1"];
  v32 = [v33 minValue:-1.0 maxValue:1.0];
  v31 = [v32 condition:v2];
  v154[41] = v31;
  v30 = [MEMORY[0x1E69C6698] rowWithTitle:@"Mx2" valueKeyPath:@"mx2"];
  v29 = [v30 minValue:-1.0 maxValue:1.0];
  v28 = [v29 condition:v2];
  v154[42] = v28;
  v27 = [MEMORY[0x1E69C6698] rowWithTitle:@"Mx3" valueKeyPath:@"mx3"];
  v26 = [v27 minValue:-1.0 maxValue:1.0];
  v25 = [v26 condition:v2];
  v154[43] = v25;
  v24 = [MEMORY[0x1E69C6698] rowWithTitle:@"Mx4" valueKeyPath:@"mx4"];
  v23 = [v24 minValue:-1.0 maxValue:1.0];
  v70 = v2;
  v22 = [v23 condition:v2];
  v154[44] = v22;
  v21 = [MEMORY[0x1E69C6698] rowWithTitle:@"Mx5" valueKeyPath:@"mx5"];
  v20 = [v21 minValue:-1.0 maxValue:1.0];
  v19 = [v20 condition:v2];
  v154[45] = v19;
  v4 = [MEMORY[0x1E69C6698] rowWithTitle:@"M41" valueKeyPath:@"m41"];
  v5 = [v4 minValue:-1.0 maxValue:1.0];
  v154[46] = v5;
  v6 = [MEMORY[0x1E69C6698] rowWithTitle:@"M42" valueKeyPath:@"m42"];
  v7 = [v6 minValue:-1.0 maxValue:1.0];
  v154[47] = v7;
  v8 = [MEMORY[0x1E69C6698] rowWithTitle:@"M43" valueKeyPath:@"m43"];
  v9 = [v8 minValue:-1.0 maxValue:1.0];
  v154[48] = v9;
  v10 = [MEMORY[0x1E69C6698] rowWithTitle:@"M44" valueKeyPath:@"m44"];
  v11 = [v10 minValue:-1.0 maxValue:1.0];
  v154[49] = v11;
  v12 = [MEMORY[0x1E69C6698] rowWithTitle:@"M45" valueKeyPath:@"m45"];
  v13 = [v12 minValue:-1.0 maxValue:1.0];
  v154[50] = v13;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:51];

  v14 = MEMORY[0x1E69C6630];
  v15 = [MEMORY[0x1E69C6630] sectionWithRows:v56];
  v153 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
  v17 = [v14 moduleWithTitle:@"Color Matrix (M<row><column>)" contents:v16];

  return v17;
}

+ (BOOL)ignoresKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"colorMatrix"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mx1") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mx2") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mx3") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mx4"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"mx5"];
  }

  return v4;
}

- (id)drillDownSummary
{
  v3 = MEMORY[0x1E696AEC0];
  [(SBFCAColorMatrixSettings *)self m11];
  v43 = v4;
  [(SBFCAColorMatrixSettings *)self m12];
  v42 = v5;
  [(SBFCAColorMatrixSettings *)self m13];
  v41 = v6;
  [(SBFCAColorMatrixSettings *)self m14];
  v40 = v7;
  [(SBFCAColorMatrixSettings *)self m15];
  v39 = v8;
  [(SBFCAColorMatrixSettings *)self m21];
  v38 = v9;
  [(SBFCAColorMatrixSettings *)self m22];
  v37 = v10;
  [(SBFCAColorMatrixSettings *)self m23];
  v36 = v11;
  [(SBFCAColorMatrixSettings *)self m24];
  v35 = v12;
  [(SBFCAColorMatrixSettings *)self m25];
  v34 = v13;
  [(SBFCAColorMatrixSettings *)self m31];
  v33 = v14;
  [(SBFCAColorMatrixSettings *)self m32];
  v16 = v15;
  [(SBFCAColorMatrixSettings *)self m33];
  v18 = v17;
  [(SBFCAColorMatrixSettings *)self m34];
  v20 = v19;
  [(SBFCAColorMatrixSettings *)self m35];
  v22 = v21;
  [(SBFCAColorMatrixSettings *)self m41];
  v24 = v23;
  [(SBFCAColorMatrixSettings *)self m42];
  v26 = v25;
  [(SBFCAColorMatrixSettings *)self m43];
  v28 = v27;
  [(SBFCAColorMatrixSettings *)self m44];
  v30 = v29;
  [(SBFCAColorMatrixSettings *)self m45];
  return [v3 stringWithFormat:@"(%.3g, %.3g, %.3g, %.3g, %.3g)\n(%.3g, %.3g, %.3g, %.3g, %.3g)\n(%.3g, %.3g, %.3g, %.3g, %.3g)\n(%.3g, %.3g, %.3g, %.3g, %.3g)\n", v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v16, v18, v20, v22, v24, v26, v28, v30, v31];
}

- (void)setControlFirstThreeRowsTogether:(BOOL)a3
{
  if (a3)
  {
    [(SBFCAColorMatrixSettings *)self m11];
    [(SBFCAColorMatrixSettings *)self setMx1:?];
    [(SBFCAColorMatrixSettings *)self m12];
    [(SBFCAColorMatrixSettings *)self setMx2:?];
    [(SBFCAColorMatrixSettings *)self m13];
    [(SBFCAColorMatrixSettings *)self setMx3:?];
    [(SBFCAColorMatrixSettings *)self m14];
    [(SBFCAColorMatrixSettings *)self setMx4:?];
    [(SBFCAColorMatrixSettings *)self m15];
    [(SBFCAColorMatrixSettings *)self setMx5:?];
  }

  self->_controlFirstThreeRowsTogether = a3;
}

- (void)setMx1:(double)a3
{
  [(SBFCAColorMatrixSettings *)self setM11:?];
  [(SBFCAColorMatrixSettings *)self setM21:a3];

  [(SBFCAColorMatrixSettings *)self setM31:a3];
}

- (void)setMx2:(double)a3
{
  [(SBFCAColorMatrixSettings *)self setM12:?];
  [(SBFCAColorMatrixSettings *)self setM22:a3];

  [(SBFCAColorMatrixSettings *)self setM32:a3];
}

- (void)setMx3:(double)a3
{
  [(SBFCAColorMatrixSettings *)self setM13:?];
  [(SBFCAColorMatrixSettings *)self setM23:a3];

  [(SBFCAColorMatrixSettings *)self setM33:a3];
}

- (void)setMx4:(double)a3
{
  [(SBFCAColorMatrixSettings *)self setM14:?];
  [(SBFCAColorMatrixSettings *)self setM24:a3];

  [(SBFCAColorMatrixSettings *)self setM34:a3];
}

- (void)setMx5:(double)a3
{
  [(SBFCAColorMatrixSettings *)self setM15:?];
  [(SBFCAColorMatrixSettings *)self setM25:a3];

  [(SBFCAColorMatrixSettings *)self setM35:a3];
}

- (void)setColorMatrix:(CAColorMatrix *)a3
{
  [(SBFCAColorMatrixSettings *)self setM11:a3->var0];
  [(SBFCAColorMatrixSettings *)self setM12:a3->var1];
  [(SBFCAColorMatrixSettings *)self setM13:a3->var2];
  [(SBFCAColorMatrixSettings *)self setM14:a3->var3];
  [(SBFCAColorMatrixSettings *)self setM15:a3->var4];
  [(SBFCAColorMatrixSettings *)self setM21:a3->var5];
  [(SBFCAColorMatrixSettings *)self setM22:a3->var6];
  [(SBFCAColorMatrixSettings *)self setM23:a3->var7];
  [(SBFCAColorMatrixSettings *)self setM24:a3->var8];
  [(SBFCAColorMatrixSettings *)self setM25:a3->var9];
  [(SBFCAColorMatrixSettings *)self setM31:a3->var10];
  [(SBFCAColorMatrixSettings *)self setM32:a3->var11];
  [(SBFCAColorMatrixSettings *)self setM33:a3->var12];
  [(SBFCAColorMatrixSettings *)self setM34:a3->var13];
  [(SBFCAColorMatrixSettings *)self setM35:a3->var14];
  [(SBFCAColorMatrixSettings *)self setM41:a3->var15];
  [(SBFCAColorMatrixSettings *)self setM42:a3->var16];
  [(SBFCAColorMatrixSettings *)self setM43:a3->var17];
  [(SBFCAColorMatrixSettings *)self setM44:a3->var18];
  var19 = a3->var19;

  [(SBFCAColorMatrixSettings *)self setM45:var19];
}

@end