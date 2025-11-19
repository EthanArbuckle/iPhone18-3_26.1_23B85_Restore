@interface VFXSkinner
+ (VFXSkinner)skinnerWithBaseGeometry:(id)a3 bones:(id)a4 boneInverseBindTransforms:(id)a5 boneWeights:(id)a6 boneIndices:(id)a7;
+ (VFXSkinner)skinnerWithSkinnerRef:(__CFXSkinner *)a3;
+ (__CFXSkinner)_createSkinnerWithBones:(id)a3 boneWeights:(id)a4 boneIndices:(id)a5 baseMesh:(id)a6;
+ (__CFXSkinner)_createSkinnerWithCompressedData:(id)a3 bonesCount:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (BOOL)_setSkeleton:(id)a3;
- (NSArray)boneInverseBindTransforms;
- (NSArray)bones;
- (VFXMeshSource)boneIndices;
- (VFXMeshSource)boneWeights;
- (VFXSkinner)initWithCoder:(id)a3;
- (VFXSkinner)initWithSkinnerRef:(__CFXSkinner *)a3;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (__n128)baseGeometryBindTransform;
- (id)baseMesh;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)setBaseGeometryBindTransform:(uint64_t)a3;
- (void)_setBaseGeometry:(id)a3;
- (void)_updateModelFromPresentation;
- (void)addWorldReference:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)removeWorldReference:(id)a3;
- (void)setBoneInverseBindTransforms:(id)a3;
- (void)setBones:(id)a3;
- (void)setSkeleton:(id)a3;
- (void)setWorld:(id)a3;
@end

@implementation VFXSkinner

- (VFXSkinner)initWithSkinnerRef:(__CFXSkinner *)a3
{
  v10.receiver = self;
  v10.super_class = VFXSkinner;
  v4 = [(VFXSkinner *)&v10 init];
  if (v4)
  {
    v5 = CFRetain(a3);
    v4->_skinner = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
  }

  return v4;
}

+ (VFXSkinner)skinnerWithSkinnerRef:(__CFXSkinner *)a3
{
  result = sub_1AF16CDEC(a3);
  if (!result)
  {
    v6 = [a1 alloc];
    v9 = objc_msgSend_initWithSkinnerRef_(v6, v7, a3, v8);

    return v9;
  }

  return result;
}

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    sub_1AF16CDFC(skinner, 0);
    v4 = self->_skinner;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF32CB80;
    v9[3] = &unk_1E7A7E6C0;
    v9[4] = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, 0, v9);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v6, v4, v7);
  }

  objc_storeWeak(&self->_skeleton, 0);

  v8.receiver = self;
  v8.super_class = VFXSkinner;
  [(VFXSkinner *)&v8 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = sub_1AF1C8CC0(self->_skinner);
  v5 = [VFXSkinner alloc];
  v8 = objc_msgSend_initWithSkinnerRef_(v5, v6, v4, v7);
  CFRelease(v4);
  v12 = objc_msgSend_skeleton(self, v9, v10, v11);
  objc_msgSend__setSkeleton_(v8, v13, v12, v14);
  objc_msgSend__setBaseGeometry_(v8, v15, self->_baseGeometry, v16);
  objc_msgSend_set_bonesAndIndicesCompression_(v8, v17, self->_bonesAndIndicesCompression, v18);
  return v8;
}

- (BOOL)_setSkeleton:(id)a3
{
  Weak = objc_loadWeak(&self->_skeleton);
  if (Weak != a3)
  {
    objc_storeWeak(&self->_skeleton, a3);
  }

  return Weak != a3;
}

- (void)_updateModelFromPresentation
{
  v3 = sub_1AF15B364(self->_skinner);
  if (v3)
  {
    v7 = objc_msgSend_nodeWithNodeRef_(VFXNode, v4, v3, v6);
  }

  else
  {
    v10 = objc_msgSend_bones(self, v4, v5, v6);
    v7 = sub_1AF32CD28(v10, v11);
    if (!v7)
    {
      return;
    }
  }

  objc_msgSend__setSkeleton_(self, v8, v7, v9);
}

- (void)setSkeleton:(id)a3
{
  v6 = objc_msgSend_skeleton(self, a2, a3, v3);
  if (objc_msgSend__setSkeleton_(self, v7, a3, v8))
  {
    if (self->_skinner)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF32CF08;
      v10[3] = &unk_1E7A7E3B0;
      v10[4] = self;
      v10[5] = a3;
      v10[6] = v6;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
    }
  }
}

- (id)baseMesh
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_baseGeometry;
  }

  else
  {
    return 0;
  }
}

- (void)_setBaseGeometry:(id)a3
{
  if (a3)
  {
    baseGeometry = self->_baseGeometry;
    if (baseGeometry != a3)
    {

      self->_baseGeometry = a3;
    }
  }
}

+ (__CFXSkinner)_createSkinnerWithBones:(id)a3 boneWeights:(id)a4 boneIndices:(id)a5 baseMesh:(id)a6
{
  v146 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_count(a3, a2, a3, a4);
  v13 = v9;
  if (v9 < 2)
  {
    v68 = objc_msgSend_meshRef(a6, v10, v11, v12);
    v69 = sub_1AF1C6FF8(0, v13, 0, v68);
    sub_1AF130CFC(v69, 1);
  }

  else
  {
    v14 = objc_msgSend_meshSourcesForSemantic_(a6, v10, @"kGeometrySourceSemanticPosition", v12);
    Object = objc_msgSend_firstObject(v14, v15, v16, v17);
    v22 = objc_msgSend_vectorCount(Object, v19, v20, v21);
    v26 = objc_msgSend_data(a4, v23, v24, v25);
    v30 = objc_msgSend_length(v26, v27, v28, v29);
    v34 = objc_msgSend_bytesPerComponent(a4, v31, v32, v33);
    v38 = objc_msgSend_data(a5, v35, v36, v37);
    v42 = objc_msgSend_length(v38, v39, v40, v41);
    v46 = objc_msgSend_bytesPerComponent(a5, v43, v44, v45);
    v50 = objc_msgSend_vectorCount(a5, v47, v48, v49);
    if (v50 != objc_msgSend_vectorCount(a4, v51, v52, v53) || (v57 = v30 / v22 / v34, v42 / v22 / v46 != v57))
    {
      v71 = sub_1AF0D5194();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8A08();
      }

      return 0;
    }

    if (!objc_msgSend_floatComponents(a4, v54, v55, v56) || objc_msgSend_bytesPerComponent(a4, v58, v59, v60) != 4)
    {
      v73 = sub_1AF0D5194();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8A3C();
      }

      return 0;
    }

    if (objc_msgSend_bytesPerComponent(a5, v61, v62, v63) >= 3)
    {
      v67 = sub_1AF0D5194();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8AD8();
      }

      return 0;
    }

    v74 = objc_msgSend_dataStride(a5, v64, v65, v66);
    v78 = objc_msgSend_componentsPerVector(a5, v75, v76, v77);
    if (v74 != objc_msgSend_bytesPerComponent(a5, v79, v80, v81) * v78)
    {
      v139 = sub_1AF0D5194();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8A70();
      }

      return 0;
    }

    v85 = objc_msgSend_dataStride(a4, v82, v83, v84);
    v89 = objc_msgSend_componentsPerVector(a4, v86, v87, v88);
    if (v85 != objc_msgSend_bytesPerComponent(a4, v90, v91, v92) * v89)
    {
      v140 = sub_1AF0D5194();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8AA4();
      }

      return 0;
    }

    v96 = v57 * v22;
    v97 = objc_msgSend_meshRef(a6, v93, v94, v95);
    v69 = sub_1AF1C6FF8(v22, v13, v57 * v22, v97);
    sub_1AF130CFC(v69, v57);
    v142 = 0;
    v143 = 0;
    v141 = 0;
    sub_1AF1C78C4(v69, &v143, &v142, &v141);
    if (v143 && (v22 & 0x8000000000000000) == 0)
    {
      v101 = 0;
      v102 = vdupq_n_s64(v22);
      v103 = (v22 & 0x7FFFFFFFFFFFFFFCLL) + 4;
      v104 = xmmword_1AFE21100;
      v105 = xmmword_1AFE21110;
      v106 = (v143 + 8);
      v107 = vdupq_n_s64(4uLL);
      do
      {
        v108 = vmovn_s64(vcgeq_u64(v102, v105));
        if (vuzp1_s16(v108, *v102.i8).u8[0])
        {
          *(v106 - 2) = v101 * v57;
        }

        if (vuzp1_s16(v108, *&v102).i8[2])
        {
          *(v106 - 1) = (v101 | 1) * v57;
        }

        if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, *&v104))).i32[1])
        {
          *v106 = (v101 | 2) * v57;
          v106[1] = (v101 | 3) * v57;
        }

        v101 += 4;
        v104 = vaddq_s64(v104, v107);
        v105 = vaddq_s64(v105, v107);
        v106 += 4;
        v103 -= 4;
      }

      while (v103);
    }

    v109 = objc_msgSend_data(a5, v98, v99, v100);
    v113 = objc_msgSend_bytes(v109, v110, v111, v112);
    v117 = objc_msgSend_data(a5, v114, v115, v116);
    v121 = objc_msgSend_bytes(v117, v118, v119, v120);
    v125 = objc_msgSend_data(a4, v122, v123, v124);
    v129 = objc_msgSend_bytes(v125, v126, v127, v128);
    v133 = objc_msgSend_bytesPerComponent(a5, v130, v131, v132);
    if (v96 >= 1)
    {
      v134 = v133;
      for (i = 0; i < v96; ++i)
      {
        if (v134 == 1)
        {
          v136 = *(v113 + i);
        }

        else
        {
          v136 = *(v121 + 2 * i);
        }

        *(v142 + 2 * i) = v136;
        if (v141)
        {
          *(v141 + 4 * i) = *(v129 + 4 * i);
        }

        if (v136 < 0)
        {
          v137 = sub_1AF0D5194();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            v138 = *(v142 + 2 * i);
            *buf = 67109120;
            v145 = v138;
            _os_log_error_impl(&dword_1AF0CE000, v137, OS_LOG_TYPE_ERROR, "Error: skinner: invalid index (%d)", buf, 8u);
          }

          *(v142 + 2 * i) = -1;
        }
      }
    }

    sub_1AF1C760C(v69);
  }

  v70 = sub_1AF1C8C0C(v69);
  CFRelease(v69);
  return v70;
}

+ (__CFXSkinner)_createSkinnerWithCompressedData:(id)a3 bonesCount:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  if (objc_msgSend_count(a3, a2, a3, a4) != 3)
  {
    if (objc_msgSend_count(a3, v8, v9, v10) != 1)
    {
      v36 = sub_1AF0D5194();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF8B0C(v36, v34, v37, v35, v38, v39, v40, v41);
      }
    }

    v21 = objc_msgSend_objectAtIndexedSubscript_(a3, v34, 0, v35);
    v28 = objc_msgSend_length(v21, v42, v43, v44);
    v11 = 0;
    v18 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(a3, v8, 0, v10);
  if (objc_msgSend_length(v11, v12, v13, v14) == a5)
  {
    v17 = 1;
    v18 = objc_msgSend_objectAtIndexedSubscript_(a3, v15, 1, v16);
    v21 = objc_msgSend_objectAtIndexedSubscript_(a3, v19, 2, v20);
    v28 = objc_msgSend_length(v21, v22, v23, v24);
    if (v11)
    {
      v29 = objc_msgSend_bytes(v11, v25, v26, v27);
      if (a5)
      {
        v30 = 1;
        v31 = a5;
        do
        {
          v33 = *v29++;
          v32 = v33;
          if (v30 <= v33)
          {
            v30 = v32;
          }

          --v31;
        }

        while (v31);
        v17 = 0;
LABEL_15:
        v45 = sub_1AF1C6FF8(a5, a4, v28, 0);
        sub_1AF130CFC(v45, v30);
        if (a4 < 2)
        {
LABEL_55:
          v54 = sub_1AF1C8C0C(v45);
          CFRelease(v45);
          return v54;
        }

        v86 = 0;
        v87 = 0;
        v85 = 0;
        sub_1AF1C78C4(v45, &v87, &v86, &v85);
        if (v17)
        {
          if (a5)
          {
            v49 = 0;
            v50 = v87;
            v51 = a5;
            do
            {
              if (v49 >= v28)
              {
                v52 = v28 - 1;
              }

              else
              {
                v52 = v49;
              }

              if (v49 < v28)
              {
                ++v49;
              }

              *v50++ = v52;
              --v51;
            }

            while (v51);
            goto LABEL_34;
          }
        }

        else
        {
          v55 = objc_msgSend_bytes(v11, v46, v47, v48);
          if (a5)
          {
            LODWORD(v49) = 0;
            v56 = v87;
            v57 = a5;
            do
            {
              *v56++ = v49;
              v58 = *v55++;
              LODWORD(v49) = v49 + v58;
              --v57;
            }

            while (v57);
            goto LABEL_34;
          }
        }

        LODWORD(v49) = 0;
LABEL_34:
        v87[a5] = v49;
        v62 = objc_msgSend_bytes(v21, v46, v47, v48);
        if (v18)
        {
          v66 = objc_msgSend_length(v18, v59, v60, v61) / v28;
          if (v66 == 2)
          {
            v75 = objc_msgSend_bytes(v18, v63, v64, v65);
            if (v28 >= 1)
            {
              v77 = v85;
              v76 = v86;
              do
              {
                v78 = *v62++;
                *v76++ = v78;
                v79 = *v75++;
                *v77++ = v79 / 65535.0;
                --v28;
              }

              while (v28);
            }
          }

          else if (v66 == 1)
          {
            v67 = objc_msgSend_bytes(v18, v63, v64, v65);
            if (v28 >= 1)
            {
              v69 = v85;
              v68 = v86;
              do
              {
                v70 = *v62++;
                *v68++ = v70;
                v71 = *v67++;
                *v69++ = v71 / 255.0;
                --v28;
              }

              while (v28);
            }
          }

          else
          {
            v80 = sub_1AF0D5194();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF8BB8();
            }

            if (v28 >= 1)
            {
              v82 = v85;
              v81 = v86;
              do
              {
                v83 = *v62++;
                *v81++ = v83;
                *v82++ = 1.0;
                --v28;
              }

              while (v28);
            }
          }
        }

        else if (v28 >= 1)
        {
          v73 = v85;
          v72 = v86;
          do
          {
            v74 = *v62++;
            *v72++ = v74;
            *v73++ = 1.0;
            --v28;
          }

          while (v28);
        }

        sub_1AF1C760C(v45);
        goto LABEL_55;
      }

      v17 = 0;
    }

LABEL_14:
    LOBYTE(v30) = 1;
    goto LABEL_15;
  }

  v53 = sub_1AF0D5194();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF8B84();
  }

  return 0;
}

+ (VFXSkinner)skinnerWithBaseGeometry:(id)a3 bones:(id)a4 boneInverseBindTransforms:(id)a5 boneWeights:(id)a6 boneIndices:(id)a7
{
  if (!a4 || !objc_msgSend_count(a4, a2, a3, a4))
  {
    v38 = sub_1AF0D5194();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8C54();
    }

    return 0;
  }

  if (!a3)
  {
    v39 = sub_1AF0D5194();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8C20();
    }

    return 0;
  }

  v16 = objc_msgSend_count(a4, v13, v14, v15);
  if (v16 != objc_msgSend_count(a5, v17, v18, v19))
  {
    v40 = sub_1AF0D5194();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8BEC();
    }

    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SkinnerWithBones_boneWeights_boneIndices_baseMesh = objc_msgSend__createSkinnerWithBones_boneWeights_boneIndices_baseMesh_(a1, v20, a4, a6, a7, a3);
  }

  else
  {
    SkinnerWithBones_boneWeights_boneIndices_baseMesh = objc_msgSend__createSkinnerWithBones_boneWeights_boneIndices_baseMesh_(a1, v20, a4, a6, a7, 0);
  }

  if (!SkinnerWithBones_boneWeights_boneIndices_baseMesh)
  {
    return 0;
  }

  v22 = SkinnerWithBones_boneWeights_boneIndices_baseMesh;
  v23 = [a1 alloc];
  v26 = objc_msgSend_initWithSkinnerRef_(v23, v24, v22, v25);
  CFRelease(v22);
  objc_msgSend_setBones_(v26, v27, a4, v28);
  objc_msgSend_setBoneInverseBindTransforms_(v26, v29, a5, v30);
  objc_msgSend__setBaseGeometry_(v26, v31, a3, v32);
  v34 = sub_1AF32CD28(a4, v33);
  objc_msgSend__setSkeleton_(v26, v35, v34, v36);

  return v26;
}

- (__n128)baseGeometryBindTransform
{
  v5 = objc_msgSend_worldRef(a1, a2, a3, a4);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v7 = sub_1AF15B294(a1[1]);
  if (v7)
  {
    result = *sub_1AF1BA1FC(v7);
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = VFXMatrix4Identity;
    if (!v6)
    {
      return result;
    }
  }

  v9 = result;
  sub_1AF1CEA9C(v6);
  return v9;
}

- (uint64_t)setBaseGeometryBindTransform:(uint64_t)a3
{
  v9 = objc_msgSend_worldRef(a1, a2, a3, a4);
  v10 = v9;
  if (v9)
  {
    sub_1AF1CEA20(v9);
  }

  result = sub_1AF15B294(a1[1]);
  if (result)
  {
    result = sub_1AF1C7934(result, a5, a6, a7, a8);
  }

  if (v10)
  {

    return sub_1AF1CEA9C(v10);
  }

  return result;
}

- (VFXMeshSource)boneWeights
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  if (sub_1AF1C9420(self->_skinner))
  {
    v7 = 0;
    if (!v6)
    {
      return v7;
    }

    goto LABEL_31;
  }

  v38 = v6;
  v8 = sub_1AF15B294(self->_skinner);
  v9 = sub_1AF15B294(v8);
  v10 = sub_1AF1C7EB4(v8);
  v41 = 0;
  v42 = 0;
  sub_1AF1C78C4(v8, &v41, 0, &v42);
  v37 = 4 * v9 * v10;
  v12 = malloc_type_malloc(v37, 0x100004052888210uLL);
  v40 = v9;
  if (v9 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v41;
    v17 = v42;
    v18 = *v41;
    do
    {
      v19 = v18;
      v18 = v16[++v13];
      v20 = v14;
      v21 = v18 - v19;
      v22 = v21;
      if (v10 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v10;
      }

      if (v23 < 1)
      {
        v23 = 0;
        v25 = 0.0;
      }

      else
      {
        v14 += v23;
        v24 = &v12[4 * v20];
        v25 = 0.0;
        v26 = v23;
        do
        {
          v27 = *(v17 + 4 * v15);
          v25 = v25 + v27;
          ++v15;
          *v24++ = v27;
          --v26;
        }

        while (v26);
      }

      if (v10 > v23)
      {
        v39 = v14;
        v28 = v22;
        bzero(&v12[4 * v14], 4 * (v10 - v23));
        v22 = v28;
        v14 = v39 + v10 - v23;
      }

      if (v10 < v22 && v25 > 0.0 && v10 != 0)
      {
        if (v23 <= v10)
        {
          v30 = v10;
        }

        else
        {
          v30 = v23;
        }

        v31 = &v12[4 * v20 + 4 * v30];
        v32 = -v10;
        do
        {
          *&v31[4 * v32] = *&v31[4 * v32] / v25;
        }

        while (!__CFADD__(v32++, 1));
      }
    }

    while (v13 != v40);
  }

  v34 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v11, v12, v37, 1);
  v7 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v35, v34, @"kGeometrySourceSemanticBoneWeights", v40, 1, v10, 4, 0, 0);
  v6 = v38;
  if (v38)
  {
LABEL_31:
    sub_1AF1CEA9C(v6);
  }

  return v7;
}

- (VFXMeshSource)boneIndices
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  if (sub_1AF1C9420(self->_skinner))
  {
    v7 = 0;
    if (!v6)
    {
      return v7;
    }

    goto LABEL_28;
  }

  v43 = v6;
  v8 = sub_1AF15B294(self->_skinner);
  v9 = sub_1AF1C7EB4(v8);
  v10 = sub_1AF15B294(v8);
  v44 = 0;
  v45 = 0;
  v42 = v8;
  sub_1AF1C78C4(v8, &v44, &v45, 0);
  v11 = malloc_type_malloc(2 * v9 * v10, 0x1000040BDFB0063uLL);
  if (v10 < 1)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v44;
    v16 = v45;
    v17 = *v44;
    do
    {
      v18 = v17;
      v17 = v15[++v12];
      v19 = v17 - v18;
      if (v9 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v9;
      }

      if (v20 < 1)
      {
        v20 = 0;
      }

      else
      {
        v21 = &v11[2 * v13];
        v22 = v20;
        do
        {
          v23 = *(v16 + 2 * v14++);
          *v21 = v23;
          v21 += 2;
          --v22;
        }

        while (v22);
        v13 += v20;
      }

      if (v9 > v20)
      {
        bzero(&v11[2 * v13], 2 * (v9 - v20));
        v13 = v13 + v9 - v20;
      }
    }

    while (v12 != v10);
  }

  if (v14 > sub_1AF1C78EC(v42))
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8C88(v25, v24, v26, v27, v28, v29, v30, v31);
    }
  }

  if (v13 != v10 * v9)
  {
    v32 = sub_1AF0D5194();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8D00(v32, v24, v33, v34, v35, v36, v37, v38);
    }
  }

  v39 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v24, v11, 2 * v10 * v9, 1);
  v7 = objc_msgSend__meshSourceWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(VFXMeshSource, v40, v39, @"kGeometrySourceSemanticBoneIndices", v10, 13, v9, 0, 0);
  v6 = v43;
  if (v43)
  {
LABEL_28:
    sub_1AF1CEA9C(v6);
  }

  return v7;
}

- (NSArray)boneInverseBindTransforms
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v7 = sub_1AF15B294(self->_skinner);
  v8 = v7;
  if (v7)
  {
    LODWORD(v9) = sub_1AF1C7940(v7);
    v10 = sub_1AF15B364(v8);
    v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v11, v9, v12);
    if (v9 >= 1)
    {
      v9 = v9;
      v16 = (v10 + 32);
      do
      {
        v17 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v13, v14, v15, *(v16 - 4), *(v16 - 2), *v16, v16[2]);
        objc_msgSend_addObject_(v8, v18, v17, v19);
        v16 += 8;
        --v9;
      }

      while (v9);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }

  return v8;
}

- (void)setBoneInverseBindTransforms:(id)a3
{
  v6 = objc_msgSend_worldRef(self, a2, a3, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
    v8 = sub_1AF15B294(self->_skinner);
    if (!v8)
    {
LABEL_10:

      sub_1AF1CEA9C(v7);
      return;
    }
  }

  else
  {
    v8 = sub_1AF15B294(self->_skinner);
    if (!v8)
    {
      return;
    }
  }

  v9 = v8;
  v10 = sub_1AF1C7940(v8);
  if (objc_msgSend_count(a3, v11, v12, v13) == v10)
  {
    v14 = sub_1AF15B364(v9);
    if (v10)
    {
      v17 = 0;
      v18 = (v14 + 32);
      do
      {
        v19 = objc_msgSend_objectAtIndex_(a3, v15, v17, v16);
        objc_msgSend_VFXMatrix4Value(v19, v20, v21, v22);
        *(v18 - 2) = v23;
        *(v18 - 1) = v24;
        *v18 = v25;
        v18[1] = v26;
        v18 += 4;
        ++v17;
      }

      while (v10 != v17);
    }

    sub_1AF1C74EC(v9);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = sub_1AF0D5194();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8D78(v10, a3, v27, v28);
    }
  }
}

- (NSArray)bones
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v7 = sub_1AF1C7594(self->_skinner);
  v11 = objc_msgSend_copy(v7, v8, v9, v10);
  v15 = objc_msgSend_count(v11, v12, v13, v14);
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v16, v15, v17);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v22 = objc_msgSend_objectAtIndex_(v11, v18, i, v19);
      v25 = objc_msgSend_nodeWithNodeRef_(VFXNode, v23, v22, v24);
      objc_msgSend_addObject_(v20, v26, v25, v27);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }

  return v20;
}

- (void)setBones:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  v7 = objc_msgSend_count(a3, a2, a3, v3);
  v10 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v11, &v27, v31, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(a3);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = objc_msgSend_nodeRef(v19, v13, v14, v15);
        objc_msgSend_addObject_(v10, v21, v20, v22);
        objc_msgSend_setIsJoint_(v19, v23, 1, v24);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v13, &v27, v31, 16);
    }

    while (v16);
  }

  v25 = objc_msgSend_worldRef(self, v13, v14, v15);
  if (v25)
  {
    v26 = v25;
    sub_1AF1CEA20(v25);
    sub_1AF1C8DC8(self->_skinner, v10);
    sub_1AF1CEA9C(v26);
  }

  else
  {
    sub_1AF1C8DC8(self->_skinner, v10);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_skeleton(self, a2, a3, v3);
  objc_msgSend_encodeObject_forKey_(a3, v7, v6, @"skeleton");
  v11 = objc_msgSend_baseGeometry(self, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(a3, v12, v11, @"baseGeometry");
  objc_msgSend_baseGeometryBindTransform(self, v13, v14, v15);
  sub_1AF371B50(a3, @"baseGeometryBindTransform", v16, v17, v18, v19);
  v23 = objc_msgSend_bones(self, v20, v21, v22);
  objc_msgSend_encodeObject_forKey_(a3, v24, v23, @"bones");
  if (objc_msgSend_count(v23, v25, v26, v27) >= 2)
  {
    if (self->_bonesAndIndicesCompression)
    {
      v31 = sub_1AF15B294(self->_skinner);
      v32 = sub_1AF15B294(v31);
      v33 = sub_1AF1C78EC(v31);
      v34 = v33;
      v35 = sub_1AF1C7EB4(v31);
      v99 = 0;
      v100 = 0;
      v98 = 0;
      sub_1AF1C78C4(v31, &v99, &v98, &v100);
      v38 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v36, v33, v37);
      v42 = objc_msgSend_bytes(v38, v39, v40, v41);
      if (v33 >= 1)
      {
        v45 = v42;
        v46 = 0;
        do
        {
          v47 = v98;
          if (*(v98 + 2 * v46) >= 0x100u)
          {
            v48 = sub_1AF0D5194();
            v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
            v47 = v98;
            if (v49)
            {
              v50 = *(v98 + 2 * v46);
              *buf = 67109120;
              v102 = v50;
              _os_log_error_impl(&dword_1AF0CE000, v48, OS_LOG_TYPE_ERROR, "Error: Bones index too large for compressed representation : %d", buf, 8u);
              v47 = v98;
            }
          }

          *(v45 + v46) = *(v47 + 2 * v46);
          ++v46;
        }

        while (v34 != v46);
      }

      if (v35 <= 1)
      {
        v76 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v43, v38, v44);
      }

      else
      {
        v58 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v43, v32, v44);
        v62 = objc_msgSend_bytes(v58, v59, v60, v61);
        if (v32 >= 1)
        {
          for (i = 0; i != v32; ++i)
          {
            *(v62 + i) = *(v99 + 4 * i + 4) - *(v99 + 4 * i);
          }
        }

        v66 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v63, 2 * v34, v64);
        v70 = objc_msgSend_bytes(v66, v67, v68, v69);
        if (v34 >= 1)
        {
          v73 = v100;
          do
          {
            v74 = *v73++;
            v75 = rintf(v74 * 65535.0);
            if (v75 >= 0xFFFF)
            {
              v75 = 0xFFFF;
            }

            *v70++ = v75 & ~(v75 >> 31);
            --v34;
          }

          while (v34);
        }

        v76 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v71, v58, v72, v66, v38, 0);
      }

      objc_msgSend_encodeObject_forKey_(a3, v77, v76, @"compressedSkinData");
    }

    else
    {
      v51 = objc_msgSend_boneWeights(self, v28, v29, v30);
      objc_msgSend_encodeObject_forKey_(a3, v52, v51, @"boneWeights");
      v56 = objc_msgSend_boneIndices(self, v53, v54, v55);
      objc_msgSend_encodeObject_forKey_(a3, v57, v56, @"boneIndices");
    }
  }

  v78 = objc_msgSend_boneInverseBindTransforms(self, v28, v29, v30);
  v82 = objc_msgSend_count(v78, v79, v80, v81);
  if (v82)
  {
    v85 = v82;
    for (j = 0; j != v85; ++j)
    {
      v87 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v83, @"baseGeometryBindTransform-%d", v84, j);
      v90 = objc_msgSend_objectAtIndex_(v78, v88, j, v89);
      objc_msgSend_VFXMatrix4Value(v90, v91, v92, v93);
      sub_1AF371B50(a3, v87, v94, v95, v96, v97);
    }
  }
}

- (VFXSkinner)initWithCoder:(id)a3
{
  v100.receiver = self;
  v100.super_class = VFXSkinner;
  v7 = [(VFXSkinner *)&v100 init];
  if (v7)
  {
    v98 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1, v9);
    v10 = objc_opt_class();
    v97 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v11, v10, @"skeleton");
    v12 = sub_1AF2C11F4();
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v13, v12, @"baseGeometry");
    v15 = v14;
    if (v14)
    {
      v99 = 0;
      v16 = v14;
    }

    else
    {
      v17 = objc_opt_class();
      v19 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"baseMesh");
      if (v19)
      {
        v16 = v19;
        v99 = 0;
      }

      else
      {
        v20 = objc_opt_class();
        v22 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v21, v20, @"baseModel");
        v16 = objc_msgSend_mesh(v22, v23, v24, v25);
        v99 = 1;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v16;
      v29 = objc_msgSend_meshSourcesForSemantic_(v16, v26, @"kGeometrySourceSemanticPosition", v27);
    }

    else
    {
      v28 = 0;
      v29 = objc_msgSend_meshSourcesForSemantic_(0, v26, @"kGeometrySourceSemanticPosition", v27);
    }

    Object = objc_msgSend_firstObject(v29, v30, v31, v32);
    v37 = objc_msgSend_vectorCount(Object, v34, v35, v36);
    v38 = objc_opt_class();
    v40 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v39, v38, @"bones");
    v41 = objc_opt_class();
    v43 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(a3, v42, v41, @"compressedSkinData");
    if (v43)
    {
      v44 = v43;
      v7->_bonesAndIndicesCompression = 1;
      v45 = objc_opt_class();
      v49 = objc_msgSend_count(v40, v46, v47, v48);
      SkinnerWithCompressedData_bonesCount_vertexCount = objc_msgSend__createSkinnerWithCompressedData_bonesCount_vertexCount_(v45, v50, v44, v49, v37);
    }

    else
    {
      v55 = objc_opt_class();
      v57 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v56, v55, @"boneWeights");
      v58 = objc_opt_class();
      v60 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v59, v58, @"boneIndices");
      v61 = objc_opt_class();
      SkinnerWithCompressedData_bonesCount_vertexCount = objc_msgSend__createSkinnerWithBones_boneWeights_boneIndices_baseMesh_(v61, v62, v40, v57, v60, v28);
    }

    v7->_skinner = SkinnerWithCompressedData_bonesCount_vertexCount;
    if (SkinnerWithCompressedData_bonesCount_vertexCount)
    {
      v63 = objc_msgSend_array(MEMORY[0x1E695DF70], v52, v53, v54);
      v67 = objc_msgSend_count(v40, v64, v65, v66);
      if (v67)
      {
        v70 = v67;
        v71 = 0;
        v72 = @"baseGeometryBindTransform-%d";
        if (!v15)
        {
          v72 = @"baseMeshBindTransform-%d";
        }

        if (!v99)
        {
          v73 = v72;
          goto LABEL_20;
        }

        v73 = @"baseModelBindTransform-%d";
        for (i = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68, @"baseModelBindTransform-%d", v69, 0); ; i = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68, v73, v69, v71))
        {
          *&v75 = sub_1AF371C4C(a3, i).n128_u64[0];
          v79 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v76, v77, v78, v75);
          objc_msgSend_addObject_(v63, v80, v79, v81);
          if (v70 == ++v71)
          {
            break;
          }

LABEL_20:
          ;
        }
      }

      objc_msgSend__setBaseGeometry_(v7, v68, v16, v69);
      objc_msgSend_setBones_(v7, v82, v40, v83);
      v84 = @"baseGeometryBindTransform";
      if (!v15)
      {
        v84 = @"baseMeshBindTransform";
      }

      if (v99)
      {
        v85 = @"baseModelBindTransform";
      }

      else
      {
        v85 = v84;
      }

      *&v86 = sub_1AF371C4C(a3, v85).n128_u64[0];
      objc_msgSend_setBaseGeometryBindTransform_(v7, v87, v88, v89, v86);
      objc_msgSend_setBoneInverseBindTransforms_(v7, v90, v63, v91);
      objc_msgSend_setSkeleton_(v7, v92, v97, v93);
      objc_msgSend_setImmediateMode_(VFXTransaction, v94, v98, v95);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v6 = objc_msgSend_skeleton(self, a2, a3, a4);
    if (v6)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1AF32EE00;
      v36[3] = &unk_1E7A7C0C8;
      v36[4] = self;
      (*(a4 + 2))(a4, v6, 1, v36);
    }

    else
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3052000000;
      v33 = sub_1AF32EE0C;
      v34 = sub_1AF32EE1C;
      v35 = 0;
      v10 = objc_msgSend_bones(self, v7, v8, v9);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v37, 16);
      if (v15)
      {
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            if (objc_msgSend_name(v18, v12, v13, v14))
            {
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = sub_1AF32EE28;
              v25[3] = &unk_1E7A7F188;
              v25[4] = v10;
              v25[5] = &v30;
              (*(a4 + 2))(a4, v18, 1, v25);
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v26, v37, 16);
        }

        while (v15);
      }

      v19 = objc_msgSend_count(v31[5], v12, v13, v14);
      if (v19 == objc_msgSend_count(v10, v20, v21, v22))
      {
        objc_msgSend_setBones_(self, v23, v31[5], v24);
      }

      _Block_object_dispose(&v30, 8);
    }
  }
}

- (void)addWorldReference:(id)a3
{
  world = self->_world;
  if (world == a3)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, a3, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)a3
{
  p_world = &self->_world;
  if (!a3 || self->_world == a3)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v8);
      }
    }
  }
}

- (void)setWorld:(id)a3
{
  world = self->_world;
  if (world != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF32F098;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = a3;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF32F0F8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

@end