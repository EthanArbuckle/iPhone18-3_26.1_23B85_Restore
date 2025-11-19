uint64_t sub_29AB1F0B4(uint64_t a1, uint64_t a2, char *__s)
{
  v6 = strlen(__s);
  if (v6 < 0x7FFFFFFF)
  {

    return sub_29AB1DD34(a1, a2, __s, v6);
  }

  else if (a1)
  {
    v7 = *(a1 + 64);

    return v7(a1, 3, "Invalid string too long for attribute");
  }

  else
  {
    return 2;
  }
}

off_t sub_29AB1F164(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return -1;
  }

  memset(&v4, 0, sizeof(v4));
  if (fstat(v2, &v4))
  {
    return -1;
  }

  else
  {
    return v4.st_size;
  }
}

uint64_t sub_29AB1F1C0(uint64_t a1)
{
  v2 = *(a1 + 136);
  *v2 = -1;
  *(a1 + 144) = sub_29AB2133C;
  *(a1 + 160) = sub_29AB21350;
  v3 = open(*(a1 + 16), 0x1000000);
  if (v3 < 0)
  {
    v5 = *(a1 + 72);
    v6 = __error();
    v7 = strerror(*v6);
    return v5(a1, 5, "Unable to open file for read: %s", v7);
  }

  else
  {
    *v2 = v3;
    return 0;
  }
}

uint64_t sub_29AB1F258(uint64_t a1)
{
  v121 = *MEMORY[0x29EDCA608];
  v105 = 0;
  __dst = 0;
  if (*(a1 + 7))
  {
    *(a1 + 56) = sub_29AB21478;
    *(a1 + 64) = sub_29AB21480;
    *(a1 + 72) = sub_29AB21488;
  }

  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  v106 = 0;
  v104 = 0;
  v2 = sub_29AB21490(a1, &v105, &v104);
  if (v2 || (*(&v107 + 1) = 0, *&v108 = 0, *(&v108 + 1) = v104, *&v109 = sub_29AB21754, *(&v109 + 1) = sub_29AB218CC, v110 = a1, v6 = (*(a1 + 88))(4096), (*&v107 = v6) == 0) && (v2 = (*(a1 + 56))(a1, 1), v2))
  {
    v3 = v2;
LABEL_5:
    *(a1 + 56) = sub_29AB2101C;
    *(a1 + 64) = sub_29AB21074;
    v4 = (a1 + 72);
    goto LABEL_6;
  }

  v7 = **(a1 + 472);
  v106 = v7;
  if (!v7)
  {
    v3 = (*(a1 + 64))(a1, 3, "Error during file initialization");
    if (v6)
    {
      (*(a1 + 96))(v6);
    }

    goto LABEL_5;
  }

  v8 = v105;
  v9 = v105 >> 9;
  *(a1 + 3) = (v105 & 0x200) != 0;
  v10 = *(a1 + 6);
  if ((v8 & 0x400) != 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 31;
  }

  if (!*(a1 + 6))
  {
    v11 = -1;
  }

  *(a1 + 2) = v11;
  v12 = (v8 >> 11) & 1;
  *(a1 + 4) = (v8 & 0x800) != 0;
  *(a1 + 5) = (v8 & 0x1000) != 0;
  if (v9)
  {
    if (v12 | v8 & 0x1000)
    {
      if (v10)
      {
        v4 = (a1 + 72);
        v3 = (*(a1 + 72))(a1, 6, "Invalid combination of version flags: single part found, but also marked as deep (%d) or multipart (%d)", v12, (v8 >> 12) & 1);
        if (v6)
        {
          (*(a1 + 96))(v6);
        }

        goto LABEL_326;
      }

      *(a1 + 3) = 0;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  *(v7 + 4) = v13;
  if (sub_29AB21754(&v107, &__dst, 1uLL))
  {
LABEL_27:
    v3 = (*(a1 + 64))(a1, 6, "Unable to extract header byte");
    if (v107)
    {
      (*(v110 + 96))(v107);
    }

    goto LABEL_5;
  }

  v4 = (a1 + 72);
  while (1)
  {
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_31;
    }

    v18 = v106;
    v19 = sub_29AB219C4(a1, v106, *(a1 + 6) == 0);
    if (v19)
    {
      goto LABEL_323;
    }

    v19 = sub_29AB21D38(a1, v18, v22, v23, v20, v21);
    if (v19)
    {
      goto LABEL_323;
    }

    v19 = sub_29AB21F48(a1, v18, *(*(v18 + 32) + 24));
    if (v19)
    {
      goto LABEL_323;
    }

    v19 = sub_29AB220F0(a1, v18);
    if (v19)
    {
      goto LABEL_323;
    }

    v19 = sub_29AB221DC(a1, v18);
    if (v19)
    {
      goto LABEL_323;
    }

    v19 = sub_29AB22390(a1, v18);
    if (v19)
    {
      goto LABEL_323;
    }

    if (!*(a1 + 5))
    {
LABEL_321:
      v19 = sub_29AB215F4(a1, &v107);
      goto LABEL_323;
    }

    if ((v109)(&v107, &__dst, 1))
    {
      break;
    }

    if (!__dst)
    {
      goto LABEL_321;
    }

    v3 = sub_29AB211CC(a1, &v106, 0);
    if (v3)
    {
      goto LABEL_53;
    }

    v14 = __dst;
LABEL_31:
    v15 = v106;
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
    v16 = *(a1 + 2);
    v120[0] = v14;
    v115 = 1;
    v17 = sub_29AB22A04(a1, v120, &v115, v16, &v107, "attribute name");
    if (v17)
    {
      goto LABEL_33;
    }

    v17 = sub_29AB22A04(a1, &v118, &v114, v16, &v107, "attribute type");
    if (v17)
    {
      goto LABEL_33;
    }

    if (!v115)
    {
      v25 = (*(a1 + 64))(a1, 6, "Invalid empty string encountered parsing attribute name");
      goto LABEL_51;
    }

    if (!v114)
    {
      v25 = (*(a1 + 72))(a1, 6, "Invalid empty string encountered parsing attribute type for attribute '%s'");
      goto LABEL_51;
    }

    v24 = (v109)(&v107, &v113, 4);
    if (v24)
    {
      v25 = (*(a1 + 72))(a1, v24, "Unable to read attribute size for attribute '%s', type '%s'");
      goto LABEL_51;
    }

    v26 = v113;
    v27 = v113;
    if (v120[0] > 0x6Fu)
    {
      if (v120[0] <= 0x73u)
      {
        if (v120[0] == 112)
        {
          if (*v120 ^ 0x7073416C65786970 | *&v120[8] ^ 0x6F69746152746365 | v120[16])
          {
            goto LABEL_185;
          }

          v34 = v15 + 72;
          if (*(v15 + 72))
          {
            goto LABEL_140;
          }

          if (v118 != 1634692198 || WORD2(v118) != 116)
          {
            goto LABEL_181;
          }

          if (v113 != 4)
          {
            goto LABEL_273;
          }

          LODWORD(__s1[0]) = 0;
          v68 = (v109)(&v107, __s1, 4);
          if (v68)
          {
            v51 = v68;
            v49 = *(a1 + 72);
            goto LABEL_264;
          }

          v84 = sub_29AB22470(a1, (v15 + 8), "pixelAspectRatio", 8, 0, 0, (v15 + 72));
          if (v84)
          {
            v51 = v84;
            v49 = *(a1 + 72);
            goto LABEL_293;
          }

LABEL_294:
          v3 = 0;
          *(*v34 + 24) = __s1[0];
          goto LABEL_184;
        }

        if (v120[0] != 115)
        {
          goto LABEL_185;
        }

        if (*v120 != 0x69576E6565726373 || *&v120[8] != 0x746E6543776F646ELL || *&v120[11] != 0x7265746E654377)
        {
          if (*v120 != 0x69576E6565726373 || *&v120[8] != 0x74646957776F646ELL || *&v120[16] != 104)
          {
            goto LABEL_185;
          }

          v34 = v15 + 88;
          if (*(v15 + 88))
          {
LABEL_140:
            (*(&v109 + 1))(&v107, v113);
            v36 = (*(a1 + 72))(a1, 14, "Duplicate copy of required attribute '%s' encountered");
            goto LABEL_183;
          }

          if (v118 != 1634692198 || WORD2(v118) != 116)
          {
            goto LABEL_181;
          }

          if (v113 != 4)
          {
LABEL_273:
            (*(&v109 + 1))(&v107, v113);
            v36 = (*(a1 + 72))(a1, 17, "Required attribute '%s': Invalid size %d (exp 4)");
            goto LABEL_183;
          }

          LODWORD(__s1[0]) = 0;
          v79 = (v109)(&v107, __s1, 4);
          if (v79)
          {
            v51 = v79;
            v49 = *(a1 + 72);
LABEL_264:
            v50 = a1;
            v52 = "Attribute '%s': Unable to read data (%d bytes)";
LABEL_182:
            v36 = v49(v50, v51, v52);
LABEL_183:
            v3 = v36;
            goto LABEL_184;
          }

          v89 = sub_29AB22470(a1, (v15 + 8), "screenWindowWidth", 8, 0, 0, (v15 + 88));
          if (v89)
          {
            v51 = v89;
            v49 = *(a1 + 72);
LABEL_293:
            v50 = a1;
            v52 = "Unable to initialize attribute '%s', type 'float'";
            goto LABEL_182;
          }

          goto LABEL_294;
        }

        if (*(v15 + 80))
        {
          goto LABEL_140;
        }

        if (v118 != 6697590)
        {
          goto LABEL_181;
        }

        if (v113 != 8)
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 17, "Required attribute '%s': Invalid size %d (exp %llu)");
          goto LABEL_183;
        }

        __s1[0] = 0;
        v75 = (v109)(&v107, __s1, 8);
        if (v75)
        {
          v51 = v75;
          v49 = *(a1 + 72);
          goto LABEL_264;
        }

        v87 = sub_29AB22470(a1, (v15 + 8), "screenWindowCenter", 24, 0, 0, (v15 + 80));
        if (v87)
        {
          v36 = (*(a1 + 72))(a1, v87, "Unable to initialize attribute '%s', type 'v2f'");
          goto LABEL_183;
        }

        v3 = 0;
        v93 = *(*(v15 + 80) + 24);
        v94 = __s1[0];
        goto LABEL_302;
      }

      if (v120[0] != 116)
      {
        if (v120[0] != 118 || *v120 != 0x6E6F6973726576)
        {
          goto LABEL_185;
        }

        LODWORD(__s1[0]) = v113;
        if (*(v15 + 120))
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 14, "Duplicate copy of required attribute 'version' encountered");
          goto LABEL_183;
        }

        if (v118 != 7630441)
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 16, "attribute 'version': Invalid type '%s'");
          goto LABEL_183;
        }

        if (v113 != 4)
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 14, "attribute 'version': Invalid size %d (exp 4)");
          goto LABEL_183;
        }

        v73 = (v109)(&v107, __s1, 4);
        if (v73)
        {
          v36 = (*(a1 + 64))(a1, v73, "Unable to read version data");
          goto LABEL_183;
        }

        if (LODWORD(__s1[0]) != 1)
        {
          v36 = (*(a1 + 72))(a1, 14, "Invalid version %d: expect 1", LODWORD(__s1[0]));
          goto LABEL_183;
        }

        v86 = sub_29AB22470(a1, (v15 + 8), "version", 10, 0, 0, (v15 + 120));
        if (v86)
        {
          v36 = (*(a1 + 72))(a1, v86, "Unable to initialize attribute '%s', type 'int'");
          goto LABEL_183;
        }

        v3 = 0;
        *(*(v15 + 120) + 24) = __s1[0];
        goto LABEL_184;
      }

      if (*v120 == 1701603700 && *&v120[4] == 115)
      {
        LOBYTE(__s1[1]) = 0;
        __s1[0] = 0;
        if (*(v15 + 96))
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 14, "Duplicate copy of required attribute 'tiles' encountered");
          goto LABEL_183;
        }

        if (v118 ^ 0x63736564656C6974 | v119)
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 16, "Required attribute 'tiles': Invalid type '%s'");
          goto LABEL_183;
        }

        if (v113 != 9)
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 16, "Required attribute 'tiles': Invalid size %d (exp %llu)");
          goto LABEL_183;
        }

        v71 = (v109)(&v107, __s1, 9);
        if (v71)
        {
          v36 = (*(a1 + 64))(a1, v71, "Unable to read 'tiles' data");
          goto LABEL_183;
        }

        v85 = sub_29AB22470(a1, (v15 + 8), "tiles", 21, 0, 0, (v15 + 96));
        if (v85)
        {
          v36 = (*(a1 + 72))(a1, v85, "Unable to initialize attribute '%s', type 'tiledesc'");
          goto LABEL_183;
        }

        v3 = 0;
        v93 = *(*(v15 + 96) + 24);
        v94 = __s1[0];
        *(v93 + 8) = __s1[1];
LABEL_302:
        *v93 = v94;
        goto LABEL_184;
      }

      if (*v120 ^ 0x65707974 | v120[4])
      {
        goto LABEL_185;
      }

      __s1[0] = 0;
      v3 = sub_29AB22AEC(a1, &v107, v113, 1u, "type", &v118, &v117);
      if (v3)
      {
        goto LABEL_184;
      }

      v100 = (v15 + 112);
      if (*(v15 + 112))
      {
        (*(&v109 + 1))(&v107, v26);
        v36 = (*(a1 + 72))(a1, 14, "Duplicate copy of required attribute 'type' encountered");
        goto LABEL_183;
      }

      if (v118 != 1769108595 || *(&v118 + 3) != 6778473)
      {
        (*(&v109 + 1))(&v107, v26);
        v36 = (*(a1 + 72))(a1, 16, "Required attribute 'type': Invalid type '%s'");
        goto LABEL_183;
      }

      v82 = sub_29AB22470(a1, (v15 + 8), "type", 19, v26 + 1, __s1, v100);
      if (v82)
      {
        v83 = v82;
        (*(&v109 + 1))(&v107, v26);
        v49 = *(a1 + 72);
        v50 = a1;
        v51 = v83;
        goto LABEL_276;
      }

      v91 = (v109)(&v107, __s1[0], v27);
      if (v91)
      {
        v92 = v91;
        sub_29AB1E5BC(a1, (v15 + 8), *v100);
        *v100 = 0;
        v49 = *(a1 + 64);
        v50 = a1;
        v51 = v92;
        goto LABEL_309;
      }

      __s1[0][v27] = 0;
      v97 = sub_29AB23D60(a1, *(*v100 + 24), __s1[0], v26);
      if (v97)
      {
        v96 = v97;
        sub_29AB1E5BC(a1, (v15 + 8), *v100);
        *v100 = 0;
        goto LABEL_308;
      }

      v98 = __s1[0];
      if (!strcmp(__s1[0], "scanlineimage"))
      {
        v3 = 0;
        *(v15 + 4) = 0;
      }

      else if (!strcmp(v98, "tiledimage"))
      {
        v3 = 0;
        *(v15 + 4) = 1;
      }

      else
      {
        if (!strcmp(v98, "deepscanline"))
        {
          v3 = 0;
          v99 = 2;
        }

        else
        {
          if (strcmp(v98, "deeptile"))
          {
            v3 = (*(a1 + 72))(a1, 14, "attribute 'type': Invalid type string '%s'", v98);
            sub_29AB1E5BC(a1, (v15 + 8), *v100);
            *v100 = 0;
            goto LABEL_184;
          }

          v3 = 0;
          v99 = 3;
        }

        *(v15 + 4) = v99;
      }
    }

    else if (v120[0] > 0x6Bu)
    {
      if (v120[0] == 108)
      {
        if (*v120 != 0x6564724F656E696CLL || *&v120[8] != 114)
        {
          goto LABEL_185;
        }

        if (*(v15 + 64))
        {
          goto LABEL_140;
        }

        if (v118 != 0x6564724F656E696CLL || v119 != 114)
        {
          goto LABEL_181;
        }

        LOBYTE(__s1[0]) = 0;
        v3 = sub_29AB2304C(a1, &v107, __s1, "lineOrder", &v118, v113, 3u);
        if (!v3)
        {
          v69 = sub_29AB22470(a1, (v15 + 8), "lineOrder", 12, 0, 0, (v15 + 64));
          if (v69)
          {
            v36 = (*(a1 + 72))(a1, v69, "Unable to initialize attribute '%s', type 'lineOrder'");
            goto LABEL_183;
          }

          v3 = 0;
          v88 = LOBYTE(__s1[0]);
          *(*(v15 + 64) + 24) = __s1[0];
          *(v15 + 180) = v88;
        }
      }

      else
      {
        if (v120[0] != 110 || *v120 ^ 0x656D616E | v120[4])
        {
          goto LABEL_185;
        }

        __s1[0] = 0;
        v3 = sub_29AB22AEC(a1, &v107, v113, 1u, "name", &v118, &v117);
        if (v3)
        {
          goto LABEL_184;
        }

        v35 = (v15 + 104);
        if (*(v15 + 104))
        {
          (*(&v109 + 1))(&v107, v26);
          v36 = (*(a1 + 72))(a1, 14, "Duplicate copy of required attribute 'name' encountered");
          goto LABEL_183;
        }

        if (v118 != 1769108595 || *(&v118 + 3) != 6778473)
        {
          (*(&v109 + 1))(&v107, v26);
          v36 = (*(a1 + 72))(a1, 16, "attribute 'name': Invalid type '%s'");
          goto LABEL_183;
        }

        v101 = sub_29AB22470(a1, (v15 + 8), "name", 19, v26 + 1, __s1, (v15 + 104));
        if (v101)
        {
          (*(&v109 + 1))(&v107, v26);
          v49 = *(a1 + 72);
          v50 = a1;
          v51 = v101;
LABEL_276:
          v52 = "Unable to initialize attribute '%s', type 'string'";
          goto LABEL_182;
        }

        v102 = (v109)(&v107, __s1[0], v27);
        if (v102)
        {
          sub_29AB1E5BC(a1, (v15 + 8), *v35);
          *v35 = 0;
          v49 = *(a1 + 64);
          v50 = a1;
          v51 = v102;
LABEL_309:
          v52 = "Unable to read 'name' data";
          goto LABEL_182;
        }

        __s1[0][v27] = 0;
        v95 = sub_29AB23D60(a1, *(*v35 + 24), __s1[0], v26);
        if (v95)
        {
          v96 = v95;
          sub_29AB1E5BC(a1, (v15 + 8), *v35);
          *v35 = 0;
LABEL_308:
          v49 = *(a1 + 64);
          v50 = a1;
          v51 = v96;
          goto LABEL_309;
        }

        v3 = 0;
      }
    }

    else if (v120[0] == 99)
    {
      if (*v120 ^ 0x736C656E6E616863 | v120[8])
      {
        if (*v120 != 0x73736572706D6F63 || *&v120[8] != 7237481)
        {
          if (*v120 != 0x756F436B6E756863 || *&v120[3] != 0x746E756F436B6ELL)
          {
            goto LABEL_185;
          }

          v36 = sub_29AB23BC0(a1, v15, &v107, &v118, v113);
          goto LABEL_183;
        }

        if (*(v15 + 40))
        {
          goto LABEL_140;
        }

        if (v118 != 0x73736572706D6F63 || v119 != 7237481)
        {
LABEL_181:
          (*(&v109 + 1))(&v107, v113);
          v49 = *(a1 + 72);
          v50 = a1;
          v51 = 16;
          v52 = "Required attribute '%s': Invalid type '%s'";
          goto LABEL_182;
        }

        LOBYTE(__s1[0]) = 0;
        v3 = sub_29AB2304C(a1, &v107, __s1, "compression", &v118, v113, 0xAu);
        if (!v3)
        {
          v77 = sub_29AB22470(a1, (v15 + 8), "compression", 5, 0, 0, (v15 + 40));
          if (v77)
          {
            v36 = (*(a1 + 72))(a1, v77, "Unable to initialize attribute '%s', type 'compression'");
            goto LABEL_183;
          }

          v3 = 0;
          v90 = LOBYTE(__s1[0]);
          *(*(v15 + 40) + 24) = __s1[0];
          *(v15 + 176) = v90;
        }
      }

      else
      {
        __s1[1] = 0;
        __s1[0] = 0;
        v41 = v15 + 32;
        if (*(v15 + 32))
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 14, "Duplicate copy of required attribute 'channels' encountered");
          goto LABEL_183;
        }

        if (v118 != 1768712291 || *(&v118 + 3) != 7631721)
        {
          (*(&v109 + 1))(&v107, v113);
          v36 = (*(a1 + 72))(a1, 16, "Required attribute 'channels': Invalid type '%s'");
          goto LABEL_183;
        }

        v70 = sub_29AB22EA0(a1, &v107, __s1, "channels", &v118, v113);
        if (v70)
        {
          v3 = v70;
          sub_29AB1E7BC(a1, __s1);
        }

        else
        {
          v80 = sub_29AB22470(a1, (v15 + 8), "channels", 3, 0, 0, (v15 + 32));
          if (v80)
          {
            v81 = v80;
            sub_29AB1E7BC(a1, __s1);
            v36 = (*(a1 + 72))(a1, v81, "Unable to initialize attribute '%s', type 'chlist'");
            goto LABEL_183;
          }

          sub_29AB1E7BC(a1, *(*v41 + 24));
          v3 = 0;
          **(*v41 + 24) = *__s1;
        }
      }
    }

    else
    {
      if (v120[0] != 100)
      {
        goto LABEL_185;
      }

      if (*v120 == 0x646E695761746164 && *&v120[3] == 0x776F646E695761)
      {
        __s1[1] = 0;
        __s1[0] = 0;
        if (*(v15 + 48))
        {
          goto LABEL_140;
        }

        if (v118 != 846753634 || WORD2(v118) != 105)
        {
          goto LABEL_181;
        }

        v3 = sub_29AB22DFC(a1, &v107, __s1, "dataWindow", &v118, v113, 4u);
        if (!v3)
        {
          v74 = sub_29AB22470(a1, (v15 + 8), "dataWindow", 1, 0, 0, (v15 + 48));
          if (v74)
          {
            v51 = v74;
            v49 = *(a1 + 72);
LABEL_260:
            v50 = a1;
            v52 = "Unable to initialize attribute '%s', type 'box2i'";
            goto LABEL_182;
          }

          v3 = 0;
          **(*(v15 + 48) + 24) = *__s1;
          *(v15 + 144) = *__s1;
        }
      }

      else
      {
        if (*v120 != 0x5779616C70736964 || *&v120[6] != 0x776F646E695779)
        {
          goto LABEL_185;
        }

        __s1[1] = 0;
        __s1[0] = 0;
        if (*(v15 + 56))
        {
          goto LABEL_140;
        }

        if (v118 != 846753634 || WORD2(v118) != 105)
        {
          goto LABEL_181;
        }

        v3 = sub_29AB22DFC(a1, &v107, __s1, "displayWindow", &v118, v113, 4u);
        if (!v3)
        {
          v78 = sub_29AB22470(a1, (v15 + 8), "displayWindow", 1, 0, 0, (v15 + 56));
          if (v78)
          {
            v51 = v78;
            v49 = *(a1 + 72);
            goto LABEL_260;
          }

          v3 = 0;
          **(*(v15 + 56) + 24) = *__s1;
          *(v15 + 160) = *__s1;
        }
      }
    }

LABEL_184:
    if (v3 != 32)
    {
      goto LABEL_52;
    }

LABEL_185:
    if (v118 != 1769108595 || *(&v118 + 3) != 6778473)
    {
      v54 = sub_29AB22BB8(a1, (v15 + 8), v120, &v118, &v112);
LABEL_190:
      if (!v54)
      {
        switch(*(v112 + 20))
        {
          case 1:
          case 2:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 4;
            goto LABEL_217;
          case 3:
            v63 = sub_29AB22EA0(a1, &v107, *(v112 + 24), v120, &v118, v113);
            break;
          case 4:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 8;
            goto LABEL_217;
          case 5:
            v64 = v113;
            v65 = (v112 + 24);
            v66 = a1;
            v67 = 10;
            goto LABEL_213;
          case 6:
            v60 = v113;
            v59 = v112 + 24;
            v61 = a1;
            v62 = 1;
            goto LABEL_215;
          case 7:
            v64 = v113;
            v65 = (v112 + 24);
            v66 = a1;
            v67 = 2;
            goto LABEL_213;
          case 8:
          case 0xA:
            v56 = v113;
            v55 = v112 + 24;
            v57 = a1;
            v58 = 1;
            goto LABEL_217;
          case 9:
            v63 = sub_29AB231CC(a1, &v107, *(v112 + 24), v120, &v118, v113);
            break;
          case 0xB:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 7;
            goto LABEL_217;
          case 0xC:
            v64 = v113;
            v65 = (v112 + 24);
            v66 = a1;
            v67 = 3;
LABEL_213:
            v63 = sub_29AB2304C(v66, &v107, v65, v120, &v118, v64, v67);
            break;
          case 0xD:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 9;
            goto LABEL_217;
          case 0xE:
            v59 = *(v112 + 24);
            v60 = v113;
            v61 = a1;
            v62 = 9;
            goto LABEL_215;
          case 0xF:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 16;
            goto LABEL_217;
          case 0x10:
            v59 = *(v112 + 24);
            v60 = v113;
            v61 = a1;
            v62 = 16;
            goto LABEL_215;
          case 0x11:
            v63 = sub_29AB23368(a1, &v107, *(v112 + 24), v120, &v118, v113);
            break;
          case 0x12:
          case 0x16:
          case 0x17:
          case 0x18:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 2;
            goto LABEL_217;
          case 0x13:
            v63 = sub_29AB235D4(a1, &v107, *(v112 + 24), v120, &v118, v113, v111);
            break;
          case 0x14:
            v63 = sub_29AB236A0(a1, &v107, *(v112 + 24), v120, &v118, v113);
            break;
          case 0x15:
            v63 = sub_29AB23968(a1, &v107, *(v112 + 24), v120, &v118, v113);
            break;
          case 0x19:
            v59 = *(v112 + 24);
            v60 = v113;
            v61 = a1;
            v62 = 2;
            goto LABEL_215;
          case 0x1A:
          case 0x1B:
            v55 = *(v112 + 24);
            v56 = v113;
            v57 = a1;
            v58 = 3;
LABEL_217:
            v63 = sub_29AB22DFC(v57, &v107, v55, v120, &v118, v56, v58);
            break;
          case 0x1C:
            v59 = *(v112 + 24);
            v60 = v113;
            v61 = a1;
            v62 = 3;
LABEL_215:
            v63 = sub_29AB23128(v61, &v107, v59, v120, &v118, v60, v62);
            break;
          case 0x1D:
            v63 = sub_29AB23A64(a1, &v107, *(v112 + 24), v120, &v118, v113);
            break;
          default:
            v63 = (*(a1 + 72))(a1, 3, "Invalid type '%s' for attribute '%s'", &v118, v120);
            break;
        }

        v3 = v63;
        if (!v63)
        {
          goto LABEL_54;
        }

        sub_29AB1E5BC(a1, (v15 + 8), v112);
        goto LABEL_53;
      }

      v25 = (*(a1 + 72))(a1, v54, "Unable to initialize attribute '%s', type '%s'");
LABEL_51:
      v3 = v25;
LABEL_52:
      if (!v3)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    LODWORD(__s1[0]) = 0;
    v17 = sub_29AB22AEC(a1, &v107, v113, 1u, v120, &v118, __s1);
    if (!v17)
    {
      v54 = sub_29AB1DBB8(a1, (v15 + 8), v120, 19, LODWORD(__s1[0]) + 1, &v111, &v112);
      goto LABEL_190;
    }

LABEL_33:
    v3 = v17;
LABEL_53:
    if (*(a1 + 6))
    {
      goto LABEL_324;
    }

LABEL_54:
    if ((v109)(&v107, &__dst, 1))
    {
      goto LABEL_27;
    }
  }

  v19 = (*(a1 + 64))(a1, 6, "Unable to go to next part definition");
LABEL_323:
  v3 = v19;
LABEL_324:
  if (v107)
  {
    (*(v110 + 96))(v107);
  }

LABEL_326:
  *(a1 + 56) = sub_29AB2101C;
  *(a1 + 64) = sub_29AB21074;
LABEL_6:
  *v4 = sub_29AB210B4;
  return v3;
}

uint64_t sub_29AB20F3C(uint64_t a1)
{
  pthread_mutex_lock(&stru_2A14F9008);
  v2 = MEMORY[0x29EDCA610];
  if (a1)
  {
    v3 = *MEMORY[0x29EDCA610];
    if (*(a1 + 16))
    {
      fprintf(v3, "%s: (%s) %s\n");
    }

    else
    {
      fprintf(v3, "Context 0x%p: (%s) %s\n");
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "<ERROR>: %s\n");
  }

  fflush(*v2);

  return pthread_mutex_unlock(&stru_2A14F9008);
}

void sub_29AB21010(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_29AB2101C(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a2;
  }

  if (a1)
  {
    (*(a1 + 80))(a1, a2, off_29F2962C0[v3]);
  }

  else
  {
    sub_29AB20F3C(0);
  }

  return a2;
}

uint64_t sub_29AB21074(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    (*(a1 + 80))(a1, a2);
  }

  else
  {
    sub_29AB20F3C(0);
  }

  return a2;
}

uint64_t sub_29AB210B4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *MEMORY[0x29EDCA608];
  v12 = vsnprintf(__str, 0x100uLL, a3, &a9);
  if (v12 < 256)
  {
    if (a1)
    {
      (*(a1 + 80))(a1, a2, __str);
    }

    else
    {
      sub_29AB20F3C(0);
    }
  }

  else
  {
    v13 = (v12 + 1);
    v14 = (*(a1 + 88))(v13);
    if (v14)
    {
      v15 = v14;
      vsnprintf(v14, v13, a3, &a9);
      (*(a1 + 80))(a1, a2, v15);
      (*(a1 + 96))(v15);
    }

    else
    {
      (*(a1 + 80))(a1, a2, "Unable to allocate temporary memory");
    }
  }

  return a2;
}

uint64_t sub_29AB211CC(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *(a1 + 196);
  if (a3)
  {
    *a3 = v5;
  }

  v6 = v5 + 1;
  if (!v5)
  {
    v8 = a1 + 200;
    v10 = a1 + 464;
    *(a1 + 464) = a1 + 200;
    goto LABEL_8;
  }

  v7 = (*(a1 + 88))(264);
  if (v7)
  {
    v8 = v7;
    v9 = (*(a1 + 88))(8 * v6);
    if (v9)
    {
      v10 = v9;
      *(v8 + 256) = 0;
      *(v8 + 224) = 0u;
      *(v8 + 240) = 0u;
      *(v8 + 192) = 0u;
      *(v8 + 208) = 0u;
      *(v8 + 160) = 0u;
      *(v8 + 176) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *v8 = 0u;
      *(v8 + 16) = 0u;
LABEL_8:
      *(v8 + 4) = 4;
      *(v8 + 152) = -1;
      *(v8 + 168) = -1;
      *(v8 + 244) = -1;
      *(v8 + 184) = *(a1 + 120);
      *(v8 + 188) = *(a1 + 124);
      v11 = *(a1 + 196);
      if (v5 >= 1)
      {
        if (v11 >= 1)
        {
          v12 = 0;
          do
          {
            *(v10 + v12) = *(*(a1 + 472) + v12);
            v12 += 8;
          }

          while (8 * v11 != v12);
        }

        *(v10 + 8 * v5) = v8;
      }

      if (v11 > 1)
      {
        (*(a1 + 96))(*(a1 + 472));
      }

      *(a1 + 472) = v10;
      *(a1 + 196) = v6;
      if (a2)
      {
        *a2 = v8;
      }

      return 0;
    }

    (*(a1 + 96))(v8);
  }

  v14 = *(a1 + 56);

  return v14(a1, 1);
}

void sub_29AB2133C(uint64_t a1, int *a2)
{
  if (a2)
  {
    if ((*a2 & 0x80000000) == 0)
    {
      close(*a2);
    }
  }
}

uint64_t sub_29AB21350(uint64_t a1, int *a2, char *__buf, int64_t __nbyte, off_t a5, void (*a6)(uint64_t, uint64_t, const char *, ...))
{
  if (!a2)
  {
    if (a6)
    {
      v17 = "Invalid file handle pointer";
LABEL_17:
      a6(a1, 3, v17, __nbyte, a5);
    }

    return -1;
  }

  v8 = *a2;
  if (*a2 < 0)
  {
    if (a6)
    {
      v17 = "Invalid file descriptor";
      goto LABEL_17;
    }

    return -1;
  }

  v9 = a5;
  v12 = 0;
  v13 = __nbyte;
  while (1)
  {
    v14 = pread(v8, __buf, v13, v9);
    if (v14 < 0)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_10;
    }

    v12 += v14;
    __buf += v14;
    v13 -= v14;
    v9 += v14;
LABEL_9:
    if (v12 >= __nbyte)
    {
LABEL_10:
      if (!a6)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  if (*__error() == 4 || *__error() == 35)
  {
    goto LABEL_9;
  }

  v12 = -1;
  if (!a6)
  {
    return v12;
  }

LABEL_11:
  if (v12 < 0)
  {
    v15 = __error();
    v16 = strerror(*v15);
    a6(a1, 10, "Unable to read %llu bytes: %s", __nbyte, v16);
  }

  return v12;
}

uint64_t sub_29AB21490(uint64_t a1, int *a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v12 = 0;
  v6 = (*(a1 + 40))(a1, &v13, 8, &v12, &v11, 0);
  if (v6)
  {
    v7 = v6;
    (*(a1 + 64))(a1, 10, "Unable to read magic and version flags");
  }

  else
  {
    *a3 = 8;
    if (v13 != 20000630)
    {
      return (*(a1 + 72))(a1, 6, "File is not an OpenEXR file: magic 0x%08X (%d) flags 0x%08X", v13, v13, v14);
    }

    v8 = v14;
    *(a1 + 1) = v14;
    if (v8 != 2)
    {
      return (*(a1 + 72))(a1, 6, "File is of an unsupported version: %d, magic 0x%08X flags 0x%08X", v8, 20000630, v8);
    }

    if ((v8 & 0xFFFFE100) == 0)
    {
      v7 = 0;
      *a2 = v8 & 0x1E00;
      return v7;
    }

    return (*(a1 + 72))(a1, 6, "File has an unsupported flags: magic 0x%08X flags 0x%08X", 20000630, v8);
  }

  return v7;
}

uint64_t sub_29AB215F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 472);
  if (!v2)
  {
    return 3;
  }

  v4 = *v2;
  *(*v2 + 248) = *(a2 + 24) - *(a2 + 16);
  if (*(a1 + 196) >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(*(a1 + 472) + 8 * v5);
      result = sub_29AB22600(a1, v6, 0);
      if (result)
      {
        return result;
      }

      v8 = sub_29AB24110(v6);
      v9 = v8;
      if (v8 < 0)
      {
        v13 = *(v6 + 104);
        if (v13)
        {
          v14 = *(*(v13 + 24) + 8);
        }

        else
        {
          v14 = "<first>";
        }

        return (*(a1 + 72))(a1, 14, "Invalid chunk count (%d) for part '%s'", v8, v14);
      }

      v10 = *(v6 + 244);
      if (v10 < 0)
      {
        goto LABEL_12;
      }

      if (v10 != v8)
      {
        break;
      }

LABEL_13:
      if (v4 != v6)
      {
        *(v6 + 248) = *(v4 + 248) + 8 * *(v4 + 244);
      }

      ++v5;
      v4 = v6;
      if (v5 >= *(a1 + 196))
      {
        return 0;
      }
    }

    v11 = *(v6 + 104);
    if (v11)
    {
      v12 = *(*(v11 + 24) + 8);
    }

    else
    {
      v12 = "<first>";
    }

    (*(a1 + 72))(a1, 14, "Invalid chunk count (%d) for part '%s', expect (%d)", v10, v12, v8);
LABEL_12:
    *(v6 + 244) = v9;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_29AB21754(void *a1, char *__dst, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0xFFFFFFFFLL;
  v8 = a3;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = a1[2];
        if (v9 < 1)
        {
          break;
        }

        if (v8 >= v9)
        {
          v10 = a1[2];
        }

        else
        {
          v10 = v8;
        }

        memcpy(__dst, (*a1 + a1[1]), v10);
        v11 = a1[2] - v10;
        a1[1] += v10;
        a1[2] = v11;
        v8 -= v10;
        __dst += v10;
        v6 += v10;
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      if (v8 <= 0x1000)
      {
        break;
      }

      v15 = 0;
      v7 = (*(a1[6] + 40))();
      if (v15 >= 1)
      {
        v8 -= v15;
        __dst += v15;
        v6 += v15;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v15 = 0;
    v7 = (*(a1[6] + 40))();
    v12 = v15;
    if (v15 <= 0)
    {
      break;
    }

    a1[1] = 0;
    a1[2] = v12;
  }

  if (!v15)
  {
    v7 = (*(a1[6] + 64))();
  }

LABEL_18:
  if (v6 == a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = 10;
  }

  if (v7 == -1)
  {
    return v13;
  }

  return v7;
}

uint64_t sub_29AB218CC(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = a1[2];
  result = 0xFFFFFFFFLL;
  v7 = a2;
  while (1)
  {
    while (v5 >= 1)
    {
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      v5 -= v8;
      a1[1] += v8;
      a1[2] = v5;
      v7 -= v8;
      v3 += v8;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    v10 = 0;
    result = (*(a1[6] + 40))();
    v5 = v10;
    if (v10 <= 0)
    {
      break;
    }

    a1[1] = 0;
    a1[2] = v5;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (!v10)
  {
    result = (*(a1[6] + 64))();
  }

LABEL_15:
  if (v3 == v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 10;
  }

  if (result == -1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_29AB219C4(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 32))
  {
    v7 = *(a1 + 72);
    v8 = "'channels' attribute not found";
    goto LABEL_14;
  }

  if (!*(a2 + 40))
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'compression' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "compression", 5, 0, 0, (a2 + 40));
    if (result)
    {
      return result;
    }

    *(*(a2 + 40) + 24) = 3;
    *(a2 + 176) = 3;
  }

  if (*(a2 + 48))
  {
    result = 0;
  }

  else
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'dataWindow' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "dataWindow", 1, 0, 0, (a2 + 48));
    if (result)
    {
      return result;
    }

    **(*(a2 + 48) + 24) = xmmword_29B4E18B0;
    *(a2 + 144) = xmmword_29B4E18B0;
    result = sub_29AB22600(a1, a2, 1);
  }

  if (!*(a2 + 56))
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'displayWindow' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "displayWindow", 1, 0, 0, (a2 + 56));
    if (result)
    {
      return result;
    }

    **(*(a2 + 56) + 24) = xmmword_29B4E18B0;
    *(a2 + 160) = xmmword_29B4E18B0;
  }

  if (!*(a2 + 64))
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'lineOrder' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "lineOrder", 12, 0, 0, (a2 + 64));
    if (result)
    {
      return result;
    }

    *(*(a2 + 64) + 24) = 0;
    *(a2 + 180) = 0;
  }

  if (!*(a2 + 72))
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'pixelAspectRatio' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "pixelAspectRatio", 8, 0, 0, (a2 + 72));
    if (result)
    {
      return result;
    }

    *(*(a2 + 72) + 24) = 1065353216;
  }

  if (!*(a2 + 80))
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'screenWindowCenter' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "screenWindowCenter", 24, 0, 0, (a2 + 80));
    if (result)
    {
      return result;
    }

    **(*(a2 + 80) + 24) = 0;
  }

  if (!*(a2 + 88))
  {
    if (!a3)
    {
      v7 = *(a1 + 72);
      v8 = "'screenWindowWidth' attribute not found";
      goto LABEL_14;
    }

    result = sub_29AB22470(a1, (a2 + 8), "screenWindowWidth", 8, 0, 0, (a2 + 88));
    if (result)
    {
      return result;
    }

    *(*(a2 + 88) + 24) = 1065353216;
  }

  if (*(a1 + 5))
  {
    if (!*(a2 + 104))
    {
      v7 = *(a1 + 72);
      v8 = "'name' attribute for multipart file not found";
      goto LABEL_14;
    }
  }

  else if (!*(a1 + 4))
  {
    return result;
  }

  if (*(a2 + 112))
  {
    if (*(a1 + 4) && !*(a2 + 120))
    {
      v7 = *(a1 + 72);
      v8 = "'version' attribute for deep file not found";
    }

    else
    {
      if (*(a2 + 128))
      {
        return result;
      }

      v7 = *(a1 + 72);
      v8 = "'chunkCount' attribute for multipart / deep file not found";
    }
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = "'type' attribute for v2+ file not found";
  }

LABEL_14:

  return v7(a1, 13, v8);
}

uint64_t sub_29AB21D38(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 160);
  v7 = *(a2 + 164);
  v8 = *(a2 + 168);
  v9 = *(a2 + 172);
  if (v6 > v8 || v8 > 1073741822 || v7 < -1073741822 || v6 < -1073741822 || v7 > v9 || v9 >= 0x3FFFFFFF)
  {
    return (*(a1 + 72))(a1, 14, "Invalid display window (%d, %d - %d, %d)", a6);
  }

  v12 = *(a2 + 144);
  v11 = *(a2 + 148);
  v14 = *(a2 + 152);
  v13 = *(a2 + 156);
  if (v12 > v14 || v11 < -1073741822 || v11 > v13 || v12 < -1073741822 || v14 > 1073741822 || v13 >= 0x3FFFFFFF)
  {
    return (*(a1 + 72))(a1, 14, "Invalid data window (%d, %d - %d, %d)", a6);
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 108);
  a4.n128_u32[0] = *(*(a2 + 72) + 24);
  a3.n128_u32[0] = *(*(a2 + 88) + 24);
  if (v15 >= 1 && v14 - v12 >= v15)
  {
    return (*(a1 + 72))(a3, a4);
  }

  if (v16 >= 1 && v13 - v11 >= v16)
  {
    return (*(a1 + 72))(a3, a4);
  }

  if (v15 >= 1 && v16 >= 1 && *(a2 + 128) && (v16 * v15) < *(a2 + 244))
  {
    return (*(a1 + 72))(a1, 14, "Invalid chunkCount (%lld) exceeds maximum area of %lld", *(a2 + 244), v16 * v15);
  }

  if (((a4.n128_u32[0] & 0x7FFFFFFF) - 0x800000) >> 24 > 0x7E || a4.n128_f32[0] < 0.000001 || a4.n128_f32[0] > 1000000.0)
  {
    return (*(a1 + 72))(a1);
  }

  if (a3.n128_f32[0] >= 0.0)
  {
    return 0;
  }

  return (*(a1 + 72))(a1);
}

uint64_t sub_29AB21F48(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    v10 = *(a1 + 64);
LABEL_16:

    return v10();
  }

  if (!*(a2 + 48))
  {
    v10 = *(a1 + 64);
    goto LABEL_16;
  }

  v3 = *a3;
  if (v3 <= 0)
  {
    v10 = *(a1 + 64);
    goto LABEL_16;
  }

  v4 = *(a2 + 144);
  v5 = *(a2 + 148);
  for (i = (*(a3 + 1) + 24); ; i += 8)
  {
    v7 = *i;
    if (v7 <= 0)
    {
      return (*(a1 + 72))(a1, 14, "channel '%s': x subsampling factor is invalid (%d)");
    }

    v8 = i[1];
    if (v8 <= 0)
    {
      return (*(a1 + 72))(a1, 14, "channel '%s': y subsampling factor is invalid (%d)");
    }

    if (v4 % v7)
    {
      return (*(a1 + 72))(a1, 14, "channel '%s': minimum x coordinate (%d) of the data window is not a multiple of the x subsampling factor (%d)");
    }

    if (v5 % v8)
    {
      return (*(a1 + 72))(a1, 14, "channel '%s': minimum y coordinate (%d) of the data window is not a multiple of the y subsampling factor (%d)");
    }

    if ((*(a2 + 152) - v4 + 1) % v7)
    {
      return (*(a1 + 72))(a1, 14, "channel '%s': row width (%lld) of the data window is not a multiple of the x subsampling factor (%d)");
    }

    if ((*(a2 + 156) - v5 + 1) % v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return (*(a1 + 72))(a1, 14, "channel '%s': column height (%lld) of the data window is not a multiple of the y subsampling factor (%d)");
}

uint64_t sub_29AB220F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (!v2 || !*(a1 + 3) || *(a2 + 4) == 1)
  {
    return 0;
  }

  *(a2 + 4) = 1;
  v5 = 14;
  (*(a1 + 72))(a1, 14, "attribute 'type': Mismatch between file flags and type string '%s', believing file flags", *(*(v2 + 24) + 8));
  if (*a1 == 1)
  {
    return v5;
  }

  if (!sub_29AB1DDE8(a1, *(*(a2 + 112) + 24), "tiledimage", 0xAuLL))
  {
    return 0;
  }

  v7 = *(a1 + 72);

  return v7(a1, 14, "attribute 'type': Mismatch between file flags and type attribute, unable to fix");
}

uint64_t sub_29AB221DC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 4) | 2) != 3)
  {
    return 0;
  }

  v2 = *(a2 + 96);
  if (v2)
  {
    v3 = *(v2 + 24);
    v5 = *v3;
    v4 = v3[1];
    if (*v3)
    {
      v6 = v5 >> 29 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6 || v4 - 0x20000000 <= 0xE0000000)
    {
      return (*(a1 + 72))(a1, 14, "Invalid tile description size (%u x %u)", *v3, v4);
    }

    v11 = *(a1 + 112);
    v10 = *(a1 + 116);
    v12 = *(*(a2 + 32) + 24);
    v13 = *(v3 + 8);
    if (v11 >= 1 && v11 < v5 || v10 >= 1 && v10 < v4 || (v13 & 0xF) >= 3 || v13 > 0x1F)
    {
      return (*(a1 + 72))(a1, 14);
    }

    v14 = *v12;
    if (v14 >= 1)
    {
      for (i = (*(v12 + 1) + 24); *i == 1 && i[1] == 1; i += 8)
      {
        if (!--v14)
        {
          return 0;
        }
      }

      return (*(a1 + 72))(a1, 14);
    }

    return 0;
  }

  v9 = *(a1 + 72);

  return v9();
}

uint64_t sub_29AB22390(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 4) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  if (*(a2 + 176) > 2u)
  {
    v6 = *(a1 + 64);

    return v6();
  }

  v2 = *(*(a2 + 32) + 24);
  v3 = *v2;
  if (v3 < 1)
  {
    return 0;
  }

  for (i = (*(v2 + 1) + 24); *i == 1 && i[1] == 1; i += 8)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return (*(a1 + 72))(a1, 14);
}

uint64_t sub_29AB22470(uint64_t a1, int *a2, char *a3, int a4, int a5, void *a6, uint64_t *a7)
{
  v23 = 0;
  if (!a1)
  {
    return 2;
  }

  result = sub_29AB1DEFC(a1, a2, a3, a5, a6, a7);
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      v15 = *a7;
      if (*(*a7 + 20) == a4)
      {
        return 0;
      }

      *a7 = 0;
      return (*(a1 + 72))(a1, 3, "Entry '%s' already in list but with different type ('%s')", a3, *(v15 + 8));
    }
  }

  else
  {
    v16 = *(a1 + 2);
    v17 = strlen(a3);
    v18 = v17;
    if (v17 <= v16)
    {
      v19 = &(&off_29F295EA8)[3 * (a4 - 1)];
      result = sub_29AB1E050(a1, &v23, v19[2], a5, a6, 0, 0, 0, 0);
      if (!result)
      {
        v20 = v23;
        v21 = *v19;
        *v23 = a3;
        *(v20 + 8) = v21;
        *(v20 + 16) = v18;
        v22 = *(v19 + 3);
        *(v20 + 17) = *(v19 + 2);
        *(v20 + 20) = v22;
        result = sub_29AB1E208(a1, a2, v20);
        if (!result)
        {
          *a7 = v20;
          sub_29AB1E530(a1, v20);
          return 0;
        }
      }

      if (a6)
      {
        *a6 = 0;
      }
    }

    else
    {
      return (*(a1 + 72))(a1, 12, "Provided name '%s' too long for file (len %d, max %d)", a3, v17, v16);
    }
  }

  return result;
}

uint64_t sub_29AB22600(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a2 + 4) | 2) == 2)
  {
    return 0;
  }

  v5 = a1;
  if (a3)
  {
    if (!*(a2 + 48) || !*(a2 + 96))
    {
      return 0;
    }

    if (*(a2 + 200))
    {
      (*(a1 + 96))();
      *(a2 + 200) = 0;
    }
  }

  else
  {
    if (!*(a2 + 96))
    {
      v20 = *(a1 + 56);
      v21 = 13;
      goto LABEL_65;
    }

    if (*(a2 + 200))
    {
      return 0;
    }
  }

  v6 = *(*(a2 + 96) + 24);
  if (!*v6 || !v6[1])
  {
LABEL_23:
    v20 = *(v5 + 56);
    a1 = v5;
    v21 = 14;
LABEL_65:

    return v20(a1, v21);
  }

  v7 = *(a2 + 144);
  v8 = *(a2 + 148);
  v10 = *(a2 + 152);
  v9 = *(a2 + 156);
  v11 = v10 - v7;
  v12 = v10 - v7 + 1;
  v13 = v9 - v8;
  v14 = v9 - v8 + 1;
  v15 = *(v6 + 8);
  v16 = v15 & 0xF;
  if ((v15 & 0xF) == 0)
  {
    v48 = *(a2 + 148);
    v49 = *(a2 + 144);
    v47 = *(a2 + 156);
    goto LABEL_34;
  }

  if (v16 != 2)
  {
    if (v16 == 1)
    {
      if (v12 <= v14)
      {
        v17 = v9 - v8 + 1;
      }

      else
      {
        v17 = v10 - v7 + 1;
      }

      v47 = *(a2 + 156);
      v48 = *(a2 + 148);
      v49 = *(a2 + 144);
      if (v15 <= 0xF)
      {
        if (v17 >= 2)
        {
          v18 = 1;
          do
          {
            v19 = ++v18;
            v28 = v17 > 3;
            v17 = v17 >> 1;
          }

          while (v28);
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (v17 >= 2)
      {
        v42 = 0;
        v43 = 1;
        do
        {
          if (v17)
          {
            v42 = 1;
          }

          ++v43;
          v28 = v17 > 3;
          v17 = v17 >> 1;
        }

        while (v28);
        v18 = v42 + v43;
        v19 = v42 + v43;
        goto LABEL_36;
      }

LABEL_34:
      v18 = 1;
LABEL_35:
      v19 = 1;
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  v47 = *(a2 + 156);
  v48 = *(a2 + 148);
  v49 = *(a2 + 144);
  if (v15 > 0xF)
  {
    if (v11 < 1)
    {
      v18 = 1;
    }

    else
    {
      v39 = 0;
      v40 = 1;
      v41 = v10 - v7 + 1;
      do
      {
        if (v41)
        {
          v39 = 1;
        }

        ++v40;
        v28 = v41 > 3;
        v41 >>= 1;
      }

      while (v28);
      v18 = v39 + v40;
    }

    if (v13 < 1)
    {
      goto LABEL_35;
    }

    v44 = 0;
    v45 = 1;
    v46 = v9 - v8 + 1;
    do
    {
      if (v46)
      {
        v44 = 1;
      }

      ++v45;
      v28 = v46 > 3;
      v46 >>= 1;
    }

    while (v28);
    v19 = v44 + v45;
  }

  else
  {
    v18 = 1;
    if (v11 >= 1)
    {
      v22 = v10 - v7 + 1;
      do
      {
        ++v18;
        v28 = v22 > 3;
        v22 >>= 1;
      }

      while (v28);
    }

    if (v13 < 1)
    {
      goto LABEL_35;
    }

    v19 = 1;
    v23 = v9 - v8 + 1;
    do
    {
      ++v19;
      v28 = v23 > 3;
      v23 >>= 1;
    }

    while (v28);
  }

LABEL_36:
  *(a2 + 192) = v18;
  *(a2 + 196) = v19;
  v24 = (*(v5 + 88))(8 * (v19 + v18));
  if (!v24)
  {
    v20 = *(v5 + 56);
    a1 = v5;
    v21 = 1;
    goto LABEL_65;
  }

  if (v18 < 1)
  {
LABEL_50:
    v31 = v24 + 4 * v18;
    v32 = v31 + 4 * v18;
    if (v19 >= 1)
    {
      v33 = 0;
      v34 = v6[2] & 0xF0;
      do
      {
        v35 = v14 / (1 << v33);
        v36 = v34 == 16 && v35 << v33 <= v13;
        v37 = v36 ? v35 + 1 : v14 / (1 << v33);
        v38 = v37 <= 1 ? 1 : v37;
        if (v37 >= 0x80000000)
        {
          return (*(v5 + 72))(v5, 14, "Invalid data window y dims (%d, %d) resulting in invalid tile level size (%lld) for level %d", v48, v47, v38, v33);
        }

        *(v32 + 4 * v33) = (v38 + v6[1] - 1) / v6[1];
        *(v32 + 4 * v19 + 4 * v33++) = v38;
      }

      while (v19 != v33);
    }

    *(a2 + 200) = v24;
    *(a2 + 208) = v32;
    *(a2 + 216) = v31;
    *(a2 + 224) = v32 + 4 * v19;
    return 0;
  }

  v25 = 0;
  v26 = v6[2] & 0xF0;
  while (1)
  {
    v27 = v12 / (1 << v25);
    v28 = v26 == 16 && v27 << v25 <= v11;
    v29 = v28 ? v27 + 1 : v12 / (1 << v25);
    v30 = v29 <= 1 ? 1 : v29;
    if (v29 >= 0x80000000)
    {
      return (*(v5 + 72))(v5, 14, "Invalid data window x dims (%d, %d) resulting in invalid tile level size (%lld) for level %d", v49, v10, v30, v25);
    }

    *(v24 + 4 * v25) = (v30 + *v6 - 1) / *v6;
    *(v24 + 4 * v18 + 4 * v25++) = v30;
    if (v18 == v25)
    {
      goto LABEL_50;
    }
  }
}

uint64_t sub_29AB22A04(uint64_t a1, const char *a2, int *a3, int a4, uint64_t a5, const char *a6)
{
  v17 = 0;
  v11 = *a3;
  if (*a3 > a4)
  {
LABEL_7:
    *a3 = v11;
    a2[a4 - 1] = 0;
    return (*(a1 + 72))(a1, 12, "Invalid %s encountered: start '%s' (max %d)", a6, a2, a4);
  }

  else
  {
    v13 = a4 + 1;
    v14 = &a2[v11];
    while (1)
    {
      result = (*(a5 + 32))(a5, &v17, 1);
      if (result)
      {
        break;
      }

      v16 = v17;
      *v14 = v17;
      if (!v16)
      {
        result = 0;
        *a3 = v11;
        return result;
      }

      ++v11;
      ++v14;
      if (v13 == v11)
      {
        v11 = a4 + 1;
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_29AB22AEC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, const char *a5, const char *a6, unsigned int *a7)
{
  *a7 = a3;
  if ((a3 & 0x80000000) != 0)
  {
    return (*(a1 + 72))(a1, 17, "Attribute '%s', type '%s': Invalid negative size %d");
  }

  v7 = *(a1 + 152);
  if (v7 >= 1)
  {
    v8 = *(a2 + 16);
    if (a3 > v8 && a3 - v8 + *(a2 + 24) > v7)
    {
      return (*(a1 + 72))(a1, 17, "Attribute '%s', type '%s': Invalid size %d");
    }
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a3 / a4 * a4 == a3)
  {
    *a7 = a3 / a4;
    return 0;
  }

  return (*(a1 + 72))(a1, 17, "Attribute '%s': Invalid size %d (exp '%s' size 4 * n, found odd bytes %d)", a5, a3, a6, a3 % a4);
}

uint64_t sub_29AB22BB8(uint64_t a1, int *a2, char *a3, const char *a4, uint64_t *a5)
{
  v24 = 0;
  if (!a1)
  {
    return 2;
  }

  if (a4 && *a4)
  {
    result = sub_29AB1DEFC(a1, a2, a3, 0, 0, a5);
    if (result)
    {
      if ((result & 0x80000000) != 0)
      {
        result = strcmp(a4, *(*a5 + 8));
        if (result)
        {
          *a5 = 0;
          return (*(a1 + 72))(a1, 3, "Entry '%s' already in list but with different type ('%s' vs requested '%s')");
        }
      }

      return result;
    }

    v12 = strlen(a3);
    v13 = v12;
    v14 = *(a1 + 2);
    if (v12 > v14)
    {
      v15 = *(a1 + 72);
      v16 = "Provided name '%s' too long for file (len %d, max %d)";
      return v15(a1, 12, v16);
    }

    v17 = strlen(a4);
    v18 = v17;
    if (v17 > v14)
    {
      v15 = *(a1 + 72);
      v16 = "Provided type name '%s' too long for file (len %d, max %d)";
      return v15(a1, 12, v16);
    }

    v19 = &qword_29F295EB8;
    v20 = 28;
    while (1)
    {
      v21 = *(v19 - 2);
      if (!strcmp(a4, v21))
      {
        break;
      }

      v19 += 3;
      if (!--v20)
      {
        result = sub_29AB1E050(a1, &v24, 56, 0, 0, a3, v13, a4, v18);
        if (result)
        {
          return result;
        }

        v22 = 29;
        v23 = v24;
        goto LABEL_25;
      }
    }

    result = sub_29AB1E050(a1, &v24, *v19, 0, 0, a3, v13, 0, 0);
    if (result)
    {
      return result;
    }

    v23 = v24;
    *(v24 + 8) = v21;
    v22 = *(v19 - 1);
    *(v23 + 17) = *(v19 - 2);
LABEL_25:
    *(v23 + 20) = v22;
    result = sub_29AB1E208(a1, a2, v23);
    if (!result)
    {
      *a5 = v23;
      sub_29AB1E530(a1, v23);
      return 0;
    }
  }

  else
  {
    v11 = *(a1 + 64);

    return v11();
  }

  return result;
}

uint64_t sub_29AB22DFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, int a6, unsigned int a7)
{
  if (4 * a7 != a6)
  {
    return (*(a1 + 72))(a1, 17, "Attribute '%s': Invalid size %d (exp '%s' size 4 * %d (%d))", a4, a6, a5, a7, 4 * a7);
  }

  result = (*(a2 + 32))(a2, a3, 4 * a7);
  if (result)
  {
    return (*(a1 + 72))(a1, result, "Unable to read '%s' %s data", a4, a5);
  }

  return result;
}

uint64_t sub_29AB22EA0(uint64_t a1, uint64_t a2, unsigned int *a3, const char *a4, const char *a5, unsigned int a6)
{
  v6 = a6;
  v20 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v16 = 0;
  v11 = *(a1 + 2);
  result = sub_29AB22AEC(a1, a2, a6, 1u, a4, a5, &v18);
  if (!result && v6 >= 1)
  {
    while (1)
    {
      v18 = 0;
      result = sub_29AB22A04(a1, __s1, &v18, v11, a2, a4);
      if (result)
      {
        break;
      }

      v13 = v18;
      if (!v18)
      {
        return 0;
      }

      v14 = v6 + ~v18;
      if (v14 <= 15)
      {
        return (*(a1 + 72))(a1, 17, "Out of data parsing '%s', last channel '%s'", a4, __s1);
      }

      result = (*(a2 + 32))(a2, &v17, 4);
      if (!result)
      {
        result = (*(a2 + 32))(a2, v15, 4);
        if (!result)
        {
          result = (*(a2 + 32))(a2, &v16 + 4, 4);
          if (!result)
          {
            result = (*(a2 + 32))(a2, &v16, 4);
            if (!result)
            {
              result = sub_29AB23DEC(a1, a3, __s1, v13, v17, v15[0], SHIDWORD(v16), v16);
              if (!result)
              {
                v6 = v14 - 16;
                if (v14 != 16)
                {
                  continue;
                }
              }
            }
          }
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_29AB2304C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, const char *a4, const char *a5, int a6, unsigned int a7)
{
  if (a6 != 1)
  {
    return (*(a1 + 72))(a1, 17, "Attribute '%s': Invalid size %d (exp '%s' size 1)");
  }

  if ((*(a2 + 32))(a2, a3, 1))
  {
    return (*(a1 + 72))(a1, 10, "Unable to read '%s' %s data");
  }

  if (*a3 >= a7)
  {
    return (*(a1 + 72))(a1, 14, "Attribute '%s' (type '%s'): Invalid value %d (max allowed %d)", a4, a5, *a3, a7);
  }

  return 0;
}

uint64_t sub_29AB23128(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, int a6, unsigned int a7)
{
  if (8 * a7 != a6)
  {
    return (*(a1 + 72))(a1, 17, "Attribute '%s': Invalid size %d (exp '%s' size 8 * %d (%d))", a4, a6, a5, a7, 8 * a7);
  }

  result = (*(a2 + 32))(a2, a3, 8 * a7);
  if (result)
  {
    return (*(a1 + 72))(a1, result, "Unable to read '%s' %s data", a4, a5);
  }

  return result;
}

uint64_t sub_29AB231CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, signed int a6)
{
  v22 = 0;
  v12 = sub_29AB22AEC(a1, a2, a6, 4u, a4, a5, &v22);
  v13 = v12;
  if (!a1)
  {
    if (v22 > 0 && v12 == 0)
    {
      return 2;
    }

    else
    {
      return v12;
    }
  }

  if (a3)
  {
    if (*(a3 + 8) && *(a3 + 4) >= 1)
    {
      (*(a1 + 96))();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }

  if (v13)
  {
    return v13;
  }

  v14 = v22;
  if (v22 <= 0)
  {
    return v13;
  }

  if (v22 >> 29)
  {
    v15 = (*(a1 + 72))(a1, 3, "Invalid too large size for float vector (%d entries)");
  }

  else if (a3)
  {
    v17 = 4 * v22;
    *a3 = 0;
    *(a3 + 8) = 0;
    v18 = (*(a1 + 88))(v17);
    *(a3 + 8) = v18;
    if (v18)
    {
      v19 = v18;
      *a3 = v14;
      *(a3 + 4) = v14;
      goto LABEL_23;
    }

    v15 = (*(a1 + 56))(a1, 1);
  }

  else
  {
    v15 = (*(a1 + 64))(a1, 3, "Invalid reference to float vector object to initialize");
  }

  v13 = v15;
  if (v15)
  {
    return v13;
  }

  v19 = *(a3 + 8);
LABEL_23:
  if (!(*(a2 + 32))(a2, v19, a6))
  {
    return 0;
  }

  v20 = *(a3 + 8);
  if (v20)
  {
    if (*(a3 + 4) >= 1)
    {
      (*(a1 + 96))(v20);
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return (*(a1 + 72))(a1, 10, "Unable to read '%s' %s data", a4, a5);
}

uint64_t sub_29AB23368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v30 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 152);
  if (a3)
  {
    if (*(a3 + 16) && *(a3 + 8))
    {
      (*(a1 + 96))();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  if (a6 <= 7)
  {
    v11 = *(a1 + 72);
    v12 = "Attribute '%s': Invalid size %d (exp '%s' size >= 8)";
LABEL_8:
    v13 = a1;
    v14 = 17;
    return v11(v13, v14, v12);
  }

  v15 = (*(a2 + 32))(a2, &v28, 8);
  if (v15)
  {
    return (*(a1 + 72))(a1, v15, "Attribute '%s': Unable to read preview sizes");
  }

  v17 = v28;
  v18 = v29;
  v19 = 4 * v28 * v29;
  if (v19 + 8 != a6)
  {
    v11 = *(a1 + 72);
    v12 = "Attribute '%s': Invalid size %d (exp '%s' %u x %u * 4 + sizevals)";
    v13 = a1;
    v14 = 14;
    return v11(v13, v14, v12);
  }

  if (!v19 || v10 >= 1 && v10 <= v19)
  {
    v11 = *(a1 + 72);
    v12 = "Attribute '%s', type '%s': Invalid size for preview %u x %u";
    goto LABEL_8;
  }

  v20 = v28 * v29;
  v21 = 4 * v20;
  if (((v20 >> 29) & 0x1FFFFFFFFLL) != 0)
  {
    result = (*(a1 + 72))(a1, 3, "Invalid very large size for preview image (%u x %u - %llu bytes)");
    goto LABEL_26;
  }

  if (!a3)
  {
    result = (*(a1 + 64))(a1, 3, "Invalid reference to preview object to initialize");
LABEL_26:
    if (result)
    {
      return result;
    }

LABEL_27:
    v23 = *(a3 + 16);
    goto LABEL_29;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v21)
  {
    v22 = (*(a1 + 88))(v21);
    *(a3 + 16) = v22;
    if (v22)
    {
      v23 = v22;
      *(a3 + 8) = v21;
      *a3 = v17;
      *(a3 + 4) = v18;
      goto LABEL_29;
    }

    result = (*(a1 + 56))(a1, 1);
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  v23 = 0;
LABEL_29:
  result = (*(a2 + 32))(a2, v23, 4 * v28 * v29);
  if (result)
  {
    v26 = result;
    v27 = *(a3 + 16);
    if (v27)
    {
      if (*(a3 + 8))
      {
        (*(a1 + 96))(v27, v24, v25);
      }
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return (*(a1 + 72))(a1, v26, "Attribute '%s': Unable to read preview data (%d bytes)");
  }

  return result;
}

uint64_t sub_29AB235D4(uint64_t a1, uint64_t a2, void *a3, const char *a4, const char *a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = (*(a2 + 32))(a2, a7, a6);
  if (v14)
  {
    return (*(a1 + 72))(a1, v14, "Unable to read '%s' %s data", a4, a5);
  }

  *(a7 + v13) = 0;

  return sub_29AB23D60(a1, a3, a7, a6);
}

uint64_t sub_29AB236A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, signed int a6)
{
  v35 = 0;
  v11 = sub_29AB22AEC(a1, a2, a6, 1u, a4, a5, &v35 + 1);
  if (v11)
  {
    return v11;
  }

  v34 = a3;
  if (a6 < 1)
  {
    v19 = 0;
    v15 = 0;
    v20 = 0;
LABEL_24:
    sub_29AB1E86C(a1, v34);
    v11 = 0;
    *v34 = v19;
    *(v34 + 4) = v15;
    *(v34 + 8) = v20;
    return v11;
  }

  v33 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    LODWORD(v35) = 0;
    v16 = (*(a2 + 32))(a2, &v35, 4);
    if (v16)
    {
      v29 = (*(a1 + 72))(a1, v16, "Attribute '%s': Unable to read string length", v33);
      goto LABEL_30;
    }

    if ((v35 & 0x80000000) != 0 || ((v17 = *(a1 + 152), v17 >= 1) ? (v18 = v17 < v35) : (v18 = 0), v18))
    {
      v29 = (*(a1 + 72))(a1, 14, "Attribute '%s': Invalid size (%d) encountered parsing string vector", v33, v35);
      goto LABEL_30;
    }

    if (!v15)
    {
      v13 = (*(a1 + 88))(64);
      if (!v13)
      {
        break;
      }

      v15 = 4;
    }

    v19 = v12 + 1;
    if (v15 > v12 + 1)
    {
      v20 = v13;
      goto LABEL_19;
    }

    v15 *= 2;
    v21 = (*(a1 + 88))(16 * v15);
    if (!v21)
    {
      break;
    }

    v20 = v21;
    v22 = v12;
    v23 = v21;
    for (i = v13; v22; --v22)
    {
      v25 = *i++;
      *v23++ = v25;
    }

    (*(a1 + 96))(v13);
LABEL_19:
    v26 = v20 + 16 * v12;
    *v26 = 0uLL;
    v27 = sub_29AB1E9C0(a1, v26, v35);
    if (v27)
    {
      goto LABEL_28;
    }

    v28 = (*(a2 + 32))(a2, *(v26 + 8), v35);
    if (v28)
    {
      v27 = (*(a1 + 72))(a1, v28, "Attribute '%s': Unable to read string of length (%d)", v33, v35);
LABEL_28:
      v11 = v27;
      v13 = v20;
      goto LABEL_31;
    }

    *(*(v26 + 8) + v35) = 0;
    v14 += 4 + v35;
    ++v12;
    v13 = v20;
    if (v14 >= a6)
    {
      goto LABEL_24;
    }
  }

  v29 = (*(a1 + 56))(a1, 1);
LABEL_30:
  v11 = v29;
  v19 = v12;
LABEL_31:
  if (v19 >= 1)
  {
    v30 = v19;
    v31 = (v13 + 8);
    do
    {
      if (v13)
      {
        if (*v31 && *(v31 - 1) >= 1)
        {
          (*(a1 + 96))();
        }

        *(v31 - 1) = 0;
        *v31 = 0;
      }

      v31 += 4;
      --v30;
    }

    while (v30);
  }

  if (v13)
  {
    (*(a1 + 96))(v13);
  }

  return v11;
}

uint64_t sub_29AB23968(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int a6)
{
  if (a6 != 9)
  {
    return (*(a1 + 72))(a1, 17, "Attribute '%s': Invalid size %d (exp '%s' size %d)");
  }

  v9 = (*(a2 + 32))(a2, a3, 9);
  if (v9)
  {
    return (*(a1 + 72))(a1, v9, "Unable to read '%s' %s data");
  }

  v11 = *(a3 + 8);
  if ((v11 & 0xF) >= 3)
  {
    return (*(a1 + 72))(a1, 14, "Attribute '%s': Invalid tile level specification encountered: found enum %d");
  }

  if (v11 < 0x20)
  {
    return 0;
  }

  return (*(a1 + 72))(a1, 14, "Attribute '%s': Invalid tile rounding specification encountered: found enum %d", a4, v11 >> 4);
}

uint64_t sub_29AB23A64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, signed int a6)
{
  result = sub_29AB22AEC(a1, a2, a6, 1u, a4, a5, &v14);
  if (!result)
  {
    sub_29AB1E934(a1, a3);
    if (!a1)
    {
      return 2;
    }

    if (a3)
    {
      if (a6 < 0)
      {
        result = (*(a1 + 72))(a1, 3, "Invalid size for opaque data (%llu bytes, must be <= INT32_MAX)");
        goto LABEL_12;
      }

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      if (a6)
      {
        v13 = (*(a1 + 88))(a6);
        *(a3 + 16) = v13;
        if (!v13)
        {
          result = (*(a1 + 56))(a1, 1);
LABEL_12:
          if (result)
          {
            return result;
          }

          v13 = *(a3 + 16);
          goto LABEL_16;
        }
      }

      else
      {
        v13 = 0;
      }

      *a3 = a6;
      *(a3 + 8) = a6;
LABEL_16:
      result = (*(a2 + 32))(a2, v13, a6);
      if (result)
      {
        sub_29AB1E934(a1, a3);
        return (*(a1 + 72))(a1, 10, "Attribute '%s': Unable to read opaque %s data (%d bytes)", a4, a5, a6);
      }

      return result;
    }

    result = (*(a1 + 64))(a1, 3, "Invalid reference to opaque data object to initialize");
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_29AB23BC0(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, uint64_t a5)
{
  v17 = a5;
  v8 = (a2 + 128);
  if (*(a2 + 128))
  {
    (*(a3 + 40))(a3, a5, a3, __s1);
    v9 = *(a1 + 72);

    return v9(a1, 14, "Duplicate copy of required attribute 'chunkCount' encountered");
  }

  else
  {
    if (strcmp(__s1, "int"))
    {
      (*(a3 + 40))(a3, a5);
      return (*(a1 + 72))(a1, 16, "attribute 'chunkCount': Invalid type '%s'");
    }

    if (a5 != 4)
    {
      (*(a3 + 40))(a3, a5);
      return (*(a1 + 72))(a1, 14, "Required attribute 'chunkCount': Invalid size %d (exp 4)");
    }

    v12 = (*(a3 + 32))(a3, &v17, 4);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 64);
      v15 = "Unable to read chunkCount data";
    }

    else
    {
      result = sub_29AB22470(a1, (a2 + 8), "chunkCount", 10, 0, 0, v8);
      if (!result)
      {
        v16 = v17;
        *(*(a2 + 128) + 24) = v17;
        *(a2 + 244) = v16;
        return result;
      }

      v13 = result;
      v14 = *(a1 + 72);
      v15 = "Unable to initialize attribute '%s', type 'int'";
    }

    return v14(a1, v13, v15);
  }
}

uint64_t sub_29AB23D60(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 2;
  }

  if (a4 < 0)
  {
    return (*(a1 + 72))(a1, 3, "Received request to allocate negative sized string (%d)", a4);
  }

  if (a3)
  {
    if (a2)
    {
      result = 0;
      *a2 = 0;
      a2[1] = a3;
      *a2 = a4;
      return result;
    }

    v6 = *(a1 + 64);
  }

  else
  {
    v6 = *(a1 + 64);
  }

  return v6();
}

uint64_t sub_29AB23DEC(uint64_t a1, unsigned int *a2, char *__s1, int a4, unsigned int a5, unsigned int a6, int a7, int a8)
{
  v41 = 0u;
  v42 = 0u;
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    if (!__s1 || !a4 || !*__s1)
    {
      return (*(a1 + 72))(a1, 3, "Channel name must not be empty, received '%s'");
    }

    v12 = *(a1 + 2);
    if (v12 < a4)
    {
      return (*(a1 + 72))(a1, 12, "Channel name must shorter than length allowed by file (%d), received '%s' (%d)", v12, __s1, a4);
    }

    if (a5 >= 3)
    {
      return (*(a1 + 72))(a1, 3, "Invalid pixel type specified (%d) adding channel '%s' to list");
    }

    v17 = a6;
    if (a6 >= 2)
    {
      return (*(a1 + 72))(a1, 3, "Invalid perceptual linear flag value (%d) adding channel '%s' to list");
    }

    if (a7 >= 1 && a8 > 0)
    {
      v39 = *(a2 + 1);
      v40 = *a2;
      if (v40 < 1)
      {
        LODWORD(v20) = 0;
      }

      else
      {
        v20 = 0;
        v21 = (*(a2 + 1) + 8);
        while (1)
        {
          v22 = strcmp(__s1, *v21);
          if (v22 < 0)
          {
            break;
          }

          if (!v22)
          {
            return (*(a1 + 72))(a1, 3, "Attempt to add duplicate channel '%s' to channel list");
          }

          ++v20;
          v21 += 4;
          if (v40 == v20)
          {
            LODWORD(v20) = v40;
            break;
          }
        }
      }

      v14 = sub_29AB1DD34(a1, &v41, __s1, a4);
      if (v14)
      {
        return v14;
      }

      LODWORD(v42) = a5;
      BYTE4(v42) = v17;
      *(&v42 + 1) = __PAIR64__(a8, a7);
      v23 = a2[1];
      v24 = *a2;
      if (v24 >= v23)
      {
        if (v24 >= 2 * v23)
        {
          v26 = v24 + 2;
        }

        else
        {
          v26 = 2 * v23;
        }

        v25 = (*(a1 + 88))(32 * v26);
        if (!v25)
        {
          if (*(&v41 + 1) && SDWORD1(v41) >= 1)
          {
            (*(a1 + 96))();
          }

          v41 = 0uLL;
          return (*(a1 + 56))(a1, 1);
        }

        a2[1] = v26;
      }

      else
      {
        v25 = *(a2 + 1);
      }

      v27 = v24 + 1;
      if (v24 > v20)
      {
        v28 = (v25 + 32 * v24);
        v29 = &v39[2 * v24 - 2];
        do
        {
          v30 = *v29;
          v31 = v29[1];
          v29 -= 2;
          *v28 = v30;
          v28[1] = v31;
          v28 -= 2;
          --v24;
        }

        while (v24 > v20);
      }

      v32 = v42;
      v33 = (v25 + 32 * v20);
      *v33 = v41;
      v33[1] = v32;
      if (v25 == v39)
      {
        v14 = 0;
        *a2 = v27;
        *(a2 + 1) = v25;
      }

      else
      {
        if (v20 >= 1)
        {
          v34 = v20;
          v35 = v25;
          v36 = v39;
          do
          {
            v37 = *v36;
            v38 = v36[1];
            v36 += 2;
            *v35 = v37;
            v35[1] = v38;
            v35 += 2;
            --v34;
          }

          while (v34);
        }

        *a2 = v27;
        *(a2 + 1) = v25;
        (*(a1 + 96))(v39);
        return 0;
      }

      return v14;
    }

    return (*(a1 + 72))(a1, 3, "Invalid pixel sampling (x %d y %d) adding channel '%s' to list");
  }

  else
  {
    v15 = *(a1 + 64);

    return v15();
  }
}

uint64_t sub_29AB24110(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(v2 + 24);
    v4 = v3[2] & 0xF;
    if (v4 < 2)
    {
      v5 = *(a1 + 192);
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = *(a1 + 200);
        v8 = *(a1 + 208);
        do
        {
          v10 = *v7++;
          v9 = v10;
          v11 = *v8++;
          v6 += v11 * v9;
          --v5;
        }

        while (v5);
        if (v6 > 0x7FFFFFFF)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_21;
      }

LABEL_20:
      v6 = 0;
LABEL_21:
      v22 = *v1;
      if (v22 < 1)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = (*(v1 + 1) + 28);
        do
        {
          v26 = *v25;
          if (*(v25 - 3) == 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = 2;
          }

          if (v26 < 2)
          {
            v28 = v3[1];
          }

          else
          {
            v23 = 1;
            v28 = (v26 + v3[1] - 1) / v26;
          }

          v29 = ((*(v25 - 1) + *v3 - 1) / *(v25 - 1)) << v27;
          v25 += 8;
          v24 += v28 * v29;
          --v22;
        }

        while (v22);
      }

      *(a1 + 232) = v24;
      *(a1 + 242) = v23;
      return v6;
    }

    if (v4 == 2)
    {
      v17 = *(a1 + 192);
      if (v17 >= 1)
      {
        v18 = 0;
        v6 = 0;
        while (*(a1 + 196) < 1)
        {
LABEL_18:
          if (++v18 == v17)
          {
            goto LABEL_21;
          }
        }

        v19 = *(a1 + 208);
        v20 = *(a1 + 196);
        while (1)
        {
          v21 = *v19++;
          v6 += v21 * *(*(a1 + 200) + 4 * v18);
          if (v6 > 0x7FFFFFFF)
          {
            return 0xFFFFFFFFLL;
          }

          if (!--v20)
          {
            goto LABEL_18;
          }
        }
      }

      goto LABEL_20;
    }

    return 0xFFFFFFFFLL;
  }

  v12 = *(a1 + 148);
  v13 = *(a1 + 156);
  v14 = *(a1 + 176);
  v15 = 1;
  if (v14 <= 9)
  {
    if (((1 << v14) & 0x1D0) != 0)
    {
      v15 = 0;
      v16 = 32;
      goto LABEL_39;
    }

    if (((1 << v14) & 0x28) != 0)
    {
      v15 = 0;
      v16 = 16;
      goto LABEL_39;
    }

    if (v14 == 9)
    {
      v15 = 0;
      v16 = 256;
      goto LABEL_39;
    }
  }

  if (v14 >= 3)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 1;
LABEL_39:
  v30 = *v1;
  if (v30 < 1)
  {
    v32 = 0;
    v31 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = (*(v1 + 1) + 28);
    do
    {
      v34 = *v33;
      if (*(v33 - 3) == 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }

      v36 = (((*(a1 + 152) - *(a1 + 144) + 1) / *(v33 - 1)) << v35) * v16;
      if (v34 < 2)
      {
        v37 = 1;
      }

      else
      {
        v37 = v15;
      }

      if (v34 >= 2)
      {
        v31 = 1;
      }

      v33 += 8;
      v38 = v16 / v34 * v36;
      if ((v37 & 1) == 0)
      {
        v31 = 1;
        v36 = v38;
      }

      v32 += v36;
      --v30;
    }

    while (v30);
  }

  *(a1 + 232) = v32;
  *(a1 + 240) = v16;
  *(a1 + 242) = v31;
  return (v13 - v12 + v16) / v16;
}

uint64_t sub_29AB24380(uint64_t result, int *a2)
{
  if (a2)
  {
    v3 = result;
    result = *(a2 + 1);
    if (result)
    {
      if (*a2 >= 1)
      {
        v4 = 0;
        do
        {
          sub_29AB1E698(v3, *(*(a2 + 1) + 8 * v4++));
        }

        while (v4 < *a2);
        result = *(a2 + 1);
      }

      result = (*(v3 + 96))(result);
    }

    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  return result;
}

uint64_t sub_29AB24400(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  sub_29AB24380(a1, (a2 + 8));
  if (*(a2 + 200))
  {
    v4();
  }

  result = atomic_load((a2 + 256));
  atomic_store(0, (a2 + 256));
  if (result)
  {

    return (v4)();
  }

  return result;
}

uint64_t sub_29AB2447C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return 2;
  }

  if (a4)
  {
    v5 = a1[21];
    if (v5)
    {
      v7 = v5(a1, a1[17], a2, a3, *a4, a1[9]);
      if (v7 > 0)
      {
        *a4 += v7;
      }

      if (v7 == a3)
      {
        return 0;
      }

      else
      {
        return 11;
      }
    }

    else
    {
      v10 = a1[7];

      return v10();
    }
  }

  else
  {
    v9 = a1[8];

    return v9();
  }
}

uint64_t sub_29AB24540(uint64_t a1, int *a2, char *__buf, int64_t __nbyte, off_t a5, void (*a6)(uint64_t, uint64_t, const char *, ...))
{
  if (!a2)
  {
    if (a6)
    {
      v17 = "Invalid file handle pointer";
LABEL_16:
      a6(a1, 3, v17, __nbyte, a5);
    }

    return -1;
  }

  v8 = *a2;
  if (*a2 < 0)
  {
    if (a6)
    {
      v17 = "Invalid file descriptor";
      goto LABEL_16;
    }

    return -1;
  }

  v9 = a5;
  v12 = 0;
  v13 = __nbyte;
  while (1)
  {
    v14 = pwrite(v8, __buf, v13, v9);
    if (v14 < 0)
    {
      break;
    }

    v12 += v14;
    __buf += v14;
    v13 -= v14;
    v9 += v14;
LABEL_8:
    if (v12 >= __nbyte)
    {
      if (!a6)
      {
        return v12;
      }

      goto LABEL_10;
    }
  }

  if (*__error() == 4 || *__error() == 35)
  {
    goto LABEL_8;
  }

  v12 = -1;
  if (!a6)
  {
    return v12;
  }

LABEL_10:
  if (v12 != __nbyte)
  {
    v15 = __error();
    v16 = strerror(*v15);
    a6(a1, 11, "Unable to write %llu bytes to stream, wrote %lld: %s", __nbyte, v12, v16);
  }

  return v12;
}

uint64_t sub_29AB2466C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v4 = *(a1 + 196);
  v5 = *a2;
  *a2 = 0;
  *a3 = -1;
  result = sub_29AB24400(a1, v5);
  v7 = v4 - 1;
  if (v4 == 1)
  {
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  else if (v4 == 2)
  {
    v8 = *(a1 + 472);
    if (v5 == a1 + 200)
    {
      memcpy((a1 + 200), *(v8 + 8), 0x108uLL);
    }

    *(a1 + 464) = a1 + 200;
    result = (*(a1 + 96))(v8);
    *(a1 + 472) = a1 + 464;
  }

  else
  {
    v9 = *(a1 + 196);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 8 * v9;
      do
      {
        v13 = *(a1 + 472);
        v14 = *(v13 + v10);
        if (v14 != v5)
        {
          *(v13 + 8 * v11++) = v14;
        }

        v10 += 8;
      }

      while (v12 != v10);
    }
  }

  *(a1 + 196) = v7;
  return result;
}

uint64_t sub_29AB2474C(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  if (*a1 == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v6 = *(a1 + 56);
    v7 = a1;
    v8 = 21;
    goto LABEL_11;
  }

  if (!*a1)
  {
    pthread_mutex_unlock((a1 + 504));
    v6 = *(a1 + 56);
    v7 = a1;
    v8 = 8;
LABEL_11:

    return v6(v7, v8);
  }

  v11 = *(*(a1 + 472) + 8 * a2);
  v13 = (v11 + 80);
  v12 = *(v11 + 80);
  if (!v12)
  {
    v14 = sub_29AB1DBB8(a1, (v11 + 8), "screenWindowCenter", 24, 0, 0, v13);
    if (!v14)
    {
      goto LABEL_19;
    }

    v10 = v14;
    pthread_mutex_unlock((a1 + 504));
    return v10;
  }

  if (*(v12 + 20) != 24)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'");
  }

LABEL_19:
  if (a3)
  {
    v15 = *v13;
    **(*v13 + 24) = *a3;
    *(*(v15 + 24) + 4) = a3[1];
    pthread_mutex_unlock((a1 + 504));
    return 0;
  }

  pthread_mutex_unlock((a1 + 504));
  v16 = *(a1 + 64);

  return v16(a1, 3, "Missing value for data window assignment");
}

uint64_t sub_29AB2492C(uint64_t a1, unsigned int *a2, char *__s, unsigned int a4)
{
  if (__s)
  {
    v8 = strlen(__s);
  }

  else
  {
    v8 = 0;
  }

  return sub_29AB23DEC(a1, a2, __s, v8, a4, 0, 1, 1);
}

uint64_t sub_29AB249A4(uint64_t a1, uint64_t a2)
{
  result = (*(a1 + 48))(a1, *a2, *(a2 + 16) + 1, a1 + 176);
  if (!result)
  {
    result = (*(a1 + 48))(a1, *(a2 + 8), *(a2 + 17) + 1, a1 + 176);
    if (!result)
    {
      switch(*(a2 + 20))
      {
        case 1:
          v5 = a1;
          v6 = a2;

          return sub_29AB24F54(v5, v6);
        case 2:
          v5 = a1;
          v6 = a2;

          return sub_29AB24F54(v5, v6);
        case 3:

          return sub_29AB24FC0(a1, a2);
        case 4:

          return sub_29AB25180(a1, a2);
        case 5:
          v12 = 1;
          result = (*(a1 + 48))(a1, &v12, 4, a1 + 176);
          goto LABEL_62;
        case 6:

          return sub_29AB251EC(a1, a2);
        case 7:
          v13 = 1;
          result = (*(a1 + 48))(a1, &v13, 4, a1 + 176);
          goto LABEL_62;
        case 8:

          return sub_29AB25254(a1, a2);
        case 9:

          return sub_29AB252BC(a1, a2);
        case 0xA:

          return sub_29AB253F0(a1, a2);
        case 0xB:

          return sub_29AB25454(a1, a2);
        case 0xC:
          v14 = 1;
          result = (*(a1 + 48))(a1, &v14, 4, a1 + 176);
LABEL_62:
          if (!result)
          {
            return (*(a1 + 48))(a1, a2 + 24, 1, a1 + 176);
          }

          return result;
        case 0xD:

          return sub_29AB254C8(a1, a2);
        case 0xE:

          return sub_29AB2553C(a1, a2);
        case 0xF:

          return sub_29AB255C0(a1, a2);
        case 0x10:

          return sub_29AB25634(a1, a2);
        case 0x11:

          return sub_29AB256B8(a1, a2);
        case 0x12:
          v9 = a1;
          v10 = a2;

          return sub_29AB257AC(v9, v10);
        case 0x13:

          return sub_29AB25818(a1, a2);
        case 0x14:

          return sub_29AB2589C(a1, a2);
        case 0x15:

          return sub_29AB259D8(a1, a2);
        case 0x16:
          v9 = a1;
          v10 = a2;

          return sub_29AB257AC(v9, v10);
        case 0x17:
          v9 = a1;
          v10 = a2;

          return sub_29AB257AC(v9, v10);
        case 0x18:
          v9 = a1;
          v10 = a2;

          return sub_29AB257AC(v9, v10);
        case 0x19:
          v5 = a1;
          v6 = a2;

          return sub_29AB24F54(v5, v6);
        case 0x1A:
          v7 = a1;
          v8 = a2;

          goto LABEL_27;
        case 0x1B:
          v7 = a1;
          v8 = a2;

LABEL_27:
          result = sub_29AB25A94(v7, v8);
          break;
        case 0x1C:

          result = sub_29AB25B04(a1, a2);
          break;
        case 0x1D:

          result = sub_29AB25B78(a1, a2);
          break;
        default:
          v11 = *(a1 + 56);

          result = v11(a1, 14);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_29AB24F54(uint64_t a1, uint64_t a2)
{
  v4 = **(a2 + 24);
  v5 = 16;
  result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v4, 16, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB24FC0(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v4 = *(a2 + 24);
  v5 = *v4;
  if (v5 <= 0)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v6 = 0;
  v7 = *(v4 + 1);
  do
  {
    v8 = *v7;
    v7 += 8;
    v6 += v8 + 17;
    --v5;
  }

  while (v5);
  v9 = v6 + 1;
  if (!((v6 + 1) >> 31))
  {
LABEL_8:
    v20[0] = v9;
    result = (*(a1 + 48))(a1, v20, 4, a1 + 176);
    if (result)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = (*(a1 + 56))(a1, 3);
  if (result)
  {
    return result;
  }

LABEL_10:
  v11 = 0;
  v12 = -1;
  while (1)
  {
    v13 = *(a2 + 24);
    if (++v12 >= *v13)
    {
      break;
    }

    v14 = (*(v13 + 1) + v11);
    v19 = v14[4];
    v20[0] = v14[6];
    v20[1] = v14[7];
    v15 = *(v14 + 20);
    v17 = 0;
    v16 = 0;
    result = (*(a1 + 48))(a1, *(v14 + 1), *v14 + 1, a1 + 176);
    if (!result)
    {
      result = (*(a1 + 48))(a1, &v19, 4, a1 + 176);
      if (!result)
      {
        result = (*(a1 + 48))(a1, &v15, 4, a1 + 176);
        if (!result)
        {
          v11 += 32;
          result = (*(a1 + 48))(a1, v20, 8, a1 + 176);
          if (!result)
          {
            continue;
          }
        }
      }
    }

    return result;
  }

  v18 = 0;
  return (*(a1 + 48))(a1, &v18, 1, a1 + 176);
}

uint64_t sub_29AB25180(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  v7 = 32;
  result = (*(a1 + 48))(a1, &v7, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, v6, 32, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB251EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = 8;
  result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v4, 8, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25254(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = 4;
  result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v4, 4, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB252BC(uint64_t a1, uint64_t a2)
{
  v4 = **(a2 + 24);
  if (((v4 >> 29) & 0x1FFFFFFFFLL) != 0)
  {
    v5 = (*(a1 + 56))(a1, 3);
  }

  else
  {
    v13 = 4 * v4;
    v5 = (*(a1 + 48))(a1, &v13, 4, a1 + 176);
  }

  v6 = v5;
  if (!v5)
  {
    v7 = *(a2 + 24);
    v8 = *v7;
    if (v8 < 1)
    {
      return 0;
    }

    else
    {
      if (v7[1] >= 1)
      {
        return (*(a1 + 48))(a1, *(v7 + 1), 4 * v8, a1 + 176);
      }

      v10 = (*(a1 + 88))(4 * v8);
      if (v10)
      {
        v11 = v10;
        memcpy(v10, *(*(a2 + 24) + 8), 4 * **(a2 + 24));
        v6 = (*(a1 + 48))(a1, v11, 4 * **(a2 + 24), a1 + 176);
        (*(a1 + 96))(v11);
        return v6;
      }

      return (*(a1 + 56))(a1, 1);
    }
  }

  return v6;
}

uint64_t sub_29AB253F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = 4;
  result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v4, 4, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 + 12);
  *v6 = *v3;
  *&v6[12] = v4;
  v7 = 28;
  result = (*(a1 + 48))(a1, &v7, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, v6, 28, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB254C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  v8 = v4;
  v9 = 36;
  result = (*(a1 + 48))(a1, &v9, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, v7, 36, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB2553C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v8[0] = *v3;
  v5 = *(v3 + 32);
  v4 = *(v3 + 48);
  v6 = *(v3 + 16);
  v9 = *(v3 + 64);
  v8[2] = v5;
  v8[3] = v4;
  v8[1] = v6;
  v10 = 72;
  result = (*(a1 + 48))(a1, &v10, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, v8, 72, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB255C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = v3[3];
  v6 = *v3;
  v5 = v3[1];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[0] = v6;
  v8[1] = v5;
  v9 = 64;
  result = (*(a1 + 48))(a1, &v9, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, v8, 64, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25634(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = v3[3];
  v6 = *v3;
  v5 = v3[1];
  v11[2] = v3[2];
  v11[3] = v4;
  v11[0] = v6;
  v11[1] = v5;
  v7 = v3[7];
  v9 = v3[4];
  v8 = v3[5];
  v11[6] = v3[6];
  v11[7] = v7;
  v11[4] = v9;
  v11[5] = v8;
  v12 = 128;
  result = (*(a1 + 48))(a1, &v12, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, v11, 128, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB256B8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 24);
  v5 = *v4;
  LODWORD(v4) = v4[1];
  v9[0] = v5;
  v9[1] = v4;
  v6 = (4 * v5 * v4);
  if (v6 < 0x7FFFFFF8)
  {
    v8 = v6 + 8;
    result = (*(a1 + 48))(a1, &v8, 4, a1 + 176);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = (*(a1 + 56))(a1, 3);
    if (result)
    {
      return result;
    }
  }

  result = (*(a1 + 48))(a1, v9, 8, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, *(*(a2 + 24) + 16), v6, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB257AC(uint64_t a1, uint64_t a2)
{
  v4 = **(a2 + 24);
  v5 = 8;
  result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v4, 8, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25818(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if ((*v3 & 0x80000000) == 0)
  {
    v5 = *v3;
    result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
    if (result)
    {
      return result;
    }

    return (*(a1 + 48))(a1, *(v3 + 1), *v3, a1 + 176);
  }

  result = (*(a1 + 56))(a1, 3);
  if (!result)
  {
    return (*(a1 + 48))(a1, *(v3 + 1), *v3, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB2589C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *v4;
  if (v5 <= 0)
  {
    LODWORD(v6) = 0;
    goto LABEL_8;
  }

  v6 = 0;
  v7 = *(v4 + 1);
  do
  {
    v8 = *v7;
    v7 += 4;
    v6 += v8 + 4;
    --v5;
  }

  while (v5);
  if (!(v6 >> 31))
  {
LABEL_8:
    v14 = v6;
    result = (*(a1 + 48))(a1, &v14, 4, a1 + 176);
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = (*(a1 + 56))(a1, 3);
  if (result)
  {
    return result;
  }

LABEL_9:
  v10 = 0;
  v11 = -1;
  while (1)
  {
    v12 = *(a2 + 24);
    if (++v11 >= *v12)
    {
      break;
    }

    v13 = *(v12 + 1);
    if ((*(v13 + v10) & 0x80000000) != 0)
    {
      result = (*(a1 + 56))(a1, 3);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v15 = *(v13 + v10);
      result = (*(a1 + 48))(a1, &v15, 4, a1 + 176);
      if (result)
      {
        return result;
      }
    }

    result = (*(a1 + 48))(a1, *(v13 + v10 + 8), *(v13 + v10), a1 + 176);
    v10 += 16;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_29AB259D8(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v6[0] = **(a2 + 24);
  v5 = 9;
  result = (*(a1 + 48))(a1, &v5, 4, a1 + 176);
  if (!result)
  {
    result = (*(a1 + 48))(a1, v6, 8, a1 + 176);
    if (!result)
    {
      return (*(a1 + 48))(a1, *(a2 + 24) + 8, 1, a1 + 176);
    }
  }

  return result;
}

uint64_t sub_29AB25A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 + 2);
  v6 = *v3;
  v7 = v4;
  v8 = 12;
  result = (*(a1 + 48))(a1, &v8, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v6, 12, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 + 2);
  v6 = *v3;
  v7 = v4;
  v8 = 24;
  result = (*(a1 + 48))(a1, &v8, 4, a1 + 176);
  if (!result)
  {
    return (*(a1 + 48))(a1, &v6, 24, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v18 = 0;
  if (!v3)
  {
    v7 = *(a1 + 64);
    v8 = "Invalid reference to opaque data object to initialize";
LABEL_6:
    result = v7(a1, 3, v8);
    goto LABEL_7;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *v3;
    if ((*v3 & 0x80000000) != 0)
    {
      return (*(a1 + 56))(a1, 3);
    }

    goto LABEL_9;
  }

  v10 = *(v3 + 40);
  if (!v10)
  {
    v7 = *(a1 + 64);
    v8 = "No pack provider specified for opaque data";
    goto LABEL_6;
  }

  v11 = v10(a1, *(v3 + 24), *(v3 + 4), &v18, 0);
  if (v11)
  {
    result = (*(a1 + 72))(a1, v11, "Pack function failed finding pack buffer size, unpacked size %d");
LABEL_7:
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v18 > 0)
  {
    v12 = (*(a1 + 88))();
    if (v12)
    {
      v4 = v12;
      *(v3 + 8) = v18;
      v13 = (*(v3 + 40))(a1, *(v3 + 24), *(v3 + 4), &v18, v12);
      if (!v13)
      {
        v5 = v18;
        *v3 = v18;
        *(v3 + 16) = v4;
        v17 = *(v3 + 48);
        if (v17)
        {
          v17(a1, *(v3 + 24), *(v3 + 4));
        }

        *(v3 + 24) = 0;
        *(v3 + 4) = 0;
        if ((v5 & 0x80000000) != 0)
        {
          return (*(a1 + 56))(a1, 3);
        }

        goto LABEL_9;
      }

      v14 = v13;
      (*(a1 + 96))(v4);
      v16 = *(v3 + 4);
      v18 = *(v3 + 8);
      v15 = v18;
      *(v3 + 8) = 0;
      result = (*(a1 + 72))(a1, v14, "Pack function failed to pack data, unpacked size %d, packed buffer size %d", v16, v15);
    }

    else
    {
      result = (*(a1 + 56))(a1, 1);
    }

    goto LABEL_7;
  }

LABEL_8:
  v5 = 0;
  v4 = 0;
LABEL_9:
  v19 = v5;
  result = (*(a1 + 48))(a1, &v19, 4, a1 + 176);
  if (v5)
  {
    v9 = result == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return (*(a1 + 48))(a1, v4, v5, a1 + 176);
  }

  return result;
}

uint64_t sub_29AB25D58(int a1, int a2, int a3, int a4, uint64_t a5)
{
  if (a3 == a4 && !*(a5 + 242))
  {
    return *(a5 + 232);
  }

  v6 = *(*(a5 + 32) + 24);
  v7 = *v6;
  if (v7 < 1)
  {
    return 0;
  }

  v5 = 0;
  v8 = *(v6 + 1);
  v9 = a2;
  v10 = 1 - (a3 + a1);
  if (a3 + a1 >= 1)
  {
    v10 = a3 + a1 - 1;
  }

  v11 = (v8 + 28);
  do
  {
    if (*(v11 - 3) == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = v9 << v12;
    v14 = *(v11 - 1);
    if (v14 >= 2)
    {
      v13 /= v14;
    }

    v15 = *v11;
    v16 = a3;
    if (*v11 >= 2)
    {
      v17 = a1 % v15;
      if (a3 == 1)
      {
        v16 = v17 == 0;
      }

      else
      {
        v16 = 0;
        if (v17)
        {
          v18 = v15 - v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 + a1;
        v20 = a3 + a1 - 1 + v10 / v15 * v15 - v10;
        v21 = __OFSUB__(v20, v19);
        v22 = v20 - v19;
        if (v22 < 0 == v21)
        {
          v16 = v22 / v15 + 1;
        }
      }
    }

    v5 += v13 * v16;
    v11 += 8;
    --v7;
  }

  while (v7);
  return v5;
}

uint64_t sub_29AB25E4C(void *a1, _WORD *a2, char *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*(a6 + 32) + 24);
  v10 = *v9;
  if (v10 < 6)
  {
    if (v10 < 1)
    {
LABEL_29:
      *a1 = a3;
      *a2 = v10;
      return 0;
    }

LABEL_6:
    v14 = 0;
    v16 = a4[2];
    v15 = a4[3];
    v17 = 1 - (v16 + v15);
    if (v16 + v15 >= 1)
    {
      v17 = v16 + v15 - 1;
    }

    v18 = a4[4];
    v19 = *(v9 + 1) + 16;
    do
    {
      *&a3[v14] = *(v19 - 8);
      v20 = *(v19 + 12);
      v21 = v15;
      if (v20 >= 2)
      {
        v22 = v16 % v20;
        if (v15 == 1)
        {
          v21 = v22 == 0;
        }

        else
        {
          v21 = 0;
          if (v22)
          {
            v23 = v20 - v22;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23 + v16;
          v25 = v16 + v15 - 1 + v17 / v20 * v20 - v17;
          v26 = __OFSUB__(v25, v24);
          v27 = v25 - v24;
          if (v27 < 0 == v26)
          {
            v21 = v27 / v20 + 1;
          }
        }
      }

      v28 = &a3[v14];
      *&a3[v14 + 8] = v21;
      v29 = *(v19 + 8);
      if (v29 >= 2)
      {
        v30 = 1;
      }

      else
      {
        v30 = v18;
      }

      if (v29 >= 2 && v18 != 1)
      {
        v30 = v18 / v29;
      }

      *(v28 + 3) = v30;
      *(v28 + 4) = v29;
      *(v28 + 5) = v20;
      v28[24] = *(v19 + 4);
      v33 = *v19;
      v19 += 32;
      v32 = v33;
      if (v33 == 1)
      {
        v34 = 2;
      }

      else
      {
        v34 = 4;
      }

      v28[25] = v34;
      *(v28 + 13) = v32;
      *(v28 + 14) = v34;
      *(v28 + 15) = v32;
      v14 += 48;
    }

    while (48 * v10 != v14);
    goto LABEL_29;
  }

  v13 = (*(a5 + 88))(48 * v10);
  if (v13)
  {
    a3 = v13;
    bzero(v13, 48 * v10);
    goto LABEL_6;
  }

  v36 = *(a5 + 56);

  return v36(a5, 1);
}

uint64_t sub_29AB26018(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 + 32) + 24);
  v6 = *v5;
  if (v6 != a2)
  {
    return (*(a4 + 72))(a4, 3, "Mismatch in channel counts: stored %d, incoming %d", a2, v6);
  }

  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(v5 + 1);
    v10 = a3[2];
    v9 = a3[3];
    v11 = 1 - (v10 + v9);
    if (v10 + v9 >= 1)
    {
      v11 = v10 + v9 - 1;
    }

    v12 = a3[4];
    v13 = 48 * v6;
    v14 = (v8 + 16);
    do
    {
      *(a1 + v7) = *(v14 - 1);
      v15 = v14[3];
      v16 = v9;
      if (v15 >= 2)
      {
        v17 = v10 % v15;
        if (v9 == 1)
        {
          v16 = v17 == 0;
        }

        else
        {
          v16 = 0;
          if (v17)
          {
            v18 = v15 - v17;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18 + v10;
          v20 = v10 + v9 - 1 + v11 / v15 * v15 - v11;
          v21 = __OFSUB__(v20, v19);
          v22 = v20 - v19;
          if (v22 < 0 == v21)
          {
            v16 = v22 / v15 + 1;
          }
        }
      }

      v23 = a1 + v7;
      *(a1 + v7 + 8) = v16;
      v24 = v14[2];
      if (v24 >= 2)
      {
        v25 = 1;
      }

      else
      {
        v25 = v12;
      }

      if (v24 >= 2 && v12 != 1)
      {
        v25 = v12 / v24;
      }

      *(v23 + 12) = v25;
      *(v23 + 16) = v24;
      *(v23 + 20) = v15;
      *(v23 + 24) = *(v14 + 4);
      v28 = *v14;
      v14 += 8;
      v27 = v28;
      if (v28 == 1)
      {
        v29 = 2;
      }

      else
      {
        v29 = 4;
      }

      *(v23 + 25) = v29;
      *(v23 + 26) = v27;
      v7 += 48;
    }

    while (v13 != v7);
  }

  return 0;
}

uint64_t sub_29AB26164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  v3 = *(a1 + 12);
  if ((v3 & 0x80000000) != 0 || v3 >= *(v1 + 196))
  {
    if (*v1 == 1)
    {
      pthread_mutex_unlock((v1 + 504));
    }

    return (*(v1 + 72))(v1, 4, "Part index (%d) out of range");
  }

  v4 = *(a1 + 104);
  if ((v4 + 4999) >> 3 >= 0x271)
  {
    v5 = 5 * ((v4 + 4999) / 0x1388);
  }

  else
  {
    v5 = 5;
  }

  v7 = v4 + v5 + 15;
  if (v7 <= 0xFFFFFFFFFFFFFFF6)
  {
    v9 = v7 + 9;
    if ((130 * v4) >> 7 > v9)
    {
      v9 = (130 * v4) >> 7;
    }

    if (130 * v4 >= v4)
    {
      v8 = v9;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  v10 = *(*(v1 + 472) + 8 * v3);
  v11 = sub_29AB26F38(a1, 2, (a1 + 160), (a1 + 176), v8);
  if (v11)
  {
    v12 = *(a1 + 104);
    if ((v12 + 4999) >> 3 >= 0x271)
    {
      v13 = 5 * ((v12 + 4999) / 0x1388);
    }

    else
    {
      v13 = 5;
    }

    v15 = v12 + v13 + 15;
    v16 = v15 + 9;
    if ((130 * v12) >> 7 > v15 + 9)
    {
      v16 = (130 * v12) >> 7;
    }

    if (130 * v12 >= v12)
    {
      v17 = v16;
    }

    else
    {
      v17 = -1;
    }

    if (v15 > 0xFFFFFFFFFFFFFFF6)
    {
      v17 = -1;
    }

    return (*(v1 + 72))(v1, v11, "error allocating buffer %zu", v17);
  }

  v14 = *(v10 + 176);
  if (v14 > 4)
  {
    if (v14 <= 6)
    {
      if (v14 == 5)
      {

        return sub_29AB279B8(a1);
      }

      v18 = a1;
      v19 = 0;
    }

    else
    {
      if (v14 != 7)
      {
        if (v14 == 8)
        {

          return sub_29AB27C94(a1);
        }

        else
        {
          if (v14 != 9)
          {
            return (*(v1 + 72))(v1, 3, "Compression technique 0x%02X invalid");
          }

          return sub_29AB27D2C(a1);
        }
      }

      v18 = a1;
      v19 = 1;
    }

    return sub_29AB2C01C(v18, v19);
  }

  if (v14 > 1)
  {
    if ((v14 - 2) < 2)
    {

      return sub_29AB27208(a1);
    }

    if (v14 == 4)
    {

      return sub_29AB2732C(a1);
    }

    return (*(v1 + 72))(v1, 3, "Compression technique 0x%02X invalid");
  }

  if (v14)
  {
    if (v14 != 1)
    {
      return (*(v1 + 72))(v1, 3, "Compression technique 0x%02X invalid");
    }

    return sub_29AB2711C(a1);
  }

  else
  {
    v20 = *(v1 + 64);

    return v20(v1, 3, "no compression set but still trying to compress");
  }
}

uint64_t sub_29AB26500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 2;
  }

  if (*v1 == 1)
  {
    pthread_mutex_lock((v1 + 504));
  }

  v3 = *(a1 + 12);
  if ((v3 & 0x80000000) == 0 && v3 < *(v1 + 196))
  {
    if (*(v1 + 184) == v3)
    {
      v4 = *(*(v1 + 472) + 8 * v3);
      v10 = -1;
      if ((*(v4 + 4) | 2) == 3)
      {
        v5 = sub_29AB3050C(v1, v4, *(a1 + 28), *(a1 + 32), *(a1 + 44), *(a1 + 45), &v10);
        if (v5)
        {
          goto LABEL_24;
        }

        v6 = v10;
      }

      else
      {
        v9 = *(v4 + 240);
        v6 = *(a1 + 32) - *(v4 + 148);
        if (v9 >= 2)
        {
          v6 /= v9;
        }
      }

      if (v6 < 0 || v6 >= *(v4 + 244))
      {
        v8 = (*(v1 + 72))(v1, 3, "Chunk index for scanline %d in chunk %d outside chunk count %d");
      }

      else
      {
        if (*(v4 + 180) == 2 || *(v1 + 188) == v6 - 1)
        {
          v5 = 0;
          goto LABEL_24;
        }

        v8 = (*(v1 + 72))(v1, 25, "Attempt to write chunk %d, but last output chunk is %d");
      }
    }

    else
    {
      v8 = (*(v1 + 56))(v1, 24);
    }

    v5 = v8;
LABEL_24:
    if (*v1 == 1)
    {
      pthread_mutex_unlock((v1 + 504));
    }

    return v5;
  }

  if (*v1 == 1)
  {
    pthread_mutex_unlock((v1 + 504));
    v3 = *(a1 + 12);
  }

  return (*(v1 + 72))(v1, 4, "Part index (%d) out of range", v3);
}

uint64_t sub_29AB266B8(uint64_t a1)
{
  if (!a1)
  {
    return 3;
  }

  v1 = *(a1 + 46);
  v2 = 3;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v29 = *(a1 + 136);
      if (!v29)
      {
        return v2;
      }

      v30 = *(a1 + 144);
      if (!v30)
      {
        return v2;
      }

      v3 = *(a1 + 16);
      if (!v3)
      {
        return 2;
      }

      v31 = *(a1 + 12);
      v32 = *(a1 + 32);
      v33 = *(a1 + 160);
      v34 = *(a1 + 168);
      v35 = *(a1 + 104);
      pthread_mutex_lock((v3 + 504));
      if ((v31 & 0x80000000) != 0 || *(v3 + 196) <= v31)
      {
        pthread_mutex_unlock((v3 + 504));
        return (*(v3 + 72))(v3, 4, "Part index (%d) out of range", v31);
      }

      v36 = *(*(v3 + 472) + 8 * v31);
      if (!*(v36 + 4))
      {
        pthread_mutex_unlock((v3 + 504));
        v12 = *(v3 + 56);
        v13 = v3;
        v14 = 28;
        goto LABEL_41;
      }

      v37 = sub_29AB307A0(v3, v31, v36, v32, v33, v34, v35, v29, v30);
    }

    else
    {
      if (v1 != 3)
      {
        return v2;
      }

      v15 = *(a1 + 136);
      if (!v15)
      {
        return v2;
      }

      v16 = *(a1 + 144);
      if (!v16)
      {
        return v2;
      }

      v3 = *(a1 + 16);
      if (!v3)
      {
        return 2;
      }

      v4 = *(a1 + 12);
      v17 = *(a1 + 32);
      v39 = *(a1 + 28);
      v18 = *(a1 + 44);
      v19 = *(a1 + 45);
      v20 = *(a1 + 160);
      v21 = *(a1 + 168);
      v22 = *(a1 + 104);
      pthread_mutex_lock((v3 + 504));
      if ((v4 & 0x80000000) != 0 || *(v3 + 196) <= v4)
      {
        goto LABEL_25;
      }

      v23 = *(*(v3 + 472) + 8 * v4);
      if (*(v23 + 4) == 1)
      {
        pthread_mutex_unlock((v3 + 504));
        v12 = *(v3 + 56);
        v13 = v3;
        v14 = 29;
        goto LABEL_41;
      }

      v37 = sub_29AB30CA8(v3, v4, v23, v39, v17, v18, v19, v20, v21, v22, v15, v16);
    }

    goto LABEL_39;
  }

  if (!*(a1 + 46))
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      return 2;
    }

    v4 = *(a1 + 12);
    v24 = *(a1 + 32);
    v25 = *(a1 + 160);
    v26 = *(a1 + 168);
    pthread_mutex_lock((v3 + 504));
    if ((v4 & 0x80000000) != 0 || *(v3 + 196) <= v4)
    {
      goto LABEL_25;
    }

    v27 = *(*(v3 + 472) + 8 * v4);
    if (*(v27 + 4) == 2)
    {
      pthread_mutex_unlock((v3 + 504));
      v12 = *(v3 + 56);
      v13 = v3;
      v14 = 26;
      goto LABEL_41;
    }

    v37 = sub_29AB307A0(v3, v4, v27, v24, v25, v26, 0, 0, 0);
LABEL_39:
    v38 = v37;
    pthread_mutex_unlock((v3 + 504));
    return v38;
  }

  if (v1 != 1)
  {
    return v2;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 2;
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 44);
  v8 = *(a1 + 45);
  v9 = *(a1 + 160);
  v10 = *(a1 + 168);
  pthread_mutex_lock((v3 + 504));
  if ((v4 & 0x80000000) != 0 || *(v3 + 196) <= v4)
  {
LABEL_25:
    pthread_mutex_unlock((v3 + 504));
    return (*(v3 + 72))(v3, 4, "Part index (%d) out of range", v4);
  }

  v11 = *(*(v3 + 472) + 8 * v4);
  if (*(v11 + 4) != 3)
  {
    v37 = sub_29AB30CA8(v3, v4, v11, v5, v6, v7, v8, v9, v10, 0, 0, 0);
    goto LABEL_39;
  }

  pthread_mutex_unlock((v3 + 504));
  v12 = *(v3 + 56);
  v13 = v3;
  v14 = 27;
LABEL_41:

  return v12(v13, v14);
}

uint64_t sub_29AB269E4(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a1 + 96);
    v5 = *(a1 + 8);
    while (v5 < 1)
    {
LABEL_116:
      if (++v2 >= v1)
      {
        goto LABEL_120;
      }
    }

    v6 = 0;
    v7 = *(a1 + 32) + v2;
    while (1)
    {
      v8 = *a1 + 48 * v6;
      if (*(v8 + 8))
      {
        v9 = *(v8 + 40);
        v10 = *(v8 + 12);
        v11 = *(v8 + 25);
        v12 = *(v8 + 20);
        if (v12 < 2)
        {
          v13 = (v9 + v2 * *(v8 + 36));
        }

        else
        {
          if (v7 % v12)
          {
            goto LABEL_113;
          }

          if (v9)
          {
            v13 = (v9 + *(v8 + 36) * (v2 / v12));
          }

          else
          {
            v13 = 0;
          }
        }

        v14 = *(v8 + 32);
        v15 = *(v8 + 26);
        if (*(v8 + 26))
        {
          if (v15 == 2)
          {
            v24 = *(v8 + 30);
            if (v24 == 2)
            {
              if (v10 >= 1)
              {
                v42 = *(v8 + 12);
                v43 = v4;
                do
                {
                  *v43++ = *v13;
                  v13 = (v13 + v14);
                  --v42;
                }

                while (v42);
              }
            }

            else if (v24 == 1)
            {
              if (v10 >= 1)
              {
                v30 = *(v8 + 12);
                v31 = v4;
                do
                {
                  v32 = *v13;
                  v33 = (v32 & 0x7FFF) << 13;
                  v34 = v32 & 0x80000000;
                  v35 = __clz(v33) - 8;
                  v36 = (v34 | 0x38800000 | (v33 << v35)) - (v35 << 23);
                  if (!v33)
                  {
                    v36 = v34;
                  }

                  v37 = v33 | v34;
                  v38 = v37 | 0x7F800000;
                  v39 = v37 + 939524096;
                  if (v33 >> 23 > 0x1E)
                  {
                    v39 = v38;
                  }

                  if (v33 < 0x800000)
                  {
                    v39 = v36;
                  }

                  *v31++ = v39;
                  v13 = (v13 + v14);
                  --v30;
                }

                while (v30);
              }
            }

            else
            {
              if (*(v8 + 30))
              {
                return 3;
              }

              v25 = *(v8 + 12);
              v26 = v4;
              if (v10 >= 1)
              {
                do
                {
                  *v26++ = *v13;
                  v13 = (v13 + v14);
                  --v25;
                }

                while (v25);
              }
            }
          }

          else
          {
            if (v15 != 1)
            {
              return 3;
            }

            v16 = *(v8 + 30);
            if (v16 == 2)
            {
              v52 = *(v8 + 12);
              v53 = v4;
              if (v10 >= 1)
              {
                do
                {
                  v54 = *v13 & 0x7FFFFFFF;
                  v55 = HIWORD(*v13);
                  v56 = v55 & 0x8000;
                  if (v54 <= 0x387FFFFF)
                  {
                    if (v54 >= 0x33000001)
                    {
                      v59 = 126 - (v54 >> 23);
                      v56 = *v13 & 0x7FFFFF | 0x800000;
                      v60 = v56 << ((v54 >> 23) - 94);
                      v61 = v56 >> v59;
                      LOWORD(v56) = v61 | v55 & 0x8000;
                      if (v60 > 0x80000000 || (v60 == 0x80000000 ? (v62 = (v61 & 1) == 0) : (v62 = 1), !v62))
                      {
                        LOWORD(v56) = v56 + 1;
                      }
                    }
                  }

                  else
                  {
                    v57 = v56 | ((v54 + 134221823 + ((v54 >> 13) & 1)) >> 13);
                    if (v54 > 0x477FEFFF)
                    {
                      LOWORD(v57) = v56 | 0x7C00;
                    }

                    v58 = (v54 >> 13) & 0x3FF | (((v54 >> 13) & 0x3FF) == 0) | v56 | 0x7C00;
                    if (v54 == 2139095040)
                    {
                      LOWORD(v58) = v56 | 0x7C00;
                    }

                    if (v54 > 0x7F7FFFFF)
                    {
                      LOWORD(v56) = v58;
                    }

                    else
                    {
                      LOWORD(v56) = v57;
                    }
                  }

                  *v53++ = v56;
                  v13 = (v13 + v14);
                  --v52;
                }

                while (v52);
              }
            }

            else if (v16 == 1)
            {
              if (v10 >= 1)
              {
                v40 = *(v8 + 12);
                v41 = v4;
                do
                {
                  *v41++ = *v13;
                  v13 = (v13 + v14);
                  --v40;
                }

                while (v40);
              }
            }

            else
            {
              if (*(v8 + 30))
              {
                return 3;
              }

              v17 = *(v8 + 12);
              v18 = v4;
              if (v10 >= 1)
              {
                do
                {
                  v19 = *v13;
                  if (*v13 <= 0xFFE0u)
                  {
                    v20 = v19;
                    if (COERCE_UNSIGNED_INT(v19) <= 0x387FFFFF)
                    {
                      if (LODWORD(v20) >= 0x33000001)
                      {
                        v21 = LODWORD(v20) & 0x7FFFFF | 0x800000;
                        v22 = v21 << ((LODWORD(v20) >> 23) - 94);
                        LODWORD(v20) = v21 >> (126 - (LODWORD(v20) >> 23));
                        if (v22 > 0x80000000 || (v22 == 0x80000000 ? (v23 = (LOBYTE(v20) & 1) == 0) : (v23 = 1), !v23))
                        {
                          ++LOWORD(v20);
                        }
                      }

                      else
                      {
                        LOWORD(v20) = 0;
                      }

                      goto LABEL_32;
                    }

                    if (LODWORD(v20) > 0x7F7FFFFF)
                    {
                      if (v20 != INFINITY)
                      {
                        LOWORD(v20) = (LODWORD(v20) >> 13) & 0x3FF | (((LODWORD(v20) >> 13) & 0x3FF) == 0) | 0x7C00;
                        goto LABEL_32;
                      }
                    }

                    else if (LODWORD(v20) <= 0x477FEFFF)
                    {
                      LODWORD(v20) = (LODWORD(v20) + 134221823 + ((LODWORD(v20) >> 13) & 1)) >> 13;
                      goto LABEL_32;
                    }
                  }

                  LOWORD(v20) = 31744;
LABEL_32:
                  *v18++ = LOWORD(v20);
                  v13 = (v13 + v14);
                  --v17;
                }

                while (v17);
              }
            }
          }
        }

        else
        {
          v27 = *(v8 + 30);
          if (v27 == 2)
          {
            v63 = *(v8 + 12);
            v64 = v4;
            if (v10 >= 1)
            {
              do
              {
                v65 = *v13;
                if (*v13 >= 0.0)
                {
                  if (fabsf(v65) != INFINITY && v65 <= 4295000000.0)
                  {
                    v66 = v65;
                  }

                  else
                  {
                    v66 = -1;
                  }
                }

                else
                {
                  v66 = 0;
                }

                *v64++ = v66;
                v13 = (v13 + v14);
                --v63;
              }

              while (v63);
            }
          }

          else if (v27 == 1)
          {
            if (v10 >= 1)
            {
              v44 = *(v8 + 12);
              v45 = v4;
              do
              {
                v46 = *v13;
                if (v46 < 0)
                {
                  v48 = 0;
                }

                else
                {
                  v47 = *v13;
                  if ((~v47 & 0x7C00) != 0)
                  {
                    v49 = v47 << 13;
                    if (v47 < 0x400)
                    {
                      if (*v13)
                      {
                        v51 = __clz(v49) - 8;
                        v50 = ((v49 << v51) | 0x38800000) - (v51 << 23);
                      }

                      else
                      {
                        *&v50 = 0.0;
                      }
                    }

                    else if (v47 >> 10 <= 0x1E)
                    {
                      v50 = v49 + 939524096;
                    }

                    else
                    {
                      v50 = v49 | 0x7F800000;
                    }

                    v48 = *&v50;
                  }

                  else if ((v46 & 0x3FF) != 0)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v48 = -1;
                  }
                }

                *v45++ = v48;
                v13 = (v13 + v14);
                --v44;
              }

              while (v44);
            }
          }

          else
          {
            if (*(v8 + 30))
            {
              return 3;
            }

            v28 = *(v8 + 12);
            v29 = v4;
            if (v10 >= 1)
            {
              do
              {
                *v29++ = *v13;
                v13 = (v13 + v14);
                --v28;
              }

              while (v28);
            }
          }
        }

        v68 = v11 * v10;
        v4 = (v4 + v68);
        v3 += v68;
        v5 = *(a1 + 8);
      }

LABEL_113:
      if (++v6 >= v5)
      {
        v1 = *(a1 + 36);
        goto LABEL_116;
      }
    }
  }

  v3 = 0;
LABEL_120:
  v69 = 0;
  *(a1 + 104) = v3;
  return v69;
}

uint64_t sub_29AB26F38(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t a5)
{
  if (a5)
  {
    if (*a3 && *a4 >= a5)
    {
      return 0;
    }

    sub_29AB27DC4(a1, a2, a3, a4);
    v10 = *(a1 + 216);
    if (v10)
    {
      v11 = v10(a2, a5);
      goto LABEL_6;
    }

    v16 = *(a1 + 16);
    if (!v16)
    {
      return 2;
    }

    v17 = *(a1 + 12);
    if ((v17 & 0x80000000) == 0 && v17 < *(v16 + 196))
    {
      v11 = (*(v16 + 88))(a5);
LABEL_6:
      v12 = v11;
      if (v11)
      {
        result = 0;
        *a3 = v12;
        *a4 = a5;
        return result;
      }

      v18 = *(a1 + 16);
      if (v18)
      {
        v19 = *(a1 + 12);
        if ((v19 & 0x80000000) == 0 && v19 < *(v18 + 196))
        {
          return (*(v18 + 72))(v18, 1, "Unable to allocate %llu bytes");
        }

        if (*v18 == 1)
        {
          pthread_mutex_unlock((v18 + 504));
        }

        return (*(v18 + 72))(v18, 4, "Part index (%d) out of range");
      }

      return 2;
    }

    if (*v16 == 1)
    {
      pthread_mutex_unlock((v16 + 504));
    }

    return (*(v16 + 72))(v16, 4, "Part index (%d) out of range");
  }

  else
  {
    v14 = *(a1 + 16);
    if (!v14)
    {
      return 2;
    }

    v15 = *(a1 + 12);
    if (v15 < 0 || v15 >= *(v14 + 196))
    {
      if (*v14 == 1)
      {
        pthread_mutex_unlock((v14 + 504));
      }

      return (*(v14 + 72))(v14, 4, "Part index (%d) out of range");
    }

    else
    {
      return (*(v14 + 72))(v14, 3, "Attempt to allocate 0 byte buffer for transcode buffer %d");
    }
  }
}

uint64_t sub_29AB2711C(uint64_t a1)
{
  v2 = *(a1 + 104);
  result = sub_29AB26F38(a1, 3, (a1 + 184), (a1 + 192), v2);
  if (!result)
  {
    if (v2 >= 1)
    {
      v4 = *(a1 + 184);
      v5 = *(a1 + 96);
      v6 = &v5[v2];
      v7 = &v4[(v2 + 1) >> 1];
      v8 = v4;
      v9 = v5;
      do
      {
        v10 = *v9++;
        *v8++ = v10;
        if (v9 < v6)
        {
          v9 = v5 + 2;
          *v7++ = v5[1];
        }

        v5 = v9;
      }

      while (v9 < v6);
      if (v2 != 1)
      {
        v11 = &v4[v2];
        v14 = *v4;
        v12 = v4 + 1;
        v13 = v14;
        do
        {
          v15 = *v12;
          *v12 = (*v12 - v13) ^ 0x80;
          ++v12;
          v13 = v15;
        }

        while (v12 < v11);
      }
    }

    v16 = sub_29AB27E8C(*(a1 + 160), *(a1 + 176), *(a1 + 184), v2);
    if (v16 >= v2)
    {
      memcpy(*(a1 + 160), *(a1 + 96), v2);
      v16 = v2;
    }

    result = 0;
    *(a1 + 168) = v16;
  }

  return result;
}

uint64_t sub_29AB27208(uint64_t a1)
{
  v2 = sub_29AB26F38(a1, 3, (a1 + 184), (a1 + 192), *(a1 + 104));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 16);
    if (v4)
    {
      (*(v4 + 72))(v4, v3, "Unable to allocate scratch buffer for deflate of %llu bytes");
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v3 = sub_29AB27FEC(*(a1 + 16), *(a1 + 12), &v10);
    if (!v3)
    {
      sub_29AB280E4(*(a1 + 184), *(a1 + 96), *(a1 + 104));
      if (sub_29AB28158(*(a1 + 16), v10, *(a1 + 184), *(a1 + 104), *(a1 + 160), *(a1 + 176), &v9))
      {
        v6 = *(a1 + 16);
        v3 = 1;
        if (v6)
        {
          (*(v6 + 72))(v6, 1, "Unable to compress buffer %llu -> %llu @ level %d");
        }
      }

      else
      {
        v7 = v9;
        v8 = *(a1 + 104);
        if (v9 > v8)
        {
          memcpy(*(a1 + 160), *(a1 + 96), v8);
          v7 = *(a1 + 104);
        }

        v3 = 0;
        *(a1 + 168) = v7;
      }
    }
  }

  return v3;
}

uint64_t sub_29AB2732C(uint64_t a1)
{
  v2 = *(a1 + 160);
  v3 = *(a1 + 104);
  result = sub_29AB26F38(a1, 3, (a1 + 184), (a1 + 192), v3);
  if (!result)
  {
    result = sub_29AB26F38(a1, 4, (a1 + 200), (a1 + 208), 0x1E201CuLL);
    if (!result)
    {
      v117 = v2;
      v107 = v3 >> 1;
      __n = v3;
      v106 = *(a1 + 200);
      v5 = v106 + 1835036;
      v6 = *(a1 + 36);
      if (v6 < 1)
      {
        v8 = 0;
        goto LABEL_18;
      }

      v7 = 0;
      v8 = 0;
      v9 = *(a1 + 96);
      v10 = *(a1 + 8);
      while (1)
      {
        if (v10 < 1)
        {
          goto LABEL_15;
        }

        v11 = 0;
        v12 = 0;
        v13 = *(a1 + 32) + v7;
        v14 = *(a1 + 184);
        do
        {
          v15 = *a1 + v11;
          v16 = *(v15 + 25) * *(v15 + 12);
          v8 = v16 * *(v15 + 8);
          if (v8)
          {
            v17 = v14 + v8;
            v18 = *(v15 + 20);
            v19 = v7;
            if (v18 >= 2)
            {
              if (v13 % v18)
              {
                goto LABEL_13;
              }

              v19 = v7 / v18;
            }

            memcpy((v14 + v16 * v19), v9, v16);
            v9 += v16;
            v10 = *(a1 + 8);
          }

          else
          {
            v17 = v14;
          }

LABEL_13:
          ++v12;
          v11 += 48;
          v14 = v17;
        }

        while (v12 < v10);
        v6 = *(a1 + 36);
LABEL_15:
        if (++v7 >= v6)
        {
LABEL_18:
          v20 = v106 + 1843228;
          v118 = v8;
          v110 = a1;
          v21 = *(a1 + 184);
          bzero(v5, 0x2000uLL);
          if (__n >= 2)
          {
            v24 = v107;
            v23 = v117;
            do
            {
              v25 = *v21++;
              v5[v25 >> 3] |= 1 << (v25 & 7);
              --v24;
            }

            while (v24);
            v22 = *v5 & 0xFE;
          }

          else
          {
            LOBYTE(v22) = 0;
            v23 = v117;
          }

          v26 = 0;
          v27 = 0;
          *v5 = v22;
          v28 = 0x1FFF;
          v29 = v110;
          do
          {
            v30 = v26;
            v31 = v28;
            if (v28 >= v26)
            {
              v31 = v26;
            }

            if (v27 > v26)
            {
              v30 = v27;
            }

            if (v5[v26])
            {
              v28 = v31;
              v27 = v30;
            }

            ++v26;
          }

          while (v26 != 0x2000);
          v32 = 0;
          v33 = 0;
          do
          {
            if (v32 && ((v5[v32 >> 3] >> (v32 & 7)) & 1) == 0)
            {
              v34 = 0;
            }

            else
            {
              v34 = v33++;
            }

            *&v20[2 * v32++] = v34;
          }

          while (v32 != 0x10000);
          if (__n >= 2)
          {
            v35 = *(v110 + 184);
            v36 = v107;
            do
            {
              *v35 = *&v20[2 * *v35];
              ++v35;
              --v36;
            }

            while (v36);
          }

          *v23 = v28;
          v23[1] = v27;
          v37 = v23 + 2;
          if (v28 <= v27)
          {
            v38 = v27 - v28;
            memcpy(v23 + 2, &v5[v28], v38 + 1);
            v103 = (v37 + v38 + 1);
            v105 = v38 + 9;
            v29 = v110;
          }

          else
          {
            v103 = v23 + 2;
            v105 = 8;
          }

          v104 = *(v29 + 184);
          v39 = *(v29 + 8);
          if (v39 >= 1)
          {
            v40 = 0;
            v41 = v33 - 1;
            v42 = *v29;
            v43 = *(v29 + 184);
            v109 = *v29;
            do
            {
              v44 = v42 + 48 * v40;
              v45 = *(v44 + 8);
              v46 = *(v44 + 12);
              LODWORD(v44) = *(v44 + 25);
              v47 = (((v44 + (v44 >> 7)) << 24) >> 25);
              v116 = v46 * v47;
              if (v44 >= 2)
              {
                v111 = v40;
                v112 = 0;
                v113 = 0;
                if (v46 >= v45)
                {
                  v48 = v45;
                }

                else
                {
                  v48 = v46;
                }

                v114 = v48;
                v115 = v46;
                do
                {
                  if (v114 >= 2)
                  {
                    v49 = 2;
                    v50 = 1;
                    do
                    {
                      v51 = v45;
                      v52 = (v45 - v49) * v116;
                      v53 = v50 * v47;
                      v54 = (v43 + 2 * v112);
                      v55 = v49 * v47;
                      if ((v52 & 0x80000000) == 0)
                      {
                        v54 = (v43 + 2 * v112);
                        v56 = &v54[v52];
                        v57 = (v115 - v49) * v47;
                        v58 = v49 * v116;
                        v59 = v50 * v116;
                        v60 = v43 + 2 * v50 * v116;
                        v61 = v43 + 2 * v50 * v116 + 2 * v53;
                        v62 = v43 + 2 * v53;
                        v63 = v113;
                        do
                        {
                          v64 = v54;
                          if ((v57 & 0x80000000) == 0)
                          {
                            v65 = v63;
                            do
                            {
                              v66 = *(v43 + v65);
                              v67 = *(v62 + v65);
                              if ((v41 & 0xC000) != 0)
                              {
                                v77 = *(v43 + v65) ^ 0x8000;
                                v78 = (v77 + *(v62 + v65)) >> 1;
                                v79 = v77 - *(v62 + v65);
                                v80 = *(v61 + v65);
                                v81 = *(v60 + v65) ^ 0x8000;
                                v82 = v81 + v80;
                                v83 = v81 - v80;
                                v84 = HIWORD(v83) & 0x8000 ^ (v82 >> 1);
                                v85 = v78 ^ (v79 >> 31 << 15) ^ 0x8000;
                                LOWORD(v74) = v85 - v84;
                                v73 = ((v85 - v84) >> 16) & 0x8000 ^ ((v84 + v85) >> 1);
                                v86 = v79 ^ 0x8000;
                                v87 = v86 + v83;
                                v76 = v86 - v83;
                                v75 = HIWORD(v76) & 0x8000 ^ (v87 >> 1);
                              }

                              else
                              {
                                v68 = v66 - v67;
                                v69 = *(v60 + v65);
                                v70 = *(v61 + v65);
                                v76 = v67 + v66;
                                v71 = v69 - v70;
                                v72 = v70 + v69;
                                v73 = ((v72 >> 1) + (v76 >> 1)) >> 1;
                                v74 = (v76 >> 1) - (v72 >> 1);
                                v75 = (v71 + v68) >> 1;
                                LOWORD(v76) = v68 - v71;
                              }

                              *(v43 + v65) = v73;
                              *(v60 + v65) = v74;
                              *(v62 + v65) = v75;
                              *(v61 + v65) = v76;
                              v65 += 2 * v55;
                              v64 = (v43 + v65);
                            }

                            while (v43 + v65 <= &v54[v57]);
                          }

                          if ((v50 & v115) != 0)
                          {
                            v88 = *v64;
                            v89 = v64[v59];
                            if ((v41 & 0xC000) != 0)
                            {
                              v91 = *v64 ^ 0x8000;
                              v92 = v91 + v64[v59];
                              v88 = v91 - v64[v59];
                              v90 = HIWORD(v88) & 0x8000 ^ (v92 >> 1);
                            }

                            else
                            {
                              v90 = (v89 + v88) >> 1;
                              LOWORD(v88) = v88 - v89;
                            }

                            *v64 = v90;
                            v64[v59] = v88;
                          }

                          v54 += v58;
                          v63 += 2 * v58;
                        }

                        while (v54 <= v56);
                      }

                      v45 = v51;
                      if ((v50 & v51) != 0)
                      {
                        v93 = (v115 - v49) * v47;
                        if ((v93 & 0x80000000) == 0)
                        {
                          v94 = &v54[v93];
                          do
                          {
                            v95 = *v54;
                            v96 = v54[v53];
                            if ((v41 & 0xC000) != 0)
                            {
                              v98 = *v54 ^ 0x8000;
                              v99 = v98 + v54[v53];
                              v95 = v98 - v54[v53];
                              v97 = HIWORD(v95) & 0x8000 ^ (v99 >> 1);
                            }

                            else
                            {
                              v97 = (v96 + v95) >> 1;
                              LOWORD(v95) = v95 - v96;
                            }

                            *v54 = v97;
                            v54[v53] = v95;
                            v54 += v55;
                          }

                          while (v54 <= v94);
                        }
                      }

                      v50 = v49;
                      v49 *= 2;
                    }

                    while (v49 <= v114);
                  }

                  ++v112;
                  v113 += 2;
                }

                while (v112 != v47);
                v29 = v110;
                v40 = v111;
                LOWORD(v39) = *(v110 + 8);
                v42 = v109;
              }

              v43 += 2 * v116 * v45;
              ++v40;
            }

            while (v40 < v39);
          }

          v118 = 0;
          v100 = sub_29AB2B444(&v118, (v103 + 1), *(v29 + 176) - v105, v104, v107, v106, 1835036);
          if (v100)
          {
            v101 = __n;
            v102 = v105;
            if (v100 != 4)
            {
LABEL_83:
              result = 0;
              *(v29 + 168) = v102;
              return result;
            }
          }

          else
          {
            v102 = v118 + v105;
            v101 = __n;
            if (v118 + v105 < __n)
            {
              *v103 = v118;
              goto LABEL_83;
            }
          }

          memcpy(*(v29 + 160), *(v29 + 96), v101);
          v102 = v101;
          goto LABEL_83;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29AB279B8(uint64_t a1)
{
  result = sub_29AB26F38(a1, 3, (a1 + 184), (a1 + 192), *(a1 + 104));
  if (result)
  {
    return result;
  }

  v3 = *(a1 + 184);
  v4 = *(a1 + 96);
  v34 = 0;
  v5 = *(a1 + 36);
  if (v5 < 1)
  {
    v6 = 0;
    goto LABEL_39;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 8);
  do
  {
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *(a1 + 32) + v7;
      while (1)
      {
        v11 = *a1 + 48 * v9;
        if (*(v11 + 8))
        {
          v12 = *(v11 + 12);
          v13 = *(v11 + 20);
          if (v13 < 2 || !(v10 % v13))
          {
            v14 = v12;
            v15 = *(v11 + 26);
            if (v15 == 2)
            {
              v6 += 3 * v12;
              if (v6 > *(a1 + 192))
              {
                return 1;
              }

              v16 = &v4[v12];
              v17 = &v3[2 * v12 + v12];
              if (v12 >= 1)
              {
                v26 = 0;
                do
                {
                  v27 = *v4;
                  if ((~*v4 & 0x7F800000) != 0)
                  {
                    v29 = v27 & 0x7FFFFFFF;
                    if (((*v4 & 0x80) + (*v4 & 0x7FFFFFFF)) >> 23 <= 0xFE)
                    {
                      v29 = (*v4 & 0x80) + (*v4 & 0x7FFFFFFF);
                    }

                    v28 = v29 >> 8;
                  }

                  else if ((v27 & 0x7FFFFF) != 0)
                  {
                    v28 = ((v27 & 0x7FFFFF) < 0x100) | ((v27 & 0x7FFFFF) >> 8) | 0x7F8000;
                  }

                  else
                  {
                    v28 = 8355840;
                  }

                  v30 = v28 | (v27 >> 31 << 23);
                  v31 = v30 - v26;
                  ++v4;
                  *v3 = BYTE2(v31);
                  v3[v14] = BYTE1(v31);
                  v3[2 * v14] = v31;
                  ++v3;
                  v26 = v30;
                  --v12;
                }

                while (v12);
              }
            }

            else
            {
              if (v15 == 1)
              {
                v6 += 2 * v12;
                if (v6 > *(a1 + 192))
                {
                  return 1;
                }

                v21 = (v4 + 2 * v12);
                v22 = &v3[v12 + v12];
                if (v12 >= 1)
                {
                  v23 = 0;
                  do
                  {
                    v24 = *v4;
                    v4 = (v4 + 2);
                    v25 = v24 - v23;
                    *v3 = HIBYTE(v25);
                    v3[v14] = v25;
                    ++v3;
                    v23 = v24;
                    --v12;
                  }

                  while (v12);
                }

                v4 = v21;
                v3 = v22;
                goto LABEL_34;
              }

              if (v15)
              {
                return 3;
              }

              v6 += 4 * v12;
              if (v6 > *(a1 + 192))
              {
                return 1;
              }

              v16 = &v4[v12];
              v17 = &v3[2 * v12 + v12 + v12];
              if (v12 >= 1)
              {
                v18 = 0;
                do
                {
                  v19 = *v4++;
                  v20 = v19 - v18;
                  *v3 = HIBYTE(v20);
                  v3[v14] = BYTE2(v20);
                  v3[2 * v14] = BYTE1(v20);
                  v3[3 * v14] = v20;
                  ++v3;
                  v18 = v19;
                  --v12;
                }

                while (v12);
              }
            }

            v4 = v16;
            v3 = v17;
          }
        }

LABEL_34:
        if (++v9 >= *(a1 + 8))
        {
          v8 = *(a1 + 8);
          v5 = *(a1 + 36);
          break;
        }
      }
    }

    ++v7;
  }

  while (v7 < v5);
  v3 = *(a1 + 184);
LABEL_39:
  if (sub_29AB28158(*(a1 + 16), 0xFFFFFFFF, v3, v6, *(a1 + 160), *(a1 + 176), &v34))
  {
    return 1;
  }

  v32 = v34;
  v33 = *(a1 + 104);
  if (v34 > v33)
  {
    memcpy(*(a1 + 160), *(a1 + 96), v33);
    v32 = *(a1 + 104);
  }

  result = 0;
  *(a1 + 168) = v32;
  return result;
}

uint64_t sub_29AB27C94(uint64_t a1)
{
  v2 = sub_29AB26F38(a1, 3, (a1 + 184), (a1 + 192), 0x1C001CuLL);
  if (!v2)
  {
    memset(v4, 0, sizeof(v4));
    v2 = sub_29AB2C6AC(v4, 1, a1, 0);
    if (!v2)
    {
      v2 = sub_29AB2CA38(v4);
    }

    sub_29AB2D4D8(v4);
  }

  return v2;
}

uint64_t sub_29AB27D2C(uint64_t a1)
{
  v2 = sub_29AB26F38(a1, 3, (a1 + 184), (a1 + 192), 0x1C001CuLL);
  if (!v2)
  {
    memset(v4, 0, sizeof(v4));
    v2 = sub_29AB2C6AC(v4, 0, a1, 0);
    if (!v2)
    {
      v2 = sub_29AB2CA38(v4);
    }

    sub_29AB2D4D8(v4);
  }

  return v2;
}

uint64_t sub_29AB27DC4(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  if (!*a3)
  {
    goto LABEL_6;
  }

  if (!*a4)
  {
LABEL_5:
    *a3 = 0;
LABEL_6:
    *a4 = 0;
    return result;
  }

  v6 = result;
  v7 = *(result + 224);
  if (v7)
  {
    result = v7(a2);
    goto LABEL_5;
  }

  v8 = *(result + 16);
  if (v8)
  {
    v9 = *(result + 12);
    if ((v9 & 0x80000000) == 0 && v9 < *(v8 + 196))
    {
      result = (*(v8 + 96))(*a3);
      goto LABEL_5;
    }

    if (*v8 == 1)
    {
      pthread_mutex_unlock((v8 + 504));
      v9 = *(v6 + 12);
    }

    return (*(v8 + 72))(v8, 4, "Part index (%d) out of range", v9);
  }

  return result;
}

unint64_t sub_29AB27E8C(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = 0;
  v5 = &a3[a4];
  v6 = &a3[a4 - 1];
  v7 = a3;
  do
  {
    if (a3 >= v5)
    {
      return v4;
    }

    v8 = v7 + 1;
    if ((v7 + 1) >= v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      v10 = v6 - v7;
      while (*a3 == *v8 && v9 != 127)
      {
        ++v9;
        ++v8;
        if (!--v10)
        {
          v8 = v5;
          break;
        }
      }

      if (v9 > 1)
      {
        v11 = (a1 + v4);
        *v11 = v9;
        v12 = v4 + 2;
        v11[1] = *a3;
        v7 = v8;
        goto LABEL_31;
      }
    }

    if (v8 >= v5)
    {
      goto LABEL_27;
    }

    v13 = v8 + 2;
    v14 = v5 - v8;
    while (1)
    {
      v15 = v9 + 1;
      if ((v13 - 1) < v5)
      {
        v16 = *(v13 - 2);
        if (v16 == *(v13 - 1) && v13 < v5)
        {
          if (v16 == *v13 || v9 == 126)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }
      }

      if (v9 == 126)
      {
        break;
      }

LABEL_21:
      ++v8;
      ++v13;
      ++v9;
      if (!--v14)
      {
        v8 = v5;
        LOBYTE(v9) = v15;
        goto LABEL_27;
      }
    }

    v8 = v13 - 2;
    LOBYTE(v9) = 126;
LABEL_27:
    v7 = v8;
    *(a1 + v4) = ~v9;
    v12 = v4 + 1;
    if (a3 < v8)
    {
      v12 = &v8[v12] - a3;
      v18 = v8 - a3;
      v19 = (a1 + 1 + v4);
      do
      {
        v20 = *a3++;
        *v19++ = v20;
        --v18;
      }

      while (v18);
    }

    v8 = a3;
LABEL_31:
    a3 = v8;
    v4 = v12;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_29AB27FEC(unsigned __int8 *a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *a1;
    if (*(a1 + 49) > a2)
    {
      v7 = *(*(*(a1 + 59) + 8 * a2) + 184);
      if (v6 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      if (a3)
      {
        result = 0;
        *a3 = v7;
      }

      else
      {
        v9 = *(a1 + 7);

        return v9(a1, 3);
      }

      return result;
    }
  }

  if (v6 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  return (*(a1 + 9))(a1, 4, "Part index (%d) out of range", a2);
}

char *sub_29AB280E4(char *result, char *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = &a2[a3];
    v4 = &result[(a3 + 1) >> 1];
    v5 = result;
    v6 = a2;
    do
    {
      v7 = *v6++;
      *v5++ = v7;
      if (v6 < v3)
      {
        v6 = a2 + 2;
        *v4++ = a2[1];
      }

      a2 = v6;
    }

    while (v6 < v3);
    if (a3 != 1)
    {
      v8 = &result[a3];
      v10 = *result++;
      v9 = v10;
      do
      {
        v11 = *result;
        *result = (*result - v9) ^ 0x80;
        ++result;
        v9 = v11;
      }

      while (result < v8);
    }
  }

  return result;
}

uint64_t sub_29AB28158(uint64_t a1, unsigned int a2, char *a3, unint64_t a4, char *a5, unint64_t a6, uint64_t *a7)
{
  v12 = a2;
  v13 = sub_29AB21010;
  if (a1)
  {
    v14 = *(a1 + 88);
    v13 = *(a1 + 96);
  }

  else
  {
    v14 = j__malloc;
  }

  v15 = 668295;
  qword_2A1B6C3E8 = v14;
  off_2A1B6C3F0 = v13;
  if ((a2 & 0x80000000) != 0)
  {
    v12 = 4;
  }

  else
  {
    if (a2 > 0xC)
    {
      return 1;
    }

    v16 = 6119;
    if (a2 == 1)
    {
      v16 = 202759;
    }

    if (a2 > 1)
    {
      v16 = 668295;
    }

    if (a2 <= 9)
    {
      v15 = v16;
    }

    else
    {
      v15 = 9011751;
    }
  }

  v17 = (v14)(v15);
  if (!v17)
  {
    return 1;
  }

  v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v18 - 8) = v17;
  if (!v18)
  {
    return 1;
  }

  *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 8) = v12;
  *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x10) = (55 - 4 * v12);
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        *v18 = sub_29B2BECA0;
        v19 = 0xE0000000CLL;
      }

      else
      {
        if (v12 == 4)
        {
          v20 = sub_29B2BECA0;
        }

        else
        {
          v20 = sub_29B2BF468;
        }

        *v18 = v20;
        v19 = 0x1E00000010;
      }

      goto LABEL_45;
    }

    switch(v12)
    {
      case 0:
        *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x10) = -1;
        *v18 = 0;
        goto LABEL_46;
      case 1:
        *v18 = sub_29AB2875C;
        *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x1C) = 32;
        goto LABEL_46;
      case 2:
        *v18 = sub_29B2BECA0;
        v19 = 0xA00000006;
LABEL_45:
        *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x18) = v19;
        goto LABEL_46;
    }

    goto LABEL_69;
  }

  if (v12 <= 8)
  {
    if (v12 == 6)
    {
      *v18 = sub_29B2BF468;
      v19 = 0x4100000023;
    }

    else if (v12 == 7)
    {
      *v18 = sub_29B2BF468;
      v19 = 0x8200000064;
    }

    else
    {
      *v18 = sub_29B2C0174;
      v19 = 0x1020000012CLL;
    }

    goto LABEL_45;
  }

  switch(v12)
  {
    case 9:
      *v18 = sub_29B2C0174;
      v19 = 0x10200000258;
      goto LABEL_45;
    case 10:
      v34 = 0;
      *v18 = sub_29B2C1330;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x8981E4) = 0x2000000002;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x18) = 0x4B00000023;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x8981EC) = 32;
      do
      {
        v35 = dword_29B6C1C64[v34];
        v36 = 1 << byte_29B6C1C43[v34];
        do
        {
          *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x88F99C + v35++) = v34;
          --v36;
        }

        while (v36);
        ++v34;
      }

      while (v34 != 30);
      break;
    case 11:
      v21 = 0;
      *v18 = sub_29B2C1330;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x8981E4) = 0x1000000004;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x18) = 0x9600000064;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x8981EC) = 16;
      do
      {
        v22 = dword_29B6C1C64[v21];
        v23 = 1 << byte_29B6C1C43[v21];
        do
        {
          *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x88F99C + v22++) = v21;
          --v23;
        }

        while (v23);
        ++v21;
      }

      while (v21 != 30);
      break;
    default:
LABEL_69:
      v37 = 0;
      *v18 = sub_29B2C1330;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x8981E4) = 0x10000000ALL;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x18) = 0x1020000012CLL;
      *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x8981EC) = 1;
      do
      {
        v38 = dword_29B6C1C64[v37];
        v39 = 1 << byte_29B6C1C43[v37];
        do
        {
          *(((v17 + 39) & 0xFFFFFFFFFFFFFFE0) + 0x88F99C + v38++) = v37;
          --v39;
        }

        while (v39);
        ++v37;
      }

      while (v37 != 30);
      break;
  }

LABEL_46:
  memset_pattern16((v18 + 32), &unk_29B4E18D0, 0x240uLL);
  memset_pattern16((v18 + 608), &unk_29B4340E0, 0x1C0uLL);
  memset_pattern16((v18 + 1056), &unk_29B4E18C0, 0x60uLL);
  memset_pattern16((v18 + 1152), &unk_29B4E18D0, 0x20uLL);
  memset_pattern16((v18 + 1184), &unk_29B4340E0, 0x80uLL);
  sub_29AB29784(0x120u, 0xEu, (v18 + 32), (v18 + 4280), (v18 + 3000));
  sub_29AB29784(0x20u, 0xFu, (v18 + 1184), (v18 + 4568), (v18 + 4152));
  if (a6 < 7)
  {
    goto LABEL_77;
  }

  v24 = *(v18 + 8);
  if (v24 >= 8)
  {
    v25 = 30912;
  }

  else
  {
    v25 = 30848;
  }

  if (v24 >= 6)
  {
    v26 = v25;
  }

  else
  {
    v26 = 30784;
  }

  if (v24 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 30720;
  }

  *a5 = bswap32(((v27 - 31 * ((16913 * v27) >> 19)) | v27) ^ 0x1F) >> 16;
  v28 = a5 + 2;
  v29 = a6 - 6;
  if (*(v18 + 16) < a4)
  {
    if (v29 >= 9)
    {
      v42 = 0;
      v43 = 0;
      v44 = a5 + 2;
      v45 = &v28[v29 - 8];
      (*v18)(v18, a3, a4, &v42);
      v30 = v44;
      if (v44 < v45)
      {
        if (v43)
        {
          ++v44;
          *v30 = v42;
          v30 = v44;
        }

        v31 = v30 - v28;
        if (v30 != v28)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_77:
    v40 = 0;
    goto LABEL_78;
  }

  v31 = sub_29AB2ADD8(a3, a4, (a5 + 2), v29);
  if (!v31)
  {
    goto LABEL_77;
  }

LABEL_62:
  v32 = &v28[v31];
  if (a3)
  {
    v33 = (off_2A1B6C3F8[0])(1, a3, a4);
  }

  else
  {
    v33 = 1;
  }

  *v32 = bswap32(v33);
  v40 = v32 - a5 + 4;
LABEL_78:
  off_2A1B6C3F0(*(v18 - 8));
  if (!v40)
  {
    return 1;
  }

  result = 0;
  if (a7)
  {
    *a7 = v40;
  }

  return result;
}

unint64_t sub_29AB2875C(unsigned int *a1, unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  v7 = a1[7];
  v8 = a1 + 1520;
  memset_pattern16(a1 + 1520, &unk_29B4E18E0, 0x20000uLL);
  v9 = 0;
  v10 = &a2[a3];
  if (v7 >= 0x102)
  {
    v11 = 258;
  }

  else
  {
    v11 = v7;
  }

  v100 = 258;
  v101 = v11;
  v12 = a1 + 8;
  v13 = a2;
  do
  {
    if ((v10 - v13) >= 0x11387)
    {
      v14 = (v13 + 0xFFFF);
    }

    else
    {
      v14 = v10;
    }

    v15 = v13;
    bzero(a1 + 8, 0x500uLL);
    v16 = v15;
    a1[34288] = 0;
    v17 = v9;
    v18 = 34288;
    v19 = v15;
    v21 = v100;
    v20 = v101;
    while (1)
    {
      v22 = &a1[v18];
      v23 = v10 - v19;
      if ((v10 - v19) > 0x101)
      {
        v24.i64[0] = 0x8000800080008000;
        v24.i64[1] = 0x8000800080008000;
        goto LABEL_11;
      }

      v21 = v10 - v19;
      v24.i64[0] = 0x8000800080008000;
      v24.i64[1] = 0x8000800080008000;
      if (v23 <= 4)
      {
        break;
      }

      if (v20 >= v23)
      {
        v20 = v10 - v19;
      }

LABEL_11:
      v25 = v19 - a2;
      if (v19 - a2 == 0x8000)
      {
        for (i = 0; i != 0x8000; i += 16)
        {
          v27 = &v8[i];
          v28 = vqaddq_s16(*&v8[i + 4], v24);
          *v27 = vqaddq_s16(*&v8[i], v24);
          v27[1] = v28;
          v29 = vqaddq_s16(*&v8[i + 12], v24);
          v27[2] = vqaddq_s16(*&v8[i + 8], v24);
          v27[3] = v29;
        }

        v25 = 0;
        a2 += 0x8000;
      }

      v30 = v19 + 1;
      v9 = (506832829 * *(v19 + 1)) >> 17;
      v31 = *v19;
      _X14 = &v8[v9];
      __asm { PRFM            #0x10, [X14] }

      v38 = &v8[v17];
      v39 = *v38;
      *v38 = v25;
      v40 = v25 ^ 0xFFFF8000;
      if (v40 >= v39)
      {
        goto LABEL_97;
      }

      v41 = v39;
      v42 = &a2[v39];
      v43 = v38[1];
      v38[1] = v41;
      if (*v42 == v31)
      {
        if (v21 - 36 > 0xFFFFFFDF)
        {
          LODWORD(v52) = 4u;
LABEL_23:
          while (1)
          {
            v53 = v52 + 8;
            if (v52 + 8 > v21)
            {
              break;
            }

            v54 = *&v42[v52];
            v55 = *&v19[v52];
            LODWORD(v52) = v52 + 8;
            if (v54 != v55)
            {
              v52 = v55 ^ v54;
              v56 = v53 - 8;
              goto LABEL_42;
            }
          }

          if (v52 < v21)
          {
            v52 = v52;
            while (v42[v52] == v19[v52])
            {
              if (++v52 >= v21)
              {
                LODWORD(v52) = v21;
                break;
              }
            }
          }
        }

        else
        {
          v44 = *(v42 + 4);
          v45 = *(v19 + 4);
          if (v44 == v45)
          {
            v46 = *(v42 + 12);
            v47 = *(v19 + 12);
            if (v46 == v47)
            {
              v48 = *(v42 + 20);
              v49 = *(v19 + 20);
              if (v48 == v49)
              {
                v50 = *(v42 + 28);
                v51 = *(v19 + 28);
                if (v50 == v51)
                {
                  LODWORD(v52) = 0x24u;
                  goto LABEL_23;
                }

                v52 = v51 ^ v50;
                v56 = 28;
              }

              else
              {
                v52 = v49 ^ v48;
                v56 = 20;
              }
            }

            else
            {
              v52 = v47 ^ v46;
              v56 = 12;
            }
          }

          else
          {
            v52 = v45 ^ v44;
            v56 = 4;
          }

LABEL_42:
          LODWORD(v52) = v56 + (__clz(__rbit64(v52)) >> 3);
        }

        if (v40 < v43 && v52 < v20)
        {
          v69 = &a2[v43];
          if (*v69 == v31 && *&v69[v52 - 3] == *&v19[v52 - 3])
          {
            if (v21 - 36 > 0xFFFFFFDF)
            {
              LODWORD(v78) = 4;
LABEL_53:
              while (1)
              {
                v79 = v78 + 8;
                if (v78 + 8 > v21)
                {
                  break;
                }

                v80 = *&v69[v78];
                v81 = *&v19[v78];
                LODWORD(v78) = v78 + 8;
                if (v80 != v81)
                {
                  v78 = v81 ^ v80;
                  v82 = v79 - 8;
                  goto LABEL_76;
                }
              }

              if (v78 < v21)
              {
                v78 = v78;
                while (v69[v78] == v19[v78])
                {
                  if (++v78 >= v21)
                  {
                    LODWORD(v78) = v21;
                    break;
                  }
                }
              }
            }

            else
            {
              v70 = *(v69 + 4);
              v71 = *(v19 + 4);
              if (v70 == v71)
              {
                v72 = *(v69 + 12);
                v73 = *(v19 + 12);
                if (v72 == v73)
                {
                  v74 = *(v69 + 20);
                  v75 = *(v19 + 20);
                  if (v74 == v75)
                  {
                    v76 = *(v69 + 28);
                    v77 = *(v19 + 28);
                    if (v76 == v77)
                    {
                      LODWORD(v78) = 36;
                      goto LABEL_53;
                    }

                    v78 = v77 ^ v76;
                    v82 = 28;
                  }

                  else
                  {
                    v78 = v75 ^ v74;
                    v82 = 20;
                  }
                }

                else
                {
                  v78 = v73 ^ v72;
                  v82 = 12;
                }
              }

              else
              {
                v78 = v71 ^ v70;
                v82 = 4;
              }

LABEL_76:
              LODWORD(v78) = v82 + (__clz(__rbit64(v78)) >> 3);
            }

            if (v78 > v52)
            {
              LODWORD(v52) = v78;
              LODWORD(v42) = v69;
            }
          }
        }

LABEL_79:
        if (v52)
        {
          goto LABEL_80;
        }

        goto LABEL_97;
      }

      if (v40 >= v43)
      {
        goto LABEL_97;
      }

      v42 = &a2[v43];
      if (*v42 != v31)
      {
        goto LABEL_97;
      }

      if (v21 - 36 > 0xFFFFFFDF)
      {
        LODWORD(v52) = 4;
LABEL_34:
        while (1)
        {
          v65 = v52 + 8;
          if (v52 + 8 > v21)
          {
            break;
          }

          v66 = *&v42[v52];
          v67 = *&v19[v52];
          LODWORD(v52) = v52 + 8;
          if (v66 != v67)
          {
            v52 = v67 ^ v66;
            v68 = v65 - 8;
            goto LABEL_66;
          }
        }

        if (v52 < v21)
        {
          v52 = v52;
          while (v42[v52] == v19[v52])
          {
            if (++v52 >= v21)
            {
              LODWORD(v52) = v21;
              if (v21)
              {
                goto LABEL_80;
              }

              goto LABEL_97;
            }
          }

          if (v52)
          {
            goto LABEL_80;
          }

          goto LABEL_97;
        }

        goto LABEL_79;
      }

      v57 = *(v42 + 4);
      v58 = *(v19 + 4);
      if (v57 == v58)
      {
        v59 = *(v42 + 12);
        v60 = *(v19 + 12);
        if (v59 == v60)
        {
          v61 = *(v42 + 20);
          v62 = *(v19 + 20);
          if (v61 == v62)
          {
            v63 = *(v42 + 28);
            v64 = *(v19 + 28);
            if (v63 == v64)
            {
              LODWORD(v52) = 36;
              goto LABEL_34;
            }

            v52 = v64 ^ v63;
            v68 = 28;
          }

          else
          {
            v52 = v62 ^ v61;
            v68 = 20;
          }
        }

        else
        {
          v52 = v60 ^ v59;
          v68 = 12;
        }
      }

      else
      {
        v52 = v58 ^ v57;
        v68 = 4;
      }

LABEL_66:
      LODWORD(v52) = v68 + (__clz(__rbit64(v52)) >> 3);
      if (v52)
      {
LABEL_80:
        v83 = v19 - v42;
        v84 = ((v83 - 1) >> 7) + 256;
        if (v83 < 0x101)
        {
          v84 = v83;
        }

        v85 = byte_29B6C1A13[v84];
        ++v12[byte_29B6C1910[v52] + 257];
        ++a1[v85 + 296];
        a1[v18] |= v52 << 23;
        *(v22 + 2) = v83;
        *(v22 + 3) = v85;
        v18 += 2;
        a1[v18] = 0;
        if (v10 - v30 >= (v52 + 4))
        {
          v86 = v52 - 1;
          v87 = v30 - a2;
          if ((v19 - a2 + v52 - 32769) <= 0xFFFF7FFF)
          {
            for (j = 0; j != 0x8000; j += 16)
            {
              v89 = &v8[j];
              v90 = vqaddq_s16(*&v8[j + 4], v24);
              *v89 = vqaddq_s16(*&v8[j], v24);
              v89[1] = v90;
              v91 = vqaddq_s16(*&v8[j + 12], v24);
              v89[2] = vqaddq_s16(*&v8[j + 8], v24);
              v89[3] = v91;
            }

            a2 += 0x8000;
            v87 -= 0x8000;
          }

          v92 = (v19 + 2);
          do
          {
            v93 = &v8[v9];
            v93[1] = *v93;
            *v93 = v87;
            v94 = *v92;
            v92 = (v92 + 1);
            v9 = (506832829 * v94) >> 17;
            ++v87;
            --v86;
          }

          while (v86);
          _X10 = &v8[v9];
          __asm { PRFM            #0x10, [X10] }
        }

        v30 = &v19[v52];
        goto LABEL_98;
      }

LABEL_97:
      ++v12[*v19];
      ++*v22;
LABEL_98:
      if (v30 < v14)
      {
        v17 = v9;
        v19 = v30;
        if (v18 < 50672)
        {
          continue;
        }
      }

      goto LABEL_109;
    }

    do
    {
      v97 = *v19++;
      ++v12[v97];
      ++*v22;
      --v21;
    }

    while (v21);
    v30 = v19;
    v9 = v17;
LABEL_109:
    v100 = v21;
    v101 = v20;
    result = sub_29AB28E18(a1, a4, v16, v30 - v16, a1 + 34288, v30 == v10);
    v13 = v30;
  }

  while (v30 != v10);
  return result;
}

unint64_t sub_29AB28E18(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unsigned int a4, unsigned int *a5, unsigned int a6)
{
  ++*(a1 + 1056);
  sub_29AB29784(0x120u, 0xEu, (a1 + 32), (a1 + 2680), (a1 + 1400));
  sub_29AB29784(0x20u, 0xFu, (a1 + 1184), (a1 + 2968), (a1 + 2552));

  return sub_29AB28EC0(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_29AB28EC0(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unsigned int a4, unsigned int *a5, unsigned int a6)
{
  v10 = (a1 + 608);
  v11 = *a2;
  v12 = *(a2 + 2);
  v14 = a2[2];
  v13 = a2[3];
  v15 = a4;
  sub_29AB29C80(a1);
  v16 = 0;
  v17 = a1 + 4600;
  LODWORD(v18) = *(a1 + 6060);
  v19 = 3 * v18 + 14;
  v20 = a1 + 4752;
  do
  {
    v19 += (*(v20 + v16) + byte_29B6C1C13[v16]) * *(v20 + 4 * v16 - 152);
    ++v16;
  }

  while (v16 != 19);
  v21 = 0;
  v22 = 0uLL;
  v23 = v19;
  v24 = v15;
  v25 = &a3[v15];
  v26 = (a1 + 32);
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  do
  {
    v33 = *(a1 + 2680 + v21);
    v35 = v26[2];
    v34 = v26[3];
    v36 = vmovl_high_u8(v33);
    v37 = vmovl_u8(*v33.i8);
    v39 = *v26;
    v38 = v26[1];
    v26 += 4;
    v28 = vmlaq_s32(v28, v34, vmovl_high_u16(v36));
    v27 = vmlaq_s32(v27, v35, vmovl_u16(*v36.i8));
    v22 = vmlaq_s32(v22, v38, vmovl_high_u16(v37));
    v23 = vmlaq_s32(v23, v39, vmovl_u16(*v37.i8));
    v31 = vaddq_s32(vshlq_n_s32(v35, 3uLL), v31);
    v30 = vaddq_s32(vshlq_n_s32(v38, 3uLL), v30);
    v29 = vaddq_s32(vshlq_n_s32(v39, 3uLL), v29);
    v32 = vaddq_s32(vshlq_n_s32(v34, 3uLL), v32);
    v21 += 16;
  }

  while (v21 != 144);
  v40 = 0;
  v44.i64[0] = vaddvq_s32(vaddq_s32(vaddq_s32(v23, v27), vaddq_s32(v22, v28)));
  v41 = vaddvq_s32(vaddq_s32(vaddq_s32(v29, v31), vaddq_s32(v30, v32)));
  v42 = 0uLL;
  v43 = v44.u32[0];
  v44 = v44.u64[0];
  v44.i32[0] = v41;
  v45.i64[0] = 0x900000009;
  v45.i64[1] = 0x900000009;
  v46 = 0uLL;
  v47 = 0uLL;
  v48 = 0uLL;
  v49 = 0uLL;
  v50 = 0uLL;
  do
  {
    v52 = v10[2];
    v51 = v10[3];
    v53 = *(a1 + 2824 + v40);
    v55 = *v10;
    v54 = v10[1];
    v10 += 4;
    v56 = vmovl_high_u8(v53);
    v57 = vmovl_u8(*v53.i8);
    v47 = vmlaq_s32(v47, v51, vmovl_high_u16(v56));
    v46 = vmlaq_s32(v46, v52, vmovl_u16(*v56.i8));
    v42 = vmlaq_s32(v42, v54, vmovl_high_u16(v57));
    v43 = vmlaq_s32(v43, v55, vmovl_u16(*v57.i8));
    v49 = vmlaq_s32(v49, v52, v45);
    v48 = vmlaq_s32(v48, v54, v45);
    v44 = vmlaq_s32(v44, v55, v45);
    v50 = vmlaq_s32(v50, v51, v45);
    v40 += 16;
  }

  while (v40 != 112);
  v58 = 0;
  v59 = vaddvq_s32(vaddq_s32(vaddq_s32(v43, v46), vaddq_s32(v42, v47))) + *(a1 + 2936);
  v60 = vaddvq_s32(vaddq_s32(vaddq_s32(v44, v49), vaddq_s32(v48, v50))) + 7;
  v61 = (a1 + 2937);
  do
  {
    v62 = byte_29B6C1C26[v58];
    v63 = *(a1 + 1060 + 4 * v58);
    v59 += (*v61 + v62) * v63;
    v60 += (v61[1600] + v62) * v63;
    ++v61;
    ++v58;
  }

  while (v58 != 29);
  v64 = 0;
  v65 = a1 + 2968;
  do
  {
    v66 = byte_29B6C1C43[v64];
    v67 = *(v65 + 4 * v64 - 1784);
    v59 += (*(v65 + v64) + v66) * v67;
    v60 += (v66 + 5) * v67;
    ++v64;
  }

  while (v64 != 30);
  result = 40;
  v69 = ((40 * ((a4 + 65534) / 0xFFFF) + 8 * a4) & 0xFFFFFFF8 | (5 - v12) & 7) - 8;
  if (v60 >= v69)
  {
    v70 = ((40 * ((a4 + 65534) / 0xFFFF) + 8 * a4) & 0xFFFFFFF8 | (5 - v12) & 7) - 8;
  }

  else
  {
    v70 = v60;
  }

  if (v59 >= v70)
  {
    if (v60 >= v69)
    {
      while (1)
      {
        v149 = v25 - a3 >= 0x10000 ? 0xFFFFLL : v25 - a3;
        if (v13 - v14 < v149 + ((v12 + 10) >> 3) + 4)
        {
          break;
        }

        if (v25 - a3 < 0x10000)
        {
          v150 = a6;
        }

        else
        {
          v150 = 0;
        }

        *v14 = v11 | (v150 << v12);
        v151 = v14 + 1;
        if (v12 >= 6)
        {
          v151 = v14 + 2;
          v14[1] = 0;
        }

        *v151 = v149;
        v151[1] = ~v149;
        v152 = v151 + 2;
        result = memcpy(v151 + 2, a3, v149);
        v12 = 0;
        v11 = 0;
        v148 = 0;
        v146 = 0;
        v14 = v152 + v149;
        a3 += v149;
        if (a3 == v25)
        {
          goto LABEL_68;
        }
      }

      v14 = v13;
      v148 = v12;
      v146 = v11;
      goto LABEL_68;
    }

    v71 = a1 + 3000;
    v94 = (a6 << v12) | (1 << (v12 + 1)) | v11;
    v95 = v12 + 3;
    *v14 = v94;
    v82 = v94 >> ((v12 + 3) & 0xF8);
    v96 = v13 - v14;
    if (v13 - v14 >= (v12 + 3) >> 3)
    {
      v96 = v95 >> 3;
    }

    v84 = &v14[v96];
    v85 = v95 & 7;
  }

  else
  {
    v71 = a1 + 1400;
    LODWORD(v72) = *(a1 + 6064);
    v73 = (a6 << v12) | (2 << (v12 + 1)) | ((v18 - 4) << (v12 + 13)) | ((*(a1 + 6052) - 257) << (v12 + 3)) | ((*(a1 + 6056) - 1) << (v12 + 8)) | (*(a1 + 4768) << (v12 + 17)) | v11;
    v74 = v12 + 20;
    *v14 = v73;
    v75 = v73 >> ((v12 + 20) & 0xF8);
    v76 = v13 - v14;
    if (v13 - v14 >= (v12 + 20) >> 3)
    {
      v76 = v74 >> 3;
    }

    v77 = v74 & 7;
    if (v18 <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v18;
    }

    v78 = v18 - 1;
    v79 = &byte_29B6C25A9;
    do
    {
      v80 = *v79++;
      v75 |= *(v20 + v80) << v77;
      v77 += 3;
      --v78;
    }

    while (v78);
    v81 = &v14[v76];
    *&v14[v76] = v75;
    v82 = v75 >> (v77 & 0xF8);
    v83 = v13 - &v14[v76];
    if (v83 >= v77 >> 3)
    {
      v83 = v77 >> 3;
    }

    v84 = &v81[v83];
    v85 = v77 & 7;
    v86 = (a1 + 4772);
    if (v72 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = v72;
    }

    do
    {
      v87 = *v86++;
      v88 = v87 & 0x1F;
      v89 = *(a1 + 4676 + 4 * v88) << v85;
      v90 = v85 + *(v20 + v88);
      v91 = v89 | v82 | (v87 >> 5 << v90);
      v92 = v90 + byte_29B6C1C13[v88];
      *v84 = v91;
      v82 = v91 >> (v92 & 0xF8);
      v93 = v13 - v84;
      if (v13 - v84 >= v92 >> 3)
      {
        v93 = v92 >> 3;
      }

      v84 = (v84 + v93);
      v85 = v92 & 7;
      --v72;
    }

    while (v72);
  }

  v97 = 0;
  v98 = v71 + 1280;
  v99 = a1 + 5636;
  do
  {
    v100 = *(&unk_29B6C1910 + v97 + 3);
    *(a1 + 4612 + 4 * v97) = ((v97 - dword_29B6C1CDC[v100] + 3) << *(v98 + v100 + 257)) | *(v71 + 4 * (v100 + 257));
    *(a1 + 5639 + v97++) = byte_29B6C1C26[v100] + *(v98 + v100 + 257);
  }

  while (v97 != 256);
  if (a5)
  {
    while (1)
    {
      result = *a5;
      v101 = result & 0x7FFFFF;
      if ((result & 0x7FFFFF) < 4)
      {
        break;
      }

      do
      {
        v102 = *a3;
        v103 = *(v71 + 4 * v102) << v85;
        v104 = a3[1];
        v105 = v85 + *(v98 + v102);
        v106 = *(v71 + 4 * v104) << v105;
        v107 = v105 + *(v98 + v104);
        v108 = a3[2];
        v109 = *(v71 + 4 * v108) << v107;
        v110 = v107 + *(v98 + v108);
        v111 = a3 + 4;
        v112 = a3[3];
        v113 = v103 | v82 | v106 | v109 | (*(v71 + 4 * v112) << v110);
        v114 = v110 + *(v98 + v112);
        *v84 = v113;
        v82 = v113 >> (v114 & 0xF8);
        v115 = v13 - v84;
        if (v13 - v84 >= v114 >> 3)
        {
          v115 = v114 >> 3;
        }

        v84 = (v84 + v115);
        v85 = v114 & 7;
        v101 -= 4;
        a3 += 4;
      }

      while (v101 > 3);
      a3 = v111;
      if (v101)
      {
        goto LABEL_43;
      }

LABEL_53:
      if (result < 0x800000)
      {
        goto LABEL_65;
      }

      v122 = result >> 23;
      v123 = *(a5 + 3);
      v124 = *(v17 + 4 * v122) << v85;
      v125 = v85 + *(v99 + v122);
      v126 = *(v71 + 1152 + 4 * v123) << v125;
      v127 = v125 + *(v71 + 1568 + v123);
      v128 = v124 | v126 | ((*(a5 + 2) - dword_29B6C1C64[v123]) << v127) | v82;
      v129 = v127 + byte_29B6C1C43[v123];
      v82 = v128 >> (v129 & 0xF8);
      v130 = v13 - v84;
      if (v13 - v84 >= v129 >> 3)
      {
        v130 = v129 >> 3;
      }

      *v84 = v128;
      v84 = (v84 + v130);
      v85 = v129 & 7;
      a3 += v122;
      a5 += 2;
    }

    if (!v101)
    {
      goto LABEL_53;
    }

LABEL_43:
    v116 = *a3;
    v117 = (*(v71 + 4 * v116) << v85) | v82;
    v118 = v85 + *(v98 + v116);
    if (v101 == 1)
    {
      ++a3;
    }

    else
    {
      v119 = a3[1];
      v117 |= *(v71 + 4 * v119) << v118;
      v118 += *(v98 + v119);
      if (v101 == 2)
      {
        a3 += 2;
      }

      else
      {
        v120 = a3[2];
        a3 += 3;
        v117 |= *(v71 + 4 * v120) << v118;
        v118 += *(v98 + v120);
      }
    }

    *v84 = v117;
    v82 = v117 >> (v118 & 0xF8);
    v121 = v13 - v84;
    if (v13 - v84 >= v118 >> 3)
    {
      v121 = v118 >> 3;
    }

    v84 = (v84 + v121);
    v85 = v118 & 7;
    goto LABEL_53;
  }

  v131 = a1 + 6532420;
  result = v71 + 1152;
  do
  {
    v132 = *(v131 + 4);
    v133 = v132 & 0x1FF;
    v134 = v132 >> 9;
    if (v133 == 1)
    {
      v135 = *(v71 + 4 * v134) << v85;
      v136 = (v98 + v134);
      v133 = 1;
    }

    else
    {
      v137 = *(a1 + 8976796 + v134);
      v138 = *(v17 + 4 * v133) << v85;
      v139 = v85 + *(v99 + v133);
      v140 = *(result + 4 * v137) << v139;
      v85 = v139 + *(v71 + 1568 + v137);
      v135 = v138 | v140 | ((v134 - dword_29B6C1C64[v137]) << v85);
      v136 = &byte_29B6C1C43[v137];
    }

    v141 = v85 + *v136;
    v142 = v135 | v82;
    *v84 = v142;
    v82 = v142 >> (v141 & 0xF8);
    v143 = v13 - v84;
    if (v13 - v84 >= v141 >> 3)
    {
      v143 = v141 >> 3;
    }

    v85 = v141 & 7;
    v84 = (v84 + v143);
    v131 += 8 * v133;
  }

  while (v131 != a1 + 6532420 + 8 * v24);
LABEL_65:
  v144 = (*(v71 + 1024) << v85) | v82;
  v145 = v85 + *(v71 + 1536);
  *v84 = v144;
  v146 = v144 >> (v145 & 0xF8);
  v147 = v13 - v84;
  if (v13 - v84 >= v145 >> 3)
  {
    v147 = v145 >> 3;
  }

  v14 = v84 + v147;
  v148 = v145 & 7;
LABEL_68:
  *a2 = v146;
  *(a2 + 2) = v148;
  a2[2] = v14;
  return result;
}

void sub_29AB29784(unsigned int a1, unsigned int a2, unsigned int *a3, _BYTE *a4, unsigned int *a5)
{
  v73[143] = *MEMORY[0x29EDCA608];
  v10 = a1;
  __memset_chk();
  if (a1)
  {
    v11 = a1 - 1;
    v12 = a3;
    v13 = v10;
    do
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 >= v11)
      {
        v14 = a1 - 1;
      }

      ++*(&v73[-1] + v14);
      --v13;
    }

    while (v13);
    if (a1 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v10 - 1;
      v18 = &v72 + 1;
      do
      {
        v19 = *v18;
        *v18++ = v16;
        v16 += v19;
        --v17;
      }

      while (v17);
    }

    v20 = 0;
    do
    {
      v21 = a3[v20];
      if (v21)
      {
        if (v21 >= v11)
        {
          v22 = a1 - 1;
        }

        else
        {
          v22 = a3[v20];
        }

        v23 = *(&v73[-1] + v22);
        *(&v73[-1] + v22) = v23 + 1;
        a5[v23] = v20 | (v21 << 10);
      }

      else
      {
        a4[v20] = 0;
      }

      ++v20;
    }

    while (v10 != v20);
  }

  else
  {
    v16 = 0;
    v11 = 0xFFFFFFFFLL;
  }

  v24 = *(&v72 + a1 - 2);
  v25 = (*(&v73[-1] + v11) - v24);
  if (v25 >= 2)
  {
    v26 = &a5[v24];
    v27 = v26 - 1;
    v28 = v25 >> 1;
    do
    {
      v29 = v27[v28];
      v30 = 2 * v28;
      if (2 * v28 <= v25)
      {
        v32 = v28;
        while (1)
        {
          if (v30 >= v25)
          {
            v33 = v30;
          }

          else
          {
            v33 = v27[v30 | 1] <= v27[v30] ? v30 : v30 + 1;
          }

          v34 = v27[v33];
          v31 = v32;
          if (v29 >= v34)
          {
            break;
          }

          v27[v32] = v34;
          v30 = 2 * v33;
          v32 = v33;
          if (2 * v33 > v25)
          {
            v31 = v33;
            break;
          }
        }
      }

      else
      {
        v31 = v28;
      }

      v27[v31] = v29;
      --v28;
    }

    while (v28);
    do
    {
      v39 = v27[v25];
      v27[v25] = *v26;
      *v26 = v39;
      if (v25 == 2)
      {
        break;
      }

      --v25;
      LODWORD(v35) = 1;
      v36 = 2;
      while (1)
      {
        if (v36 >= v25)
        {
          v37 = v36;
        }

        else
        {
          v37 = v27[v36 | 1] <= v27[v36] ? v36 : v36 + 1;
        }

        v38 = v27[v37];
        v35 = v35;
        if (v39 >= v38)
        {
          break;
        }

        v27[v35] = v38;
        v36 = 2 * v37;
        LODWORD(v35) = v37;
        if (2 * v37 > v25)
        {
          v35 = v37;
          break;
        }
      }

      v27[v35] = v39;
    }

    while (v25 > 1);
  }

  if (!v16)
  {
    return;
  }

  v40 = (v16 - 1);
  if (v16 == 1)
  {
    if ((*a5 & 0x3FE) != 0)
    {
      v69 = *a5 & 0x3FF;
    }

    else
    {
      v69 = 1;
    }

    *a5 = 0;
    *a4 = 1;
    a5[v69] = 1;
    a4[v69] = 1;
    return;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  do
  {
    if (v43 + 1 <= v40 && ((v48 = a5[v43 + 1] & 0xFFFFFC00, v42 == v44) || v48 <= (a5[v44] & 0xFFFFFC00)))
    {
      v47 = (a5[v43] & 0xFFFFFC00) + v48;
      v43 += 2;
    }

    else
    {
      if (v42 < (v44 + 2))
      {
        v45 = a5[v43] & 0xFFFFFC00;
        v46 = v44 + 1;
LABEL_51:
        v47 = (a5[v44] & 0xFFFFFC00) + v45;
        a5[v44] = v41 + (a5[v44] & 0x3FF);
        ++v43;
        v44 = v46;
        goto LABEL_58;
      }

      v46 = v44 + 1;
      v49 = a5[v44 + 1];
      v50 = v49 & 0xFFFFFC00;
      if (v43 <= v40)
      {
        v45 = a5[v43] & 0xFFFFFC00;
        if (v50 >= v45)
        {
          goto LABEL_51;
        }
      }

      v51 = a5[v44];
      a5[v44] = v41 + (v51 & 0x3FF);
      v47 = v50 + (v51 & 0xFFFFFC00);
      a5[v46] = v41 + (v49 & 0x3FF);
      v44 += 2;
    }

LABEL_58:
    a5[v42] = a5[v42] & 0x3FF | v47;
    ++v42;
    v41 += 1024;
  }

  while (v40 != v42);
  bzero(v70, 4 * a2 + 4);
  v71 = 2;
  a5[v16 - 2] &= 0x3FFu;
  v52 = (v16 - 3);
  if (v16 - 3 >= 0)
  {
    do
    {
      v53 = *(a5 + ((a5[v52] >> 8) & 0xFFFFFC)) >> 10;
      v54 = v53 + 1;
      a5[v52] = a5[v52] & 0x3FF | ((v53 + 1) << 10);
      v55 = a2 + 1;
      if (v53 + 1 >= a2)
      {
        do
        {
          v54 = v55 - 2;
          v56 = v70[v54];
          --v55;
        }

        while (!v56);
      }

      else
      {
        v56 = v70[v54];
        v55 = v53 + 2;
      }

      v70[v54] = v56 - 1;
      v70[v55] += 2;
    }

    while (v52-- > 0);
  }

  if (!a2)
  {
    v72 = 0;
    if (!a1)
    {
      return;
    }

    goto LABEL_78;
  }

  v58 = 0;
  v59 = a2;
  do
  {
    v60 = v70[v59];
    if (v60)
    {
      do
      {
        v61 = (v58 + 1);
        a4[a5[v58] & 0x3FFLL] = v59;
        LODWORD(v58) = v58 + 1;
        --v60;
      }

      while (v60);
    }

    else
    {
      v61 = v58;
    }

    v58 = v61;
    --v59;
  }

  while (v59);
  v72 = 0;
  if (a2 != 1)
  {
    v62 = 0;
    v63 = a2 + 1 - 2;
    v64 = v73;
    v65 = &v71;
    do
    {
      v66 = *v65++;
      v62 = 2 * (v66 + v62);
      *v64++ = v62;
      --v63;
    }

    while (v63);
  }

  if (a1)
  {
    do
    {
LABEL_78:
      v67 = *a4++;
      v68 = *(&v73[-1] + v67);
      *(&v73[-1] + v67) = v68 + 1;
      *a5++ = __rbit32(v68) >> -v67;
      --v10;
    }

    while (v10);
  }
}

void sub_29AB29C80(uint64_t a1)
{
  v2 = a1 + 4600;
  v3 = a1 + 2680;
  v4 = (a1 + 2967);
  v5 = 289;
  v6 = 288;
  while (1)
  {
    v7 = v6;
    *(a1 + 6052) = v6;
    if (v6 < 0x102)
    {
      break;
    }

    --v6;
    v8 = *v4--;
    --v5;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v5 = 257;
LABEL_6:
  v9 = 2999;
  v10 = 1;
  while (1)
  {
    v11 = v9 - 2967;
    *(a1 + 6056) = v9 - 2967;
    if ((v9 - 2967) < 2)
    {
      break;
    }

    if (*(a1 + v9--))
    {
      v10 = v9 - 2966;
      break;
    }
  }

  if (v5 != 288)
  {
    memmove((v3 + v5), (a1 + 2968), v10);
    v7 = *(a1 + 6052);
    v11 = *(a1 + 6056);
  }

  v13 = 0;
  v14 = v11 + v7;
  *(v2 + 60) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v15 = (a1 + 4772);
  do
  {
    v16 = *(v3 + v13);
    v17 = v13 + 1;
    while (v14 != v17)
    {
      v18 = *(v3 + v17++);
      if (v16 != v18)
      {
        v19 = v17 - 2;
        v20 = v17 - 1;
        goto LABEL_18;
      }
    }

    v19 = v14 - 1;
    v20 = v14;
LABEL_18:
    v21 = v20 - v13;
    if (*(v3 + v13))
    {
      if (v21 >= 4)
      {
        ++*(v2 + 4 * *(v3 + v13));
        *v15++ = v16;
        ++v13;
        do
        {
          v22 = v20 - v13 - 3;
          if (v22 >= 4)
          {
            v22 = 3;
          }

          ++*(a1 + 4664);
          *v15++ = (32 * v22) | 0x10;
          v13 += v22 + 3;
        }

        while (v20 - v13 > 2);
      }
    }

    else
    {
      if (v21 >= 0xB)
      {
        do
        {
          v23 = v21 - 11;
          if (v23 >= 0x80)
          {
            v23 = 127;
          }

          ++*(a1 + 4672);
          *v15++ = (32 * v23) | 0x12;
          v13 += v23 + 11;
          v21 = v20 - v13;
        }

        while (v20 - v13 > 0xA);
      }

      if (v21 >= 3)
      {
        ++*(a1 + 4668);
        *v15++ = 32 * v21 - 79;
        goto LABEL_35;
      }
    }

    if (v13 != v20)
    {
      v24 = v19 - v13 + 1;
      do
      {
        ++*(v2 + 4 * v16);
        *v15++ = v16;
        --v24;
      }

      while (v24);
      v20 = v19 + 1;
    }

LABEL_35:
    v13 = v20;
  }

  while (v20 != v14);
  *(a1 + 6064) = (v15 - a1 - 4772) >> 2;
  sub_29AB29784(0x13u, 7u, v2, (a1 + 4752), (a1 + 4676));
  v25 = 20;
  v26 = 0x12u;
  while ((v26 + 1) >= 5)
  {
    v27 = *(a1 + 4752 + *(&unk_29B6C25A8 + v26));
    --v25;
    --v26;
    if (v27)
    {
      goto LABEL_41;
    }
  }

  v25 = 4;
LABEL_41:
  *(a1 + 6060) = v25;
  v28 = *(a1 + 6052);
  if (v28 != 288)
  {
    v29 = *(a1 + 6056);

    memmove((a1 + 2968), (v3 + v28), v29);
  }
}

uint64_t sub_29AB29F38(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = 0uLL;
  memset(&v15[2], 0, 224);
  v4 = 4096;
  if (a2 < 0x1000)
  {
    v4 = a2;
  }

  memset(v15, 0, 32);
  if (a2)
  {
    do
    {
      v5 = *a1++;
      *(v15 + v5) = 1;
      --v4;
    }

    while (v4);
  }

  v6 = 0;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = v15[v6];
    v11 = vmovl_u8(*v10.i8);
    v12 = vmovl_high_u8(v10);
    v9 = vaddw_high_u16(v9, v12);
    v8 = vaddw_u16(v8, *v12.i8);
    v7 = vaddw_high_u16(v7, v11);
    v3 = vaddw_u16(v3, *v11.i8);
    ++v6;
  }

  while (v6 != 16);
  v13 = vaddvq_s32(vaddq_s32(vaddq_s32(v3, v8), vaddq_s32(v7, v9)));

  return sub_29AB2A038(v13, a3);
}

uint64_t sub_29AB2A038(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x4F)
  {
    return 3;
  }

  result = byte_29B6C1D50[a1];
  if (a2 <= 0xF)
  {
    if (a1 - 8 >= 0x48)
    {
      v4 = 7;
    }

    else
    {
      v4 = result;
    }

    if (a1 - 16 >= 0x40)
    {
      v5 = 5;
    }

    else
    {
      v5 = result;
    }

    if (a2 <= 9)
    {
      v4 = v5;
    }

    if (a1 - 45 >= 0x23)
    {
      v6 = 4;
    }

    else
    {
      v6 = result;
    }

    if (a2 <= 4)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_29AB2A0A8(int *a1, unsigned int a2)
{
  v2 = a1[21];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = 0;
  v4 = a1[20];
  v5 = 10;
  v6 = a1;
  do
  {
    v7 = v4 * v6[10];
    v8 = *v6++;
    v9 = v7 - v8 * v2;
    v13 = v8 * v2 >= v7;
    v10 = v8 * v2 - v7;
    if (v10 == 0 || !v13)
    {
      v10 = v9;
    }

    v3 += v10;
    --v5;
  }

  while (v5);
  v11 = v4 + v2;
  v12 = ((200 * v4) >> 9) * v2;
  v13 = v11 >= 0x2000 || a2 >> 4 >= 0x271;
  v14 = (v12 * (0x2000 - v11)) >> 13;
  if (v13)
  {
    LODWORD(v14) = 0;
  }

  if (v3 + v2 * (a2 >> 12) >= v14 + v12)
  {
    return 1;
  }

LABEL_13:
  v15 = 10;
  v16 = a1;
  do
  {
    v16[10] += *v16;
    *v16++ = 0;
    --v15;
  }

  while (v15);
  v17 = a1[21] + a1[20];
  a1[20] = 0;
  a1[21] = v17;
  return v15;
}

uint64_t sub_29AB2A174(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vaddq_s32(*(a1 + v2), v3);
    v2 += 16;
  }

  while (v2 != 1024);
  v4 = 0;
  v5 = vdupq_n_s32(vaddvq_s32(v3) >> 10);
  v6 = 0uLL;
  do
  {
    v6 = vsubq_s32(v6, vcgtq_u32(*(a1 + v4), v5));
    v4 += 16;
  }

  while (v4 != 1024);
  return sub_29AB2A038(vaddvq_s32(v6), a2);
}

_DWORD *sub_29AB2A1CC(_DWORD *result)
{
  v1 = result + 338;
  v2 = 10;
  do
  {
    *v1 += *(v1 - 10);
    *(v1 - 10) = 0;
    ++v1;
    --v2;
  }

  while (v2);
  result[349] += result[348];
  result[348] = 0;
  v3 = result + 2252403;
  v4 = 259;
  do
  {
    v3[259] += *v3;
    *v3++ = 0;
    --v4;
  }

  while (v4);
  return result;
}

unint64_t sub_29AB2A234(unsigned int *a1, unint64_t *a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, char a6, unsigned int a7, _BYTE *a8)
{
  v13 = a1 + 2252402;
  v14 = a1[2252921];
  sub_29AB2A978(a1, a3, a4);
  v80 = sub_29AB2AA20(a1);
  v15 = a4 + 257;
  if (a4 + 257 >= 0x4A768)
  {
    v15 = 304999;
  }

  v16 = v15 - a4;
  if (v15 >= a4)
  {
    v18 = 0;
    v19 = (v16 + 4) & 0x1FFFFFFFCLL;
    v20 = vdupq_n_s64(v16);
    v21 = &a1[2 * a4 + 1633109];
    do
    {
      v22 = vdupq_n_s64(v18);
      v23 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_29B430070)));
      if (vuzp1_s16(v23, *v20.i8).u8[0])
      {
        *(v21 - 4) = 0x80000000;
      }

      if (vuzp1_s16(v23, *&v20).i8[2])
      {
        *(v21 - 2) = 0x80000000;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v22, xmmword_29B433E10)))).i32[1])
      {
        *v21 = 0x80000000;
        v21[2] = 0x80000000;
      }

      v18 += 4;
      v21 += 8;
    }

    while (v19 != v18);
    v17 = a1 + 8;
    bzero(a1 + 8, 0x400uLL);
    if (!a4)
    {
      v24 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v17 = a1 + 8;
    bzero(a1 + 8, 0x400uLL);
  }

  v24 = a4 >> 11;
  v25 = a3;
  v26 = a4;
  do
  {
    v27 = *v25++;
    ++a1[v27 + 8];
    --v26;
  }

  while (v26);
LABEL_16:
  v28 = 0;
  v84 = 0;
  v29 = vdupq_n_s32(v24);
  v30 = 0uLL;
  do
  {
    v30 = vsubq_s32(v30, vcgtq_u32(*&v17[v28], v29));
    v28 += 4;
  }

  while (v28 != 256);
  v31 = vaddvq_s32(v30);
  if (v31 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = sub_29AB2A038(v32, a1[6]);
  v34 = 0;
  v35 = v33;
  v36 = a4;
  do
  {
    v37 = a1[v35 + 2252662];
    v34 += v37;
    v36 -= v37 * v35++;
  }

  while (v35 != 259);
  v38 = v36 & ~(v36 >> 31);
  v39 = v38 < 4 * v34;
  v40 = v34 > v38;
  v41 = 2;
  if (!v40)
  {
    v41 = v39;
  }

  v42 = &unk_29B6C1DA0 + 258 * v41;
  v43 = v42[v32];
  v44 = v42[257];
  if (a6)
  {
    goto LABEL_31;
  }

  v45 = 0;
  v46 = 0;
  v47 = a1[349];
  v48 = *v13;
  do
  {
    v49 = a1[v45 + 2252392] * v47;
    v50 = a1[v45 + 338] * v48;
    v51 = v50 - v49;
    if (v49 > v50)
    {
      v51 = v49 - v50;
    }

    v46 += v51;
    ++v45;
  }

  while (v45 != 10);
  v52 = (200 * v47 * v48) >> 9;
  if (v46 > 3 * v52)
  {
LABEL_31:
    v53 = 0;
    v54 = vdupq_n_s32(v43);
    do
    {
      *&a1[v53 + 2243105] = v54;
      v53 += 4;
    }

    while (v53 != 256);
    for (i = 0; i != 256; ++i)
    {
      a1[i + 2243364] = v44 + 16 * byte_29B6C1C26[byte_29B6C1910[i + 3]];
    }

    for (j = 0; j != 30; ++j)
    {
      a1[j + 2243620] = 16 * byte_29B6C1C43[j] + 78;
    }
  }

  else if (9 * v52 >= 4 * v46)
  {
    v65 = 2 * v46;
    if (2 * v46 <= 3 * v52)
    {
      v71 = a1 + 2243105;
      v72 = vdupq_n_s32(v43);
      if (v65 <= v52)
      {
        v76 = 0;
        v77.i64[0] = 0x300000003;
        v77.i64[1] = 0x300000003;
        do
        {
          *&v71[v76] = vshrq_n_u32(vmlaq_s32(v72, *&v71[v76], v77), 2uLL);
          v76 += 4;
        }

        while (v76 != 256);
        for (k = 0; k != 256; ++k)
        {
          a1[k + 2243364] = (v44 + 16 * byte_29B6C1C26[byte_29B6C1910[k + 3]] + 3 * a1[k + 2243364]) >> 2;
        }

        for (m = 0; m != 30; ++m)
        {
          a1[m + 2243620] = (3 * a1[m + 2243620] + 16 * byte_29B6C1C43[m] + 78) >> 2;
        }
      }

      else
      {
        for (n = 0; n != 256; n += 4)
        {
          *&v71[n] = vshrq_n_u32(vaddq_s32(*&v71[n], v72), 1uLL);
        }

        for (ii = 0; ii != 256; ++ii)
        {
          a1[ii + 2243364] = (a1[ii + 2243364] + v44 + 16 * byte_29B6C1C26[byte_29B6C1910[ii + 3]]) >> 1;
        }

        for (jj = 0; jj != 30; ++jj)
        {
          a1[jj + 2243620] = (a1[jj + 2243620] + 16 * byte_29B6C1C43[jj] + 78) >> 1;
        }
      }
    }

    else
    {
      v66 = 0;
      v67 = vdupq_n_s32(5 * v43);
      v68.i64[0] = 0x300000003;
      v68.i64[1] = 0x300000003;
      do
      {
        *&a1[v66 + 2243105] = vshrq_n_u32(vmlaq_s32(v67, *&a1[v66 + 2243105], v68), 3uLL);
        v66 += 4;
      }

      while (v66 != 256);
      for (kk = 0; kk != 256; ++kk)
      {
        a1[kk + 2243364] = (5 * (v44 + 16 * byte_29B6C1C26[byte_29B6C1910[kk + 3]]) + 3 * a1[kk + 2243364]) >> 3;
      }

      for (mm = 0; mm != 30; ++mm)
      {
        a1[mm + 2243620] = (3 * a1[mm + 2243620] + 80 * byte_29B6C1C43[mm] + 390) >> 3;
      }
    }
  }

  else
  {
    v61 = 0;
    v62 = vdupq_n_s32(3 * v43);
    do
    {
      *&a1[v61 + 2243105] = vshrq_n_u32(vaddq_s32(*&a1[v61 + 2243105], v62), 2uLL);
      v61 += 4;
    }

    while (v61 != 256);
    for (nn = 0; nn != 256; ++nn)
    {
      a1[nn + 2243364] = (3 * (v44 + 16 * byte_29B6C1C26[byte_29B6C1910[nn + 3]]) + a1[nn + 2243364]) >> 2;
    }

    for (i1 = 0; i1 != 30; ++i1)
    {
      a1[i1 + 2243620] = (a1[i1 + 2243620] + 48 * byte_29B6C1C43[i1] + 234) >> 2;
    }
  }

  v57 = -1;
  do
  {
    sub_29AB2AB34(a1, a4, a5);
    v58 = sub_29AB2AA20(a1);
    if (v13[520] + v58 > v57)
    {
      break;
    }

    memcpy(a1 + 2243652, a1 + 2243105, 0x88CuLL);
    sub_29AB2AD0C(a1, (a1 + 670));
    v57 = v58;
    --v14;
  }

  while (v14);
  *a8 = 0;
  if (v80 >= v57)
  {
    if (v58 >= v13[521] + v57)
    {
      memcpy(a1 + 2243105, a1 + 2243652, 0x88CuLL);
      sub_29AB2AB34(a1, a4, a5);
      sub_29AB2AD0C(a1, (a1 + 670));
    }

    v59 = 0;
  }

  else
  {
    sub_29AB2A978(a1, a3, a4);
    sub_29AB2AD0C(a1, (a1 + 670));
    LODWORD(v84) = a4;
    *a8 = 1;
    v59 = &v84;
  }

  return sub_29AB28EC0(a1, a2, a3, a4, v59, a7);
}

void sub_29AB2A978(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = (a1 + 32);
  bzero((a1 + 32), 0x500uLL);
  if (a3)
  {
    v7 = a3;
    do
    {
      v8 = *a2++;
      ++v6[v8];
      --v7;
    }

    while (v7);
  }

  ++*(a1 + 1056);
  sub_29AB29784(0x120u, 0xEu, v6, (a1 + 2680), (a1 + 1400));

  sub_29AB29784(0x20u, 0xFu, (a1 + 1184), (a1 + 2968), (a1 + 2552));
}

uint64_t sub_29AB2AA20(uint64_t a1)
{
  sub_29AB29C80(a1);
  bzero((a1 + 2680 + *(a1 + 6052)), (288 - *(a1 + 6052)));
  v2 = 0;
  LODWORD(result) = 3 * *(a1 + 6060) + 14;
  do
  {
    LODWORD(result) = result + (byte_29B6C1C13[v2] + *(a1 + 4752 + v2)) * *(a1 + 4752 + 4 * v2 - 152);
    ++v2;
  }

  while (v2 != 19);
  for (i = 0; i != 257; ++i)
  {
    LODWORD(result) = result + *(a1 + 2680 + 4 * i - 2648) * *(a1 + 2680 + i);
  }

  for (j = 0; j != 29; ++j)
  {
    LODWORD(result) = result + (byte_29B6C1C26[j] + *(a1 + 2937 + j)) * *(a1 + 2937 + 4 * j - 1877);
  }

  for (k = 0; k != 30; ++k)
  {
    result = result + (byte_29B6C1C43[k] + *(a1 + 2968 + k)) * *(a1 + 2968 + 4 * k - 1784);
  }

  return result;
}

void sub_29AB2AB34(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = 8 * a2 + 6532420;
  *(a1 + v5) = 0;
  v6 = a1 + 8972420;
  v7 = a1 + 8976796;
  v8 = a1 + 8974480;
  v9 = a1 + 8973444;
  v10 = a1 - 4;
  v11 = a2;
  do
  {
    v12 = v5 - 8;
    v13 = (a1 + v5 - 8);
    v14 = *(a3 - 4);
    v15 = *(a3 - 2);
    v4 += *(v6 + 4 * v15);
    *(v10 + v5) = (v15 << 9) | 1;
    if (v14)
    {
      v16 = 4 * ~v14;
      v17 = 3;
      v18 = v16;
      do
      {
        v19 = *(a3 + v18 + 2);
        v20 = *(v8 + 4 * *(v7 + v19));
        v21 = *(a3 + v18);
        v22 = v19 << 9;
        do
        {
          v23 = *(v9 + 4 * v17) + v20 + v13[2 * v17];
          if (v23 < v4)
          {
            *(v10 + v5) = v17 | v22;
            v4 = v23;
          }

          ++v17;
        }

        while (v17 <= v21);
        v18 += 4;
      }

      while (v18 != -4);
      a3 += v16;
    }

    else
    {
      a3 -= 4;
    }

    *v13 = v4;
    v5 -= 8;
  }

  while (v12 != 6532420);
  v24 = a1 + 32;
  bzero((a1 + 32), 0x500uLL);
  v25 = a1 + 6532420;
  do
  {
    v26 = *(v25 + 4);
    v27 = v26 & 0x1FF;
    v28 = v26 >> 9;
    if (v27 == 1)
    {
      v29 = (v24 + 4 * v28);
      v27 = 1;
    }

    else
    {
      v30 = v24 + 4 * byte_29B6C1910[v27];
      ++*(v30 + 1028);
      v29 = (a1 + 1184 + 4 * *(v7 + v28));
    }

    ++*v29;
    v25 += 8 * v27;
  }

  while (v25 != a1 + 6532420 + 8 * v11);
  ++*(a1 + 1056);
  sub_29AB29784(0x120u, 0xEu, (a1 + 32), (a1 + 2680), (a1 + 1400));

  sub_29AB29784(0x20u, 0xFu, (a1 + 1184), (a1 + 2968), (a1 + 2552));
}

uint64_t sub_29AB2AD0C(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 256; ++i)
  {
    if (*(a2 + i))
    {
      v3 = 16 * *(a2 + i);
    }

    else
    {
      v3 = 208;
    }

    *(result + 8972420 + 4 * i) = v3;
  }

  for (j = 0; j != 256; ++j)
  {
    v5 = *(&unk_29B6C1910 + j + 3);
    v6 = *(v5 + a2 + 257);
    if (!*(v5 + a2 + 257))
    {
      v6 = 13;
    }

    *(result + 8973456 + 4 * j) = 16 * (v6 + byte_29B6C1C26[v5]);
  }

  v7 = 0;
  v8 = a2 + 288;
  do
  {
    v9 = *(v8 + v7);
    if (!*(v8 + v7))
    {
      v9 = 10;
    }

    *(result + 8974480 + 4 * v7) = 16 * (v9 + byte_29B6C1C43[v7]);
    ++v7;
  }

  while (v7 != 30);
  return result;
}

uint64_t sub_29AB2ADD8(char *__src, uint64_t a2, size_t a3, unint64_t a4)
{
  if (a2)
  {
    v5 = __src;
    v6 = &__src[a2];
    v7 = a3 + a4;
    v8 = a3;
    while (1)
    {
      v9 = v6 - v5 >= 0x10000 ? 0xFFFFLL : v6 - v5;
      if (v7 - v8 < v9 + 5)
      {
        break;
      }

      *v8 = v6 - v5 < 0x10000;
      *(v8 + 1) = v9;
      *(v8 + 3) = ~v9;
      v10 = v8 + 5;
      memcpy((v8 + 5), v5, v9);
      v8 = v10 + v9;
      v5 += v9;
      if (v5 == v6)
      {
        return v8 - a3;
      }
    }

    return 0;
  }

  if (a4 < 5)
  {
    return 0;
  }

  *a3 = 1;
  *(a3 + 1) = -65536;
  return 5;
}

uint64_t sub_29AB2AEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!dword_2A17482A0)
  {
    v6 = 0;
    v7 = 7;
    v8 = &dword_29F296258;
    do
    {
      v9 = *(v8 - 1);
      v15 = 0;
      v14 = 4;
      if (sysctlbyname(v9, &v15, &v14, 0, 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14 == 4;
      }

      if (v10 && v15 == 1)
      {
        v6 |= *v8;
      }

      v8 += 4;
      --v7;
    }

    while (v7);
    dword_2A17482A0 = v6 | 0x80000000;
  }

  v12 = sub_29AB2AFA8;
  if ((dword_2A17482A0 & 0x10) == 0)
  {
    v12 = sub_29AB2B19C;
  }

  off_2A1B6C3F8[0] = v12;
  return (v12)(a1, a2, a3);
}