void AlgsDevice::handleInputStream(AlgsDevice *this, const void *a2, unint64_t a3, void *a4, unint64_t *a5, unsigned __int8 *a6, unsigned __int16 *a7, const void **a8)
{
  OUTLINED_FUNCTION_27();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = OUTLINED_FUNCTION_23(v20);
  if (v23)
  {
    v24 = *v17;
  }

  AlgsDevice::StreamingClient::setBuffer(v21, v22);
  v29 = *(v8 + 64);
  if (v15)
  {
    *v15 = 0;
  }

  v31 = (v29 + 128);
  v30 = *(v29 + 128);
  v32 = *(v29 + 136);
  v112 = v29 + 128;
  v113 = v9;
  v115 = 0;
  v116 = 0;
  v114 = v19;
  LOBYTE(v117) = v30;
  v118 = v32;
  if (v19 < 2 || *v9 != 1)
  {
LABEL_110:
    v110 = 0;
    if (!v17)
    {
      goto LABEL_112;
    }

LABEL_111:
    *v17 = v110;
    goto LABEL_112;
  }

  switch(*(v9 + 1))
  {
    case 1:
      v133 = &v130;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v115 = 2;
      v116 = &v133;
      if (v19 == 2)
      {
        goto LABEL_110;
      }

      v33 = *(v9 + 2);
      LOBYTE(v130) = v33;
      if (v19 == 3)
      {
        goto LABEL_12;
      }

      if (!SABinaryParser::parseInfoData(&v113, StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, 0, 0, 0))
      {
        goto LABEL_110;
      }

      v33 = v130;
LABEL_12:
      v34 = *(v29 + 32);
      OUTLINED_FUNCTION_19();
      (*(v35 + 40))(v34, v33);
      v36 = 0;
      *(v34 + 77) = v33;
      v37 = v34 + 32;
      while (v36 != 16)
      {
        v38 = *(v37 + v36);
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_11(v38);
          (*(v40 + 16))(v39, v33);
        }

        v36 += 8;
      }

      goto LABEL_103;
    case 2:
      v123 = 0;
      v124 = 0;
      if ((StreamingParser::numberOfPackets(&v112, &v124, &v123, 0, v25, v26, v27, v28) & 1) == 0)
      {
        goto LABEL_110;
      }

      v67 = *(v29 + 104);
      v68 = v124;
      if (v67)
      {
        v68 = v124 + *(v67 + 20);
        v124 += *(v67 + 20);
      }

      AlgDataInjector::AlgDataInjector(&v130, v68);
      AlgDataExtractor::AlgDataExtractor(&v133, v123);
      v119 = v125;
      v120 = &v130;
      v121 = &v133;
      v116 = &v119;
      if (SABinaryParser::parseRunFrame(&v113, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_2::__invoke))
      {
        AlgsDevice::StreamingClient::translate(v29, &v130, &v133);
        *(v29 + 97) = 1;
        v69 = *(v29 + 32);
        AlgsDevice::run();
        PacketCollection::~PacketCollection(&v133);
        v70 = &v130;
        goto LABEL_102;
      }

      PacketCollection::~PacketCollection(&v133);
      v88 = &v130;
      goto LABEL_109;
    case 3:
      v123 = 0;
      v124 = 0;
      v122 = 0;
      if ((StreamingParser::numberOfPackets(&v112, &v124, &v123, &v122, v25, v26, v27, v28) & 1) == 0)
      {
        goto LABEL_110;
      }

      v51 = *(v29 + 104);
      v52 = v124;
      if (v51)
      {
        v52 = v124 + *(v51 + 20);
        v124 += *(v51 + 20);
      }

      AlgDataInjector::AlgDataInjector(&v119, v52);
      AlgDataExtractor::AlgDataExtractor(&v133, v123);
      AlgDataExtractor::AlgDataExtractor(&v130, v122);
      *v125 = v29 + 88;
      v126 = &v119;
      v127 = &v133;
      v128 = &v130;
      v116 = v125;
      v53 = SABinaryParser::parseInjExtFrame(&v113, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_2::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_3::__invoke);
      if (!v53)
      {
        PacketCollection::~PacketCollection(&v130);
        PacketCollection::~PacketCollection(&v133);
        v88 = &v119;
        goto LABEL_109;
      }

      v54 = HIDWORD(v132);
      v55 = (v131 + 72);
      if (HIDWORD(v132))
      {
        do
        {
          *(v55 - 1) = AlgsDevice::StreamingClient::extraction;
          *v55 = v29;
          --v54;
          v55 += 10;
        }

        while (v54);
      }

      AlgsDevice::StreamingClient::translate(v29, &v119, &v133);
      *(v29 + 97) = 1;
      v56 = *(v29 + 32);
      AlgsDevice::injExtWith();
      *(v29 + 88) = 0;
      PacketCollection::~PacketCollection(&v130);
      PacketCollection::~PacketCollection(&v133);
      PacketCollection::~PacketCollection(&v119);
      if (!v53)
      {
        goto LABEL_110;
      }

      goto LABEL_103;
    case 4:
      if (v19 - 5 >= 0xFFFFFFFFFFFFFFFDLL)
      {
        v57 = 1;
        if (v15)
        {
          *v15 = 1;
          v57 = 0;
        }

        if (v13)
        {
          *v13 = 0;
        }
      }

      else
      {
        v57 = *(v9 + 2);
        if (v15)
        {
          *v15 = v57;
          v57 = 0;
        }

        if (v13)
        {
          *v13 = *(v9 + 3);
        }

        if (v11)
        {
          *v11 = v9 + 5;
        }
      }

      if (v15)
      {
        v57 = *v15;
      }

      if (v13 && v57 == 1 && *v13 && **v11 == 255)
      {
        **v11 = *(*(v29 + 32) + 77);
      }

      goto LABEL_103;
    case 5:
      v125[0] = 0;
      LOBYTE(v124) = 0;
      v119 = 0;
      OUTLINED_FUNCTION_29();
      if ((StreamingParser::numberOfPackets(v41, v42, v43, v44, v45, v46, v47, v48) & 1) == 0)
      {
        goto LABEL_110;
      }

      AlgDataExtractor::AlgDataExtractor(&v133, v119);
      v130 = &v124;
      v131 = v125;
      v132 = &v133;
      v116 = &v130;
      if (!SABinaryParser::parseConfigure(&v113, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_2::__invoke))
      {
        goto LABEL_108;
      }

      v50 = v124;
      if (v124 <= 2u)
      {
        AlgsDevice::StreamingClient::configure(v29, v125[0], &v133);
        v50 = v124;
      }

      if (v50 == 3 && HIDWORD(v134))
      {
        StreamingWriter::writeConfigure((v29 + 40), v125[0], &v133, v49);
      }

      else
      {
        AlgsDevice::StreamingClient::configureStatus(v29);
      }

      goto LABEL_101;
    case 6:
      LODWORD(v124) = 0;
      LOBYTE(v123) = 0;
      LOBYTE(v122) = 0;
      v129 = 0;
      v119 = 0;
      v120 = 16;
      LOBYTE(v121) = 0;
      *v125 = 0;
      OUTLINED_FUNCTION_29();
      if ((StreamingParser::numberOfPackets(v71, v72, v73, v74, v75, v76, v77, v78) & 1) == 0)
      {
        SAList<char const*>::~SAList(&v119);
        goto LABEL_110;
      }

      AlgDataExtractor::AlgDataExtractor(&v130, *v125);
      v133 = &v123;
      *&v134 = &v124;
      *(&v134 + 1) = &v122;
      *&v135 = &v129 + 1;
      *(&v135 + 1) = &v119;
      *&v136 = &v129;
      *(&v136 + 1) = &v130;
      v116 = &v133;
      if (SABinaryParser::parseInfo(&v113, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_2::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_3::__invoke))
      {
        v79 = *(v29 + 32);
        if (v124 && v124 != *(v79 + 72))
        {
          StreamingWriter::writeInfo(v29 + 40, v123, v124, v122, HIBYTE(v129), &v119, v129, &v130);
          v81 = 1;
        }

        else
        {
          Info = AlgsDevice::getInfo(*(v29 + 32));
          AlgDataExtractor::AlgDataExtractor(&v133, *(v79 + 48));
          AlgsDevice::getClientExtractor();
          v81 = StreamingWriter::writeInfo(v29 + 40, BYTE5(Info), Info, BYTE4(Info), BYTE6(Info), *(v29 + 32) + 80, *(v29 + 96), &v133);
          PacketCollection::~PacketCollection(&v133);
        }
      }

      else
      {
        v81 = 0;
      }

      PacketCollection::~PacketCollection(&v130);
      SAList<char const*>::~SAList(&v119);
      if ((v81 & 1) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_103;
    case 7:
      *v125 = 0;
      AlgDataExtractor::AlgDataExtractor(&v133);
      AlgDataExtractor::AlgDataExtractor(&v130);
      v119 = v125;
      v120 = &v133;
      v121 = &v130;
      v116 = &v119;
      if (v19 - 6 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_107;
      }

      v115 = 6;
      if (!StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke(&v119, *(v9 + 2)))
      {
        goto LABEL_107;
      }

      v82 = v115;
      v83 = v114 - v115;
      break;
    case 8:
      v58 = OUTLINED_FUNCTION_11(*(v29 + 32));
      v60 = (*(v59 + 48))(v58);
      TreeSize = AlgWorkNode::getTreeSize(v60);
      v62 = AlgsDevice::getInfo(*(v29 + 32));
      *(&v133 + 1) = 0;
      LOBYTE(v133) = BYTE5(v62);
      if (!SABinaryWriter::writeHeader(v29 + 48, 8))
      {
        *(v29 + 64) += 4 * TreeSize;
        goto LABEL_110;
      }

      v63 = SABinaryWriter::write((v29 + 48), &v133, 5uLL);
      *(v29 + 64) += 4 * TreeSize;
      if ((v63 & 1) == 0)
      {
        goto LABEL_110;
      }

      v64 = OUTLINED_FUNCTION_11(*(v29 + 32));
      v66 = (*(v65 + 48))(v64);
      if (!AlgWorkNode::getTreeInfo(v66, v29, 1))
      {
        goto LABEL_110;
      }

      goto LABEL_103;
    case 9:
      LOBYTE(v130) = 0;
      v133 = &v130;
      *&v134 = v29 + 128;
      if (v19 - 2 <= 2)
      {
        goto LABEL_110;
      }

      if (!StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(&v133, *(v9 + 2), *(v9 + 3), (v9 + 4)))
      {
        goto LABEL_110;
      }

      v86 = *v31;
      if (!*v31)
      {
        goto LABEL_110;
      }

      v87 = *(v29 + 136);
      LOBYTE(v133) = 1;
      BYTE1(v133) = v86;
      SABinaryWriter::updateCacheSizes(v86, v87);
      if (!SABinaryWriter::writeHeader(v29 + 48, 9) || (SABinaryWriter::write((v29 + 48), &v133, 2uLL) & 1) == 0 || (SABinaryWriter::write((v29 + 48), v87, 22 * v86) & 1) == 0)
      {
        goto LABEL_110;
      }

      goto LABEL_103;
    default:
      goto LABEL_110;
  }

  while (1)
  {
    v84 = v82;
    if (v114 <= v82)
    {
      break;
    }

    if (v83 < 0x12 || *(v113 + v82) != 3 || v83 - 18 < 0x12)
    {
      goto LABEL_106;
    }

    v85 = v113 + v82;
    v82 += 36;
    if (*(v113 + v84 + 18) != 3)
    {
      v84 += 36;
      goto LABEL_106;
    }

    v83 -= 36;
    if ((StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(v116, v113 + v84, v85 + 18) & 1) == 0)
    {
      v84 += 36;
LABEL_106:
      v115 = v84;
LABEL_107:
      PacketCollection::~PacketCollection(&v130);
LABEL_108:
      v88 = &v133;
LABEL_109:
      PacketCollection::~PacketCollection(v88);
      goto LABEL_110;
    }
  }

  v115 = v82;
  v89 = *v125;
  if (*v125 == *(*(v29 + 32) + 72))
  {
    AlgsDevice::StreamingClient::configureTranslation(v29, &v133, &v130);
    v89 = *v125;
  }

  LODWORD(v119) = v89;
  if (SABinaryWriter::writeHeader(v29 + 48, 7))
  {
    v90 = SABinaryWriter::write((v29 + 48), &v119, 4uLL);
    if (v90)
    {
      if (HIDWORD(v134) == HIDWORD(v132))
      {
        v98 = 0;
        v99 = -1;
        do
        {
          if (++v99 >= HIDWORD(v134))
          {
            break;
          }

          if (*(v29 + 72) != 7)
          {
            break;
          }

          v100 = v131[v98 + 33];
          v101 = *(v134 + v98 + 33);
          v102 = OUTLINED_FUNCTION_34(v90, v91, v92, v93, v94, v95, v96, v97, *&v131[v98], *&v131[v98 + 8], v112, v113, v114, v115, v116, v117, v118, 3, *(v134 + v98) >> 56, HIBYTE(*(v134 + v98)), SBYTE1(v121));
          if ((v102 & 1) == 0)
          {
            break;
          }

          v98 += 80;
          v90 = OUTLINED_FUNCTION_34(v102, v103, v104, v105, v106, v107, v108, v109, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117, v118, v119, v111 >> 56, SHIBYTE(v111), SBYTE1(v121));
        }

        while ((v90 & 1) != 0);
      }
    }
  }

  PacketCollection::~PacketCollection(&v130);
LABEL_101:
  v70 = &v133;
LABEL_102:
  PacketCollection::~PacketCollection(v70);
LABEL_103:
  v110 = AlgsDevice::StreamingClient::resetBuffer(*(v8 + 64));
  if (v17)
  {
    goto LABEL_111;
  }

LABEL_112:
  OUTLINED_FUNCTION_28();
}

void sub_2655B48E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  PacketCollection::~PacketCollection(&a36);
  PacketCollection::~PacketCollection((v36 - 184));
  _Unwind_Resume(a1);
}

uint64_t SABinaryParser::parseInfoData(uint64_t *a1, uint64_t (*a2)(uint64_t, void, void, void, void), uint64_t (*a3)(uint64_t, const char *), uint64_t (*a4)(uint64_t, BOOL), uint64_t (*a5)(void))
{
  v5 = a1[2];
  if ((a1[1] - v5) < 7)
  {
    return 0;
  }

  v10 = *a1;
  a1[2] = v5 + 7;
  if (!a2 || (result = a2(a1[3], *(v10 + v5), *(v10 + v5 + 1), *(v10 + v5 + 5), *(v10 + v5 + 6)), result))
  {
    while (1)
    {
      v12 = a1[1];
      v13 = a1[2];
      result = v12 == v13;
      if (v12 == v13)
      {
        break;
      }

      v14 = *a1;
      v15 = (*a1 + v13);
      v16 = *v15;
      v17 = v13 + 1;
      a1[2] = v13 + 1;
      if (!v16)
      {
        if (v12 == v17)
        {
          return 0;
        }

        v21 = v13 + 2;
        a1[2] = v21;
        if (a4)
        {
          result = a4(a1[3], *(v14 + v17) != 0);
          if (!result)
          {
            return result;
          }

          v12 = a1[1];
          v21 = a1[2];
        }

        if (v12 == v21)
        {
          return 1;
        }

        OUTLINED_FUNCTION_29();

        return SABinaryParser::parseInjExtData(v22, v23, v24, a5);
      }

      v18 = *v15;
      if (v12 - v17 >= v18)
      {
        a1[2] = v17 + v18;
        v20 = *v15;
        v19 = (v15 + 1);
        if (strnlen(v19, v20) != v20 && (!a3 || (a3(a1[3], v19) & 1) != 0))
        {
          continue;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke(uint64_t a1, char a2, int a3, char a4, char a5)
{
  if (*a1)
  {
    **a1 = a2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *v6 = a4;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *v7 = a5;
  }

  return 1;
}

BOOL SABinaryParser::parseInjExtData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_36();
  v8 = v7;
  while (1)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    v11 = v9 - v10;
    if (v9 <= v10)
    {
      return v9 <= v10;
    }

    v12 = (*v8 + v10);
    v13 = *v12;
    if (v13 < 0)
    {
      v15 = *(v8 + 40);
      if (!v15)
      {
        return v9 <= v10;
      }

      v16 = v13 & 0x7F;
      if (v16 >= *(v8 + 32))
      {
        return v9 <= v10;
      }

      v17 = (v15 + 22 * v16);
      v18 = *(v17 + 10);
      if (v11 <= v18)
      {
        return v9 <= v10;
      }

      *(v8 + 16) = v10 + v18 + 1;
      if (*v17 == 1)
      {
        if (v5)
        {
          v19 = *(v8 + 24);
          v20 = (v12 + 1);
          v12 = v17;
LABEL_21:
          if ((v5(v19, v12, v20) & 1) == 0)
          {
            return v9 <= v10;
          }
        }
      }

      else if (v4)
      {
        v22 = *(v8 + 24);
        v23 = (v12 + 1);
        v12 = v17;
LABEL_27:
        if ((v4(v22, v12, v23) & 1) == 0)
        {
          return v9 <= v10;
        }
      }
    }

    else
    {
      if (v11 < 0x12)
      {
        return v9 <= v10;
      }

      v14 = *v12;
      *(v8 + 16) = v10 + 18;
      if (v14 == 3)
      {
        if (a4 && (a4(*(v8 + 24)) & 1) == 0)
        {
          return v9 <= v10;
        }
      }

      else
      {
        if (v9 - (v10 + 18) < 4)
        {
          return v9 <= v10;
        }

        *(v8 + 16) = v10 + 22;
        v21 = *(v12 + 10);
        if (v9 - (v10 + 22) < v21)
        {
          return v9 <= v10;
        }

        *(v8 + 16) = v10 + 22 + v21;
        if (v14 == 2)
        {
          if (v4)
          {
            v22 = *(v8 + 24);
            v23 = (v12 + 22);
            goto LABEL_27;
          }
        }

        else
        {
          if (v14 != 1)
          {
            return v9 <= v10;
          }

          if (v5)
          {
            v19 = *(v8 + 24);
            v20 = (v12 + 22);
            goto LABEL_21;
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_31()
{

  return SABinaryWriter::updateCacheSizes(0, 0);
}

uint64_t AlgsDevice::StreamingClient::setBuffer(AlgsDevice::StreamingClient *this, void *a2)
{
  OUTLINED_FUNCTION_12();
  result = OUTLINED_FUNCTION_31();
  *(v4 + 40) = 0;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 74) = 0;
  *(v4 + 80) = 0;
  return result;
}

uint64_t TouchService::TouchServiceAlgsDevice::newPlanNode(TouchService::TouchServiceAlgsDevice *this, int a2)
{
  if (a2 == 1)
  {
    v7 = *(this + 15);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 128);
    v9 = operator new(0x1D8uLL);
    active = TouchService::TouchServiceTTWPlan::TouchServiceTTWPlan(v9);
    goto LABEL_9;
  }

  if (!a2)
  {
    v3 = *(this + 15);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 128);
    v5 = operator new(0xFF0uLL);
    active = TouchService::TouchServiceActivePlan::TouchServiceActivePlan(v5);
LABEL_9:
    *(this + 15) = active;
    return 1;
  }

  return 0;
}

void TouchService::TouchServiceTTWPlan::~TouchServiceTTWPlan(TouchService::TouchServiceTTWPlan *this)
{
  *this = &unk_2876F5E50;
  AlgWorkNode::~AlgWorkNode((this + 336));
  *(this + 28) = &unk_2876F69B0;
  *(this + 20) = &unk_2876F69B0;
  AlgTaskNode::~AlgTaskNode(this);

  operator delete(v2);
}

{
  *this = &unk_2876F5E50;
  AlgWorkNode::~AlgWorkNode((this + 336));
  *(this + 28) = &unk_2876F69B0;
  *(this + 20) = &unk_2876F69B0;

  AlgTaskNode::~AlgTaskNode(this);
}

void AlgWorkNode::~AlgWorkNode(AlgWorkNode *this)
{
  *this = &unk_2876F6AE8;
  if (*(this + 5))
  {
    *(this + 5) = 0;
  }

  if (*(this + 11))
  {
    *(this + 11) = 0;
  }

  if (*(this + 17))
  {
    *(this + 17) = 0;
  }

  if (*(this + 23))
  {
    *(this + 23) = 0;
  }

  v2 = *(this + 10);
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    operator delete[](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    operator delete[](v5);
  }
}

void AlgTaskNode::~AlgTaskNode(AlgTaskNode *this)
{
  *this = &unk_2876F6A70;
  if (*(this + 31))
  {
    *(this + 31) = 0;
  }

  v2 = *(this + 14);
  if (v2)
  {
    operator delete[](v2);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  AlgTaskNode::~AlgTaskNode(this);

  operator delete(v1);
}

TouchService::TouchServiceActivePlan *TouchService::TouchServiceActivePlan::TouchServiceActivePlan(TouchService::TouchServiceActivePlan *this)
{
  AlgTaskNode::AlgTaskNode(this);
  *v2 = &unk_2876F6258;
  v2[21] = 0;
  v2[22] = 0;
  v2[20] = 0;
  v6 = (v2 + 23);
  SurfaceDescriptorNode::SurfaceDescriptorNode((v2 + 23), 0x29965DE49819D20DLL);
  DeviceOrientationNode::DeviceOrientationNode(this + 240, 0x83DB5EE3F6A933E1);
  TouchService::PlainPathCollection::PlainPathCollection(this + 272, 0x310DDDD485, 18, 0);
  AlgDataNode::AlgDataNode((this + 328), 0xEDBB78967950011, 0);
  *(this + 41) = &unk_2876F6338;
  *(this + 360) = 0;
  *(this + 91) = 0;
  *(this + 86) = 31236;
  *(this + 88) = 8;
  AlgDataNode::AlgDataNode((this + 368), 0x4D123D542B029C57, 0);
  *(this + 46) = &unk_2876F6388;
  *(this + 400) = 0;
  *(this + 201) = 0;
  *(this + 404) = 0;
  *(this + 96) = 31238;
  *(this + 98) = 12;
  AlgDataNode::AlgDataNode((this + 416), 0x43B0D8573E93CC26, 0);
  *(this + 52) = &unk_2876F63D8;
  *(this + 446) = 0;
  *(this + 108) = 20482;
  *(this + 110) = 1;
  AlgDataNode::AlgDataNode((this + 448), 0xFC9144553B9D1414, 0);
  *(this + 60) = 0;
  *(this + 487) = 0;
  *(this + 116) = 20527;
  *(this + 118) = 16;
  *(this + 56) = &unk_2876F62D0;
  *(this + 62) = this + 446;
  AlgDataNode::AlgDataNode((this + 504), 0xBFD069D33EF501AALL, 0);
  *(this + 63) = &unk_2876F6428;
  *(this + 534) = 0;
  *(this + 130) = 20480;
  *(this + 132) = 1;
  AlgDataNode::AlgDataNode((this + 536), 0xC117575754B910ECLL, 0);
  *(this + 67) = &unk_2876F6478;
  *(this + 142) = 0;
  *(this + 138) = 20486;
  *(this + 140) = 4;
  AlgDataNode::AlgDataNode((this + 576), 0x84A7C1216FAC7749, 0);
  *(this + 72) = &unk_2876F6478;
  *(this + 152) = 0;
  *(this + 148) = 20486;
  *(this + 150) = 4;
  AlgDataNode::AlgDataNode((this + 616), 0xB0A60E3AEC10AE51, 0);
  v5 = v3;
  *(this + 77) = &unk_2876F63D8;
  *(this + 646) = 0;
  *(this + 158) = 20482;
  *(this + 160) = 1;
  AlgDataNode::AlgDataNode((this + 648), 0x614773EFA4E20E8CLL, 0);
  *(this + 81) = &unk_2876F63D8;
  *(this + 678) = 0;
  *(this + 166) = 20482;
  *(this + 168) = 1;
  AlgDataNode::AlgDataNode((this + 680), 0x7E2F3B82958BC45, 0);
  *(this + 85) = &unk_2876F64C8;
  *(this + 89) = 0;
  *(this + 720) = 0;
  *(this + 181) = 0;
  *(this + 174) = 31243;
  *(this + 176) = 16;
  AlgDataNode::AlgDataNode((this + 728), 0x450AA5C3F7652727, 0);
  *(this + 91) = &unk_2876F6428;
  *(this + 758) = 0;
  *(this + 186) = 20480;
  *(this + 188) = 1;
  AlgDataNode::AlgDataNode((this + 760), 0x377A1603BFB01C2, 0);
  *(this + 107) = 0;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 194) = 31232;
  *(this + 196) = 72;
  *(this + 95) = &unk_2876F5DE8;
  *(this + 864) = 0;
  TouchService::TouchServiceEventCollection::TouchServiceEventCollection(this + 872, 0xBB59337C2FBD0775, 18, 0);
  AlgDataNode::AlgDataNode((this + 928), 0x348FFB668AEB850DLL, 0);
  *(this + 128) = 0;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 236) = 31232;
  *(this + 238) = 72;
  *(this + 116) = &unk_2876F5DE8;
  *(this + 1032) = 0;
  TouchService::TouchServiceEventCollection::TouchServiceEventCollection(this + 1040, 0xA6CEC30BA0ABCAE0, 18, 0);
  TouchService::TouchServicePathStatsCollection::TouchServicePathStatsCollection(this + 1096, 0x377AB9DB80CC6E1, 18, 0);
  AlgDataNode::AlgDataNode((this + 1152), 0xE6B312786F98B150, 0);
  *(this + 296) = 0;
  *(this + 292) = 20481;
  *(this + 294) = 4;
  *(this + 144) = &unk_2876F6518;
  *(this + 1188) = 0;
  AlgDataNode::AlgDataNode((this + 1192), 0x3779E57A5AD9093, 0);
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 302) = 31239;
  *(this + 304) = 32;
  *(this + 149) = &unk_2876F6580;
  *(this + 1256) = 0;
  AlgDataNode::AlgDataNode((this + 1264), 0x348FF85DF49E13DELL, 0);
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 320) = 31239;
  *(this + 322) = 32;
  *(this + 158) = &unk_2876F6580;
  *(this + 1328) = 0;
  AlgDataNode::AlgDataNode((this + 1336), 0xDACD1AB81EF736C2, 0);
  *(this + 683) = 0;
  *(this + 338) = 20480;
  *(this + 340) = 1;
  *(this + 167) = &unk_2876F65E8;
  AlgDataNode::AlgDataNode((this + 1368), 0x802C362E537882D8, 1);
  *(this + 1476) = 0u;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 1416) = 0u;
  *(this + 1432) = 0u;
  *(this + 1400) = 0u;
  *(this + 350) = 2047803400;
  *(this + 702) = 28;
  *(this + 346) = 39426;
  *(this + 348) = 92;
  *(this + 171) = &unk_2876F6638;
  *(this + 187) = &unk_2876F6680;
  *(this + 752) = 0;
  TouchService::TouchTask::TouchTask(this + 1512, this + 728, this + 136, this + 576, v6, this + 240, this + 272, this + 328, this + 368, this + 1368, this + 1096, this + 928, this + 1040, this + 760, this + 872, this + 1152, this + 1192, this + 1264, v5, 0);
  TouchService::TouchServiceActivePlan::runNodeRegistrations(this);
  *(this + 270) = 1;
  *(this + 360) = 0;
  *(this + 400) = 0;
  *(this + 446) = 1;
  *(this + 646) = 0;
  *(this + 678) = 0;
  *(this + 720) = 0;
  *(this + 152) = 480;
  return this;
}

void sub_2655B57A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _Unwind_Exception *exception_object, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28)
{
  TouchService::TouchTask::~TouchTask((v28 + 1512));
  *v33 = &unk_2876F69B0;
  *v35 = &unk_2876F69B0;
  *v37 = &unk_2876F69B0;
  *v36 = &unk_2876F69B0;
  *v32 = &unk_2876F69B0;
  TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection(v29);
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(v31);
  *v30 = &unk_2876F69B0;
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(*(v38 - 144));
  *v34 = &unk_2876F69B0;
  **(v38 - 136) = &unk_2876F69B0;
  *a23 = &unk_2876F69B0;
  *a24 = &unk_2876F69B0;
  **(v38 - 128) = &unk_2876F69B0;
  **(v38 - 120) = &unk_2876F69B0;
  *a25 = &unk_2876F69B0;
  *a26 = &unk_2876F69B0;
  *a27 = &unk_2876F69B0;
  *a28 = &unk_2876F69B0;
  **(v38 - 112) = &unk_2876F69B0;
  **(v38 - 104) = &unk_2876F69B0;
  TouchService::PlainPathCollection::~PlainPathCollection((v28 + 272));
  DeviceOrientationNode::~DeviceOrientationNode((v28 + 240));
  **(v38 - 96) = &unk_2876F69B0;
  AlgTaskNode::~AlgTaskNode(v28);
  _Unwind_Resume(a1);
}

void AlgTaskNode::AlgTaskNode(AlgTaskNode *this)
{
  v1 = OUTLINED_FUNCTION_30(this, COERCE_DOUBLE(16));
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *v1 = &unk_2876F6A70;
  *(v1 + 8) = 0;
  *(v1 + 120) = 32;
  *(v1 + 128) = 0;
}

uint64_t SABinaryWriter::updateCacheSizes(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 + 20);
  if (result)
  {
    do
    {
      *v3 = (*v3 + 3) & 0xFFFC;
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30(uint64_t result, double a2)
{
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = a2;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = a2;
  *(result + 96) = 0;
  return result;
}

void SurfaceDescriptorNode::SurfaceDescriptorNode(SurfaceDescriptorNode *this, uint64_t a2)
{
  *(this + 14) = 0;
  *(this + 10) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 4) = 20508;
  *(this + 6) = 24;
  *this = &unk_2876F68F0;
  *(this + 1) = a2;
}

uint64_t TouchService::PlainPathCollection::PlainPathCollection(uint64_t a1, uint64_t a2, int a3)
{
  AlgDataNode::AlgDataNode(a1, a2, 1);
  *v5 = &unk_2876F61A8;
  *(v5 + 32) = &unk_2876F61F0;
  *(v5 + 40) = a3;
  *(v5 + 16) = 12288;
  v6 = (48 * a3) | 4u;
  *(a1 + 44) = v6;
  v7 = operator new(v6);
  *(a1 + 48) = v7;
  v8 = *(a1 + 44);
  *(a1 + 24) = v8;
  bzero(v7, v8);
  **(a1 + 48) = 0;
  *(*(a1 + 48) + 2) = 0;
  return a1;
}

void AlgDataNode::AlgDataNode(AlgDataNode *this, uint64_t a2, char a3)
{
  *this = &unk_2876F69B0;
  *(this + 1) = a2;
  *(this + 28) = a3;
  *(this + 29) = 0;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 10) = 0;
}

uint64_t DeviceOrientationNode::DeviceOrientationNode(uint64_t result, uint64_t a2)
{
  *(result + 28) = 0;
  *(result + 20) = 0;
  *(result + 30) = 0;
  *(result + 24) = 1;
  *result = &unk_2876F68A0;
  *(result + 8) = a2;
  *(result + 16) = 20521;
  return result;
}

uint64_t TouchService::TouchServiceEventCollection::TouchServiceEventCollection(uint64_t a1, uint64_t a2, int a3)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v5 = &unk_2876F6760;
  *(v5 + 32) = &unk_2876F67A8;
  *(v5 + 40) = a3;
  *(v5 + 16) = 31233;
  v6 = (72 * a3 + 8);
  *(a1 + 44) = v6;
  v7 = operator new(v6);
  *(a1 + 48) = v7;
  v8 = *(a1 + 44);
  *(a1 + 24) = v8;
  bzero(v7, v8);
  **(a1 + 48) = 0;
  return a1;
}

void AlgWorkNode::AlgWorkNode(AlgWorkNode *this)
{
  *this = &unk_2876F6AE8;
  *(this + 1) = 0;
  v1 = OUTLINED_FUNCTION_30(this, COERCE_DOUBLE(16));
  *(v1 + 104) = v2;
}

void *TouchService::PathTrackingStep::runNodeRegistrations(TouchService::PathTrackingStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  v2 = *(this + 14);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

uint64_t TouchService::TouchServicePathStatsCollection::TouchServicePathStatsCollection(uint64_t a1, uint64_t a2, int a3)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v5 = &unk_2876F5F68;
  *(v5 + 32) = &unk_2876F5FB0;
  *(v5 + 40) = a3;
  *(v5 + 16) = 31237;
  v6 = (24 * a3) | 4u;
  *(a1 + 44) = v6;
  v7 = operator new(v6);
  *(a1 + 48) = v7;
  v8 = *(a1 + 44);
  *(a1 + 24) = v8;
  bzero(v7, v8);
  return a1;
}

uint64_t TouchService::TouchTask::TouchTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v27 = ConditionalAlgTaskNode::ConditionalAlgTaskNode(a1, 0x377B146B853171BLL, a2);
  *v27 = &unk_2876F5D20;
  *(v27 + 18) = a3;
  TouchService::PlainPathCollection::PlainPathCollection(v27 + 176, 0xBFCA37ADAF690F9DLL, 18, 0);
  AlgDataNode::AlgDataNode((a1 + 232), 0x14186292CB5EC19FLL, 0);
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 248) = 31232;
  *(a1 + 256) = 72;
  *(a1 + 232) = &unk_2876F5DE8;
  *(a1 + 336) = 0;
  TouchService::TouchServiceEventCollection::TouchServiceEventCollection(a1 + 344, 0x726D3482B33B0E37, 18, 0);
  *(a1 + 408) = a4;
  *(a1 + 416) = a5;
  *(a1 + 424) = a6;
  *(a1 + 432) = a7;
  *(a1 + 440) = a8;
  *(a1 + 448) = a9;
  *(a1 + 456) = a19;
  *(a1 + 464) = a10;
  *(a1 + 472) = a20;
  TouchService::PlainPathCollection::PlainPathCollection(a1 + 480, 0x377AC42062A2DE2, 18, 0);
  TouchService::PlainPathCollection::PlainPathCollection(a1 + 536, 0xAD07F595BC326A50, 18, 0);
  *(a1 + 592) = a11;
  *(a1 + 600) = a12;
  *(a1 + 608) = a13;
  *(a1 + 616) = a14;
  *(a1 + 624) = a15;
  *(a1 + 632) = a16;
  *(a1 + 640) = a17;
  *(a1 + 648) = a18;
  TouchService::PathTrackingStep::PathTrackingStep((a1 + 656), *(a1 + 432), (a1 + 480));
  TouchService::ContactReclassificationStep::ContactReclassificationStep((a1 + 784), *(a1 + 144), *(a1 + 416), *(a1 + 424), *(a1 + 464), *(a1 + 432), *(a1 + 472));
  TouchService::CoreAnalyticsStep::CoreAnalyticsStep(a1 + 960, *(a1 + 432), *(a1 + 592), *(a1 + 632), *(a1 + 144), 0);
  TouchService::TipOffsetStep::TipOffsetStep((a1 + 1128), *(a1 + 424), *(a1 + 432));
  TouchService::HysteresisFilterStep::HysteresisFilterStep(a1 + 1296, *(a1 + 408), *(a1 + 416), *(a1 + 424), *(a1 + 432), *(a1 + 144), 0);
  TouchService::RadiusCorrectionStep::RadiusCorrectionStep(a1 + 1568, *(a1 + 432), 0, 1000.0);
  TouchService::InterpolationStep::InterpolationStep((a1 + 1752), *(a1 + 144), a1 + 152, *(a1 + 408), *(a1 + 440), *(a1 + 432), a1 + 480, a1 + 536);
  TouchService::EventGenerationStep::EventGenerationStep((a1 + 1952), 1000.0, 0xE6B14D7065085DALL, *(a1 + 408), *(a1 + 416), a1 + 152, a1 + 536, a1 + 232, a1 + 344, *(a1 + 600), *(a1 + 608), a1 + 400, *(a1 + 456));
  TouchService::EventGenerationStep::EventGenerationStep((a1 + 2152), 1000.0, 0x194876B5C87728CFLL, *(a1 + 408), *(a1 + 416), *(a1 + 144), *(a1 + 432), *(a1 + 600), *(a1 + 608), *(a1 + 616), *(a1 + 624), a1 + 401, *(a1 + 456));
  TouchService::EventInfoStep::EventInfoStep((a1 + 2352), *(a1 + 144), *(a1 + 440), *(a1 + 448), *(a1 + 616), *(a1 + 624), *(a1 + 600), *(a1 + 608), *(a1 + 640), *(a1 + 648));
  TouchService::TouchTask::runNodeRegistrations(a1);
  *(a1 + 400) = 1;
  return a1;
}

{
  return TouchService::TouchTask::TouchTask(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_2655B62D8(_Unwind_Exception *a1)
{
  AlgWorkNode::~AlgWorkNode((v1 + 294));
  AlgWorkNode::~AlgWorkNode((v1 + 269));
  AlgWorkNode::~AlgWorkNode((v1 + 244));
  TouchService::InterpolationStep::~InterpolationStep((v1 + 219));
  TouchService::RadiusCorrectionStep::~RadiusCorrectionStep((v1 + 196));
  TouchService::HysteresisFilterStep::~HysteresisFilterStep((v1 + 162));
  v1[141] = &unk_2876F6018;
  v1[155] = &unk_2876F69B0;
  AlgWorkNode::~AlgWorkNode(v3);
  TouchService::CoreAnalyticsStep::~CoreAnalyticsStep((v1 + 120));
  AlgWorkNode::~AlgWorkNode((v1 + 98));
  AlgWorkNode::~AlgWorkNode((v1 + 82));
  TouchService::PlainPathCollection::~PlainPathCollection((v1 + 67));
  TouchService::PlainPathCollection::~PlainPathCollection((v1 + 60));
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((v1 + 43));
  *v2 = &unk_2876F69B0;
  TouchService::PlainPathCollection::~PlainPathCollection((v1 + 22));
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(a1);
}

AlgTaskNode *ConditionalAlgTaskNode::ConditionalAlgTaskNode(AlgTaskNode *a1, uint64_t a2, uint64_t a3)
{
  AlgTaskNode::AlgTaskNode(a1);
  *v5 = &unk_2876F69F8;
  v5[17] = a3;
  AlgWorkNode::registerAlgDataNode((v5 + 1), a3);
  return a1;
}

void *SAList<std::reference_wrapper<AlgDataNode>>::push_back(uint64_t a1, void *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = *(a1 + 16);
    result = operator new(8 * *(a1 + 8));
    *a1 = result;
  }

  result[(*(a1 + 12))++] = *a2;
  return result;
}

void SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(uint64_t a1, uint64_t a2)
{
  SAList<std::reference_wrapper<AlgDataNode>>::resize(a1, *(a1 + 12) + *(a2 + 8));
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = 8 * v4;
    do
    {
      SAList<std::reference_wrapper<AlgDataNode>>::push_back(a1, v5++);
      v6 -= 8;
    }

    while (v6);
  }
}

AlgWorkNode *TouchService::ContactReclassificationStep::ContactReclassificationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x277D85DE8];
  AlgWorkNode::AlgWorkNode(a1);
  *v14 = &unk_2876F5D98;
  v14[14] = a2;
  v14[15] = a3;
  v14[16] = a4;
  v14[17] = a7;
  v14[18] = a5;
  v14[19] = a6;
  v14[20] = 0;
  v14[21] = 0;
  if (a7)
  {
    v19 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a7;
    v17 = &v19;
    v18 = 4;
  }

  else
  {
    v19 = a3;
    v20 = a4;
    v21 = a6;
    v17 = &v19;
    v18 = 3;
  }

  SAList<std::reference_wrapper<AlgDataNode>>::appendAndResize(a1 + 8, &v17);
  v15 = *MEMORY[0x277D85DE8];
  return a1;
}

void *TouchService::CoreAnalyticsStep::runNodeRegistrations(TouchService::CoreAnalyticsStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 15));
  v2 = *(this + 16);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

void *TouchService::TipOffsetStep::runNodeRegistrations(TouchService::TipOffsetStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 80, this + 112);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 20));
  v2 = *(this + 20);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

AlgWorkNode *TouchService::HysteresisFilterStep::HysteresisFilterStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v12 = &unk_2876F6108;
  PlainDataNode<TouchService::HysteresisFilterParams>::PlainDataNode((v12 + 14), 0x1BE28DBAFB9D43C2, 0, 0);
  *(a1 + 28) = a2;
  *(a1 + 29) = a3;
  *(a1 + 30) = a4;
  *(a1 + 31) = a5;
  *(a1 + 32) = a6;
  TouchService::HysteresisFilterStep::runNodeRegistrations(a1);
  *(a1 + 33) = operator new(8 * *(*(a1 + 31) + 40));
  if (*(*(a1 + 31) + 40))
  {
    v13 = 0;
    v14 = (a1 + 144);
    do
    {
      v15 = operator new(0x90uLL);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v14;
      *(v15 + 6) = 0;
      v15[4] = v14;
      *(v15 + 40) = 0;
      v15[6] = 0;
      v15[7] = 0;
      *(v15 + 16) = 0;
      *(v15 + 72) = 0;
      *(v15 + 24) = 0;
      v15[10] = 0;
      v15[11] = 0;
      *(v15 + 104) = 0;
      v15[14] = 0;
      v15[15] = 0;
      *(v15 + 32) = 0;
      *(v15 + 68) = 0;
      *(*(a1 + 33) + 8 * v13++) = v15;
    }

    while (v13 < *(*(a1 + 31) + 40));
  }

  return a1;
}

void *TouchService::HysteresisFilterStep::runNodeRegistrations(TouchService::HysteresisFilterStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 80, this + 112);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 28));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 29));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 30));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 31));
  v2 = *(this + 31);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

uint64_t TouchService::RadiusCorrectionStep::RadiusCorrectionStep(uint64_t a1, uint64_t a2, float a3)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v6 = &unk_2876F5B90;
  AlgDataNode::AlgDataNode((v6 + 14), 0xAC3E099B4E55F2C9, 0);
  *(a1 + 112) = &unk_2876F5BE0;
  *(a1 + 144) = xmmword_2655C56F0;
  *(a1 + 128) = 31235;
  *(a1 + 136) = 16;
  *(a1 + 160) = a2;
  *(a1 + 168) = a3;
  TouchService::RadiusCorrectionStep::runNodeRegistrations(a1);
  v7 = *(*(a1 + 160) + 40);
  v8 = operator new(20 * v7);
  if (v7)
  {
    v9 = v8;
    do
    {
      *v9 = 0;
      *(v9 + 12) = 0;
      *(v9 + 4) = 0;
      v9 += 20;
    }

    while (v9 != &v8[20 * v7]);
  }

  *(a1 + 176) = v8;
  return a1;
}

TouchService::PathTrackingStep *TouchService::PathTrackingStep::PathTrackingStep(TouchService::PathTrackingStep *this, TouchService::PlainPathCollection *a2, TouchService::PlainPathCollection *a3)
{
  AlgWorkNode::AlgWorkNode(this);
  *v6 = &unk_2876F5F18;
  *(v6 + 14) = a2;
  *(v6 + 15) = a3;
  TouchService::PathTrackingStep::runNodeRegistrations(v6);
  return this;
}

void SAList<std::reference_wrapper<AlgDataNode>>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = a2;
  if (a2)
  {
    if (v2 != a2)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = 8 * a2;
        v6 = *(a1 + 16);
        v7 = operator new(v5);
        *a1 = v7;
        memcpy(v7, v4, 8 * *(a1 + 12));

        operator delete[](v4);
      }
    }
  }
}

AlgWorkNode *TouchService::CoreAnalyticsStep::CoreAnalyticsStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v10 = &unk_2876F60B8;
  *(v10 + 112) = a2;
  *(v10 + 120) = a3;
  *(v10 + 128) = a4;
  *(v10 + 136) = a5;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  TouchService::CoreAnalyticsStep::runNodeRegistrations(v10);
  v11 = 24 * *(*(a1 + 14) + 40);
  v12 = operator new(v11);
  bzero(v12, v11);
  *(a1 + 20) = v12;
  return a1;
}

uint64_t TouchService::TipOffsetStep::TipOffsetStep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v6 = &unk_2876F6018;
  AlgDataNode::AlgDataNode((v6 + 14), 0x5FBF74E53ABC4E5DLL, 0);
  *(a1 + 112) = &unk_2876F6068;
  *(a1 + 128) = 32779;
  *(a1 + 136) = 8;
  *(a1 + 152) = a2;
  *(a1 + 160) = a3;
  *(a1 + 144) = 0x449A400000000000;
  TouchService::TipOffsetStep::runNodeRegistrations(a1);
  return a1;
}

void sub_2655B6D74(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F69B0;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

double PlainDataNode<TouchService::HysteresisFilterParams>::PlainDataNode(AlgDataNode *a1, uint64_t a2, int a3, char a4)
{
  AlgDataNode::AlgDataNode(a1, a2, a4);
  *v4 = &unk_2876F6158;
  *(v4 + 32) = xmmword_2655C5A70;
  *(v4 + 48) = xmmword_2655C5A80;
  *(v4 + 64) = xmmword_2655C5A90;
  *(v4 + 80) = xmmword_2655C5AA0;
  *(v4 + 96) = 1134493696;
  *(v4 + 100) = 1;
  result = 2.2518004e15;
  *(v4 + 104) = 0x43200000459C4000;
  *(v4 + 16) = 31234;
  *(v4 + 24) = 80;
  return result;
}

void *TouchService::RadiusCorrectionStep::runNodeRegistrations(TouchService::RadiusCorrectionStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 80, this + 112);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 20));
  v2 = *(this + 20);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

AlgWorkNode *TouchService::InterpolationStep::InterpolationStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v16 = &unk_2876F6810;
  *(v16 + 14) = a2;
  *(v16 + 15) = a3;
  *(v16 + 16) = a4;
  *(v16 + 17) = a5;
  *(v16 + 18) = a6;
  *(v16 + 19) = a7;
  *(v16 + 20) = a8;
  *(v16 + 23) = 0;
  *(v16 + 24) = 0;
  *(v16 + 22) = 0;
  TouchService::InterpolationStep::runNodeRegistrations(v16);
  *(a1 + 21) = operator new(8 * *(*(a1 + 18) + 40));
  if (*(*(a1 + 18) + 40))
  {
    v17 = 0;
    do
    {
      v18 = operator new(0x58uLL);
      v19 = 0;
      *v18 = *(a1 + 17) + 32;
      do
      {
        v20 = &v18[v19];
        v20[16] = 0;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 4) = 0;
        v19 += 6;
      }

      while (v19 != 18);
      v18[2] = 0;
      *(v18 + 16) = 0;
      *(v18 + 40) = 0;
      *(v18 + 64) = 0;
      *(*(a1 + 21) + 8 * v17++) = v18;
    }

    while (v17 < *(*(a1 + 18) + 40));
  }

  return a1;
}

{
  return TouchService::InterpolationStep::InterpolationStep(a1, a2, a3, a4, a5, a6, a7, a8);
}

void *TouchService::InterpolationStep::runNodeRegistrations(TouchService::InterpolationStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 18));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19));
  v2 = *(this + 20);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

void *TouchService::EventGenerationStep::runNodeRegistrations(TouchService::EventGenerationStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 18));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20));
  v2 = *(this + 21);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

AlgWorkNode *TouchService::EventGenerationStep::EventGenerationStep(AlgWorkNode *a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v20 = &unk_2876F5CD0;
  *(v20 + 112) = a4;
  *(v20 + 120) = a5;
  *(v20 + 128) = a7;
  *(v20 + 136) = a8;
  *(v20 + 144) = a9;
  *(v20 + 152) = a13;
  *(v20 + 160) = a10;
  *(v20 + 168) = a11;
  *(v20 + 176) = a6;
  *(v20 + 184) = a2;
  *(v20 + 192) = a12;
  TouchService::EventGenerationStep::runNodeRegistrations(v20);
  return a1;
}

{
  return TouchService::EventGenerationStep::EventGenerationStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void *TouchService::EventInfoStep::runNodeRegistrations(TouchService::EventInfoStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 18));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 20));
  v2 = *(this + 21);

  return AlgWorkNode::registerAlgDataNode(this + 56, v2);
}

AlgWorkNode *TouchService::EventInfoStep::EventInfoStep(AlgWorkNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v18 = &unk_2876F5C80;
  *(v18 + 112) = a3;
  *(v18 + 120) = a4;
  *(v18 + 128) = a5;
  *(v18 + 136) = a6;
  *(v18 + 144) = a7;
  *(v18 + 152) = a8;
  *(v18 + 160) = a9;
  *(v18 + 168) = a10;
  *(v18 + 176) = a2;
  *(v18 + 208) = 0;
  TouchService::EventInfoStep::runNodeRegistrations(v18);
  return a1;
}

{
  return TouchService::EventInfoStep::EventInfoStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void *TouchService::TouchTask::runNodeRegistrations(TouchService::TouchTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 51));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 52));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 53));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 54));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 55));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 56));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 57));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 58));
  v2 = *(this + 59);
  if (v2)
  {
    AlgWorkNode::registerAlgDataNode(this + 8, v2);
  }

  AlgWorkNode::registerAlgDataNode(this + 32, this + 480);
  AlgWorkNode::registerAlgDataNode(this + 32, this + 536);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 77));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 78));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 75));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 76));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 74));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 79));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 80));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 81));
  ConditionalAlgTaskNode::registerChild(this, (this + 656));
  ConditionalAlgTaskNode::registerChild(this, (this + 784));
  ConditionalAlgTaskNode::registerChild(this, (this + 960));
  ConditionalAlgTaskNode::registerChild(this, (this + 1128));
  ConditionalAlgTaskNode::registerChild(this, (this + 1296));
  ConditionalAlgTaskNode::registerChild(this, (this + 1568));
  ConditionalAlgTaskNode::registerChild(this, (this + 1752));
  ConditionalAlgTaskNode::registerChild(this, (this + 1952));
  ConditionalAlgTaskNode::registerChild(this, (this + 2152));

  return ConditionalAlgTaskNode::registerChild(this, (this + 2352));
}

void *TouchService::TouchServiceActivePlan::runNodeRegistrations(TouchService::TouchServiceActivePlan *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 184);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 240);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 272);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 328);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 368);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 416);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 448);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 504);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 536);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 576);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 616);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 648);
  AlgWorkNode::registerAlgDataNode(this + 8, this + 680);
  AlgWorkNode::registerAlgDataNode(this + 80, this + 1368);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 760);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 872);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 928);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1040);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1096);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1152);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1192);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1264);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 1336);
  v3 = this + 1512;
  return SAList<std::reference_wrapper<AlgDataNode>>::push_back(this + 112, &v3);
}

void AlgsDevice::StreamingClient::reset(AlgsDevice::StreamingClient *this)
{
  if (*(this + 6))
  {
    v2 = *(this + 4);
    Info = AlgsDevice::getInfo(v2);
    AlgDataExtractor::AlgDataExtractor(v4, v2[12]);
    AlgsDevice::getClientExtractor();
    StreamingWriter::writeResetOrInfo(this + 40, 1, BYTE5(Info), Info, BYTE4(Info), BYTE6(Info), *(this + 4) + 80, *(this + 96), v4);
    PacketCollection::~PacketCollection(v4);
  }
}

void sub_2655B76BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void *AlgDataExtractor::AlgDataExtractor(uint64_t a1, int a2)
{
  result = PacketCollection::PacketCollection(a1, a2, 1);
  *result = &unk_2876F6BD0;
  result[10] = 0;
  result[11] = 0;
  return result;
}

void AlgsDevice::getClientExtractor()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = (v2 + 48);
LABEL_4:
  v8 = v4 + 80 * v6;
  for (i = v5; i < *v7; ++i)
  {
    v10 = *(*(v3 + 56) + 8);
    OUTLINED_FUNCTION_17();
    (*(v11 + 16))(v1, v12 + v8);
    v8 += 80;
  }

  do
  {
    v6 += v7[v5++];
    v4 += 80;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  while (v5 != 2);
  OUTLINED_FUNCTION_28();
}

uint64_t PacketCollection::add(PacketCollection *this, const AlgDataPacket *a2)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    while (80 * *(this + 5) != v3)
    {
      v5 = *(this + 1);
      if (*a2 == *(v5 + v3))
      {
        v6 = v5 + v3;
        if (*(a2 + 1) == *(v6 + 8) && *(a2 + 33) == *(v6 + 33))
        {
          return 0;
        }
      }

      v3 += 80;
    }
  }

  SAList<AlgDataPacket>::push_back(this + 8);
  SAList<PacketBookkeeper>::push_back(this + 32);
  v8 = (*(this + 20) - 1);
  SAList<unsigned char>::push_back(this + 56);
  return 1;
}

void SAList<AlgDataPacket>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  if (!v3)
  {
    v4 = *(v1 + 16);
    v3 = operator new(80 * *(v1 + 8));
    *v1 = v3;
  }

  memcpy((v3 + 80 * *(v1 + 12)), v2, 0x50uLL);
  OUTLINED_FUNCTION_2();
}

uint64_t StreamingWriter::writeResetOrInfo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *(a1 + 33) = 0;
  if (a2)
  {
    v12 = OUTLINED_FUNCTION_26();
    if ((SABinaryWriter::writeHeader(v12, 1) & 1) == 0)
    {
      return 0;
    }

    v13 = OUTLINED_FUNCTION_35();
    if ((SABinaryWriter::write(v13, v14, 7uLL) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_26();
    if ((SABinaryWriter::writeHeader(v15, 6) & 1) == 0)
    {
      return 0;
    }

    v16 = OUTLINED_FUNCTION_35();
    if (!SABinaryWriter::write(v16, v17, 7uLL))
    {
      return 0;
    }
  }

  v18 = 0;
  while (v18 < *(a7 + 12))
  {
    v19 = *(*a7 + 8 * v18);
    v20 = *(a1 + 32);
    if (v20 == 1)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        v21 = v20 == 6;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        return 0;
      }
    }

    if (*v19)
    {
      v22 = *(a1 + 16) + ~*(a1 + 24);
      v23 = strnlen(*(*a7 + 8 * v18), v22);
      if (v23 != v22)
      {
        v24 = v23 + 1;
        if (v23 + 1 <= 0xFF)
        {
          v25 = OUTLINED_FUNCTION_35();
          if (SABinaryWriter::write(v25, v26, 1uLL))
          {
            ++v18;
            if (SABinaryWriter::write((a1 + 8), v19, v24))
            {
              continue;
            }
          }
        }
      }
    }

    return 0;
  }

  v27 = *(a1 + 32);
  if (v27 != 6 && v27 != 1)
  {
    return 0;
  }

  if (*(a1 + 33))
  {
    return 0;
  }

  *(a1 + 33) = 1;
  v32 = a8;
  v29 = OUTLINED_FUNCTION_35();
  if ((SABinaryWriter::write(v29, v30, 1uLL) & 1) == 0 || !SABinaryWriter::write((a1 + 8), &v32, 1uLL))
  {
    return 0;
  }

  return StreamingWriter::writeExtPoints(a1, a9);
}

uint64_t PacketCollection::PacketCollection(uint64_t result, int a2, char a3)
{
  *result = &unk_2876F6C00;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = 0;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a2;
  *(result + 44) = 0;
  *(result + 48) = a3;
  *(result + 56) = 0;
  *(result + 64) = a2;
  *(result + 68) = 0;
  *(result + 72) = a3;
  return result;
}

uint64_t SABinaryWriter::write(SABinaryWriter *this, const void *a2, size_t __n)
{
  if (*this)
  {
    v5 = *(this + 2);
    if (*(this + 1) - v5 < __n)
    {
      result = 0;
      *(this + 24) = 0;
      return result;
    }

    memcpy((*this + v5), a2, __n);
  }

  *(this + 2) += __n;
  return 1;
}

uint64_t SABinaryWriter::writeHeader(uint64_t a1, char a2)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  v5[0] = 1;
  v5[1] = a2;
  return SABinaryWriter::write(a1, v5, 2uLL);
}

uint64_t StreamingWriter::writeExtPoints(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 1;
  if (a2)
  {
    v5 = 0;
    v6 = -1;
    while (++v6 < *(a2 + 20))
    {
      v7 = (*(a2 + 8) + v5);
      v8 = *v7;
      v9 = *(v7 + 33);
      v10 = a1[32];
      v11 = v10 == 3 || v10 == 5;
      if (v11 || a1[33] == 1)
      {
        v5 += 80;
        v14 = 3;
        v15 = v8;
        v12 = v9 == 1 ? 1 : 2;
        v16 = v12;
        if (SABinaryWriter::write((a1 + 8), &v14, 0x12uLL))
        {
          continue;
        }
      }

      return 0;
    }

    return 1;
  }

  return v2;
}

void PacketCollection::~PacketCollection(PacketCollection *this)
{
  *this = &unk_2876F6C00;
  v2 = *(this + 7);
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    operator delete[](v4);
  }
}

{
  PacketCollection::~PacketCollection(this);

  operator delete(v1);
}

void SAList<PacketBookkeeper>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  if (!v3)
  {
    v4 = *(v1 + 16);
    v3 = operator new(2 * *(v1 + 8));
    *v1 = v3;
  }

  *(v3 + 2 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_2();
}

uint64_t AlgDataExtractor::callbackFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14();
  v10[7] = 0;
  v10[8] = v4;
  v10[9] = v5;
  v7 = OUTLINED_FUNCTION_11(v6);
  return (*(v8 + 16))(v7, v10);
}

void SAList<unsigned char>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  if (!v3)
  {
    v4 = *(v1 + 16);
    v3 = operator new(*(v1 + 8));
    *v1 = v3;
  }

  *(v3 + *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_2();
}

void AlgsDevice::addClient(uint64_t a1, unsigned int a2, uint64_t a3, const PacketCollection *a4)
{
  *(a1 + 8 * a2 + 32) = a3;
  v4 = a1 + 48;
  if (*(a1 + 48 + 4 * a2) | *(a4 + 5))
  {
    v8 = a2;
    v9 = *(a1 + 56);
    v10 = operator new(0x60uLL);
    v11 = AlgDataExtractor::AlgDataExtractor(v10, *(a4 + 5) - *(v4 + 4 * v8) + *(v9 + 5));
    v12 = 0;
    v13 = 0;
    *(a1 + 56) = v11;
    v14 = a2 ? v9 : a4;
    *(v11 + 5) = *(v14 + 5);
    while (v12 != 8)
    {
      if (4 * v8 == v12)
      {
        v15 = a4;
        v16 = -1;
        v17 = 0;
      }

      else
      {
        v16 = *(v4 + v12);
        v15 = v9;
        v17 = v13;
      }

      PacketCollection::append(*(a1 + 56), v15, v16, v17);
      v13 += *(v4 + v12);
      v12 += 4;
    }

    *(v4 + 4 * v8) = *(a4 + 5);
    if (v9)
    {
      OUTLINED_FUNCTION_19();
      v19 = *(v18 + 8);

      v19(v9);
    }
  }
}

void PacketCollection::append(PacketCollection *this, const PacketCollection *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = *(a2 + 5);
  if (a3 != -1)
  {
    v7 = a3;
  }

  v8 = v7 + a4;
  v9 = 80 * a4;
  while (v4 < v8)
  {
    v10 = *(a2 + 1);
    SAList<AlgDataPacket>::push_back(this + 8);
    SAList<PacketBookkeeper>::push_back(this + 32);
    v11 = (*(this + 20) - 1);
    SAList<unsigned char>::push_back(this + 56);
    ++v4;
    v9 += 80;
  }
}

void AlgDataExtractor::~AlgDataExtractor(AlgDataExtractor *this)
{
  PacketCollection::~PacketCollection(this);

  operator delete(v1);
}

uint64_t AlgsDevice::StreamingClient::resetBuffer(AlgsDevice::StreamingClient *this)
{
  v1 = *(this + 8);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4();
  return v1;
}

double OUTLINED_FUNCTION_4()
{
  *(v0 + 72) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 74) = 0;
  *(v0 + 80) = 0;
  return result;
}

uint64_t AlgDataPacket::AlgDataPacket(uint64_t result, uint64_t a2, uint64_t a3, int a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a8;
  *(result + 32) = a5;
  *(result + 33) = a6;
  *(result + 34) = 0;
  *(result + 40) = a9;
  *(result + 48) = a10;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = a7;
  return result;
}

BOOL AlgsDevice::injExtWith(AlgsDevice *this, AlgDataInjector *a2, AlgDataExtractor *a3, void *a4, unint64_t *a5)
{
  v7 = OUTLINED_FUNCTION_23(this);
  if (v9)
  {
    v10 = *a5;
  }

  AlgsDevice::StreamingClient::setBuffer(v7, v8);
  v11 = AlgsDevice::injExtWith();
  v12 = AlgsDevice::StreamingClient::resetBuffer(*(v5 + 64));
  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

BOOL AlgsDevice::injExtWith()
{
  OUTLINED_FUNCTION_12();
  v4 = v3 + 32;
  for (i = 32; i != 48; i += 8)
  {
    v6 = *(v2 + i);
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_11(v6);
      (*(v8 + 24))(v7, 0, v1, v0);
    }
  }

  OUTLINED_FUNCTION_19();
  v10 = (*(v9 + 48))(v2);
  v11 = OUTLINED_FUNCTION_11(v10);
  v13 = (*(v12 + 40))(v11, v1, v0, 0, 0, 1);
  for (j = 0; j != 16; j += 8)
  {
    v15 = *(v4 + j);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_11(v15);
      (*(v17 + 32))(v16);
    }
  }

  return v13 == 0;
}

double AlgsDevice::StreamingClient::start(uint64_t a1, int *a2, PacketCollection *a3, uint64_t a4)
{
  v4 = a1 + 48;
  if (*(a1 + 48))
  {
    v9 = (a1 + 40);
    *(a1 + 20) = 0;
    AlgsDevice::StreamingClient::saveTimestamp(a1, 0x310E1E39B3);
    v10 = *(a1 + 96);
    *(a1 + 97) |= v10;
    if (!v10)
    {
      a3 = 0;
    }

    if (a2)
    {
      v11 = *a2;
      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (SABinaryWriter::writeHeader(v4, 2) && SABinaryWriter::writeData(v4, v11, v13, v12) && StreamingWriter::writeInjExtData((v4 - 8), 1, a3))
      {
        return result;
      }

LABEL_13:
      OUTLINED_FUNCTION_31();
      *(v4 + 24) = 0;
      result = 0.0;
      *v9 = 0u;
      *(v4 + 8) = 0u;
      *(a1 + 74) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    v15 = *(a1 + 88);
    if ((SABinaryWriter::writeHeader(v4, 3) & 1) == 0 || !SABinaryWriter::write(v4, &v15, 8uLL) || !StreamingWriter::writeInjExtData((v4 - 8), 1, a3) || (StreamingWriter::writeExtPoints((v4 - 8), a4) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return result;
}

BOOL AlgWorkNode::injectDataIfOnList(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = a2;
  do
  {
    if (a2 == v4)
    {
      v6 = a2;
      return v6 < v5;
    }

    v6 = v4;
    v7 = *(a1 + 8 * v4++);
  }

  while (*(v7 + 8) != *(a3 + 8));
  v8 = *(a3 + 56);
  v9 = v8 & 3;
  if ((v8 & 3) != 0)
  {
    v8 = operator new(*(a3 + 24));
    memcpy(v8, *(a3 + 56), *(a3 + 24));
  }

  v10 = *(a3 + 24);
  OUTLINED_FUNCTION_20();
  (*(v11 + 32))(v7, v8);
  *(v7 + 29) = 1;
  if (v9 && v8)
  {
    operator delete[](v8);
  }

  return v6 < v5;
}

uint64_t SALoggingGeneral()
{
  if (qword_2813412C0 != -1)
  {
    dispatch_once(&qword_2813412C0, &__block_literal_global);
  }

  return _MergedGlobals;
}

void AlgWorkNode::runPrologue(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 17);
  while (v7 != v5)
  {
    v8 = *(a2 + 1) + 80 * *(*(a2 + 7) - v6 + v5);
    v9 = *v8 == *(this + 13) && *(v8 + 33) == 1;
    if (v9 && (AlgWorkNode::injectDataIfOnList(*(this + 10), *(this + 23), *(a2 + 1) + 80 * *(*(a2 + 7) - v6 + v5)) || AlgWorkNode::injectDataIfOnList(*(this + 1), *(this + 5), v8) || AlgWorkNode::injectDataIfOnList(*(this + 4), *(this + 11), v8)))
    {
      *(*(a2 + 4) + 2 * *(*(a2 + 7) - v6 + v5)) = 1;
      PacketCollection::popIterableAt(a2, v5 - v6++);
    }

    ++v5;
  }

  OUTLINED_FUNCTION_22();

  AlgWorkNode::runPrologue(v10, v11);
}

void SADynamicArray<ContactReclassificationRegion,(unsigned short)3>::injectBuffer(uint64_t a1, unsigned __int16 *a2)
{
  if ((*(a1 + 137) & 1) != 0 || (*(a1 + 29) & 1) == 0)
  {
    v3 = a2[3];
    *(a1 + 38) = v3;
    v4 = a2[2];
    v5 = v4 >= 0x1C ? 28 : a2[2];
    if (v3)
    {
      v6 = 0;
      v7 = a2 + *a2;
      if (v4 <= 0x1C)
      {
        v8 = 28 - v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = (a1 + 40);
      do
      {
        memcpy(v9, &v7[v6 * a2[2]], v5);
        if (v4 <= 0x1B)
        {
          bzero(&v9[v5], v8);
        }

        ++v6;
        v9 += 28;
      }

      while (v6 < a2[3]);
    }
  }
}

void AlgDataExtractor::AlgDataExtractor(AlgDataExtractor *this)
{
  *(this + 2) = 16;
  *(this + 24) = 1;
  *(this + 4) = 0;
  *(this + 5) = 16;
  *(this + 48) = 1;
  *(this + 7) = 0;
  *(this + 8) = 16;
  *(this + 72) = 1;
  *this = &unk_2876F6BD0;
  *(this + 1) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
}

uint64_t StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = StreamingParser::addPoint(v5, a2);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    return v6 & StreamingParser::addPoint(v7, a3);
  }

  return v6;
}

uint64_t *AlgsDevice::StreamingClient::configureTranslation(AlgsDevice::StreamingClient *this, const PacketCollection *a2, const PacketCollection *a3)
{
  OUTLINED_FUNCTION_12();
  v8 = (v6 + 104);
  v7 = *(v6 + 104);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_11(v7);
    (*(v10 + 8))(v9);
  }

  result = *(v5 + 112);
  if (result)
  {
    v12 = OUTLINED_FUNCTION_11(result);
    result = (*(v13 + 8))(v12);
  }

  v14 = *(v4 + 20);
  if (v14)
  {
    v15 = v14 == *(v3 + 20);
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = *(v5 + 120);
    v17 = operator new(0x50uLL);
    *(v5 + 104) = PacketCollection::PacketCollection(v17, *(v4 + 20), *(v5 + 120));
    v18 = *(v5 + 120);
    v19 = operator new(0x50uLL);
    result = PacketCollection::PacketCollection(v19, *(v3 + 20), *(v5 + 120));
    v20 = 0;
    v21 = 0;
    *(v5 + 112) = result;
    while (v21 < *(v4 + 20))
    {
      v22 = *(v4 + 8);
      v23 = OUTLINED_FUNCTION_11(*(v5 + 104));
      (*(v24 + 16))(v23, v25 + v20);
      v26 = *(v3 + 8);
      v27 = OUTLINED_FUNCTION_11(*(v5 + 112));
      result = (*(v28 + 16))(v27, v29 + v20);
      ++v21;
      v20 += 80;
    }
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, char a21)
{
  if (v21)
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 + 1;
  }

  a21 = v25;

  return SABinaryWriter::write((v22 + 48), &a18, 0x12uLL);
}

uint64_t StreamingParser::numberOfPackets(StreamingParser *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 24);
  v32 = *(this + 8);
  v33 = v8;
  v34 = *(this + 40);
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v29 = a2;
  v30 = a3;
  v31 = a4;
  *(&v33 + 1) = &v29;
  if (*(&v32 + 1) < 2uLL || *v32 != 1)
  {
    return 0;
  }

  result = 0;
  switch(*(v32 + 1))
  {
    case 2:
      OUTLINED_FUNCTION_5();
      result = SABinaryParser::parseRunFrame(&v32, 0, v10, v11);
      break;
    case 3:
      OUTLINED_FUNCTION_5();
      v20 = OUTLINED_FUNCTION_6(v12, v13, v14, v15, v16, v17, v18, v19, v28, v29, v30, v31, v32);
      result = SABinaryParser::parseInjExtFrame(v20, v21, v22, v23, v24);
      break;
    case 5:
      result = SABinaryParser::parseConfigure(&v32, 0, StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_2::__invoke, 0);
      break;
    case 6:
      v25 = OUTLINED_FUNCTION_6(0, a2, a3, a4, a5, a6, a7, a8, v28, v29, v30, v31, v32);
      result = SABinaryParser::parseInfo(v25, v26, 0, 0, v27);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SABinaryWriter::addInjExtData(SABinaryWriter *this, int a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, unsigned int a7, const void *a8)
{
  if ((*(this + 24) & 0xFE) != 2)
  {
    return 0;
  }

  v21 = v8;
  v22 = v9;
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v17 = v14;
  v18 = a3;
  v19 = a4;
  if (a5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v20 = v15;
  result = SABinaryWriter::write(this, &v17, 0x12uLL);
  if (result)
  {
    return SABinaryWriter::writeData(this, a6, a7, a8);
  }

  return result;
}

BOOL SABinaryParser::parseInjExtFrame(uint64_t *a1, unsigned int (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a1[1];
  v5 = a1[2];
  if ((v6 - v5) < 2)
  {
    return 0;
  }

  a1[2] = v5 + 2;
  if ((v6 - (v5 + 2)) < 8)
  {
    return 0;
  }

  v8 = *a1;
  a1[2] = v5 + 10;
  if (a2)
  {
    if (!a2(a1[3], *(v8 + v5 + 2)))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_22();

  return SABinaryParser::parseInjExtData(v9, v10, v11, a5);
}

BOOL StreamingWriter::writeInjExtData(StreamingWriter *this, int a2, PacketCollection *a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = 0;
  v7 = -1;
  while (1)
  {
    v8 = *(a3 + 5);
    result = ++v7 >= v8;
    if (v7 >= v8)
    {
      break;
    }

    v10 = v6 + 80;
    v11 = *(a3 + 1) + v6;
    v12 = SABinaryWriter::addInjExtData((this + 8), a2, *v11, *(v11 + 8), *(v11 + 33) == 1, *(v11 + 16), *(v11 + 24), *(v11 + 56));
    v6 = v10;
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SABinaryWriter::writeData(SABinaryWriter *this, __int16 a2, unsigned int a3, const void *a4)
{
  v10[0] = a2;
  v7 = (a3 + 3) & 0xFFFC;
  v10[1] = v7;
  v9 = 0;
  result = SABinaryWriter::write(this, v10, 4uLL);
  if (result)
  {
    if (a4)
    {
      result = SABinaryWriter::write(this, a4, a3);
      if (result)
      {
        return SABinaryWriter::write(this, &v9, v7 - a3);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AlgsDevice::StreamingClient::saveTimestamp(uint64_t this, uint64_t a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = this;
    v4 = *(*(this + 32) + 104);
    if (v4)
    {
      v6 = *(this + 20);
      if (v6 == *(this + 18))
      {
        AlgsDevice::StreamingClient::profileAlloc(this, 2 * (*(this + 16) & 0x7FFF));
        v6 = *(v3 + 20);
        v2 = *(v3 + 24);
        v4 = *(*(v3 + 32) + 104);
      }

      *(v2 + 16 * v6) = a2;
      this = v4();
      v7 = *(v3 + 20);
      *(*(v3 + 24) + 16 * v7 + 8) = this;
      *(v3 + 20) = v7 + 1;
    }
  }

  return this;
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_2::__invoke(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

uint64_t AlgTaskNode::runTask(AlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  OUTLINED_FUNCTION_24();
  v9 = v8;
  AlgWorkNode::runPrologue(v8, v10, v11);
  if ((a6 & 1) == 0)
  {
    (*(*v9 + 64))(v9);
  }

  for (i = 0; i < *(v9 + 31); ++i)
  {
    v13 = *(*(v9 + 14) + 8 * i);
    v14 = *(v6 + 80);
    if (v14)
    {
      v14(*(v6 + 88), v13[13]);
    }

    v15 = *(*v13 + 16);
    OUTLINED_FUNCTION_13();
    v16();
  }

  if ((a6 & 1) == 0)
  {
    (*(*v9 + 72))(v9);
  }

  OUTLINED_FUNCTION_13();
  AlgWorkNode::runEpilogue(v17, v18, v19);
  return 0;
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_1::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

void *AlgDataInjector::AlgDataInjector(uint64_t a1, int a2)
{
  result = PacketCollection::PacketCollection(a1, a2, 1);
  *result = &unk_2876F6C30;
  return result;
}

uint64_t AlgDataExtractor::requestFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14();
  memset(&v8[56], 0, 24);
  v5 = OUTLINED_FUNCTION_11(v4);
  return (*(v6 + 16))(v5, v8);
}

void AlgWorkNode::runPrologue(AlgWorkNode *this, AlgDataExtractor *a2)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_3(v8, v9);
  while (v6 != v4)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_21(v10);
    v12 = v12 && v11 == 1;
    if (v12)
    {
      v13 = *(v3 + 80);
      v14 = *(v3 + 92);
      OUTLINED_FUNCTION_18();
      if (AlgWorkNode::extractDataIfOnList(v15, v16, v17, v18, v19) || (v20 = *(v3 + 8), v21 = *(v3 + 20), OUTLINED_FUNCTION_18(), AlgWorkNode::extractDataIfOnList(v22, v23, v24, v25, v26)))
      {
        OUTLINED_FUNCTION_15();
        *(*(v2 + 32) + 2 * v27) = v7;
        PacketCollection::popIterableAt(v2, v28);
        ++v5;
      }
    }

    ++v4;
  }

  OUTLINED_FUNCTION_28();
}

_DWORD *PacketCollection::popIterableAt(_DWORD *this, uint64_t a2)
{
  v2 = this[17];
  v3 = (v2 - 1);
  if (v3 == a2)
  {
    if (v2)
    {
      this[17] = v3;
    }
  }

  else
  {
    this[17] = v3;
    return memmove((*(this + 7) + a2), (*(this + 7) + a2 + 1), v3 - a2);
  }

  return this;
}

uint64_t StreamingParser::addPacket(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = *(a2 + 18);
  v7 = *(a2 + 17);
  v8 = *(a2 + 20);
  v12 = *(a2 + 1);
  v13 = v6;
  v14 = v8;
  v15 = a3;
  v16 = v7;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = a4;
  v9 = OUTLINED_FUNCTION_11(a1);
  result = (*(v10 + 16))(v9, &v12);
  if (a3 == 2)
  {
    if (result)
    {
      *(*(a1 + 32) + 2 * *(a1 + 20) - 2) = 1;
    }
  }

  return result;
}

void AlgsDevice::StreamingClient::translate(AlgsDevice::StreamingClient *this, PacketCollection *a2, PacketCollection *a3)
{
  if (*(this + 13))
  {
    OUTLINED_FUNCTION_27();
    v7 = v6;
    if (*(v6 + 112))
    {
      v8 = v4;
      v9 = v3;
      v10 = 0;
      for (i = 0; i < *(v5 + 20); ++i)
      {
        v12 = *(v7 + 112);
        if (i >= *(v12 + 20))
        {
          break;
        }

        v13 = *(v5 + 8);
        v14 = *(v12 + 8);
        v15 = PacketCollection::getFor(v8, *(v13 + v10), *(v13 + v10 + 8), *(v13 + v10 + 33));
        if (v15 || (v15 = PacketCollection::getFor(v9, *(v13 + v10), *(v13 + v10 + 8), *(v13 + v10 + 33))) != 0)
        {
          *v15 = *(v14 + v10);
          *(v15 + 33) = *(v14 + v10 + 33);
          if (*(v15 + 32) == 2)
          {
            *(v15 + 32) = 1;
            OUTLINED_FUNCTION_20();
            (*(v16 + 16))(v9);
          }
        }

        v5 = *(v7 + 104);
        v10 += 80;
      }
    }

    OUTLINED_FUNCTION_28();
  }
}

uint64_t ConditionalAlgTaskNode::runTask(ConditionalAlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(*(this + 17) + 30) ^ 1;
  }

  AlgTaskNode::runTask(this, a2, a3, a4, a5, v6 & 1);
  return 0;
}

uint64_t PacketCollection::getFor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 20);
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v7 = *(a1 + 8);
    v8 = *(v7 + v4) == a2 && *(v7 + v4 + 8) == a3;
    if (v8 && *(v7 + v4 + 33) == a4)
    {
      break;
    }

    ++v5;
    v4 += 80;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  v10 = v5;
  v11 = v7 + 80 * v5;
  v12 = *(v11 + 32);
  v13 = v12 == 2 ? *(*(a1 + 32) + 2 * v10) : 0;
  if (v12 != 1 && (v13 & 1) == 0)
  {
    return 0;
  }

  *(*(a1 + 32) + 2 * v10 + 1) = 1;
  return v11;
}

void AlgWorkNode::runEpilogue(AlgWorkNode *this, AlgDataExtractor *a2)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_3(v8, v9);
  while (v6 != v4)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_21(v10);
    v12 = v12 && v11 == 2;
    if (v12)
    {
      v13 = *(v3 + 56);
      v14 = *(v3 + 68);
      OUTLINED_FUNCTION_18();
      if (AlgWorkNode::extractDataIfOnList(v15, v16, v17, v18, v19) || (v20 = *(v3 + 32), v21 = *(v3 + 44), OUTLINED_FUNCTION_18(), AlgWorkNode::extractDataIfOnList(v22, v23, v24, v25, v26)))
      {
        OUTLINED_FUNCTION_15();
        *(*(v2 + 32) + 2 * v27) = v7;
        PacketCollection::popIterableAt(v2, v28);
        ++v5;
      }
    }

    ++v4;
  }

  OUTLINED_FUNCTION_28();
}

void AlgWorkNode::runEpilogue(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  OUTLINED_FUNCTION_3(v11, v9);
  while (v6 != v4)
  {
    v12 = *(v10 + 8) + *(*(v10 + 56) - v5 + v4) * v7;
    if (*v12 == *(v3 + 104) && *(v12 + 33) == 2 && AlgWorkNode::injectDataIfOnList(*(v3 + 56), *(v3 + 68), v12))
    {
      *(*(v10 + 32) + 2 * *(*(v10 + 56) - v5 + v4)) = v8;
      PacketCollection::popIterableAt(v10, v4 - v5++);
    }

    ++v4;
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_28();

  AlgWorkNode::runEpilogue(v14, v15);
}

uint64_t AlgWorkNode::runStep(AlgWorkNode *this, AlgDataInjector *a2, AlgDataExtractor *a3, unint64_t a4, unsigned int a5, char a6)
{
  OUTLINED_FUNCTION_24();
  v8 = v7;
  AlgWorkNode::runPrologue(v7, v9, v10);
  if (a6)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*v8 + 32))(v8);
  }

  OUTLINED_FUNCTION_13();
  AlgWorkNode::runEpilogue(v12, v13, v14);
  return v11;
}

void AlgsDevice::StreamingClient::finish(AlgsDevice::StreamingClient *this)
{
  if (*(this + 10) && *(*(this + 4) + 104))
  {
    AlgsDevice::StreamingClient::saveTimestamp(this, 0x652B2D24D46);
    *(*(this + 1) + 5) = *(this + 20);
    v2 = SABinaryWriter::addExtractionData((this + 48), 0x3779B8717A8905ELL, 0xC0246BF06F597652, 0, 39424, *(this + 8), *(this + 1));
    if (v2)
    {
      *(this + 97) = 1;
    }

    else
    {
      SABinaryWriter::updateCacheSizes(v2, 0);
      OUTLINED_FUNCTION_4();
    }
  }

  if ((*(this + 97) & 1) == 0 && !*(this + 11))
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_4();
  }

  *(this + 97) = 0;
}

__n128 PlainDataNode<SASensorSurfaceDescriptor>::injectBuffer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[3].n128_u64[0] = a2[1].n128_u64[0];
  a1[2] = result;
  return result;
}

uint64_t PlainDataNode<EventInfoParams>::injectBuffer(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 40) = *(a2 + 2);
  *(result + 32) = v2;
  return result;
}

void OUTLINED_FUNCTION_21(unsigned int a1@<W8>)
{
  v4 = *(v1 + 8) + a1 * v3;
  v5 = *v4;
  v6 = *(v2 + 104);
  v7 = *(v4 + 33);
}

uint64_t *AlgWorkNode::resetInjectionStateOnList(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  if (a2)
  {
    do
    {
      v3 = *result++;
      *(v3 + 29) = 0;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t AlgWorkNode::resetInjectionState(AlgWorkNode *this)
{
  AlgWorkNode::resetInjectionStateOnList(*(this + 10), *(this + 23));
  AlgWorkNode::resetInjectionStateOnList(*(this + 1), *(this + 5));
  AlgWorkNode::resetInjectionStateOnList(*(this + 4), *(this + 11));
  AlgWorkNode::resetInjectionStateOnList(*(this + 7), *(this + 17));
  for (i = 0; ; ++i)
  {
    OUTLINED_FUNCTION_17();
    result = (*(v3 + 24))(this);
    if (i >= *(result + 12))
    {
      break;
    }

    OUTLINED_FUNCTION_17();
    v6 = (*(v5 + 24))(this);
    AlgWorkNode::resetInjectionState(*(*v6 + 8 * i));
  }

  return result;
}

uint64_t TouchService::EventGenerationStep::run(TouchService::EventGenerationStep *this)
{
  v2 = *(this + 18);
  if ((**(this + 24) & 1) == 0)
  {
    if ((*(*v2 + 40))(*(this + 18)))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = (*(*(*(this + 18) + 32) + 8))() + v8;
        v12 = (v10 + 1);
        TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 21), v10 + 1);
        PathWithId = TouchService::PlainPathCollection::getPathWithId(*(this + 16), *(v11 + 12));
        v14 = (*(*(*(this + 21) + 32) + 8))();
        if (!TouchService::EventGenerationStep::generateFingerEvent(this, v11, PathWithId, v14 + 72 * v10, v15, v16, v17))
        {
          TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 21), v10);
          v12 = v10;
        }

        ++v9;
        v8 += 72;
        v10 = v12;
      }

      while (v9 < (*(**(this + 18) + 40))(*(this + 18)));
    }

    else
    {
      v12 = 0;
    }

    TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 21), v12);
    if (!(*(**(this + 16) + 40))(*(this + 16)))
    {
LABEL_18:
      TouchService::EventGenerationStep::generateHandEvent(this);
      return 0;
    }

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = (*(*(*(this + 16) + 32) + 8))();
      if (!*(v20 + v18))
      {
        goto LABEL_16;
      }

      v21 = v20;
      if (TouchService::EventGenerationStep::isFingerInEvents(this, *(v20 + v18)))
      {
        goto LABEL_16;
      }

      v22 = (v12 + 1);
      TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 21), v12 + 1);
      v23 = (*(*(*(this + 21) + 32) + 8))();
      if (!TouchService::EventGenerationStep::generateFingerEvent(this, 0, (v21 + v18), v23 + 72 * v12, v24, v25, v26))
      {
        break;
      }

LABEL_17:
      ++v19;
      v18 += 48;
      v12 = v22;
      if (v19 >= (*(**(this + 16) + 40))(*(this + 16)))
      {
        goto LABEL_18;
      }
    }

    TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 21), v12);
LABEL_16:
    v22 = v12;
    goto LABEL_17;
  }

  TouchService::PlainPathCollection::operator=(*(this + 21), v2);
  v3 = *(this + 20);
  v4 = *(this + 17);
  *(v3 + 32) = *(v4 + 32);
  v6 = *(v4 + 64);
  v5 = *(v4 + 80);
  v7 = *(v4 + 48);
  *(v3 + 96) = *(v4 + 96);
  *(v3 + 64) = v6;
  *(v3 + 80) = v5;
  *(v3 + 48) = v7;
  return 0;
}

BOOL TouchService::EventGenerationStep::generateFingerEvent(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, uint64_t a4, double a5, double a6, double a7)
{
  v98 = *MEMORY[0x277D85DE8];
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = *(a1 + 176);
  *a4 = *(v8 + 16);
  *(a4 + 8) = *(v8 + 8);
  if (!a3)
  {
    v29 = SALoggingGeneral();
    result = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      goto LABEL_49;
    }

    TouchService::EventGenerationStep::generateFingerEvent(a2, v29);
LABEL_48:
    result = 0;
    goto LABEL_49;
  }

  v11 = *(a1 + 120);
  v12 = v11[9];
  if (v12 <= 0.0 || (v13 = v11[8], v13 <= 0.0))
  {
    v30 = SALoggingGeneral();
    result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_49;
    }

    TouchService::EventGenerationStep::generateFingerEvent(a3, v30);
    goto LABEL_48;
  }

  *&a7 = (v12 / 1000.0) * 1000.0;
  *(a4 + 12) = *a3;
  v15 = a3[2];
  *(a4 + 16) = v15;
  v16 = *(*(a1 + 112) + 32);
  if (!v16)
  {
    v16 = 480;
  }

  v17 = 25400.0 / v16;
  *(a4 + 24) = (v17 * ((*(a3 + 1) - v11[10]) / v17)) / v13;
  *(a4 + 28) = 1.0 - ((v17 * ((*(a3 + 2) - v11[11]) / v17)) / v12);
  *(a4 + 32) = vrev64_s32(vdiv_f32(*(a3 + 20), vdup_lane_s32(*&a7, 0)));
  *(a4 + 40) = *(a1 + 184) / *&a7;
  *(a4 + 44) = *(a3 + 4);
  *(a4 + 52) = (*(a3 + 7) * 180.0) / 3.1416;
  v18 = a3[1];
  *(a4 + 57) = (v18 - 3) < 2;
  v19 = v18 - 1;
  *(a4 + 56) = (v18 - 1) < 6;
  v20 = *(a3 + 22);
  if (v20 >= 0)
  {
    v21 = (v20 << 8) & 0x800;
  }

  else
  {
    v21 = (((v20 >> 3) & 1) << 11) | 0x4000;
  }

  *(a4 + 60) = v21;
  v22 = TouchService::EventGenerationStep::attributesFromFlags(v20);
  *(a4 + 20) = v22;
  *(a4 + 64) = (v20 >> 7) & 0x80;
  if (*(*(a1 + 152) + 30) == 1)
  {
    v22 |= 0x20000u;
    *(a4 + 20) = v22;
  }

  if (a2)
  {
    if ((a2[56] & 1) == 0 && v19 >= 6)
    {
      v23 = SALoggingGeneral();
      result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v25 = *(a4 + 12);
        v26 = *(a4 + 16);
        v27 = a3[1];
        v64 = 67109632;
        *v65 = v25;
        *&v65[4] = 1024;
        *&v65[6] = v26;
        *v66 = 1024;
        *&v66[2] = v27;
        v28 = "EventGenerationStep:  P%d F%d stage=%d already gone -> skipping";
LABEL_47:
        _os_log_debug_impl(&dword_2655B3000, v23, OS_LOG_TYPE_DEBUG, v28, &v64, 0x14u);
        goto LABEL_48;
      }

      goto LABEL_49;
    }

LABEL_22:
    v31 = *(a2 + 5);
    if (((v31 ^ v22) & 0xF042800) != 0)
    {
      v22 |= 0x40u;
      *(a4 + 20) = v22;
      v31 = *(a2 + 5);
    }

    if ((v31 & 0x20000) != 0)
    {
      v22 |= 0x20000u;
      *(a4 + 20) = v22;
    }

    if ((v15 - 6) <= 0xFFFFFFFA)
    {
      if ((*(a2 + 4) - 1) > 4)
      {
        v23 = SALoggingGeneral();
        result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          v39 = *(a4 + 12);
          v40 = *(a4 + 16);
          v41 = a3[1];
          v64 = 67109632;
          *v65 = v39;
          *&v65[4] = 1024;
          *&v65[6] = v40;
          *v66 = 1024;
          *&v66[2] = v41;
          v28 = "EventGenerationStep:  New P%d F%d stage=%d not a finger -> skipping";
          goto LABEL_47;
        }

        goto LABEL_49;
      }

      *(a4 + 20) = v22 | 0x80;
      *(a4 + 56) = 0;
      v32 = SALoggingGeneral();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v61 = *(a4 + 12);
        v62 = *(a4 + 16);
        v63 = a3[1];
        v64 = 67109632;
        *v65 = v61;
        *&v65[4] = 1024;
        *&v65[6] = v62;
        *v66 = 1024;
        *&v66[2] = v63;
        _os_log_debug_impl(&dword_2655B3000, v32, OS_LOG_TYPE_DEBUG, "EventGenerationStep:  P%d F%d stage=%d turned into no finger -> canceling", &v64, 0x14u);
      }
    }

    v33 = a2[56];
    if (*(a4 + 56) != v33)
    {
      *(a4 + 20) |= 1u;
    }

    v34 = *(a4 + 57);
    if (v34 != a2[57])
    {
      *(a4 + 20) |= 2u;
    }

    if (v33)
    {
      if (*(a4 + 16) != *(a2 + 4))
      {
        *(a4 + 20) |= 0x20u;
      }

      if (v34 && (*(a4 + 24) != *(a2 + 6) || *(a4 + 28) != *(a2 + 7)))
      {
        *(a4 + 20) |= 4u;
      }
    }

    v35 = SALoggingGeneral();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v43 = a3[1];
      v44 = *(a4 + 56);
      v45 = *(a4 + 57);
      if (a2 == &TouchService::EventGenerationStep::generateFingerEvent(SADigitizerEventPacket const*,SAPreciseContact const*,SADigitizerEventPacket&)::empty_finger)
      {
        v46 = "New ";
      }

      else
      {
        v46 = &unk_2655C62F3;
      }

      v47 = *(a4 + 16);
      v48 = *(a4 + 20);
      v49 = *(a3 + 1);
      v50 = *(a3 + 2);
      v51 = *(a4 + 24);
      v52 = *(a4 + 28);
      v53 = *(a4 + 36);
      v54 = *(a4 + 32);
      v55 = *(a4 + 48);
      v56 = *(a4 + 44);
      v58 = *(a4 + 8);
      v57 = *(a4 + 12);
      v59 = *(a4 + 60);
      v60 = *(a4 + 64);
      v64 = 136319491;
      *v65 = v46;
      *&v65[8] = 1024;
      *v66 = v57;
      *&v66[4] = 1024;
      v67 = v47;
      v68 = 1024;
      v69 = v43;
      v70 = 1024;
      v71 = v44;
      v72 = 1024;
      v73 = v45;
      v74 = 1024;
      v75 = v48;
      v76 = 2053;
      v77 = v49;
      v78 = 2053;
      v79 = v50;
      v80 = 2053;
      v81 = v51;
      v82 = 2053;
      v83 = v52;
      v84 = 2048;
      v85 = v53;
      v86 = 2048;
      v87 = v54;
      v88 = 2048;
      v89 = v55;
      v90 = 2048;
      v91 = v56;
      v92 = 1024;
      v93 = v58;
      v94 = 1024;
      v95 = v59;
      v96 = 1024;
      v97 = v60;
      _os_log_debug_impl(&dword_2655B3000, v35, OS_LOG_TYPE_DEBUG, "EventGenerationStep:  %sP%d -> F%d stage=%d range=%d touch=%d mask=0x%x pos_um=(%{sensitive}.3f,%{sensitive}.3f) x=%{sensitive}.8f y=%{sensitive}.8f majorR=%f minorR=%f density=%f quality=%f GC=%d option_mask=0x%x phase=0x%x\n", &v64, 0x92u);
    }

    result = 1;
    goto LABEL_49;
  }

  if (v19 < 6)
  {
    a2 = &TouchService::EventGenerationStep::generateFingerEvent(SADigitizerEventPacket const*,SAPreciseContact const*,SADigitizerEventPacket&)::empty_finger;
    goto LABEL_22;
  }

  v23 = SALoggingGeneral();
  result = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v36 = *(a4 + 12);
    v37 = *(a4 + 16);
    v38 = a3[1];
    v64 = 67109632;
    *v65 = v36;
    *&v65[4] = 1024;
    *&v65[6] = v37;
    *v66 = 1024;
    *&v66[2] = v38;
    v28 = "EventGenerationStep:  New P%d F%d stage=%d not in range -> skipping";
    goto LABEL_47;
  }

LABEL_49:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TouchService::EventGenerationStep::attributesFromFlags(TouchService::EventGenerationStep *this)
{
  v1 = (this << 12) & 0x2000 | ((this & 1) << 11);
  if ((this & 0x100) != 0)
  {
    v2 = 134479872;
  }

  else
  {
    v2 = 0x40000;
  }

  if ((this & 4) != 0)
  {
    return (this << 17) & 0x4000000 | (((this >> 10) & 1) << 25) | (((this >> 11) & 1) << 24) | v2 | v1;
  }

  else
  {
    return v1;
  }
}

uint64_t TouchService::TouchServiceEventCollection::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(result + 48);
  if (*v3)
  {
    *(a3 + 56) = v3;
    *(a3 + 48) = 72 * *v3 + 8;
    return a2(a3);
  }

  return result;
}

BOOL AlgWorkNode::extractDataIfOnList(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = 0;
  v6 = a2;
  do
  {
    if (a2 == v5)
    {
      v7 = a2;
      return v7 < v6;
    }

    v7 = v5;
    v8 = *(a1 + 8 * v5++);
  }

  while (*(v8 + 8) != a3[1]);
  *(a3 + 4) = *(v8 + 16);
  v9 = (*(v8 + 24) + 3) & 0xFFFFFFFC;
  a3[3] = v9;
  a3[5] = a4;
  *(a3 + 12) = a5;
  if (a3[8])
  {
    v13 = a3[9];
    v14 = *a3;
    v15 = *(a3 + 33);
    v16 = v9 - *(v8 + 20);
    OUTLINED_FUNCTION_17();
    (*(v10 + 24))(v8);
  }

  else
  {
    if (!a3[7])
    {
      a3[7] = operator new(v9);
    }

    OUTLINED_FUNCTION_17();
    (*(v11 + 16))(v8);
  }

  return v7 < v6;
}

BOOL SABinaryParser::parseRunFrame(void *a1, unsigned int (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[2];
  if ((v4 - v5) < 2)
  {
    return 0;
  }

  a1[2] = v5 + 2;
  if ((v4 - (v5 + 2)) < 4)
  {
    return 0;
  }

  v8 = *a1 + v5 + 2;
  v9 = v5 + 6;
  a1[2] = v9;
  v10 = *(v8 + 2);
  if (v4 - v9 < v10)
  {
    return 0;
  }

  a1[2] = v9 + v10;
  if (a2)
  {
    if (!a2(a1[3]))
    {
      return 0;
    }
  }

  return SABinaryParser::parseInjExtData(a1, a3, a4, 0);
}

float TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = *a2;
  }

  else
  {
    v4 = 1;
  }

  v5 = 0.0;
  if (v4 > 2u)
  {
    if (v4 == 3)
    {
      LODWORD(v5) = *(a1 + 4);
      TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, *a1);
      v11 = *(a1 + 12);
      *&v5 = *(a1 + 16) - v12;
    }

    else if (v4 == 4)
    {
      LODWORD(v5) = *(a1 + 4);
      TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, *a1);
      *&v5 = *(a1 + 8) + v8;
      v9 = *(a1 + 20);
    }
  }

  else if (v4 == 1)
  {
    LODWORD(v5) = *a1;
    v5 = TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, *(a1 + 4));
    v10 = *(a1 + 12);
    *&v5 = *(a1 + 8) + *&v5;
  }

  else if (v4 == 2)
  {
    LODWORD(v5) = *a1;
    TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, v5, *(a1 + 4));
    v6 = *(a1 + 20);
    *&v5 = *(a1 + 16) - v7;
  }

  return *&v5;
}

double TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(uint64_t a1, double a2, float a3)
{
  *(&a2 + 1) = a3;
  v3 = vdupq_lane_s64(*&a2, 0);
  v4 = vmulq_f32(*a1, vbslq_s8(vceqzq_s32(vandq_s8(vdupq_lane_s32(*(a1 + 16), 0), xmmword_2655C5850)), vdupq_n_s32(0x447A0000u), v3));
  *&result = vbslq_s8(vcltzq_f32(v4), vaddq_f32(v4, v3), v4).u64[0];
  return result;
}

uint64_t StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  *v2 = *a2;
  *(v2 + 8) = a2[1];
  *(v2 + 16) = a2 + 2;
  return 1;
}

BOOL AlgsDevice::run()
{
  OUTLINED_FUNCTION_36();
  v1 = v0;
  v2 = v0 + 32;
  for (i = 32; i != 48; i += 8)
  {
    v4 = *(v1 + i);
    if (v4)
    {
      OUTLINED_FUNCTION_11(v4);
      v6 = *(v5 + 24);
      OUTLINED_FUNCTION_22();
      v7();
    }
  }

  v8 = *(v1 + 56);
  SAList<unsigned char>::clear(v8 + 56);
  for (j = 0; *(v8 + 20) > j; ++j)
  {
    SAList<unsigned char>::push_back(v8 + 56);
  }

  OUTLINED_FUNCTION_17();
  v11 = (*(v10 + 48))(v1);
  v12 = *(v1 + 56);
  OUTLINED_FUNCTION_11(v11);
  v14 = *(v13 + 56);
  OUTLINED_FUNCTION_22();
  v16 = v15();
  OUTLINED_FUNCTION_17();
  v18 = (*(v17 + 48))(v1);
  AlgWorkNode::resetInjectionState(v18);
  for (k = 0; k != 16; k += 8)
  {
    v20 = *(v2 + k);
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_11(v20);
      (*(v22 + 32))(v21);
    }
  }

  return v16 == 0;
}

uint64_t SAList<unsigned char>::clear(uint64_t result)
{
    ;
  }

  return result;
}

uint64_t TouchService::TouchServiceActivePlan::runPlan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[17] = 0;
  a1[18] = 0;
  v7 = a1 + 17;
  a1[19] = 0;
  if (a2 && *a2 == 0x2000)
  {
    memcpy(a1 + 17, *(a2 + 16), *(a2 + 8));
    v8 = *v7;
    if (*v7)
    {
      goto LABEL_9;
    }

    if (a1[19])
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 36))
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    *v7 = *(a1 + 10);
    v7[2] = a1[22];
    ++*(a1 + 36);
    v9 = *(a1 + 91);
    v8 = a1[17];
    if (v9)
    {
      v10 = 0xF4240 / v9;
      v8 += v10;
      a1[17] = v8;
      a1[19] += v10;
    }
  }

LABEL_9:
  *(a1 + 10) = *v7;
  a1[22] = v7[2];
  if (!a1[19])
  {
    a1[19] = v8;
  }

  v11 = *(a1 + 36);
  v12 = *(*a1 + 40);

  return v12(a1, a3, a4);
}

uint64_t PhoneTelemetryDataNode::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (!**(result + 48) || *(result + 46) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

uint64_t TouchService::TouchServiceActivePlan::runBeforeChildren(TouchService::TouchServiceActivePlan *this)
{
  v1 = *(this + 301);
  *(this + 758) = v1;
  if ((v1 & 1) == 0)
  {
    TouchService::TouchTask::invalidateOutputNodes((this + 1512));
    if (*(this + 565) == 1 && (*(this + 568) & 1) != 0)
    {
      TouchService::TouchTask::baselineAdaptNotification((this + 1512));
    }
  }

  return 0;
}

uint64_t TouchService::TouchTask::runBeforeChildren(TouchService::TouchTask *this)
{
  TouchService::PlainPathCollection::operator=(this + 176, *(this + 54));
  *(this + 400) = *(*(this + 55) + 32) ^ 1;
  return 0;
}

uint64_t TouchService::PathTrackingStep::run(TouchService::PathTrackingStep *this)
{
  v54 = *MEMORY[0x277D85DE8];
  if ((*(**(this + 15) + 40))(*(this + 15)))
  {
    v3 = 0;
    v4 = 0;
    *&v2 = 67109632;
    v39 = v2;
    do
    {
      v5 = (*(*(*(this + 15) + 32) + 8))();
      v6 = (v5 + v3);
      if (*(v5 + v3 + 1))
      {
        v7 = v5;
        if (!TouchService::PlainPathCollection::getPathWithId(*(this + 14), *v6))
        {
          v8 = SALoggingGeneral();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = *(v7 + v3);
            v10 = *(v7 + v3 + 2);
            v11 = v6[1];
            *buf = v39;
            *&buf[4] = v9;
            LOWORD(v43) = 1024;
            *(&v43 + 2) = v10;
            HIWORD(v43) = 1024;
            LODWORD(v44) = v11;
            _os_log_impl(&dword_2655B3000, v8, OS_LOG_TYPE_INFO, "PathTrackingStep:  Lost P%d F%d stage=%d", buf, 0x14u);
          }

          v12 = *(this + 14);
          v13 = (*(*v12 + 40))(v12);
          TouchService::TouchServicePathStatsCollection::setNumPathStats(v12, v13 + 1);
          v14 = *(this + 14);
          v15 = (*(*v14 + 40))(v14) - 1;
          v16 = (*(v14[4] + 8))(v14 + 4) + 48 * v15;
          v18 = *(v6 + 1);
          v17 = *(v6 + 2);
          *v16 = *v6;
          *(v16 + 16) = v18;
          *(v16 + 32) = v17;
          *(v16 + 1) = 0;
        }
      }

      ++v4;
      v3 += 48;
    }

    while (v4 < (*(**(this + 15) + 40))(*(this + 15)));
  }

  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ((*(**(this + 14) + 40))(*(this + 14)))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      v23 = ((*(*(*(this + 14) + 32) + 8))() + v19);
      PathWithId = TouchService::PlainPathCollection::getPathWithId(*(this + 15), *v23);
      v25 = v23[2];
      if (v25 > 0x10 || v25 - 6 > 0xFFFFFFFA)
      {
        goto LABEL_26;
      }

      ++v22;
      if (v23[1] - 3 > 1)
      {
        if (!PathWithId || *(PathWithId + 1) - 3 > 1)
        {
          goto LABEL_26;
        }

        v21 = 1;
        v29 = v50;
      }

      else if (PathWithId)
      {
        v27 = *(PathWithId + 1) - 5;
        v28 = v27 < 0xFFFFFFFE;
        if (v27 >= 0xFFFFFFFE)
        {
          v29 = v48;
        }

        else
        {
          v29 = v52;
        }

        v21 |= v28;
      }

      else
      {
        v21 = 1;
        v29 = v52;
      }

      ++*(v29 + v23[2]);
LABEL_26:
      ++v20;
      v19 += 48;
      if (v20 >= (*(**(this + 14) + 40))(*(this + 14)))
      {
        if (v21)
        {
          v30 = (18 * v22) | 1;
          MEMORY[0x28223BE20]();
          v31 = &v40[-((v30 + 15) & 0x3FFFFFFFF0) - 16];
          v32 = 0;
          v33 = 0;
          *v31 = 0;
          *buf = v52;
          v43 = "make";
          v44 = v50;
          v45 = "break";
          v46 = v48;
          v47 = "touching";
          do
          {
            if (v33 + 18 <= v30)
            {
              v34 = 0;
              v35 = &v43;
              do
              {
                if ((*(v35 - 1))[v32])
                {
                  v33 += snprintf(&v31[v33], v30 - v33, "(%d F%d %s)", (*(v35 - 1))[v32], v32, *v35);
                }

                if (v34 > 1)
                {
                  break;
                }

                ++v34;
                v35 += 2;
              }

              while (v33 + 18 <= v30);
            }

            ++v32;
          }

          while (v32 != 17);
          v36 = SALoggingGeneral();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 136446210;
            v41 = v31;
            _os_log_impl(&dword_2655B3000, v36, OS_LOG_TYPE_DEFAULT, "PathTrackingStep: Non-finger paths found %{public}s", v40, 0xCu);
          }
        }

        break;
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t TouchService::PlainPathCollection::getPathWithId(TouchService::PlainPathCollection *this, int a2)
{
  v4 = this + 32;
  if (!(*(*this + 40))(this))
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = (*(*v4 + 8))(v4);
    if (*(v7 + v5) == a2)
    {
      break;
    }

    ++v6;
    v5 += 48;
    if (v6 >= (*(*this + 40))(this))
    {
      return 0;
    }
  }

  return v7 + v5;
}

uint64_t TouchService::ContactReclassificationStep::run(TouchService::ContactReclassificationStep *this)
{
  v19[3] = *MEMORY[0x277D85DE8];
  (*(**(this + 19) + 40))(*(this + 19));
  MEMORY[0x28223BE20]();
  v4 = v19 - v3;
  if (v2 >= 0x200)
  {
    v5 = 512;
  }

  else
  {
    v5 = v2;
  }

  bzero(v19 - v3, v5);
  if ((*(**(this + 19) + 40))(*(this + 19)))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *&v4[8 * v7++] = (*(*(*(this + 19) + 32) + 8))() + v6;
      v6 += 48;
    }

    while (v7 < (*(**(this + 19) + 40))(*(this + 19)));
  }

  v8 = *(this + 17);
  if (v8)
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  memset(v19, 0, 24);
  if ((*(**(this + 18) + 40))(*(this + 18)))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v19[v11++] = (*(*(*(this + 18) + 128) + 8))() + v10;
      v10 += 28;
    }

    while (v11 < (*(**(this + 18) + 40))(*(this + 18)));
  }

  v12 = *(this + 15);
  v13 = **(this + 14);
  v14 = *(*(this + 16) + 30);
  v15 = (*(**(this + 19) + 40))(*(this + 19));
  v16 = (*(**(this + 18) + 40))(*(this + 18));
  TouchService::ContactReclassification<62ull,(unsigned char)3>::reclassify(this + 10, v13, v12 + 32, v14, v9, v4, v15, v19, v16);
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t TouchService::ContactReclassification<62ull,(unsigned char)3>::reclassify(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t *a8, unsigned __int8 a9)
{
  v39 = a4;
  if (a7)
  {
    v11 = 0;
    v12 = 0;
    v13 = a9;
    if (a5)
    {
      v14 = (a2 - a5) >> 8 > 0xC34;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    v33 = a7;
    v35 = v15 ^ 1;
    while (1)
    {
      v16 = *(a6 + 8 * v11);
      v17 = 1 << *v16;
      v18 = a1->i64[0];
      if (*(v16 + 1) >= 3u && ((1 << *(v16 + 2)) & 0x3E) != 0)
      {
        a1->i64[0] = v17 | v18;
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      v36 = v19;
      if (v13)
      {
        break;
      }

      v37 = 0;
LABEL_41:
      if (((v36 | v37) & 1) == 0)
      {
        *a1 = vandq_s8(*a1, vdupq_n_s64(~v17));
      }

      v12 |= v17;
      ++v11;
      v13 = a9;
      if (v11 == v33)
      {
        goto LABEL_46;
      }
    }

    v37 = 0;
    v38 = v17 & v18;
    if ((v17 & v18) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    v21 = a8;
    while (1)
    {
      v22 = *v21;
      if ((*(*v21 + 16) >> v39))
      {
        v23 = TouchService::ContactReclassification<62ull,(unsigned char)3>::regionCoords(a3, &v39, *v21);
        v27 = *(v16 + 4);
        if (v27 >= v23 && v27 <= v25)
        {
          v29 = *(v16 + 8);
          if (v29 >= v24 && v29 <= v26)
          {
            if (v20)
            {
              a1->i64[1] |= v17;
LABEL_34:
              if (((*(v22 + 20) >> *(v16 + 2)) & 1) != 0 && *(v16 + 1) >= 3u && (*&v35 & (*(v22 + 17) >> 1) & 1) == 0)
              {
                *(v16 + 2) = *(v22 + 26);
                if (!v38)
                {
                  *(v16 + 44) |= *(v22 + 24);
                }

                v37 = 1;
              }

              goto LABEL_28;
            }

            if (!v38 || (a1->i64[1] & v17) != 0)
            {
              goto LABEL_34;
            }
          }
        }
      }

LABEL_28:
      ++v21;
      if (!--v13)
      {
        goto LABEL_41;
      }
    }
  }

  v12 = 0;
LABEL_46:
  *a1 = vandq_s8(*a1, vdupq_n_s64(v12));
  return 1;
}

uint64_t TouchService::CoreAnalyticsStep::run(TouchService::CoreAnalyticsStep *this)
{
  TouchService::CoreAnalyticsStep::generatePathStats(this);
  TouchService::CoreAnalyticsStep::generateDurationBetweenTouches(this);
  return 0;
}

uint64_t TouchService::CoreAnalyticsStep::generatePathStats(TouchService::CoreAnalyticsStep *this)
{
  TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 15), 0);
  result = (*(**(this + 14) + 40))(*(this + 14));
  if (result)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(*(*(this + 14) + 32) + 8))();
      v6 = v5 + v3;
      v7 = *(this + 20) + 24 * *(v5 + v3);
      if (*(v5 + v3 + 1) - 3 > 1)
      {
        if (*(v7 + 4) != 0.0)
        {
          v14 = *(this + 15);
          v15 = (*(*v14 + 40))(v14);
          TouchService::TouchServicePathStatsCollection::setNumPathStats(v14, v15 + 1);
          v16 = *(this + 15);
          v17 = (*(*v16 + 40))(v16) - 1;
          v18 = (*(v16[4] + 8))(v16 + 4);
          v19 = *(v7 + 16);
          v20 = v18 + 24 * v17;
          *v20 = *v7;
          *(v20 + 16) = v19;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
        }
      }

      else
      {
        v8 = *(v6 + 20);
        v9 = *(v6 + 24);
        v10 = sqrtf(v8 * v9) / 1000.0;
        v11 = v8 / v9;
        v12 = *(v7 + 4);
        if (v12 == 0.0)
        {
          *v7 = v10;
          *(v7 + 4) = v10;
          *(v7 + 8) = v11;
          *(v7 + 12) = v11;
          v13 = *(v5 + v3 + 2);
          *(v7 + 16) = v13;
          *(v7 + 20) = v13;
        }

        else
        {
          if (v10 < *v7)
          {
            *v7 = v10;
            *(v7 + 8) = v11;
          }

          if (v10 > v12)
          {
            *(v7 + 4) = v10;
            *(v7 + 12) = v11;
          }

          *(v7 + 20) = *(v5 + v3 + 2);
        }
      }

      ++v4;
      result = (*(**(this + 14) + 40))(*(this + 14));
      v3 += 48;
    }

    while (v4 < result);
  }

  return result;
}

float TouchService::CoreAnalyticsStep::generateDurationBetweenTouches(TouchService::CoreAnalyticsStep *this)
{
  *(*(this + 16) + 36) = 0;
  if ((*(**(this + 14) + 40))(*(this + 14)))
  {
    v3 = 0;
    v4 = 1;
    while (*((*(*(*(this + 14) + 32) + 8))() + v4) - 3 > 1)
    {
      ++v3;
      v4 += 48;
      if (v3 >= (*(**(this + 14) + 40))(*(this + 14)))
      {
        goto LABEL_5;
      }
    }

    if (!*(this + 152))
    {
      *(this + 152) = 1;
      v5 = *(this + 18);
      if (v5)
      {
        v6 = *(this + 16);
        result = (*(*(this + 17) + 16) - v5) / 1000000.0;
        *(v6 + 32) = result;
        *(v6 + 36) = 1;
      }
    }
  }

  else
  {
LABEL_5:
    if (*(this + 152))
    {
      *(this + 152) = 0;
      *(this + 18) = *(*(this + 17) + 16);
    }
  }

  return result;
}

uint64_t TouchService::TipOffsetStep::run(TouchService::TipOffsetStep *this)
{
  v2 = *(this + 19);
  if ((*(**(this + 20) + 40))(*(this + 20)))
  {
    v3 = 0;
    for (i = 0; i < (*(**(this + 20) + 40))(*(this + 20)); ++i)
    {
      v5 = (*(*(*(this + 20) + 32) + 8))();
      v6 = *(v2 + 30);
      v7 = v5 + v3;
      v8 = *(v5 + v3 + 4);
      switch(v6)
      {
        case 2:
          v9 = *(this + 37);
          v10 = v8 - *(this + 36);
          break;
        case 3:
          v11 = *(this + 36);
          v12 = v8 - *(this + 37);
LABEL_11:
          *(v7 + 4) = v12;
          v13 = v11 + *(v7 + 8);
          goto LABEL_12;
        case 4:
          v9 = *(this + 36);
          v10 = *(this + 37) + v8;
          break;
        default:
          v11 = *(this + 37);
          v12 = *(this + 36) + v8;
          goto LABEL_11;
      }

      *(v7 + 4) = v10;
      v13 = *(v7 + 8) - v9;
LABEL_12:
      *(v7 + 8) = v13;
      v3 += 48;
    }
  }

  return 0;
}

uint64_t TouchService::HysteresisFilterStep::run(TouchService::HysteresisFilterStep *this)
{
  v2 = *(*(this + 28) + 32);
  result = (*(**(this + 31) + 40))(*(this + 31));
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 25400.0 / v2;
    while (1)
    {
      v7 = (*(*(*(this + 31) + 32) + 8))();
      if (!*(v7 + v4) || *(v7 + v4) >= *(*(this + 31) + 40))
      {
        break;
      }

      v8 = v7;
      v9 = *(*(this + 33) + 8 * *(v7 + v4));
      TouchService::HysteresisFilter::update(v9, **(this + 32), (v7 + v4), (*(this + 30) + 30), *(this + 29) + 32, v6);
      *(v8 + v4 + 4) = *(v9 + 8);
      ++v5;
      v4 += 48;
      if (v5 >= (*(**(this + 31) + 40))(*(this + 31)))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void TouchService::HysteresisFilter::update(uint64_t a1, unint64_t a2, float *a3, _BYTE *a4, uint64_t a5, float a6)
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 1);
  v9 = v8 - 3 < 2;
  v10 = v8 >= 3;
  v11 = v8 - 3;
  if (!v10 || (v12 = *(a1 + 136) ^ 1, (v9 & v12 & 1) != 0))
  {
    *(a1 + 136) = v9;
    goto LABEL_7;
  }

  if ((v11 < 2) | v12 & 1)
  {
    *(a1 + 136) = v9;
    v16 = *(a1 + 137);
    goto LABEL_12;
  }

  v20 = *(a1 + 137);
  *(a1 + 136) = v9;
  if (v20)
  {
LABEL_7:
    v17 = *(a3 + 1);
    *a1 = v17;
    *(a1 + 8) = v17;
    *(a1 + 137) = 0;
    *(a1 + 40) = 0;
    *(a1 + 72) = 0;
    *(a1 + 24) = 0;
    v18 = *MEMORY[0x277D85DE8];
    v19 = a1 + 24;

    InstabilityFilter::update(v19, a2, a3, 0);
    return;
  }

  v16 = 0;
LABEL_12:
  v21 = (a1 + 24);
  InstabilityFilter::update(a1 + 24, a2, a3, v16 & 1);
  v22 = *(a1 + 16);
  v23 = *(v22 + 60);
  if (*a4 == 1)
  {
    v23 = *(v22 + 60);
    if (*(v22 + 68) == 1)
    {
      v23 = *(v22 + 60);
      if ((a3[2] - *(a5 + 12)) < *(v22 + 72))
      {
        v23 = *(v22 + 76);
      }
    }
  }

  v24 = *(a1 + 24);
  v25 = *(v22 + 60) * v24;
  v26 = v23 * v24;
  v27 = *a1;
  v28 = *(a1 + 4);
  v29 = a3[1];
  v30 = a3[2];
  v31 = v25 + *a1;
  if ((v29 - *a1) <= v25)
  {
    v31 = a3[1];
  }

  if ((*a1 - v29) > v25)
  {
    v32 = v27 - v25;
  }

  else
  {
    v32 = v31;
  }

  *a1 = v32;
  if ((v28 - v30) <= v26)
  {
    v33 = v30;
    if ((v30 - v28) > v26)
    {
      v33 = v26 + v28;
    }
  }

  else
  {
    v33 = v28 - v26;
  }

  *(a1 + 4) = v33;
  v34 = *(v22 + 64);
  v35 = v29 - v32;
  v36 = v29 + v34;
  if ((v32 - v29) <= v34)
  {
    v36 = v32;
  }

  v37 = v29 - v34;
  if (v35 > v34)
  {
    v38 = v37;
  }

  else
  {
    v38 = v36;
  }

  v39 = v30 - v33;
  v40 = v30 + v34;
  if ((v33 - v30) <= v34)
  {
    v40 = v33;
  }

  v41 = v30 - v34;
  if (v39 > v34)
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  v43 = -a6;
  if (a6 >= 0.0)
  {
    v43 = a6;
  }

  if (v32 >= v38 || (v38 - v32) >= v43)
  {
    if ((v32 - v38) >= v43 || v32 <= v38)
    {
      v44 = v38;
    }

    else
    {
      v44 = v32 - v43;
    }
  }

  else
  {
    v44 = v43 + v32;
  }

  if (v33 >= v42 || (v42 - v33) >= v43)
  {
    v47 = (v33 - v42) >= v43 || v33 <= v42;
    v48 = v33 - v43;
    if (v47)
    {
      v46 = v42;
    }

    else
    {
      v46 = v48;
    }
  }

  else
  {
    v46 = v43 + v33;
  }

  v49 = v33 != v46 || v32 != v44;
  v50 = *(a1 + 137) | v49;
  *(a1 + 137) = v50;
  *a1 = v44;
  *(a1 + 4) = v46;
  if (v50)
  {
    v51 = v44 != *(a1 + 8) || v46 != *(a1 + 12);
    *(a1 + 8) = *a1;
  }

  else
  {
    v51 = 0;
  }

  v52 = SALoggingGeneral();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    v54 = *a3;
    v55 = *(a3 + 2);
    v56 = *(a3 + 1);
    v57 = *v21;
    v58 = a3[1];
    v59 = a3[2];
    v60[0] = 67112961;
    v60[1] = v54;
    v61 = 1024;
    v62 = v55;
    v63 = 1024;
    v64 = v56;
    v65 = 1024;
    v66 = v49;
    v67 = 1024;
    v68 = v51;
    v69 = 2048;
    v70 = v57;
    v71 = 2048;
    v72 = v25;
    v73 = 2048;
    v74 = v26;
    v75 = 2053;
    v76 = v58;
    v77 = 2053;
    v78 = v59;
    v79 = 2053;
    v80 = v27;
    v81 = 2053;
    v82 = v28;
    v83 = 2053;
    v84 = v32;
    v85 = 2053;
    v86 = v33;
    v87 = 2053;
    v88 = v44;
    v89 = 2053;
    v90 = v46;
    _os_log_debug_impl(&dword_2655B3000, v52, OS_LOG_TYPE_DEBUG, "HysteresisFilterStep:  P%d -> F%d stage=%d slid=%d moved=%d instability=%0.3f(x:%.0f, y:%.0f) input=(%{sensitive}.0f,%{sensitive}.0f) old=(%{sensitive}.0f,%{sensitive}.0f) hide=(%{sensitive}.0f,%{sensitive}.0f) new=(%{sensitive}.0f,%{sensitive}.0f)\n", v60, 0x8Eu);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void InstabilityFilter::update(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 60) = *(a1 + 28);
  *(a1 + 48) = *(a1 + 16);
  *(a1 + 16) = 1;
  *(a1 + 24) = a2;
  v6 = vdiv_f32(*(a3 + 20), vdup_n_s32(0x447A0000u));
  *(a1 + 32) = v6;
  v7 = *(a3 + 32);
  *(a1 + 40) = v7;
  v8 = *(a3 + 1);
  v9 = v8 - 1;
  if (*(a1 + 48) != 1)
  {
    if (v9 >= 6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v9 < 6 && (v8 - 5) < 0xFFFFFFFE || *(a1 + 56) > a2)
  {
LABEL_7:
    *(a1 + 80) = 1;
    *(a1 + 48) = *(a1 + 16);
    *(a1 + 60) = *(a1 + 28);
    *(a1 + 88) = a2;
    *(a1 + 96) = v7;
    *(a1 + 100) = v6.i32[0];
    *(a1 + 104) = 0;
    *a1 = 0;
  }

LABEL_8:
  if (*(a1 + 80) != 1)
  {
    return;
  }

  v10 = (a2 - *(a1 + 88)) / 1000000.0;
  v11 = *(a1 + 8);
  v12 = (a2 - *(a1 + 56)) / 1000000.0;
  v13 = v12 / 0.008;
  v55 = v6;
  v14 = powf(flt_2655C5A60[v11[12] < v10], v12 / 0.008);
  v15 = 1.0;
  v16 = (v7 * (1.0 - v14)) + (v14 * *(a1 + 96));
  *(a1 + 96) = v16;
  v17 = powf(0.95, v13);
  v18 = ((1.0 - v17) * v55.f32[0]) + (v17 * *(a1 + 100));
  *(a1 + 100) = v18;
  v19 = *(a1 + 72);
  if (v7 <= v19)
  {
    v20 = *(a1 + 72);
  }

  else
  {
    v20 = v7;
  }

  if (v20 > 0.0)
  {
    v21 = fabsf(((v7 - v19) * 100.0) / v20);
    v22 = 1.0;
    if (a4)
    {
      v22 = v11[11];
    }

    v23 = v22 * v11[9];
    v24 = 0.0;
    if (v21 > v23)
    {
      v25 = v22 * v11[10];
      v26 = v21 < v25;
      v24 = (v21 - v23) / (v25 - v23);
      if (!v26)
      {
        v24 = 1.0;
      }
    }

    v27 = powf(v24, 1.5);
    if ((a4 & (v7 < v16)) != 0)
    {
      v27 = 0.0;
    }

    v54 = v27;
    v28 = 1.0;
    if (v10 > 0.0)
    {
      v28 = 0.0;
      if (v10 < 0.5)
      {
        v28 = (0.5 - v10) + (0.5 - v10);
      }
    }

    v29 = ((v11[8] + -1.0) * v28) + 1.0;
    v30 = vabd_f32(v55, *(a1 + 64));
    v31 = v30.f32[1];
    if (v30.f32[0] > v30.f32[1])
    {
      v31 = v30.f32[0];
    }

    v32 = v29 * v11[6];
    v33 = 0.0;
    v34 = 0.0;
    if (v31 > v32)
    {
      v34 = (v31 - v32) / ((v29 * v11[7]) - v32);
    }

    v35 = powf(v34, 1.5);
    v36 = *(a1 + 104);
    v37 = 0.75;
    if (v7 < v16)
    {
      v37 = 0.5;
    }

    if (v35 > v36)
    {
      v37 = 0.25;
    }

    v38 = powf(v37, v13);
    v39 = (v35 * (1.0 - v38)) + (v38 * v36);
    *(a1 + 104) = v39;
    v41 = v11[2];
    v40 = v11[3];
    if (v55.f32[0] > v41)
    {
      v33 = (v55.f32[0] - v41) / (v40 - v41);
    }

    v43 = v11[4];
    v42 = v11[5];
    v44 = v55.f32[1];
    v45 = 0.0;
    if (v55.f32[1] > v43)
    {
      v45 = (v55.f32[1] - v43) / (v42 - v43);
    }

    if (v55.f32[1] <= 6.0)
    {
      v46 = 1.0;
      if (v55.f32[0] <= 6.0)
      {
LABEL_39:
        v47 = 0.0;
        if (v46 > *v11)
        {
          v47 = (v46 - *v11) / (v11[1] - *v11);
        }

        v48 = (v18 - v42) / ((v40 + 0.5) - v42);
        if (v18 <= v42)
        {
          v48 = 0.0;
        }

        if (v39 <= v47)
        {
          v39 = v47;
        }

        if (v45 <= v33)
        {
          v49 = v33;
        }

        else
        {
          v49 = v45;
        }

        if (v39 <= v49)
        {
          v39 = v49;
        }

        if (v39 <= v48)
        {
          v39 = v48;
        }

        if (v54 <= v39)
        {
          v15 = v39;
        }

        else
        {
          v15 = v54;
        }

        goto LABEL_55;
      }

      v44 = 6.0;
    }

    v46 = v55.f32[0] / v44;
    goto LABEL_39;
  }

LABEL_55:
  v50 = 0.0;
  if ((a4 & 1) == 0)
  {
    if (v10 <= 0.0)
    {
      v50 = 1.0;
      v53 = 0.2;
    }

    else
    {
      v52 = v11[13];
      v51 = v11[14];
      v53 = 0.0;
      if (v52 > v10)
      {
        v50 = (v52 - v10) / v52;
      }

      if (v51 > v10)
      {
        v53 = ((v51 - v10) / v51) * 0.2;
      }
    }

    if (v50 <= v53)
    {
      v50 = v53;
    }
  }

  if (v15 > v50)
  {
    v50 = v15;
  }

  *a1 = v50;
}

uint64_t TouchService::RadiusCorrectionStep::run(TouchService::RadiusCorrectionStep *this)
{
  if ((*(**(this + 20) + 40))(*(this + 20)))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(*(*(this + 20) + 32) + 8))();
      v5 = *(this + 22) + 20 * *(v4 + v2);
      if (*(v4 + v2 + 1) - 5 > 0xFFFFFFFB)
      {
        v6 = v4;
        if (*v5)
        {
          _D1 = vmla_n_f32(vrev64_s32(vmul_n_f32(*(v4 + v2 + 20), 1.0 - *(this + 36))), *(v5 + 4), *(this + 36));
        }

        else
        {
          _D1 = vrev64_s32(*(v4 + v2 + 20));
        }

        *v5 = 1;
        *(v5 + 4) = _D1;
        _S2 = *(this + 38);
        v9 = *(this + 37);
        __asm { FMLA            S8, S2, V1.S[1] }

        v15 = *(this + 42) + *(this + 42);
        v16 = TouchService::RadiusCorrectionStep::quantizeRadius(v4, *(this + 39) + (_S2 * _D1.f32[0]), *(v5 + 12), v9, v15);
        v17 = (v6 + v2);
        v17[6] = v16;
        v19 = TouchService::RadiusCorrectionStep::quantizeRadius(v18, _S8, *(v5 + 16), v9, v15);
        v17[5] = v19;
        *(v5 + 12) = v16;
        *(v5 + 16) = v19;
      }

      else
      {
        *(v4 + v2 + 20) = 0;
        *v5 = 0;
        *(v5 + 12) = 0;
      }

      ++v3;
      v2 += 48;
    }

    while (v3 < (*(**(this + 20) + 40))(*(this + 20)));
  }

  return 0;
}

float TouchService::RadiusCorrectionStep::quantizeRadius(TouchService::RadiusCorrectionStep *this, float a2, float a3, float a4, float a5)
{
  if (a2 <= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a2;
  }

  v9 = ((v8 - a4) / a5);
  v10 = fmodf(v8 - a4, a5);
  if (v8 <= a3 || v10 <= (a5 * 0.667))
  {
    v13 = v10 > (a5 * 0.333) && v8 < a3;
    v14 = v13 + v9;
  }

  else
  {
    v14 = v9 + 1;
  }

  return a4 + (v14 * a5);
}

uint64_t TouchService::InterpolationStep::run(TouchService::InterpolationStep *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 17);
  if (*(v2 + 32) == 1)
  {
    v3 = (*(v2 + 36) + 1000000) / (2 * *(v2 + 36));
    v5 = (this + 176);
    v4 = *(this + 22);
    v7 = *(this + 14);
    v6 = *(this + 15);
    *(v6 + 8) = *(v7 + 2);
    v8 = *v7;
    if (*v7 - v4 <= 3 * v3)
    {
      v9 = (v4 + v8) >> 1;
      v10 = (*(this + 24) + v7[2]) >> 1;
    }

    else
    {
      v9 = v8 - v3;
      v10 = v7[2] - v3;
    }

    *v6 = v9;
    *(v6 + 16) = v10;
    TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 20), 0);
    if ((*(**(this + 18) + 40))(*(this + 18)))
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = ((*(*(*(this + 18) + 32) + 8))() + 48 * v13);
        v15 = *v14;
        if (!*v14 || v15 >= *(*(this + 18) + 40))
        {
          break;
        }

        PathWithId = TouchService::PlainPathCollection::getPathWithId(*(this + 19), v15);
        v17 = (v12 + 1);
        TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 20), v12 + 1);
        v18 = (*(*(*(this + 20) + 32) + 8))() + 48 * v12;
        v20 = *(v14 + 1);
        v19 = *(v14 + 2);
        *v18 = *v14;
        *(v18 + 16) = v20;
        *(v18 + 32) = v19;
        if (PathWithId && *(PathWithId + 1) - 3 >= 2 && v14[1] - 3 <= 1)
        {
          *(v18 + 1) = 2;
        }

        v21 = *(*(this + 21) + 8 * *v14);
        if (v14[1] - 1 >= 6)
        {
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *(v21 + 40) = 0;
          *(v21 + 64) = 0;
        }

        else
        {
          v37 = 0;
          v22 = 25400.0 / *(*(this + 16) + 32);
          TouchService::PathInterpolator::update(v21, **(this + 14), v14);
          if (TouchService::PathInterpolator::interpolateAt(v21, **(this + 15), &v37 + 1, &v37, v22))
          {
            *(v18 + 4) = HIDWORD(v37);
            *(v18 + 8) = v37;
            *v18 = *v14;
            v23 = SALoggingGeneral();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v24 = *v14;
              v25 = v14[2];
              v26 = v14[1];
              v27 = *(v14 + 1);
              v28 = *(v14 + 2);
              v29 = *(v18 + 4);
              v30 = *(v18 + 8);
              *buf = 67110657;
              v39 = v24;
              v40 = 1024;
              v41 = v25;
              v42 = 1024;
              v43 = v26;
              v44 = 2053;
              v45 = v27;
              v46 = 2053;
              v47 = v28;
              v48 = 2053;
              v49 = v29;
              v50 = 2053;
              v51 = v30;
              _os_log_debug_impl(&dword_2655B3000, v23, OS_LOG_TYPE_DEBUG, "InterpolationStep:  P%d -> F%d stage=%d path=(%{sensitive}.3f,%{sensitive}.3f) interp=(%{sensitive}.3f,%{sensitive}.3f)\n", buf, 0x3Cu);
            }
          }

          else
          {
            TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 20), v12);
            v17 = v12;
          }
        }

        ++v13;
        v12 = v17;
        if ((*(**(this + 18) + 40))(*(this + 18)) <= v13)
        {
          goto LABEL_21;
        }
      }

      result = 1;
    }

    else
    {
LABEL_21:
      v31 = *(this + 18);
      if (v31[40] >= 2u)
      {
        v32 = 1;
        do
        {
          if (!TouchService::PlainPathCollection::getPathWithId(v31, v32))
          {
            v33 = *(*(this + 21) + 8 * v32);
            *(v33 + 8) = 0;
            *(v33 + 16) = 0;
            *(v33 + 40) = 0;
            *(v33 + 64) = 0;
          }

          ++v32;
          v31 = *(this + 18);
        }

        while (v32 < v31[40]);
      }

      result = 0;
      v34 = *(this + 14);
      v35 = *(v34 + 16);
      *v5 = *v34;
      *(this + 24) = v35;
    }
  }

  else
  {
    TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 20), 0);
    result = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL TouchService::PathInterpolator::interpolateAt(TouchService::PathInterpolator *this, uint64_t a2, float *a3, float *a4, float a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *(this + 2);
  if (v6 < 2)
  {
    v12 = SALoggingGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      TouchService::PathInterpolator::interpolateAt(a2, v12);
    }

    goto LABEL_18;
  }

  if (*(this + 16) == 1 && *(this + 40) == 1)
  {
    v11 = *(this + 64) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(this + 5);
  v14 = *(this + 11);
  v15 = vabds_f32(v13, v14) < a5 && vabds_f32(*(this + 6), *(this + 12)) < a5;
  v16 = *(this + 4);
  if (v6 == 2)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v29 = ((((*(*this + 4) >> 1) + 1000000) / *(*this + 4)) * 2.5);
  v30 = *(this + 10);
  v31 = v16 - v30;
  v17 = v16 - v30 > v29;
  if (((v15 | v11) & 1) != 0 || v31 > v29)
  {
LABEL_13:
    v18 = *(this + 7);
    v19 = (a2 - v18);
    v20 = (v16 - v18);
    *a3 = Interpolation::polynomial1stOrder(this, v19, v13, v14, v20, 0.0);
    *a4 = Interpolation::polynomial1stOrder(v21, v19, *(this + 6), *(this + 12), v20, 0.0);
    v22 = SALoggingGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(this + 2);
      v24 = *a3;
      v25 = *a4;
      v41 = 67110913;
      *v42 = v23;
      *&v42[4] = 1024;
      *&v42[6] = v15;
      LOWORD(v43) = 1024;
      *(&v43 + 2) = v11 & 1;
      HIWORD(v43) = 1024;
      *v44 = v17;
      *&v44[4] = 2048;
      *&v44[6] = a5;
      *&v44[14] = 2048;
      *&v44[16] = a2;
      v45 = 2053;
      v46 = v24;
      v47 = 2053;
      v48 = v25;
      v26 = "InterpolationStep:  Linear Interpolation Occurred(_count=%d, is_stationary=%d, is_2nd_touching=%d, is_frame_dropped=%d, quantum=%.3f) at t=%llu: output=(%{sensitive}.3f,%{sensitive}.3f)\n";
      v27 = v22;
      v28 = 66;
LABEL_20:
      _os_log_debug_impl(&dword_2655B3000, v27, OS_LOG_TYPE_DEBUG, v26, &v41, v28);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v32 = (a2 - v30);
  v33 = v31;
  v34 = (*(this + 7) - v30);
  *a3 = Interpolation::polynomial2ndOrder(this, v32, v13, v14, *(this + 17), v31, v34, 0.0);
  *a4 = Interpolation::polynomial2ndOrder(v35, v32, *(this + 6), *(this + 12), *(this + 18), v33, v34, 0.0);
  v36 = SALoggingGeneral();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v39 = *a3;
    v40 = *a4;
    v41 = 134218753;
    *v42 = a5;
    *&v42[8] = 2048;
    v43 = a2;
    *v44 = 2053;
    *&v44[2] = v39;
    *&v44[10] = 2053;
    *&v44[12] = v40;
    v26 = "InterpolationStep:  2nd-order Polynomial Interpolation Occurred(quantum=%.3f) at t=%llu: output=(%{sensitive}.3f,%{sensitive}.3f)\n";
    v27 = v36;
    v28 = 42;
    goto LABEL_20;
  }

LABEL_18:
  result = v6 > 1;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TouchService::PathInterpolator::update(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 && *(result + 32) >= a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 40) = 0;
    *(result + 64) = 0;
  }

  else
  {
    v4 = *(a3 + 1) - 3 < 2;
    v5 = *(a3 + 4);
    *(result + 64) = *(result + 40);
    *(result + 80) = *(result + 56);
    *(result + 40) = *(result + 16);
    *(result + 56) = *(result + 32);
    *(result + 16) = v4;
    *(result + 20) = v5;
    *(result + 32) = a2;
    *(result + 8) = v3 + 1;
  }

  return result;
}

BOOL TouchService::EventGenerationStep::isFingerInEvents(TouchService::EventGenerationStep *this, int a2)
{
  if (!(*(**(this + 21) + 40))(*(this + 21)))
  {
    return 0;
  }

  v4 = 0;
  v5 = 12;
  do
  {
    v6 = *((*(*(*(this + 21) + 32) + 8))() + v5);
    v7 = v6 == a2;
    if (v6 == a2)
    {
      break;
    }

    ++v4;
    v5 += 72;
  }

  while (v4 < (*(**(this + 21) + 40))(*(this + 21)));
  return v7;
}

void TouchService::EventGenerationStep::generateHandEvent(TouchService::EventGenerationStep *this)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *(this + 20);
  v2 = *(this + 21);
  *(v3 + 104) = 0;
  if ((*(*v2 + 40))(v2))
  {
    v4 = *(this + 17);
    v6 = *(v4 + 64);
    v5 = *(v4 + 80);
    v7 = *(v4 + 48);
    *(v3 + 96) = *(v4 + 96);
    *(v3 + 64) = v6;
    *(v3 + 80) = v5;
    *(v3 + 32) = *(v4 + 32);
    *(v3 + 48) = v7;
    v8 = *(this + 22);
    *(v3 + 40) = *(v8 + 8);
    *(v3 + 32) = *(v8 + 16);
    *(v3 + 48) = 0x8000000001;
    *(v3 + 88) = 0;
    *(v3 + 92) = 0;
    if ((*(**(this + 21) + 40))(*(this + 21)))
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = (*(*(*(this + 21) + 32) + 8))();
        v13 = *(v3 + 89);
        v14 = v12 + v9;
        v15 = *(v12 + v9 + 57);
        v16 = *(v3 + 88);
        if (((v13 ^ 1) & v15 & 1) != 0 || ((v16 ^ 1) & *(v14 + 56)) != 0)
        {
          v11 = 0;
          *(v3 + 56) = 0;
          LOBYTE(v15) = *(v14 + 57);
        }

        v17 = v13 | v15;
        *(v3 + 89) = v17 & 1;
        v18 = v16 | *(v14 + 56);
        *(v3 + 88) = v18 & 1;
        *(v3 + 92) |= *(v12 + v9 + 60);
        if (v17)
        {
          if ((*(v14 + 57) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if ((v18 & 1) == 0 || *(v14 + 56) != 1)
        {
          goto LABEL_13;
        }

        ++v11;
        *(v3 + 56) = vadd_f32(*(v12 + v9 + 24), *(v3 + 56));
LABEL_13:
        v19 = *(v3 + 52) | *(v12 + v9 + 20) & 0xFFFFFF7C;
        *(v3 + 52) = v19;
        v20 = *(v12 + v9 + 20);
        if ((v20 & 0x80) == 0)
        {
          *(v3 + 52) = v19 & 0xFFFFFF7F;
          v20 = *(v12 + v9 + 20);
        }

        if ((v20 & 3) != 0)
        {
          *(*(this + 20) + 104) = 1;
        }

        ++v10;
        v9 += 72;
        if (v10 >= (*(**(this + 21) + 40))(*(this + 21)))
        {
          goto LABEL_20;
        }
      }
    }

    v11 = 0;
LABEL_20:
    v21 = getInRangeEvents(*(this + 21));
    v22 = getInRangeEvents(*(this + 18));
    if (!v21)
    {
      *(v3 + 52) &= 0x200A3u;
    }

    if (v21 != v22)
    {
      *(v3 + 52) |= 0x20u;
    }

    if ((v21 != 0) == (v22 == 0))
    {
      *(v3 + 52) |= 1u;
    }

    v23 = hasTouchingEvents(*(this + 21));
    if (v23 != hasTouchingEvents(*(this + 18)))
    {
      *(v3 + 52) |= 2u;
    }

    if (v11 >= 2)
    {
      *v24.i32 = v11;
      *(v3 + 56) = vdiv_f32(*(v3 + 56), vdup_lane_s32(v24, 0));
    }

    v25 = *(this + 20);
    if ((*(v3 + 52) & 0xF0FBD7FF) != 0)
    {
      *(v25 + 104) = 1;
    }

    else if ((*(v25 + 104) & 1) == 0)
    {
      goto LABEL_35;
    }

    v26 = SALoggingGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(v3 + 48);
      v29 = (*(**(this + 21) + 40))(*(this + 21));
      v30 = *(v3 + 88);
      v31 = *(v3 + 89);
      v32 = *(v3 + 52);
      v33 = *(v3 + 56);
      v34 = *(v3 + 60);
      v35 = *(v3 + 40);
      v36 = *(v3 + 92);
      v37[0] = 67111169;
      v37[1] = v28;
      v38 = 1024;
      v39 = v29;
      v40 = 1024;
      v41 = v30;
      v42 = 1024;
      v43 = v31;
      v44 = 1024;
      v45 = v32;
      v46 = 2053;
      v47 = v33;
      v48 = 2053;
      v49 = v34;
      v50 = 1024;
      v51 = v35;
      v52 = 1024;
      v53 = v36;
      _os_log_debug_impl(&dword_2655B3000, v26, OS_LOG_TYPE_DEBUG, "EventGenerationStep: H%d fingers=%d -> range=%d touch=%d mask=0x%x x=%{sensitive}f y=%{sensitive}f GC=%d option_mask=0x%x\n", v37, 0x40u);
    }
  }

LABEL_35:
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t getInRangeEvents(const TouchService::TouchServiceEventCollection *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = (*(*(a1 + 4) + 8))(a1 + 32);
    v6 = 1 << *(v5 + v2 + 16);
    if (!*(v5 + v2 + 56))
    {
      v6 = 0;
    }

    v4 = v6 | v4;
    ++v3;
    v2 += 72;
  }

  while (v3 < (*(*a1 + 40))(a1));
  return v4;
}

uint64_t hasTouchingEvents(const TouchService::TouchServiceEventCollection *a1)
{
  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v2 = 0;
  v3 = 57;
  do
  {
    v4 = *((*(*(a1 + 4) + 8))(a1 + 32) + v3);
    if (v4 == 1)
    {
      break;
    }

    ++v2;
    v3 += 72;
  }

  while (v2 < (*(*a1 + 40))(a1));
  return v4;
}

uint64_t TouchService::EventInfoStep::run(TouchService::EventInfoStep *this)
{
  v1 = *(this + 21);
  *(*(this + 20) + 64) = 0;
  *(v1 + 64) = 0;
  if (*(*(this + 15) + 32) == 1 && ((*(**(this + 17) + 40))(*(this + 17)) || *(*(this + 14) + 32) == 1 && (*(**(this + 19) + 40))(*(this + 19))))
  {
    v3 = *(this + 16);
    v4 = *(v3 + 104);
    if (v4 & 1) != 0 || (*(*(this + 18) + 104))
    {
      *(this + 46) = 0;
      v5 = *(this + 14);
      if (*(v5 + 32) == 1)
      {
        v6 = *(this + 18);
        if (*(v6 + 104) == 1)
        {
          v7 = *(v6 + 88);
          v8 = *(this + 21);
          v9 = *(this + 22);
          *(v8 + 32) = v7;
          *(v8 + 56) = 0;
          v10 = *(v9 + 16);
          v11 = 40;
          if (v7)
          {
            v11 = 36;
          }

          v12 = v10 + 0xF4240u / *(v5 + 36);
          *(v8 + 40) = v12 + *(*(this + 15) + v11);
          *(v8 + 48) = v12;
          *(v8 + 64) = 1;
          *(this + 24) = v6;
          *(this + 25) = v8;
          *(this + 208) = v7;
        }
      }

      if (v4)
      {
        v13 = *(this + 20);
        v14 = *(v3 + 88);
        *(v13 + 32) = v14;
        *(v13 + 56) = 0;
        v15 = 40;
        if (v14)
        {
          v15 = 36;
        }

        v16 = *(*(this + 22) + 16) + 0xF4240u / *(v5 + 36);
        *(v13 + 40) = v16 + *(*(this + 15) + v15);
        *(v13 + 48) = v16;
        *(v13 + 64) = 1;
        *(this + 24) = v3;
        *(this + 25) = v13;
        *(this + 208) = v14;
      }
    }

    else
    {
      v17 = *(this + 46);
      v18 = *(this + 15);
      if (!(v17 % *(v18 + 34)))
      {
        v19 = *(this + 20);
        *(v19 + 32) = 256;
        *(v19 + 56) = 1;
        v20 = *(*(this + 22) + 16) + 0xF4240u / *(*(this + 14) + 36);
        *(v19 + 40) = v20 + *(v18 + 40);
        *(v19 + 48) = v20;
        *(v19 + 64) = 1;
        *(v3 + 104) = 1;
        *(this + 208) = 0;
      }

      *(this + 46) = v17 + 1;
    }
  }

  return 0;
}

uint64_t TouchService::TouchTask::runAfterChildren(TouchService::TouchTask *this)
{
  TouchService::PlainPathCollection::operator=(this + 480, this + 176);
  v2 = *(this + 77);
  *(this + 264) = *(v2 + 32);
  v4 = *(v2 + 64);
  v3 = *(v2 + 80);
  v5 = *(v2 + 48);
  *(this + 41) = *(v2 + 96);
  *(this + 296) = v4;
  *(this + 312) = v3;
  *(this + 280) = v5;
  TouchService::PlainPathCollection::operator=(this + 344, *(this + 78));
  if ((*(*(this + 55) + 32) & 1) == 0)
  {
    TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 76), 0);
    *(*(this + 75) + 104) = 0;
  }

  return 0;
}

uint64_t TouchService::TouchServiceActivePlan::runAfterChildren(TouchService::TouchServiceActivePlan *this)
{
  *(this + 494) = 0;
  *(this + 646) = 0;
  *(this + 678) = 0;
  *(this + 720) = 0;
  *(this + 1367) = 0;
  if (*(this + 534) == 1 && *(this + 533) == 1)
  {
    *(this + 683) = 257;
  }

  return 0;
}

double AlgsDevice::StreamingClient::extraction(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 + 48);
  if (*v2)
  {
    v4 = *(a1 + 12);
    v5 = (v4 + *(a1 + 8));
    if (SABinaryWriter::addExtractionData((*a1 + 48), a1[1], a1[2], *(a1 + 28) == 1, *(a1 + 12), (v4 + *(a1 + 16)), 0) && SABinaryWriter::write(v2, a1[5], *(a1 + 16)) && SABinaryWriter::write(v2, a1[7], *(a1 + 24)))
    {
      *(v1 + 97) = 1;
    }

    else
    {
      OUTLINED_FUNCTION_31();
      *(v1 + 72) = 0;
      result = 0.0;
      *(v1 + 56) = 0u;
      *(v1 + 40) = 0u;
      *(v1 + 74) = 0;
      *(v1 + 80) = 0;
    }
  }

  return result;
}

uint64_t PlainDataNodeWithValidity<SADigitizerEventPacket>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 104) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

uint64_t PlainDataNodeWithValidity<SAEventInfo>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 64) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

uint64_t PlainDataNodeWithValidity<BOOL>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 31) == 1)
  {
    *(a3 + 56) = result + 30;
    return a2(a3);
  }

  return result;
}

uint64_t TouchService::TouchServicePathStatsCollection::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(result + 48);
  if (*v3)
  {
    *(a3 + 56) = v3;
    *(a3 + 48) = (24 * *v3) | 4;
    return a2(a3);
  }

  return result;
}

uint64_t PlainDataNodeWithValidity<float>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(result + 36) == 1)
  {
    *(a3 + 56) = result + 32;
    return a2(a3);
  }

  return result;
}

uint64_t *AlgWorkNode::children(AlgWorkNode *this)
{
  if ((atomic_load_explicit(&qword_2813412D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2813412D8))
  {
    qword_2813412E8 = 0;
    byte_2813412F0 = 0;
    qword_2813412E0 = 0;
    __cxa_atexit(SAList<std::reference_wrapper<AlgWorkNode>>::~SAList, &qword_2813412E0, &dword_2655B3000);
    __cxa_guard_release(&qword_2813412D8);
  }

  return &qword_2813412E0;
}

uint64_t SALoggingHIDEventSignpost()
{
  if (qword_2813412D0 != -1)
  {
    dispatch_once(&qword_2813412D0, &__block_literal_global_17);
  }

  return qword_2813412C8;
}

uint64_t TouchService::TouchTask::invalidateOutputNodes(TouchService::TouchTask *this)
{
  *(*(this + 77) + 104) = 0;
  *(*(this + 75) + 104) = 0;
  *(*(this + 80) + 64) = 0;
  *(*(this + 81) + 64) = 0;
  *(*(this + 79) + 36) = 0;
  return TouchService::TouchServicePathStatsCollection::setNumPathStats(*(this + 74), 0);
}

uint64_t TouchService::EventInfoStep::baselineAdaptNotification(uint64_t this)
{
  if (*(*(this + 120) + 32) == 1)
  {
    v1 = this;
    this = (*(**(this + 136) + 40))(*(this + 136));
    if (this || *(*(v1 + 112) + 32) == 1 && (this = (*(**(v1 + 152) + 40))(*(v1 + 152)), this))
    {
      if (*(v1 + 208) == 1)
      {
        v2 = *(v1 + 192);
        v3 = *(v1 + 200);
        *(v3 + 33) = *(v2 + 104) ^ 1;
        *(v3 + 32) = 1;
        *(v3 + 56) = 2;
        v4 = *(*(v1 + 176) + 16) + 0xF4240u / *(*(v1 + 112) + 36);
        *(v3 + 40) = v4 + *(*(v1 + 120) + 36);
        *(v3 + 48) = v4;
        *(v3 + 64) = 1;
        *(v2 + 104) = 1;
      }
    }
  }

  return this;
}

__n128 PlainDataNode<TouchService::RadiusCorrectionParams>::injectBuffer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[2] = *a2;
  return result;
}

void sub_2655BF290(_Unwind_Exception *a1)
{
  v4 = v3;
  operator delete(v4);

  _Unwind_Resume(a1);
}

void sub_2655BFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  PacketCollection::~PacketCollection(&a13);
  PacketCollection::~PacketCollection(&a25);
  AlgDataPacket::~AlgDataPacket(&a35);

  _Unwind_Resume(a1);
}

void sub_2655C04CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PacketCollection::~PacketCollection(va);
  PacketCollection::~PacketCollection((v13 - 96));
  _Unwind_Resume(a1);
}

void sub_2655C0750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PacketCollection::~PacketCollection(va);
  _Unwind_Resume(a1);
}

void TouchService::RadiusCorrectionStep::~RadiusCorrectionStep(TouchService::RadiusCorrectionStep *this)
{
  *this = &unk_2876F5B90;
  v2 = *(this + 22);
  if (v2)
  {
    operator delete[](v2);
  }

  *(this + 14) = &unk_2876F69B0;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::RadiusCorrectionStep::~RadiusCorrectionStep(this);

  operator delete(v1);
}

uint64_t *TouchService::TapEventGenerationStep::TapEventGenerationStep(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v8 = &unk_2876F5C30;
  v8[14] = a3;
  v8[15] = a4;
  v8[16] = a2;
  AlgWorkNode::registerAlgDataNode((v8 + 1), a3);
  AlgWorkNode::registerAlgDataNode((a1 + 7), a1[15]);
  return a1;
}

uint64_t TouchService::TapEventGenerationStep::run(TouchService::TapEventGenerationStep *this)
{
  v2 = *(this + 14);
  v1 = *(this + 15);
  if (*(v2 + 32) == 1)
  {
    v3 = *(this + 16);
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    *(v1 + 88) = 257;
    v6 = *(v2 + 40);
    v7 = 1.0 - *(v2 + 44);
    *(v1 + 104) = 1;
    *(v1 + 40) = v4;
    *(v1 + 32) = v5;
    *(v1 + 52) = 131074;
    *(v1 + 56) = v6;
    *(v1 + 60) = v7;
    v8 = SALoggingGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      TouchService::TapEventGenerationStep::run(v8);
    }
  }

  else
  {
    *(v1 + 104) = 0;
  }

  return 0;
}

void TouchService::TapEventGenerationStep::~TapEventGenerationStep(TouchService::TapEventGenerationStep *this)
{
  AlgWorkNode::~AlgWorkNode(this);

  operator delete(v1);
}

void TouchService::EventGenerationStep::generateFingerEvent(unsigned __int8 *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[1];
  v6[0] = 67109632;
  v6[1] = v2;
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_error_impl(&dword_2655B3000, a2, OS_LOG_TYPE_ERROR, "EventGenerationStep:  P%d F%d stage=%d invalid surface descriptor -> skipping", v6, 0x14u);
  v5 = *MEMORY[0x277D85DE8];
}

void TouchService::EventGenerationStep::generateFingerEvent(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 12);
  }

  else
  {
    v2 = -1;
  }

  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_2655B3000, a2, OS_LOG_TYPE_DEBUG, "EventGenerationStep:  Old P%d already gone", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void TouchService::TouchTask::~TouchTask(TouchService::TouchTask *this)
{
  TouchService::TouchTask::~TouchTask(this);

  operator delete(v1);
}

{
  *this = &unk_2876F5D20;
  AlgWorkNode::~AlgWorkNode((this + 2352));
  AlgWorkNode::~AlgWorkNode((this + 2152));
  AlgWorkNode::~AlgWorkNode((this + 1952));
  TouchService::InterpolationStep::~InterpolationStep((this + 1752));
  TouchService::RadiusCorrectionStep::~RadiusCorrectionStep((this + 1568));
  TouchService::HysteresisFilterStep::~HysteresisFilterStep((this + 1296));
  *(this + 141) = &unk_2876F6018;
  *(this + 155) = &unk_2876F69B0;
  AlgWorkNode::~AlgWorkNode((this + 1128));
  TouchService::CoreAnalyticsStep::~CoreAnalyticsStep((this + 960));
  AlgWorkNode::~AlgWorkNode((this + 784));
  AlgWorkNode::~AlgWorkNode((this + 656));
  TouchService::PlainPathCollection::~PlainPathCollection((this + 536));
  TouchService::PlainPathCollection::~PlainPathCollection((this + 480));
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((this + 344));
  *(this + 29) = &unk_2876F69B0;
  TouchService::PlainPathCollection::~PlainPathCollection((this + 176));

  AlgTaskNode::~AlgTaskNode(this);
}

__n128 PlainDataNode<SADigitizerEventPacket>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

TouchService::TouchServiceTTWPlan *TouchService::TouchServiceTTWPlan::TouchServiceTTWPlan(TouchService::TouchServiceTTWPlan *this)
{
  AlgTaskNode::AlgTaskNode(this);
  *v2 = &unk_2876F5E50;
  v3 = v2 + 20;
  AlgDataNode::AlgDataNode((v2 + 20), 0x726DB665A87D6D56, 0);
  *(this + 20) = &unk_2876F5EC8;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 54) = 0;
  *(this + 44) = 28672;
  *(this + 46) = 28;
  AlgDataNode::AlgDataNode((this + 224), 0x1AE6533682FB2CLL, 0);
  *(this + 40) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 60) = 31232;
  *(this + 62) = 72;
  *(this + 28) = &unk_2876F5DE8;
  *(this + 328) = 0;
  TouchService::TapEventGenerationStep::TapEventGenerationStep(this + 336, this + 136, v3, this + 224);
  TouchService::TouchServiceTTWPlan::runNodeRegistrations(this);
  *(this + 192) = 0;
  return this;
}

void sub_2655C1E40(_Unwind_Exception *a1)
{
  AlgWorkNode::~AlgWorkNode((v1 + 336));
  *v3 = &unk_2876F69B0;
  *v2 = &unk_2876F69B0;
  AlgTaskNode::~AlgTaskNode(v1);
  _Unwind_Resume(a1);
}

void *TouchService::TouchServiceTTWPlan::runNodeRegistrations(TouchService::TouchServiceTTWPlan *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, this + 160);
  AlgWorkNode::registerAlgDataNode(this + 56, this + 224);
  v3 = this + 336;
  return SAList<std::reference_wrapper<AlgDataNode>>::push_back(this + 112, &v3);
}

uint64_t TouchService::TouchServiceTTWPlan::runPlan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[17] = 0;
  a1[18] = 0;
  v7 = a1 + 17;
  v7[2] = 0;
  if (a2 && *a2 == 0x2000)
  {
    memcpy(v7, *(a2 + 16), *(a2 + 8));
    v8 = a1[17];
    v9 = *(a1 + 36);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(*a1 + 40);

  return v10(a1, a3, a4, v8, v9, 0);
}

__n128 PlainDataNode<TTWResults>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 44) = *(a2 + 12);
  *(a1 + 32) = result;
  return result;
}

void TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection(TouchService::TouchServicePathStatsCollection *this)
{
  *this = &unk_2876F5F68;
  *(this + 4) = &unk_2876F5FB0;
  v2 = *(this + 6);
  if (v2)
  {
    operator delete[](v2);
  }

  *this = &unk_2876F69B0;
}

{
  TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection(this);

  operator delete(v1);
}

void TouchService::TipOffsetStep::~TipOffsetStep(TouchService::TipOffsetStep *this)
{
  *this = &unk_2876F6018;
  *(this + 14) = &unk_2876F69B0;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F6018;
  *(this + 14) = &unk_2876F69B0;
  AlgWorkNode::~AlgWorkNode(this);

  operator delete(v1);
}

void TouchService::CoreAnalyticsStep::~CoreAnalyticsStep(TouchService::CoreAnalyticsStep *this)
{
  *this = &unk_2876F60B8;
  v2 = *(this + 20);
  if (v2)
  {
    operator delete[](v2);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::CoreAnalyticsStep::~CoreAnalyticsStep(this);

  operator delete(v1);
}

void TouchService::HysteresisFilterStep::~HysteresisFilterStep(TouchService::HysteresisFilterStep *this)
{
  *this = &unk_2876F6108;
  v2 = *(this + 31);
  if (*(v2 + 40))
  {
    v3 = 0;
    do
    {
      v4 = *(*(this + 33) + 8 * v3);
      if (v4)
      {
        operator delete(v4);
        v2 = *(this + 31);
      }

      ++v3;
    }

    while (v3 < *(v2 + 40));
  }

  v5 = *(this + 33);
  if (v5)
  {
    operator delete[](v5);
  }

  *(this + 14) = &unk_2876F69B0;

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::HysteresisFilterStep::~HysteresisFilterStep(this);

  operator delete(v1);
}

__n128 PlainDataNode<TouchService::HysteresisFilterParams>::injectBuffer(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 48);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void TouchService::PlainPathCollection::~PlainPathCollection(TouchService::PlainPathCollection *this)
{
  *this = &unk_2876F61A8;
  *(this + 4) = &unk_2876F61F0;
  v2 = *(this + 6);
  if (v2)
  {
    operator delete[](v2);
  }

  *this = &unk_2876F69B0;
}

{
  TouchService::PlainPathCollection::~PlainPathCollection(this);

  operator delete(v1);
}

uint64_t TouchService::PlainPathCollection::sendCallback(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a3 + 56) = v3;
  *(a3 + 48) = (48 * *v3) | 4;
  return a2(a3);
}

void TouchService::TouchServiceActivePlan::~TouchServiceActivePlan(TouchService::TouchServiceActivePlan *this)
{
  TouchService::TouchServiceActivePlan::~TouchServiceActivePlan(this);

  operator delete(v1);
}

{
  *this = &unk_2876F6258;
  TouchService::TouchTask::~TouchTask((this + 1512));
  *(this + 171) = &unk_2876F69B0;
  *(this + 167) = &unk_2876F69B0;
  *(this + 158) = &unk_2876F69B0;
  *(this + 149) = &unk_2876F69B0;
  *(this + 144) = &unk_2876F69B0;
  TouchService::TouchServicePathStatsCollection::~TouchServicePathStatsCollection((this + 1096));
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((this + 1040));
  *(this + 116) = &unk_2876F69B0;
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection((this + 872));
  *(this + 95) = &unk_2876F69B0;
  *(this + 91) = &unk_2876F69B0;
  *(this + 85) = &unk_2876F69B0;
  *(this + 81) = &unk_2876F69B0;
  *(this + 77) = &unk_2876F69B0;
  *(this + 72) = &unk_2876F69B0;
  *(this + 67) = &unk_2876F69B0;
  *(this + 63) = &unk_2876F69B0;
  *(this + 56) = &unk_2876F69B0;
  *(this + 52) = &unk_2876F69B0;
  *(this + 46) = &unk_2876F69B0;
  *(this + 41) = &unk_2876F69B0;
  TouchService::PlainPathCollection::~PlainPathCollection((this + 272));
  DeviceOrientationNode::~DeviceOrientationNode((this + 240));
  *(this + 23) = &unk_2876F69B0;

  AlgTaskNode::~AlgTaskNode(this);
}

__n128 PlainDataNode<SAEventInfo>::injectBuffer(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v3;
  return result;
}

uint64_t SADynamicArray<ContactReclassificationRegion,(unsigned short)3>::sendCallback(unsigned __int16 *a1, uint64_t (*a2)(void *), void *a3)
{
  if (*(a1 + 136) == 1 || (result = (*(*a1 + 40))(a1), result))
  {
    a3[4] = a1[16];
    a3[5] = a1 + 16;
    a3[7] = (*(*a1 + 48))(a1);
    a3[6] = 28 * (*(*a1 + 40))(a1);

    return a2(a3);
  }

  return result;
}

uint64_t TouchService::TouchServiceAlgsDevice::TouchServiceAlgsDevice(uint64_t a1, char a2, int a3, char a4)
{
  v8 = SAServiceVersionDescriptor();
  v9 = AlgsDevice::AlgsDevice(a1, a2, "TouchServiceDefaultPersonality", a3, a4, *v8, 1);
  *a1 = &unk_2876F6700;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  TouchService::TouchServiceAlgsDevice::newPlanNode(v9, 0);
  return a1;
}

void TouchService::TouchServiceAlgsDevice::~TouchServiceAlgsDevice(TouchService::TouchServiceAlgsDevice *this)
{
  *this = &unk_2876F6700;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AlgsDevice::~AlgsDevice(this);
}

{
  TouchService::TouchServiceAlgsDevice::~TouchServiceAlgsDevice(this);

  operator delete(v1);
}

void TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(TouchService::TouchServiceEventCollection *this)
{
  *this = &unk_2876F6760;
  *(this + 4) = &unk_2876F67A8;
  v2 = *(this + 6);
  if (v2)
  {
    operator delete[](v2);
  }

  *this = &unk_2876F69B0;
}

{
  TouchService::TouchServiceEventCollection::~TouchServiceEventCollection(this);

  operator delete(v1);
}

void TouchService::InterpolationStep::~InterpolationStep(TouchService::InterpolationStep *this)
{
  *this = &unk_2876F6810;
  v2 = *(this + 18);
  if (*(v2 + 40))
  {
    v3 = 0;
    do
    {
      v4 = *(*(this + 21) + 8 * v3);
      if (v4)
      {
        operator delete(v4);
        v2 = *(this + 18);
      }

      ++v3;
    }

    while (v3 < *(v2 + 40));
  }

  v5 = *(this + 21);
  if (v5)
  {
    operator delete[](v5);
  }

  AlgWorkNode::~AlgWorkNode(this);
}

{
  TouchService::InterpolationStep::~InterpolationStep(this);

  operator delete(v1);
}

void TouchService::PathInterpolator::interpolateAt(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_2655B3000, a2, OS_LOG_TYPE_DEBUG, "InterpolationStep:  Interpolation Didn't Occur at t=%llu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

os_log_t __SALoggingGeneral_block_invoke()
{
  result = os_log_create("com.apple.SensingAlgs", "General");
  _MergedGlobals = result;
  return result;
}

os_log_t __SALoggingHIDEventSignpost_block_invoke()
{
  result = os_log_create("com.apple.SensingAlgs", "HIDEventSignpost");
  qword_2813412C8 = result;
  return result;
}

BOOL AlgsDevice::runPlan(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = OUTLINED_FUNCTION_23(a1);
  if (v9)
  {
    v10 = *a5;
  }

  AlgsDevice::StreamingClient::setBuffer(v7, v8);
  v11 = AlgsDevice::run();
  v12 = AlgsDevice::StreamingClient::resetBuffer(*(v5 + 64));
  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

BOOL AlgsDevice::runPlan()
{
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = (*(v5 + 48))(v4);
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = (*(v8 + 48))(v7, v1, v0) == 0;
  OUTLINED_FUNCTION_19();
  v11 = (*(v10 + 48))(v2);
  AlgWorkNode::resetInjectionState(v11);
  return v9;
}

uint64_t AlgsDevice::AlgsDevice(uint64_t a1, char a2, uint64_t a3, int a4, char a5, const char *a6, char a7)
{
  OUTLINED_FUNCTION_8();
  *v13 = v14;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v15;
  v13[5] = 0;
  v13[6] = 0;
  v13[4] = 0;
  v16 = operator new(0x60uLL);
  *(v7 + 56) = AlgDataExtractor::AlgDataExtractor(v16, 0);
  v17 = operator new(0x98uLL);
  *v17 = &unk_2876F6B70;
  *(v17 + 1) = 0;
  *(v17 + 8) = 256;
  *(v17 + 3) = 0;
  *(v17 + 4) = v7;
  v17[74] = 0;
  *(v17 + 10) = 0;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  v17[72] = 0;
  OUTLINED_FUNCTION_31();
  *(v17 + 11) = 0;
  v17[97] = 0;
  *(v17 + 13) = 0;
  *(v17 + 14) = 0;
  v17[120] = a2;
  v17[128] = 0;
  *(v17 + 17) = 0;
  v17[144] = a2;
  AlgDataExtractor::AlgDataExtractor(v20, 0);
  AlgsDevice::StreamingClient::configure(v17, 0, v20);
  PacketCollection::~PacketCollection(v20);
  *(v7 + 64) = v17;
  *(v7 + 80) = 0;
  *(v7 + 88) = 16;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = a7;
  *(v7 + 76) = a5;
  *(v7 + 72) = a4;
  *(v7 + 77) = 0;
  if (a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = "SensingAlgsService-53~8157";
  }

  AlgsDevice::addVersion(v7, v18);
  return v7;
}

uint64_t AlgsDevice::addVersion(AlgsDevice *this, const char *a2)
{
  if (!a2 || !*a2)
  {
    return 0;
  }

  SAList<char const*>::push_back(this + 80);
  return 1;
}

void **SAList<char const*>::~SAList(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    operator delete[](v2);
  }

  return a1;
}

void SAList<char const*>::push_back(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  if (!v3)
  {
    v3 = OUTLINED_FUNCTION_32();
    *v1 = v3;
  }

  *(v3 + 8 * *(v1 + 12)) = *v2;
  OUTLINED_FUNCTION_2();
}

void AlgsDevice::~AlgsDevice(AlgsDevice *this)
{
  OUTLINED_FUNCTION_8();
  *v2 = v3;
  v4 = v2[7];
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_11(v4);
    (*(v6 + 8))(v5);
  }

  v7 = *(v1 + 64);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_11(v7);
    (*(v9 + 8))(v8);
  }

  SAList<char const*>::~SAList((v1 + 80));
}

void AlgsDevice::configureStreaming(AlgsDevice::StreamingClient **this, char a2, AlgDataExtractor *a3, void *a4, unint64_t *a5)
{
  AlgsDevice::StreamingClient::configure(this[8], a2, a3);
  if (a4)
  {
    if (a5)
    {
      v8 = *a5;
    }

    AlgsDevice::StreamingClient::setBuffer(this[8], a4);
    if (AlgsDevice::StreamingClient::configureStatus(this[8]))
    {
      v9 = AlgsDevice::StreamingClient::resetBuffer(this[8]);
      if (!a5)
      {
        return;
      }
    }

    else
    {
      v9 = 0;
      if (!a5)
      {
        return;
      }
    }

    *a5 = v9;
  }
}

void AlgDataNode::sendCallback(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 48) + *(a3 + 32);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v4 < 0x81)
  {
    v10 = *(a3 + 48);
    MEMORY[0x28223BE20]();
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_19();
    (*(v13 + 16))(a1, v12);
    v14 = OUTLINED_FUNCTION_25();
    a2(v14);
    goto LABEL_8;
  }

  v6 = operator new(v4);
  OUTLINED_FUNCTION_19();
  (*(v7 + 16))(a1, v6);
  v8 = OUTLINED_FUNCTION_25();
  a2(v8);
  if (!v6)
  {
LABEL_8:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *MEMORY[0x277D85DE8];

  operator delete[](v6);
}

uint64_t *AlgDataNode::extractBuffer(uint64_t *this, unsigned __int8 *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4[0] = a2;
    v4[1] = 0;
    v3 = *this;
    v4[2] = this[1];
    v5 = *(this + 4);
    v6 = 0;
    v7 = *(this + 10);
    v8 = 0;
    v9 = ((v2 + 3) & 0xFFFFFFFC) - v7;
    v10 = 0;
    return (*(v3 + 24))(this, AlgDataNode::extractBuffer(unsigned char *)const::$_0::__invoke, v4);
  }

  return this;
}

void *AlgDataNode::extractBuffer(unsigned char *)const::$_0::__invoke(void **a1)
{
  v2 = *a1;
  memcpy(*a1, a1[5], a1[4]);
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[4] + v2;

  return memcpy(v5, v3, v4);
}

void ConditionalAlgTaskNode::~ConditionalAlgTaskNode(ConditionalAlgTaskNode *this)
{
  AlgTaskNode::~AlgTaskNode(this);

  operator delete(v1);
}

uint64_t AlgTaskNode::runPlan(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (a2 && *a2 == 0x2000)
  {
    v4 = *(a2 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = OUTLINED_FUNCTION_11(a1);
  return (*(v8 + 48))(v7, v9, v10);
}

uint64_t AlgTaskNode::runPlan(AlgTaskNode *this, AlgDataInjector *a2, AlgDataExtractor *a3)
{
  v5 = *(a2 + 1);
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  AlgWorkNode::runPrologue(this, a3);
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  AlgWorkNode::runEpilogue(this, a3);
  return 1;
}

uint64_t AlgWorkNode::getDataNodeInfo(uint64_t a1, char a2, uint64_t a3)
{
  v8 = 0;
  v5 = *(a1 + 8);
  v3 = (*(a1 + 24) + 3) & 0xFFFFFFFC;
  v6 = *(a1 + 16);
  v7 = v3;
  LOBYTE(v8) = a2;
  return AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a3, &v5);
}

uint64_t AlgWorkNode::getTreeInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 44) + *(a1 + 20) + *(a1 + 68) + *(a1 + 92);
  OUTLINED_FUNCTION_20();
  v7 = v5 + *((*(v6 + 24))(a1) + 12);
  v8 = *(a1 + 104);
  v30 = 0;
  v29 = v8;
  v31 = 0;
  BYTE1(v31) = v7;
  result = AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a2, &v29);
  if (result)
  {
LABEL_3:
    v10 = 0;
    while (v10 < *(a1 + 20))
    {
      DataNodeInfo = AlgWorkNode::getDataNodeInfo(*(*(a1 + 8) + 8 * v10++), 2, a2);
      if ((DataNodeInfo & 1) == 0)
      {
        return 0;
      }
    }

    v12 = 0;
    while (v12 < *(a1 + 44))
    {
      v13 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 32) + 8 * v12++), 4, a2);
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = 0;
    while (v14 < *(a1 + 68))
    {
      v15 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 56) + 8 * v14++), 3, a2);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    v16 = 0;
    while (v16 < *(a1 + 92))
    {
      v17 = AlgWorkNode::getDataNodeInfo(*(*(a1 + 80) + 8 * v16++), 5, a2);
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    v18 = 0;
    do
    {
      OUTLINED_FUNCTION_20();
      v20 = *((*(v19 + 24))(a1) + 12);
      result = v18 >= v20;
      if (v18 >= v20)
      {
        break;
      }

      OUTLINED_FUNCTION_20();
      v22 = *(*(*(v21 + 24))(a1) + 8 * v18);
      v23 = v22[44] + v22[20] + v22[68] + v22[92];
      OUTLINED_FUNCTION_19();
      v25 = v23 + *((*(v24 + 24))(v22) + 12);
      OUTLINED_FUNCTION_20();
      v27 = *(*(*(v26 + 24))(a1) + 8 * v18);
      v30 = 0;
      v31 = 1;
      v29 = *(v27 + 104);
      BYTE1(v31) = v25;
      result = AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(a2, &v29);
      if (!result)
      {
        break;
      }

      TreeInfo = AlgWorkNode::getTreeInfo(v22, a2, 0);
      result = 0;
      ++v18;
    }

    while ((TreeInfo & 1) != 0);
  }

  return result;
}

uint64_t AlgWorkNode::getTreeSize(AlgWorkNode *this)
{
  v2 = 0;
  for (i = *(this + 10) + *(this + 22) + *(this + 34) + *(this + 46) + 1; ; i += AlgWorkNode::getTreeSize(*(*v6 + 8 * v2++)))
  {
    OUTLINED_FUNCTION_17();
    if (v2 >= *((*(v4 + 24))(this) + 12))
    {
      break;
    }

    OUTLINED_FUNCTION_17();
    v6 = (*(v5 + 24))(this);
  }

  return i;
}

void StreamingPacketCache::~StreamingPacketCache(StreamingPacketCache *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    operator delete[](v1);
  }
}

BOOL SABinaryParser::parseConfigure(uint64_t *a1, unsigned int (*a2)(uint64_t, BOOL), uint64_t (*a3)(void), unsigned int (*a4)(uint64_t, uint64_t))
{
  v5 = a1[1];
  v4 = a1[2];
  if ((v5 - v4) < 2)
  {
    return 0;
  }

  a1[2] = v4 + 2;
  if (v5 == v4 + 2)
  {
    return 0;
  }

  v10 = *a1;
  v11 = (*a1 + v4 + 2);
  v12 = v4 + 3;
  a1[2] = v4 + 3;
  v13 = *v11;
  v14 = v11;
  if (v13 < 2)
  {
LABEL_9:
    if (!a2 || !v14 || a2(a1[3], *v14 != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v5 != v12)
  {
    v14 = (v10 + v12);
    a1[2] = v4 + 4;
    goto LABEL_9;
  }

  if (v13 != 3)
  {
    return 0;
  }

LABEL_12:
  if (a4)
  {
    v15 = *v11 <= 2u ? 2 : *v11;
    if (!a4(a1[3], v15))
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_29();

  return SABinaryParser::parseInjExtData(v16, v17, v18, a3);
}

uint64_t SABinaryParser::parseInfo(uint64_t *a1, uint64_t (*a2)(uint64_t, void, void, void, void), uint64_t (*a3)(uint64_t, const char *), uint64_t (*a4)(uint64_t, BOOL), uint64_t (*a5)(void))
{
  v5 = a1[1];
  v6 = a1[2];
  if ((v5 - v6) < 2)
  {
    return 0;
  }

  v7 = v6 + 2;
  a1[2] = v7;
  if (v5 == v7)
  {
    return 1;
  }

  else
  {
    return SABinaryParser::parseInfoData(a1, a2, a3, a4, a5);
  }
}

uint64_t StreamingParser::numberOfPackets(unsigned long *,unsigned long *,unsigned long *)const::$_0::__invoke(void **a1)
{
  if (*a1)
  {
    ++**a1;
  }

  return 1;
}

uint64_t StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke(uint64_t a1, char a2, int a3, char a4, char a5)
{
  if (*a1)
  {
    **a1 = a2;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *v5 = a3;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    *v6 = a4;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *v7 = a5;
  }

  return 1;
}

uint64_t StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(uint64_t a1, char a2, unsigned int a3, const void *a4)
{
  **a1 = a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  if (v7)
  {
    operator delete[](v7);
  }

  *v6 = a3;
  v8 = v6[16];
  v9 = operator new(22 * a3);
  *(v6 + 1) = v9;
  memcpy(v9, a4, 22 * *v6);
  return 1;
}

uint64_t StreamingWriter::writeConfigure(StreamingWriter *this, char a2, uint64_t a3, AlgDataExtractor *a4)
{
  v9 = 3;
  if ((SABinaryWriter::writeHeader(this + 8, 5) & 1) == 0)
  {
    return 0;
  }

  if (!SABinaryWriter::write((this + 8), &v9, 1uLL))
  {
    return 0;
  }

  v8 = a2;
  if (!SABinaryWriter::write((this + 8), &v8, 1uLL))
  {
    return 0;
  }

  return StreamingWriter::writeExtPoints(this, a3);
}

uint64_t PacketCollection::reset(PacketCollection *this)
{
  v1 = 0;
  for (i = 0; ; ++i)
  {
    v3 = *(this + 5);
    if (i >= v3)
    {
      break;
    }

    v4 = *(this + 1) + v1;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v1 += 80;
  }

    ;
  }

  for (k = v3 - 1; k != -1; --k)
  {
    *(this + 5) = k;
  }

  return SAList<unsigned char>::clear(this + 56);
}

void AlgDataInjector::~AlgDataInjector(AlgDataInjector *this)
{
  PacketCollection::~PacketCollection(this);

  operator delete(v1);
}

uint64_t AlgDataExtractor::reset(AlgDataExtractor *this)
{
  v2 = 0;
  v3 = 1;
  v4 = 56;
  while (v2 < *(this + 11))
  {
    if ((*(*(this + 4) + v3) & 1) == 0)
    {
      v5 = *(*(this + 1) + v4);
      if (v5)
      {
        operator delete[](v5);
      }
    }

    ++v2;
    v3 += 2;
    v4 += 80;
  }

  return PacketCollection::reset(this);
}

void AlgsDevice::StreamingClient::profileAlloc(AlgsDevice::StreamingClient *this, unsigned int a2)
{
  v3 = *(this + 8);
  *(this + 8) = a2;
  *(this + 9) = (a2 + 1048568) >> 4;
  v4 = *(this + 1);
  v5 = a2;
  v6 = *(this + 120);
  v7 = operator new(v5);
  *(this + 1) = v7;
  if (v4)
  {
    OUTLINED_FUNCTION_22();
    memcpy(v8, v9, v10);
    operator delete(v4);
  }

  else
  {
    *v7 = 20488;
    v7[4] = 2;
    v7[6] = 2;
  }

  *(this + 3) = *(this + 1) + 8;
}

void AlgsDevice::StreamingClient::~StreamingClient(AlgsDevice::StreamingClient *this)
{
  AlgsDevice::StreamingClient::~StreamingClient(this);

  operator delete(v1);
}

{
  *this = &unk_2876F6B70;
  v2 = *(this + 13);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_11(v2);
    (*(v4 + 8))(v3);
  }

  v5 = *(this + 14);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_11(v5);
    (*(v7 + 8))(v6);
  }

  operator delete(*(this + 1));
  StreamingPacketCache::~StreamingPacketCache((this + 128));
}

void AlgsDevice::StreamingClient::configure(AlgsDevice::StreamingClient *this, char a2, AlgDataExtractor *a3)
{
  *(this + 96) = a2;
  operator delete(*(this + 1));
  v5 = 0;
  v6 = 0;
  *(this + 1) = 0;
  *(this + 3) = 0;
  while (v6 < *(a3 + 5))
  {
    v7 = (*(a3 + 1) + v5);
    if (*v7 == 0x3779B8717A8905ELL && v7[1] == 0xC0246BF06F597652)
    {
      *(a3 + 10) = AlgsDevice::StreamingClient::configure(BOOL,AlgDataExtractor &)::$_0::__invoke;
      *(a3 + 11) = this;
      AlgsDevice::StreamingClient::profileAlloc(this, *(this + 8));
    }

    v7[8] = AlgsDevice::StreamingClient::extraction;
    v7[9] = this;
    ++v6;
    v5 += 80;
  }

  v9 = *(this + 4);

  AlgsDevice::addClient(v9, 0, this, a3);
}

uint64_t AlgsDevice::StreamingClient::writeTreeInfo(void)::$_0::__invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 72) != 8)
  {
    return 0;
  }

  v16[4] = v2;
  v16[5] = v3;
  v4 = 0;
  v5 = *(a2 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 17);
  v9 = *(a1 + 48);
  v10 = *(v9 + 5);
  for (i = (v9 + *(a1 + 64) - 16 * v10); ; i += 2)
  {
    if (v10 == v4)
    {
      v13 = *(v9 + 5);
      goto LABEL_9;
    }

    if (*i == v6)
    {
      break;
    }

    ++v4;
  }

  v13 = v4;
LABEL_9:
  v14 = *(v9 + 3);
  v15 = v9 + 7 + 4 * v14;
  if (v15 >= v9 + *(a1 + 64) - 16 * v10)
  {
    return 0;
  }

  *v15 = v13;
  *(v15 + 2) = v8;
  *(v15 + 3) = v5;
  *(v9 + 3) = v14 + 1;
  if (v10 == v4)
  {
    v16[0] = v6;
    v16[1] = v7;
    result = SABinaryWriter::write((a1 + 48), v16, 0x10uLL);
    if (!result)
    {
      return result;
    }

    ++*(v9 + 5);
  }

  return 1;
}

uint64_t AlgsDevice::StreamingClient::configureStatus(AlgsDevice::StreamingClient *this)
{
  AlgDataExtractor::AlgDataExtractor(v5, *(*(this + 4) + 48));
  AlgsDevice::getClientExtractor();
  v3 = StreamingWriter::writeConfigure((this + 40), *(this + 96), v5, v2);
  PacketCollection::~PacketCollection(v5);
  return v3;
}

void *OUTLINED_FUNCTION_25()
{
  v0[5] = v1;
  v0[7] = v1 + v0[4];
  return v0;
}

void *OUTLINED_FUNCTION_32()
{
  v2 = 8 * *(v0 + 8);
  v3 = *(v0 + 16);

  return operator new(v2);
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}