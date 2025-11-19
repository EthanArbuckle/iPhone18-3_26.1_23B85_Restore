uint64_t TST::TableStyleNetworkArchive::MergeFrom(TST::TableStyleNetworkArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableStyleNetworkArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableStyleNetworkArchive::MergeFrom(uint64_t this, const TST::TableStyleNetworkArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = MEMORY[0x277D80A18];
  if (v5)
  {
    *(v3 + 16) |= 1u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0390](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 4))
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = v6;
    }

    this = TSP::Reference::MergeFrom(v7, v9);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  v10 = *(v3 + 40);
  if (!v10)
  {
    v11 = *(v3 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x223DA0390](v11);
    *(v3 + 40) = v10;
  }

  if (*(a2 + 5))
  {
    v12 = *(a2 + 5);
  }

  else
  {
    v12 = v6;
  }

  this = TSP::Reference::MergeFrom(v10, v12);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_29:
  *(v3 + 16) |= 4u;
  v13 = *(v3 + 48);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0390](v14);
    *(v3 + 48) = v13;
  }

  if (*(a2 + 6))
  {
    v15 = *(a2 + 6);
  }

  else
  {
    v15 = v6;
  }

  this = TSP::Reference::MergeFrom(v13, v15);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_37:
  *(v3 + 16) |= 8u;
  v16 = *(v3 + 56);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0390](v17);
    *(v3 + 56) = v16;
  }

  if (*(a2 + 7))
  {
    v18 = *(a2 + 7);
  }

  else
  {
    v18 = v6;
  }

  this = TSP::Reference::MergeFrom(v16, v18);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v22 = *(v3 + 72);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x223DA0390](v23);
      *(v3 + 72) = v22;
    }

    if (*(a2 + 9))
    {
      v24 = *(a2 + 9);
    }

    else
    {
      v24 = v6;
    }

    this = TSP::Reference::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v19 = *(v3 + 64);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0390](v20);
    *(v3 + 64) = v19;
  }

  if (*(a2 + 8))
  {
    v21 = *(a2 + 8);
  }

  else
  {
    v21 = v6;
  }

  this = TSP::Reference::MergeFrom(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v25 = *(v3 + 80);
  if (!v25)
  {
    v26 = *(v3 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x223DA0390](v26);
    *(v3 + 80) = v25;
  }

  if (*(a2 + 10))
  {
    v27 = *(a2 + 10);
  }

  else
  {
    v27 = v6;
  }

  this = TSP::Reference::MergeFrom(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v28 = *(v3 + 88);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x223DA0390](v29);
      *(v3 + 88) = v28;
    }

    if (*(a2 + 11))
    {
      v30 = *(a2 + 11);
    }

    else
    {
      v30 = v6;
    }

    this = TSP::Reference::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 96);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x223DA0390](v32);
      *(v3 + 96) = v31;
    }

    if (*(a2 + 12))
    {
      v33 = *(a2 + 12);
    }

    else
    {
      v33 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_103;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v34 = *(v3 + 104);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0390](v35);
    *(v3 + 104) = v34;
  }

  if (*(a2 + 13))
  {
    v36 = *(a2 + 13);
  }

  else
  {
    v36 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v34, v36);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(v3 + 16) |= 0x400u;
  v37 = *(v3 + 112);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0390](v38);
    *(v3 + 112) = v37;
  }

  if (*(a2 + 14))
  {
    v39 = *(a2 + 14);
  }

  else
  {
    v39 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v37, v39);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(v3 + 16) |= 0x800u;
  v40 = *(v3 + 120);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0390](v41);
    *(v3 + 120) = v40;
  }

  if (*(a2 + 15))
  {
    v42 = *(a2 + 15);
  }

  else
  {
    v42 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v40, v42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(v3 + 16) |= 0x1000u;
  v43 = *(v3 + 128);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x223DA0390](v44);
    *(v3 + 128) = v43;
  }

  if (*(a2 + 16))
  {
    v45 = *(a2 + 16);
  }

  else
  {
    v45 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v43, v45);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(v3 + 16) |= 0x2000u;
  v46 = *(v3 + 136);
  if (!v46)
  {
    v47 = *(v3 + 8);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x223DA0390](v47);
    *(v3 + 136) = v46;
  }

  if (*(a2 + 17))
  {
    v48 = *(a2 + 17);
  }

  else
  {
    v48 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v46, v48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_85:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x4000u;
  v49 = *(v3 + 144);
  if (!v49)
  {
    v50 = *(v3 + 8);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x223DA0390](v50);
    *(v3 + 144) = v49;
  }

  if (*(a2 + 18))
  {
    v51 = *(a2 + 18);
  }

  else
  {
    v51 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v49, v51);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v52 = *(v3 + 152);
    if (!v52)
    {
      v53 = *(v3 + 8);
      if (v53)
      {
        v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
      }

      v52 = MEMORY[0x223DA0390](v53);
      *(v3 + 152) = v52;
    }

    if (*(a2 + 19))
    {
      v54 = *(a2 + 19);
    }

    else
    {
      v54 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v52, v54);
  }

LABEL_151:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v55 = *(v3 + 160);
    if (!v55)
    {
      v56 = *(v3 + 8);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x223DA0390](v56);
      *(v3 + 160) = v55;
    }

    if (*(a2 + 20))
    {
      v57 = *(a2 + 20);
    }

    else
    {
      v57 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v55, v57);
    if ((v5 & 0x20000) == 0)
    {
LABEL_154:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_177;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 16) |= 0x20000u;
  v58 = *(v3 + 168);
  if (!v58)
  {
    v59 = *(v3 + 8);
    if (v59)
    {
      v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
    }

    v58 = MEMORY[0x223DA0390](v59);
    *(v3 + 168) = v58;
  }

  if (*(a2 + 21))
  {
    v60 = *(a2 + 21);
  }

  else
  {
    v60 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v58, v60);
  if ((v5 & 0x40000) == 0)
  {
LABEL_155:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_185;
  }

LABEL_177:
  *(v3 + 16) |= 0x40000u;
  v61 = *(v3 + 176);
  if (!v61)
  {
    v62 = *(v3 + 8);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = MEMORY[0x223DA0390](v62);
    *(v3 + 176) = v61;
  }

  if (*(a2 + 22))
  {
    v63 = *(a2 + 22);
  }

  else
  {
    v63 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v61, v63);
  if ((v5 & 0x80000) == 0)
  {
LABEL_156:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_193;
  }

LABEL_185:
  *(v3 + 16) |= 0x80000u;
  v64 = *(v3 + 184);
  if (!v64)
  {
    v65 = *(v3 + 8);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x223DA0390](v65);
    *(v3 + 184) = v64;
  }

  if (*(a2 + 23))
  {
    v66 = *(a2 + 23);
  }

  else
  {
    v66 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v64, v66);
  if ((v5 & 0x100000) == 0)
  {
LABEL_157:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_201;
  }

LABEL_193:
  *(v3 + 16) |= 0x100000u;
  v67 = *(v3 + 192);
  if (!v67)
  {
    v68 = *(v3 + 8);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x223DA0390](v68);
    *(v3 + 192) = v67;
  }

  if (*(a2 + 24))
  {
    v69 = *(a2 + 24);
  }

  else
  {
    v69 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v67, v69);
  if ((v5 & 0x200000) == 0)
  {
LABEL_158:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_209;
  }

LABEL_201:
  *(v3 + 16) |= 0x200000u;
  v70 = *(v3 + 200);
  if (!v70)
  {
    v71 = *(v3 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x223DA0390](v71);
    *(v3 + 200) = v70;
  }

  if (*(a2 + 25))
  {
    v72 = *(a2 + 25);
  }

  else
  {
    v72 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v70, v72);
  if ((v5 & 0x400000) == 0)
  {
LABEL_159:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_217;
  }

LABEL_209:
  *(v3 + 16) |= 0x400000u;
  v73 = *(v3 + 208);
  if (!v73)
  {
    v74 = *(v3 + 8);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = MEMORY[0x223DA0390](v74);
    *(v3 + 208) = v73;
  }

  if (*(a2 + 26))
  {
    v75 = *(a2 + 26);
  }

  else
  {
    v75 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v73, v75);
  if ((v5 & 0x800000) != 0)
  {
LABEL_217:
    *(v3 + 16) |= 0x800000u;
    v76 = *(v3 + 216);
    if (!v76)
    {
      v77 = *(v3 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x223DA0390](v77);
      *(v3 + 216) = v76;
    }

    if (*(a2 + 27))
    {
      v78 = *(a2 + 27);
    }

    else
    {
      v78 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v76, v78);
  }

LABEL_225:
  if (!HIBYTE(v5))
  {
    goto LABEL_299;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v79 = *(v3 + 224);
    if (!v79)
    {
      v80 = *(v3 + 8);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x223DA0390](v80);
      *(v3 + 224) = v79;
    }

    if (*(a2 + 28))
    {
      v81 = *(a2 + 28);
    }

    else
    {
      v81 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v79, v81);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_228:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_251;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_228;
  }

  *(v3 + 16) |= 0x2000000u;
  v82 = *(v3 + 232);
  if (!v82)
  {
    v83 = *(v3 + 8);
    if (v83)
    {
      v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
    }

    v82 = MEMORY[0x223DA0390](v83);
    *(v3 + 232) = v82;
  }

  if (*(a2 + 29))
  {
    v84 = *(a2 + 29);
  }

  else
  {
    v84 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v82, v84);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_229:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_259;
  }

LABEL_251:
  *(v3 + 16) |= 0x4000000u;
  v85 = *(v3 + 240);
  if (!v85)
  {
    v86 = *(v3 + 8);
    if (v86)
    {
      v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
    }

    v85 = MEMORY[0x223DA0390](v86);
    *(v3 + 240) = v85;
  }

  if (*(a2 + 30))
  {
    v87 = *(a2 + 30);
  }

  else
  {
    v87 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v85, v87);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_267;
  }

LABEL_259:
  *(v3 + 16) |= 0x8000000u;
  v88 = *(v3 + 248);
  if (!v88)
  {
    v89 = *(v3 + 8);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
    }

    v88 = MEMORY[0x223DA0390](v89);
    *(v3 + 248) = v88;
  }

  if (*(a2 + 31))
  {
    v90 = *(a2 + 31);
  }

  else
  {
    v90 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v88, v90);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_275;
  }

LABEL_267:
  *(v3 + 16) |= 0x10000000u;
  v91 = *(v3 + 256);
  if (!v91)
  {
    v92 = *(v3 + 8);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = MEMORY[0x223DA0390](v92);
    *(v3 + 256) = v91;
  }

  if (*(a2 + 32))
  {
    v93 = *(a2 + 32);
  }

  else
  {
    v93 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v91, v93);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_283;
  }

LABEL_275:
  *(v3 + 16) |= 0x20000000u;
  v94 = *(v3 + 264);
  if (!v94)
  {
    v95 = *(v3 + 8);
    if (v95)
    {
      v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
    }

    v94 = MEMORY[0x223DA0390](v95);
    *(v3 + 264) = v94;
  }

  if (*(a2 + 33))
  {
    v96 = *(a2 + 33);
  }

  else
  {
    v96 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v94, v96);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_291;
  }

LABEL_283:
  *(v3 + 16) |= 0x40000000u;
  v97 = *(v3 + 272);
  if (!v97)
  {
    v98 = *(v3 + 8);
    if (v98)
    {
      v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
    }

    v97 = MEMORY[0x223DA0390](v98);
    *(v3 + 272) = v97;
  }

  if (*(a2 + 34))
  {
    v99 = *(a2 + 34);
  }

  else
  {
    v99 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v97, v99);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_291:
    *(v3 + 16) |= 0x80000000;
    v100 = *(v3 + 280);
    if (!v100)
    {
      v101 = *(v3 + 8);
      if (v101)
      {
        v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
      }

      v100 = MEMORY[0x223DA0390](v101);
      *(v3 + 280) = v100;
    }

    if (*(a2 + 35))
    {
      v102 = *(a2 + 35);
    }

    else
    {
      v102 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v100, v102);
  }

LABEL_299:
  v103 = *(a2 + 5);
  if ((v103 & 7) == 0)
  {
    return this;
  }

  if ((v103 & 1) == 0)
  {
    if ((v103 & 2) == 0)
    {
      goto LABEL_302;
    }

LABEL_314:
    *(v3 + 20) |= 2u;
    v107 = *(v3 + 296);
    if (!v107)
    {
      v108 = *(v3 + 8);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = MEMORY[0x223DA0390](v108);
      *(v3 + 296) = v107;
    }

    if (*(a2 + 37))
    {
      v109 = *(a2 + 37);
    }

    else
    {
      v109 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v107, v109);
    if ((v103 & 4) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_303;
  }

  *(v3 + 20) |= 1u;
  v104 = *(v3 + 288);
  if (!v104)
  {
    v105 = *(v3 + 8);
    if (v105)
    {
      v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
    }

    v104 = MEMORY[0x223DA0390](v105);
    *(v3 + 288) = v104;
  }

  if (*(a2 + 36))
  {
    v106 = *(a2 + 36);
  }

  else
  {
    v106 = MEMORY[0x277D80A18];
  }

  this = TSP::Reference::MergeFrom(v104, v106);
  if ((v103 & 2) != 0)
  {
    goto LABEL_314;
  }

LABEL_302:
  if ((v103 & 4) != 0)
  {
LABEL_303:
    *(v3 + 304) = *(a2 + 76);
  }

LABEL_304:
  *(v3 + 20) |= v103;
  return this;
}

uint64_t *TST::TableStyleNetworkArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableStyleNetworkArchive::Clear(this);

    return TST::TableStyleNetworkArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableStyleNetworkArchive::CopyFrom(uint64_t *this, const TST::TableStyleNetworkArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableStyleNetworkArchive::Clear(this);

    return TST::TableStyleNetworkArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableStyleNetworkArchive::IsInitialized(TST::TableStyleNetworkArchive *this)
{
  if ((~*(this + 4) & 0x1FF) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 13));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 16));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 18));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 19));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 20));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 21));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 22));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 23));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 24));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 25));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 26));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 27));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 28));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 29));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 30));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 31));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 33));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40000000) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 34));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80000000) == 0 || (result = TSP::Reference::IsInitialized(*(this + 35)), result))
    {
      v4 = *(this + 5);
      if (v4)
      {
        result = TSP::Reference::IsInitialized(*(this + 36));
        if (!result)
        {
          return result;
        }

        v4 = *(this + 5);
      }

      if ((v4 & 2) == 0)
      {
        return 1;
      }

      result = TSP::Reference::IsInitialized(*(this + 37));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

double TST::TableStyleNetworkArchive::InternalSwap(TST::TableStyleNetworkArchive *this, TST::TableStyleNetworkArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 4);
  v7 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  v9 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v8;
  *(a2 + 7) = v9;

  return sub_22167E0D8(this + 8, a2 + 64);
}

TSP::UUID *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::clear_grouping_column_uid(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::clear_column_uid(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3608;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834B3608;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this, const TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3608;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  return this;
}

void TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::~TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this)
{
  if (this != TST::_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::~TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::default_instance(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this)
{
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive_default_instance_;
}

uint64_t *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_221567030(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if (*v23 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
        v23 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v21;
        goto LABEL_7;
      }

      v5 = (v23 + 2);
    }

    v23 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 24)
      {
        goto LABEL_13;
      }

      v16 = (v5 + 1);
      v15 = *v5;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_29;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v5 + 2);
LABEL_29:
        v23 = v16;
        goto LABEL_30;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v5, v15);
      if (!v23)
      {
        return 0;
      }

LABEL_30:
      if (v15 > 1)
      {
        sub_221708800();
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v15;
      }
    }

    else
    {
      if (v8 == 2)
      {
        if (v6 != 18)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x223DA0360](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          goto LABEL_36;
        }
      }

      else
      {
        if (v8 != 1 || v6 != 10)
        {
LABEL_13:
          if (v6)
          {
            v10 = (v6 & 7) == 4;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            *(a3 + 80) = v6 - 1;
            return v23;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_38;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (!v12)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x223DA0360](v18);
          LODWORD(v12) = v19;
          *(a1 + 24) = v19;
LABEL_36:
          v5 = v23;
        }
      }

      v11 = sub_2216F813C(a3, v12, v5);
LABEL_38:
      v23 = v11;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return v23;
}

unsigned __int8 *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::_InternalSerialize(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 4);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 10);
    *a2 = 24;
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++a2;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(a2 - 1) = v20;
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
    }
  }

LABEL_34:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::ByteSizeLong(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 10);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

LABEL_13:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::MergeFrom(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::MergeFrom(uint64_t this, const TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    v6 = MEMORY[0x277D809E0];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0360](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::UUID::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0360](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::UUID::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::Clear(this);

    return TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::CopyFrom(uint64_t *this, const TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::Clear(this);

    return TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::IsInitialized(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::UUID::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::InternalSwap(TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *this, TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TST::TableGroupSortOrderUIDArchive *TST::TableGroupSortOrderUIDArchive::TableGroupSortOrderUIDArchive(TST::TableGroupSortOrderUIDArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B36B8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::TableGroupSortOrderUIDArchive *TST::TableGroupSortOrderUIDArchive::TableGroupSortOrderUIDArchive(TST::TableGroupSortOrderUIDArchive *this, const TST::TableGroupSortOrderUIDArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B36B8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167E1B8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::TableGroupSortOrderUIDArchive::~TableGroupSortOrderUIDArchive(TST::TableGroupSortOrderUIDArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E134(this + 2);
}

{
  TST::TableGroupSortOrderUIDArchive::~TableGroupSortOrderUIDArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TableGroupSortOrderUIDArchive::default_instance(TST::TableGroupSortOrderUIDArchive *this)
{
  if (atomic_load_explicit(scc_info_TableGroupSortOrderUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableGroupSortOrderUIDArchive_default_instance_;
}

uint64_t *TST::TableGroupSortOrderUIDArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::TableGroupSortOrderUIDArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_221702AE8(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::TableGroupSortOrderUIDArchive::_InternalSerialize(TST::TableGroupSortOrderUIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableGroupSortOrderUIDArchive::ByteSizeLong(TST::TableGroupSortOrderUIDArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::TableGroupSortOrderUIDArchive::MergeFrom(TST::TableGroupSortOrderUIDArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableGroupSortOrderUIDArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableGroupSortOrderUIDArchive::MergeFrom(uint64_t this, const TST::TableGroupSortOrderUIDArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22167E1B8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TST::TableGroupSortOrderUIDArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableGroupSortOrderUIDArchive::Clear(this);

    return TST::TableGroupSortOrderUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableGroupSortOrderUIDArchive::CopyFrom(uint64_t *this, const TST::TableGroupSortOrderUIDArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableGroupSortOrderUIDArchive::Clear(this);

    return TST::TableGroupSortOrderUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::TableGroupSortOrderUIDArchive::IsInitialized(TST::TableGroupSortOrderUIDArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::TableGroupSortOrderUIDArchive::InternalSwap(TST::TableGroupSortOrderUIDArchive *this, TST::TableGroupSortOrderUIDArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

void *TST::TableSortOrderArchive_SortRuleArchive::TableSortOrderArchive_SortRuleArchive(void *result, uint64_t a2)
{
  *result = &unk_2834B3768;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834B3768;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::TableSortOrderArchive_SortRuleArchive *TST::TableSortOrderArchive_SortRuleArchive::TableSortOrderArchive_SortRuleArchive(TST::TableSortOrderArchive_SortRuleArchive *this, const TST::TableSortOrderArchive_SortRuleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3768;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TST::TableSortOrderArchive_SortRuleArchive::~TableSortOrderArchive_SortRuleArchive(TST::TableSortOrderArchive_SortRuleArchive *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableSortOrderArchive_SortRuleArchive::default_instance(TST::TableSortOrderArchive_SortRuleArchive *this)
{
  if (atomic_load_explicit(scc_info_TableSortOrderArchive_SortRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableSortOrderArchive_SortRuleArchive_default_instance_;
}

uint64_t *TST::TableSortOrderArchive_SortRuleArchive::Clear(TST::TableSortOrderArchive_SortRuleArchive *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::TableSortOrderArchive_SortRuleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_41;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 16)
        {
          v13 = (v7 + 1);
          v12 = *v7;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v22 = google::protobuf::internal::VarintParseSlow64(v7, v12);
            if (!v22)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v13 = (v7 + 2);
LABEL_24:
            v22 = v13;
          }

          if (v12 > 1)
          {
            sub_2216FF1C4();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 28) = v12;
          }

          goto LABEL_31;
        }

LABEL_12:
        if (v8)
        {
          v11 = (v8 & 7) == 4;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v22 = google::protobuf::internal::UnknownFieldParse();
        if (!v22)
        {
LABEL_41:
          v22 = 0;
          goto LABEL_2;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 24) = v16;
        v5 = 1;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 24) = v21;
      v5 = 1;
      if (!v20)
      {
        goto LABEL_41;
      }

LABEL_31:
      if (sub_221567030(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TST::TableSortOrderArchive_SortRuleArchive::_InternalSerialize(TST::TableSortOrderArchive_SortRuleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableSortOrderArchive_SortRuleArchive::RequiredFieldsByteSizeFallback(TST::TableSortOrderArchive_SortRuleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v4 = *(this + 7);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
  return result;
}

uint64_t TST::TableSortOrderArchive_SortRuleArchive::ByteSizeLong(TST::TableSortOrderArchive_SortRuleArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v6 = TST::TableSortOrderArchive_SortRuleArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 7);
    v3 = (9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6;
    v4 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    if (v2 >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 10;
    }

    v6 = v5 + v3 + 2;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TST::TableSortOrderArchive_SortRuleArchive::MergeFrom(TST::TableSortOrderArchive_SortRuleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableSortOrderArchive_SortRuleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableSortOrderArchive_SortRuleArchive::MergeFrom(uint64_t this, const TST::TableSortOrderArchive_SortRuleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

TST::TableSortOrderArchive_SortRuleArchive *TST::TableSortOrderArchive_SortRuleArchive::CopyFrom(TST::TableSortOrderArchive_SortRuleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderArchive_SortRuleArchive::Clear(this);

    return TST::TableSortOrderArchive_SortRuleArchive::MergeFrom(v4, a2);
  }

  return this;
}

TST::TableSortOrderArchive_SortRuleArchive *TST::TableSortOrderArchive_SortRuleArchive::CopyFrom(TST::TableSortOrderArchive_SortRuleArchive *this, const TST::TableSortOrderArchive_SortRuleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderArchive_SortRuleArchive::Clear(this);

    return TST::TableSortOrderArchive_SortRuleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableSortOrderArchive_SortRuleArchive::InternalSwap(TST::TableSortOrderArchive_SortRuleArchive *this, TST::TableSortOrderArchive_SortRuleArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TST::TableSortOrderArchive *TST::TableSortOrderArchive::TableSortOrderArchive(TST::TableSortOrderArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3818;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_TableSortOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::TableSortOrderArchive *TST::TableSortOrderArchive::TableSortOrderArchive(TST::TableSortOrderArchive *this, const TST::TableSortOrderArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3818;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167E278(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::TableSortOrderArchive::~TableSortOrderArchive(TST::TableSortOrderArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 3);
}

{
  TST::TableSortOrderArchive::~TableSortOrderArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TableSortOrderArchive::default_instance(TST::TableSortOrderArchive *this)
{
  if (atomic_load_explicit(scc_info_TableSortOrderArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableSortOrderArchive_default_instance_;
}

uint64_t *TST::TableSortOrderArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TableSortOrderArchive_SortRuleArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::TableSortOrderArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_221567030(a3, &v24))
      {
        return v24;
      }

      v5 = (v24 + 1);
      v6 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v24 + 2);
LABEL_6:
        v24 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v22;
LABEL_7:
      if (v6 >> 3 == 2)
      {
        if (v6 != 18)
        {
          break;
        }

        v10 = (v5 - 1);
        while (1)
        {
          v11 = (v10 + 1);
          v24 = (v10 + 1);
          v12 = *(a1 + 40);
          if (!v12)
          {
            goto LABEL_23;
          }

          v17 = *(a1 + 32);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 32) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_27;
          }

          if (v13 == *(a1 + 36))
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v12 = *(a1 + 40);
            v13 = *v12;
          }

          *v12 = v13 + 1;
          v14 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive_SortRuleArchive>(*(a1 + 24));
          v15 = *(a1 + 32);
          v16 = *(a1 + 40) + 8 * v15;
          *(a1 + 32) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v24;
LABEL_27:
          v10 = sub_221702BB8(a3, v14, v11);
          v24 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 18)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 >> 3 != 1 || v6 != 8)
      {
        break;
      }

      v19 = (v5 + 1);
      v18 = *v5;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v5 + 2);
LABEL_36:
        v24 = v19;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v5, v18);
      if (!v24)
      {
        return 0;
      }

LABEL_37:
      if (v18 > 1)
      {
        sub_2217087CC();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v18;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v24 = google::protobuf::internal::UnknownFieldParse();
    if (!v24)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *TST::TableSortOrderArchive::_InternalSerialize(TST::TableSortOrderArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TST::TableSortOrderArchive_SortRuleArchive::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableSortOrderArchive::ByteSizeLong(TST::TableSortOrderArchive *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 12);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TST::TableSortOrderArchive_SortRuleArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::TableSortOrderArchive::MergeFrom(TST::TableSortOrderArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableSortOrderArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableSortOrderArchive::MergeFrom(uint64_t this, const TST::TableSortOrderArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167E278(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TST::TableSortOrderArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderArchive::Clear(this);

    return TST::TableSortOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableSortOrderArchive::CopyFrom(uint64_t *this, const TST::TableSortOrderArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderArchive::Clear(this);

    return TST::TableSortOrderArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::TableSortOrderArchive::IsInitialized(TST::TableSortOrderArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

__n128 TST::TableSortOrderArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

TSP::UUID *TST::TableSortOrderUIDArchive_SortRuleArchive::clear_column_uid(TST::TableSortOrderUIDArchive_SortRuleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::TableSortOrderUIDArchive_SortRuleArchive *TST::TableSortOrderUIDArchive_SortRuleArchive::TableSortOrderUIDArchive_SortRuleArchive(TST::TableSortOrderUIDArchive_SortRuleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B38C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_SortRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B38C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_SortRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::TableSortOrderUIDArchive_SortRuleArchive *TST::TableSortOrderUIDArchive_SortRuleArchive::TableSortOrderUIDArchive_SortRuleArchive(TST::TableSortOrderUIDArchive_SortRuleArchive *this, const TST::TableSortOrderUIDArchive_SortRuleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B38C8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TST::TableSortOrderUIDArchive_SortRuleArchive::~TableSortOrderUIDArchive_SortRuleArchive(TST::TableSortOrderUIDArchive_SortRuleArchive *this)
{
  if (this != &TST::_TableSortOrderUIDArchive_SortRuleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::TableSortOrderUIDArchive_SortRuleArchive::~TableSortOrderUIDArchive_SortRuleArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableSortOrderUIDArchive_SortRuleArchive::default_instance(TST::TableSortOrderUIDArchive_SortRuleArchive *this)
{
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_SortRuleArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableSortOrderUIDArchive_SortRuleArchive_default_instance_;
}

uint64_t *TST::TableSortOrderUIDArchive_SortRuleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::TableSortOrderUIDArchive_SortRuleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_221567030(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
        v20 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v18;
        goto LABEL_7;
      }

      v5 = (v20 + 2);
    }

    v20 = v5;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 16)
      {
        goto LABEL_12;
      }

      v12 = (v5 + 1);
      v11 = *v5;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v5 + 2);
LABEL_23:
        v20 = v12;
        goto LABEL_24;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v5, v11);
      if (!v20)
      {
        return 0;
      }

LABEL_24:
      if (v11 > 1)
      {
        sub_2216FF1C4();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v11;
      }
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_31;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0360](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_2216F813C(a3, v14, v5);
LABEL_31:
      v20 = v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  return v20;
}

unsigned __int8 *TST::TableSortOrderUIDArchive_SortRuleArchive::_InternalSerialize(TST::TableSortOrderUIDArchive_SortRuleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 8);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableSortOrderUIDArchive_SortRuleArchive::RequiredFieldsByteSizeFallback(TST::TableSortOrderUIDArchive_SortRuleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 8);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t TST::TableSortOrderUIDArchive_SortRuleArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TST::TableSortOrderUIDArchive_SortRuleArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 8);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TST::TableSortOrderUIDArchive_SortRuleArchive::MergeFrom(TST::TableSortOrderUIDArchive_SortRuleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableSortOrderUIDArchive_SortRuleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableSortOrderUIDArchive_SortRuleArchive::MergeFrom(uint64_t this, const TST::TableSortOrderUIDArchive_SortRuleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0360](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TST::TableSortOrderUIDArchive_SortRuleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderUIDArchive_SortRuleArchive::Clear(this);

    return TST::TableSortOrderUIDArchive_SortRuleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableSortOrderUIDArchive_SortRuleArchive::CopyFrom(uint64_t *this, const TST::TableSortOrderUIDArchive_SortRuleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderUIDArchive_SortRuleArchive::Clear(this);

    return TST::TableSortOrderUIDArchive_SortRuleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableSortOrderUIDArchive_SortRuleArchive::IsInitialized(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::UUID::IsInitialized(this[3]);
  }
}

uint64_t *TST::TableSortOrderUIDArchive_SortRuleArchive::InternalSwap(TST::TableSortOrderUIDArchive_SortRuleArchive *this, TST::TableSortOrderUIDArchive_SortRuleArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TST::TableSortOrderUIDArchive *TST::TableSortOrderUIDArchive::TableSortOrderUIDArchive(TST::TableSortOrderUIDArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3978;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::TableSortOrderUIDArchive *TST::TableSortOrderUIDArchive::TableSortOrderUIDArchive(TST::TableSortOrderUIDArchive *this, const TST::TableSortOrderUIDArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3978;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_22167E3BC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::TableSortOrderUIDArchive::~TableSortOrderUIDArchive(TST::TableSortOrderUIDArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E338(this + 3);
}

{
  TST::TableSortOrderUIDArchive::~TableSortOrderUIDArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TableSortOrderUIDArchive::default_instance(TST::TableSortOrderUIDArchive *this)
{
  if (atomic_load_explicit(scc_info_TableSortOrderUIDArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableSortOrderUIDArchive_default_instance_;
}

uint64_t *TST::TableSortOrderUIDArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TableSortOrderUIDArchive_SortRuleArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::TableSortOrderUIDArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_221567030(a3, &v24))
      {
        return v24;
      }

      v5 = (v24 + 1);
      v6 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v24 + 2);
LABEL_6:
        v24 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v22;
LABEL_7:
      if (v6 >> 3 == 2)
      {
        if (v6 != 18)
        {
          break;
        }

        v10 = (v5 - 1);
        while (1)
        {
          v11 = (v10 + 1);
          v24 = (v10 + 1);
          v12 = *(a1 + 40);
          if (!v12)
          {
            goto LABEL_23;
          }

          v17 = *(a1 + 32);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 32) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_27;
          }

          if (v13 == *(a1 + 36))
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v12 = *(a1 + 40);
            v13 = *v12;
          }

          *v12 = v13 + 1;
          v14 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderUIDArchive_SortRuleArchive>(*(a1 + 24));
          v15 = *(a1 + 32);
          v16 = *(a1 + 40) + 8 * v15;
          *(a1 + 32) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v24;
LABEL_27:
          v10 = sub_221702C88(a3, v14, v11);
          v24 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 18)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 >> 3 != 1 || v6 != 8)
      {
        break;
      }

      v19 = (v5 + 1);
      v18 = *v5;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v5 + 2);
LABEL_36:
        v24 = v19;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v5, v18);
      if (!v24)
      {
        return 0;
      }

LABEL_37:
      if (v18 > 1)
      {
        sub_2217087CC();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v18;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v24 = google::protobuf::internal::UnknownFieldParse();
    if (!v24)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *TST::TableSortOrderUIDArchive::_InternalSerialize(TST::TableSortOrderUIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TST::TableSortOrderUIDArchive_SortRuleArchive::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableSortOrderUIDArchive::ByteSizeLong(TST::TableSortOrderUIDArchive *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 12);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TST::TableSortOrderUIDArchive_SortRuleArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TST::TableSortOrderUIDArchive::MergeFrom(TST::TableSortOrderUIDArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableSortOrderUIDArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableSortOrderUIDArchive::MergeFrom(uint64_t this, const TST::TableSortOrderUIDArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167E3BC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TST::TableSortOrderUIDArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderUIDArchive::Clear(this);

    return TST::TableSortOrderUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableSortOrderUIDArchive::CopyFrom(uint64_t *this, const TST::TableSortOrderUIDArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableSortOrderUIDArchive::Clear(this);

    return TST::TableSortOrderUIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TST::TableSortOrderUIDArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

TSP::Reference *TST::SortRuleReferenceTrackerArchive::clear_reference_tracker(TST::SortRuleReferenceTrackerArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::SortRuleReferenceTrackerArchive *TST::SortRuleReferenceTrackerArchive::SortRuleReferenceTrackerArchive(TST::SortRuleReferenceTrackerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3A28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SortRuleReferenceTrackerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B3A28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SortRuleReferenceTrackerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::SortRuleReferenceTrackerArchive *TST::SortRuleReferenceTrackerArchive::SortRuleReferenceTrackerArchive(TST::SortRuleReferenceTrackerArchive *this, const TST::SortRuleReferenceTrackerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3A28;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TST::SortRuleReferenceTrackerArchive::~SortRuleReferenceTrackerArchive(TST::SortRuleReferenceTrackerArchive *this)
{
  if (this != &TST::_SortRuleReferenceTrackerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::SortRuleReferenceTrackerArchive::~SortRuleReferenceTrackerArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::SortRuleReferenceTrackerArchive::default_instance(TST::SortRuleReferenceTrackerArchive *this)
{
  if (atomic_load_explicit(scc_info_SortRuleReferenceTrackerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SortRuleReferenceTrackerArchive_default_instance_;
}

uint64_t *TST::SortRuleReferenceTrackerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::SortRuleReferenceTrackerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_221567030(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0390](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_22170B7F8(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TST::SortRuleReferenceTrackerArchive::_InternalSerialize(TST::SortRuleReferenceTrackerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::SortRuleReferenceTrackerArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TST::SortRuleReferenceTrackerArchive::MergeFrom(TST::SortRuleReferenceTrackerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SortRuleReferenceTrackerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SortRuleReferenceTrackerArchive::MergeFrom(uint64_t this, const TST::SortRuleReferenceTrackerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x223DA0390](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::SortRuleReferenceTrackerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SortRuleReferenceTrackerArchive::Clear(this);

    return TST::SortRuleReferenceTrackerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::SortRuleReferenceTrackerArchive::CopyFrom(uint64_t *this, const TST::SortRuleReferenceTrackerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SortRuleReferenceTrackerArchive::Clear(this);

    return TST::SortRuleReferenceTrackerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::SortRuleReferenceTrackerArchive::IsInitialized(TSP::Reference **this)
{
  if (this[2])
  {
    return TSP::Reference::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TST::SortRuleReferenceTrackerArchive::InternalSwap(TST::SortRuleReferenceTrackerArchive *this, TST::SortRuleReferenceTrackerArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TST::CellRegion *TST::CellRegion::CellRegion(TST::CellRegion *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3AD8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellRegion_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::CellRegion *TST::CellRegion::CellRegion(TST::CellRegion *this, const TST::CellRegion *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B3AD8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167E500(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::CellRegion::~CellRegion(TST::CellRegion *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E47C(this + 2);
}

{
  TST::CellRegion::~CellRegion(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellRegion::default_instance(TST::CellRegion *this)
{
  if (atomic_load_explicit(scc_info_CellRegion_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellRegion_default_instance_;
}

uint64_t *TST::CellRegion::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellRange::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::CellRegion::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_221701AA8(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::CellRegion::_InternalSerialize(TST::CellRegion *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TST::CellRange::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellRegion::ByteSizeLong(TST::CellRegion *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TST::CellRange::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::CellRegion::MergeFrom(TST::CellRegion *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellRegion::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellRegion::MergeFrom(uint64_t this, const TST::CellRegion *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22167E500(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TST::CellRegion::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellRegion::Clear(this);

    return TST::CellRegion::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellRegion::CopyFrom(uint64_t *this, const TST::CellRegion *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellRegion::Clear(this);

    return TST::CellRegion::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2215F7604(uint64_t a1)
{
  v1 = *(a1 + 8);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 16) + 8 * v1);
    if ((~*(v3 + 16) & 3) != 0)
    {
      break;
    }

    if ((*(*(v3 + 24) + 16) & 2) == 0)
    {
      break;
    }

    --v1;
  }

  while ((*(*(v3 + 32) + 16) & 1) != 0);
  return v2 < 1;
}

__n128 TST::CellRegion::InternalSwap(TST::CellRegion *this, TST::CellRegion *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TST::CellUIDRegionArchive::clear_cell_uid_ranges(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDRectArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TST::CellUIDRegionArchive *TST::CellUIDRegionArchive::CellUIDRegionArchive(TST::CellUIDRegionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3B88;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CellUIDRegionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::CellUIDRegionArchive *TST::CellUIDRegionArchive::CellUIDRegionArchive(TST::CellUIDRegionArchive *this, const TST::CellUIDRegionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B3B88;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167E644(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::CellUIDRegionArchive::~CellUIDRegionArchive(TST::CellUIDRegionArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167E5C0(this + 2);
}

{
  TST::CellUIDRegionArchive::~CellUIDRegionArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CellUIDRegionArchive::default_instance(TST::CellUIDRegionArchive *this)
{
  if (atomic_load_explicit(scc_info_CellUIDRegionArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CellUIDRegionArchive_default_instance_;
}

uint64_t *TST::CellUIDRegionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDRectArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::CellUIDRegionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_221567030(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v5 = (v21 + 1);
      v6 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v19;
LABEL_6:
      if (v6 == 10)
      {
        v9 = v5 - 1;
        while (1)
        {
          v10 = (v9 + 1);
          v21 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v17 = *(a1 + 24);
          v12 = *v11;
          if (v17 < *v11)
          {
            *(a1 + 24) = v17 + 1;
            v14 = *&v11[2 * v17 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = MEMORY[0x223DA0320](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_221702D58(a3, v14, v10);
          v21 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v21;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v21))
      {
        return v21;
      }
    }

    v5 = (v21 + 2);
LABEL_5:
    v21 = v5;
    goto LABEL_6;
  }

  return v21;
}

unsigned __int8 *TST::CellUIDRegionArchive::_InternalSerialize(TST::CellUIDRegionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 16);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::UUIDRectArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CellUIDRegionArchive::ByteSizeLong(TST::CellUIDRegionArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUIDRectArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TST::CellUIDRegionArchive::MergeFrom(TST::CellUIDRegionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CellUIDRegionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CellUIDRegionArchive::MergeFrom(uint64_t this, const TST::CellUIDRegionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22167E644(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TST::CellUIDRegionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellUIDRegionArchive::Clear(this);

    return TST::CellUIDRegionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CellUIDRegionArchive::CopyFrom(uint64_t *this, const TST::CellUIDRegionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CellUIDRegionArchive::Clear(this);

    return TST::CellUIDRegionArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CellUIDRegionArchive::IsInitialized(TST::CellUIDRegionArchive *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::UUIDRectArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::CellUIDRegionArchive::InternalSwap(TST::CellUIDRegionArchive *this, TST::CellUIDRegionArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSK::StructuredTextImportSettings *TST::StructuredTextImportRecord::clear_import_settings(TST::StructuredTextImportRecord *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::StructuredTextImportSettings::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::StructuredTextImportRecord *TST::StructuredTextImportRecord::StructuredTextImportRecord(TST::StructuredTextImportRecord *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3C38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StructuredTextImportRecord_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  return this;
}

TST::StructuredTextImportRecord *TST::StructuredTextImportRecord::StructuredTextImportRecord(TST::StructuredTextImportRecord *this, const TST::StructuredTextImportRecord *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B3C38;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  *(this + 22) = *(a2 + 22);
  *(this + 72) = v8;
  *(this + 56) = v7;
  return this;
}

void TST::StructuredTextImportRecord::~StructuredTextImportRecord(TST::StructuredTextImportRecord *this)
{
  sub_2215F82D8(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::StructuredTextImportRecord::~StructuredTextImportRecord(this);

  JUMPOUT(0x223DA1450);
}

TST::CellRegion *sub_2215F82D8(TST::CellRegion *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  if (v1 != &TST::_StructuredTextImportRecord_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x223D9FB30]();
      MEMORY[0x223DA1450](v5, 0x10A1C4084F12C95);
    }

    result = *(v1 + 6);
    if (result)
    {
      TST::CellRegion::~CellRegion(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::StructuredTextImportRecord::default_instance(TST::StructuredTextImportRecord *this)
{
  if (atomic_load_explicit(scc_info_StructuredTextImportRecord_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StructuredTextImportRecord_default_instance_;
}

uint64_t *TST::StructuredTextImportRecord::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  this = TSK::StructuredTextImportSettings::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TST::CellRegion::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::StructuredTextImportRecord::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v23 = *v7;
              v16 = (v7 + 8);
              v5 |= 0x10u;
              *(a1 + 56) = v23;
              goto LABEL_44;
            }

LABEL_61:
            if (v8)
            {
              v32 = (v8 & 7) == 4;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
            v39 = v15;
            if (!v15)
            {
              goto LABEL_78;
            }

            goto LABEL_69;
          }

          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 2u;
        }

        else
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_61;
            }

            *(a1 + 16) |= 4u;
            v20 = *(a1 + 40);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = MEMORY[0x223DA02E0](v21);
              LODWORD(v20) = v22;
              *(a1 + 40) = v22;
              v7 = v39;
            }

            v15 = sub_221702E28(a3, v20, v7);
            goto LABEL_68;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 1u;
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v15 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_68;
      }

      if (v8 >> 3 <= 6)
      {
        if (v10 != 5)
        {
          if (v10 == 6 && v8 == 53)
          {
            v17 = *v7;
            v16 = (v7 + 4);
            v5 |= 0x100u;
            *(a1 + 88) = v17;
LABEL_44:
            v39 = v16;
            goto LABEL_69;
          }

          goto LABEL_61;
        }

        if (v8 != 40)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_55:
          v39 = v27;
          *(a1 + 64) = v26;
          goto LABEL_69;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v39 = v33;
        *(a1 + 64) = v34;
        if (!v33)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v10 == 7)
        {
          if (v8 != 58)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 8u;
          v24 = *(a1 + 48);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRegion>(v25);
            *(a1 + 48) = v24;
            v7 = v39;
          }

          v15 = sub_221702EF8(a3, v24, v7);
          goto LABEL_68;
        }

        if (v10 == 8)
        {
          if (v8 != 64)
          {
            goto LABEL_61;
          }

          v5 |= 0x40u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_60:
            v39 = v30;
            *(a1 + 72) = v29;
            goto LABEL_69;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v39 = v37;
          *(a1 + 72) = v38;
          if (!v37)
          {
LABEL_78:
            v39 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 9 || v8 != 72)
          {
            goto LABEL_61;
          }

          v5 |= 0x80u;
          v12 = (v7 + 1);
          v11 = *v7;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_16:
            v39 = v12;
            *(a1 + 80) = v11;
            goto LABEL_69;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
          v39 = v35;
          *(a1 + 80) = v36;
          if (!v35)
          {
            goto LABEL_78;
          }
        }
      }

LABEL_69:
      if (sub_221567030(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TST::StructuredTextImportRecord::_InternalSerialize(TST::StructuredTextImportRecord *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 5);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSK::StructuredTextImportSettings::_InternalSerialize(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 7);
  *v4 = 25;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(this + 8);
    *v4 = 40;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++v4;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(v4 - 1) = v20;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v4[2] = v19;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v4[1] = v18;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_33:
  v4 = sub_22150C00C(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_7;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 22);
  *v4 = 53;
  *(v4 + 1) = v22;
  v4 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 6);
  *v4 = 58;
  v24 = *(v23 + 10);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = v4 + 3;
      do
      {
        *(v25 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++v25;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v25 - 1) = v27;
    }

    else
    {
      v4[2] = v26;
      v25 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v24;
    v25 = v4 + 2;
  }

  v4 = TST::CellRegion::_InternalSerialize(v23, v25, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_10;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 9);
  *v4 = 64;
  if (v29 > 0x7F)
  {
    v4[1] = v29 | 0x80;
    v30 = v29 >> 7;
    if (v29 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v4;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v4 - 1) = v31;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v4[2] = v30;
      v4 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v4[1] = v29;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_69;
    }
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 10);
  *v4 = 72;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_69:
  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::StructuredTextImportRecord::ByteSizeLong(TST::StructuredTextImportRecord *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSK::StructuredTextImportSettings::ByteSizeLong(*(this + 5));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v2 & 0xF8) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v11 = TST::CellRegion::ByteSizeLong(*(this + 6));
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x3F) + 73) >> 6) + 1;
      if ((v2 & 0x40) == 0)
      {
LABEL_20:
        if ((v2 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 0x80) != 0)
    {
LABEL_21:
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_22:
  if ((v2 & 0x100) != 0)
  {
    v12 = v3 + 5;
  }

  else
  {
    v12 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

void TST::StructuredTextImportRecord::MergeFrom(TST::StructuredTextImportRecord *this, const Message *lpsrc)
{
  if (v4)
  {

    TST::StructuredTextImportRecord::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TST::StructuredTextImportRecord::MergeFrom(TST::StructuredTextImportRecord *this, const TST::StructuredTextImportRecord *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      *(this + 4) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_19:
    *(this + 4) |= 4u;
    v7 = *(this + 5);
    if (!v7)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA02E0](v8);
      *(this + 5) = v7;
    }

    if (*(a2 + 5))
    {
      v9 = *(a2 + 5);
    }

    else
    {
      v9 = MEMORY[0x277D80760];
    }

    TSK::StructuredTextImportSettings::MergeFrom(v7, v9);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_27:
    *(this + 4) |= 8u;
    v10 = *(this + 6);
    if (!v10)
    {
      v11 = *(this + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRegion>(v11);
      *(this + 6) = v10;
    }

    if (*(a2 + 6))
    {
      v12 = *(a2 + 6);
    }

    else
    {
      v12 = &TST::_CellRegion_default_instance_;
    }

    TST::CellRegion::MergeFrom(v10, v12);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }

LABEL_35:
    v5 = *(a2 + 7);
    *(this + 7) = v5;
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(this + 8) = *(a2 + 8);
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v6;
        goto LABEL_14;
      }

LABEL_12:
      *(this + 10) = *(a2 + 10);
      goto LABEL_13;
    }

LABEL_37:
    *(this + 9) = *(a2 + 9);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v6 & 0x100) != 0)
  {
    LODWORD(v5) = *(a2 + 22);
    *(this + 4) |= 0x100u;
    *(this + 22) = v5;
  }

  return *&v5;
}

void TST::StructuredTextImportRecord::CopyFrom(TST::StructuredTextImportRecord *this, const Message *a2)
{
  if (a2 != this)
  {
    TST::StructuredTextImportRecord::Clear(this);

    TST::StructuredTextImportRecord::MergeFrom(this, a2);
  }
}

float TST::StructuredTextImportRecord::CopyFrom(TST::StructuredTextImportRecord *this, const TST::StructuredTextImportRecord *a2)
{
  if (a2 != this)
  {
    TST::StructuredTextImportRecord::Clear(this);

    return TST::StructuredTextImportRecord::MergeFrom(this, a2);
  }

  return result;
}

uint64_t TST::StructuredTextImportRecord::IsInitialized(TST::StructuredTextImportRecord *this)
{
  if ((*(this + 16) & 4) == 0)
  {
    return 0;
  }

  result = TSK::StructuredTextImportSettings::IsInitialized(*(this + 5));
  if (result)
  {
    if ((*(this + 16) & 8) == 0)
    {
      return 1;
    }

    result = sub_2215F7604(*(this + 6) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::StructuredTextImportRecord::InternalSwap(TST::StructuredTextImportRecord *this, TST::StructuredTextImportRecord *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  LODWORD(v11) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  return result;
}

TSK::StructuredTextImportSettings *TST::StructuredTextImportRecordUID::clear_import_settings(TST::StructuredTextImportRecordUID *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::StructuredTextImportSettings::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TST::StructuredTextImportRecordUID *TST::StructuredTextImportRecordUID::StructuredTextImportRecordUID(TST::StructuredTextImportRecordUID *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3CE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StructuredTextImportRecordUID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  return this;
}

TST::StructuredTextImportRecordUID *TST::StructuredTextImportRecordUID::StructuredTextImportRecordUID(TST::StructuredTextImportRecordUID *this, const TST::StructuredTextImportRecordUID *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B3CE8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  *(this + 22) = *(a2 + 22);
  *(this + 72) = v8;
  *(this + 56) = v7;
  return this;
}

void TST::StructuredTextImportRecordUID::~StructuredTextImportRecordUID(TST::StructuredTextImportRecordUID *this)
{
  sub_2215F9610(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::StructuredTextImportRecordUID::~StructuredTextImportRecordUID(this);

  JUMPOUT(0x223DA1450);
}

TST::CellUIDRegionArchive *sub_2215F9610(TST::CellUIDRegionArchive *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  if (v1 != &TST::_StructuredTextImportRecordUID_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x223D9FB30]();
      MEMORY[0x223DA1450](v5, 0x10A1C4084F12C95);
    }

    result = *(v1 + 6);
    if (result)
    {
      TST::CellUIDRegionArchive::~CellUIDRegionArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::StructuredTextImportRecordUID::default_instance(TST::StructuredTextImportRecordUID *this)
{
  if (atomic_load_explicit(scc_info_StructuredTextImportRecordUID_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_StructuredTextImportRecordUID_default_instance_;
}

uint64_t *TST::StructuredTextImportRecordUID::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_17:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  this = TSK::StructuredTextImportSettings::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TST::CellUIDRegionArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::StructuredTextImportRecordUID::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v23 = *v7;
              v16 = (v7 + 8);
              v5 |= 0x10u;
              *(a1 + 56) = v23;
              goto LABEL_44;
            }

LABEL_61:
            if (v8)
            {
              v32 = (v8 & 7) == 4;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
            v39 = v15;
            if (!v15)
            {
              goto LABEL_78;
            }

            goto LABEL_69;
          }

          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 2u;
        }

        else
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_61;
            }

            *(a1 + 16) |= 4u;
            v20 = *(a1 + 40);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = MEMORY[0x223DA02E0](v21);
              LODWORD(v20) = v22;
              *(a1 + 40) = v22;
              v7 = v39;
            }

            v15 = sub_221702E28(a3, v20, v7);
            goto LABEL_68;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 1u;
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v15 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_68;
      }

      if (v8 >> 3 <= 6)
      {
        if (v10 != 5)
        {
          if (v10 == 6 && v8 == 53)
          {
            v17 = *v7;
            v16 = (v7 + 4);
            v5 |= 0x100u;
            *(a1 + 88) = v17;
LABEL_44:
            v39 = v16;
            goto LABEL_69;
          }

          goto LABEL_61;
        }

        if (v8 != 40)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_55:
          v39 = v27;
          *(a1 + 64) = v26;
          goto LABEL_69;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v39 = v33;
        *(a1 + 64) = v34;
        if (!v33)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v10 == 7)
        {
          if (v8 != 58)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 8u;
          v24 = *(a1 + 48);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v25);
            *(a1 + 48) = v24;
            v7 = v39;
          }

          v15 = sub_221702FC8(a3, v24, v7);
          goto LABEL_68;
        }

        if (v10 == 8)
        {
          if (v8 != 64)
          {
            goto LABEL_61;
          }

          v5 |= 0x40u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_60;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_60:
            v39 = v30;
            *(a1 + 72) = v29;
            goto LABEL_69;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v39 = v37;
          *(a1 + 72) = v38;
          if (!v37)
          {
LABEL_78:
            v39 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 9 || v8 != 72)
          {
            goto LABEL_61;
          }

          v5 |= 0x80u;
          v12 = (v7 + 1);
          v11 = *v7;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_16:
            v39 = v12;
            *(a1 + 80) = v11;
            goto LABEL_69;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
          v39 = v35;
          *(a1 + 80) = v36;
          if (!v35)
          {
            goto LABEL_78;
          }
        }
      }

LABEL_69:
      if (sub_221567030(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TST::StructuredTextImportRecordUID::_InternalSerialize(TST::StructuredTextImportRecordUID *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 5);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSK::StructuredTextImportSettings::_InternalSerialize(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 7);
  *v4 = 25;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_34:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(this + 8);
    *v4 = 40;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++v4;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(v4 - 1) = v20;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v4[2] = v19;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v4[1] = v18;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_45;
      }
    }

LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_33:
  v4 = sub_22150C00C(a3, 4, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_6:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_7;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 22);
  *v4 = 53;
  *(v4 + 1) = v22;
  v4 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 6);
  *v4 = 58;
  v24 = *(v23 + 10);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = v4 + 3;
      do
      {
        *(v25 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++v25;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v25 - 1) = v27;
    }

    else
    {
      v4[2] = v26;
      v25 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v24;
    v25 = v4 + 2;
  }

  v4 = TST::CellUIDRegionArchive::_InternalSerialize(v23, v25, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_10;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 9);
  *v4 = 64;
  if (v29 > 0x7F)
  {
    v4[1] = v29 | 0x80;
    v30 = v29 >> 7;
    if (v29 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v4;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v4 - 1) = v31;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v4[2] = v30;
      v4 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v4[1] = v29;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_69;
    }
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 10);
  *v4 = 72;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_69:
  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::StructuredTextImportRecordUID::ByteSizeLong(TST::StructuredTextImportRecordUID *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSK::StructuredTextImportSettings::ByteSizeLong(*(this + 5));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v2 & 0xF8) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v11 = TST::CellUIDRegionArchive::ByteSizeLong(*(this + 6));
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x3F) + 73) >> 6) + 1;
      if ((v2 & 0x40) == 0)
      {
LABEL_20:
        if ((v2 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 0x80) != 0)
    {
LABEL_21:
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_22:
  if ((v2 & 0x100) != 0)
  {
    v12 = v3 + 5;
  }

  else
  {
    v12 = v3;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

void TST::StructuredTextImportRecordUID::MergeFrom(TST::StructuredTextImportRecordUID *this, const Message *lpsrc)
{
  if (v4)
  {

    TST::StructuredTextImportRecordUID::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TST::StructuredTextImportRecordUID::MergeFrom(TST::StructuredTextImportRecordUID *this, const TST::StructuredTextImportRecordUID *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_22156734C(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      *(this + 4) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_19:
    *(this + 4) |= 4u;
    v7 = *(this + 5);
    if (!v7)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA02E0](v8);
      *(this + 5) = v7;
    }

    if (*(a2 + 5))
    {
      v9 = *(a2 + 5);
    }

    else
    {
      v9 = MEMORY[0x277D80760];
    }

    TSK::StructuredTextImportSettings::MergeFrom(v7, v9);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_27:
    *(this + 4) |= 8u;
    v10 = *(this + 6);
    if (!v10)
    {
      v11 = *(this + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v11);
      *(this + 6) = v10;
    }

    if (*(a2 + 6))
    {
      v12 = *(a2 + 6);
    }

    else
    {
      v12 = &TST::_CellUIDRegionArchive_default_instance_;
    }

    TST::CellUIDRegionArchive::MergeFrom(v10, v12);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }

LABEL_35:
    v5 = *(a2 + 7);
    *(this + 7) = v5;
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(this + 8) = *(a2 + 8);
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v6;
        goto LABEL_14;
      }

LABEL_12:
      *(this + 10) = *(a2 + 10);
      goto LABEL_13;
    }

LABEL_37:
    *(this + 9) = *(a2 + 9);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v6 & 0x100) != 0)
  {
    LODWORD(v5) = *(a2 + 22);
    *(this + 4) |= 0x100u;
    *(this + 22) = v5;
  }

  return *&v5;
}

void TST::StructuredTextImportRecordUID::CopyFrom(TST::StructuredTextImportRecordUID *this, const Message *a2)
{
  if (a2 != this)
  {
    TST::StructuredTextImportRecordUID::Clear(this);

    TST::StructuredTextImportRecordUID::MergeFrom(this, a2);
  }
}

float TST::StructuredTextImportRecordUID::CopyFrom(TST::StructuredTextImportRecordUID *this, const TST::StructuredTextImportRecordUID *a2)
{
  if (a2 != this)
  {
    TST::StructuredTextImportRecordUID::Clear(this);

    return TST::StructuredTextImportRecordUID::MergeFrom(this, a2);
  }

  return result;
}

BOOL TST::StructuredTextImportRecordUID::IsInitialized(TST::StructuredTextImportRecordUID *this)
{
  if ((*(this + 16) & 4) == 0 || !TSK::StructuredTextImportSettings::IsInitialized(*(this + 5)))
  {
    return 0;
  }

  if ((*(this + 16) & 8) == 0)
  {
    return 1;
  }

  v4 = *(this + 6);
  v5 = *(v4 + 24);
  do
  {
    v2 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v6 = v5 - 1;
    IsInitialized = TSP::UUIDRectArchive::IsInitialized(*(*(v4 + 32) + 8 * v5));
    v5 = v6;
  }

  while ((IsInitialized & 1) != 0);
  return v2;
}

__n128 TST::StructuredTextImportRecordUID::InternalSwap(TST::StructuredTextImportRecordUID *this, TST::StructuredTextImportRecordUID *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  LODWORD(v11) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_table_style(TST::TableModelArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_body_text_style(TST::TableModelArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_header_row_text_style(TST::TableModelArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_header_column_text_style(TST::TableModelArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_footer_row_text_style(TST::TableModelArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_body_cell_style(TST::TableModelArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_header_row_style(TST::TableModelArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_header_column_style(TST::TableModelArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_footer_row_style(TST::TableModelArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_table_name_style(TST::TableModelArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_table_name_shape_style(TST::TableModelArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_table_style_preset(TST::TableModelArchive *this)
{
  result = *(this + 36);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x4000000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_provider(TST::TableModelArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_hidden_state_formula_owner_for_columns(TST::TableModelArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_hidden_state_formula_owner_for_rows(TST::TableModelArchive *this)
{
  result = *(this + 28);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_row_filter_set_pre_pivot(TST::TableModelArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100000u;
  return result;
}

TSP::CFUUIDArchive *TST::TableModelArchive::clear_conditional_style_formula_owner_id(TST::TableModelArchive *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_base_column_row_uids(TST::TableModelArchive *this)
{
  result = *(this + 34);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x1000000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_stroke_sidecar(TST::TableModelArchive *this)
{
  result = *(this + 37);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x8000000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_1_style(TST::TableModelArchive *this)
{
  result = *(this + 39);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20000000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_2_style(TST::TableModelArchive *this)
{
  result = *(this + 40);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40000000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_3_style(TST::TableModelArchive *this)
{
  result = *(this + 41);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x80000000;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_4_style(TST::TableModelArchive *this)
{
  result = *(this + 42);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~1u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_5_style(TST::TableModelArchive *this)
{
  result = *(this + 43);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~2u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_1_text_style(TST::TableModelArchive *this)
{
  result = *(this + 44);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~4u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_2_text_style(TST::TableModelArchive *this)
{
  result = *(this + 45);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~8u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_3_text_style(TST::TableModelArchive *this)
{
  result = *(this + 46);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x10u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_4_text_style(TST::TableModelArchive *this)
{
  result = *(this + 47);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x20u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_level_5_text_style(TST::TableModelArchive *this)
{
  result = *(this + 48);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x40u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_1_style(TST::TableModelArchive *this)
{
  result = *(this + 50);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x100u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_2_style(TST::TableModelArchive *this)
{
  result = *(this + 51);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x200u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_3_style(TST::TableModelArchive *this)
{
  result = *(this + 52);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x400u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_4_style(TST::TableModelArchive *this)
{
  result = *(this + 53);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x800u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_5_style(TST::TableModelArchive *this)
{
  result = *(this + 54);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x1000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_1_text_style(TST::TableModelArchive *this)
{
  result = *(this + 55);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x2000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_2_text_style(TST::TableModelArchive *this)
{
  result = *(this + 56);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x4000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_3_text_style(TST::TableModelArchive *this)
{
  result = *(this + 57);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x8000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_4_text_style(TST::TableModelArchive *this)
{
  result = *(this + 58);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x10000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_label_level_5_text_style(TST::TableModelArchive *this)
{
  result = *(this + 59);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x20000u;
  return result;
}

uint64_t *TST::TableModelArchive::clear_haunted_owner(TST::TableModelArchive *this)
{
  result = *(this + 62);
  if (result)
  {
    result = TSCE::HauntedOwnerArchive::Clear(result);
  }

  *(this + 5) &= ~0x100000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_pivot_owner(TST::TableModelArchive *this)
{
  result = *(this + 63);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x200000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_category_owner(TST::TableModelArchive *this)
{
  result = *(this + 64);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x400000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_pivot_body_summary_row_style(TST::TableModelArchive *this)
{
  result = *(this + 65);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x800000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_pivot_body_summary_column_style(TST::TableModelArchive *this)
{
  result = *(this + 66);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x1000000u;
  return result;
}

TSP::Reference *TST::TableModelArchive::clear_pivot_header_column_summary_style(TST::TableModelArchive *this)
{
  result = *(this + 67);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 5) &= ~0x2000000u;
  return result;
}

uint64_t *TST::TableModelArchive::clear_spill_owner(TST::TableModelArchive *this)
{
  result = *(this + 68);
  if (result)
  {
    result = TSCE::SpillOwnerArchive::Clear(result);
  }

  *(this + 5) &= ~0x4000000u;
  return result;
}

TST::TableModelArchive *TST::TableModelArchive::TableModelArchive(TST::TableModelArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3D98;
  *(this + 1) = a2;
  *(this + 5) = a2;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = a2;
  if (atomic_load_explicit(scc_info_TableModelArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 10) = MEMORY[0x277D80A90];
  *(this + 11) = v3;
  *(this + 12) = v3;
  *(this + 13) = v3;
  bzero(this + 112, 0x205uLL);
  return this;
}

void sub_2215FB368(_Unwind_Exception *a1)
{
  if (*(v1 + 68) >= 1)
  {
    sub_2216FF128(v2);
  }

  sub_22170883C();
  _Unwind_Resume(a1);
}

TST::TableModelArchive *TST::TableModelArchive::TableModelArchive(TST::TableModelArchive *this, const TST::TableModelArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3D98;
  v6 = (a2 + 16);
  v5 = *(a2 + 2);
  *(this + 6) = *(a2 + 6);
  *(this + 2) = v5;
  *(this + 36) = 0;
  *(this + 28) = 0;
  *(this + 11) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2210BBC64(this + 8, v7);
    v8 = *(this + 5);
    *(this + 8) += *(a2 + 8);
    memcpy(v8, *(a2 + 5), 4 * *(a2 + 8));
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  v9 = *(a2 + 12);
  if (v9)
  {
    sub_2210BBC64(this + 12, v9);
    v10 = *(this + 7);
    *(this + 12) += *(a2 + 12);
    memcpy(v10, *(a2 + 7), 4 * *(a2 + 12));
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  v11 = *(a2 + 16);
  if (v11)
  {
    sub_2210BBC64(this + 16, v11);
    v12 = *(this + 9);
    *(this + 16) += *(a2 + 16);
    memcpy(v12, *(a2 + 9), 4 * *(a2 + 16));
  }

  v13 = *(a2 + 1);
  if (v13)
  {
    sub_22156734C(v4, (v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v14 = MEMORY[0x277D80A90];
  *(this + 10) = MEMORY[0x277D80A90];
  v15 = *v6;
  if (*v6)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v15 = *v6;
  }

  *(this + 11) = v14;
  if ((v15 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v15 = *v6;
  }

  *(this + 12) = v14;
  if ((v15 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v15 = *v6;
  }

  *(this + 13) = v14;
  if ((v15 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v15 = *v6;
  }

  if ((v15 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v15 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v15 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v15 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v15 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v15 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v15 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v15 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v15 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v15 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v15 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v15 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v15 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v15 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v15 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v15 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v15 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v15 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  if ((v15 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 32) = 0;
  if ((v15 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 33) = 0;
  if ((v15 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 34) = 0;
  if ((v15 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 35) = 0;
  if ((v15 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 36) = 0;
  if ((v15 & 0x8000000) != 0)
  {
    operator new();
  }

  *(this + 37) = 0;
  if ((v15 & 0x10000000) != 0)
  {
    operator new();
  }

  *(this + 38) = 0;
  if ((v15 & 0x20000000) != 0)
  {
    operator new();
  }

  *(this + 39) = 0;
  if ((v15 & 0x40000000) != 0)
  {
    operator new();
  }

  *(this + 40) = 0;
  if (v15 < 0)
  {
    operator new();
  }

  *(this + 41) = 0;
  v16 = *(a2 + 5);
  if (v16)
  {
    operator new();
  }

  *(this + 42) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 43) = 0;
  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(this + 44) = 0;
  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(this + 45) = 0;
  if ((v16 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 46) = 0;
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 47) = 0;
  if ((v16 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 48) = 0;
  if ((v16 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 49) = 0;
  if ((v16 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 50) = 0;
  if ((v16 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 51) = 0;
  if ((v16 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 52) = 0;
  if ((v16 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 53) = 0;
  if ((v16 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 54) = 0;
  if ((v16 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 55) = 0;
  if ((v16 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 56) = 0;
  if ((v16 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 57) = 0;
  if ((v16 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 58) = 0;
  if ((v16 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 59) = 0;
  if ((v16 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 60) = 0;
  if ((v16 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 61) = 0;
  if ((v16 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 62) = 0;
  if ((v16 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 63) = 0;
  if ((v16 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 64) = 0;
  if ((v16 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 65) = 0;
  if ((v16 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 66) = 0;
  if ((v16 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 67) = 0;
  if ((v16 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 68) = 0;
  *(this + 552) = *(a2 + 552);
  v17 = *(a2 + 568);
  v18 = *(a2 + 584);
  v19 = *(a2 + 600);
  *(this + 613) = *(a2 + 613);
  *(this + 584) = v18;
  *(this + 600) = v19;
  *(this + 568) = v17;
  return this;
}

void sub_2215FC1D0(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C407D3F2757);
  if (*(v1 + 68) >= 1)
  {
    v4 = *(v1 + 72);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v7 = *(v1 + 56);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 36) >= 1)
  {
    v10 = *(v1 + 40);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  _Unwind_Resume(a1);
}