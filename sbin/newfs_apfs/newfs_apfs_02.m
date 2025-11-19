uint64_t sub_10001A8AC(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v137 = 0xAAAAAAAAAAAAAAAALL;
  *v138 = 0;
  v135 = 0;
  v136 = 0xAAAAAAAAAAAAAAAALL;
  memset(uu, 170, sizeof(uu));
  v133 = 0;
  v134 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  uuid_clear(uu);
  *a5 = 0;
  if (a2)
  {
    v10 = a1;
    v11 = *(a1[47] + 36);
    if (strnlen((a2 + 56), 0x100uLL) > 0xFF)
    {
      return 63;
    }

    if (!sub_100018DF0(a2 + 56, 0, 0, 0, 0))
    {
      return 92;
    }

    v125 = a4;
    v29 = *(a2 + 32);
    v24 = *(a2 + 36);
    v28 = *(a2 + 40);
    v27 = *(a2 + 44);
    v26 = *(a2 + 492);
    v36 = *(a2 + 16);
    v37 = *(a2 + 24);
    if (v36 % v11)
    {
      v38 = v36 / v11 + 1;
    }

    else
    {
      v38 = v36 / v11;
    }

    v39 = v37 / v11;
    if (v37 % v11)
    {
      ++v39;
    }

    v126 = v39;
    v127 = v38;
    v25 = *(a2 + 48);
    v40 = *(a2 + 52);
    v13 = v40 & 1;
    v41 = *(a2 + 54);
    v23 = vand_s8(vshl_u16(vdup_n_s16(v40), 0xFFFEFFF7FFFAFFFCLL), 0x3000100010003);
    v15 = *(a2 + 444);
    v16 = *(a2 + 448);
    v129 = (v40 >> 7) & 1;
    v17 = (v40 >> 8) & 1;
    v19 = (a3 >> 5) & 1;
    v21 = (a3 >> 8) & 1;
    v18 = (v40 >> 10) & 1;
    v124 = a3;
    v20 = (a3 & 0x880) == 2176;
    v22 = (a3 & 0x880) == 128;
    v42 = (v25 == 1) << 6;
    if (!v25)
    {
      v42 = 1;
    }

    if (*(a2 + 54))
    {
      v43 = 1;
    }

    else
    {
      v43 = v25 == -1;
    }

    if (v43)
    {
      v14 = *(a2 + 54);
    }

    else
    {
      v14 = v42;
    }

    if (v14 == 64 || v14 == 1)
    {
      a1 = v10;
      if (*(a2 + 452) > 0)
      {
        return 45;
      }
    }

    else
    {
      a1 = v10;
    }
  }

  else
  {
    v124 = a3;
    v125 = a4;
    v126 = 0;
    v127 = 0;
    v13 = 0;
    v14 = 0;
    v129 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0x8000000000000;
    v24 = 2;
    v25 = -1;
    v26 = 1073741826;
    v27 = 1073741826;
    v28 = 1073741826;
    v29 = 1073741826;
  }

  v128 = v23;
  v122 = v17;
  v123 = v18;
  v120 = v19;
  v121 = v29;
  v118 = v20;
  v119 = v21;
  v116 = v15;
  v117 = v22;
  v115 = v16;
  v114 = a5;
  v30 = v26;
  v31 = (v13 | v23.u8[4]) != 0;
  v32 = sub_10001A2F0(a1, 0, v14, v25, v31);
  v33 = a1;
  v12 = v32;
  if (v32)
  {
    return v12;
  }

  v34 = v33;
  if (v24 != 2)
  {
    sub_100012128("%s:%d: %s fs tree type 0x%x invalid, using virtual btree instead\n", "apfs_newfs", 31801, (v33[48] + 212), v24);
  }

  if (v28 != 1073741826)
  {
    sub_100012128("%s:%d: %s extentref tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31805, (*(v34 + 384) + 212), v28);
  }

  if (v27 != 1073741826)
  {
    sub_100012128("%s:%d: %s snapmeta tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31809, (*(v34 + 384) + 212), v27);
  }

  v35 = v128.i8[0];
  if (v129 && v30 != 1073741826)
  {
    sub_100012128("%s:%d: %s fext tree type 0x%x invalid, using physical btree instead\n", "apfs_newfs", 31814, (*(v34 + 384) + 212), v30);
    v35 = v128.i8[0];
    v30 = 1073741826;
  }

  if (v31 & *(v34 + 629))
  {
    return 1;
  }

  if (v35)
  {
    return 22;
  }

  if (v14 == 704 && (!v127 || v127 != v126))
  {
    sub_100012178("%s:%d: %s bad overprovisioning volume configuration: reserve %lld quota %lld\n", "apfs_newfs", 31844, (*(v34 + 384) + 212), v127, v126);
    return 22;
  }

  v45 = *(v34 + 376);
  if (v25 == -1)
  {
    if (v14 == 64)
    {
      v47 = 1;
    }

    else
    {
      v47 = -1;
    }

    if (v14 == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47;
    }

    if (v48 == -1)
    {
      v46 = *(v45 + 180);
      if (v46 < 3)
      {
        v25 = 2;
      }

      else
      {
        v49 = (v45 + 200);
        v50 = 2;
        while (*v49++)
        {
          if (v46 == ++v50)
          {
            v25 = *(v45 + 180);
            goto LABEL_63;
          }
        }

        v25 = v50;
LABEL_63:
        if ((v25 & 0x80000000) != 0)
        {
LABEL_66:
          if (v48 != -1)
          {
            v25 = v48;
            goto LABEL_68;
          }

          if (!v46)
          {
            v25 = 0;
            goto LABEL_117;
          }

          v55 = 0;
          while (*(v45 + 184 + 8 * v55))
          {
            if (v46 == ++v55)
            {
              v25 = v46;
              goto LABEL_45;
            }
          }

          v25 = v55;
          goto LABEL_45;
        }
      }
    }

    else
    {
      LODWORD(v46) = *(v45 + 180);
      v25 = v48;
    }

    if (v25 < v46 && !*(v45 + 8 * v25 + 184))
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_45:
  if ((v25 & 0x80000000) != 0)
  {
LABEL_117:
    sub_100012178("%s:%d: %s no space for a new file system (slot %d, max %d)\n", "apfs_newfs", 31879, (*(v34 + 384) + 212), v25, *(v45 + 180));
    return 34;
  }

  LODWORD(v46) = *(v45 + 180);
LABEL_68:
  if (v25 >= v46)
  {
    goto LABEL_117;
  }

  if (*(v45 + 8 * v25 + 184))
  {
    sub_100012178("%s:%d: %s existing file system (slot %d)\n", "apfs_newfs", 31882, (*(v34 + 384) + 212), v25);
    return 16;
  }

  v52 = v25;
  v53 = sub_10004E8AC(v34, &v135);
  v54 = v34;
  if (v53)
  {
    v12 = v53;
    sub_100012178("%s:%d: %s tx_enter() failed: %d\n", "apfs_newfs", 31888, (v54[48] + 212), v53);
    return v12;
  }

  v56 = sub_100038AF0(*(v34 + 392), 0, 0, &xmmword_10006A8A8, 0, 0, v135, v138);
  if (v56)
  {
    v12 = v56;
    v111 = v54[48] + 212;
    sub_100012178("%s:%d: %s failed to create fs: %d\n");
LABEL_80:
    sub_100012178("%s:%d: %s fs creation failed: %d ... cleaning up...\n", "apfs_newfs", 32403, (v54[48] + 212), v12);
    v136 = 0;
    if (*v138)
    {
      if (v132)
      {
        v57 = sub_10002822C(v132, v135, &v136);
        if (v57)
        {
          sub_100012178("%s:%d: %s failed to delete fs root tree after fs creation failed: %d\n", "apfs_newfs", 32415, (*v138 + 4040), v57);
        }

        sub_100037058(v132);
      }

      if (v133)
      {
        v58 = sub_10002822C(v133, v135, &v136);
        if (v58)
        {
          sub_100012178("%s:%d: %s failed to delete fs snap metadata tree after fs creation failed: %d\n", "apfs_newfs", 32431, (*v138 + 4040), v58);
        }

        sub_100037058(v133);
      }

      if (v134)
      {
        v59 = sub_10002822C(v134, v135, &v136);
        if (v59)
        {
          sub_100012178("%s:%d: %s failed to delete fs extentref tree after fs creation failed: %d\n", "apfs_newfs", 32438, (*v138 + 4040), v59);
        }

        sub_100037058(v134);
      }

      if (v131)
      {
        v60 = sub_1000019C8(*v138, v30, 5, v135, v131, &v136);
        if (v60)
        {
          sub_100012178("%s:%d: %s failed to delete fs fext tree after fs creation failed: %d\n", "apfs_newfs", 32446, (*v138 + 4040), v60);
        }
      }

      if (v130)
      {
        v61 = sub_10002822C(v130, v135, &v136);
        if (v61)
        {
          sub_100012178("%s:%d: %s failed to delete fs clonegroup tree after fs creation failed: %d\n", "apfs_newfs", 32461, (*v138 + 4040), v61);
        }

        sub_100037058(v130);
      }

      v62 = *v138;
      v63 = *(*(*v138 + 376) + 128);
      if (v63)
      {
        v64 = sub_10003F794(*v138, v63, v135, &v136);
        v62 = *v138;
        if (v64)
        {
          sub_100012178("%s:%d: %s failed to destroy omap after fs creation failed: %d\n", "apfs_newfs", 32469, (*v138 + 4040), v64);
          v62 = *v138;
        }
      }

      if (*(v62 + 3592))
      {
        sub_100037058(*(v62 + 3592));
        v62 = *v138;
      }

      if (*(v62 + 3568))
      {
        sub_100037058(*(v62 + 3568));
        v62 = *v138;
      }

      sub_1000127AC(v62, *(v62 + 488));
      sub_1000127AC(v65, *(*v138 + 496));
    }

    if (v135)
    {
      sub_10004E8BC(v54, v135, 0);
      v135 = 0;
    }

    if (v136)
    {
      v66 = sub_100010650(v54, v136);
      if (v66)
      {
        sub_100012178("%s:%d: %s failed to wait on reaper: %d\n", "apfs_newfs", 32494, (v54[48] + 212), v66);
      }
    }

    if (*v138)
    {
      v67 = sub_10004E8AC(v54, &v135);
      if (v67)
      {
        sub_100012178("%s:%d: %s Couldn't reopen transaction to clean up: %d\n", "apfs_newfs", 32502, (v54[48] + 212), v67);
      }

      else
      {
        sub_10004BFAC(v54, *v138, v135);
        sub_100039E90(*v138, v135);
        sub_10004E8BC(v54, v135, 0);
        v135 = 0;
      }

      sub_100037058(*v138);
    }

    return v12;
  }

  v113 = v34;
  v69 = !v31;
  v70 = *v138;
  if (!v125)
  {
    v69 = 1;
  }

  if ((v69 & 1) == 0)
  {
    *(*v138 + 1144) = v125;
  }

  *(*(v70 + 376) + 36) = v25;
  sub_10002D9EC(v70);
  v71 = *(*v138 + 376);
  *(v71 + 964) = v14;
  uuid_copy((v71 + 1008), uu);
  v72 = *v138;
  *(*v138 + 3928) = 0;
  *(v72 + 3941) = (v124 & 8) != 0;
  sub_100004AE8(*(v72 + 376), (a2 + 456), v135);
  v54 = v34;
  if (a2 && !uuid_is_null(a2))
  {
    uuid_copy((*(*v138 + 376) + 240), a2);
    v76 = *v138;
    v77 = *(*v138 + 376);
    if (!strncmp((v77 + 240), "apfsuuid", 8uLL))
    {
      *(v77 + 255) = v52;
      v77 = *(v76 + 376);
    }

    v78 = sub_10001BB4C(v34, (v77 + 240));
    if (v78)
    {
      v12 = v78;
      *&out[29] = 0xAAAAAAAAAAAAAAAALL;
      *&v79 = 0xAAAAAAAAAAAAAAAALL;
      *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *out = v79;
      *&out[16] = v79;
      uuid_unparse(a2, out);
      v54 = v113;
      v112 = *(v113 + 384) + 212;
      sub_100012178("%s:%d: %s UUID %s is not allowed, error %d\n");
      goto LABEL_80;
    }
  }

  else
  {
    if (v14 == 768)
    {
      sub_100012178("%s:%d: %s this volume requires valid UUID option specified\n", "apfs_newfs", 31926, (*(v34 + 384) + 212));
      v12 = 0;
      goto LABEL_80;
    }

    uuid_generate((*(*v138 + 376) + 240));
  }

  v73 = *v138;
  v74 = *(*v138 + 376);
  *(v74 + 176) = 16;
  *(v74 + 960) = 3;
  *(v74 + 966) = 0;
  if (v122)
  {
    *(v74 + 40) |= 0x10uLL;
  }

  if (v128.u8[6] == 1)
  {
    v75 = v128.u8[6];
  }

  else
  {
    if (v128.u8[6] != 2)
    {
      goto LABEL_142;
    }

    v75 = 8;
  }

  *(v74 + 56) |= v75;
LABEL_142:
  if (v129)
  {
    *(v74 + 56) |= 0x20uLL;
  }

  if (v123)
  {
    *(v74 + 56) |= 0x80uLL;
    sub_100012088("%s:%d: %s allocated unwritten file extents are now supported\n", "apfs_newfs", 31997, (v73 + 4040));
    v73 = *v138;
    v74 = *(*v138 + 376);
  }

  *(v74 + 40) |= 2uLL;
  v12 = sub_10004BB80(v34, v73, v127, v126, v135);
  if (v12)
  {
    sub_100012178("%s:%d: %s Could not set fs bounds for guarantee %lld and quota %lld: %d\n");
LABEL_162:
    v54 = v113;
    goto LABEL_80;
  }

  if (v31)
  {
    sub_10002EBDC(*v138, 1);
    v80 = *(*v138 + 376);
    v81 = sub_10002F1C4();
    if (v81)
    {
      v12 = v81;
      sub_100012178("%s:%d: %s unable to create/store metadata crypto (%d)\n");
      goto LABEL_162;
    }
  }

  else
  {
    sub_100012088("%s:%d: %s FS will NOT be encrypted.\n", "apfs_newfs", 32033, (*v138 + 4040));
    *(*(*v138 + 376) + 264) |= 1uLL;
    sub_10002F1C4();
    sub_10002F1CC(*v138 + 536);
  }

  v82 = *v138;
  v83 = *(*v138 + 376);
  *(v83 + 116) = 0x4000000200000002;
  *(v83 + 124) = 1073741826;
  *(v83 + 1104) = 2;
  v84 = sub_10003F5A4(v82, 0x40000000u, 0, v121, v135, &v137);
  if (v84)
  {
    v12 = v84;
    sub_100012178("%s:%d: %s fs omap initialization failed: %d\n");
    goto LABEL_162;
  }

  v85 = sub_100038018(v137);
  *(*(*v138 + 376) + 128) = v85;
  sub_100037058(v137);
  v141 = xmmword_10006C5E8;
  v142 = unk_10006C5F8;
  v143 = xmmword_10006C608;
  v144 = unk_10006C618;
  v139 = off_10006C5C8;
  v140 = unk_10006C5D8;
  if (v129)
  {
    v12 = sub_1000012EC(*v138, *(a2 + 488), v135, 0);
    v54 = v113;
    if (v12)
    {
      goto LABEL_80;
    }

    HIDWORD(v140) = sub_100000FC8(*(a2 + 488));
    DWORD2(v140) = *(a2 + 488);
    DWORD1(v140) |= 0x180u;
  }

  if (*(*(*v138 + 376) + 116) != 2)
  {
    v12 = 22;
    goto LABEL_161;
  }

  v86 = sub_100026978(*v138, *(*(*v138 + 376) + 116) & 0xFFFF0000, 0, 0, 0, &v139, v135, &v132);
  if (v86)
  {
    v12 = v86;
LABEL_161:
    sub_100012178("%s:%d: %s fs root tree creation failed: %d\n");
    goto LABEL_162;
  }

  v87 = sub_100038018(v132);
  v88 = *v138;
  v89 = *(*v138 + 376);
  *(v89 + 136) = v87;
  if (v120)
  {
    *(v89 + 56) |= 0x200uLL;
    sub_100012088("%s:%d: %s expanded records are now supported\n", "apfs_newfs", 32150, (v88 + 4040));
    v88 = *v138;
    if (v118)
    {
      *(*(*v138 + 376) + 48) |= 4uLL;
      sub_100012088("%s:%d: %s clone mapping is enabled for this volume\n", "apfs_newfs", 32154, (v88 + 4040));
      v88 = *v138;
    }
  }

  if (v119)
  {
    *(*(v88 + 376) + 48) |= 8uLL;
    sub_100012088("%s:%d: %s attribution tags are supported on this volume\n", "apfs_newfs", 32160, (v88 + 4040));
    v88 = *v138;
  }

  v90 = *(*(v88 + 376) + 120);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = sub_100013DC0;
  *&out[16] = 0x420000000FLL;
  if (v90 != 2)
  {
    v12 = 22;
    goto LABEL_172;
  }

  v91 = sub_100026978(v88, v90 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v135, &v134);
  if (v91)
  {
    v12 = v91;
LABEL_172:
    sub_100012178("%s:%d: %s fs extentref tree creation failed: %d\n");
    goto LABEL_162;
  }

  v92 = sub_100038018(v134);
  v93 = *v138;
  v94 = *(*v138 + 376);
  *(v94 + 144) = v92;
  v95 = *(v94 + 124);
  *&out[8] = 0;
  memset(&out[24], 0, 72);
  *out = sub_100013DC0;
  *&out[16] = 0x4200000010;
  if (v95 != 2)
  {
    v12 = 22;
    goto LABEL_177;
  }

  v96 = sub_100026978(v93, v95 & 0xBFFF0000 | 0x40000000, 0, 0, 0, out, v135, &v133);
  if (v96)
  {
    v12 = v96;
LABEL_177:
    sub_100012178("%s:%d: %s fs snapshot metadata tree creation failed: %d\n");
    goto LABEL_162;
  }

  v97 = sub_100038018(v133);
  v98 = *v138;
  *(*(*v138 + 376) + 152) = v97;
  if (v129)
  {
    v99 = sub_100001854(v98, v30, 5, v135, &v131);
    if (v99)
    {
      v12 = v99;
      sub_100012178("%s:%d: %s fs fext tree creation failed: %d\n");
      goto LABEL_162;
    }

    v98 = *v138;
    *(*(*v138 + 376) + 1032) = v131;
  }

  if ((v120 & v117) == 1)
  {
    memset(&out[32], 0, 64);
    *out = off_10006C628;
    *&out[16] = unk_10006C638;
    v100 = sub_100026978(v98, 0, 0, 0, 0, out, v135, &v130);
    if (v100)
    {
      v12 = v100;
      v101 = (*v138 + 4040);
      v102 = strerror(v100);
      sub_100012178("%s:%d: %s clonegroup tree creation failed: %s\n", "apfs_newfs", 32235, v101, v102);
      goto LABEL_162;
    }

    v103 = sub_100038018(v130);
    v104 = *v138;
    v105 = *(*v138 + 376);
    *(v105 + 1112) = v103;
    *(v105 + 1108) |= 1u;
    *(v105 + 1136) = 1024;
    *(v105 + 48) |= 4uLL;
    sub_100012088("%s:%d: %s clonegroups enabled for this volume\n", "apfs_newfs", 32244, (v104 + 4040));
    v98 = *v138;
  }

  v106 = sub_100014578(v98, 1, 0, "root", 0, 2, 0x41EDu, v116, v115, 0, -1, 0, 0, (v98 + 488), v135, 0, -1);
  if (v106)
  {
    v12 = v106;
    sub_100012178("%s:%d: %s fs root dir creation failed: %d\n");
    goto LABEL_162;
  }

  v107 = *(*v138 + 376);
  __strlcpy_chk();
  v12 = sub_100014578(*v138, 1, 0, "private-dir", 0, 3, 0x41A4u, 0, 0, 0, -1, 0, 0, (*v138 + 496), v135, 0, -1);
  if (v12)
  {
    sub_100012178("%s:%d: %s fs private dir creation failed: %d\n");
    goto LABEL_162;
  }

  *(*(v113 + 376) + 8 * v52 + 184) = sub_100038018(*v138);
  v108 = *(*v138 + 376);
  v108[140] = v135;
  v108[141] = (v108[7] >> 9) & 1 | 0xC;
  v109 = sub_100031B28();
  v110 = *v138;
  *(*(*v138 + 376) + 256) = v109;
  sub_100019634(v110, v135);
  sub_100037058(v133);
  sub_100037058(v134);
  sub_100037058(v132);
  if (v130)
  {
    sub_100037058(v130);
  }

  *(v113 + 656) += (*(*(*v138 + 376) + 48) >> 1) & 1;
  sub_10004E8BC(v113, v135, 5);
  v12 = 0;
  *v114 = *v138;
  return v12;
}

uint64_t sub_10001BB4C(void *a1, const unsigned __int8 *a2)
{
  v2 = a1[47];
  if (*(v2 + 180))
  {
    for (i = 0; i < *(v2 + 180); ++i)
    {
      v13 = 0;
      v6 = *(v2 + 8 * i + 184);
      if (v6)
      {
        v7 = sub_10003A1E8(a1[49], 0, v6, &xmmword_10006A8A8, 0, 0, 0, 0, &v13);
        if (v7)
        {
          v9 = v7;
          v10 = (a1[48] + 212);
          v11 = strerror(v7);
          sub_100012178("%s:%d: %s Failed to get fsys oid %lld - %s\n", "apfs_is_volume_uuid_allowed", 31297, v10, v6, v11);
          return v9;
        }

        v8 = uuid_compare(a2, (v13[47] + 240));
        sub_100037058(v13);
        if (!v8)
        {
          return 17;
        }

        v2 = a1[47];
      }
    }
  }

  return 0;
}

uint64_t sub_10001BC68(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (*(a1 + 504))
  {
    v7 = *(a1 + 504);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_10004A66C(v7, 0, a3, a4, a2);
  v9 = v8;
  if (v8)
  {
    v10 = strerror(v8);
    sub_100012178("%s:%d: %s spaceman_free failed for LBA %llx, size %llu : %d %s\n", "apfs_free_data_blocks", 32582, (v7 + 4040), a3, a4, v9, v10);
  }

  else
  {
    atomic_fetch_add_explicit((*(v7 + 376) + 232), a4, memory_order_relaxed);
    sub_100019634(v7, a2);
  }

  return v9;
}

uint64_t sub_10001BD20(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264);
  if (v2)
  {
    LOBYTE(v2) = *(*(a1 + 376) + 976) == 0;
  }

  return v2 & 1;
}

uint64_t sub_10001BD50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  if (a2 + 1) < 7 && ((0x63u >> (a2 + 1)))
  {
    return 0;
  }

  v6 = *(a1 + 504);
  if (!v6)
  {
    v6 = a1;
  }

  if ((*(*(v6 + 376) + 264) & 9) != 0)
  {
    panic("assertion failed: %s", "fs_is_content_protected(apfs)");
  }

  LODWORD(v10) = 2622471;
  *(&v10 + 1) = a2;
  LODWORD(v11) = -1;
  v7 = sub_10001689C(a1, 1, &v10, a3);
  if (!v7)
  {
    if (v11 == 1)
    {
LABEL_12:
      BYTE1(v10) = 3;
      return sub_100016BEC(a1, 1, &v10, a3);
    }

    if (!v11)
    {
      sub_100012088("%s:%d: %s danger - crypto id %lld had refcnt %d\n", "icp_dec_ref", 34834, (a1 + 4040), *(&v10 + 1), 0);
      LODWORD(v11) = 1;
      goto LABEL_12;
    }

    return 0;
  }

  v8 = v7;
  sub_100012088("%s:%d: %s was NOT able to update/decrement crypto state %lld, err = %d\n", "icp_dec_ref", 34828, (a1 + 4040), a2, v7);
  return v8;
}

BOOL sub_10001BEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  if (a3 >= 64)
  {
    v6 = (a1 + 8 * v4 + 8);
    while (-1 << v5 <= (*(v6 - 1) & (-1 << v5)) && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> -v5) & ~*v6) == 0))
    {
      ++v4;
      v7 = a3 - 64;
      ++v6;
      v8 = a3 <= 127;
      a3 -= 64;
      if (v8)
      {
        if (v7)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    return 0;
  }

  v7 = a3;
  if (!a3)
  {
    return 1;
  }

LABEL_14:
  v9 = 64 - v5;
  v10 = ~(-1 << v7);
  v11 = v10 << v5;
  v12 = v10 >> (64 - v5);
  if (!v5)
  {
    v12 = 0;
  }

  v13 = (a1 + 8 * v4);
  return (v11 & ~((-1 << v5) & *v13)) == 0 && (v7 <= v9 || !v12 || (v12 & ~((0xFFFFFFFFFFFFFFFFLL >> v9) & v13[1])) == 0);
}

uint64_t sub_10001BFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 >= 64)
  {
    v7 = (a1 + 8 * v4 + 8);
    while (((-1 << v5) & *(v7 - 1)) == 0 && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> v6) & *v7) == 0))
    {
      ++v4;
      v8 = a3 - 64;
      ++v7;
      v9 = a3 <= 127;
      a3 -= 64;
      if (v9)
      {
        if (v8)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = a3;
  if (a3)
  {
LABEL_11:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (a1 + 8 * v4);
    if ((v11 & (-1 << v5) & *v13) != 0 || v8 > v6 && v12 && ((0xFFFFFFFFFFFFFFFFLL >> v6) & v12 & v13[1]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10001C098@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) = *(v7 - 1) & ~(-1 << v5) | (-1 << v5);
    if (v5)
    {
      *v7 |= 0xFFFFFFFFFFFFFFFFLL >> v6;
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_10:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (result + 8 * v4);
    *v13 = *v13 & ~v11 | v11 & (-1 << v5);
    if (v8 > v6)
    {
      if (v12)
      {
        v13[1] = v13[1] & ~v12 | v12 & (0xFFFFFFFFFFFFFFFFLL >> v6);
      }
    }
  }

  return result;
}

uint64_t sub_10001C18C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) &= ~(-1 << v5);
    if (v5)
    {
      *v7 &= ~(0xFFFFFFFFFFFFFFFFLL >> v6);
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_13:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = (result + 8 * v4);
    *v14 &= ~v11;
    if (v8 > v6)
    {
      if (v13)
      {
        v14[1] &= ~v13;
      }
    }
  }

  return result;
}

uint64_t sub_10001C25C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  v6 = (a2 + 8 * (a3 / 64));
  while (1)
  {
    v7 = a3 & 0x3F;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 0x3F);
    }

    v8 = 64 - v7;
    v10 = *v6++;
    v9 = v10;
    if (64 - v7 >= a4)
    {
      v8 = a4;
    }

    v11 = __clz(__rbit64((v9 >> v7) ^ v5));
    if (v8 > v11)
    {
      break;
    }

    a3 += v8;
    v12 = a4 <= v8;
    a4 -= v8;
    if (v12)
    {
      return 0;
    }
  }

  *a5 = v11 + a3;
  return 1;
}

uint64_t sub_10001C2E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a3 + a2;
  v5 = a3 + a2 - 1;
  if (a3 + a2 < 1)
  {
    v5 = a3 + a2 + 62;
  }

  v6 = (a1 + 8 * (v5 >> 6));
  while (1)
  {
    if (v4 <= 0)
    {
      v7 = -(-v4 & 0x3F);
    }

    else
    {
      v7 = v4 & 0x3F;
    }

    v8 = 64 - v7;
    if (!v7)
    {
      v7 = 64;
      v8 = 0;
    }

    if (v7 >= a3)
    {
      v7 = a3;
    }

    v9 = *v6--;
    v10 = __clz(v9 << v8);
    if (v7 > v10)
    {
      break;
    }

    v4 -= v7;
    v11 = a3 <= v7;
    a3 -= v7;
    if (v11)
    {
      return 0;
    }
  }

  *a4 = v4 + ~v10;
  return 1;
}

BOOL sub_10001C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, int a7)
{
  v12 = 0;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v34 = a4 - 1;
  v13 = -1;
  while (1)
  {
    if (v12 >= a2)
    {
      goto LABEL_40;
    }

    v14 = a4 - a3;
    if (a4 - a3 < 1)
    {
      goto LABEL_40;
    }

    v15 = 8 * (a3 / 64);
    while (1)
    {
      v16 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v16 = -(-a3 & 0x3F);
      }

      v17 = 64 - v16;
      if (64 - v16 >= v14)
      {
        v17 = v14;
      }

      v18 = __clz(__rbit64(~(*(a1 + v15) >> v16)));
      if (v17 > v18)
      {
        break;
      }

      a3 += v17;
      v15 += 8;
      v19 = v14 <= v17;
      v14 -= v17;
      if (v19)
      {
        goto LABEL_40;
      }
    }

    v20 = v18 + a3;
    if ((v18 + a3) >= a4 - v12)
    {
LABEL_40:
      v20 = v13;
      goto LABEL_41;
    }

    if (!v12)
    {
      v13 = v18 + a3;
      v12 = 1;
      if (v20 >= v34)
      {
        break;
      }
    }

    v35 = a7;
    v21 = v12 + 1;
    if (v12 + 1 < a4 - v20)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = a4 - v20;
    }

    if (sub_10001C2E0(a1, v20, v22, &v36))
    {
      v23 = v36;
      v20 = v13;
    }

    else
    {
      v24 = a2 - v21;
      if (a2 == v21)
      {
        v12 = a2;
        goto LABEL_41;
      }

      v25 = v21 + v20;
      if (v24 >= a4 - (v21 + v20))
      {
        v24 = a4 - (v21 + v20);
      }

      if (v24 < 1)
      {
LABEL_35:
        v12 = v24 + v21;
      }

      else
      {
        v26 = v25 + 63;
        if (v25 >= 0)
        {
          v26 = v21 + v20;
        }

        v27 = (a1 + 8 * (v26 >> 6));
        v28 = v24;
        while (1)
        {
          v29 = v25 & 0x3F;
          if (v25 <= 0)
          {
            v29 = -(-v25 & 0x3F);
          }

          v30 = 64 - v29;
          if (64 - v29 >= v28)
          {
            v30 = v28;
          }

          v31 = *v27++;
          v32 = __clz(__rbit64(v31 >> v29));
          if (v30 > v32)
          {
            break;
          }

          v25 += v30;
          v19 = v28 <= v30;
          v28 -= v30;
          if (v19)
          {
            goto LABEL_35;
          }
        }

        v12 = v32 + v25 - v20;
      }

      v23 = v12 + v20;
      v36 = v12 + v20;
      v13 = v20;
    }

    a7 = v35;
    a3 = v23 + 1;
    if (v35)
    {
      goto LABEL_41;
    }
  }

  v12 = 1;
LABEL_41:
  *a5 = v20;
  *a6 = v12;
  return v12 == a2;
}

unint64_t sub_10001C584(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
}

unint64_t sub_10001C6A8(unint64_t *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  result = sub_1000346C0(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(result) + result - 0xFFFFFFFF * ((((HIDWORD(result) + result) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  *a1 = v8 | (~(v8 + result + ((((v8 + result) * 0x200000003uLL) >> 64) >> 1)) << 32);
  return result;
}

unint64_t sub_10001C718(void *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  v7 = sub_1000346C0(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(v7) + v7 - 0xFFFFFFFF * ((((HIDWORD(v7) + v7) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  return (v8 | (~(v8 + v7 + ((((v8 + v7) * 0x200000003uLL) >> 64) >> 1)) << 32)) ^ *a1;
}

uint64_t sub_10001C78C(char a1, __int16 a2, int a3, int a4)
{
  if (a3 && a4)
  {
    v4 = (a3 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v4 = a3;
    }

    v5 = (a4 + 7) & 0xFFF8;
    if ((a1 & 0x40) != 0)
    {
      v5 = a4;
    }

    return (v5 + v4);
  }

  else
  {
    v6 = a2 - 160;
    if (a4)
    {
      v7 = (v6 >> 2) - 72;
      if ((a3 - 1) < v7)
      {
        v7 = a3;
      }

      if ((a1 & 0x40) == 0)
      {
        v7 = (v7 + 7) & 0xFFF8;
      }

      v8 = (a4 + 7) & 0xFFF8;
      if ((a1 & 0x40) != 0)
      {
        v8 = a4;
      }

      return (v7 + v8);
    }
  }

  return v6;
}

uint64_t sub_10001C800(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = *(a1 + 400);
  v5 = (v4 >> 9) & 0x3FFF;
  if (v5)
  {
    v6 = v5 == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return 22;
  }

  v8 = !(v4 >> 23) || (v4 >> 23) == a3;
  if (!v8 && (a3 != 65534 && a3 || (v4 & 4) == 0))
  {
    return 22;
  }

  v9 = (v4 >> 27) & 0x1F000;
  if (!v5 && a2 > (((v9 - 160) >> 2) - 72))
  {
    return 22;
  }

  if (a3 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = sub_10001C78C(v4, v9, v5, (v4 >> 23));
  v13 = (a2 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v13 = a2;
  }

  v14 = (v11 + 7) & 0xFFFFFFF8;
  if ((v4 & 0x40) != 0)
  {
    v14 = v11;
  }

  if (v13 + v14 <= v12)
  {
    return 0;
  }

  else
  {
    return 34;
  }
}

uint64_t sub_10001C8D4(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = sub_10003835C(a1);
  v6 = v5;
  v7 = *(v4 + 32);
  if ((v7 & 4) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  if (a2)
  {
    v9 = *(a2 + 8);
    v10 = (v9 >> 27) & 0x1F000;
    v11 = v5 != v10;
    v12 = *(a2 + 6);
    if (v12 != 61455)
    {
      v14 = v5 == v10 ? 1 : 2;
      if (*(v4 + 34) != v12)
      {
        v11 = v14;
      }
    }

    if (((v9 >> 7) & 1) != ((v7 >> 3) & 1))
    {
      ++v11;
    }

    if (((v9 >> 8) & 1) == ((v7 >> 4) & 1))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5 % *(*(*(*a1 + 392) + 376) + 36))
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v17 = sub_100036630(a1);
  v18 = *(v4 + 32);
  if (v17 != 2)
  {
    if ((v18 & 0x10) == 0 && *(v4 + 24) != 3)
    {
      ++v16;
    }

    if (v18)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = v16;
    }

    if ((v18 & 2) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    if (*(v4 + 34))
    {
      ++v19;
    }

    goto LABEL_37;
  }

  if ((v18 & 0x10) == 0 && *(v4 + 24) != 2)
  {
    ++v16;
  }

  if ((v18 & 1) == 0)
  {
    v19 = v16 + 1;
    if ((v18 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v38 = v4 + v6;
  v40 = *(v38 - 32);
  if (v6 <= 0x10000 && *(v38 - 36) == v6)
  {
    v42 = v16;
  }

  else
  {
    v42 = v16 + 1;
  }

  if (v40 > (((v6 - 160) >> 2) - 72))
  {
    ++v42;
  }

  if (v6 - (v40 + v8) - 96 > *(v38 - 28))
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 + 1;
  }

  v39 = (v38 - 40);
  v44 = vld1_dup_f32(v39);
  v45 = veor_s8(vceqz_s32(vand_s8(v44, 0x8000000100)), vceqz_s32(vand_s8(vdup_n_s32(v18), 0x800000010)));
  v19 = v43 - v45.i8[4] - v45.i8[0];
  if ((v18 & 2) != 0)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (v18)
  {
    v20 = -96;
  }

  else
  {
    v20 = -56;
  }

  v21 = v20 + v6;
  if (*(v4 + 40))
  {
    ++v19;
  }

  v22 = *(v4 + 42);
  if (v21 < v22)
  {
    ++v19;
  }

  if (((v8 - 1) & v22) != 0)
  {
    ++v19;
  }

  if ((v7 & 4) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  if (*(v4 + 36) > v22 >> v23)
  {
    ++v19;
  }

  v24 = v21 - v22;
  v25 = *(v4 + 44);
  v26 = v24 >= v25;
  v27 = v24 - v25;
  if (!v26)
  {
    ++v19;
  }

  if (!(v19 | (v27 < *(v4 + 46))))
  {
    return 0;
  }

  v28 = *(*a1 + 392);
  if (v28)
  {
    v29 = sub_10000E064(v28);
    v30 = *(*(*a1 + 392) + 384) + 212;
    sub_100036630(a1);
    sub_10003834C(a1);
    sub_100038018(a1);
    sub_1000121C8(v29, "%s:%d: %s BT node sanity check failed for node type %u subtype %u oid %llu with mask 0x%x!\n", v31, v32, v33, v34, v35, v36, "btree_node_sanity_check");
    v28 = *(*a1 + 392);
  }

  return sub_1000033FC(v28);
}

uint64_t sub_10001CC90(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  v4 = v3 & 0x1B;
  *(a1 + 32) = v4;
  *(a1 + 34) = *(a3 + 6);
  v5 = *(a3 + 8);
  if (((v5 >> 27) & 0x1F000) != a2)
  {
    return 22;
  }

  v6 = a2 - 56;
  v7 = (v5 >> 9) & 0x3FFF;
  v8 = (HIBYTE(v5) & 0x7F) + 8;
  v9 = (v5 >> 23);
  if ((v3 & 2) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  LOWORD(v11) = 64;
  if (v7 && v10)
  {
    v4 |= 4u;
    *(a1 + 32) = v4;
    v11 = (4 * (v6 / (v7 + v10 + 4))) & 0xFFFFFFF8;
  }

  v12 = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = v11;
  *(a1 + 44) = 0;
  if (v4)
  {
    LOWORD(v6) = a2 - 96;
  }

  *(a1 + 46) = v6 - v11;
  *(a1 + 48) = 0xFFFF0000FFFFLL;
  if (v4)
  {
    v12 = 0;
    v13 = (a1 + (a2 - 96));
    v13[14] = *(a3 + 8) & 0x1FF;
    v13[15] = a2;
    v13[16] = (*(a3 + 8) >> 9) & 0x3FFF;
    v13[17] = (*(a3 + 8) >> 23);
  }

  return v12;
}

uint64_t sub_10001CD80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *(a1[7] + 32);
  if ((v5 & 8) != 0)
  {
    return 45;
  }

  v8 = a1[1];
  if (v8)
  {
    v9 = sub_10003BC6C(a1[1], 0, a5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[1];
      if (v11)
      {
        v12 = (v11 + 4040);
      }

      else
      {
        v12 = (*(*(*a1 + 392) + 384) + 212);
      }

      v15 = sub_100038018(v8);
      sub_100012178("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "btree_node_reap", 399, v12, v15, v10);
    }

    if ((*(a1[7] + 32) & 2) != 0)
    {
      goto LABEL_34;
    }

    v14 = sub_100038018(v8);
    goto LABEL_13;
  }

  if ((v5 & 2) == 0)
  {
    v14 = 0;
LABEL_13:
    v16 = sub_100036628(a1);
    if (((*(a1[7] + 36) - 1) & 0x8000) == 0)
    {
      v17 = v16 & 0xFFFF0000 | 3;
      v18 = (*(a1[7] + 36) - 1);
      do
      {
        v27 = 0;
        if (sub_10001D838(a1, v18, &v27))
        {
          if (!a1[1])
          {
            v22 = *(*(*a1 + 392) + 384) + 212;
          }

          sub_100038018(a1);
          sub_100012178("%s:%d: %s error getting oid for child %d of 0x%llx: %d\n");
        }

        else
        {
          v19 = *a1;
          if (*(a1[7] + 34) < 2u)
          {
            v24 = sub_10003835C(a1);
            if (sub_100039EE8(v19, v17, v24, v14, v27, a5))
            {
              if (!a1[1])
              {
                v26 = *(*(*a1 + 392) + 384) + 212;
              }

              sub_100012178("%s:%d: %s error deleting child 0x%llx type 0x%x: %d\n");
            }
          }

          else
          {
            v20 = *(v19 + 392);
            v21 = sub_10003835C(a1);
            if (sub_10000FC54(v20, v17, v21, v14, v27, a5, 0))
            {
              if (!a1[1])
              {
                v25 = *(*(*a1 + 392) + 384) + 212;
              }

              sub_100012178("%s:%d: %s error adding child 0x%llx type 0x%x to reap list: %d\n");
            }
          }
        }
      }

      while (v18-- > 0);
    }
  }

LABEL_34:
  sub_100039E90(a1, a5);
  return 0;
}

uint64_t sub_10001D02C(void *a1, void *a2, uint64_t a3, unsigned int a4, __int16 a5, uint64_t a6, void *a7)
{
  v14 = a1[50];
  if ((v14 & 0x4000000000000000) != 0)
  {
    v15 = 96;
  }

  else
  {
    v15 = (HIBYTE(v14) & 0x3F) + 32;
  }

  __chkstk_darwin();
  v17 = v30 - v16;
  bzero(v30 - v16, v15);
  v31 = 0;
  v30[3] = 448;
  v18 = sub_100038354(a1) & 0xFC00;
  *v17 = 25987;
  *(v17 + 1) = v15;
  *(v17 + 8) = *(a1 + 25);
  *(v17 + 3) = a1[52];
  v19 = a1[50];
  if ((v19 & 0x80) != 0)
  {
    if ((v19 & 0x4000000000000000) != 0)
    {
      v20 = 64;
    }

    else
    {
      v20 = HIBYTE(v19) & 0x3F;
    }

    memcpy(v17 + 32, a2 + 1, v20);
  }

  *(v17 + 2) = 0;
  *(v17 + 3) = a5;
  v30[2] = sub_10003835C(a1);
  v21 = sub_100036628(a1) & 0xFFFF0000;
  v30[0] = v21 | 3;
  v30[1] = sub_10003834C(a1);
  v22 = 3;
  if ((v21 & 0x40000000) == 0)
  {
    v22 = 1;
  }

  if ((a4 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = v18 | v21 | v22;
  if ((a4 & 2) != 0)
  {
    v23 |= 4uLL;
  }

  if ((a4 & 0x40) != 0)
  {
    v24 = 0;
  }

  else
  {
    v24 = v30;
  }

  v25 = sub_10003A1E8(*a1, (a4 & 0x180 | (32 * ((a4 >> 2) & 1))) & 0xFFFFFFFEFFFFFFFFLL | ((((a4 & 0x200) >> 9) & 1) << 32) | v23, *a2, v24, v17, a1[1], a3, a6, &v31);
  if (v25)
  {
    v26 = v25;
    v27 = 0;
  }

  else
  {
    v27 = v31;
    if ((a4 & 0x104) == 4 && (*(v31 + 16) & 0x10) != 0)
    {
      if (a4)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      sub_10001D260(v31, v28 & ((a4 << 30) >> 31));
      v27 = 0;
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }
  }

  *a7 = v27;
  return v26;
}

void sub_10001D260(uint64_t *a1, char a2)
{
  v3 = a2 & 3;
  if (v3)
  {
    sub_10003C190(a1, v3);
  }

  sub_100037058(a1);
}

uint64_t sub_10001D2A4(uint64_t a1)
{
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_10001D2C0(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  v3 = v2[16];
  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 400);
    if ((v5 & 4) != 0)
    {
      if ((v3 & 2) != 0)
      {
        v9 = v5 >> 23;
      }

      else
      {
        LOWORD(v9) = (HIBYTE(v5) & 0x7F) + 8;
      }

      v10 = (((v5 >> 27) & 0x1F000) - 56) / (((v5 >> 9) & 0x3FFF) + v9 + 4);
      v11 = v2[18] + a2;
      if ((v10 & 0xFFFE) >= v11)
      {
        LOWORD(v4) = v10 & 0xFFFE;
      }

      else
      {
        LOWORD(v4) = (v11 + 7) & 0xFFF8;
      }
    }

    else
    {
      v6 = v2[21];
      v7 = (v3 & 4) == 0;
      v8 = 2;
      if (v7)
      {
        v8 = 3;
      }

      return (v6 >> v8);
    }
  }

  else
  {
    v4 = a2 + *(v2 + 9) + 7;
    if (v4 >= 8)
    {
      LOWORD(v4) = v4 & 0xFFF8;
    }

    else
    {
      LOWORD(v4) = 8;
    }
  }

  return v4;
}

uint64_t sub_10001D364(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 376);
  v3 = (v2 + 4 * a2);
  v4 = (v2 + 8 * a2);
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}

uint64_t sub_10001D388(uint64_t a1, unsigned int a2)
{
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    return (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    return *(*(a1 + 376) + 8 * a2 + 2);
  }
}

uint64_t sub_10001D3B0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 376);
  v3 = v2 + 4 * a2 + 2;
  v4 = v2 + 8 * a2 + 4;
  if ((*(*(a1 + 56) + 32) & 4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}

uint64_t sub_10001D3DC(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 56) + 32);
  v3 = *(a1 + 376);
  if ((v2 & 4) != 0)
  {
    v4 = (v3 + 4 * a2 + 2);
    v5 = *(a1 + 400) >> 23;
  }

  else
  {
    v5 = v3 + 8 * a2;
    v4 = (v5 + 4);
    LOWORD(v5) = *(v5 + 6);
  }

  v6 = *v4;
  if (v6 == 0xFFFF)
  {
    LOWORD(v5) = 0;
  }

  else if (v6 == 65534)
  {
    LOWORD(v5) = -2;
  }

  else if ((v2 & 2) == 0)
  {
    LOWORD(v5) = (*(a1 + 407) & 0x7F) + 8;
  }

  return v5;
}

uint64_t sub_10001D454(uint64_t a1, unsigned int a2, void *a3, _WORD *a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *(a1 + 56);
  if (*(v5 + 36) <= a2)
  {
    return 22;
  }

  v8 = *(v5 + 32);
  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  if ((v8 & 4) == 0)
  {
    v10 = (v9 + 8 * a2);
  }

  v11 = *v10;
  if ((v8 & 4) != 0)
  {
    v12 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v12 = *(v9 + 8 * a2 + 2);
  }

  result = sub_10001D518(a1, *v10, v12);
  if (!result)
  {
    *a3 = *(a1 + 384) + v11;
    result = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

uint64_t sub_10001D518(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 56) + 44);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (v5 == 0 || !v4)
  {
    return sub_1000033FC(*(*a1 + 392));
  }

  v6 = (a3 + 7) & 0x1FFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v6 = a3;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  else
  {
    return sub_1000033FC(*(*a1 + 392));
  }
}

uint64_t sub_10001D56C(void *a1, unsigned int a2, void *a3, __int16 *a4)
{
  v4 = a1[7];
  if (*(v4 + 36) <= a2)
  {
    return 22;
  }

  v8 = a1[47];
  v9 = v8 + 4 * a2 + 2;
  v10 = v8 + 8 * a2 + 4;
  if ((*(v4 + 32) & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = sub_10001D3DC(a1, a2);
  v14 = v13;
  result = sub_10001D644(a1, v12, v13);
  if (!result)
  {
    if (v12 >= 0xFFFE)
    {
      *a3 = 0;
      if (!a4)
      {
        return 0;
      }

      if (v12 == 0xFFFF)
      {
        v14 = 0;
      }

      else
      {
        v14 = -2;
      }
    }

    else
    {
      *a3 = a1[49] - v12;
      if (!a4)
      {
        return 0;
      }
    }

    result = 0;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_10001D644(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 0xFFFE)
  {
    if (!a3 || a3 == 65534)
    {
      goto LABEL_16;
    }

    v6 = sub_10003835C(a1);
    v7 = *(a1 + 56);
    v8 = (*(v7 + 32) & 1) != 0 ? -96 : -56;
    if (a2 > (v6 - *(v7 + 42) + v8 - (*(v7 + 46) + *(v7 + 44))))
    {
      goto LABEL_16;
    }

    v9 = (a3 + 7) & 0x1FFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v9 = a3;
    }

    if (v9 > a2)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((*(a1 + 400) & 4) != 0 && (!a3 || a3 == 65534))
  {
    return 0;
  }

LABEL_16:
  v10 = *(*a1 + 392);

  return sub_1000033FC(v10);
}

uint64_t sub_10001D758(uint64_t a1, unsigned int a2, void *a3)
{
  if ((*(*(a1 + 56) + 32) & 2) != 0)
  {
    return 22;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8 = -21846;
  result = sub_10001D56C(a1, a2, &v9, &v8);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 407) & 0x7F) + 8 == v8)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = sub_1000033FC(*(*a1 + 392));
    if (!a3)
    {
      return result;
    }
  }

  if (!result)
  {
    v6 = v9;
    v7 = *v9;
    *a3 = *v9;
    if ((*(*(a1 + 56) + 32) & 8) != 0)
    {
      *a3 = *(a1 + 408) + v7;
      memcpy(a3 + 1, v6 + 1, v8 - 8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001D838(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = *(a1 + 400);
  __chkstk_darwin(a1);
  v8 = (&v11 - v7);
  bzero(&v11 - v7, v9);
  result = sub_10001D758(a1, a2, v8);
  if (!result)
  {
    *a3 = *v8;
  }

  return result;
}

uint64_t sub_10001D908(void *a1, uint64_t a2, unint64_t *a3, int a4, void *a5, unsigned int a6, uint64_t a7)
{
  LODWORD(v10) = a4;
  v14 = a1[50];
  __chkstk_darwin(a1);
  v16 = (&v188 - v15);
  bzero(&v188 - v15, v17);
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  v218 = 0;
  v219 = 0;
  v217 = 0xAAAAAAAAAAAAAAAALL;
  v216 = 0;
  v212 = -1431655766;
  v211 = -1431655766;
  if (!a1[52])
  {
    return 22;
  }

  v215 = -21846;
  v214 = v10;
  if (a6 == 65534)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  v213 = v18;
  v19 = sub_10001C800(a1, v10, a6);
  if (v19)
  {
    v20 = v19;
    v21 = a1[1];
    if (v21)
    {
      v22 = (v21 + 4040);
      if ((v14 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = (v18 + 7) & 0x1FFF8;
      }

      v25 = (v14 >> 27) & 0x1F000;
      v26 = (v14 >> 23);
      v27 = (v14 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    else
    {
      v22 = (*(*(*a1 + 392) + 384) + 212);
      if ((v14 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = (v18 + 7) & 0x1FFF8;
      }

      v25 = (v14 >> 27) & 0x1F000;
      v26 = (v14 >> 23);
      v27 = (v14 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    v30 = sub_10001C78C(v14, v25, v27, v26);
    sub_100012178("%s:%d: %s request to insert entry %d (%d) %d (%d) = (%d), max size is %d key %d, error %d\n", "bt_insert", 3392, v22, v10, v23, v18, v24, v23 + v24, v30, v28, v20);
    return v20;
  }

  v203 = a6;
  sub_10003BBDC(a1, 2);
  v29 = sub_10003BC6C(a1, (*(a1 + 100) >> 3) & 2, a7);
  if (v29)
  {
    v20 = v29;
    sub_10003C190(a1, 2);
    return v20;
  }

  *&v220 = a1;
  sub_10003C894(a1);
  v32 = a1[49];
  v33 = *(v32 + 16);
  v34 = *(v32 + 20) >= v18;
  if (v33 < v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = v33;
  }

  if (v33 < v10)
  {
    v34 = 0;
  }

  v205 = v34;
  v36 = a1[54];
  v202 = a2;
  if (v36)
  {
    v37 = a1[53];
    if (v37)
    {
      v38 = a1[1];
      if (!v38)
      {
        v38 = *(*a1 + 392);
      }

      if (v37(v38, a3, v10))
      {
        v221 = v220;
        *&v220 = 0;
        v39 = a1[54];
        *v16 = v39;
        if (v39 != sub_100038018(a1) && !sub_10001D02C(a1, v16, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 61455, a7, &v220))
        {
          v40 = v35;
          v41 = v220;
          if ((*(*(v220 + 56) + 32) & 2) != 0 && a1[54] == *(v220 + 112))
          {
            v42 = sub_10001F6CC(v220, a3, v10, &v220 + 4, (&v220 | 0xA));
            v41 = v220;
            if (!v42)
            {
              if (WORD4(v220))
              {
                if (BYTE10(v220))
                {
                  v43 = (sub_10001F8A0)(v220);
                }

                else
                {
                  v43 = (sub_100020204)(v220);
                }

                if (!v43)
                {
                  v198 = 0;
                  v46 = 0;
                  v20 = 0;
                  v200 = 0;
                  v204 = 0;
                  goto LABEL_362;
                }

                v41 = v220;
              }
            }
          }

          sub_10003C190(v41, 2);
          sub_100037058(v41);
          v35 = v40;
        }

        v220 = v221;
        *&v221 = 0;
      }
    }
  }

  v44 = *(*(v220 + 56) + 32);
  v45 = sub_10001F6CC(v220, a3, v10, &v220 + 4, (&v220 | 0xA));
  v20 = v45;
  if ((v44 & 2) != 0)
  {
    if (v45)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v45)
    {
      goto LABEL_59;
    }

    if ((BYTE10(v220) & 1) == 0 && WORD4(v220))
    {
      --WORD4(v220);
    }
  }

  v192 = v35;
  v46 = v220;
  v53 = *(v220 + 56);
  v54 = *(v53 + 36);
  v55 = *(v53 + 32);
  v206 = (__PAIR64__(v54, v55 & 2) - 1) >> 32 == WORD4(v220);
  if (WORD4(v220) || (BYTE10(v220) & 1) != 0 || (v55 & 2) != 0)
  {
    v56 = 0;
    v46 = 0;
    v57 = v203;
    if ((v55 & 2) == 0)
    {
      goto LABEL_103;
    }

    v198 = 0;
    v204 = 0;
LABEL_89:
    v58 = v222;
    if (v222)
    {
      if ((v222 != a1 || v205) && v222 != v46 && v222 != v198)
      {
        sub_10003C190(v222, 2);
        sub_100037058(v58);
      }

      *&v222 = 0;
    }

    if (v206)
    {
      v59 = a1[54];
      v60 = *(v220 + 112);
      if (v59 != v60)
      {
        v61 = a1[50];
        if (v59)
        {
          if ((v61 & 0x10) == 0)
          {
            panic("btree rightmost leaf mismatch! (expected %lld found %lld)\n", *(v220 + 112), v59);
          }

          panic("btree rightmost leaf field is set for physical tree!\n");
        }

        if ((v61 & 0x10) == 0)
        {
          a1[54] = v60;
        }
      }
    }

    v200 = v56;
    v10 = v214;
    if (BYTE10(v220) == 1)
    {
      v145 = sub_10001F8A0(v220, WORD4(v220), a3, v214, a5, v57, a7);
    }

    else
    {
      v145 = sub_100020204(v220, WORD4(v220), a3, v214, a5, v57, a7);
    }

    v20 = v145;
    if (v145 != 28)
    {
      goto LABEL_357;
    }

    v146 = sub_1000209A0(a1, v221, WORD4(v221), v220, WORD4(v220), a3, v10, 1u, &v214, &v213, 0, a2, a7, &v219);
    if (v146)
    {
      v20 = v146;
      v147 = a1[1];
      if (v147)
      {
        v148 = (v147 + 4040);
      }

      else
      {
        v148 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3878, v148, v146);
      goto LABEL_357;
    }

    v149 = v219;
    if (!v219)
    {
      v149 = v220;
      goto LABEL_352;
    }

    if (v221)
    {
      ++WORD4(v221);
      v150 = v220;
      if (v220 && (v220 != a1 || v205) && v220 != v46 && v220 != v198)
      {
        sub_10003C190(v220, 2);
        sub_100037058(v150);
      }

      v219 = 0;
      *&v220 = v149;
LABEL_352:
      v20 = sub_100022A88(v149, a3, v10, a5, v203, a7, &v220 + 4, (&v220 | 0xA));
      if (!v20)
      {
        goto LABEL_357;
      }

      goto LABEL_353;
    }

    v168 = v220;
    *&v221 = v220;
    if (*(v219[7] + 36))
    {
      v169 = sub_10001D454(v219, 0, &v217, &v215);
      if (v169)
      {
        v20 = v169;
        v219 = 0;
        *&v220 = v149;
        goto LABEL_353;
      }

      v168 = v221;
      v182 = v217;
      v183 = v215;
    }

    else
    {
      v182 = a3;
      v183 = v10;
    }

    v20 = sub_10002067C(v168, v182, v183, &v221 + 4, &v221 + 10);
    v219 = 0;
    *&v220 = v149;
    if (!v20)
    {
      goto LABEL_352;
    }

LABEL_353:
    v151 = a1[1];
    if (v151)
    {
      v152 = (v151 + 4040);
    }

    else
    {
      v152 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3915, v152, v20);
LABEL_357:
    if (!v20 && !WORD4(v220) && v221)
    {
      v153 = sub_10001D454(v221, WORD4(v221), &v217, &v215);
      if (v153)
      {
        v20 = v153;
      }

      else
      {
        v164 = a1[1];
        if (!v164)
        {
          v164 = *(*a1 + 392);
        }

        v20 = (a1[52])(v164, a3, v10, v217, v215, &v216);
        if (!v20)
        {
          if (v216)
          {
            v165 = sub_10001F8A0(v221, WORD4(v221), a3, v10, 0, 0, a7);
            v20 = v165;
            if (v165)
            {
              v166 = a1[1];
              if (v166)
              {
                v167 = (v166 + 4040);
              }

              else
              {
                v167 = (*(*(*a1 + 392) + 384) + 212);
              }

              sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3929, v167, v165);
            }
          }
        }
      }
    }

LABEL_362:
    v154 = v221;
    if (v221)
    {
      if ((v221 != a1 || v205) && v221 != v46 && v221 != v198)
      {
        sub_10003C190(v221, 2);
        sub_100037058(v154);
      }

      *&v221 = 0;
    }

    v155 = v220;
    if (v220)
    {
      if ((v220 != a1 || v205) && v220 != v46 && v220 != v218)
      {
        sub_10003C190(v220, 2);
        sub_100037058(v155);
      }

      *&v220 = 0;
    }

    if (v20)
    {
      goto LABEL_60;
    }

    v156 = a1[49];
    v157 = *(v156 + 16);
    v158 = v157 >= v10;
    v159 = v157 < v10;
    if (!v158)
    {
      *(v156 + 16) = v10;
    }

    v160 = v200;
    if (*(v156 + 20) < v213)
    {
      *(v156 + 20) = v213;
      v159 = 1;
    }

    if (BYTE10(v220))
    {
      if ((((a1[50] & 0x80) == 0) & ~v159) != 0)
      {
        goto LABEL_384;
      }
    }

    else
    {
      atomic_fetch_add_explicit((v156 + 24), 1uLL, memory_order_relaxed);
    }

    sub_10003D180(a1, a7, 0);
LABEL_384:
    if ((v204 & (WORD4(v220) == 0)) != 1)
    {
      v20 = 0;
      goto LABEL_60;
    }

    if (v46)
    {
      v161 = sub_10001F8A0(v46, v160, a3, v10, 0, 0, a7);
      v20 = v161;
      if (v161)
      {
        v162 = a1[1];
        if (v162)
        {
          v163 = (v162 + 4040);
        }

        else
        {
          v163 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3969, v163, v161);
      }

      if (v46 != v222 && v46 != v221 && (v46 != a1 || v205))
      {
        sub_10003C190(v46, 2);
        sub_100037058(v46);
      }
    }

    else
    {
      v20 = 0;
    }

    v170 = v218;
    v171 = v218 + 56;
    if (*(*(v218 + 56) + 34) < 2u)
    {
LABEL_445:
      if (v170 != v222 && v170 != v221 && (v170 != a1 || v205))
      {
        sub_10003C190(v170, 2);
        sub_100037058(v170);
      }

      v46 = 0;
      v218 = 0;
      goto LABEL_60;
    }

    v172 = v214;
    while (1)
    {
      v209 = -21846;
      LOBYTE(v207) = -86;
      v173 = sub_10002067C(v170, a3, v172, &v209, &v207);
      if (v173)
      {
        v20 = v173;
        goto LABEL_59;
      }

      v174 = v207;
      v175 = v209;
      if ((v207 & 1) != 0 || v209)
      {
        v180 = a1[1];
        if (v180)
        {
          v181 = (v180 + 4040);
        }

        else
        {
          v181 = (*(*(*a1 + 392) + 384) + 212);
        }

        v186 = sub_100038018(v170);
        v187 = sub_10003834C(v170);
        sub_100012178("%s:%d: %s minkey update traversal unexpectedly found the key (%d) or a non-zero index (%d); oid %llu subtype 0x%x level %d\n", "bt_insert", 3987, v181, v174, v175, v186, v187, *(*v171 + 34));
LABEL_444:
        v20 = 0;
        goto LABEL_445;
      }

      v176 = sub_10001F8A0(v170, 0, a3, v172, 0, 0, a7);
      v20 = v176;
      if (v176)
      {
        v177 = a1[1];
        if (v177)
        {
          v178 = (v177 + 4040);
        }

        else
        {
          v178 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3992, v178, v176);
      }

      v179 = *(*v171 + 34);
      if (v179 == 2)
      {
        goto LABEL_445;
      }

      v20 = sub_10001D758(v170, 0, v16);
      v218 = 0;
      if (!v20)
      {
        v20 = sub_10001D02C(a1, v16, v202, 3u, v179 - 1, a7, &v218);
      }

      if (v170 != v222 && v170 != v221 && (v170 != a1 || v205))
      {
        sub_10003C190(v170, 2);
        sub_100037058(v170);
      }

      v170 = v218;
      if (v20)
      {
        break;
      }

      v171 = v218 + 56;
      if (*(*(v218 + 56) + 34) <= 1u)
      {
        goto LABEL_444;
      }
    }

    if (v218)
    {
      goto LABEL_445;
    }

LABEL_59:
    v46 = 0;
    goto LABEL_60;
  }

  v218 = v220;
  v56 = 1;
LABEL_103:
  v62 = v46;
  v46 = 0;
  v195 = v62;
  v196 = v62;
  v197 = v62;
  v201 = v62;
  v198 = v62;
  v199 = v62;
  v204 = v56;
  v56 = 0;
  v193 = a5;
  while (2)
  {
    v200 = v56;
    v63 = v222;
    if (v222 && (v222 != a1 || v205))
    {
      v64 = v222 == v46 || v222 == v199;
      if (!v64)
      {
        sub_10003C190(v222, 2);
        sub_100037058(v63);
      }
    }

    v65 = v221;
    v221 = v220;
    v222 = v65;
    *&v220 = 0;
    v66 = sub_10001D758(v221, WORD4(v221), v16);
    if (v66)
    {
LABEL_330:
      v20 = v66;
      goto LABEL_60;
    }

    v67 = *(*(v221 + 56) + 34) - 1;
    v68 = a1;
    v69 = v16;
    for (i = a2; ; i = v85)
    {
      v66 = sub_10001D02C(v68, v69, i, 3u, v67, a7, &v220);
      if (v66)
      {
        goto LABEL_330;
      }

      v71 = v220;
      if ((a1[50] & 0x10) != 0 && *(v220 + 112) != *v16)
      {
        sub_1000206C0(v221, WORD4(v221), (v220 + 112), a7);
        v71 = v220;
      }

      v72 = *(*(v71 + 56) + 32);
      v73 = sub_10001F6CC(v71, a3, v214, &v220 + 4, (&v220 | 0xA));
      v20 = v73;
      if ((v72 & 2) != 0)
      {
        if (v73)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v73)
        {
          goto LABEL_60;
        }

        if ((BYTE10(v220) & 1) == 0 && WORD4(v220))
        {
          --WORD4(v220);
        }
      }

      v74 = a7;
      v75 = a3;
      v76 = v46;
      v77 = v220;
      if (!v206)
      {
        v206 = 0;
        v79 = *(v220 + 56);
        LOWORD(v80) = *(v79 + 32);
        v78 = WORD4(v220);
        if ((v80 & 2) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_132;
      }

      v78 = WORD4(v220);
      v79 = *(v220 + 56);
      v80 = *(v79 + 32);
      if (((v80 >> 1) & 1) + *(v79 + 36) - 1 == WORD4(v220))
      {
        break;
      }

      v206 = 0;
      if ((v80 & 2) == 0)
      {
        goto LABEL_152;
      }

LABEL_132:
      if (*(v79 + 36) != v78)
      {
        goto LABEL_152;
      }

      v81 = WORD4(v221);
      v82 = v221;
      if (*(*(v221 + 56) + 36) - 1 <= WORD4(v221) || sub_100020798(v77, 1u, &v214, &v213, 0, 0, 0))
      {
        goto LABEL_152;
      }

      v66 = sub_10001D758(v82, (v81 + 1), v16);
      v46 = v76;
      if (v66)
      {
        goto LABEL_330;
      }

      v83 = v220;
      sub_10003C190(v220, 2);
      sub_100037058(v83);
      *&v220 = 0;
      v84 = WORD4(v221)++;
      if ((v204 & (v84 == 0)) == 1)
      {
        v85 = v202;
        a3 = v75;
        if (v46)
        {
          a7 = v74;
          v86 = v201;
          if (v46 != v222 && v46 != v221 && (v46 != a1 || v205))
          {
            sub_10003C190(v46, 2);
            sub_100037058(v46);
            v86 = v218;
            v195 = v218;
            v196 = v218;
            v197 = v218;
            v198 = v218;
          }
        }

        else
        {
          a7 = v74;
          v86 = v201;
        }

        if (v86)
        {
          if (v86 != v222 && v86 != v221 && (v86 != a1 || v205))
          {
            sub_10003C190(v86, 2);
            sub_100037058(v86);
          }

          v198 = 0;
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v201 = 0;
          v199 = 0;
          v46 = 0;
          v200 = 0;
          v204 = 0;
          v218 = 0;
        }

        else
        {
          v201 = 0;
          v199 = 0;
          v46 = 0;
          v200 = 0;
          v204 = 0;
        }
      }

      else
      {
        v85 = v202;
        a3 = v75;
        a7 = v74;
      }

      v67 = *(*(v221 + 56) + 34) - 1;
      v68 = a1;
      v69 = v16;
    }

    if (a1[54] == *(v221 + 112))
    {
      a1[54] = *(v220 + 112);
    }

    v206 = 1;
    if ((v80 & 2) != 0)
    {
      goto LABEL_132;
    }

LABEL_152:
    v87 = v78 != 0;
    if (!(v204 & 1 | v87))
    {
      v204 = 0;
      a2 = v202;
      v46 = v76;
      if ((v80 & 2) == 0)
      {
        a3 = v75;
        a7 = v74;
        a5 = v193;
        if ((BYTE10(v220) & 1) == 0)
        {
          v46 = v221;
          v204 = 1;
          v198 = v77;
          v195 = v77;
          v200 = WORD4(v221);
          v196 = v77;
          v197 = v77;
          v218 = v77;
          v201 = v77;
          v199 = v77;
        }

        goto LABEL_172;
      }

      goto LABEL_162;
    }

    a2 = v202;
    v46 = v76;
    if ((v204 & v87) != 1)
    {
LABEL_162:
      a3 = v75;
      a7 = v74;
      a5 = v193;
      goto LABEL_172;
    }

    a3 = v75;
    if (!v46)
    {
      a7 = v74;
      goto LABEL_164;
    }

    a7 = v74;
    if (v46 == v222)
    {
LABEL_164:
      a5 = v193;
      goto LABEL_165;
    }

    a5 = v193;
    if (v46 != v221 && (v46 != a1 || v205))
    {
      sub_10003C190(v46, 2);
      sub_100037058(v46);
      v195 = v218;
      v196 = v218;
      v198 = v218;
      v197 = v218;
    }

LABEL_165:
    v88 = v197;
    if (v197)
    {
      if (v197 != v222 && v197 != v221 && (v197 != a1 || v205))
      {
        sub_10003C190(v197, 2);
        sub_100037058(v88);
      }

      v198 = 0;
      v195 = 0;
      v196 = 0;
      v197 = 0;
      v201 = 0;
      v199 = 0;
      v46 = 0;
      v200 = 0;
      v204 = 0;
      v218 = 0;
    }

    else
    {
      v197 = 0;
      v201 = 0;
      v199 = 0;
      v46 = 0;
      v200 = 0;
      v204 = 0;
    }

LABEL_172:
    v89 = sub_100020924(v220);
    v194 = v46;
    if (WORD4(v220) || (BYTE10(v220) & 1) != 0)
    {
      goto LABEL_179;
    }

    v66 = sub_10001D454(v221, WORD4(v221), &v217, &v215);
    if (v66)
    {
      goto LABEL_330;
    }

    v90 = a1[1];
    if (!v90)
    {
      v90 = *(*a1 + 392);
    }

    v91 = v214;
    v66 = (a1[52])(v90, a3, v214, v217, v215, &v216);
    if (v66)
    {
      goto LABEL_330;
    }

    if ((v216 & 0x80000000) == 0)
    {
LABEL_179:
      v92 = 0;
      v93 = 0;
    }

    else
    {
      v109 = *(v220 + 400);
      if ((v109 & 0x40) != 0)
      {
        v110 = v91;
      }

      else
      {
        v110 = (v91 + 7) & 0x1FFF8;
      }

      if ((v109 & 0x40) != 0)
      {
        v111 = v215;
      }

      else
      {
        v111 = (v215 + 7) & 0x1FFF8;
      }

      if (v110 <= v111)
      {
        v92 = 0;
      }

      else
      {
        v64 = (*(v220 + 400) & 0x40) == 0;
        if ((v109 & 0x40) != 0)
        {
          v112 = v91;
        }

        else
        {
          v112 = (v91 + 7) & 0x1FFF8;
        }

        if ((*(v220 + 400) & 0x40) != 0)
        {
          v113 = v215;
        }

        else
        {
          v113 = (v215 + 7) & 0x1FFF8;
        }

        v92 = v112 - v113;
      }

      v93 = 1;
    }

    v94 = v221;
    v95 = *(*(v221 + 56) + 34);
    if (v95 < 2)
    {
      LOWORD(v212) = v89;
      v97 = *(v221 + 400);
      v98 = (HIBYTE(v97) & 0x7F) + 8;
      LOWORD(v211) = v98;
      if ((v93 & 1) == 0)
      {
        v96 = v214;
        goto LABEL_188;
      }

      goto LABEL_186;
    }

    v96 = v214;
    if (v89 > v214)
    {
      v96 = v89;
    }

    LOWORD(v212) = v96;
    v97 = *(v221 + 400);
    v98 = (HIBYTE(v97) & 0x7F) + 8;
    LOWORD(v211) = v98;
    if (v93)
    {
LABEL_186:
      v99 = 1;
      goto LABEL_189;
    }

LABEL_188:
    HIWORD(v212) = v96;
    HIWORD(v211) = v98;
    v99 = 2;
LABEL_189:
    LODWORD(v191) = v92;
    LODWORD(v189) = v99;
    LODWORD(v190) = v92;
    if (sub_100020798(v221, v99, &v212, &v211, v92, 0, 0))
    {
      v46 = v194;
      goto LABEL_249;
    }

    if (v95 < 2)
    {
      v101 = v220;
      if (BYTE10(v220) == 1)
      {
        if ((*(*(v220 + 56) + 32) & 4) != 0)
        {
          v103 = *(v220 + 400);
          v102 = (v103 >> 9) & 0x3FFF;
        }

        else
        {
          v102 = *(*(v220 + 376) + 8 * WORD4(v220) + 2);
          v103 = *(v220 + 400);
        }

        v215 = v102;
        v114 = sub_10001D3DC(v220, WORD4(v220));
        v115 = 0;
        if (v114 == 65534)
        {
          v116 = 0;
        }

        else
        {
          v116 = v114;
        }

        if ((v103 & 0x40) != 0)
        {
          v117 = v214;
        }

        else
        {
          v117 = (v214 + 7) & 0x1FFF8;
        }

        if ((v103 & 0x40) != 0)
        {
          v118 = v102;
        }

        else
        {
          v118 = (v102 + 7) & 0x1FFF8;
        }

        if (v117 > v118)
        {
          if ((v103 & 0x40) != 0)
          {
            v119 = v214;
          }

          else
          {
            v119 = (v214 + 7) & 0xFFF8;
          }

          if ((v103 & 0x40) != 0)
          {
            v120 = v102;
          }

          else
          {
            v120 = (v102 + 7) & 0xFFF8;
          }

          v115 = v119 - v120;
        }

        v121 = v213;
        if ((v103 & 0x40) != 0)
        {
          v122 = v213;
        }

        else
        {
          v122 = (v213 + 7) & 0x1FFF8;
        }

        if ((v103 & 0x40) != 0)
        {
          v123 = v116;
        }

        else
        {
          v123 = (v116 + 7) & 0x1FFF8;
        }

        if (v122 <= v123)
        {
          v124 = 0;
        }

        else
        {
          if ((v103 & 0x40) == 0)
          {
            v121 = (v213 + 7) & 0xFFF8;
            LOWORD(v116) = (v116 + 7) & 0xFFF8;
          }

          v124 = v121 - v116;
        }

        v46 = v194;
        if (v115 | v124 && !sub_100020798(v101, 0, 0, 0, v115, v124, 0))
        {
          goto LABEL_253;
        }
      }

      else
      {
        v108 = sub_100020798(v220, 1u, &v214, &v213, 0, 0, 0);
        v46 = v194;
        if (!v108)
        {
          goto LABEL_253;
        }
      }

      if (v191)
      {
        v105 = v94;
        v100 = 0;
        v106 = 0;
        v107 = 0;
        v104 = v190;
        goto LABEL_248;
      }

LABEL_249:
      v57 = v203;
LABEL_250:
      v56 = v200;
      goto LABEL_251;
    }

    v210 = -21846;
    v208 = -21846;
    v209 = v192;
    v207 = (HIBYTE(v97) & 0x7F) + 8;
    if (v93)
    {
      v100 = 1;
    }

    else
    {
      v210 = v192;
      v208 = (HIBYTE(v97) & 0x7F) + 8;
      v100 = 2;
    }

    v46 = v194;
    v104 = v190;
    v105 = v220;
    v106 = &v209;
    v107 = &v207;
LABEL_248:
    if (sub_100020798(v105, v100, v106, v107, v104, 0, 0))
    {
      goto LABEL_249;
    }

LABEL_253:
    v125 = v214;
    v126 = sub_1000209A0(a1, v222, WORD4(v222), v94, (WORD4(v221) + ((BYTE10(v221) & 1) == 0)), a3, v214, v189, &v212, &v211, v191, a2, a7, &v219);
    if (v126)
    {
      v20 = v126;
      v184 = a1[1];
      if (v184)
      {
        v185 = (v184 + 4040);
      }

      else
      {
        v185 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3679, v185, v126);
      goto LABEL_60;
    }

    v127 = v219;
    v57 = v203;
    v56 = v200;
    if (!v219)
    {
      goto LABEL_251;
    }

    v128 = v221;
    v191 = v221;
    if (v222)
    {
      ++WORD4(v222);
      if (v221)
      {
        if (v221 != a1 || v205)
        {
          if (v46 == v221)
          {
            v129 = v196;
          }

          else
          {
            v129 = v196;
            if (v221 != v196)
            {
              v130 = v196;
              v189 = v219;
              sub_10003C190(v221, 2);
              sub_100037058(v191);
              v127 = v189;
              v190 = 0;
              v197 = v130;
              v201 = v130;
              v199 = v130;
              goto LABEL_273;
            }
          }

          v197 = v129;
          v201 = v129;
          v199 = v129;
        }

        v190 = v221;
      }

      else
      {
        v190 = 0;
      }

LABEL_273:
      if (v46 == v222 && v46 != 0)
      {
        v56 = WORD4(v222);
      }

      v200 = v56;
      *&v221 = v127;
      v219 = 0;
      v135 = v125;
      v66 = sub_10002067C(v127, a3, v125, &v221 + 4, &v221 + 10);
      if (v66)
      {
        goto LABEL_330;
      }

      v136 = v220;
      sub_10003C190(v220, 2);
      sub_100037058(v136);
      *&v220 = 0;
      v66 = sub_10001D758(v221, WORD4(v221), v16);
      if (v66)
      {
        goto LABEL_330;
      }

      v66 = sub_10001D02C(a1, v16, a2, 3u, *(*(v221 + 56) + 34) - 1, a7, &v220);
      if (v66)
      {
        goto LABEL_330;
      }

      v137 = v220;
      if ((a1[50] & 0x10) != 0 && *(v220 + 112) != *v16)
      {
        sub_1000206C0(v221, WORD4(v221), (v220 + 112), a7);
        v137 = v220;
      }

      if ((*(*(v137 + 56) + 32) & 2) != 0)
      {
        v138 = sub_10001F6CC(v137, a3, v135, &v220 + 4, (&v220 | 0xA));
      }

      else
      {
        v138 = sub_10002067C(v137, a3, v135, &v220 + 4, (&v220 | 0xA));
      }

      v20 = v138;
      v139 = v190;
      if (v138)
      {
        goto LABEL_60;
      }

      if (v46 == v191)
      {
        v141 = WORD4(v221);
        v57 = v203;
        v56 = v200;
        if (v46 == a1 && !WORD4(v221))
        {
          v195 = v221;
          v218 = v221;
          v196 = v221;
          v197 = v221;
          v201 = v221;
          v198 = v221;
          v199 = v221;
          goto LABEL_251;
        }

        if (!WORD4(v221))
        {
          v46 = v222;
          v142 = v221;
          goto LABEL_319;
        }

        v46 = v221;
        v142 = v220;
        v195 = v220;
      }

      else
      {
        v57 = v203;
        if ((v204 & 1) == 0)
        {
          v141 = v200;
          v140 = v201;
          goto LABEL_306;
        }

        v140 = v201;
        if (!(WORD4(v221) | WORD4(v220)))
        {
          v204 = 1;
          v141 = v200;
          goto LABEL_321;
        }

        if (v46 && v46 != v222 && v46 != v221 && (v46 != a1 || v205))
        {
          sub_10003C190(v46, 2);
          sub_100037058(v46);
          v139 = v190;
          v198 = v218;
          v195 = v218;
        }

        v46 = v195;
        if (v195)
        {
          if (v195 != v222 && v195 != v221 && (v195 != a1 || v205))
          {
            sub_10003C190(v195, 2);
            sub_100037058(v46);
            v139 = v190;
          }

          v198 = 0;
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v140 = 0;
          v199 = 0;
          v46 = 0;
          v141 = 0;
          v218 = 0;
        }

        else
        {
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v140 = 0;
          v199 = 0;
          v141 = 0;
        }

LABEL_306:
        if (WORD4(v220))
        {
LABEL_307:
          v204 = 0;
          goto LABEL_321;
        }

        if (WORD4(v221) || (BYTE10(v221) & 1) != 0)
        {
          if ((BYTE10(v220) & 1) != 0 || (*(*(v220 + 56) + 32) & 2) != 0)
          {
            goto LABEL_307;
          }

          v46 = v221;
          v204 = 1;
          v198 = v220;
          v195 = v220;
          v196 = v220;
          v218 = v220;
          v197 = v220;
          v140 = v220;
          v199 = v220;
          v141 = WORD4(v221);
LABEL_321:
          if (v139)
          {
            if (v139 == a1 && !v205 || v139 == v46)
            {
              v195 = v198;
              v196 = v198;
              v197 = v198;
              v201 = v198;
              v199 = v198;
            }

            else
            {
              v143 = v198;
              if (v139 != v198)
              {
                v144 = v139;
                v200 = v141;
                sub_10003C190(v139, 2);
                sub_100037058(v144);
                v195 = v143;
                v196 = v143;
                v197 = v143;
                v201 = v143;
                v199 = v143;
                goto LABEL_250;
              }

              v195 = v198;
              v196 = v198;
              v197 = v198;
              v201 = v198;
              v199 = v198;
            }
          }

          else
          {
            v201 = v140;
          }

          v56 = v141;
LABEL_251:
          if ((*(*(v220 + 56) + 32) & 2) == 0)
          {
            continue;
          }

          goto LABEL_89;
        }

        v46 = v222;
        v142 = v221;
        v204 = 1;
LABEL_319:
        v195 = v142;
        v141 = WORD4(v222);
      }

      v218 = v142;
      v196 = v142;
      v197 = v142;
      v140 = v142;
      v198 = v142;
      v199 = v142;
      goto LABEL_321;
    }

    break;
  }

  *&v222 = v221;
  if (*(v219[7] + 36))
  {
    v131 = v219;
    v66 = sub_10001D454(v219, 0, &v217, &v215);
    if (v66)
    {
      goto LABEL_330;
    }

    v128 = v222;
    v132 = v217;
    v133 = v215;
  }

  else
  {
    v131 = v219;
    v132 = a3;
    v133 = v125;
  }

  v20 = sub_10002067C(v128, v132, v133, &v222 + 4, &v222 + 10);
  if (!v20)
  {
    v190 = 0;
    v56 = v200;
    v127 = v131;
    goto LABEL_273;
  }

LABEL_60:
  v47 = v222;
  v48 = v218;
  if (v222 && v222 != v46 && v222 != v218)
  {
    sub_10003C190(v222, 2);
    sub_100037058(v47);
  }

  v49 = v221;
  if (v221 && v221 != v46 && v221 != v48)
  {
    sub_10003C190(v221, 2);
    sub_100037058(v49);
  }

  v50 = v220;
  if (v220 && v220 != v46 && v220 != v48)
  {
    sub_10003C190(v220, 2);
    sub_100037058(v50);
  }

  if (v46)
  {
    sub_10003C190(v46, 2);
    sub_100037058(v46);
    v48 = v218;
  }

  if (v48)
  {
    sub_10003C190(v48, 2);
    sub_100037058(v48);
  }

  v51 = v219;
  if (v219)
  {
    sub_10003C190(v219, 2);
    sub_100037058(v51);
  }

  v52 = v205;
  if (v222 == a1)
  {
    v52 = 1;
  }

  if (v48 != a1 && (v52 & 1) == 0 && v221 != a1 && v220 != a1 && v46 != a1)
  {
    sub_10003C190(a1, 2);
    sub_100037058(a1);
  }

  return v20;
}

uint64_t sub_10001F6CC(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  v21 = -1431655766;
  v10 = *(*(a1 + 56) + 36) - 1;
  v20 = -21846;
  if ((*(a1 + 400) & 1) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      v23 = 0xAAAAAAAAAAAAAAAALL;
      while (1)
      {
        v12 = (v10 + v11) / 2;
        result = sub_10001D454(a1, v12, &v23, &v20);
        if (result)
        {
          return result;
        }

        v14 = *(a1 + 8);
        if (!v14)
        {
          v14 = *(*a1 + 392);
        }

        result = (*(a1 + 416))(v14, a2, a3, v23, v20, &v21);
        if (result)
        {
          return result;
        }

        v15 = v21 == 0;
        if (!v21)
        {
          v11 = (v10 + v11) / 2;
          goto LABEL_34;
        }

        if (v21 < 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v11 = v12 + 1;
        }

        if (v11 > v10)
        {
          goto LABEL_34;
        }
      }
    }

    v15 = 0;
    LOWORD(v11) = 0;
LABEL_34:
    result = 0;
    *a4 = v11;
LABEL_37:
    *a5 = v15;
    return result;
  }

  if (a3 != 8)
  {
    return 22;
  }

  if (v10 < 0)
  {
    v15 = 0;
    LOWORD(v16) = 0;
LABEL_36:
    result = 0;
    *a4 = v16;
    goto LABEL_37;
  }

  v16 = 0;
  v17 = *a2;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v22 = -21846;
  while (1)
  {
    v18 = (v16 + v10) / 2;
    LODWORD(result) = sub_10001D454(a1, v18, &v23, &v22);
    v19 = v22 != 8 && result == 0;
    result = v19 ? 22 : result;
    if (result)
    {
      return result;
    }

    v15 = *v23 == v17;
    if (*v23 == v17)
    {
      v16 = (v16 + v10) / 2;
      goto LABEL_36;
    }

    if (*v23 > v17)
    {
      v10 = v18 - 1;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 > v10)
    {
      goto LABEL_36;
    }
  }
}

uint64_t sub_10001F8A0(uint64_t a1, unsigned int a2, void *__src, size_t __n, void *a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = __n;
  v10 = __src;
  v11 = a2;
  v104 = -21846;
  v103 = -21846;
  v102 = -21846;
  v101 = -21846;
  v13 = *(a1 + 56);
  v14 = *(v13 + 32);
  if (a6 == 65534)
  {
    v15 = 0;
  }

  else
  {
    v15 = a6;
  }

  v100 = *(v13 + 32);
  if (*(v13 + 36) <= a2)
  {
    v24 = 0;
    v23 = 0;
    LOWORD(v25) = 0;
    v97 = 0;
    v18 = 0xFFFF;
    v20 = 0xFFFF;
  }

  else
  {
    v16 = *(a1 + 376);
    if ((v14 & 4) != 0)
    {
      v17 = (v16 + 4 * a2);
    }

    else
    {
      v17 = (v16 + 8 * a2);
    }

    v18 = *v17;
    v19 = (v16 + 4 * a2 + 2);
    if ((v14 & 4) == 0)
    {
      v19 = (v16 + 8 * a2 + 4);
    }

    v20 = *v19;
    v21 = __n;
    v22 = v15;
    if (v18 == 0xFFFF)
    {
      v23 = 0;
    }

    else if ((v14 & 4) != 0)
    {
      v23 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v23 = *(v16 + 8 * a2 + 2);
    }

    if (v20 > 0xFFFD)
    {
      v25 = 0;
    }

    else
    {
      v35 = v23;
      v36 = sub_10001D3DC(a1, a2);
      v23 = v35;
      v25 = v36;
    }

    v97 = v23 != 0;
    if (v23)
    {
      v37 = v23;
      v38 = sub_10001D518(a1, v18, v23);
      v23 = v37;
      if (v38)
      {
        return v38;
      }
    }

    if (v25)
    {
      v93 = v11;
      v39 = v23;
      v38 = sub_10001D644(a1, v20, v25);
      if (v38)
      {
        return v38;
      }

      v24 = 1;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v23 = v39;
      v11 = v93;
      v10 = __src;
    }

    else
    {
      v24 = 0;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v10 = __src;
    }
  }

  v104 = v18;
  v103 = v20;
  v26 = v9 - v23;
  if (!v10)
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = v15 - v25;
  if (!v8)
  {
    v28 = 0;
  }

  v29 = v28;
  if (v26 | v28)
  {
    if (v10)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v30 = v9;
      }

      else
      {
        v30 = (v9 + 7) & 0xFFF8;
      }

      v31 = (v23 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v31 = v23;
      }

      v32 = (v30 - v31);
    }

    else
    {
      v32 = 0;
    }

    v91 = v24;
    v92 = v18;
    v90 = v8;
    v96 = v29;
    v94 = v27;
    v41 = v23;
    if (v8)
    {
      v42 = v7;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v43 = v15;
      }

      else
      {
        v43 = (v15 + 7) & 0xFFF8;
      }

      v44 = (v25 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v44 = v25;
      }

      v45 = (v43 - v44);
    }

    else
    {
      v42 = v7;
      v45 = 0;
    }

    if (v45 + v32 > sub_10002868C(a1))
    {
      return 28;
    }

    v46 = 0;
    v101 = -1;
    v102 = -1;
    v47 = v42;
    if (v9)
    {
      v29 = v96;
      v48 = v92;
      v27 = v94;
      v23 = v41;
      if (!v94)
      {
LABEL_61:
        if (v15 && v29)
        {
          v49 = v46;
          sub_10002870C(a1, 2, v15, &v101, &v103);
          if (v103 == -1)
          {
            v29 = v96;
            v48 = v92;
            v27 = v94;
            v23 = v41;
            v46 = v49;
            if (v96 < 0)
            {
              v103 = v20;
              v101 = -1;
            }

            else
            {
              if ((*(a1 + 400) & 0x40) != 0)
              {
                v50 = v15;
              }

              else
              {
                v50 = (v15 + 7) & 0xFFF8;
              }

              v46 = v50 + v49;
            }
          }

          else
          {
            v29 = v96;
            v48 = v92;
            v27 = v94;
            v23 = v41;
            v46 = v49;
          }
        }

        v51 = *(a1 + 56);
        v52 = *(v51 + 46);
        if (v27)
        {
          v53 = v97;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v54 = v23;
          }

          else
          {
            v54 = (v23 + 7) & 0xFFF8;
          }

          v55 = (v54 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v55 = v23;
          }

          if (v55 >= 4u)
          {
            v56 = (*(a1 + 384) + v48);
            v56[1] = v55;
            *v56 = *(v51 + 48);
            *(v51 + 48) = v48;
          }

          *(v51 + 50) += v55;
          if (v104 != 0xFFFF && v102 == 0xFFFF && v104 != v48 && *(v51 + 48) == v48)
          {
            v102 = v48;
          }
        }

        if (v29)
        {
          v57 = v91;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v58 = v25;
          }

          else
          {
            v58 = (v25 + 7) & 0xFFF8;
          }

          v59 = (v58 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v59 = v25;
          }

          if (v59 >= 4u)
          {
            v60 = (*(a1 + 392) - v20);
            v60[1] = v59;
            *v60 = *(v51 + 52);
            *(v51 + 52) = v20;
          }

          *(v51 + 54) += v59;
          if (v103 != 0xFFFF && v101 == 0xFFFF && v103 != v20 && *(v51 + 52) == v20)
          {
            v101 = v20;
          }
        }

        if (v52 < v46)
        {
          if ((v100 & 0x8000) == 0)
          {
            *(v51 + 32) |= 0x8000u;
          }

          if (*(v51 + 36) > v11)
          {
            v61 = *(v51 + 32);
            v62 = *(a1 + 376);
            if ((v61 & 4) != 0)
            {
              if (v53)
              {
                *(v62 + 4 * v11) = -1;
              }

              if (v57)
              {
                *(v62 + 4 * v11 + 2) = -1;
              }
            }

            else
            {
              if (v53)
              {
                *(v62 + 8 * v11) = 0xFFFF;
              }

              if (v57)
              {
                *(v62 + 8 * v11 + 4) = 0xFFFF;
              }
            }
          }

          v98 = v57;
          v63 = sub_10002892C(a1, 0, v47);
          if (v63)
          {
            v40 = v63;
            if (v53)
            {
              v64 = (*(a1 + 400) & 0x40) != 0 ? v9 : (v9 + 7) & 0xFFF8;
              v65 = sub_100028D10(a1, 1, v64, 0xFFFF, v92);
              if (v65)
              {
                v66 = *(a1 + 8);
                if (v66)
                {
                  v67 = (v66 + 4040);
                }

                else
                {
                  v67 = (*(*(*a1 + 392) + 384) + 212);
                }

                sub_100012178("%s:%d: %s unable to reclaim just-freed key space on error path: %d\n", "btree_node_entry_update", 1772, v67, v65);
              }
            }

            if (v98)
            {
              v88 = (*(a1 + 400) & 0x40) != 0 ? v25 : (v25 + 7) & 0xFFF8;
              if (sub_100028D10(a1, 2, v88, 0xFFFF, v20))
              {
                if (!*(a1 + 8))
                {
                  v89 = *(*(*a1 + 392) + 384) + 212;
                }

                sub_100012178("%s:%d: %s unable to reclaim just-freed val space on error path: %d\n");
              }
            }

            return v40;
          }

          v101 = -1;
          v102 = -1;
          v104 = -1;
          v103 = -1;
          v29 = v96;
          v27 = v94;
          v23 = v41;
        }

        v68 = v10;
        v69 = v47;
        if (v27)
        {
          v8 = v90;
          if (v104 == 0xFFFF)
          {
            v70 = sub_100028E00(a1, 1, v9, &v104);
          }

          else
          {
            v70 = sub_100028D10(a1, 1, v9, v102, v104);
          }

          v40 = v70;
          v29 = v96;
          v27 = v94;
          v23 = v41;
          if (v70)
          {
            if (!*(a1 + 8))
            {
              v80 = *(*(*a1 + 392) + 384) + 212;
            }

LABEL_185:
            sub_100012178("%s:%d: %s unable allocate space that should be there: %d\n");
            return v40;
          }
        }

        else
        {
          v71 = *(a1 + 376);
          v72 = (v71 + 4 * v11);
          v73 = (v71 + 8 * v11);
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v74 = v72;
          }

          else
          {
            v74 = v73;
          }

          v104 = *v74;
          v8 = v90;
        }

        if (v29)
        {
          v7 = v69;
          if (!v15)
          {
            if (a6 == 65534)
            {
              LOWORD(v20) = -2;
            }

            else
            {
              LOWORD(v20) = -1;
            }

            v103 = v20;
            goto LABEL_155;
          }

          if (v103 == 0xFFFF)
          {
            v75 = sub_100028E00(a1, 2, v15, &v103);
          }

          else
          {
            v75 = sub_100028D10(a1, 2, v15, v101, v103);
          }

          v40 = v75;
          v29 = v96;
          v27 = v94;
          if (v75)
          {
            if (!*(a1 + 8))
            {
              v87 = *(*(*a1 + 392) + 384) + 212;
            }

            goto LABEL_185;
          }

          v23 = v41;
          LOWORD(v20) = v103;
        }

        else
        {
          v76 = *(a1 + 376);
          v77 = v76 + 4 * v11 + 2;
          v78 = v76 + 8 * v11 + 4;
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v79 = v77;
          }

          else
          {
            v79 = v78;
          }

          LOWORD(v20) = *v79;
          v103 = *v79;
        }

        v7 = v69;
LABEL_155:
        v10 = v68;
        goto LABEL_156;
      }

      sub_10002870C(a1, 1, v9, &v102, &v104);
      if (v104 == -1)
      {
        v48 = v92;
        v27 = v94;
        if (v94 < 0)
        {
          v46 = 0;
          v104 = v92;
          v102 = -1;
        }

        else if ((*(a1 + 400) & 0x40) != 0)
        {
          v46 = v9;
        }

        else
        {
          v46 = (v9 + 7) & 0xFFF8;
        }

        v29 = v96;
        goto LABEL_60;
      }

      v46 = 0;
    }

    v29 = v96;
    v48 = v92;
    v27 = v94;
LABEL_60:
    v23 = v41;
    goto LABEL_61;
  }

LABEL_156:
  if (a6 == 65534 && v20 != 65534)
  {
    LOWORD(v20) = -2;
    v103 = -2;
    v29 = 1;
  }

  v81 = *(a1 + 56);
  v82 = *(a1 + 376);
  if ((*(v81 + 32) & 4) != 0)
  {
    if (v27)
    {
      *(v82 + 4 * v11) = v104;
    }

    if (v29)
    {
      *(v82 + 4 * v11 + 2) = v20;
    }
  }

  else
  {
    v83 = (v82 + 8 * v11);
    if (v27)
    {
      *v83 = v104;
      v83[1] = v9;
    }

    if (v29)
    {
      v83[2] = v20;
      v83[3] = a6;
    }
  }

  if ((v100 & 0x8000) == 0)
  {
    *(v81 + 32) &= ~0x8000u;
  }

  v84 = *(a1 + 440);
  if (!*(a1 + 440) || (v85 = v9, v84 >= v9))
  {
    if (v9 >= v23 || v84 > v23)
    {
      goto LABEL_176;
    }

    v85 = 0;
  }

  *(a1 + 440) = v85;
LABEL_176:
  if (v10 && v9)
  {
    memcpy((*(a1 + 384) + v104), v10, v9);
  }

  if (v8 && v15)
  {
    memcpy((*(a1 + 392) - v103), v8, v15);
  }

  sub_10003D180(a1, v7, 0);
  return 0;
}

uint64_t sub_100020204(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v48 = a4;
  if (a6 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  v42 = v11;
  if (a3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_13:
    v11 = 0;
    v14 = 0;
    v42 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v48 = 0;
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v11)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v47 = -21846;
  v46 = -21846;
  v45 = -21846;
  v44 = -21846;
  v43 = -21846;
  if (!sub_100020798(a1, 1u, &v48, &v42, 0, 0, &v47))
  {
    return 28;
  }

  v43 = -1;
  v44 = -1;
  v45 = -1;
  v46 = -1;
  if (v13)
  {
    sub_10002870C(a1, 1, v12, &v46, &v45);
  }

  if (v14)
  {
    sub_10002870C(a1, 2, v11, &v44, &v43);
  }

  if (v45 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = (v12 + 7) & 0xFFF8;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v43 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = (v11 + 7) & 0xFFF8;
    }

    v15 += v17;
  }

  v18 = v47 + v15;
  v19 = *(a1 + 56);
  if (v18 <= *(v19 + 46))
  {
    if (v47)
    {
      memmove((*(a1 + 384) + v47), *(a1 + 384), *(v19 + 44));
      bzero(*(a1 + 384), v47);
      v20 = v47;
      *(a1 + 384) += v47;
      v21 = *(a1 + 56);
      *(v21 + 46) -= v20;
      *(v21 + 42) += v20;
    }
  }

  else
  {
    v16 = sub_10002892C(a1, 1, a7);
    if (v16)
    {
      return v16;
    }

    v43 = -1;
    v45 = -1;
    v47 = 0;
  }

  if (!v13)
  {
LABEL_38:
    if (!v14)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  if (v45 != 0xFFFF)
  {
    v16 = sub_100028D10(a1, 1, v12, v46, v45);
    if (!v16)
    {
      goto LABEL_38;
    }

LABEL_47:
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 + 4040);
    }

    else
    {
      v26 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2193, v26, v16);
    return v16;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v22 = v12;
  }

  else
  {
    v22 = (v12 + 7) & 0xFFF8;
  }

  v23 = *(a1 + 56);
  v24 = *(v23 + 46);
  if (v24 < v22)
  {
    v16 = 28;
    goto LABEL_47;
  }

  v32 = *(v23 + 44);
  *(v23 + 44) = v32 + v22;
  *(v23 + 46) = v24 - v22;
  v45 = v32;
  if (!v14)
  {
    goto LABEL_62;
  }

LABEL_39:
  if (v43 != 0xFFFF)
  {
    v16 = sub_100028D10(a1, 2, v11, v44, v43);
    if (!v16)
    {
      goto LABEL_62;
    }

LABEL_53:
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 + 4040);
    }

    else
    {
      v31 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2205, v31, v16);
    return v16;
  }

  v27 = (v11 + 7) & 0xFFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v27 = v11;
  }

  v28 = *(a1 + 56);
  v29 = *(v28 + 46);
  if (v29 < v27)
  {
    v16 = 28;
    goto LABEL_53;
  }

  v33 = v29 - v27;
  *(v28 + 46) = v33;
  v43 = *(a1 + 392) - (v33 + *(a1 + 384) + *(v28 + 44));
LABEL_62:
  if (!v11)
  {
    if (a6 == 65534)
    {
      v34 = -2;
    }

    else
    {
      v34 = -1;
    }

    v43 = v34;
  }

  v35 = *(a1 + 56);
  v36 = *(v35 + 36);
  if (v36 > a2)
  {
    sub_100028FC0(a1, a2, 1);
    v35 = *(a1 + 56);
    v36 = *(v35 + 36);
  }

  *(v35 + 36) = v36 + 1;
  v37 = v43;
  v38 = *(a1 + 376);
  if ((*(v35 + 32) & 4) != 0)
  {
    v40 = (v38 + 4 * a2);
    *v40 = v45;
    v40[1] = v37;
  }

  else
  {
    v39 = (v38 + 8 * a2);
    *v39 = v45;
    v39[1] = v12;
    v39[2] = v37;
    v39[3] = a6;
  }

  if (*(a1 + 440) && *(a1 + 440) < v12)
  {
    *(a1 + 440) = v12;
  }

  if (v13)
  {
    memcpy((*(a1 + 384) + v45), v13, v12);
  }

  if (v14)
  {
    memcpy((*(a1 + 392) - v43), v14, v11);
  }

  sub_10003D180(a1, a7, 0);
  return 0;
}

uint64_t sub_10002067C(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  result = sub_10001F6CC(a1, a2, a3, a4, a5);
  if (!result && !*a5)
  {
    if (*a4)
    {
      --*a4;
    }
  }

  return result;
}

uint64_t sub_1000206C0(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(*(a1 + 56) + 32);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) != 0)
    {
      v8 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v8 = *(*(a1 + 376) + 8 * a2 + 2);
    }

    return sub_1000234E0(a1, a2, 0, v8, v5, 8, 0, a4, sub_100029030, 0);
  }

  v7 = *(a1 + 408);
  if (*a3 > v7)
  {
    v12 = *a3 - v7;
    v5 = &v12;
    goto LABEL_4;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = (v10 + 4040);
  }

  else
  {
    v11 = (*(*(*a1 + 392) + 384) + 212);
  }

  sub_100012178("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_child_id_update", 1961, v11, *a3, v7);
  return 22;
}

BOOL sub_100020798(uint64_t a1, unsigned int a2, __int16 *a3, __int16 *a4, __int16 a5, __int16 a6, _WORD *a7)
{
  v12 = *(a1 + 56);
  v13 = v12[16];
  v14 = v12[18];
  v15 = v12[21];
  if ((v13 & 4) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v39 = v16;
  if ((v13 & 4) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = sub_10001D2C0(a1, 0);
  if ((v13 & 4) == 0 || (*(a1 + 400) & 4) != 0 || v14 + a2 <= v18)
  {
    v20 = v18;
    v21 = sub_10001D2C0(a1, a2);
    if (a7)
    {
      if ((v13 & 4) != 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      v23 = v21 << v22;
      v24 = v23 >= v15;
      v25 = v23 - v15;
      if (v25 == 0 || !v24)
      {
        LOWORD(v25) = 0;
      }

      *a7 = v25;
    }

    v26 = v15 >> v17;
    v27 = 0;
    if (a2)
    {
      v28 = a2;
      do
      {
        v30 = *a3++;
        v29 = v30;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v31 = *a4;
        }

        else
        {
          v29 = (v29 + 7) & 0xFFF8;
          v31 = (*a4 + 7) & 0xFFF8;
        }

        v27 += v29 + v31;
        ++a4;
        --v28;
      }

      while (v28);
    }

    v32 = a6 + a5 + v27;
    if ((v13 & 4) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    v34 = ((v21 - v20) << v33) & 0xFFFC;
    if (v21 <= v20)
    {
      v34 = 0;
    }

    v35 = v26 > v20;
    v36 = (v26 - v20) << v39;
    if (!v35)
    {
      LOWORD(v36) = 0;
    }

    return v34 + v32 <= (v12[23] + v36 + v12[25] + v12[27]);
  }

  else
  {
    result = 0;
    if (a7)
    {
      *a7 = -1;
    }
  }

  return result;
}

uint64_t sub_100020924(uint64_t a1)
{
  v1 = (*(a1 + 400) >> 9) & 0x3FFF;
  if (!v1)
  {
    LOWORD(v1) = *(a1 + 440);
    if (!v1)
    {
      v2 = *(a1 + 56);
      v3 = *(v2 + 36);
      if (v3)
      {
        v4 = 0;
        LOWORD(v1) = 0;
        v5 = *(v2 + 32);
        do
        {
          if ((v5 & 4) == 0)
          {
            v6 = *(*(a1 + 376) + 8 * v4 + 2);
            v7 = v1;
            if (v6 > v1)
            {
              v7 = *(*(a1 + 376) + 8 * v4 + 2);
            }

            if (v6 != 0xFFFF)
            {
              LOWORD(v1) = v7;
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      else
      {
        LOWORD(v1) = 0;
      }

      *(a1 + 440) = v1;
    }
  }

  return v1;
}

uint64_t sub_1000209A0(void *a1, void *a2, unsigned int a3, void *a4, unsigned int a5, unint64_t *a6, size_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v270 = a8;
  v20 = a13;
  v277 = a1;
  v21 = a1[50];
  __chkstk_darwin(a1);
  v23 = &v247[-v22];
  bzero(&v247[-v22], v24);
  memset(v284, 0, sizeof(v284));
  v282 = 0;
  v283 = 0;
  v281 = 0;
  memset(v280, 170, sizeof(v280));
  v279 = -21846;
  v278 = -21846;
  LODWORD(v273) = (*(a4[7] + 32) & 4) != 0 && (a4[50] & 4) == 0;
  *a14 = 0;
  LODWORD(v272) = a5;
  v251 = a14;
  v252 = v23;
  if (a2 && *(a2[7] + 36) - 1 > a3)
  {
    if (sub_10001D758(a2, (a3 + 1), v23) || sub_10001D02C(v277, v23, a12, 3u, *(a2[7] + 34) - 1, a13, &v283) || !v283)
    {
      v283 = 0;
      v25 = 1;
    }

    else
    {
      if ((v277[50] & 0x10) != 0 && v283[14] != *v23)
      {
        sub_1000206C0(a2, (a3 + 1), v283 + 14, a13);
      }

      v25 = 0;
    }

    a5 = v272;
  }

  else
  {
    v25 = 1;
  }

  v26 = v270;
  *(v284 + 8) = *(v277 + 25);
  *(&v284[1] + 1) = a4[52];
  LODWORD(v284[0]) = 2123139;
  v27 = a4[7];
  WORD2(v284[0]) = *(v27 + 32) & 0x1A;
  WORD3(v284[0]) = *(v27 + 34);
  if (v270)
  {
    v28 = 0;
    v31 = v270;
    do
    {
      v33 = *a9++;
      v32 = v33;
      if ((a4[50] & 0x40) != 0)
      {
        v34 = *a10;
      }

      else
      {
        v32 = (v32 + 7) & 0xFFF8;
        v34 = (*a10 + 7) & 0xFFF8;
      }

      v28 += v32 + v34;
      ++a10;
      --v31;
    }

    while (v31);
    v260 = v28;
  }

  else
  {
    v260 = 0;
  }

  v35 = *(v27 + 36);
  v256 = a3;
  v254 = a6;
  if (v35 > a5)
  {
    v36 = sub_10001D454(a4, a5, &v280[3], &v279);
    if (v36)
    {
      return v36;
    }

    v37 = v277[1];
    if (!v37)
    {
      v37 = *(*v277 + 392);
    }

    v36 = (v277[52])(v37, a6, a7, *&v280[3], v279, v280);
    if (v36)
    {
      return v36;
    }

    if (v280[0])
    {
      v264 = 0;
      v271 = 0;
      v38 = 0;
      v261 = 0;
      v26 = v270;
    }

    else
    {
      v26 = v270;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        v106 = sub_10001D3DC(a4, v272);
        if (v106 == 65534)
        {
          v107 = 0;
        }

        else
        {
          v107 = v106;
        }

        v278 = v107;
        if ((a4[50] & 0x40) != 0)
        {
          v108 = v279;
        }

        else
        {
          v108 = (v279 + 7) & 0xFFFFFFF8;
        }

        if ((a4[50] & 0x40) == 0)
        {
          v107 = (v107 + 7) & 0x1FFF8;
        }

        v264 = v108 + v107;
        v271 = 1;
        v38 = 1;
        v261 = 1;
      }

      else
      {
        v264 = 0;
        v271 = 0;
        v261 = 0;
        v38 = 1;
      }
    }
  }

  else
  {
    v264 = 0;
    v271 = 0;
    v38 = 0;
    v261 = 0;
  }

  v266 = a13;
  v269 = a4;
  v257 = a2;
  v253 = a7;
  if (v25)
  {
    v39 = sub_100038354(a4);
    v40 = v277[1];
    if (!v40)
    {
      v40 = *(*v277 + 392);
    }

    v41 = sub_10003834C(a4);
    v36 = sub_100026B88(v40, v39 & 0xFFFFFC00, v41, v284, a13, &v283);
    if (v36)
    {
      return v36;
    }

    v43 = v277;
    atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
    sub_10003D180(v43, a13, 0);
    v26 = v270;
    if ((v43[50] & 2) != 0 || v277[54] == a4[14])
    {
      v44 = a4[7];
      if (*(v44 + 36) == v272)
      {
        v45 = 0;
        v46 = v272;
        v47 = v272 + ((*(v44 + 32) >> 1) & 1) - 1;
        v271 = 1;
        v274 = 1;
        goto LABEL_142;
      }
    }
  }

  v48 = a4[7];
  v49 = *(v48 + 32);
  v259 = sub_10001D2C0(a4, 0);
  if ((v49 & 4) != 0)
  {
    v50 = 2;
  }

  else
  {
    v50 = 3;
  }

  v47 = *(v48 + 36);
  if (((v47 - 1) & 0x8000) != 0)
  {
    v276 = v26;
LABEL_121:
    v274 = v25;
    v45 = 0;
LABEL_141:
    v271 = v276 == 0;
    a2 = v257;
    a7 = v253;
    v46 = v272;
    goto LABEL_142;
  }

  v51 = v260 + a11;
  v250 = v38 + v272;
  v52 = (v47 - 1);
  v53 = v26;
  v54 = v283;
  LODWORD(v268) = sub_10002868C(v283);
  v55 = sub_10001D2C0(v54, 0);
  *(&v272 + 1) = v50;
  v265 = v55 << v50;
  v258 = sub_10002868C(a4);
  LOWORD(v50) = 0;
  LODWORD(v267) = 0;
  DWORD1(v272) = 0;
  v255 = v261 ^ 1;
  v249 = v51;
  v276 = v53;
  v248 = v51;
  LODWORD(v275) = v51;
  v56 = v271;
  while (1)
  {
    v57 = v20;
    v262 = v47;
    v58 = v276;
    v59 = v276 - v56;
    v60 = sub_10001D2C0(a4, (v276 - v56));
    v61 = v258 + v264 + ((v259 - v60) << SBYTE8(v272));
    v62 = v275;
    v263 = (v258 + v264 + ((v259 - v60) << SBYTE8(v272)) - v275);
    v274 = v25;
    v271 = v56;
    if (((v61 >= v275) & v273) == 1)
    {
      v63 = *(a4[7] + 36) - v56 + v58;
      if (v63 >= sub_10001D2C0(a4, 0))
      {
        goto LABEL_48;
      }
    }

    else if (v61 < v275)
    {
LABEL_48:
      v64 = v267;
      goto LABEL_57;
    }

    if ((v25 & 1) == 0)
    {
      v20 = v57;
LABEL_140:
      v45 = 0;
      LOWORD(v47) = v52 + 1;
      goto LABEL_141;
    }

    v20 = v57;
    v64 = v267;
    if ((v277[50] & 2) != 0 || v277[54] == a4[14])
    {
      if ((*(a4[7] + 32) & 2) != 0)
      {
        goto LABEL_140;
      }

      if (!v52)
      {
        goto LABEL_140;
      }

      if ((v267 + *(*(v54 + 56) + 36)) > 1u)
      {
        goto LABEL_140;
      }

      v65 = sub_10001D2C0(v54, v267);
      v66 = v268 + v265 + v50 - (v65 << SBYTE8(v272));
      if (v263 >= (v66 + ((v66 >> 29) & 3)) >> 2)
      {
        goto LABEL_140;
      }
    }

    else if (v273)
    {
      if (!v52 || (v59 + *(a4[7] + 36)) <= (v267 + *(*(v54 + 56) + 36)))
      {
        goto LABEL_140;
      }
    }

    else
    {
      v105 = sub_10001D2C0(v54, v267);
      if (!v52 || v263 >= (v268 + v265 + v50 - (v105 << SBYTE8(v272))))
      {
        goto LABEL_140;
      }
    }

LABEL_57:
    v67 = a4[7];
    v68 = *(v67 + 32);
    if ((v68 & 2) == 0 || v255 + v52 != v272)
    {
      v267 = a4[7];
      v82 = v276;
      goto LABEL_83;
    }

    v69 = v270;
    v70 = v64 + v270;
    v71 = sub_10001D2C0(v54, (v64 + v270));
    v72 = (v71 << SBYTE8(v272)) - v265;
    v73 = v260 + WORD2(v272) + ((v71 << SBYTE8(v272)) - v265);
    if (((v73 <= v268) & v273) == 1)
    {
      v74 = v69 + v64 + *(*(v54 + 56) + 36);
      v75 = v74 >= sub_10001D2C0(v54, 0);
      a4 = v269;
      if (v75)
      {
        goto LABEL_62;
      }
    }

    else if (v73 > v268)
    {
LABEL_62:
      if ((v274 & 1) == 0)
      {
        v76 = sub_100038354(a4);
        sub_10003C190(v54, 2);
        sub_100037058(v54);
        v283 = 0;
        v77 = v277[1];
        if (!v77)
        {
          v77 = *(*v277 + 392);
        }

        v78 = sub_10003834C(a4);
        v79 = v77;
        v20 = v266;
        v36 = sub_100026B88(v79, v76 & 0xFFFFFC00, v78, v284, v266, &v283);
        v56 = v271;
        v80 = BYTE8(v272);
        if (v36)
        {
          return v36;
        }

        v81 = v277;
        v25 = 1;
        atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
        sub_10003D180(v81, v20, 0);
        v54 = v283;
        v265 = sub_10001D2C0(v283, 0) << v80;
        LODWORD(v268) = sub_10002868C(v54);
        goto LABEL_109;
      }

      if (v261)
      {
        v52 = v262 - 2;
      }

      if (v263 < 0)
      {
        v47 = v52 + 1;
        v210 = v276 == 0;
        v45 = 2843;
        a2 = v257;
        a7 = v253;
        v46 = v272;
        goto LABEL_280;
      }

LABEL_124:
      v274 = 1;
      goto LABEL_139;
    }

    v267 = v67;
    v82 = v276 - v270;
    if ((v274 & 1) == 0)
    {
      v276 -= v270;
      v274 = 0;
      if (v261)
      {
        LOWORD(v52) = v262 - 2;
      }

LABEL_139:
      v20 = v266;
      goto LABEL_140;
    }

    if ((v277[50] & 2) != 0 || v277[54] == a4[14])
    {
LABEL_122:
      v276 -= v270;
      if (v261)
      {
        LOWORD(v52) = v262 - 2;
      }

      goto LABEL_124;
    }

    LODWORD(v275) = v275 - v248;
    DWORD1(v272) += v248;
    if (v273)
    {
      if (!v52 || (v82 - v271 + *(v267 + 36)) <= (v70 + *(*(v54 + 56) + 36)))
      {
        goto LABEL_122;
      }
    }

    else if (!v52 || v263 >= (v268 - WORD2(v272) - v72))
    {
      goto LABEL_122;
    }

    v64 = (v64 + v69);
    v62 = v275;
LABEL_83:
    LODWORD(v275) = v62;
    if ((v68 & 4) != 0)
    {
      v85 = a4[50];
      v83 = a4;
      v84 = (v85 >> 9) & 0x3FFF;
    }

    else
    {
      v83 = a4;
      v84 = *(a4[47] + 8 * v52 + 2);
      v85 = *(v83 + 400);
    }

    v279 = v84;
    v86 = sub_10001D3DC(v83, v52);
    if (v86 == 65534)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    v278 = v87;
    v88 = (v84 + 7) & 0x1FFF8;
    if ((v85 & 0x40) != 0)
    {
      v88 = v84;
    }

    else
    {
      v87 = (v87 + 7) & 0x1FFF8;
    }

    v89 = v261;
    if (v52 != v272)
    {
      v89 = 0;
    }

    if ((v89 & 1) == 0)
    {
      break;
    }

    LODWORD(v267) = v64;
    v276 = v82;
    v52 = v272;
    v20 = v266;
    a4 = v269;
    v25 = v274;
    v56 = v271;
LABEL_115:
    v47 = v52;
    LODWORD(v50) = -DWORD1(v272);
    v104 = v52 - 1;
    v52 = (v52 - 1);
    if (v104 < 0)
    {
      goto LABEL_121;
    }
  }

  v90 = v88 + v87;
  if (v82 != 0 && v250 > v52)
  {
    v91 = v270;
  }

  else
  {
    v91 = 0;
  }

  if (v82 != 0 && v250 > v52)
  {
    v92 = v249;
  }

  else
  {
    v92 = 0;
  }

  v93 = (v64 + v91 + 1);
  v94 = sub_10001D2C0(v54, v93);
  v95 = v92 + WORD2(v272) + v90 + ((v94 << SBYTE8(v272)) - v265);
  if (((v95 <= v268) & v273) == 1)
  {
    v96 = v91 + v64 + *(*(v54 + 56) + 36) + 1;
    if (v96 < sub_10001D2C0(v54, 0))
    {
      goto LABEL_111;
    }
  }

  else if (v95 <= v268)
  {
LABEL_111:
    DWORD1(v272) += v92 + v90;
    v276 = v82 - v91;
    if (v91)
    {
      v103 = v92;
    }

    else
    {
      v103 = 0;
    }

    LODWORD(v275) = v275 - v103;
    v56 = v271 + 1;
    v264 += v90;
    LODWORD(v267) = v93;
    v20 = v266;
    a4 = v269;
    v25 = v274;
    goto LABEL_115;
  }

  v276 = v82;
  if ((v274 & 1) == 0)
  {
    LODWORD(v267) = v64;
    a4 = v269;
    v97 = sub_100038354(v269);
    sub_10003C190(v54, 2);
    sub_100037058(v54);
    v283 = 0;
    v98 = v277[1];
    v99 = BYTE8(v272);
    if (!v98)
    {
      v98 = *(*v277 + 392);
    }

    v100 = sub_10003834C(a4);
    v101 = v98;
    v20 = v266;
    v36 = sub_100026B88(v101, v97 & 0xFFFFFC00, v100, v284, v266, &v283);
    v56 = v271;
    if (v36)
    {
      return v36;
    }

    v102 = v277;
    atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
    sub_10003D180(v102, v20, 0);
    v54 = v283;
    v265 = sub_10001D2C0(v283, 0) << v99;
    LODWORD(v268) = sub_10002868C(v54);
    v25 = 1;
LABEL_109:
    v52 = v262;
    goto LABEL_115;
  }

  a4 = v269;
  if ((v263 & 0x80000000) == 0)
  {
    v25 = 1;
    v20 = v266;
    LOWORD(v47) = v262;
    goto LABEL_121;
  }

  v210 = v82 == 0;
  v47 = v262;
  v45 = 2917;
  if (v262 > 1)
  {
    a2 = v257;
    a7 = v253;
    v46 = v272;
    v67 = v267;
LABEL_280:
    v271 = v210;
    if (*(v67 + 36) == v47 && v54)
    {
      v274 = 0;
      v281 = v54;
      v283 = 0;
      goto LABEL_312;
    }

    v262 = v47;
    v218 = sub_100038354(a4);
    v219 = v277[1];
    v20 = v266;
    if (!v219)
    {
      v219 = *(*v277 + 392);
    }

    v220 = sub_10003834C(a4);
    v221 = sub_100026B88(v219, v218 & 0xFFFFFC00, v220, v284, v20, &v281);
    if (!v221)
    {
      v246 = v277;
      atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
      sub_10003D180(v246, v20, 0);
      v274 = 1;
      v46 = v272;
      a2 = v257;
      a7 = v253;
      LOWORD(v47) = v262;
      goto LABEL_142;
    }

    v42 = v221;
    v275 = 0;
    v273 = 0;
    *(&v272 + 4) = 0;
    LODWORD(v115) = 0;
    LOWORD(v116) = 0;
    v117 = 0;
    v276 = 0;
    v118 = 0;
    LODWORD(v272) = 0;
    v119 = 0;
    v160 = 1;
    goto LABEL_296;
  }

  a2 = v257;
  a7 = v253;
  v46 = v272;
  v67 = v267;
  if ((v68 & 2) != 0)
  {
    goto LABEL_280;
  }

  v271 = v210;
  v45 = 0;
  v274 = 1;
LABEL_312:
  v20 = v266;
LABEL_142:
  if (!a2 && (v45 != 0) | v274 & 1)
  {
    v109 = v45;
    v110 = v47;
    v111 = sub_100038354(a4);
    v112 = v277[1];
    if (!v112)
    {
      v112 = *(*v277 + 392);
    }

    v113 = sub_10003834C(a4);
    v114 = sub_100026B88(v112, v111 & 0xFFFFFC00, v113, v284, v20, &v282);
    if (v114)
    {
      v42 = v114;
      v275 = 0;
      v273 = 0;
      *(&v272 + 4) = 0;
      LODWORD(v115) = 0;
      LOWORD(v116) = 0;
      v117 = 0;
      v276 = 0;
      v118 = 0;
      LODWORD(v272) = 0;
      v119 = 0;
      v257 = 0;
      goto LABEL_195;
    }

    v120 = v277;
    atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
    sub_10003D180(v120, v20, 0);
    LOWORD(v47) = v110;
    v45 = v109;
  }

  v121 = v47;
  if (v46 >= v47)
  {
    v122 = v261;
  }

  else
  {
    v122 = 0;
  }

  v123 = a4[7];
  v276 = v122;
  if (v122 != 1)
  {
    v275 = 0;
    v131 = 0;
    v125 = 0;
    DWORD1(v272) = 0;
    goto LABEL_158;
  }

  v124 = *(v123 + 36);
  v125 = v124 + ~v46;
  v126 = (v124 + ~v46);
  if (v126 < 1)
  {
    goto LABEL_175;
  }

  v127 = v283;
  v128 = sub_100029050(a4, v283, v126, v20);
  if (!v128)
  {
    if ((v274 & 1) == 0)
    {
      v209 = sub_10001D454(v127, 0, &v280[3], &v279);
      if (v209)
      {
        v42 = v209;
        DWORD2(v272) = v125;
        v138 = v256;
      }

      else
      {
        v138 = v256;
        v215 = sub_10001F8A0(a2, (v256 + 1), *&v280[3], v279, 0);
        if (!v215)
        {
          DWORD1(v272) = 1;
          goto LABEL_176;
        }

        v42 = v215;
        DWORD2(v272) = v125;
      }

      v216 = v277[1];
      if (v216)
      {
        v217 = (v216 + 4040);
      }

      else
      {
        v217 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3031, v217, v42);
      v160 = 0;
      v275 = 0;
      v273 = 0;
      LODWORD(v115) = 0;
      LOWORD(v116) = 0;
      v117 = 0;
      *&v272 = 0;
      v276 = 0;
      v118 = 0;
      goto LABEL_305;
    }

LABEL_175:
    DWORD1(v272) = 0;
    v138 = v256;
LABEL_176:
    v150 = sub_10001D56C(a4, v46, &v280[1], &v278);
    if (v150)
    {
      v42 = v150;
      DWORD2(v272) = v125;
      v275 = 0;
      v273 = 0;
      LODWORD(v115) = 0;
      LOWORD(v116) = 0;
      v117 = 0;
      v276 = 0;
      v118 = 0;
      LODWORD(v272) = 0;
      v119 = 0;
      goto LABEL_196;
    }

    v275 = 0;
    if (v278)
    {
      v131 = v278;
      if (v278 != 65534)
      {
        v159 = sub_100012434(v278, 0xC5E0E89uLL);
        if (!v159)
        {
          DWORD2(v272) = v125;
          v275 = 0;
          v273 = 0;
          LODWORD(v115) = 0;
          LOWORD(v116) = 0;
          v117 = 0;
          v276 = 0;
          v118 = 0;
          LODWORD(v272) = 0;
          v119 = 0;
          v42 = 12;
          goto LABEL_196;
        }

        v275 = v159;
        memcpy(v159, *&v280[1], v278);
        v131 = v278;
      }
    }

    else
    {
      v131 = 0;
    }

    sub_100024734(a4, v272, v20);
    v211 = v277;
    atomic_fetch_add_explicit((v277[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_10003D180(v211, v20, 0);
    v123 = a4[7];
LABEL_158:
    v273 = v131;
    v132 = *(v123 + 36) - v121;
    v115 = v132;
    DWORD2(v272) = v125;
    if (v115 < 1)
    {
      v270 = 0;
    }

    else
    {
      v133 = v283;
      v134 = sub_100029050(v269, v283, v132, v20);
      if (v134)
      {
        v42 = v134;
        v135 = v277[1];
        if (v135)
        {
          v136 = (v135 + 4040);
        }

        else
        {
          v136 = (*(*(*v277 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3068, v136, v115, v134);
        LODWORD(v115) = 0;
        LOWORD(v116) = 0;
        v117 = 0;
        goto LABEL_194;
      }

      v145 = v254;
      v146 = v274;
      if ((v274 & 1) == 0)
      {
        v203 = sub_10001D454(v133, 0, &v280[3], &v279);
        if (v203 || (v203 = sub_10001F8A0(a2, (v256 + 1), *&v280[3], v279, 0), v146 = v274, v203))
        {
          v42 = v203;
          v204 = v277[1];
          if (v204)
          {
            v205 = (v204 + 4040);
          }

          else
          {
            v205 = (*(*(*v277 + 392) + 384) + 212);
          }

          sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3076, v205, v203);
          v160 = 0;
          LOWORD(v116) = 0;
          v117 = 0;
          v118 = 0;
          LODWORD(v272) = 0;
          v119 = 0;
LABEL_296:
          v138 = v256;
          goto LABEL_197;
        }
      }

      v270 = v146 ^ 1;
      if (a2 && !*(v269[7] + 36))
      {
        v138 = v256;
        v147 = sub_10001F8A0(a2, v256, v145, a7, 0);
        if (v147)
        {
          v42 = v147;
          v148 = v277[1];
          if (v148)
          {
            v149 = (v148 + 4040);
          }

          else
          {
            v149 = (*(*(*v277 + 392) + 384) + 212);
          }

          sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3087, v149, v147);
          LOWORD(v116) = 0;
          v117 = 0;
          LODWORD(v272) = 0;
          v119 = 0;
          goto LABEL_370;
        }

        v137 = 1;
LABEL_164:
        v139 = v282;
        LODWORD(v272) = v137;
        if (v282)
        {
          v268 = v115;
          v140 = v269;
          v141 = v269[7];
          v116 = *(v141 + 36);
          v142 = sub_100029050(v282, v269, -*(v141 + 36), v20);
          if (v142)
          {
            v42 = v142;
            v143 = v277[1];
            if (v143)
            {
              v144 = (v143 + 4040);
            }

            else
            {
              v144 = (*(*(*v277 + 392) + 384) + 212);
            }

            sub_100012178("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3103, v144, -v116, v142);
            LOWORD(v116) = 0;
            v117 = 0;
            v119 = 0;
            v160 = v274;
            LODWORD(v115) = v268;
            goto LABEL_371;
          }

          sub_1000295B8(v140, (*(v140[7] + 34) + 1), v20);
          if (*(*(v139 + 56) + 36))
          {
            v206 = sub_10001D454(v139, 0, &v280[3], &v279);
            if (v206)
            {
LABEL_291:
              v42 = v206;
              v213 = v277[1];
              v160 = v274;
              LODWORD(v115) = v268;
              v118 = v270;
              if (v213)
              {
                v214 = (v213 + 4040);
              }

              else
              {
                v214 = (*(*(*v277 + 392) + 384) + 212);
              }

              sub_100012178("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3126, v214, v206);
              v117 = 0;
LABEL_305:
              v119 = 0;
              goto LABEL_197;
            }

            v207 = *&v280[3];
            v208 = v279;
          }

          else
          {
            v207 = v254;
            *&v280[3] = v254;
            v208 = v253;
            v279 = v253;
          }

          v212 = v252;
          *v252 = *(v139 + 112);
          v115 = v269;
          v206 = sub_100022A88(v269, v207, v208, v212, (*(v269 + 407) & 0x7Fu) + 8, v20, 0, 0);
          if (v206)
          {
            goto LABEL_291;
          }

          v257 = v115;
          LODWORD(v115) = v268;
        }

        else
        {
          LOWORD(v116) = 0;
        }

        if (v274)
        {
          v151 = v115;
          v152 = v138;
          v153 = v283;
          if (v283)
          {
            v154 = v283[7];
            if (*(v154 + 36))
            {
              v155 = sub_10001D454(v283, 0, &v280[3], &v279);
              if (v155 || (v156 = v252, *v252 = v153[14], v155 = sub_100022A88(v257, *&v280[3], v279, v156, (*(v257 + 407) & 0x7Fu) + 8, v20, 0, 0), v155))
              {
                v42 = v155;
                v138 = v152;
                v157 = v277[1];
                LODWORD(v115) = v151;
                v118 = v270;
                if (v157)
                {
                  v158 = (v157 + 4040);
                }

                else
                {
                  v158 = (*(*(*v277 + 392) + 384) + 212);
                }

                sub_100012178("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3142, v158, v155);
                v117 = 0;
                v119 = 0;
                v160 = 1;
                goto LABEL_197;
              }

              v119 = 1;
            }

            else
            {
              if ((*(v154 + 32) & 2) != 0)
              {
                v281 = v283;
                v45 = 1;
              }

              else
              {
                atomic_fetch_add_explicit((v277[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
                sub_100039E90(v153, v20);
                sub_10003C190(v153, 2);
                sub_100037058(v153);
              }

              v119 = 0;
              v283 = 0;
            }
          }

          else
          {
            v119 = 0;
          }

          v138 = v152;
          LODWORD(v115) = v151;
        }

        else
        {
          v119 = 0;
        }

        if (v45)
        {
          v222 = v138;
          if (v139)
          {
            v223 = v139;
          }

          else
          {
            v223 = v269;
          }

          if ((*(v223[7] + 32) & 2) != 0)
          {
            v117 = 0;
            *&v280[3] = v254;
            v235 = v253;
            v279 = v253;
            v236 = v254;
            v224 = v281;
          }

          else
          {
            v224 = v281;
            v225 = sub_100029050(v223, v281, 1, v20);
            if (v225)
            {
              v42 = v225;
              v226 = v277[1];
              if (v226)
              {
                v227 = (v226 + 4040);
              }

              else
              {
                v227 = (*(*(*v277 + 392) + 384) + 212);
              }

              sub_100012178("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3169, v227, 1, v225);
LABEL_368:
              v117 = 0;
LABEL_369:
              v138 = v222;
LABEL_370:
              v160 = v274;
LABEL_371:
              v118 = v270;
              goto LABEL_197;
            }

            v241 = sub_10001D454(v224, 0, &v280[3], &v279);
            if (v241)
            {
              v42 = v241;
              v242 = v277[1];
              if (v242)
              {
                v243 = (v242 + 4040);
              }

              else
              {
                v243 = (*(*(*v277 + 392) + 384) + 212);
              }

              sub_100012178("%s:%d: %s failed to get newnode minkey: %d\n", "bt_shift_or_split", 3174, v243, v241);
              goto LABEL_368;
            }

            v236 = *&v280[3];
            v117 = 1;
            v235 = v279;
          }

          v237 = v252;
          *v252 = *(v224 + 112);
          v238 = sub_100022A88(v257, v236, v235, v237, (*(v257 + 407) & 0x7Fu) + 8, v266, 0, 0);
          if (v238)
          {
            v42 = v238;
            v239 = v277[1];
            if (v239)
            {
              v240 = (v239 + 4040);
            }

            else
            {
              v240 = (*(*(*v277 + 392) + 384) + 212);
            }

            sub_100012178("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3186, v240, v238);
            goto LABEL_369;
          }

          v228 = v283;
          v283 = v224;
          v229 = v277;
          v230 = v269;
          v231 = v257;
          v234 = v251;
          v233 = v273;
        }

        else
        {
          if (v271)
          {
            v228 = 0;
            v229 = v277;
            v230 = v269;
            v231 = v257;
            v233 = v273;
            v232 = v274;
            v234 = v251;
          }

          else
          {
            v228 = v283;
            v229 = v277;
            v230 = v269;
            v231 = v257;
            v233 = v273;
            v232 = v274;
            v234 = v251;
            if (v139)
            {
              v283 = v139;
            }

            else
            {
              v283 = 0;
            }
          }

          if ((v232 & 1) == 0)
          {
            goto LABEL_351;
          }
        }

        sub_10002967C(v229, v231, v230);
LABEL_351:
        if (v275)
        {
          sub_1000123F8(v275, v233);
        }

        if (v228)
        {
          sub_10003C190(v228, 2);
          sub_100037058(v228);
        }

        v244 = v282;
        v245 = v283;
        if (v282 && v283 != v282)
        {
          sub_10003C190(v282, 2);
          sub_100037058(v244);
        }

        v42 = 0;
        *v234 = v245;
        return v42;
      }
    }

    v137 = 0;
    v138 = v256;
    goto LABEL_164;
  }

  v42 = v128;
  v129 = v277[1];
  if (v129)
  {
    v130 = (v129 + 4040);
  }

  else
  {
    v130 = (*(*(*v277 + 392) + 384) + 212);
  }

  sub_100012178("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3023, v130, 0, v128);
  v275 = 0;
  v273 = 0;
  *(&v272 + 4) = 0;
  LODWORD(v115) = 0;
  LOWORD(v116) = 0;
  v117 = 0;
  v276 = 0;
LABEL_194:
  v118 = 0;
  LODWORD(v272) = 0;
  v119 = 0;
LABEL_195:
  v138 = v256;
LABEL_196:
  v160 = v274;
LABEL_197:
  v161 = v277[1];
  if (v161)
  {
    v162 = (v161 + 4040);
  }

  else
  {
    v162 = (*(*(*v277 + 392) + 384) + 212);
  }

  sub_100012178("%s:%d: %s reverting on error: %d\n", "bt_shift_or_split", 3222, v162, v42);
  if (v119)
  {
    sub_100024734(v257, (v138 + 1), v266);
  }

  v163 = v275;
  if (v117)
  {
    v164 = sub_100029050(v269, v281, -1, v266);
    v42 = v164;
    if (v164)
    {
      v165 = v277[1];
      if (v165)
      {
        v166 = (v165 + 4040);
      }

      else
      {
        v166 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3229, v166, -1, v164);
    }
  }

  v167 = v116;
  v168 = v266;
  v169 = v257;
  if (v167 >= 1)
  {
    v170 = v118;
    v171 = v115;
    v172 = v269;
    sub_1000295B8(v269, (*(v269[7] + 34) - 1), v266);
    v173 = sub_100029050(v282, v172, v167, v168);
    if (v173)
    {
      v174 = v277[1];
      if (v174)
      {
        v175 = (v174 + 4040);
      }

      else
      {
        v175 = (*(*(*v277 + 392) + 384) + 212);
      }

      LODWORD(v115) = v171;
      sub_100012178("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3239, v175, v173, v42);
      v169 = 0;
    }

    else
    {
      v169 = 0;
      LODWORD(v115) = v171;
    }

    v118 = v170;
  }

  if (v115 >= 1)
  {
    v176 = v283;
    v177 = sub_100029050(v269, v283, -v115, v168);
    if (v177)
    {
      v178 = v277[1];
      if (v178)
      {
        v179 = (v178 + 4040);
      }

      else
      {
        v179 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3246, v179, v177, v42);
    }

    if (!(v160 & 1 | ((v118 & 1) == 0)))
    {
      v180 = sub_10001D454(v176, 0, &v280[3], &v279);
      if (v180 || (v180 = sub_10001F8A0(v169, (v256 + 1), *&v280[3], v279, 0)) != 0)
      {
        v181 = v277[1];
        if (v181)
        {
          v182 = (v181 + 4040);
        }

        else
        {
          v182 = (*(*(*v277 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3254, v182, v180, v42);
      }
    }

    if (v272)
    {
      v183 = sub_10001D454(v269, 0, &v280[3], &v279);
      if (v183 || (v183 = sub_10001F8A0(v169, v256, *&v280[3], v279, 0)) != 0)
      {
        v184 = v277[1];
        if (v184)
        {
          v185 = (v184 + 4040);
        }

        else
        {
          v185 = (*(*(*v277 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3263, v185, v183, v42);
      }
    }
  }

  v186 = v269;
  v187 = v273;
  if (v276)
  {
    v188 = sub_100022A88(v269, v254, v253, v163, v273, v168, 0, 0);
    if (v188)
    {
      v189 = v277[1];
      if (v189)
      {
        v190 = (v189 + 4040);
      }

      else
      {
        v190 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3270, v190, v188, v42);
    }

    if (v163)
    {
      sub_1000123F8(v163, v187);
    }
  }

  v191 = v277;
  if (SWORD4(v272) >= 1)
  {
    v192 = v283;
    v193 = sub_100029050(v186, v283, -WORD4(v272), v168);
    if (v193)
    {
      v194 = v191[1];
      if (v194)
      {
        v195 = (v194 + 4040);
      }

      else
      {
        v195 = (*(*(*v191 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3279, v195, v193, v42);
    }

    if (!(v160 & 1 | ((BYTE4(v272) & 1) == 0)))
    {
      v196 = sub_10001D454(v192, 0, &v280[3], &v279);
      if (v196 || (v196 = sub_10001F8A0(v169, (v256 + 1), *&v280[3], v279, 0)) != 0)
      {
        v197 = v191[1];
        if (v197)
        {
          v198 = (v197 + 4040);
        }

        else
        {
          v198 = (*(*(*v191 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3287, v198, v196, v42);
      }
    }
  }

  v199 = v283;
  if (v283)
  {
    if (!*(v283[7] + 36))
    {
      atomic_fetch_add_explicit((v191[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      sub_100039E90(v199, v168);
    }

    sub_10003C190(v199, 2);
    sub_100037058(v199);
  }

  v200 = v281;
  if (v281)
  {
    atomic_fetch_add_explicit((v191[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_100039E90(v200, v168);
    sub_10003C190(v200, 2);
    sub_100037058(v200);
  }

  v201 = v282;
  if (v282)
  {
    atomic_fetch_add_explicit((v191[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_100039E90(v201, v168);
    sub_10003C190(v201, 2);
    sub_100037058(v201);
  }

  return v42;
}

uint64_t sub_100022A88(void *a1, unint64_t *a2, size_t a3, void *a4, unsigned int a5, uint64_t a6, unsigned __int16 *a7, char *a8)
{
  v16 = a1[50];
  __chkstk_darwin();
  v18 = &v24[-v17];
  bzero(&v24[-v17], v19);
  v26 = -21846;
  v25 = -86;
  result = sub_10001F6CC(a1, a2, a3, &v26, &v25);
  if (!result)
  {
    if (a8)
    {
      *a8 = v25;
    }

    if (a7)
    {
      *a7 = v26;
    }

    if ((*(a1[7] + 32) & 0xA) != 8)
    {
      goto LABEL_9;
    }

    v21 = a1[51];
    if (*a4 > v21)
    {
      *v18 = *a4 - v21;
      a4 = v18;
LABEL_9:
      if (v25 == 1)
      {
        return sub_10001F8A0(a1, v26, a2, a3, a4);
      }

      else
      {
        return sub_100020204(a1, v26, a2, a3, a4, a5, a6);
      }
    }

    v22 = a1[1];
    if (v22)
    {
      v23 = (v22 + 4040);
    }

    else
    {
      v23 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_insert", 2273, v23, *a4, v21);
    return 22;
  }

  return result;
}

uint64_t sub_100022C68(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, unsigned int a6, unint64_t a7, uint64_t *a8)
{
  v44 = a3;
  v15 = a1[50];
  __chkstk_darwin(a1);
  v17 = (&v41 - v16);
  bzero(&v41 - v16, v18);
  v50 = 0;
  v49 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v19 = sub_10001C800(a1, a4, a6);
  if (v19)
  {
    return v19;
  }

  v19 = sub_10003BC6C(a1, (v15 >> 3) & 2, a7);
  if (v19)
  {
    return v19;
  }

  v22 = a1[49];
  v23 = *(v22 + 16) < a4 || *(v22 + 20) < a6;
  v43 = v23;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v48 = -86;
  v41 = a5;
  v42 = a8;
  if (a8)
  {
    v24 = *a8;
    if (*a8)
    {
      if (a8[1] == a1 && ((v43 | ((a1[50] & 0x10) >> 4)) & 1) == 0)
      {
        *v17 = v24;
        if (v24 != sub_100038018(a1) && !sub_10001D02C(a1, v17, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, a7, &v51))
        {
          v25 = v51;
          if (*(v51[7] + 32) & 2) != 0 && !sub_10002067C(v51, v44, a4, &v49, &v48) && (v48)
          {
            if ((*(v25[7] + 32) & 2) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_45;
          }

          sub_10003C190(v25, 2);
          sub_100037058(v25);
        }
      }
    }
  }

  v20 = 2;
  sub_10003BBDC(a1, 2);
  sub_10003C894(a1);
  v27 = a1 + 7;
  v26 = a1[7];
  if ((*(v26 + 32) & 2) == 0)
  {
    v28 = 0;
    v29 = 2;
    v25 = a1;
    while (1)
    {
      if (!*(v26 + 36))
      {
        v20 = v29;
        goto LABEL_40;
      }

      v30 = sub_10001F6CC(v25, v44, a4, &v49, &v48);
      if (v30)
      {
        goto LABEL_57;
      }

      v31 = v49;
      if ((v48 & 1) == 0 && v49)
      {
        v31 = --v49;
      }

      v30 = sub_10001D758(v25, v31, v17);
      if (v30 || (v30 = sub_10001D02C(a1, v17, a2, 3u, *(*v27 + 34) - 1, a7, &v50), v30))
      {
LABEL_57:
        v20 = v30;
        v51 = v25;
        goto LABEL_62;
      }

      if ((a1[50] & 0x10) != 0 && v50[14] != *v17)
      {
        sub_1000206C0(v25, v31, v50 + 14, a7);
      }

      if (v25 != a1 || !v43)
      {
        sub_10003C190(v25, 2);
        sub_100037058(v25);
      }

      v25 = v50;
      if (!v50)
      {
        break;
      }

      v29 = 0;
      v20 = 0;
      v27 = v50 + 7;
      v26 = v50[7];
      v28 = 1;
      if ((*(v26 + 32) & 2) != 0)
      {
        goto LABEL_40;
      }
    }

    v51 = 0;
    goto LABEL_60;
  }

  v28 = 0;
  v25 = a1;
LABEL_40:
  v51 = v25;
  if ((*(v25[7] + 32) & 2) == 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v20 = sub_10002067C(v25, v44, a4, &v49, &v48);
  if (!v20)
  {
    if (v48 != 1)
    {
LABEL_60:
      v20 = 2;
      goto LABEL_61;
    }

LABEL_45:
    v47 = 0xAAAAAAAAAAAAAAAALL;
    v46 = 0;
    v45 = -21846;
    v32 = v49;
    v33 = sub_10001D454(v25, v49, &v47, &v45);
    v35 = v41;
    v34 = v42;
    if (!v33)
    {
      v36 = v47;
      v37 = a1[1];
      if (!v37)
      {
        v37 = *(*a1 + 392);
      }

      if (!(a1[52])(v37, v47, v45, v44, a4, &v46) && v46)
      {
        panic("you can't change a key here!  (ekey %p eklen %d; key %p klen %d; n %p bt %p)\n", v36, v45, v44, a4, v25, a1);
      }
    }

    v20 = sub_10001F8A0(v25, v32, v44, a4, v35, a6, a7);
    if (v20)
    {
      goto LABEL_61;
    }

    v38 = a1[49];
    v39 = *(v38 + 16);
    if (v39 < a4)
    {
      *(v38 + 16) = a4;
    }

    if (*(v38 + 20) >= a6)
    {
      if (v39 >= a4 && (a1[50] & 0x80) == 0)
      {
LABEL_69:
        if (v34)
        {
          *v34 = sub_100038018(v25);
          v34[1] = a1;
        }

        goto LABEL_61;
      }
    }

    else
    {
      *(v38 + 20) = a6;
    }

    sub_10003D180(a1, a7, 0);
    goto LABEL_69;
  }

LABEL_61:
  v25 = v51;
  if (v51)
  {
LABEL_62:
    sub_10003C190(v25, 2);
    sub_100037058(v25);
  }

  v40 = !v43;
  if (v25 == a1)
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    sub_10003C190(a1, 2);
    sub_100037058(a1);
  }

  return v20;
}

uint64_t sub_1000231AC(void *a1, uint64_t a2, unint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7, unint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v35 = a3;
  v17 = a1[50];
  __chkstk_darwin(a1);
  v19 = (&v31 - v18);
  bzero(&v31 - v18, v20);
  v38 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v33 = a5;
  v34 = a7;
  v21 = sub_10001C800(a1, a4, a6);
  if (!v21)
  {
    sub_10003BBDC(a1, 2);
    v22 = sub_10003BC6C(a1, (*(a1 + 100) >> 3) & 2, a8);
    if (v22)
    {
      v21 = v22;
      sub_10003C190(a1, 2);
    }

    else
    {
      v31 = a9;
      v32 = a10;
      v37 = -21846;
      v36 = -86;
      sub_10003C894(a1);
      v24 = 0;
      v25 = 2;
      v26 = a1;
      while (1)
      {
        v27 = v26;
        v28 = v26[7];
        if ((*(v28 + 32) & 2) != 0)
        {
          v25 = sub_10002067C(v26, v35, a4, &v37, &v36);
          if (v25)
          {
            goto LABEL_27;
          }

          if (v36 == 1)
          {
            v25 = sub_1000234E0(v26, v37, v35, a4, v33, a6, v34, a8, v31, v32);
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (!*(v28 + 36))
        {
          break;
        }

        v29 = sub_10001F6CC(v26, v35, a4, &v37, &v36);
        if (v29)
        {
          goto LABEL_21;
        }

        v30 = v37;
        if ((v36 & 1) == 0 && v37)
        {
          v30 = --v37;
        }

        v29 = sub_10001D758(v26, v30, v19);
        if (v29 || (v29 = sub_10001D02C(a1, v19, a2, 3u, *(v26[7] + 34) - 1, a8, &v38), v29))
        {
LABEL_21:
          v21 = v29;
          sub_10003C190(v26, 2);
          sub_100037058(v26);
          return v21;
        }

        v26 = v38;
        if ((a1[50] & 0x10) != 0 && *(v38 + 112) != *v19)
        {
          sub_1000206C0(v27, v30, (v38 + 112), a8);
        }

        v21 = 2;
        sub_10003C190(v27, 2);
        sub_100037058(v27);
        v25 = 0;
        v24 = 1;
        if (!v26)
        {
          return v21;
        }
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_26:
      v25 = 2;
LABEL_27:
      sub_10003C190(v26, 2);
      sub_100037058(v26);
      v21 = v25;
      if (!v25)
      {
        if ((a1[50] & 0x80) != 0)
        {
          sub_10003D180(a1, a8, 0);
        }

        return 0;
      }
    }
  }

  return v21;
}

uint64_t sub_1000234E0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v10 = *(a1 + 56);
  if (*(v10 + 36) <= a2)
  {
    return 22;
  }

  v17 = *(v10 + 32);
  v18 = *(a1 + 376);
  if ((v17 & 4) != 0)
  {
    v19 = (v18 + 4 * a2);
  }

  else
  {
    v19 = (v18 + 8 * a2);
  }

  v20 = *v19;
  v21 = (v18 + 4 * a2 + 2);
  if ((v17 & 4) == 0)
  {
    v21 = (v18 + 8 * a2 + 4);
  }

  v22 = *v21;
  v23 = *v19 == 0xFFFFLL;
  if (v20 == 0xFFFF)
  {
    v24 = 0;
  }

  else if ((v17 & 4) != 0)
  {
    v24 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v24 = *(v18 + 8 * a2 + 2);
  }

  if (v22 > 0xFFFD)
  {
    v25 = 0;
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = sub_10001D3DC(a1, a2);
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  result = sub_10001D518(a1, v20, v24);
  if (result)
  {
    return result;
  }

LABEL_17:
  if (!v25)
  {
    if (v20 != 0xFFFF)
    {
LABEL_27:
      if (v25 >= a6)
      {
        v29 = 1;
      }

      else
      {
        v29 = a7;
      }

      result = 22;
      if (v24 == a4 && v29)
      {
        result = a9(*(a1 + 384) + v20, v24, a3, a4, *(a1 + 392) - v22, v25, a5, a6, a10);
        if (!result)
        {
          sub_10003D180(a1, a8, 0);
          return 0;
        }
      }

      return result;
    }

    return 22;
  }

  LODWORD(result) = sub_10001D644(a1, v22, v25);
  v27 = result;
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (v20 != 0xFFFF && v27 == 0)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100023698(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, unsigned int a5, void *a6, unsigned int *a7, void *a8, unsigned int *a9, uint64_t a10)
{
  v18 = (*(a1 + 400) & 0x7F00000000000000uLL) > 0x4000000000000000;
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v121 = 0;
  __chkstk_darwin(a1);
  v20 = (&v99 - v19);
  bzero(&v99 - v19, v21);
  memset(v120, 170, sizeof(v120));
  v119 = a5;
  v118 = -21846;
  v117 = -21846;
  v116 = -21846;
  if (!*(a1 + 416))
  {
    return 22;
  }

  v22 = *(a1 + 400);
  v23 = (v22 >> 9) & 0x3FFF;
  if (!v23)
  {
    if ((((((v22 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72 >= a5)
    {
      goto LABEL_4;
    }

    return 22;
  }

  if (v23 != a5)
  {
    return 22;
  }

LABEL_4:
  v107 = *(*(a1 + 392) + 16);
  v106 = a8;
  v112 = a2;
  sub_10003BBDC(a1, 2);
  v24 = sub_10003BC6C(a1, (*(a1 + 400) >> 3) & 2, a10);
  if (v24)
  {
    v25 = v24;
    sub_10003C190(a1, 2);
    return v25;
  }

  v110 = a10;
  v105 = &v99;
  *&v122 = a1;
  sub_10003C894(a1);
  v27 = sub_100024638(v122, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
  if (v27)
  {
LABEL_10:
    v25 = v27;
    goto LABEL_11;
  }

  v28 = 0;
  v108 = 0;
  v104 = 0;
  v30 = 0;
  v102 = a9;
  v103 = (v107 + 7) & 0x1FFF8;
  v109 = a4;
  while (1)
  {
    if (v30)
    {
      v111 = 1;
      v31 = v123;
      if (!v123)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = v123;
      if (BYTE10(v122) == 1 && WORD4(v122) == 0)
      {
        v104 = WORD4(v123);
        v111 = 1;
        v28 = v122;
        v108 = v123;
        if (!v123)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v111 = 0;
        if (!v123)
        {
          goto LABEL_44;
        }
      }
    }

    if ((*(a1 + 401) & 0x7FFE) != 0)
    {
      goto LABEL_44;
    }

    v115 = 0;
    if (BYTE10(v122) == 1)
    {
      v33 = sub_10001D454(v31, WORD4(v123), &v120[2], &v116);
      if (v33)
      {
        goto LABEL_97;
      }

      v34 = v107;
      if ((*(v123 + 400) & 0x40) == 0)
      {
        v34 = v103;
      }

      v35 = v116;
      if ((*(v123 + 400) & 0x40) == 0)
      {
        v35 = (v116 + 7) & 0xFFF8;
      }

      v36 = v34 - v35;
      if (v36 < 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = 0;
    }

    v114 = sub_100020924(v122);
    v38 = v123;
    v113 = (*(v122 + 407) & 0x7F) + 8;
    if (sub_100020798(v123, 1u, &v114, &v113, v37, 0, 0))
    {
      goto LABEL_43;
    }

    v33 = sub_1000209A0(a1, v124, WORD4(v124), v38, (WORD4(v123) + ((BYTE10(v123) & 1) == 0)), v109, v119, 1u, &v114, &v113, v37, v112, v110, &v115);
    if (v33)
    {
      goto LABEL_97;
    }

    v39 = v115;
    if (!v115)
    {
LABEL_43:
      a4 = v109;
      goto LABEL_44;
    }

    v40 = v123;
    v101 = v123;
    if (v124)
    {
      ++WORD4(v124);
      if (v123)
      {
        if (v108 == v123 || v123 == v28)
        {
          v100 = v123;
          goto LABEL_64;
        }

        sub_10003C190(v123, 2);
        sub_100037058(v40);
      }
    }

    else
    {
      *&v124 = v123;
      if (*(*(v115 + 56) + 36))
      {
        v33 = sub_10001D454(v115, 0, &v120[2], &v116);
        if (v33)
        {
          goto LABEL_97;
        }

        v44 = sub_10002067C(v124, v120[2], v116, &v124 + 4, &v124 + 10);
      }

      else
      {
        v44 = sub_100024638(v123, a3, 0, v109, &v119, a5, &v124 + 4, &v124 + 10);
      }

      v25 = v44;
      if (v44)
      {
        goto LABEL_98;
      }
    }

    v100 = 0;
LABEL_64:
    v45 = v108 != v124 || v108 == 0;
    v46 = v104;
    if (!v45)
    {
      v46 = WORD4(v124);
    }

    v104 = v46;
    *&v123 = v39;
    v33 = sub_100024638(v39, a3, 0, v109, &v119, a5, &v123 + 4, &v123 + 10);
    if (v33)
    {
      goto LABEL_97;
    }

    v47 = v122;
    sub_10003C190(v122, 2);
    sub_100037058(v47);
    *&v122 = 0;
    v33 = sub_10001D758(v123, WORD4(v123), v20);
    if (v33)
    {
      goto LABEL_97;
    }

    v33 = sub_10001D02C(a1, v20, v112, 3u, *(*(v123 + 56) + 34) - 1, v110, &v122);
    if (v33)
    {
      goto LABEL_97;
    }

    v48 = v122;
    if ((*(a1 + 400) & 0x10) != 0)
    {
      a4 = v109;
      if (*(v122 + 112) != *v20)
      {
        sub_1000206C0(v123, WORD4(v123), (v122 + 112), v110);
        v48 = v122;
      }
    }

    else
    {
      a4 = v109;
    }

    v33 = sub_100024638(v48, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
    if (v33)
    {
LABEL_97:
      v25 = v33;
LABEL_98:
      v121 = v28;
LABEL_99:
      v29 = v108;
      goto LABEL_100;
    }

    if (v108 == v101)
    {
      v51 = WORD4(v123);
      v49 = v100;
      if (v108 == a1 && !WORD4(v123))
      {
        v28 = v123;
        goto LABEL_44;
      }

      v50 = v111;
      if (WORD4(v123))
      {
        goto LABEL_92;
      }

      v104 = WORD4(v124);
      goto LABEL_88;
    }

    v49 = v100;
    if (v111)
    {
      v50 = 1;
      goto LABEL_93;
    }

    v51 = WORD4(v123);
    if (BYTE10(v123) == 1 && !WORD4(v123))
    {
      v104 = WORD4(v124);
      v50 = 1;
LABEL_88:
      v108 = v124;
      v28 = v123;
      goto LABEL_93;
    }

    v50 = 0;
    if (BYTE10(v122) == 1 && !WORD4(v122))
    {
      v50 = 1;
LABEL_92:
      v108 = v123;
      v28 = v122;
      v104 = v51;
    }

LABEL_93:
    v111 = v50;
    if (v49 && v49 != v108 && v49 != v28)
    {
      sub_10003C190(v49, 2);
      sub_100037058(v49);
    }

LABEL_44:
    if ((*(*(v122 + 56) + 32) & 2) != 0)
    {
      break;
    }

    v41 = v124;
    if (v124 && v124 != v108 && v124 != v28)
    {
      sub_10003C190(v124, 2);
      sub_100037058(v41);
    }

    v42 = v123;
    v123 = v122;
    v124 = v42;
    *&v122 = 0;
    v33 = sub_10001D758(v123, WORD4(v123), v20);
    if (!v33)
    {
      v33 = sub_10001D02C(a1, v20, v112, 3u, *(*(v123 + 56) + 34) - 1, v110, &v122);
      if (!v33)
      {
        v43 = v122;
        if ((*(a1 + 400) & 0x10) != 0)
        {
          a4 = v109;
          if (*(v122 + 112) != *v20)
          {
            sub_1000206C0(v123, WORD4(v123), (v122 + 112), v110);
            v43 = v122;
          }
        }

        else
        {
          a4 = v109;
        }

        v33 = sub_100024638(v43, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
        v30 = v111;
        if (!v33)
        {
          continue;
        }
      }
    }

    goto LABEL_97;
  }

  v121 = v28;
  v56 = sub_100024638(v122, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
  if (v56)
  {
LABEL_127:
    v25 = v56;
    goto LABEL_99;
  }

  if (BYTE10(v122) != 1)
  {
    v25 = 2;
    goto LABEL_99;
  }

  if (a6)
  {
    v56 = sub_10001D454(v122, 0, &v120[1], &v118);
    if (v56)
    {
      goto LABEL_127;
    }

    v57 = v118;
    v58 = *a7;
    if (*a7 >= v118)
    {
      v59 = v118;
    }

    else
    {
      v59 = v58;
    }

    memcpy(a6, v120[1], v59);
    *a7 = v57;
    if (v58 < v57)
    {
      v25 = 34;
      goto LABEL_99;
    }
  }

  v29 = v108;
  if (v106)
  {
    v60 = sub_10001D56C(v122, 0, v120, &v117);
    if (v60)
    {
      goto LABEL_139;
    }

    v61 = v117;
    v62 = v117 == 65534 ? 0 : v117;
    v63 = v102;
    v64 = *v102;
    v65 = *v102 >= v62 ? v62 : v64;
    memcpy(v106, v120[0], v65);
    *v63 = v61;
    if (v64 < v62)
    {
      v25 = 34;
      goto LABEL_100;
    }
  }

  v66 = v110;
  sub_100024734(v122, WORD4(v122), v110);
  atomic_fetch_add_explicit((*(a1 + 392) + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  sub_10003D180(a1, v66, 0);
  if (WORD4(v122))
  {
    v25 = 0;
    goto LABEL_160;
  }

  v25 = 0;
  if (*(*(v122 + 56) + 36) && v123)
  {
    v67 = sub_10001D454(v122, 0, &v120[2], &v116);
    if (v67)
    {
      v25 = v67;
      goto LABEL_155;
    }

    v25 = sub_10001F8A0(v123, WORD4(v123), v120[2], v116, 0);
    if (v25)
    {
LABEL_155:
      v68 = *(a1 + 8);
      if (v68)
      {
        v69 = (v68 + 4040);
      }

      else
      {
        v69 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5068, v69, v25);
    }

    v29 = v108;
  }

LABEL_160:
  v70 = sub_100024A08(a1, v122);
  v71 = v124;
  v72 = v111;
  if (v124)
  {
    if (v124 != v29 && v124 != v28)
    {
      sub_10003C190(v124, 2);
      sub_100037058(v71);
      v72 = v111;
    }

    *&v124 = 0;
  }

  v73 = v123;
  if (v123)
  {
    if (v123 != v29 && v123 != v28)
    {
      sub_10003C190(v123, 2);
      sub_100037058(v73);
      v72 = v111;
    }

    *&v123 = 0;
  }

  if (v72 && *(*(v122 + 56) + 36))
  {
    v60 = sub_10001D454(v122, 0, &v120[2], &v116);
    if (v60)
    {
LABEL_139:
      v25 = v60;
      goto LABEL_100;
    }

    if (v29)
    {
      v74 = sub_10001F8A0(v108, v104, v120[2], v116, 0);
      v25 = v74;
      if (v74)
      {
        v75 = *(a1 + 8);
        if (v75)
        {
          v76 = (v75 + 4040);
        }

        else
        {
          v76 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5094, v76, v74);
      }

      if (v108 != v124 && v108 != v123 && v108 != v122)
      {
        v77 = v108;
        sub_10003C190(v108, 2);
        sub_100037058(v77);
      }
    }

    else
    {
      v25 = 0;
    }

    v78 = v121;
    v79 = v121 + 56;
    v80 = v109;
    if ((*(*(v121 + 56) + 32) & 2) == 0)
    {
      v81 = v119;
      v82 = v120[2];
      while (1)
      {
        LOWORD(v115) = -21846;
        LOBYTE(v114) = -86;
        v28 = v78;
        v83 = sub_10002067C(v78, v80, v81, &v115, &v114);
        if (v83)
        {
          v25 = v83;
          goto LABEL_12;
        }

        if (v114 != 1)
        {
          break;
        }

        if (*(*v79 + 34) == 1)
        {
          v89 = *(a1 + 8);
          if (v89)
          {
            v90 = (v89 + 4040);
          }

          else
          {
            v90 = (*(*(*a1 + 392) + 384) + 212);
          }

          v91 = sub_100038018(v28);
          v92 = sub_10003834C(v28);
          sub_100012178("%s:%d: %s minkey update traversal unexpectedly found the removed key in level 1 node; oid %llu subtype 0x%x level %d\n", "bt_remove_internal", 5117, v90, v91, v92, *(*v79 + 34));
          break;
        }

        v84 = v115;
        v85 = sub_10001F8A0(v28, v115, v82, v116, 0);
        if (v85)
        {
          v86 = *(a1 + 8);
          if (v86)
          {
            v87 = (v86 + 4040);
          }

          else
          {
            v87 = (*(*(*a1 + 392) + 384) + 212);
          }

          sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5123, v87, v85);
        }

        v25 = sub_10001D758(v28, v84, v20);
        v88 = *(*v79 + 34);
        v121 = 0;
        if (!v25)
        {
          v25 = sub_10001D02C(a1, v20, v112, 3u, v88 - 1, v110, &v121);
        }

        v80 = v109;
        if (v28 != v124 && v28 != v123 && v28 != v122)
        {
          sub_10003C190(v28, 2);
          sub_100037058(v28);
        }

        if (!v25)
        {
          v78 = v121;
          v79 = v121 + 56;
          if ((*(*(v121 + 56) + 32) & 2) == 0)
          {
            continue;
          }
        }

        goto LABEL_213;
      }

      v25 = 0;
    }
  }

  else if (v29 && v29 != v124 && v29 != v122)
  {
    sub_10003C190(v29, 2);
    sub_100037058(v29);
  }

LABEL_213:
  v93 = v121;
  if (v121)
  {
    if (v121 != v124 && v121 != v123 && v121 != v122)
    {
      sub_10003C190(v121, 2);
      sub_100037058(v93);
    }

    v121 = 0;
  }

  if (!v70)
  {
    v94 = 0;
    v96 = 0;
    goto LABEL_226;
  }

  if (WORD4(v122) || !*(*(v122 + 56) + 36))
  {
    v94 = 0;
    v95 = 0;
    goto LABEL_222;
  }

  v27 = sub_10001D454(v122, 0, &v120[2], &v116);
  if (v27)
  {
    goto LABEL_10;
  }

  v95 = v116;
  v98 = sub_100012434(v116, 0x144C515AuLL);
  v94 = v98;
  if (v98)
  {
    memcpy(v98, v120[2], v116);
  }

  v25 = 0;
LABEL_222:
  if (v94)
  {
    v96 = v95;
  }

  else
  {
    v94 = v109;
    v96 = v119;
  }

LABEL_226:
  v97 = v122;
  sub_10003C190(v122, 2);
  sub_100037058(v97);
  *&v122 = 0;
  if (v70)
  {
    sub_100024AB4(a1, v112, v94, v96, v110);
    if (v94 != v109)
    {
      sub_1000123F8(v94, v96);
    }
  }

LABEL_11:
  v28 = 0;
LABEL_12:
  v29 = 0;
LABEL_100:
  v52 = v124;
  if (v124)
  {
    if (v124 != v29 && v124 != v28)
    {
      sub_10003C190(v124, 2);
      sub_100037058(v52);
    }

    *&v124 = 0;
  }

  v54 = v123;
  if (v123)
  {
    if (v123 != v29 && v123 != v28)
    {
      sub_10003C190(v123, 2);
      sub_100037058(v54);
    }

    *&v123 = 0;
  }

  v55 = v122;
  if (v122)
  {
    if (v122 != v29 && v122 != v28)
    {
      sub_10003C190(v122, 2);
      sub_100037058(v55);
    }

    *&v122 = 0;
  }

  if (v29 && v29 != v124 && v29 != v123)
  {
    sub_10003C190(v29, 2);
    sub_100037058(v29);
    v28 = v121;
  }

  if (v28 && v28 != v124 && v28 != v123 && v28 != v122)
  {
    sub_10003C190(v28, 2);
    sub_100037058(v28);
  }

  return v25;
}

uint64_t sub_100024638(uint64_t a1, char a2, int a3, unint64_t *a4, _WORD *a5, unsigned int a6, _WORD *a7, BOOL *a8)
{
  if ((a2 & 1) == 0)
  {
    v13 = sub_10001F6CC(a1, a4, *a5, a7, a8);
    if (v13)
    {
      return v13;
    }

    if (!*a8 && *a7)
    {
      v13 = 0;
      --*a7;
      return v13;
    }

    return 0;
  }

  if (!*(*(a1 + 56) + 36))
  {
    return 2;
  }

  *a7 = 0;
  *a8 = 1;
  if (!a3)
  {
    return 0;
  }

  __src = 0xAAAAAAAAAAAAAAAALL;
  v16 = -21846;
  v13 = sub_10001D454(a1, 0, &__src, &v16);
  if (!v13)
  {
    if (v16 >= a6)
    {
      v14 = a6;
    }

    else
    {
      v14 = v16;
    }

    *a5 = v14;
    memcpy(a4, __src, v14);
  }

  return v13;
}

void sub_100024734(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(v6 + 32) & 4;
  if (v7)
  {
    v8 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v8 = *(*(a1 + 376) + 8 * a2 + 2);
  }

  if (*(a1 + 440) <= v8)
  {
    *(a1 + 440) = 0;
    v7 = *(v6 + 32) & 4;
  }

  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  v11 = (v9 + 8 * a2);
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *v12;
  v14 = *(a1 + 400);
  if ((v14 & 0x40) != 0)
  {
    v15 = v8;
  }

  else
  {
    v15 = (v8 + 7) & 0xFFF8;
  }

  if (v13 != 0xFFFF)
  {
    v16 = sub_10001D518(a1, v13, v15);
    v6 = *(a1 + 56);
    v14 = *(a1 + 400);
    if (!v16)
    {
      v17 = (v15 + 7) & 0xFFF8;
      if ((v14 & 0x40) != 0)
      {
        v17 = v15;
      }

      if (v17 >= 4u)
      {
        v18 = (*(a1 + 384) + v13);
        v18[1] = v17;
        *v18 = *(v6 + 48);
        *(v6 + 48) = v13;
      }

      *(v6 + 50) += v17;
      v14 = *(a1 + 400);
    }
  }

  v19 = *(a1 + 376);
  v20 = v19 + 4 * a2 + 2;
  v21 = v19 + 8 * a2 + 4;
  if ((*(v6 + 32) & 4) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *v22;
  v24 = sub_10001D3DC(a1, a2);
  if ((v14 & 0x40) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = (v24 + 7) & 0xFFF8;
  }

  if (v23 <= 0xFFFD)
  {
    v26 = sub_10001D644(a1, v23, v25);
    v6 = *(a1 + 56);
    if (!v26)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = (v25 + 7) & 0xFFF8;
      }

      if (v27 >= 4u)
      {
        v28 = (*(a1 + 392) - v23);
        v28[1] = v27;
        *v28 = *(v6 + 52);
        *(v6 + 52) = v23;
      }

      *(v6 + 54) += v27;
    }
  }

  v29 = *(v6 + 36) - 1;
  if (v29 > a2)
  {
    sub_100028FC0(a1, a2, -1);
    v6 = *(a1 + 56);
    v29 = *(v6 + 36) - 1;
  }

  *(v6 + 36) = v29;
  v30 = *(v6 + 32);
  if ((v30 & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      goto LABEL_49;
    }

    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  v32 = *(v6 + 42) / v31;
  if (v32 - v29 >= 0x10)
  {
    v33 = 8;
    if ((v30 & 4) == 0 || ((v34 = *(a1 + 400), (v30 & 2) != 0) ? (v35 = v34 >> 23) : (LOWORD(v35) = (HIBYTE(v34) & 0x7F) + 8), (v36 = ((((v34 >> 27) & 0x1F000) - 56) / (((v34 >> 9) & 0x3FFF) + v35 + 4)) & 0xFFFE, (v32 - 8) >= v36) ? (v33 = 8) : (v33 = v32 - v36), v32 > v36))
    {
      v37 = v33 * v31;
      memmove((*(a1 + 384) - (v33 * v31)), *(a1 + 384), *(v6 + 44));
      *(a1 + 384) -= v37;
      v38 = *(a1 + 56);
      *(v38 + 42) -= v37;
      *(v38 + 46) += v37;
    }
  }

LABEL_49:

  sub_10003D180(a1, a3, 0);
}

BOOL sub_100024A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(v2 + 32);
  if ((~v3 & 3) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 36);
  if (!v4)
  {
    return 1;
  }

  if (*(a1 + 432) == *(a2 + 112))
  {
    return 0;
  }

  if ((v3 & 4) == 0 || (*(a2 + 400) & 4) != 0)
  {
    v8 = sub_10003835C(a2);
    if (*(*(a2 + 56) + 32))
    {
      v9 = -96;
    }

    else
    {
      v9 = -56;
    }

    v7 = (v9 + v8) >> 1 >= sub_10002868C(a2);
  }

  else
  {
    v7 = v4 >= *(v2 + 42) >> 3;
  }

  return !v7;
}

void sub_100024AB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v9 = *(a1 + 400);
  __chkstk_darwin(a1);
  v11 = (&v47 - v10);
  bzero(&v47 - v10, v12);
  v57[0] = 0xAAAAAAAAAAAAAAAALL;
  v57[1] = 0xAAAAAAAAAAAAAAAALL;
  v13 = *(a1 + 56);
  if (!v13)
  {
    return;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58[2] = v14;
  v58[3] = v14;
  v58[0] = v14;
  v58[1] = v14;
  v54 = -1431655766;
  v53 = -21846;
  v52 = -21846;
  v15 = *(v13 + 34);
  if (v15 >= 6)
  {
    v16 = v15 + 11;
    v19 = (v15 + 11);
    v18 = sub_100012434(8 * v19, 0x2004093837F09uLL);
    v17 = sub_100012434(2 * v19, 0x1000040BDFB0063uLL);
  }

  else
  {
    v16 = 8;
    v17 = v57;
    v18 = v58;
  }

  sub_10003BBDC(a1, 2);
  if (sub_10003BC6C(a1, (*(a1 + 400) >> 3) & 2, a5))
  {

    sub_10003C190(a1, 2);
    return;
  }

  *v18 = a1;
  sub_10003C894(a1);
  v20 = *v18;
  if ((*(*(*v18 + 56) + 32) & 2) != 0)
  {
    LOWORD(v22) = 0;
  }

  else
  {
    v48 = v16;
    v49 = a5;
    v21 = 0;
    v22 = 0;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    v51 = -86;
    v23 = v16;
    if ((v16 & 0xFFFE) == 0)
    {
      v23 = 1;
    }

    v24 = (v23 - 1);
    v25 = v18 + 1;
    while (!sub_10001F6CC(v20, a3, a4, &v17[v21], &v51))
    {
      if ((v51 & 1) == 0 && v17[v22])
      {
        --v17[v22];
      }

      if (v24 == v22)
      {
        LOWORD(v16) = v48;
        LOWORD(v22) = v48 - 1;
        goto LABEL_68;
      }

      *v11 = 0;
      if (sub_10001D758(*(v25 - 1), v17[v22], v11) || sub_10001D02C(a1, v11, v50, 3u, *(*(*(v25 - 1) + 56) + 34) - 1, v49, v25))
      {
        break;
      }

      v20 = *v25;
      if ((*(a1 + 400) & 0x10) != 0 && *(v20 + 112) != *v11)
      {
        sub_1000206C0(*(v25 - 1), v17[v22], (v20 + 112), v49);
        v20 = *v25;
      }

      ++v21;
      ++v25;
      ++v22;
      if ((*(*(v20 + 56) + 32) & 2) != 0)
      {
        v26 = v22;
        v27 = v49;
        while (1)
        {
          v28 = v26;
          v29 = (v26 - 1);
          if (v26 < 1)
          {
            break;
          }

          if (v22 <= v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v18[v26 + 1];
          }

          sub_1000297DC(a1, v18[v29], v17[v29], v18[v26], v17[v26], v30, v50, v27);
          v31 = *(*(v18[v26--] + 56) + 36);
          if (v28 == 1 || v31)
          {
            if (v31)
            {
              if (sub_10001D454(v18[v29], v17[v29], &v55, &v52))
              {
                goto LABEL_67;
              }

              v54 = 0;
              if (sub_10001D454(v18[v28], 0, &v56, &v53))
              {
                goto LABEL_67;
              }

              v40 = *(a1 + 8);
              if (!v40)
              {
                v40 = *(*a1 + 392);
              }

              v41 = v56;
              v42 = (*(a1 + 416))(v40, v56, v53, v55, v52, &v54);
              if (!v42 && v54)
              {
                v42 = sub_10001F8A0(v18[v29], v17[v29], v41, v53, 0);
              }

              if (v42)
              {
                goto LABEL_67;
              }
            }
          }

          else if (!v17[v29])
          {
            if (v29)
            {
              v32 = v18[v29];
              if (*(*(v32 + 56) + 36))
              {
                v33 = &v17[v29];
                v34 = v29 - 1;
                v35 = v28 - 1;
                while (1)
                {
                  if (*v33--)
                  {
                    goto LABEL_29;
                  }

                  v37 = sub_10001D454(v32, 0, &v56, &v53);
                  if (v37)
                  {
                    goto LABEL_63;
                  }

                  v54 = 0;
                  v37 = sub_10001D454(v18[v34], v17[v34], &v55, &v52);
                  if (v37)
                  {
                    goto LABEL_63;
                  }

                  v38 = *(a1 + 8);
                  if (!v38)
                  {
                    v38 = *(*a1 + 392);
                  }

                  v39 = v56;
                  v37 = (*(a1 + 416))(v38, v56, v53, v55, v52, &v54);
                  if (!v37 && v54)
                  {
                    v37 = sub_10001F8A0(v18[v34], v17[v34], v39, v53, 0);
                  }

                  if (v37)
                  {
LABEL_63:
                    v43 = *(a1 + 8);
                    if (v43)
                    {
                      v44 = (v43 + 4040);
                    }

                    else
                    {
                      v44 = (*(*(*a1 + 392) + 384) + 212);
                    }

                    sub_100012178("%s:%d: %s updating grandparent failed w/%d\n", "bt_merge_up", 4631, v44, v37);
                    goto LABEL_67;
                  }

                  if (--v35)
                  {
                    v32 = v18[v35];
                    --v34;
                    if (*(*(v32 + 56) + 36))
                    {
                      continue;
                    }
                  }

                  goto LABEL_29;
                }
              }
            }
          }

LABEL_59:
          if (!sub_100024A08(a1, v18[v26]))
          {
            goto LABEL_67;
          }
        }

        sub_1000297DC(a1, 0, 0, *v18, *v17, v18[1], v50, v27);
LABEL_29:
        if ((v29 & 0x8000) != 0)
        {
          break;
        }

        v26 = v29;
        v27 = v49;
        goto LABEL_59;
      }
    }

LABEL_67:
    LOWORD(v16) = v48;
  }

LABEL_68:
  v45 = 0;
  do
  {
    v46 = v18[v45];
    sub_10003C190(v46, 2);
    sub_100037058(v46);
    ++v45;
  }

  while (v22 >= v45);
  if (v16 >= 9u)
  {
    sub_1000123F8(v18, 8 * v16);
    sub_1000123F8(v17, 2 * v16);
  }
}

uint64_t sub_1000250D4(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6, uint64_t a7)
{
  v14 = *(*(a1 + 392) + 16);
  v15 = sub_100012434(v14, 0xE12C8675uLL);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = sub_100023698(a1, a2, 1, v15, v14, a3, a4, a5, a6, a7);
  sub_1000123F8(v16, v14);
  return v17;
}

uint64_t sub_100025198(atomic_ullong *a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  v12 = a1[50];
  __chkstk_darwin(a1);
  v14 = &v29[-v13];
  bzero(&v29[-v13], v15);
  v34 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v16 = (v12 >> 9) & 0x3FFF;
  if (v16)
  {
    if (*a4 != v16)
    {
      return 22;
    }
  }

  if ((v12 >> 23) && *a6 != (v12 >> 23))
  {
    return 22;
  }

  v31 = -21846;
  v30 = -21846;
  sub_10003BBDC(a1, 1);
  sub_10003C894(a1);
  v18 = a1 + 7;
  v17 = a1[7];
  if ((*(v17 + 32) & 2) != 0)
  {
    v19 = a1;
LABEL_15:
    if (*(v17 + 36))
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v21 = sub_10001D454(v19, 0, &v33, &v31);
      if (v21 || (v32 = 0xAAAAAAAAAAAAAAAALL, v21 = sub_10001D56C(v19, 0, &v32, &v30), v21))
      {
        v20 = v21;
      }

      else
      {
        v23 = v30;
        if (v30 == 65534)
        {
          v24 = 0;
        }

        else
        {
          v24 = v30;
        }

        v25 = v31;
        if (*a4 >= v31)
        {
          v26 = v31;
        }

        else
        {
          v26 = *a4;
        }

        if (*a4 >= v31 && *a6 >= v24)
        {
          v20 = 0;
        }

        else
        {
          v20 = 34;
        }

        memcpy(a3, v33, v26);
        if (*a6 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = *a6;
        }

        memcpy(a5, v32, v28);
        *a4 = v25;
        *a6 = v23;
      }
    }

    else
    {
      v20 = 2;
    }

    sub_10003C190(v19, 1);
    sub_100037058(v19);
  }

  else
  {
    v19 = a1;
    while (1)
    {
      *v14 = 0;
      v20 = sub_10001D758(v19, 0, v14);
      if (!v20)
      {
        v20 = sub_10001D02C(a1, v14, a2, 2u, *(*v18 + 34) - 1, 0, &v34);
      }

      sub_10003C190(v19, 1);
      sub_100037058(v19);
      if (v20)
      {
        break;
      }

      v19 = v34;
      v18 = v34 + 7;
      v17 = v34[7];
      if ((*(v17 + 32) & 2) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  return v20;
}

uint64_t sub_100025428(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int *a4, unsigned int a5, void *a6, unsigned int *a7, unsigned int a8, int a9, uint64_t *a10)
{
  if (!a1[52])
  {
    return 22;
  }

  v17 = a1[50];
  v18 = (v17 >> 9) & 0x3FFF;
  if (v18)
  {
    if (*a4 != v18)
    {
      return 22;
    }
  }

  if ((v17 >> 23) && *a7 != (v17 >> 23))
  {
    return 22;
  }

  v19 = *a4;
  if ((v17 & 0x7FFE00) == 0 && v19 > (((((v17 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72)
  {
    return 22;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24 = -21846;
  v20 = sub_100025594(a1, a2, a3, v19, a8, a9, 0, a10, &v25, &v24);
  if (!v20)
  {
    v22 = v25;
    v23 = sub_100025BC4(a1, v25, v24, a3, a4, a5, a6, a7, a8);
    v20 = v23;
    if (a10 && !v23)
    {
      *a10 = sub_100038018(v22);
      a10[1] = a1;
    }

    sub_10003C190(v22, 1);
    sub_100037058(v22);
  }

  return v20;
}

uint64_t sub_100025594(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, uint64_t *a8, atomic_ullong **a9, unsigned __int16 *a10)
{
  v41 = a7;
  v42 = a6;
  v45 = a4;
  v43 = a2;
  v44 = a3;
  v37 = a9;
  v13 = a1[50];
  __chkstk_darwin();
  v15 = (&v37 - v14);
  bzero(&v37 - v14, v16);
  v48 = 0;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v47 = -21846;
  v46 = -86;
  if (!a8)
  {
    goto LABEL_10;
  }

  v17 = *a8;
  if (!*a8)
  {
    goto LABEL_10;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_10;
  }

  if (a8[1] != a1)
  {
    goto LABEL_10;
  }

  *v15 = v17;
  if (v17 == sub_100038018(a1) || sub_10001D02C(a1, v15, v43, v42 & 0x200 | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, 0, &v49))
  {
    goto LABEL_10;
  }

  v18 = v49;
  if ((*(v49[7] + 32) & 2) == 0 || sub_10001F6CC(v49, v44, v45, &v47, &v46))
  {
    goto LABEL_9;
  }

  if (v46 == 1)
  {
    if (a5 == 4)
    {
      if (*(v18[7] + 36) > ++v47)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

    if (a5 == 2)
    {
      if (v47)
      {
        --v47;
        goto LABEL_86;
      }

LABEL_89:
      v46 = 0;
      goto LABEL_9;
    }

LABEL_86:
    v35 = v37;
    goto LABEL_87;
  }

  if (!a5)
  {
    if (v47 && *(v18[7] + 36) > v47)
    {
      v25 = 0;
      v34 = 2;
      v35 = v37;
      goto LABEL_60;
    }

    goto LABEL_9;
  }

  if (a5 - 3 <= 1 && v47 && *(v18[7] + 36) > v47)
  {
    goto LABEL_86;
  }

LABEL_9:
  sub_10003C190(v18, 1);
  sub_100037058(v18);
LABEL_10:
  v19 = a5 == 2;
  v38 = a5 - 3;
  v20 = a5 - 3 < 2;
  sub_10003BBDC(a1, 1);
  v49 = a1;
  sub_10003C894(a1);
  v39 = a5;
  v40 = 0;
  v21 = v42 & 0x200;
  for (i = a1; ; i = v49)
  {
    v46 = 0;
    v24 = i + 7;
    v23 = i[7];
    if ((*(v23 + 32) & 2) == 0)
    {
      v25 = 0;
      while (1)
      {
        if (*(v23 + 34) <= v41)
        {
          goto LABEL_36;
        }

        v26 = sub_10001F6CC(i, v44, v45, &v47, &v46);
        if (v26)
        {
          goto LABEL_55;
        }

        v27 = v47;
        if ((v46 & 1) == 0)
        {
          if (!v47)
          {
            v28 = 0;
            if (!v20)
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v27 = --v47;
        }

        v28 = v27;
        if (!v19 || v27 == 0)
        {
          if (!v20)
          {
            goto LABEL_26;
          }

LABEL_22:
          if (*(*v24 + 36) - 1 <= v28)
          {
            goto LABEL_26;
          }
        }

        if (v25)
        {
          sub_10003C190(v25, 1);
          sub_100037058(v25);
          v27 = v47;
        }

        v25 = v49;
        sub_10003C894(v49);
        v40 = v20 - v19 + v27;
LABEL_26:
        v29 = v49;
        if ((v42 & 0x100) != 0)
        {
          v30 = v49[7];
          if (*(v30 + 34) == 1 && *(v30 + 36) - 1 > v27 && !sub_10001D758(v49, (v27 + 1), v15))
          {
            sub_10001D02C(a1, v15, v43, v42 & 0x300, *(v29[7] + 34) - 1, 0, &v48);
          }
        }

        v26 = sub_10001D758(v29, v27, v15);
        if (v26)
        {
          goto LABEL_55;
        }

        v26 = sub_10001D02C(a1, v15, v43, v21 | 2u, *(v29[7] + 34) - 1, 0, &v48);
        if (v26)
        {
          goto LABEL_55;
        }

        sub_10001D260(v29, v29 != v25);
        i = v48;
        v49 = v48;
        v24 = v48 + 7;
        v23 = v48[7];
        if ((*(v23 + 32) & 2) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    v25 = 0;
LABEL_36:
    v26 = sub_10001F6CC(i, v44, v45, &v47, &v46);
    if (v26)
    {
LABEL_55:
      v34 = v26;
      goto LABEL_56;
    }

    v31 = v46;
    if (v46 != 1)
    {
      goto LABEL_44;
    }

    if (v39 == 2)
    {
      LOWORD(v32) = v47;
      if (!v47)
      {
        v46 = 0;
        goto LABEL_46;
      }

      v34 = 0;
LABEL_71:
      v47 = v32 - 1;
      goto LABEL_56;
    }

    if (v39 != 4)
    {
      break;
    }

    if (*(*v24 + 36) > ++v47)
    {
      break;
    }

    v46 = 0;
    v32 = v47;
LABEL_49:
    if (*(*v24 + 36) > v32)
    {
      v34 = 0;
      v46 = 1;
      goto LABEL_56;
    }

LABEL_50:
    if (!v25)
    {
      v34 = 2;
      v18 = v49;
      v35 = v37;
      if (!v49)
      {
        goto LABEL_61;
      }

LABEL_60:
      sub_10001D260(v18, v18 != v25);
      goto LABEL_61;
    }

    sub_10001D260(i, i != v25);
    v33 = sub_10001D758(v25, v40, v15);
    if (v33 || (v33 = sub_10001D02C(a1, v15, v43, v21 | 2u, *(v25[7] + 34) - 1, 0, &v49), v33))
    {
      v34 = v33;
      v49 = 0;
      v35 = v37;
      goto LABEL_57;
    }

    sub_10003C190(v25, 1);
    sub_100037058(v25);
    v19 = 0;
    v20 = 0;
  }

  v31 = 1;
LABEL_44:
  if ((v31 & 1) == 0 && v39)
  {
LABEL_46:
    v32 = v47;
    if (v39 > 2 || !v47)
    {
      if (v38 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v34 = 0;
    v46 = 1;
    goto LABEL_71;
  }

  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

LABEL_56:
  v35 = v37;
  if (v25)
  {
LABEL_57:
    sub_10003C190(v25, 1);
    sub_100037058(v25);
  }

  v18 = v49;
  if (!v34)
  {
LABEL_87:
    v34 = 0;
    *v35 = v18;
    *a10 = v47;
    return v34;
  }

  if (v49)
  {
    goto LABEL_60;
  }

LABEL_61:
  *v35 = 0;
  return v34;
}

uint64_t sub_100025BC4(uint64_t a1, void *a2, unsigned __int16 a3, void *a4, _DWORD *a5, unsigned int a6, void *a7, unsigned int *a8, int a9)
{
  __src = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0;
  v30 = -21846;
  v29 = -21846;
  if (a9 | a6)
  {
    v17 = sub_10001D454(a2, a3, &__src, &v30);
    v18 = v17;
    if (a9)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_19:
      if (v18)
      {
        return v18;
      }

      goto LABEL_22;
    }

    v20 = *(a1 + 8);
    if (!v20)
    {
      v20 = *(*a1 + 392);
    }

    v21 = (*(a1 + 416))(v20, __src, v30, a4, *a5, &v31);
    if (v21)
    {
      return v21;
    }

    if (a9 == 2 && (v31 & 0x80000000) == 0 || a9 == 1 && v31 > 0 || a9 == 3 && v31 < 0 || a9 == 4 && v31 <= 0)
    {
      v18 = sub_1000033FC(*(*a1 + 392));
      goto LABEL_19;
    }
  }

  else
  {
    __src = 0;
    v30 = 0;
  }

LABEL_22:
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v21 = sub_10001D56C(a2, a3, &v32, &v29);
  if (v21)
  {
    return v21;
  }

  v22 = v29;
  if (v29 == 65534)
  {
    v23 = 0;
  }

  else
  {
    v23 = v29;
  }

  v24 = *a8;
  if (*a8 < v23 || (v18 = 0, a6) && v30 > a6)
  {
    v18 = 34;
  }

  if (a6)
  {
    v25 = v30;
    if (v30 >= a6)
    {
      v26 = a6;
    }

    else
    {
      v26 = v30;
    }

    memcpy(a4, __src, v26);
    *a5 = v25;
    v24 = *a8;
  }

  if (v24 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24;
  }

  memcpy(a7, v32, v27);
  *a8 = v22;
  return v18;
}

__n128 sub_100025DA4(uint64_t a1, atomic_ullong *a2, uint64_t a3, int a4, unint64_t *a5, int a6, unsigned int a7, void *a8, unsigned int a9, _OWORD *a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v16 = a4 & 0x380;
  *(a1 + 16) = a4;
  *(a1 + 20) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = a8;
  *(a1 + 24) = a9;
  v17 = (a1 + 56);
  if (a10)
  {
    *v17 = *a10;
  }

  else
  {
    *v17 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a6;
  *(a1 + 52) = a9;
  if ((a4 & 4) != 0)
  {
    v18 = 4;
    goto LABEL_8;
  }

  if ((a4 & 2) == 0)
  {
    v18 = 3;
LABEL_8:
    v19 = sub_100025428(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), v18, v16, v17);
    goto LABEL_9;
  }

  v21 = a4 & 0x380;
  v19 = sub_100025428(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), 1u, v16, (a1 + 56));
  if (v19 == 2)
  {
    v18 = 3;
    v16 = v21;
    goto LABEL_8;
  }

LABEL_9:
  if (v19)
  {
    *(a1 + 16) |= 1u;
    if (v19 != 2)
    {
      *(a1 + 28) = v19;
    }
  }

  else if (a10)
  {
    result = *v17;
    *a10 = *v17;
  }

  return result;
}