uint64_t sub_100084E9C()
{
  v87 = v0;
  v1 = *(v0 + 72) + *(v0 + 128);
  *v1 = *(v0 + 120);
  *(v1 + 8) = 1;
  v2 = (*(v0 + 72) + *(v0 + 128));
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v4 == 2)
  {
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v8;
    v9 = v7 + v8;
    v10 = *(v7 + v8);
    v11 = *(v7 + v8 + 8);
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_104;
      }

      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_138;
      }

      if (v16 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v10) - v10 < 4)
      {
LABEL_104:
        v63 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v64 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
        v65 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v66 = swift_task_alloc();
        *(v0 + 96) = v66;
        *v66 = v0;
        v66[1] = sub_100083210;
        v67 = *(v0 + 72);
        v54 = v0 + 48;
LABEL_113:
        v55 = v63;
        v56 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
      }
    }

    else if (BYTE6(v11) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v12 == 2)
    {
      v17 = *(v10 + 16);
      v18 = *(v10 + 24);
    }

    else
    {
      if (v12 != 1)
      {
        v17 = 0;
        v19 = 0;
        v18 = BYTE6(v11);
        v20 = BYTE6(v11);
        goto LABEL_24;
      }

      v17 = v10;
      v18 = v10 >> 32;
    }

    if (v18 < v17)
    {
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
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
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
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v54 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v56);
    }

    if (v12 == 2)
    {
      v19 = *(v10 + 16);
      v20 = *(v10 + 24);
    }

    else
    {
      v19 = v10;
      v20 = v10 >> 32;
    }

LABEL_24:
    if (v20 < v18 || v18 < v19)
    {
      goto LABEL_126;
    }

    v15 = __OFSUB__(v18, v17);
    v22 = v18 - v17;
    if (v15)
    {
      goto LABEL_127;
    }

    if (v22 < 4)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          goto LABEL_52;
        }

        v23 = v10 >> 32;
LABEL_47:
        if (v23 < v10)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v23 = *(v10 + 24);
      goto LABEL_49;
    }

    v23 = v17 + 4;
    if (__OFADD__(v17, 4))
    {
      goto LABEL_134;
    }

    if (v12 == 2)
    {
      v24 = *(v10 + 16);
      v25 = *(v10 + 24);
    }

    else if (v12 == 1)
    {
      v24 = v10;
      v25 = v10 >> 32;
    }

    else
    {
      v24 = 0;
      v25 = BYTE6(v11);
    }

    if (v25 < v23 || v23 < v24)
    {
      goto LABEL_135;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v23 < *(v10 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v23 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v27 = sub_1001CFBC0();
    v29 = v28;
    v30 = *v9;
    v31 = *(v9 + 8);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v35 = 0;
        v33 = 0;
        v36 = 0;
        v34 = 0;
        goto LABEL_63;
      }

      v33 = *(v30 + 16);
      v35 = *(v30 + 24);
    }

    else
    {
      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = BYTE6(v31);
        v36 = BYTE6(v31);
        goto LABEL_63;
      }

      v33 = v30;
      v35 = v30 >> 32;
    }

    if (v35 < v33)
    {
      goto LABEL_128;
    }

    if (v32 == 2)
    {
      v34 = *(v30 + 16);
      v36 = *(v30 + 24);
    }

    else
    {
      v34 = v30;
      v36 = v30 >> 32;
    }

LABEL_63:
    if (v36 < v35 || v35 < v34)
    {
      goto LABEL_129;
    }

    v15 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v15)
    {
      goto LABEL_130;
    }

    if (v37 < 4)
    {
      goto LABEL_136;
    }

    v38 = v33 + 4;
    if (__OFADD__(v33, 4))
    {
      goto LABEL_131;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v39 = *(v30 + 16);
        v40 = *(v30 + 24);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }
    }

    else if (v32)
    {
      v39 = v30;
      v40 = v30 >> 32;
    }

    else
    {
      v39 = 0;
      v40 = BYTE6(v31);
    }

    if (v40 < v38 || v38 < v39)
    {
      goto LABEL_132;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v41 = *(v30 + 24);
      }

      else
      {
        v41 = 0;
      }
    }

    else if (v32)
    {
      v41 = v30 >> 32;
    }

    else
    {
      v41 = BYTE6(v31);
    }

    sub_100012038(*v9, *(v9 + 8));
    sub_100011E48(v30, v31);
    if (v41 < v38)
    {
      goto LABEL_133;
    }

    v42 = sub_1001CFBC0();
    v44 = v43;
    sub_100011E48(v30, v31);
    *v9 = v42;
    *(v9 + 8) = v44;
    v45 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_100011E48(v27, v29);
        v5 = 0;
        goto LABEL_3;
      }

      v46 = *(v27 + 16);
      v47 = sub_1001CF870();
      if (!v47)
      {
        goto LABEL_144;
      }

      v48 = v47;
      v49 = sub_1001CF8A0();
      if (__OFSUB__(v46, v49))
      {
        goto LABEL_140;
      }

      v50 = (v46 - v49 + v48);
      sub_1001CF890();
      if (!v50)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v45)
      {
        sub_100011E48(v27, v29);
        v5 = bswap32(v27);
        goto LABEL_3;
      }

      if (v27 > v27 >> 32)
      {
        goto LABEL_139;
      }

      v51 = sub_1001CF870();
      if (!v51)
      {
        goto LABEL_146;
      }

      v52 = v51;
      v53 = sub_1001CF8A0();
      if (__OFSUB__(v27, v53))
      {
        goto LABEL_141;
      }

      v50 = (v27 - v53 + v52);
      v54 = sub_1001CF890();
      if (!v50)
      {
        goto LABEL_147;
      }
    }

    v57 = *v50;
    sub_100011E48(v27, v29);
    v5 = bswap32(v57);
LABEL_3:
    v4 = 0;
    v6 = *(v0 + 72) + *(v0 + 128);
    v3 = v5;
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if (v4)
  {
    if (!v3)
    {
      v70 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      v71 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();
    v81 = *(v0 + 80);

    v82 = *(v0 + 8);
  }

  else
  {
    v58 = *(v0 + 72);
    if (v3)
    {
      v59 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v59;
      v60 = *(v58 + v59);
      v61 = *(v58 + v59 + 8);
      v62 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v62 != 2)
        {
          goto LABEL_112;
        }

        v73 = *(v60 + 16);
        v72 = *(v60 + 24);
        v15 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v15)
        {
          goto LABEL_142;
        }

        if (v74 < v3)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v62)
        {
          if (BYTE6(v61) >= v3)
          {
            goto LABEL_118;
          }

LABEL_112:
          v63 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
          v64 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0);
          v75 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
          v76 = swift_task_alloc();
          *(v0 + 112) = v76;
          *v76 = v0;
          v76[1] = sub_1000844BC;
          v77 = *(v0 + 72);
          v54 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v60) - v60 < v3)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v60, v61);
      sub_10007A708(v3, v60, v61, v85);
      v69 = *(&v85[0] + 1);
      v68 = *&v85[0];
      sub_10008570C(v3);
      v58 = *(v0 + 72);
    }

    else
    {
      v68 = 0;
      v69 = 0xC000000000000000;
    }

    v78 = *(v0 + 80);
    v79 = *(v0 + 64);
    v80 = v58 + *(v0 + 128);
    *v80 = 0;
    *(v80 + 8) = 2;
    v70 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001D0B10();
    sub_100011E48(v68, v69);
    v71 = 0;
LABEL_120:
    v83 = *(v0 + 80);
    (*(*(v70 - 8) + 56))(*(v0 + 64), v71, 1, v70);

    v82 = *(v0 + 8);
  }

  return v82();
}

unint64_t sub_10008570C(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_100088598(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_100088534(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_100012038(*v1, *(v1 + 8));
      result = sub_100011E48(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_1001CFBC0();
        v15 = v14;
        result = sub_100011E48(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_100085848()
{
  v1[2] = v0;
  v2 = *(*(sub_100011AC0(&unk_100230110, &unk_1001D6520) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = *(*(sub_100011AC0(&qword_1002295C0, &qword_1001D6910) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_1001D0FF0();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100085984, 0, 0);
}

uint64_t sub_100085984()
{
  v1 = *(v0 + 16);
  v2 = sub_100011AC0(&qword_100229560, &qword_1001D68C0);
  *(v0 + 72) = v2;
  v3 = *(v2 + 40);
  *(v0 + 208) = v3;
  if (*(v1 + v3))
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 24);

    v8 = *(v0 + 8);

    return v8(0, 0xF000000000000000);
  }

  else
  {
    v10 = *(v2 + 36);
    if (*(v1 + v10))
    {
      *(v1 + v10) = 0;
      v11 = swift_task_alloc();
      *(v0 + 80) = v11;
      *v11 = v0;
      v12 = sub_100085B08;
    }

    else
    {
      v11 = swift_task_alloc();
      *(v0 + 152) = v11;
      *v11 = v0;
      v12 = sub_1000868D0;
    }

    v11[1] = v12;
    v13 = *(v0 + 16);

    return NWAsyncConnection.Inbound.AsyncIterator.next()();
  }
}

uint64_t sub_100085B08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(*v5 + 80);
  v7 = *v5;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 212) = a4;

  if (v4)
  {
    v8 = *(v7 + 64);
    v10 = *(v7 + 32);
    v9 = *(v7 + 40);
    v11 = *(v7 + 24);

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {

    return _swift_task_switch(sub_100085C78, 0, 0);
  }
}

uint64_t sub_100085C78()
{
  v1 = *(v0 + 104);
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0xF000000000000000;
LABEL_24:
    v44 = *(v0 + 64);
    v46 = *(v0 + 32);
    v45 = *(v0 + 40);
    v47 = *(v0 + 24);

    v48 = *(v0 + 8);

    return v48(v2, v3);
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v1)
  {
    v7 = *(v0 + 104);

    sub_1001D1050();

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 16);
      (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
      v10 = (v9 + *(v8 + 44));
      v11 = v10[1];
      v49 = (*v10 + **v10);
      v12 = (*v10)[1];
      v13 = swift_task_alloc();
      *(v0 + 112) = v13;
      *v13 = v0;
      v13[1] = sub_100086104;
      v14 = *(v0 + 64);
LABEL_6:

      return v49(v14);
    }
  }

  else
  {
    (*(v5 + 56))(*(v0 + 40), 1, 1, *(v0 + 48));
  }

  sub_100011F00(*(v0 + 40), &qword_1002295C0, &qword_1001D6910);
  v16 = *(v0 + 96);
  v17 = *(v0 + 212);
  if (v16 >> 60 != 15)
  {
    *(*(v0 + 16) + *(v0 + 208)) = v17 & 1;
    if (v17)
    {
      if (*(v0 + 104))
      {
        v21 = *(v0 + 88);
        v20 = *(v0 + 96);
        sub_1001D12A0();
        sub_100012038(v21, v20);
        sub_1001D1250();
        v22 = sub_1001D1070();
        *(v0 + 128) = v22;

        if (v22)
        {
          sub_1001D1290();
          if (swift_dynamicCastClass())
          {
            v23 = *(v0 + 32);
            v24 = (*(v0 + 16) + *(*(v0 + 72) + 48));
            v25 = *v24;
            v26 = v24[1];
            sub_1001D1280();
            v49 = (v25 + *v25);
            v27 = v25[1];
            v28 = swift_task_alloc();
            *(v0 + 136) = v28;
            *v28 = v0;
            v28[1] = sub_100086614;
            v14 = *(v0 + 32);
            goto LABEL_6;
          }

          v41 = *(v0 + 96);
          v40 = *(v0 + 104);
          v42 = *(v0 + 88);
          v43 = *(v0 + 212);

          v33 = v42;
          v34 = v41;
          v35 = v40;
        }

        else
        {
          v34 = *(v0 + 96);
          v35 = *(v0 + 104);
          v33 = *(v0 + 88);
          v39 = *(v0 + 212);
        }
      }

      else
      {
        v36 = *(v0 + 88);
        v37 = *(v0 + 96);
        v38 = *(v0 + 212);
        sub_100089C38(v36, v37);
        v33 = v36;
        v34 = v37;
        v35 = 0;
      }
    }

    else
    {
      v29 = *(v0 + 96);
      v30 = *(v0 + 104);
      v31 = *(v0 + 88);
      v32 = *(v0 + 212);
      sub_100089C38(v31, v29);
      v33 = v31;
      v34 = v29;
      v35 = v30;
    }

    sub_100089D40(v33, v34, v35);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    goto LABEL_24;
  }

  sub_100089D40(*(v0 + 88), v16, *(v0 + 104));
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  *v18 = v0;
  v18[1] = sub_1000868D0;
  v19 = *(v0 + 16);

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_100086104()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100086558;
  }

  else
  {
    v3 = sub_100086218;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100086218()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 96);
  v2 = *(v0 + 212);
  if (v1 >> 60 == 15)
  {
    sub_100089D40(*(v0 + 88), v1, *(v0 + 104));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_1000868D0;
    v4 = *(v0 + 16);

    return NWAsyncConnection.Inbound.AsyncIterator.next()();
  }

  *(*(v0 + 16) + *(v0 + 208)) = v2 & 1;
  if (v2)
  {
    if (*(v0 + 104))
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      sub_1001D12A0();
      sub_100012038(v7, v6);
      sub_1001D1250();
      v8 = sub_1001D1070();
      *(v0 + 128) = v8;

      if (v8)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v9 = *(v0 + 32);
          v10 = (*(v0 + 16) + *(*(v0 + 72) + 48));
          v11 = *v10;
          v12 = v10[1];
          sub_1001D1280();
          v38 = (v11 + *v11);
          v13 = v11[1];
          v14 = swift_task_alloc();
          *(v0 + 136) = v14;
          *v14 = v0;
          v14[1] = sub_100086614;
          v15 = *(v0 + 32);

          return v38(v15);
        }

        v28 = *(v0 + 96);
        v27 = *(v0 + 104);
        v29 = *(v0 + 88);
        v30 = *(v0 + 212);

        v20 = v29;
        v21 = v28;
        v22 = v27;
      }

      else
      {
        v21 = *(v0 + 96);
        v22 = *(v0 + 104);
        v20 = *(v0 + 88);
        v26 = *(v0 + 212);
      }
    }

    else
    {
      v23 = *(v0 + 88);
      v24 = *(v0 + 96);
      v25 = *(v0 + 212);
      sub_100089C38(v23, v24);
      v20 = v23;
      v21 = v24;
      v22 = 0;
    }
  }

  else
  {
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v18 = *(v0 + 88);
    v19 = *(v0 + 212);
    sub_100089C38(v18, v16);
    v20 = v18;
    v21 = v16;
    v22 = v17;
  }

  sub_100089D40(v20, v21, v22);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  v33 = *(v0 + 64);
  v35 = *(v0 + 32);
  v34 = *(v0 + 40);
  v36 = *(v0 + 24);

  v37 = *(v0 + 8);

  return v37(v31, v32);
}

uint64_t sub_100086558()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 212);
  sub_100089D40(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100086614()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 144) = v0;

  sub_100011F00(v3, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v4 = sub_100086810;
  }

  else
  {
    v4 = sub_100086754;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100086754()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 212);
  sub_100089D40(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 24);

  v9 = *(v0 + 8);

  return v9(v3, v4);
}

uint64_t sub_100086810()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 212);

  sub_10002683C(v4, v2);
  sub_100089D40(v4, v2, v3);
  v6 = *(v0 + 144);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 24);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000868D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(*v5 + 152);
  v7 = *v5;
  *(v7 + 160) = a1;
  *(v7 + 168) = a2;
  *(v7 + 176) = a3;
  *(v7 + 213) = a4;

  if (v4)
  {
    v8 = *(v7 + 64);
    v10 = *(v7 + 32);
    v9 = *(v7 + 40);
    v11 = *(v7 + 24);

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {

    return _swift_task_switch(sub_100086A40, 0, 0);
  }
}

uint64_t sub_100086A40()
{
  v1 = *(v0 + 176);
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0xF000000000000000;
LABEL_18:
    v26 = *(v0 + 64);
    v28 = *(v0 + 32);
    v27 = *(v0 + 40);
    v29 = *(v0 + 24);

    v30 = *(v0 + 8);

    return v30(v2, v3);
  }

  if (*(v0 + 213))
  {
    *(*(v0 + 16) + *(v0 + 208)) = 1;
    if (v1)
    {
      v4 = *(v0 + 176);
      sub_1001D12A0();
      sub_1001D1250();
      v5 = sub_1001D1070();
      *(v0 + 184) = v5;

      if (v5)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v6 = *(v0 + 24);
          v7 = (*(v0 + 16) + *(*(v0 + 72) + 48));
          v8 = *v7;
          v9 = v7[1];
          sub_1001D1280();
          v31 = (v8 + *v8);
          v10 = v8[1];
          v11 = swift_task_alloc();
          *(v0 + 192) = v11;
          *v11 = v0;
          v11[1] = sub_100086D38;
          v12 = *(v0 + 24);

          return v31(v12);
        }
      }
    }

    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    v24 = *(v0 + 160);
    v25 = *(v0 + 213);
    sub_100089C38(v24, v22);
    v19 = v24;
    v20 = v22;
    v21 = v23;
LABEL_17:
    sub_100089D40(v19, v20, v21);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    goto LABEL_18;
  }

  v14 = *(v0 + 160);
  v15 = *(v0 + 168);
  if (v15 >> 60 != 15)
  {
    sub_100089C38(*(v0 + 160), *(v0 + 168));
    v19 = v14;
    v20 = v15;
    v21 = v1;
    goto LABEL_17;
  }

  v16 = *(v0 + 213);
  sub_100089D40(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_1000868D0;
  v18 = *(v0 + 16);

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_100086D38()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 200) = v0;

  sub_100011F00(v3, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v4 = sub_100086F4C;
  }

  else
  {
    v4 = sub_100086E78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100086E78()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 213);
  sub_100089C38(v4, v2);
  sub_100089D40(v4, v2, v3);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 64);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 24);

  v12 = *(v0 + 8);

  return v12(v6, v7);
}

uint64_t sub_100086F4C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 213);

  sub_100089D40(v4, v3, v2);
  v6 = *(v0 + 200);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 24);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100086FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[61] = a8;
  v8[62] = v14;
  v8[59] = a6;
  v8[60] = a7;
  v8[57] = a4;
  v8[58] = a5;
  v9 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v8[63] = v9;
  v10 = *(v9 - 8);
  v8[64] = v10;
  v11 = *(v10 + 64) + 15;
  v8[65] = swift_task_alloc();

  return _swift_task_switch(sub_1000870D8, 0, 0);
}

uint64_t sub_1000870D8()
{
  v15 = v0;
  v1 = v0[59];
  v2 = v0[57];

  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[58];
    v5 = v0[59];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000954E0(v6, v5, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: start", v7, 0xCu);
    sub_100011CF0(v8);
  }

  v13 = (v0[60] + *v0[60]);
  v9 = *(v0[60] + 4);
  v10 = swift_task_alloc();
  v0[66] = v10;
  *v10 = v0;
  v10[1] = sub_1000872B4;
  v11 = v0[61];

  return v13(v0 + 44);
}

uint64_t sub_1000872B4()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_100087928;
  }

  else
  {
    v3 = sub_1000873C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000873C8()
{
  v63 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  os_unfair_lock_lock((v1 + 16));
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  *(v0 + 232) = v11;
  *(v0 + 216) = v10;
  *(v0 + 200) = v9;
  *(v0 + 184) = v8;
  v57 = v0;
  if ((v11 & 0x100) == 0)
  {
    v12 = *(v1 + 24);
    v13 = *(v1 + 40);
    v14 = *(v1 + 56);
    *(v0 + 288) = *(v1 + 72);
    *(v0 + 256) = v13;
    *(v0 + 272) = v14;
    *(v0 + 240) = v12;
    v56 = v2;
    sub_100012038(v2, v3);
    sub_100012038(v5, v4);
    sub_100012038(v6, v7);
    sub_10001208C(v0 + 184, v0 + 296, &qword_1002295E8, &unk_1001E0660);
    sub_100011F00(v0 + 240, &qword_1002295E8, &unk_1001E0660);
    v15 = *(v0 + 184);
    v16 = v3;
    if (v15 >> 62)
    {
      goto LABEL_15;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v56; v17; i = v56)
    {
      v19 = 0;
      v20 = v57[64];
      v54 = v15 & 0xFFFFFFFFFFFFFF8;
      v55 = v15 & 0xC000000000000001;
      v47 = (v20 + 16);
      v48 = (v20 + 48);
      v46 = (v20 + 8);
      v52 = v4;
      v53 = v5;
      v51 = v7;
      v49 = v17;
      v50 = v15;
      while (v55)
      {
        v7 = sub_1001D2040();
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v60 = v21;
        v58 = v57[63];
        v22 = (v7 + *(*v7 + 88));
        v23 = i;
        sub_100012038(i, v16);
        v4 = v52;
        v5 = v53;
        sub_100012038(v53, v52);
        sub_100012038(v6, v51);
        os_unfair_lock_lock(v22);
        v24 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
        if (!(*v48)(v22 + *(v24 + 28), 1, v58))
        {
          v59 = v57[65];
          v25 = v57[63];
          (*v47)();
          v57[50] = v56;
          v57[51] = v16;
          v57[52] = v53;
          v57[53] = v52;
          v57[54] = v6;
          v57[55] = v51;
          sub_100012038(v56, v16);
          sub_100012038(v53, v52);
          sub_100012038(v6, v51);
          sub_1001D1AA0();
          v23 = v56;
          (*v46)(v59, v25);
        }

        os_unfair_lock_unlock(v22);

        i = v23;
        sub_100011E48(v23, v16);
        sub_100011E48(v53, v52);
        sub_100011E48(v6, v51);
        ++v19;
        v15 = v50;
        v7 = v51;
        if (v60 == v49)
        {
          goto LABEL_16;
        }
      }

      if (v19 >= *(v54 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(v15 + 8 * v19 + 32);

      v21 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v17 = sub_1001D2190();
    }

LABEL_16:
    v26 = v57[62];
    sub_100011F00((v57 + 23), &qword_1002295E8, &unk_1001E0660);
    v62 = 1;
    *(v1 + 24) = i;
    *(v26 + 32) = v16;
    *(v26 + 40) = v5;
    *(v26 + 48) = v4;
    *(v26 + 56) = v6;
    *(v26 + 64) = v7;
    *(v26 + 72) = 256;
  }

  os_unfair_lock_unlock((v1 + 16));
  v28 = v57[46];
  v27 = v57[47];
  v29 = v57[48];
  v30 = v57[49];
  sub_100011E48(v57[44], v57[45]);
  sub_100011E48(v28, v27);
  sub_100011E48(v29, v30);
  if (sub_1001D1C30())
  {
    if (qword_100227968 != -1)
    {
LABEL_30:
      swift_once();
    }

    v31 = qword_10022FB98;
    do
    {
      v32 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v33 = v31;
      atomic_compare_exchange_strong_explicit(&qword_10022FB98, &v33, v32, memory_order_relaxed, memory_order_relaxed);
      v34 = v33 == v31;
      v31 = v33;
    }

    while (!v34);
    v35 = v57[59];
    v36 = v57[57];

    v37 = sub_1001D0E50();
    v38 = sub_1001D1DE0();

    if (os_log_type_enabled(v37, v38))
    {
      v40 = v57[58];
      v39 = v57[59];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61 = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_1000954E0(v40, v39, &v61);
      *(v41 + 12) = 2048;
      *(v41 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: end after being cancelled counter=%ld", v41, 0x16u);
      sub_100011CF0(v42);
    }
  }

  v43 = v57[65];

  v44 = v57[1];

  return v44();
}

uint64_t sub_100087928()
{
  v57 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 496);
  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 16) = v3;
  if ((v6 & 0x100) == 0)
  {
    v7 = *(v0 + 536);
    v8 = *(v2 + 40);
    v9 = *(v2 + 56);
    v10 = *(v2 + 72);
    *(v0 + 72) = *(v2 + 24);
    *(v0 + 120) = v10;
    *(v0 + 104) = v9;
    *(v0 + 88) = v8;
    swift_errorRetain();
    sub_10001208C(v0 + 16, v0 + 128, &qword_1002295E8, &unk_1001E0660);
    sub_100011F00(v0 + 72, &qword_1002295E8, &unk_1001E0660);
    v11 = *(v0 + 16);
    v47 = v1;
    v48 = v2;
    if (v11 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1001D2190())
    {
      v13 = 0;
      v14 = *(v0 + 512);
      v15 = v11 & 0xC000000000000001;
      v53 = (v14 + 48);
      v54 = v11 & 0xFFFFFFFFFFFFFF8;
      v49 = (v14 + 8);
      v50 = (v14 + 16);
      v51 = v11 & 0xC000000000000001;
      v52 = v11;
      while (v15)
      {
        v17 = sub_1001D2040();
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v19 = *(v0 + 536);
        v20 = *(v0 + 504);
        v21 = (v17 + *(*v17 + 88));
        swift_errorRetain();
        os_unfair_lock_lock(v21);
        v22 = *(sub_100011AC0(&qword_1002295F0, &qword_1001D6990) + 28);
        if (!(*v53)(v21 + v22, 1, v20))
        {
          v23 = i;
          v24 = *(v0 + 536);
          v25 = *(v0 + 520);
          v26 = *(v0 + 504);
          (*v50)(v25, v21 + v22, v26);
          sub_100011AC0(&qword_100227A58, &qword_1001D3600);
          v27 = swift_allocError();
          *v28 = v24;
          *(v0 + 448) = v27;
          i = v23;
          v15 = v51;
          swift_errorRetain();
          sub_1001D1A90();
          v29 = v26;
          v11 = v52;
          (*v49)(v25, v29);
        }

        v16 = *(v0 + 536);
        os_unfair_lock_unlock(v21);

        ++v13;
        if (v18 == i)
        {
          goto LABEL_16;
        }
      }

      if (v13 >= *(v54 + 16))
      {
        goto LABEL_14;
      }

      v17 = *(v11 + 8 * v13 + 32);

      v18 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    v30 = *(v0 + 496);
    sub_100011F00(v0 + 16, &qword_1002295E8, &unk_1001E0660);
    v56 = 1;
    v2 = v48;
    *(v48 + 24) = v47;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0;
    *(v30 + 72) = 257;
  }

  v31 = *(v0 + 536);
  os_unfair_lock_unlock((v2 + 16));

  if (sub_1001D1C30())
  {
    if (qword_100227968 != -1)
    {
LABEL_30:
      swift_once();
    }

    v32 = qword_10022FB98;
    do
    {
      v33 = v32 - 1;
      if (__OFSUB__(v32, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v34 = v32;
      atomic_compare_exchange_strong_explicit(&qword_10022FB98, &v34, v33, memory_order_relaxed, memory_order_relaxed);
      v35 = v34 == v32;
      v32 = v34;
    }

    while (!v35);
    v36 = *(v0 + 472);
    v37 = *(v0 + 456);

    v38 = sub_1001D0E50();
    v39 = sub_1001D1DE0();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = *(v0 + 464);
      v40 = *(v0 + 472);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_1000954E0(v41, v40, &v55);
      *(v42 + 12) = 2048;
      *(v42 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: end after being cancelled counter=%ld", v42, 0x16u);
      sub_100011CF0(v43);
    }
  }

  v44 = *(v0 + 520);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100087DAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_10013ED28(a1);
}

uint64_t sub_100087E48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v46, v10);
  v44 = &v39 - v11;
  if (qword_100227968 != -1)
  {
LABEL_23:
    swift_once();
  }

  v12 = qword_10022FB98;
  do
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v14 = v12;
    atomic_compare_exchange_strong_explicit(&qword_10022FB98, &v14, v13, memory_order_relaxed, memory_order_relaxed);
    v15 = v14 == v12;
    v12 = v14;
  }

  while (!v15);

  v16 = sub_1001D0E50();
  v17 = sub_1001D1DE0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v50[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_1000954E0(a2, a3, v50);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: cancelled counter=%ld", v18, 0x16u);
    sub_100011CF0(v19);
  }

  sub_1001D1C20();
  sub_1001D1AC0();
  sub_10008A830(&qword_1002295E0, &type metadata accessor for CancellationError);
  v20 = swift_allocError();
  sub_1001D16E0();
  os_unfair_lock_lock((a5 + 16));
  v51 = *(a5 + 72);
  v21 = *(a5 + 40);
  v50[0] = *(a5 + 24);
  v50[1] = v21;
  v50[2] = *(a5 + 56);
  if ((v51 & 0x100) == 0)
  {
    v22 = *(a5 + 40);
    v48[0] = *(a5 + 24);
    v48[1] = v22;
    v48[2] = *(a5 + 56);
    v49 = *(a5 + 72);
    swift_errorRetain();
    sub_10001208C(v50, v47, &qword_1002295E8, &unk_1001E0660);
    sub_100011F00(v48, &qword_1002295E8, &unk_1001E0660);
    a3 = *&v50[0];
    v40 = a5;
    if (*&v50[0] >> 62)
    {
      a5 = sub_1001D2190();
      if (a5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      a5 = *((*&v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5)
      {
LABEL_11:
        v23 = 0;
        v24 = v8;
        v8 = a3 & 0xC000000000000001;
        v25 = a3 & 0xFFFFFFFFFFFFFF8;
        v45 = (v24 + 48);
        v42 = (v24 + 16);
        v41 = (v24 + 8);
        v43 = a3 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v8)
          {
            v26 = sub_1001D2040();
            a2 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v23 >= *(v25 + 16))
            {
              goto LABEL_22;
            }

            v26 = *(a3 + 8 * v23 + 32);

            a2 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          v27 = (v26 + *(*v26 + 88));
          swift_errorRetain();
          os_unfair_lock_lock(v27);
          v28 = *(sub_100011AC0(&qword_1002295F0, &qword_1001D6990) + 28);
          if (!(*v45)(v27 + v28, 1, v46))
          {
            v29 = v27 + v28;
            v30 = v44;
            v31 = a3;
            v32 = v8;
            v33 = a5;
            v34 = v46;
            (*v42)(v44, v29, v46);
            sub_100011AC0(&qword_100227A58, &qword_1001D3600);
            v35 = swift_allocError();
            *v36 = v20;
            v47[0] = v35;
            swift_errorRetain();
            sub_1001D1A90();
            v37 = v34;
            a5 = v33;
            v8 = v32;
            a3 = v31;
            v25 = v43;
            (*v41)(v30, v37);
          }

          os_unfair_lock_unlock(v27);

          ++v23;
        }

        while (a2 != a5);
      }
    }

    sub_100011F00(v50, &qword_1002295E8, &unk_1001E0660);
    LOBYTE(v47[0]) = 1;
    a5 = v40;
    *(v40 + 24) = v20;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0;
    *(a5 + 72) = 257;
  }

  os_unfair_lock_unlock((a5 + 16));
}

uint64_t sub_1000883CC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10005B61C;

  return sub_100075AA4(a1, v15, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100088534(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100088598(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10008864C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_10007BF30(a1, v4);
}

uint64_t sub_1000886EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v10[1] = sub_10005B61C;

  return sub_100061E40(a1, a2, v9, a4, a5, a6, a7, a8);
}

BOOL sub_100088818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[0] = a2;
  v39[1] = a3;
  v4 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  isa = v4[-1].isa;
  v45 = v4;
  v5 = *(isa + 8);
  __chkstk_darwin(v4, v6);
  v8 = v39 - v7;
  v9 = sub_1001D0180();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9, v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001D05B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, v15);
  v43 = v10[13];
  v43(v14, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v9);
  v49 = v9;
  v41 = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags);
  v50 = v41;
  v21 = sub_10003B47C(&v47);
  v42 = v10[2];
  v42(v21, v14, v9);
  v22 = sub_1001CFEC0();
  v40 = v10[1];
  v40(v14, v9);
  sub_100011CF0(&v47);
  if ((v22 & 1) == 0)
  {
    (*(v16 + 8))(v20, v15);
    return 0;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0350();
  sub_10005956C();
  sub_1001D0210();
  (*(isa + 1))(v8, v45);
  (*(v16 + 8))(v20, v15);
  v23 = v48;
  if (v48)
  {
    v24 = v47;
    if (v47 == 0x79786F7270 && v48 == 0xE500000000000000 || (sub_1001D2470() & 1) != 0)
    {

      return 1;
    }

    if (v24 == 0x746365726964 && v23 == 0xE600000000000000 || (sub_1001D2470() & 1) != 0)
    {

      return 0;
    }

    v26 = sub_1001D0E50();
    v27 = sub_1001D1E00();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v26;
      v46 = v29;
      v30 = v29;
      *v28 = 136446210;
      v31 = sub_1000954E0(v24, v23, &v46);

      *(v28 + 4) = v31;
      v32 = v45;
      _os_log_impl(&_mh_execute_header, v45, v27, "unexpected node kind override, ignoring, overrideNodeKind=%{public}s", v28, 0xCu);
      sub_100011CF0(v30);
    }

    else
    {
    }
  }

  v43(v14, enum case for PrivateCloudComputeFeatureFlags.forceTrustedProxyProtocol(_:), v9);
  v49 = v9;
  v50 = v41;
  v33 = sub_10003B47C(&v47);
  v42(v33, v14, v9);
  v34 = sub_1001CFEC0();
  v40(v14, v9);
  sub_100011CF0(&v47);
  if (v34)
  {
    return 1;
  }

  v35 = sub_1001060E4();
  if (v36)
  {
    return 0;
  }

  v37 = *&v35;
  sub_100108A1C();
  return v38 < v37;
}

unint64_t sub_100088DD8()
{
  result = qword_100229538;
  if (!qword_100229538)
  {
    sub_100011DF4(&qword_100229530, &qword_1001D6858);
    sub_10008A830(&qword_100229540, &type metadata accessor for Prefetch.Response);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229538);
  }

  return result;
}

uint64_t sub_100088E8C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

void sub_100088F14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v9 = *(v0 + 96);
  v10 = *(v0 + 80);
  v8 = *(v0 + 112);
  v6 = *(v0 + 128);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  JUMPOUT(0x1000886ECLL);
}

uint64_t sub_100089054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008906C()
{
  v1 = sub_1001D08A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100089144(uint64_t a1)
{
  v4 = *(sub_1001D08A0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_100063C1C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100089270()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000892B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_100064484(a1, v4, v5, v6);
}

uint64_t sub_100089360(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v16 = *(v2 + 80);
  v17 = *(v2 + 64);
  v15 = *(v2 + 96);
  v11 = *(v2 + 112);
  v12 = *(v2 + 120);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10005B61C;

  return sub_100064854(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100089478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000894E0()
{
  v1 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v31 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v36 = sub_1001D08A0();
  v34 = *(v36 - 8);
  v28 = *(v34 + 80);
  v27 = *(v34 + 64);
  v35 = sub_1001CFDA0();
  v2 = *(v35 - 8);
  v3 = *(v2 + 80);
  v26 = *(v2 + 64);
  v33 = sub_1001CFD60();
  v4 = *(v33 - 8);
  v5 = *(v4 + 80);
  v32 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v30 = (v31 + 40) & ~v31;
  v8 = v0 + v30;
  sub_100011E48(*v8, *(v8 + 8));
  v9 = *(v0 + v30 + 24);

  v10 = v1[6];
  v11 = sub_1001D0940();
  (*(*(v11 - 8) + 8))(v0 + v30 + v10, v11);
  v12 = v1[8];
  v13 = sub_1001D08D0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v30 + v12, 1, v13))
  {
    (*(v14 + 8))(v8 + v12, v13);
  }

  v15 = v31 | v28 | v3 | v5;
  v16 = (v30 + v29 + v28) & ~v28;
  v17 = (v16 + v27 + v3) & ~v3;
  v18 = (v26 + v3 + v17) & ~v3;
  v19 = (v5 + ((v26 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v5;
  v20 = *(v8 + v1[9] + 8);

  v21 = *(v8 + v1[10] + 8);

  v22 = *(v8 + v1[11] + 8);

  v23 = *(v8 + v1[12] + 8);

  (*(v34 + 8))(v0 + v16, v36);
  v24 = *(v2 + 8);
  v24(v0 + v17, v35);
  v24(v0 + v18, v35);
  (*(v4 + 8))(v0 + v19, v33);

  return _swift_deallocObject(v0, v19 + v32, v15 | 7);
}

uint64_t sub_100089888(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v23 = v5;
  v6 = *(v4 + 64);
  v7 = *(sub_1001D08A0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1001CFDA0() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = (v13 + v11 + v12) & ~v11;
  v15 = (v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(sub_1001CFD60() - 8) + 80);
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v20 = *(v1 + v15);
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = sub_10005B61C;

  return sub_100067CB4(a1, v17, v18, v19, v1 + v23, v1 + v8, v1 + v12, v1 + v14);
}

uint64_t sub_100089AD4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100089B1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100089B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100089BE4()
{
  result = qword_100229570;
  if (!qword_100229570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229570);
  }

  return result;
}

uint64_t sub_100089C38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012038(a1, a2);
  }

  return a1;
}

uint64_t sub_100089C58()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100089CEC()
{
  result = qword_1002295B8;
  if (!qword_1002295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002295B8);
  }

  return result;
}

uint64_t sub_100089D40(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_10002683C(result, a2);
  }

  return result;
}

uint64_t sub_100089D84(uint64_t a1)
{
  v2 = sub_1001CFA10();
  v3 = [v2 domain];
  v4 = sub_1001D17D0();
  v6 = v5;

  if (v4 == 0xD000000000000017 && 0x80000001001E3D20 == v6)
  {
  }

  else
  {
    v8 = sub_1001D2470();

    v9 = a1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v10 = [v2 code];
  if ((v10 - 1001) < 0x10)
  {
    v11 = v10 + 24;
  }

  else
  {
    v11 = 17;
  }

  v12 = [v2 userInfo];
  v13 = sub_1001D1700();

  if (!*(v13 + 16) || (v14 = sub_100006028(0xD000000000000014, 0x80000001001E3D40), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100089F9C(*(v13 + 56) + 32 * v14, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 23;
    goto LABEL_17;
  }

  v16 = sub_100131544();
LABEL_17:
  sub_100011AC0(&qword_100227B70, &qword_1001D3718);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001D39F0;
  *(v17 + 32) = a1;
  sub_100089BE4();
  v9 = swift_allocError();
  *v18 = v11;
  *(v18 + 1) = v16;
  *(v18 + 8) = v17;
LABEL_18:
  swift_errorRetain();

  return v9;
}

uint64_t sub_100089F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10008A000()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10008A150(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001D20F0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1001D20D0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10005B61C;

  return sub_10008F6F4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10008A2A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_100159A10(v2, v3, v4);
}

uint64_t sub_10008A348()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A380(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005B61C;

  return sub_10008F128(a1, v5);
}

uint64_t sub_10008A438(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_10008864C(a1, (v1 + 16));
}

uint64_t sub_10008A4E8()
{
  v1 = sub_1001D0E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10008A5F0(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1001D0E60() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1000130E0;

  return sub_100086FFC(a1, v8, v9, v1 + v5, v11, v12, v13, v14);
}

uint64_t sub_10008A758(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_100087DAC(a1);
}

uint64_t sub_10008A830(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10008A894()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001D1880();
  if (v0[3] >> 60 == 15)
  {
    sub_1001D25A0(0);
  }

  else
  {
    v3 = v0[2];
    sub_1001D25A0(1u);
    sub_1001CFC10();
  }

  v4 = v0[4];
  v5 = v0[5];
  sub_1001D1880();
  v6 = v0[6];
  v7 = v0[7];
  sub_1001D1880();
  if (!v0[9])
  {
    sub_1001D25A0(0);
    if (v0[11])
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1001D25A0(0);
    return;
  }

  v8 = v0[8];
  sub_1001D25A0(1u);
  sub_1001D1880();
  if (!v0[11])
  {
    goto LABEL_10;
  }

LABEL_6:
  v9 = v0[10];
  sub_1001D25A0(1u);

  sub_1001D1880();
}

Swift::Int sub_10008A994()
{
  sub_1001D2580();
  sub_10008A894();
  return sub_1001D25C0();
}

Swift::Int sub_10008A9D8()
{
  sub_1001D2580();
  sub_10008A894();
  return sub_1001D25C0();
}

BOOL sub_10008AA14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10008AA70(v9, v10);
}

BOOL sub_10008AA70(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v15 = *(a2 + 16);
  v16 = v5;
  v6 = v5;
  v7 = v15;
  if (*(&v5 + 1) >> 60 == 15)
  {
    if (*(&v15 + 1) >> 60 == 15)
    {
      sub_10008B298(&v16, v14);
      sub_10008B298(&v15, v14);
      sub_10002683C(v6, *(&v6 + 1));
      goto LABEL_13;
    }

LABEL_10:
    sub_10008B298(&v16, v14);
    sub_10008B298(&v15, v14);
    sub_10002683C(v6, *(&v6 + 1));
    sub_10002683C(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v15 + 1) >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_10008B298(&v16, v14);
  sub_10008B298(&v15, v14);
  v9 = sub_1000A1A5C(v6, *(&v6 + 1), v7, *(&v7 + 1));
  sub_10002683C(v7, *(&v7 + 1));
  sub_10002683C(v6, *(&v6 + 1));
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1001D2470() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 88);
  v13 = *(a2 + 88);
  if (v12)
  {
    return v13 && (*(a1 + 80) == *(a2 + 80) && v12 == v13 || (sub_1001D2470() & 1) != 0);
  }

  return !v13;
}

uint64_t sub_10008AC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v5 = sub_1001D1470();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D1460();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v11, v13);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v16 = *a1;
  v15 = a1[1];
  sub_10008B0A8(&qword_100229378, &type metadata accessor for SHA256);
  sub_1001D1440();
  sub_100012038(v16, v15);
  sub_100158DE0(v16, v15);
  sub_100011E48(v16, v15);
  v17 = v52;
  sub_1001D1430();
  (*(v6 + 8))(v10, v5);
  v61 = v11;
  v62 = sub_10008B0A8(&qword_100229380, &type metadata accessor for SHA256Digest);
  v18 = sub_10003B47C(v60);
  v19 = v53;
  v20 = v17;
  (*(v53 + 16))(v18, v17, v11);
  sub_100024DC8(v60, v61);
  sub_1001CF8E0();
  v21 = v58;
  v22 = v59;
  sub_100011CF0(v60);
  v23 = sub_1001CFBF0(0);
  v55 = v24;
  v56 = v23;
  sub_100011E48(v21, v22);
  v25 = sub_1001D08A0();
  (*(*(v25 - 8) + 8))(v57, v25);
  (*(v19 + 8))(v20, v11);
  v26 = v54;
  v27 = *v54;
  v28 = v54[1];
  v29 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v30 = (v26 + v29[9]);
  v31 = v30[1];
  if (v31)
  {
    v57 = *v30;
    v53 = v31;
  }

  else
  {
    v57 = 0;
    v53 = 0xE000000000000000;
  }

  v32 = (v26 + v29[10]);
  v33 = v32[1];
  if (v33)
  {
    v34 = *v32;
    v51 = v33;
    v52 = v34;
  }

  else
  {
    v51 = 0xE000000000000000;
    v52 = 0;
  }

  v35 = (v26 + v29[11]);
  v36 = v35[1];
  if (v36)
  {
    v37 = *v35;
    v49 = v36;
    v50 = v37;
  }

  else
  {
    v49 = 0xE000000000000000;
    v50 = 0;
  }

  v38 = (v26 + v29[12]);
  if (v38[1])
  {
    v39 = *v38;
    v40 = v38[1];
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
  }

  sub_100012038(v27, v28);

  result = sub_10008B0F0(v26);
  v42 = v55;
  *a3 = v56;
  a3[1] = v42;
  a3[2] = v27;
  a3[3] = v28;
  v44 = v52;
  v43 = v53;
  a3[4] = v57;
  a3[5] = v43;
  v46 = v50;
  v45 = v51;
  a3[6] = v44;
  a3[7] = v45;
  v47 = v49;
  a3[8] = v46;
  a3[9] = v47;
  a3[10] = v39;
  a3[11] = v40;
  return result;
}

uint64_t sub_10008B0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008B0F0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B14C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10008B174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10008B190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10008B1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008B244()
{
  result = qword_100229640;
  if (!qword_100229640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229640);
  }

  return result;
}

uint64_t sub_10008B298(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(qword_100229648, &unk_1001D6B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B310(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    result = sub_1001D02E0();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        result = sub_1001D0020();
        if (v7 <= 0x3F)
        {
          result = sub_1001D0000();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10008B3E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1001D0E60();
  v6 = *(v5 - 8);
  v43 = v5;
  v7 = *(v6 + 84);
  v41 = sub_1001D02E0();
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  v42 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v39 = *(a3 + 16);
  v10 = *(v39 - 8);
  v40 = *(v10 + 84);
  if (v40 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v37 = sub_1001D0020();
  v12 = *(v37 - 8);
  v38 = *(v12 + 84);
  if (v38 > v11)
  {
    v11 = *(v12 + 84);
  }

  v13 = *(sub_1001D0000() - 8);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v12 + 80);
  v19 = *(v13 + 80);
  if (*(v13 + 84) <= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 64) + v14;
  v22 = *(v12 + 64) + v19;
  v23 = a1;
  if (a2 > v20)
  {
    v24 = ((v22 + ((v17 + v18 + ((v15 + (v21 & ~v14) + v16) & ~v16)) & ~v18)) & ~v19) + *(v13 + 64);
    v25 = 8 * v24;
    if (v24 <= 3)
    {
      v27 = ((a2 - v20 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v27))
      {
        v26 = *(a1 + v24);
        if (!v26)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v27 > 0xFF)
      {
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v27 < 2)
      {
LABEL_34:
        if (v20)
        {
          goto LABEL_35;
        }

        return 0;
      }
    }

    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_34;
    }

LABEL_21:
    v28 = (v26 - 1) << v25;
    if (v24 > 3)
    {
      v28 = 0;
    }

    if (v24)
    {
      if (v24 <= 3)
      {
        v29 = v24;
      }

      else
      {
        v29 = 4;
      }

      if (v29 > 2)
      {
        if (v29 == 3)
        {
          v30 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v30 = *a1;
        }
      }

      else if (v29 == 1)
      {
        v30 = *a1;
      }

      else
      {
        v30 = *a1;
      }
    }

    else
    {
      v30 = 0;
    }

    return v20 + (v30 | v28) + 1;
  }

LABEL_35:
  if (v7 == v20)
  {
    v31 = v43;
    v32 = *(v6 + 48);
    v33 = v7;
    goto LABEL_37;
  }

  v23 = ((a1 + v21) & ~v14);
  if (v42 == v20)
  {
    v32 = *(v8 + 48);
    v33 = v42;
    v31 = v41;

    return v32(v23, v33, v31);
  }

  v23 = ((v23 + v15 + v16) & ~v16);
  if (v40 == v20)
  {
    v32 = *(v10 + 48);
    v33 = v40;
    v31 = v39;
    goto LABEL_37;
  }

  v23 = ((v23 + v17 + v18) & ~v18);
  if (v38 == v20)
  {
    v32 = *(v12 + 48);
    v33 = v38;
    v31 = v37;
LABEL_37:

    return v32(v23, v33, v31);
  }

  v35 = *(v13 + 48);
  v36 = (v23 + v22) & ~v19;

  return v35(v36);
}

void sub_10008B87C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1001D0E60() - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_1001D02E0() - 8);
  v44 = v7;
  v8 = *(v7 + 84);
  v39 = v8;
  if (v8 <= v6)
  {
    v8 = v6;
  }

  v9 = *(*(a4 + 16) - 8);
  v43 = v9;
  v38 = *(v9 + 84);
  if (v38 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_1001D0020() - 8);
  v37 = *(v11 + 84);
  if (v37 > v10)
  {
    v10 = *(v11 + 84);
  }

  v12 = *(sub_1001D0000() - 8);
  v13 = v12;
  v14 = *(v5 + 64);
  if (*(v12 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v7 + 80);
  v17 = v14 + v16;
  v18 = *(v7 + 64);
  v19 = *(v9 + 80);
  v20 = *(v9 + 64);
  v21 = *(v11 + 80);
  v22 = (v20 + v21 + ((v18 + ((v14 + v16) & ~v16) + v19) & ~v19)) & ~v21;
  v23 = *(v12 + 80);
  v24 = *(v11 + 64) + v23;
  v25 = ((v24 + v22) & ~v23) + *(v12 + 64);
  if (a3 <= v15)
  {
    v27 = 0;
    v26 = a1;
  }

  else
  {
    v26 = a1;
    if (v25 <= 3)
    {
      v30 = ((a3 - v15 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v15 < a2)
  {
    v28 = ~v15 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v32 = v28 & ~(-1 << (8 * v25));
        bzero(v26, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *v26 = v32;
            if (v27 > 1)
            {
LABEL_52:
              if (v27 == 2)
              {
                *&v26[v25] = v29;
              }

              else
              {
                *&v26[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *v26 = v28;
            if (v27 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v26 = v32;
        v26[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v26, v25);
      *v26 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v27)
    {
      v26[v25] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v26[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&v26[v25] = 0;
  }

  else if (v27)
  {
    v26[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v6 == v15)
  {
    v33 = *(v5 + 56);
    v34 = v26;
LABEL_58:

    v33(v34);
    return;
  }

  v34 = (&v26[v17] & ~v16);
  if (v39 == v15)
  {
    v33 = *(v44 + 56);
    goto LABEL_58;
  }

  v34 = (&v34[v18 + v19] & ~v19);
  if (v38 == v15)
  {
    v33 = *(v43 + 56);
    goto LABEL_58;
  }

  v34 = (&v34[v20 + v21] & ~v21);
  if (v37 == v15)
  {
    v33 = *(v11 + 56);
    goto LABEL_58;
  }

  v35 = *(v13 + 56);
  v36 = &v34[v24] & ~v23;

  v35(v36);
}

uint64_t sub_10008BD78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 968) = v4;
  *(v5 + 960) = a4;
  *(v5 + 1360) = a3;
  *(v5 + 952) = a2;
  *(v5 + 904) = a1;
  v6 = *(a4 - 8);
  *(v5 + 976) = v6;
  v7 = *(v6 + 64) + 15;
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = swift_task_alloc();
  v8 = sub_1001D0180();
  *(v5 + 1000) = v8;
  v9 = *(v8 - 8);
  *(v5 + 1008) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 1016) = swift_task_alloc();
  v11 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  *(v5 + 1024) = swift_task_alloc();
  v12 = sub_1001D20D0();
  *(v5 + 1032) = v12;
  v13 = *(v12 - 8);
  *(v5 + 1040) = v13;
  *(v5 + 1048) = *(v13 + 64);
  *(v5 + 1056) = swift_task_alloc();
  *(v5 + 1064) = swift_task_alloc();
  v14 = sub_1001D20F0();
  *(v5 + 1072) = v14;
  v15 = *(v14 - 8);
  *(v5 + 1080) = v15;
  *(v5 + 1088) = *(v15 + 64);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  v16 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  *(v5 + 1112) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v5 + 1120) = swift_task_alloc();
  v18 = sub_1001D00F0();
  *(v5 + 1128) = v18;
  v19 = *(v18 - 8);
  *(v5 + 1136) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 1144) = swift_task_alloc();
  *(v5 + 1152) = swift_task_alloc();
  v21 = sub_1001CFD60();
  *(v5 + 1160) = v21;
  v22 = *(v21 - 8);
  *(v5 + 1168) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 1176) = swift_task_alloc();
  *(v5 + 1184) = swift_task_alloc();
  *(v5 + 1192) = swift_task_alloc();
  v24 = sub_1001D0040();
  *(v5 + 1200) = v24;
  v25 = *(v24 - 8);
  *(v5 + 1208) = v25;
  v26 = *(v25 + 64) + 15;
  *(v5 + 1216) = swift_task_alloc();
  *(v5 + 1224) = swift_task_alloc();
  *(v5 + 1232) = swift_task_alloc();
  v27 = sub_1001CFFB0();
  *(v5 + 1240) = v27;
  v28 = *(v27 - 8);
  *(v5 + 1248) = v28;
  v29 = *(v28 + 64) + 15;
  *(v5 + 1256) = swift_task_alloc();
  *(v5 + 1264) = swift_task_alloc();

  return _swift_task_switch(sub_10008C1B0, 0, 0);
}

uint64_t sub_10008C1B0()
{
  v1 = v0[119];
  v2 = *(v1 + 16);
  v0[159] = v2;
  v3 = *(v1 + 24);
  v0[160] = v3;
  if (v3 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v4 = 5913;
    *(v4 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    v6 = v0[158];
    v7 = v0[157];
    v8 = v0[154];
    v9 = v0[153];
    v10 = v0[152];
    v11 = v0[149];
    v12 = v0[148];
    v13 = v0[147];
    v14 = v0[144];
    v15 = v0[143];
    v24 = v0[140];
    v25 = v0[138];
    v26 = v0[137];
    v27 = v0[133];
    v28 = v0[132];
    v29 = v0[128];
    v30 = v0[127];
    v31 = v0[124];
    v32 = v0[123];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v5 = v0[157];
    sub_100089C38(v2, v3);
    sub_100012038(v2, v3);
    sub_1001CFFA0();
    v18 = v0[138];
    v19 = v0[121];
    v20 = v0[120];
    (*(v0[156] + 32))(v0[158], v0[157], v0[155]);
    v21 = swift_task_alloc();
    v0[161] = v21;
    v22 = *(v20 + 16);
    v0[162] = v22;
    v21[2] = v22;
    v23 = *(v20 + 24);
    v0[163] = v23;
    v21[3] = v23;
    v21[4] = v19;
    sub_1001D20E0();

    return _swift_task_switch(sub_10008C4A8, 0, 0);
  }
}

uint64_t sub_10008C4A8()
{
  v1 = v0[138];
  v24 = v0[137];
  v25 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v26 = v0[131];
  v27 = v0[161];
  v6 = v0[130];
  v7 = v0[129];
  v8 = v0[128];
  sub_100090448(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  v0[111] = 0x158E460913D00000;
  v0[112] = 1;
  sub_100090448(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  v0[164] = v9;
  v0[165] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v24, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v25 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v24, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6BC0, v13);
  v0[166] = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_10008FE58;
  v15[4] = v27;
  v16 = swift_allocObject();
  v0[167] = v16;
  *(v16 + 16) = &unk_1001DEF90;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();
  v17 = swift_task_alloc();
  v0[168] = v17;
  *v17 = v0;
  v17[1] = sub_10008C84C;
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[158];
  v21 = v0[140];
  v22 = v0[121];

  return sub_10008DC2C(v21, v22, v20, v19, v18);
}

uint64_t sub_10008C84C()
{
  v2 = *(*v1 + 1344);
  v5 = *v1;
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v3 = sub_10008D720;
  }

  else
  {
    v3 = sub_10008C960;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008C960()
{
  v1 = *(v0 + 1328);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10008CA14()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[161];
  v6 = v0[138];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[129];

  v4(v9, v10);
  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_10008CAF4, 0, 0);
}

uint64_t sub_10008CAF4()
{
  v199 = v0;
  v189 = *(v0 + 1304);
  v195 = *(v0 + 1296);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1136);
  v167 = *(v0 + 1128);
  v172 = *(v0 + 1152);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1008);
  v177 = *(v0 + 1000);
  v182 = *(v0 + 968);
  v163 = *(v0 + 960);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  (*(*(v0 + 1208) + 32))(*(v0 + 1232), v5, *(v0 + 1200));
  (*(v2 + 32))(v1, v5 + v9, v3);
  (*(v4 + 32))(v172, v5 + v10, v167);
  v11 = *(v163 + 40);
  (*(v8 + 104))(v7, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v177);
  LOBYTE(v11) = (*(v189 + 8))(v7, v195);
  (*(v8 + 8))(v7, v177);
  if ((v11 & 1) == 0 || (v12 = *(v0 + 1352), v13 = *(v0 + 968), v14 = *(v0 + 960), sub_10008E77C(*(v0 + 1152), *(v0 + 1360) & 1), !v12))
  {
    v35 = *(v0 + 1152);
    v36 = sub_1001D00C0();
    if (v37)
    {
      v38 = *(v0 + 952);
      v39 = *(v38 + 72);
      if (!v39 || v36 == *(v38 + 64) && v37 == v39)
      {
      }

      else
      {
        v110 = sub_1001D2470();

        if ((v110 & 1) == 0)
        {
          v111 = *(v0 + 968);
          v112 = *(v0 + 952);
          sub_100089C90(v112, v0 + 792);
          v113 = sub_1001D0E50();
          v114 = sub_1001D1DE0();
          sub_10005AF88(v112);
          if (os_log_type_enabled(v113, v114))
          {
            v115 = *(v0 + 952);
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v198[0] = v117;
            *v116 = 136315138;
            *(v116 + 4) = sub_1000954E0(*v115, *(v115 + 8), v198);
            _os_log_impl(&_mh_execute_header, v113, v114, "RoutingHint mismatch detected for attestation=%s", v116, 0xCu);
            sub_100011CF0(v117);
          }

          v118 = *(v0 + 1280);
          v119 = *(v0 + 1272);
          v15 = *(v0 + 1248);
          v183 = *(v0 + 1240);
          v190 = *(v0 + 1264);
          v120 = *(v0 + 1208);
          v176 = *(v0 + 1200);
          v181 = *(v0 + 1232);
          v121 = *(v0 + 1168);
          v166 = *(v0 + 1160);
          v171 = *(v0 + 1192);
          v122 = *(v0 + 1152);
          v123 = *(v0 + 1136);
          v124 = *(v0 + 1128);
          sub_100089BE4();
          swift_allocError();
          *v125 = 5915;
          *(v125 + 8) = &_swiftEmptyArrayStorage;
          swift_willThrow();
          sub_10002683C(v119, v118);
          (*(v123 + 8))(v122, v124);
          (*(v121 + 8))(v171, v166);
          (*(v120 + 8))(v181, v176);
          goto LABEL_4;
        }
      }
    }

    v40 = *(v0 + 1224);
    v41 = *(v0 + 1208);
    v42 = *(v0 + 1200);
    v192 = *(v0 + 1184);
    v196 = *(v0 + 1192);
    v43 = *(v0 + 1168);
    v180 = *(v0 + 1232);
    v185 = *(v0 + 1160);
    v44 = *(v0 + 1152);
    v45 = *(v0 + 1144);
    v46 = *(v0 + 1136);
    v47 = *(v0 + 1128);
    (*(*(v0 + 976) + 16))(*(v0 + 984), *(v0 + 968), *(v0 + 960));
    v169 = *(v41 + 16);
    v169(v40, v180, v42);
    (*(v46 + 16))(v45, v44, v47);
    v48 = v192;
    v193 = *(v43 + 16);
    v193(v48, v196, v185);
    v49 = sub_1001D0E50();
    v50 = sub_1001D1E00();
    v174 = v49;
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1224);
    if (v51)
    {
      v186 = *(v0 + 1216);
      v53 = *(v0 + 1208);
      v54 = *(v0 + 1200);
      v150 = *(v0 + 1184);
      v146 = *(v0 + 1176);
      v165 = *(v0 + 1168);
      v148 = *(v0 + 1160);
      v144 = *(v0 + 1144);
      v159 = *(v0 + 1136);
      v161 = *(v0 + 1128);
      v55 = *(v0 + 984);
      v56 = *(v0 + 976);
      v155 = v50;
      v57 = *(v0 + 960);
      v58 = swift_slowAlloc();
      v198[0] = swift_slowAlloc();
      *v58 = 136446978;
      v59 = v55 + *(v57 + 36);
      v60 = sub_1001D02B0();
      v62 = v61;
      (*(v56 + 8))(v55, v57);
      v63 = sub_1000954E0(v60, v62, v198);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      v169(v186, v52, v54);
      v64 = sub_1001D1820();
      v66 = v65;
      v187 = *(v53 + 8);
      v187(v52, v54);
      v67 = sub_1000954E0(v64, v66, v198);

      *(v58 + 14) = v67;
      *(v58 + 22) = 2080;
      sub_1001D00D0();
      sub_100090448(&qword_100227A40, &type metadata accessor for Date);
      v68 = sub_1001D23A0();
      v70 = v69;
      v71 = *(v165 + 8);
      v71(v146, v148);
      v72 = v161;
      v162 = *(v159 + 8);
      v162(v144, v72);
      v73 = sub_1000954E0(v68, v70, v198);

      *(v58 + 24) = v73;
      *(v58 + 32) = 2080;
      v74 = sub_1001D23A0();
      v76 = v75;
      v170 = v71;
      v71(v150, v148);
      v77 = sub_1000954E0(v74, v76, v198);

      *(v58 + 34) = v77;
      _os_log_impl(&_mh_execute_header, v174, v155, "verified attestation bundle environment=%{public}s publicKey=%s keyExpiration=%s attestationExpiry=%s", v58, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v78 = *(v0 + 1208);
      v188 = *(v0 + 1200);
      v79 = *(v0 + 1184);
      v80 = *(v0 + 1168);
      v81 = *(v0 + 1160);
      v82 = *(v0 + 1144);
      v83 = *(v0 + 1136);
      v84 = *(v0 + 1128);
      v156 = *(v0 + 984);
      v85 = *(v0 + 976);
      v152 = *(v0 + 960);

      v170 = *(v80 + 8);
      v170(v79, v81);
      v162 = *(v83 + 8);
      v162(v82, v84);
      v86 = v188;
      v187 = *(v78 + 8);
      v187(v52, v86);
      (*(v85 + 8))(v156, v152);
    }

    v87 = *(v0 + 1304);
    v88 = *(v0 + 1296);
    v129 = *(v0 + 1272);
    v130 = *(v0 + 1280);
    v135 = *(v0 + 1264);
    v136 = *(v0 + 1256);
    v133 = *(v0 + 1248);
    v134 = *(v0 + 1240);
    v89 = *(v0 + 1232);
    v137 = *(v0 + 1224);
    v138 = *(v0 + 1216);
    v132 = *(v0 + 1200);
    v90 = *(v0 + 1192);
    v139 = *(v0 + 1184);
    v140 = *(v0 + 1176);
    v91 = *(v0 + 1160);
    v92 = *(v0 + 1152);
    v126 = *(v0 + 1128);
    v141 = *(v0 + 1144);
    v142 = *(v0 + 1120);
    v143 = *(v0 + 1104);
    v145 = *(v0 + 1096);
    v147 = *(v0 + 1064);
    v149 = *(v0 + 1056);
    v151 = *(v0 + 1024);
    v153 = *(v0 + 1016);
    v157 = *(v0 + 992);
    v175 = *(v0 + 984);
    v131 = *(v0 + 1360);
    v93 = *(v0 + 952);
    v94 = *(v0 + 904);
    v95 = sub_100090174();
    v127 = v96;
    v128 = v95;
    v97 = type metadata accessor for ValidatedAttestation();
    v193(v94 + v97[7], v90, v91);
    v98 = sub_1001D00E0();
    v194 = v99;
    v197 = v98;
    v100 = sub_1001D00C0();
    v102 = v101;
    sub_10002683C(v129, v130);
    v162(v92, v126);
    v170(v90, v91);
    v187(v89, v132);
    v103 = v93[1];
    *v94 = *v93;
    *(v94 + 16) = v103;
    v104 = v93[2];
    v105 = v93[3];
    v106 = v93[5];
    *(v94 + 64) = v93[4];
    *(v94 + 80) = v106;
    *(v94 + 32) = v104;
    *(v94 + 48) = v105;
    *(v94 + 96) = v131 & 1;
    *(v94 + 104) = v128;
    *(v94 + 112) = v127;
    v107 = (v94 + v97[8]);
    *v107 = v197;
    v107[1] = v194;
    v108 = (v94 + v97[9]);
    *v108 = v100;
    v108[1] = v102;
    sub_100089C90(v93, v0 + 696);
    (*(v133 + 8))(v135, v134);

    v34 = *(v0 + 8);
    goto LABEL_14;
  }

  v190 = *(v0 + 1264);
  v15 = *(v0 + 1248);
  v178 = *(v0 + 1232);
  v183 = *(v0 + 1240);
  v16 = *(v0 + 1208);
  v17 = *(v0 + 1200);
  v18 = *(v0 + 1192);
  v19 = *(v0 + 1168);
  v20 = *(v0 + 1160);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 1136);
  v23 = *(v0 + 1128);
  sub_10002683C(*(v0 + 1272), *(v0 + 1280));
  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v178, v17);
LABEL_4:
  (*(v15 + 8))(v190, v183);
  v24 = *(v0 + 1264);
  v25 = *(v0 + 1256);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1224);
  v28 = *(v0 + 1216);
  v29 = *(v0 + 1192);
  v30 = *(v0 + 1184);
  v31 = *(v0 + 1176);
  v32 = *(v0 + 1152);
  v33 = *(v0 + 1144);
  v154 = *(v0 + 1120);
  v158 = *(v0 + 1104);
  v160 = *(v0 + 1096);
  v164 = *(v0 + 1064);
  v168 = *(v0 + 1056);
  v173 = *(v0 + 1024);
  v179 = *(v0 + 1016);
  v184 = *(v0 + 992);
  v191 = *(v0 + 984);

  v34 = *(v0 + 8);
LABEL_14:

  return v34();
}

uint64_t sub_10008D720()
{
  v1 = *(v0 + 1328);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10008D7D4()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[138];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[129];

  v4(v8, v9);
  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10008D8A0, 0, 0);
}

uint64_t sub_10008D8A0()
{
  v54 = v0;
  v1 = v0[169];
  v2 = v0[161];
  v3 = v0[124];
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];

  (*(v4 + 16))(v3, v5, v6);
  swift_errorRetain();
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DE0();

  if (os_log_type_enabled(v7, v8))
  {
    v49 = v0[169];
    v9 = v0[124];
    v10 = v0[122];
    v11 = v0[120];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v12 = 136446466;
    v14 = v9 + *(v11 + 36);
    v15 = sub_1001D02B0();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000954E0(v15, v17, &v53);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "unable to verify attestation, environment=%{public}s error=%@", v12, 0x16u);
    sub_100011F00(v13, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v51);
  }

  else
  {
    v20 = v0[124];
    v21 = v0[122];
    v22 = v0[120];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[169];
  v24 = v0[160];
  v25 = v0[159];
  v26 = v0[158];
  v27 = v0[156];
  v28 = v0[155];
  swift_willThrow();
  sub_10002683C(v25, v24);
  (*(v27 + 8))(v26, v28);
  v52 = v0[169];
  v29 = v0[158];
  v30 = v0[157];
  v31 = v0[154];
  v32 = v0[153];
  v33 = v0[152];
  v34 = v0[149];
  v35 = v0[148];
  v36 = v0[147];
  v37 = v0[144];
  v38 = v0[143];
  v41 = v0[140];
  v42 = v0[138];
  v43 = v0[137];
  v44 = v0[133];
  v45 = v0[132];
  v46 = v0[128];
  v47 = v0[127];
  v48 = v0[124];
  v50 = v0[123];

  v39 = v0[1];

  return v39();
}

uint64_t sub_10008DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1001D00F0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = sub_1001CFD60();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v12 = sub_1001D0040();
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v15 = sub_1001D0180();
  v5[19] = v15;
  v16 = *(v15 - 8);
  v5[20] = v16;
  v17 = *(v16 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10008DE2C, 0, 0);
}

uint64_t sub_10008DE2C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for AttestationVerifier();
  v8 = v7[10];
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v3);
  LOBYTE(v4) = (*(v4 + 8))(v1, v5, v4);
  (*(v2 + 8))(v1, v3);
  v9 = sub_1001D0E50();
  v10 = sub_1001D1DD0();
  v11 = os_log_type_enabled(v9, v10);
  if (v4)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "validating attestation using mux validator", v12, 2u);
    }

    v13 = v0[3];

    v14 = v7[12];
    v15 = async function pointer to Validator.validate(bundle:)[1];
    v16 = swift_task_alloc();
    v0[22] = v16;
    v17 = sub_1001D0000();
    v18 = sub_100090448(&qword_1002295B0, &type metadata accessor for MuxValidator);
    *v16 = v0;
    v16[1] = sub_10008E134;
    v19 = v0[18];
    v20 = v0[14];
    v21 = v0[10];
  }

  else
  {
    if (v11)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "validating attestation using direct node validator", v22, 2u);
    }

    v23 = v0[3];

    v24 = v7[11];
    v25 = async function pointer to Validator.validate(bundle:)[1];
    v26 = swift_task_alloc();
    v0[24] = v26;
    v17 = sub_1001D0020();
    v18 = sub_100090448(&qword_1002295A8, &type metadata accessor for NodeValidator);
    *v26 = v0;
    v26[1] = sub_10008E3A0;
    v19 = v0[17];
    v20 = v0[13];
    v21 = v0[9];
  }

  v27 = v0[4];

  return Validator.validate(bundle:)(v19, v20, v21, v27, v17, v18);
}

uint64_t sub_10008E134()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_10008E60C;
  }

  else
  {
    v3 = sub_10008E248;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008E248()
{
  v1 = v0[18];
  v16 = v0[21];
  v17 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v15 = v0[10];
  v18 = v0[13];
  v19 = v0[9];
  v6 = v0[8];
  v13 = v0[14];
  v14 = v0[7];
  v7 = v0[2];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10008E3A0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_10008E6C4;
  }

  else
  {
    v3 = sub_10008E4B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008E4B4()
{
  v1 = v0[17];
  v16 = v0[21];
  v17 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v15 = v0[9];
  v18 = v0[14];
  v19 = v0[10];
  v6 = v0[8];
  v13 = v0[13];
  v14 = v0[7];
  v7 = v0[2];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10008E60C()
{
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10008E6C4()
{
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10008E77C(uint64_t a1, int a2)
{
  result = sub_10008E990(a1);
  if (!v2 && ((result ^ a2) & 1) != 0)
  {
    v5 = result;
    v6 = sub_1001D0E50();
    v7 = sub_1001D1DE0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v8 = 136446466;
      if (a2)
      {
        v9 = 0x79786F7270;
      }

      else
      {
        v9 = 0x746365726964;
      }

      if (a2)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      v11 = sub_1000954E0(v9, v10, &v16);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      if (v5)
      {
        v12 = 0x79786F7270;
      }

      else
      {
        v12 = 0x746365726964;
      }

      if (v5)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      v14 = sub_1000954E0(v12, v13, &v16);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "node kind mismatch expectedNodeKind=%{public}s, validatedNodeKind=%{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    sub_100089BE4();
    swift_allocError();
    *v15 = 5920;
    *(v15 + 8) = &_swiftEmptyArrayStorage;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10008E954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001CFFF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10008E990(uint64_t a1)
{
  v2 = sub_1001D00F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229590, &unk_1001D6BE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v50 - v11;
  v13 = sub_1001D00A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v53 = &v50 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v50 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v50 - v27;
  (*(v3 + 16))(v7, a1, v2);
  sub_1001D0090();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v28, v12, v13);
    v33 = *(v14 + 16);
    v33(v25, v28, v13);
    v34 = (*(v14 + 88))(v25, v13);
    v35 = v34;
    v36 = enum case for PCC.AttestationType.computeNode(_:);
    if (v34 == enum case for PCC.AttestationType.computeNode(_:))
    {
      (*(v14 + 8))(v28, v13);
      (*(v14 + 96))(v25, v13);
      v37 = sub_1001D0080();
    }

    else
    {
      if (v34 != enum case for PCC.AttestationType.proxyNode(_:))
      {
        v39 = v53;
        v33(v53, v28, v13);
        v40 = sub_1001D0E50();
        v29 = sub_1001D1DE0();
        if (os_log_type_enabled(v40, v29))
        {
          v41 = swift_slowAlloc();
          v50 = v41;
          v54 = swift_slowAlloc();
          v56 = v54;
          *v41 = 136315138;
          v51 = v29;
          v42 = v53;
          v33(v52, v53, v13);
          v43 = sub_1001D1820();
          v55 = v28;
          v44 = v25;
          v46 = v45;
          v47 = *(v14 + 8);
          v47(v42, v13);
          v48 = sub_1000954E0(v43, v46, &v56);
          v25 = v44;
          v28 = v55;

          v29 = v50;
          *(v50 + 1) = v48;
          _os_log_impl(&_mh_execute_header, v40, v51, "attestation kind can't be determined from attestationType=%s", v29, 0xCu);
          sub_100011CF0(v54);
        }

        else
        {

          v47 = *(v14 + 8);
          v47(v39, v13);
        }

        sub_100089BE4();
        swift_allocError();
        *v49 = 5919;
        *(v49 + 8) = &_swiftEmptyArrayStorage;
        swift_willThrow();
        v47(v28, v13);
        v47(v25, v13);
        return v29;
      }

      (*(v14 + 8))(v28, v13);
      (*(v14 + 96))(v25, v13);
      v37 = sub_1001D0070();
    }

    v29 = v35 != v36;
    (*(*(v37 - 8) + 8))(v25, v37);
    return v29;
  }

  sub_100011F00(v12, &qword_100229590, &unk_1001D6BE0);
  v29 = sub_1001D0E50();
  v30 = sub_1001D1DE0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "attestation kind can't be determined from attestationType=nil", v31, 2u);
  }

  sub_100089BE4();
  swift_allocError();
  *v32 = 5919;
  *(v32 + 8) = &_swiftEmptyArrayStorage;
  swift_willThrow();
  return v29;
}

uint64_t sub_10008EFB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000130E0;

  return sub_10008BD78(a1, a2, a3 & 1, a4);
}

uint64_t sub_10008F074(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *v5 = v2;
  v5[1] = sub_100014D90;

  return (sub_10008FBC4)(a1, v6, v7);
}

uint64_t sub_10008F128(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000593F8;

  return v6();
}

uint64_t sub_10008F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v25 - v11;
  sub_1000903D8(a3, v25 - v11);
  v13 = sub_1001D1BA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100011F00(v12, &qword_100229350, &unk_1001D6BA0);
  }

  else
  {
    sub_1001D1B90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1001D1A70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1001D1840() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011F00(a3, &qword_100229350, &unk_1001D6BA0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10008F4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v5 + 32) = 1;
  v7 = sub_1001D20F0();
  v8 = sub_100090448(&qword_100229578, &type metadata accessor for ContinuousClock);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v5;
  v10[1] = sub_10008F5C0;

  return dispatch thunk of Clock.sleep(until:tolerance:)(a5, v5 + 16, v7, v8);
}

uint64_t sub_10008F5C0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100090490, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10008F6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v5 + 32) = 1;
  v7 = sub_1001D20F0();
  v8 = sub_100090448(&qword_100229578, &type metadata accessor for ContinuousClock);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v5;
  v10[1] = sub_10008F808;

  return dispatch thunk of Clock.sleep(until:tolerance:)(a5, v5 + 16, v7, v8);
}

uint64_t sub_10008F808()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008F93C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10008F954(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1001CFBB0();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10008FA8C(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_10008FA8C(v3, v4);
  }

  return sub_1001CFBB0();
}

uint64_t sub_10008FA8C(uint64_t a1, uint64_t a2)
{
  result = sub_1001CF870();
  if (!result || (result = sub_1001CF8A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1001CF890();
      return sub_1001CFBB0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008FB20(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_1001CF8C0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1001CF8B0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1001CFB80();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10008FBC4(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1001CFFB0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10008FC84, 0, 0);
}

uint64_t sub_10008FC84()
{
  v1 = v0[4];
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v3 = 5913;
    *(v3 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = v0[7];
    sub_100012038(v4, *(v1 + 24));
    sub_100012038(v4, v2);
    sub_1001CFFA0();
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001CFF80();
    sub_10002683C(v4, v2);
    (*(v10 + 8))(v9, v11);
    v12 = v0[2];
    v13 = v0[3];

    v14 = v0[1];

    return v14(v12, v13);
  }
}

void sub_10008FE58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_100079634();
}

uint64_t sub_10008FE64()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10008FFB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001D20F0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1001D20D0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000130E0;

  return sub_10008F4AC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100090104()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009013C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090174()
{
  v0 = sub_1001D0030();
  v2 = v0;
  v3 = v1;
  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v1);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(v0) - v0;
  if (__OFSUB__(HIDWORD(v0), v0))
  {
    goto LABEL_15;
  }

  v5 = v5;
LABEL_10:
  if (__OFADD__(v5, 9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v9 = sub_10008FB20(v5 + 9);
  v20 = v9;
  v21 = v10;
  if (v10 >> 62 == 2)
  {
    v11 = *(v9 + 24);
  }

  v18 = sub_100011AC0(&qword_100229598, &qword_1001D6900);
  v19 = sub_100090374();
  LOBYTE(v17[0]) = 0;
  v16 = *sub_100024DC8(v17, v18);
  sub_1001CFB90();
  sub_100011CF0(v17);
  sub_1001CFBB0();
  v18 = &type metadata for Data;
  v19 = &protocol witness table for Data;
  v17[0] = v2;
  v17[1] = v3;
  v12 = sub_100024DC8(v17, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_100012038(v2, v3);
  sub_10008F954(v13, v14);
  sub_100011CF0(v17);
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_1001CFBB0();
  sub_100011E48(v2, v3);
  return v20;
}

unint64_t sub_100090374()
{
  result = qword_1002295A0;
  if (!qword_1002295A0)
  {
    sub_100011DF4(&qword_100229598, &qword_1001D6900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002295A0);
  }

  return result;
}

uint64_t sub_1000903D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100090448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000904A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFD60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100090568(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFD60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ValidatedProxiedAttestation()
{
  result = qword_100229728;
  if (!qword_100229728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090658()
{
  sub_1001CFD60();
  if (v0 <= 0x3F)
  {
    sub_1000906F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000906F4()
{
  if (!qword_100229738)
  {
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, &qword_100229738);
    }
  }
}

__n128 sub_100090744(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100090750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100090798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000907E8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1001D2580();
  sub_1001D1880();
  sub_1001CFC10();
  return sub_1001D25C0();
}

uint64_t sub_100090850()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1001D1880();

  return sub_1001CFC10();
}

Swift::Int sub_1000908A0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1001D2580();
  sub_1001D1880();
  sub_1001CFC10();
  return sub_1001D25C0();
}

uint64_t sub_100090904(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  return sub_1000A1A5C(v2, v3, v4, v5);
}

unint64_t sub_100090994()
{
  result = qword_100229778;
  if (!qword_100229778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229778);
  }

  return result;
}

void sub_1000909E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v1[3];
  sub_1001D1880();
  sub_1001CFC10();
  v6 = v1[4];
  v7 = v1[5];
  sub_1001CFC10();
  v8 = type metadata accessor for ValidatedProxiedAttestation();
  v9 = v8[6];
  sub_1001CFD60();
  sub_100090C14(&qword_100229788, &type metadata accessor for Date);
  sub_1001D1740();
  v10 = (v1 + v8[7]);
  if (v10[1])
  {
    v11 = *v10;
    sub_1001D25A0(1u);
    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }

  v12 = (v1 + v8[8]);
  if (v12[1])
  {
    v13 = *v12;
    sub_1001D25A0(1u);

    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }
}

Swift::Int sub_100090B48()
{
  sub_1001D2580();
  sub_1000909E8();
  return sub_1001D25C0();
}

Swift::Int sub_100090B8C()
{
  sub_1001D2580();
  sub_1000909E8();
  return sub_1001D25C0();
}

uint64_t sub_100090C14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100090C5C(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1000A1A5C(v4, v5, v6, v7) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1000A1A5C(a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ValidatedProxiedAttestation();
  v10 = v9[6];
  if ((sub_1001CFD30() & 1) == 0)
  {
    return 0;
  }

  v11 = v9[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v9[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_1001D2470() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100090D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001CFD60();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4, v6);
  v32 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  swift_getKeyPath();
  sub_100091ABC(&qword_100228A68, _s8SchemaV2O4NodeCMa);
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100091ABC(&qword_1002289D8, _s8SchemaV2O4NodeCMa);
  sub_1001D15B0();

  v33 = v38;
  v34 = v37;
  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v30 = v38;
  v31 = v37;
  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v28 = v38;
  v29 = v37;
  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003C6D0();
  sub_1001D15B0();

  v26 = v38;
  v27 = v37;
  v25 = sub_100045EC0();
  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_10003C7CC();
  sub_1001D15B0();

  v23 = v38;
  v24 = v37;
  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_100091ABC(&qword_100228910, &type metadata accessor for Date);
  v8 = v32;
  sub_1001D15B0();

  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v21 = v38;
  v22 = v37;
  v37 = a1;
  swift_getKeyPath();
  sub_1001CFE90();

  swift_getKeyPath();
  sub_1001D15B0();

  v9 = v37;
  v10 = v38;
  v11 = v33;
  *a2 = v34;
  *(a2 + 8) = v11;
  *(a2 + 16) = xmmword_1001D6800;
  v12 = v30;
  *(a2 + 32) = v31;
  *(a2 + 40) = v12;
  v13 = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v13;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v14;
  *(a2 + 96) = v25 & 1;
  v15 = v23;
  *(a2 + 104) = v24;
  *(a2 + 112) = v15;
  v16 = type metadata accessor for ValidatedAttestation();
  (*(v35 + 32))(a2 + v16[7], v8, v36);
  v17 = (a2 + v16[8]);
  v18 = v21;
  *v17 = v22;
  v17[1] = v18;
  v19 = (a2 + v16[9]);
  *v19 = v9;
  v19[1] = v10;
  return (*(*(v16 - 1) + 56))(a2, 0, 1, v16);
}

Swift::Int sub_100091328()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1);
  return sub_1001D25C0();
}

Swift::Int sub_10009139C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D2590(v1);
  return sub_1001D25C0();
}

uint64_t sub_1000913E0()
{
  if (*v0)
  {
    result = 0x79786F7270;
  }

  else
  {
    result = 0x746365726964;
  }

  *v0;
  return result;
}

uint64_t type metadata accessor for ValidatedAttestation()
{
  result = qword_1002297E8;
  if (!qword_1002297E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000914B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001CFD60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100091574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001CFD60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100091618()
{
  sub_1001CFD60();
  if (v0 <= 0x3F)
  {
    sub_1000906F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for NodeKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NodeKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100091824()
{
  result = qword_100229830;
  if (!qword_100229830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229830);
  }

  return result;
}

void sub_100091878()
{
  v1 = v0;
  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[5];
  v10 = *v0;
  v11 = v0[1];
  sub_10008A894();
  sub_1001D2590(*(v0 + 96));
  v2 = *(v0 + 13);
  v3 = *(v0 + 14);
  sub_1001CFC10();
  v4 = type metadata accessor for ValidatedAttestation();
  v5 = v4[7];
  sub_1001CFD60();
  sub_100091ABC(&qword_100229788, &type metadata accessor for Date);
  sub_1001D1740();
  v6 = (v1 + v4[8]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1001D25A0(1u);
    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }

  v8 = (v1 + v4[9]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1001D25A0(1u);

    sub_1001D1880();
  }

  else
  {
    sub_1001D25A0(0);
  }
}

Swift::Int sub_1000919F0()
{
  sub_1001D2580();
  sub_100091878();
  return sub_1001D25C0();
}

Swift::Int sub_100091A34()
{
  sub_1001D2580();
  sub_100091878();
  return sub_1001D25C0();
}

uint64_t sub_100091ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100091B04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v4;
  v5 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v5;
  v6 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v6;
  v7 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v7;
  v8 = *(a2 + 80);
  v24[4] = *(a2 + 64);
  v24[5] = v8;
  v9 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v9;
  if (!sub_10008AA70(v23, v24))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  if ((sub_1000A1A5C(*(a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112)) & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for ValidatedAttestation();
  v11 = v10[7];
  if ((sub_1001CFD30() & 1) == 0)
  {
    return 0;
  }

  v12 = v10[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v10[9];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_1001D2470() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100091C50()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242D78);
  v6 = sub_10003A37C(v5, qword_100242D78);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100091D80()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242D90);
  v6 = sub_10003A37C(v5, qword_100242D90);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100091EDC()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242DC0);
  v6 = sub_10003A37C(v5, qword_100242DC0);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092088(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1001D1380();
  sub_10003B610(v8, a2);
  v9 = sub_10003A37C(v8, a2);
  sub_1001D1390();
  v10 = *(v8 - 8);
  result = (*(v10 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 32))(v9, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000921B4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242E20);
  v6 = sub_10003A37C(v5, qword_100242E20);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000922E4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242E38);
  v6 = sub_10003A37C(v5, qword_100242E38);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092414()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242E50);
  v6 = sub_10003A37C(v5, qword_100242E50);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092544()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242E68);
  v6 = sub_10003A37C(v5, qword_100242E68);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092674()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242E80);
  v6 = sub_10003A37C(v5, qword_100242E80);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000927A4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242E98);
  v6 = sub_10003A37C(v5, qword_100242E98);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000928D4()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242EB0);
  v6 = sub_10003A37C(v5, qword_100242EB0);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092A04()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242EC8);
  v6 = sub_10003A37C(v5, qword_100242EC8);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092B34()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242EE0);
  v6 = sub_10003A37C(v5, qword_100242EE0);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092C64()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242EF8);
  v6 = sub_10003A37C(v5, qword_100242EF8);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100092D94()
{
  v0 = sub_100011AC0(&qword_100229840, &qword_1001D7028);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_1001D1380();
  sub_10003B610(v5, qword_100242F10);
  v6 = sub_10003A37C(v5, qword_100242F10);
  sub_1001D1390();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

void sub_100092EC4(uint64_t a1)
{
  sub_100093124();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = sub_1001CFE40();
    if (v5 <= 0x3F)
    {
      v10 = *(v4 - 8) + 64;
      v6 = *(a1 + 80);
      v7 = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t *sub_100092FE4()
{
  v1 = *v0;
  sub_10009317C(v0 + qword_100229848);
  sub_10009317C(v0 + qword_100229850);
  v2 = *(v0 + qword_100242F28 + 8);

  v3 = qword_100242F30;
  v4 = sub_1001CFE40();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 152));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000930E0()
{
  sub_100092FE4();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100093124()
{
  if (!qword_1002298D8)
  {
    sub_1001CFD60();
    v0 = sub_1001D1F00();
    if (!v1)
    {
      atomic_store(v0, &qword_1002298D8);
    }
  }
}

uint64_t sub_10009317C(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000931F4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = sub_1001CFD60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v27 - v17;
  sub_100096820(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10009317C(v8);
    v19 = sub_1001D17A0();
    v20 = [a1 integerForKey:v19];

    if (!v20)
    {
      v25 = 1;
      return (*(v10 + 56))(a2, v25, 1, v9);
    }

    sub_1001CFC70();
    isa = sub_1001CFCB0().super.isa;
    v22 = sub_1001D17A0();
    [a1 setObject:isa forKey:v22];

    v23 = sub_1001D17A0();
    [a1 removeObjectForKey:v23];

    (*(v10 + 32))(a2, v15, v9);
  }

  else
  {
    v24 = *(v10 + 32);
    v24(v18, v8, v9);
    v24(a2, v18, v9);
  }

  v25 = 0;
  return (*(v10 + 56))(a2, v25, 1, v9);
}

void Configuration.environment(systemInfo:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001D02E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D0170();
  sub_1001D1840();

  v14 = os_variant_allows_internal_security_policies();

  if (v14)
  {
    Configuration.internalEnvironment(systemInfo:)(a1, a2, a3, a4);
  }

  else
  {
    Configuration.customerEnvironment.getter(a4);
  }

  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v15 = sub_1001D0E60();
  sub_10003A37C(v15, qword_1002298E0);
  (*(v9 + 16))(v13, a4, v8);
  v16 = sub_1001D0E50();
  v17 = sub_1001D1E00();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    v20 = sub_1001D02B0();
    v22 = v21;
    (*(v9 + 8))(v13, v8);
    v23 = sub_1000954E0(v20, v22, &v25);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "current environment=%{public}s", v18, 0xCu);
    sub_100011CF0(v19);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_100093738()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D0E60();
  sub_10003B610(v6, qword_1002298E0);
  sub_10003A37C(v6, qword_1002298E0);
  (*(v1 + 104))(v5, enum case for TC2LogCategory.configuration(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v5, v0);
}

uint64_t Configuration.internalEnvironment(systemInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v18 - v11;
  sub_1001D0170();
  sub_1001D1840();

  v13 = os_variant_allows_internal_security_policies();

  if (v13)
  {
    Configuration.configuredEnvironment.getter(v12);
    v15 = sub_1001D02E0();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    if (v17(v12, 1, v15) == 1)
    {
      sub_100094228(a1, a2, a3, a4);
      result = v17(v12, 1, v15);
      if (result != 1)
      {
        return sub_100095994(v12);
      }
    }

    else
    {
      return (*(v16 + 32))(a4, v12, v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Configuration.customerEnvironment.getter(uint64_t a1@<X8>)
{
  v2 = sub_1001D02E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(a1, enum case for TC2Environment.production(_:), v2);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v8 = sub_1001D0E60();
  sub_10003A37C(v8, qword_1002298E0);
  (*(v3 + 16))(v7, a1, v2);
  v9 = sub_1001D0E50();
  v10 = sub_1001D1DD0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_1001D02B0();
    v15 = v14;
    (*(v3 + 8))(v7, v2);
    v16 = sub_1000954E0(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Configuration selected environment=%{public}s", v11, 0xCu);
    sub_100011CF0(v12);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t Configuration.configuredEnvironment.getter@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v40 - v4;
  v43 = sub_1001D02E0();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v43, v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v40 - v14;
  sub_1001D0170();
  sub_1001D1840();

  v16 = os_variant_allows_internal_security_policies();

  if (!v16)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0310();
  sub_10005956C();
  sub_1001D0210();
  (*(v11 + 8))(v15, v10);
  v17 = v45;
  if (!v45)
  {
    v10 = v43;
    if (qword_100227738 == -1)
    {
LABEL_9:
      v25 = sub_1001D0E60();
      sub_10003A37C(v25, qword_1002298E0);
      v20 = sub_1001D0E50();
      v26 = sub_1001D1DD0();
      if (!os_log_type_enabled(v20, v26))
      {
LABEL_17:

        v36 = 1;
        v37 = v42;
        return (*(v6 + 56))(v37, v36, 1, v10);
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v20, v26, "Configuration defaults absent, no environment configured", v27, 2u);
LABEL_11:

      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  v18 = v44;

  sub_1001D02A0();
  v10 = v43;
  if ((*(v6 + 48))(v5, 1, v43) == 1)
  {
    sub_100095994(v5);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v19 = sub_1001D0E60();
    sub_10003A37C(v19, qword_1002298E0);

    v20 = sub_1001D0E50();
    v21 = sub_1001D1DD0();

    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_17;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v44 = v23;
    *v22 = 136446210;
    v24 = sub_1000954E0(v18, v17, &v44);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Configuration defaults=%{public}s unrecognized, no environment configured", v22, 0xCu);
    sub_100011CF0(v23);

    goto LABEL_11;
  }

  v28 = *(v6 + 32);
  v29 = v41;
  v28(v41, v5, v10);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v30 = sub_1001D0E60();
  sub_10003A37C(v30, qword_1002298E0);

  v31 = sub_1001D0E50();
  v32 = sub_1001D1DC0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v33 = 136446210;
    v35 = sub_1000954E0(v18, v17, &v44);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Configuration selected configured environment=%{public}s from defaults", v33, 0xCu);
    sub_100011CF0(v34);
    v10 = v43;
  }

  else
  {
  }

  v38 = v42;
  v28(v42, v29, v10);
  v37 = v38;
  v36 = 0;
  return (*(v6 + 56))(v37, v36, 1, v10);
}

uint64_t sub_100094228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v162 = a3;
  v165 = a2;
  v6 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v159 = v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = v149 - v12;
  v163 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v14 = *(v163 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v163, v16);
  v19 = v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = (v149 - v21);
  v164 = sub_1001D02E0();
  v166 = *(v164 - 8);
  v23 = *(v166 + 8);
  v25 = __chkstk_darwin(v164, v24);
  v160 = v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v161 = v149 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v156 = v149 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v154 = v149 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v39 = v149 - v38;
  __chkstk_darwin(v37, v40);
  v42 = v149 - v41;
  sub_1001D0170();
  sub_1001D1840();

  v43 = os_variant_allows_internal_security_policies();

  if (!v43)
  {
    __break(1u);
    goto LABEL_66;
  }

  sub_1001D0170();
  sub_1001D1840();

  has_internal_content = os_variant_has_internal_content();

  if ((has_internal_content & 1) == 0)
  {
    v22 = v166;
    v13 = v164;
    (*(v166 + 13))(v42, enum case for TC2Environment.production(_:), v164);
    if (qword_100227738 == -1)
    {
LABEL_14:
      v72 = sub_1001D0E60();
      sub_10003A37C(v72, qword_1002298E0);
      v22[2](v39, v42, v13);
      v73 = sub_1001D0E50();
      v74 = sub_1001D1DC0();
      v75 = a4;
      if (os_log_type_enabled(v73, v74))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v167 = v77;
        *v76 = 136446210;
        v78 = sub_1001D02B0();
        v80 = v79;
        (*(v166 + 1))(v39, v13);
        v81 = sub_1000954E0(v78, v80, &v167);
        v22 = v166;

        *(v76 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v73, v74, "Configuration selected environment=%{public}s", v76, 0xCu);
        sub_100011CF0(v77);
      }

      else
      {

        (v22[1])(v39, v13);
      }

      return (v22[4])(v75, v42, v13);
    }

LABEL_66:
    swift_once();
    goto LABEL_14;
  }

  v45 = a1[3];
  v46 = a1[4];
  sub_100024DC8(a1, v45);
  v157 = (*(v46 + 24))(v45, v46);
  v158 = v47;
  v48 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0450();
  v152 = sub_10005956C();
  v153 = v48;
  sub_1001D0210();
  v151 = *(v14 + 8);
  v49 = v151(v22, v163);
  v51 = v168;
  v155 = a4;
  if (v168)
  {
    v52 = v167;
    v167 = 44;
    v168 = 0xE100000000000000;
    __chkstk_darwin(v49, v50);
    v149[-2] = &v167;

    v54 = sub_1001C74B0(1, 1, sub_100095BB8, &v149[-4], v52, v51, v53);
    if (v54[2] == 2)
    {
      v149[1] = v14 + 8;

      if (v54[2])
      {
        v55 = v54[4];
        v56 = v54[5];
        v57 = v54[6];
        v58 = v54[7];

        v59 = sub_1001D1850();
        v61 = v60;

        if (v54[2] < 2uLL)
        {
          __break(1u);
        }

        else
        {
          v62 = v54[8];
          v63 = v54[9];
          v64 = v54[10];
          v65 = v54[11];

          v150 = sub_1001D1850();
          v56 = v66;

          if (qword_100227738 == -1)
          {
            goto LABEL_8;
          }
        }

        swift_once();
LABEL_8:
        v67 = sub_1001D0E60();
        sub_10003A37C(v67, qword_1002298E0);

        v68 = sub_1001D0E50();
        v69 = sub_1001D1DD0();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *v70 = 136315394;
          *(v70 + 4) = sub_1000954E0(v59, v61, &v167);
          *(v70 + 12) = 2082;
          *(v70 + 14) = sub_1000954E0(v150, v56, &v167);
          _os_log_impl(&_mh_execute_header, v68, v69, "Configuration saw bootFixedLiveOnEnvironment with id=%s, environment=%{public}s", v70, 0x16u);
          swift_arrayDestroy();
        }

        v71 = v155;
        if (v59 == v157 && v61 == v158)
        {
        }

        else
        {
          v98 = sub_1001D2470();

          if ((v98 & 1) == 0)
          {

            v111 = sub_1001D0E50();
            v112 = sub_1001D1DD0();
            v113 = os_log_type_enabled(v111, v112);
            v88 = v166;
            if (v113)
            {
              v114 = swift_slowAlloc();
              *v114 = 0;
              _os_log_impl(&_mh_execute_header, v111, v112, "Configuration saw bootFixedLiveOnEnvironment from previous boot, ignoring", v114, 2u);
            }

            v87 = v164;
LABEL_38:
            v89 = v161;
            goto LABEL_39;
          }
        }

        sub_1001D02A0();
        v99 = v166;
        v100 = v164;
        if ((*(v166 + 6))(v13, 1, v164) != 1)
        {

          v104 = *(v99 + 4);
          v105 = v154;
          v104(v154, v13, v100);

          v106 = sub_1001D0E50();
          v107 = sub_1001D1DC0();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v167 = v109;
            *v108 = 136446210;
            v110 = sub_1000954E0(v150, v56, &v167);

            *(v108 + 4) = v110;
            _os_log_impl(&_mh_execute_header, v106, v107, "Configuration agrees with current boot's selection, environment=%{public}s", v108, 0xCu);
            sub_100011CF0(v109);
            v105 = v154;

            v71 = v155;
          }

          else
          {
          }

          return (v104)(v71, v105, v100);
        }

        sub_100095994(v13);
        v101 = sub_1001D0E50();
        v102 = sub_1001D1DE0();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v101, v102, "Configuration saw bootFixedLiveOnEnvironment with invalid environment, ignoring", v103, 2u);
        }

        v87 = v164;
        v88 = v166;
        goto LABEL_38;
      }

      __break(1u);
    }

    else
    {

      if (qword_100227738 == -1)
      {
LABEL_24:
        v91 = sub_1001D0E60();
        sub_10003A37C(v91, qword_1002298E0);

        v92 = sub_1001D0E50();
        v93 = sub_1001D1DE0();

        v94 = os_log_type_enabled(v92, v93);
        v87 = v164;
        v89 = v161;
        if (v94)
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v167 = v96;
          *v95 = 136315138;
          v97 = sub_1000954E0(v52, v51, &v167);

          *(v95 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v92, v93, "Configuration saw invalid bootFixedLiveOnEnvironment=%s", v95, 0xCu);
          sub_100011CF0(v96);
        }

        else
        {
        }

        v71 = v155;
        v88 = v166;
        goto LABEL_39;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  v71 = a4;
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v83 = sub_1001D0E60();
  sub_10003A37C(v83, qword_1002298E0);
  v84 = sub_1001D0E50();
  v85 = sub_1001D1DD0();
  v86 = os_log_type_enabled(v84, v85);
  v87 = v164;
  v88 = v166;
  v89 = v161;
  if (v86)
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v84, v85, "Configuration does not see bootFixedLiveOnEnvironment", v90, 2u);
  }

LABEL_39:
  v115 = v151;
  sub_1001D0420();
  sub_1001D0210();
  v115(v19, v163);
  v116 = v168;
  if (!v168)
  {
    v125 = v160;
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v126 = sub_1001D0E60();
    sub_10003A37C(v126, qword_1002298E0);
    v127 = sub_1001D0E50();
    v128 = sub_1001D1DD0();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "Configuration does not see proposedEnvironment", v129, 2u);
    }

    goto LABEL_57;
  }

  v117 = v167;

  v118 = v159;
  sub_1001D02A0();
  if ((*(v88 + 6))(v118, 1, v87) == 1)
  {
    sub_100095994(v118);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v119 = sub_1001D0E60();
    sub_10003A37C(v119, qword_1002298E0);

    v120 = sub_1001D0E50();
    v121 = sub_1001D1DE0();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v167 = v123;
      *v122 = 136446210;
      v124 = sub_1000954E0(v117, v116, &v167);

      *(v122 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v120, v121, "Configuration saw invalid proposed environment=%{public}s, ignoring", v122, 0xCu);
      sub_100011CF0(v123);

      v71 = v155;
    }

    else
    {
    }

    v125 = v160;
LABEL_57:
    (*(v88 + 13))(v89, enum case for TC2Environment.carry(_:), v87);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v137 = sub_1001D0E60();
    sub_10003A37C(v137, qword_1002298E0);
    (*(v88 + 2))(v125, v89, v87);
    v138 = sub_1001D0E50();
    v139 = sub_1001D1DC0();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v167 = v141;
      *v140 = 136446210;
      v142 = sub_1001D02B0();
      v143 = v125;
      v145 = v144;
      (*(v88 + 1))(v143, v87);
      v146 = sub_1000954E0(v142, v145, &v167);

      *(v140 + 4) = v146;
      _os_log_impl(&_mh_execute_header, v138, v139, "Configuration selected environment=%{public}s", v140, 0xCu);
      sub_100011CF0(v141);
      v71 = v155;
    }

    else
    {

      (*(v88 + 1))(v125, v87);
    }

    v147 = sub_1001D02B0();
    sub_1000959FC(v157, v158, v147, v148);

    return (*(v88 + 4))(v71, v89, v87);
  }

  v130 = *(v88 + 4);
  v131 = v156;
  v130(v156, v118, v87);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v132 = sub_1001D0E60();
  sub_10003A37C(v132, qword_1002298E0);

  v133 = sub_1001D0E50();
  v134 = sub_1001D1DC0();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v167 = v136;
    *v135 = 136446210;
    *(v135 + 4) = sub_1000954E0(v117, v116, &v167);
    _os_log_impl(&_mh_execute_header, v133, v134, "Configuration moving to proposed environment=%{public}s", v135, 0xCu);
    sub_100011CF0(v136);

    v71 = v155;
  }

  sub_1000959FC(v157, v158, v117, v116);

  return (v130)(v71, v131, v87);
}

uint64_t sub_1000954E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000955AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100089F9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100011CF0(v11);
  return v7;
}

unint64_t sub_1000955AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000956B8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1001D2060();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000956B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100095704(a1, a2);
  sub_100095834(&off_10021B940);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100095704(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100095920(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1001D2060();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1001D18D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100095920(v10, 0);
        result = sub_1001D2010();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100095834(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100009294(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100095920(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100011AC0(&qword_100227B80, &qword_1001D3728);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100095994(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000959FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v21 - v12;
  sub_1001D0170();
  sub_1001D1840();

  v14 = os_variant_allows_internal_security_policies();

  if (v14)
  {
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0450();
    v21[0] = a1;
    v21[1] = a2;

    v22._countAndFlagsBits = 44;
    v22._object = 0xE100000000000000;
    sub_1001D18B0(v22);
    v23._countAndFlagsBits = a3;
    v23._object = a4;
    sub_1001D18B0(v23);
    v16 = sub_1001D0570();
    v18 = v17;
    v25._countAndFlagsBits = sub_1001D0560();
    v20 = v19;
    v24._countAndFlagsBits = v16;
    v24._object = v18;
    v25._object = v20;
    sub_1001D1870(v24, v25);

    return (*(v9 + 8))(v13, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100095BD8()
{
  v0 = sub_1001D02F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001D0E60();
  sub_10003B610(v6, qword_1002298F8);
  sub_10003A37C(v6, qword_1002298F8);
  (*(v1 + 104))(v5, enum case for TC2LogCategory.configuration(_:), v0);
  sub_1001D08B0();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100095D28(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v12 - v8;
  a3(&type metadata for String);
  sub_1001D0210();
  (*(v5 + 8))(v9, v4);
  v10 = sub_100095E6C(v12[0], v12[1]);

  return v10;
}

uint64_t sub_100095E6C(uint64_t a1, unint64_t a2)
{
  sub_1001D0170();
  sub_1001D1840();

  v4 = os_variant_allows_internal_security_policies();

  if (!v4)
  {
LABEL_10:

    return a1;
  }

  sub_1001D0C80();
  if ((sub_1001D0C70() & 1) == 0)
  {
    if (qword_100227740 != -1)
    {
      swift_once();
    }

    v6 = sub_1001D0E60();
    sub_10003A37C(v6, qword_1002298F8);
    v7 = sub_1001D0E50();
    v8 = sub_1001D1E00();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "not appending csf bypass because no eligibility bypass", v9, 2u);
    }

    goto LABEL_10;
  }

  sub_100011EAC();
  v18 = a1;
  v19 = a2;
  if (sub_1001D1F40())
  {

    v5._countAndFlagsBits = 44;
  }

  else
  {

    v5._countAndFlagsBits = 59;
  }

  v5._object = 0xE100000000000000;
  sub_1001D18B0(v5);

  v20._object = 0x80000001001E3DD0;
  v20._countAndFlagsBits = 0xD000000000000016;
  sub_1001D18B0(v20);

  a1 = v18;
  v10 = v19;
  v11 = qword_100227740;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1001D0E60();
  sub_10003A37C(v12, qword_1002298F8);
  v13 = sub_1001D0E50();
  v14 = sub_1001D1E00();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000954E0(a1, v10, &v18);
    _os_log_impl(&_mh_execute_header, v13, v14, "appended bypass: %s", v15, 0xCu);
    sub_100011CF0(v16);
  }

  return a1;
}

uint64_t sub_100096168(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = -a2;
  }

  if (v2 >= 0xA)
  {
    if (v2 >= 0x64)
    {
      if (v2 >= 0x3E8)
      {
        if (v2 >> 4 >= 0x271)
        {
          if (v2 >> 5 >= 0xC35)
          {
            v3 = 1000000;
            if (v2 >= 0xF4240)
            {
              if (v2 >= 0x989680)
              {
                v3 = 10000000;
                if (v2 >= 0x5F5E100)
                {
                  v3 = 100000000;
                  if (v2 >= 0x3B9ACA00)
                  {
                    v3 = 1000000000;
                    if (v2 >= 0x2540BE400)
                    {
                      v3 = 10000000000;
                      if (v2 >= 0x174876E800)
                      {
                        v3 = 100000000000;
                        if (v2 >= 0xE8D4A51000)
                        {
                          v4 = 1000000000000000000;
                          if (v2 < 0xDE0B6B3A7640000)
                          {
                            v4 = 100000000000000000;
                          }

                          if (v2 >= 0x16345785D8A0000)
                          {
                            v5 = v4;
                          }

                          else
                          {
                            v5 = 10000000000000000;
                          }

                          if (v2 >= 0x2386F26FC10000)
                          {
                            v6 = v5;
                          }

                          else
                          {
                            v6 = 1000000000000000;
                          }

                          if (v2 >= 0x38D7EA4C68000)
                          {
                            v7 = v6;
                          }

                          else
                          {
                            v7 = 100000000000000;
                          }

                          if (v2 >= 0x5AF3107A4000)
                          {
                            v8 = v7;
                          }

                          else
                          {
                            v8 = 10000000000000;
                          }

                          if (v2 >= 0x9184E72A000)
                          {
                            v3 = v8;
                          }

                          else
                          {
                            v3 = 1000000000000;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v3 = 100000;
            }
          }

          else
          {
            v3 = 10000;
          }
        }

        else
        {
          v3 = 1000;
        }
      }

      else
      {
        v3 = 100;
      }
    }

    else
    {
      v3 = 10;
    }
  }

  else
  {
    v3 = 1;
  }

  v9 = result - 1;
  if (result != 1)
  {
LABEL_47:
    while (v3 != 1)
    {
      v12 = v3;
      v3 /= 0xAuLL;
      if (!--v9)
      {
        if (v12 >= 0xA)
        {
          break;
        }

        __break(1u);
        goto LABEL_51;
      }
    }
  }

  v10 = v2 % v3;
  v11 = v2 >= v2 % v3;
  v2 -= v2 % v3;
  v9 = !v11;
  if (v3 <= 2 * v10)
  {
LABEL_51:
    if (v9)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v11 = __CFADD__(v2, v3);
    v2 += v3;
    if (v11)
    {
LABEL_62:
      __break(1u);
      return result;
    }
  }

  else if (v9)
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v13 = (a2 > 0) | (a2 >> 63);
    result = v2 * v13;
    if ((v2 * v13) >> 64 == (v2 * v13) >> 63)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (a2 > 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0x8000000000000000;
  }
}

id sub_100096398()
{
  v0 = objc_allocWithZone(NSPPrivateAccessTokenChallenge);
  v1 = sub_1001D17A0();
  v2 = [v0 initRSABlindSignatureChallengeWithIssuerName:v1 redemptionNonce:0 originNames:0];

  v3 = objc_allocWithZone(NSPPrivateAccessTokenChallenge);
  v4 = sub_1001D17A0();
  v5 = [v3 initRSABlindSignatureChallengeWithIssuerName:v4 redemptionNonce:0 originNames:0];

  result = [v2 challengeData];
  if (result)
  {
    v7 = result;
    v8 = sub_1001CFC00();
    v10 = v9;

    v11.super.isa = sub_1001CFBE0().super.isa;
    sub_100011E48(v8, v10);
    result = [v5 challengeData];
    if (result)
    {
      v12 = result;

      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v14 = sub_1001CFC00();
      v16 = v15;

      isa = sub_1001CFBE0().super.isa;
      sub_100011E48(v14, v16);
      v18 = [v13 initForKnownIssuerWithLongLivedTokenChallenge:v11.super.isa oneTimeTokenChallenge:isa];

      [v18 setSystemClient:1];
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100096568(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1001D02F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001D0E60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, enum case for TC2LogCategory.network(_:), v7);
  sub_1001D08B0();
  (*(v8 + 8))(v12, v7);
  swift_unknownObjectRetain();
  v19 = sub_1001D0E50();
  v20 = sub_1001D1DE0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29[1] = a4;
    v23 = a3;
    v24 = v22;
    v30 = v22;
    *v21 = 136315138;
    swift_getObjectType();
    v29[2] = a1;
    swift_unknownObjectRetain();
    v25 = sub_1001D1820();
    v27 = sub_1000954E0(v25, v26, &v30);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "not verifying certificate %s", v21, 0xCu);
    sub_100011CF0(v24);
    a3 = v23;
  }

  a3(1);
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_100096820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001D17A0();
  v4 = [v1 valueForKey:v3];

  if (v4)
  {
    sub_1001D1F90();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_1001CFD60();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100096954(v11);
    v8 = sub_1001CFD60();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100096954(uint64_t a1)
{
  v2 = sub_100011AC0(&unk_1002300E0, &qword_1001E1140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000969BC()
{
  v0 = sub_1001D0890();
  v1 = sub_1001D0870();
  if (*(v1 + 16))
  {
    v2 = sub_100006028(0x636E657265666E69, 0xEC00000064692D65);
    if (v3)
    {
      v4 = (*(v1 + 56) + 16 * v2);
      v5 = *v4;
      v6 = v4[1];
    }
  }

  return v0;
}

uint64_t sub_100096A60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001D0870();
  if (*(v2 + 16) && (v3 = sub_100006028(0x636E657265666E69, 0xEC00000064692D65), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    sub_1001D0890();
    sub_100011AC0(&qword_100229910, &qword_1001D7150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001D39F0;
    *(inited + 32) = 0x636E657265666E69;
    v9 = inited + 32;
    *(inited + 40) = 0xEC00000064692D65;
    *(inited + 48) = v7;
    *(inited + 56) = v6;
    sub_1000D65D4(inited);
    swift_setDeallocating();
    sub_100096C30(v9);
    sub_1001D0880();
    v10 = sub_1001D08A0();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {

    v12 = sub_1001D08A0();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_100096C30(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100229918, &qword_1001D7158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeRequest.applicationPayload.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100011AC0(&qword_100229920, &qword_1001D7190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_10001208C(v2, v7, &qword_100229920, &qword_1001D7190);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229920, &qword_1001D7190);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      goto LABEL_12;
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  }

  v11 = xmmword_1001D3A00;
LABEL_12:
  *v5 = v11;
  return sub_100096F2C;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.authToken.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v12 - v7;
  sub_10001208C(v2, &v12 - v7, &qword_100229920, &qword_1001D7190);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229920, &qword_1001D7190);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_100097550(v8, a1, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  }

  *a1 = xmmword_1001D3A00;
  a1[1] = xmmword_1001D3A00;
  v11 = a1 + *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_AuthToken.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1001D3A00;
  a1[1] = xmmword_1001D3A00;
  v1 = a1 + *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeRequest.authToken.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229920, &qword_1001D7190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_10001208C(v1, v7, &qword_100229920, &qword_1001D7190);
  v12 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_100011F00(v7, &qword_100229920, &qword_1001D7190);
LABEL_15:
    *v11 = xmmword_1001D3A00;
    v11[1] = xmmword_1001D3A00;
    v14 = v11 + *(v8 + 24);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_100097360;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v7, v11, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  return sub_100097360;
}

uint64_t sub_100097390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.finalMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v11 - v7;
  sub_10001208C(v2, &v11 - v7, &qword_100229920, &qword_1001D7190);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229920, &qword_1001D7190);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_100097550(v8, a1, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
  }

  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t sub_100097550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000975F4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_100011F00(v2, &qword_100229920, &qword_1001D7190);
  sub_100097550(a1, v2, a2);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeRequest.finalMessage.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229920, &qword_1001D7190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = *(*(type metadata accessor for Proto_PrivateCloudCompute_FinalMessage(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[3] = v9;
  sub_10001208C(v1, v7, &qword_100229920, &qword_1001D7190);
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v4[4] = v11;
  v12 = *(v11 - 8);
  v4[5] = v12;
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_100011F00(v7, &qword_100229920, &qword_1001D7190);
LABEL_15:
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    return sub_1000978B4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100097390(v7, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v7, v10, type metadata accessor for Proto_PrivateCloudCompute_FinalMessage);
  return sub_1000978B4;
}

void sub_1000978E4(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    sub_100097A3C((*a1)[3], v9, a3);
    sub_100011F00(v12, &qword_100229920, &qword_1001D7190);
    sub_100097550(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_100097390(v10, a5);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229920, &qword_1001D7190);
    sub_100097550(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t sub_100097A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static Proto_PrivateCloudCompute_AuthToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1000A1A5C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_1000A1A5C(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t static Proto_PrivateCloudCompute_FinalMessage.== infix(_:_:)()
{
  sub_1001D0940();
  sub_1000A3704(&qword_100229928, &type metadata accessor for UnknownStorage);
  return sub_1001D1790() & 1;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.tokenGrantingToken.getter()
{
  v1 = *v0;
  sub_100012038(*v0, *(v0 + 8));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.tokenGrantingToken.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.ottSalt.getter()
{
  v1 = *(v0 + 16);
  sub_100012038(v1, *(v0 + 24));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.ottSalt.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_AuthToken.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_PrivateCloudCompute_AuthToken.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0) + 24);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Proto_PrivateCloudCompute_FinalMessage.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001D0940();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Proto_PrivateCloudCompute_FinalMessage.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1001D0940();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100098054(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = sub_100011AC0(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = (&v18 - v13);
  sub_10001208C(v9, &v18 - v13, a1, a2);
  v15 = a3(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_100011F00(v14, a1, a2);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      result = *v14;
      v17 = v14[1];
      return result;
    }

    sub_100097390(v14, a4);
  }

  return 0;
}

uint64_t sub_1000981A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_100011F00(v5, a3, a4);
  *v5 = a1;
  v5[1] = a2;
  v9 = a5(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);

  return v10(v5, 0, 1, v9);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responseUuid.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_10001208C(v2, v7, &qword_100229930, &qword_1001D7198);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      goto LABEL_12;
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  v11 = xmmword_1001D3A00;
LABEL_12:
  *v5 = v11;
  return sub_1000983E4;
}

void sub_1000983FC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v12 = (*a1)[2];
  v11 = (*a1)[3];
  if (a2)
  {
    sub_100012038(**a1, v7);
    sub_100011F00(v12, a3, a4);
    *v12 = v8;
    v12[1] = v7;
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v12, 0, 1, v9);
    sub_100011E48(*v6, v6[1]);
  }

  else
  {
    sub_100011F00((*a1)[2], a3, a4);
    *v12 = v8;
    v12[1] = v7;
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v12, 0, 1, v9);
  }

  free(v11);

  free(v6);
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responsePayload.getter()
{
  v1 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (&v9 - v4);
  sub_10001208C(v0, &v9 - v4, &qword_100229930, &qword_1001D7198);
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_100011F00(v5, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = *v5;
      v8 = v5[1];
      return result;
    }

    sub_100097390(v5, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  return 0;
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responsePayload.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_10001208C(v2, v7, &qword_100229930, &qword_1001D7198);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
LABEL_12:
    v11 = xmmword_1001D3A00;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_100098808;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responseSummary.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v15 - v7;
  sub_10001208C(v2, &v15 - v7, &qword_100229930, &qword_1001D7198);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_100097550(v8, a1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v12 = a1 + *(v11 + 20);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v13 = *(v11 + 24);
  v14 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v3 = a1 + *(v2 + 20);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_100098A90(uint64_t a1, uint64_t (*a2)(void))
{
  sub_100011F00(v2, &qword_100229930, &qword_1001D7198);
  sub_100097550(a1, v2, a2);
  v5 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.responseSummary.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  v10 = *(*(v9 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_100229930, &qword_1001D7198);
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    v15 = v12 + *(v9 + 20);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    v16 = *(v9 + 24);
    v17 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
    (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
    return sub_100098DB8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v8, v12, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
  return sub_100098DB8;
}

void sub_100098DE8(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    sub_100097A3C((*a1)[3], v9, a3);
    sub_100011F00(v12, &qword_100229930, &qword_1001D7198);
    sub_100097550(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_100097390(v10, a5);
  }

  else
  {
    sub_100011F00(**a1, &qword_100229930, &qword_1001D7198);
    sub_100097550(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.requestExecutionLogEntry.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v15 - v7;
  sub_10001208C(v2, &v15 - v7, &qword_100229930, &qword_1001D7198);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_100097550(v8, a1, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    }

    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
  }

  *a1 = 0;
  v11 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v12 = &a1[v11[5]];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  *&a1[v11[6]] = xmmword_1001D6800;
  v13 = v11[7];
  v14 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v3 = &a1[v2[5]];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  *&a1[v2[6]] = xmmword_1001D6800;
  v4 = v2[7];
  v5 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.requestExecutionLogEntry.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_100011AC0(&qword_100229930, &qword_1001D7198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  v10 = *(*(v9 - 1) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_10001208C(v2, v8, &qword_100229930, &qword_1001D7198);
  v13 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100011F00(v8, &qword_100229930, &qword_1001D7198);
LABEL_15:
    *v12 = 0;
    v15 = &v12[v9[5]];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    *&v12[v9[6]] = xmmword_1001D6800;
    v16 = v9[7];
    v17 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
    return sub_100099438;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100097390(v8, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type);
    goto LABEL_15;
  }

  sub_100097550(v8, v12, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
  return sub_100099438;
}

uint64_t sub_100099480@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10009951C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1001D0940();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void sub_10009963C(uint64_t a1@<X8>)
{
  sub_1000A36F0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_100099688(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1000A36F0();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

Swift::Int sub_1000996CC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t sub_100099738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A374C();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100099784()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1001D2580();
  sub_1001D1740();
  return sub_1001D25C0();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.postResponseActions.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  sub_10001208C(v1 + *(v8 + 24), v7, &qword_100229938, &unk_1001D71A0);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_100097550(v7, a1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  }

  *a1 = 0;
  v11 = &a1[*(v9 + 20)];
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_100229938, &unk_1001D71A0);
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0) + 20)];
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.postResponseActions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  sub_100011F00(v1 + v3, &qword_100229938, &unk_1001D71A0);
  sub_100097550(a1, v1 + v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.postResponseActions.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229938, &unk_1001D71A0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_100229938, &unk_1001D71A0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v16 = &v13[*(v8 + 20)];
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_100229938, &unk_1001D71A0);
    }
  }

  else
  {
    sub_100097550(v7, v13, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions);
  }

  return sub_100099C60;
}

BOOL Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.hasPostResponseActions.getter()
{
  v1 = sub_100011AC0(&qword_100229938, &unk_1001D71A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  sub_10001208C(v0 + *(v6 + 24), v5, &qword_100229938, &unk_1001D71A0);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_100229938, &unk_1001D71A0);
  return v8;
}

Swift::Void __swiftcall Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary.clearPostResponseActions()()
{
  v1 = *(type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0) + 24);
  sub_100011F00(v0 + v1, &qword_100229938, &unk_1001D71A0);
  v2 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.PostResponseActions(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.parseType.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Proto_Ropes_HttpService_AdminApiResponse.RoutingParamValue.parseType.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100099F64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.attestation.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_100089C38(*v1, v2);
  return v3;
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.attestation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
  result = sub_10002683C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*Proto_PrivateCloudCompute_RequestExecutionLogEntry.attestation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_100089C38(v5, v6);
  return sub_10009A0F4;
}

uint64_t sub_10009A0F4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_100012038(*a1, v2);
    sub_10002683C(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_100011E48(v4, v2);
  }

  else
  {
    result = sub_10002683C(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall Proto_PrivateCloudCompute_RequestExecutionLogEntry.clearAttestation()()
{
  v1 = v0 + *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 24);
  sub_10002683C(*v1, *(v1 + 8));
  *v1 = xmmword_1001D6800;
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.responseContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  sub_10001208C(v1 + *(v8 + 28), v7, &qword_100229940, &qword_1001E19D0);
  v9 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_100097550(v7, a1, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1001D7160;
  *(a1 + 32) = 0xC000000000000000;
  v11 = a1 + *(v9 + 32);
  _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_100011F00(v7, &qword_100229940, &qword_1001E19D0);
  }

  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_1001D7160;
  *(a1 + 32) = 0xC000000000000000;
  v1 = a1 + *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
  return _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
}

uint64_t Proto_PrivateCloudCompute_RequestExecutionLogEntry.responseContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  sub_100011F00(v1 + v3, &qword_100229940, &qword_1001E19D0);
  sub_100097550(a1, v1 + v3, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  v4 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_PrivateCloudCompute_RequestExecutionLogEntry.responseContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100011AC0(&qword_100229940, &qword_1001E19D0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_10001208C(v1 + v14, v7, &qword_100229940, &qword_1001E19D0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = xmmword_1001D7160;
    *(v13 + 32) = 0xC000000000000000;
    v16 = v13 + *(v8 + 32);
    _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100011F00(v7, &qword_100229940, &qword_1001E19D0);
    }
  }

  else
  {
    sub_100097550(v7, v13, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
  }

  return sub_10009A6A0;
}

void sub_10009A6DC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_100097A3C(v12, v11, a5);
    sub_100011F00(v15 + v10, a3, a4);
    sub_100097550(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_100097390(v12, a6);
  }

  else
  {
    sub_100011F00(v15 + v10, a3, a4);
    sub_100097550(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Proto_PrivateCloudCompute_RequestExecutionLogEntry.hasResponseContext.getter()
{
  v1 = sub_100011AC0(&qword_100229940, &qword_1001E19D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  sub_10001208C(v0 + *(v6 + 28), v5, &qword_100229940, &qword_1001E19D0);
  v7 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_100011F00(v5, &qword_100229940, &qword_1001E19D0);
  return v8;
}

Swift::Void __swiftcall Proto_PrivateCloudCompute_RequestExecutionLogEntry.clearResponseContext()()
{
  v1 = *(type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0) + 28);
  sub_100011F00(v0 + v1, &qword_100229940, &qword_1001E19D0);
  v2 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadKey.getter()
{
  v1 = *(v0 + 8);
  sub_100012038(v1, *(v0 + 16));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadNonce.getter()
{
  v1 = *(v0 + 24);
  sub_100012038(v1, *(v0 + 32));
  return v1;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.aeadNonce.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100011E48(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_PrivateCloudCompute_ResponseContext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0) + 32);
  v4 = sub_1001D0940();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10009ACD0()
{
  v0 = sub_1001D0C60();
  sub_10003B610(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeRequest._protobuf_nameMap);
  sub_10003A37C(v0, static Proto_PrivateCloudCompute_PrivateCloudComputeRequest._protobuf_nameMap);
  sub_100011AC0(&qword_10022A0D0, &unk_1001D8030);
  v1 = (sub_100011AC0(&qword_10022A0D8, &qword_1001D9610) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001D7170;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "application_payload";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_1001D0C30();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "auth_token";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "final_message";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1001D0C40();
}

uint64_t Proto_PrivateCloudCompute_PrivateCloudComputeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1001D09E0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 4:
          sub_10009B5E4(v5, a1, a2, a3);
          break;
        case 3:
          sub_10009B028(v5, a1, a2, a3);
          break;
        case 1:
          sub_10009D340(a1, v5, a2, a3, &qword_100229920, &qword_1001D7190, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type, 0);
          break;
      }

      result = sub_1001D09E0();
    }
  }

  return result;
}

uint64_t sub_10009B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v56 = a2;
  v57 = a3;
  v5 = type metadata accessor for Proto_PrivateCloudCompute_AuthToken(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v51 = &v48 - v12;
  v13 = sub_100011AC0(&qword_100229920, &qword_1001D7190);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v48 - v26;
  v28 = sub_100011AC0(&qword_10022A100, &qword_1001D8060);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v53 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v35 = &v48 - v34;
  v52 = v6;
  v36 = *(v6 + 56);
  v55 = v5;
  v37 = v5;
  v38 = v36;
  v36(&v48 - v34, 1, 1, v37);
  v49 = a1;
  sub_10001208C(a1, v17, &qword_100229920, &qword_1001D7190);
  v48 = v19;
  v39 = (*(v19 + 48))(v17, 1, v18);
  if (v39 == 1)
  {
    sub_100011F00(v17, &qword_100229920, &qword_1001D7190);
    v40 = v55;
    v41 = v18;
  }

  else
  {
    sub_100097550(v17, v27, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    sub_100097550(v27, v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
    v41 = v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100011F00(v35, &qword_10022A100, &qword_1001D8060);
      v42 = v51;
      sub_100097550(v24, v51, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
      sub_100097550(v42, v35, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
      v40 = v55;
      v38(v35, 0, 1, v55);
    }

    else
    {
      sub_100097390(v24, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest.OneOf_Type);
      v40 = v55;
    }
  }

  v43 = v53;
  sub_1000A3704(&qword_1002299D8, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
  v44 = v54;
  sub_1001D0AE0();
  if (v44)
  {
    return sub_100011F00(v35, &qword_10022A100, &qword_1001D8060);
  }

  sub_10001208C(v35, v43, &qword_10022A100, &qword_1001D8060);
  if ((*(v52 + 48))(v43, 1, v40) == 1)
  {
    sub_100011F00(v35, &qword_10022A100, &qword_1001D8060);
    return sub_100011F00(v43, &qword_10022A100, &qword_1001D8060);
  }

  else
  {
    v46 = v50;
    sub_100097550(v43, v50, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    if (v39 != 1)
    {
      sub_1001D09F0();
    }

    sub_100011F00(v35, &qword_10022A100, &qword_1001D8060);
    v47 = v49;
    sub_100011F00(v49, &qword_100229920, &qword_1001D7190);
    sub_100097550(v46, v47, type metadata accessor for Proto_PrivateCloudCompute_AuthToken);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 56))(v47, 0, 1, v41);
  }
}