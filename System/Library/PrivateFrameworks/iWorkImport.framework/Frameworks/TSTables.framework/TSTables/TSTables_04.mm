void *sub_221159D74(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_221159FD0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_22115A034(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v2 |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v3);
  *(v2 + 24) = 0;
  result = TSUIndexSet::operator=();
  *(a1 + 8) = v2 + 32;
  return result;
}

uint64_t sub_22115A08C(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 5;
  v2 = v1 + 1;
  if ((v1 + 1) >> 59)
  {
    sub_22107C148();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 4 > v2)
  {
    v2 = v4 >> 4;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFE0)
  {
    v5 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v17 = a1;
  if (v5)
  {
    sub_22115A1B8(a1, v5);
  }

  v6 = 32 * v1;
  v14 = 0;
  v15 = v6;
  v16 = (32 * v1);
  *v6 |= 3u;
  *&v7.f64[0] = 0x8000000080000000;
  *&v7.f64[1] = 0x8000000080000000;
  *(v6 + 8) = vnegq_f64(v7);
  *(v6 + 24) = 0;
  TSUIndexSet::operator=();
  *&v16 = v16 + 32;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  sub_22115A200(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_22115A2D0(&v14);
  return v13;
}

void sub_22115A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22115A2D0(va);
  _Unwind_Resume(a1);
}

void sub_22115A1B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22115A200(uint64_t a1, TSUIndexSet *a2, TSUIndexSet *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    *&v8.f64[0] = 0x8000000080000000;
    *&v8.f64[1] = 0x8000000080000000;
    v10 = vnegq_f64(v8);
    do
    {
      v9 = a4 + v7 * 32;
      *v9 = *(a4 + v7 * 32) | 3;
      *(v9 + 8) = v10;
      *(v9 + 24) = 0;
      TSUIndexSet::operator=();
      ++v7;
    }

    while (&v6[v7] != a3);
    while (v6 != a3)
    {
      TSUIndexSet::~TSUIndexSet(v6++);
    }
  }
}

void sub_22115A2A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 32);
    v5 = -v2;
    do
    {
      TSUIndexSet::~TSUIndexSet(v4);
      v4 = (v6 - 32);
      v5 += 32;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22115A2D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    TSUIndexSet::~TSUIndexSet((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22115A320(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2210874C4(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_22115A450(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22115A698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22115A6AC(uint64_t a1)
{
  sub_221159784(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22115A6E8(uint64_t a1)
{
  sub_221159AE8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22115A724(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        TSUIndexSet::~TSUIndexSet(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22115A8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCETrackedReferenceTSPObjectDeprecated;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void TSTRegisterPersistentClasses(void *a1)
{
  v211 = a1;
  v1 = TST::TableInfoArchive::default_instance(v211);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v2, 6000, v1, off_2812E4498[54], "TSTTableInfo");
  v4 = TST::TableModelArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v5, 6001, v4, off_2812E4498[84], "TSTTableModel");
  v7 = TST::TableStyleArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v8, 6003, v7, off_2812E4498[160], "TSTTableStyle");
  v10 = TST::CellStyleArchive::default_instance(v9);
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v11, 6004, v10, off_2812E4498[162], "TSTCellStyle");
  v13 = TST::ConditionalStyleSetArchive::default_instance(v12);
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v14, 6010, v13, off_2812E4498[178], "TSTConditionalStyleSet");
  v16 = TST::Tile::default_instance(v15);
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v17, 6002, v16, off_2812E4498[18], "TSTTableTile");
  v19 = TST::TableDataList::default_instance(v18);
  google::protobuf::internal::AssignDescriptors();
  v21 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v20, 6005, v19, off_2812E4498[38], "TSTTableDataList");
  v22 = TST::TableDataListSegment::default_instance(v21);
  google::protobuf::internal::AssignDescriptors();
  v24 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v23, 6011, v22, off_2812E4498[40], "TSTTableDataListSegment");
  v25 = TST::HeaderStorageBucket::default_instance(v24);
  google::protobuf::internal::AssignDescriptors();
  v27 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v26, 6006, v25, off_2812E4498[48], "TSTTableHeaderStorageBucket");
  v28 = TST::WPTableInfoArchive::default_instance(v27);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v29, 6007, v28, off_2812E4498[58], "TSTWPTableInfo");
  v30 = sub_2216E1F08();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v31, 6009, v30, off_2812E4660[14], "TSTTableStrokePreset");
  v32 = sub_2216E15C8();
  google::protobuf::internal::AssignDescriptors();
  v34 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v33, 6008, v32, off_2812E4660[12], "TSTTableStylePreset");
  v35 = TST::SelectionArchive::default_instance(v34);
  google::protobuf::internal::AssignDescriptors();
  v37 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v36, 6030, v35, off_2812E4498[142], "TSTArchivedCellSelection");
  v38 = TST::DeathhawkRdar39989167CellSelectionArchive::default_instance(v37);
  google::protobuf::internal::AssignDescriptors();
  v40 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v39, 6032, v38, off_2812E4498[144], "TSTArchivedRdar39989167CellSelection");
  v41 = TST::StrokeSelectionArchive::default_instance(v40);
  google::protobuf::internal::AssignDescriptors();
  v43 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v42, 6295, v41, off_2812E4498[146], "TSTArchivedStrokeSelection");
  v44 = TST::AutofillSelectionArchive::default_instance(v43);
  google::protobuf::internal::AssignDescriptors();
  v46 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v45, 6311, v44, off_2812E4498[154], "TSTArchivedAutofillSelection");
  v47 = TST::CellMapArchive::default_instance(v46);
  google::protobuf::internal::AssignDescriptors();
  v49 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v48, 6031, v47, off_2812E4498[104], "TSTCellMap");
  v50 = TST::ConcurrentCellMapArchive::default_instance(v49);
  google::protobuf::internal::AssignDescriptors();
  v52 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v51, 6033, v50, off_2812E4498[110], "TSTConcurrentCellMap");
  v53 = TST::ConcurrentCellListArchive::default_instance(v52);
  google::protobuf::internal::AssignDescriptors();
  v55 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v54, 6034, v53, off_2812E4498[114], "TSTConcurrentCellList");
  v56 = TST::FormulaEqualsTokenAttachmentArchive::default_instance(v55);
  google::protobuf::internal::AssignDescriptors();
  v58 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v57, 6179, v56, off_2812E4498[286], "TSTFormulaEqualsTokenAttachment");
  v59 = TST::TokenAttachmentArchive::default_instance(v58);
  google::protobuf::internal::AssignDescriptors();
  v61 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v60, 6181, v59, off_2812E4498[196], "TSTWPTokenAttachment");
  v62 = TST::ExpressionNodeArchive::default_instance(v61);
  google::protobuf::internal::AssignDescriptors();
  v64 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v63, 6182, v62, off_2812E4498[198], "TSTExpressionNode");
  v65 = TST::BooleanNodeArchive::default_instance(v64);
  google::protobuf::internal::AssignDescriptors();
  v67 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v66, 6183, v65, off_2812E4498[200], "TSTBooleanNode");
  v68 = TST::NumberNodeArchive::default_instance(v67);
  google::protobuf::internal::AssignDescriptors();
  v70 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v69, 6184, v68, off_2812E4498[202], "TSTNumberNode");
  v71 = TST::StringNodeArchive::default_instance(v70);
  google::protobuf::internal::AssignDescriptors();
  v73 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v72, 6185, v71, off_2812E4498[204], "TSTStringNode");
  v74 = TST::ArrayNodeArchive::default_instance(v73);
  google::protobuf::internal::AssignDescriptors();
  v76 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v75, 6186, v74, off_2812E4498[208], "TSTArrayNode");
  v77 = TST::ListNodeArchive::default_instance(v76);
  google::protobuf::internal::AssignDescriptors();
  v79 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v78, 6187, v77, off_2812E4498[210], "TSTListNode");
  v80 = TST::VariableNodeArchive::default_instance(v79);
  google::protobuf::internal::AssignDescriptors();
  v82 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v81, 6298, v80, off_2812E4498[232], "TSTVariableNode");
  v83 = TST::SpillOriginRefNodeArchive::default_instance(v82);
  google::protobuf::internal::AssignDescriptors();
  v85 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v84, 6384, v83, off_2812E4498[234], "TSTSpillOriginRefNode");
  v86 = TST::OperatorNodeArchive::default_instance(v85);
  google::protobuf::internal::AssignDescriptors();
  v88 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v87, 6188, v86, off_2812E4498[212], "TSTOperatorNode");
  v89 = TST::PostfixOperatorNodeArchive::default_instance(v88);
  google::protobuf::internal::AssignDescriptors();
  v91 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v90, 6194, v89, off_2812E4498[214], "TSTPostfixOperatorNode");
  v92 = TST::PrefixOperatorNodeArchive::default_instance(v91);
  google::protobuf::internal::AssignDescriptors();
  v94 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v93, 6195, v92, off_2812E4498[216], "TSTPrefixOperatorNode");
  v95 = TST::FunctionNodeArchive::default_instance(v94);
  google::protobuf::internal::AssignDescriptors();
  v97 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v96, 6189, v95, off_2812E4498[218], "TSTFunctionNode");
  v98 = TST::FunctionEndNodeArchive::default_instance(v97);
  google::protobuf::internal::AssignDescriptors();
  v100 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v99, 6196, v98, off_2812E4498[220], "TSTFunctionEndNode");
  v101 = TST::DateNodeArchive::default_instance(v100);
  google::protobuf::internal::AssignDescriptors();
  v103 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v102, 6190, v101, off_2812E4498[222], "TSTDateNode");
  v104 = TST::ReferenceNodeArchive::default_instance(v103);
  google::protobuf::internal::AssignDescriptors();
  v106 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v105, 6191, v104, off_2812E4498[224], "TSTReferenceNode");
  v107 = TST::DurationNodeArchive::default_instance(v106);
  google::protobuf::internal::AssignDescriptors();
  v109 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v108, 6192, v107, off_2812E4498[226], "TSTDurationNode");
  v110 = TST::ArgumentPlaceholderNodeArchive::default_instance(v109);
  google::protobuf::internal::AssignDescriptors();
  v112 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v111, 6193, v110, off_2812E4498[228], "TSTArgumentPlaceholderNode");
  v113 = TST::IdentifierNodeArchive::default_instance(v112);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v114, 6235, v113, off_2812E4498[206], "TSTIdentifierNode");
  v118 = objc_msgSend_setDeprecatedMessageType_(v211, v115, 6236, v116, v117);
  v119 = TST::MergeRegionMapArchive::default_instance(v118);
  google::protobuf::internal::AssignDescriptors();
  v121 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v120, 6144, v119, off_2812E4498[102], "TSTMergeRegionMap");
  v122 = TST::EmptyExpressionNodeArchive::default_instance(v121);
  google::protobuf::internal::AssignDescriptors();
  v124 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v123, 6197, v122, off_2812E4498[230], "TSTEmptyExpressionNode");
  v125 = TST::LayoutHintArchive::default_instance(v124);
  google::protobuf::internal::AssignDescriptors();
  v127 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v126, 6198, v125, off_2812E4498[236], "TSTArchivedLayoutHint");
  v128 = TST::CompletionTokenAttachmentArchive::default_instance(v127);
  google::protobuf::internal::AssignDescriptors();
  v130 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v129, 6199, v128, off_2812E4498[238], "TSTCompletionToken");
  v131 = TST::TableDataList::default_instance(v130);
  v133 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v211, v132, 6201, v131, "TSTTableDataList");
  v134 = TST::HiddenStateFormulaOwnerArchive::default_instance(v133);
  google::protobuf::internal::AssignDescriptors();
  v136 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v135, 6204, v134, off_2812E4498[240], "TSTHiddenStateFormulaOwner");
  v137 = TST::PopUpMenuModel::default_instance(v136);
  google::protobuf::internal::AssignDescriptors();
  v139 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v138, 6206, v137, off_2812E4498[26], "TSTPopUpMenuModel");
  v140 = TST::RichTextPayloadArchive::default_instance(v139);
  google::protobuf::internal::AssignDescriptors();
  v142 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v141, 6218, v140, off_2812E4498[284], "TSTRichTextPayload");
  v143 = TST::FilterSetArchive::default_instance(v142);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v144, 6220, v143, off_2812E4498[180], "TSTTableFilterSet");
  v148 = objc_msgSend_setDeprecatedMessageType_(v211, v145, 6219, v146, v147);
  v149 = TST::TableStyleNetworkArchive::default_instance(v148);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v150, 6247, v149, off_2812E4498[60], "TSTTableStyleNetwork");
  objc_msgSend_setDeprecatedMessageType_(v211, v151, 6248, v152, v153);
  v157 = objc_msgSend_setDeprecatedMessageType_(v211, v154, 6249, v155, v156);
  v158 = TST::ColumnRowUIDMapArchive::default_instance(v157);
  google::protobuf::internal::AssignDescriptors();
  v160 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v159, 6267, v158, off_2812E4498[90], "TSTColumnRowUIDMap");
  v161 = TST::SummaryModelArchive::default_instance(v160);
  google::protobuf::internal::AssignDescriptors();
  v163 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v162, 6316, v161, off_2812E4498[86], "TSTSummaryModel");
  v164 = TST::SummaryCellVendorArchive::default_instance(v163);
  google::protobuf::internal::AssignDescriptors();
  v166 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v165, 6317, v164, off_2812E4498[302], "TSTSummaryCellVendor");
  v167 = TST::CategoryOrderArchive::default_instance(v166);
  google::protobuf::internal::AssignDescriptors();
  v169 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v168, 6318, v167, off_2812E4498[304], "TSTCategoryOrder");
  v170 = TST::StrokeSidecarArchive::default_instance(v169);
  google::protobuf::internal::AssignDescriptors();
  v172 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v171, 6305, v170, off_2812E4498[96], "TSTStrokeSidecar");
  v173 = TST::StrokeLayerArchive::default_instance(v172);
  google::protobuf::internal::AssignDescriptors();
  v175 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v174, 6306, v173, off_2812E4498[94], "TSTStrokeLayer");
  v176 = TST::PencilAnnotationArchive::default_instance(v175);
  google::protobuf::internal::AssignDescriptors();
  v178 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v177, 6363, v176, off_2812E4498[250], "TSTPencilAnnotation");
  v179 = TST::HeaderNameMgrTileArchive::default_instance(v178);
  google::protobuf::internal::AssignDescriptors();
  v181 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v180, 6365, v179, off_2812E4498[310], "TSTHeaderNameMgrTile");
  v182 = TST::HeaderNameMgrArchive::default_instance(v181);
  google::protobuf::internal::AssignDescriptors();
  v184 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v183, 6366, v182, off_2812E4498[314], "TSTHeaderNameMgr");
  v185 = TST::PivotOwnerArchive::default_instance(v184);
  google::protobuf::internal::AssignDescriptors();
  v187 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v186, 6370, v185, off_2812E4498[282], "TSTPivotOwner");
  v188 = TST::PivotGroupingColumnOptionsMapArchive::default_instance(v187);
  google::protobuf::internal::AssignDescriptors();
  v190 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v189, 6374, v188, off_2812E4498[280], "TSTPivotGroupingColumnOptionsMap");
  v191 = TST::PivotOrderArchive::default_instance(v190);
  google::protobuf::internal::AssignDescriptors();
  v193 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v192, 6369, v191, off_2812E4498[306], "TSTPivotRowColumnOrder");
  v194 = TST::CategoryOwnerRefArchive::default_instance(v193);
  google::protobuf::internal::AssignDescriptors();
  v196 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v195, 6372, v194, off_2812E4498[278], "TSTCategoryOwner");
  v197 = TST::GroupByArchive::default_instance(v196);
  google::protobuf::internal::AssignDescriptors();
  v199 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v198, 6373, v197, off_2812E4498[274], "TSTGroupBy");
  v200 = TST::GroupByArchive_AggregatorArchive::default_instance(v199);
  google::protobuf::internal::AssignDescriptors();
  v202 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v201, 6382, v200, off_2812E4498[266], "TSTAggregator");
  v203 = TST::GroupByArchive_GroupNodeArchive::default_instance(v202);
  google::protobuf::internal::AssignDescriptors();
  v205 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v204, 6383, v203, off_2812E4498[272], "TSTGroupNode");
  v206 = TST::CellDiffArray::default_instance(v205);
  google::protobuf::internal::AssignDescriptors();
  v208 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v207, 6367, v206, off_2812E4498[124], "TSTCellDiffArray");
  v209 = TST::CellDiffArraySegment::default_instance(v208);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v211, v210, 6368, v209, off_2812E4498[126], "TSTCellDiffArraySegment");
}

void sub_22115BEB8(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_22115CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  TST::CellDiffArchive::~CellDiffArchive(va);
  _Unwind_Resume(a1);
}

TSCEASTFunctionElement *sub_22115CB54(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  sub_22115D72C(a1 + 17, &v8);
  return this;
}

uint64_t sub_22115CBA4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 80))(a2, a1);
  if (v4)
  {
    v10 = objc_msgSend_functionIndex(v4, v5, v6, v7, v8);
    sub_22115D960((a1 + 136), &v10);
  }

  return a2;
}

uint64_t sub_22115CC48(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 80))(a2, a1);
  if (v4)
  {
    v10 = objc_msgSend_functionIndex(v4, v5, v6, v7, v8);
    sub_22115D960((a1 + 136), &v10);
  }

  return a2;
}

void sub_22115CE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSCEFunctionsInUse;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22115CF70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22115D274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22115D6D8(va);

  _Unwind_Resume(a1);
}

void sub_22115D5CC(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A22D0;
  sub_2210BDEC0(a1 + 136);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22115D634(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A22D0;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 1065353216;
  v6 = TSCEFormulaRewriteContext::containingCell(a3);
  v7 = *&v6->var0.var0.coordinate.row;
  *(a1 + 192) = v6->var0.var0._tableUID._upper;
  *(a1 + 176) = v7;
  *(a1 + 96) = 1;
  return a1;
}

void sub_22115D6BC(_Unwind_Exception *a1)
{
  sub_2210BDEC0(v2);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v1, v4);
  _Unwind_Resume(a1);
}

void sub_22115D6D8(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A22D0;
  sub_2210BDEC0(a1 + 136);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

uint64_t **sub_22115D72C(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **sub_22115D960(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22115DB94(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t **sub_22115DBD8(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22115E36C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4, a5);
  objc_msgSend_p_convertToUuidBasedCellListUsingTableInfo_pruneCategorizedCells_(v8, v6, *(a1 + 40), *(a1 + 48), v7);
}

void *sub_22115ECD8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_2210BC5FC(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_22115EDA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2210BC7C0(va);
  _Unwind_Resume(a1);
}

void sub_22115F32C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), a2, a2, a4, a5);
  objc_msgSend_p_accumulateBordersConcurrentlyUsingBlock_accumulateCellsConcurrentlyUsingBlock_(v8, v6, *(a1 + 32), *(a1 + 40), v7);
}

void sub_22115F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22115FACC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  objc_msgSend_p_clearDataListIDs(v9, v5, v6, v7, v8);
}

__n128 sub_2211600C4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221160114(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22116CA58(a1, v5);
  }
}

void sub_22116019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4, a5);
  v12 = objc_msgSend_gatherer(TSTCellRegionGatherer, v8, v9, v10, v11);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0x7FFFFFFF;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4012000000;
  v35 = sub_2211603E4;
  v36 = nullsub_14;
  v37 = &unk_22188E88F;
  v38 = *MEMORY[0x277D81490];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2211603F4;
  v26[3] = &unk_27845FC70;
  v29 = *(a1 + 48);
  v27 = *(a1 + 40);
  v30 = &v39;
  v31 = &v32;
  v13 = v12;
  v28 = v13;
  objc_msgSend_p_simpleInvokeBlock_(v7, v14, v26, v15, v16);
  v17 = *(v33 + 14) | 0x100000000;
  v25.origin.row = *(v40 + 6);
  v25.origin.column = v33[6];
  v25.size = v17;
  if (TSUCellRect::isValid(&v25))
  {
    objc_msgSend_addRange_(v13, v18, *&v25.origin, *&v25.size, v21);
  }

  v22 = objc_msgSend_gatheredCellRegion(v13, v18, v19, v20, v21);
  v23 = *(*(*(a1 + 56) + 8) + 48);
  v24 = *(v23 + 8 * a2);
  *(v23 + 8 * a2) = v22;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v39, 8);
}

void sub_221160390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

__n128 sub_2211603E4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2211603F4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = (*(*(a1 + 48) + 16))();
  if (result)
  {
    if (a3 == 0x7FFFFFFF || (a3 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v10 = *(a1 + 32);
      v11 = a2[1];
      v18[0] = *a2;
      v18[1] = v11;
      result = objc_msgSend_cellIDForCellUID_(v10, v7, v18, v8, v9);
      a3 = result;
    }

    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 24);
    if (v13 != 0x7FFFFFFF)
    {
      v14 = *(*(a1 + 64) + 8);
      if (v13 == a3)
      {
        v15 = *(v14 + 56);
        if (v15 + *(v14 + 48) == WORD2(a3))
        {
          *(v14 + 56) = v15 + 1;
        }

        else
        {
          result = objc_msgSend_addRange_(*(a1 + 40), v7, a3 | (*(v14 + 48) << 32), *(v14 + 56) | 0x100000000, v9);
          v17 = *(*(a1 + 64) + 8);
          *(v17 + 48) = WORD2(a3);
          *(v17 + 56) = 1;
        }

        return result;
      }

      result = objc_msgSend_addRange_(*(a1 + 40), v7, v13 & 0xFFFF0000FFFFFFFFLL | (*(v14 + 48) << 32), *(v14 + 56) | 0x100000000, v9);
      v12 = *(*(a1 + 56) + 8);
    }

    *(v12 + 24) = a3;
    v16 = *(*(a1 + 64) + 8);
    *(v16 + 48) = WORD2(a3);
    *(v16 + 56) = 1;
  }

  return result;
}

void sub_221160BA4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 80), a2, a2, a4, a5);
  objc_msgSend_p_enumerateCellsAddedAndRemovedOfType_usingBlock_(v8, v6, a1[6], a1[5], v7);
}

void sub_221160DEC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 80), a2, a2, a4, a5);
  objc_msgSend_p_enumerateCellsAddedOfType_usingBlock_(v8, v6, a1[6], a1[5], v7);
}

void sub_221161020(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4, a5);
  objc_msgSend_p_enumerateCellsAddedAndRemovedForFormatsUsingBlock_(v9, v6, *(a1 + 40), v7, v8);
}

void sub_221161330(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, a2, a4, a5);
  objc_msgSend_p_enumerateRowsOfCellsConcurrentlyUsingBlock_(v9, v6, *(a1 + 32), v7, v8);
}

void sub_2211616C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 > 4)
  {
    if (a2 > 7)
    {
      switch(a2)
      {
        case 8:
          v24 = *(a1 + 32);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_221162438;
          v30[3] = &unk_27845FD60;
          v31 = *(a1 + 104);
          objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v24, v25, 8, 0, v30);
          v7 = v31;
          break;
        case 9:
          v18 = *(a1 + 32);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = sub_221162568;
          v28[3] = &unk_27845FD60;
          v29 = *(a1 + 112);
          objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v18, v19, 9, 0, v28);
          v7 = v29;
          break;
        case 10:
          v10 = *(a1 + 32);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = sub_221162698;
          v26[3] = &unk_27845FD60;
          v27 = *(a1 + 120);
          objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v10, v11, 10, 0, v26);
          v7 = v27;
          break;
        default:
          return;
      }
    }

    else if (a2 == 5)
    {
      v22 = *(a1 + 32);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_2211620A8;
      v36[3] = &unk_27845FD60;
      v37 = *(a1 + 80);
      objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v22, v23, 5, 0, v36);
      v7 = v37;
    }

    else
    {
      v5 = *(a1 + 32);
      if (a2 == 6)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2211621D8;
        v34[3] = &unk_27845FD60;
        v35 = *(a1 + 88);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v5, v17, 6, 0, v34);
        v7 = v35;
      }

      else
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = sub_221162308;
        v32[3] = &unk_27845FD60;
        v33 = *(a1 + 96);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v5, v6, 7, 0, v32);
        v7 = v33;
      }
    }

    goto LABEL_26;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v20 = *(a1 + 32);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_221161D94;
      v42[3] = &unk_27845FD60;
      v43 = *(a1 + 56);
      objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v20, v21, 2, 0, v42);
      v7 = v43;
    }

    else
    {
      v8 = *(a1 + 32);
      if (a2 == 3)
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = sub_221161EC4;
        v40[3] = &unk_27845FD60;
        v41 = *(a1 + 64);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v8, v16, 3, 0, v40);
        v7 = v41;
      }

      else
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_221161F78;
        v38[3] = &unk_27845FD60;
        v39 = *(a1 + 72);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v8, v9, 4, 0, v38);
        v7 = v39;
      }
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_221161C48;
    v44[3] = &unk_27845FD60;
    v14 = *(a1 + 32);
    v45 = *(a1 + 40);
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v14, v15, 0, 0, v44);
    v7 = v45;
LABEL_26:

    return;
  }

  if (a2 == 1)
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);

    MEMORY[0x2821F9670](v13, sel_p_enumerateCellsAddedAndRemovedForFormatsWithOptions_usingBlock_, 0, v12, a5);
  }
}

void sub_221161C48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v32 = a4;
  v7 = a5;
  v12 = objc_msgSend_stringValue(v32, v8, v9, v10, v11);
  if (v12)
  {
  }

  else
  {
    v17 = objc_msgSend_stringValue(v7, v13, v14, v15, v16);

    if (!v17)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_2", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 587, 0, "should only be enumerating the cells of interest (stringValue)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221161D94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasFormula(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasFormula(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_3", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 594, 0, "should only be enumerating the cells of interest (hasFormula)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221161EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v24 = a4;
  v7 = a5;
  if ((objc_msgSend_hasCellStyle(v24, v8, v9, v10, v11) & 1) != 0 || (objc_msgSend_hasCellStyle(v7, v12, v13, v14, v15) & 1) != 0 || (objc_msgSend_hasTextStyle(v24, v16, v17, v18, v19) & 1) != 0 || objc_msgSend_hasTextStyle(v7, v20, v21, v22, v23))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_221161F78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasFormulaAnyError(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasFormulaAnyError(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_5", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 606, 0, "should only be enumerating the cells of interest (hasFormulaAnyError)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2211620A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasRichText(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasRichText(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_6", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 611, 0, "should only be enumerating the cells of interest (hasRichText)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2211621D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasConditionalStyle(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasConditionalStyle(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_7", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 616, 0, "should only be enumerating the cells of interest (hasConditionalStyle)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221162308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasCommentStorage(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasCommentStorage(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_8", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 621, 0, "should only be enumerating the cells of interest (hasCommentStorage)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221162438(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasImportWarningSet(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasImportWarningSet(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_9", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 626, 0, "should only be enumerating the cells of interest (hasImportWarningSet)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221162568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v30 = a4;
  v7 = a5;
  if ((objc_msgSend_hasControl(v30, v8, v9, v10, v11) & 1) == 0 && (objc_msgSend_hasControl(v7, v12, v13, v14, v15) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_10", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 631, 0, "should only be enumerating the cells of interest (hasControl)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_221162C98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);

  return MEMORY[0x2821F9670](v6, sel_p_pruneToBaseWithBaseMap_viewMap_, v8, v9, v7);
}

uint64_t sub_221162EE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  v8 = *(a1 + 40);

  return MEMORY[0x2821F9670](v6, sel_p_pruneToBaseWithBaseMap_viewMap_, v8, 0, v7);
}

void sub_221163090(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4, a5);
  objc_msgSend_p_convertToInverseCellMap(v9, v5, v6, v7, v8);
}

void sub_2211636BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectLocale(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_count(*(*(a1 + 32) + 80), v7, v8, v9, v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221163794;
  v13[3] = &unk_27845FB10;
  v13[4] = *(a1 + 32);
  v14 = v6;
  v12 = v6;
  dispatch_apply(v11, 0, v13);
}

void sub_221163794(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4, a5);
  objc_msgSend_p_setObjectLocale_(v9, v6, *(a1 + 40), v7, v8);
}

__n128 sub_221163D44(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221163D94(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22116CBC4(a1, v5);
  }
}

void sub_221163E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, a2, a4, a5);
  v10 = objc_msgSend_copyWithZone_(v13, v7, *(a1 + 48), v8, v9);
  v11 = *(*(*(a1 + 32) + 8) + 48);
  v12 = *(v11 + 8 * a2);
  *(v11 + 8 * a2) = v10;
}

void sub_221164450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2211658A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  _Block_object_dispose(&a40, 8);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v49 - 192), 8);
  v51 = *(v49 - 144);
  if (v51)
  {
    *(v49 - 136) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221165954(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221165978(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_221165990(void *a1, uint64_t a2)
{
  v3 = a2 - a1[6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = v5 + 16 * v3;
  v8 = (v7 + 16);
  v9 = v6 - (v7 + 16);
  if (v6 != v7 + 16)
  {
    memmove((v5 + 16 * v3), v8, v6 - (v7 + 16));
  }

  *(v4 + 56) = v7 + v9;
  v10 = a1[4];
  v11 = a1[7];
  v12 = a1[8];

  return objc_msgSend_p_pruneCellsAtRow_rowsSize_columnsSize_(v10, v8, v3, v11, v12);
}

uint64_t sub_221165A10(void *a1, uint64_t a2)
{
  v3 = a2 - a1[6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = v5 + 16 * v3;
  v8 = (v7 + 16);
  v9 = v6 - (v7 + 16);
  if (v6 != v7 + 16)
  {
    memmove((v5 + 16 * v3), v8, v6 - (v7 + 16));
  }

  *(v4 + 56) = v7 + v9;
  v10 = a1[4];
  v11 = a1[7];
  v12 = a1[8];

  return objc_msgSend_p_pruneCellsAtColumn_rowsSize_columnsSize_(v10, v8, v3, v11, v12);
}

void **sub_221165C5C(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4++ = 0;
        v9 = *v7;
        *v7++ = v8;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v10 = *--v6;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_221166314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25)
{
  for (i = 96; i != -8; i -= 8)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void *sub_2211663C4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_2210C836C(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

char *sub_221166464(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_2210C836C(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_22116CCC4(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_221166600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_221166638(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_2210C836C(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_22116CCC4(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_2211667D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22116680C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_22115DB94(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

char *sub_2211668A8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      sub_22115DB94(a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    sub_22116CDC4(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_221166A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_221166A78(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      sub_22115DB94(a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    sub_22116CDC4(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 2;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_221166C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2211687C4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_2210874C4(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_221168C88(uint64_t a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  TSTMakeCellUID(v5);
  v4 = *(*(*(a1 + 32) + 144) + 8 * a2);
  (*(*(a1 + 40) + 16))();
}

void sub_221168F38(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 144) + 8 * a2);
  if (v3)
  {
    memset(v4, 0, sizeof(v4));
    TSTMakeCellUID(v4);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_221169198(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_msgSend_unsignedIntegerValue(v10, v6, v7, v8, v9);
  (*(*(a1 + 40) + 16))();
}

void sub_221169A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221169B4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221169B64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_asCustomFormatWrapper(a2, a2, a3, a4, a5);
  if (v6)
  {
    v40 = v6;
    v7 = (*(*(a1 + 32) + 16))();
    v12 = objc_msgSend_formatType(v7, v8, v9, v10, v11);
    if (v12 != objc_msgSend_formatType(v40, v13, v14, v15, v16))
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTConcurrentCellList p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:]_block_invoke", v19, v20);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 1597, 0, "Expected the custom format replacement to be of the same type as the original.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v32 = *(*(*(a1 + 40) + 8) + 40);
    if (!v32)
    {
      v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19, v20);
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;

      v32 = *(*(*(a1 + 40) + 8) + 40);
    }

    v36 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v17, v40, v7, v20);
    objc_msgSend_addObject_(v32, v37, v36, v38, v39);

    v6 = v40;
  }
}

void *sub_22116A0A0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_22116A11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_22116A130(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22116A210(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22116A774(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116AC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_22116C7FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

uint64_t sub_22116C87C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_2210BC5FC(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  sub_2210BC654(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2210BC7C0(&v14);
  return v13;
}

void sub_22116C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2210BC7C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22116C9DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_22116CA3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116CA58(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_22116CB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22116CBC4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_22116CCB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_22116CCC4(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      sub_2210C836C(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void *sub_22116CDC4(void *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result];
      }

      sub_22115DB94(result[4], v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 2;
  return result;
}

uint64_t sub_22116CEC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_22116CF18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116CF34(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    sub_2210BC2A8(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2210BC26C(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    sub_22116D07C(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        v18 -= 8;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    sub_22116D07C(&v20, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        v13 += 8;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void **sub_22116D07C(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_22116D0D8(uint64_t *a1, uint64_t a2, void **a3, void **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_22107C148();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v31[4] = a1;
    if (v15)
    {
      sub_22107C1F0(a1, v15);
    }

    v25 = (8 * (v13 >> 3));
    v31[0] = 0;
    v31[1] = v25;
    v31[3] = 0;
    v26 = 8 * a5;
    v27 = &v25[a5];
    do
    {
      v28 = *v7++;
      *v25++ = v28;
      v26 -= 8;
    }

    while (v26);
    v31[2] = v27;
    v5 = sub_221122FD0(a1, v31, v5);
    sub_22107C26C(v31);
    return v5;
  }

  v16 = v10 - a2;
  v17 = (v10 - a2) >> 3;
  if (v17 >= a5)
  {
    sub_221122E10(a1, a2, a1[1], (a2 + 8 * a5));
    v24 = &v7[a5];
    v23 = v7;
    goto LABEL_18;
  }

  v19 = a1[1];
  v30 = (a3 + v16);
  if ((a3 + v16) != a4)
  {
    v19 = a1[1];
    v20 = (a3 + v16);
    v21 = v19;
    do
    {
      v22 = *v20++;
      *v21++ = v22;
      ++v19;
    }

    while (v20 != a4);
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    sub_221122E10(a1, v5, v10, &v5[a5]);
    v23 = v7;
    v24 = v30;
LABEL_18:
    sub_22116D07C(v31, v23, v24, v5);
  }

  return v5;
}

void sub_22116D294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_22116D2A8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2210BC26C(result, a2);
  }

  return result;
}

void *sub_22116D394(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22116D40C(result, a2);
  }

  return result;
}

void sub_22116D3F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116D40C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_22115DB94(a1, a2);
  }

  sub_22107C148();
}

void sub_22116DC34(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_22116E2E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSTCellDiffArraySegment;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_22116E4A4(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSTCellDiffArraySegment;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void *sub_22116E554(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_221127690(result, a2);
  }

  return result;
}

void sub_22116E5B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116EB30(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_22116EC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116EC44(uint64_t a1, void *__src, size_t __n)
{
  *(a1 + 16) |= 2u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v5 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + __n) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_22116ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211708CC(uint64_t a1, void *a2)
{
  v12 = a2;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  if (objc_msgSend_count(*(*(a1 + 32) + 64), v4, v5, v6, v7) == 1)
  {
    v11 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 64), v8, 0, v9, v10);
    *(*(a1 + 32) + 144) = v11;
  }
}

void sub_221170984(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v36, v40, 16);
  if (v8)
  {
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(a1 + 32) + 112);
        v12 = objc_msgSend_keys(*(*(&v36 + 1) + 8 * v10), v4, v5, v6, v7);
        objc_msgSend_removeIndexes_(v11, v13, v12, v14, v15);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v36, v40, 16);
    }

    while (v8);
  }

  *(*(a1 + 32) + 121) = 0;
  v20 = *(a1 + 32);
  if (v20[122] == 1)
  {
    if (*(a1 + 40) == 1)
    {
      v21 = objc_msgSend_documentRoot(v20, v16, v17, v18, v19);
      v26 = objc_msgSend_customFormatList(v21, v22, v23, v24, v25);

      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a1 + 32);
    if (*(v28 + 124) == 2)
    {
      v29 = objc_msgSend_isNewForBraveNewCell(*(a1 + 32), v16, v17, v18, v19) ^ 1;
      v28 = *(a1 + 32);
    }

    else
    {
      v29 = 0;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_221170C08;
    v31[3] = &unk_27845FF40;
    v31[4] = v28;
    v33 = *(a1 + 40);
    v30 = v27;
    v32 = v30;
    v34 = *(a1 + 41);
    v35 = v29;
    sub_221170F5C(v28, v31);
  }
}

void sub_221170C08(uint64_t a1, void *a2)
{
  v7 = a2;
  v105 = v7;
  v8 = *(a1 + 32);
  if (*(v8 + 124) == 2)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    v14 = v9;
    if (v9)
    {
      v15 = objc_msgSend_format(v9, v10, v11, v12, v13);
      v20 = objc_msgSend_asCurrencyFormat(v15, v16, v17, v18, v19);

      if (v20)
      {
        v25 = objc_msgSend_currencyCode(v20, v21, v22, v23, v24);

        if (!v25)
        {
          v103 = objc_alloc(MEMORY[0x277D80640]);
          v102 = objc_msgSend_decimalPlaces(v20, v26, v27, v28, v29);
          v101 = objc_msgSend_negativeStyle(v20, v30, v31, v32, v33);
          v38 = objc_msgSend_showThousandsSeparator(v20, v34, v35, v36, v37);
          v43 = objc_msgSend_accountingStyle(v20, v39, v40, v41, v42);
          v48 = objc_msgSend_context(*(a1 + 32), v44, v45, v46, v47);
          v53 = objc_msgSend_documentRoot(v48, v49, v50, v51, v52);
          v58 = objc_msgSend_documentLocale(v53, v54, v55, v56, v57);
          v63 = objc_msgSend_currencyCode(v58, v59, v60, v61, v62);
          v65 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v103, v64, v102, v101, v38, v43, v63);

          objc_msgSend_setPayload_(v14, v66, v65, v67, v68);
        }
      }

      v69 = objc_msgSend_format(v14, v21, v22, v23, v24);
      v74 = objc_msgSend_asCustomFormatWrapper(v69, v70, v71, v72, v73);

      if (v74)
      {
        if (*(a1 + 48) == 1)
        {
          v79 = *(a1 + 40);
          if (v79)
          {
            v80 = objc_msgSend_customFormatKey(v74, v75, v76, v77, v78);
            v84 = objc_msgSend_customFormatForKey_(v79, v81, v80, v82, v83);

            if (v84 && (v89 = objc_msgSend_formatType(v74, v85, v86, v87, v88), v89 == objc_msgSend_formatType(v84, v90, v91, v92, v93)))
            {
              v96 = objc_msgSend_populatedCustomFormatWrapperFromCFWrapper_customFormat_(MEMORY[0x277D80650], v94, v74, v84, v95);
              objc_msgSend_setPayload_(v14, v97, v96, v98, v99);
            }

            else
            {
              v96 = v74;
            }

            v74 = v96;
          }
        }

        *(*(a1 + 32) + 121) = 1;
      }
    }

    v8 = *(a1 + 32);
  }

  v104 = objc_msgSend_payload(v7, v3, v4, v5, v6);
  sub_2211775F4((v8 + 72), &v104, &v104, &v105, v100);
}

void sub_221170F5C(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = *(a1 + 64);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v25, 16);
    if (v6)
    {
      v7 = *v18;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_221172444;
        v14[3] = &unk_27845FF90;
        v15 = v3;
        v16 = &v21;
        objc_msgSend_enumerateObjectsWithBlock_(v9, v10, v14, v11, v12);
        LOBYTE(v9) = *(v22 + 24);

        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v13, &v17, v25, 16);
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v21, 8);
  }
}

void sub_22117110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211712C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_221171338(id a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 18);
    if (!v2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v4 = *(a1 + 8);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
      if (v10)
      {
        v11 = *v17;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v2 = *(*(&v16 + 1) + 8 * v12);
          v13 = objc_msgSend_keyRange(v2, v6, v7, v8, v9, v16);
          if (a2 >= v13 && a2 - v13 < v6)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v2 = 0;
      }
    }

    a1 = v2;
  }

  return a1;
}

void sub_221172114(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

char *sub_221172150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  if (a1 && a2)
  {
    v7 = a1[18];
    if (!v7)
    {
      v7 = sub_221171338(a1, a2);
    }

    v6 = objc_msgSend_objectAtIndexedSubscript_(v7, v6, a2, a4, a5);
  }

  return v6;
}

id sub_2211723D4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  if (a1)
  {
    if (a2)
    {
      v9 = a1[18];
      if (!v9)
      {
        v9 = sub_221171338(a1, a2);
      }

      v7 = objc_msgSend_contentsOfObjectForKey_(v9, a2, a2, a4, a5);
    }

    v5 = vars8;
  }

  return v7;
}

uint64_t sub_221172444(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_2211726CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22117272C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v17 = v5;
  v11 = objc_msgSend_key(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_format(v17, v12, v13, v14, v15);
  (*(v6 + 16))(v6, v11, v16, *(*(a1 + 40) + 8) + 24);

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221172A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221172A90(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v17 = v5;
  v11 = objc_msgSend_key(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_customFormat(v17, v12, v13, v14, v15);
  (*(v6 + 16))(v6, v11, v16, *(*(a1 + 40) + 8) + 24);

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221172D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221172D50(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v17 = v5;
  v11 = objc_msgSend_key(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_refCount(v17, v12, v13, v14, v15);
  (*(v6 + 16))(v6, v11, v16, *(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221172FB8(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = a2;
  v5 = v68;
  v10 = objc_msgSend_cellSpec(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_asFormulaSpec(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_key(v5, v16, v17, v18, v19);
  if (v15)
  {
    v25 = v20;
    v26 = *(a1 + 40);
    v27 = objc_msgSend_formulaObject(v15, v21, v22, v23, v24);
    v28 = (*(v26 + 16))(v26, v27, v25, a3);

    if (v28)
    {
      v33 = objc_msgSend_formulaObject(v15, v29, v30, v31, v32);

      if (v28 != v33)
      {
        if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
        {
          objc_msgSend_willModify(*(a1 + 32), v34, v35, v36, v37);
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        v38 = *(a1 + 32);
        if (v38[122] == 1)
        {
          objc_msgSend_p_clearReverseMapForObject_atKey_(v38, v34, v5, v25, v37);
        }

        v39 = [TSTCellFormulaSpec alloc];
        v44 = objc_msgSend_context(*(a1 + 32), v40, v41, v42, v43);
        v49 = objc_msgSend_documentRoot(v44, v45, v46, v47, v48);
        v54 = objc_msgSend_documentLocale(v49, v50, v51, v52, v53);
        v57 = objc_msgSend_initWithFormulaObject_locale_(v39, v55, v28, v54, v56);

        objc_msgSend_setPayload_(v5, v58, v57, v59, v60);
        v65 = *(a1 + 32);
        if (*(v65 + 122) == 1)
        {
          v67 = objc_msgSend_payload(v5, v61, v62, v63, v64);
          sub_2211775F4((v65 + 72), &v67, &v67, &v68, v66);
        }
      }
    }
  }
}

void sub_221173404(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = a2;
  v5 = v34;
  v10 = objc_msgSend_key(v5, v6, v7, v8, v9);
  v11 = *(a1 + 40);
  v16 = objc_msgSend_conditionalStyleSet(v5, v12, v13, v14, v15);
  v17 = (*(v11 + 16))(v11, v16, v10, a3);

  if (v17)
  {
    v22 = objc_msgSend_conditionalStyleSet(v5, v18, v19, v20, v21);

    if (v17 != v22)
    {
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        objc_msgSend_willModify(*(a1 + 32), v23, v24, v25, v26);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      if (*(a1 + 56) == 1)
      {
        objc_msgSend_p_clearReverseMapForObject_atKey_(*(a1 + 32), v23, v5, v10, v26);
      }

      objc_msgSend_setPayload_(v5, v23, v17, v25, v26);
      if (*(a1 + 56) == 1)
      {
        v31 = *(a1 + 32);
        v33 = objc_msgSend_payload(v5, v27, v28, v29, v30);
        sub_2211775F4((v31 + 72), &v33, &v33, &v34, v32);
      }
    }
  }
}

void sub_221173750(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = v27;
  v8 = objc_msgSend_key(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_commentStorage(v3, v9, v10, v11, v12);
  v18 = (*(*(a1 + 40) + 16))();
  if (v18 != v13)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v14, v15, v16, v17);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v19 = *(a1 + 32);
    if (v19[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v19, v14, v3, v8, v17);
    }

    objc_msgSend_setPayload_(v3, v14, v18, v16, v17);
    v24 = *(a1 + 32);
    if (*(v24 + 122) == 1)
    {
      v26 = objc_msgSend_payload(v3, v20, v21, v22, v23);
      sub_2211775F4((v24 + 72), &v26, &v26, &v27, v25);
    }
  }
}

void sub_221173A80(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = v29;
  v8 = objc_msgSend_key(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_style(v3, v9, v10, v11, v12);
  v14 = (*(*(a1 + 40) + 16))();
  v19 = v14;
  if (v14)
  {
    v20 = v14 == v13;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v15, v16, v17, v18);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v21 = *(a1 + 32);
    if (v21[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v21, v15, v3, v8, v18);
    }

    objc_msgSend_setPayload_(v3, v15, v19, v17, v18);
    v26 = *(a1 + 32);
    if (*(v26 + 122) == 1)
    {
      v28 = objc_msgSend_payload(v3, v22, v23, v24, v25);
      sub_2211775F4((v26 + 72), &v28, &v28, &v29, v27);
    }
  }
}

void sub_221173DB4(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = v29;
  v8 = objc_msgSend_key(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_formulaError(v3, v9, v10, v11, v12);
  v14 = (*(*(a1 + 40) + 16))();
  v19 = v14;
  if (v14)
  {
    v20 = v14 == v13;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v15, v16, v17, v18);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v21 = *(a1 + 32);
    if (v21[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v21, v15, v3, v8, v18);
    }

    objc_msgSend_setPayload_(v3, v15, v19, v17, v18);
    v26 = *(a1 + 32);
    if (*(v26 + 122) == 1)
    {
      v28 = objc_msgSend_payload(v3, v22, v23, v24, v25);
      sub_2211775F4((v26 + 72), &v28, &v28, &v29, v27);
    }
  }
}

void sub_2211740E8(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = v33;
  v8 = objc_msgSend_key(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_richTextStorage(v3, v9, v10, v11, v12);
  v14 = (*(*(a1 + 40) + 16))();
  v19 = v14;
  if (v14)
  {
    v20 = v14 == v13;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v15, v16, v17, v18);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v21 = *(a1 + 32);
    if (v21[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v21, v15, v3, v8, v18);
    }

    v22 = objc_msgSend_payloadWithStorage_(TSTRichTextPayload, v15, v19, v17, v18);
    objc_msgSend_setPayload_(v3, v23, v22, v24, v25);

    v30 = *(a1 + 32);
    if (*(v30 + 122) == 1)
    {
      v32 = objc_msgSend_payload(v3, v26, v27, v28, v29);
      sub_2211775F4((v30 + 72), &v32, &v32, &v33, v31);
    }
  }
}

void sub_221174444(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = v27;
  v8 = objc_msgSend_key(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_format(v3, v9, v10, v11, v12);
  v18 = (*(*(a1 + 40) + 16))();
  if (v18 != v13)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v14, v15, v16, v17);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v19 = *(a1 + 32);
    if (v19[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v19, v14, v3, v8, v17);
    }

    objc_msgSend_setPayload_(v3, v14, v18, v16, v17);
    v24 = *(a1 + 32);
    if (*(v24 + 122) == 1)
    {
      v26 = objc_msgSend_payload(v3, v20, v21, v22, v23);
      sub_2211775F4((v24 + 72), &v26, &v26, &v27, v25);
    }
  }
}

void sub_221174728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221174770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221174788(uint64_t a1, void *a2)
{
  v61 = a2;
  v3 = v61;
  v8 = objc_msgSend_key(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_style(v3, v9, v10, v11, v12);
  v18 = objc_msgSend_stylesheet(v13, v14, v15, v16, v17);
  v19 = *(a1 + 32);

  if (v18 != v19)
  {
    v24 = *(*(*(a1 + 48) + 8) + 40);
    if (!v24)
    {
      v25 = objc_msgSend_documentRoot(*(a1 + 40), v20, v21, v22, v23);
      v30 = objc_msgSend_makeStyleMapper(v25, v26, v27, v28, v29);
      v31 = *(*(a1 + 48) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;

      v24 = *(*(*(a1 + 48) + 8) + 40);
    }

    v33 = objc_msgSend_mappedStyleForStyle_(v24, v20, v13, v22, v23);
    v38 = objc_msgSend_stylesheet(v33, v34, v35, v36, v37);
    v39 = *(a1 + 32);

    if (v38 != v39)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSTTableDataList repairStyleDatalistStylesheetIfNecessary]_block_invoke", v41, v42);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v46, v47);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v48, 969, 0, "Expected new style to be in the document stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
    }

    if (*(a1 + 64) == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(*(a1 + 40), v40, v3, v8, v42);
    }

    objc_msgSend_setPayload_(v3, v40, v33, v41, v42);
    if (*(a1 + 64) == 1)
    {
      v58 = *(a1 + 40);
      v60 = objc_msgSend_payload(v3, v54, v55, v56, v57);
      sub_2211775F4((v58 + 72), &v60, &v60, &v61, v59);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_221175048(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v9 = objc_msgSend_payload(v10, v4, v5, v6, v7);
  sub_2211775F4((v3 + 72), &v9, &v9, &v10, v8);
}

void sub_22117536C(uint64_t a1, void *a2)
{
  v45 = a2;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableDataList(Type_Specific_API) allRichTextStorages]_block_invoke", v5, v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1191, 0, "invalid nil value for '%{public}s'", "richTextObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = objc_msgSend_richTextStorage(v7, v3, v4, v5, v6);

  if (!v19)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTTableDataList(Type_Specific_API) allRichTextStorages]_block_invoke", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 1192, 0, "invalid nil value for '%{public}s'", "richTextObject.richTextStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (v7)
  {
    v35 = objc_msgSend_richTextStorage(v7, v20, v21, v22, v23);

    if (v35)
    {
      v40 = *(a1 + 32);
      v41 = objc_msgSend_richTextStorage(v7, v36, v37, v38, v39);
      objc_msgSend_addObject_(v40, v42, v41, v43, v44);
    }
  }
}

void sub_22117587C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_format(a2, a2, a3, a4, a5);
  if (objc_msgSend_formatType(v11, v7, v8, v9, v10) == 267)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id sub_2211759C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_asCustomFormatWrapper(v3, v4, v5, v6, v7);
  if (v8)
  {
    v9 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v10;
}

id sub_221175B68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_customFormatKey(v3, v5, v6, v7, v8);
  LODWORD(v4) = objc_msgSend_isEqual_(v4, v10, v9, v11, v12);

  v13 = v3;
  if (v4)
  {
    v14 = objc_alloc(MEMORY[0x277D80650]);
    v19 = objc_msgSend_formatType(v3, v15, v16, v17, v18);
    v20 = *(a1 + 32);
    v24 = objc_msgSend_customFormatForKey_(*(a1 + 40), v21, v20, v22, v23);
    v13 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v14, v25, v19, v20, v24);
  }

  return v13;
}

void sub_221176E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221176E94(uint64_t a1, void *a2)
{
  v64 = a2;
  v7 = objc_msgSend_key(v64, v3, v4, v5, v6);
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  objc_opt_class();
  v13 = objc_msgSend_format(v8, v9, v10, v11, v12);
  v14 = TSUDynamicCast();

  if (v14)
  {
    v19 = *(*(a1 + 56) + 8);
    if ((*(v19 + 24) & 1) == 0)
    {
      *(v19 + 24) = 1;
      if (!*(a1 + 32))
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTTableDataList(Upgrade) upgradeCellFormatsU2_0]_block_invoke", v17, v18);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 1449, 0, "invalid nil value for '%{public}s'", "customFormatList");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      }

      objc_msgSend_willModifyForUpgrade(*(a1 + 40), v15, v16, v17, v18);
    }

    v31 = *(a1 + 32);
    v32 = objc_msgSend_legacyID(v14, v15, v16, v17, v18);
    v36 = objc_msgSend_upgradedCustomFormatKeyForLegacyID_(v31, v33, v32, v34, v35);
    v40 = objc_msgSend_customFormatForKey_(*(a1 + 32), v37, v36, v38, v39);
    v41 = objc_alloc(MEMORY[0x277D80650]);
    v46 = objc_msgSend_formatType(v40, v42, v43, v44, v45);
    v48 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v41, v47, v46, v36, v40);
    v49 = [TSTTableDataFormat alloc];
    v54 = objc_msgSend_refCount(v8, v50, v51, v52, v53);
    inited = objc_msgSend_initObjectWithFormat_refCount_(v49, v55, v48, v54, v56);
    objc_msgSend_setKey_(inited, v58, v7, v59, v60);
    objc_msgSend_addObject_(*(a1 + 48), v61, inited, v62, v63);
  }
}

id sub_22117728C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByUpgradingToLinkedRefAtHostCellRef_(a2, a2, a1 + 32, a4, a5);

  return v5;
}

id sub_22117738C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_customFormatKey(v3, v4, v5, v6, v7);
  v16 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, v8, v10, v11);
  if (!v16)
  {
    v16 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v12, v13, v14, v15);
    objc_msgSend_setObject_forKey_(*(a1 + 32), v17, v16, v8, v18);
  }

  v19 = objc_alloc(MEMORY[0x277D80650]);
  v24 = objc_msgSend_formatType(v3, v20, v21, v22, v23);
  v29 = objc_msgSend_customFormat(v3, v25, v26, v27, v28);
  v31 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v19, v30, v24, v16, v29);

  return v31;
}

void sub_2211775BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t **sub_2211775F4(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_tst_dataObjectHash(*a2, a2, a3, a4, a5);
  v11 = v7;
  v12 = a1[1];
  if (!*&v12)
  {
    goto LABEL_18;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v7;
    if (v7 >= *&v12)
    {
      v15 = v7 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v7;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_tst_dataObjectIsEqual_(v17[2], v8, *a2, v9, v10) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v17;
}

void sub_221177870(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_221177940(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_tst_dataObjectHash(*a2, a2, a3, a4, a5);
  v11 = v7;
  v12 = a1[1];
  if (!*&v12)
  {
    goto LABEL_18;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v7;
    if (v7 >= *&v12)
    {
      v15 = v7 % *&v12;
    }
  }

  else
  {
    v15 = (*&v12 - 1) & v7;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v11)
    {
      break;
    }

    if (v14 > 1)
    {
      if (v18 >= *&v12)
      {
        v18 %= *&v12;
      }
    }

    else
    {
      v18 &= *&v12 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_tst_dataObjectIsEqual_(v17[2], v8, *a2, v9, v10) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v17;
}

uint64_t **sub_221177BBC(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_tst_dataObjectHash(*a2, a2, a3, a4, a5);
  v11 = a1[1];
  if (!*&v11)
  {
    return 0;
  }

  v12 = v7;
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = v7;
    if (v7 >= *&v11)
    {
      v15 = v7 % *&v11;
    }
  }

  else
  {
    v15 = (*&v11 - 1) & v7;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  for (i = *v16; i; i = *i)
  {
    v18 = i[1];
    if (v18 == v12)
    {
      if (objc_msgSend_tst_dataObjectIsEqual_(i[2], v8, *a2, v9, v10))
      {
        return i;
      }
    }

    else
    {
      if (v14 > 1)
      {
        if (v18 >= *&v11)
        {
          v18 %= *&v11;
        }
      }

      else
      {
        v18 &= *&v11 - 1;
      }

      if (v18 != v15)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_221177CB8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_221177870(&v6, v3);
  }

  return v2;
}

uint64_t sub_221177D04(uint64_t a1)
{
  sub_221177D40(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221177D40(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_2211786BC(_DWORD *result, _DWORD *a2)
{
  v2 = a2[1];
  v3 = *a2 == 0x7FFFFFFF || v2 == 0x7FFFFFFF;
  if (!v3 && *result != 0x7FFFFFFF)
  {
    v4 = result[1];
    if (v4 != 0x7FFFFFFF)
    {
      *result += *a2;
      result[1] = v4 + v2;
    }
  }

  return result;
}

unint64_t TSCEGridDimensions::nextCoordRowMajorOrder(TSCEGridDimensions *this, const TSCEGridCoord *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  if (a2->column == 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
LABEL_3:
    v5 = HIDWORD(*a2);
    return v3 | (v5 << 32);
  }

  LODWORD(v5) = 0x7FFFFFFF;
  if (v4 == 0x7FFFFFFF)
  {
    return v3 | (v5 << 32);
  }

  if (this->width)
  {
    v6 = this->width - 1 > v3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    LODWORD(v3) = v3 + 1;
    goto LABEL_3;
  }

  height = this->height;
  v8 = height != 0;
  v9 = height - 1;
  v10 = v8;
  v11 = v9 > v4;
  v12 = v4 + 1;
  if ((v10 & v11) != 0)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  if ((v10 & v11) != 0)
  {
    LODWORD(v5) = v12;
  }

  else
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v3 | (v5 << 32);
}

unint64_t TSCEGridDimensions::nextCoordColumnMajorOrder(TSCEGridDimensions *this, const TSCEGridCoord *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  if (a2->column == 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  else if (v4 == 0x7FFFFFFF)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  else
  {
    height = this->height;
    v6 = height != 0;
    v7 = height - 1;
    if (v6 && v7 > v4)
    {
      LODWORD(v4) = v4 + 1;
    }

    else
    {
      width = this->width;
      v6 = width != 0;
      v10 = width - 1;
      v11 = v6;
      v12 = v10 > v3;
      if ((v11 & v12) != 0)
      {
        LODWORD(v3) = v3 + 1;
      }

      else
      {
        LODWORD(v3) = 0x7FFFFFFF;
      }

      if ((v11 & v12) != 0)
      {
        LODWORD(v4) = 0;
      }

      else
      {
        LODWORD(v4) = 0x7FFFFFFF;
      }
    }
  }

  return v3 | (v4 << 32);
}

uint64_t TSCEGridDimensions::columnIndexForOneBasedIndex(TSCEGridDimensions *this, unint64_t a2, int a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      if (this->width >= a2)
      {
        return (a2 - 1);
      }

      else
      {
        return 0x7FFFFFFFLL;
      }
    }

    return 0x7FFFFFFFLL;
  }

  if (!a3)
  {
    return 0x7FFFFFFFLL;
  }

  width = this->width;
  if (-a2 <= width)
  {
    return (width + a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t TSCEGridDimensions::rowIndexForOneBasedIndex(TSCEGridDimensions *this, unint64_t a2, int a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      if (this->height >= a2)
      {
        return (a2 - 1);
      }

      else
      {
        return 0x7FFFFFFFLL;
      }
    }

    return 0x7FFFFFFFLL;
  }

  if (!a3)
  {
    return 0x7FFFFFFFLL;
  }

  height = this->height;
  if (-a2 <= height)
  {
    return (height + a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

id TSCEGridAccessContext::argSpec(TSCEGridAccessContext *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  var2 = this->var2;
  if (!var2)
  {
    v7 = objc_msgSend_argumentSpecForIndex_(this->var1, a2, this->var3, a4, a5);
    v8 = this->var2;
    this->var2 = v7;

    var2 = this->var2;
  }

  return var2;
}

id sub_221179A54(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_221179B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221179BC0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_second(a2, v5, v6, v7, v8);
  v14 = objc_msgSend_cost(v9, v10, v11, v12, v13);

  v19 = objc_msgSend_second(v4, v15, v16, v17, v18);
  v24 = objc_msgSend_cost(v19, v20, v21, v22, v23);

  if (v14 < v24)
  {
    v25 = -1;
  }

  else
  {
    v25 = v24 < v14;
  }

  return v25;
}

void sub_22117A1CC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 768, v2, v3, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 799, 800, 801, 802, 803, 804, 805, 806, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 808, 809, 810, 811, 812, 818, 819, 820, 821, 822, 813, 814, 815, 816, 817, 823, 824, 825, 826, 827);
  v5 = qword_27CFB5260;
  qword_27CFB5260 = v4;

  if (!qword_27CFB5260)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTTableStyle properties]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 160, 0, "invalid nil value for '%{public}s'", "sProperties");

    v20 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
  }
}

void sub_22117A4D4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 771, v2, v3, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 808, 809, 810, 811, 812, 818, 819, 820, 821, 822, 813, 814, 815, 816, 817, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 0);
  v5 = qword_27CFB5270;
  v20 = v4;
  qword_27CFB5270 = v4;

  if (!qword_27CFB5270)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTTableStyle propertiesAllowingNSNull]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 237, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }
}

void sub_22117A754()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 768, v2, v3, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 808, 809, 810, 811, 812, 818, 819, 820, 821, 822, 813, 814, 815, 816, 817, 823, 824, 825, 826, 827);
  v5 = qword_27CFB5280;
  v20 = v4;
  qword_27CFB5280 = v4;

  if (!qword_27CFB5280)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTTableStyle nonEmphasisTableProperties]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 346, 0, "invalid nil value for '%{public}s'", "s_nonEmphasisProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }
}

void sub_22117AB24(void *a1, uint64_t a2, void *a3)
{
  v269 = a1;
  v5 = a3;
  v10 = v5;
  if (v5)
  {
    v11 = (&unk_2217E0568 + 16 * a2);
    v12 = objc_msgSend_objectAtIndex_(v5, v6, *v11, v8, v9);
    v16 = objc_msgSend_objectAtIndex_(v10, v13, v11[1], v14, v15);
    v20 = objc_msgSend_objectAtIndex_(v10, v17, v11[2], v18, v19);
    objc_msgSend_objectAtIndex_(v10, v21, v11[3], v22, v23);
    v25 = v24 = v20;
    v26 = v16;
    v27 = v12;
    objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v28, v12, v29, v30, 1.0);
  }

  else
  {
    v24 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v6, v7, v8, v9, 0.838999987, 0.838999987, 0.838999987, 1.0);
    v25 = v24;
    v26 = v24;
    v27 = v24;
    objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v31, v24, v32, v33, 1.0);
  }
  v34 = ;
  objc_msgSend_setObject_forProperty_(v269, v35, v34, 771, v36);

  v40 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v37, v27, v38, v39, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v41, v40, 772, v42);

  v46 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v43, v27, v44, v45, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v47, v46, 773, v48);

  v52 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v49, v27, v50, v51, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v53, v52, 774, v54);

  v58 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v55, v26, v56, v57, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v59, v58, 778, v60);

  v64 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v61, v26, v62, v63, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v65, v64, 782, v66);

  v70 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v67, v26, v68, v69, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v71, v70, 781, v72);

  v76 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v73, v26, v74, v75, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v77, v76, 780, v78);

  v82 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v79, v26, v80, v81, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v83, v82, 776, v84);

  v88 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v85, v26, v86, v87, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v89, v88, 777, v90);

  v94 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v91, v25, v92, v93, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v95, v94, 786, v96);

  v100 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v97, v25, v98, v99, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v101, v100, 785, v102);

  v106 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v103, v25, v104, v105, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v107, v106, 784, v108);

  v112 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v109, v24, v110, v111, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v113, v112, 779, v114);

  v118 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v115, v24, v116, v117, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v119, v118, 775, v120);

  v124 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v121, v24, v122, v123, 1.0);
  objc_msgSend_setObject_forProperty_(v269, v125, v124, 783, v126);

  objc_msgSend_setIntValue_forProperty_(v269, v127, 1, 788, v128);
  objc_msgSend_setIntValue_forProperty_(v269, v129, 1, 789, v130);
  objc_msgSend_setIntValue_forProperty_(v269, v131, 1, 790, v132);
  objc_msgSend_setIntValue_forProperty_(v269, v133, 1, 792, v134);
  objc_msgSend_setIntValue_forProperty_(v269, v135, 1, 796, v136);
  objc_msgSend_setIntValue_forProperty_(v269, v137, 1, 794, v138);
  objc_msgSend_setIntValue_forProperty_(v269, v139, 1, 793, v140);
  objc_msgSend_setIntValue_forProperty_(v269, v141, 1, 791, v142);
  objc_msgSend_setIntValue_forProperty_(v269, v143, 1, 795, v144);
  objc_opt_class();
  v148 = objc_msgSend_objectForProperty_(v269, v145, 783, v146, v147);
  v149 = TSUCheckedDynamicCast();

  v263 = v25;
  v264 = v10;
  v261 = v24;
  v262 = v27;
  v259 = v149;
  v260 = v26;
  objc_opt_class();
  v153 = objc_msgSend_objectForProperty_(v269, v150, 784, v151, v152);
  v154 = TSUCheckedDynamicCast();

  v258 = v154;
  v158 = objc_msgSend_deriveCategoryTopStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v155, v149, v156, v157);
  v257 = v158;
  v268 = objc_msgSend_deriveCategoryBottomStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v159, v149, v160, v161);
  v169 = objc_msgSend_deriveCategoryInteriorStrokeFromFooterRowVerticalStroke_(TSTTableStyleNetwork, v162, v154, v163, v164);
  if (v158)
  {
    objc_msgSend_setObject_forProperty_(v269, v165, v158, 808, v168);
    objc_msgSend_setObject_forProperty_(v269, v170, v158, 809, v171);
    objc_msgSend_setObject_forProperty_(v269, v172, v158, 810, v173);
    objc_msgSend_setObject_forProperty_(v269, v174, v158, 811, v175);
    objc_msgSend_setObject_forProperty_(v269, v176, v158, 812, v177);
  }

  if (v268)
  {
    objc_msgSend_setObject_forProperty_(v269, v165, v268, 813, v168);
    objc_msgSend_setObject_forProperty_(v269, v178, v268, 814, v179);
    objc_msgSend_setObject_forProperty_(v269, v180, v268, 815, v181);
    objc_msgSend_setObject_forProperty_(v269, v182, v268, 816, v183);
    objc_msgSend_setObject_forProperty_(v269, v184, v268, 817, v185);
  }

  v186 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], v165, v166, v167, v168, 0.0);
  objc_msgSend_setObject_forProperty_(v269, v187, v186, 818, v188);
  objc_msgSend_setObject_forProperty_(v269, v189, v186, 819, v190);
  objc_msgSend_setObject_forProperty_(v269, v191, v186, 820, v192);
  objc_msgSend_setObject_forProperty_(v269, v193, v186, 821, v194);
  objc_msgSend_setObject_forProperty_(v269, v195, v186, 822, v196);
  if (v169)
  {
    objc_msgSend_setObject_forProperty_(v269, v197, v169, 823, v198);
    objc_msgSend_setObject_forProperty_(v269, v199, v169, 824, v200);
    objc_msgSend_setObject_forProperty_(v269, v201, v169, 825, v202);
    objc_msgSend_setObject_forProperty_(v269, v203, v169, 826, v204);
    objc_msgSend_setObject_forProperty_(v269, v205, v169, 827, v206);
  }

  v267 = objc_msgSend_deriveBodyPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v197, 0, v269, v198);
  v266 = objc_msgSend_deriveBodyPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v207, 0, v269, v208);
  v265 = objc_msgSend_deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v209, 0, v269, v210);
  v213 = objc_msgSend_deriveBodyPivotEmphasisVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v211, 0, v269, v212);
  v216 = objc_msgSend_deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v214, 0, v269, v215);
  v219 = objc_msgSend_deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v217, 0, v269, v218);
  v222 = objc_msgSend_deriveHeaderColumnPivotSeparatorStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v220, 0, v269, v221);
  v225 = objc_msgSend_deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v223, 0, v269, v224);
  v228 = objc_msgSend_deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v226, 0, v269, v227);
  v231 = objc_msgSend_deriveHeaderRowPivotTitleStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v229, 0, v269, v230);
  v234 = objc_msgSend_deriveFooterRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v232, 0, v269, v233);
  objc_msgSend_setObject_forProperty_(v269, v235, v267, 828, v236);
  objc_msgSend_setObject_forProperty_(v269, v237, v266, 829, v238);
  objc_msgSend_setObject_forProperty_(v269, v239, v265, 830, v240);
  objc_msgSend_setObject_forProperty_(v269, v241, v213, 831, v242);
  objc_msgSend_setObject_forProperty_(v269, v243, v216, 832, v244);
  objc_msgSend_setObject_forProperty_(v269, v245, v219, 833, v246);
  objc_msgSend_setObject_forProperty_(v269, v247, v222, 834, v248);
  objc_msgSend_setObject_forProperty_(v269, v249, v225, 835, v250);
  objc_msgSend_setObject_forProperty_(v269, v251, v228, 836, v252);
  objc_msgSend_setObject_forProperty_(v269, v253, v231, 837, v254);
  objc_msgSend_setObject_forProperty_(v269, v255, v234, 838, v256);
}

void sub_2211819B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221181A20(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v12 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2, a4, a5);
  v11 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v8, a2, v9, v10);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221181CF8(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a2, a4, a5);
  v10 = objc_msgSend_boxedValueForProperty_(a1[5], v7, a2, v8, v9);
  v11 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v12, v11, a2, v13);
}

void sub_221182970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_221183128(const unsigned __int8 *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  uuid_unparse_upper(a1, v6);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, v6, v2, v3);

  return v4;
}

void sub_221183FE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_221184204(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2211842FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCEFormulaCreationMagic::arg(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X2>, void *a3@<X1>, uint64_t *a4@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_221184534;
  v9[3] = &unk_2834A24B0;
  v11 = this;
  v10 = 0;
  v10 = MEMORY[0x223DA1C10](*a3);

  *a4 = objc_msgSend_copy(v9, v5, v6, v7, v8);
}

uint64_t sub_221184534(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    a3[v3 + 1] = *a3;
  }

  return (*(*(a1 + 32) + 16))();
}

TSCEASTNodeArgInfo *TSCEASTNodeArgInfo::setPositionForArg(TSCEASTNodeArgInfo *this, unsigned int a2)
{
  if (a2 <= 2)
  {
    this->var1[a2] = this->var0;
  }

  return this;
}

uint64_t TSCEFormulaCreator::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  (*(*a1 + 16))();
  return *(a2 + 8) - v3;
}

{
  v5 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x7FFF7FFFFFFFLL;
  v6 = -1;
  v7 = -1;
  v3 = *(a2 + 8);
  (*(*a1 + 16))();
  return *(a2 + 8) - v3;
}

void sub_2211845B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = MEMORY[0x223DA1C10](*(a2 + 32));
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
}

void TSCEFormulaCreator::TSCEFormulaCreator(TSCEFormulaCreator *this, const TSCEFormulaCreator *a2)
{
  this->var0 = 0;
  v3 = MEMORY[0x223DA1C10](a2->var0);
  var0 = this->var0;
  this->var0 = v3;
}

{
  this->var0 = 0;
  v3 = MEMORY[0x223DA1C10](a2->var0);
  var0 = this->var0;
  this->var0 = v3;
}

uint64_t *TSCEFormulaCreator::TSCEFormulaCreator(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = objc_msgSend_copy(a2, a2, a3, a4, a5);
  return a1;
}

{
  *a1 = objc_msgSend_copy(a2, a2, a3, a4, a5);
  return a1;
}

uint64_t TSCEFormulaCreationMagic::number@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSUDecimal a2@<0:X1, 8:X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211846E4;
  v7[3] = &unk_2784601E0;
  v7[4] = this;
  v7[5] = a2._decimal.w[0];
  result = objc_msgSend_copy(v7, a2._decimal.w[0], a2._decimal.w[1], a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_2211846E4(TSUDecimal *a1, TSCEASTNodeArray *this, const TSUDecimal *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTNumberElement::appendNumberElement(this, a1 + 2, a3, a4, a5);
  ++LODWORD(a3->_decimal.w[0]);
  return result;
}

uint64_t TSCEFormulaCreationMagic::duration@<X0>(__int16 a1@<W0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211847A4;
  v9[3] = &unk_278460200;
  *&v9[4] = a7;
  v11 = a1;
  v10 = a2;
  result = objc_msgSend_copy(v9, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211847A4;
  v9[3] = &unk_278460200;
  *&v9[4] = a7;
  v11 = a1;
  v10 = 66593;
  result = objc_msgSend_copy(v9, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_2211847A4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTDurationElement::appendDurationElement(a2, *(a1 + 44), (a1 + 40), a4, a5, *(a1 + 32));
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::string(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = this;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221184920;
  v10[3] = &unk_278460228;
  v11 = v4;
  v5 = v4;
  *a2 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_221184920(uint64_t a1, TSCEASTNodeArray *this, NSString *a3)
{
  result = TSCEASTStringElement::appendStringElement(this, *(a1 + 32), a3);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::date(TSCEFormulaCreationMagic *this@<X0>, NSDate *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = this;
  v7 = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221184A3C;
  v14[3] = &unk_278460250;
  v15 = v6;
  v16 = v7;
  v8 = v7;
  v9 = v6;
  *a3 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_221184A3C(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3)
{
  result = TSCEASTDateElement::appendDateElement(this, *(a1 + 32), *(a1 + 40), 0, 0);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::BOOLean@<X0>(TSCEFormulaCreationMagic *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184AFC;
  v8[3] = &unk_278460270;
  v9 = this;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_221184AFC(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTBooleanElement::appendBooleanElement(this, *(a1 + 32), a3, a4, a5);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::function_0arg@<X0>(__int16 a1@<W0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = a1;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_221184BB4(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, NSString *a5)
{
  result = TSCEASTFunctionElement::appendFunctionElement(this, *(a1 + 32), 0, 0, a5);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::function_1arg(__int16 a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = sub_221184CAC;
  v11[3] = &unk_2834A24E0;
  v12 = 0;
  v5 = MEMORY[0x223DA1C10](*a2);
  v6 = v12;
  v12 = v5;

  v13 = a1;
  *a3 = objc_msgSend_copy(v11, v7, v8, v9, v10);
}

unint64_t sub_221184CAC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 40), 1u, 0, v6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::function_2arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = sub_221184DF4;
  v15[3] = &unk_2834A2510;
  v16 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v16;
  v16 = v7;

  v17 = 0;
  v9 = MEMORY[0x223DA1C10](*a3);
  v10 = v17;
  v17 = v9;

  v18 = a1;
  *a4 = objc_msgSend_copy(v15, v11, v12, v13, v14);
}

unint64_t sub_221184DF4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 48), 2u, 0, v6);
  ++*a3;
  return result;
}

void sub_221184E6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v4 = MEMORY[0x223DA1C10](*(a2 + 32));
  v5 = *(a1 + 32);
  *(a1 + 32) = v4;

  *(a1 + 40) = 0;
  v6 = MEMORY[0x223DA1C10](*(a2 + 40));
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
}

void sub_221184ECC(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_3arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = sub_22118501C;
  v19[3] = &unk_2834A2540;
  v20 = 0;
  v9 = MEMORY[0x223DA1C10](*a2);
  v10 = v20;
  v20 = v9;

  v21 = 0;
  v11 = MEMORY[0x223DA1C10](*a3);
  v12 = v21;
  v21 = v11;

  v22 = 0;
  v13 = MEMORY[0x223DA1C10](*a4);
  v14 = v22;
  v22 = v13;

  v23 = a1;
  *a5 = objc_msgSend_copy(v19, v15, v16, v17, v18);
}

unint64_t sub_22118501C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 56), 3u, 0, v6);
  ++*a3;
  return result;
}

void sub_2211850AC(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;
}

void sub_221185124(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_4arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3321888768;
  v23[2] = sub_2211852B0;
  v23[3] = &unk_2834A2570;
  v24 = 0;
  v11 = MEMORY[0x223DA1C10](*a2);
  v12 = v24;
  v24 = v11;

  v25 = 0;
  v13 = MEMORY[0x223DA1C10](*a3);
  v14 = v25;
  v25 = v13;

  v26 = 0;
  v15 = MEMORY[0x223DA1C10](*a4);
  v16 = v26;
  v26 = v15;

  v27 = 0;
  v17 = MEMORY[0x223DA1C10](*a5);
  v18 = v27;
  v27 = v17;

  v28 = a1;
  *a6 = objc_msgSend_copy(v23, v19, v20, v21, v22);
}

unint64_t sub_2211852B0(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 64), 4u, 0, v6);
  ++*a3;
  return result;
}

void sub_221185358(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;
}

void sub_2211853E8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_5arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3321888768;
  v27[2] = sub_2211855A8;
  v27[3] = &unk_2834A25A0;
  v28 = 0;
  v13 = MEMORY[0x223DA1C10](*a2);
  v14 = v28;
  v28 = v13;

  v29 = 0;
  v15 = MEMORY[0x223DA1C10](*a3);
  v16 = v29;
  v29 = v15;

  v30 = 0;
  v17 = MEMORY[0x223DA1C10](*a4);
  v18 = v30;
  v30 = v17;

  v31 = 0;
  v19 = MEMORY[0x223DA1C10](*a5);
  v20 = v31;
  v31 = v19;

  v32 = 0;
  v21 = MEMORY[0x223DA1C10](*a6);
  v22 = v32;
  v32 = v21;

  v33 = a1;
  *a7 = objc_msgSend_copy(v27, v23, v24, v25, v26);
}

unint64_t sub_2211855A8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 72), 5u, 0, v6);
  ++*a3;
  return result;
}

void sub_221185668(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;
}

void sub_221185710(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_6arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3321888768;
  v31[2] = sub_22118590C;
  v31[3] = &unk_2834A25D0;
  v32 = 0;
  v15 = MEMORY[0x223DA1C10](*a2);
  v16 = v32;
  v32 = v15;

  v33 = 0;
  v17 = MEMORY[0x223DA1C10](*a3);
  v18 = v33;
  v33 = v17;

  v34 = 0;
  v19 = MEMORY[0x223DA1C10](*a4);
  v20 = v34;
  v34 = v19;

  v35 = 0;
  v21 = MEMORY[0x223DA1C10](*a5);
  v22 = v35;
  v35 = v21;

  v36 = 0;
  v23 = MEMORY[0x223DA1C10](*a6);
  v24 = v36;
  v36 = v23;

  v37 = 0;
  v25 = MEMORY[0x223DA1C10](*a7);
  v26 = v37;
  v37 = v25;

  v38 = a1;
  *a8 = objc_msgSend_copy(v31, v27, v28, v29, v30);
}

unint64_t sub_22118590C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 80), 6u, 0, v6);
  ++*a3;
  return result;
}

void sub_2211859E4(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;

  a1[9] = 0;
  v14 = MEMORY[0x223DA1C10](a2[9]);
  v15 = a1[9];
  a1[9] = v14;
}

void sub_221185AA4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_7arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3321888768;
  v35[2] = sub_221185CD4;
  v35[3] = &unk_2834A2600;
  v36 = 0;
  v17 = MEMORY[0x223DA1C10](*a2);
  v18 = v36;
  v36 = v17;

  v37 = 0;
  v19 = MEMORY[0x223DA1C10](*a3);
  v20 = v37;
  v37 = v19;

  v38 = 0;
  v21 = MEMORY[0x223DA1C10](*a4);
  v22 = v38;
  v38 = v21;

  v39 = 0;
  v23 = MEMORY[0x223DA1C10](*a5);
  v24 = v39;
  v39 = v23;

  v40 = 0;
  v25 = MEMORY[0x223DA1C10](*a6);
  v26 = v40;
  v40 = v25;

  v41 = 0;
  v27 = MEMORY[0x223DA1C10](*a7);
  v28 = v41;
  v41 = v27;

  v42 = 0;
  v29 = MEMORY[0x223DA1C10](*a8);
  v30 = v42;
  v42 = v29;

  v43 = a1;
  *a9 = objc_msgSend_copy(v35, v31, v32, v33, v34);
}

unint64_t sub_221185CD4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 88), 7u, 0, v6);
  ++*a3;
  return result;
}

void sub_221185DC4(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;

  a1[9] = 0;
  v14 = MEMORY[0x223DA1C10](a2[9]);
  v15 = a1[9];
  a1[9] = v14;

  a1[10] = 0;
  v16 = MEMORY[0x223DA1C10](a2[10]);
  v17 = a1[10];
  a1[10] = v16;
}

void sub_221185E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_8arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3321888768;
  v38[2] = sub_221186108;
  v38[3] = &unk_2834A2630;
  v39 = 0;
  v18 = MEMORY[0x223DA1C10](*a2);
  v19 = v39;
  v39 = v18;

  v40 = 0;
  v20 = MEMORY[0x223DA1C10](*a3);
  v21 = v40;
  v40 = v20;

  v41 = 0;
  v22 = MEMORY[0x223DA1C10](*a4);
  v23 = v41;
  v41 = v22;

  v42 = 0;
  v24 = MEMORY[0x223DA1C10](*a5);
  v25 = v42;
  v42 = v24;

  v43 = 0;
  v26 = MEMORY[0x223DA1C10](*a6);
  v27 = v43;
  v43 = v26;

  v44 = 0;
  v28 = MEMORY[0x223DA1C10](*a7);
  v29 = v44;
  v44 = v28;

  v45 = 0;
  v30 = MEMORY[0x223DA1C10](*a8);
  v31 = v45;
  v45 = v30;

  v46 = 0;
  v32 = MEMORY[0x223DA1C10](*a10);
  v33 = v46;
  v46 = v32;

  v47 = a1;
  *a9 = objc_msgSend_copy(v38, v34, v35, v36, v37);
}

unint64_t sub_221186108(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
  (*(*(a1 + 88) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 96), 8u, 0, v6);
  ++*a3;
  return result;
}

void sub_221186210(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;

  a1[9] = 0;
  v14 = MEMORY[0x223DA1C10](a2[9]);
  v15 = a1[9];
  a1[9] = v14;

  a1[10] = 0;
  v16 = MEMORY[0x223DA1C10](a2[10]);
  v17 = a1[10];
  a1[10] = v16;

  a1[11] = 0;
  v18 = MEMORY[0x223DA1C10](a2[11]);
  v19 = a1[11];
  a1[11] = v18;
}

void sub_221186300(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t TSCEFormulaCreationMagic::function_onArgVector@<X0>(__int16 a1@<W0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211863EC;
  v8[3] = &unk_2784602B0;
  v8[4] = a2;
  v9 = a1;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_2211863EC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4, NSString *a5)
{
  v8 = *(a1 + 32);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v13 = *v8;
  }

  else
  {
    do
    {
      v11 = *v9;
      v9 += 8;
      (*(v11 + 16))();
    }

    while (v9 != v10);
    v12 = *(a1 + 32);
    v9 = *v12;
    v13 = v12[1];
  }

  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 40), (v13 - v9) >> 3, 0, a5);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::AND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(7, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(7, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::OR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(102, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::NOT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(96, &v5, a3);
}

void TSCEFormulaCreationMagic::SUMIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(231, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::SUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(168, &v5, a3);
}

void TSCEFormulaCreationMagic::SUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(168, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(168, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(30, &v5, a3);
}

void TSCEFormulaCreationMagic::COUNTA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(31, &v5, a3);
}

void TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(168, &v5, a3);
}

void TSCEFormulaCreationMagic::ISERROR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(70, &v5, a3);
}

void TSCEFormulaCreationMagic::ISBLANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(69, &v5, a3);
}

void TSCEFormulaCreationMagic::PLAINTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(297, &v5, a3);
}

void TSCEFormulaCreationMagic::IF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = sub_221186D34;
  v18[3] = &unk_2834A2660;
  v19 = 0;
  v8 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v9 = v19;
  v19 = v8;

  v20 = 0;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v11 = v20;
  v20 = v10;

  v21 = 0;
  v12 = MEMORY[0x223DA1C10](*a3.var0);
  v13 = v21;
  v21 = v12;

  *a5 = objc_msgSend_copy(v18, v14, v15, v16, v17);
}

unint64_t sub_221186D34(void *a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(a1[4] + 16))();
  appended = TSCEASTThunkElement::appendThunkNodeHeader(a2, 0, 27, v6, v7);
  var1 = a2->var1;
  (*(a1[5] + 16))();
  if (a2->var0)
  {
    *&a2->var0[appended + 1] = a2->var1 - var1;
  }

  v12 = TSCEASTThunkElement::appendThunkNodeHeader(a2, 0, 27, v10, v11);
  v13 = a2->var1;
  (*(a1[6] + 16))();
  if (a2->var0)
  {
    *&a2->var0[v12 + 1] = a2->var1 - v13;
  }

  result = TSCEASTFunctionElement::appendFunctionElement(a2, 0x3E, 3u, 0, v14);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::IFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator tsceformulacreator@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, tsceformulacreator.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v25 = v16;
  v12 = MEMORY[0x223DA1C10](*tsceformulacreator.var0);
  v23 = v12;
  TSCEFormulaCreationMagic::thunk(&v23, v27, &v24);
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v21 = v13;
  TSCEFormulaCreationMagic::thunk(&v21, v28, &v22);
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v19 = v14;
  TSCEFormulaCreationMagic::thunk(&v19, v29, &v20);
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::thunk(&v17, v30, &v18);
  TSCEFormulaCreationMagic::function_5arg(313, &v25, &v24, &v22, &v20, &v18, a7);
}

void TSCEFormulaCreationMagic::thunk(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_2211891A4;
  v10[3] = &unk_2834A27A0;
  v11 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v11;
  v11 = v4;

  *a3 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

void TSCEFormulaCreationMagic::IFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator tsceformulacreator@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, tsceformulacreator.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v30 = v19;
  v14 = MEMORY[0x223DA1C10](*tsceformulacreator.var0);
  v28 = v14;
  TSCEFormulaCreationMagic::thunk(&v28, v32, &v29);
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v26 = v15;
  TSCEFormulaCreationMagic::thunk(&v26, v33, &v27);
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v24 = v16;
  TSCEFormulaCreationMagic::thunk(&v24, v34, &v25);
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v22 = v17;
  TSCEFormulaCreationMagic::thunk(&v22, v35, &v23);
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::thunk(&v20, v36, &v21);
  TSCEFormulaCreationMagic::function_6arg(313, &v30, &v29, &v27, &v25, &v23, &v21, a8);
}

void TSCEFormulaCreationMagic::SWITCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator tsceformulacreator@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, tsceformulacreator.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v25 = v16;
  v12 = MEMORY[0x223DA1C10](*tsceformulacreator.var0);
  v23 = v12;
  TSCEFormulaCreationMagic::thunk(&v23, v27, &v24);
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v21 = v13;
  TSCEFormulaCreationMagic::thunk(&v21, v28, &v22);
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v19 = v14;
  TSCEFormulaCreationMagic::thunk(&v19, v29, &v20);
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::thunk(&v17, v30, &v18);
  TSCEFormulaCreationMagic::function_5arg(336, &v25, &v24, &v22, &v20, &v18, a7);
}

void TSCEFormulaCreationMagic::SWITCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator tsceformulacreator@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, tsceformulacreator.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v30 = v19;
  v14 = MEMORY[0x223DA1C10](*tsceformulacreator.var0);
  v28 = v14;
  TSCEFormulaCreationMagic::thunk(&v28, v32, &v29);
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v26 = v15;
  TSCEFormulaCreationMagic::thunk(&v26, v33, &v27);
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v24 = v16;
  TSCEFormulaCreationMagic::thunk(&v24, v34, &v25);
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v22 = v17;
  TSCEFormulaCreationMagic::thunk(&v22, v35, &v23);
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::thunk(&v20, v36, &v21);
  TSCEFormulaCreationMagic::function_6arg(336, &v30, &v29, &v27, &v25, &v23, &v21, a8);
}

void TSCEFormulaCreationMagic::SWITCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator tsceformulacreator@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, tsceformulacreator.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v35 = v22;
  v16 = MEMORY[0x223DA1C10](*tsceformulacreator.var0);
  v33 = v16;
  TSCEFormulaCreationMagic::thunk(&v33, v37, &v34);
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v31 = v17;
  TSCEFormulaCreationMagic::thunk(&v31, v38, &v32);
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v29 = v18;
  TSCEFormulaCreationMagic::thunk(&v29, v39, &v30);
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v27 = v19;
  TSCEFormulaCreationMagic::thunk(&v27, v40, &v28);
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v25 = v20;
  TSCEFormulaCreationMagic::thunk(&v25, v41, &v26);
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::thunk(&v23, v42, &v24);
  TSCEFormulaCreationMagic::function_7arg(336, &v35, &v34, &v32, &v30, &v28, &v26, &v24, a9);
}

void TSCEFormulaCreationMagic::WRAPCOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(357, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::WRAPCOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(357, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::WRAPROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(358, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::WRAPROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(358, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::STOCK(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = this;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221187B00;
  v11[3] = &unk_2784602D8;
  v12 = v5;
  v13 = a2;
  v6 = v5;
  *a3 = objc_msgSend_copy(v11, v7, v8, v9, v10);
}

unint64_t sub_221187B00(uint64_t a1, TSCEASTNodeArray *this, NSString *a3)
{
  TSCEASTStringElement::appendStringElement(this, *(a1 + 32), a3);
  TSUDecimal::operator=();
  TSCEASTNumberElement::appendNumberElement(this, &v10, v5, v6, v7);
  result = TSCEASTFunctionElement::appendFunctionElement(this, 0x12A, 2u, 0, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::IF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_221187C54;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_221187C54(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  appended = TSCEASTThunkElement::appendThunkNodeHeader(a2, 0, 27, v6, v7);
  var1 = a2->var1;
  (*(*(a1 + 40) + 16))();
  if (a2->var0)
  {
    *&a2->var0[appended + 1] = a2->var1 - var1;
  }

  result = TSCEASTFunctionElement::appendFunctionElement(a2, 0x3E, 2u, 0, v10);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::LET(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X2>, TSCEFormulaCreator a3@<0:X3>, TSCEFormulaCreator a4@<0:X4>, void *a5@<X1>, uint64_t *a6@<X8>)
{
  v8 = this;
  v10 = a5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3321888768;
  v20[2] = sub_221187E24;
  v20[3] = &unk_2834A26C8;
  v22 = 0;
  v11 = MEMORY[0x223DA1C10](*a2);
  v12 = v22;
  v22 = v11;

  v13 = v10;
  v24 = v8;
  v21 = v13;
  v23 = 0;
  v14 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v23;
  v23 = v14;

  *a6 = objc_msgSend_copy(v20, v16, v17, v18, v19);
}

void sub_221187E24(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 40) + 16))();
  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v10, 0);
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 32), v10, *(a1 + 56), 0);
  ++*a3;
  (*(*(a1 + 48) + 16))();
  TSCEASTLetBindElement::appendEndScopeNode(a2, v6, v7, v8, v9);
  ++*a3;
  v11 = v10;
  sub_22107C2C0(&v11);
}

void sub_221187EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221187EF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v4 = MEMORY[0x223DA1C10](*(a2 + 40));
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;

  *(a1 + 48) = 0;
  v6 = MEMORY[0x223DA1C10](*(a2 + 48));
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
}

void sub_221187F54(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void TSCEFormulaCreationMagic::LET(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X2>, TSCEFormulaCreator a3@<0:X3>, NSString *a4@<X4>, TSCEFormulaCreator a5@<0:X5>, TSCEFormulaCreator a6@<0:X6>, void *a7@<X1>, uint64_t *a8@<X8>)
{
  v12 = this;
  v14 = a7;
  v15 = a3.var0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3321888768;
  v22[2] = sub_221188114;
  v22[3] = &unk_2834A2700;
  v28 = v12;
  v25 = 0;
  v25 = MEMORY[0x223DA1C10](*a2);

  v16 = v14;
  v23 = v16;
  v26 = 0;
  v26 = MEMORY[0x223DA1C10](*a4);

  v17 = v15;
  v24 = v17;
  v27 = 0;
  v27 = MEMORY[0x223DA1C10](*a5.var0);

  *a8 = objc_msgSend_copy(v22, v18, v19, v20, v21);
}

void sub_221188114(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = *(a1 + 72);
  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v15, 0);
  (*(*(a1 + 48) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 32), v15, v6, 0);
  ++*a3;
  (*(*(a1 + 56) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 40), v15, (v6 + 1), 1);
  ++*a3;
  (*(*(a1 + 64) + 16))();
  TSCEASTLetBindElement::appendEndScopeNode(a2, v7, v8, v9, v10);
  ++*a3;
  TSCEASTLetBindElement::appendEndScopeNode(a2, v11, v12, v13, v14);
  ++*a3;
  v16 = v15;
  sub_22107C2C0(&v16);
}

void sub_221188230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221188248(void *a1, void *a2)
{
  a1[6] = 0;
  v4 = MEMORY[0x223DA1C10](a2[6]);
  v5 = a1[6];
  a1[6] = v4;

  a1[7] = 0;
  v6 = MEMORY[0x223DA1C10](a2[7]);
  v7 = a1[7];
  a1[7] = v6;

  a1[8] = 0;
  v8 = MEMORY[0x223DA1C10](a2[8]);
  v9 = a1[8];
  a1[8] = v8;
}

void sub_2211882C0(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void TSCEFormulaCreationMagic::LET(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X2>, TSCEFormulaCreator a3@<0:X3>, NSString *a4@<X4>, TSCEFormulaCreator a5@<0:X5>, NSString *a6@<X6>, TSCEFormulaCreator a7@<0:X7>, void *a8@<X1>, uint64_t *a9@<X8>, TSCEFormulaCreator a10)
{
  v16 = this;
  v18 = a8;
  v19 = a3.var0;
  v20 = a5.var0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3321888768;
  v28[2] = sub_2211884EC;
  v28[3] = &unk_2834A2738;
  v36 = v16;
  v32 = 0;
  v32 = MEMORY[0x223DA1C10](*a2);

  v21 = v18;
  v29 = v21;
  v33 = 0;
  v33 = MEMORY[0x223DA1C10](*a4);

  v22 = v19;
  v30 = v22;
  v34 = 0;
  v34 = MEMORY[0x223DA1C10](*a6);

  v23 = v20;
  v31 = v23;
  v35 = 0;
  v35 = MEMORY[0x223DA1C10](*a7.var0);

  *a9 = objc_msgSend_copy(v28, v24, v25, v26, v27);
}

void sub_2211884EC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = *(a1 + 88);
  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v19, 0);
  (*(*(a1 + 56) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 32), v19, v6, 0);
  ++*a3;
  (*(*(a1 + 64) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 40), v19, (v6 + 1), 1);
  ++*a3;
  (*(*(a1 + 72) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 48), v19, (v6 + 2), 1);
  ++*a3;
  (*(*(a1 + 80) + 16))();
  TSCEASTLetBindElement::appendEndScopeNode(a2, v7, v8, v9, v10);
  ++*a3;
  TSCEASTLetBindElement::appendEndScopeNode(a2, v11, v12, v13, v14);
  ++*a3;
  TSCEASTLetBindElement::appendEndScopeNode(a2, v15, v16, v17, v18);
  ++*a3;
  v20 = v19;
  sub_22107C2C0(&v20);
}

void sub_221188658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221188670(void *a1, void *a2)
{
  a1[7] = 0;
  v4 = MEMORY[0x223DA1C10](a2[7]);
  v5 = a1[7];
  a1[7] = v4;

  a1[8] = 0;
  v6 = MEMORY[0x223DA1C10](a2[8]);
  v7 = a1[8];
  a1[8] = v6;

  a1[9] = 0;
  v8 = MEMORY[0x223DA1C10](a2[9]);
  v9 = a1[9];
  a1[9] = v8;

  a1[10] = 0;
  v10 = MEMORY[0x223DA1C10](a2[10]);
  v11 = a1[10];
  a1[10] = v10;
}

void sub_221188700(uint64_t a1)
{
  v2 = *(a1 + 56);
}

uint64_t TSCEFormulaCreationMagic::letOrLambdaVar@<X0>(TSCEFormulaCreationMagic *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211887C8;
  v8[3] = &unk_2784602F8;
  v9 = this;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_2211887C8(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTVariableElement::appendVariableElement(this, *(a1 + 32), a3, a4, a5);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::LET_VAR@<X0>(TSCEFormulaCreationMagic *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211887C8;
  v8[3] = &unk_2784602F8;
  v9 = this;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

void TSCEFormulaCreationMagic::LAMBDA(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3321888768;
  v15[2] = sub_22118896C;
  v15[3] = &unk_2834A2770;
  v17 = 0;
  v8 = MEMORY[0x223DA1C10](*a2);
  v9 = v17;
  v17 = v8;

  v16 = v7;
  v18 = a3;
  v10 = v7;
  *a4 = objc_msgSend_copy(v15, v11, v12, v13, v14);
}

void sub_22118896C(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  appended = TSCEASTThunkElement::appendThunkNodeHeader(this, 0, 56, a4, a5);
  var1 = this->var1;
  (*(*(a1 + 40) + 16))();
  if (this->var0)
  {
    *&this->var0[appended + 1] = this->var1 - var1;
  }

  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v10, 0);
  TSCEASTLambdaElement::appendLambdaNode(this, *(a1 + 32), v10, v10, *(a1 + 48));
  ++*a3;
  v11 = v10;
  sub_22107C2C0(&v11);
}

void sub_221188A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221188A4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v3 = MEMORY[0x223DA1C10](*(a2 + 40));
  v4 = *(a1 + 40);
  *(a1 + 40) = v3;
}

void TSCEFormulaCreationMagic::parens(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_221188B44;
  v10[3] = &unk_2834A27A0;
  v11 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v11;
  v11 = v4;

  *a3 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_221188B44(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTListElement::appendListNode(a2, 1, v5, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::list(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_221188C68;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_221188C68(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTListElement::appendListNode(a2, 2, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::list(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = sub_221188DE4;
  v18[3] = &unk_2834A2660;
  v19 = 0;
  v8 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v9 = v19;
  v19 = v8;

  v20 = 0;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v11 = v20;
  v20 = v10;

  v21 = 0;
  v12 = MEMORY[0x223DA1C10](*a3.var0);
  v13 = v21;
  v21 = v12;

  *a5 = objc_msgSend_copy(v18, v14, v15, v16, v17);
}

unint64_t sub_221188DE4(void *a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
  result = TSCEASTListElement::appendListNode(a2, 3, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::array(__int16 a1@<W0>, __int16 a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = sub_221188F40;
  v11[3] = &unk_2834A27D0;
  memset(v12, 0, sizeof(v12));
  sub_22119D9CC(v12, *a3, a3[1], (a3[1] - *a3) >> 3);
  v13 = a1;
  v14 = a2;
  *a4 = objc_msgSend_copy(v11, v7, v8, v9, v10);
  v15 = v12;
  sub_22107C2C0(&v15);
}

void sub_221188F28(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_22107C2C0((v2 - 40));
  _Unwind_Resume(a1);
}

unint64_t sub_221188F40(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(v10 + 16))();
  }

  result = TSCEASTArrayElement::appendArrayNode(this, *(a1 + 56), *(a1 + 58), a4, a5);
  ++*a3;
  return result;
}

uint64_t sub_221188FBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return sub_22119D9CC(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

uint64_t TSCEFormulaCreationMagic::emptyArg@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = objc_msgSend_copy(&unk_2834A2800, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_221189034(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 23, a3, a4, a5);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::token@<X0>(TSCEFormulaCreationMagic *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211890E8;
  v8[3] = &unk_278460270;
  v9 = this;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

unint64_t sub_2211890E8(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTTokenElement::appendTokenElement(this, *(a1 + 32), a3, a4, a5);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::nop@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = objc_msgSend_copy(&unk_2834A2820, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_221189154(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  TSUDecimal::operator=();
  result = TSCEASTNumberElement::appendNumberElement(a2, &v9, v5, v6, v7);
  ++*a3;
  return result;
}

uint64_t sub_2211891A4(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  appended = TSCEASTThunkElement::appendThunkNodeHeader(this, 0, 27, a4, a5);
  var1 = this->var1;
  result = (*(*(a1 + 32) + 16))();
  if (this->var0)
  {
    *&this->var0[appended + 1] = this->var1 - var1;
  }

  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::refError@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = objc_msgSend_copy(&unk_2834A2840, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_221189260(int a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  result = TSCEASTRelativeCoordRefElement::appendReferenceError(this, this, a3, a4, a5, a6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::refErrorWithUUID(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  upper = a2._upper;
  lower = a2._lower;
  v9 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22118935C;
  v15[3] = &unk_278460340;
  v19 = upper;
  v17 = this;
  v18 = lower;
  v16 = v9;
  v10 = v9;
  *a4 = objc_msgSend_copy(v15, v11, v12, v13, v14);
}

unint64_t sub_22118935C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v10._flags = 0;
  v9._flags = *(a1 + 56);
  TSCEASTRefFlags::setPreserveFlags(&v10, &v9);
  result = TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(a2, (a1 + 40), v10._flags, *(a1 + 32), v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::cellRef(TSCEFormulaCreationMagic *this@<X0>, TSCECrossTableReference *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22118948C;
  v12[3] = &unk_278460368;
  v14 = *this;
  v15 = *(this + 2);
  v13 = v6;
  v7 = v6;
  *a3 = objc_msgSend_copy(v12, v8, v9, v10, v11);
}

unint64_t sub_22118948C(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  if (*(a1 + 62))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  LOBYTE(v9._row) = v7 | *(a1 + 63);
  result = TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, (a1 + 40), (a1 + 56), &v9, *(a1 + 32), a6);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::cellRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSCECellRef *a2@<X1>, TSCECellRef *a3@<X3>, uint64_t a4@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221189594;
  v8[3] = &unk_278460388;
  v9 = *this;
  v10 = *(this + 2);
  v13 = a2;
  v11 = *a4;
  v12 = *(a4 + 16);
  result = objc_msgSend_copy(v8, a2, a4, a3, a5);
  *a6 = result;
  return result;
}

unint64_t sub_221189594(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  LOBYTE(var11.coordinate.row) = *(a1 + 80);
  result = TSCEASTRelativeCoordRefElement::appendReference(this, (a1 + 32), &var11, (a1 + 56), 0, a6);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::cellRefViaComponents@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221189670;
  v9[3] = &unk_2784603A8;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a5;
  v9[7] = a6;
  v10 = a4;
  v11 = a3;
  result = objc_msgSend_copy(v9, a2, a3, a4, a5);
  *a7 = result;
  return result;
}

unint64_t sub_221189670(uint64_t a1, TSUCellCoord this, uint64_t a3, const TSUPreserveFlags *a4, const TSKUIDStruct *a5)
{
  v6 = this;
  v9 = (a1 + 32);
  v8 = *(a1 + 32);
  if (v8 || (v10 = *(a1 + 40)) != 0)
  {
    LODWORD(v10) = v8 != *(a3 + 16) || *(a1 + 40) != *(a3 + 24);
  }

  v11 = *(a3 + 32);
  v12 = (v11 & 0xFFFF00000000) == 0x7FFF00000000 || v11 == 0x7FFFFFFF;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 32);
  }

  v14 = *(a1 + 48);
  if (v10)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + 64);
      v16 = *(a1 + 56);
      v17 = v16 == 1;
      if (v16 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13;
      }

      v19 = v15 - v18;
      if (v15 == 0x7FFFFFFF)
      {
        v20 = 0x7FFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      result = TSCEASTRelativeCoordRefElement::appendCrossTableRowReferenceElement(v6, v20, v17, v9, a5);
    }

    else
    {
      v28 = *(a1 + 56);
      if (v28 == 2)
      {
        v29 = *(a1 + 68);
        v12 = v14 == 1;
        v30 = v14 == 1;
        v31 = v13 >> 32;
        if (v12)
        {
          LOWORD(v31) = 0;
        }

        v32 = v29 - v31;
        if (v29 == 0x7FFF)
        {
          v32 = 0x7FFF;
        }

        result = TSCEASTRelativeCoordRefElement::appendCrossTableColumnReferenceElement(*&this, v32, v30, v9, a5);
      }

      else
      {
        HIBYTE(v44.var1) = (v14 == 1) | (2 * (v28 == 1));
        this.row = *(a1 + 64);
        this.column = *(a1 + 68);
        v38 = (&v44.var1 + 7);
        v44.var0 = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v13, this, v38, a4);
        result = TSCEASTRelativeCoordRefElement::appendCrossTableCellReferenceElement(v6, &v44, (*(a1 + 48) == 1), *(a1 + 56) == 1, v9, 0, v39);
      }
    }
  }

  else if (v14 == 2)
  {
    v22 = *(a1 + 64);
    v23 = *(a1 + 56);
    v24 = v23 == 1;
    if (v23 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v13;
    }

    v26 = v22 - v25;
    if (v22 == 0x7FFFFFFF)
    {
      v27 = 0x7FFFFFFFLL;
    }

    else
    {
      v27 = v26;
    }

    result = TSCEASTRelativeCoordRefElement::appendLocalRowReferenceElement(v6, v27, v24, a4, a5);
  }

  else
  {
    v33 = *(a1 + 56);
    if (v33 == 2)
    {
      v34 = *(a1 + 68);
      v12 = v14 == 1;
      v35 = v14 == 1;
      v36 = v13 >> 32;
      if (v12)
      {
        LOWORD(v36) = 0;
      }

      v37 = v34 - v36;
      if (v34 == 0x7FFF)
      {
        v37 = 0x7FFF;
      }

      result = TSCEASTRelativeCoordRefElement::appendLocalColumnReferenceElement(*&this, v37, v35, a4, a5);
    }

    else
    {
      v43 = (v14 == 1) | (2 * (v33 == 1));
      this.row = *(a1 + 64);
      this.column = *(a1 + 68);
      v40 = &v43;
      RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v13, this, v40, a4);
      result = TSCEASTRelativeCoordRefElement::appendLocalCellReferenceElement(v6, ((RelativeCellCoordinateFromAbsoluteCoordinates << 16) >> 48), RelativeCellCoordinateFromAbsoluteCoordinates, *(a1 + 48) == 1, *(a1 + 56) == 1, 0, v42);
    }
  }

  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::localCellRefViaComponents@<X0>(int a1@<W0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221189670;
  v8[3] = &unk_2784603A8;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = a3;
  v8[7] = a4;
  v9 = a2;
  v10 = a1;
  result = objc_msgSend_copy(v8, a2, a3, a4, a5);
  *a6 = result;
  return result;
}

void TSCEFormulaCreationMagic::cellRange(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t x3_0@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t *a6@<X8>)
{
  v7 = a4;
  lower = a2._lower;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_221189670;
  v25 = &unk_2784603A8;
  v26 = this;
  v27 = a2._lower;
  v28 = 0u;
  v29 = x3_0;
  upper = a2._upper;
  v11 = objc_msgSend_copy(&v22, a2._lower, a2._upper, x3_0, a4);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_221189670;
  v25 = &unk_2784603A8;
  v26 = this;
  v27 = lower;
  v28 = 0u;
  v29 = a5;
  upper = v7;
  v16 = objc_msgSend_copy(&v22, v12, v13, v14, v15);
  v17 = MEMORY[0x223DA1C10](v11);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](v16);
  v20 = v18;
  v19.var0 = &v20;
  TSCEFormulaCreationMagic::colon(&v21, v19, v31, a6);
}

void TSCEFormulaCreationMagic::colon(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118AC68;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

void TSCEFormulaCreationMagic::uidRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_221189C98;
  v13[3] = &unk_2834A2860;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_221086EBC(&v14, *a3, a3[1], (a3[1] - *a3) >> 4);
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_221086EBC(&__p, *a4, a4[1], (a4[1] - *a4) >> 4);
  v20 = a1;
  v21 = a2;
  *a5 = objc_msgSend_copy(v13, v9, v10, v11, v12);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_221189C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_221189C98(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = objc_opt_new();
  v7 = [TSCEUndoTract alloc];
  v9 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v7, v8, a1 + 32, a1 + 56, 4);
  objc_msgSend_setIsRangeRef_(v9, v10, 1, v11, v12);
  objc_msgSend_appendUidTract_(v6, v13, v9, v14, v15);
  v20 = objc_msgSend_preserveFlags(v6, v16, v17, v18, v19);
  sub_22122B9B8(v21, a1 + 80, v6, &v20);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, v21);
  ++*a3;
}

uint64_t sub_221189D94(void *a1, uint64_t *a2)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_221086EBC((a1 + 4), a2[4], a2[5], (a2[5] - a2[4]) >> 4);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return sub_221086EBC((a1 + 7), a2[7], a2[8], (a2[8] - a2[7]) >> 4);
}

void sub_221189E00(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_221189E1C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void TSCEFormulaCreationMagic::uidRef(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t *a3@<X8>)
{
  lower = a2._lower;
  v7 = a2._upper;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221189F34;
  v13[3] = &unk_2784603D0;
  v15 = this;
  v16 = lower;
  v14 = v7;
  v8 = v7;
  *a3 = objc_msgSend_copy(v13, v9, v10, v11, v12);
}

void sub_221189F34(uint64_t a1, char *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = objc_msgSend_preserveFlags(v8, a2, a3, a4, a5);
  sub_22122B9B8(v10, a1 + 40, v8, &v9);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, v10);
  ++*a3;
}

void TSCEFormulaCreationMagic::uidTractRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118A0E8;
  v13[3] = &unk_2834A2860;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_221086EBC(&v14, *a3, a3[1], (a3[1] - *a3) >> 4);
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_221086EBC(&__p, *a4, a4[1], (a4[1] - *a4) >> 4);
  v20 = a1;
  v21 = a2;
  *a5 = objc_msgSend_copy(v13, v9, v10, v11, v12);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_22118A0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_22118A0E8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = objc_opt_new();
  v7 = [TSCEUndoTract alloc];
  v9 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v7, v8, a1 + 32, a1 + 56, 4);
  objc_msgSend_setIsRangeRef_(v9, v10, 1, v11, v12);
  objc_msgSend_appendUidTract_(v6, v13, v9, v14, v15);
  v16 = 15;
  sub_22122B9B8(v17, a1 + 80, v6, &v16);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, v17);
  ++*a3;
}

void TSCEFormulaCreationMagic::viewTractRef(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = this;
  v9 = objc_msgSend_tract(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_tableUID(v4, v10, v11, v12, v13);
  v16 = v15;
  v20 = objc_msgSend_columnUids(v9, v15, v17, v18, v19);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  sub_221086EBC(&v44, *v20, v20[1], (v20[1] - *v20) >> 4);
  v25 = objc_msgSend_rowUids(v9, v21, v22, v23, v24);
  __p = 0;
  v42 = 0;
  v43 = 0;
  sub_221086EBC(&__p, *v25, v25[1], (v25[1] - *v25) >> 4);
  v30 = objc_msgSend_columnGroupLevel(v4, v26, v27, v28, v29);
  v35 = objc_msgSend_rowGroupLevel(v4, v31, v32, v33, v34);
  v40 = objc_msgSend_aggregateIndexLevel(v4, v36, v37, v38, v39);
  TSCEFormulaCreationMagic::viewTractRef(v14, v16, &v44, &__p, v30, v35, v40, a2);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void TSCEFormulaCreationMagic::viewTractRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, char a6@<W5>, __int16 a7@<W6>, uint64_t *a8@<X8>)
{
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = sub_22118A488;
  v19[3] = &unk_2834A2890;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_221086EBC(&v20, *a3, a3[1], (a3[1] - *a3) >> 4);
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_221086EBC(&__p, *a4, a4[1], (a4[1] - *a4) >> 4);
  v26 = a1;
  v27 = a2;
  v29 = a5;
  v30 = a6;
  v28 = a7;
  *a8 = objc_msgSend_copy(v19, v15, v16, v17, v18);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_22118A454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22118A488(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = objc_opt_new();
  v7 = [TSCEUndoTract alloc];
  v9 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v7, v8, a1 + 32, a1 + 56, 4);
  objc_msgSend_setIsRangeRef_(v9, v10, 1, v11, v12);
  objc_msgSend_appendUidTract_(v6, v13, v9, v14, v15);
  v16 = 15;
  sub_22122B9B8(v17, a1 + 80, v6, &v16);
  TSCEASTViewTractRefElement::appendViewTractRefElement(a2, v17, *(a1 + 98), *(a1 + 99), *(a1 + 96));
  ++*a3;
}

uint64_t sub_22118A58C(void *a1, uint64_t *a2)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_221086EBC((a1 + 4), a2[4], a2[5], (a2[5] - a2[4]) >> 4);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return sub_221086EBC((a1 + 7), a2[7], a2[8], (a2[8] - a2[7]) >> 4);
}

void sub_22118A5F8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22118A614(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void TSCEFormulaCreationMagic::viewCellRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, __int16 a10)
{
  *&v28 = a3;
  *(&v28 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_221083454(&v24, &v28);
  sub_221083454(&v21, &v27);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_221086EBC(&v18, v24, v25, (v25 - v24) >> 4);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_221086EBC(&__p, v21, v22, (v22 - v21) >> 4);
  TSCEFormulaCreationMagic::viewTractRef(a1, a2, &v18, &__p, a7, a8, a10, a9);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_22118A780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSCEFormulaCreationMagic::linkedCellRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22118A858;
  v7[3] = &unk_2784601E0;
  v7[4] = this;
  v7[5] = a2._lower;
  result = objc_msgSend_copy(v7, a2._lower, a2._upper, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_22118A858(TSCEASTNodeArray *a1, TSCEASTNodeArray *this, const TSKUIDStruct *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTLinkedRefElement::appendLinkedCellRefElement(this, a1 + 1, a3, a4, a5);
  ++LODWORD(a3->_lower);
  return result;
}

uint64_t TSCEFormulaCreationMagic::linkedColumnRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22118A910;
  v7[3] = &unk_2784601E0;
  v7[4] = this;
  v7[5] = a2._lower;
  result = objc_msgSend_copy(v7, a2._lower, a2._upper, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_22118A910(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTLinkedRefElement::appendLinkedRefElement(a2, 64, (a1 + 32), a4, a5);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::linkedRowRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22118A9C8;
  v7[3] = &unk_2784601E0;
  v7[4] = this;
  v7[5] = a2._lower;
  result = objc_msgSend_copy(v7, a2._lower, a2._upper, a3, a4);
  *a5 = result;
  return result;
}

unint64_t sub_22118A9C8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  result = TSCEASTLinkedRefElement::appendLinkedRefElement(a2, 65, (a1 + 32), a4, a5);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::categoryRef(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = this;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22118AAB0;
  v10[3] = &unk_278460228;
  v11 = v4;
  v5 = v4;
  *a2 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_22118AAB0(uint64_t a1, TSCEASTNodeArray *this, TSCECategoryRef *a3)
{
  result = TSCEASTCategoryRefElement::appendCategoryRefElement(this, *(a1 + 32), a3);
  ++LODWORD(a3->super.isa);
  return result;
}

void TSCEFormulaCreationMagic::colonTractRef(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = this;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22118AB98;
  v10[3] = &unk_278460228;
  v11 = v4;
  v5 = v4;
  *a2 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_22118AB98(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, TSCEUndoTractList *a4)
{
  result = TSCEASTColonTractElement::appendColonTractElement(this, *(a1 + 32), 0, a4);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::absColonTractRef(TSCEFormulaCreationMagic *this@<X0>, TSCECellTractRef *a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = this;
  v6 = [TSCERelativeTractRef alloc];
  v9 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v6, v7, v10, a2, v8);
  TSCEFormulaCreationMagic::colonTractRef(v9, a3);
}

unint64_t sub_22118AC68(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTBinaryElement::appendBinaryElement(a2, 28, v6, v7, v8);
  ++*a3;
  return result;
}

uint64_t TSCEFormulaCreationMagic::TODAY@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 154;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::DATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(39, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::DATEDIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(40, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EDATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(47, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::YEAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(167, &v5, a3);
}

void TSCEFormulaCreationMagic::MONTH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(94, &v5, a3);
}

void TSCEFormulaCreationMagic::DAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(41, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKDAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(166, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKDAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(166, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MONTHNAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(205, &v5, a3);
}

void TSCEFormulaCreationMagic::DAYNAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(236, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKNUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(206, &v5, a3);
}

void TSCEFormulaCreationMagic::DURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(212, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(212, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CEILING(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(17, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FLOOR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(55, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROUND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(126, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROUNDUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(128, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROUNDDOWN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(127, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118B834;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_22118B834(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 9, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::LE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118B97C;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_22118B97C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 10, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::GT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118BAC4;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_22118BAC4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 7, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::GE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118BC0C;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_22118BC0C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 8, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::EQ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118BD54;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_22118BD54(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 11, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::NE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118BE9C;
  v14[3] = &unk_2834A2690;
  v15 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v15;
  v15 = v6;

  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v16;
  v16 = v8;

  *a4 = objc_msgSend_copy(v14, v10, v11, v12, v13);
}

unint64_t sub_22118BE9C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 12, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::negate(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_22118BFB8;
  v10[3] = &unk_2834A27A0;
  v11 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v11;
  v11 = v4;

  *a3 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_22118BFB8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 13, v5, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator+(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118C0DC;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v14;
  v14 = v5;

  v15 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v15;
  v15 = v7;

  *a3 = objc_msgSend_copy(v13, v9, v10, v11, v12);
}

unint64_t sub_22118C0DC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 1, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator-(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118C224;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v14;
  v14 = v5;

  v15 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v15;
  v15 = v7;

  *a3 = objc_msgSend_copy(v13, v9, v10, v11, v12);
}

unint64_t sub_22118C224(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 2, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator*(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118C36C;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v14;
  v14 = v5;

  v15 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v15;
  v15 = v7;

  *a3 = objc_msgSend_copy(v13, v9, v10, v11, v12);
}

unint64_t sub_22118C36C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 3, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator/(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118C4B4;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v14;
  v14 = v5;

  v15 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v15;
  v15 = v7;

  *a3 = objc_msgSend_copy(v13, v9, v10, v11, v12);
}

unint64_t sub_22118C4B4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 4, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator&(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118C5FC;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v14;
  v14 = v5;

  v15 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v15;
  v15 = v7;

  *a3 = objc_msgSend_copy(v13, v9, v10, v11, v12);
}

unint64_t sub_22118C5FC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 6, v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::opPercent(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_22118C718;
  v10[3] = &unk_2834A27A0;
  v11 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v11;
  v11 = v4;

  *a3 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_22118C718(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 15, v5, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::opIntersect(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3321888768;
  v11[2] = sub_22118C818;
  v11[3] = &unk_2834A28C0;
  v12 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v12;
  v12 = v5;

  v13 = a2;
  *a3 = objc_msgSend_copy(v11, v7, v8, v9, v10);
}

unint64_t sub_22118C818(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTIntersectionElement::appendIntersectionElement(a2, *(a1 + 40), v6, v7, v8);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::opSpillRange(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_22118C91C;
  v10[3] = &unk_2834A27A0;
  v11 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v11;
  v11 = v4;

  *a3 = objc_msgSend_copy(v10, v6, v7, v8, v9);
}

unint64_t sub_22118C91C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 70, v5, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(296, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(77, &v5, a3);
}

void TSCEFormulaCreationMagic::RIGHT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(124, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LEFT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(76, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MID(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(87, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UPPER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(158, &v5, a3);
}

void TSCEFormulaCreationMagic::LOWER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(82, &v5, a3);
}

void TSCEFormulaCreationMagic::CHAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(18, &v5, a3);
}

void TSCEFormulaCreationMagic::CODE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(21, &v5, a3);
}

void TSCEFormulaCreationMagic::EXACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(49, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INDIRECT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(64, &v5, a3);
}

void TSCEFormulaCreationMagic::INDIRECT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(64, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TOCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(348, &v5, a3);
}

void TSCEFormulaCreationMagic::TOCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(348, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TOCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(348, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TOROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(349, &v5, a3);
}

void TSCEFormulaCreationMagic::TOROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(349, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TOROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(349, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UNION_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(285, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UNION_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(285, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::INTERSECT_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(280, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INTERSECT_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(280, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::VLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(165, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::XLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(314, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::XMATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(315, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::ARRAYTOTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(341, &v5, a3);
}

void TSCEFormulaCreationMagic::ARRAYTOTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(341, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHOOSECOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(354, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHOOSECOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(354, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CHOOSECOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(354, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::CHOOSEROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(353, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHOOSEROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(353, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CHOOSEROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(353, &v17, &v16, &v15, &v14, a6);
}

uint64_t TSCEFormulaCreationMagic::RANDARRAY@<X0>(const char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184BB4;
  v8[3] = &unk_278460290;
  v9 = 346;
  result = objc_msgSend_copy(v8, a1, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(346, &v5, a3);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(346, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(346, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(346, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(346, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MAKEARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(365, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::BYCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(370, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BYROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(369, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MAP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(366, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MAP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(366, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MAP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(366, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::LAMBDA_APPLY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(372, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LAMBDA_APPLY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(372, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LAMBDA_APPLY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(372, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::REDUCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(367, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SCAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(368, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::ISOMITTED(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(371, &v5, a3);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(343, &v5, a3);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(343, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(343, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(343, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SORTBY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(344, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SORTBY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(344, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SORTBY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(344, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::TRANSPOSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(220, &v5, a3);
}

void TSCEFormulaCreationMagic::TAKE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(350, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TAKE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(350, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::DROP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(351, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DROP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(351, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EXPAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(352, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::EXPAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(352, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EXPAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(352, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::FILTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(342, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FILTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(342, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::HSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(355, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::HSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(355, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::VSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(356, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::VSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(356, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UNIQUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(345, &v5, a3);
}

void TSCEFormulaCreationMagic::UNIQUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(345, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::UNIQUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(345, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MDETERM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(359, &v5, a3);
}

void TSCEFormulaCreationMagic::MINVERSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(360, &v5, a3);
}

void TSCEFormulaCreationMagic::MMULT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(361, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MUNIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(362, &v5, a3);
}

void TSCEFormulaCreationMagic::VALUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(159, &v5, a3);
}

void TSCEFormulaCreationMagic::DATEVALUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(228, &v5, a3);
}

void TSCEFormulaCreationMagic::TIMEVALUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(153, &v5, a3);
}

void TSCEFormulaCreationMagic::_ABS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(1, &v5, a3);
}

void TSCEFormulaCreationMagic::ACCRINT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(2, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::ACCRINTM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(3, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::ACOS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(4, &v5, a3);
}

void TSCEFormulaCreationMagic::ACOSH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(5, &v5, a3);
}

void TSCEFormulaCreationMagic::ADDRESS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(6, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(7, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::AREAS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(8, &v5, a3);
}

void TSCEFormulaCreationMagic::ASIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(9, &v5, a3);
}

void TSCEFormulaCreationMagic::ASINH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(10, &v5, a3);
}

void TSCEFormulaCreationMagic::ATAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(11, &v5, a3);
}

void TSCEFormulaCreationMagic::ATAN2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(12, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ATANH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(13, &v5, a3);
}

void TSCEFormulaCreationMagic::AVEDEV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(14, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::AVERAGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(15, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::AVERAGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(15, &v5, a3);
}

void TSCEFormulaCreationMagic::AVERAGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(15, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AVERAGEA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(16, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::AVERAGEIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(234, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AVERAGEIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(234, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::AVERAGEIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(232, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::AVERAGEIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(232, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::BASETONUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(252, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BESSELJ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(237, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BESSELY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(238, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BETADIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(258, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::BETAINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(259, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::BIN2DEC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(268, &v5, a3);
}

void TSCEFormulaCreationMagic::BIN2HEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(267, &v5, a3);
}

void TSCEFormulaCreationMagic::BIN2OCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(269, &v5, a3);
}

void TSCEFormulaCreationMagic::BINOMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(242, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::BITAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(330, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BITOR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(331, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BITXOR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(332, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BONDDURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(194, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::BONDMDURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(195, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CHIDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(246, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHIINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(256, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHITEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(247, &v5, a3);
}

void TSCEFormulaCreationMagic::CHOOSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(19, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::CHOOSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(19, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::CLEAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(20, &v5, a3);
}