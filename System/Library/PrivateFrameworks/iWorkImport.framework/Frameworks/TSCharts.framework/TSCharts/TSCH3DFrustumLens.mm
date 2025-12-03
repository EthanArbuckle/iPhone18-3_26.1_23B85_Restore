@interface TSCH3DFrustumLens
- (id)frustumRectAtDistance:(float)distance;
- (tmat4x4<float>)matrix;
- (void)calculateCullingPlanes:(void *)planes;
@end

@implementation TSCH3DFrustumLens

- (tmat4x4<float>)matrix
{
  *&retstr->value[1].var1.var0 = 0u;
  *&retstr->value[2].var1.var0 = 0u;
  retstr->value[3] = 0u;
  *&retstr->value[0].var1.var0 = 0u;
  var0_low = LODWORD(self->value[0].var2.var0);
  var0 = self->value[0].var3.var0;
  v5 = self->value[1].var1.var0;
  v6 = self->value[1].var0.var0;
  v7 = self->value[1].var3.var0;
  retstr->value[0].var0.var0 = (*&var0_low + *&var0_low) / (v5 - v6);
  v8 = self->value[1].var2.var0;
  retstr->value[1].var1.var0 = (*&var0_low + *&var0_low) / (v7 - v8);
  retstr->value[2].var0.var0 = (v5 + v6) / (v5 - v6);
  retstr->value[2].var1.var0 = (v7 + v8) / (v7 - v8);
  retstr->value[2].var2.var0 = -(*&var0_low + var0) / (var0 - *&var0_low);
  retstr->value[2].var3.var0 = -1.0;
  retstr->value[3].var2.var0 = (*&var0_low * (var0 * -2.0)) / (var0 - *&var0_low);
  return self;
}

- (id)frustumRectAtDistance:(float)distance
{
  v5 = distance / self->super.super._near;
  *&v6 = v5 * self->super._left;
  *&v3 = v5 * self->super._right;
  *&v4 = v5 * self->super._bottom;
  return MEMORY[0x2821F9670](TSCH3DFrustumRect, sel_rectWithLeft_right_bottom_top_, v6, v3, v4);
}

- (void)calculateCullingPlanes:(void *)planes
{
  v151.receiver = self;
  v151.super_class = TSCH3DFrustumLens;
  [(TSCH3DLens *)&v151 calculateCullingPlanes:?];
  objc_msgSend_near(self, v5, v6, v7, v8);
  v13 = objc_msgSend_frustumRectAtDistance_(self, v9, v10, v11, v12);
  objc_msgSend_far(self, v14, v15, v16, v17);
  v22 = objc_msgSend_frustumRectAtDistance_(self, v18, v19, v20, v21);
  objc_msgSend_left(v13, v23, v24, v25, v26);
  v28 = *&v27;
  objc_msgSend_bottom(v13, v29, v27, v30, v31);
  v33 = *&v32;
  objc_msgSend_near(self, v34, v32, v35, v36);
  *&v38 = -v37;
  v150[0] = v28;
  v150[1] = v33;
  v150[2] = *&v38;
  objc_msgSend_left(v13, v39, v38, v40, v41);
  v43 = *&v42;
  objc_msgSend_top(v13, v44, v42, v45, v46);
  v48 = *&v47;
  objc_msgSend_near(self, v49, v47, v50, v51);
  *&v53 = -v52;
  v149[0] = v43;
  v149[1] = v48;
  v149[2] = *&v53;
  objc_msgSend_right(v13, v54, v53, v55, v56);
  v58 = *&v57;
  objc_msgSend_top(v13, v59, v57, v60, v61);
  v63 = *&v62;
  objc_msgSend_near(self, v64, v62, v65, v66);
  *&v68 = -v67;
  v148[0] = v58;
  v148[1] = v63;
  v148[2] = *&v68;
  objc_msgSend_right(v13, v69, v68, v70, v71);
  v73 = *&v72;
  objc_msgSend_bottom(v13, v74, v72, v75, v76);
  v78 = *&v77;
  objc_msgSend_near(self, v79, v77, v80, v81);
  *&v83 = -v82;
  v147[0] = v73;
  v147[1] = v78;
  v147[2] = *&v83;
  objc_msgSend_left(v22, v84, v83, v85, v86);
  v88 = LODWORD(v87);
  objc_msgSend_top(v22, v89, v87, v90, v91);
  v93 = LODWORD(v92);
  objc_msgSend_far(self, v94, v92, v95, v96);
  v143 = v88;
  v144 = v93;
  v145 = -v97;
  sub_2761B4B70(v148, v149, &v143, v146);
  sub_2761B3F30(planes, v146);
  objc_msgSend_right(v22, v98, v99, v100, v101);
  v103 = LODWORD(v102);
  objc_msgSend_top(v22, v104, v102, v105, v106);
  v108 = LODWORD(v107);
  objc_msgSend_far(self, v109, v107, v110, v111);
  v143 = v103;
  v144 = v108;
  v145 = -v112;
  sub_2761B4B70(v147, v148, &v143, v146);
  sub_2761B3F30(planes, v146);
  objc_msgSend_right(v22, v113, v114, v115, v116);
  v118 = LODWORD(v117);
  objc_msgSend_bottom(v22, v119, v117, v120, v121);
  v123 = LODWORD(v122);
  objc_msgSend_far(self, v124, v122, v125, v126);
  v143 = v118;
  v144 = v123;
  v145 = -v127;
  sub_2761B4B70(v150, v147, &v143, v146);
  sub_2761B3F30(planes, v146);
  objc_msgSend_left(v22, v128, v129, v130, v131);
  v133 = LODWORD(v132);
  objc_msgSend_bottom(v22, v134, v132, v135, v136);
  v138 = LODWORD(v137);
  objc_msgSend_far(self, v139, v137, v140, v141);
  v143 = v133;
  v144 = v138;
  v145 = -v142;
  sub_2761B4B70(v149, v150, &v143, v146);
  sub_2761B3F30(planes, v146);
}

@end