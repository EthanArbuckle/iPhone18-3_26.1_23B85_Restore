@interface IPAPerspectiveOperator
+ (id)operatorWithIdentifier:(id)identifier angleX:(double)x Y:(double)y dx:(double)dx dy:(double)dy;
- (id)description;
- (id)transformForGeometry:(id)geometry;
@end

@implementation IPAPerspectiveOperator

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p xAngle:%f yAngle:%f dx:%f dy:%F>", v5, self, *&self->_xAngle, *&self->_yAngle, *&self->_dx, *&self->_dy];

  return v6;
}

- (id)transformForGeometry:(id)geometry
{
  v171 = *MEMORY[0x277D85DE8];
  geometryCopy = geometry;
  v5 = geometryCopy;
  v143 = 0u;
  v144 = 0u;
  v142 = 1.0;
  v145 = 1.0;
  v146 = 0u;
  v147 = 0u;
  v149 = 0u;
  v150 = 0u;
  v148 = 0x3FF0000000000000;
  v151 = 0x3FF0000000000000;
  if (geometryCopy)
  {
    [geometryCopy imageQuad];
  }

  else
  {
    v141 = 0uLL;
    v140 = 0uLL;
    v139 = 0uLL;
    v138 = 0uLL;
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  memset(&v134[8], 0, 32);
  *v134 = 0x3FF0000000000000;
  *&v134[40] = 0x3FF0000000000000;
  v135 = 0u;
  v136 = 0u;
  memset(&v137[8], 0, 32);
  *v137 = 0x3FF0000000000000;
  *&v137[40] = 0x3FF0000000000000;
  v125 = 0u;
  v126 = 0u;
  v124 = 1.0;
  v127 = 1.0;
  v128 = 0u;
  v129 = 0u;
  v131 = 0u;
  v132 = 0u;
  v130 = 0x3FF0000000000000;
  v133 = 0x3FF0000000000000;
  memset(&v120[8], 0, 32);
  *v120 = 0x3FF0000000000000;
  *&v120[40] = 0x3FF0000000000000;
  v121 = 0u;
  v122 = 0u;
  memset(&v123[8], 0, 32);
  *v123 = 0x3FF0000000000000;
  *&v123[40] = 0x3FF0000000000000;
  memset(&v116[8], 0, 32);
  *v116 = 0x3FF0000000000000;
  *&v116[40] = 0x3FF0000000000000;
  v117 = 0u;
  v118 = 0u;
  memset(&v119[8], 0, 32);
  *v119 = 0x3FF0000000000000;
  *&v119[40] = 0x3FF0000000000000;
  [v5 extent];
  v10 = v9;
  if (self->_xAngle == 0.0 && self->_yAngle == 0.0)
  {
    v64 = v6;
    width = v7;
    height = v8;
    v66 = 1.0;
    v67 = 1.0;
    v65 = 1.0;
    v68 = 1.0;
    goto LABEL_43;
  }

  v115[0] = v138;
  v115[1] = v139;
  v115[2] = v140;
  v115[3] = v141;
  v173.origin.x = PA::Quad2d::boundingRect(v115);
  x = v173.origin.x;
  y = v173.origin.y;
  width = v173.size.width;
  height = v173.size.height;
  if (CGRectIsEmpty(v173))
  {
    _PFAssertFailHandler();
    goto LABEL_50;
  }

  v77 = y;
  v76 = x;
  if (width >= height)
  {
    v15 = width;
  }

  else
  {
    v15 = height;
  }

  v144 = 0u;
  v143 = 0u;
  v146 = 0u;
  v147 = 0u;
  v149 = 0u;
  v150 = 0u;
  v142 = 1.0 / v15;
  v145 = 1.0 / v15;
  v148 = 0x3FF0000000000000;
  v151 = 0x3FF0000000000000;
  PA::operator*(v114, &v142, v115);
  *v87 = v114[0];
  *&v87[24] = v114[1];
  *&v87[16] = 0;
  *&v87[40] = 0;
  v88 = v114[2];
  *&v89[8] = v114[3];
  *v89 = 0;
  *&v89[24] = 0;
  v16 = PA::Quad2d::areaCenter(v114);
  v18 = v17;
  memset(&v108[8], 0, 32);
  *v108 = 0x3FF0000000000000;
  *&v108[40] = 0x3FF0000000000000;
  v109 = 0u;
  v110 = 0u;
  v111 = xmmword_25E5E03B0;
  v112.f64[0] = v16;
  v112.f64[1] = v17;
  v78 = v16;
  v113 = xmmword_25E5E03C0;
  *&v101 = 0;
  v100 = 0x3FF0000000000000uLL;
  PA::Matrix4d::rotateAxis(v108, &v100, self->_xAngle);
  v100 = xmmword_25E5E03C0;
  *&v101 = 0;
  PA::Matrix4d::rotateAxis(v108, &v100, self->_yAngle);
  v112 = vaddq_f64(v112, vmlaq_f64(vmlsq_lane_f64(vmulq_n_f64(*&v108[32], -v18), *v108, v78, 0), 0, v110));
  *&v113 = *&v113 + -(v18 * v109.f64[0]) - *&v108[16] * v78 + *&v111 * 0.0;
  PA::operator*(&v79, v108, v87);
  v19 = *&v80;
  if (*&v80 >= *(&v81 + 1))
  {
    v20 = *(&v81 + 1);
  }

  else
  {
    v20 = *&v80;
  }

  if (*&v80 < *(&v81 + 1))
  {
    v19 = *(&v81 + 1);
  }

  if (v20 >= *&v83)
  {
    v20 = *&v83;
  }

  if (v20 >= *(&v84 + 1))
  {
    v21 = *(&v84 + 1);
  }

  else
  {
    v21 = v20;
  }

  if (v19 < *&v83)
  {
    v19 = *&v83;
  }

  if (v19 >= *(&v84 + 1))
  {
    v22 = v19;
  }

  else
  {
    v22 = *(&v84 + 1);
  }

  v23 = v78 - v78;
  v24 = v18 - v18;
  v25 = sqrt(v24 * v24 + v23 * v23 + (v22 + 1.0 - v21) * (v22 + 1.0 - v21));
  *&v26 = (v78 - v78) / v25;
  *&v27 = (v18 - v18) / v25;
  *&v28 = (v22 + 1.0 - v21) / v25;
  v29 = *&v28 + *&v27 * -0.0;
  v30 = *&v28 * -0.0 + *&v26 * 0.0;
  v31 = -(*&v26 - *&v27 * 0.0);
  v32 = sqrt(v30 * v30 + v29 * v29 + v31 * v31);
  v33 = v30 / v32;
  v34 = v31 / v32;
  *&v100 = v29 / v32;
  *(&v100 + 1) = *&v27 * v34 - *&v28 * v33;
  v101 = v26;
  *&v102 = v33;
  *(&v102 + 1) = *&v28 * (v29 / v32) - *&v26 * v34;
  v103 = v27;
  v104.f64[0] = v34;
  v104.f64[1] = *&v26 * v33 - *&v27 * (v29 / v32);
  v105 = v28;
  v106.f64[0] = -(v33 * v18) - v29 / v32 * v78 - v34 * (v22 + 1.0);
  v106.f64[1] = -((*&v28 * *&v100 - *&v26 * v34) * v18) - *(&v100 + 1) * v78 - (*&v26 * v33 - *&v27 * *&v100) * (v22 + 1.0);
  *&v107 = -(*&v27 * v18) - *&v26 * v78 - *&v28 * (v22 + 1.0);
  *(&v107 + 1) = 0x3FF0000000000000;
  PA::operator*(&v92, &v100, &v79);
  v163 = v104;
  *v164 = v105;
  *&v164[16] = v106;
  *&v164[32] = v107;
  *v161 = v100;
  *&v161[16] = v101;
  *&v161[32] = v102;
  v162 = v103;
  PA::Matrix4d::operator*=(v161, v108);
  v169 = *&v161[8];
  v170 = *&v161[24];
  v167 = v162;
  v168 = v163;
  v165 = *&v164[8];
  v166 = *&v164[24];
  if (v78 == 0.0 || v18 == 0.0 || (v35 = v22 - v21 + 1.0, v35 == 1.0) || v35 <= 0.0)
  {
LABEL_49:
    _PFAssertFailHandler();
LABEL_50:
    __break(1u);
  }

  v73 = *&v161[40];
  v74 = *v161;
  v75 = *v164;
  v36 = 0;
  v72 = *&v164[40];
  memset(&v134[8], 0, 32);
  v135 = 0uLL;
  *v134 = 2.0 / (v78 + v78);
  *&v134[40] = 2.0 / (v18 + v18);
  v136.f64[0] = v23 / (v78 + v78);
  v136.f64[1] = v24 / (v18 + v18);
  *v137 = -(v35 + 1.0) / (v35 + -1.0);
  *&v137[16] = 0uLL;
  *&v137[8] = 0xBFF0000000000000;
  *&v137[32] = v35 * -2.0 / (v35 + -1.0);
  *&v137[40] = 0;
  *v161 = v92;
  *&v161[16] = v93;
  *&v161[24] = 0x3FF0000000000000;
  *&v161[32] = v94;
  v162.f64[0] = v95;
  v162.f64[1] = 1.0;
  v163 = v96;
  *v164 = v97;
  *&v164[8] = 0x3FF0000000000000;
  *&v164[16] = v98;
  *&v164[32] = v99;
  *&v164[40] = 0x3FF0000000000000;
  v10 = v76;
  do
  {
    v37 = &v161[v36];
    *v37 = PA::operator*(v134, &v161[v36]);
    *(v37 + 1) = v38;
    if (*&v40 == 0.0)
    {
      goto LABEL_49;
    }

    *v37 = vdivq_f64(*v37, vdupq_lane_s64(v40, 0));
    *(v37 + 2) = v39 / *&v40;
    *(v37 + 3) = *&v40 / *&v40;
    v36 += 32;
  }

  while (v36 != 128);
  v91[0] = *v161;
  v91[1] = *&v161[32];
  v91[2] = v163;
  v91[3] = *&v164[16];
  PA::Quad2d::boundingRect(v91);
  if (v41 >= v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = v41;
  }

  v44 = 1.0 / v43;
  v125 = 0u;
  v126 = 0u;
  v128 = 0u;
  v129 = 0u;
  v131 = 0u;
  v132 = 0u;
  v124 = width * v44;
  v127 = height * v44;
  v130 = 0x3FF0000000000000;
  v133 = 0x3FF0000000000000;
  PA::operator*(v90, &v124, v91);
  v45 = PA::Quad2d::boundingRect(v90);
  memset(&v120[8], 0, 32);
  v121 = 0u;
  v122 = 0u;
  *v120 = 0x3FF0000000000000;
  *&v120[40] = 0x3FF0000000000000;
  *v123 = xmmword_25E5E03B0;
  *&v123[16] = -v45;
  *&v123[24] = -v46;
  *&v123[32] = xmmword_25E5E03C0;
  PA::operator*(&v155, v120, v90);
  v90[0] = v155;
  v90[1] = v156;
  v90[2] = v157;
  v90[3] = v158;
  v174.origin.x = v76;
  v174.origin.y = v77;
  v174.size.width = width;
  v174.size.height = height;
  MidX = CGRectGetMidX(v174);
  v175.origin.x = v76;
  v175.origin.y = v77;
  v175.size.width = width;
  v175.size.height = height;
  MidY = CGRectGetMidY(v175);
  v49 = PA::Quad2d::areaCenter(v90) + MidX * 0.5 * self->_dx;
  v51 = v50 + MidY * 0.5 * self->_dy;
  v52 = *(MEMORY[0x277CBF3A0] + 16);
  v154[0] = *MEMORY[0x277CBF3A0];
  v154[1] = v52;
  v153[0] = PA::Quad2d::boundingRect(v90);
  v153[1] = v53;
  v153[2] = v54;
  v153[3] = v55;
  v152[0] = &unk_287041C18;
  *&v152[1] = v49;
  *&v152[2] = v51;
  *&v152[3] = width / height;
  v56 = 100;
  do
  {
    *&v159 = (*(v152[0] + 16))(v152, v153, v154);
    *(&v159 + 1) = v57;
    *&v160 = v58;
    *(&v160 + 1) = v59;
    *&v155.f64[0] = v159;
    v155.f64[1] = v57;
    v156.f64[0] = *&v159 + v58;
    v156.f64[1] = v57;
    *&v157.f64[0] = v159;
    v157.f64[1] = v57 + v59;
    v158.f64[0] = *&v159 + v58;
    v158.f64[1] = v57 + v59;
    if ((*(v152[0] + 24))(v152, &v159, v153, 0.5) && PA::Quad2d::simpleContains(v90, &v155))
    {
      break;
    }

    v60 = PA::Quad2d::simpleContains(v90, &v155) ? v154 : v153;
    v61 = v160;
    *v60 = v159;
    v60[1] = v61;
    --v56;
  }

  while (v56);
  v62 = width / *&v160 * 0.0;
  v63 = -(v51 * (height / *(&v160 + 1) * 0.0));
  *v116 = width / *&v160;
  *&v116[8] = v62;
  *&v116[16] = v62;
  *&v116[24] = v62;
  *&v116[32] = height / *(&v160 + 1) * 0.0;
  *&v116[40] = height / *(&v160 + 1);
  v117.f64[0] = *&v116[32];
  v117.f64[1] = *&v116[32];
  v118 = 0uLL;
  *v119 = xmmword_25E5E03B0;
  *&v119[16] = MidX + v63 - width / *&v160 * v49 + 0.0;
  *&v119[24] = MidY + -(v51 * (height / *(&v160 + 1))) - v62 * v49 + 0.0;
  *&v119[32] = v63 - v62 * v49 + 0.0;
  *&v119[40] = 0x3FF0000000000000;
  PA::operator*(&v138, v116, v90);
  v64 = v77;
  v66 = v74;
  v65 = v75;
  v68 = v72;
  v67 = v73;
LABEL_43:
  v104 = v136;
  v105 = *v137;
  v106 = *&v137[16];
  v107 = *&v137[32];
  v100 = *v134;
  v101 = *&v134[16];
  v102 = *&v134[32];
  v103 = v135;
  *&v87[8] = v169;
  *&v87[24] = v170;
  *v87 = v66;
  *&v87[40] = v67;
  v88 = v167;
  *v89 = v168;
  *&v89[24] = v165;
  *&v89[40] = v166;
  *&v89[16] = v65;
  *&v89[56] = v68;
  PA::Matrix4d::operator*=(v87, &v142);
  v163 = *v89;
  *v164 = *&v89[16];
  *&v164[16] = *&v89[32];
  *&v164[32] = *&v89[48];
  *v161 = *v87;
  *&v161[16] = *&v87[16];
  *&v161[32] = *&v87[32];
  v162 = v88;
  PA::Matrix4d::operator*=(&v100, v161);
  v110 = v104;
  v111 = v105;
  v112 = v106;
  v113 = v107;
  *v108 = v100;
  *&v108[16] = v101;
  *&v108[32] = v102;
  v109 = v103;
  v163 = v118;
  *v164 = *v119;
  *&v164[16] = *&v119[16];
  *&v164[32] = *&v119[32];
  *v161 = *v116;
  *&v161[16] = *&v116[16];
  *&v161[32] = *&v116[32];
  v162 = v117;
  v83 = v122;
  v84 = *v123;
  v85 = *&v123[16];
  v86 = *&v123[32];
  v79 = *v120;
  v80 = *&v120[16];
  v81 = *&v120[32];
  v82 = v121;
  PA::Matrix4d::operator*=(&v79, &v124);
  *v89 = v83;
  *&v89[16] = v84;
  *&v89[32] = v85;
  *&v89[48] = v86;
  *v87 = v79;
  *&v87[16] = v80;
  *&v87[32] = v81;
  v88 = v82;
  PA::Matrix4d::operator*=(v161, v87);
  v104 = v163;
  v105 = *v164;
  v106 = *&v164[16];
  v107 = *&v164[32];
  v100 = *v161;
  v101 = *&v161[16];
  v102 = *&v161[32];
  v103 = v162;
  height = [[IPAImageGeometry alloc] initWithIdentifier:@"perspectived" extent:&v138 imageQuad:v10, v64, width, height];
  v70 = [[IPAPerspectiveTransform alloc] initWithInputGeometry:v5 intrinsicGeometry:height projectionTransform:v108 viewingTransform:&v100];

  return v70;
}

+ (id)operatorWithIdentifier:(id)identifier angleX:(double)x Y:(double)y dx:(double)dx dy:(double)dy
{
  identifierCopy = identifier;
  if (fabs(x) > 0.785398163 || fabs(y) > 0.785398163 || fabs(dx) > 1.0 || fabs(dy) > 1.0)
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  else
  {
    v12 = [(IPAGeometryOperator *)[IPAPerspectiveOperator alloc] initWithIdentifier:identifierCopy];
    v12->_xAngle = x;
    v12->_yAngle = y;
    v12->_dx = dx;
    v12->_dy = dy;

    return v12;
  }

  return result;
}

@end