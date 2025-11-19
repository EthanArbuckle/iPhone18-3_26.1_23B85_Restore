id sub_1AF81B794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFC048();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1AFDFC128();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1AFDFBF58();

    swift_willThrow();
    v13 = sub_1AFDFC128();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_1AF81B8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF81B94C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF81F62C(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF81B9D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF81BA24(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v4 = a4;
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v19, 0, 14);
      v7 = v19;
      v6 = v19;
      goto LABEL_19;
    }

    v8 = a3;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v9 - sub_1AFDFBDE8();
    }

    v12 = v10 - v9;
  }

  else
  {
    if (!v5)
    {
      v19[0] = a1;
      LOWORD(v19[1]) = a2;
      BYTE2(v19[1]) = BYTE2(a2);
      BYTE3(v19[1]) = BYTE3(a2);
      BYTE4(v19[1]) = BYTE4(a2);
      BYTE5(v19[1]) = BYTE5(a2);
      v6 = v19 + BYTE6(a2);
      v7 = v19;
      goto LABEL_19;
    }

    v8 = a3;
    v14 = a1;
    v11 = sub_1AFDFBDB8();
    if (v11)
    {
      v11 = v11 + v14 - sub_1AFDFBDE8();
    }

    v12 = (a1 >> 32) - v14;
  }

  v15 = sub_1AFDFBDD8();
  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = (v16 + v11);
  if (v11)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v7 = v11;
  a3 = v8;
  a4 = v4;
LABEL_19:
  sub_1AF816C78(v7, v6, a3, a4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AF81BC00()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF81BC4C()
{
  v0 = sub_1AFDFCEC8();

  v1 = [v0 pathExtension];

  v2 = sub_1AFDFCEF8();
  v4 = v3;

  v5 = v2 == 1852797802 && v4 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v2 == 0x7473696C70 && v4 == 0xE500000000000000;
    if (v7 || (sub_1AFDFEE28() & 1) != 0)
    {

      return 1;
    }

    else if (v2 == 0x6E6962786676 && v4 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1AFDFEE28();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 5;
      }
    }
  }
}

uint64_t sub_1AF81BDA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  size[1] = *MEMORY[0x1E69E9840];
  v27 = a4 | (a3 > 3028);
  v6 = _dyld_image_count();
  if (!v6)
  {
LABEL_39:

    return 0;
  }

  v7 = v6;
  while (1)
  {
    image_header = _dyld_get_image_header(--v7);
    if (image_header)
    {
      v9 = image_header;
      size[0] = 0;
      v10 = sub_1AFDFCFB8();
      v11 = getsectiondata(v9, "__DATA_CONST", (v10 + 32), size);

      if (v11)
      {
        if (v27)
        {
          if (size[0] + 7 >= 0xF)
          {
            v12 = 8 * (size[0] / 8);
            while (1)
            {
              if (*v11 == 0x6D61676963766678 && *(v11 + 1))
              {
                v13 = *(v11 + 2);
                if (sub_1AFDFD0E8() == a1 && v14 == a2)
                {

                  return v13;
                }

                v16 = sub_1AFDFEE28();

                if (v16)
                {

                  return v13;
                }
              }

              v11 += 8;
              v12 -= 8;
              if (!v12)
              {
                goto LABEL_3;
              }
            }
          }

          goto LABEL_3;
        }

        v17 = sub_1AFDFCFB8();
        v18 = getsectbynamefromheader_64(v9, "__DATA_CONST", (v17 + 32));

        if (v18)
        {
          align = v18->align;
          v20 = 1 << align;
          if ((1 << align) <= 0x10)
          {
            v20 = 16;
          }

          if (align <= 0x3F)
          {
            v21 = v20;
          }

          else
          {
            v21 = 16;
          }
        }

        else
        {
          v21 = 16;
        }

        if ((size[0] & (v21 - 1)) != 0)
        {
          goto LABEL_39;
        }

        if (v21 <= size[0])
        {
          break;
        }
      }
    }

LABEL_3:
    if (!v7)
    {
      goto LABEL_39;
    }
  }

  v22 = size[0] / v21;
  while (1)
  {
    if (!*v11)
    {
      goto LABEL_28;
    }

    if (sub_1AFDFD0E8() == a1 && v23 == a2)
    {
      break;
    }

    v25 = sub_1AFDFEE28();

    if (v25)
    {
      goto LABEL_37;
    }

LABEL_28:
    v11 += v21;
    if (!--v22)
    {
      goto LABEL_3;
    }
  }

LABEL_37:

  return *(v11 + 1);
}

void sub_1AF81C078(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unint64_t a12, unsigned __int8 a13)
{
  v291 = a8;
  v292 = a7;
  v275 = a6;
  v278 = a5;
  v279 = a4;
  i = a3;
  v277 = a2;
  v281 = a1;
  LODWORD(v282) = a13;
  v13 = a9;
  v297 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v289 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v288 = &v270[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v287 = sub_1AFDFC298();
  v274 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287, v17);
  v286 = &v270[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1AFDFC318();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v270[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v284 = sub_1AFDFC128();
  v285 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284, v24);
  v26 = &v270[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AF81B9D0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v270[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v270[-v34];
  LODWORD(v290) = a10;
  if ((a10 & 1) == 0 && a9 < 1041)
  {
    v36 = 0;
    v37 = 0;
    v38 = v280;
    goto LABEL_25;
  }

  v276 = a9;
  v39 = *(v285 + 48);
  if (!v279)
  {
    v53 = v278;
    if (v39(v278, 1, v284, v33) == 1 || (v273 = [objc_opt_self() defaultManager], sub_1AF456C4C(v53, v35), (v39)(v35, 1, v284), sub_1AFDFC0D8(), v272 = sub_1AFDFCEC8(), , (*(v285 + 8))(v35, v284), v54 = v273, v55 = v272, v271 = objc_msgSend(v273, sel_isReadableFileAtPath_, v272), v54, v55, !v271))
    {
      v36 = 0;
      v37 = 0;
      v38 = v280;
      v13 = v276;
      goto LABEL_25;
    }
  }

  LOBYTE(v295) = 0;
  v40 = v278;
  v41 = v284;
  if (v39(v278, 1, v284, v33) == 1)
  {
    sub_1AFDFC308();
    v42 = sub_1AFDFC2B8();
    v44 = v43;
    (*(v20 + 8))(v23, v19);
    v45 = NSTemporaryDirectory();
    if (!v45)
    {
      sub_1AFDFCEF8();
      v45 = sub_1AFDFCEC8();
    }

    *&v296 = v42;
    *(&v296 + 1) = v44;
    MEMORY[0x1B2718AE0](0x62696C79642ELL, 0xE600000000000000);
    v46 = sub_1AFDFCEC8();

    v47 = [(NSString *)v45 stringByAppendingPathComponent:v46];

    sub_1AFDFCEF8();
    sub_1AFDFC018();

    v48 = sub_1AFDFC048();
    *&v296 = 0;
    v49 = [v279 writeToURL:v48 options:0 originalContentsURL:0 error:&v296];

    v50 = v280;
    v13 = v276;
    v51 = v284;
    if (!v49)
    {
      v61 = v296;
      v57 = sub_1AFDFBF58();

      swift_willThrow();
      goto LABEL_18;
    }

    LOBYTE(v295) = 1;
    v52 = v296;
  }

  else
  {
    sub_1AF456C4C(v40, v30);
    (v39)(v30, 1, v41);
    (*(v285 + 32))(v26, v30, v41);
    v50 = v280;
    v13 = v276;
    v51 = v41;
  }

  sub_1AFDFC0D8();
  v56 = sub_1AF456AC0();
  v38 = v50;
  if (!v50)
  {
    v58 = v56;
    type metadata accessor for CodeLoader();
    swift_allocObject();
    sub_1AF45207C();
    v59 = v51;
    v37 = v60;
    *(v60 + 80) = v58;
    v36 = 1;
    *(v60 + 72) = 1;

    sub_1AF81188C(&v295);
    (*(v285 + 8))(v26, v59);
    goto LABEL_25;
  }

  v57 = v50;
LABEL_18:
  v38 = 0;
  sub_1AF81188C(&v295);
  (*(v285 + 8))(v26, v51);
  *&v296 = 0;
  *(&v296 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF36580);
  swift_getErrorValue();
  sub_1AFDFEDD8();
  v62 = v296;
  if (v282)
  {
    sub_1AF4567E0();
    swift_allocError();
    *v63 = v62;
    *(v63 + 16) = 96;
    swift_willThrow();

    return;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v64 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v262 = v64;
    swift_once();
    v64 = v262;
  }

  *&v296 = 0;
  sub_1AF0D4F18(v64, &v296, v62, *(&v62 + 1));

  v37 = 0;
  v36 = 1;
LABEL_25:
  if (i)
  {
    v65 = sub_1AF456AC0();
    if (v38)
    {
LABEL_181:

      return;
    }

    v66 = v65;
    type metadata accessor for CodeLoader();
    swift_allocObject();
    sub_1AF45207C();
    v68 = v67;
    *(v67 + 80) = v66;
    *(v67 + 72) = 1;

    v37 = v68;
  }

  type metadata accessor for ScriptTrampolineCodeGen();
  swift_initStackObject();
  v69 = v291;

  v71 = sub_1AFB0F318(v70, v292, v69);

  v278 = v71;
  v73 = *(v71 + 40);
  v72 = *(v71 + 48);
  if ((v290 & 1) == 0 && v13 <= 2000)
  {
    if (v13 > 1059)
    {
      *&v296 = 0;
      *(&v296 + 1) = 0xE000000000000000;

      sub_1AFDFE218();

      *&v296 = 0xD000000000000017;
      *(&v296 + 1) = 0x80000001AFF36410;
      MEMORY[0x1B2718AE0](v73, v72);
      v74 = *(&v296 + 1);
      v75 = v296;
    }

    else
    {
      v74 = 0x80000001AFF36560;

      v75 = 0xD000000000000012;
    }

    i = v75;
    if (v37)
    {
      v105 = *(v37 + 80);
      v106 = sub_1AFDFCFB8();

      v107 = dlsym(v105, (v106 + 32));

      if (v107)
      {
        v107(v108);

        goto LABEL_63;
      }

      LODWORD(v292) = v36;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v296 = 0;
      *(&v296 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      strcpy(&v296, "couldn't find ");
      HIBYTE(v296) = -18;
      MEMORY[0x1B2718AE0](i, v74);
      v138 = v296;
      v139 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v265 = v139;
        swift_once();
        v139 = v265;
      }

      *&v296 = 0;
      sub_1AF0D4F18(v139, &v296, v138, *(&v138 + 1));

      v36 = v292;
    }

    else
    {
      v109 = sub_1AFDFCFB8();
      v110 = sub_1AF38C664((v109 + 32));

      if (v110)
      {
        v110(v111);
LABEL_63:
        swift_getObjCClassMetadata();
        goto LABEL_64;
      }

      v148 = sub_1AFDFCFB8();
      v149 = objc_getClass((v148 + 32));

      if (v149)
      {
        sub_1AFDFDFB8();
        swift_unknownObjectRelease();
        sub_1AF449D40(&v296, &v295);
        sub_1AF81F45C();
        if (swift_dynamicCast())
        {
LABEL_64:
          sub_1AF0D4478(0, &qword_1EB633BB0);
          if (swift_dynamicCastMetatype())
          {

            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v113 = [ObjCClassFromMetadata performSelector_];
            v114 = ObjCClassFromMetadata;
            if (v113)
            {
              swift_unknownObjectRetain();
              *&v296 = v113;
              sub_1AF81F3E4();
              if (swift_dynamicCast())
              {
                v276 = v13;
                v277 = v37;
                v115 = v295;
                sub_1AF442658();
                v116 = sub_1AFDFE598();
                v117 = 0;
                v118 = 1 << *(v115 + 32);
                v119 = -1;
                if (v118 < 64)
                {
                  v119 = ~(-1 << v118);
                }

                v120 = v119 & *(v115 + 64);
                v121 = (v118 + 63) >> 6;
                v279 = v116;
                for (i = (v116 + 64); v120; v38 = v122)
                {
                  v122 = v38;
                  v123 = __clz(__rbit64(v120));
                  v120 &= v120 - 1;
                  v124 = v123 | (v117 << 6);
LABEL_75:
                  v128 = (*(v115 + 48) + 16 * v124);
                  v130 = *v128;
                  v129 = v128[1];
                  v131 = *(*(v115 + 56) + 8 * v124);

                  v132 = [v131 pointerValue];
                  *(i + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
                  v133 = v279;
                  v134 = (*(v279 + 6) + 16 * v124);
                  *v134 = v130;
                  v134[1] = v129;
                  *(v133[7] + 8 * v124) = v132;
                  ++v133[2];
                }

                v125 = v117 << 6;
                while (1)
                {
                  v126 = v117 + 1;
                  if (v117 + 1 >= v121)
                  {
                    break;
                  }

                  v127 = *(v115 + 8 * v117 + 72);
                  v125 += 64;
                  ++v117;
                  if (v127)
                  {
                    v122 = v38;
                    v120 = (v127 - 1) & v127;
                    v124 = __clz(__rbit64(v127)) + v125;
                    v117 = v126;
                    goto LABEL_75;
                  }
                }

                v84 = v279;
                goto LABEL_111;
              }
            }

            v135 = 0x80000001AFF36530;
            if (v282)
            {
              sub_1AF4567E0();
              swift_allocError();
              v137 = 0xD000000000000022;
LABEL_106:
              *v136 = v137;
LABEL_142:
              *(v136 + 8) = v135;
              *(v136 + 16) = 96;
              swift_willThrow();
LABEL_180:

              goto LABEL_181;
            }

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v140 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v266 = v140;
              swift_once();
              v140 = v266;
            }

            *&v296 = 0;
            v141 = 0xD000000000000022;
LABEL_178:
            v142 = v135;
LABEL_179:
            sub_1AF0D4F18(v140, &v296, v141, v142);
            goto LABEL_180;
          }
        }
      }

      else
      {
        strcpy(&v296, "VFXAssets.");
        BYTE11(v296) = 0;
        HIDWORD(v296) = -369098752;
        MEMORY[0x1B2718AE0](v73, v72);
        v244 = sub_1AFDFCEC8();

        v245 = NSClassFromString(v244);

        if (v245)
        {
          goto LABEL_63;
        }

        *&v296 = 0x2E6E69616DLL;
        *(&v296 + 1) = 0xE500000000000000;
        MEMORY[0x1B2718AE0](v73, v72);
        v246 = sub_1AFDFCEC8();

        v247 = NSClassFromString(v246);

        if (v247)
        {
          goto LABEL_63;
        }

        v248 = [objc_opt_self() mainBundle];
        v249 = [v248 bundleIdentifier];

        if (v249)
        {
          v280 = v74;
          v250 = sub_1AFDFCEF8();
          v252 = v251;

          *&v296 = v250;
          *(&v296 + 1) = v252;
          *&v295 = 46;
          *(&v295 + 1) = 0xE100000000000000;
          sub_1AF4486E4();
          v253 = sub_1AFDFDE98();

          v254 = *(v253 + 16);
          if (v254)
          {
            v255 = (v253 + 16 + 16 * v254);
            v257 = *v255;
            v256 = v255[1];

            *&v296 = v257;
            *(&v296 + 1) = v256;
            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            MEMORY[0x1B2718AE0](v73, v72);
            v258 = sub_1AFDFCEC8();

            v259 = NSClassFromString(v258);

            v74 = v280;
            if (v259)
            {
              goto LABEL_63;
            }
          }

          else
          {

            v74 = v280;
          }
        }

        strcpy(&v296, "VFXCoreTests.");
        HIWORD(v296) = -4864;
        MEMORY[0x1B2718AE0](v73, v72);
        v260 = sub_1AFDFCEC8();

        v261 = NSClassFromString(v260);

        if (v261)
        {
          goto LABEL_63;
        }
      }
    }

    if (v13 <= 1008)
    {

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v140 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v264 = v140;
        swift_once();
        v140 = v264;
      }

      *&v296 = 0;
      v141 = 0xD000000000000032;
      v142 = 0x80000001AFF364D0;
      goto LABEL_179;
    }

    if (!v36)
    {
      *&v296 = 0;
      *(&v296 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00207373616C63);
      MEMORY[0x1B2718AE0](v73, v72);

      MEMORY[0x1B2718AE0](0x626D797320726F20, 0xEB00000000206C6FLL);
      MEMORY[0x1B2718AE0](i, v74);

      v146 = "__vfx_get_effect_class_";
      v147 = 0xD00000000000009FLL;
      goto LABEL_133;
    }

    *&v296 = 0;
    *(&v296 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36320);
    MEMORY[0x1B2718AE0](i, v74);
LABEL_98:

    v146 = "missing symbol: ";
    v147 = 0xD000000000000090;
LABEL_133:
    MEMORY[0x1B2718AE0](v147, v146 | 0x8000000000000000);
LABEL_140:
    v135 = *(&v296 + 1);
    v220 = v296;
    if ((v282 & 1) == 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v221 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v263 = v221;
        swift_once();
        v221 = v263;
      }

      *&v296 = 0;
      sub_1AF0D4F18(v221, &v296, v220, v135);

      goto LABEL_181;
    }

    sub_1AF4567E0();
    swift_allocError();
    *v136 = v220;
    goto LABEL_142;
  }

  *&v296 = 0;
  *(&v296 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v296 = 0xD000000000000017;
  *(&v296 + 1) = 0x80000001AFF362E0;
  MEMORY[0x1B2718AE0](v73, v72);
  v76 = v296;
  if ((v290 & 1) != 0 || v13 > 2042)
  {
    v82 = *(v278 + 40);
    v83 = *(v278 + 48);

    v81 = sub_1AF81BDA4(v82, v83, v13, v290 & 1);

    if (v81)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

  if (!v37)
  {
    v143 = sub_1AFDFCFB8();
    v144 = sub_1AF38C664((v143 + 32));

    if (!v144)
    {
      goto LABEL_96;
    }

    v81 = v144(v145);
    if (v81)
    {
      goto LABEL_39;
    }

LABEL_94:
    if ((v290 & 1) != 0 || v13 > 2043)
    {

      v135 = 0x80000001AFF36300;
      if (v282)
      {
        sub_1AF4567E0();
        swift_allocError();
        v137 = 0xD00000000000001CLL;
        goto LABEL_106;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v140 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v268 = v140;
        swift_once();
        v140 = v268;
      }

      *&v296 = 0;
      v141 = 0xD00000000000001CLL;
      goto LABEL_178;
    }

LABEL_96:
    if (v36)
    {
LABEL_97:
      *&v296 = 0;
      *(&v296 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36320);
      MEMORY[0x1B2718AE0](v76, *(&v76 + 1));
      goto LABEL_98;
    }

LABEL_139:
    *&v296 = 0;
    *(&v296 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v296 = 0xD000000000000010;
    *(&v296 + 1) = 0x80000001AFF36320;
    MEMORY[0x1B2718AE0](v76, *(&v76 + 1));

    goto LABEL_140;
  }

  v77 = *(v37 + 80);
  v78 = sub_1AFDFCFB8();

  v79 = dlsym(v77, (v78 + 32));

  if (!v79)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v296 = 0;
    *(&v296 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(&v296, "couldn't find ");
    HIBYTE(v296) = -18;
    MEMORY[0x1B2718AE0](v76, *(&v76 + 1));
    v218 = v296;
    v219 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v267 = v219;
      swift_once();
      v219 = v267;
    }

    *&v296 = 0;
    sub_1AF0D4F18(v219, &v296, v218, *(&v218 + 1));

    if (v36)
    {
      goto LABEL_97;
    }

    goto LABEL_139;
  }

  v81 = v79(v80);

  if (!v81)
  {
    goto LABEL_94;
  }

LABEL_39:
  v276 = v13;
  v277 = v37;

  v84 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
  if (*v81)
  {
    v85 = v81 + 2;
    while (1)
    {
      v88 = *(v85 - 1);
      v89 = sub_1AFDFD0E8();
      v91 = v89;
      v92 = v90;
      if (!v88)
      {
        v99 = sub_1AF419914(v89, v90);
        v101 = v100;

        if (v101)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v296 = v84;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AF84C7A0();
            v84 = v296;
          }

          sub_1AF6B234C(v99, v84);
        }

        goto LABEL_42;
      }

      v93 = swift_isUniquelyReferenced_nonNull_native();
      *&v296 = v84;
      v94 = sub_1AF419914(v91, v92);
      v96 = v95;
      v97 = v84[2] + ((v95 & 1) == 0);
      if (v84[3] < v97)
      {
        break;
      }

      if (v93)
      {
        goto LABEL_52;
      }

      v104 = v94;
      sub_1AF84C7A0();
      v94 = v104;
      if ((v96 & 1) == 0)
      {
LABEL_53:
        v84 = v296;
        *(v296 + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v103 = (v84[6] + 16 * v94);
        *v103 = v91;
        v103[1] = v92;
        *(v84[7] + 8 * v94) = v88;
        ++v84[2];
        goto LABEL_42;
      }

LABEL_41:
      v86 = v94;

      v84 = v296;
      *(*(v296 + 56) + 8 * v86) = v88;
LABEL_42:
      v87 = *v85;
      v85 += 2;
      if (!v87)
      {
        goto LABEL_111;
      }
    }

    sub_1AF83B5C8(v97, v93);
    v94 = sub_1AF419914(v91, v92);
    if ((v96 & 1) != (v98 & 1))
    {
      sub_1AFDFF1A8();
      __break(1u);
      return;
    }

LABEL_52:
    if ((v96 & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_41;
  }

LABEL_111:
  v279 = v84;
  v150 = v275;
  if (v275)
  {
    type metadata accessor for MetalAPICodeLoader();
    v151 = swift_allocObject();
    (*(v285 + 56))(v151 + OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL, 1, 1, v284);
    sub_1AF45207C();
    v153 = v152;
    *(v152 + 88) = v150;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v153 + 48) = CFXMTLCreateSystemDefaultDevice();
    swift_unknownObjectRelease();
    v154 = v281;
    v155 = *(v281 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v156 = *(v153 + 64);
    *(v153 + 56) = *(v281 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v273 = v153;
    *(v153 + 64) = v155;
    v157 = v155;
  }

  else
  {
    v273 = 0;
    v154 = v281;
  }

  v275 = sub_1AF8119B8(v154, v292, v291, v282 & 1);

  v158 = sub_1AFCDABE4();

  v280 = v38;
  if (!v158)
  {
    type metadata accessor for ScriptCompilerSystem();
    swift_allocObject();
    v158 = sub_1AFA5C588();
  }

  v285 = HIDWORD(a12) & 1;
  v159 = MEMORY[0x1E69E7CD0];
  *(v158 + 16) = v154;
  v294 = v159;
  LOBYTE(v296) = BYTE4(a12) & 1;
  i = a12;
  v160 = v290;
  v161 = v158;
  v162 = v291;
  v284 = a11;
  v163 = v276;
  v164 = v277;
  v165 = v273;
  sub_1AF81A254(v292, v291, v276, v290 & 1, v277, v275, v273, v279, a11, &v294, a12 | ((BYTE4(a12) & 1) << 32), sub_1AF70335C, sub_1AF5B24F0, sub_1AF5C5E08, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, sub_1AF5C5E08, sub_1AF8D6420, sub_1AF703884, sub_1AF6FCB70, sub_1AFD2411C, sub_1AF81FD74, sub_1AF81FDB0, sub_1AFD36A60, sub_1AFD38228);
  LOBYTE(v296) = v285;
  v166 = v285;
  v167 = v292;
  v168 = v164;
  v169 = v164;
  v170 = v275;
  sub_1AF81A254(v292, v162, v163, v160 & 1, v169, v275, v165, v279, a11, &v294, a12 | (v285 << 32), sub_1AF70471C, sub_1AF5B2478, sub_1AF5C5E08, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, sub_1AF5C5E08, sub_1AF8D6198, sub_1AF7044D4, sub_1AF6FCB34, sub_1AFD23C24, sub_1AF81FC5C, sub_1AF81FC98, sub_1AFD38328, sub_1AFD39AF0);
  LOBYTE(v296) = v166;
  v171 = i;
  v172 = i | (v166 << 32);
  v173 = v160 & 1;
  v174 = v160;
  v175 = v284;
  v176 = v167;
  v177 = v162;
  v178 = v168;
  v277 = v168;
  v179 = v168;
  v180 = v273;
  v181 = v279;
  sub_1AF8177CC(v176, v177, v163, v173, v179, v170, v273, v279, v284, &v294, v172);
  LOBYTE(v296) = v285;
  v182 = v174 & 1;
  v183 = v291;
  sub_1AF818CCC(v292, v291, v163, v182, v178, v170, v180, v181, v175, &v294, v171 | (v285 << 32));
  LOBYTE(v296) = v285;
  v269 = v171 | (v285 << 32);
  LOBYTE(v181) = v290;
  v184 = v292;
  v185 = v183;
  v186 = v183;
  v187 = v163;
  v188 = v163;
  v189 = v277;
  v190 = v275;
  sub_1AF81A254(v292, v186, v188, v290 & 1, v277, v275, v180, v279, v175, &v294, v269, sub_1AF704984, sub_1AF5B2568, sub_1AF5C5E08, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, sub_1AF5C5E08, sub_1AF8D5A00, sub_1AF70473C, sub_1AF6FCABC, sub_1AFD2372C, sub_1AF81F8AC, sub_1AF81F8E8, sub_1AFD43440, sub_1AFD44C10);
  LOBYTE(v296) = v285;
  v191 = v189;
  v192 = v190;
  v193 = v190;
  v194 = v180;
  v195 = v180;
  v196 = v279;
  sub_1AF81A254(v184, v185, v187, v181 & 1, v191, v192, v194, v279, v175, &v294, i | (v285 << 32), sub_1AF703D7C, sub_1AF5B2310, sub_1AF5C5E08, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, sub_1AF5C5E08, sub_1AF8D5778, sub_1AF7033F4, sub_1AF6FCA80, sub_1AFD23234, sub_1AF81F794, sub_1AF81F7D0, sub_1AFD4744C, sub_1AFD48C2C);
  LOBYTE(v296) = v285;
  v197 = i;
  v198 = v185;
  v199 = v277;
  sub_1AF81A254(v184, v198, v187, v181 & 1, v277, v193, v195, v196, v284, &v294, i | (v285 << 32), sub_1AF703D5C, sub_1AF5B2298, sub_1AF5C5E08, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, sub_1AF5C5E08, sub_1AF8D54F0, sub_1AF70363C, sub_1AF6FCA44, sub_1AFD22D3C, sub_1AF81F67C, sub_1AF81F6B8, sub_1AFD4B488, sub_1AFD4CC70);
  LOBYTE(v296) = v285;
  v200 = v196;
  v276 = v161;
  sub_1AF81A254(v184, v291, v187, v181 & 1, v199, v275, v195, v196, v284, &v294, v197 | (v285 << 32), sub_1AF703D3C, sub_1AF5B2220, sub_1AF5C5E08, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, sub_1AF5C44B0, sub_1AF8D5268, sub_1AF703AF4, sub_1AF6FCA08, sub_1AFD22844, sub_1AF81F514, sub_1AF81F550, sub_1AFD4F4D4, sub_1AFD50CA4);
  if (v195)
  {
    v201 = *(v195 + 88);
    v202 = v280;
    if (v201)
    {
      v203 = [v201 functionNames];
      v204 = sub_1AFDFD418();

      v205 = *(v204 + 16);
      v290 = v204;
      if (v205)
      {
        v206 = 0;
        v207 = v204 + 40;
        v208 = -v205;
        v209 = MEMORY[0x1E69E7CC0];
        v285 = v204 + 40;
        do
        {
          v210 = (v207 + 16 * v206++);
          while (1)
          {
            v211 = *(v210 - 1);
            v212 = *v210;
            *&v296 = v211;
            *(&v296 + 1) = v212;
            *&v295 = v292;
            *(&v295 + 1) = v291;

            MEMORY[0x1B2718AE0](95, 0xE100000000000000);
            sub_1AF4486E4();
            v213 = sub_1AFDFDF18();

            if (v213)
            {
              break;
            }

            v210 += 2;
            ++v206;
            if (v208 + v206 == 1)
            {
              goto LABEL_149;
            }
          }

          v214 = swift_isUniquelyReferenced_nonNull_native();
          v293 = v209;
          if ((v214 & 1) == 0)
          {
            sub_1AFC05CE4(0, *(v209 + 16) + 1, 1);
            v209 = v293;
          }

          v216 = *(v209 + 16);
          v215 = *(v209 + 24);
          if (v216 >= v215 >> 1)
          {
            sub_1AFC05CE4(v215 > 1, v216 + 1, 1);
            v209 = v293;
          }

          *(v209 + 16) = v216 + 1;
          v217 = v209 + 16 * v216;
          *(v217 + 32) = v211;
          *(v217 + 40) = v212;
          v207 = v285;
        }

        while (v208 + v206);
      }

      else
      {
        v209 = MEMORY[0x1E69E7CC0];
      }

LABEL_149:

      v202 = v280;
      v200 = v279;
    }

    else
    {
      v209 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v209 = MEMORY[0x1E69E7CC0];
    v202 = v280;
  }

  v222 = v200[2] + *(v209 + 16);
  *&v296 = sub_1AF420554(0, v222 & ~(v222 >> 63), 0, MEMORY[0x1E69E7CC0]);

  sub_1AF490474(v223);
  sub_1AF48FAF8(v209);
  v291 = *(v296 + 16);
  if (v291)
  {
    v280 = v202;
    v224 = 0;
    v272 = v296;
    v290 = v296 + 32;
    v225 = v294;
    v226 = v294 + 56;
    v284 = 0x80000001AFF363E0;
    i = v274 + 32;
    v282 = xmmword_1AFE431C0;
    v285 = v294 + 56;
    v281 = v294;
    do
    {
      v227 = (v290 + 16 * v224);
      v229 = *v227;
      v228 = v227[1];
      if (*(v225 + 16))
      {
        sub_1AFDFF288();

        sub_1AFDFD038();
        v230 = sub_1AFDFF2F8();
        v231 = -1 << *(v225 + 32);
        v232 = v230 & ~v231;
        if ((*(v226 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232))
        {
          v233 = ~v231;
          while (1)
          {
            v234 = (*(v225 + 48) + 16 * v232);
            v235 = *v234 == v229 && v234[1] == v228;
            if (v235 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v232 = (v232 + 1) & v233;
            if (((*(v226 + ((v232 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v232) & 1) == 0)
            {
              goto LABEL_165;
            }
          }

          goto LABEL_153;
        }
      }

      else
      {
      }

LABEL_165:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v296 = 0;
      *(&v296 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v296 = 0xD000000000000020;
      *(&v296 + 1) = v284;
      MEMORY[0x1B2718AE0](v229, v228);

      v236 = v296;
      v237 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v292 = v224;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v238 = swift_allocObject();
      *(v238 + 16) = v282;
      *(v238 + 56) = MEMORY[0x1E69E6158];
      *(v238 + 64) = sub_1AF0D544C();
      *(v238 + 32) = v236;

      sub_1AFDFC4C8();

      v239 = v286;
      sub_1AFDFC288();
      v240 = v289[12];
      v241 = v289[16];
      v242 = v288;
      v243 = &v288[v289[20]];
      (*i)(v288, v239, v287);
      *(v242 + v240) = v237;
      *(v242 + v241) = 0;
      *v243 = v236;
      sub_1AFDFC608();

      sub_1AF81F384(v242, sub_1AF0D4E74);
      v226 = v285;
      v225 = v281;
      v224 = v292;
LABEL_153:
      v224 = (v224 + 1);
    }

    while (v224 != v291);
  }
}

uint64_t sub_1AF81EBE8(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6969770];
  sub_1AF81B9D0(0, &unk_1ED72DF20, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v30 - v6;
  v31[0] = sub_1AFDFC0D8();
  v31[1] = v8;
  v30[1] = 0x617262696C786676;
  v30[2] = 0xEA00000000007972;
  v9 = sub_1AFDFC328();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1AF4486E4();
  sub_1AFDFDEF8();
  v11 = v10;
  sub_1AF81FE8C(v7, &unk_1ED72DF20, v3);
  if (v11)
  {

    return 0;
  }

  v12 = sub_1AFDFD1F8();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  MEMORY[0x1B27189E0](v12, v14, v16, v18);

  v19 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v20 = sub_1AFDFCEC8();

  v21 = [v19 initWithPath_];

  if (!v21)
  {
    return 0;
  }

  v22 = [v21 executablePath];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1AFDFCEF8();

    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v31[0] = 0;
  v25 = [a2 newDefaultLibraryWithBundle:v21 error:v31];
  v26 = v31[0];
  if (!v25)
  {
    v28 = v26;
    v29 = sub_1AFDFBF58();

    swift_willThrow();
    return v24;
  }

LABEL_7:

  return v24;
}

uint64_t sub_1AF81EEE0(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  v12 = [objc_opt_self() defaultManager];
  sub_1AFDFC028();
  v13 = sub_1AFDFCEC8();

  v14 = [v13 stringByDeletingPathExtension];

  v15 = sub_1AFDFCEF8();
  v17 = v16;

  sub_1AFDFC098();
  v29[2] = v15;
  v29[3] = v17;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v18 = 0xE500000000000000;
  v19 = 0x7466697773;
  if (a2 != 3)
  {
    v19 = 29546;
    v18 = 0xE200000000000000;
  }

  if (a2 == 2)
  {
    v19 = 0x6C6174656DLL;
    v18 = 0xE500000000000000;
  }

  v20 = 0xE300000000000000;
  v21 = 7368803;
  if (a2)
  {
    v21 = 28013;
    v20 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  if (a2 <= 1u)
  {
    v23 = v20;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1B2718AE0](v22, v23);

  sub_1AFDFC088();

  v24 = *(v4 + 8);
  v24(v7, v3);
  sub_1AFDFC0D8();
  v25 = sub_1AFDFCEC8();

  v26 = [v12 isReadableFileAtPath_];

  if (v26)
  {
    v27 = sub_1AFDFCEA8();
    v24(v11, v3);

    return v27;
  }

  else
  {
    v24(v11, v3);

    return 0;
  }
}

void *sub_1AF81F1BC(uint64_t a1, uint64_t a2)
{
  sub_1AF4493DC();
  v3 = sub_1AFDFE598();
  v4 = v3;
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = v3 + 64;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v5 << 6);
LABEL_11:
    v16 = *(*(a1 + 48) + 8 * v12);
    v17 = 0xFFFFFFFFLL;
    if (*(a2 + 16))
    {
      v18 = sub_1AF449D3C(*(*(a1 + 56) + 8 * v12));
      if (v19)
      {
        v17 = *(*(a2 + 56) + 8 * v18);
      }
    }

    *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(v4[6] + 8 * v12) = v16;
    *(v4[7] + 8 * v12) = v17;
    ++v4[2];
  }

  v13 = v5 << 6;
  while (1)
  {
    v14 = v5 + 1;
    if (v5 + 1 >= v9)
    {
      return v4;
    }

    v15 = *(a1 + 72 + 8 * v5);
    v13 += 64;
    ++v5;
    if (v15)
    {
      v8 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v5 = v14;
      goto LABEL_11;
    }
  }
}

unint64_t sub_1AF81F330()
{
  result = qword_1EB632FF0;
  if (!qword_1EB632FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632FF0);
  }

  return result;
}

uint64_t sub_1AF81F384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF81F3E4()
{
  if (!qword_1EB63F250)
  {
    sub_1AF0D4478(255, &qword_1EB632950);
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F250);
    }
  }
}

unint64_t sub_1AF81F45C()
{
  result = qword_1EB63F258;
  if (!qword_1EB63F258)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB63F258);
  }

  return result;
}

void sub_1AF81F4A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF81F550()
{
  if (!qword_1ED7239B0)
  {
    type metadata accessor for TriggerScript(255);
    sub_1AF5B2220(255);
    sub_1AF81F4A8(255, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7239B0);
    }
  }
}

void sub_1AF81F62C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF81F6B8()
{
  if (!qword_1ED723970)
  {
    type metadata accessor for ParticleUpdateScript(255);
    sub_1AF5B2298(255);
    sub_1AF81F4A8(255, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723970);
    }
  }
}

void sub_1AF81F7D0()
{
  if (!qword_1ED723980)
  {
    type metadata accessor for ParticleInitScript(255);
    sub_1AF5B2310(255);
    sub_1AF81F4A8(255, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723980);
    }
  }
}

void sub_1AF81F8E8()
{
  if (!qword_1ED7239B8)
  {
    type metadata accessor for EmitterScript(255);
    sub_1AF5B2568(255);
    sub_1AF81F4A8(255, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7239B8);
    }
  }
}

void sub_1AF81FA00()
{
  if (!qword_1ED7239C8)
  {
    type metadata accessor for ShaderScript(255);
    sub_1AF81F4A8(255, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
    sub_1AF81F4A8(255, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7239C8);
    }
  }
}

void sub_1AF81FB4C()
{
  if (!qword_1ED723978)
  {
    type metadata accessor for MetalFunctionScript(255);
    sub_1AF81F4A8(255, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    sub_1AF81F4A8(255, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723978);
    }
  }
}

void sub_1AF81FC98()
{
  if (!qword_1ED7239C0)
  {
    type metadata accessor for SimpleScript(255);
    sub_1AF5B2478(255);
    sub_1AF81F4A8(255, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7239C0);
    }
  }
}

void sub_1AF81FDB0()
{
  if (!qword_1ED7239D0)
  {
    type metadata accessor for GraphScript(255);
    sub_1AF5B24F0(255);
    sub_1AF81F4A8(255, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7239D0);
    }
  }
}

uint64_t sub_1AF81FE8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF81B9D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF81FEE8()
{
  result = qword_1ED72A8D0;
  if (!qword_1ED72A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72A8D0);
  }

  return result;
}

uint64_t sub_1AF81FF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AF81FFA0(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(type metadata accessor for BundleInfo() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1AFDFC128() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1AF814300(a1, a2, a3, v3 + v8, *(v3 + v10) | (*(v3 + v10 + 4) << 32), *(v3 + v11), v3 + v13, *(v3 + v14), *(v3 + v14 + 8), *(v3 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1AF820124(uint64_t a1)
{
  sub_1AF8201AC(0, &unk_1ED723D78, &type metadata for VirtualFileAsset, &off_1F2545DB8, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF8201AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF820200(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AF82025C()
{
  result = qword_1EB63F260;
  if (!qword_1EB63F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F260);
  }

  return result;
}

unint64_t sub_1AF8202B4()
{
  result = qword_1ED72DF08;
  if (!qword_1ED72DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72DF08);
  }

  return result;
}

unint64_t sub_1AF82030C()
{
  result = qword_1ED72DF10;
  if (!qword_1ED72DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72DF10);
  }

  return result;
}

void *sub_1AF820374(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);

  v8 = sub_1AF67CACC(a1, v7, a3);

  if (!v8)
  {
    return 0;
  }

  type metadata accessor for VFXAttribute();
  v9 = swift_allocObject();

  swift_unownedRetain();

  result = v9;
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v7;
  return result;
}

uint64_t sub_1AF82041C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v9, v9[3]);
  v5 = sub_1AFDFEE38();
  v7 = v6;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_1AF8204F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];

    v16[0] = a1;
    v16[1] = a2;
    v9 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v9)
    {
      v10 = *(v9 + 80);
      swift_unknownObjectWeakLoadStrong();
      v9 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a4;
    v18 = v9;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v19 = v10;
    sub_1AF820744(v17, v16, a3);
    sub_1AF579490(v17);
    if (v10)
    {
      v13 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v13 ^ 1);
    }
  }

  else
  {
    v11 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v11)
    {
      v12 = *(v11 + 80);
      swift_unknownObjectWeakLoadStrong();
      v11 = *(v11 + 56);
    }

    else
    {
      v12 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a4;
    v18 = v11;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v19 = v12;
    sub_1AF6C150C(&type metadata for VFXTag, &off_1F253D538, a3);
    sub_1AF579490(v17);
    if (v12)
    {
      v14 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v14 ^ 1);
    }
  }
}

void *sub_1AF820744(void *result, uint64_t *a2, unint64_t a3)
{
  v4 = result;
  v5 = HIDWORD(a3);
  v7 = *a2;
  v6 = a2[1];
  if (HIDWORD(a3) || a3 != -1)
  {
    v8 = *result;
    swift_unownedRetainStrong();
    v9 = sub_1AF67CACC(&type metadata for VFXTag, &off_1F253D558, a3);

    swift_unownedRetainStrong();
    sub_1AFBFE5A4(v7, v6, a3);

    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    if (*(v4 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v11[0] = a3;
      v11[1] = v5;
      v12 = v8;
      sub_1AF822C58(0, &qword_1EB63F278, type metadata accessor for ComponentWriter);
      v16 = v10;
      v17 = &off_1F2536170;
      v13 = v7;
      v14 = v6;
      v15 = !v9;
      v18 = 12;
      sub_1AF6C67D0(v11);

      return sub_1AF57955C(v11);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF8208B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1AF823D1C(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - v6;
  v8 = sub_1AFDFC318();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = type metadata accessor for VFXObjectTag();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC308();
  v20 = a1[3];
  v21 = a1[4];
  sub_1AF441150(a1, v20);
  if (sub_1AF694FF8(2000, v20, v21))
  {
    sub_1AF441150(a1, a1[3]);
    v22 = v32;
    sub_1AFDFF398();
    if (!v22)
    {
      sub_1AF441150(&v28, v31);
      sub_1AF823984(&qword_1ED72DF38);
      sub_1AFDFEE88();
      (*(v25 + 40))(v19, v15, v8);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
LABEL_6:
      sub_1AF823920(v19, v26);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AF445B90();
    v23 = v32;
    sub_1AFDFF3B8();
    if (!v23)
    {
      v28 = 0;
      v29 = 1;
      v30 = 6580597;
      v31 = 0xE300000000000000;
      sub_1AF823984(&qword_1ED72DF38);
      sub_1AFDFE768();
      (*(v27 + 8))(v7, v4);
      (*(v25 + 40))(v19, v11, v8);
      goto LABEL_6;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF8238C4(v19);
}

uint64_t sub_1AF820CC0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFC318();
  sub_1AF823984(&qword_1EB639808);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF820D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  result = (*(a2 + 32))(ObjectType, a2);
  if (result)
  {
    (*(a2 + 24))(v2, 0x63656A624F584656, 0xEC00000067615474, sub_1AF8208AC, 0, ObjectType, a2);
    return (*(v5 + 40))(v2, v8, v4);
  }

  return result;
}

uint64_t sub_1AF820EE0(uint64_t a1)
{
  v2 = sub_1AF823870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF820F1C(uint64_t a1)
{
  v2 = sub_1AF823870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF820FA8(uint64_t a1)
{
  v2 = sub_1AF82381C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF820FE4(uint64_t a1)
{
  v2 = sub_1AF82381C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821070(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF823D1C(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF8211AC(void *a1, uint64_t a2)
{
  sub_1AF823D1C(0, &qword_1EB63F298, sub_1AF8237C8, &type metadata for VFXParentAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8237C8();
  sub_1AFDFF3F8();
  v11[1] = a2;
  sub_1AF480018();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF821338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF8213BC(uint64_t a1)
{
  v2 = sub_1AF8237C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8213F8(uint64_t a1)
{
  v2 = sub_1AF8237C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF821434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF82360C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF82147C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(a2 + 8);
  v5(v2, 0, ObjectType, a2);
  result = v5(v2 + 8, 1, ObjectType, a2);
  v7 = *(v2 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AFC0DA44(v7);
    }

    v10 = 32;
    do
    {
      v13 = *(v7 + v10);
      v11 = v13;
      v5(&v13, 1, ObjectType, a2);
      v12 = vceq_s32(v13, v11);
      if ((v12.i32[0] & v12.i32[1] & 1) == 0)
      {
        *&v9[v10] = v13;
      }

      v10 += 8;
      --v8;
    }

    while (v8);

    *(v2 + 16) = v9;
  }

  return result;
}

uint64_t sub_1AF8215B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  sub_1AF823D1C(0, &qword_1EB63F2D8, sub_1AF823CC8, &type metadata for Prefab.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF823CC8();
  sub_1AFDFF3F8();
  v19 = a2;
  v18 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v4)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_1AFDFE918();
    v19 = v13;
    v18 = 2;
    sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AF82357C(&qword_1EB642E80, sub_1AF480018);
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF821810(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1953460082;
  if (v2 != 1)
  {
    v4 = 0x6C6576654C706F74;
    v3 = 0xEF737463656A624FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656372756F73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1953460082;
  if (*a2 != 1)
  {
    v8 = 0x6C6576654C706F74;
    v7 = 0xEF737463656A624FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656372756F73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF821918()
{
  v1 = 1953460082;
  if (*v0 != 1)
  {
    v1 = 0x6C6576654C706F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1AF821974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8231A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF82199C(uint64_t a1)
{
  v2 = sub_1AF823CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8219D8(uint64_t a1)
{
  v2 = sub_1AF823CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF823A1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

__n128 sub_1AF821A74@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *a1 = result;
  a1[1].n128_u64[0] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1AF821A8C(void *a1, uint64_t a2)
{
  sub_1AF823D1C(0, &qword_1EB63F290, sub_1AF8234D8, &type metadata for EmbeddedAssets.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8234D8();
  sub_1AFDFF3F8();
  v11[1] = a2;
  sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AF82357C(&qword_1EB642E80, sub_1AF480018);
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF821C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF821D00(uint64_t a1)
{
  v2 = sub_1AF8234D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF821D3C(uint64_t a1)
{
  v2 = sub_1AF8234D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF821D78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF8232C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF821DC0(uint64_t a1)
{
  v2 = sub_1AF822420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF821DFC(uint64_t a1)
{
  v2 = sub_1AF822420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF821F20(uint64_t a1)
{
  v2 = sub_1AF8239C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF821F5C(uint64_t a1)
{
  v2 = sub_1AF8239C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF821F98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  sub_1AF823D1C(0, &qword_1EB63F2C0, sub_1AF8239C8, &type metadata for Scheduling.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8239C8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v14;
  v11 = sub_1AFDFE748();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  return result;
}

uint64_t sub_1AF822144(void *a1)
{
  sub_1AF823D1C(0, &qword_1EB63F2D0, sub_1AF8239C8, &type metadata for Scheduling.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8239C8();
  sub_1AFDFF3F8();
  sub_1AFDFE8F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF8222B4(unint64_t a1, uint64_t a2)
{

  v4 = sub_1AF682350(a1);

  v5 = *(v4 + 16);
  if (v5)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AFDFE368();
    type metadata accessor for VFXAttribute();
    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v8 = *(*v6 + 8);
      v9 = swift_allocObject();
      v9[2] = a2;
      v9[3] = a1;
      v9[4] = v7;
      v9[5] = v8;

      swift_unownedRetain();

      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      v6 += 16;
      --v5;
    }

    while (v5);

    return v11;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1AF822420()
{
  result = qword_1EB63F270;
  if (!qword_1EB63F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F270);
  }

  return result;
}

void *sub_1AF822474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!qword_1ED730448)
  {
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B27189E0](a1, a2, a3, a4);
  v14 = sub_1AF6DC144(v12, v13, 0, 1);

  if (!v14 || (v15 = swift_conformsToProtocol2()) == 0)
  {
    v17 = sub_1AF8222B4(a5, a6);
    v18 = v17;
    if (v17 >> 62)
    {
      v19 = sub_1AFDFE108();
      if (v19)
      {
LABEL_9:
        v27 = v18;
        v20 = 0;
        v21 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v21)
          {
            v22 = MEMORY[0x1B2719C70](v20, v18);
          }

          else
          {
            v22 = *(v18 + 8 * v20 + 32);
          }

          v23 = *(v22 + 32);
          v24 = swift_conformsToProtocol2();
          if (v24 && v23 != 0)
          {
            (*(v24 + 16))(v23, v24);
            sub_1AF6DC518();
            sub_1AF4486E4();
            v26 = sub_1AFDFDEC8();
            v18 = v27;

            if (!v26)
            {
              break;
            }
          }

          ++v20;

          if (v19 == v20)
          {
            goto LABEL_21;
          }
        }

        return v22;
      }
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_9;
      }
    }

LABEL_21:

    return 0;
  }

  return sub_1AF820374(v14, v15, a5, a6);
}

uint64_t sub_1AF822738(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v65 = qword_1ED73B840;
  v66 = 0;
  v67 = 2;
  v68 = 0;
  v69 = 2;
  v70 = 0;
  sub_1AF705044(1, &v44);
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47 | 1;
  v63 = v48;
  v64 = v49;
  sub_1AF6B06C0(v2, &v59, 0x200000000, v50);
  v34 = *v50;
  if (!*v50)
  {
    goto LABEL_38;
  }

  v33 = *&v50[40];
  v5 = *(&v51 + 1);
  v39 = *(&v52 + 1);
  v54 = *&v50[8];
  v55 = *&v50[24];
  if (v53 <= 0 || !*(&v51 + 1))
  {
    sub_1AF5D1564(v50);
LABEL_38:
    sub_1AF822BE0(&v44);
    v29 = 0;
    v30 = 0xFFFFFFFFLL;
    return v30 | v29;
  }

  v6 = *(*(&v52 + 1) + 32);
  v38 = *(v52 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v43[2] = *&v50[32];
  v43[3] = v51;
  v43[4] = v52;
  v43[5] = v53;
  v43[0] = *v50;
  v43[1] = *&v50[16];
  sub_1AF5D15C0(v50, v41);
  sub_1AF5DD298(v43, v41);
  v7 = 0;
  v40 = 0;
  v8 = 0;
  v9 = -1;
  v31 = v5;
  v32 = v6;
  while (1)
  {
    v36 = v8;
    v37 = v7;
    v10 = (v33 + 48 * v7);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(v10 + 2);
    v35 = *(v10 + 3);
    v14 = *(v10 + 4);
    v15 = *(v10 + 5);
    if (v38)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v6);
    v17 = *(v39 + 64);
    v41[0] = *(v39 + 48);
    v41[1] = v17;
    v42 = *(v39 + 80);
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v39 + 48) = ecs_stack_allocator_allocate(*(v39 + 32), 48 * v18, 8);
    *(v39 + 56) = v18;
    *(v39 + 72) = 0;
    *(v39 + 80) = 0;
    *(v39 + 64) = 0;
    v19 = sub_1AF64B110(&type metadata for VFXTag, &off_1F253D538, v13, v35, v14, v39);
    if (!v13)
    {
      break;
    }

    if (v14)
    {
      v20 = (v19 + 8);
      v6 = v32;
      while (1)
      {
        v22 = *v13++;
        v21 = v22;
        v23 = *(v20 - 1) == a1 && *v20 == a2;
        if (v23 || (sub_1AFDFEE28() & 1) != 0)
        {

          if (*(v15 + 184))
          {
            goto LABEL_41;
          }

          v9 = *(*(v15 + 168) + 4 * v21);
          v40 = *(*(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9 + 8);
        }

        v20 += 2;
        if (!--v14)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_24:
    v6 = v32;
LABEL_25:
    v56 = v34;
    v57 = v54;
    v58 = v55;
    v8 = v36;
    sub_1AF630994(v39, &v56, v41);
    sub_1AF62D29C(v15);
    ecs_stack_allocator_pop_snapshot(v6);
    if (v38)
    {
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
    }

    v7 = v37 + 1;
    if (v37 + 1 == v31)
    {
      sub_1AF5D1564(v50);
      sub_1AF5D1564(v50);
      sub_1AF5D1564(v50);
      sub_1AF822BE0(&v44);
      v29 = v40 << 32;
      v30 = v9;
      return v30 | v29;
    }
  }

  if (v12 == v11)
  {
    goto LABEL_24;
  }

  v25 = (v19 + 16 * v12 + 8);
  v6 = v32;
  while (1)
  {
    v26 = *(v25 - 1) == a1 && *v25 == a2;
    if (!v26 && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (*(v15 + 184))
    {
      break;
    }

    v9 = *(*(v15 + 168) + 4 * v12);
    v40 = *(*(v27 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9 + 8);

LABEL_28:
    ++v12;
    v25 += 2;
    if (v11 == v12)
    {
      goto LABEL_25;
    }
  }

LABEL_41:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF822BE0(uint64_t a1)
{
  sub_1AF822C58(0, &qword_1EB633CE0, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF822C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for VFXTag, &off_1F253D538);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF822D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_1AF822D84(uint64_t a1)
{
  v2 = sub_1AFDFC318();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1AF822DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_1AF822E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_1AF822EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1AF822F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for VFXObjectTag()
{
  result = qword_1ED7302F0;
  if (!qword_1ED7302F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF822FEC()
{
  result = sub_1AFDFC318();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for Prefab(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_1AF8230F8()
{
  result = qword_1EB63F280;
  if (!qword_1EB63F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F280);
  }

  return result;
}

unint64_t sub_1AF823150()
{
  result = qword_1EB63F288;
  if (!qword_1EB63F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F288);
  }

  return result;
}

uint64_t sub_1AF8231A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576654C706F74 && a2 == 0xEF737463656A624FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1AF8232C0(void *a1)
{
  sub_1AF823D1C(0, &unk_1EB633B28, sub_1AF8234D8, &type metadata for EmbeddedAssets.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF8234D8();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    sub_1AF82357C(&qword_1ED723220, sub_1AF47FEB4);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

unint64_t sub_1AF8234D8()
{
  result = qword_1EB634298;
  if (!qword_1EB634298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634298);
  }

  return result;
}

void sub_1AF82352C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF82357C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF82352C(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF82360C(void *a1)
{
  sub_1AF823D1C(0, &unk_1EB630AF0, sub_1AF8237C8, &type metadata for VFXParentAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF8237C8();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

unint64_t sub_1AF8237C8()
{
  result = qword_1EB6320E0;
  if (!qword_1EB6320E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6320E0);
  }

  return result;
}

unint64_t sub_1AF82381C()
{
  result = qword_1EB63F2A8;
  if (!qword_1EB63F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2A8);
  }

  return result;
}

unint64_t sub_1AF823870()
{
  result = qword_1EB63F2B8;
  if (!qword_1EB63F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2B8);
  }

  return result;
}

uint64_t sub_1AF8238C4(uint64_t a1)
{
  v2 = type metadata accessor for VFXObjectTag();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF823920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFXObjectTag();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF823984(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFDFC318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF8239C8()
{
  result = qword_1EB63F2C8;
  if (!qword_1EB63F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2C8);
  }

  return result;
}

uint64_t sub_1AF823A1C(void *a1)
{
  sub_1AF823D1C(0, &unk_1EB630A58, sub_1AF823CC8, &type metadata for Prefab.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF823CC8();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v9 = v13;
    v12 = 1;
    sub_1AFDFE768();
    sub_1AF82352C(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v12 = 2;
    sub_1AF82357C(&qword_1ED723220, sub_1AF47FEB4);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF823CC8()
{
  result = qword_1EB631310;
  if (!qword_1EB631310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631310);
  }

  return result;
}

void sub_1AF823D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF823DE8()
{
  result = qword_1EB63F2E0;
  if (!qword_1EB63F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2E0);
  }

  return result;
}

unint64_t sub_1AF823E40()
{
  result = qword_1EB63F2E8;
  if (!qword_1EB63F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2E8);
  }

  return result;
}

unint64_t sub_1AF823E98()
{
  result = qword_1EB63F2F0;
  if (!qword_1EB63F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2F0);
  }

  return result;
}

unint64_t sub_1AF823EF0()
{
  result = qword_1EB63F2F8;
  if (!qword_1EB63F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F2F8);
  }

  return result;
}

unint64_t sub_1AF823F48()
{
  result = qword_1EB631300;
  if (!qword_1EB631300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631300);
  }

  return result;
}

unint64_t sub_1AF823FA0()
{
  result = qword_1EB631308;
  if (!qword_1EB631308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631308);
  }

  return result;
}

unint64_t sub_1AF823FF8()
{
  result = qword_1EB63F300;
  if (!qword_1EB63F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F300);
  }

  return result;
}

unint64_t sub_1AF824050()
{
  result = qword_1EB63F308;
  if (!qword_1EB63F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F308);
  }

  return result;
}

unint64_t sub_1AF8240A8()
{
  result = qword_1EB63F310;
  if (!qword_1EB63F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F310);
  }

  return result;
}

unint64_t sub_1AF824100()
{
  result = qword_1EB63F318;
  if (!qword_1EB63F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F318);
  }

  return result;
}

unint64_t sub_1AF824158()
{
  result = qword_1EB63F320;
  if (!qword_1EB63F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F320);
  }

  return result;
}

unint64_t sub_1AF8241B0()
{
  result = qword_1EB63F328;
  if (!qword_1EB63F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F328);
  }

  return result;
}

unint64_t sub_1AF824208()
{
  result = qword_1EB6320D0;
  if (!qword_1EB6320D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6320D0);
  }

  return result;
}

unint64_t sub_1AF824260()
{
  result = qword_1EB6320D8;
  if (!qword_1EB6320D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6320D8);
  }

  return result;
}

unint64_t sub_1AF8242B8()
{
  result = qword_1EB634288;
  if (!qword_1EB634288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634288);
  }

  return result;
}

unint64_t sub_1AF824310()
{
  result = qword_1EB634290;
  if (!qword_1EB634290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634290);
  }

  return result;
}

uint64_t sub_1AF82436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v6;
    v12[4] = *(a1 + 64);
    v13 = *(a1 + 80);
    v7 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1AF85148C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E6720];
    sub_1AF8598C4(a1, &unk_1EB6335B0, &_s8MetadataVN, MEMORY[0x1E69E6720], sub_1AF85B840);
    sub_1AF8508FC(a2, a3, v12);

    return sub_1AF8598C4(v12, &unk_1EB6335B0, &_s8MetadataVN, v10, sub_1AF85B840);
  }

  return result;
}

uint64_t sub_1AF824494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    result = sub_1AF449CB8(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF8452C0();
        v11 = v13;
      }

      result = sub_1AF6B21E4(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v4 = a1;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF851CE4(v4, a2, v6);
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1AF824548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AF851F78(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AF419914(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AF845894();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1AF6B234C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1AF824640(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AF0DB6BC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1AF852354(v9, a2, isUniquelyReferenced_nonNull_native, sub_1AF859F34, sub_1AF449D40, sub_1AF449D40);
    v5 = sub_1AFDFE488();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1AF85B280(a1, &qword_1EB63F3A8, sub_1AF4436C4);
    sub_1AF850A60(a2, sub_1AF449D40, sub_1AF6B7618, sub_1AF859F34, sub_1AF449D40, v9);
    v7 = sub_1AFDFE488();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1AF85B280(v9, &qword_1EB63F3A8, sub_1AF4436C4);
  }

  return result;
}

uint64_t sub_1AF8247D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1AF0DB6BC(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_1AF852354(v11, a2, isUniquelyReferenced_nonNull_native, sub_1AF445E74, sub_1AF449D40, sub_1AF449D40);
    v5 = sub_1AFDFE488();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v10;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6720];
    sub_1AF8598C4(a1, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF85B840);
    sub_1AF850A60(a2, sub_1AF449D40, sub_1AF6B7618, sub_1AF445E74, sub_1AF449D40, v11);
    v9 = sub_1AFDFE488();
    (*(*(v9 - 8) + 8))(a2, v9);
    return sub_1AF8598C4(v11, &qword_1ED726850, v7 + 8, v8, sub_1AF85B840);
  }

  return result;
}

uint64_t sub_1AF82499C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_1AF8598C4(a1, &unk_1ED731410, &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E6720], sub_1AF85B840);
    v5 = sub_1AF449CB8(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF8463F0();
        v10 = v13;
      }

      sub_1AF0D5D54(*(v10 + 56) + 8 * v8, &v15);
      sub_1AF6B2A88(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_1AF8598C4(&v15, &unk_1ED731410, &type metadata for ShaderCache.ShaderCacheWeakReference, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  else
  {
    sub_1AF0D5D54(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1AF852548(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_1AF824AFC(uint64_t a1, uint64_t a2)
{
  sub_1AF0D0DD8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    v15 = MEMORY[0x1E69695A8];
    sub_1AF85B280(a1, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    sub_1AF850B64(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_1AF85B280(v8, &qword_1ED72DF30, v15);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1AF852688(v14, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v19;
  }

  return result;
}

unint64_t sub_1AF824D1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 64) <= 0xEFu)
  {
    v9 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v9;
    v15 = *(a1 + 64);
    v10 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1AF852E4C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    result = sub_1AF449CB8(a2);
    if (v5)
    {
      v6 = result;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      *&v14[0] = *v3;
      if (!v7)
      {
        sub_1AF846FA0();
        v8 = *&v14[0];
      }

      result = sub_1AF6B3070(v6, v8);
      *v3 = v8;
    }
  }

  return result;
}

uint64_t sub_1AF824DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 48);
  if (v5 == 255)
  {
    result = sub_1AF449CB8(a2);
    if (v9)
    {
      v10 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      *&v15[0] = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF847A00();
        v12 = *&v15[0];
      }

      v13 = *(v12 + 56) + 56 * v10;
      sub_1AF7457E0(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48));
      result = sub_1AF6B3500(v10, v12);
      *v3 = v12;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v6;
    v15[2] = *(a1 + 32);
    v16 = v5 & 1;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1AF8537B0(v15, a2, v7);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_1AF824EDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_1AF85B280(a1, &unk_1ED731060, sub_1AF0D54FC);
    v5 = sub_1AF449CB8(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF848C90();
        v10 = v13;
      }

      sub_1AF0D6D88(*(v10 + 56) + 8 * v8, &v15, sub_1AF0D54FC);
      sub_1AF6B382C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_1AF85B280(&v15, &unk_1ED731060, sub_1AF0D54FC);
  }

  else
  {
    sub_1AF0D6D88(a1, &v15, sub_1AF0D54FC);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1AF85474C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_1AF82502C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF0D0DD8(0, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23[-v8];
  v10 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1AF85B280(a1, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v16 = sub_1AF419B74(a2 | ((HIDWORD(a2) & 1) << 32));
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v2;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF8494C8();
        v20 = v24;
      }

      sub_1AF0D6D88(*(v20 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      sub_1AF6B3BBC(v18, v20);
      *v3 = v20;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1AF85B280(v9, &qword_1EB634090, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  }

  else
  {
    sub_1AF0D6D88(a1, v15, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    result = sub_1AF854B88(v15, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *v2 = v24;
  }

  return result;
}

uint64_t sub_1AF8252CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1AF854CE8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1AF419914(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1AF849704();
        v16 = v18;
      }

      result = sub_1AF6B3DD8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1AF825428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF8551C0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1AF449CBC(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF849F40();
        v11 = v13;
      }

      result = sub_1AF6B1F04(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

unint64_t sub_1AF8254E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF855DF4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1AF449D3C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84B020(sub_1AF442BB0);
        v11 = v13;
      }

      result = sub_1AF6B7628(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

void sub_1AF8255BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF855CC0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF449D3C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84AEA8();
        v11 = v13;
      }

      sub_1AF6B3690(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1AF8256FC(uint64_t a1, void *a2, void (*a3)(uint64_t, void *, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);

    *v5 = v18;
  }

  else
  {
    v12 = sub_1AF0D5878(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v19 = *v6;
      if (!v15)
      {
        a5();
        v16 = v19;
      }

      a4(v14, v16);

      *v6 = v16;
    }

    else
    {
    }
  }
}

unint64_t sub_1AF825824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 88) == 255)
  {
    sub_1AF8598C4(a1, &unk_1EB642590, &type metadata for CompilationStatus, MEMORY[0x1E69E6720], sub_1AF85B840);
    v11 = sub_1AF41ACD4(a2, a3);
    if (v12)
    {
      v13 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v22 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84B2EC();
        v15 = v22;
      }

      v16 = (*(v15 + 56) + 96 * v13);
      v17 = v16[1];
      v23 = *v16;
      v24 = v17;
      v19 = v16[3];
      v18 = v16[4];
      v20 = v16[2];
      *&v27[9] = *(v16 + 73);
      v26 = v19;
      *v27 = v18;
      v25 = v20;
      sub_1AF6B46E8(v13, v15);
      *v4 = v15;
    }

    else
    {
      v26 = 0u;
      memset(v27, 0, 24);
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      v27[24] = -1;
    }

    return sub_1AF8598C4(&v23, &unk_1EB642590, &type metadata for CompilationStatus, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  else
  {
    v7 = *(a1 + 48);
    v25 = *(a1 + 32);
    v26 = v7;
    *v27 = *(a1 + 64);
    *&v27[9] = *(a1 + 73);
    v8 = *(a1 + 16);
    v23 = *a1;
    v24 = v8;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1AF855F54(&v23, a2, a3, v9);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_1AF8259D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a1 + 40) == 255)
  {
    sub_1AF8598C4(a1, &unk_1EB63F4A0, &_s18CachedBuildResultsV6ResultON, MEMORY[0x1E69E6720], sub_1AF85B840);
    v10 = sub_1AF41ACD4(a2, a3);
    if (v11)
    {
      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84B498();
        v14 = v19;
      }

      v15 = (*(v14 + 56) + 48 * v12);
      v16 = *(v15 + 25);
      v17 = v15[1];
      *v20 = *v15;
      *&v20[16] = v17;
      *&v20[25] = v16;
      sub_1AF6B48B0(v12, v14);
      *v4 = v14;
    }

    else
    {
      memset(v20, 0, 40);
      v20[40] = -1;
    }

    return sub_1AF8598C4(v20, &unk_1EB63F4A0, &_s18CachedBuildResultsV6ResultON, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  else
  {
    v7 = *(a1 + 16);
    *v20 = *a1;
    *&v20[16] = v7;
    *&v20[25] = *(a1 + 25);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_1AF8560D4(v20, a2, a3, v8);
    *v3 = v18;
  }

  return result;
}

uint64_t sub_1AF825B54(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF0D0DD8(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23[-v8];
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1AF85B280(a1, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
    v16 = sub_1AF41A190(a2 | ((HIDWORD(a2) & 1) << 32));
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v2;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF84B914();
        v20 = v24;
      }

      (*(v11 + 32))(v9, *(v20 + 56) + *(v11 + 72) * v18, v10);
      sub_1AF6B4A80(v18, v20);
      *v3 = v20;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1AF85B280(v9, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    result = sub_1AF856638(v15, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *v2 = v24;
  }

  return result;
}

uint64_t sub_1AF825F40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_1AF8529CC(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v23;
  }

  else
  {
    v18 = sub_1AF419914(a2, a3);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v8;
      v24 = *v8;
      if (!v21)
      {
        a7();
        v22 = v24;
      }

      result = a6(v18, v22);
      *v8 = v22;
    }
  }

  return result;
}

uint64_t sub_1AF826060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AF852BA8(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1AF84C3CC, sub_1AF83AF84);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1AF419914(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1AF84C3CC();
        v14 = v16;
      }

      result = sub_1AF6B234C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1AF826180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF858EE0(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF449CB8, sub_1AF447B78, sub_1AF83D93C);
    *v2 = v12;
  }

  else
  {
    result = sub_1AF449CB8(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84F9C0(sub_1AF447B78);
        v11 = v13;
      }

      swift_unknownObjectRelease();
      result = sub_1AF6B2F08(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1AF826298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = sub_1AF857D08(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v18;
  }

  else
  {
    result = sub_1AF449D3C(a5);
    if (v14)
    {
      v15 = result;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        sub_1AF84DB20();
        v17 = v19;
      }

      result = sub_1AF6B4F90(v15, v17);
      *v6 = v17;
    }
  }

  return result;
}

unint64_t sub_1AF8263A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AF858EE0(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF0D3F10, sub_1AF447C50, sub_1AF841224);
    *v2 = v12;
  }

  else
  {
    result = sub_1AF0D3F10(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84F9C0(sub_1AF447C50);
        v11 = v13;
      }

      swift_unknownObjectRelease();
      result = sub_1AF6B2F08(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1AF8264B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    sub_1AF85917C(a1, a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_1AF419914(a5, a6);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_1AF84FE04();
        v20 = v22;
      }

      swift_unknownObjectRelease();
      result = sub_1AF6B512C(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

void sub_1AF8265D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF85953C(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF419B48, sub_1AF84FFA8, sub_1AF841C54);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF419B48(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF84FFA8();
        v11 = v13;
      }

      sub_1AF6B52D4(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1AF8266D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1AF85953C(a1, a2, isUniquelyReferenced_nonNull_native, sub_1AF419BF8, sub_1AF850624, sub_1AF842894);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1AF419BF8(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AF850624();
        v11 = v13;
      }

      sub_1AF6B57D4(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_1AF826820(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_1AF8596D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v23;
  }

  else
  {
    v18 = sub_1AF419914(a2, a3);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v8;
      v24 = *v8;
      if (!v21)
      {
        a7();
        v22 = v24;
      }

      result = a6(v18, v22);
      *v8 = v22;
    }
  }

  return result;
}

double sub_1AF826940@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SDFFileAsset();
  v5 = *v2;
  v6 = *v2 + 41;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v4;
  inited[5] = &off_1F252FB28;
  if (v8 > 0xF)
  {
    *&v16[0] = sub_1AFC0592C((v6 + v7), v8 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v16[0];
  }

  v10 = *(v5 + 20);
  v11 = *(v5 + 22);
  v12 = 1;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 1;
  *(v13 + 32) = 3;
  if (v11)
  {
    *&v16[0] = sub_1AFC0587C((v6 + v10), v11);
    sub_1AF48FBC0(v13);
    v13 = *&v16[0];
    v12 = *(*&v16[0] + 16);
  }

  sub_1AF5C3CE0((v13 + 32), v12, inited + 4, inited[2], v2, v16);

  result = *v16;
  v15 = v16[1];
  *a1 = v16[0];
  *(a1 + 16) = v15;
  *(a1 + 32) = v17;
  return result;
}

double sub_1AF826AE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = a1;
  inited[5] = a2;
  if (v11 > 0xF)
  {
    *&v19[0] = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v19[0];
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 1;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 1;
  *(v16 + 32) = 3;
  if (v14)
  {
    *&v19[0] = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = *&v19[0];
    v15 = *(*&v19[0] + 16);
  }

  sub_1AF5C3CE0((v16 + 32), v15, inited + 4, inited[2], v6, v19);

  result = *v19;
  v18 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v20;
  return result;
}

uint64_t sub_1AF826C54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SceneKitRenderer(0);
  v5 = *v2;
  v6 = *v2 + 41;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v4;
  inited[5] = &off_1F2546F88;
  if (v8 > 0xF)
  {
    v26 = sub_1AFC0592C((v6 + v7), v8 >> 4);
    sub_1AF48FC80(inited);
    inited = v26;
  }

  v10 = *(v5 + 20);
  v11 = *(v5 + 22);
  v12 = 1;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 1;
  *(v13 + 32) = 3;
  if (v11)
  {
    v26 = sub_1AFC0587C((v6 + v10), v11);
    sub_1AF48FBC0(v13);
    v13 = v26;
    v12 = v26[2];
  }

  v14 = *v2 + 41;
  v15 = *(*v2 + 24);
  v16 = *(*v2 + 26) >> 4;
  v17 = *(*v2 + 28);
  v18 = *(*v2 + 30) / 0x18u;
  v19 = *(v2 + 2);
  v20 = *(v2 + 12);
  v21 = v2[4];
  v22 = v2[2];
  v23 = *(v2 + 24);
  v24 = sub_1AF6B7F4C(inited + 4, inited[2], (v13 + 32), v12, (v14 + v15), v16, (v14 + v17), v18);

  *a1 = v24;
  *(a1 + 8) = v19;
  *(a1 + 12) = v20;
  *(a1 + 13) = v27;
  *(a1 + 15) = v28;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 25) = v26;
  *(a1 + 28) = *(&v26 + 3);
  *(a1 + 32) = v21;
  return result;
}

uint64_t sub_1AF826E30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727F70, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF82701C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FC0, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8273F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8275E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, qword_1ED727FE0, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8277CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8279B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, qword_1ED724BA0, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827BA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827D90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FA0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF827F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828168@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FD0, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828354@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727F90, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF82872C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828918@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727FB0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828B04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED727F80, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptStateRestoration);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F2559308;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF828EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AF85B430(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
  v5 = v4;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = *(*v2 + 16);
  v9 = *(*v2 + 18);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = v5;
  inited[5] = &off_1F250F288;
  if (v9 > 0xF)
  {
    v27 = sub_1AFC0592C((v7 + v8), v9 >> 4);
    sub_1AF48FC80(inited);
    inited = v27;
  }

  v11 = *(v6 + 20);
  v12 = *(v6 + 22);
  v13 = 1;
  v14 = sub_1AFDFD488();
  *(v14 + 16) = 1;
  *(v14 + 32) = 3;
  if (v12)
  {
    v27 = sub_1AFC0587C((v7 + v11), v12);
    sub_1AF48FBC0(v14);
    v14 = v27;
    v13 = v27[2];
  }

  v15 = *v2 + 41;
  v16 = *(*v2 + 24);
  v17 = *(*v2 + 26) >> 4;
  v18 = *(*v2 + 28);
  v19 = *(*v2 + 30) / 0x18u;
  v20 = *(v2 + 2);
  v21 = *(v2 + 12);
  v22 = v2[4];
  v23 = v2[2];
  v24 = *(v2 + 24);
  v25 = sub_1AF6B7F4C(inited + 4, inited[2], (v14 + 32), v13, (v15 + v16), v17, (v15 + v18), v19);

  *a1 = v25;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  *(a1 + 13) = v28;
  *(a1 + 15) = v29;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  *(a1 + 25) = v27;
  *(a1 + 28) = *(&v27 + 3);
  *(a1 + 32) = v22;
  return result;
}

uint64_t sub_1AF8291F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE431C0;
  inited[4] = a1;
  inited[5] = a2;
  if (v11 > 0xF)
  {
    v29 = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = v29;
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 1;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 1;
  *(v16 + 32) = 3;
  if (v14)
  {
    v29 = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = v29;
    v15 = v29[2];
  }

  v17 = *v6 + 41;
  v18 = (*v6)[12];
  v19 = (*v6)[13] >> 4;
  v20 = (*v6)[14];
  v21 = (*v6)[15] / 0x18u;
  v22 = *(v6 + 2);
  v23 = *(v6 + 12);
  v24 = v6[4];
  v25 = v6[2];
  v26 = *(v6 + 24);
  v27 = sub_1AF6B7F4C(inited + 4, inited[2], (v16 + 32), v15, (v17 + v18), v19, (v17 + v20), v21);

  *a3 = v27;
  *(a3 + 8) = v22;
  *(a3 + 12) = v23;
  *(a3 + 13) = v30;
  *(a3 + 15) = v31;
  *(a3 + 16) = v25;
  *(a3 + 24) = v26;
  *(a3 + 25) = v29;
  *(a3 + 28) = *(&v29 + 3);
  *(a3 + 32) = v24;
  return result;
}

uint64_t VFXSaver.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  return sub_1AFDFF2F8();
}

double VFXSaver.__allocating_init(world:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *&result = 0x1000000010000;
  *(v2 + 24) = 0x10000;
  *(v2 + 32) = 0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t VFXSaver.init(world:)(uint64_t a1)
{
  *(v1 + 24) = 0x10000;
  *(v1 + 32) = 0;
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_1AF829578(void *a1, unint64_t a2, unint64_t a3, int a4, void *a5)
{
  result = sub_1AF8295B0(a1, a2, a3, a4, a5);
  if (!v5)
  {
    v8 = result;

    return v8;
  }

  return result;
}

unint64_t sub_1AF8295B0(void *a1, unint64_t a2, unint64_t a3, int a4, void *a5)
{
  LODWORD(v249) = a4;
  v248 = a3;
  v9 = 0xEB00000000747369;
  sub_1AF0D0DD8(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v239 = v228 - v12;
  v13 = sub_1AFDFC128();
  v241 = *(v13 - 8);
  v242 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v238 = v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  *&v240 = v228 - v18;
  v19 = sub_1AFDFCF78();
  v244 = *(v19 - 8);
  v245 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v246 = v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_1AFDFBBE8();
  v22 = *(v251 - 1);
  MEMORY[0x1EEE9AC00](v251, v23);
  v250 = v228 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v25, v26);
  v255 = (v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v247 = sub_1AF43F898(MEMORY[0x1E69E7CC0]);
  v261 = v247;
  [*(v5 + 16) copy];
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AF0D4478(0, &qword_1ED7307E8);
  swift_dynamicCast();
  v253 = v258;
  v28 = [v258 scene];
  v254 = *&v28[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v29 = *(v5 + 27);
  v256 = v5;
  if (v29)
  {
    LODWORD(v243) = 1;
    v252 = 0x6C702E656E656373;
  }

  else
  {
    v30 = *(v5 + 24) == 0;
    v31 = 0x736A2E656E656373;
    if (*(v5 + 24))
    {
      v31 = 0x66762E656E656373;
    }

    v252 = v31;
    if (v30)
    {
      v9 = 0xEA00000000006E6FLL;
    }

    else
    {
      v9 = 0xEC0000006E696278;
    }

    if (v30)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    LODWORD(v243) = v32;
  }

  v258 = a5;

  sub_1AF70D168(&v259, 3031);
  v33 = v25[5];
  v34 = sub_1AFDFC318();
  v35 = v255;
  (*(*(v34 - 8) + 16))(v255 + v33, v248, v34);
  v36 = *(v256 + 24);
  v37 = v258;
  v38 = v25[10];
  *v35 = a1;
  v35[1] = a2;
  *(v35 + v25[6]) = 3031;
  *(v35 + v25[7]) = v36;
  *(v35 + v25[8]) = v249 & 1;
  v39 = (v35 + v38);
  *(v35 + v25[9]) = v37;
  *v39 = v252;
  v39[1] = v9;
  sub_1AFDFBC38();
  swift_allocObject();

  v40 = sub_1AFDFBC28();
  v248 = a2;
  v41 = v40;
  v42 = MEMORY[0x1E6967F78];
  sub_1AF0D0DD8(0, &unk_1EB63F330, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v249 = a1;
  v43 = *(v22 + 72);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1AFE4C620;
  sub_1AFDFBBD8();
  sub_1AFDFBBC8();
  v259 = v44;
  sub_1AF85A9A0(&unk_1EB63DD30, MEMORY[0x1E6967F78]);
  sub_1AF0D0DD8(0, &unk_1EB63F340, v42, MEMORY[0x1E69E62F8]);
  sub_1AF6A07D0();
  sub_1AFDFE058();
  sub_1AFDFBBF8();
  sub_1AF85A9A0(&qword_1EB63F350, type metadata accessor for BundleInfo);
  v45 = v312;
  v46 = sub_1AFDFBC08();
  v312 = v45;
  if (v45)
  {

    v48 = v35;
LABEL_24:
    sub_1AF85A428(v48, type metadata accessor for BundleInfo);
    return v43;
  }

  v43 = v47;
  v250 = v9;
  v49 = v46;
  v50 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF43C9F0(v49, v43);
  v51 = sub_1AFDFC1A8();
  v52 = [v50 initRegularFileWithContents_];

  v237 = v49;
  sub_1AF439ED8(v49, v43);
  v53 = v52;
  v54 = v261;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v259 = v54;
  v247 = v53;
  sub_1AF8596D0(v53, 0x6F736A2E6F666E69, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native, sub_1AF84D4C0, sub_1AF83CCB4);
  v236 = v259;
  v261 = v259;
  v56 = v253;
  v57 = [v253 scene];
  v58 = *&v57[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v59 = *(v58 + 184);

  v60 = v312;
  v61 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v59);
  v312 = v60;

  v62 = v56;
  v63 = [v56 scene];
  v64 = *&v63[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v65 = *(v256 + 24);
  v66 = v254;
  v251 = v61;
  if (v65 == 1)
  {
    v67 = v246;
    if (v61)
    {
      sub_1AF8D360C(v64);
      sub_1AF8BD8C0(v64);
    }

    v68 = v62;
    v69 = v312;
    sub_1AF925378(v62);
    v312 = v69;
    if (v69)
    {

      sub_1AF439ED8(v237, v43);

LABEL_23:

      v48 = v255;
      goto LABEL_24;
    }

    v234 = v43;
    v235 = v58;
  }

  else
  {
    v234 = v43;
    v235 = v58;
    v67 = v246;
    v68 = v62;
  }

  sub_1AF7D3C8C(v64, 1);
  sub_1AF7D5A90(v64, 1, 1);

  v43 = *(v256 + 24);
  type metadata accessor for SwiftTrampolineCodeGen();
  swift_allocObject();

  v70 = v248;

  v71 = sub_1AFB0F318(v66, v249, v70);

  v72 = v312;
  v73 = sub_1AFB081E0(v43);
  v312 = v72;
  if (v72)
  {

    sub_1AF439ED8(v237, v234);

    goto LABEL_23;
  }

  v232 = v71;
  if (v73 < 1)
  {

    v233 = 0;
  }

  else
  {
    v75 = v67;
    sub_1AFDFCF58();
    v76 = sub_1AFDFCF08();
    v77 = v41;
    v79 = v78;

    (v244)[1](v75, v245);
    v80 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v81 = sub_1AFDFC1A8();
    v233 = [v80 initRegularFileWithContents_];

    v66 = v254;
    v82 = v79;
    v41 = v77;
    sub_1AF587E7C(v76, v82);
  }

  type metadata accessor for CTrampolineCodeGen();
  swift_allocObject();

  v83 = v248;

  v84 = sub_1AFB0F318(v66, v249, v83);

  v85 = v312;
  sub_1AFB06C28(v43);
  v312 = v85;
  if (v85)
  {

    sub_1AF439ED8(v237, v234);

    sub_1AF85A428(v255, type metadata accessor for BundleInfo);
LABEL_34:

    return v43;
  }

  v230 = v41;
  v231 = v84;
  v86 = v246;
  sub_1AFDFCF58();
  v87 = sub_1AFDFCF08();
  v89 = v88;

  v229 = v244[1];
  v229(v86, v245);
  v90 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v91 = sub_1AFDFC1A8();
  v244 = [v90 initRegularFileWithContents_];

  v92 = v254;
  sub_1AF587E7C(v87, v89);
  v93 = type metadata accessor for MetalTrampolineCodeGen();
  swift_allocObject();

  v94 = sub_1AFB0F318(v92, v249, v83);

  v95 = v312;
  v96 = sub_1AFB01F1C(v43);
  v312 = v95;
  if (v95)
  {

    sub_1AF439ED8(v237, v234);

    sub_1AF85A428(v255, type metadata accessor for BundleInfo);
    v97 = v244;
LABEL_33:

    goto LABEL_34;
  }

  v98 = v229;
  v228[1] = v93;
  v99 = v96;
  v100 = sub_1AF8BB88C();
  v102 = v101;
  v228[2] = v94;
  v259 = sub_1AFAFA374();
  v260 = v103;
  v104 = v255;
  if (qword_1EB6372E0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B2718AE0](qword_1EB6C35A8, unk_1EB6C35B0);
  MEMORY[0x1B2718AE0](v100, v102);

  v105 = sub_1AFB12950(v99);
  v107 = v106;

  MEMORY[0x1B2718AE0](v105, v107);

  v108 = v246;
  sub_1AFDFCF58();
  v109 = sub_1AFDFCF08();
  v111 = v110;

  v98(v108, v245);
  v43 = 0x1E696A000uLL;
  v112 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v113 = sub_1AFDFC1A8();
  v246 = [v112 initRegularFileWithContents_];

  sub_1AF587E7C(v109, v111);
  v114 = *(v256 + 32);
  v115 = v249;
  if (v114)
  {
    v116 = v253;
    if (*(v114 + 16))
    {

      v118 = sub_1AF757304(v117);
      v119 = v312;
      sub_1AF81090C(v92, v115, v248, v118, 1);
      v312 = v119;
      if (v119)
      {

        sub_1AF439ED8(v237, v234);

LABEL_43:
        v124 = v104;
LABEL_44:
        sub_1AF85A428(v124, type metadata accessor for BundleInfo);

        v97 = v246;
        goto LABEL_33;
      }

      v120 = v240;
      sub_1AFDFC018();

      v121 = v312;
      v122 = sub_1AFDFC148();
      v312 = v121;
      if (v121)
      {

        sub_1AF439ED8(v237, v234);
        (*(v241 + 1))(v120, v242);

        goto LABEL_43;
      }

      v125 = v122;
      v126 = v123;
      v127 = v241 + 8;
      *&v240 = *(v241 + 1);
      (v240)(v120, v242);
      v128 = objc_allocWithZone(MEMORY[0x1E696AC38]);
      sub_1AF43C9F0(v125, v126);
      v129 = v126;
      v130 = sub_1AFDFC1A8();
      v131 = [v128 initRegularFileWithContents_];
      v132 = v125;
      v133 = v115;
      v134 = v131;

      v135 = v132;
      v245 = v129;
      sub_1AF439ED8(v132, v129);
      sub_1AF826820(v134, 0x2E73747069726373, 0xEE00656C646E7562, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);
      swift_allocObject();
      v43 = v254;

      v136 = v248;

      sub_1AFB0F318(v43, v133, v136);

      LOWORD(v132) = *(v114 + 32);

      LOWORD(v259) = v132;
      v137 = v239;
      v138 = v312;
      sub_1AFB03BB4(&v259, v239);
      v312 = v138;
      if (v138)
      {

        sub_1AF439ED8(v237, v234);

        sub_1AF439ED8(v135, v245);

LABEL_47:

        v124 = v255;
        goto LABEL_44;
      }

      v236 = v127;
      v139 = v241;
      v140 = v242;
      v141 = (*(v241 + 6))(v137, 1, v242);
      v142 = v235;
      if (v141 == 1)
      {
        sub_1AF439ED8(v135, v245);

        sub_1AF85B280(v137, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
      }

      else
      {
        v43 = v238;
        v139[4](v238, v137, v140);
        v143 = v312;
        v144 = sub_1AFDFC148();
        v312 = v143;
        if (v143)
        {

          sub_1AF439ED8(v135, v245);

          sub_1AF439ED8(v237, v234);
          (v240)(v43, v140);
          goto LABEL_47;
        }

        v146 = v144;
        v147 = v145;
        v235 = v142;
        v241 = objc_allocWithZone(MEMORY[0x1E696AC38]);
        v148 = v140;
        v149 = v43;
        v150 = sub_1AFDFC1A8();
        v241 = [v241 initRegularFileWithContents_];

        sub_1AF439ED8(v146, v147);
        sub_1AF826820(v241, 0xD000000000000010, 0x80000001AFF36210, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);

        sub_1AF439ED8(v135, v245);
        (v240)(v149, v148);
      }

      v92 = v254;
    }
  }

  sub_1AF7D62D4(v92);
  if (*(v256 + 24) == 1)
  {
    sub_1AF68B420();
    sub_1AF68BA24();
    sub_1AF68C020();
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v306 = qword_1ED73B840;
    v307 = 0;
    v308 = 2;
    v309 = 1;
    v310 = 2;
    v311 = 0;

    sub_1AF826AE0(&type metadata for DoNotExport, &off_1F253CF60, v262);

    v298[0] = v262[0];
    v298[1] = v262[1];
    v299 = v263;
    sub_1AF6B06C0(v92, v298, 0x200000000, &v264);
    sub_1AF85A428(v262, sub_1AF85999C);
    if (v264)
    {
      v294 = v267;
      v295 = v268;
      v296 = v269;
      v291 = v264;
      v297 = v270;
      v292 = v265;
      v293 = v266;
      sub_1AF6B8EAC(0);
      sub_1AF8598C4(&v264, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF85B840);
    }

    v92 = v254;
    sub_1AF68D1FC();
    sub_1AF68D51C();
    v151 = *(v256 + 24);
  }

  else
  {
    v151 = 0;
  }

  v245 = sub_1AF8B0954(v92, v151);

  v152 = MEMORY[0x1E69E7CC0];
  sub_1AF6B8360(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v271);
  v300 = v271;
  v301 = v272;
  v302 = v273;
  v303 = v274 | 1;
  v304 = v275;
  v305 = v276;
  sub_1AF6B06C0(v92, &v300, 0x200000000, &v277);
  if (v277)
  {
    v287 = v280;
    v288 = v281;
    v289 = v282;
    v284 = v277;
    v290 = v283;
    v285 = v278;
    v286 = v279;
    v152 = sub_1AF6B9944();
    sub_1AF8598C4(&v277, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF85B840);
  }

  v153 = v256;
  v154 = sub_1AF69B9F8(v152, v243, *(v256 + 26));
  v156 = v155;
  v158 = v157;

  v159 = v253;
  v160 = [v253 scene];
  v161 = *&v160[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  *(v158 + 16) = v161;

  v162 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF43C9F0(v154, v156);
  v163 = sub_1AFDFC1A8();
  v164 = [v162 initRegularFileWithContents_];

  v242 = v154;
  v243 = v156;
  sub_1AF439ED8(v154, v156);
  v165 = v164;
  v166 = v261;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v259 = v166;
  v241 = v165;
  sub_1AF8596D0(v165, v252, v250, v167, sub_1AF84D4C0, sub_1AF83CCB4);

  v261 = v259;
  v168 = objc_opt_self();
  v169 = sub_1AFDFCEC8();
  v252 = v158;
  [v168 setValue:v158 forKey:v169];

  sub_1AF859850();
  v170 = swift_allocObject();
  v240 = xmmword_1AFE431C0;
  *(v170 + 16) = xmmword_1AFE431C0;
  v259 = sub_1AFDFCEF8();
  v260 = v171;
  sub_1AFDFE178();
  v172 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(v170 + 96) = sub_1AF0D4478(0, &qword_1ED721F80);
  *(v170 + 72) = v172;
  sub_1AF43F8B0(v170);
  swift_setDeallocating();
  sub_1AF8598C4(v170 + 32, &qword_1EB63F360, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, sub_1AF0D8108);
  swift_deallocClassInstance();
  v173 = sub_1AFDFCBE8();

  v174 = [v159 dataRepresentationWithOptions_];

  v175 = sub_1AFDFC1B8();
  v177 = v176;

  v178 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF43C9F0(v175, v177);
  v179 = sub_1AFDFC1A8();
  v180 = [v178 initRegularFileWithContents_];

  sub_1AF439ED8(v175, v177);
  sub_1AF826820(v180, 0x6C702E646C726F77, 0xEB00000000747369, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);
  v181 = v245;

  v257 = v181;
  if (v251 && *(v251 + OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager))
  {
    v43 = v175;

    v183 = v312;
    sub_1AF8AE0E4(v182, &v257);
    v184 = v233;
    v185 = v234;
    v312 = v183;
    if (v183)
    {

      sub_1AF439ED8(v237, v185);

      sub_1AF439ED8(v242, v243);
      sub_1AF439ED8(v175, v177);

      sub_1AF692DB0(&v271);

      sub_1AF85A428(v255, type metadata accessor for BundleInfo);

      return v43;
    }

    v250 = v177;

    v224 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    sub_1AF0D4478(0, &unk_1ED726BA0);
    v225 = sub_1AFDFCBE8();

    v226 = [v224 initDirectoryWithFileWrappers_];

    sub_1AF826820(v226, 0x737465737361, 0xE600000000000000, sub_1AF84D4C0, sub_1AF83CCB4, sub_1AF6B7624, sub_1AF84D4C0);
  }

  else
  {
    v186 = v249;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v259 = 0;
    v260 = 0xE000000000000000;
    sub_1AFDFE218();

    v259 = 0xD000000000000015;
    v260 = 0x80000001AFF36960;
    MEMORY[0x1B2718AE0](v186, v248);
    v188 = v259;
    v187 = v260;
    v189 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v227 = v189;
      swift_once();
      v189 = v227;
    }

    v250 = v177;
    v259 = 0;
    sub_1AF0D4F18(v189, &v259, v188, v187);
  }

  v190 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  sub_1AF0D4478(0, &unk_1ED726BA0);
  v191 = sub_1AFDFCBE8();

  v192 = [v190 initDirectoryWithFileWrappers_];

  if (*(v256 + 25))
  {
    v256 = v175;
    sub_1AF0D0DD8(0, &qword_1EB63F368, sub_1AF859924, MEMORY[0x1E69E6F90]);
    v193 = swift_allocObject();
    *(v193 + 16) = v240;
    v195 = v248;
    v194 = v249;
    v259 = v249;
    v260 = v248;

    MEMORY[0x1B2718AE0](2019980846, 0xE400000000000000);
    v196 = v260;
    *(v193 + 32) = v259;
    *(v193 + 40) = v196;
    *(v193 + 48) = v192;
    v197 = v192;
    sub_1AF43F898(v193);
    swift_setDeallocating();
    sub_1AF85A428(v193 + 32, sub_1AF859924);
    swift_deallocClassInstance();
    v198 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v199 = sub_1AFDFCBE8();

    v43 = [v198 &selRef:v199 :?commitResourceCommandBufferIfNeeded + 2];

    v200 = v233;
    if (v233)
    {
      v259 = v194;
      v260 = v195;

      v201 = v200;
      MEMORY[0x1B2718AE0](0x74666977732ELL, 0xE600000000000000);
      v202 = sub_1AFDFCEC8();

      [v201 setPreferredFilename_];

      v203 = [v43 addFileWrapper_];
    }

    v204 = v244;
    v205 = v256;
    if (v244)
    {
      v259 = v249;
      v260 = v248;

      v206 = v204;
      MEMORY[0x1B2718AE0](1886413614, 0xE400000000000000);
      v207 = sub_1AFDFCEC8();

      [v206 setPreferredFilename_];

      v208 = [v43 addFileWrapper_];
      v204 = v244;
    }

    v209 = v246;
    if (v246)
    {
      v259 = v249;
      v260 = v248;

      v210 = v209;
      MEMORY[0x1B2718AE0](0x6C6174656D2ELL, 0xE600000000000000);
      v211 = sub_1AFDFCEC8();

      [v210 setPreferredFilename_];

      v212 = [v43 addFileWrapper_];

      v204 = v244;
    }

    else
    {
    }

    sub_1AF692DB0(&v271);

    sub_1AF439ED8(v205, v250);

    sub_1AF439ED8(v237, v234);
    sub_1AF439ED8(v242, v243);
    sub_1AF85A428(v255, type metadata accessor for BundleInfo);
  }

  else
  {
    v209 = v246;
    if (*(v256 + 24) != 1)
    {
      goto LABEL_86;
    }

    v213 = v233;
    if (v233)
    {
      v259 = 1701080931;
      v260 = 0xE400000000000000;
      v214 = v233;
      MEMORY[0x1B2718AE0](0x74666977732ELL, 0xE600000000000000);
      v215 = sub_1AFDFCEC8();

      [v214 setPreferredFilename_];

      v216 = [v192 addFileWrapper_];
    }

    if (v244)
    {
      v259 = 1701080931;
      v260 = 0xE400000000000000;
      v217 = v244;
      MEMORY[0x1B2718AE0](1886413614, 0xE400000000000000);
      v218 = sub_1AFDFCEC8();

      [v217 setPreferredFilename_];

      v219 = [v192 addFileWrapper_];
    }

    v233 = v213;
    if (v209)
    {
      v259 = 1701080931;
      v260 = 0xE400000000000000;
      v220 = v209;
      MEMORY[0x1B2718AE0](0x6C6174656D2ELL, 0xE600000000000000);
      v221 = sub_1AFDFCEC8();

      [v220 setPreferredFilename_];

      v222 = [v192 addFileWrapper_];
    }

    else
    {
LABEL_86:
    }

    v223 = v253;
    sub_1AF692DB0(&v271);

    sub_1AF439ED8(v175, v250);

    sub_1AF439ED8(v237, v234);
    sub_1AF439ED8(v242, v243);
    sub_1AF85A428(v255, type metadata accessor for BundleInfo);
    v43 = v192;
    v204 = v244;
    v200 = v233;
  }

  return v43;
}

uint64_t VFXSaver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF82BA00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &unk_1EB630B90);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = sub_1AFDFF278();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v22) >> 6;
        do
        {
          if (v24 + 1 == v25)
          {
            v24 = 0;
          }

          else
          {
            ++v24;
          }

          v26 = *(v13 + 8 * v24);
        }

        while (v26 == -1);
        v14 = __clz(__rbit64(~v26)) + (v24 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82BC4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB630BF8);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82BED8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1AF859FA4(0, &qword_1EB630C48, MEMORY[0x1E69695A8], sub_1AF4644D8);
  v42 = a2;
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v12 = 0;
  v13 = *(v9 + 64);
  v37 = (v9 + 64);
  v38 = v2;
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v39 = (v6 + 16);
  v40 = v6;
  v43 = (v6 + 32);
  v18 = v10 + 64;
  v45 = v5;
  v19 = v41;
  while (v16)
  {
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v12 << 6);
LABEL_14:
    v26 = *(v6 + 72);
    v27 = *(v9 + 48) + v26 * v22;
    if (v42)
    {
      (*v43)(v19, v27, v45);
    }

    else
    {
      (*v39)(v19, v27, v45);
    }

    v44 = *(*(v9 + 56) + v22);
    sub_1AF4644D8();
    v28 = sub_1AFDFCCF8();
    v29 = -1 << *(v11 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = (63 - v29) >> 6;
      do
      {
        if (v31 + 1 == v32)
        {
          v31 = 0;
        }

        else
        {
          ++v31;
        }

        v33 = *(v18 + 8 * v31);
      }

      while (v33 == -1);
      v20 = __clz(__rbit64(~v33)) + (v31 << 6);
    }

    v19 = v41;
    *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    (*v43)((*(v11 + 48) + v26 * v20), v19, v45);
    *(*(v11 + 56) + v20) = v44;
    ++*(v11 + 16);
    v6 = v40;
  }

  v23 = v12 << 6;
  while (1)
  {
    v24 = v12 + 1;
    if (v12 + 1 >= v17)
    {
      break;
    }

    v25 = *(v9 + 8 * v12 + 72);
    v23 += 64;
    ++v12;
    if (v25)
    {
      v16 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v12 = v24;
      goto LABEL_14;
    }
  }

  if (v42)
  {
    v34 = 1 << *(v9 + 32);
    v3 = v38;
    if (v34 >= 64)
    {
      bzero(v37, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v34;
    }

    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v38;
LABEL_31:
  *v3 = v11;
  return result;
}

uint64_t sub_1AF82C288(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1AF85A9E8(0, &qword_1EB630C30, sub_1AF444718);
  v44 = a2;
  v11 = sub_1AFDFE5A8();
  v12 = v11;
  if (!*(v10 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v49 = v9;
  v13 = 0;
  v14 = *(v10 + 64);
  v40 = (v10 + 64);
  v41 = v2;
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v42 = (v6 + 16);
  v43 = v6;
  v45 = (v6 + 32);
  v19 = v11 + 64;
  while (v17)
  {
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v13 << 6);
LABEL_14:
    v27 = *(v10 + 48) + *(v43 + 72) * v23;
    v28 = 16 * v23;
    v48 = *(v43 + 72);
    if (v44)
    {
      (*v45)(v49, v27, v5);
      v29 = *(v10 + 56) + v28;
      v47 = *v29;
      v46 = *(v29 + 8);
    }

    else
    {
      (*v42)(v49, v27, v5);
      v30 = *(v10 + 56) + v28;
      v31 = *(v30 + 8);
      v47 = *v30;
      v46 = v31;
      sub_1AF85AA64(v47, v31);
    }

    sub_1AF4644D8();
    v32 = sub_1AFDFCCF8();
    v33 = -1 << *(v12 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = (63 - v33) >> 6;
      do
      {
        if (v35 + 1 == v36)
        {
          v35 = 0;
        }

        else
        {
          ++v35;
        }

        v37 = *(v19 + 8 * v35);
      }

      while (v37 == -1);
      v20 = __clz(__rbit64(~v37)) + (v35 << 6);
    }

    *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    (*v45)((*(v12 + 48) + v48 * v20), v49, v5);
    v21 = *(v12 + 56) + 16 * v20;
    *v21 = v47;
    *(v21 + 8) = v46;
    ++*(v12 + 16);
  }

  v24 = v13 << 6;
  while (1)
  {
    v25 = v13 + 1;
    if (v13 + 1 >= v18)
    {
      break;
    }

    v26 = *(v10 + 8 * v13 + 72);
    v24 += 64;
    ++v13;
    if (v26)
    {
      v17 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) + v24;
      v13 = v25;
      goto LABEL_14;
    }
  }

  if (v44)
  {
    v38 = 1 << *(v10 + 32);
    v3 = v41;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v10 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v41;
LABEL_31:
  *v3 = v12;
  return result;
}

uint64_t sub_1AF82C678(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB633190);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v34 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = (*(v5 + 56) + 16 * v21);
    v28 = *v26;
    v27 = v26[1];
    if ((a2 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = (*(v7 + 56) + 16 * v18);
    *v19 = v28;
    v19[1] = v27;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v34;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v34;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82C8F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1EB63F4E0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v8 = 0;
  v42 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_14:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 88 * v22;
    if (a2)
    {
      v30 = *(v29 + 16);
      v43 = *v29;
      v44 = v30;
      v31 = *(v29 + 32);
      v32 = *(v29 + 48);
      v33 = *(v29 + 64);
      v48 = *(v29 + 80);
      v47 = v33;
      v45 = v31;
      v46 = v32;
    }

    else
    {
      sub_1AF4455CC(v29, &v43);
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v34 = sub_1AFDFF2F8();
    v35 = -1 << *(v7 + 32);
    v36 = v34 & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = (63 - v35) >> 6;
      do
      {
        if (v37 + 1 == v38)
        {
          v37 = 0;
        }

        else
        {
          ++v37;
        }

        v39 = *(v13 + 8 * v37);
      }

      while (v39 == -1);
      v14 = __clz(__rbit64(~v39)) + (v37 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = (*(v7 + 48) + 16 * v14);
    *v15 = v27;
    v15[1] = v28;
    v16 = *(v7 + 56) + 88 * v14;
    v17 = v44;
    *v16 = v43;
    *(v16 + 16) = v17;
    v18 = v45;
    v19 = v46;
    v20 = v47;
    *(v16 + 80) = v48;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    *(v16 + 32) = v18;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_14;
    }
  }

  if (a2)
  {
    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v42, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v40;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  v3 = v2;
LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82CBE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF43D014();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v24);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82CE8C(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v7 = v6;
  v9 = *v6;
  sub_1AF85A824(0, a3, a4, a5, a6);
  v10 = sub_1AFDFE5A8();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v12 = 0;
  v34 = (v9 + 64);
  v35 = v7;
  v13 = 1 << *(v9 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10 + 64;
  while (v15)
  {
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v12 << 6);
LABEL_15:
    v28 = *(*(v9 + 48) + 8 * v24);
    v29 = *(*(v9 + 56) + 8 * v24);
    if ((a2 & 1) == 0)
    {
    }

    v18 = sub_1AFDFF278();
    v19 = -1 << *(v11 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v17 + 8 * (v20 >> 6))) != 0)
    {
      v22 = __clz(__rbit64((-1 << v20) & ~*(v17 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v19) >> 6;
      do
      {
        if (v21 + 1 == v30)
        {
          v21 = 0;
        }

        else
        {
          ++v21;
        }

        v31 = *(v17 + 8 * v21);
      }

      while (v31 == -1);
      v22 = __clz(__rbit64(~v31)) + (v21 << 6);
    }

    *(v17 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v28;
    *(*(v11 + 56) + 8 * v22) = v29;
    ++*(v11 + 16);
  }

  v25 = v12 << 6;
  while (1)
  {
    v26 = v12 + 1;
    if (v12 + 1 >= v16)
    {
      break;
    }

    v27 = *(v9 + 8 * v12 + 72);
    v25 += 64;
    ++v12;
    if (v27)
    {
      v15 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) + v25;
      v12 = v26;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v32 = 1 << *(v9 + 32);
    v7 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v9 + 16) = 0;
    goto LABEL_29;
  }

  v7 = v35;
LABEL_30:
  *v7 = v11;
  return result;
}

uint64_t sub_1AF82D100(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF446A3C();
  v34 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(v5 + 48) + 32 * v21;
    v35 = *v25;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v35);
    sub_1AFDFE008();
    sub_1AFDFCD08();
    MEMORY[0x1B271ACB0](v27);
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v7 + 48) + 32 * v18;
    *v19 = v35;
    *(v19 + 16) = v26;
    *(v19 + 24) = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82D3C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF446040();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v30 = (v5 + 64);
  v31 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = v19 | (v8 << 6);
LABEL_15:
    v24 = *(*(v5 + 48) + 4 * v20);
    v25 = *(*(v5 + 56) + 8 * v20);
    if ((a2 & 1) == 0)
    {
    }

    v14 = MEMORY[0x1B271AC80](*(v7 + 40), v24, 4);
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v26)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v27 = *(v13 + 8 * v17);
      }

      while (v27 == -1);
      v18 = __clz(__rbit64(~v27)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 4 * v18) = v24;
    *(*(v7 + 56) + 8 * v18) = v25;
    ++*(v7 + 16);
  }

  v21 = v8 << 6;
  while (1)
  {
    v22 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v23 = *(v5 + 8 * v8 + 72);
    v21 += 64;
    ++v8;
    if (v23)
    {
      v11 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) + v21;
      v8 = v22;
      goto LABEL_15;
    }
  }

  if (a2)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v31;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v31;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82D618(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726B10);
  v36 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v35 = v3;
  v8 = 0;
  v34 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = *(*(v5 + 48) + 8 * v21);
    v26 = (*(v5 + 56) + 24 * v21);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    if ((v36 & 1) == 0)
    {
    }

    v14 = sub_1AFDFF278();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v30)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v31 = *(v13 + 8 * v17);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v7 + 48) + 8 * v18) = v25;
    v19 = (*(v7 + 56) + 24 * v18);
    *v19 = v27;
    v19[1] = v28;
    v19[2] = v29;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v32 = 1 << *(v5 + 32);
    v3 = v35;
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v35;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82D8C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED723060);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82DB18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726B00);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 4 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 4 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82DD74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED726AE0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v31 = a2;
  v8 = 0;
  v30 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v8 << 6);
LABEL_14:
    v20 = *(*(v5 + 48) + 8 * v16);
    v21 = *(*(v5 + 56) + 8 * v16);
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](v20);
    v22 = sub_1AFDFF2F8();
    v23 = -1 << *(v7 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = (63 - v23) >> 6;
      do
      {
        if (v25 + 1 == v26)
        {
          v25 = 0;
        }

        else
        {
          ++v25;
        }

        v27 = *(v13 + 8 * v25);
      }

      while (v27 == -1);
      v14 = __clz(__rbit64(~v27)) + (v25 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v20;
    *(*(v7 + 56) + 8 * v14) = v21;
    ++*(v7 + 16);
  }

  v17 = v8 << 6;
  while (1)
  {
    v18 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v19 = *(v5 + 8 * v8 + 72);
    v17 += 64;
    ++v8;
    if (v19)
    {
      v11 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) + v17;
      v8 = v18;
      goto LABEL_14;
    }
  }

  if (v31)
  {
    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v30 = -1 << v28;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v2;
LABEL_28:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82DFF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B890(0, &qword_1ED72F7E0);
  v36 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v35 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v21 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v22 = v21 | (v8 << 6);
LABEL_15:
    v26 = (*(v5 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v5 + 56) + 24 * v22;
    v30 = *v29;
    v38 = *(v29 + 8);
    v37 = *(v29 + 16);
    if ((v36 & 1) == 0)
    {
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v31)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v32 = *(v13 + 8 * v17);
      }

      while (v32 == -1);
      v18 = __clz(__rbit64(~v32)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v27;
    v19[1] = v28;
    v20 = *(v7 + 56) + 24 * v18;
    *v20 = v30;
    *(v20 + 8) = v38;
    *(v20 + 16) = v37;
    ++*(v7 + 16);
  }

  v23 = v8 << 6;
  while (1)
  {
    v24 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v25 = *(v5 + 8 * v8 + 72);
    v23 += 64;
    ++v8;
    if (v25)
    {
      v11 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) + v23;
      v8 = v24;
      goto LABEL_15;
    }
  }

  if (v36)
  {
    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v35, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v35 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82E2B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1EB63F668, type metadata accessor for RGResource);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v8 << 6);
LABEL_14:
      v20 = *(*(v5 + 48) + 8 * v16);
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = sub_1AFDFF278();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = (63 - v23) >> 6;
        do
        {
          if (v25 + 1 == v26)
          {
            v25 = 0;
          }

          else
          {
            ++v25;
          }

          v27 = *(v13 + 8 * v25);
        }

        while (v27 == -1);
        v14 = __clz(__rbit64(~v27)) + (v25 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v20;
      *(*(v7 + 56) + 8 * v14) = v21;
      ++*(v7 + 16);
    }

    v17 = v8 << 6;
    while (1)
    {
      v18 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v19 = *(v5 + 8 * v8 + 72);
      v17 += 64;
      ++v8;
      if (v19)
      {
        v11 = (v19 - 1) & v19;
        v16 = __clz(__rbit64(v19)) + v17;
        v8 = v18;
        goto LABEL_14;
      }
    }

    if (v30)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82E51C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF44657C();
  v34 = a2;
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v20 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v21 = v20 | (v8 << 6);
LABEL_15:
    v25 = (*(v5 + 48) + 16 * v21);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v5 + 56) + 8 * v21);
    if ((v34 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    sub_1AFDFF288();
    sub_1AFDFD038();
    v14 = sub_1AFDFF2F8();
    v15 = -1 << *(v7 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v15) >> 6;
      do
      {
        if (v17 + 1 == v29)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        v30 = *(v13 + 8 * v17);
      }

      while (v30 == -1);
      v18 = __clz(__rbit64(~v30)) + (v17 << 6);
    }

    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = (*(v7 + 48) + 16 * v18);
    *v19 = v26;
    v19[1] = v27;
    *(*(v7 + 56) + 8 * v18) = v28;
    ++*(v7 + 16);
  }

  v22 = v8 << 6;
  while (1)
  {
    v23 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v24 = *(v5 + 8 * v8 + 72);
    v22 += 64;
    ++v8;
    if (v24)
    {
      v11 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) + v22;
      v8 = v23;
      goto LABEL_15;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v2;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82E7A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B5B0();
  v6 = sub_1AFDFE5A8();
  v8 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v34 = a2;
  v9 = 0;
  v33 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v9 << 6);
LABEL_14:
    *&v7 = *(*(v5 + 48) + 8 * v18);
    v35 = v7;
    v22 = (*(v5 + 56) + 16 * v18);
    v24 = *v22;
    v23 = v22[1];
    sub_1AFDFF288();
    sub_1AFDFF2C8();
    sub_1AFDFF2C8();
    v25 = sub_1AFDFF2F8();
    v26 = -1 << *(v8 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) != 0)
    {
      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v26) >> 6;
      do
      {
        if (v28 + 1 == v29)
        {
          v28 = 0;
        }

        else
        {
          ++v28;
        }

        v30 = *(v14 + 8 * v28);
      }

      while (v30 == -1);
      v15 = __clz(__rbit64(~v30)) + (v28 << 6);
    }

    *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(&v7 + 1) = *(&v35 + 1);
    *(*(v8 + 48) + 8 * v15) = v35;
    v16 = (*(v8 + 56) + 16 * v15);
    *v16 = v24;
    v16[1] = v23;
    ++*(v8 + 16);
  }

  v19 = v9 << 6;
  while (1)
  {
    v20 = v9 + 1;
    if (v9 + 1 >= v13)
    {
      break;
    }

    v21 = *(v5 + 8 * v9 + 72);
    v19 += 64;
    ++v9;
    if (v21)
    {
      v12 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) + v19;
      v9 = v20;
      goto LABEL_14;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v2;
LABEL_28:
  *v3 = v8;
  return result;
}

uint64_t sub_1AF82EA24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1EB630BC8, sub_1AF448148);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

    goto LABEL_30;
  }

  v8 = 0;
  v38 = (v5 + 64);
  v39 = v3;
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
    if (a2)
    {
LABEL_10:
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = (*(v5 + 56) + 144 * v17);
      v53 = v19[5];
      v54 = v19[6];
      v55[0] = v19[7];
      *(v55 + 9) = *(v19 + 121);
      v49 = v19[1];
      v50 = v19[2];
      v51 = v19[3];
      v52 = v19[4];
      v48 = *v19;
    }

    else
    {
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * v17);
      v23 = (*(v5 + 56) + 144 * v17);
      v40 = *v23;
      v24 = v23[4];
      v26 = v23[1];
      v25 = v23[2];
      v43 = v23[3];
      v44 = v24;
      v41 = v26;
      v42 = v25;
      v28 = v23[6];
      v27 = v23[7];
      v29 = v23[5];
      *&v47[9] = *(v23 + 121);
      v46 = v28;
      *v47 = v27;
      v45 = v29;
      sub_1AF85A058(&v40, &v48, sub_1AF448148);
      v54 = v46;
      v55[0] = *v47;
      *(v55 + 9) = *&v47[9];
      v50 = v42;
      v51 = v43;
      v52 = v44;
      v53 = v45;
      v48 = v40;
      v49 = v41;
    }

    v30 = sub_1AFDFF278();
    v31 = -1 << *(v7 + 32);
    v32 = v30 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v13 + 8 * (v32 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v32) & ~*(v13 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = (63 - v31) >> 6;
      do
      {
        if (v33 + 1 == v34)
        {
          v33 = 0;
        }

        else
        {
          ++v33;
        }

        v35 = *(v13 + 8 * v33);
      }

      while (v35 == -1);
      v14 = __clz(__rbit64(~v35)) + (v33 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v18;
    v15 = (*(v7 + 56) + 144 * v14);
    v15[5] = v53;
    v15[6] = v54;
    v15[7] = v55[0];
    *(v15 + 121) = *(v55 + 9);
    v15[1] = v49;
    v15[2] = v50;
    v15[3] = v51;
    v15[4] = v52;
    *v15 = v48;
    ++*(v7 + 16);
  }

  v20 = v8 << 6;
  while (1)
  {
    v21 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v22 = *(v5 + 8 * v8 + 72);
    v20 += 64;
    ++v8;
    if (v22)
    {
      v11 = (v22 - 1) & v22;
      v17 = __clz(__rbit64(v22)) + v20;
      v8 = v21;
      if (a2)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  if (a2)
  {
    v36 = 1 << *(v5 + 32);
    v3 = v39;
    if (v36 >= 64)
    {
      bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  v3 = v39;
LABEL_30:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82EDB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF85B728();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v34 = a2;
  v35 = v3;
  v8 = 0;
  v33 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v8 << 6);
LABEL_14:
    v21 = *(v5 + 56) + 12 * v17;
    v22 = *(*(v5 + 48) + 8 * v17);
    v23 = *(v21 + 8);
    v24 = *v21;
    v25 = sub_1AFDFF278();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) != 0)
    {
      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (63 - v26) >> 6;
      do
      {
        if (v28 + 1 == v29)
        {
          v28 = 0;
        }

        else
        {
          ++v28;
        }

        v30 = *(v13 + 8 * v28);
      }

      while (v30 == -1);
      v14 = __clz(__rbit64(~v30)) + (v28 << 6);
    }

    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v7 + 48) + 8 * v14) = v22;
    v15 = *(v7 + 56) + 12 * v14;
    *v15 = v24;
    *(v15 + 8) = v23;
    ++*(v7 + 16);
  }

  v18 = v8 << 6;
  while (1)
  {
    v19 = v8 + 1;
    if (v8 + 1 >= v12)
    {
      break;
    }

    v20 = *(v5 + 8 * v8 + 72);
    v18 += 64;
    ++v8;
    if (v20)
    {
      v11 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) + v18;
      v8 = v19;
      goto LABEL_14;
    }
  }

  if (v34)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v35;
    if (v31 >= 64)
    {
      bzero(v33, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v33 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  v3 = v35;
LABEL_28:
  *v3 = v7;
  return result;
}

uint64_t sub_1AF82F018(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF859E94(0, &qword_1ED726B30, sub_1AF445EE0);
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = a2;
    v8 = 0;
    v32 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v8 << 6);
LABEL_14:
      v21 = *(*(v5 + 48) + 8 * v17);
      v22 = *(v5 + 56) + 24 * v17;
      v23 = *(v22 + 16);
      v34 = *v22;
      v24 = sub_1AFDFF278();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = (63 - v25) >> 6;
        do
        {
          if (v27 + 1 == v28)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          v29 = *(v13 + 8 * v27);
        }

        while (v29 == -1);
        v14 = __clz(__rbit64(~v29)) + (v27 << 6);
      }

      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v21;
      v15 = *(v7 + 56) + 24 * v14;
      *v15 = v34;
      *(v15 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8 << 6;
    while (1)
    {
      v19 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v20 = *(v5 + 8 * v8 + 72);
      v18 += 64;
      ++v8;
      if (v20)
      {
        v11 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) + v18;
        v8 = v19;
        goto LABEL_14;
      }
    }

    if (v33)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v32 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1AF82F2A8(uint64_t a1, int a2, void (*a3)(void, __n128), void (*a4)(unint64_t, _BYTE *))
{
  v47 = a4;
  v6 = v4;
  v8 = sub_1AFDFE488();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  a3(0, v11);
  v45 = a2;
  v15 = sub_1AFDFE5A8();
  v16 = v15;
  if (!*(v14 + 16))
  {
LABEL_30:

    goto LABEL_31;
  }

  v48 = v13;
  v17 = 0;
  v18 = *(v14 + 64);
  v41 = (v14 + 64);
  v42 = v4;
  v19 = 1 << *(v14 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v43 = (v9 + 16);
  v44 = v9;
  v46 = (v9 + 32);
  v23 = v15 + 64;
  v49 = v8;
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v17 << 6);
LABEL_14:
    v30 = *(v9 + 72);
    v31 = *(v14 + 48) + v30 * v26;
    if (v45)
    {
      (*v46)(v48, v31, v49);
      v47(*(v14 + 56) + 32 * v26, v50);
    }

    else
    {
      (*v43)(v48, v31, v49);
      sub_1AF0D5A54(*(v14 + 56) + 32 * v26, v50);
    }

    v32 = sub_1AFDFCCF8();
    v33 = -1 << *(v16 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) != 0)
    {
      v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v9 = v44;
    }

    else
    {
      v36 = (63 - v33) >> 6;
      v9 = v44;
      do
      {
        if (v35 + 1 == v36)
        {
          v35 = 0;
        }

        else
        {
          ++v35;
        }

        v37 = *(v23 + 8 * v35);
      }

      while (v37 == -1);
      v24 = __clz(__rbit64(~v37)) + (v35 << 6);
    }

    *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    (*v46)((*(v16 + 48) + v30 * v24), v48, v49);
    v47(v50, (*(v16 + 56) + 32 * v24));
    ++*(v16 + 16);
  }

  v27 = v17 << 6;
  while (1)
  {
    v28 = v17 + 1;
    if (v17 + 1 >= v22)
    {
      break;
    }

    v29 = *(v14 + 8 * v17 + 72);
    v27 += 64;
    ++v17;
    if (v29)
    {
      v21 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) + v27;
      v17 = v28;
      goto LABEL_14;
    }
  }

  if (v45)
  {
    v38 = 1 << *(v14 + 32);
    v6 = v42;
    if (v38 >= 64)
    {
      bzero(v41, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v41 = -1 << v38;
    }

    *(v14 + 16) = 0;
    goto LABEL_30;
  }

  v6 = v42;
LABEL_31:
  *v6 = v16;
  return result;
}

uint64_t sub_1AF82F63C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AF447EC4();
  v6 = sub_1AFDFE5A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v20 = v19 | (v8 << 6);
LABEL_15:
      v24 = *(*(v5 + 48) + 8 * v20);
      v30 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v14 = sub_1AFDFF278();
      v15 = -1 << *(v7 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = (63 - v15) >> 6;
        do
        {
          if (v17 + 1 == v25)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          v26 = *(v13 + 8 * v17);
        }

        while (v26 == -1);
        v18 = __clz(__rbit64(~v26)) + (v17 << 6);
      }

      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v24;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v21 = v8 << 6;
    while (1)
    {
      v22 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v23 = *(v5 + 8 * v8 + 72);
      v21 += 64;
      ++v8;
      if (v23)
      {
        v11 = (v23 - 1) & v23;
        v20 = __clz(__rbit64(v23)) + v21;
        v8 = v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v27 = 1 << *(v5 + 32);
      if (v27 >= 64)
      {
        bzero((v5 + 64), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *(v5 + 64) = -1 << v27;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}