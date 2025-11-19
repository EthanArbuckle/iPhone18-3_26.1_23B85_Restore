char *_ZN4ecs27Runtime9_entitiesIN2md3ita21CreateMainRenderItemsEJRKNS2_2ls16MeshRenderableIDERKNS5_16SliceAssignmentTILNS2_9SliceTypeE7EEERKNS5_26RenderableMeshVertexFormatERKNS5_8TileTypeERKNS5_17PendingProcessingERKNS5_14MeshLayerTypeVERKNS5_18IntendedSceneLayerEPKNS5_13HasMeshHandleEPKNS5_35PositionScaleInfoConstantDataHandleEPKNS5_22ViewConstantDataHandleEPKNS5_27TransformConstantDataHandleEPKNS5_18StyleDataKeyHandleEPKNS5_22StyleSSAODataKeyHandleEPKNS5_26StyleEmissiveDataKeyHandleEPKNS5_28ColorCorrectionDataKeyHandleEPKNS5_29StyleCameraConstantDataHandleEPKNS5_15ColorDataHandleEPKNS5_10IndexRangeEPKNS5_38StyleGroundOcclusionConstantDataHandleEPKNS5_26SharedMaterialZIndexHandleEPNS5_17AssociationHandleEPKNS5_13NormalsHandleEPKNS5_23InstanceTransformHandleEPKNS5_9UVsHandleEPKNS5_31StyleRouteLineMaskDataKeyHandleEPKNS5_15ElevationHandleEPKNS5_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS5_35LandCoverSettingsConstantDataHandleEPKNS5_24ShadowConstantDataHandleEPKNS5_25PrepassConstantDataHandleEPKNS5_26ClippingConstantDataHandleEPKNS5_30PlanarParametersCacheKeyHandleEPKNS2D_INS2E_10TexTextureEEEPKNS2D_INS2E_15EmissiveTextureEEEPKNS2D_INS2E_14OverlayTextureEEEPKNS5_29BlendRasterConstantDataHandleEPKNS5_31RasterOverlayConstantDataHandleEPKNS5_40FlyoverCommonTransformConstantDataHandleEPKNS5_30FlyoverCommonS2TransformHandleEPKNS5_28FlyoverCommonTexcoordsHandleEPKNS5_27FlyoverCommonMaterialHandleEPKNS5_29FlyoverClipConstantDataHandleEPKNS2D_IN7Flyover14DiffuseTextureEEEPKNS2D_INS3V_12NightTextureEEEPKNS5_26HasStyleAttributeRasterSetEPKNS5_17HasMaterialRasterEPKNS5_16NeedsClimateTintEPKNS5_17CustomRenderStateEPKNS5_19ColorRampDataHandleEPKNS5_14SharedUniqueIDEPKNS5_8IsOpaqueEPKNS5_13IsTransparentEPKNS5_10NeedsZBiasEPKNS5_14PreserveHeightEPKNS5_13InstanceCountEPKNS5_7IsDecalEPKNS5_10IsMaterialEPKNS5_9TriPlanarEPKNS5_10IsMercatorEPKNS5_23SupportsStylizedShadingEPKNS5_26SupportsSteepnessDarkeningEPKNS5_15FlyoverInstanceEPKNS5_12CustomZIndexEPKNS5_14RenderableHashEPKNS5_21PredefinedRenderStateEEJEEEvOT_NSt3__113type_identityINS5X_5tupleIJDpT0_EEEEERKNS_16ComponentFiltersIJDpT1_EEE(uint64_t a1, uint64_t **a2)
{
  v177 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v2);
  v160 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(v2);
  v156 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v2);
  v152 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v2);
  v149 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v2);
  v147 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v2);
  v145 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v2);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v2);
  v168 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v2);
  v166 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v2);
  v164 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v2);
  v162 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v2);
  v158 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v2);
  v154 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v2);
  v151 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v2);
  v150 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v2);
  v148 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v2);
  v146 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v2);
  v144 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v2);
  v143 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(v2);
  v142 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v2);
  v141 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v2);
  v140 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v2);
  v139 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v2);
  v138 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v2);
  v137 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v2);
  v136 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v2);
  v135 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v2);
  v134 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v2);
  v133 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v2);
  v132 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v2);
  v131 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v2);
  v130 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v2);
  v129 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v2);
  v128 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v2);
  v127 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v2);
  v126 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v2);
  v125 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(v2);
  v124 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(v2);
  v123 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(v2);
  v122 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(v2);
  v121 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(v2);
  v120 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v2);
  v119 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v2);
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(v2);
  HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v2);
  v116 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v2);
  v115 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(v2);
  v114 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v2);
  v113 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v2);
  v112 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v2);
  v111 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v2);
  v110 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v2);
  v109 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v2);
  v108 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v2);
  v107 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v2);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v2);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v2);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v2);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v2);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(v2);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v2);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(v2);
  *&__src[0] = v3;
  *(&__src[0] + 1) = v160;
  *&__src[1] = v156;
  *(&__src[1] + 1) = v152;
  *&__src[2] = v149;
  *(&__src[2] + 1) = v147;
  v13 = __src;
  v14 = 8;
  v15 = v3;
  *&__src[3] = v145;
  do
  {
    if (*(*(__src + v14) + 40) - *(*(__src + v14) + 32) < *(v15 + 40) - *(v15 + 32))
    {
      v15 = *(__src + v14);
      v13 = (__src + v14);
    }

    v14 += 8;
  }

  while (v14 != 56);
  v16 = *v13;
  *&__src[1] = v3;
  *(&__src[1] + 1) = v160;
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *&__src[2] = v156;
  *(&__src[2] + 1) = v152;
  *&__src[3] = v149;
  *(&__src[3] + 1) = v147;
  *&__src[4] = v145;
  *(&__src[4] + 1) = HasMesh;
  *&__src[5] = v168;
  *(&__src[5] + 1) = v166;
  *&__src[6] = v164;
  *(&__src[6] + 1) = v162;
  *&__src[7] = v158;
  *(&__src[7] + 1) = v154;
  *&__src[8] = v151;
  *(&__src[8] + 1) = v150;
  *&__src[9] = v148;
  *(&__src[9] + 1) = v146;
  *&__src[10] = v144;
  *(&__src[10] + 1) = v143;
  *&__src[11] = v142;
  *(&__src[11] + 1) = v141;
  *&__src[12] = v140;
  *(&__src[12] + 1) = v139;
  *&__src[13] = v138;
  *(&__src[13] + 1) = v137;
  *&__src[14] = v136;
  *(&__src[14] + 1) = v135;
  *&__src[15] = v134;
  *(&__src[15] + 1) = v133;
  *&__src[16] = v132;
  *(&__src[16] + 1) = v131;
  *&__src[17] = v130;
  *(&__src[17] + 1) = v129;
  *&__src[18] = v128;
  *(&__src[18] + 1) = v127;
  *&__src[0] = v17;
  *(&__src[0] + 1) = v18;
  *&__src[19] = v126;
  *(&__src[19] + 1) = v125;
  *&__src[20] = v124;
  *(&__src[20] + 1) = v123;
  *&__src[21] = v122;
  *(&__src[21] + 1) = v121;
  *&__src[22] = v120;
  *(&__src[22] + 1) = v119;
  *&__src[23] = HasStyleAttributeRaster;
  *(&__src[23] + 1) = HasMaterial;
  *&__src[24] = v116;
  *(&__src[24] + 1) = v115;
  *&__src[25] = v114;
  *(&__src[25] + 1) = v113;
  *&__src[26] = v112;
  *(&__src[26] + 1) = v111;
  *&__src[27] = v110;
  *(&__src[27] + 1) = v109;
  *&__src[28] = v108;
  *(&__src[28] + 1) = v107;
  *&__src[29] = v4;
  *(&__src[29] + 1) = v5;
  *&__src[30] = v6;
  *(&__src[30] + 1) = v7;
  *&__src[31] = v8;
  *(&__src[31] + 1) = v9;
  *&__src[32] = v10;
  *(&__src[32] + 1) = v11;
  *&__src[33] = v12;
  v104 = v18;
  if (v17 != v18)
  {
    v19 = *(&__src[0] + 1);
    v20 = *&__src[0];
    do
    {
      if (_ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__src, *v17, v17[1]))
      {
        break;
      }

      v20 += 2;
      *&__src[0] = v20;
      v17 = v20;
    }

    while (v20 != v19);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v21 = __dst[0];
  if (__dst[0] == v104)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
    v102 = v22;
    v103 = v23;
    do
    {
      v25 = v21[1];
      v26 = v25 >> 6;
      v27 = v25 & 0x3F;
      v28 = *(__dst[0] + 2);
      v29 = *__dst[0];
      v30 = v28 >> 6;
      v169 = v24;
      v31 = *(*(*(__dst[4] + 8) + 8 * (v25 >> 6)) + 4 * v27 + 2);
      v32 = *(*(__dst[4] + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(*(*(__dst[5] + 8) + 8 * (v25 >> 6)) + 4 * v27 + 2);
      v34 = *(*(*(__dst[7] + 8) + 8 * (v25 >> 6)) + 4 * v27 + 2);
      v35 = *(*(__dst[7] + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(*(*(__dst[8] + 8) + 8 * v26) + 4 * v27 + 2);
      v167 = *(*(__dst[8] + 56) + ((v36 >> 3) & 0x1FF8));
      v37 = *(__dst[22] + 8);
      if (v28 >> 6 < (*(__dst[22] + 16) - v37) >> 3 && (v38 = *(v37 + 8 * v30)) != 0 && *(v38 + 4 * (v28 & 0x3F)) == v29)
      {
        v39 = *(v38 + 4 * (v28 & 0x3F) + 2);
        v171 = (*(*(__dst[22] + 56) + ((v39 >> 3) & 0x1FF8)) + 24 * (v39 & 0x3F));
      }

      else
      {
        v171 = 0;
      }

      v40 = *(__dst[47] + 8);
      if (v30 < (*(__dst[47] + 16) - v40) >> 3 && (v41 = *(v40 + 8 * v30)) != 0 && *(v41 + 4 * (v28 & 0x3F)) == v29)
      {
        v42 = *(v41 + 4 * (v28 & 0x3F) + 2);
        v163 = (*(*(__dst[47] + 56) + ((v42 >> 3) & 0x1FF8)) + 8 * (v42 & 0x3F));
      }

      else
      {
        v163 = 0;
      }

      v43 = *(__dst[48] + 8);
      if (v30 < (*(__dst[48] + 16) - v43) >> 3 && (v44 = *(v43 + 8 * v30)) != 0 && *(v44 + 4 * (v28 & 0x3F)) == v29)
      {
        v45 = *(v44 + 4 * (v28 & 0x3F) + 2);
        v161 = (*(*(__dst[48] + 56) + ((v45 >> 3) & 0x1FF8)) + 8 * (v45 & 0x3F));
      }

      else
      {
        v161 = 0;
      }

      v46 = *(__dst[49] + 8);
      if (v30 < (*(__dst[49] + 16) - v46) >> 3 && (v47 = *(v46 + 8 * v30)) != 0 && *(v47 + 4 * (v28 & 0x3F)) == v29)
      {
        v48 = *(v47 + 4 * (v28 & 0x3F) + 2);
        v49 = *(*(__dst[49] + 56) + ((v48 >> 3) & 0x1FF8)) + 24 * (v48 & 0x3F);
      }

      else
      {
        v49 = 0;
      }

      v50 = *(__dst[51] + 8);
      if (v30 < (*(__dst[51] + 16) - v50) >> 3 && (v51 = *(v50 + 8 * v30)) != 0 && *(v51 + 4 * (v28 & 0x3F)) == v29)
      {
        v52 = *(v51 + 4 * (v28 & 0x3F) + 2);
        v165 = *(*(__dst[51] + 56) + ((v52 >> 3) & 0x1FF8)) + 16 * (v52 & 0x3F);
      }

      else
      {
        v165 = 0;
      }

      v53 = *(__dst[60] + 8);
      v56 = v30 >= (*(__dst[60] + 16) - v53) >> 3 || (v54 = *(v53 + 8 * v30)) == 0 || (v55 = v28 & 0x3F, *(v54 + 4 * v55) != v29) || *(__dst[60] + 32) + 4 * *(v54 + 4 * v55 + 2) == 0;
      v157 = v56;
      v57 = *(__dst[0] + 2);
      v58 = *(__dst[61] + 8);
      v60 = v57 >> 6 >= (*(__dst[61] + 16) - v58) >> 3 || (v59 = *(v58 + 8 * (v57 >> 6))) == 0 || *(v59 + 4 * (v57 & 0x3F)) != *__dst[0] || *(__dst[61] + 32) + 4 * *(v59 + 4 * (v57 & 0x3F) + 2) == 0;
      v155 = v60;
      v61 = *(__dst[0] + 2);
      v62 = *__dst[0];
      v63 = v61 >> 6;
      v64 = *(__dst[62] + 8);
      v66 = v61 >> 6 >= (*(__dst[62] + 16) - v64) >> 3 || (v65 = *(v64 + 8 * v63)) == 0 || *(v65 + 4 * (v61 & 0x3F)) != v62 || *(__dst[62] + 32) + 4 * *(v65 + 4 * (v61 & 0x3F) + 2) == 0;
      v153 = v66;
      v67 = *(__dst[63] + 8);
      v69 = v63 >= (*(__dst[63] + 16) - v67) >> 3 || (v68 = *(v67 + 8 * v63)) == 0 || *(v68 + 4 * (v61 & 0x3F)) != v62 || *(__dst[63] + 32) + 4 * *(v68 + 4 * (v61 & 0x3F) + 2) == 0;
      v159 = v69;
      v70 = *(__dst[66] + 8);
      v105 = v33;
      v106 = *(*(__dst[5] + 56) + ((v33 >> 3) & 0x1FF8));
      if (v63 < (*(__dst[66] + 16) - v70) >> 3 && (v71 = *(v70 + 8 * v63)) != 0 && (v72 = v61 & 0x3F, *(v71 + 4 * v72) == v62))
      {
        v73 = *(v71 + 4 * v72 + 2);
        v74 = (*(*(__dst[66] + 56) + ((v73 >> 3) & 0x1FF8)) + (v73 & 0x3F));
      }

      else
      {
        v74 = 0;
      }

      v75 = v34 & 0x3F;
      v76 = v36 & 0x3F;
      *(v23 + 104 * *v22 + 24) = *v21;
      v77 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      v78 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v79 = v78;
      if (*(v35 + v75) == 4)
      {
        v80 = *(v167 + v76);
        if (v80 != 1 && v80 != 3)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v81 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = *(v167 + v76);
            LODWORD(__src[0]) = 67109890;
            DWORD1(__src[0]) = v82;
            WORD4(__src[0]) = 2080;
            *(__src + 10) = "false";
            WORD1(__src[1]) = 2080;
            *(&__src[1] + 4) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
            WORD6(__src[1]) = 1024;
            *(&__src[1] + 14) = 223;
            _os_log_impl(&dword_1B2754000, v81, OS_LOG_TYPE_ERROR, "Unexpected SceneLayer (%d) for MeshLayer::Flyover renderItem: Assertion with expression - %s : Failed in file - %s line - %i", __src, 0x22u);
          }
        }
      }

      v83 = *a2;
      v84 = ecs2::ExecutionTaskContext::currentEntity(v78);
      ecs2::addComponent<md::ls::FinishedProcessing>(v83, v84);
      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v171)
      {
        createRenderItemForEntity(&v174, Entity, v79, v171);
        if (!v175)
        {
          if (v163)
          {
            ecs2::addComponent<md::ls::HasMaterialRasterRenderItem>(*a2, Entity, *v163);
          }

          if (v161)
          {
            ecs2::addComponent<md::ls::NeedsClimateTint>(*a2, Entity, *v161);
          }

          if (v165)
          {
            ecs2::addComponent<md::ls::UniqueRenderArrayID>(*a2, Entity, 0);
          }

          (*(*v77 + 112))(v77, 9, *(v167 + v76));
          addIntendedSceneLayer<ecs2::Runtime>(*a2, Entity, *(v167 + v76));
          if (*(v32 + (v31 & 0x3F)) == 1)
          {
            ecs2::addComponent<md::ls::IsElevated>(*a2, Entity);
          }

          if (v159)
          {
            if (v49)
            {
              v88 = *(v49 + 8);
              *&__src[0] = *v49;
              *(&__src[0] + 1) = v88;
              if (v88)
              {
                atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
              }

              LOWORD(__src[1]) = *(v49 + 16);
              ecs2::addComponent<md::ls::CustomRenderState>(*a2, Entity, __src);
            }
          }

          else
          {
            ecs2::addComponent<md::ls::FlyoverInstance>(*a2, Entity);
          }

          if (v74)
          {
            ecs2::addComponent<md::ls::PredefinedRenderState>(*a2, Entity, *v74);
          }

          ecs2::addComponent<md::ls::NeedsRenderState>(*a2, Entity);
          v89 = *a2;
          if (v157)
          {
            ecs2::addComponent<md::ls::IsNotMercator>(v89, Entity);
            ecs2::addComponent<md::ls::IsS2>(*a2, Entity, *(v106 + (v105 & 0x3F)));
          }

          else
          {
            ecs2::addComponent<md::ls::IsMercator>(v89, Entity);
          }

          if (!v155)
          {
            ecs2::addComponent<md::ls::SupportsStylizedShading>(*a2, Entity);
          }

          if (!v153)
          {
            ecs2::addComponent<md::ls::SupportsSteepnessDarkening>(*a2, Entity);
          }

          operator new();
        }

        if (v175 != 1)
        {
          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v174) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v86 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = "";
        if (v174 <= 2uLL)
        {
          v87 = off_1E7B3D650[v174];
        }

        LODWORD(__src[0]) = 136315906;
        *(__src + 4) = v87;
        WORD6(__src[0]) = 2080;
        *(__src + 14) = "false";
        WORD3(__src[1]) = 2080;
        *(&__src[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        LOWORD(__src[2]) = 1024;
        *(&__src[2] + 2) = 234;
        _os_log_impl(&dword_1B2754000, v86, OS_LOG_TYPE_ERROR, "Failed to create main render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", __src, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      v24 = v169 + 1;
      v90 = __dst[1];
      v91 = (__dst[0] + 4);
      while (1)
      {
        v21 = v91;
        __dst[0] = v91;
        if (v91 == v90)
        {
          break;
        }

        IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE = _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__dst, *v91, v91[1]);
        v91 = v21 + 2;
        if (IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE)
        {
          v90 = v21;
          break;
        }
      }

      v23 = v103;
      v22 = v102;
    }

    while (v90 != v104);
    v93 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
    result = v102;
    v95 = v103;
    *(v93 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v93 + 4096);
  }

  *(v95 + 104 * *result + 24) = -65536;
  v96 = v95 + 104 * *result;
  v97 = *(v96 + 92);
  *(v96 + 92) = v97 + 1;
  *(v96 + 4 * v97 + 28) = v24;
  v98 = v95 + 104 * *result;
  v100 = *(v98 + 92);
  v99 = (v98 + 92);
  if (v100 >= 0x10)
  {
    *v99 = 0;
  }

  return result;
}

void sub_1B2DAF318(_Unwind_Exception *a1)
{
  if (STACK[0x498])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x498]);
  }

  _Unwind_Resume(a1);
}

BOOL _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0)
  {
    return *(v17 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12CustomZIndexEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomZIndex>();
    *algn_1EB83DB38 = 0x3EAAB620EAA88EC8;
    qword_1EB83DB40 = "md::ls::CustomZIndex]";
    qword_1EB83DB48 = 20;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A506A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A506C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A506A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A525B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A525D0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A525B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29FlyoverClipConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipConstantDataHandle>();
    *algn_1EB83BDC8 = 0x5E4DB6CB13CB5848;
    qword_1EB83BDD0 = "md::ls::FlyoverClipConstantDataHandle]";
    qword_1EB83BDD8 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A524E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52500;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A524E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27FlyoverCommonMaterialHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonMaterialHandle>();
    unk_1EB83C4E0 = 0xB70B6DE024A5B9DALL;
    qword_1EB83C4E8 = "md::ls::FlyoverCommonMaterialHandle]";
    qword_1EB83C4F0 = 35;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52410;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52430;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52410;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28FlyoverCommonTexcoordsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTexcoordsHandle>();
    *algn_1EB83C398 = 0x5B12559DCF20DC9ALL;
    qword_1EB83C3A0 = "md::ls::FlyoverCommonTexcoordsHandle]";
    qword_1EB83C3A8 = 36;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52340;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52360;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52340;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FlyoverCommonS2TransformHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonS2TransformHandle>();
    unk_1EB83BCD0 = 0x81BF69EEE736436;
    qword_1EB83BCD8 = "md::ls::FlyoverCommonS2TransformHandle]";
    qword_1EB83BCE0 = 38;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52270;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52290;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52270;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls40FlyoverCommonTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTransformConstantDataHandle>();
    *algn_1EB83B9B8 = 0x7D9191A7B57B7B35;
    qword_1EB83B9C0 = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    qword_1EB83B9C8 = 48;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A521A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A521C0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A521A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31StyleRouteLineMaskDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50500;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50520;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50500;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SharedMaterialZIndexHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialZIndexHandle>();
    *algn_1EB83C588 = 0x9705908F280836EDLL;
    qword_1EB83C590 = "md::ls::SharedMaterialZIndexHandle]";
    qword_1EB83C598 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50360;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50380;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50360;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateMainRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateMainRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F89F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<SetLegacyStencilOffsetAndBucketCount>,std::allocator<ecs2::ForwardToExecute<SetLegacyStencilOffsetAndBucketCount>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8920;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::KeepColorRampTextureAlive>(md::ita::KeepColorRampTextureAlive &&)::{lambda(void)#1},std::allocator<md::ita::KeepColorRampTextureAlive &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::KeepColorRampTextureAlive>(md::ita::KeepColorRampTextureAlive &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x7EDF0608EB36DCA6;
    v10[1] = "md::ls::HasGradientRampTexture]";
    v10[2] = 30;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x7EDF0608EB36DCA6;
    v2[1] = "md::ls::HasGradientRampTexture]";
    v2[2] = 30;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B2DB1BC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>,std::allocator<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>>,void ()(ecs2::Runtime &)>::operator()(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v4 = (a1 + 1);
  v5 = a1[2];
  if (!v5)
  {
    v5 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, *(*a2 + 8));
    a1[2] = v5;
  }

  v6 = (**v5)(v5);
  md::LayoutContext::frameState(v6);
  v43 = *(v7 + 624);
  v8 = a1[3];
  if (!v8)
  {
    v9 = **v4;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_5;
    }

    while (*v10 != 0x41D4E9297E100630)
    {
      v8 = 0;
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    if (v10 == v11)
    {
LABEL_5:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v41 = v10[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }
    }

LABEL_8:
    a1[3] = v8;
  }

  v42 = v8;
  v51[0] = &unk_1F2A0D3E8;
  v51[1] = &v42;
  v51[2] = &v43;
  v52 = v51;
  v12 = *(a2 + 8);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v12);
  HasGradientRamp = ecs2::BasicRegistry<void>::storage<md::ls::HasGradientRampTexture>(v12);
  v15 = HasGradientRamp;
  if (*(HasGradientRamp + 40) - *(HasGradientRamp + 32) >= *(v13 + 40) - *(v13 + 32))
  {
    v16 = v13;
  }

  else
  {
    v16 = HasGradientRamp;
  }

  v17 = *(v16 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v48, *(v16 + 32), v17, v13, HasGradientRamp);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v47, v17, v17, v13, v15);
  v18 = v48;
  v46 = v50;
  v44 = v48;
  v45 = v49;
  v19 = v47;
  if (v48 == v47)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v20 = v49;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = *(&v48 + 1);
    do
    {
      v25 = v18[1];
      v26 = v25 & 0x3F;
      v27 = (v25 >> 3) & 0x1FF8;
      v28 = *(*(*(v20 + 8) + v27) + 4 * v26 + 2);
      v29 = *(*(v20 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(&v20 + 1) + 32);
      v31 = *(*(*(*(&v20 + 1) + 8) + v27) + 4 * v26 + 2);
      *(v21 + 104 * *v22 + 24) = *v18;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 8 * (v28 & 0x3F), v30 + 4 * v31);
      ++v23;
      v32 = v18 + 2;
      do
      {
        v18 = v32;
        *&v48 = v32;
        if (v32 == v24)
        {
          break;
        }

        v33 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v48, *v32, v32[1]);
        v32 = v18 + 2;
      }

      while (!v33);
    }

    while (v18 != v19);
    v34 = *(a2 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
    *(v34 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v34 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v35 = v21 + 104 * *v22;
  v36 = *(v35 + 92);
  *(v35 + 92) = v36 + 1;
  *(v35 + 4 * v36 + 28) = v23;
  v37 = v21 + 104 * *v22;
  v39 = *(v37 + 92);
  v38 = (v37 + 92);
  if (v39 >= 0x10)
  {
    *v38 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::ColorRampDataHandle &,md::ls::HasGradientRampTexture const&)>::~__value_func[abi:nn200100](v51);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>,std::allocator<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8770;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareGradientParametersConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareGradientParametersConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareColorCorrectionFactorsConstantHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareColorCorrectionFactorsConstantHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F85C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfOpaque>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfOpaque>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F84E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15AlbedoTintColorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AlbedoTintColor>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = (*(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v15 & 0x3F));
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F));
        v19 = *v18;
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 16);
        *v17 = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42998;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A429B8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42998;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21UniqueColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41588;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21SharedColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42F28;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(a1);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>>,void ()(ecs2::Runtime &)>::operator()(void *a1, void **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v3 = (a1 + 1);
  v4 = a1[3];
  if (!v4)
  {
    v5 = **a2;
    v6 = (*a2)[1];
    if (v5 == v6)
    {
      goto LABEL_5;
    }

    while (*v5 != 0x22D45F5AAD4BF408)
    {
      v5 += 5;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    if (v5 == v6)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      v4 = v5[3];
      v7 = v5[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    a1[3] = v4;
  }

  v8 = (**v4)(v4);
  v9 = md::LayoutContext::get<md::LightingLogicContext>(*(v8 + 8));
  if (v9)
  {
    v10 = *(v9 + 124);
    v24 = *(v9 + 61);
    v25 = v10;
    v11 = a1[2];
    if (!v11)
    {
      v12 = **v3;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v13 == v14)
      {
        goto LABEL_15;
      }

      while (*v13 != 0x41D4E9297E100630)
      {
        v13 += 5;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      if (v13 == v14)
      {
LABEL_15:
        v11 = 0;
      }

      else
      {
        v11 = v13[3];
        v15 = v13[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      a1[2] = v11;
    }

    v23 = v11;
    v16 = a1[4];
    if (!v16)
    {
      v17 = **v3;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v18 == v19)
      {
        goto LABEL_24;
      }

      while (*v18 != 0x4EDAD23DFB014132)
      {
        v18 += 5;
        if (v18 == v19)
        {
          goto LABEL_24;
        }
      }

      if (v18 == v19)
      {
LABEL_24:
        v16 = 0;
      }

      else
      {
        v16 = v18[3];
        v20 = v18[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }

      a1[4] = v16;
    }

    v22 = v16;
    operator new();
  }

  result = 0.0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  return result;
}

void sub_1B2DB372C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8260;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleRouteLineMask>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleRouteLineMask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8188;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F80B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessary>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessary>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7FD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMaterialStyleConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMaterialStyleConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7F00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14MercatorBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MercatorBounds>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v15 & 0x3F);
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F));
        v22 = *v18;
        *v23 = v18[1];
        *&v23[16] = v18[2];
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 8;
        }

        while (v13 != 24);
        v19 = 0;
        v20 = v18 + 24;
        v21 = (v17 + 24);
        do
        {
          *&v20[v19] = *(v21 + v19);
          v19 += 8;
        }

        while (v19 != 24);
        *v17 = v22;
        *(v17 + 16) = *v23;
        *v21 = *&v23[8];
        *(v17 + 40) = *&v23[24];
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MercatorBounds>();
    *algn_1EB83D868 = 0x8D1BF84D316565E9;
    qword_1EB83D870 = "md::ls::MercatorBounds]";
    qword_1EB83D878 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F7D10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F7D30;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F7D10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13InstanceDataVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceDataV>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F));
        v19 = *v17;
        v18 = v17[1];
        *v17 = 0;
        v17[1] = 0;
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = v17[1];
        *v17 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        v22 = *(v16 + 8);
        *v16 = v19;
        *(v16 + 8) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 8);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41DD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41DF8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41DD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleGroundOcclusion>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleGroundOcclusion>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7968;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFlyoverS2TransformConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFlyoverS2TransformConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7890;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFlyoverTransformConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFlyoverTransformConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F77B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18ModelTransformDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = (*(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v15 & 0x3F));
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F));
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 48);
        *v17 = v19;
        v17[1] = v20;
        v17[2] = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ModelTransformData>();
    *algn_1EB83D158 = 0xBED6A4C8B7C54422;
    qword_1EB83D160 = "md::ls::ModelTransformData]";
    qword_1EB83D168 = 26;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D108;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20FlyoverClipPlaneDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipPlaneData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 240 * (v14 & 0x3F));
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 240 * (v13 & 0x3F);
        LOBYTE(v29) = 0;
        v37 = 0;
        if (*(v17 + 104) == 1)
        {
          v29 = *v17;
          v30 = *(v17 + 16);
          v31 = *(v17 + 24);
          v32 = *(v17 + 40);
          v33 = *(v17 + 48);
          v34 = *(v17 + 56);
          v35 = *(v17 + 72);
          v36 = *(v17 + 88);
          v37 = 1;
        }

        v18 = v17 + 112;
        v19 = *(v17 + 192);
        v42 = *(v17 + 176);
        v43 = v19;
        v20 = *(v17 + 224);
        v44 = *(v17 + 208);
        v45 = v20;
        v21 = *(v17 + 128);
        v38 = *(v17 + 112);
        v39 = v21;
        v22 = *(v17 + 160);
        v40 = *(v17 + 144);
        v41 = v22;
        std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(v17, v16);
        v23 = 0;
        v24 = v16 + 7;
        do
        {
          *(v18 + v23) = *(v24 + v23);
          v23 += 8;
        }

        while (v23 != 128);
        std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(v16, &v29);
        v25 = v43;
        v16[11] = v42;
        v16[12] = v25;
        v26 = v45;
        v16[13] = v44;
        v16[14] = v26;
        v27 = v39;
        *v24 = v38;
        v16[8] = v27;
        v28 = v41;
        v16[9] = v40;
        v16[10] = v28;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata) = *(v3 + 4096);
}

__n128 std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      result.n128_f64[0] = geo::OrientedBox<double,3u,double,double>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v3;
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    *(a1 + 48) = *(a2 + 48);
    result = *(a2 + 56);
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    *(a1 + 56) = result;
    *(a1 + 104) = 1;
  }

  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D1B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D1D8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D1B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForFlyoverClip>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForFlyoverClip>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F76E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateFlyoverSharedConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateFlyoverSharedConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowPassCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowPassCommandBuffers>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7458;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledDepthPrePassSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledDepthPrePassSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7380;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledShadowSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledShadowSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F72A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F71D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareUnflattenedCulledSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareUnflattenedCulledSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F70F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31AppliedWantsDynamicShadowBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedWantsDynamicShadowBounds>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A338B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A338B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMeshRenderableBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMeshRenderableBounds>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareSlices>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareSlices>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveMaterialEmissiveTexture>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveMaterialEmissiveTexture>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6B10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveMaterialDiffuseTexture>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveMaterialDiffuseTexture>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6A38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18UniqueMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A417F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41810;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A417F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectMaterialColorData>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectMaterialColorData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6960;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void gdc::typelist_as_vector<std::tuple<md::ls::PlanarParametersCacheKeyHandle>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xD02B5FD100F36AA2;
    v10[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v10[2] = 38;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xD02B5FD100F36AA2;
    v2[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v2[2] = 38;
    v4 = v2 + 3;
  }

  a1[1] = v4;
}

void sub_1B2DB70F4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v49 = a1 + 8;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v13 = *(*v11 + 32);
  v12 = *(*v11 + 40);
  v52 = v13;
  v53 = v12;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v50 = v12;
  while (v13 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v52, *v13, v13[1]))
  {
    v13 += 2;
    v52 = v13;
    v12 = v50;
  }

  v14 = v52;
  if (v52 == v50)
  {
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
  }

  else
  {
    v46 = v56;
    v47 = v55;
    v45 = v57;
    v43 = a2;
    v44 = v58;
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
    v18 = v53;
    v48 = v16;
    do
    {
      v51 = v17;
      v19 = v14[1];
      v20 = v19 & 0x3F;
      v21 = (v19 >> 3) & 0x1FF8;
      v22 = *(*(*(v47 + 8) + v21) + 4 * v20 + 2);
      v23 = (*(*(v47 + 56) + ((v22 >> 3) & 0x1FF8)) + 24 * (v22 & 0x3F));
      v24 = *(*(*(v46 + 8) + v21) + 4 * v20 + 2);
      v25 = (*(*(v46 + 56) + ((v24 >> 3) & 0x1FF8)) + 32 * (v24 & 0x3F));
      v26 = *(*(*(v45 + 8) + v21) + 4 * v20 + 2);
      v27 = (*(*(v45 + 56) + ((v26 >> 3) & 0x1FF8)) + 8 * (v26 & 0x3F));
      v28 = *(*(*(v44 + 8) + v21) + 4 * v20 + 2);
      v29 = (*(*(v44 + 56) + ((v28 >> 3) & 0x1FF8)) + 12 * (v28 & 0x3F));
      *(v15 + 104 * *v16 + 24) = *v14;
      v30 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v49);
      v31 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v49);
      v32 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(v49);
      processMaterialPlanarParameters(v30, v31, v32, v23, v25, v27, v29);
      v17 = v51 + 1;
      v33 = v14 + 2;
      while (1)
      {
        v14 = v33;
        v52 = v33;
        if (v33 == v18)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v52, *v33, v33[1]);
        v33 = v14 + 2;
        if (v34)
        {
          v35 = v14;
          goto LABEL_16;
        }
      }

      v35 = v18;
LABEL_16:
      v16 = v48;
    }

    while (v35 != v50);
    v36 = *(v43 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v36 + 4096);
  }

  *(v15 + 104 * *v16 + 24) = -65536;
  v37 = v15 + 104 * *v16;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v17;
  v39 = v15 + 104 * *v16;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  result = 0.0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13UnitsPerMeterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 12 * (v14 & 0x3F);
        v19 = *v18;
        v20 = *(v18 + 8);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        *v17 = v19;
        *(v17 + 8) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56080;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A560A0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56080;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27UniqueMaterialAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
        v23 = *v17;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        LOBYTE(v14) = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v14;
        v20 = *(v16 + 16);
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        v21 = *(v17 + 24);
        *(v17 + 16) = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        *v16 = v23;
        *(v16 + 8) = BYTE8(v23);
        v22 = *(v16 + 24);
        *(v16 + 16) = v19;
        *(v16 + 24) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 24);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A412F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41318;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v4 & 0x3F) + 24);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A412F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25MaterialPendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialPendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialPendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6888;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParameters>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParameters>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F67B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateColorCorrectionData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateColorCorrectionData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6600;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v4 = a1 + 8;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, *(*a2 + 8));
    *(a1 + 16) = v5;
  }

  v6 = (**v5)(v5);
  v7 = md::LayoutContext::get<md::CameraContext>(*(v6 + 8));
  v45 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
  v44 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v4);
  v51[0] = &unk_1F2A07810;
  v51[1] = &v44;
  v51[2] = &v45;
  v52 = v51;
  v8 = *(a2 + 8);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(v8);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v8);
  v53[0] = v9;
  v53[1] = v10;
  v12 = 1;
  v13 = v9;
  v14 = v53;
  v53[2] = v11;
  do
  {
    if (*(v53[v12] + 40) - *(v53[v12] + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = v53[v12];
      v14 = &v53[v12];
    }

    ++v12;
  }

  while (v12 != 3);
  v15 = *(*v14 + 32);
  v16 = *(*v14 + 40);
  v46 = v15;
  v47 = v16;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  while (v15 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v46, *v15, v15[1]))
  {
    v15 += 2;
    v46 = v15;
  }

  v17 = v46;
  if (v46 == v16)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v43 = v4;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = v47;
    do
    {
      v25 = v17[1];
      v26 = (v25 >> 3) & 0x1FF8;
      v27 = v25 & 0x3F;
      v28 = *(*(*(v18 + 8) + v26) + 4 * v27 + 2);
      v29 = *(*(v18 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v19 + 8) + v26) + 4 * v27 + 2);
      v31 = *(*(v19 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v20 + 32);
      v33 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
      *(v21 + 104 * *v22 + 24) = *v17;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 24 * (v28 & 0x3F), v31 + 8 * (v30 & 0x3F), v32 + 4 * v33);
      ++v23;
      v34 = v17 + 2;
      while (1)
      {
        v17 = v34;
        v46 = v34;
        if (v34 == v24)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v46, *v34, v34[1]);
        v34 = v17 + 2;
        if (v35)
        {
          v36 = v17;
          goto LABEL_19;
        }
      }

      v36 = v24;
LABEL_19:
      ;
    }

    while (v36 != v16);
    v4 = v43;
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v37 = v21 + 104 * *v22;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v23;
  v39 = v21 + 104 * *v22;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 > 0xF)
  {
    *v40 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](v51);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  return result;
}

void sub_1B2DB8778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6528;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateGradientMaskData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateGradientMaskData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6450;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v41 = a1 + 8;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v48[2] = v6;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v11 = *(*v9 + 32);
  v10 = *(*v9 + 40);
  v43 = v11;
  v44 = v10;
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v42 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v43, *v11, v11[1]))
  {
    v11 += 2;
    v43 = v11;
    v10 = v42;
  }

  v12 = v43;
  if (v43 == v42)
  {
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v13 = v47;
    v39 = a2;
    v40 = v46;
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v44;
    do
    {
      v18 = v12[1];
      v19 = v18 & 0x3F;
      v20 = (v18 >> 3) & 0x1FF8;
      v21 = *(*(*(v40 + 8) + v20) + 4 * v19 + 2);
      v22 = v16;
      v23 = (*(*(v40 + 56) + ((v21 >> 3) & 0x1FF8)) + 24 * (v21 & 0x3F));
      v24 = *(*(*(v13 + 8) + v20) + 4 * v19 + 2);
      v25 = (*(*(v13 + 56) + ((v24 >> 3) & 0x1FF8)) + 16 * (v24 & 0x3F));
      v26 = v15;
      LODWORD(v19) = *v15;
      v27 = v14;
      *(v14 + 104 * v19 + 24) = *v12;
      v28 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v41);
      v29 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v41);
      processMaterialEmissiveParameters(v28, v29, v23, v25);
      v16 = v22 + 1;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v43 = v30;
        if (v30 == v17)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v43, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_16;
        }
      }

      v32 = v17;
LABEL_16:
      v14 = v27;
      v15 = v26;
    }

    while (v32 != v42);
    v33 = *(v39 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(v33 + 4096);
  }

  *(v14 + 104 * *v15 + 24) = -65536;
  v34 = v14 + 104 * *v15;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v16;
  v36 = v14 + 104 * *v15;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
}

void ecs2::BasicRegistry<void>::remove<md::ls::UniqueStyleEmissiveDataKeyHandle>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 16 * v19);
        *(v20 + 16 * v19) = *(v18 + 16 * v16);
        *(v18 + 16 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1E250;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1E270;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1E250;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColor>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColor>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F62A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialsForUpdatedStyle>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialsForUpdatedStyle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F61C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfMaterialRequiresEmissiveColor>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfMaterialRequiresEmissiveColor>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F60F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14TileViewMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewMatrix>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F5FD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F5FF8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F5FD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11GlobeMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrix>();
    *algn_1EB83DB88 = 0x67D8808361DF5DBFLL;
    qword_1EB83DB90 = "md::ls::GlobeMatrix]";
    qword_1EB83DB98 = 19;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CF68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1CF88;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CF68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateFlyoverTileViewMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateFlyoverTileViewMatrix>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5F90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31MeshRenderablePositionScaleInfoEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderablePositionScaleInfo>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A420F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42110;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A420F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(a1);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0 && *(v9 + v6) == v5 && (v10 = *(a1[4] + 1), v2 < (*(a1[4] + 2) - v10) >> 3) && (v11 = *(v10 + 8 * v2)) != 0)
  {
    return *(v11 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateDynamicRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateDynamicRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5C30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&>)::{lambda(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)#1},std::allocator<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&>)::{lambda(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)#1}>,void ()(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F5B58;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectFlyoverMeshRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectFlyoverMeshRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectDaVinciMeshRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectDaVinciMeshRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F58A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForGlobeTiles>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForGlobeTiles>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F56F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5620;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTilePerPoint>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTilePerPoint>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5470;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateShadowConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateShadowConstants>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateDepthPrePassConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateDepthPrePassConstants>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F52C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfMaterialNeedsUpdate>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfMaterialNeedsUpdate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F51E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCommonDataTask>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCommonDataTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5110;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateClippingConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateClippingConstants>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4F48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateCameraStyleLight>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateCameraStyleLight>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4E70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTileTransforms>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTileTransforms>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTileRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTileRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareRenderableData>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareRenderableData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCommandBuffers>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4B10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4720;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4648;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PushLegacyRibbons>,std::allocator<ecs2::ForwardToExecute<md::ita::PushLegacyRibbons>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4570;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::DisconnectComponents>,std::allocator<ecs2::ForwardToExecute<md::ita::DisconnectComponents>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F43C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateResourcesAfterRebuild>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateResourcesAfterRebuild>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F42E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>,std::allocator<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void ***a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = **a2;
  v4 = (*a2)[1];
  if (v3 == v4)
  {
    goto LABEL_5;
  }

  v5 = v3;
  while (*v5 != 0x4EDAD23DFB014132)
  {
    v5 += 5;
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  if (v5 == v4)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
    v7 = v5[4];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v8 = **(a1 + 8);
      v3 = *v8;
      v4 = *(v8 + 8);
    }
  }

  v12 = v6;
  v9 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(v3, v4);
  v10 = (**v9)(v9);
  result = gdc::Context::get<md::StyleLogicContext>(*(v10 + 8));
  if (result)
  {
    v13[0] = &unk_1F29F42A0;
    v13[1] = &v12;
    v13[3] = v13;
    md::StyleLogicContext::parseEvents(result, v13);
    result = std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v13);
  }

  *(a1 + 8) = 0;
  return result;
}

void sub_1B2DBC70C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = v2 > 5;
  v4 = (1 << v2) & 0x39;
  if (!v3 && v4 != 0)
  {
    md::MaterialResourceStore::resetMaterialPtrStorage(**(a1 + 8));
  }
}

uint64_t std::__function::__func<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F42A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>,std::allocator<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F4258;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfReadyToProcess>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfReadyToProcess>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4138;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteRenderable>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteRenderable>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3F88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void geo::_retain_ptr<VKManifestTileGroupObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29FF438;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKManifestTileGroupObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29FF438;

  return a1;
}

void sub_1B2DBCF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1B2DBD108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DBD220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geo::_retain_ptr<VKCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20410;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20410;

  return a1;
}

void sub_1B2DBD8F4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v2 - 88);

  _Unwind_Resume(a1);
}

void sub_1B2DBD98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKMapImageCanvas;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2DBDDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](va);
  objc_destroyWeak((v7 - 80));

  _Unwind_Resume(a1);
}

void md::OverlayContainer::addOverlay(md::OverlayContainer *this, VKOverlay *a2)
{
  v3 = a2;
  std::mutex::lock((this + 232));
  md::OverlayContainer::_insertOverlay(this, v3, *(this + 3 * [(VKOverlay *)v3 level]+ 21));
  std::mutex::unlock((this + 232));
}

void md::OverlayContainer::_insertOverlay(uint64_t a1, void *a2, uint64_t (***a3)(void))
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v43 = v5;
  v6 = [v5 level];
  v7 = a1 + 24 * v6;
  v9 = *(v7 + 160);
  v10 = *(v7 + 168);
  v8 = (v7 + 160);
  if (v9 != v10)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v9 + 8), &v43) & 1) == 0)
    {
      v9 += 24;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = v8[1];
  }

  if (v9 == v10)
  {
    if (v10 == a3)
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v50, v5);
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](v8, &v50);
      v50 = off_1F2A2D550;
    }

    else
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v49, v5);
      v13 = v8[1];
      v12 = v8[2];
      if (v13 >= v12)
      {
        v20 = *v8;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v8) >> 3) + 1;
        if (v21 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v20) >> 3);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v21;
        }

        v47 = v8;
        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v23);
        }

        v24 = a3 - v20;
        v25 = 8 * ((a3 - v20) >> 3);
        v44 = 0;
        v45 = v25;
        v46 = v25;
        if (!(0xAAAAAAAAAAAAAAABLL * ((a3 - v20) >> 3)))
        {
          if (v24 < 1)
          {
            if (v20 == a3)
            {
              v28 = 1;
            }

            else
            {
              v28 = 0x5555555555555556 * ((a3 - v20) >> 3);
            }

            v52 = v47;
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v28);
          }

          v25 -= 24 * ((1 - 0x5555555555555555 * (v24 >> 3)) >> 1);
          v45 = v25;
          *&v46 = v25;
        }

        geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v25, v49);
        *&v46 = v46 + 24;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(a3, v8[1], v46);
        v29 = *v8;
        v30 = v45;
        *&v46 = v46 + v8[1] - a3;
        v8[1] = a3;
        v31 = v30 + v29 - a3;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(v29, a3, v31);
        v32 = *v8;
        *v8 = v31;
        v33 = v8[2];
        *(v8 + 1) = v46;
        *&v46 = v32;
        *(&v46 + 1) = v33;
        v44 = v32;
        v45 = v32;
        std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&v44);
      }

      else if (a3 == v13)
      {
        geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v8[1], v49);
        v8[1] = v13 + 24;
      }

      else
      {
        v14 = v13 - 24;
        if (v13 < 0x18)
        {
          v16 = v8[1];
        }

        else
        {
          v15 = v13 - 24;
          v16 = v8[1];
          do
          {
            v17 = geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v16, v15);
            v15 += 24;
            v16 = v17 + 24;
          }

          while (v15 < v13);
        }

        v8[1] = v16;
        if (v13 != a3 + 3)
        {
          v26 = a3 - v13 + 24;
          v27 = v13 - 48;
          do
          {
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v14, v27);
            v14 -= 24;
            v27 -= 24;
            v26 += 24;
          }

          while (v26);
        }

        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a3, v49);
      }

      v49[0] = off_1F2A2D550;
    }
  }

  else
  {
    v11 = v9 + 24;
    if (v10 == a3)
    {
      if (v11 == v10)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v10 = a3;
      if (v11 == a3)
      {
        goto LABEL_55;
      }
    }

    v18 = v9 + 24;
    while (1)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &>(v9, v11);
      v9 += 24;
      v11 += 24;
      if (v11 == v10)
      {
        break;
      }

      if (v9 == v18)
      {
        v18 = v11;
      }
    }

    if (v9 != v18)
    {
      v19 = v18;
      do
      {
        while (1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &>(v9, v18);
          v9 += 24;
          v18 += 24;
          if (v18 == v10)
          {
            break;
          }

          if (v9 == v19)
          {
            v19 = v18;
          }
        }

        v18 = v19;
      }

      while (v9 != v19);
    }
  }

LABEL_55:
  v34 = *(a1 + 208);
  v35 = *(a1 + 216);
  if (v34 != v35)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v34 + 8), &v43) & 1) == 0)
    {
      v34 += 24;
      if (v34 == v35)
      {
        v34 = v35;
        break;
      }
    }

    v35 = *(a1 + 216);
  }

  v36 = v43;
  if (v34 == v35)
  {
    [v43 replaceMapContentInRect];
    if (vabdd_f64(v42, *MEMORY[0x1E69A1688]) < 0.00000001 && vabdd_f64(v39, *(MEMORY[0x1E69A1688] + 8)) < 0.00000001 && vabdd_f64(v40, *(MEMORY[0x1E69A1688] + 16)) < 0.00000001 && vabdd_f64(v41, *(MEMORY[0x1E69A1688] + 24)) < 0.00000001)
    {
      *(a1 + 344) = 1;
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v50, v36);
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100]((a1 + 208), &v50);
      v50 = off_1F2A2D550;
    }
  }

  v37 = [v36 areResourcesRequired];
  if (v6 <= 1 && *(a1 + 16 * v6 + 8 * v37))
  {
    v38 = v36;
    v48 = 0;
    operator new();
  }

  if ([v36 areResourcesRequired])
  {
    LODWORD(v50) = [v36 identifier];
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((a1 + 296), v50);
  }

  *(a1 + 345) = 1;
  ++*(a1 + 348);
}

uint64_t geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

void *geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A2D550;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v10);
    }

    v16 = 0;
    v17 = 24 * v7;
    geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(24 * v7, a2);
    v18 = 24 * v7 + 24;
    v11 = a1[1];
    v12 = 24 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
    v6 = result + 24;
    a1[1] = result + 24;
  }

  a1[1] = v6;
  return result;
}

void sub_1B2DBEB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::OverlayContainer::queueCommand(uint64_t a1, char a2, uint64_t a3)
{
  std::mutex::lock((a1 + 48));
  v7 = *(a1 + 120);
  v6 = (a1 + 112);
  if (*(a1 + 112) == v7)
  {
    v8 = **(a1 + 352);
    if (v8)
    {
      LOBYTE(v25) = 1;
      md::MapEngine::setNeedsTick(v8, &v25);
      v7 = *(a1 + 120);
    }
  }

  v9 = *(a1 + 128);
  if (v7 >= v9)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * (&v7[-*v6] >> 3);
    if (v11 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *v6) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v13;
    }

    v28 = a1 + 112;
    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v25 = 0;
    v26 = 40 * v11;
    v27 = 40 * v11;
    *v26 = a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](40 * v11 + 8, a3);
    v16 = *(a1 + 112);
    v15 = *(a1 + 120);
    v17 = v26 - (v15 - v16);
    *&v27 = v27 + 40;
    if (v15 != v16)
    {
      v18 = v26 - 8 * ((v15 - v16) >> 3) + 8;
      v19 = v16;
      v20 = v16;
      do
      {
        v21 = *v20;
        v20 += 40;
        *(v18 - 8) = v21;
        v18 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v18, (v19 + 8)) + 40;
        v19 = v20;
      }

      while (v20 != v15);
      do
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((v16 + 8));
        v16 += 40;
      }

      while (v16 != v15);
    }

    v22 = *(a1 + 112);
    *(a1 + 112) = v17;
    v23 = *(a1 + 128);
    v24 = v27;
    *(a1 + 120) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    std::__split_buffer<std::pair<md::OverlayContainerCommandType,std::function<void ()(void)>>>::~__split_buffer(&v25);
    v10 = v24;
  }

  else
  {
    *v7 = a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((v7 + 8), a3);
    v10 = v7 + 40;
    *(a1 + 120) = v7 + 40;
  }

  *(a1 + 120) = v10;
  std::mutex::unlock((a1 + 48));
}

uint64_t std::__split_buffer<std::pair<md::OverlayContainerCommandType,std::function<void ()(void)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (([v2 canProvideVectorData] & 1) == 0)
  {
    v3 = [v2 rasterTileProvider];

    if (!v3)
    {
      [v2 customTileProvider];
    }
  }

  geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v6, *(a1 + 16));
  v4 = [*(a1 + 16) rasterTileProvider];
  if (!v4)
  {
    [*(a1 + 16) customTileProvider];
  }

  geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v5, v6);
  v5[6] = 0;
  operator new();
}

void sub_1B2DBF0C4(_Unwind_Exception *a1)
{
  *(v1 + 120) = off_1F2A2D550;

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1F2A2D550;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A2D550;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::unordered_set<md::OverlayTileDataType>::unordered_set(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(a1, *a2++);
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t md::OverlayContainer::_isOverlayTileInCurrentScene(md::OverlayContainer *this, const md::OverlayTileData *a2)
{
  if (this)
  {
    v2 = *(this + 15);
    if (v2)
    {
      v4 = *(grl::IconMetricsRenderResult::getFillRect(a2) + 8);
      v5 = *v2;
      {
        qword_1ED65AC10 = 0;
        qword_1ED65AC08 = 0;
        md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
      }

      v6 = *(v5 + 48);
      v7 = *(v5 + 56);
      if (v6 == v7)
      {
        goto LABEL_14;
      }

      v8 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
      v9 = v6;
      while (*v9 != v4)
      {
        v9 += 16;
        if (v9 == v7)
        {
          goto LABEL_15;
        }
      }

      if (v9 == v7)
      {
LABEL_14:
        v8 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
      }

      else
      {
        while (*v6 != v4)
        {
          v6 += 16;
          if (v6 == v7)
          {
            v6 = v7;
            break;
          }
        }

        v8 = (v6 + 4);
      }

LABEL_15:
      v12 = *v8;
      v10 = v8 + 1;
      v11 = v12;
      if (v12 != v10)
      {
        do
        {
          v14 = v11[4];
          v13 = v11[5];
          if (v13)
          {
            v15 = 1;
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
            if (v14 == a2)
            {
              return v15;
            }
          }

          else if (v14 == a2)
          {
            return 1;
          }

          v16 = v11[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v11[2];
              v18 = *v17 == v11;
              v11 = v17;
            }

            while (!v18);
          }

          v11 = v17;
        }

        while (v17 != v10);
      }
    }
  }

  return 0;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#4},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#4}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF6E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 169) | 0x200000000;
  v4[0] = *(*a2 + 176) | (*(*a2 + 172) << 32);
  v4[1] = v2;
  return [*(a1 + 16) canPossiblyDrawKey:v4];
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = off_1F2A2D550;

  operator delete(a1);
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF698;
  *(a1 + 8) = off_1F2A2D550;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF698;
  *(a1 + 8) = off_1F2A2D550;

  return a1;
}

void *std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(void *result, unsigned __int8 a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % result[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF650;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 169) | 0x200000000;
  v4[0] = *(*a2 + 176) | (*(*a2 + 172) << 32);
  v4[1] = v2;
  return [*(a1 + 16) canPossiblyDrawKey:v4];
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = off_1F2A2D550;

  operator delete(a1);
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF608;
  *(a1 + 8) = off_1F2A2D550;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF608;
  *(a1 + 8) = off_1F2A2D550;

  return a1;
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

__n128 std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F29FF5C0;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &>(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, a1);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a2, v4);
  v4[0] = off_1F2A2D550;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t (***a2)(void), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a3, v6);
      v6 += 24;
      a3 += 24;
    }

    while (v6 != a2);
    v7 = v5;
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 3;
      result = (*v9)(v5);
      v7 += 3;
      v5 = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A2D550;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A2D550;

  return a1;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(a1, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a1, v3);
  }
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0,std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v17 = &unk_1F29FF530;
  v18 = v3;
  v19 = &v17;
  v16[0] = &unk_1F29FF578;
  v16[1] = v2;
  v16[3] = v16;
  v5 = *(a1 + 32);
  v10[0] = *(a1 + 33);
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v11, v10, 1);
  md::OverlayLayerDataSource::conditionalInvalidate(v4, &v17, v16, v5, v11);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v11);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v16);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](&v17);
  if (*(a1 + 40) == 1)
  {
    v7 = *(v2 + 32);
    v13 = &unk_1F29FF530;
    v14 = v3;
    v15 = &v13;
    v12[0] = &unk_1F29FF578;
    v12[1] = v2;
    v12[3] = v12;
    v8 = *(a1 + 32);
    v9 = *(a1 + 33);
    std::unordered_set<md::OverlayTileDataType>::unordered_set(v10, &v9, 1);
    md::OverlayLayerDataSource::conditionalInvalidate(v7, &v13, v12, v8, v10);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10);
    std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v12);
    return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](&v13);
  }

  return result;
}

void sub_1B2DC0414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2},std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF578;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, void *a2)
{
  v2 = *a2 + 760;
  v3 = v2;
  do
  {
    v3 = v3[1];
    if (v3 == v2)
    {
      break;
    }

    v4 = v3[16];
    v5 = v3[17];
    if (v4 != v5)
    {
      while (*v4 != *(a1 + 8))
      {
        if (++v4 == v5)
        {
          v4 = v3[17];
          break;
        }
      }
    }
  }

  while (v4 == v5);
  return v3 != v2;
}

uint64_t std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F29FF530;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0,std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FF4E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 56);
  v4 = *(a1 + 58);
  v5 = *(a1 + 16);
  v6 = [v5 rasterTileProvider];
  v7 = (a1 + 24);
  if (v6)
  {
    v8 = *(*(*(v2 + 40) + 24) + 56);
    gdc::ResourceManager::resourceStore(&v26, *(v8 + 56), *(v8 + 64));
    v9 = v26;
    if (v26)
    {
      *v25 = [v6 providerID];
      v32[0] = &unk_1F29FF770;
      v32[1] = v25;
      v32[2] = v7;
      v32[3] = v32;
      gdc::ResourceStore::clearResources(v9, v32);
      std::__function::__value_func<BOOL ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](v32);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }
  }

  v10 = [v5 level];
  v11 = [v5 areResourcesRequired];
  if (v10 <= 1)
  {
    v12 = *(v2 + 16 * v10 + 8 * v11);
    if (v12)
    {
      v13 = [v5 rasterTileProvider];
      if (v13)
      {
        v23 = 0;
      }

      else
      {
        v14 = [v5 customTileProvider];
        v23 = v14 == 0;
      }

      v15 = v5;
      if ([v15 canProvideVectorData])
      {
        v16 = 2;
      }

      else
      {
        v17 = [v15 rasterTileProvider];
        v18 = v17 == 0;

        if (v18)
        {
          v19 = [v15 customTileProvider];
          v20 = v19 == 0;

          if (v20)
          {
            v16 = 1;
          }

          else
          {
            v16 = 4;
          }
        }

        else
        {
          v16 = 3;
        }
      }

      if (v4)
      {
        v30[0] = &unk_1F29FF7B8;
        v30[1] = v2;
        v31 = v30;
        v25[0] = v16;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(&v26, v25, 1);
        md::OverlayLayerDataSource::invalidateRect(v12, v7, v3, v30, v23, &v26);
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v26);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v30);
        if ([v15 level] == 1)
        {
          v21 = *(v2 + 32);
          v28[0] = &unk_1F29FF800;
          v28[1] = v2;
          v29 = v28;
          v24 = v16;
          std::unordered_set<md::OverlayTileDataType>::unordered_set(v25, &v24, 1);
          md::OverlayLayerDataSource::invalidateRect(v21, v7, v3, v28, v23, v25);
LABEL_23:
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
          std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v28);
        }
      }

      else
      {
        v30[0] = &unk_1F29FF848;
        v31 = v30;
        v25[0] = v16;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(&v26, v25, 1);
        md::OverlayLayerDataSource::invalidateRect(v12, v7, v3, v30, v23, &v26);
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v26);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v30);
        if ([v15 level] == 1)
        {
          v22 = *(v2 + 32);
          v28[0] = &unk_1F29FF890;
          v29 = v28;
          v24 = v16;
          std::unordered_set<md::OverlayTileDataType>::unordered_set(v25, &v24, 1);
          md::OverlayLayerDataSource::invalidateRect(v22, v7, v3, v28, v23, v25);
          goto LABEL_23;
        }
      }
    }
  }
}

void sub_1B2DC0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va1);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_2,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_2>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF800;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_1,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_1>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF7B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,BOOL ()(gdc::ResourceKey const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (gdc::ResourceKey::getInt32(v3, 3u) != **(a1 + 8))
  {
    return 0;
  }

  Int32 = gdc::ResourceKey::getInt32(v3, 0);
  v5 = gdc::ResourceKey::getInt32(v3, 1u);
  v6 = gdc::ResourceKey::getInt32(v3, 2u);
  v7 = gdc::ResourceKey::getInt32(v3, 4u);
  v26[0] = -1;
  v26[1] = v6;
  v27 = v5;
  v28 = Int32;
  v29 = 0;
  v30 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  md::TileAdjustmentHelpers::adjustTileForSize(v7, 0x200u, v26, &v23);
  if (v23 == v24)
  {
LABEL_10:
    v18 = 0;
    if (!v23)
    {
      return v18;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = v23;
LABEL_4:
    v10 = 0;
    v11 = 1 << v9[1];
    v12 = 1.0 / v11;
    v13 = v12 * (v11 + ~*(v9 + 1));
    v14 = v12 * *(v9 + 2) + v12;
    v20 = v12 * *(v9 + 2);
    v21 = v13;
    *v22 = v14;
    *&v22[1] = v13 + v12;
    v15 = &v20;
    v16 = 1;
    do
    {
      if (*&v22[v10] <= *(v8 + 8 * v10) || *v15 >= *(v8 + 16 + 8 * v10))
      {
        v9 += 32;
        if (v9 != v24)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }

      v17 = v16;
      v16 = 0;
      v15 = &v21;
      v10 = 1;
    }

    while ((v17 & 1) != 0);
    v18 = 1;
    if (!v23)
    {
      return v18;
    }
  }

  v24 = v23;
  operator delete(v23);
  return v18;
}

void sub_1B2DC0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,BOOL ()(gdc::ResourceKey const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FF770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

__n128 std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F29FF728;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v6 = *(a1 + 55);
  result = *(a1 + 40);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = result;
  *(a2 + 55) = v6;
  *(a2 + 63) = 0;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void md::OverlayContainer::invalidate(md::OverlayContainer *this, VKOverlay *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = 0;
  operator new();
}

void sub_1B2DC1348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v4 = *(a1 + 16);
  v5 = [v4 rasterTileProvider];
  if (v5)
  {
    v6 = *(*(*(v1 + 40) + 24) + 56);
    gdc::ResourceManager::resourceStore(v25, *(v6 + 56), *(v6 + 64));
    v7 = *&v25[0];
    if (*&v25[0])
    {
      *v24 = [v5 providerID];
      v31[0] = &unk_1F29FF920;
      v31[1] = v24;
      v31[3] = v31;
      gdc::ResourceStore::clearResources(v7, v31);
      std::__function::__value_func<BOOL ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](v31);
    }

    if (*(&v25[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v25[0] + 1));
    }
  }

  if ([v4 areResourcesRequired])
  {
    v8 = [v4 level];
    if (v8 > 1)
    {
      goto LABEL_32;
    }

    v9 = (v1 + 16 * v8 + 8);
  }

  else
  {
    v10 = [v4 level];
    if (v10 > 1)
    {
      goto LABEL_32;
    }

    v9 = (v1 + 16 * v10);
  }

  v11 = *v9;
  if (*v9)
  {
    v12 = [v4 rasterTileProvider];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = [v4 customTileProvider];
      v13 = v14 == 0;
    }

    memset(v25, 0, sizeof(v25));
    v26 = 1065353216;
    if (v3)
    {
      *v24 = 258;
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__assign_unique<md::OverlayTileDataType const*>(v25, v24, &v24[2]);
    }

    else
    {
      v15 = v4;
      if ([v15 canProvideVectorData])
      {
        v16 = 2;
      }

      else
      {
        v17 = [v15 rasterTileProvider];
        v18 = v17 == 0;

        if (v18)
        {
          v19 = [v15 customTileProvider];
          v20 = v19 == 0;

          if (v20)
          {
            v16 = 1;
          }

          else
          {
            v16 = 4;
          }
        }

        else
        {
          v16 = 3;
        }
      }

      v24[0] = v16;
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__assign_unique<md::OverlayTileDataType const*>(v25, v24, &v24[1]);
    }

    if (v2)
    {
      v29[0] = &unk_1F29FF968;
      v29[1] = v1;
      v30 = v29;
      std::unordered_set<md::OverlayTileDataType>::unordered_set(v24, v25);
      md::OverlayLayerDataSource::invalidate(v11, v29, v13, v24);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
      std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v29);
      if ([v4 level] == 1)
      {
        v21 = *(v1 + 32);
        v27[0] = &unk_1F29FF9B0;
        v27[1] = v1;
        v28 = v27;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v23, v25);
        md::OverlayLayerDataSource::invalidate(v21, v27, v13, v23);
LABEL_30:
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v27);
      }
    }

    else
    {
      v29[0] = &unk_1F29FF9F8;
      v30 = v29;
      std::unordered_set<md::OverlayTileDataType>::unordered_set(v24, v25);
      md::OverlayLayerDataSource::invalidate(v11, v29, v13, v24);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
      std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v29);
      if ([v4 level] == 1)
      {
        v22 = *(v1 + 32);
        v27[0] = &unk_1F29FFA40;
        v28 = v27;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v23, v25);
        md::OverlayLayerDataSource::invalidate(v22, v27, v13, v23);
        goto LABEL_30;
      }
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
  }

LABEL_32:
}

void sub_1B2DC1734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a9);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](&a24);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a19);

  _Unwind_Resume(a1);
}

void std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__assign_unique<md::OverlayTileDataType const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = (a1 + 16);
    v9 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v9)
    {
      v10 = a2 == a3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      while (1)
      {
        v12 = *v4;
        *(v9 + 16) = v12;
        v11 = *v9;
        v9[1] = v12;
        if (v6)
        {
          v13 = vcnt_s8(v6);
          v13.i16[0] = vaddlv_u8(v13);
          if (v13.u32[0] > 1uLL)
          {
            v14 = v12;
            if (v6 <= v12)
            {
              v14 = v12 % v6;
            }
          }

          else
          {
            v14 = (v6 - 1) & v12;
          }

          v15 = *(*a1 + 8 * v14);
          if (v15)
          {
            for (j = *v15; j; j = *j)
            {
              v17 = j[1];
              if (v17 == v12)
              {
                if (*(j + 16) == v12)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v13.u32[0] > 1uLL)
                {
                  if (v17 >= v6)
                  {
                    v17 %= v6;
                  }
                }

                else
                {
                  v17 &= v6 - 1;
                }

                if (v17 != v14)
                {
                  break;
                }
              }
            }
          }
        }

        v18 = (*(a1 + 24) + 1);
        v19 = *(a1 + 32);
        if (!v6 || (v19 * v6) < v18)
        {
          v20 = 2 * v6;
          v21 = v6 < 3 || (v6 & (v6 - 1)) != 0;
          v22 = v21 | v20;
          v23 = vcvtps_u32_f32(v18 / v19);
          if (v22 <= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v22;
          }

          std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, v24);
          v6 = *(a1 + 8);
          v12 = v9[1];
        }

        v25 = vcnt_s8(v6);
        v25.i16[0] = vaddlv_u8(v25);
        if (v25.u32[0] > 1uLL)
        {
          if (v12 >= v6)
          {
            v12 %= v6;
          }
        }

        else
        {
          v12 &= v6 - 1;
        }

        v26 = *a1;
        v27 = *(*a1 + 8 * v12);
        if (v27)
        {
          *v9 = *v27;
        }

        else
        {
          *v9 = *v8;
          *v8 = v9;
          *(v26 + 8 * v12) = v8;
          if (!*v9)
          {
            goto LABEL_48;
          }

          v28 = *(*v9 + 8);
          if (v25.u32[0] > 1uLL)
          {
            if (v28 >= v6)
            {
              v28 %= v6;
            }
          }

          else
          {
            v28 &= v6 - 1;
          }

          v27 = (*a1 + 8 * v28);
        }

        *v27 = v9;
LABEL_48:
        ++*(a1 + 24);
LABEL_49:
        ++v4;
        if (v11)
        {
          v9 = v11;
          if (v4 != a3)
          {
            continue;
          }
        }

        goto LABEL_51;
      }
    }

    v11 = v9;
LABEL_51:
    if (v11)
    {
      do
      {
        v29 = *v11;
        operator delete(v11);
        v11 = v29;
      }

      while (v29);
    }
  }

  if (v4 != a3)
  {
    v30 = v4;
    do
    {
      v31 = *v30++;
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(a1, v31);
    }

    while (v30 != a3);
  }
}

uint64_t std::unordered_set<md::OverlayTileDataType>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(a1, *(i + 16));
  }

  return a1;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_4,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_4>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return 0;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_3,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_3>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return 0;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
  }

  return isOverlayTileInCurrentScene ^ 1u;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF9B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
  }

  return isOverlayTileInCurrentScene ^ 1u;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF968;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_0>,BOOL ()(gdc::ResourceKey const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF920;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F29FF8D8;
  *(a2 + 8) = v4;
  result = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 26) = 0;
  *(a2 + 30) = 0;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void md::OverlayContainer::computeTileExclusionAreas(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v49 = a1 + 160;
  v4 = 1;
  do
  {
    v50 = v4;
    v5 = (v49 + 24 * v3);
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      v8 = 939530240;
      if (v4)
      {
        v8 = 0x8003FFC3800;
      }

      v51 = v8;
      if (v4)
      {
        v9 = 75684;
      }

      else
      {
        v9 = 384;
      }

      while (1)
      {
        v10 = *(v6 + 8);
        [v10 replaceMapContentInRect];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        if ((GEOMapRectIsNull() & 1) == 0)
        {
          break;
        }

LABEL_31:
        v6 += 24;
        if (v6 == v7)
        {
          goto LABEL_34;
        }
      }

      v19 = *(MEMORY[0x1E69A1688] + 16);
      v20 = *(MEMORY[0x1E69A1688] + 24);
      v21 = *(v6 + 8);
      v22 = [v21 rasterTileProvider];

      v23 = *(v6 + 8);
      v24 = v23;
      if (v22)
      {
        v25 = [v23 rasterTileProvider];
        LOBYTE(v26) = [v25 minimumZ];
        v27 = *(v6 + 8);
        v28 = [v27 rasterTileProvider];
        v29 = [v28 maximumZ];
      }

      else
      {
        v30 = [v23 customTileProvider];

        if (!v30)
        {
          v26 = 1;
          v31 = 26;
          goto LABEL_14;
        }

        v24 = *(v6 + 8);
        v25 = [v24 customTileProvider];
        LOBYTE(v26) = [v25 minimumZ];
        v27 = *(v6 + 8);
        v28 = [v27 customTileProvider];
        v29 = [v28 maximumZ];
      }

      v31 = v29;
      v26 = v26;

LABEL_14:
      *&v32 = v12 / v19;
      *(&v32 + 1) = 1.0 - (v18 + v14) / v20;
      *&v33 = (v16 + v12) / v19;
      *(&v33 + 1) = 1.0 - v14 / v20;
      v34 = a2[1];
      v35 = a2[2];
      if (v34 >= v35)
      {
        v37 = 0x8E38E38E38E38E39 * ((v34 - *a2) >> 3);
        v38 = v37 + 1;
        if (v37 + 1 > 0x38E38E38E38E38ELL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v39 = 0x8E38E38E38E38E39 * ((v35 - *a2) >> 3);
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v40 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::TileExclusionArea>>(v40);
        }

        v41 = 72 * v37;
        *v41 = v32;
        *(v41 + 16) = v33;
        *(v41 + 32) = v26 | (v31 << 8);
        *(v41 + 40) = v51;
        *(v41 + 48) = v9;
        *(v41 + 56) = 0;
        *(v41 + 64) = 0;
        v42 = *a2;
        v43 = a2[1];
        v44 = 72 * v37 + *a2 - v43;
        if (*a2 != v43)
        {
          v45 = v41 + *a2 - v43;
          do
          {
            *v45 = *v42;
            v46 = v42[1];
            v47 = v42[2];
            v48 = v42[3];
            *(v45 + 64) = *(v42 + 8);
            *(v45 + 32) = v47;
            *(v45 + 48) = v48;
            *(v45 + 16) = v46;
            v42 = (v42 + 72);
            v45 += 72;
          }

          while (v42 != v43);
          v42 = *a2;
        }

        v36 = v41 + 72;
        *a2 = v44;
        a2[1] = v41 + 72;
        a2[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v34 = v32;
        *(v34 + 16) = v33;
        *(v34 + 32) = v26 | (v31 << 8);
        *(v34 + 40) = v51;
        *(v34 + 48) = v9;
        v36 = v34 + 72;
        *(v34 + 56) = 0;
        *(v34 + 64) = 0;
      }

      a2[1] = v36;
      goto LABEL_31;
    }

LABEL_34:
    v4 = 0;
    v3 = 1;
  }

  while ((v50 & 1) != 0);
}

void md::OverlayContainer::visitOverlays(uint64_t a1, uint64_t a2)
{
  md::OverlayContainer::belowOverlays(&v8, a1);
  v4 = v8;
  v5 = v9;
  while (v4 != v5)
  {
    std::function<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(*(a2 + 24), v4, 0);
    v4 += 24;
  }

  v10 = &v8;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v10);
  md::OverlayContainer::aboveOverlays(&v8, a1);
  v6 = v8;
  v7 = v9;
  while (v6 != v7)
  {
    std::function<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(*(a2 + 24), v6, 1);
    v6 += 24;
  }

  v10 = &v8;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v10);
}

void sub_1B2DC255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

id std::function<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return [(VKLineMarker *)v4 .cxx_construct];
}

void sub_1B2DC27B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
{
  v1 = a1->__vftable;
  v2 = a1->~__shared_weak_count;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = a1->~__shared_weak_count;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        a1 = *(v3 - 1);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 72);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::MarkerFeatureHandle>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::MarkerFeatureHandle>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::MarkerFeatureHandle>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 72 * a2, 0x10600400BFC2BF9uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2DC2A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2DC2B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::ARFeatureShadowExternalMeshLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 576);
  if (!v5)
  {
    return 26;
  }

  v9 = *(a1 + 64);
  v21 = *v9;
  v22 = *(v9 + 2);
  v10 = *(v9 + 6);
  v11 = *(v9 + 9);
  v12.f32[0] = *(a1 + 680) - *(a1 + 672);
  v12.f32[1] = (*(a1 + 684) - *(a1 + 676)) * 0.5;
  v13 = vmulq_f64(*(v9 + 56), vcvtq_f64_f32(v12));
  v14 = *(v9 + 5);
  *(v5 + 56) = *(v9 + 24);
  *(v5 + 72) = v14;
  *(v5 + 80) = v10;
  *(v5 + 48) = v22;
  *(v5 + 32) = v21;
  *(v5 + 88) = v13;
  *(v5 + 104) = v11;
  geo::Transform<double>::toMatrix(v20, v9);
  v15 = v20[5];
  *(a1 + 752) = v20[4];
  *(a1 + 768) = v15;
  v16 = v20[7];
  *(a1 + 784) = v20[6];
  *(a1 + 800) = v16;
  v17 = v20[1];
  *(a1 + 688) = v20[0];
  *(a1 + 704) = v17;
  v18 = v20[3];
  *(a1 + 720) = v20[2];
  *(a1 + 736) = v18;
  *(a1 + 544) = *a5;
  *(a1 + 548) = a5[1];
  md::CollisionObject::setLocalBounds(a1 + 312, a1 + 672);
  *(a1 + 520) = *a4;
  *(a1 + 524) = a4[1];
  *(a1 + 344) = *a4;
  *(a1 + 348) = a4[1];
  md::CollisionObject::setupShapeData(a1 + 312);
  *(a1 + 424) = a1 + 688;
  *(a1 + 408) = *(a1 + 948);
  return 37;
}

float md::ARFeatureShadowExternalMeshLabelPart::updateForDisplay(md::ARFeatureShadowExternalMeshLabelPart *this)
{
  *(this + 42) = *(this + 41);
  result = *(this + 236);
  *(this + 237) = result;
  return result;
}

uint64_t md::ARFeatureShadowExternalMeshLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = md::ExternalMeshLabelPart::layoutForStaging(a1);
  if (result == 37)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 664 + 4 * v9);
      v11 = *(a1 + 656 + 4 * v9);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 >= v11);
    if (v10 >= v11)
    {
      geo::Transform<double>::toMatrix(v16, *(a1 + 56));
      v12 = v16[5];
      *(a1 + 880) = v16[4];
      *(a1 + 896) = v12;
      v13 = v16[7];
      *(a1 + 912) = v16[6];
      *(a1 + 928) = v13;
      v14 = v16[1];
      *(a1 + 816) = v16[0];
      *(a1 + 832) = v14;
      v15 = v16[3];
      *(a1 + 848) = v16[2];
      *(a1 + 864) = v15;
      *(a1 + 304) = *a4;
      *(a1 + 308) = a4[1];
      md::CollisionObject::setLocalBounds(a1 + 72, a1 + 656);
      *(a1 + 280) = *a3;
      *(a1 + 284) = a3[1];
      *(a1 + 104) = *a3;
      *(a1 + 108) = a3[1];
      md::CollisionObject::setupShapeData(a1 + 72);
      *(a1 + 184) = a1 + 816;
      *(a1 + 168) = *(a1 + 944);
      return 37;
    }

    else
    {
      return 13;
    }
  }

  return result;
}

float md::ARFeatureShadowExternalMeshLabelPart::updateWithStyle(md::ARFeatureShadowExternalMeshLabelPart *this, md::LabelManager *a2)
{
  result = *(**(this + 4) + 172);
  *(this + 236) = result;
  return result;
}

void md::ARFeatureShadowExternalMeshLabelPart::~ARFeatureShadowExternalMeshLabelPart(md::ARFeatureShadowExternalMeshLabelPart *this)
{
  md::ExternalMeshLabelPart::~ExternalMeshLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

md::LabelPart *md::ARFeatureShadowExternalMeshLabelPart::ARFeatureShadowExternalMeshLabelPart(md::LabelPart *this, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::LabelPart::LabelPart(this);
  *this = &unk_1F29E2FE8;
  *(this + 36) = 0u;
  *(this + 74) = a2;
  *(this + 75) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  *this = &unk_1F29FFA88;
  *(this + 41) = xmmword_1B33B0730;
  *(this + 42) = xmmword_1B33B0730;
  *(this + 118) = 0;
  return this;
}

void *std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t md::UniLineLabelFeature::hasAnnotatedShieldText(md::UniLineLabelFeature *this)
{
  if (*(this + 449) == 1)
  {
    return 0;
  }

  result = (*(*this + 480))(this, 0);
  if (result)
  {
    v2 = *(result + 23);
    if (v2 < 0)
    {
      v2 = *(result + 8);
    }

    return v2 != 0;
  }

  return result;
}

void md::UniLineLabelFeature::debugPopulateStyleAttributes(uint64_t *a1, float *a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 64))(a1))
  {
    md::createFeatureAttributeSet(v4, a1 + 52);
    std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__emplace_unique_key_args<gss::FeatureAttributeSet,gss::FeatureAttributeSet>(a2, v4[0], v4[1], v4);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v4);
  }

  else
  {

    md::LabelFeature::debugPopulateStyleAttributes(a1, a2);
  }
}

void sub_1B2DC31F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__emplace_unique_key_args<gss::FeatureAttributeSet,gss::FeatureAttributeSet>(float *a1, gss::FeatureAttributeSet *this, gss::FeatureAttributeSet *a3, uint64_t **a4)
{
  v9 = gss::FeatureAttributeSet::hash(this, a3);
  v10 = v9;
  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            v9 = gss::FeatureAttributeSet::operator==(v15[2], v15[3], this, a3);
            if (v9)
            {
              return;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v16 >= v11)
              {
                v16 %= v11;
              }
            }

            else
            {
              v16 &= v11 - 1;
            }

            if (v16 != v4)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  v17 = mdm::zone_mallocator::instance(v9);
  v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(v17);
  *v18 = 0;
  *(v18 + 1) = v10;
  gss::FeatureAttributeSet::FeatureAttributeSet(v18 + 2, a4);
  v19 = (*(a1 + 5) + 1);
  v20 = a1[12];
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__rehash<true>(a1, v24);
    v11 = *(a1 + 1);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    *v18 = *v26;
LABEL_38:
    *v26 = v18;
    goto LABEL_39;
  }

  *v18 = *(a1 + 3);
  *(a1 + 3) = v18;
  *(v25 + 8 * v4) = a1 + 6;
  if (*v18)
  {
    v27 = *(*v18 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v27 >= v11)
      {
        v27 %= v11;
      }
    }

    else
    {
      v27 &= v11 - 1;
    }

    v26 = (*a1 + 8 * v27);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
}

void std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *prime, size_t __n)
{
  v2 = prime;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
      v3 = prime;
    }
  }

  v4 = *(v2 + 8);
  if (*&v3 <= *&v4)
  {
    if (*&v3 >= *&v4)
    {
      return;
    }

    prime = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      prime = std::__next_prime(prime);
    }

    else
    {
      v14 = 1 << -__clz(prime - 1);
      if (prime >= 2)
      {
        prime = v14;
      }
    }

    if (*&v3 <= prime)
    {
      v3 = prime;
    }

    if (*&v3 >= *&v4)
    {
      return;
    }

    if (!*&v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(prime);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * *&v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (*&v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= *&v3)
          {
            v16 %= *&v3;
          }
        }

        else
        {
          v16 &= *&v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<gss::FeatureAttributeSet,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, uint64_t a2)
{
  if (a1)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a2 + 16));
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(v3, a2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x1020040FAFD3B39uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void md::UniLineLabelFeature::debugPopulateAttributeStrings(md::UniLineLabelFeature *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v12 = a2;
  if ((*(*this + 64))(this))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = md::HighlightHelper::debugAttributesToString(this + 416);
    v9 = [v7 stringWithFormat:@"{%@}", v8];
    [(NSMutableSet *)v12 addObject:v9];

    v10 = md::LabelFeature::debugClientAttributesToString(this + 52, *(a3 + 42));
    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v10];
      [(NSMutableSet *)v12 addObject:v11];
    }
  }

  else
  {
    md::LineLabelFeature::debugPopulateAttributeStrings(this, v12, a3, a4);
  }
}

uint64_t md::UniLineLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v25);
  v36 = 4;
  strcpy(&v34, "Road");
  md::LineLabelFeature::debugRoadString(__p, a1, a2, a3, a4, &v34);
  if ((v24 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, v10, v11);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36 < 0)
  {
    v13 = v34;
    v14 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "Road Attributes:\n", 17);
  if (!(*(*a1 + 64))(a1))
  {
    md::LineLabelPlacer::positionForIdentifier(&v34, a1 + 192, *a3);
    if (v34)
    {
      v15 = (*(*v34 + 200))(v34);
      md::LabelLineResolvedPosition::ensureValidLinePosition(v15, v16);
      v17 = md::LabelLinePosition::geoFeature(v15);
      if (v17)
      {
        v18 = v17;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "  RoadClass=", 12);
        LOBYTE(__p[0]) = *(v18 + 151);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, __p, 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "\n", 1);
      }
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }
  }

  if ((v32 & 0x10) != 0)
  {
    v20 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v20 = v28;
    }

    locale = v27[4].__locale_;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v19 = 0;
      a5[23] = 0;
      goto LABEL_30;
    }

    locale = v27[1].__locale_;
    v20 = v27[3].__locale_;
  }

  v19 = v20 - locale;
  if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a5[23] = v19;
  if (v19)
  {
    memmove(a5, locale, v19);
  }

LABEL_30:
  a5[v19] = 0;
  v25 = *MEMORY[0x1E69E54E8];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v33);
}

void sub_1B2DC3DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 96);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

uint64_t md::LabelLinePosition::geoFeature(md::LabelLinePosition *this)
{
  if (*this && *(this + 10) == *(*this + 16) && (v1 = *(this + 3)) != 0 && (*(this + 17) & 0x80000000) == 0 && (v2 = *v1) != 0 && !*(v2 + 32))
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

void md::UniLineLabelFeature::populateFeatureInfo(void *a1, uint64_t a2)
{
  md::LabelFeature::populateFeatureInfo(a1, a2);
  *(a2 + 64) = -1431655765 * ((a1[45] - a1[44]) >> 4);
  v4 = a1[57];
  if (v4)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=((a2 + 72), (v4 + 240));
    v5 = (a1[57] + 272);

    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=((a2 + 104), v5);
  }
}

uint64_t md::UniLineLabelFeature::updateText(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*(*a2 + 176) == 14)
  {
    std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::clear[abi:nn200100]((result + 384));
    v5 = *(v2 + 192);
    v31 = &unk_1F2A00150;
    v32 = v2;
    *(&v33 + 1) = &v31;
    md::LabelLineStore::enumerateLabelLineSegments(*(v5 + 96), *(v5 + 104), &v31);
    result = std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](&v31);
    v3 = *a2;
  }

  v6 = *(v3 + 192);
  v7 = *(v3 + 184);
  if (v6 != v7 && *(v2 + 352) == *(v2 + 360))
  {
    v8 = 0;
    v9 = *(v3 + 176);
    if (v9 > 12)
    {
      if (v9 != 14)
      {
        if (v9 != 13)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else if (v9 != 2)
    {
      if (v9 != 9)
      {
LABEL_13:
        v10 = (v2 + 360);
        do
        {
          v11 = *v7;
          v13 = *(v2 + 360);
          v12 = *(v2 + 368);
          if (v13 >= v12)
          {
            v15 = *(v2 + 352);
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 4);
            v17 = v16 + 1;
            if (v16 + 1 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 4);
            if (2 * v18 > v17)
            {
              v17 = 2 * v18;
            }

            if (v18 >= 0x2AAAAAAAAAAAAAALL)
            {
              v19 = 0x555555555555555;
            }

            else
            {
              v19 = v17;
            }

            v34 = v2 + 376;
            if (v19)
            {
              v20 = mdm::zone_mallocator::instance(result);
              v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v20, v19);
            }

            else
            {
              v21 = 0;
            }

            v31 = v21;
            v32 = (v21 + 48 * v16);
            *&v33 = v32;
            *(&v33 + 1) = v21 + 48 * v19;
            std::__construct_at[abi:nn200100]<md::LabelShieldEntry,md::ShieldFeatureType &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> &,unsigned long long &,md::LabelShieldEntry*>(v32, v8, (v11 + 8), *(v11 + 48));
            *&v33 = v33 + 48;
            v22 = *(v2 + 352);
            v23 = *(v2 + 360);
            v24 = v32 + v22 - v23;
            std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(v22, v23, v24);
            v25 = *(v2 + 352);
            *(v2 + 352) = v24;
            v26 = *(v2 + 368);
            v30 = v33;
            *v10 = v33;
            *&v33 = v25;
            *(&v33 + 1) = v26;
            v31 = v25;
            v32 = v25;
            result = std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(&v31);
            v14 = v30;
          }

          else
          {
            result = std::__construct_at[abi:nn200100]<md::LabelShieldEntry,md::ShieldFeatureType &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> &,unsigned long long &,md::LabelShieldEntry*>(*(v2 + 360), v8, (v11 + 8), *(v11 + 48));
            v14 = v13 + 48;
            *v10 = v13 + 48;
          }

          v27 = 0;
          *v10 = v14;
          v28 = *v7 + 56;
          v29 = v14 - 8;
          do
          {
            *(v29 + v27) = *(v28 + v27);
            ++v27;
          }

          while (v27 != 4);
          v7 += 2;
        }

        while (v7 != v6);
        return result;
      }

LABEL_11:
      v8 = 2;
      goto LABEL_13;
    }

    v8 = 1;
    goto LABEL_13;
  }

  return result;
}

void sub_1B2DC42B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__construct_at[abi:nn200100]<md::LabelShieldEntry,md::ShieldFeatureType &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> &,unsigned long long &,md::LabelShieldEntry*>(mdm::zone_mallocator *__dst, char a2, __int128 *a3, uint64_t a4)
{
  *(__dst + 24) = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v7;
  }

  *(__dst + 4) = a4;
  *(__dst + 10) = 0;
  *(__dst + 44) = a2;
  return __dst;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x101204072C7FFF6uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__function::__func<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 32) == 1)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        if ((*(v4 + 263) & 0x8000000000000000) != 0)
        {
          if (!*(v4 + 248))
          {
            return;
          }
        }

        else if (!*(v4 + 263))
        {
          return;
        }

        v5 = *(a1 + 8);
        v15 = 0uLL;
        v16 = 0;
        md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__dst, (v4 + 240), &v15);
        v6 = md::LineLabelFeature::textIndexForText(v5, __dst);
        *(v2 + 38) = v6;
        if (v14 < 0)
        {
          v7 = v13;
          v8 = mdm::zone_mallocator::instance(v6);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v8, v7);
        }

        if (v12 < 0)
        {
          v9 = *__dst;
          v10 = mdm::zone_mallocator::instance(v6);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v10, v9);
        }
      }
    }
  }
}

void sub_1B2DC44C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    v23 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, a17);
  }

  if (a15 < 0)
  {
    v24 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A00150;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::UniLineLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A00108;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

md::LabelPart *md::UniLineLabelFeature::newRootPart(md::LabelFeature *a1, uint64_t a2, uint64_t a3, md::LabelStyle *a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x1E69E9840];
  md::LineLabelPlacer::positionForIdentifier(&v29, a1 + 192, *(a3 + 48));
  if (!v29)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v10 = 0;
  v11 = *(v29 + 9);
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 1u:
        v12 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
        break;
      case 2u:
        v21 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
        v22 = md::UniLineLabelFeature::newShieldPart(a1, a2, a3, a4, &v29);
        v10 = v22;
        if (v21)
        {
          if (v22)
          {
            (*(*v22 + 200))(v31, v22);
            v23 = v31[0];
            v24 = v31[1];
            std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
            if (v23 == v24)
            {
              v27 = mdm::zone_mallocator::instance(v25);
              v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v27, 0x2C0uLL);
              v25 = md::MultipleShieldLabelPart::MultipleShieldLabelPart(v26, &v29);
              if (v26)
              {
                v25 = md::CompositeLabelPart::addLabelPart(v26, v10);
              }
            }

            else
            {
              v26 = v10;
            }

            v28 = mdm::zone_mallocator::instance(v25);
            v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v28, 0x2D0uLL);
            md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(v10, &v29, v21, v26);
          }

          else
          {
            v10 = v21;
          }
        }

        goto LABEL_24;
      case 3u:
        v12 = md::UniLineLabelFeature::newShieldPart(a1, a2, a3, a4, &v29);
        break;
      default:
        goto LABEL_24;
    }

LABEL_23:
    v10 = v12;
    goto LABEL_24;
  }

  if (*(v29 + 9) <= 6u)
  {
    if (v11 - 4 >= 2)
    {
      if (v11 != 6)
      {
        goto LABEL_24;
      }

      v12 = md::UniLineLabelFeature::newAnnotationPart(a1, a2, a3, a5, &v29);
    }

    else
    {
      v12 = md::UniLineLabelFeature::newArrowPart(a2, a3, a4, &v29, v11 == 4);
    }

    goto LABEL_23;
  }

  if (v11 == 7)
  {
    v17 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
    v18 = md::UniLineLabelFeature::newAnnotationPart(a1, a2, a3, a5, &v29);
    v10 = v18;
    if (!v17)
    {
      goto LABEL_24;
    }

    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(v18);
      v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v19, 0x2D0uLL);
      md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(v16, &v29, v17, v10);
      goto LABEL_21;
    }

    v10 = v17;
  }

  else if (v11 == 8)
  {
    v13 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
    v14 = md::UniLineLabelFeature::newArrowPart(a2, a3, a4, &v29, 0);
    v10 = v14;
    if (v13)
    {
      if (v14)
      {
        v15 = mdm::zone_mallocator::instance(v14);
        v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v15, 0x2D0uLL);
        md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(v16, &v29, v13, v10);
LABEL_21:
        v10 = v16;
        goto LABEL_24;
      }

      v10 = v13;
    }
  }

LABEL_24:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  return v10;
}

void sub_1B2DC498C(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v11);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t md::UniLineLabelFeature::newTextPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(md::LabelStyle::textStyleGroup(a4, 0) + 100) != 0.0)
  {
    v10 = *(a1 + 384);
    v11 = *(a1 + 392);
    if (v10 != v11)
    {
      if (*(a1 + 449) == 1)
      {
        if ((v11 - v10) >= 0x41)
        {
          v12 = md::LabelStyle::textStyleGroup(a4, 0);
          md::LabelFeature::textDataForZoom(&v19, a1, 0, v12);
          if (v19)
          {
            md::LabelFeature::textDataForZoom(&v17, a1, 1, v12);
            if (v17)
            {
              operator new();
            }

            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }
        }
      }

      else
      {
        if ((*(**a6 + 200))())
        {
          v13 = (*(**a6 + 200))();
          md::LabelLineResolvedPosition::ensureValidLinePosition(v13, v14);
          v15 = md::LabelLinePosition::textIndex(v13);
          if (v15 == 255)
          {
            return 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = md::LabelStyle::textStyleGroup(a4, 0);
        md::LabelFeature::textDataForZoom(&v19, a1, v15, v16);
        if (v19)
        {
          operator new();
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }
    }
  }

  return 0;
}

void sub_1B2DC4F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t md::UniLineLabelFeature::newAnnotationPart(md::LabelFeature *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 8);
  v9 = *(a3 + 48);
  v10 = atomic_load((a3 + 1328));
  v11 = (*(*v8 + 568))(v8, v9, 0, v10 & 1, a2);
  if (*v11)
  {
    v12 = md::LabelStyle::textStyleGroup(*v11, 1);
    if (*(v12 + 100) > 0.0)
    {
      v13 = v12;
      if ((*(**a5 + 120))())
      {
        v14 = (*(**a5 + 120))();
        v15 = *v11;
        v16 = *(*v11 + 264);
        if (!v16)
        {
          v17 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*v11);
          v16 = *v17;
          *(v15 + 264) = *v17;
        }

        if (*(v16 + 12))
        {
          v18 = *(v16 + 12);
        }

        else
        {
          v18 = 4;
        }

        if (v14)
        {
          v19 = *(v16 + 64);
          v29 = 0;
          v30 = 0;
          v20 = *(v14 + 8);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            v30 = v21;
            if (v21)
            {
              v29 = *v14;
            }
          }

          else
          {
            v21 = 0;
          }

          md::LabelFeature::tileAnnotationText(&v31, &v29, *(v14 + 140), *(v14 + 150), v18, v19);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }

          if (v36)
          {
            v22 = md::LineLabelFeature::textIndexForText(a1, &v31);
            v23 = v22;
            if (v36)
            {
              if (v35 < 0)
              {
                v24 = v34;
                v25 = mdm::zone_mallocator::instance(v22);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v24);
              }

              if (v33 < 0)
              {
                v26 = v31;
                v27 = mdm::zone_mallocator::instance(v22);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v27, v26);
              }
            }

            if (v23 != 255)
            {
              md::LabelFeature::textDataForZoom(&v31, a1, v23, v13);
              if (v31)
              {
                operator new();
              }

              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v32);
              }
            }
          }
        }

        else
        {
          LOBYTE(v31) = 0;
          v36 = 0;
        }
      }
    }
  }

  return 0;
}

void sub_1B2DC53E0(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, mdm::zone_mallocator *a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  v35 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v35, v31);
  std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  _Unwind_Resume(a1);
}

md::LabelPart *md::UniLineLabelFeature::newShieldPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  __dst[0] = 0;
  __dst[1] = 0;
  j = 0;
  v8 = (*(*a1 + 64))(a1);
  if (v8)
  {
    if (__dst != (a1 + 352))
    {
      v10 = *(a1 + 352);
      v9 = *(a1 + 360);
      v11 = v9 - v10;
      if (j - __dst[0] >= (v9 - v10))
      {
        v22 = __dst[1] - __dst[0];
        if ((__dst[1] - __dst[0]) >= v11)
        {
          v8 = std::__copy_impl::operator()[abi:nn200100]<md::LabelShieldEntry *,md::LabelShieldEntry *,md::LabelShieldEntry *>(v10, v9, __dst[0]);
          v26 = v8;
          for (i = __dst[1]; i != v26; std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(i))
          {
            i -= 48;
          }

          __dst[1] = v26;
        }

        else
        {
          v23 = (v10 + v22);
          v8 = std::__copy_impl::operator()[abi:nn200100]<md::LabelShieldEntry *,md::LabelShieldEntry *,md::LabelShieldEntry *>(v10, v10 + v22, __dst[0]);
          v24 = __dst[1];
          if (v23 != v9)
          {
            v8 = __dst[1];
            do
            {
              v25 = std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>(v8, v23);
              v23 += 3;
              v8 = (v25 + 48);
            }

            while (v23 != v9);
            v24 = v8;
          }

          __dst[1] = v24;
        }
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
        std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__vdeallocate(__dst);
        if (v12 > 0x555555555555555)
        {
          goto LABEL_34;
        }

        v14 = 0x5555555555555556 * ((j - __dst[0]) >> 4);
        if (v14 <= v12)
        {
          v14 = v12;
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((j - __dst[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v14;
        if (v15 > 0x555555555555555)
        {
LABEL_34:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v16 = mdm::zone_mallocator::instance(v13);
        v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v16, v15);
        __dst[0] = v8;
        __dst[1] = v8;
        for (j = v8 + 48 * v15; v10 != v9; v8 = (v17 + 48))
        {
          v17 = std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>(v8, v10);
          v10 += 3;
        }

        __dst[1] = v8;
      }
    }
  }

  else
  {
    v18 = (*(**a5 + 200))();
    md::LabelLineResolvedPosition::ensureValidLinePosition(v18, v19);
    v20 = md::LabelLinePosition::geoFeature(v18);
    v21 = atomic_load((a2 + 3426));
    md::UniLineLabelFeature::shieldsForFeature(&v32, v20, v21 & 1);
    std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__vdeallocate(__dst);
    *__dst = v32;
    j = v33;
    v33 = 0;
    v31 = &v32;
    v32 = 0uLL;
    std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v31);
  }

  if ((__dst[1] - __dst[0]) == 48)
  {
    md::LabelStyle::shieldIcon();
  }

  if (0xAAAAAAAAAAAAAAABLL * ((__dst[1] - __dst[0]) >> 4) < 2)
  {
    v29 = 0;
  }

  else
  {
    v28 = mdm::zone_mallocator::instance(v8);
    v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v28, 0x2C0uLL);
    md::MultipleShieldLabelPart::MultipleShieldLabelPart(v29, a5);
    if (v29)
    {
      (*(*v29 + 176))(v29, 2);
      if (__dst[1] != __dst[0])
      {
        md::LabelStyle::shieldIcon();
      }
    }
  }

  *&v32 = __dst;
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v32);
  return v29;
}

void sub_1B2DC5904(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v17, v15);
  a11 = &a15;
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

char *md::UniLineLabelFeature::newArrowPart(uint64_t a1, uint64_t a2, md::LabelStyle *a3, void *a4, char a5)
{
  v10 = *(a3 + 33);
  if (!v10)
  {
    v11 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(a3);
    v10 = *v11;
    *(a3 + 33) = *v11;
  }

  v12 = md::LabelStyle::namedIcon(&v22, a3, a1, a2, v10 + 72);
  if (v22)
  {
    v13 = mdm::zone_mallocator::instance(v12);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x3D8uLL);
    md::IconLabelPart::IconLabelPart(v14, &v22, 2, a3);
    *v14 = &unk_1F2A56F20;
    *(v14 + 52) = 0u;
    *(v14 + 53) = xmmword_1B33B0AE0;
    *(v14 + 216) = 1065353216;
    *(v14 + 223) = 0;
    *(v14 + 876) = 0;
    *(v14 + 884) = 0;
    *(v14 + 868) = 0;
    v14[896] = 9;
    *(v14 + 897) = 0;
    *(v14 + 114) = 0;
    *(v14 + 920) = xmmword_1B33B0AE0;
    *(v14 + 969) = 0;
    *(v14 + 113) = 0;
    *(v14 + 234) = 1065353216;
    *(v14 + 241) = 0;
    *(v14 + 948) = 0;
    *(v14 + 956) = 0;
    *(v14 + 940) = 0;
    v14[968] = 9;
    *(v14 + 244) = 0;
    v14[980] = a5;
    v14[981] = 0;
    v15 = *a4;
    v16 = a4[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      v17 = *(v14 + 105);
      *(v14 + 104) = v15;
      *(v14 + 105) = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    else
    {
      *(v14 + 104) = v15;
      *(v14 + 105) = 0;
    }

    (*(**a4 + 16))(&v24);
    v18 = v24;
    v24 = 0uLL;
    v19 = *(v14 + 114);
    *(v14 + 904) = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      if (*(&v24 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v24 + 1));
      }
    }

    if (v14[980] == 1)
    {
      v20 = 0;
      v14[720] = 2;
    }

    else
    {
      v20 = 1;
    }

    v14[557] = v20;
    v14[712] = v20;
    (*(*v14 + 176))(v14, 1);
  }

  else
  {
    v14 = 0;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  return v14;
}

void sub_1B2DC5BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = *(v10 + 114);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  if (*v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v11);
  }

  md::IconLabelPart::~IconLabelPart(v10);
  v15 = mdm::zone_mallocator::instance(v14);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v15, v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<md::LabelShieldEntry *,md::LabelShieldEntry *,md::LabelShieldEntry *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(a3, v5);
      *(a3 + 32) = *(v5 + 32);
      for (i = 40; i != 44; ++i)
      {
        *(a3 + i) = *(v5 + i);
      }

      *(a3 + 44) = *(v5 + 44);
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

mdm::zone_mallocator *std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>(mdm::zone_mallocator *__dst, __int128 *a2)
{
  *(__dst + 24) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 4) = *(a2 + 4);
  *(__dst + 10) = *(a2 + 10);
  *(__dst + 44) = *(a2 + 44);
  return __dst;
}

uint64_t md::LabelLinePosition::textIndex(md::LabelLinePosition *this)
{
  if (*this && *(this + 10) == *(*this + 16) && (v1 = *(this + 3)) != 0 && (*(this + 17) & 0x80000000) == 0 && (v2 = *v1) != 0)
  {
    return *(v2 + 38);
  }

  else
  {
    return 255;
  }
}

void md::UniLineLabelFeature::~UniLineLabelFeature(md::UniLineLabelFeature *this)
{
  md::UniLineLabelFeature::~UniLineLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29FFE20;
  *(this + 55) = &unk_1F2A000E8;
  v2 = *(this + 60);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LineLabelFeature::~LineLabelFeature(this);
}

uint64_t md::UniLineLabelFeature::UniLineLabelFeature(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v7 = md::LineLabelFeature::LineLabelFeature(a1, *(*a2 + 176), a3);
  *v7 = &unk_1F29FFE20;
  *(v7 + 440) = &unk_1F2A000E8;
  v8 = *a2;
  *(v7 + 448) = *(*a2 + 176);
  *(v7 + 449) = 0;
  v9 = a2[1];
  *(v7 + 456) = v8;
  *(v7 + 464) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = *(a1 + 456);
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v11 = *(v8 + 32);
  v10 = *(v8 + 40);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 424);
  *(a1 + 416) = v11;
  *(a1 + 424) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    v11 = *(a1 + 416);
  }

  if (!v11)
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  md::LabelLineStore::addExternalRoadFeature(*(a1 + 192), a2);
  v13 = *(a1 + 192);
  v14 = atomic_load(v13 + 155);
  if (v14)
  {
    md::LabelLineStore::consumeWorkUnits(v13);
  }

  (*(*a1 + 40))(a1, a2, a4);
  return a1;
}

void sub_1B2DC5F58(_Unwind_Exception *a1)
{
  v3 = *(v1 + 60);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 58);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LineLabelFeature::~LineLabelFeature(v1);
  _Unwind_Resume(a1);
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(float *a1, unsigned int *a2, float *a3, float *a4)
{
  v4 = *a2;
  if (*a2 < *a1 || v4 == *a1 && (result = *(a2 + 1), result < a1[1]))
  {
    if (*a3 < v4 || *a3 == v4 && (result = a3[1], result < *(a2 + 1)))
    {
      v5 = *a1;
      *a1 = *a3;
    }

    else
    {
      v5 = *a1;
      *a1 = *a2;
      *a2 = v5;
      if (*a3 >= v5)
      {
        if (*a3 != v5)
        {
          goto LABEL_14;
        }

        result = *(&v5 + 1);
        if (a3[1] >= *(&v5 + 1))
        {
          goto LABEL_14;
        }
      }

      *a2 = *a3;
    }

    *a3 = v5;
  }

  else if (*a3 < v4 || *a3 == v4 && (result = a3[1], result < *(a2 + 1)))
  {
    v7 = *a2;
    *a2 = *a3;
    *a3 = v7;
    if (*a2 < *a1 || *a2 == *a1 && (result = *(a2 + 1), result < a1[1]))
    {
      v8 = *a1;
      *a1 = *a2;
      *a2 = v8;
    }
  }

LABEL_14:
  if (*a4 < *a3 || *a4 == *a3 && (result = a4[1], result < a3[1]))
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2 || *a3 == *a2 && (result = a3[1], result < *(a2 + 1)))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *a1 || *a2 == *a1 && (result = *(a2 + 1), result < a1[1]))
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v16 = *(a1 + 8);
        if (v16 >= *a1 && (v16 != *a1 || *(a1 + 12) >= *(a1 + 4)))
        {
          v24 = *(a2 - 8);
          if (v24 < v16 || v24 == v16 && *(a2 - 4) < *(a1 + 12))
          {
            v25 = *(a1 + 8);
            *(a1 + 8) = *(a2 - 8);
            *(a2 - 8) = v25;
            v26 = *(a1 + 8);
            if (v26 < *a1 || v26 == *a1 && *(a1 + 12) < *(a1 + 4))
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v17 = *(a2 - 8);
        if (v17 >= v16 && (v17 != v16 || *(a2 - 4) >= *(a1 + 12)))
        {
          v30 = *a1;
          *a1 = vextq_s8(*a1, *a1, 8uLL);
          v31 = *(a2 - 8);
          v18 = v30.i64[0];
          if (v31 >= v30.i32[0] && (v31 != v30.i32[0] || *(a2 - 4) >= *&v30.i32[1]))
          {
            return 1;
          }

          *(a1 + 8) = *(a2 - 8);
          goto LABEL_19;
        }

LABEL_18:
        v18 = *a1;
        *a1 = *(a2 - 8);
LABEL_19:
        *(a2 - 8) = v18;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(a1, (a1 + 8), (a1 + 16), (a2 - 8));
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v6 = *(a2 - 8);
        v7 = *(a1 + 24);
        if (v6 < v7 || v6 == v7 && *(a2 - 4) < *(a1 + 28))
        {
          v8 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 8);
          *(a2 - 8) = v8;
          v9 = *(a1 + 24);
          v10 = *(a1 + 16);
          if (v9 < v10 || v9 == v10 && *(a1 + 28) < *(a1 + 20))
          {
            v12 = *(a1 + 16);
            v11 = *(a1 + 24);
            *(a1 + 16) = v11;
            *(a1 + 24) = v12;
            v13 = *(a1 + 8);
            if (v13 > v11 || v13 == v11 && *(a1 + 12) > *(&v11 + 1))
            {
              v14 = *(a1 + 8);
              *(a1 + 8) = v11;
              *(a1 + 16) = v14;
              if (*a1 > v11 || *a1 == v11 && *(a1 + 4) > *(&v11 + 1))
              {
                v15 = *a1;
                *a1 = v11;
                *(a1 + 8) = v15;
              }
            }
          }
        }

        return 1;
    }

LABEL_20:
    v19 = a1 + 16;
    v20 = *(a1 + 8);
    v21 = *a1;
    if (v20 >= *a1 && (v20 != v21 || *(a1 + 12) >= *(a1 + 4)))
    {
      if (*v19 < v20 || *v19 == v20 && *(a1 + 20) < *(a1 + 12))
      {
        v28 = *(a1 + 8);
        v27 = *(a1 + 16);
        *(a1 + 8) = v27;
        *(a1 + 16) = v28;
        if (v21 > v27 || v21 == v27 && *(a1 + 4) > *(&v27 + 1))
        {
          v29 = *a1;
          *a1 = v27;
          *(a1 + 8) = v29;
        }
      }

      goto LABEL_46;
    }

    v22 = *v19;
    if (*v19 < v20 || v22 == v20 && *(a1 + 20) < *(a1 + 12))
    {
      v23 = *a1;
      *a1 = *(a1 + 16);
    }

    else
    {
      v32 = *a1;
      *a1 = vextq_s8(*a1, *a1, 8uLL);
      v23 = v32.i64[0];
      if (v22 >= v32.i32[0] && (v22 != v32.i32[0] || *(a1 + 20) >= *&v32.i32[1]))
      {
        goto LABEL_46;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    *(a1 + 16) = v23;
LABEL_46:
    v33 = a1 + 24;
    if (a1 + 24 == a2)
    {
      return 1;
    }

    v34 = 0;
    v35 = 0;
    while (1)
    {
      v36 = *v33;
      if (*v33 >= *v19)
      {
        if (v36 != *v19)
        {
          goto LABEL_61;
        }

        v37 = *(v33 + 4);
        if (v37 >= *(v19 + 4))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v37 = *(v33 + 4);
      }

      *v33 = *v19;
      v38 = v34;
      do
      {
        v39 = *(a1 + v38 + 8);
        if (v36 >= v39)
        {
          if (v36 != v39)
          {
            v19 = a1 + v38 + 16;
            goto LABEL_60;
          }

          if (*(a1 + v38 + 12) <= v37)
          {
            goto LABEL_60;
          }
        }

        v19 -= 8;
        *(a1 + v38 + 16) = *(a1 + v38 + 8);
        v38 -= 8;
      }

      while (v38 != -16);
      v19 = a1;
LABEL_60:
      *v19 = v36;
      *(v19 + 4) = v37;
      if (++v35 == 8)
      {
        return v33 + 8 == a2;
      }

LABEL_61:
      v19 = v33;
      v34 += 8;
      v33 += 8;
      if (v33 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = *(a2 - 8);
      if (v5 >= *a1 && (v5 != *a1 || *(a2 - 4) >= *(a1 + 4)))
      {
        return 1;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  return 1;
}

void md::MercatorRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v9 = a3;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v7 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v6, v9);
  v8 = v9;
  if (v7)
  {
    v10 = 0;
    v11 = [v9 pointCount] - 1;
    v12 = 0;
    md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustum(v7, a2, &v10, a4);
    v8 = v9;
  }
}

void sub_1B2DC6618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void md::MercatorRouteCollider::~MercatorRouteCollider(md::MercatorRouteCollider *this)
{
  v1 = *(this + 1);
  *this = &unk_1F2A00198;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }

  JUMPOUT(0x1B8C62190);
}

{
  v1 = *(this + 1);
  *this = &unk_1F2A00198;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }
}

uint64_t md::GeocentricRouteCollider::computeRayBoundsOfRouteSectionWithinFrustum(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int *a5, double *a6)
{
  v9 = *(a1 + 8);
  v11 = *a5;
  v10 = a5[1];
  v12 = a3;
  if ([v12 pointCount] && (v13 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v9, v12)) != 0)
  {
    v14 = v13;
    *a6 = xmmword_1B33B0520;
    v17[0] = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(v13, v11, 0);
    v17[1] = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(v14, v10, 1);
    md::RouteCollisionObject<md::GeocentricPointSource>::computeRayBoundsWithinFrustum(a2, a4, *(v14 + 72), v17, a6);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 48);
  if (*(a1 + 56) == v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 - (a3 == 1);
  while (1)
  {
    v8 = *(v3 + 8 * v5);
    if ([v8 startPointIndex] <= v7 && objc_msgSend(v8, "endPointIndex") > v7)
    {
      break;
    }

    v5 = ++v6;
    v3 = *(a1 + 48);
    if (v6 >= ((*(a1 + 56) - v3) >> 3))
    {
      return 0;
    }
  }

  v10 = v7 - [v8 startPointIndex];

  return v6 | (v10 << 16);
}