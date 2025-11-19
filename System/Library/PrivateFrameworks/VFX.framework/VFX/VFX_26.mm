uint64_t sub_1AF2F1B44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_semantic(a2, a2, a3, a4);

  return objc_msgSend_isEqualToString_(v4, v5, @"kGeometrySourceSemanticPosition", v6);
}

id sub_1AF2F1B7C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_newSubmeshWithVFXModelElement_bufferAllocator_(a1, a2, a3, 0);

  return v3;
}

id sub_1AF2F1BA8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_newSubmeshWithVFXModelElement_bufferAllocator_(a1, a2, a3, a4);

  return v4;
}

id sub_1AF2F1BD0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_newSubmeshWithVFXModelElement_bufferAllocator_positionSourceChannel_(a1, a2, a3, a4);

  return v4;
}

id sub_1AF2F1BF8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_newSubmeshWithUniquedIndexData_andVFXModelElement_bufferAllocator_(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1AF2F1C20(objc_class *a1, const char *a2, void *a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unint64_t a12, uint64_t a13)
{
  v20 = a12;
  v21 = objc_msgSend_bytes(a3, a2, a3, a4);
  if (a6 >= 2 && a5)
  {
    v25 = v21;
    v26 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v22, a4 / a6, v24);
    v30 = objc_msgSend_mutableBytes(v26, v27, v28, v29);
    if (a8 * a6 <= a4)
    {
      v32 = 0;
      do
      {
        if (a8 > 3)
        {
          if (a8 == 4)
          {
            *(v30 + 4 * v32) = *(v25 + 4 * a7);
          }

          else if (a8 == 8)
          {
            *(v30 + 8 * v32) = *(v25 + 8 * a7);
          }
        }

        else if (a8 == 1)
        {
          *(v30 + v32) = *(v25 + a7);
        }

        else if (a8 == 2)
        {
          *(v30 + 2 * v32) = *(v25 + 2 * a7);
        }

        ++v32;
        a7 += a6;
      }

      while (v32 < a4 / (a8 * a6));
    }

    v33 = objc_msgSend_newBufferWithData_type_(a11, v31, v26, 2);
  }

  else
  {
    v34 = objc_msgSend_length(a3, v22, v23, v24);
    v36 = objc_msgSend_subdataWithRange_(a3, v35, v34 / a6 * a7, v34 / a6);
    v33 = objc_msgSend_newBufferWithData_type_(a11, v37, v36, 2);
  }

  v38 = v33;
  v42 = [a1 alloc];
  if (!a12)
  {
    v20 = objc_msgSend_length(v38, v39, v40, v41) / a8;
  }

  v43 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v42, v39, &stru_1F2575650, v38, v20, a9, a10, 0, a13);

  return v43;
}

uint64_t sub_1AF2F1DD4(objc_class *a1, const char *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = objc_msgSend_bytesPerIndex(a4, a2, a3, a4);
  v14 = objc_msgSend_primitiveCount(a4, v10, v11, v12);
  if (qword_1EB658890 != -1)
  {
    sub_1AFDF6920();
  }

  if (a5)
  {
    v15 = objc_msgSend_newBufferWithData_type_(a5, v13, a3, 2);
  }

  else
  {
    v15 = objc_msgSend_newBufferWithData_type_(qword_1EB658888, v13, a3, 2);
  }

  v19 = v15;
  v20 = objc_msgSend_bytesPerIndex(a4, v16, v17, v18);
  v24 = 32;
  if (v20 == 2)
  {
    v24 = 16;
  }

  if (v20 == 1)
  {
    v25 = 8;
  }

  else
  {
    v25 = v24;
  }

  if (objc_msgSend_primitiveType(a4, v21, v22, v23) == 1)
  {
    v29 = objc_msgSend_primitiveCount(a4, v26, v27, v28);
    v30 = [a1 alloc];
    v32 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v30, v31, &stru_1F2575650, v19, v29 + 2, v25, 3, 0, 0);
LABEL_32:
    v64 = v32;
    goto LABEL_33;
  }

  if (objc_msgSend_primitiveType(a4, v26, v27, v28) != 4)
  {
    v65 = objc_msgSend_primitiveType(a4, v33, v34, v35);
    if (v65 > 3)
    {
      v70 = 0;
      v69 = 1;
    }

    else
    {
      v69 = qword_1AFE47A10[v65];
      v70 = qword_1AFE47A30[v65];
    }

    v71 = objc_msgSend_primitiveCount(a4, v66, v67, v68) * v69;
    v72 = [a1 alloc];
    v32 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v72, v73, &stru_1F2575650, v19, v71, v25, v70, 0, 0);
    goto LABEL_32;
  }

  v36 = objc_msgSend_data(a4, v33, v34, v35);
  v40 = objc_msgSend_bytes(v36, v37, v38, v39);
  v43 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v41, 8 * v14, v42);
  v47 = objc_msgSend_mutableBytes(v43, v44, v45, v46);
  if (v14 >= 1)
  {
    for (i = 0; v14 != i; ++i)
    {
      if (v9 > 3)
      {
        if (v9 == 4)
        {
          LODWORD(v49) = *(v40 + 4 * i);
          goto LABEL_25;
        }

        if (v9 == 8)
        {
          v49 = *(v40 + 8 * i);
          goto LABEL_25;
        }
      }

      else
      {
        if (v9 == 1)
        {
          LOBYTE(v49) = *(v40 + i);
          goto LABEL_25;
        }

        if (v9 == 2)
        {
          LOWORD(v49) = *(v40 + 2 * i);
LABEL_25:
          *(v47 + i) = v49;
        }
      }
    }
  }

  v50 = objc_alloc_init(MEMORY[0x1E6974BD0]);
  v51 = objc_alloc(MEMORY[0x1E6974B88]);
  v53 = objc_msgSend_initWithType_data_(v51, v52, 2, v43);
  objc_msgSend_setFaceCount_(v50, v54, v14, v55);
  objc_msgSend_setFaceTopology_(v50, v56, v53, v57);
  v58 = [a1 alloc];
  v62 = objc_msgSend_length(v19, v59, v60, v61);
  v64 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v58, v63, &stru_1F2575650, v19, v62 / v9, v25, 5, 0, v50);

  v19 = v53;
LABEL_33:

  return v64;
}

uint64_t sub_1AF2F207C()
{
  result = objc_opt_new();
  qword_1EB658888 = result;
  return result;
}

uint64_t sub_1AF2F20A4(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(a3, a2, a3, a4);
  v102 = objc_msgSend_indicesChannelCount(a3, v9, v10, v11);
  v15 = objc_msgSend_bytesPerIndex(a3, v12, v13, v14);
  v19 = objc_msgSend_primitiveCount(a3, v16, v17, v18);
  v23 = objc_msgSend_data(a3, v20, v21, v22);
  v30 = objc_msgSend_length(v23, v24, v25, v26);
  if ((atomic_load_explicit(&qword_1EB6588A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB6588A0))
  {
    qword_1EB658898 = objc_opt_new();
    __cxa_guard_release(&qword_1EB6588A0);
  }

  if (a4)
  {
    v31 = a4;
  }

  else
  {
    v31 = qword_1EB658898;
  }

  v32 = objc_msgSend_bytesPerIndex(a3, v27, v28, v29);
  v36 = 32;
  if (v32 == 2)
  {
    v36 = 16;
  }

  if (v32 == 1)
  {
    v37 = 8;
  }

  else
  {
    v37 = v36;
  }

  if (objc_msgSend_primitiveType(a3, v33, v34, v35) == 1)
  {
    v41 = objc_msgSend_primitiveCount(a3, v38, v39, v40) + 2;
    v45 = objc_msgSend_data(a3, v42, v43, v44);
    return objc_msgSend_newSubmeshWithGeometryData_indexBufferLength_interleaved_channelCount_channelIdx_bytesPerIndex_indexType_geometryType_allocator_indexCount_topology_(a1, v46, v45, v30, hasInterleavedIndicesChannels, v102, a5, v15, v37, 3, v31, v41, 0);
  }

  if (objc_msgSend_primitiveType(a3, v38, v39, v40) == 4)
  {
    v101 = a5;
    v51 = objc_msgSend_data(a3, v48, v49, v50);
    v55 = objc_msgSend_bytes(v51, v52, v53, v54);
    v58 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v56, v19, v57);
    v62 = objc_msgSend_mutableBytes(v58, v59, v60, v61);
    if (v19 >= 1)
    {
      for (i = 0; v19 != i; ++i)
      {
        if (v15 > 3)
        {
          if (v15 == 4)
          {
            LODWORD(v67) = *(v55 + 4 * i);
            goto LABEL_24;
          }

          if (v15 == 8)
          {
            v67 = *(v55 + 8 * i);
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 == 1)
          {
            LOBYTE(v67) = *(v55 + i);
            goto LABEL_24;
          }

          if (v15 == 2)
          {
            LOWORD(v67) = *(v55 + 2 * i);
LABEL_24:
            *(v62 + i) = v67;
          }
        }
      }
    }

    v68 = objc_msgSend_data(a3, v63, v64, v65);
    v72 = objc_msgSend_data(a3, v69, v70, v71);
    v76 = objc_msgSend_length(v72, v73, v74, v75);
    v78 = objc_msgSend_subdataWithRange_(v68, v77, v19 * v15, v76 - v19 * v15);
    v79 = objc_alloc_init(MEMORY[0x1E6974BD0]);
    v80 = objc_alloc(MEMORY[0x1E6974B88]);
    v82 = objc_msgSend_initWithType_data_(v80, v81, 2, v58);
    objc_msgSend_setFaceCount_(v79, v83, v19, v84);
    objc_msgSend_setFaceTopology_(v79, v85, v82, v86);
    v88 = objc_msgSend_newSubmeshWithGeometryData_indexBufferLength_interleaved_channelCount_channelIdx_bytesPerIndex_indexType_geometryType_allocator_indexCount_topology_(a1, v87, v78, v30, hasInterleavedIndicesChannels, v102, v101, v15, v37, 5, v31, 0, v79);

    return v88;
  }

  else
  {
    v89 = objc_msgSend_primitiveType(a3, v48, v49, v50);
    if (v89 > 3)
    {
      v94 = 0;
      v93 = 1;
    }

    else
    {
      v93 = qword_1AFE47A10[v89];
      v94 = qword_1AFE47A30[v89];
    }

    v95 = objc_msgSend_primitiveCount(a3, v90, v91, v92) * v93;
    v99 = objc_msgSend_data(a3, v96, v97, v98);
    return objc_msgSend_newSubmeshWithGeometryData_indexBufferLength_interleaved_channelCount_channelIdx_bytesPerIndex_indexType_geometryType_allocator_indexCount_topology_(a1, v100, v99, v30, hasInterleavedIndicesChannels, v102, a5, v15, v37, v94, v31, v95, 0);
  }
}

id sub_1AF2F23C0(objc_class *a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_new();
  v6 = [a1 alloc];
  v10 = objc_msgSend_name(a3, v7, v8, v9);
  v12 = objc_msgSend_initWithName_scatteringFunction_(v6, v11, v10, v5);

  v16 = objc_msgSend_name(a3, v13, v14, v15);
  objc_msgSend_setName_(v12, v17, v16, v18);
  objc_setAssociatedObject(v12, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_setAssociatedObject(a3, @"VFXMDLAssociatedObject", v12, 0);
  v22 = objc_msgSend_emission(a3, v19, v20, v21);
  sub_1AF2F25D8(v12, @"emission", v22, 13);
  v26 = objc_msgSend_diffuse(a3, v23, v24, v25);
  sub_1AF2F25D8(v12, @"baseColor", v26, 0);
  v30 = objc_msgSend_specular(a3, v27, v28, v29);
  sub_1AF2F25D8(v12, @"specular", v30, 3);
  v34 = objc_msgSend_reflective(a3, v31, v32, v33);
  sub_1AF2F25D8(v12, @"reflective", v34, 32769);
  v38 = objc_msgSend_transparent(a3, v35, v36, v37);
  sub_1AF2F25D8(v12, @"opacity", v38, 15);
  v42 = objc_msgSend_metalness(a3, v39, v40, v41);
  sub_1AF2F25D8(v12, @"metallic", v42, 2);
  v46 = objc_msgSend_roughness(a3, v43, v44, v45);
  sub_1AF2F25D8(v12, @"roughness", v46, 6);
  v50 = objc_msgSend_ambientOcclusion(a3, v47, v48, v49);
  sub_1AF2F25D8(v12, @"ambientOcclusion", v50, 22);
  v54 = objc_msgSend_displacement(a3, v51, v52, v53);
  sub_1AF2F25D8(v12, @"displacement", v54, 20);
  v58 = objc_msgSend_normal(a3, v55, v56, v57);
  sub_1AF2F25D8(v12, @"normal", v58, 19);
  if (objc_msgSend_isDoubleSided(a3, v59, v60, v61))
  {
    objc_msgSend_setMaterialFace_(v12, v62, 2, v63);
  }

  return v12;
}

void sub_1AF2F25D8(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v10 = objc_msgSend_propertyNamed_(a1, a2, a2, a4);
  v117 = v10;
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x1E6974B70]);
    v117 = objc_msgSend_initWithName_semantic_(v11, v12, a2, a4);
  }

  objc_msgSend_contents(a3, v7, v8, v9);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = objc_msgSend_contents(a3, v14, v15, v16);
  if (isKindOfClass)
  {
    objc_msgSend_vfx_colorComponentsForModelIO(v17, v18, v19, v20);
    v115 = v23;
    v23.i32[0] = v23.i32[3];
    if (v23.f32[3] == 1.0)
    {
      objc_msgSend_setType_(v117, v21, 7, v22, *v23.i64);
      objc_msgSend_intensity(a3, v24, v25, v26);
      objc_msgSend_setFloat3Value_(v117, v28, v29, v30, *vmulq_n_f32(v115, v27).i64);
    }

    else
    {
      objc_msgSend_setType_(v117, v21, 8, v22, *v23.i64);
      objc_msgSend_intensity(a3, v72, v73, v74);
      objc_msgSend_setFloat4Value_(v117, v76, v77, v78, *vmulq_n_f32(v115, v75).i64);
    }
  }

  else
  {
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();
    v35 = objc_msgSend_contents(a3, v32, v33, v34);
    v38 = v35;
    if (v31)
    {
      if (v35)
      {
        objc_msgSend_setType_(v117, v36, 5, v37);
        objc_msgSend_intensity(a3, v39, v40, v41);
        v43 = v42;
        objc_msgSend_floatValue(v38, v44, v45, v46);
        *&v48 = v43 * v47;
        objc_msgSend_setFloatValue_(v117, v49, v50, v51, v48);
      }
    }

    else
    {
      objc_opt_class();
      v52 = objc_opt_isKindOfClass();
      v56 = objc_msgSend_contents(a3, v53, v54, v55);
      if (v52)
      {
        v60 = objc_msgSend_pathExtension(v56, v57, v58, v59);
        if (!objc_msgSend_isEqualToString_(v60, v61, @"usdz", v62))
        {
          objc_msgSend_setType_(v117, v63, 2, v65);
          v69 = objc_msgSend_contents(a3, v66, v67, v68);
          objc_msgSend_setURLValue_(v117, v70, v69, v71);
          goto LABEL_18;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setType_(v117, v63, 1, v65);
          v82 = objc_msgSend_contents(a3, v79, v80, v81);
          objc_msgSend_setStringValue_(v117, v83, v82, v84);
          goto LABEL_18;
        }
      }

      CFXImageRef = objc_msgSend_getCFXImageRef(a3, v63, v64, v65);
      if (CFXImageRef)
      {
        v86 = sub_1AF2ECED0(CFXImageRef, 0);
        objc_msgSend_contentsTransform(a3, v87, v88, v89);
        v118[0] = v90;
        v118[1] = v91;
        v118[2] = v92;
        v118[3] = v93;
        if (v86)
        {
          v94 = sub_1AF2F8B9C(v118);
          v114 = v95;
          v116 = v94;
          v112 = v97;
          v113 = v96;
          v98 = objc_alloc(MEMORY[0x1E6974BE8]);
          v102 = objc_msgSend_initWithMatrix_(v98, v99, v100, v101, v116, v114, v113, v112);
          v103 = objc_alloc_init(MEMORY[0x1E6974BE0]);
          objc_msgSend_setTransform_(v103, v104, v102, v105);
          objc_msgSend_setTexture_(v103, v106, v86, v107);
          objc_msgSend_setType_(v117, v108, 3, v109);
          objc_msgSend_setTextureSamplerValue_(v117, v110, v103, v111);
        }
      }
    }
  }

LABEL_18:
  if (!v10 && v117)
  {
  }
}

id sub_1AF2F28D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_alloc_init(MEMORY[0x1E6974BA8]);
  objc_setAssociatedObject(v4, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_msgSend_setColorSpace_(v4, v5, *MEMORY[0x1E695F1C0], v6);
  objc_msgSend_color(a3, v7, v8, v9);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = objc_msgSend_color(a3, v11, v12, v13);
  v17 = v14;
  if (isKindOfClass)
  {
    v17 = objc_msgSend_CGColor(v14, v15, v14, v16);
  }

  objc_msgSend_setColor_(v4, v15, v17, v16);
  objc_msgSend_setAttenuationStartDistance_(v4, v18, v19, v20, 0.0);
  objc_msgSend_attenuationDistance(a3, v21, v22, v23);
  objc_msgSend_setAttenuationEndDistance_(v4, v24, v25, v26);
  LODWORD(v27) = 2.0;
  objc_msgSend_setAttenuationFalloffExponent_(v4, v28, v29, v30, v27);
  objc_msgSend_spotInnerAngle(a3, v31, v32, v33);
  objc_msgSend_setInnerConeAngle_(v4, v34, v35, v36);
  objc_msgSend_spotOuterAngle(a3, v37, v38, v39);
  objc_msgSend_setOuterConeAngle_(v4, v40, v41, v42);
  if (objc_msgSend_type(a3, v43, v44, v45))
  {
    if (objc_msgSend_type(a3, v46, v47, v48) == 3)
    {
      objc_msgSend_setLightType_(v4, v49, 3, v51);
    }

    else if (objc_msgSend_type(a3, v49, v50, v51) == 2)
    {
      objc_msgSend_setLightType_(v4, v52, 2, v54);
    }

    else if (objc_msgSend_type(a3, v52, v53, v54) == 1)
    {
      objc_msgSend_setLightType_(v4, v55, 4, v56);
    }
  }

  else
  {
    objc_msgSend_setLightType_(v4, v46, 1, v48);
  }

  return v4;
}

id sub_1AF2F2A38(objc_class *a1, uint64_t a2, void *a3)
{
  v4 = objc_alloc_init(a1);
  objc_setAssociatedObject(v4, @"VFXMDLAssociatedObject", a3, 0x301);
  objc_msgSend_focusDistance(a3, v5, v6, v7);
  objc_msgSend_setFocusDistance_(v4, v8, v9, v10);
  objc_msgSend_sensorHeight(a3, v11, v12, v13);
  objc_msgSend_setSensorVerticalAperture_(v4, v14, v15, v16);
  objc_msgSend_fieldOfView(a3, v17, v18, v19);
  objc_msgSend_setFieldOfView_(v4, v20, v21, v22);
  objc_msgSend_zNear(a3, v23, v24, v25);
  objc_msgSend_setNearVisibilityDistance_(v4, v26, v27, v28);
  objc_msgSend_zFar(a3, v29, v30, v31);
  objc_msgSend_setFarVisibilityDistance_(v4, v32, v33, v34);
  v38 = objc_msgSend_depthOfField(a3, v35, v36, v37);
  objc_msgSend_fStop(v38, v39, v40, v41);
  objc_msgSend_setFStop_(v4, v42, v43, v44);
  v48 = objc_msgSend_usesOrthographicProjection(a3, v45, v46, v47);
  objc_msgSend_setProjection_(v4, v49, v48, v50);

  return v4;
}

uint64_t sub_1AF2F36F8(void *a1, float a2)
{
  v37 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = objc_msgSend_animations(a1, v4, v5, v6);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v32, v36, 16);
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        v12 = 0;
        do
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v7);
          }

          sub_1AF2F36F8(*(*(&v32 + 1) + 8 * v12++), a2);
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, &v32, v36, 16);
      }

      while (v10);
    }
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v18 = objc_msgSend_keyPath(a1, v15, v16, v17);
    result = objc_msgSend_isEqualToString_(v18, v19, @"position", v20);
    if (result)
    {
      v24 = objc_msgSend_values(a1, v21, v22, v23);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1AF2F8D98;
      v30[3] = &unk_1E7A7EB38;
      v31 = a2;
      v27 = objc_msgSend_VFX_compactMapObjectsUsingBlock_(v24, v25, v30, v26);
      return objc_msgSend_setValues_(a1, v28, v27, v29);
    }
  }

  return result;
}

void *sub_1AF2F38A8(void *a1, void *a2, uint64_t a3)
{
  v84 = a3;
  v85 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v100 = a2;
  v4 = objc_opt_new();
  v8 = objc_msgSend_jointPaths(a2, v5, v6, v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);
  v13 = v12;
  v14 = v12;
  *&v16 = MEMORY[0x1EEE9AC00](v12, v15).n128_u64[0];
  v20 = objc_msgSend_jointRestTransforms(a2, v17, v18, v19, v16);
  v86 = &v82 - 8 * v14;
  if (objc_msgSend_getFloat4x4Array_maxCount_(v20, v21, v86, v14) < v13)
  {
    v25 = MEMORY[0x1E69E9B18];
    v26 = v86;
    do
    {
      v27 = v25[1];
      *v26 = *v25;
      *(v26 + 1) = v27;
      v28 = v25[3];
      *(v26 + 2) = v25[2];
      *(v26 + 3) = v28;
      v26 += 8;
      --v14;
    }

    while (v14);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v83 = a2;
  v87 = objc_msgSend_jointPaths(a2, v22, v23, v24);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v29, &v96, v103, 16);
  if (v30)
  {
    v34 = v30;
    v35 = 0;
    v36 = *v97;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v97 != v36)
        {
          objc_enumerationMutation(v87);
        }

        v38 = *(*(&v96 + 1) + 8 * i);
        v39 = objc_msgSend_rangeOfString_options_(v38, v31, @"/", 4);
        v41 = v38;
        if (v39 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = objc_msgSend_substringFromIndex_(v38, v31, v39 + 1, v40);
        }

        if (v41)
        {
          v42 = objc_opt_new();
          objc_msgSend_setName_(v42, v43, v41, v44);
          if (v42)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v42, v38);
            objc_msgSend_setTransform_(v42, v45, v46, v47, *&v86[8 * v35], *&v86[8 * v35 + 2], *&v86[8 * v35 + 4], *&v86[8 * v35 + 6]);
          }
        }

        ++v35;
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v31, &v96, v103, 16);
    }

    while (v34);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v48 = objc_msgSend_jointPaths(v83, v31, v32, v33);
  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v92, v102, 16);
  if (v50)
  {
    v52 = v50;
    v53 = *v93;
    do
    {
      v54 = 0;
      do
      {
        if (*v93 != v53)
        {
          objc_enumerationMutation(v48);
        }

        v55 = *(*(&v92 + 1) + 8 * v54);
        v56 = objc_msgSend_rangeOfString_options_(v55, v51, @"/", 4);
        if (v56)
        {
          v58 = v56 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = 1;
        }

        if (!v58)
        {
          v59 = objc_msgSend_substringToIndex_(v55, v51, v56, v57);
          if (v59)
          {
            v61 = v59;
            if (objc_msgSend_valueForKey_(v4, v51, v59, v60))
            {
              v63 = objc_msgSend_objectForKeyedSubscript_(v4, v51, v61, v62);
              v66 = objc_msgSend_objectForKeyedSubscript_(v4, v64, v55, v65);
              objc_msgSend_addChildNode_(v63, v67, v66, v68);
            }
          }
        }

        ++v54;
      }

      while (v52 != v54);
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v92, v102, 16);
      v52 = v69;
    }

    while (v69);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v51, &v88, v101, 16);
  v73 = v85;
  if (v70)
  {
    v74 = v70;
    v75 = *v89;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v89 != v75)
        {
          objc_enumerationMutation(v4);
        }

        v77 = objc_msgSend_objectForKeyedSubscript_(v4, v71, *(*(&v88 + 1) + 8 * j), v72);
        if (!objc_msgSend_parentNode(v77, v78, v79, v80))
        {
          objc_msgSend_addChildNode_(v73, v71, v77, v72);
        }
      }

      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v71, &v88, v101, 16);
    }

    while (v74);
  }

  result = sub_1AF2F872C(v84, &v100);
  *result = v4;
  result[1] = v73;
  return result;
}

uint64_t sub_1AF2F3D64(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_vertexCount(a1, a2, a3, a4);
  v8 = objc_msgSend_vertexAttributeDataForAttributeNamed_(a1, v6, *MEMORY[0x1E6974B08], v7);
  v12 = objc_msgSend_dataStart(v8, v9, v10, v11);
  v16 = objc_msgSend_format(v8, v13, v14, v15) & 0xFFF;
  v18 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v17, v12, 4 * v16 * v5);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v19, v18, @"kGeometrySourceSemanticBoneWeights", v5, 1, v16, 4, 0, 4 * v16);
}

uint64_t sub_1AF2F3E10(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_vertexCount(a1, a2, a3, a4);
  v8 = objc_msgSend_vertexAttributeDataForAttributeNamed_(a1, v6, *MEMORY[0x1E6974B00], v7);
  v12 = objc_msgSend_dataStart(v8, v9, v10, v11);
  v16 = objc_msgSend_format(v8, v13, v14, v15) & 0xFFF;
  v18 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v17, v12, 2 * v16 * v5);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v19, v18, @"kGeometrySourceSemanticBoneIndices", v5, 0, v16, 2, 0, 2 * v16);
}

uint64_t sub_1AF2F405C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_name(a2, a2, a3, a4);
  v10 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v7, v8, v9);
  v14 = objc_msgSend_UUIDString(v10, v11, v12, v13);
  v18 = objc_msgSend_stringWithFormat_(v5, v15, @"AO_%@_%@.png", v16, v6, v14);

  return objc_msgSend_stringByAppendingPathComponent_(v4, v17, v18, v19);
}

void sub_1AF2F40DC(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3052000000;
  v32[3] = sub_1AF2F4448;
  v32[4] = sub_1AF2F4458;
  v32[5] = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3052000000;
  v31[3] = sub_1AF2F4448;
  v31[4] = sub_1AF2F4458;
  v31[5] = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3052000000;
  v30[3] = sub_1AF2F4448;
  v30[4] = sub_1AF2F4458;
  v30[5] = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1AF2F4464;
  v29[3] = &unk_1E7A7EAC8;
  v29[4] = v32;
  v29[5] = v31;
  v29[6] = v30;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v25, v33, 16);
  if (v5)
  {
    v8 = *v26;
    v9 = *MEMORY[0x1E6974B10];
    v10 = *MEMORY[0x1E6974AF8];
    v11 = *MEMORY[0x1E6974AD8];
    v12 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (*(a1 + 96) == 1)
        {
          LODWORD(v6) = *(a1 + 88);
          LODWORD(v7) = *(a1 + 92);
          v15 = *(a1 + 40);
          if (*(a1 + 97))
          {
            AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateAmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed_(v14, v4, v15, v10, v6, v7);
          }

          else
          {
            AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateAmbientOcclusionTextureWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_(v14, v4, v15, v11, @"aoTexture", v6, v7);
          }
        }

        else if (*(a1 + 97))
        {
          AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateLightMapVertexColorsWithLightsToConsider_objectsToConsider_vertexAttributeNamed_(v14, v4, *(a1 + 48), *(a1 + 40), v10);
        }

        else
        {
          LODWORD(v6) = *(a1 + 88);
          AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed = objc_msgSend_generateLightMapTextureWithQuality_lightsToConsider_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_(v14, v4, *(a1 + 48), *(a1 + 40), v9, @"lightmapTexture", v6);
        }

        v12 &= AmbientOcclusionVertexColorsWithQuality_attenuationFactor_objectsToConsider_vertexAttributeNamed;
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v25, v33, 16);
    }

    while (v5);
  }

  else
  {
    v12 = 1;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF2F4490;
  v18[3] = &unk_1E7A7EAF0;
  v23 = v12;
  v17 = *(a1 + 56);
  v24 = *(a1 + 96);
  v18[4] = v17;
  v18[5] = v29;
  v19 = *(a1 + 64);
  v21 = v31;
  v22 = v32;
  v20 = *(a1 + 80);
  dispatch_async(MEMORY[0x1E69E96A0], v18);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v32, 8);
}

void sub_1AF2F440C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF2F4464(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    *(*(result[4] + 8) + 40) = a2;
    *(*(result[5] + 8) + 40) = a3;
    *(*(result[6] + 8) + 40) = a4;
  }

  return result;
}

uint64_t sub_1AF2F4490(uint64_t a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88) == 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(a1 + 32);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v15, v19, 16);
    if (v4)
    {
      v6 = v4;
      v7 = *v16;
      v8 = *MEMORY[0x1E6974B10];
      v9 = *MEMORY[0x1E6974AD8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = *(a1 + 48);
          if (*(a1 + 89) == 1)
          {
            objc_msgSend__updateAssociatedVFXNodeWithModelSetter_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_(v11, v5, v12, v13, v9, @"aoTexture");
          }

          else
          {
            objc_msgSend__updateAssociatedVFXNodeWithModelSetter_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_(v11, v5, v12, v13, v8, @"lightmapTexture");
          }

          (*(*(a1 + 56) + 16))();
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v15, v19, 16);
      }

      while (v6);
    }
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1AF2F4D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF2F4F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15)
{
  sub_1AF112128(&a11, a12);
  sub_1AF112128(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2F4F6C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_topology(a1, a2, a3, a4);
  if (result)
  {
    v11 = objc_msgSend_topology(a1, v8, v9, v10);
    if (objc_msgSend_edgeCreases(v11, v12, v13, v14))
    {
      v18 = objc_msgSend_topology(a1, v15, v16, v17);
      if (objc_msgSend_edgeCreaseIndices(v18, v19, v20, v21))
      {
        v22 = objc_msgSend_topology(a1, v15, v16, v17);
        v26 = objc_msgSend_edgeCreaseIndices(v22, v23, v24, v25);
        v30 = objc_msgSend_map(v26, v27, v28, v29);
        v34 = objc_msgSend_bytes(v30, v31, v32, v33);
        v38 = objc_msgSend_topology(a1, v35, v36, v37);
        v42 = objc_msgSend_edgeCreases(v38, v39, v40, v41);
        v46 = objc_msgSend_map(v42, v43, v44, v45);
        v50 = objc_msgSend_bytes(v46, v47, v48, v49);
        v54 = objc_msgSend_topology(a1, v51, v52, v53);
        v58 = objc_msgSend_edgeCreaseCount(v54, v55, v56, v57);
        if (v58 >= 1)
        {
          v59 = v58 & 0x7FFFFFFF;
          v60 = (v34 + 4);
          do
          {
            v114 = *v60 | (*(v60 - 1) << 32);
            v61 = *v50++;
            v115 = &v114;
            *(sub_1AF2F8F4C(a2, &v114) + 10) = v61;
            v60 += 2;
            --v59;
          }

          while (v59);
        }
      }
    }

    v62 = objc_msgSend_topology(a1, v15, v16, v17);
    result = objc_msgSend_vertexCreases(v62, v63, v64, v65);
    if (result)
    {
      v69 = objc_msgSend_topology(a1, v66, v67, v68);
      result = objc_msgSend_vertexCreaseIndices(v69, v70, v71, v72);
      if (result)
      {
        v76 = objc_msgSend_topology(a1, v73, v74, v75);
        v80 = objc_msgSend_vertexCreaseIndices(v76, v77, v78, v79);
        v84 = objc_msgSend_map(v80, v81, v82, v83);
        v88 = objc_msgSend_bytes(v84, v85, v86, v87);
        v92 = objc_msgSend_topology(a1, v89, v90, v91);
        v96 = objc_msgSend_vertexCreases(v92, v93, v94, v95);
        v100 = objc_msgSend_map(v96, v97, v98, v99);
        v104 = objc_msgSend_bytes(v100, v101, v102, v103);
        v108 = objc_msgSend_topology(a1, v105, v106, v107);
        result = objc_msgSend_vertexCreaseCount(v108, v109, v110, v111);
        if (result >= 1)
        {
          v112 = result & 0x7FFFFFFF;
          do
          {
            v113 = *v104++;
            v115 = v88;
            result = sub_1AF2F9020(a3, v88);
            *(result + 32) = v113;
            ++v88;
            --v112;
          }

          while (v112);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AF2F5118(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  v6 = objc_msgSend_vertexDescriptor(a3, a2, a3, a4);
  v10 = objc_msgSend_attributes(v6, v7, v8, v9);
  result = objc_msgSend_count(v10, v11, v12, v13);
  if (result)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *MEMORY[0x1E6974B28];
    v22 = *MEMORY[0x1E6974B18];
    v23 = *MEMORY[0x1E6974B00];
    v73 = *MEMORY[0x1E6974B08];
    v70 = *MEMORY[0x1E6974AF8];
    do
    {
      v24 = objc_msgSend_attributes(v6, v15, v16, v17);
      v27 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, v20, v26);
      if (objc_msgSend_format(v27, v28, v29, v30))
      {
        v34 = objc_msgSend_name(v27, v31, v32, v33);
        v37 = objc_msgSend_containsString_(v34, v35, v21, v36);
        if (v18 & v37)
        {
          v18 = 1;
        }

        else
        {
          v18 |= v37;
          v38 = objc_msgSend_name(v27, v31, v32, v33);
          v41 = objc_msgSend_containsString_(v38, v39, v22, v40);
          if (v19 & v41)
          {
            v19 = 1;
          }

          else
          {
            v19 |= v41;
            v42 = objc_msgSend_name(v27, v31, v32, v33);
            if ((objc_msgSend_containsString_(v42, v43, v23, v44) & 1) == 0)
            {
              v45 = objc_msgSend_name(v27, v31, v32, v33);
              if ((objc_msgSend_containsString_(v45, v46, v73, v47) & 1) == 0)
              {
                v48 = objc_msgSend_name(v27, v31, v32, v33);
                if ((objc_msgSend_hasSuffix_(v48, v49, @"UVi", v50) & 1) == 0)
                {
                  v69 = v5;
                  v51 = v4;
                  v52 = objc_msgSend_name(v27, v31, v32, v33);
                  if (objc_msgSend_containsString_(v52, v53, v70, v54) && (v56 = objc_msgSend_objectForKeyedSubscript_(v4, v31, @"kSceneSourceUSDIgnoreVertexColors", v55), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend_BOOLValue(v56, v31, v57, v58) & 1) != 0 || (v59 = objc_msgSend_meshSourceWithMDLVertexAttribute_mesh_(VFXMeshSource, v31, v27, a3)) == 0)
                  {
                    v4 = v51;
                    v5 = v69;
                  }

                  else
                  {
                    objc_msgSend_addObject_(a1, v31, v59, v33);
                    v62 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v60, v20, v61);
                    objc_msgSend_addObject_(v69, v63, v62, v64);
                    v4 = v51;
                    v5 = v69;
                  }
                }
              }
            }
          }
        }
      }

      ++v20;
      v65 = objc_msgSend_attributes(v6, v31, v32, v33);
      result = objc_msgSend_count(v65, v66, v67, v68);
    }

    while (v20 < result);
  }

  return result;
}

uint64_t sub_1AF2F533C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a2 + 16))
  {
    v6 = result;
    v7 = objc_msgSend_vertexDescriptor(a3, a2, a3, a4);
    v13 = objc_msgSend_attributeNamed_(v7, v8, *MEMORY[0x1E6974B28], v9);
    if (!v13)
    {
      v14 = sub_1AF0D5194();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF69AC(v14);
      }
    }

    v15 = objc_msgSend_vertexBuffers(a3, v10, v11, v12);
    v19 = objc_msgSend_bufferIndex(v13, v16, v17, v18);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v15, v20, v19, v21);
    v26 = objc_msgSend_length(v22, v23, v24, v25);
    v30 = objc_msgSend_vertexDescriptor(a3, v27, v28, v29);
    v34 = objc_msgSend_layouts(v30, v31, v32, v33);
    v38 = objc_msgSend_bufferIndex(v13, v35, v36, v37);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v34, v39, v38, v40);
    v45 = v26 / objc_msgSend_stride(v41, v42, v43, v44);
    v48 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v46, 4 * v45, v47);
    objc_msgSend_setLength_(v48, v49, 4 * v45, v50);
    v54 = objc_msgSend_mutableBytes(v48, v51, v52, v53);
    bzero(v54, 4 * v45);
    v58 = *a2;
    v57 = (a2 + 8);
    v56 = v58;
    if (v58 != v57)
    {
      do
      {
        *(v54 + *(v56 + 7)) = *(v56 + 8);
        v59 = v56[1];
        if (v59)
        {
          do
          {
            v60 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v60 = v56[2];
            v61 = *v60 == v56;
            v56 = v60;
          }

          while (!v61);
        }

        v56 = v60;
      }

      while (v60 != v57);
    }

    result = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v55, v48, @"kGeometrySourceSemanticVertexCrease", v45, 1, 1, 4, 0, 4);
    if (result)
    {
      return objc_msgSend_addObject_(v6, v62, result, v63);
    }
  }

  return result;
}

uint64_t sub_1AF2F54E4(uint64_t result, char *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = result;
    v8 = 4 * v4;
    v9 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], a2, 4 * v4, a4);
    objc_msgSend_setLength_(v9, v10, v8, v11);
    v15 = objc_msgSend_mutableBytes(v9, v12, v13, v14);
    v16 = 8 * v7[2];
    v19 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v17, v16, v18);
    objc_msgSend_setLength_(v19, v20, v16, v21);
    v25 = objc_msgSend_mutableBytes(v19, v22, v23, v24);
    v27 = *v7;
    if (*v7 != v7 + 1)
    {
      v28 = 0;
      do
      {
        v29 = v27[4];
        *(v25 + 8 * v28) = HIDWORD(v29);
        *(v25 + 4 * ((2 * v28) | 1)) = v29;
        *(v15 + 4 * v28) = *(v27 + 10);
        v30 = v27[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v27[2];
            v32 = *v31 == v27;
            v27 = v31;
          }

          while (!v32);
        }

        ++v28;
        v27 = v31;
      }

      while (v31 != v7 + 1);
    }

    *a2 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v26, v9, @"kGeometrySourceSemanticEdgeCrease", v7[2], 1, 1, 4, 0, 4);
    result = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(VFXMeshElement, v33, v19, 2, v7[2], 4);
    *a3 = result;
  }

  return result;
}

void sub_1AF2F5B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, uint64_t a35, char a36, void *a37)
{
  sub_1AF112128(&a33, a34);
  sub_1AF112128(&a36, a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2F6074(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_faceIndexing(a1, a2, a3, a4))
  {
    return 0;
  }

  if (objc_msgSend_geometryType(a1, v5, v6, v7) != 5)
  {
    return 0;
  }

  v11 = objc_msgSend_topology(a1, v8, v9, v10);
  if (!objc_msgSend_faceTopology(v11, v12, v13, v14))
  {
    return 0;
  }

  v18 = objc_msgSend_indexBuffer(a1, v15, v16, v17);
  if (!objc_msgSend_length(v18, v19, v20, v21))
  {
    return 0;
  }

  v28 = objc_msgSend_indexType(a1, v22, v23, v24) >> 3;
  switch(v28)
  {
    case 4uLL:

      return sub_1AF2F67B8(a1, v25, v26, v27);
    case 2uLL:

      return sub_1AF2F648C(a1, v25, v26, v27);
    case 1uLL:

      return sub_1AF2F6154(a1, v25, v26, v27);
    default:
      return 0;
  }
}

uint64_t sub_1AF2F6154(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_topology(a1, a2, a3, a4);
  v9 = objc_msgSend_faceTopology(v5, v6, v7, v8);
  v13 = objc_msgSend_map(v9, v10, v11, v12);
  v17 = objc_msgSend_bytes(v13, v14, v15, v16);
  if (!v17)
  {
    return 0;
  }

  v21 = v17;
  v22 = objc_msgSend_indexBuffer(a1, v18, v19, v20);
  v26 = objc_msgSend_map(v22, v23, v24, v25);
  v30 = objc_msgSend_bytes(v26, v27, v28, v29);
  if (!v30)
  {
    return 0;
  }

  v34 = v30;
  v35 = objc_msgSend_topology(a1, v31, v32, v33);
  v39 = objc_msgSend_faceCount(v35, v36, v37, v38);
  v43 = objc_msgSend_indexBuffer(a1, v40, v41, v42);
  v47 = objc_msgSend_length(v43, v44, v45, v46);
  __p = 0;
  v97 = 0;
  v98 = 0;
  sub_1AF2F90F0(&__p, v47 + v39);
  v94 = v39;
  if (v39)
  {
    v49 = v97;
    do
    {
      v51 = *v21++;
      v50 = v51;
      if (v49 >= v98)
      {
        v52 = __p;
        v53 = (v49 - __p);
        v54 = v49 - __p + 1;
        if (v54 < 0)
        {
LABEL_44:
          sub_1AF10A1D0();
        }

        v55 = v98 - __p;
        if (2 * (v98 - __p) > v54)
        {
          v54 = 2 * v55;
        }

        if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v56 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          operator new();
        }

        v57 = v49 - __p;
        *v53 = v50;
        v49 = v53 + 1;
        memcpy(0, v52, v57);
        __p = 0;
        v97 = v53 + 1;
        v98 = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v49++ = v50;
      }

      v97 = v49;
      --v39;
    }

    while (v39);
  }

  if (v47)
  {
    v58 = v97;
    do
    {
      if (v58 >= v98)
      {
        v59 = __p;
        v60 = (v58 - __p);
        v61 = v58 - __p + 1;
        if (v61 < 0)
        {
          goto LABEL_44;
        }

        v62 = v98 - __p;
        if (2 * (v98 - __p) > v61)
        {
          v61 = 2 * v62;
        }

        if (v62 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v63 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          operator new();
        }

        v64 = v58 - __p;
        *v60 = *v34;
        v58 = v60 + 1;
        memcpy(0, v59, v64);
        __p = 0;
        v97 = v60 + 1;
        v98 = 0;
        if (v59)
        {
          operator delete(v59);
        }
      }

      else
      {
        *v58++ = *v34;
      }

      v97 = v58;
      ++v34;
      --v47;
    }

    while (v47);
  }

  else
  {
    v58 = v97;
  }

  v69 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v48, __p, v58 - __p, v94);
  v70 = 0;
  for (i = 0; ; ++i)
  {
    v72 = objc_msgSend_faceIndexing(a1, v66, v67, v68);
    if (i >= objc_msgSend_count(v72, v73, v74, v75))
    {
      break;
    }

    v79 = objc_msgSend_faceIndexing(a1, v76, v77, v78);
    v82 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, i, v81);
    if (v70 < objc_msgSend_unsignedIntValue(v82, v83, v84, v85))
    {
      v86 = objc_msgSend_faceIndexing(a1, v66, v67, v68);
      v89 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, i, v88);
      v70 = objc_msgSend_unsignedIntValue(v89, v90, v91, v92);
    }
  }

  v65 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v76, v69, 4, v95, v70 + 1, 1, 1);
  if (__p)
  {
    v97 = __p;
    operator delete(__p);
  }

  return v65;
}

void sub_1AF2F645C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF2F648C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_topology(a1, a2, a3, a4);
  v9 = objc_msgSend_faceTopology(v5, v6, v7, v8);
  v13 = objc_msgSend_map(v9, v10, v11, v12);
  v17 = objc_msgSend_bytes(v13, v14, v15, v16);
  if (!v17)
  {
    return 0;
  }

  v21 = v17;
  v22 = objc_msgSend_indexBuffer(a1, v18, v19, v20);
  v26 = objc_msgSend_map(v22, v23, v24, v25);
  v30 = objc_msgSend_bytes(v26, v27, v28, v29);
  if (!v30)
  {
    return 0;
  }

  v34 = v30;
  v35 = objc_msgSend_topology(a1, v31, v32, v33);
  v39 = objc_msgSend_faceCount(v35, v36, v37, v38);
  v43 = objc_msgSend_indexBuffer(a1, v40, v41, v42);
  __src = 0;
  v101 = 0;
  v102 = 0;
  v98 = objc_msgSend_length(v43, v44, v45, v46);
  sub_1AF2F91B8(&__src, v39 + (v98 >> 1));
  v99 = v39;
  if (v39)
  {
    v48 = v101;
    v49 = v99;
    do
    {
      v51 = *v21++;
      v50 = v51;
      if (v48 >= v102)
      {
        v52 = __src;
        v53 = v48 - __src;
        v54 = (v48 - __src) >> 1;
        if (v54 <= -2)
        {
LABEL_45:
          sub_1AF10A1D0();
        }

        if (v102 - __src <= v54 + 1)
        {
          v55 = v54 + 1;
        }

        else
        {
          v55 = v102 - __src;
        }

        if (v102 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v56 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v55;
        }

        if (v56)
        {
          sub_1AF10A228(&__src, v56);
        }

        v57 = v54;
        v58 = (2 * v54);
        v59 = &v58[-v57];
        *v58 = v50;
        v48 = (v58 + 1);
        memcpy(v59, v52, v53);
        v60 = __src;
        __src = v59;
        v101 = v48;
        v102 = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v48 = v50;
        v48 += 2;
      }

      v101 = v48;
      --v49;
    }

    while (v49);
  }

  if (v98 > 1)
  {
    v63 = v98 >> 1;
    v61 = v101;
    do
    {
      if (v61 >= v102)
      {
        v64 = __src;
        v65 = v61 - __src;
        v66 = (v61 - __src) >> 1;
        if (v66 <= -2)
        {
          goto LABEL_45;
        }

        if (v102 - __src <= v66 + 1)
        {
          v67 = v66 + 1;
        }

        else
        {
          v67 = v102 - __src;
        }

        if (v102 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v68 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          sub_1AF10A228(&__src, v68);
        }

        *(2 * v66) = *v34;
        v61 = (2 * v66 + 2);
        memcpy(0, v64, v65);
        v69 = __src;
        __src = 0;
        v101 = v61;
        v102 = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v61 = *v34;
        v61 += 2;
      }

      v101 = v61;
      ++v34;
      --v63;
    }

    while (v63);
  }

  else
  {
    v61 = v101;
  }

  v73 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v47, __src, v61 - __src);
  v74 = 0;
  for (i = 0; ; ++i)
  {
    v76 = objc_msgSend_faceIndexing(a1, v70, v71, v72);
    if (i >= objc_msgSend_count(v76, v77, v78, v79))
    {
      break;
    }

    v83 = objc_msgSend_faceIndexing(a1, v80, v81, v82);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, i, v85);
    if (v74 < objc_msgSend_unsignedIntValue(v86, v87, v88, v89))
    {
      v90 = objc_msgSend_faceIndexing(a1, v70, v71, v72);
      v93 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, i, v92);
      v74 = objc_msgSend_unsignedIntValue(v93, v94, v95, v96);
    }
  }

  v62 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v80, v73, 4, v99, v74 + 1, 1, 2);
  if (__src)
  {
    v101 = __src;
    operator delete(__src);
  }

  return v62;
}

void sub_1AF2F6788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF2F67B8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_topology(a1, a2, a3, a4);
  v9 = objc_msgSend_faceTopology(v5, v6, v7, v8);
  v13 = objc_msgSend_map(v9, v10, v11, v12);
  v17 = objc_msgSend_bytes(v13, v14, v15, v16);
  if (!v17)
  {
    return 0;
  }

  v21 = v17;
  v22 = objc_msgSend_indexBuffer(a1, v18, v19, v20);
  v26 = objc_msgSend_map(v22, v23, v24, v25);
  v30 = objc_msgSend_bytes(v26, v27, v28, v29);
  if (!v30)
  {
    return 0;
  }

  v34 = v30;
  v35 = objc_msgSend_topology(a1, v31, v32, v33);
  v39 = objc_msgSend_faceCount(v35, v36, v37, v38);
  v43 = objc_msgSend_indexBuffer(a1, v40, v41, v42);
  __src = 0;
  v103 = 0;
  v104 = 0;
  v100 = objc_msgSend_length(v43, v44, v45, v46);
  sub_1AF17A60C(&__src, v39 + (v100 >> 2));
  v101 = v39;
  if (v39)
  {
    v48 = v103;
    v49 = v101;
    do
    {
      v51 = *v21++;
      v50 = v51;
      if (v48 >= v104)
      {
        v52 = __src;
        v53 = v48 - __src;
        v54 = (v48 - __src) >> 2;
        v55 = v54 + 1;
        if ((v54 + 1) >> 62)
        {
LABEL_43:
          sub_1AF10A1D0();
        }

        v56 = v104 - __src;
        if ((v104 - __src) >> 1 > v55)
        {
          v55 = v56 >> 1;
        }

        if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v57 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          sub_1AF123244(&__src, v57);
        }

        v58 = v54;
        v59 = (4 * v54);
        v60 = &v59[-v58];
        *v59 = v50;
        v48 = (v59 + 1);
        memcpy(v60, v52, v53);
        v61 = __src;
        __src = v60;
        v103 = v48;
        v104 = 0;
        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        *v48 = v50;
        v48 += 4;
      }

      v103 = v48;
      --v49;
    }

    while (v49);
  }

  if (v100 > 3)
  {
    v64 = v100 >> 2;
    v62 = v103;
    do
    {
      if (v62 >= v104)
      {
        v65 = __src;
        v66 = v62 - __src;
        v67 = (v62 - __src) >> 2;
        v68 = v67 + 1;
        if ((v67 + 1) >> 62)
        {
          goto LABEL_43;
        }

        v69 = v104 - __src;
        if ((v104 - __src) >> 1 > v68)
        {
          v68 = v69 >> 1;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v70 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          sub_1AF123244(&__src, v70);
        }

        *(4 * v67) = *v34;
        v62 = (4 * v67 + 4);
        memcpy(0, v65, v66);
        v71 = __src;
        __src = 0;
        v103 = v62;
        v104 = 0;
        if (v71)
        {
          operator delete(v71);
        }
      }

      else
      {
        *v62 = *v34;
        v62 += 4;
      }

      v103 = v62;
      ++v34;
      --v64;
    }

    while (v64);
  }

  else
  {
    v62 = v103;
  }

  v75 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v47, __src, v62 - __src);
  v76 = 0;
  for (i = 0; ; ++i)
  {
    v78 = objc_msgSend_faceIndexing(a1, v72, v73, v74);
    if (i >= objc_msgSend_count(v78, v79, v80, v81))
    {
      break;
    }

    v85 = objc_msgSend_faceIndexing(a1, v82, v83, v84);
    v88 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, i, v87);
    if (v76 < objc_msgSend_unsignedIntValue(v88, v89, v90, v91))
    {
      v92 = objc_msgSend_faceIndexing(a1, v72, v73, v74);
      v95 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, i, v94);
      v76 = objc_msgSend_unsignedIntValue(v95, v96, v97, v98);
    }
  }

  v63 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v82, v75, 4, v101, v76 + 1, 1, 4);
  if (__src)
  {
    v103 = __src;
    operator delete(__src);
  }

  return v63;
}

void sub_1AF2F6ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF2F72F4(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v6 = a4;
  v7 = result;
  v8 = objc_msgSend_propertyWithSemantic_(a2, a2, a3, a4);
  if (objc_msgSend_type(v8, v9, v10, v11) == 2 && objc_msgSend_URLValue(v8, v12, v13, v14))
  {
    v15 = objc_msgSend_URLValue(v8, v12, v13, v14);
LABEL_39:
    objc_msgSend_setContents_(v7, v16, v15, v17);
    goto LABEL_40;
  }

  if (objc_msgSend_type(v8, v12, v13, v14) == 1 && objc_msgSend_stringValue(v8, v18, v19, v20))
  {
    if (objc_msgSend_URLValue(v8, v18, v19, v20))
    {
      v24 = objc_msgSend_URLValue(v8, v21, v22, v23);
      v28 = objc_msgSend_path(v24, v25, v26, v27);
      if (objc_msgSend_stringValue(v8, v29, v30, v31) && (v35 = objc_msgSend_pathExtension(v28, v32, v33, v34), objc_msgSend_isEqualToString_(v35, v36, @"usdz", v37)) && (v38 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v32, v33, v34), v42 = objc_msgSend_threadDictionary(v38, v39, v40, v41), (v45 = objc_msgSend_valueForKey_(v42, v43, @"VFX_MDLCurrentAssetResolver", v44)) != 0) && (v46 = v45, (objc_opt_respondsToSelector() & 1) != 0) && (v47 = objc_msgSend_stringValue(v8, v32, v33, v34), v50 = objc_msgSend_resolveInsideArchiveWithAssetNamed_(v46, v48, v47, v49), objc_msgSend_count(v50, v51, v52, v53) >= 2))
      {
        v54 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v32, v28, v34);
        v55 = objc_alloc(MEMORY[0x1E696AF20]);
        v57 = objc_msgSend_initWithURL_resolvingAgainstBaseURL_(v55, v56, v54, 0);
        v61 = objc_msgSend_stringValue(v8, v58, v59, v60);
        v64 = objc_msgSend_rangeOfString_(v61, v62, @"[", v63);
        if (v65)
        {
          v67 = objc_msgSend_substringFromIndex_(v61, v65, v64 + 1, v66);
          if (objc_msgSend_length(v67, v68, v69, v70) >= 2)
          {
            v73 = objc_msgSend_length(v67, v65, v71, v72);
            v61 = objc_msgSend_substringToIndex_(v67, v74, v73 - 1, v75);
          }
        }

        v76 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v61, v65, @"/", @"-");
        v77 = MEMORY[0x1E696AEC0];
        v80 = objc_msgSend_objectAtIndexedSubscript_(v50, v78, 0, v79);
        v84 = objc_msgSend_intValue(v80, v81, v82, v83);
        v87 = objc_msgSend_objectAtIndexedSubscript_(v50, v85, 1, v86);
        v91 = objc_msgSend_intValue(v87, v88, v89, v90);
        v94 = objc_msgSend_stringWithFormat_(v77, v92, @"offset=%d&size=%d&name=%@", v93, v84, v91, v76);
        objc_msgSend_setQuery_(v57, v95, v94, v96);
        v100 = objc_msgSend_URL(v57, v97, v98, v99);
        objc_msgSend_setContents_(v7, v101, v100, v102);
      }

      else
      {
        v129 = objc_msgSend_stringValue(v8, v32, v33, v34);
        v133 = objc_msgSend_URLValue(v8, v130, v131, v132);
        objc_msgSend__setImagePath_withResolvedURL_(v7, v134, v129, v133);
      }

      goto LABEL_40;
    }

    v148 = objc_msgSend_stringValue(v8, v21, v22, v23);
    if (objc_msgSend_length(v148, v149, v150, v151))
    {
      v15 = objc_msgSend_stringValue(v8, v103, v104, v105);
      goto LABEL_39;
    }

LABEL_40:
    if (v6)
    {
      objc_msgSend_setWrapS_(v7, v103, 2, v105);
      objc_msgSend_setWrapT_(v7, v162, 2, v163);
    }

    goto LABEL_42;
  }

  if (objc_msgSend_type(v8, v18, v19, v20) != 3)
  {
    if (objc_msgSend_type(v8, v106, v107, v108) == 8)
    {
      objc_msgSend_float4Value(v8, v120, v121, v122);
      v15 = objc_msgSend_vfx_colorWithModelIORed_green_blue_alpha_options_(MEMORY[0x1E69DC888], v127, a5, v128, v126, v123, v124, v125);
    }

    else if (objc_msgSend_type(v8, v120, v121, v122) == 7)
    {
      objc_msgSend_float3Value(v8, v135, v136, v137);
      v255 = v138;
      v142 = objc_msgSend_propertyName(v7, v139, v140, v141);
      if (objc_msgSend_isEqualToString_(v142, v143, @"emission", v144) && *&v255 == 1.0 && *(&v255 + 1) == 1.0 && *(&v255 + 2) == 1.0)
      {
        v147 = sub_1AF0D5194();
        if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AF0CE000, v147, OS_LOG_TYPE_DEFAULT, "Warning: ignoring white emission color from ModelIO", buf, 2u);
        }

        goto LABEL_40;
      }

      v15 = objc_msgSend_vfx_colorWithModelIORed_green_blue_alpha_options_(MEMORY[0x1E69DC888], v145, a5, v146, *&v255, *(&v255 + 1), *(&v255 + 2), 1.0);
    }

    else if (objc_msgSend_type(v8, v135, v136, v137) == 5)
    {
      objc_msgSend_floatValue(v8, v152, v153, v154);
      v15 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v155, v156, v157);
    }

    else
    {
      if (objc_msgSend_type(v8, v152, v153, v154) != 4)
      {
        goto LABEL_40;
      }

      v158 = MEMORY[0x1E69DC888];
      v159 = objc_msgSend_color(v8, v103, v104, v105);
      v15 = objc_msgSend_colorWithCGColor_(v158, v160, v159, v161);
    }

    goto LABEL_39;
  }

  if (!objc_msgSend_textureSamplerValue(v8, v106, v107, v108))
  {
    goto LABEL_40;
  }

  v109 = objc_msgSend_textureSamplerValue(v8, v103, v104, v105);
  if (!objc_msgSend_texture(v109, v110, v111, v112))
  {
    goto LABEL_40;
  }

  v113 = objc_msgSend_textureSamplerValue(v8, v103, v104, v105);
  v117 = objc_msgSend_texture(v113, v114, v115, v116);
  objc_msgSend_setContents_(v7, v118, v117, v119);
LABEL_42:
  result = objc_msgSend_textureSamplerValue(v8, v103, v104, v105);
  if (result)
  {
    v167 = objc_msgSend_textureSamplerValue(v8, v164, v165, v166);
    v171 = objc_msgSend_textureComponents(v167, v168, v169, v170);
    objc_msgSend_setTextureComponents_(v7, v172, __rbit32(v171) >> 28, v173);
    v177 = objc_msgSend_textureSamplerValue(v8, v174, v175, v176);
    v181 = objc_msgSend_mappingChannel(v177, v178, v179, v180);
    objc_msgSend_setMappingChannel_(v7, v182, v181, v183);
    v187 = objc_msgSend_textureSamplerValue(v8, v184, v185, v186);
    if (objc_msgSend_transform(v187, v188, v189, v190))
    {
      v194 = objc_msgSend_textureSamplerValue(v8, v191, v192, v193);
      v198 = objc_msgSend_transform(v194, v195, v196, v197);
      objc_msgSend_matrix(v198, v199, v200, v201);
      v206 = 0;
      v208 = vmulq_f32(v207, v207);
      v209 = vextq_s8(v208, v208, 8uLL).u64[0];
      *v209.i32 = sqrtf(vaddv_f32(vadd_f32(*v208.i8, v209)));
      v211 = vmulq_f32(v210, v210);
      v212 = vextq_s8(v211, v211, 8uLL).u64[0];
      *v212.i32 = sqrtf(vaddv_f32(vadd_f32(*v211.i8, v212)));
      v213 = vmulq_f32(v205, v205);
      v214 = vextq_s8(v213, v213, 8uLL).u64[0];
      *v214.i32 = sqrtf(vaddv_f32(vadd_f32(*v213.i8, v214)));
      v215 = vdivq_f32(v207, vdupq_lane_s32(v209, 0));
      v216 = vdivq_f32(v210, vdupq_lane_s32(v212, 0));
      v217 = *MEMORY[0x1E69E9B18];
      v218 = *(MEMORY[0x1E69E9B18] + 16);
      v219 = *(MEMORY[0x1E69E9B18] + 32);
      v220 = *(MEMORY[0x1E69E9B18] + 48);
      LODWORD(v222) = v221.i32[0];
      DWORD1(v222) = vnegq_f32(v221).i32[1];
      *(&v222 + 1) = __PAIR64__(1.0, v221.u32[2]);
      v256 = *MEMORY[0x1E69E9B18];
      v257 = v218;
      v258 = v219;
      v259 = v222;
      do
      {
        *&buf[v206] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*(&v256 + v206))), v218, *(&v256 + v206), 1), v219, *(&v256 + v206), 2), xmmword_1AFE47A00, *(&v256 + v206), 3);
        v206 += 16;
      }

      while (v206 != 64);
      v223 = 0;
      v224 = vdivq_f32(v205, vdupq_lane_s32(v214, 0));
      v215.i32[1] = vnegq_f32(v215).i32[1];
      v216.f32[0] = -v216.f32[0];
      v256 = *buf;
      v257 = v261;
      v258 = v262;
      v259 = v263;
      do
      {
        *&buf[v223] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215, COERCE_FLOAT(*(&v256 + v223))), v216, *(&v256 + v223), 1), v224, *(&v256 + v223), 2), v220, *(&v256 + v223), 3);
        v223 += 16;
      }

      while (v223 != 64);
      v225 = 0;
      v226.i32[0] = 0;
      v226.i64[1] = 0;
      v226.i32[1] = v212.i32[0];
      v227.i64[0] = 0;
      v227.i64[1] = v214.u32[0];
      v256 = *buf;
      v257 = v261;
      v258 = v262;
      v259 = v263;
      do
      {
        *&buf[v225] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v209.u32[0], COERCE_FLOAT(*(&v256 + v225))), v226, *(&v256 + v225), 1), v227, *(&v256 + v225), 2), xmmword_1AFE201A0, *(&v256 + v225), 3);
        v225 += 16;
      }

      while (v225 != 64);
      v228 = 0;
      v256 = *buf;
      v257 = v261;
      v258 = v262;
      v259 = v263;
      do
      {
        *&buf[v228] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*(&v256 + v228))), v218, *(&v256 + v228), 1), v219, *(&v256 + v228), 2), xmmword_1AFE21180, *(&v256 + v228), 3);
        v228 += 16;
      }

      while (v228 != 64);
      objc_msgSend_setContentsTransform_(v7, v202, v203, v204, *buf, *v261.i64, *v262.i64, *&v263);
    }

    v229 = objc_msgSend_textureSamplerValue(v8, v191, v192, v193);
    result = objc_msgSend_hardwareFilter(v229, v230, v231, v232);
    if (result)
    {
      v236 = result;
      v237 = objc_msgSend_sWrapMode(result, v233, v234, v235);
      if (v237 <= 2)
      {
        objc_msgSend_setWrapS_(v7, v238, qword_1AFE47A50[v237], v240);
      }

      v241 = objc_msgSend_tWrapMode(v236, v238, v239, v240);
      if (v241 <= 2)
      {
        objc_msgSend_setWrapT_(v7, v242, qword_1AFE47A50[v241], v244);
      }

      v245 = objc_msgSend_minFilter(v236, v242, v243, v244);
      if (v245)
      {
        if (v245 == 1)
        {
          objc_msgSend_setMinificationFilter_(v7, v246, 2, v248);
        }
      }

      else
      {
        objc_msgSend_setMinificationFilter_(v7, v246, 1, v248);
      }

      v249 = objc_msgSend_magFilter(v236, v246, v247, v248);
      if (v249)
      {
        if (v249 == 1)
        {
          objc_msgSend_setMagnificationFilter_(v7, v250, 2, v252);
        }
      }

      else
      {
        objc_msgSend_setMagnificationFilter_(v7, v250, 1, v252);
      }

      result = objc_msgSend_mipFilter(v236, v250, v251, v252);
      if (result)
      {
        if (result == 1)
        {
          return objc_msgSend_setMipFilter_(v7, v253, 2, v254);
        }
      }

      else
      {
        return objc_msgSend_setMipFilter_(v7, v253, 1, v254);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2F7E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v130 = *MEMORY[0x1E69E9840];
  AssociatedObject = objc_getAssociatedObject(a1, @"VFXMDLAssociatedObject");
  if (AssociatedObject)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = objc_msgSend_children(a1, v7, v8, v9);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v122, v129, 16);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v123;
      v15 = 0x1E695D000uLL;
      v97 = a3;
      v96 = *v123;
      do
      {
        v16 = 0;
        v98 = v12;
        do
        {
          if (*v123 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v122 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = v16;
            if (v13)
            {
              v21 = sub_1AF0D5194();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDF6A6C(&v120, v121, v21);
              }
            }

            v22 = objc_msgSend_model(AssociatedObject, v18, v19, v20);
            v26 = objc_msgSend_materials(v22, v23, v24, v25);
            v29 = objc_msgSend_modelWithMDLMesh_(VFXModel, v27, v17, v28);
            v33 = objc_msgSend_array(*(v15 + 3952), v30, v31, v32);
            v34 = *(v15 + 3952);
            v38 = objc_msgSend_count(v26, v35, v36, v37);
            v41 = objc_msgSend_arrayWithCapacity_(v34, v39, v38, v40);
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v45 = objc_msgSend_submeshes(v17, v42, v43, v44);
            v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v116, v128, 16);
            if (v47)
            {
              v51 = v47;
              v52 = *v117;
              do
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v117 != v52)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v54 = *(*(&v116 + 1) + 8 * i);
                  if (objc_msgSend_material(v54, v48, v49, v50) && objc_msgSend_indexCount(v54, v48, v49, v50))
                  {
                    v55 = objc_msgSend_material(v54, v48, v49, v50);
                    objc_msgSend_addObject_(v41, v56, v55, v57);
                  }
                }

                v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v116, v128, 16);
              }

              while (v51);
            }

            v58 = *(v15 + 3952);
            v100 = v26;
            v59 = objc_msgSend_count(v26, v48, v49, v50);
            v62 = objc_msgSend_arrayWithCapacity_(v58, v60, v59, v61);
            v63 = objc_alloc(MEMORY[0x1E696AD60]);
            v66 = objc_msgSend_initWithString_(v63, v64, &stru_1F2575650, v65);
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v67, &v112, v127, 16);
            if (v68)
            {
              v69 = v68;
              v70 = *v113;
              do
              {
                for (j = 0; j != v69; ++j)
                {
                  if (*v113 != v70)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v72 = *(*(&v112 + 1) + 8 * j);
                  v73 = objc_getAssociatedObject(v72, @"VFXMDLAssociatedObject");
                  if (v73)
                  {
                    v77 = objc_msgSend_copy(v73, v74, v75, v76);
                    v79 = objc_msgSend__integrateModelKitComputedMaps_withModel_node_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_filePath_(v77, v78, v72, v29, AssociatedObject, a4, a5, a6, v66);
                    if (v79)
                    {
                      objc_msgSend_addObject_(v33, v80, v79, v81);
                    }

                    objc_msgSend_addObject_(v62, v80, v77, v81);
                  }

                  else
                  {
                    v83 = sub_1AF0D5194();
                    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                    {
                      sub_1AFDF6AA4(&v110, v111, v83);
                    }
                  }
                }

                v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v82, &v112, v127, 16);
              }

              while (v69);
            }

            objc_msgSend_setMaterials_(v29, v84, v62, v85);
            a3 = v97;
            if (v97)
            {
              (*(v97 + 16))(v97, AssociatedObject, v29, v33);
            }

            else
            {
              objc_msgSend_setModel_(AssociatedObject, v86, v29, v87);
            }

            v12 = v98;
            v14 = v96;
            v16 = v101;

            v13 = 1;
            v15 = 0x1E695D000;
          }

          ++v16;
        }

        while (v16 != v12);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v122, v129, 16);
      }

      while (v12);
    }
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v88 = objc_msgSend_children(a1, v7, v8, v9);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v106, v126, 16);
  if (result)
  {
    v92 = result;
    v93 = *v107;
    do
    {
      v94 = 0;
      do
      {
        if (*v107 != v93)
        {
          objc_enumerationMutation(v88);
        }

        objc_msgSend__updateAssociatedVFXNodeWithModelSetter_texturePathProvider_vertexAttributeNamed_materialPropertyNamed_(*(*(&v106 + 1) + 8 * v94++), v91, a3, a4, a5, a6);
      }

      while (v92 != v94);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v91, &v106, v126, 16);
      v92 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF2F82C0(void *a1, const char *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(a1, a2, a3, a4);
  v13 = objc_msgSend_arrayWithCapacity_(v9, v11, v10, v12);
  v17 = objc_msgSend_count(a1, v14, v15, v16);
  if (a6 != 0.0 && v17 > 1)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v18, &v40, v44, 16);
    if (v25)
    {
      v29 = v25;
      v30 = *v41;
      do
      {
        v31 = 0;
        do
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(a1);
          }

          objc_msgSend_doubleValue(*(*(&v40 + 1) + 8 * v31), v26, v27, v28);
          v36 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v33, v34, v35, (v32 - a5) / a6);
          objc_msgSend_addObject_(v13, v37, v36, v38);
          ++v31;
        }

        while (v29 != v31);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v26, &v40, v44, 16);
      }

      while (v29);
    }
  }

  else
  {
    v22 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v18, v19, v20, 0.0);
    objc_msgSend_addObject_(v13, v23, v22, v24);
  }

  return v13;
}

uint64_t sub_1AF2F8430(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_componentConformingToProtocol_(a1, a2, &unk_1F261ED28, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return objc_msgSend_skeleton(v5, v6, v7, v8);
}

uint64_t sub_1AF2F84A0(void *a1, float32x4_t *a2, void *a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_transform(a1, a2, a3, a4))
  {
    v52 = *a2;
    v53 = a2[1];
    v50 = a2[3];
    v51 = a2[2];
    v11 = objc_msgSend_transform(a1, v8, v9, v10);
    objc_msgSend_matrix(v11, v12, v13, v14);
    v15 = 0;
    v58[0] = v16;
    v58[1] = v17;
    v58[2] = v18;
    v58[3] = v19;
    do
    {
      *(&v59 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(v58[v15])), v53, *&v58[v15], 1), v51, v58[v15], 2), v50, v58[v15], 3);
      ++v15;
    }

    while (v15 != 4);
  }

  else
  {
    v20 = a2[1];
    v59 = *a2;
    v60 = v20;
    v21 = a2[3];
    v61 = a2[2];
    v62 = v21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObject_(a3, v22, a1, v24);
    v25 = *(a4 + 8);
    v26 = *(a4 + 16);
    if (v25 >= v26)
    {
      v30 = (v25 - *a4) >> 6;
      v31 = v30 + 1;
      if ((v30 + 1) >> 58)
      {
        sub_1AF10A1D0();
      }

      v32 = v26 - *a4;
      if (v32 >> 5 > v31)
      {
        v31 = v32 >> 5;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFC0)
      {
        v33 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v31;
      }

      if (v33)
      {
        sub_1AF2F8B08(a4, v33);
      }

      v34 = (v30 << 6);
      v35 = v60;
      *v34 = v59;
      v34[1] = v35;
      v36 = v62;
      v34[2] = v61;
      v34[3] = v36;
      v29 = (v30 << 6) + 64;
      v37 = *(a4 + 8) - *a4;
      v38 = (v30 << 6) - v37;
      memcpy(v34 - v37, *a4, v37);
      v39 = *a4;
      *a4 = v38;
      *(a4 + 8) = v29;
      *(a4 + 16) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      v27 = v60;
      *v25 = v59;
      v25[1] = v27;
      v28 = v62;
      v25[2] = v61;
      v25[3] = v28;
      v29 = &v25[4];
    }

    *(a4 + 8) = v29;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = objc_msgSend_children(a1, v22, v23, v24);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v54, v63, 16);
  v46 = result;
  if (result)
  {
    v47 = *v55;
    do
    {
      v48 = 0;
      do
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(v40);
        }

        v49 = *(*(&v54 + 1) + 8 * v48);
        if (!sub_1AF2F8430(v49, v43, v44, v45))
        {
          sub_1AF2F84A0(v49, &v59, a3, a4);
        }

        ++v48;
      }

      while (v46 != v48);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v54, v63, 16);
      v46 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1AF2F872C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF2F8814(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_skeleton(a1, a2, a3, a4);
  v9 = objc_msgSend_jointBindTransforms(v5, v6, v7, v8);
  v13 = objc_msgSend_elementCount(v9, v10, v11, v12);
  v17 = objc_msgSend_jointPaths(a1, v14, v15, v16);
  v19 = v17;
  if (v17)
  {
    v17 = objc_opt_new();
    v21 = v17;
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v18, i, v20);
        v27 = objc_msgSend_jointPaths(v5, v24, v25, v26);
        v30 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, i, v29);
        v17 = objc_msgSend_setObject_forKeyedSubscript_(v21, v31, v23, v30);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  *&v32 = MEMORY[0x1EEE9AC00](v17, v18).n128_u64[0];
  v36 = objc_msgSend_jointBindTransforms(v5, v33, v34, v35, v32);
  objc_msgSend_getDouble4x4Array_maxCount_(v36, v37, (&v69 - 16 * v13) & 0xFFFFFFFFFFFFFFE0, v13);
  if (v19)
  {
    v41 = objc_msgSend_jointPaths(a1, v38, v39, v40);
    v13 = objc_msgSend_count(v41, v42, v43, v44);
  }

  v48 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v38, v13, v40);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (v19)
      {
        v50 = objc_msgSend_jointPaths(a1, v45, v46, v47);
        v53 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, j, v52);
        v56 = objc_msgSend_objectForKeyedSubscript_(v21, v54, v53, v55);
        objc_msgSend_unsignedLongValue(v56, v57, v58, v59);
      }

      __invert_d4();
      v60 = MEMORY[0x1E696B098];
      v61 = sub_1AF2F8A10(&v70);
      v65 = objc_msgSend_valueWithVFXMatrix4_(v60, v62, v63, v64, v61);
      objc_msgSend_addObject_(v48, v66, v65, v67);
    }
  }

  if (v21)
  {
  }

  return v48;
}

uint64_t sub_1AF2F8A44(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_jointPaths(a1, a2, a3, a4);
  if (!objc_msgSend_count(v5, v6, v7, v8))
  {
    return 0;
  }

  v12 = objc_msgSend_jointPaths(a1, v9, v10, v11);
  v15 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, 0, v14);
  v19 = v15;
  if (!v15)
  {
    return v19;
  }

  if (!objc_msgSend_length(v15, v16, v17, v18))
  {
    return 0;
  }

  v22 = objc_msgSend_substringToIndex_(v19, v20, 1, v21);
  if (objc_msgSend_isEqualToString_(v22, v23, @"/", v24))
  {
    v19 = objc_msgSend_substringFromIndex_(v19, v25, 1, v26);
  }

  v27 = objc_msgSend_rangeOfString_(v19, v25, @"/", v26);
  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v19;
  }

  return objc_msgSend_substringToIndex_(v19, v28, v27, v29);
}

void sub_1AF2F8B08(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF2F8B50(void *a1)
{
  if (a1)
  {
    sub_1AF2F8B50(*a1);
    sub_1AF2F8B50(a1[1]);

    operator delete(a1);
  }
}

double sub_1AF2F8B9C(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E9B18];
  v3 = *(MEMORY[0x1E69E9B18] + 16);
  v4 = *(a1 + 16);
  v5 = vmulq_f32(*a1, *a1);
  *v5.i8 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  v6 = vmulq_f32(v4, v4);
  *v6.i8 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v7 = vsqrt_f32(vadd_f32(vzip1_s32(*v5.i8, *v6.i8), vzip2_s32(*v5.i8, *v6.i8)));
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = vmulq_f32(v8, v8);
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v11.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v10.f32, v11)));
  *v10.f32 = v7;
  v10.i64[1] = __PAIR64__(1.0, v11.u32[0]);
  __asm { FMOV            V5.4S, #1.0 }

  v17 = vdivq_f32(_Q5, v10);
  v18.i64[0] = 0;
  v18.i64[1] = v17.u32[2];
  v19 = *(MEMORY[0x1E69E9B18] + 32);
  v20 = *(MEMORY[0x1E69E9B18] + 48);
  v21 = vdivq_f32(*a1, vdupq_lane_s32(v7, 0));
  v22 = vdivq_f32(v4, vdupq_lane_s32(v7, 1));
  v23 = vdivq_f32(v8, vdupq_lane_s32(v11, 0));
  v24 = vzip1q_s32(v21, v23);
  v25 = vzip2q_s32(v21, v23);
  v26 = vzip1q_s32(v22, v20);
  v27 = vzip2q_s32(v22, v20);
  v28 = vzip1q_s32(v24, v26);
  v29 = vzip1q_s32(v25, v27);
  v41 = v8;
  v42 = v9;
  do
  {
    *(&v43 + v1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v1))), v3, *(&v39 + v1), 1), v19, *(&v39 + v1), 2), xmmword_1AFE47A00, *(&v39 + v1), 3);
    v1 += 16;
  }

  while (v1 != 64);
  v30 = 0;
  v32.i64[0] = 0;
  v32.i32[2] = 0;
  v31.i32[0] = 0;
  v31.i64[1] = 0;
  v31.i32[1] = v17.i32[1];
  v32.i32[3] = v17.i32[3];
  v33 = vzip2q_s32(v24, v26);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17.u32[0], COERCE_FLOAT(*(&v39 + v30))), v31, *(&v39 + v30), 1), v18, *(&v39 + v30), 2), v32, *(&v39 + v30), 3);
    v30 += 16;
  }

  while (v30 != 64);
  v34 = 0;
  v35 = vzip2q_s32(v25, v27);
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v39 + v34))), v33, *(&v39 + v34), 1), v29, *(&v39 + v34), 2), v35, *(&v39 + v34), 3);
    v34 += 16;
  }

  while (v34 != 64);
  v36 = 0;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  do
  {
    *(&v43 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v39 + v36))), v3, *(&v39 + v36), 1), v19, *(&v39 + v36), 2), xmmword_1AFE21180, *(&v39 + v36), 3);
    v36 += 16;
  }

  while (v36 != 64);
  v37 = vmulq_n_f32(v21, *v7.i32);
  v37.i32[1] = vnegq_f32(v37).i32[1];
  return *v37.i64;
}

uint64_t sub_1AF2F8D98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_VFXFloat3Value(a2, a2, a3, a4);
  if (v9.f32[0] == 0.0 && v9.f32[1] == 0.0 && v9.f32[2] == 0.0)
  {
    return a2;
  }

  v11 = MEMORY[0x1E696B098];
  *&v12 = vmulq_n_f32(v9, *(a1 + 32)).u64[0];

  return objc_msgSend_valueWithVFXFloat3_(v11, v6, v7, v8, v12);
}

void sub_1AF2F8E14(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_1AF10A1D0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_1AF2F8F4C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1AF2F9020(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1AF2F90F0(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AF10A1D0();
  }

  return result;
}

void *sub_1AF2F91B8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_1AF10A228(result, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void sub_1AF2F9254(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1AF2F96EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  memset(v2, 0, sizeof(v2));
  sub_1AF1B31F8(v1, v2);
}

void sub_1AF2F99E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  sub_1AF1B31F8(v5, &v6);
}

CFStringRef sub_1AF2F9F98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

void sub_1AF2FA3E0(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 40));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 48), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 40);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF2FA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF2FA9F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 48);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4D18(v10);
    }
  }
}

void sub_1AF2FAE10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF2FAF54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF2FB020(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF2FB0CC(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF2FB204(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF2FB340(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF2FB3E8;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

void *sub_1AF2FB880(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_count(a1, v3, v4, v5);
  v9 = objc_msgSend_initWithCapacity_(v2, v7, v6, v8);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v27, v33, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(a1);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = CFGetTypeID(v15);
        if (v16 == sub_1AF1A2D3C())
        {
          v19 = objc_msgSend_meshWithMeshRef_(VFXMesh, v17, v15, v18);
          goto LABEL_10;
        }

        if (v16 == sub_1AF15B134())
        {
          v19 = objc_msgSend_bezierCurveGeometryWithGeometryRef_(VFXBezierCurveGeometry, v22, v15, v23);
LABEL_10:
          if (v19)
          {
            objc_msgSend_addObject_(v9, v20, v19, v21);
          }

          continue;
        }

        v24 = CFCopyTypeIDDescription(v16);
        v25 = sub_1AF0D5194();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v24;
          _os_log_error_impl(&dword_1AF0CE000, v25, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown geometry class %@", buf, 0xCu);
        }

        CFRelease(v24);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v20, &v27, v33, 16);
    }

    while (v12);
  }

  return v9;
}

void *sub_1AF2FBA68(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v7 = &a2[a3];
  if (&a2[a3] > objc_msgSend_count(a1, a2, a3, a4))
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF7100(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v21 = objc_msgSend_initWithCapacity_(v16, v17, v4, v18);
  if (v5 < v7)
  {
    *&v22 = 138412290;
    v33 = v22;
    do
    {
      v23 = objc_msgSend_objectAtIndexedSubscript_(a1, v19, v5, v20, v33);
      v24 = CFGetTypeID(v23);
      if (v24 == sub_1AF1A2D3C())
      {
        v27 = objc_msgSend_meshWithMeshRef_(VFXMesh, v25, v23, v26);
      }

      else
      {
        if (v24 != sub_1AF15B134())
        {
          v30 = CFCopyTypeIDDescription(v24);
          v31 = sub_1AF0D5194();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = v33;
            v35 = v30;
            _os_log_error_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_ERROR, "Unreachable code: Unknown geometry class %@", buf, 0xCu);
          }

          CFRelease(v30);
          goto LABEL_15;
        }

        v27 = objc_msgSend_bezierCurveGeometryWithGeometryRef_(VFXBezierCurveGeometry, v28, v23, v29);
      }

      if (v27)
      {
        objc_msgSend_addObject_(v21, v19, v27, v20);
      }

LABEL_15:
      ++v5;
      --v4;
    }

    while (v4);
  }

  return v21;
}

void sub_1AF2FBE10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AF2FBE8C(*(a1 + 40));
    sub_1AF1B4918(v6, v7, *(*(a1 + 32) + 169));
  }
}

void *sub_1AF2FBE8C(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_count(a1, v3, v4, v5);
  v9 = objc_msgSend_initWithCapacity_(v2, v7, v6, v8);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v10, &v22, v26, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(a1);
        }

        v18 = objc_msgSend___CFObject(*(*(&v22 + 1) + 8 * v17), v12, v13, v14);
        objc_msgSend_addObject_(v9, v19, v18, v20);
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v12, &v22, v26, 16);
    }

    while (v15);
  }

  return v9;
}

void sub_1AF2FC2C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_count(*(a1 + 40), v6, v7, v8);
    if (v10 >= 1)
    {
      v13 = v10;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v11, i, v12);
        objc_msgSend_floatValue(v15, v16, v17, v18);
        sub_1AF1B4F44(v9, i, v19);
      }
    }
  }
}

uint64_t sub_1AF2FC5FC()
{
  for (i = 0; i != 128; ++i)
  {
    v1 = objc_alloc(MEMORY[0x1E696AEC0]);
    result = objc_msgSend_initWithFormat_(v1, v2, @"weights[%d]", v3, i);
    qword_1EB6588A8[i] = result;
  }

  return result;
}

void sub_1AF2FC884(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    sub_1AF1B4F44(v5, v6, v7);
  }
}

void sub_1AF2FD708(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 104) == 1)
  {
    v5 = objc_msgSend_count(*(a1 + 32), a2, a3, a4);
    v9 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    v70 = v5;
    if (v5)
    {
      v10 = 0;
      do
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v6, v10, v8);
        v9[v10++] = objc_msgSend_intValue(v11, v12, v13, v14);
      }

      while (v70 != v10);
    }

    v15 = objc_msgSend_count(*(a1 + 40), v6, v7, v8);
    v19 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
    if (v15)
    {
      for (i = 0; i != v15; v19[i++] = v25)
      {
        v21 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v16, i, v18);
        objc_msgSend_floatValue(v21, v22, v23, v24);
      }
    }
  }

  else
  {
    v19 = 0;
    v9 = 0;
    v15 = 0;
    v70 = objc_msgSend_count(*(a1 + 48), a2, a3, a4);
  }

  v69 = v15;
  if (*(a1 + 105) == 1)
  {
    v26 = objc_msgSend_count(*(a1 + 56), v16, v17, v18);
    v27 = 4 * v26;
    v31 = malloc_type_malloc(v27, 0x100004052888210uLL);
    if (v26)
    {
      for (j = 0; j != v26; v31[j++] = objc_msgSend_intValue(v33, v34, v35, v36))
      {
        v33 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 56), v28, j, v30);
      }
    }

    v67 = v26;
    v37 = objc_msgSend_count(*(a1 + 64), v28, v29, v30);
    v38 = malloc_type_malloc(4 * v37, 0x100004052888210uLL);
    if (v37)
    {
      for (k = 0; k != v37; v38[k++] = objc_msgSend_intValue(v40, v41, v42, v43))
      {
        v40 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 64), v16, k, v18);
      }
    }

    if (*(a1 + 106))
    {
      v47 = malloc_type_malloc(v27, 0x100004052888210uLL);
      if (v67)
      {
        for (m = 0; m != v67; v47[m++] = objc_msgSend_intValue(v49, v50, v51, v52))
        {
          v49 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 72), v44, m, v46);
        }
      }

      v53 = objc_msgSend_count(*(a1 + 80), v44, v45, v46);
      v54 = malloc_type_malloc(4 * v53, 0x100004052888210uLL);
      if (v53)
      {
        v55 = 0;
        v68 = v53;
        do
        {
          v56 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 80), v16, v55, v18);
          objc_msgSend_floatValue(v56, v57, v58, v59);
          v54[v55++] = v60;
        }

        while (v53 != v55);
      }

      else
      {
        v68 = 0;
      }

      v61 = v37;
      v62 = v67;
    }

    else
    {
      v54 = 0;
      v47 = 0;
      v68 = 0;
      v61 = v37;
      v62 = v67;
    }
  }

  else
  {
    v54 = 0;
    v47 = 0;
    v68 = 0;
    v38 = 0;
    v61 = 0;
    v31 = 0;
    v62 = 0;
  }

  v63 = objc_msgSend_morphRef(*(a1 + 88), v16, v17, v18);
  v64 = *(a1 + 96);
  v65 = *(*(a1 + 88) + 169);
  v71[0] = __PAIR64__(v69, v70);
  v71[1] = v9;
  v71[2] = v19;
  v72 = v62;
  v73 = 0;
  v74 = v31;
  v75 = v61;
  v76 = 0;
  v77 = v38;
  v78 = v68;
  v79 = 0;
  v80 = v47;
  v81 = v54;
  sub_1AF1B4478(v63, v64, v65, v71);
  free(v9);
  free(v19);
  free(v31);
  free(v38);
  free(v47);
  free(v54);
  if (v70)
  {
    v66 = 0;
    do
    {
      sub_1AF1B4F44(v63, v66++, 0.0);
    }

    while (v70 != v66);
  }
}

uint64_t sub_1AF2FDA58(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = objc_msgSend_unsignedIntegerValue(a2, a2, a3, a4);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, v8 + v7, v10);
  objc_msgSend_floatValue(v11, v12, v13, v14);
  v16 = v15;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  v22 = objc_msgSend_unsignedIntegerValue(a3, v19, v20, v21);
  v25 = objc_msgSend_objectAtIndexedSubscript_(v18, v23, v22 + v17, v24);
  objc_msgSend_floatValue(v25, v26, v27, v28);
  if (v16 < v29)
  {
    return -1;
  }

  else
  {
    return v16 > v29;
  }
}

uint64_t sub_1AF2FDB64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  if (result)
  {
    v6 = *(a1 + 40) == 1;

    return sub_1AF1B4400(result, v6);
  }

  return result;
}

uint64_t sub_1AF2FDCCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  if (result)
  {
    v6 = (*(a1 + 40) & 1) == 0;

    return sub_1AF1B525C(result, v6);
  }

  return result;
}

void sub_1AF2FDE3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1B5C80(v5, v6);
}

uint64_t sub_1AF2FDEF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  sub_1AF1B5708(v5, v9, 1, &unk_1F24EC0F8);
  v13 = *(a1 + 32);

  return objc_msgSend__updateModelFromPresentation(v13, v10, v11, v12);
}

id *sub_1AF2FDF54(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  result = sub_1AF16CDEC(a3);
  if (result)
  {
    v8 = result;
    v9 = objc_msgSend_meshSourceWithMeshSourceRef_(VFXMeshSource, v6, a4, v7);
    v14 = objc_msgSend__encodeDataAsHalf(v8, v10, v11, v12);

    return objc_msgSend_set_encodeDataAsHalf_(v9, v13, v14, v15);
  }

  return result;
}

uint64_t sub_1AF2FE048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  sub_1AF1B526C(v5, v9, 1, &unk_1F24EC0F8);
  v13 = *(a1 + 32);

  return objc_msgSend__updateModelFromPresentation(v13, v10, v11, v12);
}

uint64_t sub_1AF2FE294(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2FE2F4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF2FF12C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  return objc_msgSend_countByEnumeratingWithState_objects_count_(v6, a2, va, va1, 16);
}

uint64_t sub_1AF2FF14C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return objc_msgSend_countByEnumeratingWithState_objects_count_(a17, a2, &a33, &a65, 16);
}

void sub_1AF2FF16C(uint64_t *a1, uint64_t a2, void *a3, int __e, int a5)
{
  v9 = ldexp(1.0, __e);
  v25 = 0u;
  v26 = 0u;
  sub_1AF1AE1A8(a2, &v25);
  v10 = sub_1AF1AE6EC(a2);
  if (v10 != 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2))
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF72CC(v11);
    }
  }

  v12 = 3 * v10;
  v13 = a1[1] - *a1;
  v14 = v25;
  sub_1AF121C28(a1, 3 * v10 + (v13 >> 2));
  if (v10 >= 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = v9;
    v24 = v20;
    do
    {
      *v15.i64 = sub_1AF279750(BYTE4(v26), v14, v15, v16, v17);
      v16 = v15.f32[2];
      if (a5)
      {
        v21 = *a1;
        v22 = v24;
        *v15.f32 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(*v15.f32, v24)));
        *(*a1 + v13 + v18) = v15.i64[0];
      }

      else
      {
        v23 = (*a3 + v18);
        v17 = v23[1].f32[0];
        v21 = *a1;
        v22 = v24;
        *v15.f32 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vsub_f32(*v15.f32, *v23), v24)));
        *(*a1 + v13 + v18) = v15.i64[0];
        v16 = v15.f32[2] - v17;
      }

      v15.f32[0] = v16 * v22;
      *(v21 + v13 + v18 + 8) = llroundf(v16 * v22);
      v14 = (v14 + BYTE6(v26));
      v19 += 3;
      v18 += 12;
    }

    while (v19 < v12);
  }
}

uint64_t sub_1AF2FF2F8(void *a1, uint64_t a2)
{
  v4 = sub_1AF1A4CE8(a2, 0);
  v5 = sub_1AF1AE6EC(v4);
  sub_1AF3000EC(a1, v5);
  v40 = 0u;
  v41 = 0u;
  sub_1AF1AE1A8(v4, &v40);
  if (v5 >= 1)
  {
    v9 = 0;
    for (i = 0; i != v5; ++i)
    {
      *v6.i64 = sub_1AF279750(BYTE4(v41), (v40 + i * BYTE6(v41)), v6, v7, v8);
      v11 = *a1 + v9;
      *v11 = v6.i64[0];
      *(v11 + 8) = v6.i32[2];
      v9 += 12;
    }
  }

  v12 = sub_1AF1A4C6C(a2, 0, 0);
  v13 = sub_1AF1A3CCC(a2);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v14 = &off_1AFE20000;
  if (v13 < 1)
  {
    v17 = 0;
  }

  else
  {
    for (j = 0; j != v13; ++j)
    {
      v16 = sub_1AF1A3D1C(a2, j, 0);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      sub_1AF1A767C(v16, v12, &v28);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1AF2FF5F8;
      v23[3] = &unk_1E7A7EC20;
      v23[4] = &v36;
      v23[5] = &v32;
      sub_1AF1A80E4(&v24, v23, v30);
    }

    v17 = v37[3];
    v14 = &off_1AFE20000;
  }

  sub_1AF121C28(a1 + 3, v17);
  sub_1AF121C28(a1 + 6, v33[3]);
  v37[3] = 0;
  v33[3] = 0;
  if (v13 >= 1)
  {
    v18 = 0;
    v19 = *(v14 + 103);
    do
    {
      v20 = sub_1AF1A3D1C(a2, v18, 0);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      sub_1AF1A767C(v20, v12, &v28);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = v19;
      v22[2] = sub_1AF2FF62C;
      v22[3] = &unk_1E7A7EC48;
      v22[5] = &v32;
      v22[6] = a1;
      v22[4] = &v36;
      sub_1AF1A80E4(&v24, v22, v30);
      ++v18;
    }

    while (v13 != v18);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return 1;
}

void sub_1AF2FF5C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF2FF5F8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    ++*(*(*(result + 32) + 8) + 24);
    *(*(*(result + 40) + 8) + 24) += a4;
  }

  return result;
}

void *sub_1AF2FF62C(void *result, uint64_t a2, int *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v4 = result[6];
    v5 = *(result[4] + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    *(*(v4 + 24) + 4 * v6) = a4;
    v7 = *(v4 + 48);
    v8 = a4;
    do
    {
      v9 = *(result[5] + 8);
      v10 = *(v9 + 24);
      *(v9 + 24) = v10 + 1;
      v11 = *a3++;
      *(v7 + 4 * v10) = v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

BOOL sub_1AF2FF684(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_nodeRef(a2, a2, a3, a4);
  v7 = sub_1AF1B9158(v6);
  v8 = sub_1AF1B669C(v7);
  if (sub_1AF170774(v8))
  {
    return 0;
  }

  v60 = a1;
  v10 = sub_1AF170740(v8);
  v61 = sub_1AF1A4C6C(v10, 0, 0);
  v11 = sub_1AF1A4CE8(v10, 0);
  v12 = sub_1AF1AE6EC(v11);
  v74 = 0;
  v72 = 0u;
  *v73 = 0u;
  *v70 = 0u;
  *v71 = 0u;
  sub_1AF2FF2F8(v70, v10);
  v13 = sub_1AF15B294(v7);
  v14 = sub_1AF15B294(v13);
  Count = CFArrayGetCount(v14);
  v69 = 5;
  v59 = v70[1] - v70[0];
  v68 = sub_1AF1B4CCC(v13) == 1;
  __p = 0;
  v66 = 0;
  v67 = 0;
  sub_1AF17A60C(&__p, 3 * Count * 0xAAAAAAAAAAAAAAABLL * (v59 >> 2));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
      v18 = sub_1AF1A4CE8(ValueAtIndex, 0);
      v19 = v18;
      if (v18)
      {
        if (sub_1AF1AE6EC(v18) == v12)
        {
          sub_1AF2FF16C(&__p, v19, v70, 5, v68);
        }

        else
        {
          if ((sub_1AF1B58F8(v13) & 1) == 0)
          {
            v22 = sub_1AF0D5194();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_msgSend_name(a2, v23, v24, v25);
              *buf = 138412802;
              v76 = v28;
              v77 = 2048;
              v78 = a2;
              v79 = 2048;
              v80 = v13;
              _os_log_error_impl(&dword_1AF0CE000, v22, OS_LOG_TYPE_ERROR, "Error: Internal consistency error, %@'s (%p) morph %p is not sparse", buf, 0x20u);
            }
          }

          v26 = sub_1AF1A3D1C(ValueAtIndex, 0, 0);
          v27 = sub_1AF1AEC88(v19, v26, v12, v61);
          sub_1AF2FF16C(&__p, v27, v70, 5, v68);
          if (v27)
          {
            CFRelease(v27);
          }
        }
      }

      else
      {
        v20 = v66 - __p;
        sub_1AF121C28(&__p, (v59 >> 2) + ((v66 - __p) >> 2));
        v21 = v66 - (__p + v20);
        if (v21 >= 1)
        {
          bzero(__p + v20, v21);
        }
      }
    }
  }

  v29 = v71[1];
  v30 = v72;
  v31 = v73[0];
  v32 = v73[1];
  v33 = objc_alloc(MEMORY[0x1E695DF88]);
  v36 = objc_msgSend_initWithLength_(v33, v34, v59 * Count + 1024, v35);
  v40 = objc_msgSend_mutableBytes(v36, v37, v38, v39);
  v62 = 0;
  v63 = 0;
  v41 = sub_1AFDCEB7C(&v64, v29, v31, __p, 3, 0xAAAAAAAAAAAAAAABLL * (v59 >> 2), (v30 - v29) >> 2, (v32 - v31) >> 2, Count, v40, v59 * Count + 1024, &v63, &v62);
  v9 = v41 == 0;
  if (v41)
  {
    v44 = sub_1AF0D5194();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7350();
    }
  }

  else
  {
    objc_msgSend_setLength_(v36, v42, v63, v43);
    objc_msgSend_encodeObject_forKey_(v60, v45, v36, @"morpherCompressedData");

    v46 = objc_alloc(MEMORY[0x1E695DF88]);
    v49 = objc_msgSend_initWithCapacity_(v46, v47, 32 * Count, v48);
    objc_msgSend_appendBytes_length_(v49, v50, &v69, 1);
    objc_msgSend_appendBytes_length_(v49, v51, &v68, 1);
    if (Count >= 1)
    {
      for (j = 0; j != Count; ++j)
      {
        v54 = CFArrayGetValueAtIndex(v14, j);
        v55 = sub_1AF16CBEC(v54);
        CFStringGetCString(v55, buf, 512, 0x600u);
        v56 = strlen(buf);
        objc_msgSend_appendBytes_length_(v49, v57, buf, v56 + 1);
      }
    }

    objc_msgSend_encodeObject_forKey_(v60, v52, v49, @"morpherMetaData");
  }

  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

  if (v71[1])
  {
    *&v72 = v71[1];
    operator delete(v71[1]);
  }

  if (v70[0])
  {
    v70[1] = v70[0];
    operator delete(v70[0]);
  }

  return v9;
}

uint64_t sub_1AF2FFB94(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v11 = a2[1];
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 2);
  v14 = v13 * a4;
  v15 = ldexp(1.0, -a5);
  *&v15 = v15;
  v35 = *&v15;
  v16 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  if (a6)
  {
    if (v11 != v12)
    {
      if (v13 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v13;
      }

      v19 = (*a1 + 4 * v14 * a3 + 8);
      v20 = 4 * a4;
      v21 = (v16 + 8);
      do
      {
        *(v21 - 1) = vmul_n_f32(vcvt_f32_s32(*(v19 - 2)), *v35.i32);
        *v21 = *v35.i32 * *v19;
        v19 = (v19 + v20);
        v21 = (v21 + v20);
        --v18;
      }

      while (v18);
    }
  }

  else if (v11 != v12)
  {
    if (v13 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v13;
    }

    v23 = vdup_lane_s32(v35, 0);
    v24 = (*a1 + 4 * v14 * a3 + 8);
    v25 = 4 * a4;
    v26 = (v16 + 8);
    v27 = (*a2 + 8);
    do
    {
      v28 = *v27;
      *(v26 - 1) = vmla_f32(*(v27 - 2), v23, vcvt_f32_s32(*(v24 - 2)));
      *v26 = v28 + (*v24 * *v35.i32);
      v24 = (v24 + v25);
      v26 = (v26 + v25);
      v27 += 3;
      --v22;
    }

    while (v22);
  }

  v29 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v17, v16, 4 * v14, 1);
  v36[0] = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v30, v29, @"kGeometrySourceSemanticPosition", v13, 1, a4, 4, 0, 0);
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v36, 1);
  return objc_msgSend_meshWithSources_elements_(VFXMesh, v33, v32, MEMORY[0x1E695E0F0]);
}

void *sub_1AF2FFDB4(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_decodeObjectOfClass_forKey_(a1, v5, v4, @"morpherCompressedData");
  if (!v6)
  {
    return 0;
  }

  v10 = v6;
  v11 = objc_msgSend_model(a2, v7, v8, v9);
  v15 = objc_msgSend_modelRef(v11, v12, v13, v14);
  v74 = 0;
  v72 = 0u;
  *v73 = 0u;
  *v70 = 0u;
  *v71 = 0u;
  v16 = sub_1AF1B2C1C(v15);
  sub_1AF2FF2F8(v70, v16);
  v20 = objc_msgSend_bytes(v10, v17, v18, v19);
  v24 = objc_msgSend_length(v10, v21, v22, v23);
  if (!sub_1AFDCC0A0(v20, v24, v67))
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v70[1] - v70[0]) >> 2);
    v28 = v71[1];
    v29 = v72;
    v30 = v73[0];
    v31 = v73[1];
    v32 = v68;
    __p = 0;
    v65 = 0;
    v66 = 0;
    sub_1AF121C28(&__p, 3 * v27 * v68);
    v36 = objc_msgSend_bytes(v10, v33, v34, v35);
    v40 = objc_msgSend_length(v10, v37, v38, v39);
    if (sub_1AFDCC250(&v69, v36, v40, v28, v30, 3, v27, (v29 - v28) >> 2, (v31 - v30) >> 2, __p))
    {
      v41 = sub_1AF0D5194();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF73B8();
      }
    }

    else
    {
      v43 = objc_opt_class();
      v45 = objc_msgSend_decodeObjectOfClass_forKey_(a1, v44, v43, @"morpherMetaData");
      if (v45)
      {
        v49 = objc_msgSend_bytes(v45, v46, v47, v48);
        v50 = *v49;
        v51 = v49[1];
        v26 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v52, v32, v53);
        if (v32)
        {
          v54 = 0;
          v55 = v49 + 2;
          v56 = *MEMORY[0x1E695E480];
          do
          {
            v57 = sub_1AF2FFB94(&__p, v70, v54, 3, v50, v51);
            objc_msgSend_addObject_(v26, v58, v57, v59);
            v60 = CFStringCreateWithCString(v56, v55, 0x8000100u);
            objc_msgSend_setName_(v57, v61, v60, v62);
            if (v60)
            {
              CFRelease(v60);
            }

            v55 += strlen(v55) + 1;
            ++v54;
          }

          while (v32 != v54);
        }

        goto LABEL_11;
      }

      v63 = sub_1AF0D5194();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF73EC();
      }
    }

    v26 = 0;
LABEL_11:
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    goto LABEL_13;
  }

  v25 = sub_1AF0D5194();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF7384();
  }

  v26 = 0;
LABEL_13:
  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

  if (v71[1])
  {
    *&v72 = v71[1];
    operator delete(v71[1]);
  }

  if (v70[0])
  {
    v70[1] = v70[0];
    operator delete(v70[0]);
  }

  return v26;
}

void sub_1AF300098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1AF104BA0(&a17);
  _Unwind_Resume(a1);
}

void sub_1AF3000EC(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1AF300128(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_1AF300128(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      sub_1AF10A1D0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_1AF300388(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    sub_1AF300304(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_1AF3002B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AF300304(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_1AF300388(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF3005BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, a2, a4);
  objc_msgSend__setParent_(v5, v6, *(a1 + 32), v7);
  v10 = *(*(a1 + 32) + 32);

  return objc_msgSend_addObject_(v10, v8, v5, v9);
}

CFStringRef sub_1AF3008D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16CC34(v5, v6);
}

uint64_t sub_1AF300CAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2->i64[1];
  if ((v2[3].i8[0] & 0x10) != 0)
  {
    sub_1AF1BA204(v3, &v2[4]);
  }

  else
  {
    sub_1AF1B9F10(v3, v2[8]);
    sub_1AF1BA078(*(*(a1 + 32) + 8), *(*(a1 + 32) + 160), v4, v5, v6, v7, v8, v9);
    v16 = *(a1 + 32);
    v17 = (*(v16 + 49) >> 2) & 3;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        sub_1AF1BA184(*(v16 + 8), *(v16 + 144), v10, v11, v12, v13, v14, v15);
      }
    }

    else if (v17)
    {
      sub_1AF1BA104(*(v16 + 8), *(v16 + 144));
    }

    else
    {
      sub_1AF1BA148(*(v16 + 8), *(v16 + 144));
    }
  }

  sub_1AF1B88DC(*(*(a1 + 32) + 8), *(*(a1 + 32) + 176));
  sub_1AF1BACA4(*(*(a1 + 32) + 8), *(*(a1 + 32) + 192));
  sub_1AF1B8A78(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 49) >> 4) & 1);
  sub_1AF1BADC4(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 49) >> 5) & 1);
  sub_1AF1BAF5C(*(*(a1 + 32) + 8), *(*(a1 + 32) + 184));
  sub_1AF1BB008(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 48) >> 6) & 1);
  sub_1AF1BB034(*(*(a1 + 32) + 8), *(*(a1 + 32) + 49) & 1);
  sub_1AF1BB08C(*(*(a1 + 32) + 8), (*(*(a1 + 32) + 49) >> 1) & 1);
  sub_1AF1BB060(*(*(a1 + 32) + 8), *(*(a1 + 32) + 48) >> 7);
  v21 = *(a1 + 32);

  return objc_msgSend__updateEntityPresentationFromModel(v21, v18, v19, v20);
}

void sub_1AF301350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_1AF30144C;
  v17 = sub_1AF30145C;
  v18 = a2;
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF301468;
  v12[3] = &unk_1E7A7ECA0;
  v9 = *(a1 + 48);
  v12[4] = &v13;
  v12[5] = v9;
  (*(v8 + 16))(v8, a2, 0, v12, a5, a6, a7);
  objc_msgSend_addObject_(*(a1 + 32), v10, v14[5], v11);
  _Block_object_dispose(&v13, 8);
}

void sub_1AF301434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF301468(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 40) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

uint64_t sub_1AF301598(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF3015F8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF302550(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend__copyAnimationsFrom_(a2, a2, a1, a4);
  v9 = objc_msgSend_childNodes(a1, v6, v7, v8);
  v13 = objc_msgSend_childNodes(a2, v10, v11, v12);
  v17 = objc_msgSend_count(v9, v14, v15, v16);
  if (objc_msgSend_count(v13, v18, v19, v20) == v17)
  {
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v24 = objc_msgSend_objectAtIndexedSubscript_(v9, v21, i, v22);
        v27 = objc_msgSend_objectAtIndexedSubscript_(v13, v25, i, v26);
        sub_1AF302550(v24, v27);
      }
    }
  }

  else
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7420();
    }
  }
}

void sub_1AF303130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF303148(uint64_t a1, char *a2, _BYTE *a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(*(a1 + 32), a2, @"model", a4) && objc_msgSend_model(a2, v7, v8, v9) || objc_msgSend_isEqualToString_(*(a1 + 32), v7, @"kCameraKey", v9) && objc_msgSend_camera(a2, v10, v11, v12) || (result = objc_msgSend_isEqualToString_(*(a1 + 32), v10, @"kLightKey", v12), result) && (result = objc_msgSend_light(a2, v14, v15, v16)) != 0)
  {
    result = 1;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

float32x4_t sub_1AF3041C0(int8x16_t *a1, __n128 *a2, int8x16_t *a3, float32x4_t result, float32x4_t a5, int32x4_t a6, __n128 a7)
{
  if (a3)
  {
    v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
    v8 = vmulq_f32(result, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
    v62 = (v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0;
    v9 = 1.0;
    if (v62)
    {
      v9 = -1.0;
    }

    v10 = vmulq_f32(result, result);
    v11 = vmulq_f32(a5, a5);
    v12 = vadd_f32(vzip1_s32(*v10.i8, *v11.i8), vzip2_s32(*v10.i8, *v11.i8));
    v13 = vextq_s8(v10, v10, 8uLL);
    *v13.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v13.f32, *&vextq_s8(v11, v11, 8uLL)), v12));
    v14 = vmulq_f32(a6, a6);
    v13.i32[2] = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
    v15 = vmulq_n_f32(v13, v9);
    v16 = vcltzq_f32(v15);
    v17 = vmvnq_s8(vorrq_s8(v16, vcgezq_f32(v15)));
    v17.i32[3] = v17.i32[2];
    v17.i32[0] = vmaxvq_u32(v17);
    v16.i32[0] = -1;
    *a3 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v17, v16), 0), v15, 0);
  }

  if (a2)
  {
    *a2 = a7;
  }

  if (a1)
  {
    if (a3)
    {
      v18 = *a3;
    }

    else
    {
      v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
      v20 = vmulq_f32(result, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
      v62 = (v20.f32[2] + vaddv_f32(*v20.f32)) < 0.0;
      v21 = 1.0;
      if (v62)
      {
        v21 = -1.0;
      }

      v22 = vmulq_f32(result, result);
      v23 = vmulq_f32(a5, a5);
      v24 = vadd_f32(vzip1_s32(*v22.i8, *v23.i8), vzip2_s32(*v22.i8, *v23.i8));
      v25 = vextq_s8(v22, v22, 8uLL);
      *v25.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v25.f32, *&vextq_s8(v23, v23, 8uLL)), v24));
      v26 = vmulq_f32(a6, a6);
      v25.i32[2] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
      v27 = vmulq_n_f32(v25, v21);
      v28 = vcltzq_f32(v27);
      v29 = vmvnq_s8(vorrq_s8(v28, vcgezq_f32(v27)));
      v29.i32[3] = v29.i32[2];
      v29.i32[0] = vmaxvq_u32(v29);
      v28.i32[0] = -1;
      v18 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v29, v28), 0), v27, 0);
    }

    v30 = vceqzq_f32(v18);
    v30.i32[3] = v30.i32[2];
    if ((vmaxvq_u32(v30) & 0x80000000) == 0)
    {
      v31 = vdivq_f32(result, vdupq_lane_s32(*v18.f32, 0));
      v32 = vdivq_f32(a5, vdupq_lane_s32(*v18.f32, 1));
      v33 = vdivq_f32(a6, vdupq_laneq_s32(v18, 2));
      v34 = vmulq_f32(v31, v31);
      v35 = vmulq_f32(v32, v32);
      v36 = vmulq_f32(v33, v33);
      v37 = vzip2q_s32(v34, v36);
      v38 = vzip1q_s32(vzip1q_s32(v34, v36), v35);
      v39 = vtrn2q_s32(v34, v35);
      v39.i32[2] = v36.i32[1];
      v40 = vaddq_f32(vzip1q_s32(v37, vdupq_laneq_s32(v35, 2)), vaddq_f32(v38, v39));
      v39.i64[0] = 0x80000000800000;
      v39.i64[1] = 0x80000000800000;
      v41 = vcgeq_f32(v39, v40);
      v40.i32[3] = 0;
      v42 = vrsqrteq_f32(v40);
      v43 = vmulq_f32(v42, vrsqrtsq_f32(v40, vmulq_f32(v42, v42)));
      v44 = v41;
      v44.i32[3] = 0;
      v45 = vbslq_s8(vcltzq_s32(v44), v40, vmulq_f32(v43, vrsqrtsq_f32(v40, vmulq_f32(v43, v43))));
      v46 = vmulq_n_f32(v31, v45.f32[0]);
      v47 = vmulq_lane_f32(v32, *v45.f32, 1);
      v48 = vmulq_laneq_f32(v33, v45, 2);
      v49 = vuzp1q_s32(v48, v48);
      v50 = vuzp1q_s32(v47, v47);
      v51 = v46;
      if (v41.i32[0])
      {
        v52 = vmlaq_f32(vmulq_f32(vextq_s8(v49, v48, 0xCuLL), vnegq_f32(v47)), v48, vextq_s8(v50, v47, 0xCuLL));
        v51 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
      }

      v53 = vuzp1q_s32(v46, v46);
      v54 = v47;
      if (v41.i32[1])
      {
        v55 = vmlaq_f32(vmulq_f32(vextq_s8(v53, v46, 0xCuLL), vnegq_f32(v48)), v46, vextq_s8(v49, v48, 0xCuLL));
        v54 = vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL);
      }

      if (v41.i32[2])
      {
        v56 = vmlaq_f32(vmulq_f32(vextq_s8(v50, v47, 0xCuLL), vnegq_f32(v46)), v47, vextq_s8(v53, v46, 0xCuLL));
        v48 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
      }

      v57 = (*v51.i32 + *&v54.i32[1]) + v48.f32[2];
      if (v57 > 0.0)
      {
        v58 = sqrtf(v57 + 1.0);
        *v59.f32 = vsub_f32(*&vzip2q_s32(v54, vuzp1q_s32(v54, v48)), *&vtrn2q_s32(v48, vzip2q_s32(v48, v51)));
        v59.f32[2] = *&v51.i32[1] - *v54.i32;
        v59.f32[3] = v58 * v58;
        v60 = 0.5 / v58;
LABEL_22:
        v61 = vmulq_n_f32(v59, v60);
LABEL_33:
        v68 = vmvnq_s8(vceqq_f32(v61, v61));
        v68.i32[0] = vmaxvq_u32(v68);
        v54.i32[0] = -1;
        result = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v68, v54), 0), v61, xmmword_1AFE201A0);
        *a1 = result;
        return result;
      }

      v62 = *v51.i32 < *&v54.i32[1] || *v51.i32 < v48.f32[2];
      if (v62)
      {
        if (*&v54.i32[1] <= v48.f32[2])
        {
          v69 = vzip2q_s32(v51, v54).u64[0];
          v70 = __PAIR64__(v51.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v48.f32[2] + 1.0) - *v51.i32) - *&v54.i32[1])));
          v71 = vdup_lane_s32(*v54.i8, 0);
          v72 = vsub_f32(*v51.i8, v71);
          v71.i32[0] = v70.i32[0];
          v54.i32[0] = vmul_f32(v70, v71).u32[0];
          v54.i32[1] = v72.i32[1];
          *v59.f32 = vadd_f32(v69, *v48.f32);
          v59.i64[1] = v54.i64[0];
          v60 = 0.5 / v70.f32[0];
          goto LABEL_22;
        }

        v64 = sqrtf(((*&v54.i32[1] + 1.0) - *v51.i32) - v48.f32[2]);
        v67.f32[0] = *&v51.i32[1] + *v54.i32;
        v63 = vzip2q_s32(v51, v54).u64[0];
        *v54.i8 = vadd_f32(*v48.f32, v63);
        v67.f32[1] = v64 * v64;
        *&v67.u32[2] = vext_s8(*v54.i8, vsub_f32(*v48.f32, v63), 4uLL);
      }

      else
      {
        v64 = sqrtf(((*v51.i32 + 1.0) - *&v54.i32[1]) - v48.f32[2]);
        v67.f32[0] = v64 * v64;
        v65 = *&v51.i32[1] + *v54.i32;
        v66 = vzip2q_s32(v51, v54).u64[0];
        v54.i32[0] = vadd_f32(v66, *v48.f32).u32[0];
        v54.i32[1] = vsub_f32(v66, *&v48).i32[1];
        v67.f32[1] = v65;
        v67.i64[1] = v54.i64[0];
      }

      v61 = vmulq_n_f32(v67, 0.5 / v64);
      goto LABEL_33;
    }

    result.i64[0] = 0;
    *a1 = xmmword_1AFE201A0;
    if (a3)
    {
      result.i64[0] = 0;
      *a3 = 0u;
    }
  }

  return result;
}

uint64_t sub_1AF305714(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, a2, a4);
  v10 = objc_msgSend_presentationNode(v5, v6, v7, v8);
  v12 = *(a1 + 32);

  return objc_msgSend_addObject_(v12, v9, v10, v11);
}

void sub_1AF30581C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_lightRef(*(a1 + 40), a2, a3, a4);

  sub_1AF1BB108(v4, v5);
}

void sub_1AF305B98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_skinnerRef(*(a1 + 40), a2, a3, a4);

  sub_1AF1B92D8(v4, v5);
}

void sub_1AF305C80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_morphRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    v6 = sub_1AF1B63B0(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_1AF1B91A8(*(*(a1 + 40) + 8), v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_1AF305E80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_cameraRef(*(a1 + 40), a2, a3, a4);

  sub_1AF1BB2D4(v4, v5);
}

void sub_1AF305FB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend_modelRef(*(a1 + 40), a2, a3, a4);

  sub_1AF1B8AE4(v4, v5);
}

uint64_t sub_1AF3060EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3, a4);

  return sub_1AF1BC058(v4);
}

uint64_t sub_1AF30623C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3, a4);

  return sub_1AF1BC058(v4);
}

uint64_t sub_1AF306328(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  objc_msgSend_coreEntityHandleRef(*(a1 + 40), a2, a3, a4);

  return sub_1AF1BC058(v4);
}

id sub_1AF3071DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D4720, a4);
  qword_1ED73B328 = result;
  return result;
}

void sub_1AF3076BC(uint64_t a1, const char *a2, double a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_prepareWithTarget_implicitDuration_(*(a1 + 32), a2, *(a1 + 40), a5);
  if ((sub_1AF292034(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), a3) & 1) == 0)
  {
    os_unfair_lock_lock((*(a1 + 40) + 208));
    objc_msgSend_removeObjectForKey_(*(*(a1 + 40) + 216), v7, *(a1 + 48), v8);
    objc_msgSend_removeWorldReference_(*(a1 + 32), v9, *(*(a1 + 40) + 16), v10);
    v11 = (*(a1 + 40) + 208);

    os_unfair_lock_unlock(v11);
  }
}

void sub_1AF307B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v5 == 0.0)
  {
    sub_1AF29213C(v6, v7, a3, a4);
  }

  else
  {
    sub_1AF2921A8(v6, v7, *(a1 + 48), a4, v5);
  }
}

void sub_1AF307CEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_animationPlayerWithAnimationPlayerRef_(VFXAnimationPlayer, a2, a3, a4);
  if (v6)
  {
    v8 = v6;
    v9 = *(*(a1 + 32) + 216);

    objc_msgSend_setValue_forKey_(v9, v7, v8, a2);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4728();
    }
  }
}

void sub_1AF30810C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v18 = objc_alloc_init(CFXBinding);
  v9 = objc_msgSend___CFObject(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setSourceObject_(v18, v10, v9, v11);
  objc_msgSend_setKeyPathDst_(v18, v12, *(a1 + 48), v13);
  objc_msgSend_setKeyPathSrc_(v18, v14, *(a1 + 56), v15);
  objc_msgSend_setOptions_(v18, v16, *(a1 + 64), v17);
  sub_1AF16DBF8(v5, v18);
}

void sub_1AF308250(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16DE24(v5, v6);
}

void sub_1AF30831C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend___CFObject(*(a1 + 32), a2, a3, a4);

  sub_1AF16DDA8(v4);
}

uint64_t sub_1AF3083C8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_keyPathDst(a3, a2, a3, a4);
  v10 = objc_msgSend_sourceObject(a3, v7, v8, v9);
  v14 = objc_msgSend_keyPathSrc(a3, v11, v12, v13);
  v19 = objc_msgSend_options(a3, v15, v16, v17);

  return objc_msgSend_bindAnimatablePath_toObject_withKeyPath_options_(v5, v18, v6, v10, v14, v19);
}

void sub_1AF308500(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend___CFObject(a1[4], a2, a3, a4);
  v9 = objc_msgSend_keyPathDst(a1[5], v6, v7, v8);
  sub_1AF16DE24(v5, v9);
  v34 = objc_alloc_init(CFXBinding);
  v13 = objc_msgSend___CFObject(a1[6], v10, v11, v12);
  objc_msgSend_setSourceObject_(v34, v14, v13, v15);
  v19 = objc_msgSend_keyPathDst(a1[5], v16, v17, v18);
  objc_msgSend_setKeyPathDst_(v34, v20, v19, v21);
  v25 = objc_msgSend_keyPathSrc(a1[5], v22, v23, v24);
  objc_msgSend_setKeyPathSrc_(v34, v26, v25, v27);
  v31 = objc_msgSend_options(a1[5], v28, v29, v30);
  objc_msgSend_setOptions_(v34, v32, v31, v33);
  sub_1AF16DBF8(v5, v34);
}

uint64_t sub_1AF30863C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_msgSend_sourceObject(a3, a2, a3, a4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF3086E4;
  v9[3] = &unk_1E7A7E3D8;
  v9[4] = *(a1 + 32);
  v9[5] = a3;
  return (*(v6 + 16))(v6, v7, 1, v9);
}

_BYTE *sub_1AF308AC8(_BYTE *obj, const char *a2, uint64_t a3, uint64_t a4)
{
  if (obj)
  {
    v4 = obj;
    if ((obj[48] & 6) == 4)
    {
      objc_msgSend__setPausedOrPausedByInheritance_(obj, a2, 0, a4);
    }

    if ((*(v4 + 50) & 2) != 0)
    {
      objc_msgSend__updateFocusableCache(*(v4 + 24), a2, a3, a4);
    }

    if (*(v4 + 54))
    {
      objc_msgSend__propagatePhysicsBodyCountChange_(*(v4 + 24), a2, -*(v4 + 54), a4);
    }

    objc_sync_enter(v4);
    v8 = *(v4 + 24);
    if (v8)
    {
      objc_sync_enter(*(v4 + 24));
      v11 = objc_msgSend_indexOfChildNode_(*(v4 + 24), v9, v4, v10);
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = sub_1AF0D5194();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF75B0();
        }
      }

      else
      {
        sub_1AF308CDC(*(v4 + 24), v11, 0);
      }

      objc_sync_exit(v8);
    }

    else
    {
      v13 = objc_msgSend_world(v4, v5, v6, v7);
      if (objc_msgSend_rootNode(v13, v14, v15, v16) == v4)
      {
        v20 = objc_msgSend_world(v4, v17, v18, v19);
        v24 = objc_msgSend_node(VFXNode, v21, v22, v23);
        objc_msgSend_setRootNode_forLayer_(v20, v25, v24, 0);
      }
    }

    return objc_sync_exit(v4);
  }

  return obj;
}

void sub_1AF308BE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF308C0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v9 = *(a1 + 56);
  if (!v9)
  {
    v16 = *(a1 + 48);
    v17 = *(*(a1 + 40) + 8);
    v18 = objc_msgSend_nodeRef(v16, v6, v7, v8);
    v19 = v17;
    v20 = 0;
    goto LABEL_10;
  }

  v10 = v5;
  if (v5)
  {
    v11 = sub_1AF1B9A6C(v5);
    v15 = *(*(a1 + 40) + 8);
    if (v11 == v15)
    {
      v18 = objc_msgSend_nodeRef(*(a1 + 48), v12, v13, v14);
      v19 = v15;
      goto LABEL_9;
    }

    v9 = *(a1 + 56);
  }

  else
  {
    v15 = *(*(a1 + 40) + 8);
  }

  v10 = sub_1AF1B963C(v15, v9 - 1);
  v21 = *(a1 + 48);
  v22 = *(*(a1 + 40) + 8);
  v18 = objc_msgSend_nodeRef(v21, v23, v24, v25);
  v19 = v22;
LABEL_9:
  v20 = v10;
LABEL_10:

  return sub_1AF1B9838(v19, v18, v20);
}

void *sub_1AF308CDC(void *result, unint64_t a2, int a3)
{
  if (result)
  {
    v5 = result;
    objc_sync_enter(result);
    v6 = v5;
    if (objc_msgSend_count(*(v5 + 32), v7, v8, v9) <= a2)
    {
      v18 = sub_1AF0D5194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF75EC();
      }
    }

    else
    {
      v12 = objc_msgSend_objectAtIndex_(*(v5 + 32), v10, a2, v11);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF308E10;
      v19[3] = &unk_1E7A7E1D0;
      v19[4] = v12;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v13, v5, v19);
      if (a3)
      {
        objc_msgSend_removeWorldReference_(v5, v14, *(v5 + 16), v15);
      }

      objc_msgSend__setParent_(v12, v14, 0, v15);
      objc_msgSend_removeObjectAtIndex_(*(v5 + 32), v16, a2, v17);
    }

    return objc_sync_exit(v5);
  }

  return result;
}

void sub_1AF308E10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  if (v4)
  {

    sub_1AF1B9920(v4);
  }

  else
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7628();
    }
  }
}

void sub_1AF30900C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_nodeRef(*(a1 + 40), v6, v7, v8);
  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7724();
    }
  }

  else
  {
    v12 = v9;
    v13 = sub_1AF1B9A34(*(*(a1 + 48) + 8), v5);
    CFRetain(v12);
    sub_1AF1B9920(v5);
    sub_1AF1B9920(v12);
    sub_1AF1B9764(*(*(a1 + 48) + 8), v12, v13);

    CFRelease(v12);
  }
}

__n128 sub_1AF309B58(float32x4_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v1.i32[3] = 1.0;
  v2.i32[3] = 1.0;
  v3.i64[0] = 0x3F0000003F000000;
  v3.i64[1] = 0x3F0000003F000000;
  v5[0] = vmulq_f32(vaddq_f32(v1, v2), v3);
  v5[1] = vmulq_f32(vsubq_f32(v2, v1), v3);
  sub_1AF1B7B98(*(a1[4].i64[0] + 8), v5, 1);
  return result;
}

void sub_1AF30A0E0(uint64_t a1)
{
  v2 = sub_1AF27A6EC(*(a1 + 32), 0, 0, 0);
  v6 = objc_msgSend_nodeRef(*(a1 + 40), v3, v4, v5);
  sub_1AF1B8AE4(v6, v2);
  objc_msgSend_setModelRef_(*(a1 + 48), v7, v2, v8);

  CFRelease(v2);
}

uint64_t sub_1AF30A3CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = objc_msgSend_animationKeys(*(a1 + 32), a2, a3, a4, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (result)
  {
    v9 = result;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend__pauseAnimation_forKey_pausedByNode_(*(a1 + 32), v8, *(a1 + 40), *(*(&v12 + 1) + 8 * v11++), 1);
      }

      while (v9 != v11);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v16, 16);
      v9 = result;
    }

    while (result);
  }

  return result;
}

void sub_1AF30ACCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = objc_msgSend_count(v5, a2, a3, a4);
    v10 = objc_msgSend_arrayWithCapacity_(v6, v8, v7, v9);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = *(a1 + 32);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
    if (v13)
    {
      v17 = v13;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = objc_msgSend_constraintRef(*(*(&v24 + 1) + 8 * i), v14, v15, v16);
          objc_msgSend_addObject_(v10, v21, v20, v22);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v28, 16);
      }

      while (v17);
    }

    sub_1AF1BBC34(*(*(a1 + 40) + 8), v10);
  }

  else
  {
    v23 = *(*(a1 + 40) + 8);

    sub_1AF1BBC34(v23, 0);
  }
}

void sub_1AF30B0D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = objc_msgSend___CFObject(*(a1 + 40), a2, a3, a4);

  sub_1AF1BBEE8(v4, v5);
}

uint64_t sub_1AF30B238(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  if (v5)
  {
    sub_1AF1BB91C(v5, *(a1 + 32), 1);
  }

  v9 = objc_msgSend_nodeRef(*(a1 + 40), v6, v7, v8);
  objc_msgSend_setNodeRef_(*(a1 + 32), v10, v9, v11);
  v12 = *(a1 + 32);

  return sub_1AF1BB5EC(v9, v12);
}

void sub_1AF30B318(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);

  sub_1AF1BB79C(v4);
}

uint64_t sub_1AF30B3C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  sub_1AF1BB91C(v5, *(a1 + 40), 1);
  v8 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v8, sel_recycle, v6, v7);
}

uint64_t sub_1AF30B4E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return sub_1AF1BB690(v5, v6, v7);
}

void sub_1AF30B5A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1BB848(v5, v6, 1);
}

void sub_1AF30B69C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  sub_1AF1BB9E4(v5, v6, v7);
}

void *sub_1AF30BC60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = objc_msgSend_particleEmitter(a2, a2, a3, a4);
  v9 = objc_msgSend_coreEntityHandle(v5, v6, v7, v8);
  v13 = objc_msgSend_entityObject(v9, v10, v11, v12);
  if (v13 && (objc_msgSend_doNotExport(v13, v14, v15, v16) & 1) != 0)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_1AF30CAE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF1BC324(v5, v6);
}

void *sub_1AF30CFE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_physicsBody(a2, a2, a3, a4);
  if (result)
  {
    v8 = result;
    result = objc_msgSend_type(result, v5, v6, v7);
    if (!result)
    {

      return objc_msgSend_resetTransform(v8, v9, v10, v11);
    }
  }

  return result;
}

uint64_t sub_1AF30D63C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v1;
  v2 = *(a1 + 80);
  v4[2] = *(a1 + 64);
  v4[3] = v2;
  return sub_1AF1BA204(*(*(a1 + 96) + 8), v4);
}

void sub_1AF30D678(uint64_t a1)
{
  sub_1AF1B9F10(*(*(a1 + 80) + 8), *(a1 + 32));
  sub_1AF1BA184(*(*(a1 + 80) + 8), *(a1 + 48), v2, v3, v4, v5, v6, v7);
  v14 = *(*(a1 + 80) + 8);
  v15 = *(a1 + 64);

  sub_1AF1BA078(v14, v15, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AF30FA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a4 && (isKindOfClass & 1) != 0)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, a2, v9);
    if (v10)
    {
      v11 = v10;
      (*(a4 + 16))(a4, v10);
      return v11;
    }

    else if (*(a1 + 40) == 1)
    {
      (*(a4 + 16))(a4, 0);
    }
  }

  return a2;
}

void sub_1AF30FB30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void *VFXNodeGetBoundingSphere(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v86 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_count(a1, a2, a3, a4);
  if (result)
  {
    Object = objc_msgSend_firstObject(a1, v7, v8, v9, 0.0);
    result = objc_msgSend_nodeRef(Object, v11, v12, v13);
    if (result)
    {
      result = sub_1AF1C3FAC(result);
      if (result)
      {
        v14 = result;
        sub_1AF1CEA20(result);
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v81 = sub_1AF31036C;
        v82 = &unk_1E7A79EE8;
        v83 = v14;
        memset(v78, 0, sizeof(v78));
        v79 = 1065353216;
        v18 = objc_msgSend_count(a1, v15, v16, v17);
        sub_1AF14505C(v78, vcvtps_u32_f32(v18 / 1.0));
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v19, &v74, v85, 16);
        if (v23)
        {
          v24 = *v75;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v75 != v24)
              {
                objc_enumerationMutation(a1);
              }

              v26 = *(*(&v74 + 1) + 8 * i);
              v71 = objc_msgSend_nodeRef(v26, v20, v21, v22);
              v62 = &v71;
              sub_1AF31043C(v78, &v71)[3] = v26;
            }

            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v20, &v74, v85, 16);
          }

          while (v23);
        }

        v71 = 0xA00000000;
        v72 = v73;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v20, &v67, v84, 16, v73);
        if (v30)
        {
          v31 = *v68;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v68 != v31)
              {
                objc_enumerationMutation(a1);
              }

              v62 = objc_msgSend_nodeRef(*(*(&v67 + 1) + 8 * j), v27, v28, v29);
              v33 = sub_1AF144D08(v78, &v62);
              sub_1AF145C50(v78, v33);
              v34 = v62;
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3321888768;
              v65[2] = sub_1AF310374;
              v65[3] = &unk_1F24EC1B8;
              sub_1AF310790(v66, v78);
              v66[5] = &v71;
              sub_1AF1B95A8(v34, v65);
              sub_1AF144AE4(v66);
            }

            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v27, &v67, v84, 16);
          }

          while (v30);
        }

        v62 = 0xA00000000;
        v63 = v64;
        v35 = v71;
        if (v71)
        {
          v36 = 0;
          v37 = v72;
          v38 = 8 * v71;
          v59 = 0u;
          do
          {
            v39 = *v37;
            if (sub_1AF1C39FC(*v37, 0, &v61))
            {
              v40 = sub_1AF1B9B04(v39);
              sub_1AF1DA304(&v61, v40, &v61);
              if ((v36 & 1) != 0 && (v41 = vsubq_f32(v59, v61), v42 = vmulq_f32(v41, v41), v43 = sqrtf(v42.f32[2] + vaddv_f32(*v42.f32)), (v59.f32[3] + v43) >= v61.f32[3]))
              {
                if ((v61.f32[3] + v43) > v59.f32[3])
                {
                  v44 = ((v59.f32[3] + v61.f32[3]) + v43) * 0.5;
                  v45 = vmlaq_n_f32(v59, v41, (v59.f32[3] - v44) / v43);
                  v45.f32[3] = v44;
                  v59 = v45;
                }

                v36 = 1;
              }

              else
              {
                v36 = 1;
                v59 = v61;
              }
            }

            else if ((v4 & 1) != 0 && (sub_1AF1BB2C8(v39) & 1) != 0 || (v4 & 0x100) != 0 && (sub_1AF1BB0BC(v39) & 1) != 0 || (v4 & 0x1000000) != 0 && !sub_1AF167434(v39))
            {
              v60.n128_u32[2] = 0;
              v60.n128_u64[0] = 0;
              v60 = sub_1AF1B9AB4(v39);
              sub_1AF3103DC(&v62, &v60);
            }

            ++v37;
            v38 -= 8;
          }

          while (v38);
          v46 = v63;
          v35 = v62;
          v47 = v59;
        }

        else
        {
          v36 = 0;
          v47 = 0uLL;
          v46 = v64;
        }

        v48 = v47.f32[3];
        if (v47.f32[3] >= 1.0 || v47.f32[3] <= 0.0)
        {
          v48 = 1.0;
        }

        if (v35)
        {
          v50 = 16 * v35;
          v51 = v46;
          do
          {
            v52 = *v51;
            v52.f32[3] = v48;
            if (v36)
            {
              v53 = vsubq_f32(v47, *v51);
              v54 = vmulq_f32(v53, v53);
              v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
              if ((v47.f32[3] + v55) >= v48)
              {
                if ((v48 + v55) > v47.f32[3])
                {
                  v56 = ((v48 + v47.f32[3]) + v55) * 0.5;
                  v47 = vmlaq_n_f32(v47, v53, (v47.f32[3] - v56) / v55);
                  v47.f32[3] = v56;
                }

                v52 = v47;
              }
            }

            ++v51;
            v36 = 1;
            v47 = v52;
            v50 -= 16;
          }

          while (v50);
        }

        if (HIDWORD(v62))
        {
          v57 = v46 == v64;
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          free(v46);
        }

        if (HIDWORD(v71))
        {
          if (v72 != v58)
          {
            free(v72);
          }
        }

        sub_1AF144AE4(v78);
        return v81(v80);
      }
    }
  }

  return result;
}

void sub_1AF3102CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, void *a59)
{
  if (a58)
  {
    if (a59 != a9)
    {
      free(a59);
    }
  }

  sub_1AF144AE4(&STACK[0x220]);
  (STACK[0x258])(&STACK[0x248]);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF310374(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (sub_1AF3106A4((a1 + 32), &v4))
  {
    return 1;
  }

  sub_1AF1576F0(*(a1 + 72), &v4);
  return 0;
}

__n128 sub_1AF3103DC(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if ((*a1 + 1) > *(a1 + 4))
  {
    sub_1AF310A6C(a1, 1, 0);
    v4 = *a1;
  }

  result = *a2;
  *(*(a1 + 8) + 16 * v4) = *a2;
  ++*a1;
  return result;
}

void *sub_1AF31043C(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_1AF3106A4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF310790(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1AF14505C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AF310808(a1, i + 2);
  }

  return a1;
}

void *sub_1AF310808(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1AF310A6C(unsigned int *a1, int a2, int a3)
{
  v4 = *(a1 + 1);
  v5 = a1 + 4;
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (a1[1] + a2));
  v8 = malloc_type_malloc(16 * v7, 0xBBD05BDCuLL);
  memset(v8, 255, 16 * v7);
  memcpy(v8, v4, 16 * *a1);
  *(a1 + 1) = v8;
  a1[1] = v7;
  if (v4 != v5)
  {

    free(v4);
  }
}

uint64_t sub_1AF3113C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  sub_1AF1BE75C(v5, *(*(a1 + 32) + 176));
  sub_1AF1C236C(v5, 0, *(*(a1 + 32) + 184));
  v6 = 1;
  sub_1AF1C236C(v5, 1, *(*(a1 + 32) + 188));
  sub_1AF1C236C(v5, 2, *(*(a1 + 32) + 192));
  sub_1AF1C236C(v5, 3, *(*(a1 + 32) + 200));
  sub_1AF1C236C(v5, 4, *(*(a1 + 32) + 196));
  sub_1AF1C236C(v5, 7, *(*(a1 + 32) + 208));
  sub_1AF1C236C(v5, 5, *(*(a1 + 32) + 204));
  sub_1AF1C236C(v5, 6, *(*(a1 + 32) + 212));
  sub_1AF1C213C(v5, 9, *(*(a1 + 32) + 224));
  sub_1AF1C213C(v5, 10, *(*(a1 + 32) + 232));
  sub_1AF1C213C(v5, 11, *(*(a1 + 32) + 240));
  sub_1AF1C213C(v5, 12, *(*(a1 + 32) + 248));
  sub_1AF1C213C(v5, 15, *(*(a1 + 32) + 264));
  sub_1AF1C213C(v5, 14, *(*(a1 + 32) + 272));
  sub_1AF1C213C(v5, 12, *(*(a1 + 32) + 256));
  sub_1AF1C2E10(v5, *(*(a1 + 32) + 216));
  sub_1AF1C2BE0(v5, *(*(a1 + 32) + 280));
  sub_1AF1C236C(v5, 18, *(*(a1 + 32) + 288));
  sub_1AF1C213C(v5, 17, *(*(a1 + 32) + 296));
  v7 = *(a1 + 32);
  if ((*(v7 + 292) & 1) == 0)
  {
    if (*(v7 + 293))
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return sub_1AF1C213C(v5, 19, v6);
}

uint64_t sub_1AF312018(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  if (v5 >= 9)
  {
    v7 = 2;
  }

  else
  {
    v7 = v5;
  }

  v8 = objc_msgSend_modelRef(v4, a2, a3, a4);

  return sub_1AF1BE75C(v8, v7);
}

void sub_1AF312208(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C29CC(v5, v6);
}

void sub_1AF312380(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C26EC(v5, v6);
}

void sub_1AF3124F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2804(v5, v6);
}

void sub_1AF312670(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2D60(v5, v6);
}

void sub_1AF3127F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C25D4(v5, v6);
}

void sub_1AF312968(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2C48(v5, v6);
}

void sub_1AF312AE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2F90(v5, v6);
}

void sub_1AF312C58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2E78(v5, v6);
}

void sub_1AF312DBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2E10(v5, v6);
}

void sub_1AF312F20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2A7C(v5, v6);
}

void sub_1AF313084(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C279C(v5, v6);
}

void sub_1AF3131E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C28B4(v5, v6);
}

void sub_1AF31334C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2684(v5, v6);
}

void sub_1AF3134B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2684(v5, v6);
}

void sub_1AF313614(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2F28(v5, v6);
}

void sub_1AF313778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2B2C(v5, v6);
}

void sub_1AF3138DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2BE0(v5, v6);
}

void sub_1AF313A54(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2CF8(v5, v6);
}

void sub_1AF313BB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C2964(v5, v6);
}

uint64_t sub_1AF313E24(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 40);
  if (v4 == 2)
  {
    v5 = objc_msgSend_modelRef(*(result + 32), a2, a3, a4);
    v6 = 1;
LABEL_9:

    return sub_1AF1C24C0(v5, v6);
  }

  if (v4 != 1)
  {
    if (v4)
    {
      return result;
    }

    v5 = objc_msgSend_modelRef(*(result + 32), a2, a3, a4);
    v6 = 0;
    goto LABEL_9;
  }

  v7 = objc_msgSend_modelRef(*(result + 32), a2, a3, a4);

  return sub_1AF1C2578(v7, 1);
}

uint64_t sub_1AF314D58(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF314DB8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF31547C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3, a4);
  if (result)
  {
    v8 = sub_1AF16A4C8(result, v5, v6, v7);

    return objc_msgSend_killParticles(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1AF315534(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3, a4);
  if (result)
  {
    v8 = sub_1AF16A4C8(result, v5, v6, v7);

    return objc_msgSend_restart(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1AF315620(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3, a4);
  if (result)
  {
    result = sub_1AF16A4C8(result, v5, v6, v7);
    if (result)
    {

      return MEMORY[0x1EEE66B58](result, sel_setSimulationRate_, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1AF315770(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend___CFObject(*(*(a1 + 32) + 8), a2, a3, a4);
  if (result)
  {
    result = sub_1AF16A4C8(result, v6, v7, v8);
    if (result)
    {
      v12 = result;
      v13 = objc_msgSend_nodeRef(*(a1 + 40), v9, v10, v11);

      return MEMORY[0x1EEE66B58](v12, sel_setSimulationAnchor_, v13, v14);
    }
  }

  return result;
}

uint64_t sub_1AF315914(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF315974(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF316A50(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend__srcAssociatedNode_(*(a1 + 32), a2, a2, a4);
  if (!result)
  {
    v10 = objc_msgSend_parentNode(a2, v7, v8, v9);
    result = objc_msgSend__srcAssociatedNode_(*(a1 + 32), v11, v10, v12);
    if (result)
    {
      v14 = result;
      v15 = *(a1 + 32);

      return objc_msgSend_addOperation_src_dst_(v15, v13, 0, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1AF316AC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend__dstHasAssociatedNode_(*(a1 + 32), a2, a2, a4);
  if ((result & 1) == 0)
  {
    v8 = *(a1 + 32);

    return objc_msgSend_addOperation_src_dst_(v8, v7, 1, a2, a2);
  }

  return result;
}

uint64_t sub_1AF31755C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  sub_1AF16ED28(v5, *(*(a1 + 32) + 180));
  v9 = objc_msgSend_modelRef(*(a1 + 32), v6, v7, v8);
  sub_1AF16EDF8(v9, *(*(a1 + 32) + 184));
  v13 = objc_msgSend_modelRef(*(a1 + 32), v10, v11, v12);
  sub_1AF16EEC8(v13, *(*(a1 + 32) + 188));
  v17 = objc_msgSend_modelRef(*(a1 + 32), v14, v15, v16);
  sub_1AF16EF98(v17, *(*(a1 + 32) + 208));
  v21 = objc_msgSend_modelRef(*(a1 + 32), v18, v19, v20);
  v22 = *(*(a1 + 32) + 192);

  return sub_1AF16F0E0(v21, v22);
}

void sub_1AF317868(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16EF98(v5, v6);
}

uint64_t sub_1AF31793C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16F0E0(v5, v6);
}

uint64_t sub_1AF317A98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16F0C0(v5, v6);
}

uint64_t sub_1AF317BFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  return sub_1AF16F0D0(v5, v6);
}

void sub_1AF317DD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16EEC8(v5, v6);
}

void sub_1AF317F34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16EDF8(v5, v6);
}

void sub_1AF318100(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16F050(v5, v6);
}

void sub_1AF31825C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF16ED28(v5, v6);
}

id sub_1AF319630(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F25D4738, a4);
  qword_1EB658CB8 = result;
  return result;
}

void sub_1AF319710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF319728(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = objc_msgSend_name(a2, a2, a3, a4);
  result = objc_msgSend_isEqualToString_(v6, v7, *(a1 + 32), v8);
  if (result)
  {
    if (++*(*(*(a1 + 40) + 8) + 24) == 2)
    {
      *a3 = 1;
    }
  }

  return result;
}

void sub_1AF319E80(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

uint64_t sub_1AF31A8DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_light(a2, a2, a3, a4))
  {
    v8 = objc_msgSend_light(a2, v5, v6, v7);
    v12 = objc_msgSend_copy(v8, v9, v10, v11);
    objc_msgSend_setLight_(a2, v13, v12, v14);
  }

  result = objc_msgSend_camera(a2, v5, v6, v7);
  if (result)
  {
    v19 = objc_msgSend_camera(a2, v16, v17, v18);
    v24 = objc_msgSend_copy(v19, v20, v21, v22);

    return objc_msgSend_setCamera_(a2, v23, v24, v25);
  }

  return result;
}

void sub_1AF31B044(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_contents(a2, a2, a3, a4);
  v10 = objc_msgSend_length(a2, v7, v8, v9);
  v11 = xpc_shmem_create(v6, v10);
  if (v11)
  {
    v16 = v11;
    v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, a2, v13);
    NSLog(&cfstr_ProducerNewBuf.isa, v14, a2);
    objc_msgSend_setObject_forKey_(*(a1 + 32), v15, v16, v14);
  }
}

uint64_t sub_1AF31B0FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2, a4);
  NSLog(&cfstr_ProducerDestro.isa, v6, a2);
  v7 = *(a1 + 32);
  v12 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9, v10);

  return objc_msgSend_setObject_forKey_(v7, v11, v12, v6);
}

uint64_t sub_1AF31B180(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a2, a4);
  NSLog(&cfstr_ProducerDestro_0.isa, v6, a2);
  v7 = *(a1 + 32);
  v12 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9, v10);

  return objc_msgSend_setObject_forKey_(v7, v11, v12, v6);
}

uint64_t sub_1AF31B318(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = a3;
  objc_msgSend_setBoundingBoxMax_(*(a1 + 32), a2, a3, a4, *vaddq_f32(a5, a6).i64);
  objc_msgSend_setBoundingBoxMin_(*(a1 + 32), v9, v10, v11, *vsubq_f32(a5, a6).i64);
  objc_msgSend_setRenderingOrder_(*(a1 + 32), v12, a2, v13);
  objc_msgSend_setPrimitiveType_(*(a1 + 32), v14, 3, v15);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1AF31B400;
  v21[3] = &unk_1E7A7EE88;
  v22 = *(a1 + 40);
  v23 = *(a1 + 56);
  v24 = v6;
  objc_msgSend_setEncodeHandler_(*(a1 + 32), v16, v21, v17);
  return (*(*(a1 + 64) + 16))();
}

void sub_1AF31B400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = v2;
  sub_1AF22E778(&v4, v3);
}

VFXRemoteRendererProxyRegistry *sub_1AF31B56C()
{
  result = objc_alloc_init(VFXRemoteRendererProxyRegistry);
  qword_1EB658CC8 = result;
  return result;
}

void sub_1AF31DA34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  if (v5 || (v5 = objc_msgSend_worldRef(*(a1 + 32), a2, a3, a4)) != 0)
  {
    sub_1AF1CEA20(v5);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = objc_msgSend_nodeRef(*(a1 + 32), v6, v7, v8);
  v11 = sub_1AF12F0C4(*(*(a1 + 40) + 136));
  if (v11 && (v12 = sub_1AF1BB260(v11)) != 0)
  {
    v13 = sub_1AF15CE6C(v12);
  }

  else
  {
    v13 = 0;
  }

  sub_1AF12EA28(*(*(a1 + 40) + 136), v10);
  if (v10)
  {
    v14 = sub_1AF1BB260(v10);
    v18 = v14 ? sub_1AF15CE6C(v14) : 0;
    v19 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16, v17);
    v20 = sub_1AF1C3FAC(v10);
    objc_msgSend_postNotificationName_object_(v19, v21, @"kCFXWorldDidUpdateNotification", v20);
    if (v18 != v13)
    {
      v22 = sub_1AF1C3FAC(v10);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v22, 0, 1u);
    }
  }

  if ((v9 & 1) == 0)
  {

    sub_1AF1CEA9C(v5);
  }
}

float sub_1AF31DB90(float a1, double a2)
{
  v3 = __tanpi(a1 / 360.0);
  v4 = atan(v3 * a2);
  if (v4 < 0.0)
  {
    v5 = 3.14159265 - v4;
    v4 = v5;
  }

  return v4 * 114.591559;
}

float sub_1AF31DC00(float a1, double a2)
{
  v3 = __tanpi(a1 / 360.0);
  v4 = atan(v3 / a2);
  if (v4 < 0.0)
  {
    v5 = 3.14159265 - v4;
    v4 = v5;
  }

  return v4 * 114.591559;
}

CFTypeRef sub_1AF31DD10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_nodeRef(*(a1 + 32), a2, a3, a4);
  v6 = *(*(a1 + 40) + 136);

  return sub_1AF12F27C(v6, v5);
}

uint64_t sub_1AF31E650(uint64_t a1)
{
  v1 = sub_1AF12F434(a1);
  if (!v1)
  {
    return 0;
  }

  if ((*(v1 + 228) & 0x200) == 0)
  {
    if ((*(v1 + 232) & 0x200) == 0)
    {
      return 0;
    }

    v1 = *(v1 + 272);
  }

  return MEMORY[0x1EEE66B58](v1, sel__wantsCustomMainPassPostProcessForRenderer_, v1, v2);
}

uint64_t sub_1AF31E6A0(uint64_t a1, _DWORD *a2)
{
  result = sub_1AF12F434(a1);
  if (result)
  {
    if ((*(result + 228) & 0x200) != 0)
    {
      v5 = 0;
      result = objc_msgSend__customMainPassPostProcessUsesExtraRenderTargetForRenderer_pixelFormat_(result, v4, result, &v5);
    }

    else
    {
      if ((*(result + 232) & 0x200) == 0)
      {
        return 0;
      }

      v5 = 0;
      result = objc_msgSend__customMainPassPostProcessUsesExtraRenderTargetForRenderer_pixelFormat_(*(result + 272), v4, result, &v5);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AF31E714(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12F434(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ((*(v3 + 228) & 0x200) == 0)
  {
    if ((*(v3 + 232) & 0x200) == 0)
    {
      return 0;
    }

    v3 = *(v3 + 272);
  }

  return MEMORY[0x1EEE66B58](v3, sel__usesSpecificMainPassClearColorForRenderer_clearColor_, v4, a2);
}

BOOL sub_1AF31E860(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v5 = objc_msgSend_camera(a2, a2, a3, a4);
  if (v5)
  {
    *a3 = 1;
  }

  return v5 != 0;
}

uint64_t sub_1AF31ED84(uint64_t a1)
{
  result = sub_1AF12F434(a1);
  if (result)
  {
    v3 = result;
    v4 = sub_1AF12DDCC(a1);
    v5 = sub_1AF16CDEC(v4);

    return MEMORY[0x1EEE66B58](v3, sel__willRenderWorld_, v5, v6);
  }

  return result;
}

uint64_t sub_1AF31EDE0(uint64_t a1)
{
  result = sub_1AF12F434(a1);
  if (result)
  {
    v3 = result;
    v4 = sub_1AF12DDCC(a1);
    v5 = sub_1AF16CDEC(v4);

    return MEMORY[0x1EEE66B58](v3, sel__didRenderWorld_, v5, v6);
  }

  return result;
}

uint64_t sub_1AF31EE3C(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1);
  if (result)
  {

    return MEMORY[0x1EEE66B58](result, sel__readSubdivCacheForHash_, a2, v4);
  }

  return result;
}

uint64_t sub_1AF31EE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF12F434(a1);
  if (result)
  {

    return MEMORY[0x1EEE66B58](result, sel__writeSubdivCacheForHash_dataProvider_, a2, a3);
  }

  return result;
}

uint64_t sub_1AF31EED4(uint64_t a1, uint64_t a2)
{
  result = sub_1AF12F434(a1);
  if (result)
  {
    v5 = result;
    if ((*(result + 228) & 0x200) != 0)
    {
      result = objc_msgSend__encodeCustomMainPassPostProcessForRenderer_atTime_helper_(result, v4, result, a2, *(result + 88));
    }

    if ((*(v5 + 232) & 0x200) != 0)
    {
      v6 = *(v5 + 272);
      v7 = *(v5 + 88);

      return objc_msgSend__encodeCustomMainPassPostProcessForRenderer_atTime_helper_(v6, v4, v6, a2, v7);
    }
  }

  return result;
}

uint64_t sub_1AF320C50(uint64_t result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v4;
    v26 = v10;
    v27 = v11;
    v12 = a3;
    v13 = a2;
    v14 = result;
    do
    {
      v15 = *(v14 + 32);
      v16 = *v13++;
      v17 = objc_msgSend_nodeWithNodeRef_(VFXNode, a2, v16, a4, v20, v21, v22, v23, v24, v25, v26, v27);
      result = objc_msgSend_addObject_(v15, v18, v17, v19);
      --v12;
    }

    while (v12);
  }

  return result;
}

unint64_t sub_1AF321778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 136);
  v5 = objc_msgSend_nodeRef(*(a1 + 40), a2, a3, a4);

  return sub_1AF15ABCC(v4, v5);
}

void sub_1AF323510(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_world(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_rootNode(v5, v6, v7, v8);
  v12 = objc_msgSend_childNodesPassingTest_(v9, v10, &unk_1F24EC288, v11);
  v16 = objc_msgSend_world(*(a1 + 32), v13, v14, v15);
  v20 = objc_msgSend_rootNode(v16, v17, v18, v19);
  v23 = objc_msgSend_childNodesPassingTest_(v20, v21, &unk_1F24EC2A8, v22);
  v27 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v28, &v78, v82, 16);
  if (v29)
  {
    v33 = v29;
    v34 = *v79;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v79 != v34)
        {
          objc_enumerationMutation(v23);
        }

        v36 = *(*(&v78 + 1) + 8 * i);
        v37 = MEMORY[0x1E696AD98];
        isHidden = objc_msgSend_isHidden(v36, v30, v31, v32);
        v41 = objc_msgSend_numberWithBool_(v37, v39, isHidden, v40);
        objc_msgSend_addObject_(v27, v42, v41, v43);
        v47 = objc_msgSend_nodeRef(v36, v44, v45, v46);
        sub_1AF1B8A78(v47, 1);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, &v78, v82, 16);
    }

    while (v33);
  }

  v48 = sub_1AF12E8A4(*(*(a1 + 32) + 136));
  v49 = sub_1AF2700D0(*(*(a1 + 32) + 136), *(a1 + 40), v12);
  sub_1AF270D20(v48, v49);
  objc_msgSend_beginFrame_(*(*(a1 + 32) + 216), v50, 0, v51);
  sub_1AF270460(v48, v52, v53, v54);
  objc_msgSend_endFrameWaitingUntilCompleted_status_error_(*(*(a1 + 32) + 216), v55, 1, 0, 0);
  if (objc_msgSend_count(v27, v56, v57, v58))
  {
    v61 = 0;
    do
    {
      v62 = objc_msgSend_objectAtIndexedSubscript_(v23, v59, v61, v60);
      v66 = objc_msgSend_nodeRef(v62, v63, v64, v65);
      v69 = objc_msgSend_objectAtIndexedSubscript_(v27, v67, v61, v68);
      v73 = objc_msgSend_BOOLValue(v69, v70, v71, v72);
      sub_1AF1B8A78(v66, v73);
      ++v61;
    }

    while (v61 < objc_msgSend_count(v27, v74, v75, v76));
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF323880;
  block[3] = &unk_1E7A7EF90;
  block[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1AF32378C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_light(a2, a2, a3, a4);
  if (result)
  {
    v9 = objc_msgSend_nodeRef(a2, v6, v7, v8);
    if (sub_1AF1BA900(v9))
    {
      return 0;
    }

    else
    {
      v13 = objc_msgSend_light(a2, v10, v11, v12);
      result = objc_msgSend_isBaked(v13, v14, v15, v16);
      if (result)
      {
        v20 = objc_msgSend_light(a2, v17, v18, v19);
        if (objc_msgSend_type(v20, v21, v22, v23) == 2)
        {
          return 1;
        }

        else
        {
          v27 = objc_msgSend_light(a2, v24, v25, v26);
          result = objc_msgSend_type(v27, v28, v29, v30);
          if (result != 1)
          {
            v34 = objc_msgSend_light(a2, v31, v32, v33);
            return objc_msgSend_type(v34, v35, v36, v37) == 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF323824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_light(a2, a2, a3, a4);
  if (result)
  {
    v9 = objc_msgSend_light(a2, v6, v7, v8);
    result = 0;
    if (objc_msgSend_type(v9, v10, v11, v12) == 4)
    {
      v16 = objc_msgSend_light(a2, v13, v14, v15);
      if (!objc_msgSend_probeType(v16, v17, v18, v19))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1AF323880(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1AF323918(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend__engineContext(*(a1 + 32), a2, a3, a4);
  result = objc_msgSend_isAborting(*(a1 + 40), v6, v7, v8);
  if ((result & 1) == 0)
  {
    objc_msgSend_lock(*(a1 + 32), v10, v11, v12);
    v13 = sub_1AF12DDCC(v5);
    sub_1AF1CEA20(v13);
    sub_1AF1309A4(v5, 1);
    sub_1AF1309CC(v5, *(a1 + 48));
    sub_1AF1309DC(v5, *(a1 + 56));
    v14 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    objc_msgSend__beginFrame(*(a1 + 32), v15, v16, v17);
    objc_msgSend__render(*(a1 + 32), v18, v19, v20);
    sub_1AF1309DC(v5, 1);
    sub_1AF1309A4(v5, 0);
    objc_msgSend__endFrame(*(a1 + 32), v21, v22, v23);
    sub_1AF1CEA9C(v13);
    if (*(a1 + 57) == 1)
    {
      objc_msgSend__jitterRedisplay(*(*(a1 + 32) + 272), v24, v25, v26);
    }

    objc_msgSend_drain(v14, v24, v25, v26);
    v30 = *(a1 + 32);

    return objc_msgSend_unlock(v30, v27, v28, v29);
  }

  return result;
}

uint64_t CFXGetSharedCommandQueueForDevice(uint64_t a1)
{
  v1 = sub_1AF20C050(VFXMTLResourceManager, a1);
  v2 = sub_1AFDE8698(v1);
  sub_1AF20C174();
  return v2;
}

uint64_t sub_1AF324CB4(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 64);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF324D14(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 64);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

void sub_1AF3253F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF325410(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  result = objc_msgSend_camera(a2, a2, a3, a4);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1AF325784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF829C(v6);
    }
  }

  if (*(a1 + 8))
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8320(v7);
    }
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 24) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 32) = a3;
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 40) = 0;
}

uint64_t *sub_1AF325DB0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

void sub_1AF325E10(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    JUMPOUT(0x1B271C6B0);
  }
}

__n128 sub_1AF325E68(void *a1)
{
  InstanceVariable = object_getInstanceVariable(a1, "_curveToGeometryTransform", 0);
  if (InstanceVariable)
  {
    v3 = a1 + ivar_getOffset(InstanceVariable);
  }

  else
  {
    v3 = MEMORY[0x1E69E9B18];
  }

  return *v3;
}

uint64_t sub_1AF325FDC(void *a1, void *a2, __CFDictionary *a3, uint64_t a4, void *a5)
{
  v113 = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_rootNode(a2, a2, a3, a4);
  v14 = objc_msgSend_rootNode(a1, v11, v12, v13);
  CFDictionarySetValue(a3, v10, v14);
  v18 = objc_msgSend_background(a1, v15, v16, v17);
  v22 = objc_msgSend_background(a2, v19, v20, v21);
  sub_1AF327894(v18, v22, a4, a5);
  v26 = objc_msgSend_lightingEnvironment(a1, v23, v24, v25);
  v30 = objc_msgSend_lightingEnvironment(a2, v27, v28, v29);
  sub_1AF327894(v26, v30, a4, a5);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v34 = objc_msgSend_rootNode(a2, v31, v32, v33, 0);
  v38 = objc_msgSend_childNodes(v34, v35, v36, v37);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v108, v112, 16);
  if (v40)
  {
    v44 = v40;
    v45 = *v109;
    do
    {
      v46 = 0;
      do
      {
        if (*v109 != v45)
        {
          objc_enumerationMutation(v38);
        }

        v47 = sub_1AF3264A4(*(*(&v108 + 1) + 8 * v46), a3, a4, a5);
        v51 = objc_msgSend_rootNode(a1, v48, v49, v50);
        objc_msgSend_addChildNode_(v51, v52, v47, v53);
        ++v46;
      }

      while (v44 != v46);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v54, &v108, v112, 16);
    }

    while (v44);
  }

  v55 = objc_msgSend_rootNode(a2, v41, v42, v43);
  sub_1AF327760(v55, a3);
  objc_msgSend_startTime(a2, v56, v57, v58);
  objc_msgSend_setStartTime_(a1, v59, v60, v61);
  objc_msgSend_endTime(a2, v62, v63, v64);
  objc_msgSend_setEndTime_(a1, v65, v66, v67);
  v71 = objc_msgSend_fogColor(a2, v68, v69, v70);
  objc_msgSend_setFogColor_(a1, v72, v71, v73);
  objc_msgSend_fogStartDistance(a2, v74, v75, v76);
  *&v77 = v77;
  objc_msgSend_setFogStartDistance_(a1, v78, v79, v80, v77);
  objc_msgSend_fogEndDistance(a2, v81, v82, v83);
  *&v84 = v84;
  objc_msgSend_setFogEndDistance_(a1, v85, v86, v87, v84);
  objc_msgSend_fogDensityExponent(a2, v88, v89, v90);
  *&v91 = v91;
  objc_msgSend_setFogDensityExponent_(a1, v92, v93, v94, v91);
  v98 = objc_msgSend_fogColor(a2, v95, v96, v97);
  objc_msgSend_setFogColor_(a1, v99, v98, v100);
  v104 = objc_msgSend_wantsScreenSpaceReflection(a2, v101, v102, v103);
  return objc_msgSend_setWantsScreenSpaceReflection_(a1, v105, v104, v106);
}

void *sub_1AF3264A4(void *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v1086 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  Value = CFDictionaryGetValue(a2, a1);
  if (!Value)
  {
    Value = objc_msgSend_node(VFXNode, v8, v9, v10);
    CFDictionarySetValue(a2, v7, Value);
    v1067 = 0u;
    v1068 = 0u;
    v1065 = 0u;
    v1066 = 0u;
    v15 = objc_msgSend_childNodes(v7, v12, v13, v14);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v1065, v1077, 16);
    if (v17)
    {
      v21 = v17;
      v22 = *v1066;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v1066 != v22)
          {
            objc_enumerationMutation(v15);
          }

          v24 = sub_1AF3264A4(*(*(&v1065 + 1) + 8 * i), a2, a3, a4);
          objc_msgSend_addChildNode_(Value, v25, v24, v26);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v27, &v1065, v1077, 16);
      }

      while (v21);
    }

    objc_msgSend_transform(v7, v18, v19, v20);
    objc_msgSend_setTransform_(Value, v28, v29, v30, *&v1082, *&v1083, *&v1084, v1085[0]);
    objc_msgSend_pivot(v7, v31, v32, v33);
    objc_msgSend_setPivot_(Value, v34, v35, v36, *&v1082, *&v1083, *&v1084, v1085[0]);
    v40 = objc_msgSend_castsShadow(v7, v37, v38, v39);
    objc_msgSend_setCastsShadow_(Value, v41, v40, v42);
    v46 = objc_msgSend_name(v7, v43, v44, v45);
    objc_msgSend_setName_(Value, v47, v46, v48);
    v52 = objc_msgSend_identifier(v7, v49, v50, v51);
    objc_msgSend_setIdentifier_(Value, v53, v52, v54);
    v58 = objc_msgSend_geometry(v7, v55, v56, v57);
    v59 = sub_1AF327DA8(v58, a2, a3, a4);
    objc_msgSend_setModel_(Value, v60, v59, v61);
    v65 = objc_msgSend_light(v7, v62, v63, v64);
    if (v65)
    {
      v68 = v65;
      v72 = CFDictionaryGetValue(a2, v65);
      if (!v72)
      {
        v72 = objc_msgSend_light(VFXLight, v69, v70, v71);
        CFDictionarySetValue(a2, v68, v72);
        v76 = objc_msgSend_type(v68, v73, v74, v75);
        v80 = sub_1AF371824(v76, v77, v78, v79);
        objc_msgSend_setType_(v72, v81, v80, v82);
        v86 = objc_msgSend_color(v68, v83, v84, v85);
        objc_msgSend_setColor_(v72, v87, v86, v88);
        objc_msgSend_temperature(v68, v89, v90, v91);
        *&v92 = v92;
        objc_msgSend_setTemperature_(v72, v93, v94, v95, v92);
        if (a3)
        {
          objc_msgSend_intensity(v68, v96, v97, v98);
          *&v102 = v102;
        }

        else
        {
          v106 = objc_msgSend_type(v72, v96, v97, v98);
          objc_msgSend_intensity(v68, v107, v108, v109);
          *&v110 = v110;
          *&v102 = sub_1AF19E02C(v106, *&v110);
        }

        objc_msgSend_setIntensity_(v72, v99, v100, v101, v102);
        v114 = objc_msgSend_name(v68, v111, v112, v113);
        objc_msgSend_setName_(v72, v115, v114, v116);
        v120 = objc_msgSend_castsShadow(v68, v117, v118, v119);
        objc_msgSend_setCastsShadow_(v72, v121, v120, v122);
        if (objc_msgSend_shadowColor(v68, v123, v124, v125))
        {
          v129 = objc_msgSend_shadowColor(v68, v126, v127, v128);
          sub_1AF371798(v129, 0);
          LODWORD(v131) = HIDWORD(v130);
          objc_msgSend_setShadowIntensity_(v72, v130, v132, v133, v131);
        }

        objc_msgSend_shadowRadius(v68, v126, v127, v128);
        *&v134 = v134;
        objc_msgSend_setShadowRadius_(v72, v135, v136, v137, v134);
        objc_msgSend_shadowMapSize(v68, v138, v139, v140);
        objc_msgSend_setShadowMapSize_(v72, v141, v142, v143);
        v147 = objc_msgSend_shadowSampleCount(v68, v144, v145, v146);
        objc_msgSend_setShadowSampleCount_(v72, v148, v147, v149);
        objc_msgSend_shadowBias(v68, v150, v151, v152);
        *&v153 = v153;
        objc_msgSend_setShadowBias_(v72, v154, v155, v156, v153);
        v160 = objc_msgSend_automaticallyAdjustsShadowProjection(v68, v157, v158, v159);
        objc_msgSend_setAutomaticallyAdjustsShadowProjection_(v72, v161, v160, v162);
        objc_msgSend_maximumShadowDistance(v68, v163, v164, v165);
        *&v166 = v166;
        objc_msgSend_setMaximumShadowDistance_(v72, v167, v168, v169, v166);
        v173 = objc_msgSend_forcesBackFaceCasters(v68, v170, v171, v172);
        objc_msgSend_setForcesBackFaceCasters_(v72, v174, v173, v175);
        v179 = objc_msgSend_sampleDistributedShadowMaps(v68, v176, v177, v178);
        objc_msgSend_setSampleDistributedShadowMaps_(v72, v180, v179, v181);
        v185 = objc_msgSend_shadowCascadeCount(v68, v182, v183, v184);
        objc_msgSend_setShadowCascadeCount_(v72, v186, v185, v187);
        objc_msgSend_shadowCascadeSplittingFactor(v68, v188, v189, v190);
        *&v191 = v191;
        objc_msgSend_setShadowCascadeSplittingFactor_(v72, v192, v193, v194, v191);
        objc_msgSend_orthographicScale(v68, v195, v196, v197);
        *&v198 = v198;
        objc_msgSend_setOrthographicScale_(v72, v199, v200, v201, v198);
        objc_msgSend_zNear(v68, v202, v203, v204);
        *&v205 = v205;
        objc_msgSend_setZNear_(v72, v206, v207, v208, v205);
        objc_msgSend_zFar(v68, v209, v210, v211);
        *&v212 = v212;
        objc_msgSend_setZFar_(v72, v213, v214, v215, v212);
        objc_msgSend_attenuationEndDistance(v68, v216, v217, v218);
        *&v219 = v219;
        objc_msgSend_setAttenuationDistance_(v72, v220, v221, v222, v219);
        objc_msgSend_spotInnerAngle(v68, v223, v224, v225);
        *&v226 = v226;
        objc_msgSend_setSpotInnerAngle_(v72, v227, v228, v229, v226);
        objc_msgSend_spotOuterAngle(v68, v230, v231, v232);
        *&v233 = v233;
        objc_msgSend_setSpotOuterAngle_(v72, v234, v235, v236, v233);
        v240 = objc_msgSend_probeType(v68, v237, v238, v239);
        objc_msgSend_setProbeType_(v72, v241, v240, v242);
        updated = objc_msgSend_probeUpdateType(v68, v243, v244, v245);
        objc_msgSend_setProbeUpdateType_(v72, v247, updated, v248);
        objc_msgSend_probeExtents(v68, v249, v250, v251);
        objc_msgSend_setProbeExtents_(v72, v252, v253, v254);
        objc_msgSend_probeOffset(v68, v255, v256, v257);
        objc_msgSend_setProbeOffset_(v72, v258, v259, v260);
        v264 = objc_msgSend__sphericalHarmonics(v68, v261, v262, v263);
        objc_msgSend_set_sphericalHarmonics_(v72, v265, v264, v266);
        v270 = objc_msgSend_parallaxCorrectionEnabled(v68, v267, v268, v269);
        objc_msgSend_setParallaxCorrectionEnabled_(v72, v271, v270, v272);
        objc_msgSend_parallaxExtentsFactor(v68, v273, v274, v275);
        objc_msgSend_setParallaxExtentsFactor_(v72, v276, v277, v278);
        objc_msgSend_parallaxCenterOffset(v68, v279, v280, v281);
        objc_msgSend_setParallaxCenterOffset_(v72, v282, v283, v284);
        if (objc_msgSend_type(v72, v285, v286, v287) == 5)
        {
          v291 = objc_msgSend_areaType(v68, v288, v289, v290);
          objc_msgSend_setAreaType_(v72, v292, v291, v293);
          objc_msgSend_areaExtents(v68, v294, v295, v296);
          objc_msgSend_setAreaExtents_(v72, v297, v298, v299);
          v303 = objc_msgSend_areaPolygonVertices(v68, v300, v301, v302);
          objc_msgSend_setAreaPolygonVertices_(v72, v304, v303, v305);
          v309 = objc_msgSend_drawsArea(v68, v306, v307, v308);
          objc_msgSend_setDrawsArea_(v72, v310, v309, v311);
        }

        v312 = objc_msgSend_doubleSided(v68, v288, v289, v290);
        objc_msgSend_setDoubleSided_(v72, v313, v312, v314);
        v318 = objc_msgSend_categoryBitMask(v68, v315, v316, v317);
        objc_msgSend_setCategoryBitMask_(v72, v319, v318, v320);
        sub_1AF327AD0(v72, v68, v321, v322);
      }

      objc_msgSend_setLight_(Value, v69, v72, v71);
    }

    else
    {
      objc_msgSend_setLight_(Value, v66, 0, v67);
    }

    v323 = objc_msgSend_camera(v7, v103, v104, v105);
    if (v323)
    {
      v326 = v323;
      v328 = CFDictionaryGetValue(a2, v323);
      if (!v328)
      {
        v328 = objc_msgSend_camera(VFXCamera, v324, v327, v325);
        CFDictionarySetValue(a2, v326, v328);
        v332 = objc_msgSend_name(v326, v329, v330, v331);
        objc_msgSend_setName_(v328, v333, v332, v334);
        if (objc_msgSend_wantsDepthOfField(v326, v335, v336, v337))
        {
          v341 = objc_msgSend_depthOfField(VFXCameraEffectDepthOfField, v338, v339, v340);
          objc_msgSend_setDepthOfField_(v328, v342, v341, v343);
          objc_msgSend_fStop(v326, v344, v345, v346);
          v348 = v347;
          v352 = objc_msgSend_depthOfField(v328, v349, v350, v351);
          *&v353 = v348;
          objc_msgSend_setFStop_(v352, v354, v355, v356, v353);
        }

        v357 = objc_msgSend_name(v326, v338, v339, v340);
        objc_msgSend_setName_(v328, v358, v357, v359);
        objc_msgSend_focusDistance(v326, v360, v361, v362);
        *&v363 = v363;
        objc_msgSend_setFocusDistance_(v328, v364, v365, v366, v363);
        objc_msgSend_sensorHeight(v326, v367, v368, v369);
        *&v370 = v370;
        objc_msgSend_setSensorHeight_(v328, v371, v372, v373, v370);
        objc_msgSend_fieldOfView(v326, v374, v375, v376);
        *&v377 = v377;
        objc_msgSend_setFieldOfView_(v328, v378, v379, v380, v377);
        objc_msgSend_postProjectionTransform(v326, v381, v382, v383);
        v1078 = v1082;
        v1079 = v1083;
        v1080 = v1084;
        objc_msgSend_setPostProjectionTransform_(v328, v384, &v1078, v385);
        v389 = objc_msgSend_fillMode(v326, v386, v387, v388);
        objc_msgSend_setFillMode_(v328, v390, v389, v391);
        if (objc_msgSend_projectionDirection(v326, v392, v393, v394))
        {
          objc_msgSend_setProjectionDirection_(v328, v395, 3, v396);
        }

        else
        {
          objc_msgSend_setProjectionDirection_(v328, v395, 2, v396);
        }

        objc_msgSend_zNear(v326, v397, v398, v399);
        *&v400 = v400;
        objc_msgSend_setZNear_(v328, v401, v402, v403, v400);
        objc_msgSend_zFar(v326, v404, v405, v406);
        *&v407 = v407;
        objc_msgSend_setZFar_(v328, v408, v409, v410, v407);
        objc_msgSend_orthographicScale(v326, v411, v412, v413);
        *&v414 = v414;
        objc_msgSend_setOrthographicScale_(v328, v415, v416, v417, v414);
        v421 = objc_msgSend_automaticallyAdjustsZRange(v326, v418, v419, v420);
        objc_msgSend_setAutomaticallyAdjustsZRange_(v328, v422, v421, v423);
        v427 = objc_msgSend_usesOrthographicProjection(v326, v424, v425, v426);
        objc_msgSend_setUsesOrthographicProjection_(v328, v428, v427, v429);
        v433 = objc_msgSend_wantsHDR(v326, v430, v431, v432);
        objc_msgSend_setWantsHDR_(v328, v434, v433, v435);
        objc_msgSend_lensShift(v326, v436, v437, v438);
        objc_msgSend_setFilmOffset_(v328, v439, v440, v441);
        objc_msgSend_motionBlurIntensity(v326, v442, v443, v444);
        if (v448 != 0.0)
        {
          v449 = objc_msgSend_motionBlur(VFXCameraEffectMotionBlur, v445, v446, v447);
          objc_msgSend_setMotionBlur_(v328, v450, v449, v451);
          objc_msgSend_motionBlurIntensity(v326, v452, v453, v454);
          v456 = v455;
          v460 = objc_msgSend_motionBlur(v328, v457, v458, v459);
          *&v461 = v456;
          objc_msgSend_setIntensity_(v460, v462, v463, v464, v461);
        }

        objc_msgSend_bloomIntensity(v326, v445, v446, v447);
        if (v468 != 0.0)
        {
          v469 = objc_msgSend_bloom(VFXCameraEffectBloom, v465, v466, v467);
          objc_msgSend_setBloom_(v328, v470, v469, v471);
          objc_msgSend_bloomIntensity(v326, v472, v473, v474);
          v476 = v475;
          v480 = objc_msgSend_bloom(v328, v477, v478, v479);
          *&v481 = v476;
          objc_msgSend_setIntensity_(v480, v482, v483, v484, v481);
          objc_msgSend_bloomThreshold(v326, v485, v486, v487);
          v489 = v488;
          v493 = objc_msgSend_bloom(v328, v490, v491, v492);
          *&v494 = v489;
          objc_msgSend_setThreshold_(v493, v495, v496, v497, v494);
          v501 = objc_msgSend_bloomIterationCount(v326, v498, v499, v500);
          v505 = objc_msgSend_bloom(v328, v502, v503, v504);
          objc_msgSend_setIterationCount_(v505, v506, v501, v507);
        }

        objc_msgSend_vignettingIntensity(v326, v465, v466, v467);
        if (v511 != 0.0)
        {
          objc_msgSend_vignettingPower(v326, v508, v509, v510);
          if (v512 > 0.0)
          {
            v513 = objc_msgSend_vignetting(VFXCameraEffectVignetting, v508, v509, v510);
            objc_msgSend_setVignetting_(v328, v514, v513, v515);
            objc_msgSend_vignettingIntensity(v326, v516, v517, v518);
            v520 = v519;
            v524 = objc_msgSend_vignetting(v328, v521, v522, v523);
            *&v525 = v520;
            objc_msgSend_setIntensity_(v524, v526, v527, v528, v525);
          }
        }

        objc_msgSend_colorFringeStrength(v326, v508, v509, v510);
        if (v532 != 0.0)
        {
          objc_msgSend_colorFringeIntensity(v326, v529, v530, v531);
          if (v533 != 0.0)
          {
            v534 = objc_msgSend_colorFringe(VFXCameraEffectColorFringe, v529, v530, v531);
            objc_msgSend_setColorFringe_(v328, v535, v534, v536);
            objc_msgSend_colorFringeStrength(v326, v537, v538, v539);
            v541 = v540;
            v545 = objc_msgSend_colorFringe(v328, v542, v543, v544);
            *&v546 = v541;
            objc_msgSend_setStrength_(v545, v547, v548, v549, v546);
            objc_msgSend_colorFringeIntensity(v326, v550, v551, v552);
            v554 = v553;
            v558 = objc_msgSend_colorFringe(v328, v555, v556, v557);
            *&v559 = v554;
            objc_msgSend_setIntensity_(v558, v560, v561, v562, v559);
          }
        }

        objc_msgSend_saturation(v326, v529, v530, v531);
        if (v566 != 1.0)
        {
          objc_msgSend_contrast(v326, v563, v564, v565);
          if (v567 != 1.0)
          {
            if (objc_msgSend_wantsHDR(v326, v563, v564, v565))
            {
              v568 = objc_msgSend_colorGrading(VFXCameraEffectColorGrading, v563, v564, v565);
              objc_msgSend_setColorGrading_(v328, v569, v568, v570);
              objc_msgSend_saturation(v326, v571, v572, v573);
              v575 = v574;
              v579 = objc_msgSend_colorGrading(v328, v576, v577, v578);
              *&v580 = v575;
              objc_msgSend_setSaturation_(v579, v581, v582, v583, v580);
              objc_msgSend_contrast(v326, v584, v585, v586);
              v588 = v587 + 1.0;
              v592 = objc_msgSend_colorGrading(v328, v589, v590, v591);
              *&v593 = v588;
              objc_msgSend_setContrast_(v592, v594, v595, v596, v593);
              objc_msgSend_whiteBalanceTemperature(v326, v597, v598, v599);
              v601 = v600 * 0.5;
              v605 = objc_msgSend_colorGrading(v328, v602, v603, v604);
              *&v606 = v601;
              objc_msgSend_setWhiteBalanceTemperature_(v605, v607, v608, v609, v606);
              objc_msgSend_whiteBalanceTint(v326, v610, v611, v612);
              v614 = v613 * 0.5;
              v618 = objc_msgSend_colorGrading(v328, v615, v616, v617);
              *&v619 = v614;
              objc_msgSend_setWhiteBalanceTint_(v618, v620, v621, v622, v619);
            }
          }
        }

        objc_msgSend_grainIntensity(v326, v563, v564, v565);
        if (v626 != 0.0)
        {
          v627 = objc_msgSend_grain(VFXCameraEffectGrain, v623, v624, v625);
          objc_msgSend_setGrain_(v328, v628, v627, v629);
          objc_msgSend_grainScale(v326, v630, v631, v632);
          v634 = v633;
          v638 = objc_msgSend_grain(v328, v635, v636, v637);
          *&v639 = v634;
          objc_msgSend_setScale_(v638, v640, v641, v642, v639);
          IsColored = objc_msgSend_grainIsColored(v326, v643, v644, v645);
          v650 = objc_msgSend_grain(v328, v647, v648, v649);
          objc_msgSend_setColored_(v650, v651, IsColored, v652);
          objc_msgSend_grainIntensity(v326, v653, v654, v655);
          v657 = v656;
          v661 = objc_msgSend_grain(v328, v658, v659, v660);
          *&v662 = v657;
          objc_msgSend_setIntensity_(v661, v663, v664, v665, v662);
        }

        v666 = objc_msgSend_categoryBitMask(v326, v623, v624, v625);
        objc_msgSend_setCategoryBitMask_(v328, v667, v666, v668);
        sub_1AF327AD0(v328, v326, v669, v670);
      }
    }

    else
    {
      v328 = 0;
    }

    objc_msgSend_setCamera_(Value, v324, v328, v325);
    v674 = objc_msgSend_skinner(v7, v671, v672, v673);
    if (v674)
    {
      v677 = v674;
      v681 = CFDictionaryGetValue(a2, v674);
      if (!v681)
      {
        v682 = objc_msgSend_baseGeometry(v677, v678, v679, v680);
        v1061 = sub_1AF327DA8(v682, a2, a3, a4);
        if (objc_msgSend_boneWeights(v677, v683, v684, v685))
        {
          v689 = objc_msgSend_boneWeights(v677, v686, v687, v688);
          v1059 = sub_1AF328B2C(v689, a2);
        }

        else
        {
          v1059 = 0;
        }

        v1063 = v7;
        if (objc_msgSend_boneIndices(v677, v686, v687, v688))
        {
          v696 = objc_msgSend_boneIndices(v677, v693, v694, v695);
          v1057 = sub_1AF328B2C(v696, a2);
        }

        else
        {
          v1057 = 0;
        }

        v697 = objc_msgSend_array(MEMORY[0x1E695DF70], v693, v694, v695);
        v1078 = 0u;
        v1079 = 0u;
        v1080 = 0u;
        v1081 = 0u;
        v701 = objc_msgSend_bones(v677, v698, v699, v700);
        v703 = objc_msgSend_countByEnumeratingWithState_objects_count_(v701, v702, &v1078, &v1082, 16);
        if (v703)
        {
          v707 = v703;
          v708 = *v1079;
          do
          {
            for (j = 0; j != v707; ++j)
            {
              if (*v1079 != v708)
              {
                objc_enumerationMutation(v701);
              }

              v710 = sub_1AF3264A4(*(*(&v1078 + 1) + 8 * j), a2, a3, a4);
              objc_msgSend_addObject_(v697, v711, v710, v712);
            }

            v707 = objc_msgSend_countByEnumeratingWithState_objects_count_(v701, v713, &v1078, &v1082, 16);
          }

          while (v707);
        }

        v714 = objc_msgSend_geometry(v1061, v704, v705, v706);
        v718 = objc_msgSend_boneInverseBindTransforms(v677, v715, v716, v717);
        v681 = objc_msgSend_skinnerWithBaseGeometry_bones_boneInverseBindTransforms_boneWeights_boneIndices_(VFXSkinner, v719, v714, v697, v718, v1059, v1057);
        v723 = objc_msgSend_skeleton(v677, v720, v721, v722);
        v724 = sub_1AF3264A4(v723, a2, a3, a4);
        objc_msgSend_setSkeleton_(v681, v725, v724, v726);
        objc_msgSend_baseGeometryBindTransform(v677, v727, v728, v729);
        objc_msgSend_setBaseGeometryBindTransform_(v681, v730, v731, v732, *&v1073, *&v1074, *&v1075, *&v1076);
        v736 = objc_msgSend__bonesAndIndicesCompression(v677, v733, v734, v735);
        objc_msgSend_set_bonesAndIndicesCompression_(v681, v737, v736, v738);
        CFDictionarySetValue(a2, v677, v681);
        v7 = v1063;
      }

      objc_msgSend_setSkinner_(Value, v678, v681, v680);
    }

    else
    {
      objc_msgSend_setSkinner_(Value, v675, 0, v676);
    }

    v739 = objc_msgSend_morpher(v7, v690, v691, v692);
    if (v739)
    {
      v742 = v739;
      v745 = CFDictionaryGetValue(a2, v739);
      if (!v745)
      {
        v746 = objc_alloc_init(VFXMorpher);
        CFDictionarySetValue(a2, v742, v746);
        v749 = objc_msgSend_valueForKey_(v742, v747, @"_useSparseTargets", v748);
        objc_msgSend_setValue_forKey_(v746, v750, v749, @"_useSparseTargets");
        v754 = objc_msgSend_inBetweenCounts(v742, v751, v752, v753);
        v758 = objc_msgSend_count(v754, v755, v756, v757);
        v762 = objc_msgSend_correctivesAndInBetween(v742, v759, v760, v761);
        v1060 = v742;
        v1062 = v746;
        if (v758 | objc_msgSend_count(v762, v763, v764, v765))
        {
          v1064 = v7;
          v797 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v1073 = 0u;
          v1074 = 0u;
          v1075 = 0u;
          v1076 = 0u;
          v801 = objc_msgSend_targetsAndInBetween(v742, v798, v799, v800);
          v803 = objc_msgSend_countByEnumeratingWithState_objects_count_(v801, v802, &v1073, &v1082, 16);
          if (v803)
          {
            v804 = v803;
            v805 = *v1074;
            do
            {
              for (k = 0; k != v804; ++k)
              {
                if (*v1074 != v805)
                {
                  objc_enumerationMutation(v801);
                }

                v807 = sub_1AF327DA8(*(*(&v1073 + 1) + 8 * k), a2, a3, a4);
                v811 = objc_msgSend_geometry(v807, v808, v809, v810);
                objc_msgSend_addObject_(v797, v812, v811, v813);
              }

              v804 = objc_msgSend_countByEnumeratingWithState_objects_count_(v801, v814, &v1073, &v1082, 16);
            }

            while (v804);
          }

          v777 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v1069 = 0u;
          v1070 = 0u;
          v1071 = 0u;
          v1072 = 0u;
          v818 = objc_msgSend_correctivesAndInBetween(v742, v815, v816, v817);
          v820 = objc_msgSend_countByEnumeratingWithState_objects_count_(v818, v819, &v1069, &v1078, 16);
          if (v820)
          {
            v824 = v820;
            v825 = *v1070;
            do
            {
              for (m = 0; m != v824; ++m)
              {
                if (*v1070 != v825)
                {
                  objc_enumerationMutation(v818);
                }

                v827 = sub_1AF327DA8(*(*(&v1069 + 1) + 8 * m), a2, a3, a4);
                v831 = objc_msgSend_geometry(v827, v828, v829, v830);
                objc_msgSend_addObject_(v777, v832, v831, v833);
              }

              v824 = objc_msgSend_countByEnumeratingWithState_objects_count_(v818, v834, &v1069, &v1078, 16);
            }

            while (v824);
          }

          v793 = v1060;
          v1058 = objc_msgSend_inBetweenCounts(v1060, v821, v822, v823);
          v1056 = objc_msgSend_inBetweenWeights(v1060, v835, v836, v837);
          v1055 = objc_msgSend_correctiveDriverCounts(v1060, v838, v839, v840);
          v844 = objc_msgSend_correctiveDriverIndices(v1060, v841, v842, v843);
          v848 = objc_msgSend_correctiveInBetweenCounts(v1060, v845, v846, v847);
          v852 = objc_msgSend_correctiveInBetweenWeights(v1060, v849, v850, v851);
          v745 = v1062;
          objc_msgSend_setTargetsAndInBetweens_inBetweenCounts_inBetweenWeights_correctives_driverCounts_driverIndices_inBetweenCounts_inBetweenWeights_(v1062, v853, v797, v1058, v1056, v777, v1055, v844, v848, v852);

          v7 = v1064;
        }

        else
        {
          v769 = objc_msgSend_targets(v742, v766, v767, v768);
          v770 = objc_alloc(MEMORY[0x1E695DF70]);
          v774 = objc_msgSend_count(v769, v771, v772, v773);
          v777 = objc_msgSend_initWithCapacity_(v770, v775, v774, v776);
          v1078 = 0u;
          v1079 = 0u;
          v1080 = 0u;
          v1081 = 0u;
          v779 = objc_msgSend_countByEnumeratingWithState_objects_count_(v769, v778, &v1078, &v1082, 16);
          if (v779)
          {
            v782 = v779;
            v783 = *v1079;
            do
            {
              for (n = 0; n != v782; ++n)
              {
                if (*v1079 != v783)
                {
                  objc_enumerationMutation(v769);
                }

                v785 = sub_1AF327DA8(*(*(&v1078 + 1) + 8 * n), a2, a3, a4);
                v789 = objc_msgSend_geometry(v785, v786, v787, v788);
                objc_msgSend_addObject_(v777, v790, v789, v791);
              }

              v782 = objc_msgSend_countByEnumeratingWithState_objects_count_(v769, v792, &v1078, &v1082, 16);
            }

            while (v782);
          }

          v745 = v1062;
          objc_msgSend_setTargets_(v1062, v780, v777, v781);
          v793 = v1060;
        }

        v857 = objc_msgSend_weights(v793, v854, v855, v856);
        objc_msgSend_setWeights_(v745, v858, v857, v859);
        v863 = objc_msgSend_calculationMode(v793, v860, v861, v862);
        if (v863 <= 1)
        {
          objc_msgSend_setCalculationMode_(v745, v864, v863, v866);
        }

        v867 = objc_msgSend_unifiesNormals(v793, v864, v865, v866);
        objc_msgSend_setUnifiesNormals_(v745, v868, v867, v869);
        shouldMorphNormals = objc_msgSend_shouldMorphNormals(v793, v870, v871, v872);
        objc_msgSend_setShouldMorphNormals_(v745, v874, shouldMorphNormals, v875);
        objc_msgSend_weightIncrementalThreshold(v793, v876, v877, v878);
        objc_msgSend_setWeightIncrementalThreshold_(v745, v879, v880, v881);
        isUsingSparseTargets = objc_msgSend__isUsingSparseTargets(v793, v882, v883, v884);
        if (isUsingSparseTargets != objc_msgSend__isUsingSparseTargets(v745, v886, v887, v888))
        {
          v889 = sub_1AF0D5194();
          if (os_log_type_enabled(v889, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF83A4(v889);
          }
        }
      }

      objc_msgSend_setMorpher_(Value, v743, v745, v744);
    }

    else
    {
      objc_msgSend_setMorpher_(Value, v740, 0, v741);
    }

    v890 = objc_msgSend_physicsBody(v7, v794, v795, v796);
    if (v890)
    {
      v893 = v890;
      v895 = CFDictionaryGetValue(a2, v890);
      if (!v895)
      {
        v896 = objc_msgSend_type(v893, v891, v894, v892);
        if (v896 >= 3)
        {
          v900 = 1;
        }

        else
        {
          v900 = v896;
        }

        v901 = objc_msgSend_physicsShape(v893, v897, v898, v899);
        v902 = sub_1AF3293F8(v901, a2, a3, a4);
        v895 = objc_msgSend_bodyWithType_shape_(VFXPhysicsBody, v903, v900, v902);
        objc_msgSend_mass(v893, v904, v905, v906);
        *&v907 = v907;
        objc_msgSend_setMass_(v895, v908, v909, v910, v907);
        objc_msgSend_momentOfInertia(v893, v911, v912, v913);
        HIDWORD(v915) = v914;
        objc_msgSend_setMomentOfInertia_(v895, v916, v917, v918, v915);
        v922 = objc_msgSend_usesDefaultMomentOfInertia(v893, v919, v920, v921);
        objc_msgSend_setUsesDefaultMomentOfInertia_(v895, v923, v922, v924);
        objc_msgSend_charge(v893, v925, v926, v927);
        *&v928 = v928;
        objc_msgSend_setCharge_(v895, v929, v930, v931, v928);
        objc_msgSend_friction(v893, v932, v933, v934);
        *&v935 = v935;
        objc_msgSend_setFriction_(v895, v936, v937, v938, v935);
        objc_msgSend_restitution(v893, v939, v940, v941);
        *&v942 = v942;
        objc_msgSend_setRestitution_(v895, v943, v944, v945, v942);
        objc_msgSend_rollingFriction(v893, v946, v947, v948);
        *&v949 = v949;
        objc_msgSend_setRollingFriction_(v895, v950, v951, v952, v949);
        v956 = objc_msgSend_allowsResting(v893, v953, v954, v955);
        objc_msgSend_setAllowsResting_(v895, v957, v956, v958);
        objc_msgSend_velocity(v893, v959, v960, v961);
        HIDWORD(v963) = v962;
        objc_msgSend_setVelocity_(v895, v964, v965, v966, v963);
        objc_msgSend_angularVelocity(v893, v967, v968, v969);
        HIDWORD(v971) = v970;
        objc_msgSend_setAngularVelocity_(v895, v972, v973, v974, v971);
        objc_msgSend_damping(v893, v975, v976, v977);
        *&v978 = v978;
        objc_msgSend_setDamping_(v895, v979, v980, v981, v978);
        objc_msgSend_angularDamping(v893, v982, v983, v984);
        *&v985 = v985;
        objc_msgSend_setAngularDamping_(v895, v986, v987, v988, v985);
        objc_msgSend_velocityFactor(v893, v989, v990, v991);
        HIDWORD(v993) = v992;
        objc_msgSend_setVelocityFactor_(v895, v994, v995, v996, v993);
        objc_msgSend_angularVelocityFactor(v893, v997, v998, v999);
        HIDWORD(v1001) = v1000;
        objc_msgSend_setAngularVelocityFactor_(v895, v1002, v1003, v1004, v1001);
        v1008 = objc_msgSend_categoryBitMask(v893, v1005, v1006, v1007);
        objc_msgSend_setCategoryBitMask_(v895, v1009, v1008, v1010);
        v1014 = objc_msgSend_collisionBitMask(v893, v1011, v1012, v1013);
        objc_msgSend_setCollisionBitMask_(v895, v1015, v1014, v1016);
        v1020 = objc_msgSend_contactTestBitMask(v893, v1017, v1018, v1019);
        objc_msgSend_setContactTestBitMask_(v895, v1021, v1020, v1022);
        isAffectedByGravity = objc_msgSend_isAffectedByGravity(v893, v1023, v1024, v1025);
        objc_msgSend_setAffectedByGravity_(v895, v1027, isAffectedByGravity, v1028);
        CFDictionarySetValue(a2, v893, v895);
      }
    }

    else
    {
      v895 = 0;
    }

    objc_msgSend_setPhysicsBody_(Value, v891, v895, v892);
    isHidden = objc_msgSend_isHidden(v7, v1029, v1030, v1031);
    objc_msgSend_setHidden_(Value, v1033, isHidden, v1034);
    objc_msgSend_opacity(v7, v1035, v1036, v1037);
    *&v1038 = v1038;
    objc_msgSend_setOpacity_(Value, v1039, v1040, v1041, v1038);
    v1045 = objc_msgSend_renderingOrder(v7, v1042, v1043, v1044);
    objc_msgSend_setRenderingOrder_(Value, v1046, v1045, v1047);
    v1051 = objc_msgSend_categoryBitMask(v7, v1048, v1049, v1050);
    objc_msgSend_setCategoryBitMask_(Value, v1052, v1051, v1053);
  }

  return Value;
}

uint64_t sub_1AF327760(void *a1, const __CFDictionary *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a2, a1);
  if (!Value)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8428(v7);
    }
  }

  sub_1AF327AD0(Value, a1, v4, v5);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = objc_msgSend_childNodes(a1, v8, v9, v10, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v22, 16);
  if (result)
  {
    v14 = result;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        sub_1AF327760(*(*(&v18 + 1) + 8 * v16++), a2);
      }

      while (v14 != v16);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v18, v22, 16);
      v14 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF327894(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = objc_msgSend_propertyName(a2, a2, a3, a4);
  if (!objc_msgSend_isEqualToString_(v7, v8, @"transparent", v9) || (objc_msgSend_contents(a2, v10, v11, v12), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (sub_1AF28A2DC() && (objc_msgSend_contents(a2, v16, v17, v18), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v19 = objc_msgSend_contents(a2, v16, v17, v18), (objc_msgSend_isAbsolutePath(v19, v20, v21, v22) & 1) == 0))
    {
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(a4, v16, v17, v18);
      v97 = objc_msgSend_path(PathComponent, v94, v95, v96);
      v101 = objc_msgSend_contents(a2, v98, v99, v100);
      v23 = objc_msgSend_stringByAppendingPathComponent_(v97, v102, v101, v103);
    }

    else
    {
      v23 = objc_msgSend_contents(a2, v16, v17, v18);
    }

    objc_msgSend_setContents_(a1, v24, v23, v25);
  }

  v26 = objc_msgSend_minificationFilter(a2, v13, v14, v15);
  objc_msgSend_setMinificationFilter_(a1, v27, v26, v28);
  v32 = objc_msgSend_magnificationFilter(a2, v29, v30, v31);
  objc_msgSend_setMagnificationFilter_(a1, v33, v32, v34);
  v38 = objc_msgSend_mipFilter(a2, v35, v36, v37);
  objc_msgSend_setMipFilter_(a1, v39, v38, v40);
  if (a2)
  {
    objc_msgSend_contentsTransform(a2, v41, v42, v43);
    v45 = v104;
    v47 = v105.i32[1];
    LODWORD(v46) = v105.i32[0];
    v49 = v106.i32[0];
    v48 = v107;
    v50 = vextq_s8(v107, vtrn2q_s32(v106, v107), 4uLL);
    v51 = vzip2q_s64(v106, v105);
    v44 = vextq_s8(v45, v45, 8uLL);
    *v44.i8 = vext_s8(*v104.i8, *v44.i8, 4uLL);
  }

  else
  {
    v48 = 0uLL;
    v44.i64[0] = 0;
    v47 = 0;
    v49 = 0;
    LODWORD(v46) = 0;
    v45 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  HIDWORD(v46) = v47;
  v52 = vextq_s8(v50, v51, 8uLL);
  v52.i32[0] = v49;
  objc_msgSend_setContentsTransform_(a1, v41, v42, v43, *vextq_s8(vextq_s8(v45, v45, 4uLL), v44, 0xCuLL).i64, v46, *v52.i64, *vextq_s8(vextq_s8(v48, v48, 4uLL), v50, 0xCuLL).i64);
  v56 = objc_msgSend_wrapS(a2, v53, v54, v55);
  objc_msgSend_setWrapS_(a1, v57, v56, v58);
  v62 = objc_msgSend_wrapT(a2, v59, v60, v61);
  objc_msgSend_setWrapT_(a1, v63, v62, v64);
  objc_msgSend_intensity(a2, v65, v66, v67);
  *&v68 = v68;
  objc_msgSend_setIntensity_(a1, v69, v70, v71, v68);
  v75 = objc_msgSend_sRGBTexture(a2, v72, v73, v74);
  objc_msgSend_setColorManaged_(a1, v76, v75, v77);
  v81 = objc_msgSend_mappingChannel(a2, v78, v79, v80);
  objc_msgSend_setMappingChannel_(a1, v82, v81, v83);
  v87 = objc_msgSend_textureComponents(a2, v84, v85, v86);
  objc_msgSend_setTextureComponents_(a1, v88, v87, v89);
  return sub_1AF327AD0(a1, a2, v90, v91);
}

uint64_t sub_1AF327AD0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = objc_msgSend_animationKeys(a2, a2, a3, a4, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v32, 16);
  if (result)
  {
    v11 = result;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = objc_msgSend_animationPlayerForKey_(a2, v9, v14, v10);
        v19 = objc_msgSend_animation(v15, v16, v17, v18);
        v23 = objc_msgSend_caAnimation(v19, v20, v21, v22);
        sub_1AF327C08(v23);
        v26 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v24, v23, v25);
        objc_msgSend_addAnimation_forKey_(a1, v27, v26, v14);
        ++v13;
      }

      while (v11 != v13);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v28, v32, 16);
      v11 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1AF327C08(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = objc_msgSend_animations(a1, v2, v3, v4, 0);
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v26, 16);
    if (result)
    {
      v8 = result;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          sub_1AF327C08(*(*(&v22 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v22, v26, 16);
        v8 = result;
      }

      while (result);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v15 = objc_msgSend_keyPath(a1, v12, v13, v14);
      v17 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v15, v16, @"geometry.", @"model.");
      v20 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v17, v18, @"/node-", @"/");

      return objc_msgSend_setKeyPath_(a1, v19, v20, v21);
    }
  }

  return result;
}

void *sub_1AF327DA8(void *key, CFDictionaryRef theDict, uint64_t a3, void *a4)
{
  *(&v520[2] + 4) = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return 0;
  }

  v6 = theDict;
  v7 = key;
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v9 = objc_opt_class();
    v479 = v7;
    theDicta = v6;
    if (v9 != objc_opt_class())
    {
      v13 = CFDictionaryGetValue(v6, v7);
      if (!v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_width(v7, v14, v15, v16);
          v18 = v17;
          objc_msgSend_height(v7, v19, v20, v21);
          v23 = v22;
          objc_msgSend_length(v7, v24, v25, v26);
          v28 = v27;
          objc_msgSend_chamferRadius(v7, v29, v30, v31);
          *&v33 = v32;
          *&v32 = v18;
          *&v34 = v23;
          *&v35 = v28;
          v13 = objc_msgSend_cubeWithWidth_height_length_chamferRadius_(VFXParametricModel, v36, v37, v38, v32, v34, v35, v33);
          objc_msgSend_chamferRadius(v7, v39, v40, v41);
          *&v42 = v42;
          objc_msgSend_setChamferRadius_(v13, v43, v44, v45, v42);
          v49 = objc_msgSend_chamferSegmentCount(v7, v46, v47, v48);
          objc_msgSend_setChamferSegmentCount_(v13, v50, v49, v51);
          v55 = objc_msgSend_widthSegmentCount(v7, v52, v53, v54);
          objc_msgSend_setWidthSegmentCount_(v13, v56, v55, v57);
          v61 = objc_msgSend_heightSegmentCount(v7, v58, v59, v60);
          objc_msgSend_setHeightSegmentCount_(v13, v62, v61, v63);
          v67 = objc_msgSend_lengthSegmentCount(v7, v64, v65, v66);
          objc_msgSend_setLengthSegmentCount_(v13, v68, v67, v69);
          CFDictionarySetValue(v6, v7, v13);
          if (!v13)
          {
            goto LABEL_11;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v70 = [VFXBezierCurveGeometry alloc];
          v74 = objc_msgSend_CGPath(v7, v71, v72, v73);
          objc_msgSend_vfx_curveToGeometryTransform(v7, v75, v76, v77);
          v80 = objc_msgSend_initWithCGPath_transform_(v70, v78, v74, v79);
          v81 = objc_alloc_init(VFXModel);
          objc_msgSend_setGeometry_(v81, v82, v80, v83);

          CFDictionarySetValue(v6, v7, v81);
          v13 = v81;
          if (!v13)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_28:
      v480 = v13;
      CFDictionarySetValue(v6, v7, v13);
      v149 = objc_msgSend_materials(v7, v146, v147, v148);
      v150 = objc_alloc(MEMORY[0x1E695DF70]);
      v154 = objc_msgSend_count(v149, v151, v152, v153);
      v157 = objc_msgSend_initWithCapacity_(v150, v155, v154, v156);
      v495 = 0u;
      v496 = 0u;
      v497 = 0u;
      v498 = 0u;
      obj = v149;
      v494 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v158, &v495, v512, 16);
      if (!v494)
      {
        goto LABEL_97;
      }

      v162 = *v496;
      v487 = *MEMORY[0x1E697A938];
      v486 = *MEMORY[0x1E697A958];
      v485 = *MEMORY[0x1E697A948];
      v484 = *MEMORY[0x1E697A960];
      v483 = *MEMORY[0x1E697A940];
      v163 = 0x1E696A000uLL;
      v482 = *MEMORY[0x1E697A950];
      v481 = *MEMORY[0x1E697A968];
      *&v161 = 138412546;
      v478 = v161;
      v488 = *v496;
      v489 = v157;
      while (1)
      {
        v164 = 0;
        do
        {
          if (*v496 != v162)
          {
            objc_enumerationMutation(obj);
          }

          v165 = *(*(&v495 + 1) + 8 * v164);
          v169 = CFDictionaryGetValue(v6, v165);
          if (!v169)
          {
            v492 = v164;
            v169 = objc_msgSend_material(VFXMaterial, v166, v167, v168);
            CFDictionarySetValue(v6, v165, v169);
            v173 = objc_msgSend_name(v165, v170, v171, v172);
            objc_msgSend_setName_(v169, v174, v173, v175);
            v179 = objc_msgSend_lightingModelName(v165, v176, v177, v178);
            if (objc_msgSend_isEqualToString_(v179, v180, v487, v181) & 1) != 0 || (objc_msgSend_isEqualToString_(v179, v182, v486, v183) & 1) != 0 || (objc_msgSend_isEqualToString_(v179, v182, v485, v183))
            {
              objc_msgSend_setShadingModel_(v169, v182, 1, v183, v478);
              goto LABEL_38;
            }

            if (objc_msgSend_isEqualToString_(v179, v182, v484, v183))
            {
LABEL_56:
              objc_msgSend_setShadingModel_(v169, v277, 0, v278, v478);
            }

            else if (objc_msgSend_isEqualToString_(v179, v277, v483, v278) & 1) != 0 || (objc_msgSend_isEqualToString_(v179, v283, v482, v284))
            {
              objc_msgSend_setShadingModel_(v169, v283, 2, v284, v478);
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(v179, v283, v481, v284))
              {
                goto LABEL_56;
              }

              objc_msgSend_setShadingModel_(v169, v277, 3, v278, v478);
            }

LABEL_38:
            objc_msgSend_shininess(v165, v184, v185, v186);
            *&v187 = v187;
            objc_msgSend_setShininess_(v169, v188, v189, v190, v187);
            v194 = objc_msgSend_transparencyMode(v165, v191, v192, v193);
            if (v194 == 3)
            {
              objc_msgSend_setTransparencyMode_(v169, v195, 2, v196);
            }

            else
            {
              objc_msgSend_setTransparencyMode_(v169, v195, v194 == 2, v196);
            }

            isLitPerPixel = objc_msgSend_isLitPerPixel(v165, v197, v198, v199);
            objc_msgSend_setLitPerPixel_(v169, v201, isLitPerPixel, v202);
            isDoubleSided = objc_msgSend_isDoubleSided(v165, v203, v204, v205);
            objc_msgSend_setDoubleSided_(v169, v207, isDoubleSided, v208);
            v212 = objc_msgSend_cullMode(v165, v209, v210, v211);
            objc_msgSend_setCullMode_(v169, v213, v212, v214);
            v218 = objc_msgSend_avoidsOverLighting(v165, v215, v216, v217);
            objc_msgSend_setAvoidsOverLighting_(v169, v219, v218, v220);
            v224 = objc_msgSend_fillMode(v165, v221, v222, v223);
            objc_msgSend_setFillMode_(v169, v225, v224, v226);
            objc_msgSend_fresnelExponent(v165, v227, v228, v229);
            *&v230 = v230;
            objc_msgSend_setFresnelExponent_(v169, v231, v232, v233, v230);
            v237 = objc_msgSend_writesToDepthBuffer(v165, v234, v235, v236);
            objc_msgSend_setWritesToDepthBuffer_(v169, v238, v237, v239);
            v243 = objc_msgSend_readsFromDepthBuffer(v165, v240, v241, v242);
            objc_msgSend_setReadsFromDepthBuffer_(v169, v244, v243, v245);
            v249 = objc_msgSend_colorBufferWriteMask(v165, v246, v247, v248);
            objc_msgSend_setColorBufferWriteMask_(v169, v250, v249, v251);
            v255 = objc_msgSend_blendMode(v165, v252, v253, v254);
            if (v255 > 2)
            {
              if (v255 <= 4)
              {
                if (v255 == 3)
                {
                  objc_msgSend_setBlendMode_(v169, v256, 4, v258);
                }

                else
                {
                  objc_msgSend_setBlendMode_(v169, v256, 5, v258);
                }

LABEL_71:
                LODWORD(v262) = -1.0;
                objc_msgSend_setAlphaCutoff_(v169, v259, v260, v261, v262);
                v296 = objc_msgSend_properties(v165, v293, v294, v295);
                v511[0] = MEMORY[0x1E69E9820];
                v511[1] = 3221225472;
                v511[2] = sub_1AF3291B0;
                v511[3] = &unk_1E7A7F088;
                v511[4] = v169;
                v511[5] = a3;
                v511[6] = a4;
                objc_msgSend_enumerateObjectsUsingBlock_(v296, v297, v511, v298);
                objc_msgSend_transparency(v165, v299, v300, v301);
                v306 = v305;
                if (v306 < 1.0)
                {
                  v307 = objc_msgSend_transparent(v169, v302, v303, v304);
                  v311 = objc_msgSend_contents(v307, v308, v309, v310);
                  if (!v311)
                  {
                    *&v315 = v306;
                    v326 = objc_msgSend_numberWithFloat_(*(v163 + 3480), v312, v313, v314, v315);
                    goto LABEL_78;
                  }

                  v316 = v311;
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v321 = *(v163 + 3480);
                  if (isKindOfClass)
                  {
                    objc_msgSend_alphaComponent(v316, v318, v319, v320);
                    v326 = objc_msgSend_numberWithDouble_(v321, v323, v324, v325, v322 * v306);
                    goto LABEL_78;
                  }

                  objc_opt_class();
                  v330 = objc_opt_isKindOfClass();
                  v335 = *(v163 + 3480);
                  if (v330)
                  {
                    objc_msgSend_floatValue(v316, v331, v332, v333);
                    *&v337 = v336 * v306;
                    v326 = objc_msgSend_numberWithFloat_(v335, v338, v339, v340, v337);
LABEL_78:
                    v341 = v326;
                    v342 = objc_msgSend_transparent(v169, v327, v328, v329);
                    objc_msgSend_setContents_(v342, v343, v341, v344);
                  }

                  else
                  {
                    *&v334 = v306;
                    v367 = objc_msgSend_numberWithFloat_(*(v163 + 3480), v331, v332, v333, v334);
                    v371 = objc_msgSend_transparent(v169, v368, v369, v370);
                    objc_msgSend_setContents_(v371, v372, v367, v373);
                    v374 = sub_1AF0D5194();
                    if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
                    {
                      sub_1AFDF84AC(v519, v316, v520, v374);
                    }
                  }

                  if (!objc_msgSend_blendMode(v169, v345, v346, v347))
                  {
                    objc_msgSend_setBlendMode_(v169, v302, 1, v304);
                  }
                }

                v509 = 0u;
                v510 = 0u;
                v507 = 0u;
                v508 = 0u;
                v491 = v165;
                v348 = objc_msgSend_customMaterialProperties(v165, v302, v303, v304);
                v350 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v349, &v507, buf, 16);
                if (v350)
                {
                  v353 = v350;
                  v354 = *v508;
                  do
                  {
                    for (i = 0; i != v353; ++i)
                    {
                      if (*v508 != v354)
                      {
                        objc_enumerationMutation(v348);
                      }

                      v356 = *(*(&v507 + 1) + 8 * i);
                      v357 = objc_alloc_init(VFXMaterialProperty);
                      sub_1AF327894(v357, v356, a3, a4);
                      v361 = objc_msgSend_propertyName(v356, v358, v359, v360);
                      objc_msgSend_setValue_forKey_(v169, v362, v357, v361);
                    }

                    v353 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v363, &v507, buf, 16);
                  }

                  while (v353);
                }

                sub_1AF328EFC(v169, v491, v351, v352);
                sub_1AF327AD0(v169, v491, v364, v365);
                v164 = v492;
                v6 = theDicta;
                v162 = v488;
                v157 = v489;
                v163 = 0x1E696A000;
                goto LABEL_89;
              }

              if (v255 == 6)
              {
                objc_msgSend_setBlendMode_(v169, v256, 6, v258);
                goto LABEL_71;
              }

LABEL_51:
              objc_msgSend_setBlendMode_(v169, v256, 0, v258);
              goto LABEL_71;
            }

            if (v255)
            {
              v263 = 2;
              if (v255 != 1)
              {
                if (v255 == 2)
                {
                  objc_msgSend_setBlendMode_(v169, v256, 3, v258);
                  goto LABEL_71;
                }

                goto LABEL_51;
              }

LABEL_70:
              objc_msgSend_setBlendMode_(v169, v256, v263, v258);
              goto LABEL_71;
            }

            v264 = objc_msgSend_transparent(v165, v256, v257, v258);
            v268 = objc_msgSend_contents(v264, v265, v266, v267);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_alphaComponent(v268, v269, v270, v271);
              v276 = v275;
              goto LABEL_59;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_floatValue(v268, v279, v280, v281);
LABEL_59:
              v282 = v276 >= 1.0;
            }

            else
            {
              if (objc_msgSend_transparencyMode(v165, v279, v280, v281) == 1)
              {
                v285 = sub_1AF0D5194();
                if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                {
                  v375 = objc_msgSend_name(v165, v272, v273, v274);
                  *buf = v478;
                  v516 = v375;
                  v517 = 2112;
                  v518 = v268;
                }
              }

              v282 = 0;
            }

            v286 = objc_msgSend_diffuse(v165, v272, v273, v274);
            v290 = objc_msgSend_contents(v286, v287, v288, v289);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_alphaComponent(v290, v256, v291, v258);
              *&v292 = v292;
              v282 = (*&v292 >= 1.0) & v282;
            }

            v263 = v282 ^ 1u;
            goto LABEL_70;
          }

LABEL_89:
          objc_msgSend_addObject_(v157, v166, v169, v168, v478);
          ++v164;
        }

        while (v164 != v494);
        v376 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v366, &v495, v512, 16);
        v494 = v376;
        if (!v376)
        {
LABEL_97:
          objc_msgSend_setMaterials_(v480, v159, v157, v160);

          v380 = objc_msgSend_name(v479, v377, v378, v379);
          objc_msgSend_setName_(v480, v381, v380, v382);
          v386 = objc_msgSend_name(v480, v383, v384, v385);
          v390 = objc_msgSend_geometry(v480, v387, v388, v389);
          objc_msgSend_setName_(v390, v391, v386, v392);
          v396 = objc_msgSend_subdivisionLevel(v479, v393, v394, v395);
          objc_msgSend_setSubdivisionLevel_(v480, v397, v396, v398);
          v402 = objc_msgSend_wantsAdaptiveSubdivision(v479, v399, v400, v401);
          objc_msgSend_setWantsAdaptiveSubdivision_(v480, v403, v402, v404);
          v408 = objc_msgSend_tessellator(v479, v405, v406, v407);
          if (v408)
          {
            v411 = v408;
            v412 = CFDictionaryGetValue(v6, v408);
            if (!v412)
            {
              v413 = objc_alloc_init(VFXModelTessellator);
              objc_msgSend_tessellationFactorScale(v411, v414, v415, v416);
              *&v417 = v417;
              objc_msgSend_setTessellationFactorScale_(v413, v418, v419, v420, v417);
              v424 = objc_msgSend_tessellationPartitionMode(v411, v421, v422, v423);
              objc_msgSend_setTessellationPartitionMode_(v413, v425, v424, v426);
              isAdaptive = objc_msgSend_isAdaptive(v411, v427, v428, v429);
              objc_msgSend_setAdaptive_(v413, v431, isAdaptive, v432);
              isScreenSpace = objc_msgSend_isScreenSpace(v411, v433, v434, v435);
              objc_msgSend_setScreenSpace_(v413, v437, isScreenSpace, v438);
              objc_msgSend_edgeTessellationFactor(v411, v439, v440, v441);
              *&v442 = v442;
              objc_msgSend_setEdgeTessellationFactor_(v413, v443, v444, v445, v442);
              objc_msgSend_insideTessellationFactor(v411, v446, v447, v448);
              *&v449 = v449;
              objc_msgSend_setInsideTessellationFactor_(v413, v450, v451, v452, v449);
              objc_msgSend_maximumEdgeLength(v411, v453, v454, v455);
              *&v456 = v456;
              objc_msgSend_setMaximumEdgeLength_(v413, v457, v458, v459, v456);
              v463 = objc_msgSend_smoothingMode(v411, v460, v461, v462);
              objc_msgSend_setSmoothingMode_(v413, v464, v463, v465);
              CFDictionarySetValue(v6, v411, v413);
              v412 = v413;
            }
          }

          else
          {
            v412 = 0;
          }

          Value = v480;
          objc_msgSend_setTessellator_(v480, v409, v412, v410);
          if (objc_msgSend_subdivisionLevel(v480, v466, v467, v468))
          {
            v472 = objc_msgSend__subdivisionSettings(v479, v469, v470, v471);
            objc_msgSend_set_subdivisionSettings_(v480, v473, v472, v474);
          }

          sub_1AF328EFC(v480, v479, v470, v471);
          sub_1AF327AD0(v480, v479, v475, v476);
          return Value;
        }
      }
    }

LABEL_11:
    v84 = objc_msgSend_geometrySources(v7, v10, v11, v12);
    v88 = objc_msgSend_geometryElements(v7, v85, v86, v87);
    v89 = objc_alloc(MEMORY[0x1E695DF70]);
    v93 = objc_msgSend_count(v84, v90, v91, v92);
    v96 = objc_msgSend_initWithCapacity_(v89, v94, v93, v95);
    v97 = objc_alloc(MEMORY[0x1E695DF70]);
    v101 = objc_msgSend_count(v88, v98, v99, v100);
    v104 = objc_msgSend_initWithCapacity_(v97, v102, v101, v103);
    v503 = 0u;
    v504 = 0u;
    v505 = 0u;
    v506 = 0u;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v105, &v503, v514, 16);
    if (v106)
    {
      v108 = v106;
      v109 = *v504;
      do
      {
        for (j = 0; j != v108; ++j)
        {
          if (*v504 != v109)
          {
            objc_enumerationMutation(v84);
          }

          v111 = sub_1AF328B2C(*(*(&v503 + 1) + 8 * j), theDicta);
          objc_msgSend_addObject_(v96, v112, v111, v113);
        }

        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v114, &v503, v514, 16);
      }

      while (v108);
    }

    v501 = 0u;
    v502 = 0u;
    v499 = 0u;
    v500 = 0u;
    v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v107, &v499, v513, 16);
    v6 = theDicta;
    if (v115)
    {
      v119 = v115;
      v120 = *v500;
      do
      {
        for (k = 0; k != v119; ++k)
        {
          if (*v500 != v120)
          {
            objc_enumerationMutation(v88);
          }

          v122 = sub_1AF328DA0(*(*(&v499 + 1) + 8 * k), theDicta);
          objc_msgSend_addObject_(v104, v123, v122, v124);
        }

        v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v125, &v499, v513, 16);
      }

      while (v119);
    }

    v7 = v479;
    v126 = objc_msgSend_geometrySourceChannels(v479, v116, v117, v118);
    v128 = objc_msgSend_meshWithSources_elements_sourceChannels_(VFXMesh, v127, v96, v104, v126);
    v13 = objc_msgSend_modelWithMesh_(VFXModel, v129, v128, v130);

    v134 = objc_msgSend_edgeCreasesSource(v479, v131, v132, v133);
    v138 = objc_msgSend_edgeCreasesElement(v479, v135, v136, v137);
    if (v134)
    {
      v139 = v138;
      if (v138)
      {
        v140 = sub_1AF328B2C(v134, theDicta);
        objc_msgSend_setEdgeCreasesSource_(v13, v141, v140, v142);
        v143 = sub_1AF328DA0(v139, theDicta);
        objc_msgSend_setEdgeCreasesElement_(v13, v144, v143, v145);
      }
    }

    goto LABEL_28;
  }

  return Value;
}

void *sub_1AF328B2C(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v8 = objc_msgSend_data(key, v4, v5, v6);
    v12 = objc_msgSend_semantic(key, v9, v10, v11);
    if (objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x1E697A920], v14))
    {
      v18 = VFXMeshSourceSemanticPosition;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A908], v17))
    {
      v18 = VFXMeshSourceSemanticNormal;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A8F8], v17))
    {
      v18 = VFXMeshSourceSemanticColor;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A918], v17))
    {
      v18 = VFXMeshSourceSemanticTexcoord;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A910], v17))
    {
      v18 = VFXMeshSourceSemanticTangent;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A928], v17))
    {
      v18 = VFXMeshSourceSemanticVertexCrease;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A900], v17))
    {
      v18 = VFXMeshSourceSemanticEdgeCrease;
    }

    else if (objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A8F0], v17))
    {
      v18 = VFXMeshSourceSemanticBoneWeights;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v12, v15, *MEMORY[0x1E697A8E8], v17))
      {
        v48 = sub_1AF0D5194();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF851C(v48, v15, v16, v17, v49, v50, v51, v52);
        }

        goto LABEL_21;
      }

      v18 = VFXMeshSourceSemanticBoneIndices;
    }

    v12 = *v18;
LABEL_21:
    v19 = objc_msgSend_vectorCount(key, v15, v16, v17);
    v23 = objc_msgSend_floatComponents(key, v20, v21, v22);
    v27 = objc_msgSend_componentsPerVector(key, v24, v25, v26);
    v31 = objc_msgSend_bytesPerComponent(key, v28, v29, v30);
    v35 = objc_msgSend_dataOffset(key, v32, v33, v34);
    v39 = objc_msgSend_dataStride(key, v36, v37, v38);
    Value = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v40, v8, v12, v19, v23, v27, v31, v35, v39);
    v44 = objc_msgSend__encodeDataAsHalf(key, v41, v42, v43);
    objc_msgSend_set_encodeDataAsHalf_(Value, v45, v44, v46);
    CFDictionarySetValue(theDict, key, Value);
  }

  return Value;
}

void *sub_1AF328DA0(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (!Value)
  {
    v8 = objc_msgSend_data(key, v4, v5, v6);
    v15 = objc_msgSend_primitiveType(key, v9, v10, v11);
    if (v15 >= 5)
    {
      v16 = sub_1AF0D5194();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8554(v16, v12, v13, v14, v17, v18, v19, v20);
      }
    }

    v21 = objc_msgSend_primitiveCount(key, v12, v13, v14);
    v25 = objc_msgSend_indicesChannelCount(key, v22, v23, v24);
    hasInterleavedIndicesChannels = objc_msgSend_hasInterleavedIndicesChannels(key, v26, v27, v28);
    v33 = objc_msgSend_bytesPerIndex(key, v30, v31, v32);
    Value = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(VFXMeshElement, v34, v8, v15, v21, v25, hasInterleavedIndicesChannels, v33);
    objc_msgSend_primitiveRange(key, v35, v36, v37);
    if (v38)
    {
      v41 = objc_msgSend_primitiveRange(key, v38, v39, v40);
      objc_msgSend_setPrimitiveRange_(Value, v42, v41, v42);
    }

    objc_msgSend_pointSize(key, v38, v39, v40);
    *&v43 = v43;
    objc_msgSend_setPointSize_(Value, v44, v45, v46, v43);
    objc_msgSend_minimumPointScreenSpaceRadius(key, v47, v48, v49);
    *&v50 = v50;
    objc_msgSend_setMinimumPointScreenSpaceRadius_(Value, v51, v52, v53, v50);
    objc_msgSend_maximumPointScreenSpaceRadius(key, v54, v55, v56);
    *&v57 = v57;
    objc_msgSend_setMaximumPointScreenSpaceRadius_(Value, v58, v59, v60, v57);
    CFDictionarySetValue(theDict, key, Value);
  }

  return Value;
}

void sub_1AF328EFC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_shaderModifiers(a2, a2, a3, a4);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v14 = objc_msgSend_count(v6, v11, v12, v13);
    v17 = objc_msgSend_initWithCapacity_(v10, v15, v14, v16);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1AF3292C0;
    v44[3] = &unk_1E7A7F0B0;
    v44[4] = v17;
    v44[5] = &v45;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v18, v44, v19);
    if (*(v46 + 24) == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_blendMode(a1, v22, v23, v24) != 1)
        {
          objc_msgSend_setBlendMode_(a1, v20, 1, v21);
        }
      }

      else
      {
        v25 = sub_1AF0D5194();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          sub_1AFDF858C(v27, buf, v25);
        }
      }
    }

    objc_msgSend_setShaderModifiers_(a1, v20, v17, v21);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = objc_msgSend_customMaterialAttributeNames(a2, v28, v29, v30, 0);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v40, v49, 16);
    if (v35)
    {
      v36 = *v41;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v41 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v38 = *(*(&v40 + 1) + 8 * i);
          v39 = objc_msgSend_valueForKey_(a2, v33, v38, v34);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_msgSend_setValue_forKey_(a1, v33, v39, v38);
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v40, v49, 16);
      }

      while (v35);
    }

    _Block_object_dispose(&v45, 8);
  }
}

void sub_1AF3291B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_propertyName(a2, a2, a3, a4);
  if (v6)
  {
    v9 = v6;
    if ((objc_msgSend_isEqualToString_(v6, v7, @"ambient", v8) & 1) == 0)
    {
      v12 = objc_msgSend_propertyWithName_(*(a1 + 32), v10, v9, v11);
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);

        sub_1AF327894(v12, a2, v13, v14);
      }

      else
      {
        v29 = objc_alloc_init(VFXMaterialProperty);
        sub_1AF327894(v29, a2, *(a1 + 40), *(a1 + 48));
        v23 = *(a1 + 32);
        v27 = objc_msgSend_propertyName(a2, v24, v25, v26);
        objc_msgSend_setValue_forKey_(v23, v28, v29, v27);
      }
    }
  }

  else
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF85D4(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

uint64_t sub_1AF3292C0(uint64_t a1, void *a2)
{
  v4 = _SCNShadableConvertShaderToMetalIfNeeded();
  v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @"scn_frame", @"vfx_frame");
  v8 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v6, v7, @"scn_node", @"vfx_node");
  if (objc_msgSend_containsString_(v8, v9, @"#pragma transparent", v10))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (objc_msgSend_isEqualToString_(a2, v11, *MEMORY[0x1E697A9E0], v12))
  {
    v15 = VFXShaderModifierEntryPointSurface;
  }

  else if (objc_msgSend_isEqualToString_(a2, v13, *MEMORY[0x1E697A9C8], v14))
  {
    v15 = VFXShaderModifierEntryPointFragment;
  }

  else if (objc_msgSend_isEqualToString_(a2, v13, *MEMORY[0x1E697A9D0], v16))
  {
    v15 = VFXShaderModifierEntryPointVertex;
  }

  else
  {
    result = objc_msgSend_isEqualToString_(a2, v13, *MEMORY[0x1E697A9D8], v17);
    if (!result)
    {
      return result;
    }

    v15 = VFXShaderModifierEntryPointLighting;
  }

  v19 = *(a1 + 32);
  v20 = *v15;

  return objc_msgSend_setValue_forKey_(v19, v13, v8, v20);
}

void *sub_1AF3293F8(void *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, a1);
  if (!Value)
  {
    v12 = objc_msgSend_sourceObject(a1, v8, v9, v10);
    v16 = objc_msgSend_options(a1, v13, v14, v15);
    v19 = objc_msgSend_objectForKeyedSubscript_(v16, v17, *MEMORY[0x1E697A998], v18);
    if (objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x1E697A990], v21))
    {
      v24 = 0;
    }

    else if (objc_msgSend_isEqualToString_(v19, v22, *MEMORY[0x1E697A988], v23))
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v25 = objc_msgSend_objectForKeyedSubscript_(v16, v22, *MEMORY[0x1E697A970], v23);
    if (v25)
    {
      v29 = objc_msgSend_BOOLValue(v25, v26, v27, v28) ^ 1;
    }

    else
    {
      v29 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = sub_1AF3264A4(v12, a2, a3, a4);
      v32 = objc_msgSend_shapeWithNode_flattened_(VFXPhysicsShape, v31, v30, v29);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = sub_1AF327DA8(v12, a2, a3, a4);
        v32 = objc_msgSend_shapeWithModel_(VFXPhysicsShape, v36, v35, v37);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v82 = v24;
          v66 = objc_msgSend_array(MEMORY[0x1E695DF70], v63, v64, v65);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v67, &v83, v87, 16);
          if (v68)
          {
            v72 = v68;
            v73 = *v84;
            do
            {
              v74 = 0;
              do
              {
                if (*v84 != v73)
                {
                  objc_enumerationMutation(v12);
                }

                v75 = sub_1AF3293F8(*(*(&v83 + 1) + 8 * v74), a2, a3, a4);
                if (v75)
                {
                  objc_msgSend_addObject_(v66, v76, v75, v77);
                }

                ++v74;
              }

              while (v72 != v74);
              v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v76, &v83, v87, 16);
            }

            while (v72);
          }

          v78 = objc_msgSend_transforms(a1, v69, v70, v71);
          Value = objc_msgSend_shapeWithShapes_transforms_(VFXPhysicsShape, v79, v66, v78);
          objc_msgSend_setType_(Value, v80, v82, v81);
          goto LABEL_17;
        }

        if (v12)
        {
          Value = 0;
          objc_msgSend_setType_(0, v63, v24, v65);
          goto LABEL_17;
        }

        v32 = objc_msgSend_shapeWithModel_(VFXPhysicsShape, v63, 0, v65);
      }
    }

    Value = v32;
    objc_msgSend_setType_(v32, v33, v24, v34);
LABEL_17:
    v40 = objc_msgSend_objectForKeyedSubscript_(v16, v38, *MEMORY[0x1E697A980], v39);
    if (v40)
    {
      v43 = v40;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_floatValue(v43, v44, v45, v46);
        objc_msgSend_setScale_(Value, v48, v49, v50, *vdupq_lane_s32(v47, 0).i64);
      }

      else
      {
        objc_msgSend_float3Value(v43, v44, v45, v46);
        objc_msgSend_setScale_(Value, v51, v52, v53, v54);
      }
    }

    v55 = objc_msgSend_objectForKeyedSubscript_(v16, v41, *MEMORY[0x1E697A978], v42);
    if (v55)
    {
      objc_msgSend_floatValue(v55, v56, v57, v58);
      objc_msgSend_setMargin_(Value, v59, v60, v61);
    }

    CFDictionarySetValue(a2, a1, Value);
  }

  return Value;
}

uint64_t sub_1AF329F7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend__setCFXProgram(*(a1 + 32), a2, a3, a4);
  v7 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v7, sel__startObservingProgram, v5, v6);
}

void sub_1AF32A280(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = objc_alloc_init(VFXShaderArgument);
  objc_msgSend_setName_(v15, v6, a2, v7);
  v11 = sub_1AF1F1B4C(a3, v8, v9, v10);
  objc_msgSend_setType_(v15, v12, v11, v13);
  objc_msgSend_setValue_forKey_(*(*(a1 + 32) + 48), v14, v15, a2);
}

uint64_t sub_1AF32A318(uint64_t a1)
{
  v1 = sub_1AF1CF8AC(*(a1 + 32));

  return sub_1AF14E518(v1, v2, v3, v4);
}

void sub_1AF32A688(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_owner(*(a1 + 32), a2, a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = objc_msgSend___CFObject(v5, v6, v7, v8);
    v10 = *(a1 + 40);

    sub_1AF16E18C(v9, v10);
  }

  else
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF88A4();
    }
  }
}

uint64_t sub_1AF32A7BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend__setCFXProgram(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6, v7);
  v12 = objc_msgSend_owner(*(a1 + 32), v9, v10, v11);
  v17 = objc_msgSend_worldRef(v12, v13, v14, v15);

  return objc_msgSend_postNotificationName_object_(v8, v16, @"kCFXWorldDidUpdateNotification", v17);
}

uint64_t sub_1AF32AA40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3, a4);
  v7 = *(*(a1 + 32) + 8);

  return objc_msgSend_postNotificationName_object_userInfo_(v5, v6, @"VFXShadableInterfaceDidChangeNotificationName", v7, 0);
}

CFHashCode sub_1AF32AD28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_libraryProvider(*(a1 + 32), a2, a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MEMORY[0x1EEE66B58](v4, sel__libraryHash, v5, v6);
  }

  else if (v4)
  {

    return CFHash(v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF32ADB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_libraryProvider(*(a1 + 32), a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_libraryForDevice_, a2, v6);
}

void sub_1AF32B16C(uint64_t a1, void *a2, __CFString *a3, uint64_t a4)
{
  if (objc_msgSend_isEqualToString_(a2, a2, @"VFXShaderModifierEntryPointVertex", a4))
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(a2, v7, @"VFXShaderModifierEntryPointSurface", v8))
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(a2, v7, @"VFXShaderModifierEntryPointFragment", v8))
  {
    v9 = 2;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(a2, v7, @"VFXShaderModifierEntryPointLighting", v8))
  {
    v9 = 3;
LABEL_9:
    v10 = objc_msgSend_rangeOfString_(a3, v7, @";", v8);
    if (v11 != 1)
    {
      v14 = VFXGetResourceBundle(v10, v11, v12, v13);
      PathComponent = objc_msgSend_lastPathComponent(a3, v15, v16, v17);
      v22 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v19, v20, v21);
      v26 = objc_msgSend_pathExtension(a3, v23, v24, v25);
      v30 = objc_msgSend_stringByDeletingLastPathComponent(a3, v27, v28, v29);
      v32 = objc_msgSend_pathForResource_ofType_inDirectory_(v14, v31, v22, v26, v30);
      if (v32)
      {
        v33 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x1E696AEC0], v11, v32, 4, 0);
        if (v33)
        {
          a3 = v33;
        }
      }
    }

    v34 = objc_msgSend_length(a3, v11, v12, v13);
    v36 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_options_range_(a3, v35, @"(//.*|/\\*(.|\n)*?\\*/)", &stru_1F2575650, 1024, 0, v34);
    v40 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v37, v38, v39);
    v43 = objc_msgSend_stringByTrimmingCharactersInSet_(v36, v41, v40, v42);
    if (objc_msgSend_length(v43, v44, v45, v46))
    {
      v47 = sub_1AF14863C(a3, v9, 0, 1, 0);
      CFArrayAppendValue(*(a1 + 32), v47);

      CFRelease(v47);
    }

    return;
  }

  v48 = sub_1AF0D5194();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF8998();
  }
}

void sub_1AF32B73C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  sub_1AF1C5A68(v5, *(*(a1 + 32) + 200));
  sub_1AF1C584C(v5, *(*(a1 + 32) + 176));
  sub_1AF1C59B4(v5, *(*(a1 + 32) + 180));
  sub_1AF1C5BF8(v5, *(*(a1 + 32) + 192));
  sub_1AF1C5900(v5, *(*(a1 + 32) + 184));
  sub_1AF1C5B50(v5, *(*(a1 + 32) + 216));
  v6 = *(*(a1 + 32) + 208);

  sub_1AF1C5798(v5, v6);
}

void sub_1AF32BBC4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C5798(v5, v6);
}

void sub_1AF32BD18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C584C(v5, v6);
}

void sub_1AF32BE64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C5900(v5, v6);
}

void sub_1AF32BFB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C59B4(v5, v6);
}

void sub_1AF32C0FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(a1 + 40);

  sub_1AF1C5A68(v5, v6);
}

uint64_t sub_1AF32C268(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(*(a1 + 32) + 216);

  return sub_1AF1C5B50(v5, v6);
}

uint64_t sub_1AF32C3E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_modelRef(*(a1 + 32), a2, a3, a4);
  v6 = *(*(a1 + 32) + 192);

  return sub_1AF1C5BF8(v5, v6);
}

double sub_1AF32CB80(uint64_t a1)
{
  sub_1AF1C8DC8(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  return sub_1AF1C8D3C(v2, 0);
}

void *sub_1AF32CD28(void *a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v14, v18, 16);
  if (!v3)
  {
    return 0;
  }

  v7 = v3;
  v8 = 0;
  v9 = *v15;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(a1);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      if (v8)
      {
        while (!v11)
        {
LABEL_11:
          v8 = objc_msgSend_parentNode(v8, v4, v5, v6);
          if (!v8)
          {
            return v8;
          }
        }

        v12 = v11;
        while (v12 != v8)
        {
          v12 = objc_msgSend_parentNode(v12, v4, v5, v6);
          if (!v12)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v8 = *(*(&v14 + 1) + 8 * i);
      }
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v4, &v14, v18, 16);
  }

  while (v7);
  return v8;
}

double sub_1AF32CF08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_skinnerRef(*(a1 + 32), a2, a3, a4);
  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = objc_msgSend_nodeRef(v9, v5, v6, v7);
  v14 = sub_1AF1C9224(v8, v10);
  v15 = *(a1 + 40);
  if (v14)
  {
    v16 = objc_msgSend_nodeRef(v15, v11, v12, v13);
    if (!sub_1AF1C8FB4(v8, v16))
    {
      v21 = objc_msgSend_nodeRef(*(a1 + 40), v17, v18, v19);
      if (!sub_1AF1C9280(v8, v21))
      {
        v22 = sub_1AF0D5194();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 40);
          v23 = *(a1 + 48);
          v27 = 138412546;
          v28 = v23;
          v29 = 2112;
          v30 = v24;
          _os_log_impl(&dword_1AF0CE000, v22, OS_LOG_TYPE_DEFAULT, "Warning: Failed to transpose skeleton\nold skeleton: %@\nnew skeleton: %@", &v27, 0x16u);
        }
      }
    }

    return result;
  }

  if (!v15)
  {
    sub_1AF1C8DC8(v8, 0);
LABEL_11:
    v26 = v8;
    v25 = 0;
    goto LABEL_12;
  }

  v25 = objc_msgSend_nodeRef(v15, v11, v12, v13);
  v26 = v8;
LABEL_12:

  return sub_1AF1C8D3C(v26, v25);
}

uint64_t sub_1AF32EE28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = objc_msgSend_count(*(a1 + 32), v8, v9, v10);
    *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_initWithCapacity_(v7, v12, v11, v13);
    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  return objc_msgSend_addObject_(v6, a2, a2, a4);
}

uint64_t sub_1AF32F098(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_removeWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

uint64_t sub_1AF32F0F8(uint64_t a1, void *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = *(*(a1 + 32) + 24);

    return objc_msgSend_addWorldReference_(a2, v5, v7, v6);
  }

  return result;
}

id sub_1AF32F644(uint64_t a1, void *a2)
{
  result = a2;
  *(*(a1 + 32) + 24) = result;
  return result;
}