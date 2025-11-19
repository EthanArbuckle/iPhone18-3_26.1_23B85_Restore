void __swiftcall Corners.init(topLeft:topRight:bottomLeft:bottomRight:)(VisualIntelligenceCore::Corners *__return_ptr retstr, CGPoint topLeft, CGPoint topRight, CGPoint bottomLeft, CGPoint bottomRight)
{
  retstr->topLeft.x = topLeft.x;
  retstr->topLeft.y = topLeft.y;
  retstr->topRight.x = topRight.x;
  retstr->topRight.y = topRight.y;
  retstr->bottomLeft.x = bottomLeft.x;
  retstr->bottomLeft.y = bottomLeft.y;
  retstr->bottomRight.x = bottomRight.x;
  retstr->bottomRight.y = bottomRight.y;
}

__n128 Corners.allPointsClockwise.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F00);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_1D8B1ABA0;
  *(v1 + 32) = v2;
  v5 = v0[2];
  result = v0[3];
  *(v1 + 64) = result;
  *(v1 + 80) = v5;
  *(v1 + 48) = v3;
  return result;
}

float CVDetection.confidence.getter()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t CVDetection.modifyWithRotation(_:)@<X0>(double *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v123 = a1;
  v124 = a2;
  v116 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SyntheticDetectionResult();
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v122);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetaDetectionResult();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v111 - v21;
  v23 = *v123;
  v24 = *v3;
  switch(v24 >> 60)
  {
    case 1uLL:
      v79 = swift_projectBox();
      sub_1D8A6D488(v79, v11, type metadata accessor for GroundedParseDetectorResult);
      v80 = swift_allocBox();
      *&v131 = v23;
      GroundedParseDetectorResult.modifyWithRotation(_:)(&v131, v81);
      result = sub_1D8A6D3D4(v11, type metadata accessor for GroundedParseDetectorResult);
      v24 = v80 | 0x1000000000000000;
      break;
    case 2uLL:
      v51 = swift_projectBox();
      sub_1D8A6D488(v51, v19, type metadata accessor for MetaDetectionResult);
      v52 = swift_allocBox();
      *&v131 = v23;
      MetaDetectionResult.modifyWithRotation(_:)(&v131, v53);
      result = sub_1D8A6D3D4(v19, type metadata accessor for MetaDetectionResult);
      v24 = v52 | 0x2000000000000000;
      break;
    case 3uLL:
      v54 = swift_projectBox();
      sub_1D8A6D488(v54, v16, type metadata accessor for ObjectDetectorResult);
      v55 = v122;
      v56 = swift_allocBox();
      v58 = v57;
      v59 = sub_1D8B13240();
      (*(*(v59 - 8) + 16))(v58, v16, v59);
      v60 = v55[6];
      v61 = *&v16[v55[5]];
      v62 = *&v16[v60 + 16];
      v127 = *&v16[v60];
      v128 = v62;
      v63 = *&v16[v60 + 48];
      v129 = *&v16[v60 + 32];
      v130 = v63;
      v126 = v23;
      v125 = *&v16[v55[8]];
      sub_1D8A5A9D8(&v126, &v125, &v131);
      v64 = &v16[v55[7]];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = *&v16[v55[9]];

      result = sub_1D8A6D3D4(v16, type metadata accessor for ObjectDetectorResult);
      *(v58 + v55[5]) = v61;
      v68 = (v58 + v55[6]);
      v69 = v134;
      v70 = v133;
      v71 = v132;
      *v68 = v131;
      v68[1] = v71;
      v68[2] = v70;
      v68[3] = v69;
      v72 = (v58 + v55[7]);
      *v72 = v66;
      v72[1] = v65;
      *(v58 + v55[8]) = v23;
      *(v58 + v55[9]) = v67;
      v24 = v56 | 0x3000000000000000;
      break;
    case 4uLL:
      v44 = swift_projectBox();
      sub_1D8A6D488(v44, v14, type metadata accessor for ParseDetectorResult);
      v45 = swift_allocBox();
      *&v131 = v23;
      ParseDetectorResult.modifyWithRotation(_:)(&v131, v46);
      result = sub_1D8A6D3D4(v14, type metadata accessor for ParseDetectorResult);
      v24 = v45 | 0x4000000000000000;
      break;
    case 5uLL:
      v82 = swift_projectBox();
      v83 = v113;
      sub_1D8A6D488(v82, v113, type metadata accessor for TextDetectorResult);
      v29 = swift_allocBox();
      *&v131 = v23;
      TextDetectorResult.modifyWithRotation(_:)(&v131, v84);
      result = sub_1D8A6D3D4(v83, type metadata accessor for TextDetectorResult);
      v43 = 0x5000000000000000;
      goto LABEL_15;
    case 6uLL:
      v85 = swift_projectBox();
      v86 = v121;
      sub_1D8A6D488(v85, v121, type metadata accessor for StreamingBarcodeDetectorResult);
      v87 = swift_allocBox();
      *&v131 = v23;
      StreamingBarcodeDetectorResult.modifyWithRotation(_:)(&v131, v88);
      result = sub_1D8A6D3D4(v86, type metadata accessor for StreamingBarcodeDetectorResult);
      v24 = v87 | 0x6000000000000000;
      break;
    case 7uLL:
      v73 = swift_projectBox();
      v74 = v121;
      sub_1D8A6D488(v73, v121, type metadata accessor for StreamingBarcodeDetectorResult);
      v75 = swift_allocBox();
      *&v131 = v23;
      StreamingBarcodeDetectorResult.modifyWithRotation(_:)(&v131, v76);
      result = sub_1D8A6D3D4(v74, type metadata accessor for StreamingBarcodeDetectorResult);
      v24 = v75 | 0x7000000000000000;
      break;
    case 8uLL:
      v89 = swift_projectBox();
      sub_1D8A6D488(v89, v16, type metadata accessor for ObjectDetectorResult);
      v90 = v122;
      v91 = swift_allocBox();
      v93 = v92;
      v94 = sub_1D8B13240();
      (*(*(v94 - 8) + 16))(v93, v16, v94);
      v95 = v90[6];
      v96 = *&v16[v90[5]];
      v97 = *&v16[v95 + 16];
      v127 = *&v16[v95];
      v128 = v97;
      v98 = *&v16[v95 + 48];
      v129 = *&v16[v95 + 32];
      v130 = v98;
      v126 = v23;
      v125 = *&v16[v90[8]];
      sub_1D8A5A9D8(&v126, &v125, &v131);
      v99 = &v16[v90[7]];
      v101 = *v99;
      v100 = *(v99 + 1);
      v102 = *&v16[v90[9]];

      result = sub_1D8A6D3D4(v16, type metadata accessor for ObjectDetectorResult);
      *(v93 + v90[5]) = v96;
      v103 = (v93 + v90[6]);
      v104 = v134;
      v105 = v133;
      v106 = v132;
      *v103 = v131;
      v103[1] = v106;
      v103[2] = v105;
      v103[3] = v104;
      v107 = (v93 + v90[7]);
      *v107 = v101;
      v107[1] = v100;
      *(v93 + v90[8]) = v23;
      *(v93 + v90[9]) = v102;
      v24 = v91 | 0x8000000000000000;
      break;
    case 9uLL:
    case 0xAuLL:

      break;
    case 0xBuLL:
      v26 = swift_projectBox();
      v27 = v118;
      sub_1D8A6D488(v26, v118, type metadata accessor for SyntheticDetectionResult);
      v28 = v119;
      v29 = swift_allocBox();
      v31 = v30;
      v32 = (v27 + v28[5]);
      v33 = v32[1];
      v127 = *v32;
      v128 = v33;
      v34 = v32[3];
      v129 = v32[2];
      v130 = v34;
      v126 = v23;
      v125 = *(v27 + v28[7]);
      sub_1D8A5A9D8(&v126, &v125, &v131);
      v35 = sub_1D8B13240();
      (*(*(v35 - 8) + 16))(v31, v27, v35);
      v36 = *(v27 + v28[6]);
      v37 = *(v27 + v28[8]);
      v38 = *(v27 + v28[9]);
      sub_1D8A699B4(v38);
      result = sub_1D8A6D3D4(v27, type metadata accessor for SyntheticDetectionResult);
      v39 = (v31 + v28[5]);
      v40 = v134;
      v41 = v133;
      v42 = v132;
      *v39 = v131;
      v39[1] = v42;
      v39[2] = v41;
      v39[3] = v40;
      *(v31 + v28[6]) = v36;
      *(v31 + v28[7]) = v23;
      *(v31 + v28[8]) = v37;
      *(v31 + v28[9]) = v38;
      v43 = 0xB000000000000000;
      goto LABEL_15;
    case 0xCuLL:
      v47 = swift_projectBox();
      v48 = v115;
      sub_1D8A6D488(v47, v115, type metadata accessor for GroundedParseEmbeddingsResult);
      v49 = swift_allocBox();
      *&v131 = v23;
      GroundedParseEmbeddingsResult.modifyWithRotation(_:)(&v131, v50);
      result = sub_1D8A6D3D4(v48, type metadata accessor for GroundedParseEmbeddingsResult);
      v24 = v49 | 0xC000000000000000;
      break;
    case 0xDuLL:
      v108 = swift_projectBox();
      v109 = v117;
      sub_1D8A6D488(v108, v117, type metadata accessor for GroundedParseClassificationsResult);
      v29 = swift_allocBox();
      *&v131 = v23;
      GroundedParseClassificationsResult.modifyWithRotation(_:)(&v131, v110);
      result = sub_1D8A6D3D4(v109, type metadata accessor for GroundedParseClassificationsResult);
      v43 = 0xD000000000000000;
LABEL_15:
      v24 = v29 | v43;
      break;
    default:
      v77 = swift_projectBox();
      sub_1D894733C(v77, v22);
      v24 = swift_allocBox();
      sub_1D8A5CDD4(v78, v23);
      result = sub_1D8949CB8(v22);
      break;
  }

  *v124 = v24;
  return result;
}

uint64_t sub_1D8A5CDD4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v12);
  v45 = v14;
  v15 = *(v14 + 16);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15();
  v16 = v6[10];
  v17 = *(v2 + v6[9]);
  v18 = *(v2 + v16 + 16);
  v51 = *(v2 + v16);
  v52 = v18;
  v19 = *(v2 + v16 + 48);
  v53 = *(v2 + v16 + 32);
  v54 = v19;
  v50 = a2;
  v49 = *(v2 + v6[13]);
  sub_1D8A5A9D8(&v50, &v49, v55);
  v20 = *(v2 + v6[11]);
  v21 = *(v2 + v6[12]);
  v22 = *(v3 + v6[14]);
  v23 = *(v3 + v6[15]);
  v24 = *(v23 + 16);
  if (v24)
  {
    v41 = v12;
    v42 = v6;
    v43 = a1;
    *&v51 = MEMORY[0x1E69E7CC0];
    v39 = v20;

    v40 = v21;

    result = sub_1D87F49CC(0, v24, 0);
    v26 = 0;
    v27 = v51;
    v47 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v46 = v23 + v47;
    while (v26 < *(v23 + 16))
    {
      v28 = v23;
      v29 = v7;
      v30 = *(v7 + 72);
      v31 = v48;
      v32 = sub_1D894733C(v46 + v30 * v26, v48);
      sub_1D8A5CDD4(v32, a2);
      sub_1D8949CB8(v31);
      *&v51 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D87F49CC(v33 > 1, v34 + 1, 1);
        v27 = v51;
      }

      ++v26;
      *(v27 + 16) = v34 + 1;
      result = sub_1D87C14D4(v11, v27 + v47 + v34 * v30);
      v7 = v29;
      v23 = v28;
      if (v24 == v26)
      {
        a1 = v43;
        v6 = v42;
        v12 = v41;
        v21 = v40;
        v35 = v39;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = *(v3 + v6[11]);

    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    result = (*(v45 + 32))(a1, v44, v12);
    *(a1 + v6[9]) = v17;
    v36 = (a1 + v6[10]);
    v37 = v55[1];
    *v36 = v55[0];
    v36[1] = v37;
    v38 = v55[3];
    v36[2] = v55[2];
    v36[3] = v38;
    *(a1 + v6[11]) = v35;
    *(a1 + v6[12]) = v21;
    *(a1 + v6[13]) = a2;
    *(a1 + v6[14]) = v22;
    *(a1 + v6[15]) = v27;
  }

  return result;
}

void sub_1D8A5D1D8(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Corners.bounds.getter();
  v11 = v10;
  v13 = v12;
  rect_16 = v12;
  rect_24 = v14;
  v34 = v15;
  v16 = v10 - a2;
  rect = v10;
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v17 = v16 / CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  rect_8 = a5;
  v18 = (v13 - a3) / CGRectGetHeight(v37);
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v34;
  v38.size.height = rect_24;
  Width = CGRectGetWidth(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  v19 = Width / CGRectGetWidth(v39);
  v40.origin.x = rect;
  v40.origin.y = rect_16;
  v40.size.width = v34;
  v40.size.height = rect_24;
  Height = CGRectGetHeight(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = rect_8;
  v21 = Height / CGRectGetHeight(v41);
  v42.origin.x = v17;
  v42.origin.y = v18;
  v42.size.width = v19;
  v42.size.height = v21;
  MinX = CGRectGetMinX(v42);
  v43.origin.x = v17;
  v43.origin.y = v18;
  v43.size.width = v19;
  v43.size.height = v21;
  rect_24a = CGRectGetMinY(v43);
  v44.origin.x = v17;
  v44.origin.y = v18;
  v44.size.width = v19;
  v44.size.height = v21;
  rect_16a = CGRectGetMaxX(v44);
  v45.origin.x = v17;
  v45.origin.y = v18;
  v45.size.width = v19;
  v45.size.height = v21;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = v17;
  v46.origin.y = v18;
  v46.size.width = v19;
  v46.size.height = v21;
  v23 = CGRectGetMinX(v46);
  v47.origin.x = v17;
  v47.origin.y = v18;
  v47.size.width = v19;
  v47.size.height = v21;
  MaxY = CGRectGetMaxY(v47);
  v48.origin.x = v17;
  v48.origin.y = v18;
  v48.size.width = v19;
  v48.size.height = v21;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v17;
  v49.origin.y = v18;
  v49.size.width = v19;
  v49.size.height = v21;
  v26 = CGRectGetMaxY(v49);
  *a1 = MinX;
  a1[1] = rect_24a;
  a1[2] = rect_16a;
  a1[3] = MinY;
  a1[4] = v23;
  a1[5] = MaxY;
  a1[6] = MaxX;
  a1[7] = v26;
}

uint64_t CVDetection.id.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 48))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CVDetection.DetectionType.requiredDRQAnnotationTypes.getter()
{
  v1 = *v0;
  v2 = v1 >= 0xD;
  v4 = v1 == 13;
  v3 = (1 << v1) & 0x3002;
  v4 = !v4 && v2 || v3 == 0;
  if (v4)
  {
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    return sub_1D8A4F030(&unk_1F5428B18);
  }
}

uint64_t Corners.description.getter()
{
  v35 = sub_1D8B12F00();
  v1 = *(v35 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC0);
  v36 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v12 = *v0;
  v11 = v0[1];
  v14 = v0[2];
  v13 = v0[3];
  v15 = v0[5];
  v16 = v0[7];
  sub_1D8B13290();
  sub_1D88914A8();
  sub_1D8B12EC0();
  v38 = xmmword_1D8B254D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC8);
  sub_1D881CF20(&qword_1ECA65AD0, &qword_1ECA65AC8);
  sub_1D8B12EF0();
  MEMORY[0x1DA71C3B0](v3, v5);
  (*(v1 + 8))(v3, v35);
  v35 = *(v36 + 8);
  v36 += 8;
  v35(v8, v5);
  v37 = v12;
  sub_1D881CF20(&qword_1ECA65AD8, &qword_1ECA65AC0);
  sub_1D8B156F0();
  v17 = *(&v38 + 1);
  v25 = v38;
  v37 = v11;
  sub_1D8B156F0();
  v18 = *(&v38 + 1);
  v26 = v38;
  v37 = v14;
  sub_1D8B156F0();
  v19 = *(&v38 + 1);
  v28 = v38;
  v37 = v13;
  sub_1D8B156F0();
  v20 = *(&v38 + 1);
  v27 = v38;
  v37 = v15;
  sub_1D8B156F0();
  v30 = *(&v38 + 1);
  v32 = v38;
  v37 = v15;
  sub_1D8B156F0();
  v29 = *(&v38 + 1);
  v31 = v38;
  v37 = v16;
  sub_1D8B156F0();
  v33 = *(&v38 + 1);
  v34 = v38;
  v37 = v16;
  sub_1D8B156F0();
  v21 = v38;
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x28203A6C743CLL, 0xE600000000000000);
  MEMORY[0x1DA71EFA0](v25, v17);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v26, v18);

  MEMORY[0x1DA71EFA0](0x28203A7274203B29, 0xE800000000000000);
  MEMORY[0x1DA71EFA0](v28, v19);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v27, v20);

  MEMORY[0x1DA71EFA0](0x28203A6C62203B29, 0xE800000000000000);
  MEMORY[0x1DA71EFA0](v32, v30);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v31, v29);

  MEMORY[0x1DA71EFA0](0x28203A7262203B29, 0xE800000000000000);
  MEMORY[0x1DA71EFA0](v34, v33);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v21, *(&v21 + 1));

  MEMORY[0x1DA71EFA0](15913, 0xE200000000000000);
  v22 = v38;
  v35(v10, v5);
  return v22;
}

double Corners.center.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D87F4D64(0, 4, 0);
  v10 = v37;
  v12 = *(v37 + 16);
  v11 = *(v37 + 24);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    sub_1D87F4D64((v11 > 1), v12 + 1, 1);
    v10 = v37;
    v11 = *(v37 + 24);
    v13 = v11 >> 1;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v12 + 32) = v2;
  v15 = v12 + 2;
  if (v13 < v15)
  {
    sub_1D87F4D64((v11 > 1), v15, 1);
    v10 = v37;
  }

  *(v10 + 16) = v15;
  *(v10 + 8 * v14 + 32) = v4;
  v17 = *(v10 + 16);
  v16 = *(v10 + 24);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    sub_1D87F4D64((v16 > 1), v17 + 1, 1);
  }

  v19 = v37;
  *(v37 + 16) = v18;
  *(v37 + 8 * v17 + 32) = v8;
  v20 = *(v37 + 24);
  if ((v17 + 2) > (v20 >> 1))
  {
    sub_1D87F4D64((v20 > 1), v17 + 2, 1);
    v19 = v37;
  }

  *(v19 + 16) = v17 + 2;
  *(v19 + 8 * v18 + 32) = v5;
  v21 = 0.0;
  v22 = 4;
  do
  {
    v21 = v21 + (*(v19 + 8 * v22) - v21) / (v22 - 3);
    ++v22;
  }

  while (-2 - v17 + v22 != 4);

  v38 = v9;
  sub_1D87F4D64(0, 4, 0);
  v23 = v9;
  v25 = *(v9 + 16);
  v24 = *(v9 + 24);
  v26 = v24 >> 1;
  v27 = v25 + 1;
  if (v24 >> 1 <= v25)
  {
    sub_1D87F4D64((v24 > 1), v25 + 1, 1);
    v23 = v9;
    v24 = *(v9 + 24);
    v26 = v24 >> 1;
  }

  *(v23 + 16) = v27;
  *(v23 + 8 * v25 + 32) = v1;
  v28 = v25 + 2;
  if (v26 < v28)
  {
    sub_1D87F4D64((v24 > 1), v28, 1);
    v23 = v9;
  }

  *(v23 + 16) = v28;
  *(v23 + 8 * v27 + 32) = v3;
  v30 = *(v23 + 16);
  v29 = *(v23 + 24);
  v31 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    sub_1D87F4D64((v29 > 1), v30 + 1, 1);
  }

  v32 = v38;
  *(v38 + 16) = v31;
  *(v38 + 8 * v30 + 32) = v7;
  v33 = *(v38 + 24);
  if ((v30 + 2) > (v33 >> 1))
  {
    sub_1D87F4D64((v33 > 1), v30 + 2, 1);
    v32 = v38;
  }

  *(v32 + 16) = v30 + 2;
  *(v32 + 8 * v31 + 32) = v6;
  v34 = 0.0;
  v35 = 4;
  do
  {
    v34 = v34 + (*(v32 + 8 * v35) - v34) / (v35 - 3);
    ++v35;
  }

  while (-2 - v30 + v35 != 4);

  return v21;
}

__n128 Corners.clockwiseLoop.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F00);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_1D8B1B910;
  *(v1 + 32) = v2;
  v5 = v0[2];
  result = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = result;
  *(v1 + 80) = v5;
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1D8A5DE54()
{
  v1 = 0x7466654C706F74;
  v2 = 0x654C6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x69526D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8A5DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A6CB18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A5DF04(uint64_t a1)
{
  v2 = sub_1D8A699CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5DF40(uint64_t a1)
{
  v2 = sub_1D8A699CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Corners.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A699CC();
  sub_1D8B16DD0();
  v19 = v8;
  v20 = v9;
  v18 = 0;
  type metadata accessor for CGPoint(0);
  sub_1D8A6D324(&qword_1ECA67EB0, type metadata accessor for CGPoint);
  sub_1D8B16AE0();
  if (!v2)
  {
    v19 = v10;
    v20 = v11;
    v18 = 1;
    sub_1D8B16AE0();
    v19 = v12;
    v20 = v13;
    v18 = 2;
    sub_1D8B16AE0();
    v19 = v14;
    v20 = v15;
    v18 = 3;
    sub_1D8B16AE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Corners.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1D8818B80(*v0, v0[1]);
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);

  return sub_1D8818B80(v5, v6);
}

uint64_t Corners.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1D8B16D20();
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  return sub_1D8B16D80();
}

uint64_t Corners.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A699CC();
  sub_1D8B16DB0();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14 = 0;
    sub_1D8A6D324(&qword_1ECA67EC0, type metadata accessor for CGPoint);
    sub_1D8B16A10();
    v9 = v13;
    v14 = 1;
    sub_1D8B16A10();
    v10 = v13;
    v14 = 2;
    sub_1D8B16A10();
    v12 = v13;
    v14 = 3;
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8A5E5AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1D8B16D20();
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A5E654()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1D8818B80(*v0, v0[1]);
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);

  return sub_1D8818B80(v5, v6);
}

uint64_t sub_1D8A5E6DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1D8B16D20();
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  return sub_1D8B16D80();
}

uint64_t static CVSafeAreaPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D8A5E808(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t CVDetection.DetectionType.maxSecondsDecay.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 <= 8u)
    {
      if (v1 - 6 >= 2)
      {
LABEL_8:
        result = sub_1D8B168C0();
        __break(1u);
      }
    }

    else if (v1 - 9 >= 2 && v1 - 12 >= 2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8A5E980()
{
  switch(*v0)
  {
    case 1:
      sub_1D8A5EAB8();
    case 2:
      sub_1D8A5EB50();
    case 3:
      sub_1D8A5EBE8();
    case 4:
      sub_1D8A5EC34();
    case 5:
      sub_1D8A5ED18();
    case 6:
      sub_1D8A5EC80();
    case 7:
      sub_1D8A5EA20();
    case 8:
      sub_1D8A5ECCC();
    case 9:
      sub_1D8A5ED64();
    case 0xA:
      sub_1D8A5EB9C();
    case 0xB:
      sub_1D8A5EA6C();
    case 0xC:
      sub_1D8A5EDB0();
    case 0xD:
      sub_1D8A5EDFC();
    default:
      sub_1D8A5EB04();
  }
}

uint64_t sub_1D8A5EE48(uint64_t a1)
{
  v2 = sub_1D8A69C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EE84(uint64_t a1)
{
  v2 = sub_1D8A69C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5EEC0(uint64_t a1)
{
  v2 = sub_1D8A69A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EEFC(uint64_t a1)
{
  v2 = sub_1D8A69A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5EF38(uint64_t a1)
{
  v2 = sub_1D8A69A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EF74(uint64_t a1)
{
  v2 = sub_1D8A69A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5EFB0(uint64_t a1)
{
  v2 = sub_1D8A69E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EFEC(uint64_t a1)
{
  v2 = sub_1D8A69E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F028(uint64_t a1)
{
  v2 = sub_1D8A69AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F064(uint64_t a1)
{
  v2 = sub_1D8A69AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F0A0(uint64_t a1)
{
  v2 = sub_1D8A69EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F0DC(uint64_t a1)
{
  v2 = sub_1D8A69EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F118(uint64_t a1)
{
  v2 = sub_1D8A69E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F154(uint64_t a1)
{
  v2 = sub_1D8A69E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F190(uint64_t a1)
{
  v2 = sub_1D8A69B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F1CC(uint64_t a1)
{
  v2 = sub_1D8A69B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F208(uint64_t a1)
{
  v2 = sub_1D8A69DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F244(uint64_t a1)
{
  v2 = sub_1D8A69DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F280(uint64_t a1)
{
  v2 = sub_1D8A69D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F2BC(uint64_t a1)
{
  v2 = sub_1D8A69D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F2F8(uint64_t a1)
{
  v2 = sub_1D8A69CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F334(uint64_t a1)
{
  v2 = sub_1D8A69CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F370(uint64_t a1)
{
  v2 = sub_1D8A69C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F3AC(uint64_t a1)
{
  v2 = sub_1D8A69C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F3E8(uint64_t a1)
{
  v2 = sub_1D8A69B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F424(uint64_t a1)
{
  v2 = sub_1D8A69B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F460(uint64_t a1)
{
  v2 = sub_1D8A69D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F49C(uint64_t a1)
{
  v2 = sub_1D8A69D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F4D8(uint64_t a1)
{
  v2 = sub_1D8A69BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F514(uint64_t a1)
{
  v2 = sub_1D8A69BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVDetection.DetectionType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EC8);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67ED0);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67ED8);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EE0);
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EE8);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EF0);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v44 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EF8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v44 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F00);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v44 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F08);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v44 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F10);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F18);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v44 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F20);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F28);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F30);
  v44 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F38);
  v27 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v29 = &v44 - v28;
  v30 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A69A20();
  v83 = v29;
  sub_1D8B16DD0();
  v31 = (v27 + 8);
  switch(v30)
  {
    case 1:
      v86 = 1;
      sub_1D8A69E64();
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v45 + 8))(v23, v46);
      return (*v31)(v32, v33);
    case 2:
      v87 = 2;
      sub_1D8A69E10();
      v38 = v47;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v48 + 8))(v38, v49);
      return (*v31)(v32, v33);
    case 3:
      v88 = 3;
      sub_1D8A69DBC();
      v39 = v50;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v51 + 8))(v39, v52);
      return (*v31)(v32, v33);
    case 4:
      v89 = 4;
      sub_1D8A69D68();
      v37 = v53;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v54 + 8))(v37, v55);
      return (*v31)(v32, v33);
    case 5:
      v90 = 5;
      sub_1D8A69D14();
      v41 = v56;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v57 + 8))(v41, v58);
      return (*v31)(v32, v33);
    case 6:
      v91 = 6;
      sub_1D8A69CC0();
      v42 = v59;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v60 + 8))(v42, v61);
      return (*v31)(v32, v33);
    case 7:
      v92 = 7;
      sub_1D8A69C6C();
      v40 = v62;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v63 + 8))(v40, v64);
      return (*v31)(v32, v33);
    case 8:
      v93 = 8;
      sub_1D8A69C18();
      v34 = v65;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v66;
      v35 = v67;
      goto LABEL_16;
    case 9:
      v94 = 9;
      sub_1D8A69BC4();
      v34 = v68;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v69;
      v35 = v70;
      goto LABEL_16;
    case 10:
      v95 = 10;
      sub_1D8A69B70();
      v34 = v71;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v72;
      v35 = v73;
      goto LABEL_16;
    case 11:
      v96 = 11;
      sub_1D8A69B1C();
      v34 = v74;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v75;
      v35 = v76;
      goto LABEL_16;
    case 12:
      v97 = 12;
      sub_1D8A69AC8();
      v34 = v77;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v78;
      v35 = v79;
      goto LABEL_16;
    case 13:
      v98 = 13;
      sub_1D8A69A74();
      v34 = v80;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v81;
      v35 = v82;
LABEL_16:
      (*(v36 + 8))(v34, v35);
      break;
    default:
      v85 = 0;
      sub_1D8A69EB8();
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v44 + 8))(v26, v24);
      break;
  }

  return (*v31)(v32, v33);
}

uint64_t CVDetection.DetectionType.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t CVDetection.DetectionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v111 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FB8);
  v97 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = v68 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FC0);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v105 = v68 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FC8);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v104 = v68 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FD0);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v103 = v68 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FD8);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v102 = v68 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FE0);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v101 = v68 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FE8);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v100 = v68 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FF0);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v109 = v68 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FF8);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v108 = v68 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68000);
  v80 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v99 = v68 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68008);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v98 = v68 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68010);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v107 = v68 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68018);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v16 = v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68020);
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68028);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v68 - v22;
  v24 = a1[3];
  v113[0] = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8A69A20();
  v25 = v112;
  sub_1D8B16DB0();
  if (v25)
  {
LABEL_8:
    v43 = v113[0];
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v69 = v19;
  v68[1] = v17;
  v70 = v16;
  v26 = v107;
  v27 = v108;
  v28 = v109;
  v71 = 0;
  v30 = v110;
  v29 = v111;
  v112 = v21;
  v31 = sub_1D8B16A20();
  v32 = (2 * *(v31 + 16)) | 1;
  v113[1] = v31;
  v114 = v31 + 32;
  v115 = 0;
  v116 = v32;
  v33 = sub_1D881F7C8();
  if (v115 != v116 >> 1)
  {
LABEL_6:
    v40 = sub_1D8B16770();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v42 = &type metadata for CVDetection.DetectionType;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
LABEL_7:
    (*(v112 + 8))(v23, v20);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v34 = v33;
  switch(v33)
  {
    case 0:
      v119 = 0;
      sub_1D8A69EB8();
      v35 = v69;
      v36 = v71;
      sub_1D8B16950();
      if (v36)
      {
        goto LABEL_7;
      }

      v37 = *(v72 + 8);
      v38 = v35;
      v39 = &v100;
      goto LABEL_36;
    case 1:
      v119 = 1;
      sub_1D8A69E64();
      v58 = v70;
      v59 = v71;
      sub_1D8B16950();
      if (v59)
      {
        goto LABEL_7;
      }

      v37 = *(v73 + 8);
      v38 = v58;
      v39 = &v106;
      goto LABEL_36;
    case 2:
      v119 = 2;
      sub_1D8A69E10();
      v53 = v71;
      sub_1D8B16950();
      if (v53)
      {
        goto LABEL_7;
      }

      v37 = *(v76 + 8);
      v38 = v26;
      v39 = &v109;
      goto LABEL_36;
    case 3:
      v119 = 3;
      sub_1D8A69DBC();
      v54 = v98;
      v55 = v71;
      sub_1D8B16950();
      if (v55)
      {
        goto LABEL_7;
      }

      v37 = *(v78 + 8);
      v38 = v54;
      v39 = &v111;
      goto LABEL_36;
    case 4:
      v119 = 4;
      sub_1D8A69D68();
      v47 = v99;
      v48 = v71;
      sub_1D8B16950();
      if (v48)
      {
        goto LABEL_7;
      }

      v37 = *(v80 + 8);
      v38 = v47;
      v39 = &v107;
      goto LABEL_36;
    case 5:
      v119 = 5;
      sub_1D8A69D14();
      v60 = v71;
      sub_1D8B16950();
      if (v60)
      {
        goto LABEL_7;
      }

      v37 = *(v82 + 8);
      v38 = v27;
      v39 = v113;
      goto LABEL_36;
    case 6:
      v119 = 6;
      sub_1D8A69CC0();
      v63 = v71;
      sub_1D8B16950();
      if (v63)
      {
        goto LABEL_7;
      }

      v37 = *(v84 + 8);
      v38 = v28;
      v39 = &v114;
      goto LABEL_36;
    case 7:
      v119 = 7;
      sub_1D8A69C6C();
      v56 = v100;
      v57 = v71;
      sub_1D8B16950();
      if (v57)
      {
        goto LABEL_7;
      }

      v37 = *(v85 + 8);
      v38 = v56;
      v39 = &v117;
      goto LABEL_36;
    case 8:
      v119 = 8;
      sub_1D8A69C18();
      v66 = v101;
      v67 = v71;
      sub_1D8B16950();
      if (v67)
      {
        goto LABEL_7;
      }

      v37 = *(v87 + 8);
      v38 = v66;
      v39 = &v118;
      goto LABEL_36;
    case 9:
      v119 = 9;
      sub_1D8A69BC4();
      v51 = v102;
      v52 = v71;
      sub_1D8B16950();
      if (v52)
      {
        goto LABEL_7;
      }

      v37 = *(v89 + 8);
      v38 = v51;
      v39 = &v120;
      goto LABEL_36;
    case 10:
      v119 = 10;
      sub_1D8A69B70();
      v64 = v103;
      v65 = v71;
      sub_1D8B16950();
      if (v65)
      {
        goto LABEL_7;
      }

      v37 = *(v91 + 8);
      v38 = v64;
      v39 = &v121;
      goto LABEL_36;
    case 11:
      v119 = 11;
      sub_1D8A69B1C();
      v45 = v104;
      v46 = v71;
      sub_1D8B16950();
      if (v46)
      {
        goto LABEL_7;
      }

      v37 = *(v93 + 8);
      v38 = v45;
      v39 = &v122;
      goto LABEL_36;
    case 12:
      v119 = 12;
      sub_1D8A69AC8();
      v49 = v105;
      v50 = v71;
      sub_1D8B16950();
      if (v50)
      {
        goto LABEL_7;
      }

      v37 = *(v95 + 8);
      v38 = v49;
      v39 = &v123;
LABEL_36:
      v37(v38, *(v39 - 32));
      break;
    case 13:
      v119 = 13;
      sub_1D8A69A74();
      v61 = v106;
      v62 = v71;
      sub_1D8B16950();
      if (v62)
      {
        goto LABEL_7;
      }

      (*(v97 + 8))(v61, v30);
      break;
    default:
      goto LABEL_6;
  }

  (*(v112 + 8))(v23, v20);
  swift_unknownObjectRelease();
  v43 = v113[0];
  *v29 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_1D8A61210(char a1)
{
  result = 0x6E69646E756F7267;
  switch(a1)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 10:
      result = 0x646F6D69746C756DLL;
      break;
    case 11:
      result = 0x69746568746E7973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8A613A8(uint64_t a1)
{
  v2 = sub_1D8A6A158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A613E4(uint64_t a1)
{
  v2 = sub_1D8A6A158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61420(uint64_t a1)
{
  v2 = sub_1D8A69F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6145C(uint64_t a1)
{
  v2 = sub_1D8A69F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61498(uint64_t a1)
{
  v2 = sub_1D8A69F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A614D4(uint64_t a1)
{
  v2 = sub_1D8A69F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61510(uint64_t a1)
{
  v2 = sub_1D8A6A350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6154C(uint64_t a1)
{
  v2 = sub_1D8A6A350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61588(uint64_t a1)
{
  v2 = sub_1D8A69FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A615C4(uint64_t a1)
{
  v2 = sub_1D8A69FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61600(uint64_t a1)
{
  v2 = sub_1D8A6A3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6163C(uint64_t a1)
{
  v2 = sub_1D8A6A3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61678(uint64_t a1)
{
  v2 = sub_1D8A6A2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A616B4(uint64_t a1)
{
  v2 = sub_1D8A6A2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A616F0(uint64_t a1)
{
  v2 = sub_1D8A6A05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6172C(uint64_t a1)
{
  v2 = sub_1D8A6A05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61768(uint64_t a1)
{
  v2 = sub_1D8A6A2A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A617A4(uint64_t a1)
{
  v2 = sub_1D8A6A2A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A617E0(uint64_t a1)
{
  v2 = sub_1D8A6A254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6181C(uint64_t a1)
{
  v2 = sub_1D8A6A254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61858(uint64_t a1)
{
  v2 = sub_1D8A6A1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A61894(uint64_t a1)
{
  v2 = sub_1D8A6A1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A618D0(uint64_t a1)
{
  v2 = sub_1D8A6A104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6190C(uint64_t a1)
{
  v2 = sub_1D8A6A104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61948(uint64_t a1)
{
  v2 = sub_1D8A6A008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A61984(uint64_t a1)
{
  v2 = sub_1D8A6A008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A619C0(uint64_t a1)
{
  v2 = sub_1D8A6A200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A619FC(uint64_t a1)
{
  v2 = sub_1D8A6A200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61A38(uint64_t a1)
{
  v2 = sub_1D8A6A0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A61A74(uint64_t a1)
{
  v2 = sub_1D8A6A0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVDetection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68030);
  v148 = *(v3 - 8);
  v149 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v147 = &v89 - v4;
  v145 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68038);
  v143 = *(v6 - 8);
  v144 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v89 - v7;
  v140 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68040);
  v138 = *(v9 - 8);
  v139 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v89 - v10;
  v135 = type metadata accessor for SyntheticDetectionResult();
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68048);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v89 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68050);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v89 - v13;
  v152 = type metadata accessor for AFMResult(0);
  v14 = MEMORY[0x1EEE9AC00](v152);
  v128 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v89 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68058);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v89 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68060);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v89 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68068);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v89 - v19;
  v151 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v20 = MEMORY[0x1EEE9AC00](v151);
  v117 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v89 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68070);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v89 - v23;
  v111 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68078);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v89 - v25;
  v106 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68080);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v89 - v27;
  v150 = type metadata accessor for ObjectDetectorResult(0);
  v28 = MEMORY[0x1EEE9AC00](v150);
  v102 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v89 - v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68088);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v89 - v31;
  v96 = type metadata accessor for MetaDetectionResult();
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68090);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v89 - v33;
  v91 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68098);
  v90 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v89 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v89 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA680A0);
  v154 = *(v41 - 8);
  v155 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v89 - v42;
  v44 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A69F0C();
  v153 = v43;
  sub_1D8B16DD0();
  switch(v44 >> 60)
  {
    case 1uLL:
      v77 = swift_projectBox();
      v50 = v92;
      sub_1D8A6D488(v77, v92, type metadata accessor for GroundedParseDetectorResult);
      v156[3] = 1;
      sub_1D8A6A350();
      v78 = v93;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA68138, type metadata accessor for GroundedParseDetectorResult);
      v79 = v95;
      sub_1D8B16AE0();
      (*(v94 + 8))(v78, v79);
      v55 = type metadata accessor for GroundedParseDetectorResult;
      goto LABEL_19;
    case 2uLL:
      v66 = swift_projectBox();
      v50 = v97;
      sub_1D8A6D488(v66, v97, type metadata accessor for MetaDetectionResult);
      v156[4] = 2;
      sub_1D8A6A2FC();
      v67 = v98;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1EE0E5D08, type metadata accessor for MetaDetectionResult);
      v68 = v100;
      sub_1D8B16AE0();
      (*(v99 + 8))(v67, v68);
      v55 = type metadata accessor for MetaDetectionResult;
      goto LABEL_19;
    case 3uLL:
      v69 = swift_projectBox();
      v50 = v101;
      sub_1D8A6D488(v69, v101, type metadata accessor for ObjectDetectorResult);
      v156[5] = 3;
      sub_1D8A6A2A8();
      v70 = v103;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680F0, type metadata accessor for ObjectDetectorResult);
      v71 = v105;
      sub_1D8B16AE0();
      v72 = &v136;
      goto LABEL_18;
    case 4uLL:
      v56 = swift_projectBox();
      v50 = v107;
      sub_1D8A6D488(v56, v107, type metadata accessor for ParseDetectorResult);
      v156[6] = 4;
      sub_1D8A6A254();
      v57 = v108;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA68118, type metadata accessor for ParseDetectorResult);
      v58 = v110;
      sub_1D8B16AE0();
      (*(v109 + 8))(v57, v58);
      v55 = type metadata accessor for ParseDetectorResult;
      goto LABEL_19;
    case 5uLL:
      v80 = swift_projectBox();
      v50 = v112;
      sub_1D8A6D488(v80, v112, type metadata accessor for TextDetectorResult);
      v156[7] = 5;
      sub_1D8A6A200();
      v81 = v113;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&unk_1EE0E5FF8, type metadata accessor for TextDetectorResult);
      v82 = v115;
      sub_1D8B16AE0();
      (*(v114 + 8))(v81, v82);
      v55 = type metadata accessor for TextDetectorResult;
      goto LABEL_19;
    case 6uLL:
      v86 = swift_projectBox();
      v50 = v116;
      sub_1D8A6D488(v86, v116, type metadata accessor for StreamingBarcodeDetectorResult);
      v156[24] = 6;
      sub_1D8A6A1AC();
      v74 = v118;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA67548, type metadata accessor for StreamingBarcodeDetectorResult);
      v75 = v120;
      sub_1D8B16AE0();
      v76 = &v151;
      goto LABEL_14;
    case 7uLL:
      v73 = swift_projectBox();
      v50 = v117;
      sub_1D8A6D488(v73, v117, type metadata accessor for StreamingBarcodeDetectorResult);
      v156[25] = 7;
      sub_1D8A6A158();
      v74 = v121;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA67548, type metadata accessor for StreamingBarcodeDetectorResult);
      v75 = v123;
      sub_1D8B16AE0();
      v76 = &v154;
LABEL_14:
      (*(*(v76 - 32) + 8))(v74, v75);
      v55 = type metadata accessor for StreamingBarcodeDetectorResult;
      goto LABEL_19;
    case 8uLL:
      v88 = swift_projectBox();
      v50 = v102;
      sub_1D8A6D488(v88, v102, type metadata accessor for ObjectDetectorResult);
      v156[26] = 8;
      sub_1D8A6A104();
      v70 = v124;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680F0, type metadata accessor for ObjectDetectorResult);
      v71 = v126;
      sub_1D8B16AE0();
      v72 = v156;
LABEL_18:
      (*(*(v72 - 32) + 8))(v70, v71);
      v55 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_19;
    case 9uLL:
      v62 = swift_projectBox();
      v50 = v127;
      sub_1D8A6D488(v62, v127, type metadata accessor for AFMResult);
      v156[27] = 9;
      sub_1D8A6A0B0();
      v63 = v129;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(qword_1EE0E3FA8, type metadata accessor for AFMResult);
      v64 = v131;
      sub_1D8B16AE0();
      v65 = &v157;
      goto LABEL_16;
    case 0xAuLL:
      v87 = swift_projectBox();
      v50 = v128;
      sub_1D8A6D488(v87, v128, type metadata accessor for AFMResult);
      v156[28] = 10;
      sub_1D8A6A05C();
      v63 = v132;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(qword_1EE0E3FA8, type metadata accessor for AFMResult);
      v64 = v134;
      sub_1D8B16AE0();
      v65 = &v158;
LABEL_16:
      (*(*(v65 - 32) + 8))(v63, v64);
      v55 = type metadata accessor for AFMResult;
      goto LABEL_19;
    case 0xBuLL:
      v49 = swift_projectBox();
      v50 = v136;
      sub_1D8A6D488(v49, v136, type metadata accessor for SyntheticDetectionResult);
      v156[29] = 11;
      sub_1D8A6A008();
      v51 = v137;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(qword_1EE0E4D60, type metadata accessor for SyntheticDetectionResult);
      v54 = v139;
      sub_1D8B16AE0();
      (*(v138 + 8))(v51, v54);
      v55 = type metadata accessor for SyntheticDetectionResult;
      goto LABEL_19;
    case 0xCuLL:
      v59 = swift_projectBox();
      v50 = v141;
      sub_1D8A6D488(v59, v141, type metadata accessor for GroundedParseEmbeddingsResult);
      v156[30] = 12;
      sub_1D8A69FB4();
      v60 = v142;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680C8, type metadata accessor for GroundedParseEmbeddingsResult);
      v61 = v144;
      sub_1D8B16AE0();
      (*(v143 + 8))(v60, v61);
      v55 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_19;
    case 0xDuLL:
      v83 = swift_projectBox();
      v50 = v146;
      sub_1D8A6D488(v83, v146, type metadata accessor for GroundedParseClassificationsResult);
      v156[31] = 13;
      sub_1D8A69F60();
      v84 = v147;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680B8, type metadata accessor for GroundedParseClassificationsResult);
      v85 = v149;
      sub_1D8B16AE0();
      (*(v148 + 8))(v84, v85);
      v55 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_19:
      sub_1D8A6D3D4(v50, v55);
      result = (*(v154 + 8))(v53, v52);
      break;
    default:
      v45 = swift_projectBox();
      sub_1D894733C(v45, v40);
      v156[2] = 0;
      sub_1D8A6A3A4();
      v46 = v155;
      v47 = v153;
      sub_1D8B16A40();
      sub_1D881CF20(&qword_1ECA67788, &qword_1ECA67750);
      sub_1D8B16AE0();
      (*(v90 + 8))(v37, v35);
      sub_1D8949CB8(v40);
      result = (*(v154 + 8))(v47, v46);
      break;
  }

  return result;
}

uint64_t CVDetection.hash(into:)(__int128 *a1)
{
  v66 = a1;
  v2 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v65 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SyntheticDetectionResult();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MetaDetectionResult();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v63 - v31;
  switch(*v1 >> 60)
  {
    case 1:
      v53 = swift_projectBox();
      sub_1D8A6D488(v53, v29, type metadata accessor for GroundedParseDetectorResult);
      v54 = v66;
      MEMORY[0x1DA720210](1);
      GroundedParseDetectorResult.hash(into:)(v54);
      v44 = type metadata accessor for GroundedParseDetectorResult;
      goto LABEL_13;
    case 2:
      v47 = swift_projectBox();
      sub_1D8A6D488(v47, v26, type metadata accessor for MetaDetectionResult);
      v48 = v66;
      MEMORY[0x1DA720210](2);
      MetaDetectionResult.hash(into:)(v48);
      v38 = type metadata accessor for MetaDetectionResult;
      v39 = v26;
      goto LABEL_20;
    case 3:
      v49 = swift_projectBox();
      sub_1D8A6D488(v49, v23, type metadata accessor for ObjectDetectorResult);
      v50 = 3;
      goto LABEL_19;
    case 4:
      v40 = swift_projectBox();
      sub_1D8A6D488(v40, v20, type metadata accessor for ParseDetectorResult);
      v41 = v66;
      MEMORY[0x1DA720210](4);
      ParseDetectorResult.hash(into:)(v41);
      v38 = type metadata accessor for ParseDetectorResult;
      v39 = v20;
      goto LABEL_20;
    case 5:
      v55 = swift_projectBox();
      sub_1D8A6D488(v55, v17, type metadata accessor for TextDetectorResult);
      v56 = v66;
      MEMORY[0x1DA720210](5);
      TextDetectorResult.hash(into:)(v56);
      v38 = type metadata accessor for TextDetectorResult;
      v39 = v17;
      goto LABEL_20;
    case 6:
      v59 = swift_projectBox();
      sub_1D8A6D488(v59, v14, type metadata accessor for StreamingBarcodeDetectorResult);
      v52 = 6;
      goto LABEL_15;
    case 7:
      v51 = swift_projectBox();
      sub_1D8A6D488(v51, v14, type metadata accessor for StreamingBarcodeDetectorResult);
      v52 = 7;
LABEL_15:
      MEMORY[0x1DA720210](v52);
      StreamingBarcodeDetectorResult.hash(into:)();
      v38 = type metadata accessor for StreamingBarcodeDetectorResult;
      v39 = v14;
      goto LABEL_20;
    case 8:
      v62 = swift_projectBox();
      sub_1D8A6D488(v62, v23, type metadata accessor for ObjectDetectorResult);
      v50 = 8;
LABEL_19:
      MEMORY[0x1DA720210](v50);
      ObjectDetectorResult.hash(into:)();
      v38 = type metadata accessor for ObjectDetectorResult;
      v39 = v23;
      goto LABEL_20;
    case 9:
      v45 = swift_projectBox();
      sub_1D8A6D488(v45, v11, type metadata accessor for AFMResult);
      v46 = 9;
      goto LABEL_17;
    case 0xALL:
      v60 = swift_projectBox();
      sub_1D8A6D488(v60, v11, type metadata accessor for AFMResult);
      v46 = 10;
LABEL_17:
      v61 = v66;
      MEMORY[0x1DA720210](v46);
      AFMResult.hash(into:)(v61);
      v38 = type metadata accessor for AFMResult;
      v39 = v11;
      goto LABEL_20;
    case 0xBLL:
      v36 = swift_projectBox();
      sub_1D8A6D488(v36, v8, type metadata accessor for SyntheticDetectionResult);
      v37 = v66;
      MEMORY[0x1DA720210](11);
      SyntheticDetectionResult.hash(into:)(v37);
      v38 = type metadata accessor for SyntheticDetectionResult;
      v39 = v8;
      goto LABEL_20;
    case 0xCLL:
      v42 = swift_projectBox();
      v29 = v64;
      sub_1D8A6D488(v42, v64, type metadata accessor for GroundedParseEmbeddingsResult);
      v43 = v66;
      MEMORY[0x1DA720210](12);
      GroundedParseEmbeddingsResult.hash(into:)(v43);
      v44 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_13;
    case 0xDLL:
      v57 = swift_projectBox();
      v29 = v65;
      sub_1D8A6D488(v57, v65, type metadata accessor for GroundedParseClassificationsResult);
      v58 = v66;
      MEMORY[0x1DA720210](13);
      GroundedParseClassificationsResult.hash(into:)(v58);
      v44 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_13:
      v38 = v44;
      v39 = v29;
LABEL_20:
      result = sub_1D8A6D3D4(v39, v38);
      break;
    default:
      v33 = swift_projectBox();
      sub_1D894733C(v33, v32);
      v34 = v66;
      MEMORY[0x1DA720210](0);
      sub_1D8A2FFD8(v34);
      result = sub_1D8949CB8(v32);
      break;
  }

  return result;
}

uint64_t CVDetection.hashValue.getter()
{
  v3 = *v0;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t CVDetection.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v134 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68148);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v139 = &v95 - v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68150);
  v138 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v133 = &v95 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68158);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v132 = &v95 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68160);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v131 = &v95 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68168);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v137 = &v95 - v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68170);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v130 = &v95 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68178);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v136 = &v95 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68180);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v129 = &v95 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68188);
  v110 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v128 = &v95 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68190);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v135 = &v95 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68198);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v127 = &v95 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681A0);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v126 = &v95 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681A8);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681B0);
  v100 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681B8);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v95 - v22;
  v24 = a1[3];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8A69F0C();
  v25 = v141;
  sub_1D8B16DB0();
  v141 = v25;
  if (!v25)
  {
    v97 = v19;
    v96 = v17;
    v98 = v16;
    v27 = v135;
    v26 = v136;
    v29 = v137;
    v28 = v138;
    v30 = v139;
    v99 = v21;
    v31 = sub_1D8B16A20();
    v32 = (2 * *(v31 + 16)) | 1;
    v142[0] = v31;
    v142[1] = v31 + 32;
    v143 = 0;
    v144 = v32;
    v33 = sub_1D881F7C8();
    if (v143 == v144 >> 1)
    {
      switch(v33)
      {
        case 0:
          v146 = 0;
          sub_1D8A6A3A4();
          v34 = v97;
          v35 = v141;
          sub_1D8B16950();
          v141 = v35;
          if (v35)
          {
            goto LABEL_8;
          }

          v139 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v36 = swift_allocBox();
          sub_1D881CF20(&qword_1ECA677D8, &qword_1ECA67750);
          v37 = v96;
          v38 = v141;
          sub_1D8B16A10();
          v141 = v38;
          if (v38)
          {
            (*(v100 + 8))(v34, v37);
            (*(v99 + 8))(v23, v139);
            goto LABEL_51;
          }

          (*(v100 + 8))(v34, v37);
          (*(v99 + 8))(v23, v139);
          swift_unknownObjectRelease();
          goto LABEL_59;
        case 1:
          v146 = 1;
          sub_1D8A6A350();
          v29 = v98;
          v75 = v141;
          sub_1D8B16950();
          v141 = v75;
          if (v75)
          {
            goto LABEL_8;
          }

          type metadata accessor for GroundedParseDetectorResult(0);
          v76 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681D8, type metadata accessor for GroundedParseDetectorResult);
          v47 = v102;
          v77 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v77;
          v50 = &v133;
          if (v77)
          {
            goto LABEL_49;
          }

          (*(v101 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v76 | 0x1000000000000000;
          goto LABEL_59;
        case 2:
          v146 = 2;
          sub_1D8A6A2FC();
          v29 = v126;
          v63 = v141;
          sub_1D8B16950();
          v141 = v63;
          if (v63)
          {
            goto LABEL_8;
          }

          type metadata accessor for MetaDetectionResult();
          v64 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E5CF0, type metadata accessor for MetaDetectionResult);
          v47 = v104;
          v65 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v65;
          v50 = &v135;
          if (v65)
          {
            goto LABEL_49;
          }

          (*(v103 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v64 | 0x2000000000000000;
          goto LABEL_59;
        case 3:
          v146 = 3;
          sub_1D8A6A2A8();
          v66 = v127;
          v67 = v141;
          sub_1D8B16950();
          v141 = v67;
          if (v67)
          {
            goto LABEL_8;
          }

          type metadata accessor for ObjectDetectorResult(0);
          v68 = swift_allocBox();
          sub_1D8A6D324(&unk_1ECA68A50, type metadata accessor for ObjectDetectorResult);
          v69 = v106;
          v70 = v141;
          sub_1D8B16A10();
          v71 = v99;
          v141 = v70;
          if (v70)
          {
            (*(v105 + 8))(v66, v69);
            (*(v71 + 8))(v23, v20);
            swift_unknownObjectRelease();
            goto LABEL_52;
          }

          (*(v105 + 8))(v66, v69);
          (*(v71 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v68 | 0x3000000000000000;
          goto LABEL_59;
        case 4:
          v146 = 4;
          sub_1D8A6A254();
          v51 = v141;
          sub_1D8B16950();
          v141 = v51;
          if (v51)
          {
            goto LABEL_8;
          }

          type metadata accessor for ParseDetectorResult(0);
          v52 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681D0, type metadata accessor for ParseDetectorResult);
          v53 = v109;
          v54 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v54;
          if (v54)
          {
            (*(v108 + 8))(v27, v53);
            goto LABEL_50;
          }

          (*(v108 + 8))(v27, v53);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v52 | 0x4000000000000000;
          goto LABEL_59;
        case 5:
          v146 = 5;
          sub_1D8A6A200();
          v29 = v128;
          v78 = v141;
          sub_1D8B16950();
          v141 = v78;
          if (v78)
          {
            goto LABEL_8;
          }

          type metadata accessor for TextDetectorResult(0);
          v79 = swift_allocBox();
          sub_1D8A6D324(&unk_1EE0E5FD0, type metadata accessor for TextDetectorResult);
          v47 = v107;
          v80 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v80;
          v50 = v142;
          if (v80)
          {
            goto LABEL_49;
          }

          (*(v110 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v79 | 0x5000000000000000;
          goto LABEL_59;
        case 6:
          v146 = 6;
          sub_1D8A6A1AC();
          v29 = v129;
          v86 = v141;
          sub_1D8B16950();
          v141 = v86;
          if (v86)
          {
            goto LABEL_8;
          }

          type metadata accessor for StreamingBarcodeDetectorResult(0);
          v87 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA67540, type metadata accessor for StreamingBarcodeDetectorResult);
          v47 = v111;
          v88 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v88;
          v50 = &v143;
          if (v88)
          {
            goto LABEL_49;
          }

          (*(v112 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v87 | 0x6000000000000000;
          goto LABEL_59;
        case 7:
          v146 = 7;
          sub_1D8A6A158();
          v29 = v26;
          v72 = v141;
          sub_1D8B16950();
          v141 = v72;
          if (v72)
          {
            goto LABEL_8;
          }

          type metadata accessor for StreamingBarcodeDetectorResult(0);
          v73 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA67540, type metadata accessor for StreamingBarcodeDetectorResult);
          v47 = v114;
          v74 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v74;
          v50 = &v144;
          if (v74)
          {
            goto LABEL_49;
          }

          (*(v113 + 8))(v26, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v73 | 0x7000000000000000;
          goto LABEL_59;
        case 8:
          v146 = 8;
          sub_1D8A6A104();
          v29 = v130;
          v92 = v141;
          sub_1D8B16950();
          v141 = v92;
          if (v92)
          {
            goto LABEL_8;
          }

          type metadata accessor for ObjectDetectorResult(0);
          v93 = swift_allocBox();
          sub_1D8A6D324(&unk_1ECA68A50, type metadata accessor for ObjectDetectorResult);
          v47 = v116;
          v94 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v94;
          v50 = &v145;
          if (v94)
          {
            goto LABEL_49;
          }

          (*(v115 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v93 | 0x8000000000000000;
          goto LABEL_59;
        case 9:
          v146 = 9;
          sub_1D8A6A0B0();
          v60 = v141;
          sub_1D8B16950();
          v141 = v60;
          if (v60)
          {
            goto LABEL_8;
          }

          type metadata accessor for AFMResult(0);
          v61 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E3F90, type metadata accessor for AFMResult);
          v47 = v118;
          v62 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v62;
          v50 = &v147;
          if (v62)
          {
            goto LABEL_49;
          }

          (*(v117 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v61 | 0x9000000000000000;
          goto LABEL_59;
        case 10:
          v146 = 10;
          sub_1D8A6A05C();
          v29 = v131;
          v89 = v141;
          sub_1D8B16950();
          v141 = v89;
          if (v89)
          {
            goto LABEL_8;
          }

          type metadata accessor for AFMResult(0);
          v90 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E3F90, type metadata accessor for AFMResult);
          v47 = v120;
          v91 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v91;
          v50 = &v148;
          if (v91)
          {
            goto LABEL_49;
          }

          (*(v119 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v90 | 0xA000000000000000;
          goto LABEL_59;
        case 11:
          v146 = 11;
          sub_1D8A6A008();
          v29 = v132;
          v45 = v141;
          sub_1D8B16950();
          v141 = v45;
          if (v45)
          {
            goto LABEL_8;
          }

          type metadata accessor for SyntheticDetectionResult();
          v46 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E4D48, type metadata accessor for SyntheticDetectionResult);
          v47 = v122;
          v48 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v48;
          v50 = &v149;
          if (!v48)
          {
            (*(v121 + 8))(v29, v47);
            (*(v49 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v36 = v46 | 0xB000000000000000;
            goto LABEL_59;
          }

LABEL_49:
          (*(*(v50 - 32) + 8))(v29, v47);
          goto LABEL_50;
        case 12:
          v146 = 12;
          sub_1D8A69FB4();
          v55 = v133;
          v56 = v141;
          sub_1D8B16950();
          v141 = v56;
          if (v56)
          {
            goto LABEL_8;
          }

          type metadata accessor for GroundedParseEmbeddingsResult(0);
          v57 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681C8, type metadata accessor for GroundedParseEmbeddingsResult);
          v58 = v123;
          v59 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v59;
          if (!v59)
          {
            (*(v28 + 8))(v55, v58);
            (*(v49 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v36 = v57 | 0xC000000000000000;
            goto LABEL_59;
          }

          (*(v28 + 8))(v55, v58);
LABEL_50:
          (*(v49 + 8))(v23, v20);
LABEL_51:
          swift_unknownObjectRelease();
          goto LABEL_52;
        case 13:
          v146 = 13;
          sub_1D8A69F60();
          v81 = v141;
          sub_1D8B16950();
          v141 = v81;
          if (v81)
          {
            goto LABEL_8;
          }

          type metadata accessor for GroundedParseClassificationsResult(0);
          v82 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681C0, type metadata accessor for GroundedParseClassificationsResult);
          v83 = v124;
          v84 = v141;
          sub_1D8B16A10();
          v85 = v99;
          v141 = v84;
          if (!v84)
          {
            (*(v125 + 8))(v30, v83);
            (*(v85 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v36 = v82 | 0xD000000000000000;
LABEL_59:
            v43 = v140;
            *v134 = v36;
            return __swift_destroy_boxed_opaque_existential_1(v43);
          }

          (*(v125 + 8))(v30, v83);
          (*(v85 + 8))(v23, v20);
          swift_unknownObjectRelease();
LABEL_52:
          swift_deallocBox();
          break;
        default:
          goto LABEL_7;
      }
    }

    else
    {
LABEL_7:
      v39 = sub_1D8B16770();
      v40 = swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v42 = &type metadata for CVDetection;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v39 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v39);
      v141 = v40;
      swift_willThrow();
LABEL_8:
      (*(v99 + 8))(v23, v20);
      swift_unknownObjectRelease();
    }
  }

  v43 = v140;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1D8A656D4()
{
  v3 = *v0;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A65724()
{
  v3 = *v0;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t CVDetection.modifyWithPrediction(_:)@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v152 = a2;
  v147 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v149);
  v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MetaDetectionResult();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v142 - v19;
  v21 = a1[3];
  v162 = a1[2];
  v163 = v21;
  v164 = a1[4];
  v22 = a1[1];
  v160 = *a1;
  v161 = v22;
  v23 = *(a1 + 10);
  v24 = *v153;
  v25 = *v153 >> 60;
  if (v25 <= 6)
  {
    if (v25 <= 2)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          v43 = swift_projectBox();
          sub_1D8A6D488(v43, v9, type metadata accessor for GroundedParseDetectorResult);
          v44 = swift_allocBox();
          v156 = v162;
          v157 = v163;
          v158 = v164;
          v155 = v161;
          v154 = v160;
          v159 = v23;
          GroundedParseDetectorResult.modifyWithPrediction(_:)(&v154, v45);
          result = sub_1D8A6D3D4(v9, type metadata accessor for GroundedParseDetectorResult);
          v24 = v44 | 0x1000000000000000;
        }

        else
        {
          v102 = swift_projectBox();
          sub_1D8A6D488(v102, v17, type metadata accessor for MetaDetectionResult);
          v103 = swift_allocBox();
          v105 = v104;
          sub_1D8A6D488(v17, v104, type metadata accessor for DetectionRequest);
          v106 = *&v17[v15[6]];
          v107 = *&v17[v15[7]];
          v108 = v15[10];
          v109 = v17[v15[9]];
          v111 = *&v17[v108];
          v110 = *&v17[v108 + 8];

          result = sub_1D8A6D3D4(v17, type metadata accessor for MetaDetectionResult);
          v112 = (v105 + v15[5]);
          v114 = v163;
          v113 = v164;
          v115 = v162;
          *v112 = v161;
          v112[1] = v115;
          v112[2] = v114;
          v112[3] = v113;
          *(v105 + v15[6]) = v106;
          *(v105 + v15[7]) = v107;
          *(v105 + v15[8]) = v23;
          *(v105 + v15[9]) = v109;
          v116 = (v105 + v15[10]);
          *v116 = v111;
          v116[1] = v110;
          v24 = v103 | 0x2000000000000000;
        }
      }

      else
      {
        v89 = swift_projectBox();
        sub_1D894733C(v89, v20);
        v24 = swift_allocBox();
        v91 = v90;
        v92 = sub_1D8B13240();
        (*(*(v92 - 8) + 16))(v91, v20, v92);
        v93 = *&v20[v18[9]];
        v94 = *&v20[v18[11]];
        v95 = *&v20[v18[12]];
        v96 = *&v20[v18[13]];
        v97 = *&v20[v18[15]];

        result = sub_1D8949CB8(v20);
        *(v91 + v18[9]) = v93;
        v98 = (v91 + v18[10]);
        v100 = v163;
        v99 = v164;
        v101 = v162;
        *v98 = v161;
        v98[1] = v101;
        v98[2] = v100;
        v98[3] = v99;
        *(v91 + v18[11]) = v94;
        *(v91 + v18[12]) = v95;
        *(v91 + v18[13]) = v96;
        *(v91 + v18[14]) = v23;
        *(v91 + v18[15]) = v97;
      }
    }

    else if (v25 > 4)
    {
      if (v25 == 5)
      {
        v64 = swift_projectBox();
        v65 = v144;
        sub_1D8A6D488(v64, v144, type metadata accessor for TextDetectorResult);
        v66 = swift_allocBox();
        v156 = v162;
        v157 = v163;
        v158 = v164;
        v155 = v161;
        v154 = v160;
        v159 = v23;
        TextDetectorResult.modifyWithPrediction(_:)(&v154, v67);
        result = sub_1D8A6D3D4(v65, type metadata accessor for TextDetectorResult);
        v24 = v66 | 0x5000000000000000;
      }

      else
      {
        v120 = swift_projectBox();
        v121 = v150;
        sub_1D8A6D488(v120, v150, type metadata accessor for StreamingBarcodeDetectorResult);
        v122 = v151;
        v123 = swift_allocBox();
        v125 = v124;
        v126 = sub_1D8B13240();
        (*(*(v126 - 8) + 16))(v125, v121, v126);
        v127 = *(v121 + v122[5]);
        v128 = (v121 + v122[7]);
        v130 = *v128;
        v129 = v128[1];
        v131 = *(v121 + v122[8]);
        v132 = *(v121 + v122[10]);

        sub_1D88B7ED4(v132);
        result = sub_1D8A6D3D4(v121, type metadata accessor for StreamingBarcodeDetectorResult);
        *(v125 + v122[5]) = v127;
        v133 = (v125 + v122[6]);
        v135 = v163;
        v134 = v164;
        v136 = v162;
        *v133 = v161;
        v133[1] = v136;
        v133[2] = v135;
        v133[3] = v134;
        v137 = (v125 + v122[7]);
        *v137 = v130;
        v137[1] = v129;
        *(v125 + v122[8]) = v131;
        *(v125 + v122[9]) = v23;
        *(v125 + v122[10]) = v132;
        v24 = v123 | 0x6000000000000000;
      }
    }

    else if (v25 == 3)
    {
      v26 = swift_projectBox();
      sub_1D8A6D488(v26, v14, type metadata accessor for ObjectDetectorResult);
      v27 = v149;
      v28 = swift_allocBox();
      v30 = v29;
      v31 = sub_1D8B13240();
      (*(*(v31 - 8) + 16))(v30, v14, v31);
      v32 = *&v14[v27[5]];
      v33 = &v14[v27[7]];
      v35 = *v33;
      v34 = *(v33 + 1);
      v36 = *&v14[v27[8]];

      result = sub_1D8A6D3D4(v14, type metadata accessor for ObjectDetectorResult);
      *(v30 + v27[5]) = v32;
      v38 = (v30 + v27[6]);
      v40 = v163;
      v39 = v164;
      v41 = v162;
      *v38 = v161;
      v38[1] = v41;
      v38[2] = v40;
      v38[3] = v39;
      v42 = (v30 + v27[7]);
      *v42 = v35;
      v42[1] = v34;
      *(v30 + v27[8]) = v36;
      *(v30 + v27[9]) = v23;
      v24 = v28 | 0x3000000000000000;
    }

    else
    {
      v117 = swift_projectBox();
      sub_1D8A6D488(v117, v12, type metadata accessor for ParseDetectorResult);
      v118 = swift_allocBox();
      v156 = v162;
      v157 = v163;
      v158 = v164;
      v155 = v161;
      v154 = v160;
      v159 = v23;
      ParseDetectorResult.modifyWithPrediction(_:)(&v154, v119);
      result = sub_1D8A6D3D4(v12, type metadata accessor for ParseDetectorResult);
      v24 = v118 | 0x4000000000000000;
    }

    goto LABEL_24;
  }

  if (v25 <= 8)
  {
    if (v25 == 7)
    {
      v46 = swift_projectBox();
      v47 = v150;
      sub_1D8A6D488(v46, v150, type metadata accessor for StreamingBarcodeDetectorResult);
      v48 = v151;
      v49 = swift_allocBox();
      v51 = v50;
      v52 = sub_1D8B13240();
      (*(*(v52 - 8) + 16))(v51, v47, v52);
      v53 = *(v47 + v48[5]);
      v54 = (v47 + v48[7]);
      v56 = *v54;
      v55 = v54[1];
      v57 = *(v47 + v48[8]);
      v58 = *(v47 + v48[10]);

      sub_1D88B7ED4(v58);
      result = sub_1D8A6D3D4(v47, type metadata accessor for StreamingBarcodeDetectorResult);
      *(v51 + v48[5]) = v53;
      v59 = (v51 + v48[6]);
      v61 = v163;
      v60 = v164;
      v62 = v162;
      *v59 = v161;
      v59[1] = v62;
      v59[2] = v61;
      v59[3] = v60;
      v63 = (v51 + v48[7]);
      *v63 = v56;
      v63[1] = v55;
      *(v51 + v48[8]) = v57;
      *(v51 + v48[9]) = v23;
      *(v51 + v48[10]) = v58;
      v24 = v49 | 0x7000000000000000;
    }

    else
    {
      v73 = swift_projectBox();
      sub_1D8A6D488(v73, v14, type metadata accessor for ObjectDetectorResult);
      v74 = v149;
      v75 = swift_allocBox();
      v77 = v76;
      v78 = sub_1D8B13240();
      (*(*(v78 - 8) + 16))(v77, v14, v78);
      v79 = *&v14[v74[5]];
      v80 = &v14[v74[7]];
      v82 = *v80;
      v81 = *(v80 + 1);
      v83 = *&v14[v74[8]];

      result = sub_1D8A6D3D4(v14, type metadata accessor for ObjectDetectorResult);
      *(v77 + v74[5]) = v79;
      v84 = (v77 + v74[6]);
      v86 = v163;
      v85 = v164;
      v87 = v162;
      *v84 = v161;
      v84[1] = v87;
      v84[2] = v86;
      v84[3] = v85;
      v88 = (v77 + v74[7]);
      *v88 = v82;
      v88[1] = v81;
      *(v77 + v74[8]) = v83;
      *(v77 + v74[9]) = v23;
      v24 = v75 | 0x8000000000000000;
    }

    goto LABEL_24;
  }

  if ((v25 - 9) < 3)
  {

LABEL_24:
    v68 = v152;
    goto LABEL_25;
  }

  v68 = v152;
  if (v25 == 12)
  {
    v69 = swift_projectBox();
    v70 = v146;
    sub_1D8A6D488(v69, v146, type metadata accessor for GroundedParseEmbeddingsResult);
    v71 = swift_allocBox();
    v156 = v162;
    v157 = v163;
    v158 = v164;
    v155 = v161;
    v154 = v160;
    v159 = v23;
    GroundedParseEmbeddingsResult.modifyWithPrediction(_:)(&v154, v72);
    result = sub_1D8A6D3D4(v70, type metadata accessor for GroundedParseEmbeddingsResult);
    v24 = v71 | 0xC000000000000000;
  }

  else
  {
    v138 = swift_projectBox();
    v139 = v148;
    sub_1D8A6D488(v138, v148, type metadata accessor for GroundedParseClassificationsResult);
    v140 = swift_allocBox();
    v156 = v162;
    v157 = v163;
    v158 = v164;
    v155 = v161;
    v154 = v160;
    v159 = v23;
    GroundedParseClassificationsResult.modifyWithPrediction(_:)(&v154, v141);
    result = sub_1D8A6D3D4(v139, type metadata accessor for GroundedParseClassificationsResult);
    v24 = v140 | 0xD000000000000000;
  }

LABEL_25:
  *v68 = v24;
  return result;
}

uint64_t SyntheticDetectionResult.modifyWithRotation(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SyntheticDetectionResult();
  v6 = (v2 + v5[5]);
  v7 = v6[1];
  v19 = *v6;
  v20 = v7;
  v8 = v6[3];
  v21 = v6[2];
  v22 = v8;
  v17 = *(v2 + v5[7]);
  v18 = v4;
  sub_1D8A5A9D8(&v18, &v17, v23);
  v9 = sub_1D8B13240();
  (*(*(v9 - 8) + 16))(a2, v2, v9);
  v10 = *(v2 + v5[8]);
  v11 = *(v2 + v5[6]);
  v12 = *(v2 + v5[9]);
  v13 = (a2 + v5[5]);
  v14 = v23[1];
  *v13 = v23[0];
  v13[1] = v14;
  v15 = v23[3];
  v13[2] = v23[2];
  v13[3] = v15;
  *(a2 + v5[6]) = v11;
  *(a2 + v5[7]) = v4;
  *(a2 + v5[8]) = v10;
  *(a2 + v5[9]) = v12;

  return sub_1D8A699B4(v12);
}

void CVDetection.maxSecondsDecay.getter()
{
  v1 = *v0 >> 60;
  if (v1 == 2)
  {
    type metadata accessor for MetaDetectionResult();
    swift_projectBox();
    return;
  }

  if (v1 > 5)
  {
    if (v1 <= 8)
    {
      if ((v1 - 6) >= 2)
      {
LABEL_10:
        sub_1D8B168C0();
        __break(1u);
      }
    }

    else if ((v1 - 9) >= 2 && (v1 - 12) >= 2)
    {
      goto LABEL_10;
    }
  }
}

uint64_t CVDetection.maxDetectionFps.getter()
{
  v1 = type metadata accessor for MetaDetectionResult();
  result = MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0 >> 60;
  if (v5 == 2)
  {
    v6 = swift_projectBox();
    sub_1D8A6D488(v6, v4, type metadata accessor for MetaDetectionResult);
    return sub_1D8A6D3D4(v4, type metadata accessor for MetaDetectionResult);
  }

  if (v5 > 5)
  {
    if (v5 <= 8)
    {
      if ((v5 - 6) >= 2)
      {
LABEL_10:
        result = sub_1D8B168C0();
        __break(1u);
      }
    }

    else if ((v5 - 9) >= 2 && (v5 - 12) >= 2)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t CVDetection.safeAreaPolicy.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

float sub_1D8A6692C()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8A669B4()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D8A66A34()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8A66ABC()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 80))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D8A66B44()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D8A66BC4()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 48))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

double sub_1D8A66C44()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

BOOL sub_1D8A66CCC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v50 = a1;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  sub_1D8A6D488(v50, v10, type metadata accessor for CVBundle.BundleType);
  v49 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v12 + 32);
    v24(v20, v10, v11);
  }

  else
  {
    sub_1D8A6D36C(v10, v4, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v20, v4, v11);
    sub_1D8A6D3D4(v4, type metadata accessor for CVTrackSnapshot);
    v24 = *(v12 + 32);
  }

  v24(v22, v20, v11);
  sub_1D8A6D488(v51, v8, type metadata accessor for CVBundle.BundleType);
  v25 = swift_getEnumCaseMultiPayload();
  v26 = v48;
  if (v25 == 1)
  {
    v24(v48, v8, v11);
  }

  else
  {
    v27 = v47;
    sub_1D8A6D36C(v8, v47, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v26, v27, v11);
    sub_1D8A6D3D4(v27, type metadata accessor for CVTrackSnapshot);
  }

  v24(v17, v26, v11);
  sub_1D8A6D324(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
  v28 = sub_1D8B158C0();
  v29 = *(v12 + 8);
  v29(v17, v11);
  v29(v22, v11);
  if (v28)
  {
    return 0;
  }

  CVBundle.latestEstimate.getter(&v61);
  v55[0] = v61;
  CVDetection.detection.getter(v52);
  v31 = v53;
  v32 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v32 + 64))(v60, v31, v32);

  __swift_destroy_boxed_opaque_existential_1(v52);
  Corners.bounds.getter();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  CVBundle.latestEstimate.getter(&v59);
  v58 = v59;
  CVDetection.detection.getter(v55);
  v41 = v56;
  v42 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  (*(v42 + 64))(v52, v41, v42);

  __swift_destroy_boxed_opaque_existential_1(v55);
  Corners.bounds.getter();
  v63.origin.x = v43;
  v63.origin.y = v44;
  v63.size.width = v45;
  v63.size.height = v46;
  v62.origin.x = v34;
  v62.origin.y = v36;
  v62.size.width = v38;
  v62.size.height = v40;
  return CGRectIntersectsRect(v62, v63);
}

uint64_t SyntheticDetectionResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SyntheticDetectionResult.id.setter(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 SyntheticDetectionResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SyntheticDetectionResult() + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

VisualIntelligenceCore::SyntheticDetectionResult::Provenance_optional __swiftcall SyntheticDetectionResult.Provenance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SyntheticDetectionResult.Provenance.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F7373616CLL;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

uint64_t sub_1D8A673FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F7373616CLL;
  }

  else
  {
    v3 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F7373616CLL;
  }

  else
  {
    v5 = 0x657263536C6C7566;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();
  }

  return v8 & 1;
}

uint64_t sub_1D8A674A4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D8B16930();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D8A67504(uint64_t *a1@<X8>)
{
  v2 = 0x657263536C6C7566;
  if (*v1)
  {
    v2 = 0x6F7373616CLL;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8A67544()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A675C8()
{
  sub_1D8B15A60();
}

uint64_t sub_1D8A67638()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t SyntheticDetectionResult.label.getter()
{
  if (*(v0 + *(type metadata accessor for SyntheticDetectionResult() + 24)))
  {
    return 0x6F7373616CLL;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

uint64_t SyntheticDetectionResult.provenance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SyntheticDetectionResult();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SyntheticDetectionResult.provenance.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SyntheticDetectionResult();
  *(v1 + *(result + 24)) = v2;
  return result;
}

double SyntheticDetectionResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for SyntheticDetectionResult() + 28));
  *a1 = result;
  return result;
}

uint64_t SyntheticDetectionResult.rotationAngle.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SyntheticDetectionResult();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t SyntheticDetectionResult.timestamp.setter(double a1)
{
  result = type metadata accessor for SyntheticDetectionResult();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SyntheticDetectionResult.highestSaliencyGroundingMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SyntheticDetectionResult() + 36));
  *a1 = v3;

  return sub_1D8A699B4(v3);
}

uint64_t SyntheticDetectionResult.highestSaliencyGroundingMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for SyntheticDetectionResult() + 36);
  result = sub_1D88649A0(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t SyntheticDetectionResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for SyntheticDetectionResult();
  v7 = v6[5];
  v8 = (v2 + v7);
  v9 = *(v2 + v6[6]);
  v10 = *(v2 + v6[7]);
  v11 = *(v2 + v6[9]);
  v12 = (a2 + v7);
  v13 = v8[1];
  *v12 = *v8;
  v12[1] = v13;
  v14 = v8[3];
  v12[2] = v8[2];
  v12[3] = v14;
  *(a2 + v6[6]) = v9;
  *(a2 + v6[7]) = v10;
  *(a2 + v6[8]) = v4;
  *(a2 + v6[9]) = v11;

  return sub_1D8A699B4(v11);
}

uint64_t sub_1D8A67B6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461746F72;
  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000020;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7372656E726F63;
  if (v1 != 1)
  {
    v5 = 0x6E616E65766F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A67C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A6D110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A67C5C(uint64_t a1)
{
  v2 = sub_1D8A6A3F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A67C98(uint64_t a1)
{
  v2 = sub_1D8A6A3F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SyntheticDetectionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A6A3F8();
  sub_1D8B16DD0();
  v20 = 0;
  sub_1D8B13240();
  sub_1D8A6D324(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for SyntheticDetectionResult();
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 1;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = *(v3 + v9[6]);
    v15 = 2;
    sub_1D8A6A44C();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[9]);
    v15 = 5;
    sub_1D8A699B4(v16);
    sub_1D8A29858();
    sub_1D8B16A80();
    sub_1D88649A0(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SyntheticDetectionResult.hash(into:)(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8A6D324(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for SyntheticDetectionResult();
  v4 = (v1 + v3[5]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();

  v11 = *(v1 + v3[7]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v12 = *(v1 + v3[8]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA720250](*&v12);
  if ((~*(v1 + v3[9]) & 0xF000000000000007) == 0)
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();

  CVDetection.hash(into:)(a1);
}

uint64_t SyntheticDetectionResult.hashValue.getter()
{
  sub_1D8B16D20();
  SyntheticDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t SyntheticDetectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D8B13240();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681F8);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - v6;
  v8 = type metadata accessor for SyntheticDetectionResult();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v9 + 36);
  *&v11[v28] = 0xF000000000000007;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A6A3F8();
  v27 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D88649A0(*&v11[v28]);
  }

  else
  {
    v13 = v23;
    v12 = v24;
    LOBYTE(v30) = 0;
    sub_1D8A6D324(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
    v14 = v25;
    sub_1D8B16A10();
    (*(v12 + 32))(v11, v26, v4);
    v35 = 1;
    sub_1D881BC34();
    sub_1D8B16A10();
    v15 = &v11[v8[5]];
    v16 = v31;
    *v15 = v30;
    *(v15 + 1) = v16;
    v17 = v33;
    *(v15 + 2) = v32;
    *(v15 + 3) = v17;
    v34 = 2;
    sub_1D8A6A4A0();
    sub_1D8B16A10();
    v11[v8[6]] = v29;
    v34 = 3;
    sub_1D88913B8();
    sub_1D8B16A10();
    *&v11[v8[7]] = v29;
    LOBYTE(v29) = 4;
    sub_1D8B169E0();
    *&v11[v8[8]] = v18;
    v34 = 5;
    sub_1D8A51C54();
    sub_1D8B169B0();
    (*(v13 + 8))(v27, v14);
    v20 = v28;
    v19 = v29;
    sub_1D88649A0(*&v11[v28]);
    *&v11[v20] = v19;
    sub_1D8A6D488(v11, v22, type metadata accessor for SyntheticDetectionResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D8A6D3D4(v11, type metadata accessor for SyntheticDetectionResult);
  }
}

uint64_t sub_1D8A686AC(uint64_t a1)
{
  if (*(v1 + *(a1 + 24)))
  {
    return 0x6F7373616CLL;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

double sub_1D8A686EC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

uint64_t sub_1D8A68708@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 80);
  v7 = sub_1D8B13240();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = a2[5];
  v9 = a2[6];
  v10 = (v3 + v8);
  v11 = *(v3 + v9);
  v12 = a2[7];
  v13 = a2[8];
  v14 = *(v3 + v12);
  v15 = a2[9];
  v16 = *(v3 + v15);
  v17 = (a3 + v8);
  v18 = v10[1];
  *v17 = *v10;
  v17[1] = v18;
  v19 = v10[3];
  v17[2] = v10[2];
  v17[3] = v19;
  *(a3 + v9) = v11;
  *(a3 + v12) = v14;
  *(a3 + v13) = v6;
  *(a3 + v15) = v16;

  return sub_1D8A699B4(v16);
}

uint64_t sub_1D8A687D4()
{
  sub_1D8B16D20();
  SyntheticDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A68818()
{
  sub_1D8B16D20();
  SyntheticDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

BOOL _s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    v5 = a1[3].f64[1];
    v6 = a1[3].f64[0] == a2[3].f64[0];
    return v5 == a2[3].f64[1] && v6;
  }

  return result;
}

BOOL _s22VisualIntelligenceCore24SyntheticDetectionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SyntheticDetectionResult();
  result = 0;
  v6 = *(v4 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 32);
  v9 = (a2 + v6);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v7, *v9), vceqq_f64(v7[1], v9[1])))) & 1) != 0 && v8 == v9[2].f64[0] && v7[2].f64[1] == v9[2].f64[1])
  {
    if (v7[3].f64[0] != v9[3].f64[0] || v7[3].f64[1] != v9[3].f64[1])
    {
      return 0;
    }

    v12 = v4;
    v13 = *(v4 + 24);
    v14 = *(a1 + v13);
    v15 = *(a2 + v13);
    if (v14)
    {
      v16 = 0x6F7373616CLL;
    }

    else
    {
      v16 = 0x657263536C6C7566;
    }

    if (v14)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xEA00000000006E65;
    }

    if (v15)
    {
      v18 = 0x6F7373616CLL;
    }

    else
    {
      v18 = 0x657263536C6C7566;
    }

    if (v15)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xEA00000000006E65;
    }

    if (v16 == v18 && v17 == v19)
    {
    }

    else
    {
      v21 = sub_1D8B16BA0();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a1 + v12[7]) != *(a2 + v12[7]) || *(a1 + v12[8]) != *(a2 + v12[8]))
    {
      return 0;
    }

    v22 = v12[9];
    v23 = *(a1 + v22);
    v24 = *(a2 + v22);
    if ((~v23 & 0xF000000000000007) != 0)
    {
      v27 = v23;
      if ((~v24 & 0xF000000000000007) != 0)
      {
        v26 = v24;
        sub_1D8A699B4(v23);
        sub_1D8A699B4(v24);
        sub_1D8A699B4(v23);
        v25 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v27, &v26);

        sub_1D88649A0(v23);
        return (v25 & 1) != 0;
      }

      sub_1D8A699B4(v23);
      sub_1D8A699B4(v24);
      sub_1D8A699B4(v23);
    }

    else
    {
      sub_1D8A699B4(v23);
      sub_1D8A699B4(v24);
      if ((~v24 & 0xF000000000000007) == 0)
      {
        sub_1D88649A0(v23);
        return 1;
      }
    }

    sub_1D88649A0(v23);
    sub_1D88649A0(v24);
    return 0;
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v133 = a2;
  v3 = type metadata accessor for GroundedParseClassificationsResult(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v131 = &v113 - v6;
  v7 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v113 - v10;
  v11 = type metadata accessor for SyntheticDetectionResult();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v128 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v127 = &v113 - v14;
  v15 = type metadata accessor for AFMResult(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v126 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v125 = &v113 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v113 - v22;
  v23 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v122 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v121 = &v113 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v120 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v113 - v30;
  v31 = type metadata accessor for TextDetectorResult(0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v118 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v113 - v34;
  v35 = type metadata accessor for ParseDetectorResult(0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v116 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v113 - v38;
  v39 = type metadata accessor for ObjectDetectorResult(0);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v114 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v113 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v113 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v113 - v48;
  v50 = type metadata accessor for MetaDetectionResult();
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v113 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v113 - v54;
  v56 = type metadata accessor for GroundedParseDetectorResult(0);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v59 = &v113 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v113 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v63 = MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v113 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v113 - v66;
  v68 = *v133;
  switch(*a1 >> 60)
  {
    case 1:
      if (v68 >> 60 != 1)
      {
        goto LABEL_36;
      }

      v97 = swift_projectBox();
      v98 = swift_projectBox();
      sub_1D8A6D488(v97, v61, type metadata accessor for GroundedParseDetectorResult);
      sub_1D8A6D488(v98, v59, type metadata accessor for GroundedParseDetectorResult);

      v72 = _s22VisualIntelligenceCore27GroundedParseDetectorResultV2eeoiySbAC_ACtFZ_0(v61, v59);
      v89 = type metadata accessor for GroundedParseDetectorResult;
      sub_1D8A6D3D4(v59, type metadata accessor for GroundedParseDetectorResult);
      v90 = v61;
      goto LABEL_33;
    case 2:
      if (v68 >> 60 != 2)
      {
        goto LABEL_36;
      }

      v87 = swift_projectBox();
      v88 = swift_projectBox();
      sub_1D8A6D488(v87, v55, type metadata accessor for MetaDetectionResult);
      sub_1D8A6D488(v88, v53, type metadata accessor for MetaDetectionResult);

      v72 = _s22VisualIntelligenceCore19MetaDetectionResultV2eeoiySbAC_ACtFZ_0(v55, v53);
      v89 = type metadata accessor for MetaDetectionResult;
      sub_1D8A6D3D4(v53, type metadata accessor for MetaDetectionResult);
      v90 = v55;
      goto LABEL_33;
    case 3:
      if (v68 >> 60 != 3)
      {
        goto LABEL_36;
      }

      v91 = swift_projectBox();
      v92 = swift_projectBox();
      sub_1D8A6D488(v91, v49, type metadata accessor for ObjectDetectorResult);
      sub_1D8A6D488(v92, v47, type metadata accessor for ObjectDetectorResult);

      v72 = _s22VisualIntelligenceCore20ObjectDetectorResultV2eeoiySbAC_ACtFZ_0(v49, v47);
      sub_1D8A6D3D4(v47, type metadata accessor for ObjectDetectorResult);
      v90 = v49;
      v93 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_34;
    case 4:
      if (v68 >> 60 != 4)
      {
        goto LABEL_36;
      }

      v78 = swift_projectBox();
      v79 = swift_projectBox();
      v44 = v115;
      sub_1D8A6D488(v78, v115, type metadata accessor for ParseDetectorResult);
      v80 = v79;
      v76 = v116;
      sub_1D8A6D488(v80, v116, type metadata accessor for ParseDetectorResult);

      v72 = _s22VisualIntelligenceCore19ParseDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for ParseDetectorResult;
      goto LABEL_32;
    case 5:
      if (v68 >> 60 != 5)
      {
        goto LABEL_36;
      }

      v99 = swift_projectBox();
      v100 = swift_projectBox();
      v44 = v117;
      sub_1D8A6D488(v99, v117, type metadata accessor for TextDetectorResult);
      v101 = v100;
      v76 = v118;
      sub_1D8A6D488(v101, v118, type metadata accessor for TextDetectorResult);

      v72 = _s22VisualIntelligenceCore18TextDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for TextDetectorResult;
      goto LABEL_32;
    case 6:
      if (v68 >> 60 != 6)
      {
        goto LABEL_36;
      }

      v105 = swift_projectBox();
      v106 = swift_projectBox();
      v44 = v119;
      sub_1D8A6D488(v105, v119, type metadata accessor for StreamingBarcodeDetectorResult);
      v96 = v106;
      v76 = v120;
      goto LABEL_26;
    case 7:
      if (v68 >> 60 != 7)
      {
        goto LABEL_36;
      }

      v94 = swift_projectBox();
      v95 = swift_projectBox();
      v44 = v121;
      sub_1D8A6D488(v94, v121, type metadata accessor for StreamingBarcodeDetectorResult);
      v96 = v95;
      v76 = v122;
LABEL_26:
      sub_1D8A6D488(v96, v76, type metadata accessor for StreamingBarcodeDetectorResult);

      v72 = _s22VisualIntelligenceCore30StreamingBarcodeDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for StreamingBarcodeDetectorResult;
      goto LABEL_32;
    case 8:
      if (v68 >> 60 != 8)
      {
        goto LABEL_36;
      }

      v109 = swift_projectBox();
      v110 = swift_projectBox();
      sub_1D8A6D488(v109, v44, type metadata accessor for ObjectDetectorResult);
      v111 = v110;
      v76 = v114;
      sub_1D8A6D488(v111, v114, type metadata accessor for ObjectDetectorResult);

      v72 = _s22VisualIntelligenceCore20ObjectDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_32;
    case 9:
      if (v68 >> 60 != 9)
      {
        goto LABEL_36;
      }

      v84 = swift_projectBox();
      v85 = swift_projectBox();
      v44 = v123;
      sub_1D8A6D488(v84, v123, type metadata accessor for AFMResult);
      v86 = v85;
      v76 = v124;
      goto LABEL_29;
    case 0xALL:
      if (v68 >> 60 != 10)
      {
        goto LABEL_36;
      }

      v107 = swift_projectBox();
      v108 = swift_projectBox();
      v44 = v125;
      sub_1D8A6D488(v107, v125, type metadata accessor for AFMResult);
      v86 = v108;
      v76 = v126;
LABEL_29:
      sub_1D8A6D488(v86, v76, type metadata accessor for AFMResult);

      v72 = _s22VisualIntelligenceCore9AFMResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for AFMResult;
      goto LABEL_32;
    case 0xBLL:
      if (v68 >> 60 != 11)
      {
        goto LABEL_36;
      }

      v73 = swift_projectBox();
      v74 = swift_projectBox();
      v44 = v127;
      sub_1D8A6D488(v73, v127, type metadata accessor for SyntheticDetectionResult);
      v75 = v74;
      v76 = v128;
      sub_1D8A6D488(v75, v128, type metadata accessor for SyntheticDetectionResult);

      v72 = _s22VisualIntelligenceCore24SyntheticDetectionResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for SyntheticDetectionResult;
      goto LABEL_32;
    case 0xCLL:
      if (v68 >> 60 != 12)
      {
        goto LABEL_36;
      }

      v81 = swift_projectBox();
      v82 = swift_projectBox();
      v44 = v129;
      sub_1D8A6D488(v81, v129, type metadata accessor for GroundedParseEmbeddingsResult);
      v83 = v82;
      v76 = v130;
      sub_1D8A6D488(v83, v130, type metadata accessor for GroundedParseEmbeddingsResult);

      v72 = sub_1D8A917B8(v44, v76);
      v77 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_32;
    case 0xDLL:
      if (v68 >> 60 != 13)
      {
        goto LABEL_36;
      }

      v102 = swift_projectBox();
      v103 = swift_projectBox();
      v44 = v131;
      sub_1D8A6D488(v102, v131, type metadata accessor for GroundedParseClassificationsResult);
      v104 = v103;
      v76 = v132;
      sub_1D8A6D488(v104, v132, type metadata accessor for GroundedParseClassificationsResult);

      v72 = sub_1D8A917A0(v44, v76);
      v77 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_32:
      v89 = v77;
      sub_1D8A6D3D4(v76, v77);
      v90 = v44;
LABEL_33:
      v93 = v89;
LABEL_34:
      sub_1D8A6D3D4(v90, v93);
      goto LABEL_35;
    default:
      if (v68 >> 60)
      {
LABEL_36:
        v72 = 0;
      }

      else
      {
        v69 = swift_projectBox();
        v70 = swift_projectBox();
        sub_1D894733C(v69, v67);
        sub_1D894733C(v70, v65);

        LOBYTE(v69) = sub_1D87EF584(v67, v65);
        sub_1D8949CB8(v65);
        v71 = v67;
        v72 = v69;
        sub_1D8949CB8(v71);
LABEL_35:
      }

      return v72 & 1;
  }
}

uint64_t type metadata accessor for SyntheticDetectionResult()
{
  result = qword_1EE0E4D28;
  if (!qword_1EE0E4D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8A699B4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1D8A699CC()
{
  result = qword_1ECA67EA8;
  if (!qword_1ECA67EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67EA8);
  }

  return result;
}

unint64_t sub_1D8A69A20()
{
  result = qword_1ECA67F40;
  if (!qword_1ECA67F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F40);
  }

  return result;
}

unint64_t sub_1D8A69A74()
{
  result = qword_1ECA67F48;
  if (!qword_1ECA67F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F48);
  }

  return result;
}

unint64_t sub_1D8A69AC8()
{
  result = qword_1ECA67F50;
  if (!qword_1ECA67F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F50);
  }

  return result;
}

unint64_t sub_1D8A69B1C()
{
  result = qword_1ECA67F58;
  if (!qword_1ECA67F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F58);
  }

  return result;
}

unint64_t sub_1D8A69B70()
{
  result = qword_1ECA67F60;
  if (!qword_1ECA67F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F60);
  }

  return result;
}

unint64_t sub_1D8A69BC4()
{
  result = qword_1ECA67F68;
  if (!qword_1ECA67F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F68);
  }

  return result;
}

unint64_t sub_1D8A69C18()
{
  result = qword_1ECA67F70;
  if (!qword_1ECA67F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F70);
  }

  return result;
}

unint64_t sub_1D8A69C6C()
{
  result = qword_1ECA67F78;
  if (!qword_1ECA67F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F78);
  }

  return result;
}

unint64_t sub_1D8A69CC0()
{
  result = qword_1ECA67F80;
  if (!qword_1ECA67F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F80);
  }

  return result;
}

unint64_t sub_1D8A69D14()
{
  result = qword_1ECA67F88;
  if (!qword_1ECA67F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F88);
  }

  return result;
}

unint64_t sub_1D8A69D68()
{
  result = qword_1ECA67F90;
  if (!qword_1ECA67F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F90);
  }

  return result;
}

unint64_t sub_1D8A69DBC()
{
  result = qword_1ECA67F98;
  if (!qword_1ECA67F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F98);
  }

  return result;
}

unint64_t sub_1D8A69E10()
{
  result = qword_1ECA67FA0;
  if (!qword_1ECA67FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67FA0);
  }

  return result;
}

unint64_t sub_1D8A69E64()
{
  result = qword_1ECA67FA8;
  if (!qword_1ECA67FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67FA8);
  }

  return result;
}

unint64_t sub_1D8A69EB8()
{
  result = qword_1ECA67FB0;
  if (!qword_1ECA67FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67FB0);
  }

  return result;
}

unint64_t sub_1D8A69F0C()
{
  result = qword_1ECA680A8;
  if (!qword_1ECA680A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680A8);
  }

  return result;
}

unint64_t sub_1D8A69F60()
{
  result = qword_1ECA680B0;
  if (!qword_1ECA680B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680B0);
  }

  return result;
}

unint64_t sub_1D8A69FB4()
{
  result = qword_1ECA680C0;
  if (!qword_1ECA680C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680C0);
  }

  return result;
}

unint64_t sub_1D8A6A008()
{
  result = qword_1ECA680D0;
  if (!qword_1ECA680D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680D0);
  }

  return result;
}

unint64_t sub_1D8A6A05C()
{
  result = qword_1ECA680D8;
  if (!qword_1ECA680D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680D8);
  }

  return result;
}

unint64_t sub_1D8A6A0B0()
{
  result = qword_1ECA680E0;
  if (!qword_1ECA680E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680E0);
  }

  return result;
}

unint64_t sub_1D8A6A104()
{
  result = qword_1ECA680E8;
  if (!qword_1ECA680E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680E8);
  }

  return result;
}

unint64_t sub_1D8A6A158()
{
  result = qword_1ECA680F8;
  if (!qword_1ECA680F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680F8);
  }

  return result;
}

unint64_t sub_1D8A6A1AC()
{
  result = qword_1ECA68100;
  if (!qword_1ECA68100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68100);
  }

  return result;
}

unint64_t sub_1D8A6A200()
{
  result = qword_1ECA68108;
  if (!qword_1ECA68108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68108);
  }

  return result;
}

unint64_t sub_1D8A6A254()
{
  result = qword_1ECA68110;
  if (!qword_1ECA68110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68110);
  }

  return result;
}

unint64_t sub_1D8A6A2A8()
{
  result = qword_1ECA68120;
  if (!qword_1ECA68120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68120);
  }

  return result;
}

unint64_t sub_1D8A6A2FC()
{
  result = qword_1ECA68128;
  if (!qword_1ECA68128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68128);
  }

  return result;
}

unint64_t sub_1D8A6A350()
{
  result = qword_1ECA68130;
  if (!qword_1ECA68130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68130);
  }

  return result;
}

unint64_t sub_1D8A6A3A4()
{
  result = qword_1ECA68140;
  if (!qword_1ECA68140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68140);
  }

  return result;
}

unint64_t sub_1D8A6A3F8()
{
  result = qword_1ECA681E8;
  if (!qword_1ECA681E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA681E8);
  }

  return result;
}

unint64_t sub_1D8A6A44C()
{
  result = qword_1ECA681F0;
  if (!qword_1ECA681F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA681F0);
  }

  return result;
}

unint64_t sub_1D8A6A4A0()
{
  result = qword_1ECA68200;
  if (!qword_1ECA68200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68200);
  }

  return result;
}

unint64_t sub_1D8A6A4F8()
{
  result = qword_1ECA68208;
  if (!qword_1ECA68208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68208);
  }

  return result;
}

unint64_t sub_1D8A6A550()
{
  result = qword_1EE0E9198;
  if (!qword_1EE0E9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E9198);
  }

  return result;
}

unint64_t sub_1D8A6A5EC()
{
  result = qword_1EE0E9188;
  if (!qword_1EE0E9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E9188);
  }

  return result;
}

unint64_t sub_1D8A6A640(void *a1)
{
  a1[1] = sub_1D8A51C54();
  a1[2] = sub_1D8A29858();
  a1[3] = sub_1D87C5834();
  result = sub_1D8A6A680();
  a1[4] = result;
  return result;
}

unint64_t sub_1D8A6A680()
{
  result = qword_1ECA68220;
  if (!qword_1ECA68220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68220);
  }

  return result;
}

unint64_t sub_1D8A6A6D8()
{
  result = qword_1ECA68228;
  if (!qword_1ECA68228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68228);
  }

  return result;
}

uint64_t sub_1D8A6A72C(void *a1)
{
  a1[1] = sub_1D8A6D324(&qword_1EE0E4D48, type metadata accessor for SyntheticDetectionResult);
  a1[2] = sub_1D8A6D324(qword_1EE0E4D60, type metadata accessor for SyntheticDetectionResult);
  a1[3] = sub_1D8A6D324(&qword_1EE0E4D58, type metadata accessor for SyntheticDetectionResult);
  result = sub_1D8A6D324(&qword_1EE0E4D40, type metadata accessor for SyntheticDetectionResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A6A848(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A6A868(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1D8A6A98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 8))
  {
    return (*a1 + 115);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8A6A9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D8A6AA98()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A6AB48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A6AB48()
{
  if (!qword_1EE0E9180)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E9180);
    }
  }
}

uint64_t sub_1D8A6ACA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8A6AD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8A6AEEC()
{
  result = qword_1ECA68230;
  if (!qword_1ECA68230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68230);
  }

  return result;
}

unint64_t sub_1D8A6AF44()
{
  result = qword_1ECA68238;
  if (!qword_1ECA68238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68238);
  }

  return result;
}

unint64_t sub_1D8A6AF9C()
{
  result = qword_1ECA68240;
  if (!qword_1ECA68240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68240);
  }

  return result;
}

unint64_t sub_1D8A6AFF4()
{
  result = qword_1ECA68248;
  if (!qword_1ECA68248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68248);
  }

  return result;
}

unint64_t sub_1D8A6B04C()
{
  result = qword_1ECA68250;
  if (!qword_1ECA68250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68250);
  }

  return result;
}

unint64_t sub_1D8A6B0A4()
{
  result = qword_1ECA68258;
  if (!qword_1ECA68258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68258);
  }

  return result;
}

unint64_t sub_1D8A6B0FC()
{
  result = qword_1ECA68260;
  if (!qword_1ECA68260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68260);
  }

  return result;
}

unint64_t sub_1D8A6B154()
{
  result = qword_1ECA68268;
  if (!qword_1ECA68268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68268);
  }

  return result;
}

unint64_t sub_1D8A6B1AC()
{
  result = qword_1ECA68270;
  if (!qword_1ECA68270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68270);
  }

  return result;
}

unint64_t sub_1D8A6B204()
{
  result = qword_1ECA68278;
  if (!qword_1ECA68278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68278);
  }

  return result;
}

unint64_t sub_1D8A6B25C()
{
  result = qword_1ECA68280;
  if (!qword_1ECA68280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68280);
  }

  return result;
}

unint64_t sub_1D8A6B2B4()
{
  result = qword_1ECA68288;
  if (!qword_1ECA68288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68288);
  }

  return result;
}

unint64_t sub_1D8A6B30C()
{
  result = qword_1ECA68290;
  if (!qword_1ECA68290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68290);
  }

  return result;
}

unint64_t sub_1D8A6B364()
{
  result = qword_1ECA68298;
  if (!qword_1ECA68298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68298);
  }

  return result;
}

unint64_t sub_1D8A6B3BC()
{
  result = qword_1ECA682A0;
  if (!qword_1ECA682A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682A0);
  }

  return result;
}

unint64_t sub_1D8A6B414()
{
  result = qword_1ECA682A8;
  if (!qword_1ECA682A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682A8);
  }

  return result;
}

unint64_t sub_1D8A6B46C()
{
  result = qword_1ECA682B0;
  if (!qword_1ECA682B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682B0);
  }

  return result;
}

unint64_t sub_1D8A6B4C4()
{
  result = qword_1ECA682B8;
  if (!qword_1ECA682B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682B8);
  }

  return result;
}

unint64_t sub_1D8A6B51C()
{
  result = qword_1ECA682C0;
  if (!qword_1ECA682C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682C0);
  }

  return result;
}

unint64_t sub_1D8A6B574()
{
  result = qword_1ECA682C8;
  if (!qword_1ECA682C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682C8);
  }

  return result;
}

unint64_t sub_1D8A6B5CC()
{
  result = qword_1ECA682D0;
  if (!qword_1ECA682D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682D0);
  }

  return result;
}

unint64_t sub_1D8A6B624()
{
  result = qword_1ECA682D8;
  if (!qword_1ECA682D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682D8);
  }

  return result;
}

unint64_t sub_1D8A6B67C()
{
  result = qword_1ECA682E0;
  if (!qword_1ECA682E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682E0);
  }

  return result;
}

unint64_t sub_1D8A6B6D4()
{
  result = qword_1ECA682E8;
  if (!qword_1ECA682E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682E8);
  }

  return result;
}

unint64_t sub_1D8A6B72C()
{
  result = qword_1ECA682F0;
  if (!qword_1ECA682F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682F0);
  }

  return result;
}

unint64_t sub_1D8A6B784()
{
  result = qword_1ECA682F8;
  if (!qword_1ECA682F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682F8);
  }

  return result;
}

unint64_t sub_1D8A6B7DC()
{
  result = qword_1ECA68300;
  if (!qword_1ECA68300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68300);
  }

  return result;
}

unint64_t sub_1D8A6B834()
{
  result = qword_1ECA68308;
  if (!qword_1ECA68308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68308);
  }

  return result;
}

unint64_t sub_1D8A6B88C()
{
  result = qword_1ECA68310;
  if (!qword_1ECA68310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68310);
  }

  return result;
}

unint64_t sub_1D8A6B8E4()
{
  result = qword_1ECA68318;
  if (!qword_1ECA68318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68318);
  }

  return result;
}

unint64_t sub_1D8A6B93C()
{
  result = qword_1ECA68320;
  if (!qword_1ECA68320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68320);
  }

  return result;
}

unint64_t sub_1D8A6B994()
{
  result = qword_1ECA68328;
  if (!qword_1ECA68328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68328);
  }

  return result;
}

unint64_t sub_1D8A6B9EC()
{
  result = qword_1ECA68330;
  if (!qword_1ECA68330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68330);
  }

  return result;
}

unint64_t sub_1D8A6BA44()
{
  result = qword_1ECA68338;
  if (!qword_1ECA68338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68338);
  }

  return result;
}

unint64_t sub_1D8A6BA9C()
{
  result = qword_1ECA68340;
  if (!qword_1ECA68340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68340);
  }

  return result;
}

unint64_t sub_1D8A6BAF4()
{
  result = qword_1ECA68348;
  if (!qword_1ECA68348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68348);
  }

  return result;
}

unint64_t sub_1D8A6BB4C()
{
  result = qword_1ECA68350;
  if (!qword_1ECA68350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68350);
  }

  return result;
}

unint64_t sub_1D8A6BBA4()
{
  result = qword_1ECA68358;
  if (!qword_1ECA68358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68358);
  }

  return result;
}

unint64_t sub_1D8A6BBFC()
{
  result = qword_1ECA68360;
  if (!qword_1ECA68360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68360);
  }

  return result;
}

unint64_t sub_1D8A6BC54()
{
  result = qword_1ECA68368;
  if (!qword_1ECA68368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68368);
  }

  return result;
}

unint64_t sub_1D8A6BCAC()
{
  result = qword_1ECA68370;
  if (!qword_1ECA68370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68370);
  }

  return result;
}

unint64_t sub_1D8A6BD04()
{
  result = qword_1ECA68378;
  if (!qword_1ECA68378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68378);
  }

  return result;
}

unint64_t sub_1D8A6BD5C()
{
  result = qword_1ECA68380;
  if (!qword_1ECA68380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68380);
  }

  return result;
}

unint64_t sub_1D8A6BDB4()
{
  result = qword_1ECA68388;
  if (!qword_1ECA68388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68388);
  }

  return result;
}

unint64_t sub_1D8A6BE0C()
{
  result = qword_1ECA68390;
  if (!qword_1ECA68390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68390);
  }

  return result;
}

unint64_t sub_1D8A6BE64()
{
  result = qword_1ECA68398;
  if (!qword_1ECA68398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68398);
  }

  return result;
}

unint64_t sub_1D8A6BEBC()
{
  result = qword_1ECA683A0;
  if (!qword_1ECA683A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683A0);
  }

  return result;
}

unint64_t sub_1D8A6BF14()
{
  result = qword_1ECA683A8;
  if (!qword_1ECA683A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683A8);
  }

  return result;
}

unint64_t sub_1D8A6BF6C()
{
  result = qword_1ECA683B0;
  if (!qword_1ECA683B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683B0);
  }

  return result;
}

unint64_t sub_1D8A6BFC4()
{
  result = qword_1ECA683B8;
  if (!qword_1ECA683B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683B8);
  }

  return result;
}

unint64_t sub_1D8A6C01C()
{
  result = qword_1ECA683C0;
  if (!qword_1ECA683C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683C0);
  }

  return result;
}

unint64_t sub_1D8A6C074()
{
  result = qword_1ECA683C8;
  if (!qword_1ECA683C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683C8);
  }

  return result;
}

unint64_t sub_1D8A6C0CC()
{
  result = qword_1ECA683D0;
  if (!qword_1ECA683D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683D0);
  }

  return result;
}

unint64_t sub_1D8A6C124()
{
  result = qword_1ECA683D8;
  if (!qword_1ECA683D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683D8);
  }

  return result;
}

unint64_t sub_1D8A6C17C()
{
  result = qword_1ECA683E0;
  if (!qword_1ECA683E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683E0);
  }

  return result;
}

unint64_t sub_1D8A6C1D4()
{
  result = qword_1ECA683E8;
  if (!qword_1ECA683E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683E8);
  }

  return result;
}

unint64_t sub_1D8A6C22C()
{
  result = qword_1ECA683F0;
  if (!qword_1ECA683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683F0);
  }

  return result;
}

unint64_t sub_1D8A6C284()
{
  result = qword_1ECA683F8;
  if (!qword_1ECA683F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683F8);
  }

  return result;
}

unint64_t sub_1D8A6C2DC()
{
  result = qword_1ECA68400;
  if (!qword_1ECA68400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68400);
  }

  return result;
}

unint64_t sub_1D8A6C334()
{
  result = qword_1ECA68408;
  if (!qword_1ECA68408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68408);
  }

  return result;
}

unint64_t sub_1D8A6C38C()
{
  result = qword_1ECA68410;
  if (!qword_1ECA68410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68410);
  }

  return result;
}

unint64_t sub_1D8A6C3E4()
{
  result = qword_1ECA68418;
  if (!qword_1ECA68418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68418);
  }

  return result;
}

unint64_t sub_1D8A6C43C()
{
  result = qword_1ECA68420;
  if (!qword_1ECA68420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68420);
  }

  return result;
}

unint64_t sub_1D8A6C494()
{
  result = qword_1ECA68428;
  if (!qword_1ECA68428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68428);
  }

  return result;
}

unint64_t sub_1D8A6C4EC()
{
  result = qword_1ECA68430;
  if (!qword_1ECA68430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68430);
  }

  return result;
}

unint64_t sub_1D8A6C544()
{
  result = qword_1ECA68438;
  if (!qword_1ECA68438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68438);
  }

  return result;
}

unint64_t sub_1D8A6C59C()
{
  result = qword_1ECA68440;
  if (!qword_1ECA68440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68440);
  }

  return result;
}

unint64_t sub_1D8A6C5F4()
{
  result = qword_1ECA68448;
  if (!qword_1ECA68448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68448);
  }

  return result;
}

unint64_t sub_1D8A6C64C()
{
  result = qword_1ECA68450;
  if (!qword_1ECA68450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68450);
  }

  return result;
}

unint64_t sub_1D8A6C6A4()
{
  result = qword_1ECA68458;
  if (!qword_1ECA68458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68458);
  }

  return result;
}

unint64_t sub_1D8A6C6FC()
{
  result = qword_1ECA68460;
  if (!qword_1ECA68460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68460);
  }

  return result;
}

unint64_t sub_1D8A6C754()
{
  result = qword_1ECA68468;
  if (!qword_1ECA68468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68468);
  }

  return result;
}

unint64_t sub_1D8A6C7AC()
{
  result = qword_1ECA68470;
  if (!qword_1ECA68470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68470);
  }

  return result;
}

unint64_t sub_1D8A6C804()
{
  result = qword_1ECA68478;
  if (!qword_1ECA68478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68478);
  }

  return result;
}

unint64_t sub_1D8A6C85C()
{
  result = qword_1ECA68480;
  if (!qword_1ECA68480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68480);
  }

  return result;
}

unint64_t sub_1D8A6C8B4()
{
  result = qword_1ECA68488;
  if (!qword_1ECA68488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68488);
  }

  return result;
}

unint64_t sub_1D8A6C90C()
{
  result = qword_1ECA68490;
  if (!qword_1ECA68490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68490);
  }

  return result;
}

unint64_t sub_1D8A6C964()
{
  result = qword_1ECA68498;
  if (!qword_1ECA68498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68498);
  }

  return result;
}

unint64_t sub_1D8A6C9BC()
{
  result = qword_1ECA684A0;
  if (!qword_1ECA684A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684A0);
  }

  return result;
}

unint64_t sub_1D8A6CA14()
{
  result = qword_1ECA684A8;
  if (!qword_1ECA684A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684A8);
  }

  return result;
}

unint64_t sub_1D8A6CA6C()
{
  result = qword_1ECA684B0;
  if (!qword_1ECA684B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684B0);
  }

  return result;
}

unint64_t sub_1D8A6CAC4()
{
  result = qword_1ECA684B8;
  if (!qword_1ECA684B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684B8);
  }

  return result;
}

uint64_t sub_1D8A6CB18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A6CC88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69646E756F7267 && a2 == 0xE900000000000067 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646E756F7267 && a2 == 0xED00006573726150 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573726170 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F437271 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x70696C43707061 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xED00007478655467 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEF746E65746E6F43 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646F6D69746C756DLL && a2 == 0xEA00000000006C61 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69746568746E7973 && a2 == 0xE900000000000063 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D8B439C0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B439A0 == a2)
  {

    return 13;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D8A6D110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D8B48030 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D8A6D324(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A6D36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A6D3D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D8A6D434()
{
  result = qword_1ECA684C0;
  if (!qword_1ECA684C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684C0);
  }

  return result;
}

uint64_t sub_1D8A6D488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8A6D510(char a1)
{
  result = 0x6E69646E756F7267;
  switch(a1)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 10:
      result = 0x646F6D69746C756DLL;
      break;
    case 11:
      result = 0x69746568746E7973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MetaDetectionResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 80);
  sub_1D8A6F960(v2, a2, type metadata accessor for DetectionRequest);
  v6 = type metadata accessor for MetaDetectionResult();
  v7 = *(v2 + v6[6]);
  v8 = *(v2 + v6[7]);
  v9 = *(v2 + v6[9]);
  v10 = (v2 + v6[10]);
  v11 = (a2 + v6[5]);
  v12 = *(a1 + 32);
  *v11 = *(a1 + 16);
  v11[1] = v12;
  v13 = *(a1 + 64);
  v11[2] = *(a1 + 48);
  v11[3] = v13;
  *(a2 + v6[6]) = v7;
  *(a2 + v6[7]) = v8;
  *(a2 + v6[8]) = v5;
  *(a2 + v6[9]) = v9;
  v15 = *v10;
  v14 = v10[1];
  v16 = (a2 + v6[10]);
  *v16 = v15;
  v16[1] = v14;
}

uint64_t MetaDetectionResult.modifyWithRotation(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D8A6F960(v2, a2, type metadata accessor for DetectionRequest);
  v5 = type metadata accessor for MetaDetectionResult();
  v6 = (v2 + v5[5]);
  v7 = v6[1];
  v21 = *v6;
  v22 = v7;
  v8 = v6[3];
  v23 = v6[2];
  v24 = v8;
  v19 = *(v2 + v5[7]);
  v20 = v4;
  sub_1D8A5A9D8(&v20, &v19, v25);
  v9 = *(v2 + v5[6]);
  v10 = *(v2 + v5[8]);
  v11 = *(v2 + v5[9]);
  v12 = (v2 + v5[10]);
  v13 = (a2 + v5[5]);
  v14 = v25[1];
  *v13 = v25[0];
  v13[1] = v14;
  v15 = v25[3];
  v13[2] = v25[2];
  v13[3] = v15;
  *(a2 + v5[6]) = v9;
  *(a2 + v5[7]) = v4;
  *(a2 + v5[8]) = v10;
  *(a2 + v5[9]) = v11;
  v16 = v12[1];
  v17 = (a2 + v5[10]);
  *v17 = *v12;
  v17[1] = v16;
}

uint64_t sub_1D8A6D8CC(unsigned __int8 *a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*a1);
  v2 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(v7);
  sub_1D8818BD0(v7, *&a1[v2[6]]);
  sub_1D88911A0(*&a1[v2[7]], *&a1[v2[7] + 8], *&a1[v2[7] + 16], *&a1[v2[7] + 24]);
  v3 = *&a1[v2[8]];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA720250](*&v3);
  v4 = sub_1D8B16D80();
  v5 = sub_1D8B15D60();
  v5[4] = v4;
  v5[5] = v4;
  v5[2] = 16;

  return sub_1D8B13220();
}

__n128 MetaDetectionResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MetaDetectionResult() + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double MetaDetectionResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for MetaDetectionResult() + 28));
  *a1 = result;
  return result;
}

unint64_t MetaDetectionResult.label.getter()
{
  result = 0x6E69646E756F7267;
  switch(*v0)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 0xA:
      result = 0x646F6D69746C756DLL;
      break;
    case 0xB:
      result = 0x69746568746E7973;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D8A6DC8C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7372656E726F63;
    if (v1 != 1)
    {
      v5 = 0x6E6F63655378616DLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x746174536B726F77;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x6E6F697461746F72;
    if (v1 != 3)
    {
      v3 = 0x6D617473656D6974;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8A6DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A6F6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A6DDBC(uint64_t a1)
{
  v2 = sub_1D8A6F1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6DDF8(uint64_t a1)
{
  v2 = sub_1D8A6F1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetaDetectionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA684D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A6F1E0();
  sub_1D8B16DD0();
  v20 = 0;
  type metadata accessor for DetectionRequest(0);
  sub_1D8A6F440(&qword_1ECA67858, type metadata accessor for DetectionRequest);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for MetaDetectionResult();
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 1;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 2;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AB0();
    LOBYTE(v16) = *(v3 + v9[9]);
    v15 = 5;
    sub_1D8A6F234();
    sub_1D8B16A80();
    LOBYTE(v16) = 6;
    sub_1D8B16A50();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MetaDetectionResult.hash(into:)(__int128 *a1)
{
  MEMORY[0x1DA720210](*v1);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(a1);
  sub_1D8818BD0(a1, *&v1[v3[6]]);
  sub_1D88911A0(*&v1[v3[7]], *&v1[v3[7] + 8], *&v1[v3[7] + 16], *&v1[v3[7] + 24]);
  v4 = *&v1[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  v5 = type metadata accessor for MetaDetectionResult();
  v6 = &v1[v5[5]];
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  v12 = v6[7];
  sub_1D8818B80(*v6, v6[1]);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8818B80(v11, v12);
  v13 = *&v1[v5[6]];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1DA720250](*&v13);
  v14 = *&v1[v5[7]];
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1DA720250](*&v14);
  v15 = *&v1[v5[8]];
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = v1[v5[9]];
  sub_1D8B16D40();
  if (v16 != 3)
  {
    MEMORY[0x1DA720210](v16);
  }

  if (!*&v1[v5[10] + 8])
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();

  return sub_1D8B15A60();
}

uint64_t MetaDetectionResult.hashValue.getter()
{
  sub_1D8B16D20();
  MetaDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t MetaDetectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA684E8);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MetaDetectionResult();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D8A6F1E0();
  v29 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v14 = v27;
  LOBYTE(v32) = 0;
  sub_1D8A6F440(&qword_1ECA67880, type metadata accessor for DetectionRequest);
  v15 = v28;
  sub_1D8B16A10();
  sub_1D8A6F9C8(v6, v12, type metadata accessor for DetectionRequest);
  v37 = 1;
  sub_1D881BC34();
  sub_1D8B16A10();
  v16 = &v12[v10[5]];
  v17 = v33;
  *v16 = v32;
  *(v16 + 1) = v17;
  v18 = v35;
  *(v16 + 2) = v34;
  *(v16 + 3) = v18;
  LOBYTE(v31) = 2;
  sub_1D8B169E0();
  *&v12[v10[6]] = v19;
  v36 = 3;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v12[v10[7]] = v31;
  LOBYTE(v31) = 4;
  sub_1D8B169E0();
  *&v12[v10[8]] = v20;
  v36 = 5;
  sub_1D8A6F288();
  sub_1D8B169B0();
  v12[v10[9]] = v31;
  LOBYTE(v31) = 6;
  v22 = sub_1D8B16970();
  v24 = v23;
  (*(v14 + 8))(v29, v15);
  v25 = &v12[v10[10]];
  *v25 = v22;
  v25[1] = v24;
  sub_1D8A6F960(v12, v26, type metadata accessor for MetaDetectionResult);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1D8A6FA30(v12, type metadata accessor for MetaDetectionResult);
}

uint64_t sub_1D8A6E7D0@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 80);
  sub_1D8A6F960(v3, a3, type metadata accessor for DetectionRequest);
  v8 = a2[6];
  v9 = *(v3 + v8);
  v10 = a2[7];
  v11 = a2[8];
  v12 = *(v3 + v10);
  v13 = a2[9];
  v14 = a2[10];
  v15 = *(v3 + v13);
  v17 = *(v3 + v14);
  v16 = *(v3 + v14 + 8);
  v18 = (a3 + a2[5]);
  v19 = *(a1 + 32);
  *v18 = *(a1 + 16);
  v18[1] = v19;
  v20 = *(a1 + 64);
  v18[2] = *(a1 + 48);
  v18[3] = v20;
  *(a3 + v8) = v9;
  *(a3 + v10) = v12;
  *(a3 + v11) = v7;
  *(a3 + v13) = v15;
  v21 = (a3 + v14);
  *v21 = v17;
  v21[1] = v16;
}

uint64_t sub_1D8A6E890()
{
  sub_1D8B16D20();
  MetaDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A6E8D4()
{
  sub_1D8B16D20();
  MetaDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A6E940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProcessorState(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_1D8A6F960(a1, v19, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A6F9C8(v19, v11, type metadata accessor for DetectionResult);
      sub_1D8A6F960(v11, v22, type metadata accessor for DetectionRequest);
      sub_1D8A6FA30(v11, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);
  }

  sub_1D8A6F9C8(v19, v22, type metadata accessor for DetectionRequest);
LABEL_6:
  v24 = &v22[*(v20 + 28)];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v59.origin.x = *v24;
  v59.origin.y = v26;
  v59.size.width = v27;
  v59.size.height = v28;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = v25;
  v60.origin.y = v26;
  v60.size.width = v27;
  v60.size.height = v28;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v25;
  v61.origin.y = v26;
  v61.size.width = v27;
  v61.size.height = v28;
  MaxX = CGRectGetMaxX(v61);
  v62.origin.x = v25;
  v62.origin.y = v26;
  v62.size.width = v27;
  v62.size.height = v28;
  v29 = CGRectGetMinY(v62);
  v63.origin.x = v25;
  v63.origin.y = v26;
  v63.size.width = v27;
  v63.size.height = v28;
  v30 = CGRectGetMinX(v63);
  v64.origin.x = v25;
  v64.origin.y = v26;
  v64.size.width = v27;
  v64.size.height = v28;
  MaxY = CGRectGetMaxY(v64);
  v65.origin.x = v25;
  v65.origin.y = v26;
  v65.size.width = v27;
  v65.size.height = v28;
  v32 = CGRectGetMaxX(v65);
  v66.origin.x = v25;
  v66.origin.y = v26;
  v66.size.width = v27;
  v66.size.height = v28;
  v33 = CGRectGetMaxY(v66);
  v34 = type metadata accessor for MetaDetectionResult();
  v35 = (a5 + v34[5]);
  v36 = MinY;
  *v35 = MinX;
  v35[1] = v36;
  v35[2] = MaxX;
  v35[3] = v29;
  v35[4] = v30;
  v35[5] = MaxY;
  v35[6] = v32;
  v35[7] = v33;
  sub_1D8A6F960(v22, a5, type metadata accessor for DetectionRequest);
  v37 = *v22;
  if (v37 <= 5)
  {
    if (*v22 <= 3u)
    {
      v38 = 5.0;
      if (v37 >= 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v37 != 4)
    {
      v38 = 10.0;
      goto LABEL_19;
    }

LABEL_18:
    v38 = 2.0;
    goto LABEL_19;
  }

  if (*v22 <= 8u)
  {
    if (v37 - 6 < 2)
    {
      v38 = 1.0;
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v37 - 9 >= 2)
  {
    if (v37 - 12 < 2)
    {
      goto LABEL_18;
    }

LABEL_28:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  v38 = 0.1;
LABEL_19:
  *(a5 + v34[6]) = v38;
  v39 = v55;
  CameraSourceFrame.rotationAngle.getter(v55, &v58);
  *(a5 + v34[7]) = v58;
  v40 = CameraSourceFrame.timestamp.getter(a3, v39);
  (*(*(a3 - 8) + 8))(a2, a3);
  sub_1D8A6FA30(v22, type metadata accessor for DetectionRequest);
  *(a5 + v34[8]) = v40;
  v41 = v57;
  sub_1D8A6F960(v57, v17, type metadata accessor for ProcessorState);
  v42 = swift_getEnumCaseMultiPayload();
  v43 = type metadata accessor for ProcessorState;
  if (v42)
  {
    v44 = v56;
    if (v42 == 1)
    {
      v45 = 1;
      v43 = type metadata accessor for ProcessorState;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40);

      v45 = 3;
      v43 = type metadata accessor for DetectionRequest;
    }
  }

  else
  {
    v45 = 0;
    v44 = v56;
  }

  sub_1D8A6FA30(v17, v43);
  *(a5 + v34[9]) = v45;
  sub_1D8A6F9C8(v41, v44, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v46 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48));
    v47 = *v46;
    v48 = v46[1];
    result = sub_1D8A6FA30(v44, type metadata accessor for DetectionRequest);
  }

  else
  {
    result = sub_1D8A6FA30(v44, type metadata accessor for ProcessorState);
    v47 = 0;
    v48 = 0;
  }

  v50 = (a5 + v34[10]);
  *v50 = v47;
  v50[1] = v48;
  return result;
}

BOOL _s22VisualIntelligenceCore19MetaDetectionResultV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v6 = type metadata accessor for DetectionRequest(0);
  if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&a1[v6[5]], &a2[v6[5]]) & 1) == 0 || (sub_1D894CAAC(*&a1[v6[6]], *&a2[v6[6]]) & 1) == 0)
  {
    return 0;
  }

  result = CGRectEqualToRect(*&a1[v6[7]], *&a2[v6[7]]);
  if (!result)
  {
    return result;
  }

  if (*&a1[v6[8]] != *&a2[v6[8]])
  {
    return 0;
  }

  v8 = type metadata accessor for MetaDetectionResult();
  v9 = &a1[v8[5]];
  v10 = v9[3];
  v24[2] = v9[2];
  v24[3] = v10;
  v11 = v9[1];
  v24[0] = *v9;
  v24[1] = v11;
  v12 = &a2[v8[5]];
  v13 = v12[1];
  v23[0] = *v12;
  v23[1] = v13;
  v14 = v12[3];
  v23[2] = v12[2];
  v23[3] = v14;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v24, v23) || *&a1[v8[6]] != *&a2[v8[6]] || *&a1[v8[7]] != *&a2[v8[7]] || *&a1[v8[8]] != *&a2[v8[8]])
  {
    return 0;
  }

  v15 = v8[9];
  v16 = a1[v15];
  v17 = a2[v15];
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = v8[10];
  v19 = &a1[v18];
  v20 = *&a1[v18 + 8];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  if (v20)
  {
    return v22 && (*v19 == *v21 && v20 == v22 || (sub_1D8B16BA0() & 1) != 0);
  }

  return !v22;
}

uint64_t type metadata accessor for MetaDetectionResult()
{
  result = qword_1EE0E5CD0;
  if (!qword_1EE0E5CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8A6F1E0()
{
  result = qword_1ECA684D8;
  if (!qword_1ECA684D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684D8);
  }

  return result;
}

unint64_t sub_1D8A6F234()
{
  result = qword_1ECA684E0;
  if (!qword_1ECA684E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684E0);
  }

  return result;
}

unint64_t sub_1D8A6F288()
{
  result = qword_1ECA684F0;
  if (!qword_1ECA684F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684F0);
  }

  return result;
}

uint64_t sub_1D8A6F2DC(void *a1)
{
  a1[1] = sub_1D8A6F440(&qword_1EE0E5CF0, type metadata accessor for MetaDetectionResult);
  a1[2] = sub_1D8A6F440(&qword_1EE0E5D08, type metadata accessor for MetaDetectionResult);
  a1[3] = sub_1D8A6F440(&qword_1EE0E5D00, type metadata accessor for MetaDetectionResult);
  result = sub_1D8A6F440(&qword_1EE0E5CE8, type metadata accessor for MetaDetectionResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A6F440(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D8A6F4B0()
{
  type metadata accessor for DetectionRequest(319);
  if (v0 <= 0x3F)
  {
    sub_1D8A6F590(319, &qword_1EE0E3AC8);
    if (v1 <= 0x3F)
    {
      sub_1D8A6F590(319, &qword_1EE0E3A20);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8A6F590(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D8B16470();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D8A6F5F0()
{
  result = qword_1ECA684F8;
  if (!qword_1ECA684F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684F8);
  }

  return result;
}

unint64_t sub_1D8A6F648()
{
  result = qword_1ECA68500;
  if (!qword_1ECA68500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68500);
  }

  return result;
}

unint64_t sub_1D8A6F6A0()
{
  result = qword_1ECA68508;
  if (!qword_1ECA68508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68508);
  }

  return result;
}

uint64_t sub_1D8A6F6F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B48060 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F63655378616DLL && a2 == 0xEF79616365447364 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746174536B726F77 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B48080 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8A6F960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A6F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A6FA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GenericParseDataResult.timestamp.setter(double a1)
{
  result = type metadata accessor for GenericParseDataResult();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1D8A6FB34(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F69746365746564;
    v6 = 0x736E69616D6F64;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v5 = 0x6D617473656D6974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD000000000000019;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000027;
    if (a1 == 4)
    {
      v3 = 0x6261686372616573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8A6FC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A71924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A6FCB0(uint64_t a1)
{
  v2 = sub_1D8A71050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6FCEC(uint64_t a1)
{
  v2 = sub_1D8A71050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericParseDataResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68510);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A71050();
  sub_1D8B16DD0();
  LOBYTE(v12) = 0;
  sub_1D8B13240();
  sub_1D8A713CC(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for GenericParseDataResult();
    LOBYTE(v12) = 1;
    sub_1D8B16AB0();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520);
    sub_1D8A71114(&qword_1ECA68528, &qword_1ECA68530);
    sub_1D8B16AE0();
    LOBYTE(v12) = 3;
    type metadata accessor for VisualUnderstandingContainer(0);
    sub_1D8A713CC(&qword_1ECA68538, type metadata accessor for VisualUnderstandingContainer);
    sub_1D8B16AE0();
    LOBYTE(v12) = 4;
    sub_1D8B16AA0();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68540);
    sub_1D8A71214(&qword_1ECA68548, &qword_1ECA68538);
    sub_1D8B16A80();
    LOBYTE(v12) = 6;
    sub_1D8B16A90();
    LOBYTE(v12) = 7;
    sub_1D8B16A90();
    LOBYTE(v12) = 8;
    sub_1D8B16AD0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GenericParseDataResult.hash(into:)(uint64_t a1)
{
  v37 = sub_1D8B13830();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - v5;
  v6 = sub_1D8B13AD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A713CC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v10 = type metadata accessor for GenericParseDataResult();
  v11 = *(v1 + *(v10 + 20));
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v36 = v10;
  v12 = *(v10 + 24);
  v38 = v1;
  v13 = *(v1 + v12);
  v14 = a1;
  MEMORY[0x1DA720210](*(v13 + 16));
  v15 = *(v13 + 16);
  if (v15)
  {
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v16(v9, v19, v6);
      sub_1D8A713CC(&qword_1ECA63170, MEMORY[0x1E69E03D8]);
      sub_1D8B157A0();
      (*(v17 - 8))(v9, v6);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  v21 = v36;
  v22 = v38;
  v23 = (v38 + *(v36 + 28));
  v24 = *v23;
  if (*v23 == 0.0)
  {
    v24 = 0.0;
  }

  v25 = v14;
  MEMORY[0x1DA720250](*&v24);
  v26 = type metadata accessor for VisualUnderstandingContainer(0);
  v27 = v34;
  sub_1D8A710A4(v23 + *(v26 + 20), v34);
  v28 = v35;
  v29 = v37;
  if ((*(v35 + 48))(v27, 1, v37) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    v30 = v33;
    (*(v28 + 32))(v33, v27, v29);
    sub_1D8B16D40();
    sub_1D8A713CC(&qword_1ECA635F0, MEMORY[0x1E69E0330]);
    sub_1D8B157A0();
    (*(v28 + 8))(v30, v29);
  }

  if (*(v23 + *(v26 + 24) + 8) >> 60 == 15)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D8B16D40();
    sub_1D8B13060();
  }

  sub_1D8B16D40();
  v31 = *(v22 + *(v21 + 36));
  sub_1D8B16D40();
  if (v31)
  {
    sub_1D87CFAE4(v25, v31);
  }

  sub_1D8B15A60();
  sub_1D8B15A60();
  return MEMORY[0x1DA720210](*(v22 + *(v21 + 48)));
}

uint64_t GenericParseDataResult.hashValue.getter()
{
  sub_1D8B16D20();
  GenericParseDataResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t GenericParseDataResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for VisualUnderstandingContainer(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13240();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68550);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = v28 - v8;
  v10 = type metadata accessor for GenericParseDataResult();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D8A71050();
  v35 = v9;
  v14 = v36;
  sub_1D8B16DB0();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v29 = v5;
    v15 = v31;
    v16 = v32;
    v36 = v10;
    LOBYTE(v39) = 0;
    sub_1D8A713CC(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
    sub_1D8B16A10();
    (*(v16 + 32))(v12, v34, v6);
    LOBYTE(v39) = 1;
    sub_1D8B169E0();
    v28[1] = v6;
    *&v12[v36[5]] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520);
    v38 = 2;
    sub_1D8A71114(&qword_1ECA68558, &qword_1ECA68560);
    sub_1D8B16A10();
    v18 = v15;
    *&v12[v36[6]] = v39;
    LOBYTE(v39) = 3;
    sub_1D8A713CC(&qword_1ECA68568, type metadata accessor for VisualUnderstandingContainer);
    v19 = v29;
    sub_1D8B16A10();
    sub_1D8A711B0(v19, &v12[v36[7]]);
    LOBYTE(v39) = 4;
    v12[v36[8]] = sub_1D8B169D0() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68540);
    v38 = 5;
    sub_1D8A71214(&qword_1ECA68570, &qword_1ECA68568);
    sub_1D8B169B0();
    *&v12[v36[9]] = v39;
    LOBYTE(v39) = 6;
    v20 = sub_1D8B169C0();
    v21 = &v12[v36[10]];
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v39) = 7;
    v23 = sub_1D8B169C0();
    v24 = &v12[v36[11]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v39) = 8;
    v26 = sub_1D8B16A00();
    (*(v18 + 8))(v35, v33);
    *&v12[v36[12]] = v26;
    sub_1D8A712B0(v12, v30);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_1D8A71314(v12, type metadata accessor for GenericParseDataResult);
  }
}

uint64_t sub_1D8A70DF4()
{
  sub_1D8B16D20();
  GenericParseDataResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A70E38()
{
  sub_1D8B16D20();
  GenericParseDataResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

BOOL _s22VisualIntelligenceCore22GenericParseDataResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GenericParseDataResult();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_1D88E19B4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0 || !_s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0((a1 + v5[7]), (a2 + v5[7])) || *(a1 + v5[8]) != *(a2 + v5[8]))
  {
    return 0;
  }

  v7 = v5[9];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    if (v9)
    {

      v10 = sub_1D88E19FC(v8, v9);

      if (v10)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:
  v11 = v5[10];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[11];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v5[12]) == *(a2 + v5[12]);
}

uint64_t type metadata accessor for GenericParseDataResult()
{
  result = qword_1EE0E5190;
  if (!qword_1EE0E5190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8A71050()
{
  result = qword_1ECA68518;
  if (!qword_1ECA68518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68518);
  }

  return result;
}

uint64_t sub_1D8A710A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A71114(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68520);
    sub_1D8A713CC(a2, MEMORY[0x1E69E03D8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A711B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A71214(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68540);
    sub_1D8A713CC(a2, type metadata accessor for VisualUnderstandingContainer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A712B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericParseDataResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A71314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A71374(uint64_t a1)
{
  result = sub_1D8A713CC(&qword_1ECA68578, type metadata accessor for GenericParseDataResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A713CC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D8A71538()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A71610();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VisualUnderstandingContainer(319);
      if (v2 <= 0x3F)
      {
        sub_1D8A71668();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A71610()
{
  if (!qword_1EE0E3A10)
  {
    sub_1D8B13AD0();
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A10);
    }
  }
}

void sub_1D8A71668()
{
  if (!qword_1EE0E3A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68540);
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A00);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericParseDataResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericParseDataResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8A71820()
{
  result = qword_1ECA68580;
  if (!qword_1ECA68580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68580);
  }

  return result;
}

unint64_t sub_1D8A71878()
{
  result = qword_1ECA68588;
  if (!qword_1ECA68588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68588);
  }

  return result;
}

unint64_t sub_1D8A718D0()
{
  result = qword_1ECA68590;
  if (!qword_1ECA68590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68590);
  }

  return result;
}

uint64_t sub_1D8A71924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746365746564 && a2 == 0xEB0000000064496ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B403F0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6261686372616573 && a2 == 0xEA0000000000656CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001D8B480A0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B40200 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B401E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B480D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(void *a1, unint64_t a2, int a3)
{
  LODWORD(v4) = a3;
  v96 = a1;
  v6 = sub_1D8B15240();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v98 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D8B15270();
  v89 = *(v95 - 8);
  v9 = MEMORY[0x1EEE9AC00](v95);
  v97 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = v84 - v11;
  v12 = type metadata accessor for TextDetectorResult(0);
  v13 = v3 + *(v12 + 48);
  v84[0] = *v13;
  v14 = v84[0];
  if (!v84[0])
  {
    v22 = v12;
    v23 = objc_opt_self();
    v24 = *(v3 + *(v22 + 44));
    sub_1D8A9FD8C(v24);
    v25 = sub_1D8B15940();

    v26 = [v23 scanString_];

    sub_1D881F764(0, &qword_1EE0E3768);
    v27 = sub_1D8B15CF0();

    v28 = v27;
    sub_1D8A9FD8C(v24);

    goto LABEL_58;
  }

  LODWORD(v88) = v4;
  v90 = a2;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = v84[0];
  v18 = [v17 text];
  if (v18)
  {
    v19 = v18;
    sub_1D8B15970();

    sub_1D8B16180();
    if (v20)
    {

      v21 = 0;
    }

    else
    {
      v29 = sub_1D8B15BB0();
      v31 = v30;
      v33 = v32;
      v14 = v34;

      MEMORY[0x1DA71EF10](v29, v31, v33, v14);
      v21 = v35;
    }
  }

  else
  {
    v21 = 0;
  }

  v36 = [v17 contentsWithTypes_];
  sub_1D881F764(0, &qword_1EE0E3770);
  v37 = sub_1D8B15CF0();

  v28 = sub_1D8A72674(v37);

  if (!v28)
  {

    goto LABEL_87;
  }

  if (v28 >> 62)
  {
    v38 = sub_1D8B16610();
  }

  else
  {
    v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x1E69E7CC0];
  v86 = v21;
  v87 = v17;
  if (v38)
  {
    v99 = MEMORY[0x1E69E7CC0];
    sub_1D8B16810();
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v40 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1DA71FC20](v40, v28);
      }

      else
      {
        v41 = *(v28 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = [v41 ddResult];

      sub_1D8B167E0();
      sub_1D8B16820();
      sub_1D8B16830();
      sub_1D8B167F0();
    }

    while (v38 != v40);

    v28 = v99;
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v99 = v39;
  v14 = (v28 & 0xFFFFFFFFFFFFFF8);
  if (v28 >> 62)
  {
    v44 = sub_1D8B16610();
  }

  else
  {
    v44 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v15 + v16;
  v45 = __OFADD__(v15, v16);
  if (!v44)
  {
    v93 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v46 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  do
  {
    v47 = v46;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1DA71FC20](v47, v28);
      }

      else
      {
        if (v47 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v50 = *(v28 + 8 * v47 + 32);
      }

      v51 = v50;
      v46 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v52 = [v50 range];
      if (v45)
      {
        goto LABEL_79;
      }

      v54 = &v52[v53];
      if (__OFADD__(v52, v53))
      {
        goto LABEL_80;
      }

      v55 = v4 >= v54 ? &v52[v53] : (v15 + v16);
      if (v15 >= v52 && v15 < v54)
      {
        v48 = __OFSUB__(v55, v15);
        v49 = &v55[-v15];
        if (v48)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v52 < v15 || v52 >= v4)
        {
          goto LABEL_31;
        }

        v48 = __OFSUB__(v55, v52);
        v49 = v55 - v52;
        if (v48)
        {
          goto LABEL_84;
        }
      }

      if (v49 >= 1)
      {
        break;
      }

LABEL_31:

      ++v47;
      if (v46 == v44)
      {
        goto LABEL_56;
      }
    }

    MEMORY[0x1DA71F1A0]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D8B15D20();
    }

    sub_1D8B15D70();
    v93 = v99;
  }

  while (v46 != v44);
LABEL_56:

  if (!v86)
  {
    v17 = v87;

    goto LABEL_87;
  }

  v14 = v84[0];
  v28 = v93;
  LOBYTE(v4) = v88;
  v17 = v87;
  if (!v93)
  {
LABEL_87:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_58:
  if (v28 >> 62)
  {
    goto LABEL_85;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

    v17 = v14;
    goto LABEL_87;
  }

  while (1)
  {
    v93 = v28;
    if (v4)
    {
      sub_1D8B15320();
      v28 = sub_1D8B15310();
    }

    else
    {
    }

    if (!v96[2])
    {
      break;
    }

    v99 = MEMORY[0x1E69E7CC0];
    if (v28 >> 62)
    {
LABEL_91:
      v57 = sub_1D8B16610();
      if (!v57)
      {
LABEL_92:

        v14 = v84[0];
        break;
      }
    }

    else
    {
      v57 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
        goto LABEL_92;
      }
    }

    v58 = 0;
    LOBYTE(v4) = v28 & 0xF8;
    v59 = (v89 + 8);
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x1DA71FC20](v58, v28);
      }

      else
      {
        if (v58 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v60 = *(v28 + 8 * v58 + 32);
      }

      v61 = v60;
      v62 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v14 = v94;
      MEMORY[0x1DA71F740]();
      v63 = sub_1D8B15260();
      (*v59)(v14, v95);
      if (v63)
      {
        sub_1D8B167E0();
        v14 = *(v99 + 16);
        sub_1D8B16820();
        sub_1D8B16830();
        sub_1D8B167F0();
      }

      else
      {
      }

      ++v58;
      if (v62 == v57)
      {
        goto LABEL_92;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    if (!sub_1D8B16610())
    {
      goto LABEL_86;
    }
  }

  if (v14)
  {
    v65 = sub_1D8B16240();
  }

  else
  {
    v65 = 0;
  }

  v99 = sub_1D8A73880(v66);
  sub_1D8A72B00(&v99);

  v67 = v99;
  if (v99 < 0 || (v99 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

  for (i = *(v99 + 16); i; i = sub_1D8B16610())
  {
    v69 = 0;
    v90 = v67 & 0xC000000000000001;
    v85 = (v89 + 8);
    v86 = (v89 + 16);
    v84[1] = (v92 + 32);
    v64 = MEMORY[0x1E69E7CC0];
    v88 = v67;
    v89 = v65;
    v87 = i;
    v70 = v97;
    while (1)
    {
      if (v90)
      {
        v71 = MEMORY[0x1DA71FC20](v69, v67);
      }

      else
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_117;
        }

        v71 = *(v67 + 8 * v69 + 32);
      }

      v72 = v71;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v96 = (v69 + 1);
      MEMORY[0x1DA71F740]();
      v73 = [v72 value];
      sub_1D8B15970();

      if (v65 && (v74 = [v72 range], *(v65 + 16)) && (sub_1D87F01A0(v74, v75), (v76 & 1) != 0))
      {
        v77 = v64;
      }

      else
      {
        v77 = v64;
      }

      v78 = v95;
      (*v86)(v94, v70, v95);

      sub_1D8B15210();
      (*v85)(v70, v78);
      v64 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1D87C84B0(0, v77[2] + 1, 1, v77);
      }

      v79 = v87;
      v67 = v88;
      v80 = v96;
      v82 = v64[2];
      v81 = v64[3];
      v65 = v89;
      if (v82 >= v81 >> 1)
      {
        v64 = sub_1D87C84B0(v81 > 1, v82 + 1, 1, v64);
      }

      v64[2] = v82 + 1;
      (*(v92 + 32))(v64 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v82, v98, v91);
      ++v69;
      if (v80 == v79)
      {
        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    ;
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_120:

  return v64;
}

uint64_t sub_1D8A72674(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D8B16810();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA71FC20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D8B167E0();
      sub_1D8B16820();
      sub_1D8B16830();
      sub_1D8B167F0();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D8B16610();
    sub_1D8B16810();
  }

  return v8;
}

uint64_t sub_1D8A727DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D87F3F54(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D87D3E4C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D87F3F54((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t (*sub_1D8A728F0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D8A73914;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8A72970(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1D8A729F0;
  }

  __break(1u);
  return result;
}

void (*sub_1D8A729F8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8A72A78;
  }

  __break(1u);
  return result;
}

void (*sub_1D8A72A80(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8A73918;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A72B00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D885D3A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D8A72B7C(v6);
  return sub_1D8B167F0();
}

void sub_1D8A72B7C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D881F764(0, &qword_1EE0E3768);
        v6 = sub_1D8B15D60();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D8A72DD0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D8A72C90(0, v2, 1, a1);
  }
}

void sub_1D8A72C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = sub_1D8B16280();
      if (v12 == sub_1D8B16280())
      {
        v13 = [v10 range];
        v14 = [v11 range];

        if (v13 >= v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = sub_1D8B16280();
        v16 = sub_1D8B16280();

        if (v15 >= v16)
        {
          goto LABEL_4;
        }
      }

      if (!v5)
      {
        break;
      }

      v17 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v17;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v21 + 8;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D8A72DD0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_135:
      v10 = sub_1D885CC68(v10);
    }

    v106 = *(v10 + 2);
    if (v106 >= 2)
    {
      while (*v6)
      {
        v107 = v10;
        v10 = (v106 - 1);
        v108 = *&v107[16 * v106];
        v109 = *&v107[16 * v106 + 24];
        sub_1D8A7352C((*v6 + 8 * v108), (*v6 + 8 * *&v107[16 * v106 + 16]), (*v6 + 8 * v109), v9);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v109 < v108)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1D885CC68(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_129;
        }

        v110 = &v107[16 * v106];
        *v110 = v108;
        *(v110 + 1) = v109;
        sub_1D885CBDC(v106 - 1);
        v10 = v107;
        v106 = *(v107 + 2);
        if (v106 <= 1)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_139;
    }

LABEL_113:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v11 = v9;
  v9 = (v9 + 1);
  if (v9 < v8)
  {
    v114 = v10;
    v116 = v5;
    v12 = *v6;
    v13 = v11;
    v14 = *(*v6 + 8 * v11);
    v15 = *(*v6 + 8 * v9);
    v16 = v14;
    v17 = sub_1D8B16280();
    if (v17 == sub_1D8B16280())
    {
      v18 = [v15 range];
      v19 = [v16 range];

      v20 = v18 < v19;
    }

    else
    {
      v21 = sub_1D8B16280();
      v22 = sub_1D8B16280();

      v20 = v21 < v22;
    }

    v23 = v20;
    v11 = v13;
    v9 = (v13 + 2);
    if (v13 + 2 >= v8)
    {
      v6 = a3;
      v10 = v114;
      v5 = v116;
      if (v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = (v12 + 8 * v13 + 16);
      do
      {
        v27 = *(v24 - 1);
        v28 = *v24;
        v29 = v27;
        v30 = sub_1D8B16280();
        if (v30 == sub_1D8B16280())
        {
          v31 = [v28 range];
          v32 = [v29 range];

          if (((v23 ^ (v31 >= v32)) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v25 = sub_1D8B16280();
          v26 = sub_1D8B16280();

          if (v23 == v25 >= v26)
          {
            goto LABEL_21;
          }
        }

        ++v24;
        v9 = (v9 + 1);
      }

      while (v8 != v9);
      v9 = v8;
LABEL_21:
      v6 = a3;
      v11 = v13;
      v10 = v114;
      v5 = v116;
      if (v23)
      {
LABEL_22:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        v33 = v9;
        if (v11 < v9)
        {
          v34 = 8 * v9 - 8;
          v35 = 8 * v11;
          v36 = v11;
          v7 = a1;
          do
          {
            v33 = (v33 - 1);
            if (v36 != v33)
            {
              v38 = *v6;
              if (!*v6)
              {
                goto LABEL_138;
              }

              v37 = *(v38 + v35);
              *(v38 + v35) = *(v38 + v34);
              *(v38 + v34) = v37;
            }

            v36 = (v36 + 1);
            v34 -= 8;
            v35 += 8;
          }

          while (v36 < v33);
          goto LABEL_31;
        }
      }
    }

    v7 = a1;
  }

LABEL_31:
  v39 = v6[1];
  if (v9 >= v39)
  {
    goto LABEL_52;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_131;
  }

  if (v9 - v11 >= a4)
  {
    goto LABEL_52;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_133;
  }

  if (v11 + a4 >= v39)
  {
    v40 = v6[1];
  }

  else
  {
    v40 = (v11 + a4);
  }

  if (v40 < v11)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v9 == v40)
  {
    goto LABEL_52;
  }

  v41 = v9;
  v115 = v10;
  v117 = v5;
  v42 = *v6;
  v43 = *v6 + 8 * v9 - 8;
  v111 = v11;
  v44 = v11 - v9;
  v45 = v41;
  v119 = v40;
LABEL_42:
  v120 = v45;
  v46 = *(v42 + 8 * v45);
  v47 = v44;
  v48 = v43;
  while (1)
  {
    v49 = *v48;
    v50 = v46;
    v51 = v49;
    v52 = sub_1D8B16280();
    if (v52 == sub_1D8B16280())
    {
      v53 = [v50 range];
      v54 = [v51 range];

      if (v53 >= v54)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v55 = sub_1D8B16280();
      v56 = sub_1D8B16280();

      if (v55 >= v56)
      {
        goto LABEL_41;
      }
    }

    if (!v42)
    {
      break;
    }

    v57 = *v48;
    v46 = *(v48 + 8);
    *v48 = v46;
    *(v48 + 8) = v57;
    v48 -= 8;
    if (__CFADD__(v47++, 1))
    {
LABEL_41:
      v45 = (v120 + 1);
      v43 += 8;
      --v44;
      if ((v120 + 1) != v119)
      {
        goto LABEL_42;
      }

      v9 = v119;
      v10 = v115;
      v5 = v117;
      v6 = a3;
      v7 = a1;
      v11 = v111;
LABEL_52:
      if (v9 < v11)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D87C7C5C(0, *(v10 + 2) + 1, 1, v10);
      }

      v60 = *(v10 + 2);
      v59 = *(v10 + 3);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v10 = sub_1D87C7C5C((v59 > 1), v60 + 1, 1, v10);
      }

      *(v10 + 2) = v61;
      v62 = &v10[16 * v60];
      *(v62 + 4) = v11;
      *(v62 + 5) = v9;
      v63 = *v7;
      if (!*v7)
      {
        goto LABEL_140;
      }

      if (v60)
      {
        while (1)
        {
          v64 = v61 - 1;
          if (v61 >= 4)
          {
            break;
          }

          if (v61 == 3)
          {
            v65 = *(v10 + 4);
            v66 = *(v10 + 5);
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
LABEL_72:
            if (v68)
            {
              goto LABEL_119;
            }

            v81 = &v10[16 * v61];
            v83 = *v81;
            v82 = *(v81 + 1);
            v84 = __OFSUB__(v82, v83);
            v85 = v82 - v83;
            v86 = v84;
            if (v84)
            {
              goto LABEL_122;
            }

            v87 = &v10[16 * v64 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v75 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v75)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v85, v90))
            {
              goto LABEL_126;
            }

            if (v85 + v90 >= v67)
            {
              if (v67 < v90)
              {
                v64 = v61 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          v91 = &v10[16 * v61];
          v93 = *v91;
          v92 = *(v91 + 1);
          v75 = __OFSUB__(v92, v93);
          v85 = v92 - v93;
          v86 = v75;
LABEL_86:
          if (v86)
          {
            goto LABEL_121;
          }

          v94 = &v10[16 * v64];
          v96 = *(v94 + 4);
          v95 = *(v94 + 5);
          v75 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v75)
          {
            goto LABEL_124;
          }

          if (v97 < v85)
          {
            goto LABEL_3;
          }

LABEL_93:
          v102 = v64 - 1;
          if (v64 - 1 >= v61)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

          if (!*v6)
          {
            goto LABEL_137;
          }

          v103 = *&v10[16 * v102 + 32];
          v104 = *&v10[16 * v64 + 40];
          sub_1D8A7352C((*v6 + 8 * v103), (*v6 + 8 * *&v10[16 * v64 + 32]), (*v6 + 8 * v104), v63);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v104 < v103)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D885CC68(v10);
          }

          if (v102 >= *(v10 + 2))
          {
            goto LABEL_116;
          }

          v105 = &v10[16 * v102];
          *(v105 + 4) = v103;
          *(v105 + 5) = v104;
          sub_1D885CBDC(v64);
          v61 = *(v10 + 2);
          if (v61 <= 1)
          {
            goto LABEL_3;
          }
        }

        v69 = &v10[16 * v61 + 32];
        v70 = *(v69 - 64);
        v71 = *(v69 - 56);
        v75 = __OFSUB__(v71, v70);
        v72 = v71 - v70;
        if (v75)
        {
          goto LABEL_117;
        }

        v74 = *(v69 - 48);
        v73 = *(v69 - 40);
        v75 = __OFSUB__(v73, v74);
        v67 = v73 - v74;
        v68 = v75;
        if (v75)
        {
          goto LABEL_118;
        }

        v76 = &v10[16 * v61];
        v78 = *v76;
        v77 = *(v76 + 1);
        v75 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v75)
        {
          goto LABEL_120;
        }

        v75 = __OFADD__(v67, v79);
        v80 = v67 + v79;
        if (v75)
        {
          goto LABEL_123;
        }

        if (v80 >= v72)
        {
          v98 = &v10[16 * v64 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v75 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v75)
          {
            goto LABEL_127;
          }

          if (v67 < v101)
          {
            v64 = v61 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_72;
      }

LABEL_3:
      v8 = v6[1];
      v7 = a1;
      if (v9 >= v8)
      {
        goto LABEL_103;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}