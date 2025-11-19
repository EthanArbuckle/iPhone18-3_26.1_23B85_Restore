uint64_t sub_272307D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_27220056C(0, v1, 0);
  v2 = v30;
  v4 = -1 << *(a1 + 32);
  v29 = a1 + 64;
  result = sub_27237816C();
  v6 = result;
  v7 = 0;
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v29 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = (*(a1 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];
    result = sub_2723778AC();
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = v15;
      v27 = result;
      sub_27220056C((v16 > 1), v17 + 1, 1);
      v15 = v26;
      result = v27;
    }

    *(v30 + 16) = v17 + 1;
    v18 = v30 + 16 * v17;
    *(v18 + 32) = result;
    *(v18 + 40) = v15;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v28;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v9 = v28;
      v23 = (a1 + 72 + 8 * v10);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_2722CB07C(v6, v11, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_2722CB07C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_272307FA4(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_12:
    v15 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v17 = *v15;
    v16 = v15[1];
    v18 = *(a1 + 16);

    if (v18 && (v19 = sub_27220038C(v17, v16), (v20 & 1) != 0))
    {
      v21 = *(*(a1 + 56) + 8 * v19);

      swift_beginAccess();
      if (v21)
      {

        v22 = v2[4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v2[4];
        sub_272309F7C(v21, v17, v16, isUniquelyReferenced_nonNull_native, &qword_280882C68, &qword_2723846F8);

        v2[4] = v46;
        goto LABEL_21;
      }
    }

    else
    {
      swift_beginAccess();
    }

    v24 = v2[4];

    v25 = sub_27220038C(v17, v16);
    LOBYTE(v24) = v26;

    if (v24)
    {
      v27 = v2[4];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v2[4];
      if (!v28)
      {
        sub_272309E1C(&qword_280882C68, &qword_2723846F8);
      }

      v30 = *(*(v29 + 48) + 16 * v25 + 8);

      v31 = *(*(v29 + 56) + 8 * v25);

      sub_27223CF60(v25, v29);
      v2[4] = v29;
    }

LABEL_21:
    v32 = swift_endAccess();
    result = (*(*v2 + 120))(v32);
    if (!v33)
    {
      goto LABEL_31;
    }

    v34 = sub_27230A598(result, v33, a1);

    if (*(v34 + 16) && (v35 = sub_27220038C(v17, v16), (v36 & 1) != 0))
    {
      v11 = *(*(v34 + 56) + 8 * v35);

      swift_beginAccess();
      if (v11)
      {
        v12 = v2[5];
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v45 = v2[5];
        sub_272309F7C(v11, v17, v16, v13, &qword_280882C60, &unk_2723846E8);

        v2[5] = v45;
        goto LABEL_6;
      }
    }

    else
    {

      swift_beginAccess();
    }

    v37 = v2[5];
    v38 = sub_27220038C(v17, v16);
    LOBYTE(v37) = v39;

    if (v37)
    {
      v40 = v2[5];
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v2[5];
      if (!v41)
      {
        sub_272309E1C(&qword_280882C60, &unk_2723846E8);
      }

      v43 = *(*(v42 + 48) + 16 * v38 + 8);

      v44 = *(*(v42 + 56) + 8 * v38);

      sub_27223CF60(v38, v42);
      v2[5] = v42;
    }

LABEL_6:
    v7 &= v7 - 1;
    result = swift_endAccess();
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_27230834C(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);

  swift_beginAccess();
  result = swift_beginAccess();
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  v60 = v9;
  v61 = v3;
LABEL_6:
  if (v6)
  {
    v10 = v8;
LABEL_11:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = v12[1];
    v66 = *v12;
    v14 = *(v2 + 32);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;

    v63 = v14;

    v20 = 0;
    v65 = v13;
    while (v18)
    {
LABEL_22:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = (*(v63 + 48) + ((v20 << 10) | (16 * v24)));
      v27 = *v25;
      v26 = v25[1];
      if (*v25 != v66 || v26 != v13)
      {
        result = sub_27237865C();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      swift_beginAccess();
      v29 = *(v2 + 32);

      v30 = sub_27220038C(v27, v26);
      if (v31)
      {
        v32 = v30;
        v33 = *(v2 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v2 + 32);
        *(v2 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_272309E1C(&qword_280882C68, &qword_2723846F8);
        }

        v21 = *(*(v35 + 48) + 16 * v32 + 8);

        v22 = *(*(v35 + 56) + 8 * v32);

        sub_27223CF60(v32, v35);
        *(v2 + 32) = v35;
      }

      swift_endAccess();

      v13 = v65;
    }

    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v23 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v20;
      if (v18)
      {
        v20 = v23;
        goto LABEL_22;
      }
    }

    v36 = *(v2 + 40);
    v39 = *(v36 + 64);
    v38 = v36 + 64;
    v37 = v39;
    v40 = 1 << *(*(v2 + 40) + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & v37;
    v43 = (v40 + 63) >> 6;
    v64 = *(v2 + 40);

    v44 = 0;
    while (v42)
    {
LABEL_41:
      v48 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v49 = (*(v64 + 48) + ((v44 << 10) | (16 * v48)));
      v51 = *v49;
      v50 = v49[1];
      if (*v49 != v66 || v50 != v13)
      {
        result = sub_27237865C();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      swift_beginAccess();
      v53 = *(v2 + 40);

      v54 = sub_27220038C(v51, v50);
      if (v55)
      {
        v56 = v54;
        v57 = *(v2 + 40);
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v59 = *(v2 + 40);
        *(v2 + 40) = 0x8000000000000000;
        if (!v58)
        {
          sub_272309E1C(&qword_280882C60, &unk_2723846E8);
        }

        v45 = *(*(v59 + 48) + 16 * v56 + 8);

        v46 = *(*(v59 + 56) + 8 * v56);

        sub_27223CF60(v56, v59);
        *(v2 + 40) = v59;
      }

      swift_endAccess();

      v13 = v65;
    }

    while (1)
    {
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v47 >= v43)
      {

        v8 = v10;
        v9 = v60;
        v3 = v61;
        goto LABEL_6;
      }

      v42 = *(v38 + 8 * v47);
      ++v44;
      if (v42)
      {
        v44 = v47;
        goto LABEL_41;
      }
    }

LABEL_51:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272308770()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000021;
  v0[1] = 0x800000027238FC80;
  return swift_willThrow();
}

uint64_t sub_2723087D4(uint64_t a1, uint64_t a2)
{
  v118[2] = a2;
  v118[1] = a1;
  v2 = sub_272376D5C();
  v129 = *(v2 - 8);
  v3 = *(v129 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v128 = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v118 - v7;
  MEMORY[0x28223BE20](v6);
  v151 = v118 - v9;
  v10 = sub_272376AFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_272376B3C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v17 = *(v11 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  v20 = v16;
  sub_272376AEC();
  v150 = v19;
  sub_27230CDC4(&qword_280881C78, 255, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  v21 = v121;
  v120 = v20;
  v22 = sub_272376B0C();
  v23 = (*v21 + 120);
  v119 = *v23;
  v118[4] = v23;
  v119(v22);
  if (!v24)
  {
    goto LABEL_68;
  }

  sub_272376CAC();

  v25 = v151;
  sub_272376CFC();
  v27 = v129 + 8;
  v26 = *(v129 + 8);
  v26(v8, v2);
  v141 = sub_272376D2C();
  v29 = v28;
  v118[0] = v26;
  v26(v25, v2);
  v30 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C68, &qword_2723846F8);
  swift_beginAccess();
  v31 = v21[4];
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v126 = v34 & *(v31 + 64);
  v124 = (v33 + 63) >> 6;
  v123 = v31;

  v35 = 0;
  v36 = v128;
  v142 = v29;
  v122 = v32;
  v127 = v2;
  v129 = v27;
LABEL_7:
  v37 = v126;
  if (v126)
  {
    v38 = v29;
    v39 = v30;
    v40 = v35;
    goto LABEL_13;
  }

  while (1)
  {
    v40 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_63;
    }

    if (v40 >= v124)
    {
      break;
    }

    v37 = *(v32 + 8 * v40);
    ++v35;
    if (v37)
    {
      v38 = v29;
      v39 = v30;
LABEL_13:
      v126 = (v37 - 1) & v37;
      v125 = v40;
      v41 = __clz(__rbit64(v37)) | (v40 << 6);
      v42 = (*(v123 + 48) + 16 * v41);
      v44 = *v42;
      v43 = v42[1];
      v45 = *(*(v123 + 56) + 8 * v41);

      v46 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882710, &qword_272384170);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v39;
      v133 = v44;
      sub_272309F7C(v46, v44, v43, isUniquelyReferenced_nonNull_native, &qword_280882C68, &qword_2723846F8);
      v134 = v43;

      v30 = v148;
      v48 = v45 + 64;
      v49 = 1 << *(v45 + 32);
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v51 = v50 & *(v45 + 64);
      v52 = (v49 + 63) >> 6;
      v132 = v45;

      v53 = v51;
      v54 = 0;
      v29 = v38;
      v130 = v52;
      v131 = v48;
      while (2)
      {
        if (!v53)
        {
          while (1)
          {
            v57 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v57 >= v52)
            {

              v35 = v125;
              v32 = v122;
              goto LABEL_7;
            }

            v53 = *(v48 + 8 * v57);
            ++v54;
            if (v53)
            {
              v140 = v30;
              v54 = v57;
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          result = sub_2723786BC();
          __break(1u);
          return result;
        }

        v140 = v30;
LABEL_25:
        v135 = v54;
        v136 = v53;
        v58 = __clz(__rbit64(v53)) | (v54 << 6);
        v59 = *(v132 + 56);
        v60 = (*(v132 + 48) + 16 * v58);
        v61 = v60[1];
        v138 = *v60;
        v139 = v61;
        v62 = *(v59 + 8 * v58);
        v63 = *(v62 + 16);
        v137 = v62;
        if (v63)
        {

          v64 = sub_272203AC4();
          v65 = (v62 + 40);
          v66 = MEMORY[0x277D84F90];
          v143 = v64;
          do
          {
            v151 = v66;
            v70 = *(v65 - 1);
            v69 = *v65;
            v148 = v70;
            v149 = v69;
            v71 = v141;
            v146 = v141;
            v147 = v29;

            if (sub_27237813C())
            {
              v148 = v70;
              v149 = v69;
              v146 = v71;
              v147 = v29;
              v144 = 0x726944746F6F7224;
              v145 = 0xE800000000000000;
              v70 = sub_2723780FC();
              v67 = v72;

              v66 = v151;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = sub_2721FFBF8(0, *(v66 + 2) + 1, 1, v66);
              }

              v74 = *(v66 + 2);
              v73 = *(v66 + 3);
              v75 = v74 + 1;
              if (v74 >= v73 >> 1)
              {
                v66 = sub_2721FFBF8((v73 > 1), v74 + 1, 1, v66);
              }
            }

            else
            {
              v66 = v151;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = sub_2721FFBF8(0, *(v66 + 2) + 1, 1, v66);
              }

              v74 = *(v66 + 2);
              v76 = *(v66 + 3);
              v75 = v74 + 1;
              if (v74 >= v76 >> 1)
              {
                v66 = sub_2721FFBF8((v76 > 1), v74 + 1, 1, v66);
              }

              v67 = v69;
            }

            *(v66 + 2) = v75;
            v68 = &v66[16 * v74];
            *(v68 + 4) = v70;
            *(v68 + 5) = v67;
            v65 += 2;
            --v63;
            v29 = v142;
          }

          while (v63);
        }

        else
        {

          v66 = MEMORY[0x277D84F90];
        }

        v77 = v140;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v77;
        v80 = sub_27220038C(v133, v134);
        v81 = v77[2];
        v82 = (v79 & 1) == 0;
        v83 = v81 + v82;
        if (__OFADD__(v81, v82))
        {
          goto LABEL_64;
        }

        v84 = v79;
        v85 = v66;
        if (v77[3] >= v83)
        {
          v2 = v127;
          v89 = v138;
          v88 = v139;
          if (v78)
          {
            if ((v79 & 1) == 0)
            {
              goto LABEL_65;
            }
          }

          else
          {
            sub_272309E1C(&qword_280882C68, &qword_2723846F8);
            if ((v84 & 1) == 0)
            {
              goto LABEL_65;
            }
          }
        }

        else
        {
          sub_272309B7C(v83, v78, &qword_280882C68, &qword_2723846F8);
          v86 = sub_27220038C(v133, v134);
          v2 = v127;
          v89 = v138;
          v88 = v139;
          if ((v84 & 1) != (v87 & 1))
          {
            goto LABEL_70;
          }

          v80 = v86;
          if ((v84 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        v90 = *(v148[7] + 8 * v80);

        v91 = swift_isUniquelyReferenced_nonNull_native();
        v146 = v90;
        v92 = sub_27220038C(v89, v88);
        v94 = v90[2];
        v95 = (v93 & 1) == 0;
        v96 = __OFADD__(v94, v95);
        v97 = v94 + v95;
        if (v96)
        {
          goto LABEL_66;
        }

        v98 = v93;
        if (v90[3] >= v97)
        {
          if (v91)
          {
            goto LABEL_51;
          }

          v104 = v92;
          sub_272309E1C(&qword_280882710, &qword_272384170);
          v92 = v104;
          v29 = v142;
          v100 = v146;
          if (v98)
          {
            goto LABEL_17;
          }

LABEL_52:
          v100[(v92 >> 6) + 8] |= 1 << v92;
          v101 = (v100[6] + 16 * v92);
          *v101 = v89;
          v101[1] = v88;
          *(v100[7] + 8 * v92) = v85;
          v102 = v100[2];
          v96 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v96)
          {
            goto LABEL_67;
          }

          v100[2] = v103;
        }

        else
        {
          sub_272309B7C(v97, v91, &qword_280882710, &qword_272384170);
          v92 = sub_27220038C(v89, v88);
          if ((v98 & 1) != (v99 & 1))
          {
            goto LABEL_70;
          }

LABEL_51:
          v100 = v146;
          if ((v98 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_17:
          v55 = v100[7];
          v56 = *(v55 + 8 * v92);
          *(v55 + 8 * v92) = v85;
        }

        v54 = v135;
        v53 = (v136 - 1) & v136;
        v30 = v148;
        *(v148[7] + 8 * v80) = v100;
        v36 = v128;
        v48 = v131;
        v52 = v130;
        continue;
      }
    }
  }

  v106 = (v119)(v105);
  if (!v107)
  {
    goto LABEL_69;
  }

  v108 = v106;
  v109 = v107;

  type metadata accessor for VAA2AEnrollmentMap();
  swift_allocObject();
  v110 = sub_27230C3E8(v30, v108, v109);

  v148 = v110;
  sub_27230CDC4(&qword_280882C10, v111, type metadata accessor for VAA2AEnrollmentMap);
  v112 = v118[3];
  v113 = sub_272376B1C();
  if (!v112)
  {
    v115 = v113;
    v116 = v114;
    sub_272376CAC();
    sub_272376D9C();
    (v118[0])(v36, v2);
    sub_2721F05C8(v115, v116);
  }
}

void *sub_2723093C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_27230C3E8(a1, a2, a3);

  return v6;
}

uint64_t VAA2AEnrollmentMap.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  VAA2AEnrollmentMap.init(from:)(a1);
  return v2;
}

uint64_t VAA2AEnrollmentMap.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882C18, &qword_272384440);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v1[2] = 0;
  v1[3] = 0;
  v9 = v1 + 2;
  v10 = MEMORY[0x277D84F90];
  v9[4] = sub_272216188(MEMORY[0x277D84F90]);
  v9[5] = sub_27230A49C(v10, &qword_280882710, &qword_272384170);
  v11 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27230C4B8();
  sub_2723787AC();
  if (v2)
  {
LABEL_3:
    v12 = v3[3];

    v13 = v3[6];

    v14 = v3[7];

    type metadata accessor for VAA2AEnrollmentMap();
    swift_deallocPartialClassInstance();
    v15 = a1;
LABEL_4:
    sub_2722039C8(v15);
    return v3;
  }

  sub_2721F065C(&qword_280882C20, &qword_272384448);
  sub_27230C970(&qword_280882C28, sub_27230C50C);
  sub_2723784FC();
  v36 = a1;
  v37 = v8;
  v35 = v5;
  v17 = v39 + 64;
  v18 = 1 << *(v39 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v39 + 64);
  v21 = (v18 + 63) >> 6;
  v38 = v39;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_13:
      v25 = (*(v38 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v20)))));
      v26 = *v25;
      v27 = v25[1];

      if ((sub_27230C5B8(v26, v27) & 1) == 0)
      {
        break;
      }

      v20 &= v20 - 1;

      v22 = v23;
      if (!v20)
      {
        goto LABEL_9;
      }
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_27237820C();

    v39 = 544826699;
    v40 = 0xE400000000000000;
    MEMORY[0x2743C4AD0](v26, v27);

    MEMORY[0x2743C4AD0](0xD00000000000001DLL, 0x800000027238FCB0);
    v31 = v39;
    v32 = v40;
    sub_27230C91C();
    swift_allocError();
    *v33 = v31;
    v33[1] = v32;
    swift_willThrow();

    (*(v41 + 8))(v37, v35);
    a1 = v36;
    goto LABEL_3;
  }

LABEL_9:
  v24 = v37;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      v28 = v38;

      v3[4] = v28;
      v29 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C60, &unk_2723846E8);
      (*(v41 + 8))(v24, v35);
      v3[5] = v29;
      swift_beginAccess();
      v30 = v3[3];
      *v9 = 0;
      v9[1] = 0;

      v15 = v36;
      goto LABEL_4;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2723098B0(void *a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882C48, &qword_272384460);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27230C4B8();
  sub_2723787CC();
  swift_beginAccess();
  v11 = *(v2 + 32);
  sub_2721F065C(&qword_280882C20, &qword_272384448);
  sub_27230C970(&qword_280882C50, sub_27230C9F4);
  sub_2723785DC();
  return (*(v5 + 8))(v8, v4);
}

void *VAA2AEnrollmentMap.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t VAA2AEnrollmentMap.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_272309AF4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272309B7C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_2721F065C(a3, a4);
  v40 = a2;
  result = sub_2723783DC();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_272309E1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2721F065C(a1, a2);
  v4 = *v2;
  v5 = sub_2723783CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_272309F7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_27220038C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_272309B7C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_27220038C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_272309E1C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

unint64_t sub_27230A11C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_27230A26C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2723781FC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_27237825C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_27230A26C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_27230A304(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_27230A378(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_27230A304(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2722013B8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_27230A378(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_27237825C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_27230A49C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2721F065C(a2, a3);
    v5 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_27220038C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_27230A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v126 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v101 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v101 - v12;
  v115 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C60, &unk_2723846E8);
  sub_272376CAC();
  sub_272376CFC();
  v14 = *(v5 + 8);
  v14(v11, v4);
  v116 = sub_272376D2C();
  v117 = v15;
  v119 = v13;
  v127 = v5 + 8;
  v125 = v14;
  v14(v13, v4);
  v16 = *(a3 + 64);
  v103 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v105 = v18 & v16;
  v102 = (v17 + 63) >> 6;
  v101 = a3;

  v19 = 0;
  v118 = v4;
LABEL_6:
  v20 = v105;
  if (!v105)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_68;
      }

      if (v21 >= v102)
      {
        break;
      }

      v20 = *(v103 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_11;
      }
    }

LABEL_61:

    return v115;
  }

  v21 = v19;
LABEL_11:
  v105 = (v20 - 1) & v20;
  v104 = v21;
  v22 = __clz(__rbit64(v20)) | (v21 << 6);
  v23 = (*(v101 + 48) + 16 * v22);
  v25 = *v23;
  v24 = v23[1];
  v26 = *(*(v101 + 56) + 8 * v22);

  v27 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C70, &qword_272384700);

  v28 = v115;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132 = v28;
  v109 = v25;
  sub_272309F7C(v27, v25, v24, isUniquelyReferenced_nonNull_native, &qword_280882C60, &unk_2723846E8);
  v110 = v24;

  v115 = v132;
  v30 = v26 + 64;
  v31 = 1 << *(v26 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v26 + 64);
  v34 = (v31 + 63) >> 6;
  v108 = v26;

  v35 = 0;
  v107 = v26 + 64;
  for (i = v34; ; v34 = i)
  {
    if (!v33)
    {
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_65;
        }

        if (v36 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v36);
        ++v35;
        if (v33)
        {
          goto LABEL_22;
        }
      }

      v19 = v104;
      goto LABEL_6;
    }

    v36 = v35;
LABEL_22:
    v113 = v36;
    v114 = v33;
    v37 = __clz(__rbit64(v33)) | (v36 << 6);
    v38 = *(v108 + 56);
    v39 = (*(v108 + 48) + 16 * v37);
    v40 = v39[1];
    v111 = *v39;
    v41 = *(v38 + 8 * v37);
    v112 = v40;

    v42 = sub_272216188(MEMORY[0x277D84F90]);
    v121 = *(v41 + 16);
    if (v121)
    {
      break;
    }

LABEL_50:

    v87 = v115;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v87;
    v90 = sub_27220038C(v109, v110);
    v91 = *(v87 + 16);
    v92 = (v89 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_69;
    }

    v94 = v89;
    if (*(v87 + 24) >= v93)
    {
      if (v88)
      {
        if ((v89 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_272309E1C(&qword_280882C60, &unk_2723846E8);
        if ((v94 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      sub_272309B7C(v93, v88, &qword_280882C60, &unk_2723846E8);
      v95 = sub_27220038C(v109, v110);
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_70;
      }

      v90 = v95;
      if ((v94 & 1) == 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v33 = (v114 - 1) & v114;
    v97 = v132;
    v98 = *(v132[7] + 8 * v90);

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v98;
    sub_272309F7C(v42, v111, v112, v99, &qword_280882C70, &qword_272384700);

    v115 = v97;
    if (v130)
    {
      *(*(v97 + 56) + 8 * v90) = v130;
    }

    else
    {
      sub_272203A70(*(v97 + 48) + 16 * v90);
      sub_27223CF60(v90, v97);
    }

    v35 = v113;
    v30 = v107;
  }

  v43 = 0;
  v44 = (v41 + 40);
  v120 = v41;
  while (v43 < *(v41 + 16))
  {
    v122 = v43;
    v49 = *(v44 - 1);
    v50 = *v44;

    sub_272376CAC();
    v51 = v119;
    sub_272376CDC();
    v52 = sub_272376CBC();
    v54 = v53;
    v125(v51, v4);
    v132 = v52;
    v133 = v54;
    v130 = 45;
    v131 = 0xE100000000000000;
    v128 = 95;
    v129 = 0xE100000000000000;
    sub_272203AC4();
    sub_2723780FC();

    v123 = sub_2723778AC();
    v124 = v55;

    v132 = v49;
    v133 = v50;
    v130 = 0x726944746F6F7224;
    v131 = 0xE800000000000000;
    if ((sub_27237813C() & 1) == 0)
    {
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v132 = v42;
      v69 = sub_27220038C(v49, v50);
      v71 = v42[2];
      v72 = (v70 & 1) == 0;
      v64 = __OFADD__(v71, v72);
      v73 = v71 + v72;
      if (v64)
      {
        goto LABEL_64;
      }

      v74 = v70;
      if (v42[3] < v73)
      {
        sub_272215B54(v73, v68);
        v69 = sub_27220038C(v49, v50);
        v4 = v118;
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_70;
        }

        goto LABEL_43;
      }

      v4 = v118;
      if (v68)
      {
LABEL_43:
        if ((v74 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v82 = v69;
        sub_272215E14();
        v69 = v82;
        if ((v74 & 1) == 0)
        {
LABEL_48:
          v42 = v132;
          v132[(v69 >> 6) + 8] |= 1 << v69;
          v83 = (v42[6] + 16 * v69);
          *v83 = v49;
          v83[1] = v50;
          v84 = (v42[7] + 16 * v69);
          v85 = v124;
          *v84 = v123;
          v84[1] = v85;
          v125(v126, v4);
          v86 = v42[2];
          v64 = __OFADD__(v86, 1);
          v80 = v86 + 1;
          if (v64)
          {
            goto LABEL_67;
          }

          goto LABEL_49;
        }
      }

      v45 = v69;
      goto LABEL_25;
    }

    v132 = v49;
    v133 = v50;
    v130 = 0x726944746F6F7224;
    v131 = 0xE800000000000000;
    v128 = v116;
    v129 = v117;
    v56 = sub_2723780FC();
    v58 = v57;

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v42;
    v60 = sub_27220038C(v56, v58);
    v62 = v42[2];
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_63;
    }

    v66 = v61;
    if (v42[3] >= v65)
    {
      v4 = v118;
      if ((v59 & 1) == 0)
      {
        v81 = v60;
        sub_272215E14();
        v60 = v81;
        if ((v66 & 1) == 0)
        {
LABEL_39:
          v42 = v132;
          v132[(v60 >> 6) + 8] |= 1 << v60;
          v76 = (v42[6] + 16 * v60);
          *v76 = v56;
          v76[1] = v58;
          v77 = (v42[7] + 16 * v60);
          v78 = v124;
          *v77 = v123;
          v77[1] = v78;
          v125(v126, v4);
          v79 = v42[2];
          v64 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v64)
          {
            goto LABEL_66;
          }

LABEL_49:
          v42[2] = v80;
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_272215B54(v65, v59);
      v60 = sub_27220038C(v56, v58);
      v4 = v118;
      if ((v66 & 1) != (v67 & 1))
      {
        goto LABEL_70;
      }
    }

    if ((v66 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_24:
    v45 = v60;
LABEL_25:

    v42 = v132;
    v46 = (v132[7] + 16 * v45);
    v47 = v46[1];
    v48 = v124;
    *v46 = v123;
    v46[1] = v48;

    v125(v126, v4);
LABEL_26:
    v41 = v120;
    v43 = v122 + 1;
    v44 += 2;
    if (v121 == v122 + 1)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_27230AF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  v12 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882C68, &qword_2723846F8);
  sub_272376CAC();
  sub_272376CFC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v99 = sub_272376D2C();
  v100 = v14;
  v13(v11, v4);
  v15 = *(a3 + 64);
  v85 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v87 = v17 & v15;
  v84 = (v16 + 63) >> 6;
  v83 = a3;

  v18 = 0;
LABEL_6:
  v19 = v87;
  if (v87)
  {
    v20 = v18;
  }

  else
  {
    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_58;
      }

      if (v20 >= v84)
      {

        return v12;
      }

      v19 = *(v85 + 8 * v20);
      ++v18;
    }

    while (!v19);
  }

  v86 = v20;
  v87 = (v19 - 1) & v19;
  v21 = __clz(__rbit64(v19)) | (v20 << 6);
  v22 = (*(v83 + 48) + 16 * v21);
  v24 = *v22;
  v23 = v22[1];
  v25 = *(*(v83 + 56) + 8 * v21);

  v26 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882710, &qword_272384170);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = v12;
  v91 = v24;
  sub_272309F7C(v26, v24, v23, isUniquelyReferenced_nonNull_native, &qword_280882C68, &qword_2723846F8);
  v92 = v23;

  v12 = v105;
  v28 = v25 + 64;
  v29 = 1 << *(v25 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v25 + 64);
  v32 = (v29 + 63) >> 6;
  v90 = v25;

  v33 = 0;
  v88 = v32;
  v89 = v25 + 64;
  while (v31)
  {
LABEL_22:
    v93 = v33;
    v94 = v31;
    v37 = __clz(__rbit64(v31)) | (v33 << 6);
    v38 = *(v90 + 56);
    v39 = (*(v90 + 48) + 16 * v37);
    v40 = v39[1];
    v96 = *v39;
    v97 = v12;
    v41 = *(v38 + 8 * v37);
    v42 = *(v41 + 16);
    v98 = v40;
    v95 = v41;
    if (v42)
    {

      sub_272203AC4();
      v43 = (v41 + 40);
      v44 = MEMORY[0x277D84F90];
      do
      {
        v47 = *(v43 - 1);
        v48 = *v43;
        v105 = v47;
        v106 = v48;
        v103 = 0x726944746F6F7224;
        v104 = 0xE800000000000000;

        if (sub_27237813C())
        {
          v105 = v47;
          v106 = v48;
          v103 = 0x726944746F6F7224;
          v104 = 0xE800000000000000;
          v101 = v99;
          v102 = v100;
          v47 = sub_2723780FC();
          v45 = v49;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_2721FFBF8(0, *(v44 + 2) + 1, 1, v44);
          }

          v51 = *(v44 + 2);
          v50 = *(v44 + 3);
          v52 = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            v44 = sub_2721FFBF8((v50 > 1), v51 + 1, 1, v44);
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_2721FFBF8(0, *(v44 + 2) + 1, 1, v44);
          }

          v51 = *(v44 + 2);
          v53 = *(v44 + 3);
          v52 = v51 + 1;
          if (v51 >= v53 >> 1)
          {
            v44 = sub_2721FFBF8((v53 > 1), v51 + 1, 1, v44);
          }

          v45 = v48;
        }

        *(v44 + 2) = v52;
        v46 = &v44[16 * v51];
        *(v46 + 4) = v47;
        *(v46 + 5) = v45;
        v43 += 2;
        --v42;
      }

      while (v42);
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    v54 = v97;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v54;
    v57 = sub_27220038C(v91, v92);
    v58 = *(v54 + 16);
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_59;
    }

    v61 = v56;
    if (*(v54 + 24) >= v60)
    {
      v64 = v96;
      if (v55)
      {
        if ((v56 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_272309E1C(&qword_280882C68, &qword_2723846F8);
        if ((v61 & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      sub_272309B7C(v60, v55, &qword_280882C68, &qword_2723846F8);
      v62 = sub_27220038C(v91, v92);
      v64 = v96;
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_63;
      }

      v57 = v62;
      if ((v61 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    v12 = v105;
    v65 = *(*(v105 + 56) + 8 * v57);

    v66 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v65;
    v67 = sub_27220038C(v64, v98);
    v69 = *(v65 + 16);
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_61;
    }

    v73 = v68;
    if (*(v65 + 24) < v72)
    {
      sub_272309B7C(v72, v66, &qword_280882710, &qword_272384170);
      v74 = v98;
      v67 = sub_27220038C(v64, v98);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_63;
      }

LABEL_49:
      v76 = v103;
      if (v73)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

    if (v66)
    {
      v74 = v98;
      goto LABEL_49;
    }

    v80 = v67;
    sub_272309E1C(&qword_280882710, &qword_272384170);
    v67 = v80;
    v74 = v98;
    v76 = v103;
    if (v73)
    {
LABEL_15:
      v34 = v76[7];
      v35 = *(v34 + 8 * v67);
      *(v34 + 8 * v67) = v44;

      goto LABEL_16;
    }

LABEL_50:
    v76[(v67 >> 6) + 8] |= 1 << v67;
    v77 = (v76[6] + 16 * v67);
    *v77 = v64;
    v77[1] = v74;
    *(v76[7] + 8 * v67) = v44;
    v78 = v76[2];
    v71 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v71)
    {
      goto LABEL_62;
    }

    v76[2] = v79;
LABEL_16:
    v33 = v93;
    v31 = (v94 - 1) & v94;
    *(*(v12 + 56) + 8 * v57) = v76;
    v32 = v88;
    v28 = v89;
  }

  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v32)
    {

      v18 = v86;
      goto LABEL_6;
    }

    v31 = *(v28 + 8 * v36);
    ++v33;
    if (v31)
    {
      v33 = v36;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_27230B70C(uint64_t a1)
{
  v2 = sub_27230A49C(MEMORY[0x277D84F90], &qword_280882710, &qword_272384170);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v44 = a1;

  v8 = 0;
  v43 = v7;
LABEL_6:
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    do
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }

      if (v9 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
    }

    while (!v6);
  }

  v10 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v11 = v10 | (v9 << 6);
  v12 = (*(v44 + 48) + 16 * v11);
  v13 = *(*(v44 + 56) + 8 * v11);
  v45 = *v12;
  v46 = v12[1];
  v14 = 1 << *(v13 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
LABEL_20:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = v20 | (v18 << 6);
    v22 = (*(v13 + 48) + 16 * v21);
    v23 = *(*(v13 + 56) + 8 * v21);
    v24 = *v22 == 0x636E756F6E6F7270 && v22[1] == 0xEE006E6F69746169;
    if (v24 || (sub_27237865C() & 1) != 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_27220038C(v45, v46);
      v27 = v2[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_39;
      }

      if (v2[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v40 = v25;
          v42 = v26;
          sub_272309E1C(&qword_280882710, &qword_272384170);
          v26 = v42;
          if ((v40 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        v32 = v2[7];
        v33 = *(v32 + 8 * v26);
        *(v32 + 8 * v26) = v23;
      }

      else
      {
        v39 = v25;
        sub_272309B7C(v29, isUniquelyReferenced_nonNull_native, &qword_280882710, &qword_272384170);
        v30 = sub_27220038C(v45, v46);
        if ((v39 & 1) != (v31 & 1))
        {
          goto LABEL_41;
        }

        v26 = v30;
        if (v39)
        {
          goto LABEL_32;
        }

LABEL_34:
        v2[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v2[6] + 16 * v26);
        *v34 = v45;
        v34[1] = v46;
        *(v2[7] + 8 * v26) = v23;
        v35 = v2[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_40;
        }

        v2[2] = v37;
      }
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v8 = v9;
      v7 = v43;
      goto LABEL_6;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_27230BA68(uint64_t a1, unint64_t a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v87 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = sub_272376D5C();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = a1;
  sub_272376CAC();
  v18 = [objc_opt_self() defaultManager];
  sub_272376D2C();
  v19 = sub_2723777FC();

  v20 = [v18 fileExistsAtPath_];

  if ((v20 & 1) == 0)
  {
    v89 = v17;
    v24 = sub_2722C389C();
    (*(v6 + 16))(v13, v24, v5);

    v25 = sub_27237725C();
    v26 = sub_272377E8C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v94 = v28;
      *v27 = 136315138;
      v17 = v90;
      *(v27 + 4) = sub_2721FFD04(v90, a2, &v94);
      _os_log_impl(&dword_2721E4000, v25, v26, "No such enrollment JSON file: %s", v27, 0xCu);
      sub_2722039C8(v28);
      MEMORY[0x2743C69C0](v28, -1, -1);
      MEMORY[0x2743C69C0](v27, -1, -1);

      (*(v6 + 8))(v13, v5);
    }

    else
    {

      (*(v6 + 8))(v13, v5);
      v17 = v90;
    }

    v94 = 0;
    v95 = 0xE000000000000000;
    sub_27237820C();

    v94 = 0xD00000000000001ELL;
    v95 = 0x800000027238FD50;
    MEMORY[0x2743C4AD0](v17, a2);
    v29 = v94;
    v30 = v95;
    sub_2722032B4();
    swift_allocError();
    *v31 = v29;
    v31[1] = v30;
    swift_willThrow();
    (*(v91 + 8))(v89, v92);
    return v17;
  }

  v86 = v6;
  v21 = sub_272376D6C();
  v23 = v17;
  if (v2)
  {
    (*(v91 + 8))(v17, v92);
    return v17;
  }

  v33 = v21;
  v34 = v22;
  v35 = sub_272376ABC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_272376AAC();
  type metadata accessor for VAA2AEnrollmentMap();
  sub_27230CDC4(&qword_280882C78, v39, type metadata accessor for VAA2AEnrollmentMap);
  sub_272376A9C();
  v83 = v38;
  v84 = v33;
  v85 = v34;
  v17 = v94;
  swift_beginAccess();
  v40 = v17[3];
  v17[2] = v90;
  v17[3] = a2;

  v41 = sub_2722C389C();
  v42 = v86;
  v43 = v87;
  v44 = *(v86 + 16);
  v82 = v41;
  v81 = v44;
  v80 = v86 + 16;
  (v44)(v87);

  v45 = sub_27237725C();
  v79 = sub_272377E7C();
  v46 = os_log_type_enabled(v45, v79);
  v89 = v23;
  if (!v46)
  {

    v55 = *(v42 + 8);
    v54 = v43;
    v56 = v5;
    goto LABEL_13;
  }

  v78 = v45;
  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v93 = v48;
  *v47 = 136315138;
  v49 = (*(*v17 + 120))();
  v51 = v50;

  if (v51)
  {
    v52 = sub_2721FFD04(v49, v51, &v93);

    *(v47 + 4) = v52;
    v53 = v78;
    _os_log_impl(&dword_2721E4000, v78, v79, "Enrolling commands from dir : %s", v47, 0xCu);
    sub_2722039C8(v48);
    MEMORY[0x2743C69C0](v48, -1, -1);
    MEMORY[0x2743C69C0](v47, -1, -1);

    v54 = v87;
    v55 = *(v86 + 8);
    v56 = v5;
LABEL_13:
    v87 = v55;
    (v55)(v54, v56);
    swift_beginAccess();
    v57 = v17[4];

    v58 = v90;
    v59 = sub_27230A598(v90, a2, v57);

    swift_beginAccess();
    v60 = v17[5];
    v17[5] = v59;

    v61 = v17[4];

    v62 = sub_27230AF80(v58, a2, v61);

    v63 = v17[4];
    v17[4] = v62;

    v64 = sub_27230B70C(v62);

    swift_beginAccess();
    v65 = v17[7];
    v17[7] = v64;

    v66 = v88;
    v81(v88, v82, v5);

    v67 = sub_27237725C();
    v68 = sub_272377E6C();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v90 = v5;
      v70 = v69;
      v71 = swift_slowAlloc();
      v96 = v71;
      *v70 = 136315138;
      (*(*v17 + 216))();
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      v72 = sub_27237773C();
      v74 = v73;

      v75 = sub_2721FFD04(v72, v74, &v96);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_2721E4000, v67, v68, "Pronounciations: %s", v70, 0xCu);
      sub_2722039C8(v71);
      MEMORY[0x2743C69C0](v71, -1, -1);
      MEMORY[0x2743C69C0](v70, -1, -1);

      sub_2721F05C8(v84, v85);

      v76 = v88;
      v77 = v90;
    }

    else
    {

      sub_2721F05C8(v84, v85);

      v76 = v66;
      v77 = v5;
    }

    (v87)(v76, v77);
    (*(v91 + 8))(v89, v92);
    return v17;
  }

  __break(1u);
  return result;
}

void *sub_27230C3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[2] = 0;
  v7 = MEMORY[0x277D84F90];
  v3[6] = sub_272216188(MEMORY[0x277D84F90]);
  v3[7] = sub_27230A49C(v7, &qword_280882710, &qword_272384170);
  v3[4] = a1;
  swift_beginAccess();
  v8 = v3[3];
  v3[2] = a2;
  v3[3] = a3;

  v3[5] = sub_27230A598(a2, a3, a1);
  return v3;
}

unint64_t sub_27230C4B8()
{
  result = qword_28088F120[0];
  if (!qword_28088F120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F120);
  }

  return result;
}

unint64_t sub_27230C50C()
{
  result = qword_280882C30;
  if (!qword_280882C30)
  {
    sub_2721F214C(&qword_280882C38, &unk_272384450);
    sub_27228F60C(&qword_280881800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C30);
  }

  return result;
}

unint64_t sub_27230C5B8(uint64_t a1, unint64_t a2)
{
  v30 = sub_2723787FC();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = 32;
  v34[1] = 0xE100000000000000;
  v33 = v34;

  v8 = 1;
  result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v32, a1, a2, v9);
  v11 = result;
  v31 = *(result + 16);
  if (!v31)
  {
LABEL_38:

    return v8;
  }

  v12 = 0;
  v13 = (v4 + 8);
  v14 = (result + 56);
  while (v12 < *(v11 + 16))
  {
    if ((*(v14 - 2) ^ *(v14 - 3)) < 0x4000)
    {
      goto LABEL_37;
    }

    v16 = *(v14 - 1);
    v15 = *v14;

    result = sub_27237807C();
    if ((v17 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v18 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      goto LABEL_40;
    }

    v19 = result;
    v20 = v17;
    if ((v17 & 0x1000000000000000) != 0)
    {
      v25 = sub_2723778EC();
    }

    else
    {
      if ((v17 & 0x2000000000000000) != 0)
      {
        v22 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v21 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_27237825C();
        }

        v22 = *v21;
      }

      v23 = v22;
      v24 = (__clz(~v22) - 24) << 16;
      if (v23 < 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 65541;
      }
    }

    v26 = 4 * v18;
    if (4 * v18 == v25 >> 14)
    {
      result = sub_27230A11C(v19, v20);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_41;
      }

      sub_27237880C();
      v27 = sub_2723787DC();
      (*v13)(v7, v30);
      if (v27)
      {
LABEL_31:

        goto LABEL_32;
      }
    }

    if ((sub_27237779C() & 1) == 0)
    {

LABEL_37:
      v8 = 0;
      goto LABEL_38;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      if (v26 != sub_2723778EC() >> 14)
      {
        goto LABEL_28;
      }
    }

    else if (v26 != ((4 * sub_2723781EC()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_28;
    }

    result = sub_27230A11C(v19, v20);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

    sub_27237880C();
    v28 = sub_2723787EC();
    (*v13)(v7, v30);
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_28:
    if ((sub_27237779C() & 1) == 0)
    {
      goto LABEL_31;
    }

    v29 = sub_27237778C();

    if (v29)
    {
      goto LABEL_37;
    }

LABEL_32:
    ++v12;
    v14 += 4;
    if (v31 == v12)
    {
      v8 = 1;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_27230C91C()
{
  result = qword_280882C40;
  if (!qword_280882C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C40);
  }

  return result;
}

uint64_t sub_27230C970(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882C20, &qword_272384448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27230C9F4()
{
  result = qword_280882C58;
  if (!qword_280882C58)
  {
    sub_2721F214C(&qword_280882C38, &unk_272384450);
    sub_27228F60C(&qword_2808824F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882C58);
  }

  return result;
}

unint64_t sub_27230CCC0()
{
  result = qword_28088F430[0];
  if (!qword_28088F430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F430);
  }

  return result;
}

unint64_t sub_27230CD18()
{
  result = qword_28088F540;
  if (!qword_28088F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F540);
  }

  return result;
}

unint64_t sub_27230CD70()
{
  result = qword_28088F548[0];
  if (!qword_28088F548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F548);
  }

  return result;
}

uint64_t sub_27230CDC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27230CE0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x70536F5474786574;
  }

  else
  {
    v4 = 0x79426E656B6F7073;
  }

  if (v3)
  {
    v5 = 0xEC00000072657355;
  }

  else
  {
    v5 = 0xEC00000068636565;
  }

  if (*a2)
  {
    v6 = 0x70536F5474786574;
  }

  else
  {
    v6 = 0x79426E656B6F7073;
  }

  if (*a2)
  {
    v7 = 0xEC00000068636565;
  }

  else
  {
    v7 = 0xEC00000072657355;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27237865C();
  }

  return v9 & 1;
}

uint64_t sub_27230CEC4()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230CF58()
{
  *v0;
  sub_27237790C();
}

uint64_t sub_27230CFD8()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230D068@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_27230D0C8(uint64_t *a1@<X8>)
{
  v2 = 0x79426E656B6F7073;
  if (*v1)
  {
    v2 = 0x70536F5474786574;
  }

  v3 = 0xEC00000072657355;
  if (*v1)
  {
    v3 = 0xEC00000068636565;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27230D1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xEF73656D614E6465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27230D27C(uint64_t a1)
{
  v2 = sub_27230D480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230D2B8(uint64_t a1)
{
  v2 = sub_27230D480();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230D2F4(void *a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882C90, &qword_272384710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27230D480();
  sub_2723787CC();
  v11[1] = a2;
  sub_2721F065C(&qword_280882C98, &qword_272384718);
  sub_272318894(&qword_280882CA0, sub_27230D4D4);
  sub_2723785DC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_27230D480()
{
  result = qword_28088F5E0;
  if (!qword_28088F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5E0);
  }

  return result;
}

unint64_t sub_27230D4D4()
{
  result = qword_280882CA8;
  if (!qword_280882CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CA8);
  }

  return result;
}

void *sub_27230D528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_272315CEC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_27230D570()
{
  v1 = 25705;
  v2 = 0x656D6C6C6F726E65;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_27230D5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272315FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27230D610(uint64_t a1)
{
  v2 = sub_272315EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230D64C(uint64_t a1)
{
  v2 = sub_272315EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230D688(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882CB0, &qword_272384720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272315EA0();
  sub_2723787CC();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_27237858C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v20 = 1;
    sub_27237858C();
    v19 = v3[4];
    v18[15] = 2;
    sub_2721F065C(&qword_280882CB8, &qword_272384728);
    sub_272315EF4(&qword_280882CC0, sub_272315F6C);
    sub_2723785DC();
    v16 = v3[5];
    v17 = v3[6];
    v18[14] = 3;
    sub_27237858C();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_27230D8CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_272316124(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_27230D934()
{
  v1 = 0x6C69466F69647561;
  if (*v0 != 1)
  {
    v1 = 0x656372756F73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_27230D984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272316520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27230D9AC(uint64_t a1)
{
  v2 = sub_272316478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230D9E8(uint64_t a1)
{
  v2 = sub_272316478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230DA24(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882CD0, &qword_272384730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272316478();
  sub_2723787CC();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  sub_27237858C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v16[14] = 1;
    sub_27237858C();
    v16[13] = *(v3 + 32);
    v16[12] = 2;
    sub_2723164CC();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_27230DC04@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_272316634(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

VoiceActions::VANRUserConfiguration sub_27230DC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v164 = a2;
  v165 = a3;
  v130 = a5;
  v179[2] = *MEMORY[0x277D85DE8];
  v8 = sub_272376EBC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v136 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VANRNameConfiguration(0);
  v135 = *(v11 - 8);
  v12 = *(v135 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v143 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VANRCollectedEnrollment(0);
  v152 = *(v14 - 8);
  v15 = *(v152 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v169 = &v125 - v19;
  v20 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v137 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v155 = &v125 - v24;
  v25 = sub_272376E5C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v134 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v142 = &v125 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v151 = &v125 - v33;
  MEMORY[0x28223BE20](v32);
  v168 = &v125 - v34;
  v35 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v163 = &v125 - v37;
  v166 = sub_272376D5C();
  v38 = *(v166 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v166);
  v171 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_27237728C();
  v41 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v139 = *(a1 + 16);
  if (v139)
  {
    v45 = 0;
    v46 = a1 + 32;
    v127 = (v42 + 16);
    v126 = (v42 + 8);
    v161 = (v38 + 48);
    v154 = (v38 + 32);
    v162 = (v26 + 48);
    v159 = (v26 + 32);
    v158 = (v26 + 16);
    v157 = (v26 + 8);
    v153 = (v38 + 8);
    v133 = (a4 + 40);
    v47 = MEMORY[0x277D84F90];
    *&v44 = 136315138;
    v125 = v44;
    v131 = v5;
    v129 = a4;
    v160 = v25;
    v149 = v18;
    v128 = &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v132 = a1 + 32;
    while (1)
    {
      v148 = v47;
      v145 = v45;
      v48 = (v46 + 56 * v45);
      v49 = v48[1];
      v141 = *v48;
      v50 = v48[3];
      v172 = v48[2];
      v51 = v48[4];
      v140 = v48[5];
      v52 = v48[6];
      v147 = v49;
      v146 = v52;
      if (a4)
      {
        v53 = a4;
        v54 = *(a4 + 16);

        v55 = v51;

        v56 = v54 + 1;
        v57 = v133;
        while (--v56)
        {
          v59 = *(v57 - 1);
          v58 = *v57;

          v60 = sub_27235374C(v59, v58);
          v62 = v61;

          if (v60 == sub_27235374C(v172, v50) && v62 == v63)
          {

            goto LABEL_16;
          }

          v57 += 2;
          v65 = sub_27237865C();

          if (v65)
          {
            goto LABEL_16;
          }
        }

        v66 = sub_2722C389C();
        v67 = v128;
        (*v127)(v128, v66, v138);

        v68 = sub_27237725C();
        v69 = sub_272377E6C();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          LODWORD(v174) = v69;
          v71 = v70;
          v72 = swift_slowAlloc();
          v179[0] = v72;
          *v71 = v125;

          v73 = sub_2721FFD04(v172, v50, v179);

          *(v71 + 4) = v73;
          _os_log_impl(&dword_2721E4000, v68, v174, "Skipping enrollment for name %s because it is not in the limit names list.", v71, 0xCu);
          sub_2722039C8(v72);
          MEMORY[0x2743C69C0](v72, -1, -1);
          MEMORY[0x2743C69C0](v71, -1, -1);

          (*v126)(v128, v138);
        }

        else
        {

          (*v126)(v67, v138);
        }

        v47 = v148;
        a4 = v53;
      }

      else
      {

        v55 = v51;

LABEL_16:
        v144 = v50;
        v74 = v55;
        v75 = *(v55 + 16);

        v156 = v75;
        if (v75)
        {
          v76 = 0;
          v77 = (v55 + 64);
          v174 = MEMORY[0x277D84F90];
          v78 = v166;
          v150 = v55;
          while (1)
          {
            if (v76 >= *(v74 + 16))
            {
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
            }

            v80 = *(v77 - 4);
            v79 = *(v77 - 3);
            v167 = *v77;
            v81 = *(v77 - 1);
            v179[0] = *(v77 - 2);
            v179[1] = v81;
            v177 = 0x726944746F6F7224;
            v178 = 0xE800000000000000;
            v175 = v164;
            v176 = v165;
            sub_272203AC4();

            v173 = v79;

            v82 = sub_2723780FC();
            v83 = v163;
            v170 = v84;
            sub_272376D3C();
            if ((*v161)(v83, 1, v78) == 1)
            {

              swift_bridgeObjectRelease_n();

              sub_2721F40F0(v83, &qword_280881A50, &unk_27237CA30);
              strcpy(v179, "Invalid URL: ");
              HIWORD(v179[1]) = -4864;
              MEMORY[0x2743C4AD0](v82, v170);

              goto LABEL_46;
            }

            (*v154)(v171, v83, v78);
            v85 = objc_allocWithZone(MEMORY[0x277CB8398]);
            v86 = sub_272376CCC();
            v179[0] = 0;
            v87 = [v85 initForReading:v86 commonFormat:3 interleaved:0 error:v179];

            if (!v87)
            {
              v118 = v179[0];
              sub_272376C6C();

              swift_willThrow();
LABEL_49:
              (*v153)(v171, v166);

              swift_bridgeObjectRelease_n();

              goto LABEL_51;
            }

            v88 = v179[0];
            v89 = [v87 processingFormat];
            v90 = [v87 length];
            if ((v90 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (HIDWORD(v90))
            {
              goto LABEL_55;
            }

            v91 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v89 frameCapacity:v90];

            if (!v91)
            {
              goto LABEL_56;
            }

            v179[0] = 0;
            if (([v87 readIntoBuffer:v91 error:v179] & 1) == 0)
            {
              v119 = v179[0];
              sub_272376C6C();

              swift_willThrow();
              goto LABEL_49;
            }

            v92 = v179[0];

            v93 = v155;
            sub_272376E0C();
            v94 = v160;
            if ((*v162)(v93, 1, v160) == 1)
            {
              break;
            }

            v95 = v168;
            (*v159)(v168, v93, v94);
            v96 = v151;
            v97 = v95;
            v98 = v94;
            (*v158)(v151, v97, v94);

            LOBYTE(v179[0]) = v167 ^ 1;
            v99 = v91;
            v100 = v169;
            VANRCollectedEnrollment.init(id:audioSample:source:debugAudioFileLocation:)(v96, v99, v179, v82, v170, v169);
            v101 = v149;
            sub_2723186C4(v100, v149);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v174 = sub_272315B10(0, v174[2] + 1, 1, v174, &qword_280882E00, &qword_2723852C8, type metadata accessor for VANRCollectedEnrollment);
            }

            v103 = v174[2];
            v102 = v174[3];
            v74 = v150;
            if (v103 >= v102 >> 1)
            {
              v174 = sub_272315B10(v102 > 1, v103 + 1, 1, v174, &qword_280882E00, &qword_2723852C8, type metadata accessor for VANRCollectedEnrollment);
            }

            ++v76;

            sub_272318728(v169);
            (*v157)(v168, v94);
            v78 = v166;
            (*v153)(v171, v166);
            v104 = v174;
            v174[2] = v103 + 1;
            sub_272318784(v101, v104 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v103, type metadata accessor for VANRCollectedEnrollment);
            v77 += 40;
            if (v156 == v76)
            {
              goto LABEL_33;
            }
          }

          swift_bridgeObjectRelease_n();

          sub_2721F40F0(v93, &qword_280881D10, &qword_2723857A0);
          v179[0] = 0;
          v179[1] = 0xE000000000000000;
          sub_27237820C();

          strcpy(v179, "Invalid UUID: ");
          HIBYTE(v179[1]) = -18;
          v120 = v173;

          MEMORY[0x2743C4AD0](v80, v120);

          swift_bridgeObjectRelease_n();
          v121 = v179[0];
          v122 = v179[1];
          sub_27230206C();
          swift_allocError();
          *v123 = v121;
          v123[1] = v122;
          swift_willThrow();

          result.configuredNames._rawValue = (*v153)(v171, v166);
          goto LABEL_51;
        }

        v174 = MEMORY[0x277D84F90];
        v98 = v160;
LABEL_33:

        v105 = v137;
        v106 = v141;
        v107 = v147;
        sub_272376E0C();
        if ((*v162)(v105, 1, v98) == 1)
        {

          sub_2721F40F0(v105, &qword_280881D10, &qword_2723857A0);
          v179[0] = 0;
          v179[1] = 0xE000000000000000;
          sub_27237820C();

          strcpy(v179, "Invalid UUID: ");
          HIBYTE(v179[1]) = -18;

          MEMORY[0x2743C4AD0](v106, v107);

          swift_bridgeObjectRelease_n();
LABEL_46:
          v115 = v179[0];
          v116 = v179[1];
          sub_27230206C();
          swift_allocError();
          *v117 = v115;
          v117[1] = v116;
          result.configuredNames._rawValue = swift_willThrow();
          goto LABEL_51;
        }

        v108 = v142;
        (*v159)(v142, v105, v98);
        v109 = v134;
        (*v158)(v134, v108, v98);
        v110 = v144;

        v111 = v136;
        sub_272376E6C();
        VANRNameConfiguration.init(id:humanReadableName:enrollments:locale:)(v109, v172, v110, v174, v111, v143);

        v47 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_272315B10(0, v47[2] + 1, 1, v47, &qword_280882DF8, &qword_2723852C0, type metadata accessor for VANRNameConfiguration);
        }

        a4 = v129;
        v113 = v47[2];
        v112 = v47[3];
        if (v113 >= v112 >> 1)
        {
          v47 = sub_272315B10(v112 > 1, v113 + 1, 1, v47, &qword_280882DF8, &qword_2723852C0, type metadata accessor for VANRNameConfiguration);
        }

        (*v157)(v142, v98);
        v47[2] = v113 + 1;
        sub_272318784(v143, v47 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v113, type metadata accessor for VANRNameConfiguration);
      }

      v45 = v145 + 1;
      v46 = v132;
      if (v145 + 1 == v139)
      {
        goto LABEL_44;
      }
    }
  }

  v47 = MEMORY[0x277D84F90];
LABEL_44:
  result.configuredNames._rawValue = VANRUserConfiguration.init(configuredNames:)(v47).configuredNames._rawValue;
LABEL_51:
  v124 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static VANRUserConfigurationJsonLoader.load(from:replacingRootWith:limitNames:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_272376D6C();
  if (!v4)
  {
    v11 = result;
    v12 = v10;
    v13 = sub_272376ABC();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_272376AAC();
    sub_272316894();
    sub_272376A9C();

    sub_27230DC64(v16, a1, a2, a3, a4);

    return sub_2721F05C8(v11, v12);
  }

  return result;
}

unint64_t sub_27230F148(char a1)
{
  result = 0x6C65536C65646F6DLL;
  switch(a1)
  {
    case 1:
    case 13:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000027;
      break;
    case 5:
    case 14:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
    case 10:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x75626544706D7564;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x4D4C6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27230F3B8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_27230F148(*a1);
  v5 = v4;
  if (v3 == sub_27230F148(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27237865C();
  }

  return v8 & 1;
}

uint64_t sub_27230F440()
{
  v1 = *v0;
  sub_27237874C();
  sub_27230F148(v1);
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230F4A4()
{
  sub_27230F148(*v0);
  sub_27237790C();
}

uint64_t sub_27230F4F8()
{
  v1 = *v0;
  sub_27237874C();
  sub_27230F148(v1);
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27230F558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2723168E8();
  *a2 = result;
  return result;
}

unint64_t sub_27230F588@<X0>(unint64_t *a1@<X8>)
{
  result = sub_27230F148(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27230F5D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2723168E8();
  *a1 = result;
  return result;
}

uint64_t sub_27230F5F8(uint64_t a1)
{
  v2 = sub_27231693C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27230F634(uint64_t a1)
{
  v2 = sub_27231693C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27230F670(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882CE8, &qword_272384738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27231693C();
  v11 = sub_2723787CC();
  (*(*v3 + 376))(&v33, v11);
  v32 = 0;
  sub_272316990();
  v12 = sub_27237857C();
  if (!v2)
  {
    (*(*v3 + 424))(v12);
    LOBYTE(v33) = 1;
    v13 = sub_27237853C();
    (*(*v3 + 448))(v13);
    LOBYTE(v33) = 2;
    v14 = sub_27237853C();
    (*(*v3 + 472))(v14);
    LOBYTE(v33) = 3;
    v32 = 0;
    v15 = sub_27237855C();
    (*(*v3 + 1024))(v15);
    LOBYTE(v33) = 4;
    v16 = sub_27237854C();
    (*(*v3 + 1048))(v16);
    LOBYTE(v33) = 5;
    v17 = sub_27237854C();
    (*(*v3 + 520))(v17);
    LOBYTE(v33) = 6;
    v18 = sub_27237853C();
    (*(*v3 + 568))(v18);
    LOBYTE(v33) = 7;
    v19 = sub_27237856C();
    (*(*v3 + 592))(v19);
    LOBYTE(v33) = 8;
    v20 = sub_27237856C();
    (*(*v3 + 616))(v20);
    LOBYTE(v33) = 9;
    v21 = sub_27237856C();
    (*(*v3 + 712))(v21);
    LOBYTE(v33) = 10;
    v22 = sub_27237855C();
    (*(*v3 + 736))(v22);
    LOBYTE(v33) = 11;
    v23 = sub_27237855C();
    (*(*v3 + 952))(&v33, v23);
    v32 = 12;
    sub_2723169E4();
    v24 = sub_27237857C();
    (*(*v3 + 976))(&v33, v24);
    v32 = 13;
    sub_272316A38();
    v25 = sub_27237857C();
    (*(*v3 + 1000))(v25);
    LOBYTE(v33) = 14;
    v26 = sub_27237853C();
    (*(*v3 + 640))(v26);
    LOBYTE(v33) = 15;
    v27 = sub_27237853C();
    (*(*v3 + 1144))(v27);
    LOBYTE(v33) = 17;
    v28 = sub_27237854C();
    v29 = (*(*v3 + 496))(v28);
    (*(*v29 + 232))(&v33);

    v32 = v33;
    v31[3] = 16;
    sub_272316A8C();
    sub_27237857C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VANRSystemConfigCodable.init(from:)(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_280882D18, &qword_272384740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = _s12VoiceActions23VANRSystemConfigCodableCACycfc_0();
  v9 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27231693C();
  sub_2723787AC();
  if (v1)
  {
  }

  else
  {
    v31 = 0;
    sub_272316AE0();
    sub_2723784FC();
    v31 = v32;
    (*(*v8 + 384))(&v31);
    v32 = 1;
    v10 = sub_2723784BC();
    (*(*v8 + 432))(v10 & 1);
    v32 = 2;
    v11 = sub_2723784BC();
    (*(*v8 + 456))(v11 & 1);
    v32 = 3;
    v12 = sub_2723784DC();
    (*(*v8 + 480))(v12);
    v32 = 5;
    v13 = sub_27237845C();
    (*(*v8 + 1056))(v13, v14 & 1);
    v32 = 4;
    v15 = sub_27237845C();
    (*(*v8 + 1032))(v15, v16 & 1);
    v32 = 6;
    v17 = sub_2723784BC();
    (*(*v8 + 528))(v17 & 1);
    v32 = 7;
    v18 = sub_2723784EC();
    (*(*v8 + 576))(v18);
    v32 = 8;
    v19 = sub_2723784EC();
    (*(*v8 + 600))(v19);
    v32 = 9;
    v20 = sub_2723784EC();
    (*(*v8 + 624))(v20);
    v32 = 15;
    v21 = sub_2723784BC();
    (*(*v8 + 648))(v21 & 1);
    v32 = 10;
    v22 = sub_27237846C();
    (*(*v8 + 720))(v22 | ((HIDWORD(v22) & 1) << 32));
    v32 = 11;
    v23 = sub_27237846C();
    (*(*v8 + 744))(v23 | ((HIDWORD(v23) & 1) << 32));
    v32 = 17;
    v24 = sub_27237845C();
    (*(*v8 + 1152))(v24, v25 & 1);
    v31 = 12;
    sub_272316B34();
    sub_27237848C();
    v31 = v32;
    (*(*v8 + 960))(&v31);
    v31 = 13;
    sub_272316B88();
    sub_27237848C();
    v31 = v32;
    (*(*v8 + 984))(&v31);
    v32 = 14;
    v26 = sub_27237844C();
    (*(*v8 + 1008))(v26);
    v31 = 16;
    sub_272316BDC();
    sub_27237848C();
    v28 = v32;
    if (v32 != 11)
    {
      type metadata accessor for VAStringMatchingStrategy(0);
      v32 = v28;
      v29 = static VAStringMatchingStrategy.build(name:)(&v32);
      (*(*v8 + 504))(v29);
    }

    (*(v4 + 8))(v7, v3);
  }

  sub_2722039C8(a1);
  return v8;
}

uint64_t *static VANRSystemConfigCodable.load(_:)(uint64_t a1)
{
  v2 = sub_272376D5C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v40 - v8;
  v10 = sub_27237728C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v46 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - v15;
  v17 = sub_2722C389C();
  v18 = v11[2];
  v40[4] = v17;
  v40[5] = v11 + 2;
  v40[3] = v18;
  v18(v16);
  v19 = v3[2];
  v45 = a1;
  v40[1] = v19;
  v40[2] = v3 + 2;
  v19(v9, a1, v2);
  v20 = sub_27237725C();
  v21 = sub_272377E7C();
  v22 = os_log_type_enabled(v20, v21);
  v43 = v3;
  v44 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v40[0] = v7;
    v24 = v23;
    v42 = swift_slowAlloc();
    v47 = v42;
    *v24 = 136315138;
    sub_272316C54(&qword_280881A48, 255, MEMORY[0x277CC9260]);
    v25 = sub_27237862C();
    v26 = v11;
    v28 = v27;
    v41 = v3[1];
    v41(v9, v2);
    v29 = sub_2721FFD04(v25, v28, &v47);
    v11 = v26;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_2721E4000, v20, v21, "Loading system config from %s", v24, 0xCu);
    v30 = v42;
    sub_2722039C8(v42);
    v31 = v30;
    v10 = v44;
    MEMORY[0x2743C69C0](v31, -1, -1);
    MEMORY[0x2743C69C0](v24, -1, -1);
  }

  else
  {

    v41 = v3[1];
    v41(v9, v2);
  }

  v42 = v11[1];
  (v42)(v16, v10);
  v32 = sub_272376D6C();
  v34 = v33;
  v35 = sub_272376ABC();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_272376AAC();
  type metadata accessor for VANRSystemConfigCodable();
  sub_272316C54(&qword_280882D40, v38, type metadata accessor for VANRSystemConfigCodable);
  sub_272376A9C();
  sub_2721F05C8(v32, v34);

  return v47;
}

uint64_t sub_272310D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237728C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = sub_2722C389C();
  v17 = v10[2];
  v55 = v16;
  v56 = v10 + 2;
  v57 = v9;
  v54 = v17;
  (v17)(v15);
  v18 = *(v5 + 16);
  v53 = a1;
  v18(v8, a1, v4);
  v19 = sub_27237725C();
  v20 = sub_272377E7C();
  v21 = os_log_type_enabled(v19, v20);
  v60 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v52 = v1;
    v23 = v22;
    v51 = swift_slowAlloc();
    v61 = v51;
    *v23 = 136315138;
    sub_272316C54(&qword_280881A48, 255, MEMORY[0x277CC9260]);
    v24 = sub_27237862C();
    v26 = v25;
    (*(v5 + 8))(v8, v4);
    v27 = sub_2721FFD04(v24, v26, &v61);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2721E4000, v19, v20, "Saving system config to %s", v23, 0xCu);
    v28 = v51;
    sub_2722039C8(v51);
    MEMORY[0x2743C69C0](v28, -1, -1);
    v29 = v23;
    v2 = v52;
    MEMORY[0x2743C69C0](v29, -1, -1);

    v30 = v60[1];
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    v30 = v10[1];
  }

  v31 = v57;
  v30(v15, v57);
  v32 = sub_272376B3C();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_272376B2C();
  v61 = v58;
  type metadata accessor for VANRSystemConfigCodable();
  sub_272316C54(&qword_280882D48, v35, type metadata accessor for VANRSystemConfigCodable);
  v36 = sub_272376B1C();
  v38 = v2;
  v39 = v59;
  if (v2)
  {

    v54(v39, v55, v31);
    v42 = v2;
    v43 = sub_27237725C();
    v44 = sub_272377E8C();

    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v38;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_2721E4000, v43, v44, "Error saving system config: %@", v46, 0xCu);
      sub_2721F40F0(v47, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v47, -1, -1);
      MEMORY[0x2743C69C0](v46, -1, -1);
    }

    else
    {
    }

    return (v30)(v39, v31);
  }

  else
  {
    v40 = v36;
    v41 = v37;
    sub_272376D9C();
    sub_2721F05C8(v40, v41);
  }
}

char *sub_2723112E0()
{
  v2 = sub_27237788C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272376AFC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_272376B3C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_272376ACC();
  sub_272376B0C();
  v21 = v0;
  type metadata accessor for VANRSystemConfigCodable();
  sub_272316C54(&qword_280882D48, v11, type metadata accessor for VANRSystemConfigCodable);
  v12 = sub_272376B1C();
  if (!v1)
  {
    v14 = v12;
    v15 = v13;
    sub_27237787C();
    v16 = sub_27237784C();
    if (v17)
    {
      v5 = v16;
      sub_2721F05C8(v14, v15);

      return v5;
    }

    v5 = 0x800000027238FDC0;
    sub_2722032B4();
    swift_allocError();
    *v19 = 0xD00000000000003BLL;
    v19[1] = 0x800000027238FDC0;
    swift_willThrow();
    sub_2721F05C8(v14, v15);
  }

  return v5;
}

uint64_t VANRSystemConfigCodable.__deallocating_deinit()
{
  VANRSystemConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_272311524@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2723115F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 144))(v7);
}

uint64_t sub_272311754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2723117A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

float sub_272311914()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27231195C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_272311A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272311A5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 216);

  return v4(v2, v3);
}

uint64_t sub_272311B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272311B88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t sub_272311BFC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_272311C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_272311D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_272316C9C(a1, &v9 - v6);
  return (*(**a2 + 264))(v7);
}

uint64_t sub_272311E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  swift_beginAccess();
  return sub_272316C9C(v1 + v3, a1);
}

uint64_t sub_272311E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  swift_beginAccess();
  sub_2722AD1C0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272311F44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272311FEC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272312030(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_2723120E0()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x614D727341736177;
  }

  v4 = 0x696B6F6F4C727361;
  if (v1 != 3)
  {
    v4 = 0x747365424E727361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64726F7779656BLL;
  if (v1 != 1)
  {
    v5 = 0x65726F6373;
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

uint64_t sub_2723121D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2723181A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2723121FC(uint64_t a1)
{
  v2 = sub_272316D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272312238(uint64_t a1)
{
  v2 = sub_272316D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VANRDebugEvent.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_timestamp;
  v2 = sub_272376DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_keyword + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrLookingFor + 8);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrNBest + 8);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo, &qword_280881A50, &unk_27237CA30);
  return v0;
}

uint64_t VANRDebugEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_timestamp;
  v2 = sub_272376DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_keyword + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrLookingFor + 8);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrNBest + 8);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo, &qword_280881A50, &unk_27237CA30);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_272312428(void *a1)
{
  v2 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v28 - v4;
  v5 = sub_272376DFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2721F065C(&qword_280882D50, &qword_272384748);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272316D0C();
  v16 = v30;
  v17 = sub_2723787CC();
  (*(*v16 + 136))(v17);
  v38 = 0;
  sub_272316C54(&qword_280882D58, 255, MEMORY[0x277CC9578]);
  v18 = v31;
  sub_2723785DC();
  if (v18)
  {
    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v20 = (*(v6 + 8))(v9, v5);
    (*(*v16 + 160))(v20);
    v37 = 1;
    sub_27237858C();

    (*(*v16 + 184))(v21);
    v36 = 2;
    v23 = v11;
    v22 = sub_2723785BC();
    (*(*v16 + 208))(v22);
    v35 = 3;
    sub_27237852C();

    (*(*v16 + 232))(v24);
    v34 = 4;
    sub_27237852C();

    v26 = v29;
    (*(*v16 + 256))(v25);
    v33 = 5;
    sub_272376D5C();
    sub_272316C54(&qword_280882D60, 255, MEMORY[0x277CC9260]);
    sub_27237857C();
    v27 = sub_2721F40F0(v26, &qword_280881A50, &unk_27237CA30);
    (*(*v16 + 280))(v27);
    v32 = 6;
    sub_27237859C();
    return (*(v23 + 8))(v14, 0);
  }
}

uint64_t sub_2723129A8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_272376DEC();
  v4 = (v3 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_keyword);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score) = 1065353216;
  v5 = (v3 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrLookingFor);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v3 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrNBest);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  v8 = sub_272376D5C();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch) = 0;
  return v3;
}

uint64_t VANRDebugEvent.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v50 - v6;
  v60 = sub_272376DFC();
  v58 = *(v60 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2721F065C(&qword_280882D68, &unk_272384750);
  v57 = *(v61 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v11 = v50 - v10;
  v56 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_timestamp;
  sub_272376DEC();
  v12 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_keyword);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v55 = v12;
  v54 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score);
  *(v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_score) = 1065353216;
  v13 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrLookingFor);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_asrNBest);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_audioBytesSavedTo;
  v16 = sub_272376D5C();
  v17 = *(*(v16 - 8) + 56);
  v52 = v15;
  v17(v2 + v15, 1, 1, v16);
  v18 = OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch;
  *(v2 + OBJC_IVAR____TtC12VoiceActions14VANRDebugEvent_wasAsrMatch) = 0;
  v19 = a1[3];
  v20 = a1[4];
  v64 = a1;
  sub_27220300C(a1, v19);
  sub_272316D0C();
  v62 = v11;
  v21 = v63;
  sub_2723787AC();
  if (v21)
  {
  }

  else
  {
    v22 = v56;
    v23 = v58;
    v63 = v13;
    v51 = v14;
    v50[1] = v16;
    v50[0] = v18;
    v24 = v57;
    v69 = 0;
    sub_272316C54(&qword_280882D70, 255, MEMORY[0x277CC9578]);
    v26 = v59;
    v25 = v60;
    v27 = v61;
    sub_2723784FC();
    swift_beginAccess();
    (*(v23 + 40))(v2 + v22, v26, v25);
    swift_endAccess();
    v69 = 1;
    v28 = sub_2723784AC();
    v30 = v29;
    v31 = v55;
    swift_beginAccess();
    v32 = v31[1];
    *v31 = v28;
    v31[1] = v30;

    v68 = 2;
    sub_2723784DC();
    v34 = v33;
    v35 = v54;
    swift_beginAccess();
    *v35 = v34;
    v67 = 3;
    v36 = sub_27237843C();
    v38 = v37;
    v39 = v63;
    swift_beginAccess();
    v40 = v39[1];
    *v39 = v36;
    v39[1] = v38;

    v66 = 4;
    v41 = sub_27237843C();
    v43 = v42;
    v44 = v51;
    swift_beginAccess();
    v45 = v44[1];
    *v44 = v41;
    v44[1] = v43;

    v65 = 5;
    sub_272316C54(&qword_280882D78, 255, MEMORY[0x277CC9260]);
    v46 = v53;
    sub_27237848C();
    v47 = v52;
    swift_beginAccess();
    sub_2722AD1C0(v46, v2 + v47);
    swift_endAccess();
    v65 = 6;
    LOBYTE(v47) = sub_2723784BC();
    (*(v24 + 8))(v62, v27);
    v49 = v50[0];
    swift_beginAccess();
    *(v2 + v49) = v47 & 1;
  }

  sub_2722039C8(v64);
  return v2;
}

uint64_t sub_2723130E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 320))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static VANRDebugInfo.buildVersion.getter()
{
  swift_beginAccess();
  v0 = *a20250625;

  return v0;
}

uint64_t static VANRDebugInfo.buildVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a20250625 = a1;
  *&a20250625[8] = a2;
}

uint64_t sub_272313270@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&a20250625[8];
  *a1 = *a20250625;
  a1[1] = v2;
}

uint64_t sub_2723132C0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a20250625 = v2;
  *&a20250625[8] = v1;
}

uint64_t sub_272313324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_272313370(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_2723133C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_272313410(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_2723134A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 192))(v7);
}

uint64_t sub_272313650(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 216))(v7);
}

uint64_t sub_2723137F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 240))(v7);
}

uint64_t sub_2723138F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_272376DFC();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_272313980(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_272376DFC();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_272313A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272313AC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t sub_272313BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_272313BFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 288);

  return v4(v2, v3);
}

uint64_t sub_272313CE4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_272376D5C();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_272376DFC();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v37 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v19 = (*(*a1 + 208))(v45, v16);
  v41 = v6;
  if (v45[1])
  {
    v38 = v2;
    v20 = v46;
    v37 = (*(*v4 + 176))(v44);
    v22 = v21;
    v23 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_2721FF8B4(0, *(v23 + 2) + 1, 1, v23);
      *v22 = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_2721FF8B4((v25 > 1), v26 + 1, 1, v23);
      *v22 = v23;
    }

    *(v23 + 2) = v26 + 1;
    *&v23[4 * v26 + 32] = v20;
    v37(v44, 0);
    v19 = sub_2721F40F0(v45, &qword_2808819E0, &qword_27237D890);
    v3 = v38;
  }

  v27 = (*(*v4 + 160))(v19);
  v28 = sub_272222744(0x64uLL, v27);
  v29 = (*(*v4 + 168))(v28);
  (*(*v4 + 232))(v29);
  sub_272376DEC();
  v30 = v42;
  sub_272376DAC();
  v31 = *(v9 + 8);
  v32 = v13;
  v33 = v43;
  v31(v32, v43);
  v34 = sub_272376DCC();
  v31(v30, v33);
  v31(v18, v33);
  if (v34)
  {
    sub_272376DEC();
    (*(*v4 + 240))(v18);
    v35 = v39;
    sub_272376CAC();
    (*(*v4 + 312))(v35);
    if (v3)
    {
      return (*(v40 + 8))(v35, v41);
    }

    (*(v40 + 8))(v35, v41);
  }

  sub_272376DEC();
  return (*(*v4 + 216))(v18);
}

uint64_t static VANRDebugInfo.load(_:)()
{
  v0 = sub_272376D6C();
  v2 = v1;
  v3 = sub_272376ABC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_272376AAC();
  type metadata accessor for VANRDebugInfo(0);
  sub_272316C54(&qword_280882D80, 255, type metadata accessor for VANRDebugInfo);
  sub_272376A9C();
  sub_2721F05C8(v0, v2);

  return v7;
}

uint64_t sub_2723142B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237728C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = sub_2722C389C();
  v17 = v10[2];
  v54 = v16;
  v55 = v10 + 2;
  v56 = v9;
  v53 = v17;
  (v17)(v15);
  v18 = *(v5 + 16);
  v52 = a1;
  v18(v8, a1, v4);
  v19 = sub_27237725C();
  v20 = sub_272377E7C();
  v21 = os_log_type_enabled(v19, v20);
  v59 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v51 = v1;
    v23 = v22;
    v50 = swift_slowAlloc();
    v60 = v50;
    *v23 = 136315138;
    sub_272316C54(&qword_280881A48, 255, MEMORY[0x277CC9260]);
    v24 = sub_27237862C();
    v26 = v25;
    (*(v5 + 8))(v8, v4);
    v27 = sub_2721FFD04(v24, v26, &v60);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2721E4000, v19, v20, "Saving debug to %s", v23, 0xCu);
    v28 = v50;
    sub_2722039C8(v50);
    MEMORY[0x2743C69C0](v28, -1, -1);
    v29 = v23;
    v2 = v51;
    MEMORY[0x2743C69C0](v29, -1, -1);

    v30 = v59[1];
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    v30 = v10[1];
  }

  v31 = v56;
  v30(v15, v56);
  v32 = sub_272376B3C();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_272376B2C();
  v60 = v57;
  type metadata accessor for VANRDebugInfo(0);
  sub_272316C54(&qword_280882D88, 255, type metadata accessor for VANRDebugInfo);
  v35 = sub_272376B1C();
  v37 = v2;
  v38 = v58;
  if (v2)
  {

    v53(v38, v54, v31);
    v41 = v2;
    v42 = sub_27237725C();
    v43 = sub_272377E8C();

    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v37;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_2721E4000, v42, v43, "Error saving debug: %@", v45, 0xCu);
      sub_2721F40F0(v46, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v46, -1, -1);
      MEMORY[0x2743C69C0](v45, -1, -1);
    }

    else
    {
    }

    return (v30)(v38, v31);
  }

  else
  {
    v39 = v35;
    v40 = v36;
    sub_272376D9C();
    sub_2721F05C8(v39, v40);
  }
}

uint64_t sub_272314818()
{
  v1 = *v0;
  v2 = 0x73746E657665;
  v3 = 0x69666E6F43737973;
  if (v1 != 5)
  {
    v3 = 0x726556646C697562;
  }

  v4 = 0x616470557473616CLL;
  if (v1 != 3)
  {
    v4 = 0x657661537473616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x5264657472617473;
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

uint64_t sub_272314920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272318404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272314948(uint64_t a1)
{
  v2 = sub_272316D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272314984(uint64_t a1)
{
  v2 = sub_272316D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VANRDebugInfo.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_startedRunning;
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastUpdated, v4);
  v5(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastSaved, v4);
  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_sysConfigString + 8);

  v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_buildVersion + 8);

  return v0;
}

uint64_t VANRDebugInfo.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_startedRunning;
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v3], v4);
  v5(&v0[OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastUpdated], v4);
  v5(&v0[OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastSaved], v4);
  v6 = *&v0[OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_sysConfigString + 8];

  v7 = *&v0[OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_buildVersion + 8];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_272314BC4(void *a1)
{
  v2 = v1;
  v4 = sub_272376DFC();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v33 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = v32 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v32 - v10;
  v12 = sub_2721F065C(&qword_280882D90, &qword_272384760);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272316D80();
  v18 = sub_2723787CC();
  v39 = (*(*v2 + 136))(v18);
  v38 = 0;
  sub_2721F065C(&qword_280882D98, &unk_272384768);
  sub_272316DF4(&qword_280882DA0, &qword_280882DA8);
  v19 = v37;
  sub_2723785DC();
  if (v19)
  {

    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v37 = v13;
    v21 = v36;

    v39 = (*(*v2 + 160))(v22);
    v38 = 1;
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    sub_2722B00A0(&qword_2808827F0);
    sub_2723785DC();

    (*(*v2 + 184))(v23);
    LOBYTE(v39) = 2;
    v24 = sub_272316C54(&qword_280882D58, 255, MEMORY[0x277CC9578]);
    sub_2723785DC();
    v35 = *(v35 + 8);
    v25 = (v35)(v11, v21);
    v26 = v34;
    (*(*v2 + 208))(v25);
    LOBYTE(v39) = 3;
    v32[1] = v24;
    sub_2723785DC();
    v27 = v35;
    v28 = (v35)(v26, v21);
    v29 = v33;
    (*(*v2 + 232))(v28);
    LOBYTE(v39) = 4;
    sub_2723785DC();
    v30 = v27(v29, v21);
    (*(*v2 + 256))(v30);
    LOBYTE(v39) = 5;
    sub_27237858C();

    (*(*v2 + 280))(v31);
    LOBYTE(v39) = 6;
    sub_27237858C();
    (*(v37 + 8))(v16, v12);
  }
}

uint64_t sub_272315248()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 24) = v4;
  sub_272376DEC();
  sub_272376DEC();
  sub_272376DEC();
  v5 = (v3 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_sysConfigString);
  *v5 = 0x524F525245;
  v5[1] = 0xE500000000000000;
  v6 = (v3 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_buildVersion);
  swift_beginAccess();
  v7 = *&a20250625[8];
  *v6 = *a20250625;
  v6[1] = v7;

  return v3;
}

uint64_t sub_272315348(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t VANRDebugInfo.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v60 = sub_272376DFC();
  v58 = *(v60 - 8);
  v4 = *(v58 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v50 - v9;
  v64 = sub_2721F065C(&qword_280882DB0, &qword_272384778);
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v12 = &v50 - v11;
  v13 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v61 = (v1 + 16);
  *(v1 + 24) = v13;
  v14 = (v1 + 24);
  v56 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_startedRunning;
  sub_272376DEC();
  v54 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastUpdated;
  sub_272376DEC();
  v53 = OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_lastSaved;
  sub_272376DEC();
  v15 = (v1 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_sysConfigString);
  *v15 = 0x524F525245;
  v15[1] = 0xE500000000000000;
  v16 = (v1 + OBJC_IVAR____TtC12VoiceActions13VANRDebugInfo_buildVersion);
  swift_beginAccess();
  v17 = *&a20250625[8];
  *v16 = *a20250625;
  v16[1] = v17;
  v18 = a1[3];
  v19 = a1[4];
  v70 = a1;
  sub_27220300C(a1, v18);
  sub_272316D80();

  v63 = v12;
  v20 = v65;
  sub_2723787AC();
  if (v20)
  {

    v21 = v2;
  }

  else
  {
    v22 = v61;
    v65 = v14;
    v52 = v15;
    v51 = v16;
    v23 = v62;
    sub_2721F065C(&qword_280882D98, &unk_272384768);
    v69 = 0;
    sub_272316DF4(&qword_280882DB8, &qword_280882DC0);
    v24 = v64;
    v25 = v63;
    sub_2723784FC();
    v26 = v68;
    swift_beginAccess();
    v27 = *v22;
    *v22 = v26;

    sub_2721F065C(&qword_280881858, &unk_27237C260);
    LOBYTE(v68) = 1;
    sub_2722B00A0(&qword_280882820);
    sub_2723784FC();
    v21 = v2;
    v28 = v67;
    v29 = v65;
    swift_beginAccess();
    v30 = *v29;
    *v29 = v28;

    LOBYTE(v67) = 2;
    sub_272316C54(&qword_280882D70, 255, MEMORY[0x277CC9578]);
    v31 = v59;
    v32 = v60;
    sub_2723784FC();
    v33 = v56;
    swift_beginAccess();
    v34 = *(v58 + 40);
    v58 += 40;
    v65 = v34;
    (v34)(v21 + v33, v31, v32);
    swift_endAccess();
    LOBYTE(v67) = 3;
    v35 = v57;
    sub_2723784FC();
    v36 = v54;
    swift_beginAccess();
    (v65)(v21 + v36, v35, v32);
    swift_endAccess();
    LOBYTE(v67) = 4;
    v37 = v55;
    sub_2723784FC();
    v38 = v53;
    swift_beginAccess();
    (v65)(v21 + v38, v37, v32);
    swift_endAccess();
    LOBYTE(v67) = 5;
    v39 = sub_2723784AC();
    v41 = v40;
    v42 = v52;
    swift_beginAccess();
    v43 = v42[1];
    *v42 = v39;
    v42[1] = v41;

    v66 = 6;
    v45 = sub_2723784AC();
    v47 = v46;
    (*(v23 + 8))(v25, v24);
    v48 = v51;
    swift_beginAccess();
    v49 = v48[1];
    *v48 = v45;
    v48[1] = v47;
  }

  sub_2722039C8(v70);
  return v21;
}

uint64_t sub_272315A88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 336))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

size_t sub_272315B10(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2721F065C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_272315CEC(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_280882E30, &unk_2723852E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_27220300C(a1, a1[3]);
  sub_27230D480();
  sub_2723787AC();
  if (v1)
  {
    sub_2722039C8(a1);
  }

  else
  {
    sub_2721F065C(&qword_280882C98, &qword_272384718);
    sub_272318894(&qword_280882E38, sub_27231890C);
    sub_2723784FC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_2722039C8(a1);
  }

  return v9;
}

unint64_t sub_272315EA0()
{
  result = qword_28088F5E8;
  if (!qword_28088F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5E8);
  }

  return result;
}

uint64_t sub_272315EF4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882CB8, &qword_272384728);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272315F6C()
{
  result = qword_280882CC8;
  if (!qword_280882CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CC8);
  }

  return result;
}

uint64_t sub_272315FC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238FFA0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6C6C6F726E65 && a2 == 0xEB0000000073746ELL || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_272316124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2721F065C(&qword_280882E18, &qword_2723852D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272315EA0();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v34 = 0;
  v11 = sub_2723784AC();
  v13 = v12;
  v28 = v11;
  v33 = 1;
  v14 = sub_2723784AC();
  v29 = v15;
  v27 = v14;
  sub_2721F065C(&qword_280882CB8, &qword_272384728);
  v32 = 2;
  sub_272315EF4(&qword_280882E20, sub_272318840);
  sub_2723784FC();
  v26 = v30;
  v31 = 3;
  v16 = sub_2723784AC();
  v18 = v17;
  v19 = *(v6 + 8);
  v25 = v16;
  v19(v9, v5);

  v20 = v29;

  v21 = v26;

  sub_2722039C8(a1);

  v23 = v27;
  *a2 = v28;
  a2[1] = v13;
  a2[2] = v23;
  a2[3] = v20;
  v24 = v25;
  a2[4] = v21;
  a2[5] = v24;
  a2[6] = v18;
  return result;
}

unint64_t sub_272316478()
{
  result = qword_28088F5F0;
  if (!qword_28088F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5F0);
  }

  return result;
}

unint64_t sub_2723164CC()
{
  result = qword_280882CD8;
  if (!qword_280882CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CD8);
  }

  return result;
}

uint64_t sub_272316520(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69466F69647561 && a2 == 0xE900000000000065 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_272316634@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2721F065C(&qword_280882E08, &qword_2723852D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272316478();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v25 = 0;
  v11 = sub_2723784AC();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_2723784AC();
  v20 = v14;
  v22 = 2;
  sub_2723187EC();
  sub_2723784FC();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  result = sub_2722039C8(a1);
  *a2 = v21;
  *(a2 + 8) = v13;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_272316894()
{
  result = qword_280882CE0;
  if (!qword_280882CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CE0);
  }

  return result;
}

uint64_t sub_2723168E8()
{
  v0 = sub_27237869C();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_27231693C()
{
  result = qword_280882CF0;
  if (!qword_280882CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CF0);
  }

  return result;
}

unint64_t sub_272316990()
{
  result = qword_280882CF8;
  if (!qword_280882CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882CF8);
  }

  return result;
}

unint64_t sub_2723169E4()
{
  result = qword_280882D00;
  if (!qword_280882D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D00);
  }

  return result;
}

unint64_t sub_272316A38()
{
  result = qword_280882D08;
  if (!qword_280882D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D08);
  }

  return result;
}

unint64_t sub_272316A8C()
{
  result = qword_280882D10;
  if (!qword_280882D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D10);
  }

  return result;
}

unint64_t sub_272316AE0()
{
  result = qword_280882D20;
  if (!qword_280882D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D20);
  }

  return result;
}

unint64_t sub_272316B34()
{
  result = qword_280882D28;
  if (!qword_280882D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D28);
  }

  return result;
}

unint64_t sub_272316B88()
{
  result = qword_280882D30;
  if (!qword_280882D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D30);
  }

  return result;
}

unint64_t sub_272316BDC()
{
  result = qword_280882D38;
  if (!qword_280882D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882D38);
  }

  return result;
}

uint64_t sub_272316C54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_272316C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_272316D0C()
{
  result = qword_28088F5F8;
  if (!qword_28088F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F5F8);
  }

  return result;
}

unint64_t sub_272316D80()
{
  result = qword_28088F600[0];
  if (!qword_28088F600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F600);
  }

  return result;
}

uint64_t sub_272316DF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882D98, &unk_272384768);
    sub_272316C54(a2, 255, type metadata accessor for VANRDebugEvent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272316E98()
{
  result = qword_280882DC8;
  if (!qword_280882DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DC8);
  }

  return result;
}

unint64_t sub_272316EF0()
{
  result = qword_280882DD0;
  if (!qword_280882DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DD0);
  }

  return result;
}

unint64_t sub_272316F48()
{
  result = qword_280882DD8;
  if (!qword_280882DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DD8);
  }

  return result;
}

unint64_t sub_272316FA0()
{
  result = qword_280882DE0;
  if (!qword_280882DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DE0);
  }

  return result;
}

__n128 sub_272317014(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_272317030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_272317078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2723170D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27231711C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_272317298()
{
  v0 = sub_272376DFC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_272317730();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_272317730()
{
  if (!qword_280882DE8)
  {
    sub_272376D5C();
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280882DE8);
    }
  }
}

uint64_t sub_272317790()
{
  result = sub_272376DFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_272317C80()
{
  result = qword_2808902B0[0];
  if (!qword_2808902B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808902B0);
  }

  return result;
}

unint64_t sub_272317CD8()
{
  result = qword_2808904C0[0];
  if (!qword_2808904C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808904C0);
  }

  return result;
}

unint64_t sub_272317D30()
{
  result = qword_2808906D0[0];
  if (!qword_2808906D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808906D0);
  }

  return result;
}

unint64_t sub_272317D88()
{
  result = qword_2808908E0[0];
  if (!qword_2808908E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808908E0);
  }

  return result;
}

unint64_t sub_272317DE0()
{
  result = qword_280890AF0;
  if (!qword_280890AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890AF0);
  }

  return result;
}

unint64_t sub_272317E38()
{
  result = qword_280890C00;
  if (!qword_280890C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890C00);
  }

  return result;
}

unint64_t sub_272317E90()
{
  result = qword_280890C08[0];
  if (!qword_280890C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890C08);
  }

  return result;
}

unint64_t sub_272317EE8()
{
  result = qword_280890C90;
  if (!qword_280890C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890C90);
  }

  return result;
}

unint64_t sub_272317F40()
{
  result = qword_280890C98[0];
  if (!qword_280890C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890C98);
  }

  return result;
}

unint64_t sub_272317F98()
{
  result = qword_280890D20;
  if (!qword_280890D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890D20);
  }

  return result;
}

unint64_t sub_272317FF0()
{
  result = qword_280890D28[0];
  if (!qword_280890D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890D28);
  }

  return result;
}

unint64_t sub_272318048()
{
  result = qword_280890DB0;
  if (!qword_280890DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890DB0);
  }

  return result;
}

unint64_t sub_2723180A0()
{
  result = qword_280890DB8[0];
  if (!qword_280890DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890DB8);
  }

  return result;
}

unint64_t sub_2723180F8()
{
  result = qword_280890E40;
  if (!qword_280890E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890E40);
  }

  return result;
}

unint64_t sub_272318150()
{
  result = qword_280890E48[0];
  if (!qword_280890E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890E48);
  }

  return result;
}

uint64_t sub_2723181A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696B6F6F4C727361 && a2 == 0xED0000726F46676ELL || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747365424E727361 && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238FEF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614D727341736177 && a2 == 0xEB00000000686374)
  {

    return 6;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_272318404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E657665 && a2 == 0xE600000000000000;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000027238FF40 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5264657472617473 && a2 == 0xEE00676E696E6E75 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657661537473616CLL && a2 == 0xE900000000000064 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69666E6F43737973 && a2 == 0xEF676E6972745367 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973)
  {

    return 6;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_272318670()
{
  result = qword_280882DF0;
  if (!qword_280882DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DF0);
  }

  return result;
}

uint64_t sub_2723186C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VANRCollectedEnrollment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272318728(uint64_t a1)
{
  v2 = type metadata accessor for VANRCollectedEnrollment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272318784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2723187EC()
{
  result = qword_280882E10;
  if (!qword_280882E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E10);
  }

  return result;
}

unint64_t sub_272318840()
{
  result = qword_280882E28;
  if (!qword_280882E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E28);
  }

  return result;
}

uint64_t sub_272318894(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882C98, &qword_272384718);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27231890C()
{
  result = qword_280882E40;
  if (!qword_280882E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E40);
  }

  return result;
}

uint64_t VAA2AAudioEncoderModel.init(computeUnits:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  type metadata accessor for VALog();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000018, 0x800000027238EEE0);
  LOBYTE(v17) = v9;
  sub_27237836C();
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v19, v20, v8);

  v10 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v22 = v9;
  v21 = 0;
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v19 == v17 && v20 == v18)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_27237865C();

    if (v12)
    {
      v11 = 0;
    }

    else
    {
      v22 = v9;
      v21 = 1;
      sub_272377A8C();
      sub_272377A8C();
      if (v19 == v17 && v20 == v18)
      {
      }

      else
      {
        v13 = sub_27237865C();

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v11 = 3;
    }
  }

  [v10 setComputeUnits_];
LABEL_12:
  type metadata accessor for all_audio2audio_encoder_ig2p();
  v14 = v10;
  v15 = sub_2722B626C(v14);
  if (v2)
  {

    sub_272272F68(v8);
    type metadata accessor for VAA2AAudioEncoderModel();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v15;
    VASignpostInterval.end(_:)(0);

    sub_272272F68(v8);
    return sub_2722591B0();
  }
}

id sub_272318CE8(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  if (v5 == (*(*v1 + 168))())
  {
    result = sub_272319078(a1);
    if (!v2)
    {
      v7 = result;
      type metadata accessor for all_audio2audio_encoder_ig2pInput();
      v8 = sub_272276D68(v7);
      v9 = (*(*v3 + 128))();
      v11 = (*(*v9 + 136))(v8);

      v13 = (*(*v11 + 88))(v12);

      return v13;
    }
  }

  else
  {
    sub_272318EA8();
    swift_allocError();
    *v10 = 0xD000000000000014;
    v10[1] = 0x800000027238FFC0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_272318EA8()
{
  result = qword_280882E48;
  if (!qword_280882E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E48);
  }

  return result;
}

uint64_t sub_272318EFC()
{
  type metadata accessor for VAStrideConfiguration();
  v0 = static VAStrideConfiguration.forFlexibleA2A()();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();

  return v1;
}

uint64_t VAA2AAudioEncoderModel.deinit()
{
  v0 = VAAudioEncoderModel.deinit();
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VAA2AAudioEncoderModel.__deallocating_deinit()
{
  v0 = *(VAAudioEncoderModel.deinit() + 16);

  return swift_deallocClassInstance();
}

id sub_272319078(uint64_t a1)
{
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237E510;
  v4 = *(a1 + 16);
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v6 = sub_272257FA4(v3, 65568);
  if (v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (!v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    do
    {
      v10 = *(v9 + 4 * v8);
      v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v12) = v10;
      v13 = [v11 initWithFloat_];
      [v6 setObject:v13 atIndexedSubscript:v8];

      ++v8;
    }

    while (v4 != v8);
  }

  return v6;
}

uint64_t sub_272319254()
{
  v1 = v0;
  sub_27237820C();
  v3 = *v0;
  v2 = v0[1];

  MEMORY[0x2743C4AD0](0x737475706E49203ALL, 0xEA0000000000203ALL);
  v4 = v0[2];
  type metadata accessor for VAEspressoV2Port();
  v5 = sub_27237773C();
  MEMORY[0x2743C4AD0](v5);

  MEMORY[0x2743C4AD0](0x74757074754F202CLL, 0xEB00000000203A73);
  v6 = v1[3];
  v7 = sub_27237773C();
  MEMORY[0x2743C4AD0](v7);

  return v3;
}

uint64_t sub_272319394(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_27220038C(a1, a2), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 8 * v6), type metadata accessor for VAEspressoV2Input(), (v9 = swift_dynamicCastClass()) != 0))
  {
    v10 = v9;
  }

  else
  {
    sub_27237820C();

    MEMORY[0x2743C4AD0](a1, a2);
    sub_2722032B4();
    v11 = swift_allocError();
    *v12 = 0xD000000000000022;
    v12[1] = 0x8000000272390040;
    v10 = v11;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_2723194B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (*(v5 + 16) && (v6 = sub_27220038C(a1, a2), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 8 * v6), type metadata accessor for VAEspressoV2Output(), (v9 = swift_dynamicCastClass()) != 0))
  {
    v10 = v9;
  }

  else
  {
    sub_27237820C();

    MEMORY[0x2743C4AD0](a1, a2);
    sub_2722032B4();
    v11 = swift_allocError();
    *v12 = 0xD000000000000023;
    v12[1] = 0x8000000272390070;
    v10 = v11;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_2723195D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v229) = a3;
  v222 = a4;
  v7 = sub_27237728C();
  v230 = *(v7 - 8);
  v8 = *(v230 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v204 - v13;
  MEMORY[0x28223BE20](v12);
  v228 = &v204 - v15;
  type metadata accessor for VABundleUtil();
  v233 = a1;
  v234 = a2;

  MEMORY[0x2743C4AD0](0x622E6C65646F6D2FLL, 0xEE002F656C646E75);
  v16 = static VABundleUtil.bundlePathFallback(path:)(v233, v234);
  v231 = v4;
  if (v4)
  {
  }

  v19 = v17;
  v220 = a1;
  v221 = v14;
  v223 = v11;
  v224 = v16;

  v20 = sub_2722C389C();
  v21 = v230;
  v22 = *(v230 + 16);
  v23 = v228;
  v226 = v230 + 16;
  v227 = v20;
  v225 = v22;
  (v22)(v228);

  v24 = sub_27237725C();
  v25 = sub_272377E7C();

  v26 = v7;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = v19;
    v29 = swift_slowAlloc();
    v233 = v29;
    *v27 = 136315394;
    *(v27 + 4) = sub_2721FFD04(v220, a2, &v233);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2721FFD04(v224, v28, &v233);
    _os_log_impl(&dword_2721E4000, v24, v25, "Found model %s at path %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v29, -1, -1);
    v30 = v27;
    v26 = v7;
    MEMORY[0x2743C69C0](v30, -1, -1);

    v31 = *(v21 + 8);
    v31(v23, v26);
  }

  else
  {

    v31 = *(v21 + 8);
    v31(v23, v26);
    v28 = v19;
  }

  v32 = v221;
  v225(v221, v227, v26);

  v33 = sub_27237725C();
  v34 = sub_272377E7C();

  v35 = os_log_type_enabled(v33, v34);
  v228 = v31;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v233 = v37;
    *v36 = 136315138;
    v38 = v224;
    *(v36 + 4) = sub_2721FFD04(v224, v28, &v233);
    _os_log_impl(&dword_2721E4000, v33, v34, "Loading model %s", v36, 0xCu);
    sub_2722039C8(v37);
    MEMORY[0x2743C69C0](v37, -1, -1);
    MEMORY[0x2743C69C0](v36, -1, -1);

    v31(v32, v26);
  }

  else
  {

    v31(v32, v26);
    v38 = v224;
  }

  v39 = sub_27231B53C;
  if (v229)
  {
    v39 = sub_27231B4A4;
  }

  v40 = v231;
  v41 = v39(1852399981, 0xE400000000000000, v38, v28, 1852399981, 0xE400000000000000, 1, 1);
  v42 = v40;
  v43 = v223;
  if (v40)
  {
LABEL_132:
    v225(v43, v227, v26);

    v185 = v42;
    v186 = sub_27237725C();
    v187 = sub_272377E8C();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v190 = v28;
      v229 = v26;
      v191 = v189;
      v192 = v42;
      v193 = swift_slowAlloc();
      v235[0] = v193;
      *v188 = 136315394;
      v194 = sub_2721FFD04(v38, v190, v235);

      *(v188 + 4) = v194;
      *(v188 + 12) = 2112;
      v195 = v192;
      v196 = _swift_stdlib_bridgeErrorToNSError();
      *(v188 + 14) = v196;
      *v191 = v196;
      _os_log_impl(&dword_2721E4000, v186, v187, "Error loading model: %s: %@", v188, 0x16u);
      sub_272322408(v191);
      MEMORY[0x2743C69C0](v191, -1, -1);
      sub_2722039C8(v193);
      MEMORY[0x2743C69C0](v193, -1, -1);
      MEMORY[0x2743C69C0](v188, -1, -1);

      v197 = v229;
      v198 = v223;
    }

    else
    {

      v198 = v43;
      v197 = v26;
    }

    (v228)(v198, v197);
    return swift_willThrow();
  }

  v44 = v41;
  v45 = sub_2723228F0(MEMORY[0x277D84F90]);
  v46 = sub_272275720();
  v221 = v45;
  v229 = v26;
  v47 = *(v46 + 2);
  v218 = v44;
  v213 = v47;
  if (!v47)
  {
LABEL_55:

    v93 = sub_2723228F0(MEMORY[0x277D84F90]);
    v94 = sub_2722756CC();
    v219 = v28;
    v220 = v93;
    v212 = *(v94 + 2);
    if (!v212)
    {
LABEL_131:

      type metadata accessor for E5RTExecutionStream();
      v199 = sub_272275A6C();
      result = sub_272275B3C(v44);
      v200 = v221;
      v201 = v219;
      v202 = v222;
      *v222 = v38;
      v202[1] = v201;
      v203 = v220;
      v202[2] = v200;
      v202[3] = v203;
      v202[4] = v44;
      v202[5] = v199;
      return result;
    }

    v95 = 0;
    v209 = 0x80000002723903B0;
    v207 = 0x80000002723903E0;
    v96 = (v94 + 40);
    v208 = 0xD000000000000022;
    v211 = v94;
    while (1)
    {
      if (v95 >= *(v94 + 2))
      {
        goto LABEL_140;
      }

      v100 = *(v96 - 1);
      v99 = *v96;

      v217 = v100;
      v214 = v99;
      v101 = sub_27227581C(v100, v99);
      v102 = sub_27227519C();
      v213 = sub_272275024();
      sub_2722751F0(v213);
      v215 = v101;
      v103 = sub_272274F70();
      v216 = v102;
      v104 = v103;
      v105 = sub_272274F30();
      sub_272274FD0();
      v120 = sub_272274BFC();

      sub_272274FD0();
      v231 = sub_272274B2C();

      v121 = sub_272274FA0();
      if (v120 <= 1u)
      {
        break;
      }

      if (v120 - 2 < 2)
      {

        sub_2722032B4();
        v42 = swift_allocError();
        v122 = v209;
        *v123 = v208;
        v123[1] = v122;
LABEL_99:
        swift_willThrow();
LABEL_100:
        v149 = v214;
        goto LABEL_61;
      }

      if (v231 == 8)
      {
        v138 = v214;

        v139 = v213;

        sub_27231D998(v217, v138, v104, v105, v139, 4, v121);
        goto LABEL_95;
      }

      if (v231 == 4)
      {
        v136 = v214;

        v137 = v213;

        sub_27231D47C(v217, v136, v104, v105, v137, 4, v121);
        goto LABEL_95;
      }

      if (v231 != 2)
      {

        v235[0] = 0;
        v235[1] = 0xE000000000000000;
        sub_27237820C();

        v235[0] = 0xD000000000000010;
        v140 = v207;
        goto LABEL_98;
      }

      type metadata accessor for VAEspressoV2OutputFp32Wrapped(0);
      v128 = swift_allocObject();
      *(v128 + 176) = 0;
      v129 = (v128 + 176);
      *(v128 + 184) = 0;
      v206 = (v128 + 184);
      *(v128 + 192) = 0;
      v205 = (v128 + 192);
      *(v128 + 80) = 0;
      *(v128 + 88) = 1;
      *(v128 + 96) = 0;
      *(v128 + 104) = 1;
      *(v128 + 112) = 0;
      *(v128 + 120) = 1;
      *(v128 + 128) = 0;
      *(v128 + 136) = 1;
      *(v128 + 152) = 0;
      *(v128 + 160) = 0;
      *(v128 + 144) = 0;
      *(v128 + 168) = 2;
      v130 = v214;
      *(v128 + 16) = v104;
      *(v128 + 24) = v105;
      *(v128 + 40) = v217;
      *(v128 + 48) = v130;
      v131 = v213;
      v210 = v128;
      *(v128 + 32) = v213;
      v132 = *(v131 + 16);

      v133 = sub_272274C18(v132);
      v231 = 0;
      v155 = v210;
      *(v210 + 56) = v133;
      *(v155 + 64) = 4;
      *(v155 + 72) = v121;
      v156 = v104[2];
      if (v156 > 2)
      {
        if (v156 == 3)
        {
          v168 = v104[6];
          if (v168 < 0)
          {
            goto LABEL_147;
          }

          if (v168)
          {
            v169 = v104[6];
            v170 = sub_272377B5C();
            *(v170 + 16) = v168;
            bzero((v170 + 32), 4 * v168);
            if (v104[2] < 2uLL)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v170 = MEMORY[0x277D84F90];
          }

          v180 = sub_272258594(v170, v104[5], &qword_280881858, &unk_27237C260);

          if (!v104[2])
          {
            goto LABEL_151;
          }

          v181 = v104[4];

          v182 = sub_272258594(v180, v181, &qword_280881F28, &unk_272381E80);

          v183 = v206;
          swift_beginAccess();
          v184 = *v183;
          *v183 = v182;
        }

        else
        {
          if (v156 != 4)
          {
LABEL_114:

            v235[0] = 0;
            v235[1] = 0xE000000000000000;
            sub_27237820C();

            strcpy(v235, "Invalid rank: ");
            HIBYTE(v235[1]) = -18;
            v236 = v156;
            v163 = sub_27237862C();
            MEMORY[0x2743C4AD0](v163);

            v164 = v235[0];
            v165 = v235[1];
            sub_2722032B4();
            v166 = swift_allocError();
            *v167 = v164;
            v167[1] = v165;
            v42 = v166;
            swift_willThrow();

            goto LABEL_100;
          }

          v160 = v104[7];
          if (v160 < 0)
          {
            goto LABEL_145;
          }

          if (v160)
          {
            v161 = v104[7];
            v162 = sub_272377B5C();
            *(v162 + 16) = v160;
            bzero((v162 + 32), 4 * v160);
            if (v104[2] < 3uLL)
            {
              goto LABEL_146;
            }
          }

          else
          {
            v162 = MEMORY[0x277D84F90];
          }

          v174 = sub_272258594(v162, v104[6], &qword_280881858, &unk_27237C260);

          if (v104[2] < 2uLL)
          {
            goto LABEL_149;
          }

          v175 = sub_272258594(v174, v104[5], &qword_280881F28, &unk_272381E80);

          if (!v104[2])
          {
            goto LABEL_150;
          }

          v176 = v104[4];

          v177 = sub_272258594(v175, v176, &qword_280882E70, &qword_2723855D0);

          v178 = v205;
          swift_beginAccess();
          v179 = *v178;
          *v178 = v177;
        }
      }

      else if (v156 != 1)
      {
        if (v156 != 2)
        {
          goto LABEL_114;
        }

        v157 = v104[5];
        if (v157 < 0)
        {
          goto LABEL_143;
        }

        if (v157)
        {
          v158 = v104[5];
          v159 = sub_272377B5C();
          *(v159 + 16) = v157;
          bzero((v159 + 32), 4 * v157);
          if (!v104[2])
          {
            goto LABEL_144;
          }
        }

        else
        {
          v159 = MEMORY[0x277D84F90];
        }

        v171 = v104[4];

        v172 = sub_272258594(v159, v171, &qword_280881858, &unk_27237C260);

        swift_beginAccess();
        v173 = *v129;
        *v129 = v172;
      }

      v42 = v231;
      v149 = v214;
LABEL_61:
      if (v42)
      {

        v26 = v229;
        v43 = v223;
        v38 = v224;
        v28 = v219;
        goto LABEL_132;
      }

LABEL_62:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v235[0] = v220;
      v107 = sub_27220038C(v217, v149);
      v109 = v220;
      v110 = v220[2];
      v111 = (v108 & 1) == 0;
      v80 = __OFADD__(v110, v111);
      v112 = v110 + v111;
      if (v80)
      {
        goto LABEL_141;
      }

      v113 = v108;
      if (v220[3] >= v112)
      {
        v116 = v210;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v127 = v107;
          sub_272322718();
          v116 = v210;
          v107 = v127;
          v109 = v235[0];
        }

        v44 = v218;
      }

      else
      {
        sub_272322470(v112, isUniquelyReferenced_nonNull_native);
        v114 = v235[0];
        v107 = sub_27220038C(v217, v149);
        if ((v113 & 1) != (v115 & 1))
        {
          goto LABEL_152;
        }

        v44 = v218;
        v109 = v114;
        v116 = v210;
      }

      v220 = v109;
      if (v113)
      {
        v97 = v109[7];
        v98 = *(v97 + 8 * v107);
        *(v97 + 8 * v107) = v116;
      }

      else
      {
        v109[(v107 >> 6) + 8] |= 1 << v107;
        v117 = (v109[6] + 16 * v107);
        *v117 = v217;
        v117[1] = v149;
        *(v109[7] + 8 * v107) = v116;
        v118 = v109[2];
        v80 = __OFADD__(v118, 1);
        v119 = v118 + 1;
        if (v80)
        {
          goto LABEL_142;
        }

        v109[2] = v119;
      }

      v38 = v224;
      ++v95;

      v96 += 2;
      v94 = v211;
      if (v212 == v95)
      {
        goto LABEL_131;
      }
    }

    if (v120)
    {
      switch(v231)
      {
        case 8:
          v147 = v214;

          v148 = v213;

          sub_27231CF60(v217, v147, v104, v105, v148, 1, v121);
          goto LABEL_95;
        case 4:
          v143 = v214;

          v144 = v213;

          sub_27231CA44(v217, v143, v104, v105, v144, 1, v121);
          goto LABEL_95;
        case 2:
          v134 = v214;

          v135 = v213;

          sub_27231C528(v217, v134, v104, v105, v135, 1, v121);
          goto LABEL_95;
      }

      v235[0] = 0;
      v235[1] = 0xE000000000000000;
      sub_27237820C();

      v235[0] = 0x6174616420746E49;
      v140 = 0xEE0020657A697320;
    }

    else
    {
      switch(v231)
      {
        case 8:
          v145 = v214;

          v146 = v213;

          sub_27231C00C(v217, v145, v104, v105, v146, 0, v121);
          goto LABEL_95;
        case 4:
          v141 = v214;

          v142 = v213;

          sub_27231BAF0(v217, v141, v104, v105, v142, 0, v121);
          goto LABEL_95;
        case 2:
          v124 = v214;

          v125 = v213;

          sub_27231B5D4(v217, v124, v104, v105, v125, 0, v121);
LABEL_95:
          v210 = v126;
          v149 = v214;
          goto LABEL_62;
      }

      v235[0] = 0;
      v235[1] = 0xE000000000000000;
      sub_27237820C();

      v235[0] = 0x74616420746E4955;
      v140 = 0xEF20657A69732061;
    }

LABEL_98:
    v235[1] = v140;
    v236 = v231;
    v150 = sub_27237862C();
    MEMORY[0x2743C4AD0](v150);

    MEMORY[0x2743C4AD0](0x6E616820746F6E20, 0xEC00000064656C64);
    v151 = v235[0];
    v152 = v235[1];
    sub_2722032B4();
    v153 = swift_allocError();
    *v154 = v151;
    v154[1] = v152;
    v42 = v153;
    goto LABEL_99;
  }

  v48 = 0;
  v212 = 0x80000002723903B0;
  v210 = 0x80000002723903E0;
  v49 = (v46 + 40);
  v211 = 0xD000000000000022;
  v219 = v28;
  v215 = v46;
  while (v48 < *(v46 + 2))
  {
    v51 = *(v49 - 1);
    v50 = *v49;

    sub_27227585C(v51, v50);
    v217 = v48;
    v52 = sub_27227519C();
    v216 = v49;

    v53 = sub_272275024();
    sub_27227585C(v51, v50);
    sub_2722751F0(v53);
    v231 = v53;

    v54 = sub_272274F70();
    v55 = sub_272274F30();
    sub_272274FD0();
    LODWORD(v220) = sub_272274BFC();

    sub_272274FD0();
    v56 = sub_272274B2C();

    v57 = sub_272274FA0();
    if (v220 <= 1u)
    {
      if (v220)
      {
        switch(v56)
        {
          case 8:
            v60 = v57;
            v61 = &unk_280882F68;
            v62 = &unk_2723856D8;
            goto LABEL_38;
          case 4:
            v60 = v57;
            v61 = &unk_280882F70;
            v62 = &unk_2723856E0;
            goto LABEL_38;
          case 2:
            v60 = v57;
            v61 = &unk_280882F78;
            v62 = &unk_2723856E8;
            goto LABEL_38;
        }

        v233 = 0;
        v234 = 0xE000000000000000;
        sub_27237820C();

        v233 = 0x6174616420746E49;
        v63 = 0xEE0020657A697320;
      }

      else
      {
        switch(v56)
        {
          case 8:
            v60 = v57;
            v61 = &unk_280882F80;
            v62 = &unk_2723856F0;
            goto LABEL_38;
          case 4:
            v60 = v57;
            v61 = &unk_280882F88;
            v62 = &unk_2723856F8;
            goto LABEL_38;
          case 2:
            v60 = v57;
            v61 = &unk_280882F90;
            v62 = &unk_272385700;
            goto LABEL_38;
        }

        v233 = 0;
        v234 = 0xE000000000000000;
        sub_27237820C();

        v233 = 0x74616420746E4955;
        v63 = 0xEF20657A69732061;
      }
    }

    else
    {
      if (v220 - 2 < 2)
      {

        sub_2722032B4();
        v42 = swift_allocError();
        v58 = v212;
        *v59 = v211;
        v59[1] = v58;
        goto LABEL_43;
      }

      switch(v56)
      {
        case 8:
          v60 = v57;
          v61 = &unk_280882F60;
          v62 = &unk_2723856C8;
LABEL_38:
          sub_2721F065C(v61, v62);
          goto LABEL_39;
        case 4:
          v60 = v57;
          v61 = &unk_2808824C0;
          v62 = &unk_272380780;
          goto LABEL_38;
        case 2:
          v60 = v57;
          type metadata accessor for VAEspressoV2InputFp32Wrapped(0);
LABEL_39:
          v64 = swift_allocObject();
          *(v64 + 80) = 0;
          *(v64 + 88) = 1;
          *(v64 + 96) = 0;
          *(v64 + 104) = 1;
          *(v64 + 112) = 0;
          *(v64 + 120) = 1;
          *(v64 + 128) = 0;
          *(v64 + 136) = 1;
          *(v64 + 152) = 0;
          *(v64 + 160) = 0;
          *(v64 + 144) = 0;
          *(v64 + 168) = 2;
          *(v64 + 40) = v51;
          *(v64 + 48) = v50;
          *(v64 + 16) = v54;
          *(v64 + 24) = v55;
          v65 = v231;
          v214 = v64;
          *(v64 + 32) = v231;
          v66 = *(v65 + 16);

          v67 = sub_272274C18(v66);
          v68 = v214;
          *(v214 + 56) = v67;
          *(v68 + 64) = v220;
          *(v68 + 72) = v60;
          goto LABEL_44;
      }

      v233 = 0;
      v234 = 0xE000000000000000;
      sub_27237820C();

      v233 = 0xD000000000000010;
      v63 = v210;
    }

    v234 = v63;
    v232 = v56;
    v69 = sub_27237862C();
    MEMORY[0x2743C4AD0](v69);

    MEMORY[0x2743C4AD0](0x6E616820746F6E20, 0xEC00000064656C64);
    v70 = v233;
    v71 = v234;
    sub_2722032B4();
    v72 = swift_allocError();
    *v73 = v70;
    v73[1] = v71;
    v42 = v72;
LABEL_43:
    swift_willThrow();
    v43 = v223;
    v28 = v219;
    if (v42)
    {

      v26 = v229;
      v38 = v224;
      goto LABEL_132;
    }

LABEL_44:
    v231 = v52;
    v74 = v221;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v233 = v74;
    v76 = sub_27220038C(v51, v50);
    v78 = *(v74 + 16);
    v79 = (v77 & 1) == 0;
    v80 = __OFADD__(v78, v79);
    v81 = v78 + v79;
    if (v80)
    {
      goto LABEL_138;
    }

    v82 = v77;
    v83 = v217;
    if (*(v74 + 24) >= v81)
    {
      v85 = v214;
      if ((v75 & 1) == 0)
      {
        v92 = v76;
        sub_272322718();
        v85 = v214;
        v76 = v92;
        v221 = v233;
      }

      v44 = v218;
      if ((v82 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_272322470(v81, v75);
      v221 = v233;
      v76 = sub_27220038C(v51, v50);
      if ((v82 & 1) != (v84 & 1))
      {
        goto LABEL_152;
      }

      v44 = v218;
      v85 = v214;
      if ((v82 & 1) == 0)
      {
LABEL_48:
        v86 = v221;
        *(v221 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v87 = (v86[6] + 16 * v76);
        *v87 = v51;
        v87[1] = v50;
        *(v86[7] + 8 * v76) = v85;
        v88 = v86[2];
        v80 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v80)
        {
          goto LABEL_139;
        }

        v86[2] = v89;
        goto LABEL_54;
      }
    }

    v90 = *(v221 + 56);
    v91 = *(v90 + 8 * v76);
    *(v90 + 8 * v76) = v85;

LABEL_54:
    v38 = v224;
    v48 = v83 + 1;

    v49 = (v216 + 16);
    v46 = v215;
    v28 = v219;
    if (v213 == v48)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void sub_27231B5D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882E78, &qword_2723855D8);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 2 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882E90, &qword_2723855F0);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 2 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882E90, &qword_2723855F0);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882E88, &qword_2723855E8);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882E80, &qword_2723855E0);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 2 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882E90, &qword_2723855F0);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882E88, &qword_2723855E8);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231BAF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882E98, &qword_2723855F8);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 4 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882EB0, &qword_272385610);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 4 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882EB0, &qword_272385610);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882EA8, &qword_272385608);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882EA0, &qword_272385600);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 4 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882EB0, &qword_272385610);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882EA8, &qword_272385608);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231C00C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882EB8, &qword_272385618);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 8 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882ED0, &qword_272385630);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 8 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882ED0, &qword_272385630);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882EC8, &qword_272385628);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882EC0, &qword_272385620);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 8 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882ED0, &qword_272385630);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882EC8, &qword_272385628);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231C528(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882ED8, &qword_272385638);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 2 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882EF0, &qword_272385650);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 2 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882EF0, &qword_272385650);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882EE8, &qword_272385648);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882EE0, &qword_272385640);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 2 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882EF0, &qword_272385650);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882EE8, &qword_272385648);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231CA44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882EF8, &qword_272385658);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 4 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882F10, &qword_272385670);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 4 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882F10, &qword_272385670);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882F08, &qword_272385668);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882F00, &qword_272385660);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 4 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882F10, &qword_272385670);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882F08, &qword_272385668);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231CF60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882F18, &qword_272385678);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 8 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280882F30, &unk_272385690);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 8 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280882F30, &unk_272385690);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280882F28, &qword_272385688);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882F20, &qword_272385680);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 8 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280882F30, &unk_272385690);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280882F28, &qword_272385688);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231D47C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_2808824C8, qword_272380788);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  v13 = (v12 + 176);
  *(v12 + 184) = 0;
  v14 = (v12 + 184);
  *(v12 + 192) = 0;
  v15 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v50)
  {

    v18 = *(v12 + 16);

    v19 = *(v12 + 32);

    v20 = *(v12 + 48);

    v21 = *(v12 + 144);

    v22 = *(v12 + 152);

    v23 = *(v12 + 160);

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v17;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v24 = a3[2];
  if (v24 <= 2)
  {
    if (v24 == 1)
    {

      goto LABEL_18;
    }

    if (v24 != 2)
    {
      goto LABEL_16;
    }

    v15 = a3[5];
    if (v15 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v25 = a3[5];
    v26 = sub_272377B5C();
    *(v26 + 16) = v15;
    bzero((v26 + 32), 4 * v15);
    if (a3[2])
    {
LABEL_24:
      v37 = a3[4];

      v38 = sub_272258594(v26, v37, &qword_280881858, &unk_27237C260);

      swift_beginAccess();
      v39 = *v13;
      *v13 = v38;

      return;
    }

    __break(1u);
  }

  if (v24 != 3)
  {
    if (v24 == 4)
    {
      v27 = v15;
      v28 = a3[7];
      if ((v28 & 0x8000000000000000) == 0)
      {
        if (v28)
        {
          v29 = a3[7];
          v30 = sub_272377B5C();
          *(v30 + 16) = v28;
          bzero((v30 + 32), 4 * v28);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v30 = MEMORY[0x277D84F90];
        }

        v40 = sub_272258594(v30, a3[6], &qword_280881858, &unk_27237C260);

        if (a3[2] >= 2uLL)
        {
          v41 = sub_272258594(v40, a3[5], &qword_280881F28, &unk_272381E80);

          if (a3[2])
          {
            v42 = a3[4];

            v43 = sub_272258594(v41, v42, &qword_280882E70, &qword_2723855D0);

            swift_beginAccess();
            v44 = *v27;
            *v27 = v43;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v52, "Invalid rank: ");
    HIBYTE(v52[1]) = -18;
    v52[4] = v24;
    v31 = sub_27237862C();
    MEMORY[0x2743C4AD0](v31);

    v32 = v52[1];
    sub_2722032B4();
    swift_allocError();
    *v33 = v52[0];
    v33[1] = v32;
    swift_willThrow();

LABEL_18:

    return;
  }

  v34 = a3[6];
  if ((v34 & 0x8000000000000000) == 0)
  {
    if (v34)
    {
      v35 = a3[6];
      v36 = sub_272377B5C();
      *(v36 + 16) = v34;
      bzero((v36 + 32), 4 * v34);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v26 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v45 = sub_272258594(v36, a3[5], &qword_280881858, &unk_27237C260);

    if (a3[2])
    {
      v46 = a3[4];

      v47 = sub_272258594(v45, v46, &qword_280881F28, &unk_272381E80);

      swift_beginAccess();
      v48 = *v14;
      *v14 = v47;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}