uint64_t sub_10001A944(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v131 = a2 + 56;
  v121 = v8;
  v122 = a1 + 56;
  if (v7)
  {
LABEL_7:
    v9 = __clz(__rbit64(v7));
    v116 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v116 = (v11 - 1) & v11;
LABEL_13:
    v117 = v3;
    v118 = a1;
    v12 = *(a1 + 48) + 40 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v129 = *(v12 + 32);
    v17 = *(v2 + 40);
    Hasher.init(_seed:)();

    sub_10001C9B8(v16, v15);
    String.hash(into:)();
    if (v15 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
    }

    Hasher._combine(_:)(v129);
    v18 = Hasher._finalize()();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v131 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_182:

      sub_10001CA20(v16, v15);
      return 0;
    }

    v130 = ~v19;
    v128 = v15 >> 62;
    v21 = !v16 && v15 == 0xC000000000000000;
    v22 = !v21;
    v127 = v22;
    v23 = __OFSUB__(HIDWORD(v16), v16);
    v126 = v23;
    v119 = (v16 >> 32) - v16;
    v120 = v16 >> 32;
    while (1)
    {
      v26 = *(v2 + 48) + 40 * v20;
      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      v132 = *(v26 + 32);
      v29 = *v26 == v14 && *(v26 + 8) == v13;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v27 >> 60 == 15)
      {
        if (v15 >> 60 == 15)
        {
          sub_10001C9B8(v28, v27);
          sub_10001C9B8(v16, v15);
          goto LABEL_80;
        }

        goto LABEL_27;
      }

      if (v15 >> 60 != 15)
      {
        break;
      }

LABEL_27:
      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v16, v15);
      sub_10001CA20(v28, v27);
      v24 = v16;
      v25 = v15;
LABEL_28:
      sub_10001CA20(v24, v25);
LABEL_29:
      v20 = (v20 + 1) & v130;
      if (((*(v131 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_182;
      }
    }

    v30 = v27 >> 62;
    if (v27 >> 62 != 3)
    {
      v32 = v15 >> 62;
      if (v30 <= 1)
      {
        if (v30)
        {
          LODWORD(v37) = HIDWORD(v28) - v28;
          if (__OFSUB__(HIDWORD(v28), v28))
          {
            goto LABEL_188;
          }

          v37 = v37;
          if (v128 > 1)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v37 = BYTE6(v27);
          if (v128 > 1)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_58;
      }

      if (v30 != 2)
      {
        goto LABEL_61;
      }

      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_187;
      }

      if (v128 <= 1)
      {
        goto LABEL_58;
      }

LABEL_62:
      if (v32 == 2)
      {
        v43 = *(v16 + 16);
        v42 = *(v16 + 24);
        v40 = __OFSUB__(v42, v43);
        v41 = v42 - v43;
        if (v40)
        {
          goto LABEL_185;
        }

        goto LABEL_64;
      }

      if (!v37)
      {
        goto LABEL_77;
      }

LABEL_76:
      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v16, v15);
      sub_10001CA20(v16, v15);
      v24 = v28;
      v25 = v27;
      goto LABEL_28;
    }

    if (v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = v27 == 0xC000000000000000;
    }

    v32 = v15 >> 62;
    v34 = !v31 || v15 >> 62 != 3;
    if (((v34 | v127) & 1) == 0)
    {

      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      v35 = 0;
      v36 = 0xC000000000000000;
      goto LABEL_79;
    }

LABEL_61:
    v37 = 0;
    if (v32 > 1)
    {
      goto LABEL_62;
    }

LABEL_58:
    v41 = BYTE6(v15);
    if (v32)
    {
      v41 = HIDWORD(v16) - v16;
      if (v126)
      {
        goto LABEL_186;
      }
    }

LABEL_64:
    if (v37 != v41)
    {
      goto LABEL_76;
    }

    if (v37 < 1)
    {
LABEL_77:

      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v16, v15);
      goto LABEL_78;
    }

    if (v30 > 1)
    {
      break;
    }

    if (v30)
    {
      v125 = v2;
      if (v28 > v28 >> 32)
      {
        goto LABEL_189;
      }

      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v16, v15);
      v52 = __DataStorage._bytes.getter();
      if (v52)
      {
        v111 = v52;
        v53 = __DataStorage._offset.getter();
        if (__OFSUB__(v28, v53))
        {
          goto LABEL_191;
        }

        v112 = &v111[v28 - v53];
      }

      else
      {
        v112 = 0;
      }

      __DataStorage._length.getter();
      if (v128 != 2)
      {
        if (v128 == 1)
        {
          if (v120 < v16)
          {
            goto LABEL_200;
          }

          v64 = __DataStorage._bytes.getter();
          if (v64)
          {
            v65 = v64;
            v66 = __DataStorage._offset.getter();
            if (__OFSUB__(v16, v66))
            {
              goto LABEL_207;
            }

            v102 = (v16 - v66 + v65);
          }

          else
          {
            v102 = 0;
          }

          v2 = v125;
          v96 = __DataStorage._length.getter();
          v92 = (v16 >> 32) - v16;
          if (v96 < v119)
          {
            v92 = v96;
          }

          v59 = v112;
          if (!v112)
          {
            goto LABEL_218;
          }

          v60 = v102;
          if (!v102)
          {
            goto LABEL_217;
          }

          goto LABEL_174;
        }

        v59 = v112;
        *__s1 = v16;
        *&__s1[8] = v15;
        __s1[10] = BYTE2(v15);
        __s1[11] = BYTE3(v15);
        __s1[12] = BYTE4(v15);
        __s1[13] = BYTE5(v15);
        if (!v112)
        {
          goto LABEL_216;
        }

LABEL_134:
        v60 = __s1;
LABEL_135:
        v86 = BYTE6(v15);
LABEL_176:
        v89 = memcmp(v59, v60, v86);
        sub_10001CA20(v16, v15);
        goto LABEL_177;
      }

      __s2b = *(v16 + 24);
      v106 = *(v16 + 16);
      v81 = __DataStorage._bytes.getter();
      if (v81)
      {
        v82 = v81;
        v83 = __DataStorage._offset.getter();
        v84 = v106;
        if (__OFSUB__(v106, v83))
        {
          goto LABEL_206;
        }

        v85 = &v106[v82 - v83];
      }

      else
      {
        v85 = 0;
        v84 = v106;
      }

      v108 = v85;
      v94 = (__s2b - v84);
      if (__OFSUB__(__s2b, v84))
      {
        goto LABEL_201;
      }

      v95 = __DataStorage._length.getter();
      if (v95 >= v94)
      {
        v92 = v94;
      }

      else
      {
        v92 = v95;
      }

      v59 = v112;
      if (!v112)
      {
        goto LABEL_220;
      }

      v2 = v125;
      v60 = v108;
      if (!v108)
      {
        goto LABEL_219;
      }

LABEL_174:
      if (v59 != v60)
      {
        v86 = v92;
        goto LABEL_176;
      }

LABEL_78:
      v35 = v16;
      v36 = v15;
LABEL_79:
      sub_10001CA20(v35, v36);
      sub_10001CA20(v28, v27);

LABEL_80:
      sub_10001CA20(v28, v27);
      goto LABEL_81;
    }

    *__s1 = v28;
    *&__s1[8] = v27;
    __s1[10] = BYTE2(v27);
    __s1[11] = BYTE3(v27);
    __s1[12] = BYTE4(v27);
    __s1[13] = BYTE5(v27);
    if (!v32)
    {
      goto LABEL_104;
    }

    v123 = v2;
    if (v32 != 1)
    {
      v104 = *(v16 + 24);
      v114 = *(v16 + 16);

      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v28, v27);
      sub_10001C9B8(v16, v15);
      v72 = __DataStorage._bytes.getter();
      if (v72)
      {
        v73 = v72;
        v74 = __DataStorage._offset.getter();
        v75 = v114;
        if (__OFSUB__(v114, v74))
        {
          goto LABEL_203;
        }

        __s2 = &v114[v73 - v74];
      }

      else
      {
        __s2 = 0;
        v75 = v114;
      }

      v87 = (v104 - v75);
      if (__OFSUB__(v104, v75))
      {
        goto LABEL_196;
      }

      v88 = __DataStorage._length.getter();
      v58 = __s2;
      if (!__s2)
      {
        goto LABEL_221;
      }

      goto LABEL_143;
    }

    if (v120 < v16)
    {
      goto LABEL_193;
    }

    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v16, v15);
    v44 = __DataStorage._bytes.getter();
    if (!v44)
    {
      goto LABEL_223;
    }

    v45 = v44;
    v46 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v46))
    {
      goto LABEL_198;
    }

    v47 = (v16 - v46 + v45);
    v48 = __DataStorage._length.getter();
    if (!v47)
    {
      goto LABEL_222;
    }

LABEL_100:
    if (v48 >= v119)
    {
      v57 = (v16 >> 32) - v16;
    }

    else
    {
      v57 = v48;
    }

    v58 = v47;
LABEL_146:
    v89 = memcmp(__s1, v58, v57);
    sub_10001CA20(v16, v15);
    v2 = v123;
LABEL_177:
    sub_10001CA20(v28, v27);

    sub_10001CA20(v28, v27);
    if (v89)
    {
      goto LABEL_29;
    }

LABEL_81:
    if (v132 != v129)
    {
      goto LABEL_29;
    }

    sub_10001CA20(v16, v15);
    v3 = v117;
    a1 = v118;
    v8 = v121;
    v4 = v122;
    v7 = v116;
    if (v116)
    {
      goto LABEL_7;
    }
  }

  if (v30 == 2)
  {
    v124 = v2;
    v109 = *(v28 + 16);

    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v16, v15);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v50 = v49;
      v51 = __DataStorage._offset.getter();
      if (__OFSUB__(v109, v51))
      {
        goto LABEL_190;
      }

      v110 = &v109[v50 - v51];
    }

    else
    {
      v110 = 0;
    }

    __DataStorage._length.getter();
    v2 = v124;
    if (v128 != 2)
    {
      if (v128 == 1)
      {
        if (v120 < v16)
        {
          goto LABEL_194;
        }

        v61 = __DataStorage._bytes.getter();
        if (v61)
        {
          v62 = v61;
          v63 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v63))
          {
            goto LABEL_205;
          }

          v101 = (v16 - v63 + v62);
        }

        else
        {
          v101 = 0;
        }

        v2 = v124;
        v93 = __DataStorage._length.getter();
        v92 = (v16 >> 32) - v16;
        if (v93 < v119)
        {
          v92 = v93;
        }

        v59 = v110;
        if (!v110)
        {
          goto LABEL_213;
        }

        v60 = v101;
        if (!v101)
        {
          goto LABEL_212;
        }

        goto LABEL_174;
      }

      v59 = v110;
      *__s1 = v16;
      *&__s1[8] = v15;
      __s1[10] = BYTE2(v15);
      __s1[11] = BYTE3(v15);
      __s1[12] = BYTE4(v15);
      __s1[13] = BYTE5(v15);
      if (!v110)
      {
        goto LABEL_211;
      }

      goto LABEL_134;
    }

    __s2a = *(v16 + 24);
    v105 = *(v16 + 16);
    v76 = __DataStorage._bytes.getter();
    if (v76)
    {
      v77 = v76;
      v78 = __DataStorage._offset.getter();
      v79 = v105;
      if (__OFSUB__(v105, v78))
      {
        goto LABEL_204;
      }

      v80 = &v105[v77 - v78];
    }

    else
    {
      v80 = 0;
      v79 = v105;
    }

    v107 = v80;
    v90 = (__s2a - v79);
    if (__OFSUB__(__s2a, v79))
    {
      goto LABEL_199;
    }

    v91 = __DataStorage._length.getter();
    if (v91 >= v90)
    {
      v92 = v90;
    }

    else
    {
      v92 = v91;
    }

    v59 = v110;
    if (!v110)
    {
      goto LABEL_215;
    }

    v2 = v124;
    v60 = v107;
    if (!v107)
    {
      goto LABEL_214;
    }

    goto LABEL_174;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (v32 == 2)
  {
    v123 = v2;
    v103 = *(v16 + 24);
    v113 = *(v16 + 16);

    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v16, v15);
    v67 = __DataStorage._bytes.getter();
    if (v67)
    {
      v68 = v67;
      v69 = __DataStorage._offset.getter();
      v70 = v113;
      if (__OFSUB__(v113, v69))
      {
        goto LABEL_202;
      }

      v71 = &v113[v68 - v69];
    }

    else
    {
      v71 = 0;
      v70 = v113;
    }

    v115 = v71;
    v87 = (v103 - v70);
    if (__OFSUB__(v103, v70))
    {
      goto LABEL_195;
    }

    v88 = __DataStorage._length.getter();
    v58 = v115;
    if (!v115)
    {
      goto LABEL_210;
    }

LABEL_143:
    if (v88 >= v87)
    {
      v57 = v87;
    }

    else
    {
      v57 = v88;
    }

    goto LABEL_146;
  }

  if (v32 != 1)
  {
LABEL_104:
    v133 = v16;
    v134 = v15;
    v135 = BYTE2(v15);
    v136 = BYTE3(v15);
    v137 = BYTE4(v15);
    v138 = BYTE5(v15);

    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v28, v27);
    sub_10001C9B8(v16, v15);
    v59 = __s1;
    v60 = &v133;
    goto LABEL_135;
  }

  v123 = v2;
  if (v120 < v16)
  {
    goto LABEL_192;
  }

  sub_10001C9B8(v28, v27);
  sub_10001C9B8(v28, v27);
  sub_10001C9B8(v16, v15);
  v54 = __DataStorage._bytes.getter();
  if (v54)
  {
    v55 = v54;
    v56 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v56))
    {
      goto LABEL_197;
    }

    v47 = (v16 - v56 + v55);
    v48 = __DataStorage._length.getter();
    if (!v47)
    {
      goto LABEL_209;
    }

    goto LABEL_100;
  }

  __DataStorage._length.getter();
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_10001B68C()
{
  v1 = v0;
  v2 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for AEAAuxiliaryParticipantAggregatorSource();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  UUID.init()();
  v11 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  v29 = &_swiftEmptySetSingleton;
  v12 = sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = CurrentValueSubject.init(_:)();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  type metadata accessor for AgentActor();
  inited = swift_initStaticObject();
  v17 = sub_10001CFA8();
  v18 = swift_allocObject();
  v18[2] = inited;
  v18[3] = v17;
  v18[4] = v10;
  v18[5] = v1;

  sub_10006F6D0(0, 0, v6, &unk_100080D48, v18);

  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C370(v19, qword_1000BC548);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v10;
    v29 = v23;
    *v22 = 136446210;

    v24 = String.init<A>(describing:)();
    v26 = sub_100043D60(v24, v25, &v29);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Created %{public}s", v22, 0xCu);
    sub_100003FB4(v23);
  }

  return v10;
}

uint64_t sub_10001B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();
  v8 = sub_100003F6C(&qword_1000B8208, &unk_100080D50);
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v5[15] = swift_task_alloc();
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_10001CFA8();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001BAD8, v12, v11);
}

uint64_t sub_10001BAD8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v17 = v0[12];
  v18 = v0[11];
  v5 = v0[8];
  v15 = v0[7];
  v16 = v0[9];
  v0[5] = *(v15 + OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject);
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  sub_100004EE0(&qword_1000B8210, &qword_1000B8200, &qword_100080D38);
  Publisher.dropFirst(_:)();
  sub_100004EE0(&qword_1000B8218, &qword_1000B8208, &unk_100080D50);
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v2, v3);
  v0[6] = v19;
  v6 = swift_allocObject();
  swift_weakInit();
  v20 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id;
  (*(v4 + 16))(v17, v15 + OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_id, v16);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, v17, v16);
  swift_allocObject();
  swift_weakInit();
  sub_100003F6C(&qword_1000B7BB8, &qword_100080470);
  sub_100004EE0(&qword_1000B7BC0, &qword_1000B7BB8, &qword_100080470);
  v9 = Publisher.sink(receiveCompletion:receiveValue:)();

  sub_100003F6C(qword_1000B8220, &unk_100080D60);
  v10 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();

  v11 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_100040D00(v10, v9, v15 + v20, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v21;
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001BE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001BF1C(a3);
  }

  return result;
}

uint64_t sub_10001BEC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001C338();
  }

  return result;
}

void sub_10001BF1C(uint64_t a1)
{
  _StringGuts.grow(_:)(25);

  v16[0] = 0xD000000000000017;
  v16[1] = 0x80000001000888B0;
  v2._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v2);

  swift_beginAccess();
  v3 = sub_10001C25C(a1);
  swift_endAccess();
  if (v3)
  {
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC548);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16[0] = v8;
      *v7 = 136446210;
      v9 = sub_100043D60(0xD000000000000017, 0x80000001000888B0, v16);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Removing %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }

    else
    {
    }

    AnyCancellable.cancel()();
    sub_10001C338();
  }

  else
  {
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C370(v10, qword_1000BC548);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16[0] = v14;
      *v13 = 136446210;
      v15 = sub_100043D60(0xD000000000000017, 0x80000001000888B0, v16);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Attempted to remove unknown %{public}s", v13, 0xCu);
      sub_100003FB4(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10001C25C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100020E18(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10006DC74();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_10005145C(v6, v9);
  *v2 = v9;
  return v13;
}

void sub_10001C338()
{
  v1 = v0;
  v2 = 1;
  swift_beginAccess();
  v3 = *(v0 + 24);

  v5 = sub_10001C858(v4);

  v6 = *(v1 + 24);
  *(v1 + 24) = v5;

  v7 = *(v1 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = *(v1 + 24);
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = _swiftEmptyArrayStorage;
  while (v10)
  {
LABEL_4:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v7 + 56) + ((v13 << 10) | (16 * v15)));
    v2 = *v16;
    v17 = v16[1];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = *(Strong + OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject);

      CurrentValueSubject.value.getter();

      v2 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000727E0(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        v14 = sub_1000727E0((v21 > 1), v22 + 1, 1, v14);
      }

      v14[2] = v22 + 1;
      v14[v22 + 4] = v35;
    }
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v19 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v19);
    ++v13;
    if (v10)
    {
      v13 = v19;
      goto LABEL_4;
    }
  }

  v23 = v14[2];
  if (v23)
  {
    v24 = 0;
    v2 = (v14 + 4);
    while (v24 < v14[2])
    {
      v25 = v24 + 1;
      v26 = *(v2 + 8 * v24);

      sub_10001C6D8(v27);
      v24 = v25;
      if (v23 == v25)
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_22;
  }

LABEL_19:

  v14 = &_swiftEmptySetSingleton;
  v28 = *(v1 + 16);
  CurrentValueSubject.value.getter();
  v29 = sub_10001A944(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton);

  if (v29)
  {

    return;
  }

  CurrentValueSubject.value.getter();
  v2 = *(&_swiftEmptySetSingleton + 2);

  CurrentValueSubject.send(_:)();
  if (qword_1000B6430 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v30 = type metadata accessor for Logger();
  sub_10000C370(v30, qword_1000BC548);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349312;
    *(v33 + 4) = v2;
    *(v33 + 12) = 2050;
    v34 = v14[2];

    *(v33 + 14) = v34;

    _os_log_impl(&_mh_execute_header, v31, v32, "Updated auxiliary participant aggregate: %{public}ld → %{public}ld", v33, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10001C6D8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_10001CA20(v12, v13))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    LODWORD(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v17[0] = *v10;
    v17[1] = v11;
    v18 = v9;
    sub_10001CA34(v17, v14);
    sub_1000446A0(v14, v17);
    v12 = v15;
    v13 = v16;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001C7F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10001C858(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    __chkstk_darwin(a1, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10001CA90(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_10001CE58(v13, v7, v3);

  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10001C9B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001C9CC(a1, a2);
  }

  return a1;
}

uint64_t sub_10001C9CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001CA20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A80(a1, a2);
  }

  return a1;
}

uint64_t sub_10001CA90(unint64_t *a1, uint64_t a2, void *a3)
{
  v44 = a2;
  v45 = a1;
  v54 = sub_100003F6C(&qword_1000B81F8, &unk_100080D28);
  v4 = *(*(v54 - 8) + 64);
  v6 = __chkstk_darwin(v54, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v53 = &v43 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11, v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v18 = 0;
  v55 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v51 = v20;
  v52 = v15;
  v48 = (v15 + 8);
  v49 = v15 + 16;
  v50 = v25;
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v57 = (v24 - 1) & v24;
LABEL_11:
    v29 = v26 | (v18 << 6);
    v30 = v55;
    v31 = *(v52 + 16);
    v31(v17, v55[6] + *(v52 + 72) * v29, v11);
    v32 = v30[7];
    v47 = v29;
    v56 = *(v32 + 16 * v29);
    v33 = v53;
    v31(v53, v17, v11);
    v34 = v54;
    *(v33 + *(v54 + 48)) = v56;
    sub_10001CED0(v33, v8);
    v35 = &v8[*(v34 + 48)];
    v36 = *v35;
    v37 = *(v35 + 1);
    swift_retain_n();
    swift_retain_n();

    v38 = v8;
    Strong = swift_weakLoadStrong();

    sub_10001CF40(v33);
    if (Strong)
    {

      v41 = *v48;
      (*v48)(v38, v11);

      result = (v41)(v17, v11);
      *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v42 = __OFADD__(v46++, 1);
      v8 = v38;
      v25 = v50;
      v20 = v51;
      v24 = v57;
      if (v42)
      {
        __break(1u);
        return sub_10005308C(v45, v44, v46, v55);
      }
    }

    else
    {
      v40 = *v48;
      (*v48)(v38, v11);

      result = (v40)(v17, v11);
      v8 = v38;
      v25 = v50;
      v20 = v51;
      v24 = v57;
    }
  }

  v27 = v18;
  while (1)
  {
    v18 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return sub_10005308C(v45, v44, v46, v55);
    }

    v28 = v20[v18];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v57 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10001CE58(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10001CA90(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10001CED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B81F8, &unk_100080D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001CF40(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B81F8, &unk_100080D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001CFA8()
{
  result = qword_1000B80C8;
  if (!qword_1000B80C8)
  {
    type metadata accessor for AgentActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B80C8);
  }

  return result;
}

uint64_t sub_10001D000()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F618;

  return sub_10001B974(a1, v4, v5, v7, v6);
}

uint64_t sub_10001D108()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D140()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001D204(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10001BE64(a1, v4, v5);
}

uint64_t sub_10001D2BC()
{
  [*(v0 + 16) releaseTransaction];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001D328(uint64_t a1)
{
  v3 = *(v1 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10001D34C, 0, 0);
}

uint64_t sub_10001D34C()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) acquireAssessmentModeTransaction];
  v1[3] = &type metadata for AEAOSTransactionDeactivation;
  v1[4] = &off_1000A7820;
  v3 = swift_allocObject();
  *v1 = v3;
  v3[2] = 0xD00000000000002ALL;
  v3[3] = 0x80000001000888D0;
  v3[4] = 5;
  v3[5] = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001D41C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D4C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10001D510(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for URL();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v23 = _swiftEmptyArrayStorage;
  sub_10004A97C(0, v11, 0);
  v12 = v23;
  v18 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v14 = *i;
    v22[0] = *(i - 1);
    v22[1] = v14;

    v20(v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v23 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_10004A97C(v15 > 1, v16 + 1, 1);
      v12 = v23;
    }

    v12[2] = v16 + 1;
    (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v10, v19);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D6DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.deletingLastPathComponent()();
  v7 = *(v0 + 16);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v15 = 0;
  LODWORD(v7) = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v15];

  if (v7)
  {
    v11 = v15;
    Data.write(to:options:)();
  }

  else
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v2 + 8))(v6, v1);
}

id sub_10001D88C()
{
  v1 = type metadata accessor for CocoaError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (&v15 - v6);
  v8 = *(v0 + 16);
  URL._bridgeToObjectiveC()(v6);
  v10 = v9;
  v15 = 0;
  v11 = [v8 removeItemAtURL:v9 error:&v15];

  if (v11)
  {
    return v15;
  }

  v13 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_10001DF10();
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (*(v2 + 8))(v7, v1);
  if (v14)
  {
  }

  return result;
}

void *sub_10001DA3C(uint64_t a1)
{
  v3 = *(v1 + 16);
  URL.path.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 enumeratorAtPath:v4];

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [v5 allObjects];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_10001DB70(v7);

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v9, v10);
  v13[2] = a1;
  v11 = sub_10001D510(sub_10001DEDC, v13, v8);

  return v11;
}

void *sub_10001DB70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10004A8CC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000C6FC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10004A8CC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10001DC84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10001DCE0()
{
  v1 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues;
  v4 = type metadata accessor for URLResourceValues();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAConcreteFileSystemPrimitives.ConcreteURLResourceValues()
{
  result = qword_1000B83B0;
  if (!qword_1000B83B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DE10()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for URLResourceValues();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001DEDC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  return URL.appendingPathComponent(_:)();
}

unint64_t sub_10001DF10()
{
  result = qword_1000B8498;
  if (!qword_1000B8498)
  {
    type metadata accessor for CocoaError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8498);
  }

  return result;
}

uint64_t sub_10001DFB0()
{
  v0 = type metadata accessor for Logger();
  sub_10001E028(v0, qword_1000BC548);
  sub_10000C370(v0, qword_1000BC548);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10001E028(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10001E0B8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10001E028(v3, a2);
  sub_10000C370(v3, a2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001E12C()
{
  v0 = type metadata accessor for Logger();
  sub_10001E028(v0, qword_1000BC578);
  sub_10000C370(v0, qword_1000BC578);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001E1A4()
{
  v0 = type metadata accessor for Logger();
  sub_10001E028(v0, qword_1000BC590);
  sub_10000C370(v0, qword_1000BC590);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

id sub_10001E21C()
{
  [*&v0[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10001E324(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_xpc] = a1;
  *&v2[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_sessionManager] = a2;
  swift_unknownObjectRetain();

  v4 = [a1 makeActiveRestrictionUUIDFetchingListener];
  *&v2[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener] = v4;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_XPCListener];
  v7 = v5;
  [v6 setDelegate:v7];

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_10001E480()
{
  v0 = sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PassthroughSubject.init()();
  sub_10001E620();
  v3 = Publisher.eraseToAnyPublisher()();

  return v3;
}

unint64_t sub_10001E620()
{
  result = qword_1000B8548;
  if (!qword_1000B8548)
  {
    sub_100004B50(&qword_1000B8540, &qword_100080FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8548);
  }

  return result;
}

id sub_10001E684(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC15assessmentagent39AEAActiveRestrictionUUIDFetchingService_xpc) connectionCanFetchActiveRestrictionUUIDs:a1];
  if (v4)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC518);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring new connection for reading published active restriction UUIDs…", v8, 2u);
    }

    v9 = [objc_allocWithZone(AEActiveRestrictionUUIDFetchingXPCInterfaceFactory) init];
    v10 = [v9 makeInterface];

    [a1 setExportedInterface:v10];
    [a1 setExportedObject:v2];
    v11 = &selRef_resume;
  }

  else
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C370(v12, qword_1000BC518);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid active restriction reader. Invalidating connection.", v15, 2u);
    }

    v11 = &selRef_invalidate;
  }

  [a1 *v11];
  return v4;
}

uint64_t sub_10001E8C0(Swift::Int a1, Swift::Int a2)
{
  swift_beginAccess();

  sub_100044308(&v8, a1, a2);
  swift_endAccess();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  type metadata accessor for AEABlockCancelable();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10001EB24;
  *(v6 + 24) = v5;

  return v6;
}

uint64_t sub_10001E9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_100039CB8(a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10001EA50()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10001EAAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EAE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_10001EB30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001EB44(uint64_t a1, int a2)
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

uint64_t sub_10001EB8C(uint64_t result, int a2, int a3)
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

uint64_t sub_10001EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001ECD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001ED98()
{
  result = type metadata accessor for AEAParticipant.SecurityInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10001EE1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001EE30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10001EE78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10001EFB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001F068()
{
  sub_10001F0FC();
  if (v0 <= 0x3F)
  {
    sub_1000059E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001F0FC()
{
  if (!qword_1000B8718)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B8718);
    }
  }
}

__n128 sub_10001F15C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001F178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001F1C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10001F230(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10001F2F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AEAParticipant.SecurityInfo(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001F3B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F3EC()
{
  result = sub_100022884(319, &qword_1000B87B8, &off_1000A4EB8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AEAParticipant.SecurityInfo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F488()
{
  v1 = v0;
  _StringGuts.grow(_:)(22);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_100005A3C(v1, v1[3]);
  v4._countAndFlagsBits = (*(v3 + 48))(v2, v3);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_100005A3C(v1, v1[3]);
  v13 = (*(v7 + 40))(v6, v7) >> 16;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x756769666E6F6320;
  v9._object = 0xEF3A6E6F69746172;
  String.append(_:)(v9);
  v11 = *(v0 + 40);
  v12 = *(v0 + 41);
  v14 = *(v0 + 48);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

Swift::Int sub_10001F5F0()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_10001F648()
{
  v1 = *(v0 + 32);
  sub_100005A3C(v0, *(v0 + 24));
  v2 = *(v1 + 8);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = Bool.hashValue.getter();
  Hasher._combine(_:)(v5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = NSObject.hashValue.getter();

  Hasher._combine(_:)(v7);
}

Swift::Int sub_10001F6F4()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001F748@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_100005A3C(v1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_10001F7AC()
{
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10001F804()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_10001F83C()
{
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  [*v0 processIdentifier];
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4;
}

void sub_10001F8C4(uint64_t *a1@<X8>)
{
  v3 = [*v1 dataRepresentation];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int sub_10001F91C()
{
  Hasher.init(_seed:)();
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.hash(into:)();
  sub_100005A80(v2, v4);
  return Hasher._finalize()();
}

uint64_t sub_10001F9A4()
{
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.hash(into:)();

  return sub_100005A80(v2, v4);
}

Swift::Int sub_10001FA20()
{
  Hasher.init(_seed:)();
  v1 = [*v0 dataRepresentation];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  Data.hash(into:)();
  sub_100005A80(v2, v4);
  return Hasher._finalize()();
}

uint64_t sub_10001FAA4(uint64_t *a1, uint64_t *a2)
{
  sub_100022884(0, &qword_1000B8878, NSObject_ptr);
  v4 = *a1;
  v5 = *a2;
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_10001FB44()
{
  result = qword_1000B87F8;
  if (!qword_1000B87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B87F8);
  }

  return result;
}

uint64_t sub_10001FB98(uint64_t a1)
{
  *(a1 + 8) = sub_10001FC1C(&qword_1000B8800, type metadata accessor for AEAParticipant.Process);
  result = sub_10001FC1C(&qword_1000B8808, type metadata accessor for AEAParticipant.Process);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001FC1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001FC68()
{
  result = qword_1000B8810;
  if (!qword_1000B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8810);
  }

  return result;
}

void sub_10001FCBC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v14 - v10;
  Hasher._combine(_:)(*v0);
  if (*(v0 + 16))
  {
    v12 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v13 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  sub_100019D8C(v0 + *(v13 + 24), v11, &qword_1000B7620, &qword_100081CE0);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    Hasher._combine(_:)(1u);
    sub_10001FC1C(&qword_1000B8860, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v6, v1);
  }
}

uint64_t sub_10001FEDC()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  result = (*(v2 + 8))(v6, v1);
  if (v11 >> 60 != 15)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001FFF0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v1;
}

uint64_t sub_100020040@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 8);
  v9 = *(v1 + 16);
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;
  result = (*(v4 + 8))(v8, v3);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a1 = v11;
    a1[1] = v13;
  }

  return result;
}

Swift::Int sub_100020140()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  result = (*(v2 + 8))(v6, v1);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.hash(into:)();
    sub_10001CA20(v9, v11);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_10002026C()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  v7 = *(v0 + 16);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  result = (*(v2 + 8))(v6, v1);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.hash(into:)();
    return sub_10001CA20(v9, v11);
  }

  return result;
}

Swift::Int sub_100020384()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  result = (*(v2 + 8))(v6, v1);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.hash(into:)();
    sub_10001CA20(v9, v11);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t sub_1000204B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000204E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100020548()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100020580()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000205E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

Swift::Int sub_100020640()
{
  Hasher.init(_seed:)();
  sub_10001FCBC();
  return Hasher._finalize()();
}

Swift::Int sub_100020684()
{
  Hasher.init(_seed:)();
  sub_10001FCBC();
  return Hasher._finalize()();
}

unint64_t sub_1000206C4()
{
  result = sub_100021EC0(_swiftEmptyArrayStorage);
  word_1000BC5A8 = 1;
  qword_1000BC5B0 = result;
  return result;
}

Swift::Int sub_1000206F8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_10002076C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = Bool.hashValue.getter();
  Hasher._combine(_:)(v3);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = NSObject.hashValue.getter();

  Hasher._combine(_:)(v5);
}

Swift::Int sub_1000207E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100020858(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  v4 = *(a1 + 1);
  sub_100022884(0, &qword_1000B8878, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

unint64_t sub_100020934()
{
  result = qword_1000B8818;
  if (!qword_1000B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8818);
  }

  return result;
}

unint64_t sub_1000209D4()
{
  result = qword_1000B8828;
  if (!qword_1000B8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8828);
  }

  return result;
}

uint64_t sub_100020A70(uint64_t a1)
{
  *(a1 + 8) = sub_10001FC1C(&qword_1000B8838, type metadata accessor for AEAParticipant.AuxiliaryProcess);
  result = sub_10001FC1C(&qword_1000B8840, type metadata accessor for AEAParticipant.AuxiliaryProcess);
  *(a1 + 16) = result;
  return result;
}

Swift::Int sub_100020AF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100020B90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_100020C0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100020CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        v9 = v2 == v6 && v3 == v5;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v4 ^ v7 ^ 1u;
        }
      }
    }

    else if (!v5)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_100020D54()
{
  result = qword_1000B8848;
  if (!qword_1000B8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8848);
  }

  return result;
}

unint64_t sub_100020DD4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100021128(a1, v4);
}

unint64_t sub_100020E18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10001FC1C(&qword_1000B88A0, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000211F0(a1, v5);
}

unint64_t sub_100020EB0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(a1 + 32) & 1);
  v8 = Hasher._finalize()();

  return sub_1000213B0(a1, v8);
}

uint64_t sub_100020F98(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_10002102C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000218E0(a1, v4);
}

unint64_t sub_100021070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100021128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100022828(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100010B30(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000211F0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_10001FC1C(&qword_1000B88A8, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1000213B0(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v8 = *a1;
    v7 = a1[1];
    v9 = a1[3];
    v18 = a1[2];
    v19 = *(a1 + 32);
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 40 * v5;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *v11 == v8 && *(v11 + 8) == v7;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v12)
        {
          if (v9)
          {
            v16 = v13 == v18 && v12 == v9;
            if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
LABEL_4:
              if (((v14 ^ v19) & 1) == 0)
              {
                return v5;
              }
            }
          }
        }

        else if (!v9)
        {
          goto LABEL_4;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000214E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_10001C9CC(v17, v16);
          sub_100043B30(v45, v9, v8, &v44);
          sub_100005A80(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_10001C9CC(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_10001C9CC(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100043B30(v34, a1, a2, v45);
        sub_100005A80(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_10001C9CC(v17, v16);
      sub_100043B30(v45, v9, v8, &v44);
      sub_100005A80(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1000218E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000219B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_100005A3C(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v8 = v7;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  sub_100005A3C(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v13 = v12;
  LOBYTE(v10) = sub_10002D0C4(v6, v8, v11, v12);
  sub_100005A80(v11, v13);
  sub_100005A80(v6, v8);
  if ((v10 & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v15 = *(a2 + 48);
  v16 = *(a1 + 48);
  sub_100022884(0, &qword_1000B8878, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;
  LOBYTE(v15) = static NSObject.== infix(_:_:)();

  return v15 & 1;
}

BOOL sub_100021B34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v30 - v13;
  v15 = sub_100003F6C(&qword_1000B8868, &qword_100081578);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15, v17);
  v20 = &v30 - v19;
  if (*a1 != *a2)
  {
    return 0;
  }

  v22 = *(a1 + 2);
  v23 = *(a2 + 2);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = v18;
    if ((*(a1 + 1) != *(a2 + 1) || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v24 = v18;
    if (v23)
    {
      return 0;
    }
  }

  v25 = *(type metadata accessor for AEAParticipant.SecurityInfo(0) + 24);
  v26 = *(v24 + 48);
  sub_100019D8C(&a1[v25], v20, &qword_1000B7620, &qword_100081CE0);
  sub_100019D8C(&a2[v25], &v20[v26], &qword_1000B7620, &qword_100081CE0);
  v27 = *(v5 + 48);
  if (v27(v20, 1, v4) == 1)
  {
    if (v27(&v20[v26], 1, v4) == 1)
    {
      sub_100019B28(v20, &qword_1000B7620, &qword_100081CE0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_100019D8C(v20, v14, &qword_1000B7620, &qword_100081CE0);
  if (v27(&v20[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
LABEL_16:
    sub_100019B28(v20, &qword_1000B8868, &qword_100081578);
    return 0;
  }

  (*(v5 + 32))(v9, &v20[v26], v4);
  sub_10001FC1C(&qword_1000B8870, &type metadata accessor for URL);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v5 + 8);
  v29(v9, v4);
  v29(v14, v4);
  sub_100019B28(v20, &qword_1000B7620, &qword_100081CE0);
  return (v28 & 1) != 0;
}

unint64_t sub_100021EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8850, &qword_100081568);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019D8C(v4, &v13, &qword_1000B8858, &qword_100081570);
      v5 = v13;
      v6 = v14;
      result = sub_100020F98(v13, v14, &String.hash(into:), sub_100021070);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010B20(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100022018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002207C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&unk_1000B88D0, &qword_1000815B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019D8C(v4, v13, &qword_1000B7CE8, &unk_100080780);
      result = sub_100020DD4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100010B20(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000221B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B88C0, &qword_1000815B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100020F98(v5, v6, &String.hash(into:), sub_100021070);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100022304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100003F6C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100020F98(v7, v8, &String.hash(into:), sub_100021070);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100022428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8880, &unk_100081580);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_100006174(v7, v8, v9);
      result = sub_100020F98(v5, v6, &String.hash(into:), sub_100021070);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100022574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v7 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 16);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;
      *&v20 = *(i - 6);
      *(&v20 + 1) = v5;
      *&v21 = v7;
      *(&v21 + 1) = v6;
      v22 = v8;

      result = sub_100020EB0(&v20);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 40 * result;
      v15 = v21;
      *v14 = v20;
      *(v14 + 16) = v15;
      *(v14 + 32) = v22;
      v16 = v3[7] + 16 * result;
      *v16 = v9;
      *(v16 + 1) = v10;
      *(v16 + 8) = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000226C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B8890, &qword_100081590);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019D8C(v4, v14, &qword_1000B8898, &qword_100081598);
      result = sub_100020F98(*&v14[0], *(&v14[0] + 1), &Data.hash(into:), sub_1000214E0);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v14[0];
      v7 = v3[7] + 56 * result;
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[3];
      *(v7 + 48) = v15;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      *v7 = v8;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100022884(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000228D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 2;
  }

  v5 = sub_100020DA8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 2;
  }

  sub_10000C6FC(*(a4 + 56) + 32 * v5, v10);
  sub_100005C1C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v7 = [v9 BOOLValue];

  return v7;
}

id sub_100022974()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15assessmentagent8AEAAgent_services];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *&v0[OBJC_IVAR____TtC15assessmentagent8AEAAgent_services];

    do
    {
      sub_10000859C(v4, v11);
      v6 = v12;
      v7 = v13;
      sub_100005A3C(v11, v12);
      (*(v7 + 24))(v6, v7);
      sub_100003FB4(v11);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  v8 = *&v0[OBJC_IVAR____TtC15assessmentagent8AEAAgent_sigtermSourceSignal];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AEAAgent();
  return objc_msgSendSuper2(&v10, "dealloc");
}

id sub_100022B38(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_languagePreferencesChangedObservation] = 0;
  v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_shouldKillAgentAfterSessionEnds] = 0;
  *&v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_cancellables] = &_swiftEmptySetSingleton;
  sub_100023F10(a1, &v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_args]);
  type metadata accessor for AEATaskQueue();
  swift_allocObject();
  v4 = sub_10005C69C();
  *&v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskQueue] = v4;
  v5 = &v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskSource];
  sub_10000859C((a1 + 7), &v1[OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskSource]);
  v6 = a1[12];
  sub_10000859C((a1 + 13), v5 + 48);
  *(v5 + 40) = v6;
  v8 = a1[20];
  v7 = a1[21];
  sub_100023F48(v5, v20);

  v9 = v8(v20, v4);

  sub_100023D58(v20);
  *&v2[OBJC_IVAR____TtC15assessmentagent8AEAAgent_services] = v9;
  sub_100023F10(a1, v20);
  v10 = swift_allocObject();
  v11 = v20[9];
  v10[9] = v20[8];
  v10[10] = v11;
  v10[11] = v20[10];
  v12 = v20[5];
  v10[5] = v20[4];
  v10[6] = v12;
  v13 = v20[7];
  v10[7] = v20[6];
  v10[8] = v13;
  v14 = v20[1];
  v10[1] = v20[0];
  v10[2] = v14;
  v15 = v20[3];
  v10[3] = v20[2];
  v10[4] = v15;
  v16 = sub_10003B6A0(sub_10002400C, v10);

  *&v2[OBJC_IVAR____TtC15assessmentagent8AEAAgent_sigtermSourceSignal] = v16;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for AEAAgent();
  v17 = objc_msgSendSuper2(&v19, "init");
  sub_100023D28(a1);
  return v17;
}

void sub_100022D10()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received SIGINT. Tearing down.", v3, 2u);
  }

  exit(2);
}

void sub_100022DE0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args);
  v13 = *sub_100005A3C((v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args), *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args + 24));
  v14 = sub_10006AD78();
  v15 = [v14 enterSandbox];

  v16 = [v15 value];
  if (v16)
  {
    v17 = [v16 BOOLValue];

    if (v17)
    {
      sub_1000237D4();
    }

    v58 = v8;
    v59 = v3;
    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v18 = qword_1000BC5B8;
    v66 = sub_100075AE0;
    v67 = 0;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_100023CC8;
    v65 = &unk_1000A7D18;
    v19 = _Block_copy(&aBlock);

    xpc_set_event_stream_handler("com.apple.notifyd.matching", v18, v19);
    _Block_release(v19);
    v66 = sub_100075C80;
    v67 = 0;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v56 = &v64;
    v64 = sub_100023CC8;
    v65 = &unk_1000A7D40;
    v20 = _Block_copy(&aBlock);

    v49 = v18;
    xpc_set_event_stream_handler("com.apple.fsevents.matching", v18, v20);
    _Block_release(v20);
    v21 = v12[18];
    v22 = v12[19];
    v50 = v12;
    v57 = v1;
    v51 = v21(v1 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskSource);
    v23 = *(v51 + 16);
    if (v23)
    {
      v24 = v2;
      v25 = v11;
      v54 = *(v57 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_taskQueue);
      v26 = (v51 + 32);
      v53 = (v59 + 8);
      v52 = (v58 + 8);
      v55 = v7;
      do
      {
        v27 = *v26++;
        v28 = v54;
        v58 = *(v54 + 16);
        v59 = v23;
        v29 = swift_allocObject();
        v29[2] = v28;
        v29[3] = v27;
        v29[4] = 0;
        v29[5] = 0;
        v66 = sub_100023E14;
        v67 = v29;
        aBlock = _NSConcreteStackBlock;
        v63 = 1107296256;
        v64 = sub_100063354;
        v65 = &unk_1000A7D90;
        v30 = _Block_copy(&aBlock);
        swift_retain_n();

        static DispatchQoS.unspecified.getter();
        *&v60[0] = &_swiftEmptyArrayStorage;
        sub_10000BD9C();
        sub_100003F6C(&unk_1000B7860, &qword_100080450);
        sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v31 = v55;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        (*v53)(v6, v24);
        (*v52)(v25, v31);

        v23 = v59 - 1;
      }

      while (v59 != 1);
    }

    v32 = v57;
    v33 = *(v57 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_services);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v33 + 32;
      do
      {
        sub_10000859C(v35, &aBlock);
        v36 = v65;
        v37 = v66;
        sub_100005A3C(&aBlock, v65);
        v61 = (*(v37 + 5))(v36, v37);
        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10000859C(&aBlock, v60);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        sub_100008748(v60, v39 + 24);
        v40 = swift_allocObject();
        *(v40 + 16) = sub_100023E9C;
        *(v40 + 24) = v39;
        sub_100003F6C(&qword_1000B8968, &unk_100081640);
        sub_100004EE0(qword_1000B8970, &qword_1000B8968, &unk_100081640);
        v32 = v57;
        Publisher<>.sink(receiveValue:)();

        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v41 = v65;
        v42 = v66;
        sub_100005A3C(&aBlock, v65);
        (*(v42 + 1))(v41, v42);
        sub_100003FB4(&aBlock);
        v35 += 40;
        --v34;
      }

      while (v34);
    }

    v43 = *(*sub_100005A3C(v50, v50[3]) + 208);
    swift_unknownObjectRetain();
    v44 = String._bridgeToObjectiveC()();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = sub_100023F08;
    v67 = v45;
    aBlock = _NSConcreteStackBlock;
    v63 = 1107296256;
    v64 = sub_100063354;
    v65 = &unk_1000A7E30;
    v46 = _Block_copy(&aBlock);

    v47 = [v43 observeSystemNotificationWithName:v44 onQueue:v49 withHandler:v46];
    swift_unknownObjectRelease();
    _Block_release(v46);

    v48 = *(v32 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_languagePreferencesChangedObservation);
    *(v32 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_languagePreferencesChangedObservation) = v47;
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100023630()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received filepath keepalive event", v2, 2u);
  }
}

void sub_100023718()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15assessmentagent8AEAAgent_shouldKillAgentAfterSessionEnds) == 1)
    {
      sub_100023A10();
    }
  }
}

void sub_100023780()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100023A10();
  }
}

id sub_1000237D4()
{
  result = *(*sub_100005A3C((v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args), *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_args + 24)) + 16);
  if (result)
  {
    v14 = 0;
    v2 = [result enterSandboxWithError:&v14];
    v3 = v14;
    if (!v2)
    {
      v4 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000B6420 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C370(v5, qword_1000BC518);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136446210;
        swift_getErrorValue();
        v10 = sub_100067820(v13);
        v12 = sub_100043D60(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to enter sandbox. Error: %{public}s", v8, 0xCu);
        sub_100003FB4(v9);
      }

      exit(1);
    }

    return v3;
  }

  return result;
}

void sub_100023A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_services);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_6:
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_100023C60(v10);
    exit(0);
  }

  v3 = 0;
  v4 = v1 + 32;
  while (v3 < *(v1 + 16))
  {
    sub_10000859C(v4, &v7);
    v5 = v8;
    v6 = v9;
    sub_100005A3C(&v7, v8);
    if ((*(v6 + 32))(v5, v6))
    {
      sub_100008748(&v7, v10);
      sub_100023C60(v10);
      *(v0 + OBJC_IVAR____TtC15assessmentagent8AEAAgent_shouldKillAgentAfterSessionEnds) = 1;
      return;
    }

    ++v3;
    sub_100003FB4(&v7);
    v4 += 40;
    if (v2 == v3)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

__n128 sub_100023B68(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100023B9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023BE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023C60(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B8948, &qword_100081638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023CC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100023DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023DC4()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100023E24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023E5C()
{
  v1 = *(v0 + 16);

  sub_100003FB4((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100023EA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100023FA4()
{
  sub_100003FB4(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 9);
  v2 = v0[14];

  sub_100003FB4(v0 + 15);
  v3 = v0[21];

  v4 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_10002402C(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 48);
  v11[0] = *(a2 + 16);
  v11[1] = a3;
  v11[2] = v6;
  v12 = a4;
  v13 = *(a2 + 32);
  v14 = v7;
  v8 = _s17AEADeltaPublisherV17DeltaSubscriptionCMa();
  v9 = sub_1000268E8(v4, a1);
  v12 = v8;
  *&v13 = swift_getWitnessTable();
  v11[0] = v9;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_100003FB4(v11);
}

uint64_t sub_1000241F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  if ((static Array<A>.== infix(_:_:)() & 1) == 0 || (static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);

  return static Array<A>.== infix(_:_:)();
}

uint64_t *sub_1000243B0()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));

  v3 = *(*v0 + 136);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(*v0 + 144);
  v7 = *(v1 + 88);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  sub_1000086E0(v0 + *(*v0 + 168));
  v9 = *(v0 + *(*v0 + 176));

  return v0;
}

uint64_t sub_1000244F8()
{
  v0 = *sub_1000243B0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100024564()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(v1);
  sub_1000245E8(v0);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000245E8(uint64_t a1)
{
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v38 = &v30 - v10;
  v11 = v3[11];
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12, v14);
  v18 = &v30 - v17;
  v19 = v3[20];
  if ((*(a1 + v19) & 1) == 0)
  {
    v31 = v16;
    v32 = result;
    v33 = v1;
    *(a1 + v19) = 1;
    v20 = *(*a1 + 168);
    swift_beginAccess();
    sub_100008670(a1 + v20, &v35);
    if (*(&v36 + 1))
    {
      sub_10000859C(&v35, v34);
      sub_1000086E0(&v35);
      v30 = v7;
      v21 = v34[4];
      sub_100005A3C(v34, v34[3]);
      v22 = *(v21 + 8);
      v7 = v30;
      dispatch thunk of Cancellable.cancel()();
      sub_100003FB4(v34);
    }

    else
    {
      sub_1000086E0(&v35);
    }

    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    swift_beginAccess();
    sub_100008600(&v35, a1 + v20);
    swift_endAccess();
    (*(*(v11 - 8) + 56))(v18, 1, 1, v11);
    v23 = *(*a1 + 144);
    swift_beginAccess();
    (*(v31 + 40))(a1 + v23, v18, v32);
    swift_endAccess();
    v24 = v38;
    (*(*(v5 - 8) + 56))(v38, 1, 1, v5);
    v25 = *(*a1 + 136);
    swift_beginAccess();
    (*(v7 + 40))(a1 + v25, v24, v6);
    swift_endAccess();
    v26 = *(*a1 + 176);
    swift_beginAccess();
    v27 = v4[16];
    v28 = *(v4[14] + 8);
    v29 = v4[12];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.removeAll(keepingCapacity:)(0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100024A78(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v3);
  sub_100024B1C(v1, a1, &v5);
  os_unfair_lock_unlock(v3);
  v5();
}

uint64_t sub_100024B1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  if ((*(result + *(*result + 160)) & 1) == 0)
  {
    v5 = *(*result + 168);
    v6 = result;
    swift_beginAccess();
    sub_100008670(v6 + v5, &v8);
    if (v9)
    {
      sub_100008748(&v8, v10);
      sub_100008748(v10, &v8);
      v7 = swift_allocObject();
      result = sub_100008748(&v8, v7 + 16);
      *(v7 + 56) = a2;
      *a3 = sub_100008798;
      a3[1] = v7;
      return result;
    }

    result = sub_1000086E0(&v8);
  }

  *a3 = Publishers.AEACombineLatestMany.init(_:);
  a3[1] = 0;
  return result;
}

void sub_100024C50(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v3);
  sub_100024CDC(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100024CDC(uint64_t result, uint64_t a2)
{
  if ((*(result + *(*result + 160)) & 1) == 0)
  {
    v2 = result;
    sub_10000859C(a2, v4);
    v3 = *(*v2 + 168);
    swift_beginAccess();
    sub_100008600(v4, v2 + v3);
    return swift_endAccess();
  }

  return result;
}

void sub_100024D80(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(v3);
  sub_100024E0C(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100024E0C(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1, a2);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10, v13);
  v16 = &v19 - v15;
  if ((*(a1 + *(v3 + 160)) & 1) == 0)
  {
    v17 = *(v4 + 144);
    swift_beginAccess();
    (*(v11 + 16))(v16, a1 + v17, v10);
    if ((*(v6 + 48))(v16, 1, v5))
    {
      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      (*(v6 + 16))(v9, v16, v5);
      (*(v11 + 8))(v16, v10);
      v18 = *(v4 + 104);
      dispatch thunk of Subscriber.receive(completion:)();
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t (*sub_100025078(void (*a1)(char *, uint64_t)))@<X0>(uint64_t *a1@<X8>)
{
  v3 = *&v1[*(*v1 + 152)];
  os_unfair_lock_lock(v3);
  sub_100025118(v1, a1, &v5);
  os_unfair_lock_unlock(v3);
  v5(&v5);

  return v5;
}

uint64_t sub_100025118@<X0>(char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v40 = a3;
  v4 = *a1;
  v5 = *a1;
  v38 = a2;
  v39 = v5;
  v6 = *(v4 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v36 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v11, v16);
  result = __chkstk_darwin(v17, v18);
  v22 = &v36 - v21;
  v23 = sub_1000076C0;
  if (a1[*(v4 + 160)])
  {
    v24 = 0;
  }

  else
  {
    v37 = v20;
    v25 = *(v39 + 144);
    swift_beginAccess();
    (*(v8 + 16))(v13, &a1[v25], v7);
    if ((*(v14 + 48))(v13, 1, v6) == 1)
    {
      result = (*(v8 + 8))(v13, v7);
      v24 = 0;
      v23 = sub_1000076C0;
    }

    else
    {
      v26 = *(v14 + 32);
      v26(v22, v13, v6);
      v38 = sub_100025464(v38);
      v28 = v27;
      v30 = v29;
      v31 = v37;
      v26(v37, v22, v6);
      v32 = (*(v14 + 80) + 72) & ~*(v14 + 80);
      v24 = swift_allocObject();
      v33 = v39;
      *(v24 + 16) = *(v39 + 80);
      *(v24 + 24) = v6;
      *(v24 + 32) = *(v33 + 96);
      *(v24 + 40) = *(v33 + 104);
      *(v24 + 48) = *(v33 + 112);
      *(v24 + 64) = *(v33 + 128);
      result = (v26)(v24 + v32, v31, v6);
      v34 = (v24 + ((v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v34 = v38;
      v34[1] = v28;
      v34[2] = v30;
      v23 = sub_100026A04;
    }
  }

  v35 = v40;
  *v40 = v23;
  v35[1] = v24;
  return result;
}

uint64_t sub_100025464(void (*a1)(char *, uint64_t))
{
  v122 = a1;
  v102 = *v1;
  v2 = v102[16];
  v117 = *(v102[14] + 8);
  v3 = v102[12];
  v4 = v102[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v100 = &v95 - v10;
  v99 = *(AssociatedTypeWitness - 8);
  v11 = *(v99 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v121 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v116 = &v95 - v16;
  v17 = swift_checkMetadataState();
  v119 = *(v17 - 8);
  v18 = *(v119 + 64);
  v20 = __chkstk_darwin(v17, v19);
  v103 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20, v22);
  v101 = &v95 - v24;
  __chkstk_darwin(v23, v25);
  v27 = &v95 - v26;
  v115 = type metadata accessor for Optional();
  v112 = *(v115 - 8);
  v28 = *(v112 + 64);
  v30 = __chkstk_darwin(v115, v29);
  v114 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30, v32);
  v124 = &v95 - v34;
  __chkstk_darwin(v33, v35);
  v118 = &v95 - v36;
  v37 = swift_checkMetadataState();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  v113 = &v95 - v41;
  v120 = swift_getAssociatedTypeWitness();
  v98 = *(v120 - 8);
  v42 = *(v98 + 64);
  __chkstk_darwin(v120, v43);
  v45 = &v95 - v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = Dictionary.init()();
  v46 = *(*v1 + 176);
  swift_beginAccess();
  v97 = v1;
  v96 = v46;
  v129 = *(v1 + v46);

  v128 = Array.init()();
  v127 = Array.init()();
  v126 = Array.init()();
  (*(v38 + 16))(v113, v122, v37);
  v47 = v118;
  dispatch thunk of Sequence.makeIterator()();
  v48 = swift_getAssociatedConformanceWitness();
  v117 = v45;
  v113 = v48;
  dispatch thunk of IteratorProtocol.next()();
  v49 = v119;
  v51 = v119 + 48;
  v50 = *(v119 + 48);
  v52 = v50(v47, 1, v17);
  v125 = AssociatedTypeWitness;
  if (v52 != 1)
  {
    v59 = v49 + 32;
    v60 = *(v49 + 32);
    v61 = (v99 + 8);
    v107 = (v59 - 16);
    v62 = (v112 + 8);
    v104 = (v59 + 24);
    v112 = v2;
    v119 = v59;
    v111 = v51;
    v109 = v60;
    v110 = v50;
    v108 = (v99 + 8);
    v106 = (v59 - 24);
    v105 = v62;
    do
    {
      v60(v27, v47, v17);
      v70 = v116;
      v71 = v50;
      dispatch thunk of Identifiable.id.getter();
      v72 = v17;
      v74 = v124;
      v73 = v125;
      Dictionary.subscript.getter();
      v122 = *v61;
      v122(v70, v73);
      v75 = v74;
      v17 = v72;
      if (v71(v75, 1, v72) == 1)
      {
        v63 = v105;
        v64 = v115;
        (*v105)(v124, v115);
        v65 = v107;
        (*v107)(v103, v27, v17);
        type metadata accessor for Array();
        Array.append(_:)();
        v66 = v106;
      }

      else
      {
        v76 = v101;
        v60(v101, v124, v72);
        v77 = v102[15];
        v78 = dispatch thunk of static Equatable.== infix(_:_:)();
        v65 = v107;
        if ((v78 & 1) == 0)
        {
          (*v107)(v103, v27, v72);
          type metadata accessor for Array();
          Array.append(_:)();
        }

        v66 = v106;
        (*v106)(v76, v72);
        v64 = v115;
        v63 = v105;
      }

      v67 = v121;
      dispatch thunk of Identifiable.id.getter();
      v68 = v114;
      (*v65)(v114, v27, v17);
      (*v104)(v68, 0, 1, v17);
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      dispatch thunk of Identifiable.id.getter();
      Dictionary.removeValue(forKey:)();
      v61 = v108;
      v122(v67, v125);
      (*v63)(v68, v64);
      (*v66)(v27, v17);
      v47 = v118;
      dispatch thunk of IteratorProtocol.next()();
      v50 = v110;
      v69 = v110(v47, 1, v17);
      v60 = v109;
    }

    while (v69 != 1);
  }

  (*(v98 + 8))(v117, v120);
  v53 = v129;
  if ((v129 & 0xC000000000000001) != 0)
  {
    v54 = __CocoaDictionary.makeIterator()();
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v54 | 0x8000000000000000;
  }

  else
  {
    v79 = -1 << *(v129 + 32);
    v56 = ~v79;
    v55 = v129 + 64;
    v80 = -v79;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v57 = v81 & *(v129 + 64);
    v58 = v129;
  }

  v82 = (v99 + 56);
  v122 = v56;
  AssociatedConformanceWitness = v53;
  v83 = (v56 + 64) >> 6;
  v124 = (v99 + 16);
  v84 = (v99 + 32);

  v86 = 0;
  while ((v58 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.nextKey()())
    {
      v91 = v100;
LABEL_27:
      (*v82)(v91, 1, 1, v125);
      sub_100019F14();
      v93 = *(v97 + v96);
      *(v97 + v96) = v130;

      v94 = v128;

      return v94;
    }

    v92 = v100;
    v89 = v125;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    v91 = v92;
    swift_unknownObjectRelease();
LABEL_18:
    (*v82)(v91, 0, 1, v89);
    (*v84)(v121, v91, v89);
    type metadata accessor for Array();
    result = Array.append(_:)();
  }

  v90 = v86;
  v91 = v100;
  if (v57)
  {
    v87 = v86;
LABEL_17:
    v88 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v89 = v125;
    (*(v99 + 16))(v100, *(v58 + 48) + *(v99 + 72) * (v88 | (v87 << 6)), v125);
    goto LABEL_18;
  }

  while (1)
  {
    v87 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v87 >= v83)
    {
      goto LABEL_27;
    }

    v57 = *(v55 + 8 * v87);
    ++v90;
    if (v57)
    {
      v86 = v87;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002606C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000260B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000260C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100026170(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000261F8(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1000262C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

char *sub_100026320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v44 = a1;
  v4 = *v2;
  v49 = (*v2 + 104);
  v5 = v4[11];
  v48 = type metadata accessor for Optional();
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v48, v7);
  v45 = &v33 - v8;
  v9 = v4[10];
  v10 = type metadata accessor for Optional();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  __chkstk_darwin(v10, v12);
  v38 = &v33 - v13;
  v14 = v4[17];
  v15 = *(v9 - 8);
  v36 = *(v15 + 56);
  v36(&v3[v14], 1, 1, v9);
  v16 = *(*v3 + 144);
  v39 = v5;
  v17 = *(v5 - 8);
  v18 = *(v17 + 56);
  v35 = v17 + 56;
  v40 = v18;
  v18(&v3[v16], 1, 1, v5);
  v19 = *(*v3 + 152);
  v20 = swift_slowAlloc();
  *&v3[v19] = v20;
  *v20 = 0;
  v3[*(*v3 + 160)] = 0;
  v21 = &v3[*(*v3 + 168)];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v33 = *(*v3 + 176);
  v22 = v4[16];
  v41 = v4[14];
  v23 = *(v41 + 8);
  v37 = v4[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v34 = v22;
  swift_getAssociatedTypeWitness();
  swift_checkMetadataState();
  swift_getAssociatedConformanceWitness();
  *&v3[v33] = Dictionary.init()();
  v24 = v38;
  (*(v15 + 16))(v38, v44, v9);
  v36(v24, 0, 1, v9);
  v25 = *(*v3 + 136);
  swift_beginAccess();
  (*(v42 + 40))(&v3[v25], v24, v43);
  swift_endAccess();
  v26 = v45;
  v27 = v39;
  (*(v17 + 16))(v45, v47, v39);
  v40(v26, 0, 1, v27);
  v28 = *(*v3 + 144);
  swift_beginAccess();
  (*(v46 + 40))(&v3[v28], v26, v48);
  swift_endAccess();
  v55 = v3;
  v29 = v4[15];
  *&v30 = v37;
  *(&v30 + 1) = *v49;
  *&v31 = v9;
  *(&v31 + 1) = v27;
  v51 = v30;
  v50 = v31;
  v52 = v41;
  v53 = v29;
  v54 = v34;
  _s17AEADeltaPublisherV17DeltaSubscriptionCMa();
  swift_getWitnessTable();
  dispatch thunk of Publisher.receive<A>(subscriber:)();
  return v3;
}

char *sub_1000268E8(uint64_t a1, uint64_t a2)
{
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  v11 = *(v2 + 112);
  v12 = *(v2 + 128);
  v5 = _s17AEADeltaPublisherV17DeltaSubscriptionCMa();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_100026320(a1, a2);
}

uint64_t sub_10002695C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_100026A04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = (v1 + ((*(*(*(v1 + 24) - 8) + 64) + ((*(*(*(v1 + 24) - 8) + 80) + 72) & ~*(*(*(v1 + 24) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v4;
  v7 = *(v4 + 2);
  result = dispatch thunk of Subscriber.receive(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100026AB0()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100058E98();

  return sub_100026B2C(a1, a2);
}

uint64_t sub_100026B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026B9C(uint64_t a1, void *a2)
{
  v3 = sub_100005A3C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100026C48(uint64_t a1)
{
  v1 = *sub_100005A3C((a1 + 32), *(a1 + 56));
  sub_100022884(0, &unk_1000B8D60, SBSConnectedDisplayInfo_ptr);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

id sub_100026CF0()
{
  sub_100026FB8();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100026DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003F6C(&qword_1000B8D48, &qword_100081990);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v2[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler];
  *v10 = 0;
  v10[1] = 0;
  *&v2[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion] = 0;
  v11 = OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_streamMulticaster;
  *(&v25.receiver - v9) = 1;
  (*(v12 + 104))(&v25 - v9, enum case for CATAsyncStreamMulticaster.BufferingPolicy.bufferingNewest<A>(_:));
  v13 = sub_100003F6C(&qword_1000B8D50, &qword_100081998);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v2[v11] = CATAsyncStreamMulticaster.init(bufferingPolicy:)();
  v16 = *v10;
  v17 = v10[1];
  *v10 = a1;
  v10[1] = a2;

  sub_10000858C(v16);
  v18 = type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  v25.receiver = v3;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, "init");
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 registerMonitor:v21];

  v23 = *&v21[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion];
  *&v21[OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion] = v22;

  swift_unknownObjectRelease();
  return v21;
}

void sub_100026FB8()
{
  v1 = (v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler);
  v2 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler);
  v3 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_invalidationHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_10000858C(v2);
  v4 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion);
  if (v4)
  {
    *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_monitoringAssertion) = 0;
    [v4 invalidate];
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + OBJC_IVAR____TtCC15assessmentagent32AEAConcreteSpringBoardPrimitivesP33_045FAD156806D8E8B8D6866051B4907732AppRestrictionsMonitoringSession_streamMulticaster);
  CATAsyncStreamMulticaster.finish()();
}

uint64_t sub_100027304(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_100027328, 0, 0);
}

uint64_t sub_100027328()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[20];
  v5 = v1[19];
  *(v1[21] + 16) = 0;
  v6 = objc_opt_self();
  v1[14] = v5;
  v1[15] = v4;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100063354;
  v1[13] = &unk_1000A80D8;
  v7 = _Block_copy(v3);
  v1[22] = v7;
  v8 = v1[15];

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1000274C4;
  v9 = swift_continuation_init();
  v1[17] = sub_100003F6C(&qword_1000B8D40, &qword_100081988);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000276E8;
  v1[13] = &unk_1000A8100;
  v1[14] = v9;
  [v6 beginConfigurationSessionWithInvalidationHandler:v7 completion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_1000274C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100027658;
  }

  else
  {
    v3 = sub_1000275D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000275D4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];

  v4 = *(v1 + 16);
  *(v1 + 16) = v0[18];
  swift_unknownObjectRelease();
  _Block_release(v2);
  v5 = v0[1];
  v6 = v0[21];

  return v5(v6);
}

uint64_t sub_100027658()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  swift_willThrow();

  _Block_release(v1);
  v5 = v0[1];
  v6 = v0[23];

  return v5();
}

uint64_t sub_1000276E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100005A3C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000277C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_1000277EC, 0, 0);
}

uint64_t sub_1000277EC()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  if (v2)
  {
    if (v0[19])
    {
      v4 = v0[20];
      v3 = v0[21];
      v5 = v0[18];
      v6 = objc_allocWithZone(SBSHomeScreenConfiguration);
      swift_unknownObjectRetain();
      v7 = [v6 init];
      v8 = String._bridgeToObjectiveC()();
      [v7 setName:v8];

      v9 = sub_100027FAC(v4, v3);
      [v7 setLayout:v9];
    }

    else
    {
      v12 = *(v1 + 16);
      swift_unknownObjectRetain();
      v7 = 0;
    }

    v0[23] = v2;
    v0[24] = v7;
    v0[2] = v0;
    v0[3] = sub_1000279E8;
    v13 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A80B0;
    v0[14] = v13;
    [v2 applyConfiguration:v7 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000279E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_100027B60;
  }

  else
  {
    v3 = sub_100027AF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027AF8()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100027B60()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_100027BFC()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  v0[19] = v2;
  if (v2)
  {
    *(v1 + 16) = 0;
    v0[2] = v0;
    v0[3] = sub_100027D50;
    v3 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A8088;
    v0[14] = v3;
    [v2 endConfigurationSessionWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100027D50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_100027EC4;
  }

  else
  {
    v3 = sub_100027E60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027E60()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027EC4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_100027F38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_100027FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = objc_allocWithZone(SBSHomeScreenItemApplication);

      v9 = String._bridgeToObjectiveC()();
      [v8 initWithBundleIdentifier:v9];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  if (a2)
  {
    v11 = *(a2 + 16);
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v13 = (a2 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v16 = objc_allocWithZone(SBSHomeScreenItemApplication);

        v17 = String._bridgeToObjectiveC()();
        [v16 initWithBundleIdentifier:v17];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 += 2;
        --v11;
      }

      while (v11);
      v12 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v12 = 0;
  }

  sub_100022884(0, &qword_1000B8D30, SBSHomeScreenItem_ptr);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v12)
  {
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = [objc_allocWithZone(SBSHomeScreenConfigurationLayout) initWithItems:v19.super.isa dockItems:v20.super.isa];

  return v21;
}

uint64_t sub_1000281EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028204(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000282CC()
{
  v1 = [objc_allocWithZone(SBSExternalDisplayService) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100028404;
  v2 = swift_continuation_init();
  v0[17] = sub_100003F6C(&qword_1000B8D58, &qword_1000819A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100026C48;
  v0[13] = &unk_1000A8128;
  v0[14] = v2;
  [v1 getConnectedDisplayInfoWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100028404()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000284E4, 0, 0);
}

void sub_1000284E4()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v18 = *(v0 + 144);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = _swiftEmptyArrayStorage;
  p_base_props = &AEAConcreteMediaPrimitives.base_props;
  v21 = v1;
  v22 = v2;
  do
  {
    if (v4)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v7;
    if (([v7 isMirrored] & 1) == 0)
    {
      v9 = p_base_props;
      v10 = [v8 p_base_props[483]];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000726D4(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_1000726D4((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v16 = &v5[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      p_base_props = v9;
      v17 = [v8 v9[483]];
      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = String._bridgeToObjectiveC()();
      }

      [*(v23 + 152) setMirroringEnabled:1 forDisplay:v17];

      v1 = v21;
      v2 = v22;
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_21:
  v19 = *(v23 + 152);

  v20 = *(v23 + 8);

  v20(v5);
}

uint64_t sub_100028730()
{
  if (*(v0[19] + 16))
  {
    v1 = [objc_allocWithZone(SBSExternalDisplayService) init];
    v0[20] = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000288A4;
    v2 = swift_continuation_init();
    v0[17] = sub_100003F6C(&qword_1000B8D58, &qword_1000819A8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026C48;
    v0[13] = &unk_1000A8150;
    v0[14] = v2;
    [v1 getConnectedDisplayInfoWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000288A4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100028984, 0, 0);
}

void sub_100028984()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v14 = *(v0 + 144);
    }

    v15 = *(v0 + 144);
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v15;
    v2 = v16;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v19 = v1 & 0xC000000000000001;
  v4 = v1;
  do
  {
    if (v19)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = *(v0 + 152);
    v8 = [v5 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v0 + 80) = v9;
    *(v0 + 88) = v11;
    v12 = swift_task_alloc();
    *(v12 + 16) = v0 + 80;
    LOBYTE(v7) = sub_100028204(sub_100028B78, v12, v7);

    if (v7)
    {
      v13 = [v6 identifier];
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      [*(v0 + 160) setMirroringEnabled:0 forDisplay:v13];
    }

    ++v3;

    v1 = v4;
  }

  while (v2 != v3);
LABEL_16:
  v17 = *(v0 + 160);

  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_100028B78(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_100028C14(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v6 = sub_100003F6C(&qword_1000B91E8, &qword_100081CD8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v39 - v9;
  v43 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v11 = *(*(v43 - 8) + 64);
  v13 = __chkstk_darwin(v43, v12);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v39 = &v39 - v17;
  v40 = v16;
  v18 = a3 + 56;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a3 + 56);
  v22 = (v19 + 63) >> 6;
  v41 = (v16 + 48);
  v45 = a3;

  v24 = 0;
  v50 = _swiftEmptyArrayStorage;
  if (v21)
  {
LABEL_10:
    while (1)
    {
      v26 = *(v45 + 48) + 40 * (__clz(__rbit64(v21)) | (v24 << 6));
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      LODWORD(v26) = *(v26 + 32);
      v46[0] = v28;
      v46[1] = v27;
      v47 = v29;
      v48 = v30;
      v49 = v26;

      sub_10001C9B8(v29, v30);
      v44(v46);
      if (v4)
      {
        break;
      }

      v21 &= v21 - 1;
      v31 = v47;
      v32 = v48;

      sub_10001CA20(v31, v32);
      if ((*v41)(v10, 1, v43) == 1)
      {
        result = sub_100019B28(v10, &qword_1000B91E8, &qword_100081CD8);
        if (!v21)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v33 = v39;
        sub_10002C438(v10, v39, type metadata accessor for AEAParticipant.AuxiliaryProcess);
        sub_10002C438(v33, v42, type metadata accessor for AEAParticipant.AuxiliaryProcess);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100072948(0, v50[2] + 1, 1, v50);
        }

        v35 = v50[2];
        v34 = v50[3];
        if (v35 >= v34 >> 1)
        {
          v50 = sub_100072948(v34 > 1, v35 + 1, 1, v50);
        }

        v36 = v50;
        v50[2] = v35 + 1;
        result = sub_10002C438(v42, v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35, type metadata accessor for AEAParticipant.AuxiliaryProcess);
        if (!v21)
        {
          goto LABEL_6;
        }
      }
    }

    v37 = v47;
    v38 = v48;

    sub_10001CA20(v37, v38);

LABEL_19:

    return v50;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_19;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100028FE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100029054()
{
  v1 = v0;
  v52 = *v0;
  v2 = sub_100003F6C(&qword_1000B9188, &qword_100081CA0);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  __chkstk_darwin(v2, v4);
  v49 = v43 - v5;
  v6 = sub_100003F6C(&qword_1000B9190, &qword_100081CA8);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6, v8);
  v10 = v43 - v9;
  v11 = sub_100003F6C(&qword_1000B9198, &qword_100081CB0);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  __chkstk_darwin(v11, v13);
  v46 = v43 - v14;
  v15 = sub_100003F6C(&qword_1000B91A0, &qword_100081CB8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = v43 - v18;
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C370(v20, qword_1000BC548);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Resuming participant matching", v23, 2u);
  }

  v24 = v1[2];
  *&v54 = sub_10007C0EC();
  v43[1] = sub_100003F6C(&qword_1000B7BB8, &qword_100080470);
  v43[2] = sub_100004EE0(&qword_1000B7BC0, &qword_1000B7BB8, &qword_100080470);
  sub_100004EE0(&qword_1000B91A8, &qword_1000B91B0, &unk_1000856A0);
  Publisher<>.removeDuplicates()();

  sub_10000859C((v1 + 8), &v54);
  v25 = swift_allocObject();
  sub_100008748(&v54, v25 + 16);
  v26 = v52;
  *(v25 + 56) = v24;
  *(v25 + 64) = v26;
  v27 = &v19[*(v15 + 76)];
  *v27 = sub_10002C278;
  v27[1] = v25;
  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91B8, &qword_1000B91A0, &qword_100081CB8);
  swift_unknownObjectRetain();
  Publisher<>.sink(receiveValue:)();

  sub_100019B28(v19, &qword_1000B91A0, &qword_100081CB8);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  *&v54 = *(*(v1 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager_auxiliaryParticipantAggregator) + 16);
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  sub_100004EE0(&qword_1000B8210, &qword_1000B8200, &qword_100080D38);
  Publisher<>.removeDuplicates()();
  sub_100004EE0(&qword_1000B91C0, &qword_1000B9190, &qword_100081CA8);
  v28 = v45;
  v29 = Publisher.eraseToAnyPublisher()();
  (*(v44 + 8))(v10, v28);
  v53 = v29;
  sub_10000859C((v1 + 8), &v54);
  v30 = swift_allocObject();
  sub_100008748(&v54, v30 + 16);
  *(v30 + 56) = v52;
  sub_100003F6C(&qword_1000B8EB0, &qword_100083220);
  v31 = v46;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91C8, &qword_1000B9198, &qword_100081CB0);
  v32 = v48;
  Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v31, v32);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v33 = sub_10002B138();
  v34 = *(v33 + 16);
  if (v34)
  {
    v53 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v35 = v33 + 32;
    do
    {
      sub_10000859C(v35, &v54);
      v36 = v55;
      v37 = v56;
      sub_100005A3C(&v54, v55);
      (*(v37 + 8))(v36, v37);
      sub_100003FB4(&v54);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v38 = v53[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v35 += 40;
      --v34;
    }

    while (v34);

    v39 = v53;
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  *&v54 = v39;
  sub_100003F6C(&qword_1000B91D0, &qword_100081CD0);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000B91D8, &qword_1000B91D0, &qword_100081CD0);
  v40 = v49;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91E0, &qword_1000B9188, &qword_100081CA0);
  v41 = v51;
  Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v40, v41);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100029A14@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100003F6C(&qword_1000B91F0, &qword_100081CE8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v35[-1] - v11;
  v13 = a1[3];
  if (v13 >> 60 != 15)
  {
    v14 = a1[2];
    sub_10001C9CC(v14, a1[3]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = [a3 auditTokenForData:isa];

    if (v16)
    {
      v17 = a2[3];
      v18 = a2[4];
      sub_100005A3C(a2, v17);
      (*(v18 + 8))(v16, v17, v18);
      v19 = type metadata accessor for AEAParticipant.Process(0);
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v12, 1, v19) == 1)
      {
        sub_100019B28(v12, &qword_1000B91F0, &qword_100081CE8);
        if (qword_1000B6430 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000C370(v21, qword_1000BC548);
        sub_10001CA34(a1, v35);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        sub_10002C3E4(a1);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v34 = a4;
          v35[0] = v25;
          v26 = v25;
          *v24 = 136446210;
          *(v24 + 4) = sub_100043D60(*a1, a1[1], v35);
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed to lift process for application: %{public}s", v24, 0xCu);
          sub_100003FB4(v26);
          a4 = v34;
        }

        sub_10001CA20(v14, v13);

        return (*(v20 + 56))(a4, 1, 1, v19);
      }

      else
      {
        sub_10001CA20(v14, v13);

        sub_10002C438(v12, a4, type metadata accessor for AEAParticipant.Process);
        return (*(v20 + 56))(a4, 0, 1, v19);
      }
    }

    sub_10001CA20(v14, v13);
  }

  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C370(v28, qword_1000BC548);
  sub_10001CA34(a1, v35);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  sub_10002C3E4(a1);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_100043D60(*a1, a1[1], v35);
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create audit token for application: %{public}s", v31, 0xCu);
    sub_100003FB4(v32);
  }

  v33 = type metadata accessor for AEAParticipant.Process(0);
  return (*(*(v33 - 8) + 56))(a4, 1, 1, v33);
}

uint64_t sub_100029E94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v9[2] = a2;
  v9[3] = a3;
  v6 = sub_100028C14(sub_10002C39C, v9, v5);
  v7 = sub_10004C298(v6);

  *a4 = v7;
  return result;
}

uint64_t sub_100029F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v32 - v9;
  v11 = sub_100003F6C(&qword_1000B91E8, &qword_100081CD8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v32 - v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_100005A3C(a2, v17);
  v18 = *(a1 + 32);
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = *(v16 + 16);
  v33 = v20;
  v34 = v19;
  v22(v18, v19, v20, v10, v17, v16);
  sub_100019B28(v10, &qword_1000B7620, &qword_100081CE0);
  v23 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v15, 1, v23) == 1)
  {
    sub_100019B28(v15, &qword_1000B91E8, &qword_100081CD8);
    if (qword_1000B6430 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C370(v25, qword_1000BC548);
    sub_10001CA34(a1, v35);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_10002C3E4(a1);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_100043D60(v34, v33, v35);
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to lift process for application: %{public}s", v28, 0xCu);
      sub_100003FB4(v29);
    }

    v30 = 1;
  }

  else
  {
    sub_10002C438(v15, a3, type metadata accessor for AEAParticipant.AuxiliaryProcess);
    v30 = 0;
  }

  return (*(v24 + 56))(a3, v30, 1, v23);
}

uint64_t sub_10002A260(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10002A2F8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = v5 + 1;
      v7 = *(v3 + 32 + 8 * v5);

      result = sub_10006FC94(v8);
      v5 = v6;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v9 = sub_10004C3EC(_swiftEmptyArrayStorage);

    *a2 = v9;
  }

  return result;
}

uint64_t sub_10002A39C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = qword_1000B6430;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC548);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      sub_10002C1E4();
      v9 = Set.description.getter();
      v11 = sub_100043D60(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Publishing Participants: %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v1;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10002A56C()
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC548);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Suspending participant matching", v3, 2u);
  }

  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15[0] = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v15[0] = v7;
    *v6 = 136446210;
    sub_10002C1E4();
    v8 = Set.description.getter();
    v10 = sub_100043D60(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Publishing Participants: %{public}s", v6, 0xCu);
    sub_100003FB4(v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v15[0] = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_10002A934();
  sub_100019D8C(v15, v14, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v14, &v13, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(v14, &qword_1000BBFF0, &qword_100081B30);
  sub_100019B28(v15, &qword_1000BBFF0, &qword_100081B30);
  v11 = sub_100022574(_swiftEmptyArrayStorage);
  sub_10002AA20();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v15[0] = v11;
  return static Published.subscript.setter();
}

uint64_t sub_10002A934()
{
  v1 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource);
  }

  else
  {
    v3 = type metadata accessor for AEAMainParticipantSource();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_100019D8C(v9, v8, &qword_1000BBFF0, &qword_100081B30);
    sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
    Published.init(initialValue:)();
    sub_100019B28(v9, &qword_1000BBFF0, &qword_100081B30);
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10002AA20()
{
  v1 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v15 - v5;
  v7 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource))
  {
    v8 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource);
  }

  else
  {
    swift_beginAccess();
    sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
    v9 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    v10 = type metadata accessor for AEAConfigurationParticipantSource();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v8 = swift_allocObject();
    v15[1] = _swiftEmptyDictionarySingleton;
    sub_100003F6C(&qword_1000B9178, &qword_100081BC0);
    Published.init(initialValue:)();
    (*(v2 + 32))(v8 + OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses, v6, v1);
    v13 = *(v9 + v7);
    *(v9 + v7) = v8;
  }

  return v8;
}

uint64_t sub_10002ABF4(uint64_t a1)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  if (qword_1000B6450 != -1)
  {
    swift_once();
  }

  v1 = 256;
  if (!HIBYTE(word_1000BC5A8))
  {
    v1 = 0;
  }

  v2 = v1 | word_1000BC5A8;

  return v2;
}

uint64_t sub_10002ACAC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v20 - v9;
  v11 = *a1;
  if (*(v2 + v11))
  {
    v12 = *(v2 + v11);
  }

  else
  {
    swift_beginAccess();
    sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
    v13 = v2;
    Published.projectedValue.getter();
    swift_endAccess();
    v14 = type metadata accessor for AEACandidateMatchingParticipantSource();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_candidateProcesses, v10, v5);
    v17 = (v12 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_configurationBuilder);
    *v17 = a2;
    v17[1] = 0;
    v18 = *(v13 + v11);
    *(v13 + v11) = v12;
  }

  return v12;
}

uint64_t sub_10002AE3C(uint64_t a1)
{
  if (qword_1000B6550 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  if ((sub_1000317C4(*(a1 + 8), *(a1 + 16), qword_1000BC770) & 1) == 0)
  {
    return 0;
  }

  if (qword_1000B6450 != -1)
  {
    swift_once();
  }

  v1 = 256;
  if (!HIBYTE(word_1000BC5A8))
  {
    v1 = 0;
  }

  v2 = v1 | word_1000BC5A8;

  return v2;
}

uint64_t sub_10002AF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003F6C(&qword_1000B9160, &qword_100081BA0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___auxiliaryParticipantSource;
  swift_beginAccess();
  sub_100019D8C(v1 + v12, v11, &qword_1000B9160, &qword_100081BA0);
  v13 = type metadata accessor for AEAAnyTrustedParticipantSource();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10002C438(v11, a1, type metadata accessor for AEAAnyTrustedParticipantSource);
  }

  sub_100019B28(v11, &qword_1000B9160, &qword_100081BA0);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B9168, &unk_100081BA8);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10002BED0(a1, v8);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_10002BF34(v8, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_10002B138()
{
  v1 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources);
  }

  else
  {
    sub_100003F6C(&qword_1000B9158, &qword_100081B98);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100080700;
    v3 = sub_10002A934();
    *(v2 + 56) = type metadata accessor for AEAMainParticipantSource();
    *(v2 + 64) = &off_1000A9A28;
    *(v2 + 32) = v3;
    v4 = sub_10002AA20();
    *(v2 + 96) = type metadata accessor for AEAConfigurationParticipantSource();
    *(v2 + 104) = &off_1000A96A0;
    *(v2 + 72) = v4;
    v5 = sub_10002ABD4();
    v6 = type metadata accessor for AEACandidateMatchingParticipantSource();
    *(v2 + 136) = v6;
    *(v2 + 144) = &off_1000A63D8;
    *(v2 + 112) = v5;
    v7 = sub_10002AC8C();
    *(v2 + 176) = v6;
    *(v2 + 184) = &off_1000A63D8;
    *(v2 + 152) = v7;
    *(v2 + 216) = type metadata accessor for AEAAnyTrustedParticipantSource();
    *(v2 + 224) = &off_1000A9528;
    v8 = sub_100004F80((v2 + 192));
    sub_10002AF1C(v8);
    v9 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10002B264()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 3);
  sub_100003FB4(v0 + 8);
  v2 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager__candidateProcesses;
  v3 = sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager__auxiliaryProcesses;
  v5 = sub_100003F6C(&qword_1000B9168, &unk_100081BA8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager__participants;
  v7 = sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager_auxiliaryParticipantAggregator);

  v9 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager_subscriptions);

  v10 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___mainParticipantSource);

  v11 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___configurationParticipantSource);

  v12 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___voiceOverParticipantSource);

  v13 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___assessmentServicesParticipantSource);

  sub_100019B28(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___auxiliaryParticipantSource, &qword_1000B9160, &qword_100081BA0);
  v14 = *(v0 + OBJC_IVAR____TtC15assessmentagent26AEAmacOSParticipantManager____lazy_storage___participantSources);

  return v0;
}

uint64_t sub_10002B410()
{
  sub_10002B264();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAmacOSParticipantManager()
{
  result = qword_1000B8E90;
  if (!qword_1000B8E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B4BC()
{
  sub_10002B688(319, &qword_1000B8EA0, &unk_1000B7360, &unk_100081AA0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10002B688(319, &qword_1000B8EA8, &qword_1000B8EB0, &qword_100083220);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10002B688(319, &qword_1000B8EB8, &qword_1000B7418, &qword_100081AB0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10002B6DC();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10002B688(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100004B50(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10002B6DC()
{
  if (!qword_1000B8EC0)
  {
    type metadata accessor for AEAAnyTrustedParticipantSource();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B8EC0);
    }
  }
}

uint64_t sub_10002B734()
{
  v0 = sub_100003F6C(&qword_1000B9130, &qword_100081B80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v14 - v4;
  v6 = sub_100003F6C(&qword_1000B9138, &qword_100081B88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000B9148, &qword_1000B9130, &qword_100081B80);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0);
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v5, v0);
  sub_100004EE0(&qword_1000B9150, &qword_1000B9138, &qword_100081B88);
  v12 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v11, v6);
  return v12;
}

uint64_t sub_10002B9B0()
{
  sub_10002A934();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002BA38(uint64_t a1)
{
  sub_10002A934();
  sub_100019D8C(a1, v4, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v4, &v3, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(a1, &qword_1000BBFF0, &qword_100081B30);
  return sub_100019B28(v4, &qword_1000BBFF0, &qword_100081B30);
}

uint64_t sub_10002BB04()
{
  sub_10002AA20();
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10002BBA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_10002BFA4();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002BC38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002BCF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002BD90(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002BE10(uint64_t a1, uint64_t *a2)
{
  sub_100019D8C(a1, v6, &qword_1000BBFF0, &qword_100081B30);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v6, &v5, &qword_1000BBFF0, &qword_100081B30);

  static Published.subscript.setter();
  return sub_100019B28(v6, &qword_1000BBFF0, &qword_100081B30);
}

uint64_t sub_10002BED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAAnyTrustedParticipantSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BF34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9160, &qword_100081BA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10002BFA4()
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC548);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    sub_10002C1E4();
    v4 = Set.description.getter();
    v6 = sub_100043D60(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Publishing Participants: %{public}s", v2, 0xCu);
    sub_100003FB4(v3);
  }
}

unint64_t sub_10002C1E4()
{
  result = qword_1000B9180;
  if (!qword_1000B9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9180);
  }

  return result;
}

uint64_t sub_10002C238()
{
  sub_100003FB4((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002C278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[7];
  v4 = v2[8];
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return sub_100029A14(v7, v2 + 2, v3, a2);
}

uint64_t sub_10002C2C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C324()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002C39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return sub_100029F08(v7, v3, a2);
}

uint64_t sub_10002C438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_10002C4B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_10002C558()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  String.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_10002C5DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10002C67C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v9;
  v12 = v10;
  if (v10 >> 60 == 15 && (v15 = v1, v13 = *v1, v14 = v15[1], static String.Encoding.utf8.getter(), v11 = String.data(using:allowLossyConversion:)(), v12 = v16, result = (*(v4 + 8))(v8, v3), v12 >> 60 == 15))
  {
    __break(1u);
  }

  else
  {
    *a1 = v11;
    a1[1] = v12;
    return sub_10001C9B8(v9, v10);
  }

  return result;
}

BOOL sub_10002C7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10002D22C(v5, v7);
}

uint64_t sub_10002C7FC()
{
  sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100081CF0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v7;
  *(inited + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 152) = v8;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v9;
  v10 = sub_100030F08(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1000B91F8 = v10;
  return result;
}

uint64_t sub_10002C940()
{
  v1 = [v0 bundleIdentifier];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v0 applicationState];
  v7 = [v6 isInstalled];

  if (!v7)
  {
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C370(v16, qword_1000BC578);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136446210;
      v21 = sub_100043D60(v3, v5, &v23);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s is not installed", v19, 0xCu);
      sub_100003FB4(v20);
    }

    else
    {
    }

    return 2;
  }

  v8 = [v0 applicationState];
  v9 = [v8 isRestricted];

  if (!v9)
  {
    goto LABEL_15;
  }

  if (qword_1000B6458 != -1)
  {
    swift_once();
  }

  if (sub_1000317C4(v3, v5, qword_1000B91F8))
  {
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C370(v10, qword_1000BC578);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      v15 = sub_100043D60(v3, v5, &v23);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s is a restricted system application", v13, 0xCu);
      sub_100003FB4(v14);
    }

    else
    {
    }

    return 1;
  }

  else
  {
LABEL_15:

    return 0;
  }
}

uint64_t sub_10002CCB4()
{
  v1 = [*v0 localizedName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10002CD30(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10002CD4C(uint64_t a1)
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

__n128 sub_10002CD74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002CD88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_10002CDD0(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002CE28()
{
  result = qword_1000B9200;
  if (!qword_1000B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9200);
  }

  return result;
}

uint64_t sub_10002CE7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10002D00C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100005A80(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100043B30(v13, a3, a4, &v12);
  v10 = v4;
  sub_100005A80(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10002D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100043B30(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10002D0C4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10001C9CC(a3, a4);
          return sub_10002CE7C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_10002D22C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v11 = *(a2 + 16);
  v12 = v5;
  v6 = v5;
  v7 = v11;
  if (*(&v5 + 1) >> 60 != 15)
  {
    if (*(&v11 + 1) >> 60 != 15)
    {
      sub_10002D388(&v12, v10);
      sub_10002D388(&v11, v10);
      v9 = sub_10002D0C4(v6, *(&v6 + 1), v7, *(&v7 + 1));
      sub_10001CA20(v7, *(&v7 + 1));
      sub_10001CA20(v6, *(&v6 + 1));
      if (v9)
      {
        return *(a1 + 32) == *(a2 + 32);
      }

      return 0;
    }

LABEL_10:
    sub_10002D388(&v12, v10);
    sub_10002D388(&v11, v10);
    sub_10001CA20(v6, *(&v6 + 1));
    sub_10001CA20(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v11 + 1) >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_10002D388(&v12, v10);
  sub_10002D388(&v11, v10);
  sub_10001CA20(v6, *(&v6 + 1));
  return *(a1 + 32) == *(a2 + 32);
}

uint64_t sub_10002D388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B9208, &qword_100081ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AEAApplicationAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AEAApplicationAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002D554()
{
  result = qword_1000B9210;
  if (!qword_1000B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9210);
  }

  return result;
}

uint64_t sub_10002D5A8()
{
  v1[19] = v0;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_10002D670, v3, v2);
}

uint64_t sub_10002D670()
{
  v1 = v0[19];
  if (*(v1 + 152))
  {
    v6 = v0[1];

    return v6(v2);
  }

  else
  {
    v4 = *(v1 + 16);
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10002D7E4;
    v5 = swift_continuation_init();
    v0[17] = sub_100003F6C(&qword_1000B93F0, &unk_100082060);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10002DE3C;
    v0[13] = &unk_1000A8430;
    v0[14] = v5;
    [v4 fetchNetworkContentFilterBundleIdentifiersWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10002D7E4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10002D8EC, v2, v1);
}

uint64_t sub_10002D8EC()
{
  v53 = v0;
  v1 = *(v0 + 144);
  if (qword_1000B6428 != -1)
  {
LABEL_48:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC530);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52 = v6;
    *v5 = 136446210;
    v7 = Array.description.getter();
    v9 = sub_100043D60(v7, v8, &v52);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovered Web Content Filters %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = v1[2];
  if (v10)
  {
    v11 = 0;
    v12 = -v10;
    v13 = v1 + 5;
    v14 = _swiftEmptyArrayStorage;
    while (2)
    {
      v15 = &v13[2 * v11++];
      while (1)
      {
        if ((v11 - 1) >= v1[2])
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v16 = v51[22];
        v18 = *(v15 - 1);
        v17 = *v15;

        v19 = String._bridgeToObjectiveC()();
        v20 = [v16 machOUUIDsForBundleIdentifier:v19];

        if (v20)
        {
          break;
        }

        ++v11;
        v15 += 2;
        if (v12 + v11 == 1)
        {
          goto LABEL_18;
        }
      }

      type metadata accessor for UUID();
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100072A98(0, v14[2] + 1, 1, v14);
      }

      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        v14 = sub_100072A98((v22 > 1), v23 + 1, 1, v14);
      }

      v14[2] = v23 + 1;
      v14[v23 + 4] = v21;
      v13 = v1 + 5;
      if (v12 + v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v24 = v14[2];
  if (v24)
  {
    v25 = 0;
    v1 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v25 >= v14[2])
      {
        goto LABEL_43;
      }

      v26 = v14[v25 + 4];
      v27 = *(v26 + 16);
      v28 = v1[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_44;
      }

      v30 = v14[v25 + 4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v29 <= v1[3] >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v32 = v28 + v27;
        }

        else
        {
          v32 = v28;
        }

        v1 = sub_100072BF0(isUniquelyReferenced_nonNull_native, v32, 1, v1);
        if (!*(v26 + 16))
        {
LABEL_20:

          if (v27)
          {
            goto LABEL_45;
          }

          goto LABEL_21;
        }
      }

      v33 = (v1[3] >> 1) - v1[2];
      v34 = *(type metadata accessor for UUID() - 8);
      if (v33 < v27)
      {
        goto LABEL_46;
      }

      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v36 = *(v34 + 72);
      swift_arrayInitWithCopy();

      if (v27)
      {
        v37 = v1[2];
        v38 = __OFADD__(v37, v27);
        v39 = v37 + v27;
        if (v38)
        {
          goto LABEL_47;
        }

        v1[2] = v39;
      }

LABEL_21:
      if (v24 == ++v25)
      {
        goto LABEL_37;
      }
    }
  }

  v1 = _swiftEmptyArrayStorage;
LABEL_37:

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v42 = 136446210;
    type metadata accessor for UUID();
    v44 = Array.description.getter();
    v46 = sub_100043D60(v44, v45, &v52);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "Granting access to UUIDs %{public}s", v42, 0xCu);
    sub_100003FB4(v43);
  }

  v47 = v51[19];
  v48 = *(v47 + 152);
  *(v47 + 152) = v1;

  v49 = v51[1];

  return v49(v1);
}

uint64_t sub_10002DE3C(uint64_t a1)
{
  v1 = *sub_100005A3C((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10002DEAC()
{
  v1 = v0;
  v2 = sub_100003F6C(&qword_1000B93A8, &qword_100082028);
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v22 = v21 - v6;
  v7 = v0[11];
  v8 = v0[12];
  sub_100005A3C(v0 + 8, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v11 = v10;
  v12 = v0[16];
  v24 = v9;
  v1[16] = v9;

  v23 = v11;
  v13 = v1[14];
  v28 = v1[13];
  v29 = v11;
  v27 = v13;

  v21[1] = sub_100003F6C(&qword_1000B93B0, &qword_100082030);
  sub_100003F6C(&qword_1000B93B8, &qword_100082038);
  sub_100003F6C(&qword_1000B93C0, &qword_100082040);
  sub_100004EE0(&qword_1000B93C8, &qword_1000B93B0, &qword_100082030);
  sub_100004EE0(&qword_1000B93D0, &qword_1000B93B8, &qword_100082038);
  sub_100004EE0(&qword_1000B93D8, &qword_1000B93C0, &qword_100082040);
  v14 = v22;
  Publishers.CombineLatest3.init(_:_:_:)();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100030D60;
  *(v16 + 24) = v15;
  sub_100004EE0(&qword_1000B93E0, &qword_1000B93A8, &qword_100082028);
  v17 = v25;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v14, v17);
  v19 = v1[17];
  v1[17] = v18;
}

uint64_t sub_10002E1CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 120);

    v12 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1 & 1;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    *(v13 + 56) = a5;

    sub_100003F6C(&qword_1000B93E8, &qword_100082058);
    CATSerializer.enqueue<A>(respectingCancelAll:_:)();
  }

  return result;
}

uint64_t sub_10002E33C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 184) = a3;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 144) = v8;
  *(v7 + 152) = v9;

  return _swift_task_switch(sub_10002E444, v8, v9);
}

uint64_t sub_10002E444()
{
  v35 = v0;
  v1 = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 128);
    v5 = *(v4 + 32);
    v6 = v5 & 0x3F;
    v7 = ((1 << v5) + 63) >> 6;
    v8 = 8 * v7;

    v11 = v4;
    v33 = v3;
    if (v6 > 0xD)
    {
      goto LABEL_25;
    }

    do
    {
      v31[1] = v31;
      v32 = v7;
      __chkstk_darwin(isStackAllocationSafe, v10);
      v12 = v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v12, v8);
      v34 = 0;
      v13 = 0;
      v14 = 1 << *(v4 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v11 + 56);
      v4 = (v14 + 63) >> 6;
      v7 = 56;
      while (v16)
      {
        v17 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_13:
        v8 = v17 | (v13 << 6);
        sub_100030BD0(*(v11 + 48) + 56 * v8, v0 + 16);
        v20 = *(v0 + 56);
        sub_100030C2C(v0 + 16);
        if (v20 == 1)
        {
          *&v12[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_17:
            v22 = sub_10004B4F8(v12, v32, v34, *(v0 + 128));
            goto LABEL_18;
          }
        }
      }

      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v4)
        {
          goto LABEL_17;
        }

        v19 = *(v11 + 56 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v16 = (v19 - 1) & v19;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v11 = *(v0 + 128);
    }

    while ((isStackAllocationSafe & 1) != 0);
    v30 = swift_slowAlloc();
    v22 = sub_1000306F8(v30, v7, v11, sub_10002EA1C);

LABEL_18:
    *(v0 + 168) = v22;
    v23 = swift_task_alloc();
    *(v0 + 176) = v23;
    *v23 = v0;
    v23[1] = sub_10002E7EC;
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v27 = *(v0 + 184);

    return sub_10002EAD4(v27, v25, v26, v22, v24);
  }

  else
  {
    **(v0 + 96) = 1;
    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_10002E7EC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v8 = *v0;

  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return _swift_task_switch(sub_10002E980, v6, v5);
}

uint64_t sub_10002E980()
{
  **(v0 + 96) = *(v0 + 160) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002EA24(void *a1, void (*a2)(uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v6 = a1[1];
  v5 = a1[2];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v9 = a1[3];
  v8 = a1[4];

  a2(v4, sub_100030DA8, v7, v9, v8);
}

uint64_t sub_10002EAD4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 32) = a2;
  *(v6 + 112) = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return _swift_task_switch(sub_10002EBA8, v8, v7);
}

uint64_t sub_10002EBA8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 144);
  if (v2)
  {
    [v2 releaseRestrictions];
    v1 = *(v0 + 64);
  }

  v3 = *(v0 + 112);
  v4 = *(v1 + 16);
  *(v0 + 88) = v4;
  [v4 clearUUIDCache];
  if (v3 == 1)
  {
    if (qword_1000B6428 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC530);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Not applying network restrictions because the config allows network access", v8, 2u);
    }

    v9 = *(v0 + 40);
    (*(v0 + 32))(0, 0);
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = *(v0 + 48);
    *(v0 + 16) = _swiftEmptyArrayStorage;
    *(v0 + 24) = _swiftEmptyArrayStorage;

    sub_10003097C(v14, (v0 + 24), v13, v0 + 16);
    sub_100030A98(v12, v13);

    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v15[1] = sub_10002EDDC;
    v16 = *(v0 + 64);

    return sub_10002D5A8();
  }
}

uint64_t sub_10002EDDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return _swift_task_switch(sub_10002EF04, v5, v4);
}

uint64_t sub_10002EF04()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  sub_1000700BC(*(v0 + 104));
  v3 = *(v0 + 24);
  sub_100005C1C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = *(v0 + 16);
  type metadata accessor for UUID();
  v6 = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v1 restrictNetworkExcludingProcessesWithIdentifiers:isa machOUUIDs:v6];

  v8 = *(v2 + 144);
  *(v2 + 144) = v7;

  swift_unknownObjectRelease();
  v9 = *(v0 + 40);
  (*(v0 + 32))(0, 0);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002F018(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v72 = a3;
  v66 = a2;
  v5 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v63 - v8;
  v10 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for URL();
  v14 = *(v73 - 8);
  v15 = *(v14 + 8);
  v17 = __chkstk_darwin(v73, v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v64 = &v63 - v21;
  if (qword_1000B6428 != -1)
  {
LABEL_24:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000C370(v22, qword_1000BC530);
  sub_100030BD0(a1, v74);
  v65 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v70 = v19;
  v68 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v77 = v28;
    *v27 = 136446210;
    v29 = sub_10001F488();
    v30 = a1;
    v32 = v31;
    sub_100030C2C(v74);
    v33 = sub_100043D60(v29, v32, &v77);
    a1 = v30;

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating policy for %{public}s", v27, 0xCu);
    sub_100003FB4(v28);
  }

  else
  {

    sub_100030C2C(v74);
  }

  v34 = a1[3];
  v35 = a1[4];
  sub_100005A3C(a1, v34);
  [objc_allocWithZone(NSNumber) initWithInt:{(*(v35 + 40))(v34, v35)}];
  v36 = v66;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100030BD0(a1, v74);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67240192;
    v40 = a1;
    v41 = v75;
    v42 = v76;
    sub_100005A3C(v74, v75);
    v43 = *(v42 + 40);
    v44 = v42;
    a1 = v40;
    v45 = v43(v41, v44);
    sub_100030C2C(v74);
    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Granting access for process %{public}d", v39, 8u);
  }

  else
  {
    sub_100030C2C(v74);
  }

  v46 = v9;
  v47 = v67;
  v9 = v68;
  v48 = v73;
  v49 = a1[3];
  v50 = a1[4];
  sub_100005A3C(a1, v49);
  (*(v50 + 56))(v49, v50);
  sub_100005AD4(v47 + *(v9 + 6), v46);
  sub_100030CC8(v47, type metadata accessor for AEAParticipant.SecurityInfo);
  if ((*(v14 + 6))(v46, 1, v48) == 1)
  {
    return sub_100005B44(v46);
  }

  v19 = v64;
  (*(v14 + 4))(v64, v46, v48);
  if (sub_10002F6C8(v19))
  {
    v10 = v69;
    v52 = *sub_100005A3C((v72 + 24), *(v72 + 48));
    v53 = sub_10001DA3C(v19);
  }

  else
  {
    v10 = v69;
    sub_100003F6C(&qword_1000B9388, &unk_100082010);
    v54 = *(v14 + 9);
    v55 = (v14[80] + 32) & ~v14[80];
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000807D0;
    (*(v14 + 2))(v53 + v55, v19, v48);
  }

  v69 = *(v53 + 16);
  if (v69)
  {
    v56 = 0;
    a1 = v14 + 16;
    v57 = (v14 + 8);
    v68 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      if (v56 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v58 = v53 + ((v14[80] + 32) & ~v14[80]) + *(v14 + 9) * v56;
      v9 = v14;
      v59 = *(v14 + 2);
      v19 = v70;
      v60 = v73;
      v59(v70, v58, v73);
      sub_10002FA24(v19, v72);
      if (v10)
      {
        break;
      }

      ++v56;
      v61 = *v57;
      (*v57)(v19, v60);
      v14 = v9;
      if (v69 == v56)
      {
        goto LABEL_22;
      }
    }

    result = (*v57)(v19, v60);
    __break(1u);
  }

  else
  {
    v61 = *(v14 + 1);
LABEL_22:
    v61(v64, v73);
  }

  return result;
}

uint64_t sub_10002F6C8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLResourceValues();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v28 - v15;
  sub_100003F6C(&qword_1000B9398, &unk_100084B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v18 = NSURLIsDirectoryKey;
  sub_100030788(inited);
  swift_setDeallocating();
  sub_100030CC8(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  v19 = v29;
  (*(v29 + 16))(v6, a1, v2);
  v28 = *(v8 + 16);
  v28(v13, v16, v7);
  v20 = type metadata accessor for AEAConcreteFileSystemPrimitives.ConcreteURLResourceValues();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v19 + 32))(v23 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingURL, v6, v2);
  (*(v8 + 32))(v23 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues, v13, v7);
  v31 = v20;
  v32 = &off_1000A78F8;
  *&v30 = v23;
  v24 = *(v8 + 8);
  v24(v16, v7);
  sub_100008748(&v30, v33);
  v25 = *sub_100005A3C(v33, v33[3]);
  v26 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues;
  swift_beginAccess();
  v28(v13, (v25 + v26), v7);
  LOBYTE(v25) = URLResourceValues.isDirectory.getter();
  v24(v13, v7);
  sub_100003FB4(v33);
  return v25 & 1;
}

void sub_10002FA24(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (&v30 - v10);
  v12 = *(a2 + 16);
  URL._bridgeToObjectiveC()(v10);
  v14 = v13;
  v15 = [v12 machOUUIDsForExecutableURL:v13];

  if (v15)
  {
    type metadata accessor for UUID();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000700BC(v16);
    if (qword_1000B6428 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C370(v17, qword_1000BC530);
    (*(v6 + 16))(v11, a1, v5);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = v2;
      v21 = v20;
      v32 = swift_slowAlloc();
      v34 = v32;
      *v21 = 136446466;
      sub_100030C80(&qword_1000B9390, &type metadata accessor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v19;
      v24 = v23;
      (*(v6 + 8))(v11, v5);
      v25 = sub_100043D60(v22, v24, &v34);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = Array.description.getter();
      v28 = v27;

      v29 = sub_100043D60(v26, v28, &v34);

      *(v21 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v31, "Granting access for executable at %{public}s with UUIDs %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }
  }
}

void sub_10002FD8C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a2 + 16);
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  v17 = [v13 machOUUIDsForExecutableURL:v16];

  if (v17)
  {
    type metadata accessor for UUID();
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v18 + 16))
    {
      if (qword_1000B6428 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C370(v19, qword_1000BC530);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v32[1] = v2;
        v23 = v22;
        v33 = swift_slowAlloc();
        *v23 = 136446466;
        *(v23 + 4) = sub_100043D60(v11, v12, &v33);
        *(v23 + 12) = 2082;
        v24 = Array.description.getter();
        v26 = sub_100043D60(v24, v25, &v33);

        *(v23 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Granting access for executable at %{public}s with UUIDs %{public}s", v23, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000700BC(v18);
      return;
    }
  }

  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C370(v27, qword_1000BC518);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_100043D60(v11, v12, &v33);
    _os_log_impl(&_mh_execute_header, v28, v29, "Can't grant network access for executable at: %{public}s", v30, 0xCu);
    sub_100003FB4(v31);
  }
}

void *sub_100030170()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 3);
  sub_100003FB4(v0 + 8);
  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  v7 = v0[18];
  swift_unknownObjectRelease();
  v8 = v0[19];

  return v0;
}

uint64_t sub_1000301D8()
{
  sub_100030170();

  return swift_deallocClassInstance();
}

uint64_t sub_10003022C()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_10003119C(v2);
}

uint64_t sub_1000302C0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100030C80(&qword_1000B80C8, type metadata accessor for AgentActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030388, v4, v3);
}

uint64_t sub_100030388()
{
  v1 = *(v0 + 184);
  v24 = *(v0 + 176);
  v2 = v1[3];
  sub_10000859C((v1 + 4), v0 + 16);
  sub_10000859C((v1 + 9), v0 + 56);
  v22 = v1[14];
  v23 = v1[15];
  v3 = *(v0 + 40);
  v4 = sub_10001A19C(v0 + 16, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v8 = *v7;
  v9 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  *(v0 + 120) = v9;
  *(v0 + 128) = &off_1000A7928;
  *(v0 + 96) = v8;
  type metadata accessor for AEANetworkAssertion();
  v10 = swift_allocObject();
  v11 = sub_10001A19C(v0 + 96, v9);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v9);
  v15 = *v14;
  *(v0 + 160) = v9;
  *(v0 + 168) = &off_1000A7928;
  *(v0 + 136) = v15;
  v16 = type metadata accessor for CATSerializer();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  *(v10 + 120) = CATSerializer.init()();
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 16) = v2;
  sub_100008748((v0 + 136), v10 + 24);
  sub_100008748((v0 + 56), v10 + 64);
  *(v10 + 104) = v22;
  *(v10 + 112) = v23;
  sub_100003FB4((v0 + 96));

  sub_100003FB4((v0 + 16));

  sub_10002DEAC();
  v24[3] = &type metadata for AEANetworkDeactivation;
  v24[4] = &off_1000A85F0;
  v19 = swift_allocObject();
  *v24 = v19;
  v19[2] = 0xD000000000000024;
  v19[3] = 0x80000001000892D0;
  v19[4] = 4;
  v19[5] = v10;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100030660(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_1000302C0(a1);
}

void *sub_1000306F8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004BDE4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_100030788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003F6C(&qword_1000B93A0, &qword_100082020);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}